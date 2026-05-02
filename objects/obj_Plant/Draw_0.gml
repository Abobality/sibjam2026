shader_set(shd_sway);

// Передаем данные в шейдер
shader_set_uniform_f(uni_time, time_val);

// bbox_bottom - это идеальная точка крепления (самый низ маски спрайта)
shader_set_uniform_f(uni_bottom_y, bbox_bottom); 
shader_set_uniform_f(uni_height, sprite_height);
shader_set_uniform_f(uni_amount, sway_amount);

// Рисуем сам цветок
draw_self();

// Обязательно сбрасываем шейдер
shader_reset();