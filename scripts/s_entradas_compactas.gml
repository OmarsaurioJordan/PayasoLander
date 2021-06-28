var vector;

//datos normalizados a +-100
vector[0] = o_payaso.px * (100 / m_px);
vector[1] = o_payaso.py * (100 / m_py);
vector[2] = o_payaso.vx * (100 / m_vxy);
vector[3] = o_payaso.vy * (100 / m_vxy);
vector[4] = o_payaso.pg * (100 / m_pg);
vector[5] = o_juego.vv * (100 / m_vv);

return vector;
