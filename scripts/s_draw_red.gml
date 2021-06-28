//arg0: x, arg1: y

var i, j, k, des;
des = (m_ocult - 1) * 9;

draw_set_valign(fa_middle);
draw_set_halign(fa_right);

for (i = 0; i < m_xin; i++)
{
    draw_text_colour(argument0 - 16, argument1 - 45 + i * 18, o_menu.let1[i],
        c_black, c_black, c_black, c_black, 1);
    draw_circle_colour(argument0, argument1 - 45 + i * 18, 6,
        c_black, c_black, false);
}

for (j = 0; j < m_ocult; j++)
{
    draw_circle_colour(argument0 + 96, argument1 - des + j * 18, 6,
        c_black, c_black, false);
    for (i = 0; i < m_xin; i++)
    {
        draw_line_colour(argument0 + 96, argument1 - des + j * 18,
            argument0, argument1 - 45 + i * 18, c_black, c_black);
    }
}

draw_set_halign(fa_left);

for (k = 0; k < 2; k++)
{
    draw_text_colour(argument0 + 208, argument1 - 9 + k * 18, o_menu.let2[k],
        c_black, c_black, c_black, c_black, 1);
    draw_circle_colour(argument0 + 192, argument1 - 9 + k * 18, 6,
        c_black, c_black, false);
    for (j = 0; j < m_ocult; j++)
    {
        draw_line_colour(argument0 + 192, argument1 - 9 + k * 18,
            argument0 + 96, argument1 - des + j * 18, c_black, c_black);
    }
}

draw_set_valign(fa_bottom);
draw_set_halign(fa_center);

draw_text_colour(argument0, argument1 - 63, "i: 6",
    c_black, c_black, c_black, c_black, 1);

draw_text_colour(argument0 + 96, argument1 - (des + 18), "j: " +
    string(m_ocult), c_black, c_black, c_black, c_black, 1);

draw_text_colour(argument0 + 192, argument1 - 27, "k: 2",
    c_black, c_black, c_black, c_black, 1);

draw_sprite(d_sigmoidal, 0, argument0 + 288, argument1 - 48);
