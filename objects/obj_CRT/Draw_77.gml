shader_set(shd_crt);

// Передаем параметры
// Чем выше число curvature, тем МЕНЬШЕ изгиб (рекомендую от 3.0 до 6.0)
shader_set_uniform_f(u_res, surface_get_width(application_surface), surface_get_height(application_surface));
shader_set_uniform_f(u_curv, 10.0); 
shader_set_uniform_f(u_scan, 0.15); // Интенсивность полос

// Рисуем экран
draw_surface(application_surface, 0, 0);

shader_reset();