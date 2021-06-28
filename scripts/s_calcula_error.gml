//arg0: red a ser ejecutada
//arg1: quien llama a la funcion

with argument0
{
    var i, j, k, s1, s2;
    
    error = 0;
    
    for (var p = 0; p < argument1.patrones; p++)
    {
        //pesos sinapticos capa oculta
        //m_ocult neuronas, m_xin entradas
        for (j = 0; j < m_ocult; j++)
        {
            s1[j] = w_oc[j, m_xin];
            for (i = 0; i < m_xin; i++)
            {
                s1[j] += w_oc[j, i] * argument1.px[p, i];
            }
            s1[j] = 2 / (1 + exp(-s1[j])) - 1;
        }
        
        //pesos sinapticos capa de salida
        //2 neuronas, m_ocult
        for (k = 0; k < 2; k++)
        {
            s2[k] = w_sa[k, m_ocult];
            for (j = 0; j < m_ocult; j++)
            {
                s2[k] += w_sa[k, j] * s1[j];
            }
            s2[k] = 2 / (1 + exp(-s2[k])) - 1;
            
            error += power(argument1.pd[p, k] - s2[k], 2);
        }
    }
    
    error /= 2 * argument1.patrones;
}
