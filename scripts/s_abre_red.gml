//arg0: instancia que carga parametros
var i, j, k;

ini_open("red_oc" + string(m_ocult) + ".ini");
        
    //pesos sinapticos capa oculta
    //m_ocult neuronas, m_xin entradas + bias
    for (j = 0; j < m_ocult; j++)
    {
        for (i = 0; i < m_xin + 1; i++)
        {
            argument0.w_oc[j, i] = ini_read_real("w_oc" + string(j), "in" + string(i), -1 + random(2));
        }
    }
    
    //pesos sinapticos capa de salida
    //2 neuronas, m_ocult + bias
    for (k = 0; k < 2; k++)
    {
        for (j = 0; j < m_ocult + 1; j++)
        {
            argument0.w_sa[k, j] = ini_read_real("w_sa" + string(k), "in" + string(j), -1 + random(2));
        }
    }
    
    argument0.error = ini_read_real("datos", "error", -1);
    
    switch room
    {
        case w_gradiente:
            o_gradiente.error = argument0.error;
            o_gradiente.iteraciones = real(ini_read_string("datos", "iteraciones", "0"));
            break;
        case w_genetico:
            o_genetico.error = argument0.error;
            o_genetico.iteraciones = real(ini_read_string("datos", "iteraciones", "0"));
            break;
        case w_particulas:
            o_particulas.error = argument0.error;
            o_particulas.iteraciones = real(ini_read_string("datos", "iteraciones", "0"));
            break;
    }
    
ini_close();
