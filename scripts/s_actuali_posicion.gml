//arg0: numero de red

with o_particulas
{
    var a = argument0;
    var i, j, k;
    
    //pesos sinapticos capa oculta
    //m_ocult neuronas, m_xin entradas + bias
    for (j = 0; j < m_ocult; j++)
    {
        for (i = 0; i < m_xin + 1; i++)
        {
            pp[a].w_oc[j, i] = clamp(pp[a].w_oc[j, i] +
                pv[a].w_oc[j, i], -m_w, m_w);
            if pp[a].w_oc[j, i] == -m_w or pp[a].w_oc[j, i] == m_w
            {
                pv[a].w_oc[j, i] *= -1;
            }
        }
    }
    
    //pesos sinapticos capa de salida
    //2 neuronas, m_ocult + bias
    for (k = 0; k < 2; k++)
    {
        for (j = 0; j < m_ocult + 1; j++)
        {
            pp[a].w_sa[k, j] = clamp(pp[a].w_sa[k, j] +
                pv[a].w_sa[k, j], -m_w, m_w);
            if pp[a].w_sa[k, j] == -m_w or pp[a].w_sa[k, j] == m_w
            {
                pv[a].w_sa[k, j] *= -1;
            }
        }
    }
}
