attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// Наши пользовательские переменные (uniforms)
uniform float u_time;       // Время для анимации
uniform float u_bottom_y;   // Координата Y низа спрайта (чтобы корни не двигались)
uniform float u_height;     // Высота спрайта
uniform float u_amount;     // Сила наклона в пикселях

void main()
{
    vec4 object_space_pos = vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);

    // Вычисляем, насколько высоко находится текущая точка относительно низа.
    // У корней dist = 0, у верхушки цветка dist = u_height.
    float dist = u_bottom_y - object_space_pos.y;
    
    // Получаем значение от 0.0 (низ) до 1.0 (верх)
    float sway_factor = clamp(dist / u_height, 0.0, 1.0);

    // Смещаем координату X по синусоиде, умножая на фактор высоты
    object_space_pos.x += sin(u_time) * u_amount * sway_factor;

    // Стандартная трансформация GameMaker
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
