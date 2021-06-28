//arg0: red a ser escalada
//arg1: valor a escalar

var i, j, k;

//pesos sinapticos capa oculta
//m_ocult neuronas, m_xin entradas + bias
for (j = 0; j < m_ocult; j++)
{
    for (i = 0; i < m_xin + 1; i++)
    {
        argument0.w_oc[j, i] *= argument1;
    }
}

//pesos sinapticos capa de salida
//2 neuronas, m_ocult + bias
for (k = 0; k < 2; k++)
{
    for (j = 0; j < m_ocult + 1; j++)
    {
        argument0.w_sa[k, j] *= argument1;
    }
}
