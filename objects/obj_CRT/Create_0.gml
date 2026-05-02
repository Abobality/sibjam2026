// Получаем ID переменных шейдера
u_res = shader_get_uniform(shd_crt, "u_resolution");
u_curv = shader_get_uniform(shd_crt, "u_curvature");
u_scan = shader_get_uniform(shd_crt, "u_scanline");

// Отключаем автоматическое рисование поверхности, чтобы рисовать её вручную с шейдером
application_surface_draw_enable(false);