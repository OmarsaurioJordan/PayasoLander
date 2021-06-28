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
            pv[a].w_oc[j, i] += o_c1.numerico * random(1) * (pb[a].w_oc[j, i] - pp[a].w_oc[j, i]) +
                o_c2.numerico * random(1) * (pg.w_oc[j, i] - pp[a].w_oc[j, i]);
            pv[a].w_oc[j, i] = clamp(pv[a].w_oc[j, i], -o_vf.numerico, o_vf.numerico);
        }
    }
    
    //pesos sinapticos capa de salida
    //2 neuronas, m_ocult + bias
    for (k = 0; k < 2; k++)
    {
        for (j = 0; j < m_ocult + 1; j++)
        {
            pv[a].w_sa[k, j] += o_c1.numerico * random(1) * (pb[a].w_sa[k, j] - pp[a].w_sa[k, j]) +
                o_c2.numerico * random(1) * (pg.w_sa[k, j] - pp[a].w_sa[k, j]);
            pv[a].w_sa[k, j] = clamp(pv[a].w_sa[k, j], -o_vf.numerico, o_vf.numerico);
        }
    }
}
