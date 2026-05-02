varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_resolution; // Разрешение экрана/поверхности
uniform float u_curvature; // Сила изгиба (например, 0.1)
uniform float u_scanline;  // Интенсивность полос (например, 0.5)

void main() {
    // 1. Дисторсия (эффект выпуклого экрана)
    vec2 uv = v_vTexcoord * 2.0 - 1.0;
    vec2 offset = abs(uv.yx) / vec2(u_curvature);
    uv = uv + uv * offset * offset;
    uv = uv * 0.5 + 0.5;

    // Проверка границ (черные края за пределами трубки)
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    // 2. Базовый цвет пикселя
    vec4 base_color = texture2D(gm_BaseTexture, uv);

    // 3. Сканирующие линии (Scanlines)
    float count = u_resolution.y;
    float scanline = sin(uv.y * count * 2.0) * u_scanline;
    base_color.rgb -= scanline * base_color.rgb;

    // 4. Легкая виньетка (затемнение по углам)
    float vignette = uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y);
    vignette = clamp(pow(16.0 * vignette, 0.1), 0.0, 1.0);
    
    gl_FragColor = v_vColour * vec4(base_color.rgb * vignette, 1.0);
}