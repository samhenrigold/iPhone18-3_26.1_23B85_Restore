double Gnm28_21InitRestorePeNv(void)
{
  v3 = *MEMORY[0x29EDCA608];
  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  LOBYTE(qword_2A13EC608) = 0;
  if (Gnm28_11RestorePeNv(0))
  {
    if (AgpsFsmStartTimer(8400646, 0xFAu))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v1 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm28_21InitRestorePeNv", 1544);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else
    {
      result = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      HIDWORD(g_Gnm_NVStoreCntxt) = result;
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
    }
  }

  return result;
}

BOOL GM_Reject_Rep_SV(_BOOL8 result, unsigned int a2, int *a3)
{
  *&v25[508] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = result;
    v5 = a2;
    v6 = (result + 6);
    v7 = &v24;
    v8 = a3;
    v9 = a2;
    do
    {
      *v7 = 0;
      if (Is_Legal(*(v6 - 6)) && *v8 >= 10)
      {
        v10 = *(v6 + 3);
        if (v10 >= 0x2710)
        {
          v10 = 10000;
        }

        *v7 = v10 + 1000 * (*v8 + *(v6 - 2) + *v6);
      }

      ++v8;
      v6 += 36;
      ++v7;
      --v9;
    }

    while (v9);
    v11 = 0;
    v12 = a2 - 1;
    v13 = v25;
    v14 = a3 + 1;
    for (i = (v4 + 36); ; i += 36)
    {
      v16 = v4 + 36 * v11;
      v17 = *v16;
      result = Is_Legal(*v16);
      if (result && a3[v11] >= 10 && v11 + 1 < v5)
      {
        break;
      }

LABEL_23:
      ++v11;
      --v12;
      ++v13;
      ++v14;
      if (v11 == v5)
      {
        return result;
      }
    }

    v18 = *&v25[4 * v11 - 4];
    v19 = i;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    while (1)
    {
      if (__PAIR64__(v19[1], *v19) == __PAIR64__(BYTE1(v17), v17))
      {
        if (v17 == 2)
        {
          if (v19[3] != *(v16 + 3))
          {
            goto LABEL_22;
          }
        }

        else if (*v19 != v17)
        {
          goto LABEL_22;
        }

        if (*v20 >= 10)
        {
          if (v18 < *v21)
          {
            a3[v11] = 3;
            goto LABEL_23;
          }

          *v20 = 3;
        }
      }

LABEL_22:
      ++v21;
      ++v20;
      v19 += 36;
      if (!--v22)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t NK_SV_Meas_AP_Stats(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87[13] = *MEMORY[0x29EDCA608];
  v4 = a1 - 1;
  if ((a1 - 1) >= 3)
  {
    gn_report_assertion_failure(&unk_299066A3A);
    return 0;
  }

  v5 = a4;
  v66 = qword_299050EE8[v4];
  v8 = (14904 * v4);
  v9 = (24 * v4);
  v10 = (2 * v4);
  v11 = a4 + v8;
  v12 = a3 + v9;
  if (!*(a3 + 148) || !*(a3 + 27136) || (*(a3 + 241) & 1) != 0 || *(v12 + 26976) < 0.0 || *(v12 + 26984) < 0.0)
  {
    *(v12 + 26976) = 0u;
  }

  v68 = (a3 + v9);
  v69 = 0;
  v13 = 0;
  v71 = 0;
  v72 = 0;
  v67 = (a4 + 61440);
  v14 = v10 | 0x69C0;
  v82 = v11 + 6768;
  v15 = v11 + 7080;
  memset(v87, 0, 104);
  v81 = v11 + 7208;
  *(v11 + 6784) = 0;
  *(v11 + 6800) = 0u;
  v79 = a4 + 52776;
  v80 = a2 + 96;
  v83 = v11 + 19624;
  v84 = v11 + 17448;
  v78 = v11 + 20648;
  v16 = v11 + 7336;
  v73 = a4 + v8;
  v74 = a4 + 57;
  v70 = a2 + 736;
  v77 = a3 + 24640;
  memset(v86, 0, sizeof(v86));
  v76 = a3 + 24512;
  v75 = a3 + 24384;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    if ((*(v15 + v13) & 1) == 0)
    {
      v24 = *(v16 + 4 * v13) - 1;
      goto LABEL_52;
    }

    v85 = 0.0;
    v19 = (v80 + 4 * v13);
    v20 = v5;
    NK_Obs_Equ_SV(a1, *(v81 + v13), *v19, (v79 + 56 * v13), v87, *(v5 + 1552));
    v22 = *(a3 + 20);
    v21 = *(a3 + 24);
    if (v22 == v21)
    {
LABEL_11:
      v23 = 5304;
      goto LABEL_33;
    }

    if (v22 <= 2)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          if (!v21)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v23 = 5304;
          if (v22 != 2)
          {
            goto LABEL_33;
          }

          if (v21 <= 1)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else if (v22 > 4)
    {
      if (v22 == 5)
      {
        if ((v21 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v23 = 5304;
        if (v22 != 6)
        {
          goto LABEL_33;
        }

        if (v21 != 7)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v22 == 3)
    {
      if (v21 <= 2)
      {
        goto LABEL_11;
      }
    }

    else if (v21 - 5 >= 3)
    {
      goto LABEL_11;
    }

    v23 = 7352;
LABEL_33:
    v25 = 0;
    v26 = 0.0;
    do
    {
      v27 = vmulq_f64(*&v87[v25], *(a3 + 1600 + v25 * 8));
      v26 = v26 + v27.f64[0] + v27.f64[1];
      v25 += 2;
    }

    while (v25 != 12);
    v28 = *(v82 + v23 + 8 * v13) - v26;
    *(v83 + 8 * v13) = v28;
    v29 = *(v84 + 8 * v13);
    invtst((a3 + 976), v87, 0xCu, v29, v28, 1.0e20, &v85);
    v30 = v85;
    if (v85 <= 0.0)
    {
      gn_report_assertion_failure("NK_SV_Meas_AP_Stats: -ve var");
      v29 = *(v84 + 8 * v13);
    }

    v31 = v29 + v29 - fabs(v30);
    *(v78 + 8 * v13) = v31;
    v24 = *(v16 + 4 * v13) - 1;
    if (v24 >= 0x1E)
    {
      v5 = v20;
      if (a1 == 2 || (*(v74 + v13) & 1) != 0)
      {
        v32 = *(v83 + 8 * v13);
        *(v73 + 6808) = v31 / v29 + *(v73 + 6808);
        if ((*(v86 + v13) & 1) == 0)
        {
          *(v86 + v13) = 1;
          v33 = *(v70 + v13);
          if (v33 != 255)
          {
            *(v86 + v33) = 1;
          }

          ++BYTE4(v72);
          v34 = *v19;
          if (v34 <= 7)
          {
            if (((1 << v34) & 0xEA) != 0)
            {
              LOBYTE(v71) = v71 + 1;
            }

            else if (v34 == 2)
            {
              LOBYTE(v69) = v69 + 1;
            }

            else if (v34 == 4)
            {
              ++BYTE4(v69);
            }
          }
        }

        v17 = v17 + v32 * v32 / v29;
        v18 = v18 + 1.0 / v29;
        v35 = v19[1];
        if (v35 <= 0xD)
        {
          v36 = 1 << v35;
          if ((v36 & 0x923) != 0)
          {
            LOBYTE(v72) = v72 + 1;
          }

          else if ((v36 & 0x2288) != 0)
          {
            ++BYTE4(v71);
          }
        }
      }
    }

    else
    {
      v5 = v20;
    }

LABEL_52:
    if (v24 > 0x1D)
    {
      switch(a1)
      {
        case 3:
          v40 = v77;
          break;
        case 2:
          v40 = v76;
          break;
        case 1:
          v40 = v75;
          break;
        default:
          goto LABEL_70;
      }

      *(v40 + v13) = 0;
    }

    else
    {
      *(v15 + v13) = 0;
      ++*(a3 + v14);
      switch(a1)
      {
        case 3:
          v42 = *(v77 + v13);
          if (v42 == 255)
          {
            break;
          }

          v38 = v42 + 1;
          v39 = v77;
          goto LABEL_67;
        case 2:
          v41 = *(v76 + v13);
          if (v41 == 255)
          {
            break;
          }

          v38 = v41 + 1;
          v39 = v76;
          goto LABEL_67;
        case 1:
          v37 = *(v75 + v13);
          if (v37 != 255)
          {
            v38 = v37 + 1;
            v39 = v75;
LABEL_67:
            *(v39 + v13) = v38;
          }

          break;
      }
    }

LABEL_70:
    ++v13;
  }

  while (v13 != 128);
  if (a1 == 1)
  {
    v45 = v68;
    v67[687] = v71;
    v67[692] = v69;
    v67[697] = BYTE4(v69);
    v67[702] = v72;
    v67[707] = BYTE4(v71);
    v44 = v73;
    v43 = BYTE4(v72);
  }

  else
  {
    v44 = v73;
    v45 = v68;
    v43 = BYTE4(v72);
    if (a1 == 2)
    {
      v67[688] = v71;
      v67[693] = v69;
      v67[698] = BYTE4(v69);
      v67[703] = v72;
      v67[708] = BYTE4(v71);
    }

    else if (a1 == 3)
    {
      v67[689] = v71;
      v67[694] = v69;
      v67[699] = BYTE4(v69);
      v67[704] = v72;
      v67[709] = BYTE4(v71);
    }
  }

  v46 = *(v44 + 6808);
  if (v46 < 1.0)
  {
    *(v44 + 6800) = 0;
    v47 = v45[1686];
    v48 = &qword_299050EA0;
    v49 = vld1q_dup_f64(v48);
    *&v49.f64[0] = qword_299050EB0[v47.f64[0] > 1.0];
    v50 = vmulq_f64(v47, v49);
    v45[1686] = v50;
    if (v50.f64[1] < 1.0)
    {
      v45[1686] = 0u;
    }

    goto LABEL_109;
  }

  v51 = v17 * *(v44 + 6816) / v46;
  *(v44 + 6800) = v51;
  if (v51 > 3.02)
  {
    v52 = v45[1686].f64[0];
    if (v52 > 11.0)
    {
      if (v52 > 1.0)
      {
        if (v51 <= v52)
        {
          v51 = v45[1686].f64[0];
        }

        v51 = v51 * 0.1;
      }

      goto LABEL_92;
    }

    v53 = v46 + 0.5;
    if (v53 <= 4)
    {
      v54 = v53 - 1;
    }

    else
    {
      v54 = 4;
    }

    v55 = F_dist[v54];
    v57 = v51 <= v55;
    v56 = fmin(v52, 4.0) * v55;
    v57 = v57 || v51 <= v56;
    if (!v57)
    {
      if (v52 > 1.0)
      {
        v51 = v51 / v52;
      }

LABEL_92:
      if (*(v5 + 1872) != 1 && v51 > *(v5 + v66))
      {
        *(v5 + v66) = v51;
      }
    }
  }

  if (*(a3 + 241))
  {
    *(v44 + 6808) = 0;
  }

  else
  {
    v58 = v45[1686].f64[1] * 0.98;
    v59 = *(v44 + 6800) / (v18 / v43);
    *(v44 + 6784) = v59;
    v45[1687].f64[0] = v59 * *(v44 + 6808) + v45[1687].f64[0] * v45[1687].f64[0] * v58;
    v60 = *(v44 + 6800) * *(v44 + 6808) + v45[1686].f64[0] * v58;
    v45[1686].f64[0] = v60;
    v61 = v58 + *(v44 + 6808);
    v45[1686].f64[1] = v61;
    v45[1686].f64[0] = v60 / v61;
    *(v44 + 6784) = sqrt(*(v44 + 6784));
    v45[1687].f64[0] = sqrt(v45[1687].f64[0] / v45[1686].f64[1]);
    v62 = *(v5 + v66);
    if (v62 > 1.0)
    {
      v63 = v45[1686].f64[0];
      if (v63 > 11.0)
      {
        v64 = v63 / v62;
        v45[1686].f64[0] = v64;
        if (v64 < 10.0)
        {
          v45[1686].f64[0] = 10.0;
        }
      }
    }
  }

LABEL_109:
  *(v44 + 6792) = v45[1687].f64[0];
  return v43;
}

unint64_t NK_PR_Res_ReWeight(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = *MEMORY[0x29EDCA608];
  if ((*(a3 + 241) & 1) == 0 && *(a3 + 27120) <= *(a3 + 16) && *(a4 + 1872) == 1)
  {
    v4 = *(a3 + 148);
    if (v4 >= *(a3 + 152))
    {
      v4 = *(a3 + 152);
    }

    if (v4 >= *(a3 + 156))
    {
      v4 = *(a3 + 156);
    }

    if (v4 >= 0xB)
    {
      v5 = 0;
      result = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v15 = a4 + 7080;
      v16 = a2 + 736;
      v17 = (a4 + 12072);
      v18 = a2 + 608;
      v19 = (a2 + 96);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v20 = (a4 + 12072);
      v21 = (a2 + 96);
      do
      {
        if (*(v15 + v5) == 1)
        {
          v22 = v20[800];
          if (v22 > 0.0)
          {
            if ((*(&v75 + v5) & 1) == 0)
            {
              result = (result + 1);
              *(&v75 + v5) = 1;
              v23 = *(v16 + v5);
              if (v23 != 255)
              {
                *(&v75 + v23) = 1;
              }
            }

            v24 = *v20;
            v25 = fabs(*v20);
            if (v25 < 20.0 && (*(&v67 + v5) & 1) == 0)
            {
              ++v6;
              *(&v67 + v5) = 1;
              v26 = *(v16 + v5);
              if (v26 != 255)
              {
                *(&v67 + v26) = 1;
              }
            }

            v27 = v24 * v24 / v22;
            if (v27 < 16.0)
            {
              ++v11;
              if (v27 < 9.0)
              {
                ++v10;
                if (v27 < 4.0)
                {
                  ++v9;
                  if (v27 < 1.0)
                  {
                    ++v8;
                  }
                }
              }
            }

            ++v7;
            if (v24 > 0.0)
            {
              ++v12;
            }

            if (*(v16 + v5 - 128) == 1 && *v21 != 6)
            {
              if (v25 < 10.0)
              {
                ++v14;
              }

              if (v24 > 25.0)
              {
                ++v13;
              }
            }
          }
        }

        ++v5;
        v21 += 4;
        ++v20;
      }

      while (v5 != 128);
      if (v7 <= 0)
      {
        v36 = 0;
        v35 = 0;
        v34 = 0;
        v33 = 0;
      }

      else
      {
        v28 = 100.0 / v7;
        v29 = v28 * v8;
        v30 = v28 * v9;
        v31 = v28 * v10;
        v32 = v28 * v11;
        v33 = v29 > 40.0;
        v34 = v30 > 50.0;
        v35 = v31 > 60.0;
        v36 = v32 > 70.0;
      }

      if (result >= 10 && v6 >= 5 && v7 >= 15 && v12 >= 4 && v13 <= 1)
      {
        v57 = v9 <= 20 && v14 <= 5;
        v58 = !v57;
        if (v58 || v33 || v34 || v35 || v36)
        {
          for (i = 0; i != 128; ++i)
          {
            if (*(v15 + i) == 1)
            {
              if ((v60 = *v17, *(v18 + i) != 1) || *v19 == 6 || (v60 > 0.0 ? (v61 = v14 < 6) : (v61 = 0), !v61 ? (v62 = 0) : (v62 = 1), v60 <= 20.0 && (v62 & 1) == 0))
              {
                v63 = v60 * v60;
                if (v60 * v60 > v17[800])
                {
                  if (v60 <= 0.0)
                  {
                    v65 = 3.0;
                    if (v60 >= -25.0)
                    {
                      v65 = 1.0;
                      if (v60 < -5.0)
                      {
                        v65 = (-5.0 - v60) * 0.1 + 1.0;
                      }
                    }

                    v64 = v63 * (v65 * v65);
                  }

                  else
                  {
                    v64 = v17[672] * 4.0;
                    if (v63 < v64)
                    {
                      v64 = v63;
                    }
                  }

                  v17[672] = v64;
                  *(a4 + 19496 + i) = 1;
                }
              }
            }

            ++v17;
            v19 += 4;
          }
        }
      }

      return result;
    }
  }

  if (!*(a4 + 1872) && *(a3 + 20) <= 3u && *(a4 + 20) >= 7 && *(result + 60) >= 5)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v41 = a4 + 7080;
    v42 = a2 + 736;
    v43 = (a4 + 12072);
    memset(v66, 0, sizeof(v66));
    result = v66;
    v44 = (a4 + 12072);
    do
    {
      if (*(v41 + v37) == 1 && v44[800] > 0.0)
      {
        if ((*(&v75 + v37) & 1) == 0)
        {
          ++v40;
          *(&v75 + v37) = 1;
          v45 = *(v42 + v37);
          if (v45 != 255)
          {
            *(&v75 + v45) = 1;
          }
        }

        v46 = fabs(*v44);
        if (v46 < 15.0 && (*(&v67 + v37) & 1) == 0)
        {
          ++v39;
          *(&v67 + v37) = 1;
          v47 = *(v42 + v37);
          if (v47 != 255)
          {
            *(&v67 + v47) = 1;
          }
        }

        if (v46 < 30.0 && (*(v66 + v37) & 1) == 0)
        {
          ++v38;
          *(v66 + v37) = 1;
          v48 = *(v42 + v37);
          if (v48 != 255)
          {
            *(v66 + v48) = 1;
          }
        }
      }

      ++v37;
      ++v44;
    }

    while (v37 != 128);
    if (v40 >= 5 && v38 >= 1)
    {
      v49 = 0;
      v51 = v40 > 7 && v38 > 3;
      do
      {
        result = *(v41 + v49);
        if (result == 1)
        {
          v52 = *v43;
          if (*v43 > 10.0 && v39 <= 11)
          {
            if (v43[672] > 100.0)
            {
              v43[672] = 100.0;
              goto LABEL_80;
            }
          }

          else if (v52 <= -10.0)
          {
            if (v52 * v52 > v43[800])
            {
              if (v51)
              {
                v43[672] = v52 * v52;
              }

              v56 = 3.0;
              if (v52 >= -50.0)
              {
                v56 = 1.0;
                if (v52 < -10.0)
                {
                  v56 = (-10.0 - v52) * 0.1 + 1.0;
                }
              }

              v55 = v43[672] * (v56 * v56);
LABEL_79:
              v43[672] = v55;
LABEL_80:
              *(a4 + 19496 + v49) = 1;
            }
          }

          else
          {
            v54 = v43[672];
            if (v54 > 400.0)
            {
              v55 = fmin(v54 * 0.25, 400.0);
              goto LABEL_79;
            }
          }
        }

        ++v49;
        ++v43;
      }

      while (v49 != 128);
    }
  }

  return result;
}

uint64_t GN_ASBAS_Set_Eph_El(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ASBAS_Set_Eph_El"))
  {
    return 0;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_nd("GN_ASBAS_Set_Eph_El: ", 2, v6, a1, a2);
  }

  else
  {
    EvLog_nd("GN_ASBAS_Set_Eph_El: ", 16, *(a3 + 10), a1, a2, *a3, *(a3 + 2), *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), *(a3 + 7), *(a3 + 8), *(a3 + 9), *(a3 + 10), *(a3 + 11), *(a3 + 48));
  }

  if (a1 <= 0x77)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d <%d, Out of range!");
    return 0;
  }

  if (a1 >= 0x9F)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d >%d, Out of range!");
    return 0;
  }

  if (*a3 >> 3 >= 0x2A3u)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: to = %d >=5400, Out of range!");
    return 0;
  }

  v7 = *(a3 + 2);
  if (v7 >= 0x10)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: URA = %d >15, Out of range!");
    return 0;
  }

  v8 = *(a3 + 1);
  if ((v8 - 2048) <= 0xFFFFEFFF)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf0 = %d <-2^11 or >=2^11, Out of range!");
    return 0;
  }

  v9 = *(a3 + 2);
  if (v9 != v9)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf1 = %d <-2^7 or >=2^7, Out of range!");
    return 0;
  }

  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    if ((*&a3[2 * v10 + 6] - 536870913) < 0xBFFFFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[%d] = %d <-2^29 or >=2^29, Out of range!");
      return 0;
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  v13 = *(a3 + 5);
  if ((v13 - 16777217) < 0xFDFFFFFF)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[2] = %d <-2^24 or >=2^24, Out of range!");
    return 0;
  }

  v16 = 0;
  v17 = 1;
  do
  {
    v18 = v17;
    if ((*&a3[2 * v16 + 12] - 65537) < 0xFFFDFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[%d] = %d <-2^16 or >=2^16, Out of range!");
      return 0;
    }

    v17 = 0;
    v16 = 1;
  }

  while ((v18 & 1) != 0);
  v19 = *(a3 + 8);
  if ((v19 - 131073) < 0xFFFBFFFF)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[2] = %d <-2^17 or >=2^17, Out of range!");
    return 0;
  }

  for (i = 0; i != 3; ++i)
  {
    if ((*&a3[2 * i + 18] - 513) < 0xFFFFFBFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: acc[%d] = %d <-2^9 or >=2^9, Out of range!");
      return 0;
    }
  }

  v21 = *(p_api + 48);
  if (*(v21 + 16) == 1 && *v21 >= 3)
  {
    v22 = *(v21 + 40) + 604800 * *(v21 + 32);
  }

  else
  {
    v22 = 0;
  }

  v25 = *a3;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = *(a3 + 6);
  v30 = v13;
  v31 = *(a3 + 3);
  v32 = v19;
  v33 = *(a3 + 18);
  v34 = *(a3 + 11);
  if (*(a3 + 48))
  {
    v23 = 5;
  }

  else
  {
    v23 = 3;
  }

  v24[0] = v22;
  v24[1] = v23;
  v14 = SBAS_Set_StateTable(a1, a2, v24);
  if (v14)
  {
    Debug_Log_SBA_Eph(1, a1, a2, v24);
  }

  return v14;
}

uint64_t G5K_Read_GNB_Meas(char **a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (*a1 != v3 && v4 == v2)
  {
    *a1 = v3;
    a1[1] = v3;
    v2 = v3;
    v4 = v3;
  }

  v6 = 15 * (a1[3] - v3) + (15 * (a1[3] - v3) < 0 ? 0xFuLL : 0);
  v7 = v6 >> 4;
  if (v4 >= v2)
  {
    v2 = a1[3];
  }

  else
  {
    LOWORD(v2) = v2 - 1;
  }

  v8 = v2 - v4;
  v9 = (v6 >> 4);
  if (v9 < v8)
  {
    v8 = v6 >> 4;
  }

  result = GncP02_16GetMEDataFrmBuf(v8, v4);
  v11 = &(*a1)[result];
  *a1 = v11;
  if (v11 >= a1[3])
  {
    v13 = a1[1];
    v12 = a1[2];
    if (v13 != v12)
    {
      *a1 = v12;
      v14 = ~v12 + v13;
      if (v9 < v14)
      {
        v14 = v7;
      }

      result = GncP02_16GetMEDataFrmBuf(v14, v12);
      v15 = &(*a1)[result];
      *a1 = v15;
      if (v15 >= a1[3])
      {
        *a1 = a1[2];
      }
    }
  }

  return result;
}

void G5K_ME_Decode_Meas(unsigned __int8 **a1, char *a2)
{
  v242 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 48);
  v4 = a1[1];
  if (v4 == *a1)
  {
    goto LABEL_349;
  }

  v6 = a2 + 28216;
  v7 = a2 + 381;
  v8 = a2 + 1;
  v233 = a2 + 12344;
  v234 = a2 + 7736;
  v236 = a2 + 568;
  v237 = a2 + 402;
  v235 = a2 + 2;
  v232 = a2 + 12352;
  v230 = a2 + 12356;
  v231 = a2 + 12366;
  v229 = vdupq_n_s64(0x40F5180000000000uLL);
  v228 = vdupq_n_s64(0x4122750000000000uLL);
  while (1)
  {
    v11 = *v4;
    v9 = v4 + 1;
    v10 = v11;
    a1[1] = v9;
    if (v9 >= a1[3])
    {
      a1[1] = a1[2];
    }

    if (v3 < a2 || v3 >= v7)
    {
      EvCrt_v("G5K_ME_Decode_Meas: Rec Buff out of bounds");
      a2[392] = 0;
      v3 = a2;
    }

    if (v10 == 123 || v10 == 36)
    {
      a2[392] = 1;
      *a2 = v10;
      v3 = a2 + 1;
      goto LABEL_11;
    }

    if (a2[392] == 1)
    {
      *v3++ = v10;
      if (v10 == 10)
      {
        *v3 = 0;
        if (a2[392] == 1 && STEU_Checksum_OK(a2))
        {
          v13 = *v8;
          if (v13 <= 0x47)
          {
            v14 = v235;
            v15 = 0uLL;
            if (*v8 <= 0x42u)
            {
              if (v13 == 65)
              {
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 6;
              }

              else
              {
                if (v13 != 66)
                {
LABEL_49:
                  EvLog_v("ME_Get_Msg_Type: Unknown message type:  {%c", v13);
                  goto LABEL_58;
                }

                v16 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 10;
                v17 = 1;
              }
            }

            else
            {
              switch(v13)
              {
                case 'C':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 7;
                  break;
                case 'F':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 5;
                  break;
                case 'G':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 4;
                  break;
                default:
                  goto LABEL_49;
              }
            }
          }

          else
          {
            v14 = v235;
            v15 = 0uLL;
            if (*v8 > 0x4Du)
            {
              switch(v13)
              {
                case 'N':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 9;
                  break;
                case 'W':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 11;
                  break;
                case 'T':
                  v16 = 0;
                  v17 = 0;
                  v19 = 0;
                  v20 = 2;
                  v18 = 1;
                  break;
                default:
                  goto LABEL_49;
              }
            }

            else
            {
              switch(v13)
              {
                case 'H':
                  if ((a2[403] & 1) != 0 || a2[405])
                  {
                    v23 = a2[404] - a2[405];
                    v24 = *(a2 + 200) + a2[404] - a2[405];
                    *(a2 + 200) = v24;
                    v25 = *(a2 + 198) + 1;
                    *(a2 + 198) = v25;
                    EvCrt_nd("G5K_ME_InComplete_Epoch_Check: Missed M & T", 3, v12, 0.0, v23, v24, v25);
                    *(a2 + 403) = 0;
                    a2[405] = 0;
                    bzero(v236, 0x1C00uLL);
                    v26 = v234;
                    v27 = 128;
                    do
                    {
                      *(v26 + 16) = 0;
                      *v26 = 0uLL;
                      *(v26 + 1) = 0uLL;
                      v26 += 36;
                      --v27;
                    }

                    while (v27);
                    EvCrt_v("G5K_ME_InComplete_Epoch_Check:  Flushing M");
                    v15 = 0uLL;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v20 = 3;
                    v16 = 1;
                    v14 = v235;
                  }

                  else
                  {
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v20 = 3;
                    v16 = 1;
                  }

                  break;
                case 'I':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 8;
                  break;
                case 'M':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 1;
                  v20 = 1;
                  break;
                default:
                  goto LABEL_49;
              }
            }
          }

          *&v240[96] = v15;
          v241 = v15;
          *&v240[64] = v15;
          *&v240[80] = v15;
          *&v240[32] = v15;
          *&v240[48] = v15;
          *v240 = v15;
          *&v240[16] = v15;
          v28 = *a2;
          if (v28 != 123)
          {
            v29 = "G5K_ME_Decode: Incorrect 1st ch";
            goto LABEL_57;
          }

          v28 = *v8;
          if ((v28 - 123) <= 0xFFFFFFC5)
          {
            v29 = "G5K_ME_Decode: Incorrect ID";
LABEL_57:
            EvCrt_d(v29, v28);
            goto LABEL_58;
          }

          v55 = *v14;
          if (v55 == 125)
          {
            v29 = "G5K_ME_Decode: Incorrect start";
            v28 = 125;
            goto LABEL_57;
          }

          v227 = v6;
          v56 = 0;
          LODWORD(v239) = 0;
          while (2)
          {
            v57 = 0;
            v58 = v56;
            while (1)
            {
              v59 = v57;
              if ((v55 - 112) <= 0xBFu)
              {
                v65 = v55;
                v66 = "G5K_ME_Decode: Illegal ch";
                goto LABEL_132;
              }

              v240[v57 - 8] = v55 - 48;
              v55 = v14[v57 + 1];
              if (v55 == 125)
              {
                break;
              }

              ++v57;
              if (v59 == 3)
              {
                goto LABEL_123;
              }
            }

            if (v57 != 3)
            {
              v220 = v20;
              v216 = v19;
              v211 = v18;
              v205 = v16;
              v207 = v17;
              gn_report_assertion_failure("G5K_ME_Decode: Input not N x 4 bytes");
              memset(&v240[v59 - 7], 32, (2 - v59) + 1);
              v16 = v205;
              v17 = v207;
              v18 = v211;
              v19 = v216;
              v20 = v220;
            }

LABEL_123:
            if (v58 >= 0x7D)
            {
              EvCrt_v("G5K_ME_Decode: Input longer than buffer. Received  %d  Max %d bytes");
              goto LABEL_133;
            }

            v14 += v59 + 1;
            v60 = BYTE1(v239);
            v240[v58] = (BYTE1(v239) >> 4) + 4 * v239;
            v61 = BYTE2(v239);
            v240[v58 + 1] = (BYTE2(v239) >> 2) + 16 * v60;
            v240[v58 + 2] = BYTE3(v239) + (v61 << 6);
            v56 = v58 + 3;
            v55 = *v14;
            if (v55 != 125)
            {
              continue;
            }

            break;
          }

          v62 = v20 - 1;
          if (!v16)
          {
            v6 = v227;
            goto LABEL_146;
          }

          v6 = v227;
          if (v58 <= 23)
          {
            if (v58 == 12)
            {
              v63 = 14;
              v64 = -14;
              goto LABEL_143;
            }

            if (v58 == 18)
            {
              v63 = 19;
              v64 = -19;
              goto LABEL_143;
            }

            goto LABEL_176;
          }

          if (v58 == 24)
          {
            v63 = 27;
            v64 = -27;
            goto LABEL_143;
          }

          if (v58 == 27)
          {
            v63 = 29;
            v64 = -29;
            goto LABEL_143;
          }

          if (v58 != 33)
          {
            goto LABEL_176;
          }

          v63 = 34;
          v64 = -34;
LABEL_143:
          v67 = v64 + G5K_CompMsgSize[v62];
          if (!v67 || (v56 = (v67 + v63), v56 > 0x80))
          {
            v56 = v63;
            goto LABEL_176;
          }

          do
          {
            v240[v63] = 0;
            LODWORD(v63) = v63 + 1;
            --v67;
          }

          while (v67);
LABEL_146:
          if (v17)
          {
            if (v56 == 21)
            {
              v56 = G5K_CompMsgSize[v62];
              v68 = 21;
              do
              {
                v240[v68++] = 0;
              }

              while (v56 != v68);
              goto LABEL_150;
            }

            goto LABEL_176;
          }

LABEL_150:
          if (v18)
          {
            if (v56 <= 20)
            {
              if (v56 == 15)
              {
                v69 = -15;
              }

              else
              {
                if (v56 != 18)
                {
                  goto LABEL_176;
                }

                v69 = -18;
              }
            }

            else
            {
              switch(v56)
              {
                case 0x15:
                  v56 = 20;
                  v69 = -20;
                  break;
                case 0x18:
                  v56 = 22;
                  v69 = -22;
                  break;
                case 0x3F:
                  v69 = -63;
                  break;
                default:
                  goto LABEL_176;
              }
            }

            v70 = v69 + G5K_CompMsgSize[v62];
            if (v70 && (v70 + v56) <= 0x80)
            {
              do
              {
                v240[v56] = 0;
                v56 = (v56 + 1);
                --v70;
              }

              while (v70);
              goto LABEL_166;
            }
          }

          else
          {
LABEL_166:
            if (!v19)
            {
              goto LABEL_176;
            }

            switch(v56)
            {
              case '6':
                v71 = -54;
                break;
              case 'E':
                v56 = 68;
                v71 = -68;
                break;
              case 'B':
                v56 = 64;
                v71 = -64;
                break;
              default:
                goto LABEL_176;
            }

            v72 = v71 + G5K_CompMsgSize[v62];
            if (v72 && (v72 + v56) <= 0x80)
            {
              do
              {
                v240[v56] = 0;
                v56 = (v56 + 1);
                --v72;
              }

              while (v72);
            }
          }

LABEL_176:
          v73 = G5K_CompMsgSize[v62];
          if (v56 != v73)
          {
            v74 = G5K_CompMsgType[v62];
            v75 = v56 >= v73 ? "G5K_ME_Decode: Warning: {%c too long, %d < %d " : "G5K_ME_Decode: ERROR: {%c too short, %d < %d ";
            v221 = v20;
            v217 = v56;
            EvCrt_v(v75, v74, v56, v73);
            LODWORD(v56) = v217;
            v20 = v221;
            if (v217 < v73)
            {
              goto LABEL_58;
            }
          }

          if (!v56)
          {
            goto LABEL_58;
          }

          if (v20 > 5)
          {
            if (v20 <= 8)
            {
              if (v20 == 6)
              {
                v94 = 0;
                v95 = v231;
                v96 = v232;
                while (v233[124 * v94 + 120])
                {
                  ++v94;
                  v96 += 124;
                  v95 += 124;
                  if (v94 == 128)
                  {
                    EvLog("ME_dec_A: No empty slots!");
                    goto LABEL_58;
                  }
                }

                LODWORD(v239) = 0;
                v225 = v240[0] & 0xF;
                v214 = v95;
                v121 = Decode_SVid_STE(v240[1], v240[0] >> 4, &v239);
                if (v239 != 3)
                {
                  EvLog_v("G5K_ME_dec_A: Illegal GAL STE SV:  ID %d  Const %d  Sig %d");
                  goto LABEL_133;
                }

                v122 = &v233[124 * v94];
                *v122 = 3;
                v122[1] = v225;
                v122[2] = v121;
                v122[3] = 0;
                if ((v225 | 2) != 0xA)
                {
                  EvLog_d("ME_dec_A: Illegal GAL Signal ", v225);
                  goto LABEL_133;
                }

                v122[5] = v121;
                v122[7] = v240[2];
                v122[6] = v240[3] != 0;
                v123 = 7;
                v124 = &v240[4];
                do
                {
                  v125 = *v124++;
                  *v96 = v125;
                  v96 += 2;
                  --v123;
                }

                while (v123);
                v126 = v214;
                do
                {
                  *v126 = *(v124 + v123);
                  v126 += 2;
                  v123 += 2;
                }

                while (v123 != 14);
                v122[4] = 1;
                ++a2[417];
                v122[120] = 1;
              }

              else
              {
                if (v20 == 7)
                {
                  v76 = v233;
                  v77 = 128;
                  while (v76[120])
                  {
                    v76 += 124;
                    if (!--v77)
                    {
                      EvCrt_v("G5K_ME_dec_C: No empty slots!", v178, v179);
                      goto LABEL_58;
                    }
                  }

                  LODWORD(v239) = 0;
                  v133 = v240[0] & 0xF;
                  v134 = Decode_SVid_STE(v240[1], v240[0] >> 4, &v239);
                  v135 = v133 == 11 && v239 == 4;
                  if (v135 && (v134 - 64) > 0xFFFFFFC0)
                  {
                    v136 = *&v240[4];
                    *(v76 + 24) = *&v240[20];
                    v137 = *&v240[52];
                    *(v76 + 40) = *&v240[36];
                    *v76 = 2820;
                    v76[2] = v134;
                    v76[3] = 0;
                    v76[5] = v134;
                    *(v76 + 3) = *&v240[2];
                    *(v76 + 56) = v137;
                    *(v76 + 67) = *&v240[63];
                    *(v76 + 8) = v136;
                    v138 = *&v240[95];
                    v139 = v240[111];
                    *(v76 + 83) = *&v240[79];
                    v76[115] = v139;
                    *(v76 + 99) = v138;
                    v76[116] = v76[83] & 3;
                    v76[4] = 1;
                    ++a2[421];
                    v76[120] = 1;
                    goto LABEL_293;
                  }

                  EvCrt_v("ME_dec_C: Illegal BDS STE SV:  ID %d  Const %d  Sig %d");
LABEL_133:
                  v6 = v227;
                  goto LABEL_58;
                }

                v98 = v233;
                v109 = 128;
                while (v98[120])
                {
                  v98 += 124;
                  if (!--v109)
                  {
                    EvCrt_v("G5K_ME_dec_I: No empty slots!");
                    goto LABEL_58;
                  }
                }

                LODWORD(v239) = 0;
                v140 = v240[0] & 0xF;
                v141 = Decode_SVid_STE(v240[1], v240[0] >> 4, &v239);
                v144 = v140 == 3 && v239 == 6 && (v141 - 15) > 0xFFFFFFF1;
                if (!v144)
                {
                  EvCrt_v("ME_dec_I: Illegal NVC STE SV:  ID %d  Const %d  Sig %d");
                  goto LABEL_133;
                }

                *v98 = 774;
                v98[2] = v141;
                v98[3] = 0;
                v98[5] = v141;
                *(v98 + 3) = *&v240[2];
                v142.i32[0] = *&v240[4];
                *(v98 + 2) = *&v240[4];
                *(v98 + 12) = *&v240[8];
                *(v98 + 28) = *&v240[24];
                *(v98 + 41) = *&v240[37];
                v98[49] = -1;
                if (vmovl_u8(v142).u8[0] == 1)
                {
                  v98[49] = (v98[31] & 0x20) != 0;
                }

                v98[4] = 1;
                ++a2[425];
LABEL_292:
                v98[120] = 1;
              }

LABEL_293:
              v6 = v227;
              goto LABEL_58;
            }

            if (v20 != 9)
            {
              if (v20 == 10)
              {
                *(a2 + 119) = *v240;
                *(v237 + 11) = *&v240[4];
                *(a2 + 249) = *&v240[12];
                a2[500] = v240[14];
                *(a2 + 60) = *&v240[15];
                *(a2 + 244) = *&v240[23];
                ++a2[508];
                *(a2 + 126) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              }

              else
              {
                *(a2 + 107) = *v240;
                a2[432] = v240[4];
                *(a2 + 109) = *&v240[5];
              }

              goto LABEL_58;
            }

            v97 = *&v240[2];
            if ((v240[0] & 0xD0) == 0x10)
            {
              if ((v240[0] & 0xF) == 0)
              {
                a2[408] = v240[1];
                *v6 = v97;
                a2[407] = 1;
              }

              goto LABEL_308;
            }

            v145 = v240[0] >> 4;
            if (v240[0] >> 4 <= 4u)
            {
              v6 = v227;
              if (v145 == 2)
              {
                goto LABEL_308;
              }

              if (v145 == 4)
              {
                a2[412] = v240[1];
                v6 = v227;
                *(v227 + 1) = v97;
                a2[411] = 1;
                goto LABEL_308;
              }
            }

            else
            {
              switch(v145)
              {
                case 5:
                  a2[416] = v240[1];
                  v6 = v227;
                  *(v227 + 2) = v97;
                  a2[415] = 1;
                  goto LABEL_308;
                case 6:
                  a2[420] = v240[1];
                  v6 = v227;
                  *(v227 + 3) = v97;
                  a2[419] = 1;
                  goto LABEL_308;
                case 7:
                  a2[424] = v240[1];
                  v6 = v227;
                  *(v227 + 4) = v97;
                  a2[423] = 1;
LABEL_308:
                  a2[406] = 1;
                  goto LABEL_58;
              }
            }

            EvCrt_d("G5K_ME_dec_N: Illegal Constell ", v145);
            v6 = v227;
            goto LABEL_308;
          }

          if (v20 > 2)
          {
            if (v20 == 3)
            {
              a2[404] = v240[0];
              *(a2 + 130) = *&v240[1];
              *(a2 + 268) = *&v240[5];
              *(a2 + 270) = *&v240[7];
              a2[544] = v240[9];
              *(a2 + 269) = *&v240[10];
              *(a2 + 545) = *&v240[12];
              v84 = v240[14];
              a2[547] = v240[14];
              v85 = v240[15];
              a2[548] = v240[15];
              v86 = v240[16];
              a2[549] = v240[16];
              v223 = v240[17];
              a2[551] = v240[17];
              *&v239 = COERCE_DOUBLE(&v240[19]);
              *(a2 + 66) = ByteS_Ext_8(&v239);
              v87 = v239;
              *(a2 + 277) = *v239;
              *(a2 + 271) = *(v87 + 1);
              v88 = v87[4];
              a2[550] = v88;
              a2[552] = v87[5];
              a2[553] = v87[6];
              a2[556] = v87[7];
              a2[557] = v87[8];
              a2[558] = v87[9];
              a2[559] = v87[10];
              v89 = v87[11];
              v239 = v87 + 11;
              a2[560] = v89;
              a2[547] = (v84 + 8) >> 4;
              a2[548] = (v85 + 8) >> 4;
              a2[549] = (v86 + 8) >> 4;
              a2[550] = (v88 + 8) >> 4;
              a2[551] = (v223 + 8) >> 4;
              LODWORD(v87) = g_GncPMeData;
              *(a2 + 131) = g_GncPMeData;
              if (!v87)
              {
                *(a2 + 131) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              }

              TM_FSP_OS_Time_ms_for_TTick = API_Get_TM_FSP_OS_Time_ms_for_TTick(*(a2 + 130));
              v91 = *(a2 + 131);
              if (TM_FSP_OS_Time_ms_for_TTick)
              {
                v92 = TM_FSP_OS_Time_ms_for_TTick;
                v93 = TM_FSP_OS_Time_ms_for_TTick - v91 >= 0 ? TM_FSP_OS_Time_ms_for_TTick - v91 : v91 - TM_FSP_OS_Time_ms_for_TTick;
                if (v93 >> 3 <= 0x270)
                {
                  if (g_Logging_Cfg >= 7)
                  {
                    EvLog_v("TM_FSP: Replacing %u with %u delta %d", v91, TM_FSP_OS_Time_ms_for_TTick, TM_FSP_OS_Time_ms_for_TTick - v91);
                  }

                  *(a2 + 131) = v92;
                  v91 = v92;
                }
              }

              a2[403] = 1;
              v6 = v227;
              *(v227 + 7) = v91;
              goto LABEL_58;
            }

            if (v20 != 4)
            {
              v98 = v233;
              v99 = 128;
              while (v98[120])
              {
                v98 += 124;
                if (!--v99)
                {
                  EvCrt_v("G5K_ME_dec_F: No empty slots!");
                  goto LABEL_58;
                }
              }

              LODWORD(v239) = 0;
              v130 = v240[0] & 0xF;
              v131 = Decode_SVid_STE(v240[1], v240[0] >> 4, &v239);
              if (v239 != 2)
              {
                EvCrt_v("ME_dec_F: Illegal F STE SV:  ID %d  Const %d  Sig %d");
                goto LABEL_133;
              }

              *v98 = 2;
              v98[1] = v130;
              v98[2] = 0;
              v98[3] = v131;
              v98[5] = v131;
              _ZF = v240[2] == 0;
              v98[6] = v240[2] != 0;
              v132 = v240[3];
              if (_ZF)
              {
                v132 = -1;
              }

              v98[7] = v132;
              *(v98 + 1) = *&v240[5];
              *(v98 + 4) = *&v240[13];
              v98[4] = 1;
              ++a2[413];
              goto LABEL_292;
            }

            v78 = 0;
            v79 = v230;
            while (v233[124 * v78 + 120])
            {
              ++v78;
              v79 += 31;
              if (v78 == 128)
              {
                EvCrt_v("G5K_ME_dec_G: No empty slots!");
                goto LABEL_58;
              }
            }

            LODWORD(v239) = 0;
            v127 = v240[0] & 0xF;
            v128 = Decode_SVid_STE(v240[1], v240[0] >> 4, &v239);
            if ((v239 != 1 || (v128 - 33) <= 0xFFFFFFDF) && (v239 != 5 || (v128 - 203) <= 0xFFFFFFF5))
            {
              EvCrt_v("ME_dec_G: Illegal GPS/QZSS STE SV:  ID %d  Const %d  Sig %d");
              goto LABEL_133;
            }

            v129 = &v233[124 * v78];
            *v129 = v239;
            v129[1] = v127;
            v129[2] = v128;
            v129[3] = 0;
            if (!v127)
            {
              v146 = 0;
              v147 = 0;
              v129[5] = v128;
              v148 = *&v240[4];
              *(v129 + 4) = *&v240[4];
              v149 = &v240[6];
              do
              {
                *v79++ = *v149 | (*(v149 + 2) << 16);
                v147 += ((v148 >> v146++) & 1) == 0;
                v149 = (v149 + 3);
              }

              while (v146 != 10);
              v129[6] = v147;
              v129[4] = 1;
              ++a2[409];
              v129[120] = 1;
              goto LABEL_133;
            }

            v66 = "ME_dec_G: Illegal GPS/QZSS Signal ";
            v65 = v127;
LABEL_132:
            EvCrt_d(v66, v65);
            goto LABEL_133;
          }

          if (v20 != 1)
          {
            v100 = *v240;
            v101 = *&v240[4];
            *(a2 + 110) = *v240;
            *(a2 + 111) = v101;
            *(a2 + 112) = *&v240[8];
            *(a2 + 113) = 8 * *&v240[10];
            v102 = v240[14];
            if (v240[14] > 7u)
            {
              v102 = -1;
            }

            a2[456] = v102;
            v219 = *&v240[15];
            v197 = v240[17];
            v213 = *&v240[18];
            v224 = v240[20];
            v103 = v240[21];
            v206 = *&v240[24];
            v209 = *&v240[22];
            v203 = *&v240[28];
            v204 = *&v240[26];
            v201 = *&v240[32];
            v202 = *&v240[30];
            v199 = *&v240[36];
            v200 = *&v240[34];
            v194 = v240[38];
            v193 = v240[39];
            v191 = v240[41];
            v192 = v240[40];
            v189 = v240[43];
            v190 = v240[42];
            v198 = *&v240[44];
            v184 = v240[47];
            v185 = v240[46];
            v183 = v240[48];
            v104 = v240[49];
            v180 = v240[51];
            v181 = v240[50];
            v195 = v240[54];
            v196 = *&v240[52];
            v105 = *&v240[55];
            *(a2 + 118) = *&v240[64] | (v240[66] << 16);
            v187 = *&v240[57];
            v188 = v105;
            v186 = *&v240[59];
            v182 = *&v240[61];
            v106 = v240[63];
            if (a2[403] == 1 && v100 == *(a2 + 130) && (v107 = *(a2 + 131)) != 0)
            {
              *(a2 + 115) = v107;
              v108 = *(a2 + 66);
            }

            else
            {
              v110 = mach_continuous_time();
              v108 = 0;
              *(a2 + 115) = (*&g_MacClockTicksToMsRelation * v110);
            }

            *(a2 + 58) = v108;
            *(a2 + 126) = 0;
            a2[508] = 0;
            a2[402] = 1;
            v111 = a2[456];
            if (v111 != 255 && (a2[457] & 1) == 0)
            {
              API_Set_Inter_Chan_Bias_Model(v111);
              a2[457] = 1;
            }

            v112.f64[0] = (((v191 << 8) | (v190 << 16) | (v189 << 24)) >> 8);
            v113.f64[0] = v199;
            v114 = *(p_api + 72);
            v114[4].f64[1] = v197 + v106 * 0.0078125;
            v114[5].f64[0] = vcvtd_n_f64_s32(v209, 8uLL);
            v114[5].f64[1] = vcvtd_n_f64_s32(v206, 8uLL);
            v114[6].f64[0] = vcvtd_n_f64_s32(v204, 8uLL);
            v114[6].f64[1] = vcvtd_n_f64_s32(v203, 8uLL);
            v114[7].f64[0] = vcvtd_n_f64_s32(v213, 8uLL);
            v114[7].f64[1] = vcvtd_n_f64_s32(v202, 8uLL);
            v114[8].f64[0] = vcvtd_n_f64_s32(v201, 8uLL);
            v114[8].f64[1] = vcvtd_n_f64_s32(v200, 8uLL);
            v113.f64[1] = (((v194 << 8) | (v193 << 16) | (v192 << 24)) >> 8);
            v112.f64[1] = v198;
            __asm { FMOV            V3.2D, #0.125 }

            v114[9] = vmulq_f64(v113, xmmword_299050F10);
            v114[10] = vmulq_f64(v112, _Q3);
            v114[11].f64[0] = vcvtd_n_f64_s32(((v185 << 8) | (v184 << 16) | (v183 << 24)) >> 8, 3uLL);
            v114[11].f64[1] = vcvtd_n_f64_s32(((v104 << 8) | (v181 << 16) | (v180 << 24)) >> 8, 3uLL);
            API_Set_TSX_ClkCorr_Params(vcvtd_n_f64_s32(v196, 3uLL), vcvtd_n_f64_s32(v195, 3uLL), v219);
            v119 = *(p_api + 72);
            *(v119 + 192) = vcvtd_n_f64_s32(v188, 3uLL);
            *(v119 + 200) = vcvtd_n_f64_s32(v187, 3uLL);
            *(v119 + 208) = vcvtd_n_f64_s32(v186, 3uLL);
            *(v119 + 216) = vcvtd_n_f64_s32(v182, 3uLL);
            v120 = v224;
            if (v103 <= 0)
            {
              v120 = 0;
            }

            *(v119 + 242) = v120;
            *(v119 + 243) = v103 & ~(v103 >> 31);
            goto LABEL_133;
          }

          v80 = v240[0];
          v222 = v240[0];
          ++a2[405];
          if (v80 < 0)
          {
            EvCrt_v("ME_dec_M: Warning: Unsupported channel index %d >= %d");
            goto LABEL_58;
          }

          v81 = v240[1] & 0xF;
          v238 = 0;
          v212 = v240[2];
          v208 = v240[1] >> 4;
          v82 = Decode_SVid_STE(v240[2], v208, &v238);
          v83 = v238;
          v218 = v81;
          if (v81 != 15 || v238 || v82)
          {
            if (!(v238 | v82))
            {
              EvLog_v("ME_dec_M: Not Supported: SVID %d Const %d Sig %d");
              goto LABEL_133;
            }

            if (v238)
            {
              if (v81 == 15)
              {
LABEL_332:
                EvCrt_v("G5K_ME_dec_M: Illegal STE SV:  ID %d  Const %d  Sig %d", v212, v208, v81);
                v168 = &v236[56 * v222];
                *(v168 + 6) = 0;
                *(v168 + 1) = 0u;
                *(v168 + 2) = 0u;
                *v168 = 0u;
                v169 = &v234[36 * v222];
                *v169 = 0u;
                *(v169 + 1) = 0u;
                *(v169 + 16) = 0;
                goto LABEL_133;
              }
            }

            else if (v81 != 15 || v82)
            {
              goto LABEL_332;
            }

            v215 = *(&xmmword_2A1454168 + 1);
            v150 = &v234[36 * v80];
            *(v150 + 2) = 0;
            *(v150 + 3) = 0;
            *(v150 + 16) = 0;
            v151 = &v236[56 * v80];
            *v151 = 0u;
            *(v151 + 1) = 0u;
            *(v151 + 2) = 0u;
            *(v151 + 6) = 0;
            *v150 = v83;
            v150[1] = v218;
            if (v83 == 2)
            {
              v152 = 0;
            }

            else
            {
              v152 = v82;
            }

            if (v83 == 2)
            {
              v153 = v82;
            }

            else
            {
              v153 = 0;
            }

            v150[2] = v152;
            v150[3] = v153;
            v154 = vmovl_u8(*&v240[3]).u64[0];
            v155 = vrev32_s16(v154);
            v155.i32[0] = v154.i32[0];
            *(v150 + 1) = vuzp1_s8(v155, v154).u32[0];
            *(v150 + 4) = *&v240[7];
            v156 = *&v240[9];
            v157 = *&v240[13] | (v240[15] << 16);
            v158 = *&v240[16];
            v159 = *&v240[20];
            v226 = *&v240[24];
            *(v150 + 8) = *&v240[26];
            *(v150 + 5) = *&v240[30];
            *(v150 + 3) = *&v240[32];
            v151[42] = v240[38];
            *(v151 + 43) = *&v240[39];
            *(v151 + 38) = *&v240[41];
            v151[45] = v240[45];
            v150[23] = v240[46];
            if (v240[47] - 1 < 0xB)
            {
              v160 = (v240[47] - 1) + 1;
            }

            else
            {
              v160 = 0;
            }

            *(v150 + 6) = v160;
            v150[22] = v240[55];
            *(v150 + 10) = *&v240[56];
            *(v151 + 16) = *&v240[58];
            v161 = *&v240[64];
            *(v151 + 34) = *&v240[60];
            v162 = v240[54];
            *(v151 + 3) = v158;
            *(v151 + 4) = v161;
            v150[28] = v240[68];
            *(v150 + 30) = *&v240[69];
            v150[18] = v162 >> 4;
            v150[19] = v162 & 0xF;
            *&v239 = 0.0;
            if (v156 | v157)
            {
              v163 = v156 * 0.001 + vcvtd_n_f64_u32(v157, 0x18uLL) * 0.001;
              v210 = v163;
              *(v151 + 6) = v163;
              if (v83 == 2)
              {
                v227[20] = API_Get_UTC_Cor(1, &v239);
                if (*&v239 <= 0.0)
                {
                  v164 = -0.5;
                }

                else
                {
                  v164 = 0.5;
                }

                v165 = (*&v239 + v164);
                if (*&v239 + v164 < -2147483650.0)
                {
                  v165 = 0x80000000;
                }

                if (*&v239 + v164 > 2147483650.0)
                {
                  v165 = 0x7FFFFFFF;
                }

                *&v239 = v165;
                v227[21] = v165;
                v166.f64[0] = *(v151 + 6);
                v166.f64[1] = v210 + -10800.0 + v165;
                if (v218 == 4)
                {
                  v166 = vaddq_f64(v166, vdupq_lane_s64(COERCE__INT64(*(v215 + 8 * v150[3] + 1936) * 0.00000000333564095), 0));
                }

                v167 = v229;
                goto LABEL_338;
              }

              v166 = vdupq_lane_s64(*&v163, 0);
              if (v83 == 4)
              {
                v166.f64[1] = v210 + 14.0;
                if (v218 == 12)
                {
                  v166 = vaddq_f64(v166, vdupq_lane_s64(COERCE__INT64(*(v215 + 2000) * 0.00000000333564095), 0));
                }

                v167 = v228;
LABEL_338:
                v166 = vmlsq_f64(v166, v167, vrndmq_f64(vdivq_f64(v166, v167)));
                *(v151 + 6) = *&v166.f64[0];
              }

              v170 = v166.f64[1];
              if (((1 << v218) & 0xDD77) == 0)
              {
                v177 = *(v215 + 2008) * 0.00000000333564095;
                v170 = v166.f64[1] + v177 - floor((v166.f64[1] + v177) / 604800.0) * 604800.0;
                *(v151 + 6) = v166.f64[0] + v177 - floor((v166.f64[0] + v177) / 604800.0) * 604800.0;
              }

              v171 = (v170 * 0.666666667);
              v172 = v170 + v171 * -1.5;
              v173 = (v172 * 1000.0);
              v174 = v172 + v173 * -0.001;
              v175 = (v174 * 1023000.0);
              v176 = (v174 + v175 * -0.000000977517107) * 1023000.0 * 10000.0;
              *v151 = v171;
              *(v151 + 1) = v175 - v173 + (v173 << 10);
              *(v151 + 4) = (109951163 * (v176 << 12)) >> 36;
              if (v171 > 403199 || v173 > 0x5DB || v175 > 0x3FE || v176 >> 4 >= 0x271)
              {
                EvLog_nd("G5K_ME_dec_M: Code TOT out of range ", 4, v12, v171, v173, v175, v176);
                goto LABEL_133;
              }
            }

            else
            {
              *v151 = 0;
              *(v151 + 4) = 0;
            }

            *(v151 + 3) = v159 + v226 * 0.0000152587891;
            goto LABEL_133;
          }
        }

        else
        {
          v21 = *(a2 + 197) + 1;
          *(a2 + 197) = v21;
          EvCrt_v("G5K_ME_Decode_Meas: CheckSum Err %d >%s", v21, a2);
          v22 = *(a2 + 110);
          if (v22 > 0x1388)
          {
            if (v22 < 0xFFFFF447)
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (*(a2 + 197) < 6u)
            {
              goto LABEL_58;
            }

            EvCrt_v("G5K_ME_Decode_Meas: GN_GPS_Hard_Reset_GNB >6 Checksum Errors in <=5000 ms !");
            GN_GPS_Hard_Reset_GNB();
          }

          *(a2 + 197) = 0;
        }

LABEL_58:
        if (g_Logging_Cfg >= 1)
        {
          if (*(v6 + 7) != *(v6 + 8))
          {
            v30 = qword_2A1454258;
            v31 = *qword_2A1454258;
            v32 = 36;
            v33 = 1u;
            do
            {
              *v30 = v31 + 1;
              *v31 = v32;
              v31 = *v30;
              if (*v30 >= *(v30 + 24))
              {
                v31 = *(v30 + 16);
                *v30 = v31;
              }

              v32 = aT_0[v33++];
            }

            while (v33 != 4);
            sprintf_1u(v30, *(v6 + 7));
            v34 = (*v30)++;
            *v34 = 32;
            if (*v30 >= *(v30 + 24))
            {
              *v30 = *(v30 + 16);
            }

            sprintf_1u(v30, *(a2 + 130));
            v35 = (*v30)++;
            *v35 = 10;
            v36 = *v30;
            if (*v30 >= *(v30 + 24))
            {
              v36 = *(v30 + 16);
              *v30 = v36;
            }

            *v36 = 0;
            *(v6 + 8) = *(v6 + 7);
          }

          GNB_Debug_BlockMove(a2, (v3 - a2));
        }

        a2[392] = 0;
        v3 = a2;
        if (a2[402] == 1)
        {
          break;
        }
      }
    }

LABEL_11:
    v4 = a1[1];
    if (v4 == *a1)
    {
      goto LABEL_349;
    }
  }

  v37 = *a1;
  v38 = a1[1];
  if (v38 == *a1)
  {
LABEL_90:
    if (a2[403] != 1)
    {
      goto LABEL_348;
    }

    v47 = *(a2 + 130);
    if (*(a2 + 110) == v47)
    {
      goto LABEL_348;
    }

    EvCrt_v("G5K_ME_Decode_Meas: Inconsistent TTicks %u %u", *(a2 + 110), v47);
    goto LABEL_102;
  }

  if (v37 >= v38)
  {
    v39 = (v37 - v38);
  }

  else
  {
    v39 = (v37 - *(a1 + 4) + *(a1 + 6) - v38);
  }

  if (v39 >= 4)
  {
    EvCrt_nd("G5K_ME_Decode_Meas: More data after {T message", 3, v12, v38, *a1, v39);
    v37 = *a1;
  }

  if (v38 == v37)
  {
LABEL_89:
    if ((*v237 & 1) == 0)
    {
      goto LABEL_348;
    }

    goto LABEL_90;
  }

  v40 = 0;
  while (1)
  {
    v42 = *v38++;
    v41 = v42;
    if (v38 >= a1[3])
    {
      v38 = a1[2];
    }

    v43 = (v41 == 123) | v40;
    if (v41 != 123 && ((v40 ^ 1) & 1) == 0)
    {
      v44 = v41 - 72;
      v144 = v44 > 0xC;
      v45 = (1 << v44) & 0x1029;
      _ZF = v144 || v45 == 0;
      v43 = v40;
      if (!_ZF)
      {
        break;
      }
    }

    v40 = v43;
    if (v38 == v37)
    {
      goto LABEL_89;
    }
  }

  if ((*v237 & 1) == 0 || a2[403] != 1 || a2[405] || a2[409] || a2[413] || a2[417] || a2[421] || a2[425])
  {
    EvCrt_nd("G5K_ME_Decode_Meas: Throughput error, found next data set", 3, v12, *(a2 + 110), *(a2 + 130), v39);
LABEL_102:
    *v240 = 0;
    a2[411] = 0;
    a2[415] = 0;
    a2[419] = 0;
    a2[423] = 0;
    *(a2 + 206) = 0;
    *(a2 + 208) = 0;
    *(a2 + 210) = 0;
    *(a2 + 212) = 0;
    *v237 = 0;
    bzero(v236, 0x1C00uLL);
    v48 = -4608;
    v49 = 12344;
    do
    {
      v50 = &a2[v48 + 12344];
      *(v50 + 16) = 0;
      *v50 = 0uLL;
      *(v50 + 1) = 0uLL;
      v51 = &a2[v49];
      *(v51 + 105) = 0uLL;
      *(v51 + 5) = 0uLL;
      *(v51 + 6) = 0uLL;
      *(v51 + 3) = 0uLL;
      *(v51 + 4) = 0uLL;
      *(v51 + 1) = 0uLL;
      *(v51 + 2) = 0uLL;
      v49 += 124;
      *v51 = 0uLL;
      v48 += 36;
    }

    while (v48);
    v6[20] = 0;
    API_Get_UTC_Cor(1, v240);
    if (*v240 <= 0.0)
    {
      v52 = -0.5;
    }

    else
    {
      v52 = 0.5;
    }

    v53 = *v240 + v52;
    if (*v240 + v52 <= 2147483650.0)
    {
      if (v53 >= -2147483650.0)
      {
        v54 = v53;
      }

      else
      {
        LOBYTE(v54) = 0;
      }
    }

    else
    {
      LOBYTE(v54) = -1;
    }

    v6[21] = v54;
    v3 = a2;
    goto LABEL_11;
  }

  EvCrt_nd("G5K_ME_Decode_Meas: Throughput error, more data follows", 3, v12, *(a2 + 110), *(a2 + 130), v39);
LABEL_348:
  v3 = a2;
LABEL_349:
  *(a2 + 48) = v3;
}

uint64_t GM_Gen_SV_Meas_QI(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if ((~v1 & 0x888) == 0)
  {
    return 18;
  }

  if ((~v1 & 0x88) == 0)
  {
    return 17;
  }

  if (*(a1 + 8))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((~v1 & 0xA) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 11;
  }

  if ((~v1 & 0xC) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 12;
  }

  if ((~v1 & 0x18) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 13;
  }

  if ((~v1 & 0x28) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 14;
  }

  if ((~v1 & 0x48) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 15;
  }

  if ((~v1 & 0x848) != 0)
  {
    return v8;
  }

  else
  {
    return 16;
  }
}

uint64_t Gnm52_11HandleStartTimeMarkRsp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a1 + 12))
      {
        v3 = 84;
      }

      else
      {
        v3 = 70;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_RSP Success,%c\n", v2, "GNM", 73, "Gnm52_11HandleStartTimeMarkRsp", v3);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (*(a1 + 12) == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    Gnm11_00ApiStatusCB(v4, 0, 0, 18);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm52_11HandleStartTimeMarkRsp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm52_13HandleTimeMarkEvent(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm52_13HandleTimeMarkEvent", 517);
    v5 = 1;
LABEL_11:
    gnssOsa_PrintLog(__str, v5, 1, 0);
    return 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_13HandleTimeMarkEvent");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsWk,%d,GpsTOW,%.9fms,GpsTimeUnc,%.9fms,UtcCorr,%f,METTick,%u,BCTNs,%llu\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm52_13HandleTimeMarkEvent", *(a1 + 18), *(a1 + 24), *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if (!off_2A13EE528)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm52_13HandleTimeMarkEvent", 258);
    v5 = 2;
    goto LABEL_11;
  }

  off_2A13EE528(0, a1 + 16);
  return 0;
}

uint64_t Gnm52_22HandleStartTimeMarkReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_START_TIMEMARK_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    off_2A13EE528 = *(a1 + 16);
    v3 = gnssOsa_Calloc("Gnm52_22HandleStartTimeMarkReq", 114, 1, 0xCuLL);
    if (v3)
    {
      v4 = v3;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_REQ =>GNC\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(128, 132, 8389120, v4);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm52_22HandleStartTimeMarkReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm_StartTimeMarkSesion(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_StartTimeMarkSesion");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = gnssOsa_Calloc("Gnm_StartTimeMarkSesion", 156, 1, 0x18uLL);
    if (v3)
    {
      v3[2] = a1;
      AgpsSendFsmMsg(128, 128, 8405248, v3);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_StartTimeMarkSesion");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      return 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_StartTimeMarkSesion");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      return 5;
    }
  }

  else if (g_LbsOsaTrace_Config < 2)
  {
    return 1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm_StartTimeMarkSesion", 258);
    v5 = 1;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_StartTimeMarkSesion");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  return v5;
}

void Gnm03_51StartHalConnTimer(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 1) == 0)
  {
    if (AgpsFsmStartTimer(8400902, 0x3A98u))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_51StartHalConnTimer", 1544);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v1 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm03_51StartHalConnTimer", 15000);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      LOBYTE(g_HalStatusInfo) = 1;
    }
  }
}

uint64_t Gnm03_11SetHWRev(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_HW_REV_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_11SetHWRev");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    LOBYTE(g_HWStatus) = 1;
    memcpy_s("Gnm03_11SetHWRev", 247, &g_HWStatus + 4, 0x44u, (a1 + 12), 0x44uLL);
    if (g_HWStatus != 1)
    {
      goto LABEL_8;
    }

    if (DWORD1(g_HWStatus) != 3599)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ProdId,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_07ValidateHWSupport", 264, DWORD1(g_HWStatus));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

LABEL_8:
      Hal_StopConn(Gnm_HalStopCnf);
      Gnm03_52StartHalDisConnTimer();
      snprintf(v7, 0x3B6uLL, "ASSERT: %s %d HWS : HW not supported by stack", "Gnm03_11SetHWRev", 255);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "Gnm03_11SetHWRev", v7);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      gnssOsa_FlushLog();
      __assert_rtn("Gnm03_11SetHWRev", "gnm03HwStatus.cpp", 256, "false && HW not supported by stack");
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_11SetHWRev", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void Gnm03_52StartHalDisConnTimer(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (AgpsFsmStartTimer(8401158, 0x3A98u))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_52StartHalDisConnTimer", 1544);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v1 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm03_52StartHalDisConnTimer", 15000);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      BYTE1(g_HalStatusInfo) = 1;
    }
  }
}

uint64_t Gnm03_12HalStartCnf(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_START_CNF\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_12HalStartCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_12HalStartCnf", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }

  if (g_HalStatusInfo == 1)
  {
    if (AgpsFsmStopTimer(8400902))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_53StopHalConnTimer", 1545);
        v4 = 2;
LABEL_12:
        gnssOsa_PrintLog(__str, v4, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm03_53StopHalConnTimer");
      v4 = 4;
      goto LABEL_12;
    }

    LOBYTE(g_HalStatusInfo) = 0;
  }

  v7 = 0;
  byte_2A13EC3AC = 0;
  while (1)
  {
    v8 = v7;
    v9 = *(pg_AgpsFsmTable + 168 * v7 + 4);
    if (!*(pg_AgpsFsmTable + 168 * v7 + 4))
    {
      break;
    }

    ++v7;
    if (v9 == 128)
    {
      v10 = *(pg_AgpsFsmTable + 168 * v8 + 96);
      goto LABEL_19;
    }
  }

  v10 = 0;
LABEL_19:
  if (v10 == &a_GnmInitState || v10 == &a_GnmResetState)
  {
    g_HalStatusInfo = 0;
    Gnm35_15SendDbgCfg();
    if (v10 == &a_GnmInitState)
    {
      Gnm28_21InitRestorePeNv();
    }

    Gnm_03_05UpdtHWStatusGnc(1);
  }

  return 0;
}

void *Gnm03_14HalStopCnf(uint64_t a1, __n128 a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_STOP_CNF\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm03_14HalStopCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_14HalStopCnf", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }

  if (*(a1 + 12) == 1)
  {
    if (BYTE1(g_HalStatusInfo) != 1)
    {
LABEL_22:
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HALStop success,starting again\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm03_14HalStopCnf");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      ++BYTE2(g_HalStatusInfo);
      Hal_StartConn(g_GnssHw == 0, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
      return 0;
    }

    if (AgpsFsmStopTimer(8401158))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_54StopHalDisConnTimer", 1545);
        v5 = 2;
LABEL_20:
        gnssOsa_PrintLog(__str, v5, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm03_54StopHalDisConnTimer");
      v5 = 4;
      goto LABEL_20;
    }

    BYTE1(g_HalStatusInfo) = 0;
    goto LABEL_22;
  }

  v7 = HIBYTE(g_HalStatusInfo);
  if (HIBYTE(g_HalStatusInfo) <= 4u)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      v7 = HIBYTE(g_HalStatusInfo);
    }

    HIBYTE(g_HalStatusInfo) = v7 + 1;
    Hal_StopConn(Gnm_HalStopCnf);
    Gnm03_52StartHalDisConnTimer();
    return 0;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u,GNSS service stopping\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  Gnm_03_05UpdtHWStatusGnc(0);
  Gnm03_60BaseBandResetReq(1);
  return &a_GnmResetState;
}

void Gnm_03_05UpdtHWStatusGnc(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm_03_05UpdtHWStatusGnc", 158, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_STATUS_IND =>GNC HwStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_03_05UpdtHWStatusGnc", a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(128, 132, 8390147, v3);
  }
}

void Gnm03_60BaseBandResetReq(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Reason,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 69, "Gnm03_60BaseBandResetReq", a1);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (a1 <= 7)
  {
    Hal_GnssBaseBandReset(dword_299050F50[a1]);
  }

  Ga05_HandleResetBbResetReq(a1);
}

void *Gnm03_15HandleHwStatus(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HW_STATUS_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_15HandleHwStatus");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_15HandleHwStatus", 517);
      v7 = 1;
LABEL_12:
      gnssOsa_PrintLog(__str, v7, 1, 0);
      return 0;
    }

    return 0;
  }

  v3 = *(a1 + 12);
  if (v3 <= 5)
  {
    if ((v3 - 1) < 5)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      Gnm03_06InitHWReset();
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm03_15HandleHwStatus", 261);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      return &a_GnmResetState;
    }

    if (v3)
    {
LABEL_35:
      if (g_LbsOsaTrace_Config < 4)
      {
        return 0;
      }

      bzero(__str, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
      v7 = 4;
      goto LABEL_12;
    }

    return 0;
  }

  switch(v3)
  {
    case 8:
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      break;
    case 7:
      Gnm03_60BaseBandResetReq(5);
      break;
    case 6:
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ME LP\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm03_15HandleHwStatus", 1297);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      for (i = 0; ; ++i)
      {
        v11 = i;
        v12 = *(pg_AgpsFsmTable + 168 * i + 4);
        if (!*(pg_AgpsFsmTable + 168 * i + 4))
        {
          break;
        }

        if (v12 == 128)
        {
          v13 = *(pg_AgpsFsmTable + 168 * v11 + 96);
          if (v13 != &a_GnmInitState && v13 != &a_GnmResetState)
          {
            return 0;
          }

          if (v13 == &a_GnmInitState)
          {
            Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 1);
          }

          v15 = g_LbsOsaTrace_Config;
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v16 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnmState,Active\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm03_15HandleHwStatus", 261);
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v15 = g_LbsOsaTrace_Config;
          }

          if (v15 >= 3)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS HW Init complete\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 77, "Gnm03_15HandleHwStatus");
            gnssOsa_PrintLog(__str, 3, 1, 0);
          }

          return &a_GnmActiveState;
        }
      }

      return 0;
    default:
      goto LABEL_35;
  }

  Gnm03_06InitHWReset();
  return &a_GnmResetState;
}

void Gnm03_04SendHWStatus(void (*result)(void, uint64_t, _WORD *), uint64_t a2, char a3)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(v12, 0, 70);
  if (result)
  {
    v5 = 0;
    HIBYTE(v12[0]) = byte_2A13EC3AC;
    while (1)
    {
      v6 = v5;
      v7 = *(pg_AgpsFsmTable + 168 * v5 + 4);
      if (!*(pg_AgpsFsmTable + 168 * v5 + 4))
      {
        break;
      }

      ++v5;
      if (v7 == 128)
      {
        v8 = *(pg_AgpsFsmTable + 168 * v6 + 96);
        if (a3)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    v8 = 0;
    if (a3)
    {
LABEL_12:
      LOBYTE(v12[0]) = 1;
      v12[1] = WORD2(g_HWStatus);
      strncpy(&v12[2], &g_HWStatus + 8, 0x40uLL);
      LOBYTE(v12[34]) = 3;
      goto LABEL_13;
    }

LABEL_10:
    if (v8 != &a_GnmInitState && v8 != &a_GnmResetState)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HwStatusCB called\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm03_04SendHWStatus");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    result(0, a2, v12);
  }

  else if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm03_04SendHWStatus", 258);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

void Gnm03_06InitHWReset(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Initializing HW Reset\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 77, "Gnm03_06InitHWReset");
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  if (byte_2A13EC617 == 1)
  {
    if (AgpsFsmStopTimer(8400390) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm03_06InitHWReset", 1545);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    byte_2A13EC617 = 0;
    if (byte_2A13EC619 == 1)
    {
      byte_2A13EC61A = 11;
    }

    Gnm10_31SendMEWakeRsp(0);
    Gnm10_29SendFwActivity(1, 0);
  }

  Gnm_03_05UpdtHWStatusGnc(2);
}

void *Gnm03_16HandleHWInitFail(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_INIT_FAIL\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_16HandleHWInitFail");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Hal_StopConn(0);
    v3 = g_LbsOsaTrace_Config;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm03_16HandleHWInitFail", 1294);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      v3 = g_LbsOsaTrace_Config;
    }

    v5 = *(a1 + 12);
    if (v3)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Err,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_20HwStartFailure", 1293, v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    byte_2A13EC3AC = v5;
    Gnm_03_05UpdtHWStatusGnc(0);
    Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 0);
    Gnm03_60BaseBandResetReq(0);
    return &a_GnmResetState;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm03_16HandleHWInitFail", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }
}

uint64_t Gnm03_17HandleGetHwInitStatus(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HW_INIT_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_17HandleGetHwInitStatus");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm03_04SendHWStatus(*(a1 + 16), *(a1 + 12), 0);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_17HandleGetHwInitStatus", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm03_18InitializeHw(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HW_INIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_18InitializeHw");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    if (g_IsHwInit != 1)
    {
      g_GnssHw = *(a1 + 12);
      g_IsHwInit = 1;
      v4 = *(a1 + 24);
      *(&g_GnmCBs + 1) = *(a1 + 16);
      qword_2A13EE538 = v4;
      g_HalCallbacks = Gnm_HardwareStatusNotif;
      Hal_StartConn(g_GnssHw == 0, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
      return 0;
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ExistingHw,%hhu,ReqHw,%hhu\n", v3);
LABEL_9:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_9;
  }

  return 0;
}

uint64_t Gnm03_40DiscardResetReqGnc(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_40DiscardResetReqGnc");
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_40DiscardResetReqGnc", 1028);
      v4 = 2;
LABEL_8:
      gnssOsa_PrintLog(__str, v4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_40DiscardResetReqGnc", 517);
    v4 = 1;
    goto LABEL_8;
  }

  return 0;
}

void *Gnm03_41HandleResetReqGnc(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_41HandleResetReqGnc");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm03_60BaseBandResetReq(6);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm03_41HandleResetReqGnc", 261);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    return &a_GnmResetState;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_41HandleResetReqGnc", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }
}

uint64_t Gnm03_42HandleMEWakeReq(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_42HandleMEWakeReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm10_29SendFwActivity(1, 1);
    g_GNSS_FW_NV = *(a1 + 12);
    if (Hal_WakeUp_GNSS(Gnm03_HandleGNSSMEWakeResponse))
    {
      unk_2A13EC618 = 0;
      byte_2A13EC616 = 1;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_42HandleMEWakeReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void Gnm03_HandleGNSSMEWakeResponse(uint64_t result)
{
  v4 = *MEMORY[0x29EDCA608];
  if (result)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: success\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm03_HandleGNSSMEWakeResponse");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if ((Hal_SetCoexConfig() & 1) == 0)
    {
      Gnm03_60BaseBandResetReq(7);
    }

    Gnm55_RestoreVar_GNSS_FW_NV(g_GNSS_FW_NV);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: error\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 69, "Gnm03_HandleGNSSMEWakeResponse");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

uint64_t Gnm03_43RejectMEWakeReq(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_43RejectMEWakeReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm10_31SendMEWakeRsp(0);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_43RejectMEWakeReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm03_55HandleHalConnTimeout(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_CONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (g_HalStatusInfo)
  {
    LOBYTE(g_HalStatusInfo) = 0;
    if (a1)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HAL Conn TO\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_55HandleHalConnTimeout");
        v4 = 2;
LABEL_11:
        gnssOsa_PrintLog(__str, v4, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_55HandleHalConnTimeout", 517);
      v4 = 1;
      goto LABEL_11;
    }
  }

  else if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
    v4 = 4;
    goto LABEL_11;
  }

  return 0;
}

void *Gnm03_56HandleHalDisconnTimeout(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_DISCONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
      v6 = 4;
LABEL_12:
      gnssOsa_PrintLog(__str, v6, 1, 0);
    }

    return 0;
  }

  BYTE1(g_HalStatusInfo) = 0;
  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_56HandleHalDisconnTimeout", 517);
      v6 = 1;
      goto LABEL_12;
    }

    return 0;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HAL Disconn TO\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_56HandleHalDisconnTimeout");
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  Gnm03_60BaseBandResetReq(3);
  return &a_GnmResetState;
}

uint64_t GNSS_Nav_Debug_Ctl(uint64_t result)
{
  if (result)
  {
    if (g_Logging_Cfg >= 4)
    {
      v1 = result;
      v3 = *result;
      v2 = *(result + 8);
      if (v2 != *result)
      {
        v4 = *result;
        if (v2 > *result)
        {
          v4 = *(result + 24);
        }

        v5 = v4 - v2;
        if (v4 == v2)
        {
          if (v2 >= *(result + 24))
          {
            v2 = *(result + 16);
            *(result + 8) = v2;
LABEL_12:
            v6 = v3 - v2;
            if (v6)
            {
              result = GN_GPS_Write_Nav_Debug(v6, v2);
              v2 = &v1[1][result];
              v1[1] = v2;
            }
          }
        }

        else
        {
          result = GN_GPS_Write_Nav_Debug((v4 - v2), v2);
          v2 = &v1[1][result];
          v1[1] = v2;
          if (v2 >= v1[3])
          {
            v2 = v1[2];
            v1[1] = v2;
            if (result == v5)
            {
              v3 = *v1;
              goto LABEL_12;
            }
          }
        }

        if (v2 == *v1)
        {
          v7 = v1[2];
          *v1 = v7;
          v1[1] = v7;
        }
      }
    }
  }

  return result;
}

void *GNSS_Nav_Debug_Screens(void *result)
{
  if (result)
  {
    if (g_Logging_Cfg >= 4)
    {
      v1 = result;
      v2 = result[36];
      if (v2)
      {
        ds_NK_Summary(result);
        if (g_GN_GNSS_Nav_Debug_Port == 1)
        {
          g_GN_GNSS_Nav_Debug_Port = 0;
        }

        else
        {
          ds_NK_Crude_Apx_Pos(v2, v1[22], v1[17]);
        }

        ds_Intermittent(v2, *v1, v1[9]);

        return GNSS_Nav_Debug_Ctl(v2);
      }
    }
  }

  return result;
}

void *GNSS_Nav_Debug_InitWrite(void *result)
{
  if (g_Logging_Cfg >= 4)
  {
    v1 = result[36];
    if (g_GN_GNSS_Nav_Debug_Port == 1)
    {
      ds_Config(result[36], result[9], result[6], result[17]);
    }

    return ds_NK_Summary_FirstLine(v1);
  }

  return result;
}

uint64_t GNSS_Nav_Debug_Flush_Check(uint64_t result)
{
  v1 = *(result + 8) - *result;
  if (v1 <= 0)
  {
    v1 += *(result + 24) - *(result + 16);
  }

  if (v1 <= 0x3FF)
  {

    return GNSS_Nav_Debug_Ctl(result);
  }

  return result;
}

uint64_t *mapu(double *a1, int a2, unsigned int a3, uint64_t a4, const double *a5, unsigned int a6, double *a7, int a8, double *a9, double *a10)
{
  v15 = a9;
  v16 = *a9;
  result = phiu(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a6)
  {
    v18 = 0;
    if (a6 + 1 > 2)
    {
      v19 = a6 + 1;
    }

    else
    {
      v19 = 2;
    }

    v20 = 1;
    v21 = a9;
    do
    {
      v18 += v20;
      *v21++ = a5[v18 - 1];
      ++v20;
    }

    while (v19 != v20);
  }

  if (a3 >= 2)
  {
    v22 = a10 - 1;
    v23 = (a3 + a3 * a3) >> 1;
    if (a6 + 1 > 2)
    {
      v24 = a6 + 1;
    }

    else
    {
      v24 = 2;
    }

    v25 = a3;
    v26 = v24 - 1;
    v27 = a3 - 1;
    v28 = v24 - 1;
    do
    {
      v29 = v25 - 1;
      v30 = 0.0;
      if (a6)
      {
        v31 = a9;
        v32 = v26;
        LODWORD(result) = v25 - 1;
        do
        {
          v33 = *v31++;
          v34 = a7[result];
          v30 = v30 + v34 * (v33 * v34);
          a7[result] = v33 * v34;
          result = (result + a8);
          --v32;
        }

        while (v32);
      }

      if (v16 >= 0.0)
      {
        v22[v23--] = v30;
        LODWORD(v35) = 1;
        do
        {
          if (a6)
          {
            v36 = ~v35 + v25;
            v37 = 0.0;
            LODWORD(result) = v28;
            v38 = v27;
            do
            {
              v37 = v37 + a7[v36] * a7[v38];
              v36 += a8;
              v38 += a8;
              result = (result - 1);
            }

            while (result);
          }

          else
          {
            v37 = 0.0;
          }

          v22[v23] = v37;
          v35 = (v35 + 1);
          --v23;
        }

        while (v25 != v35);
      }

      else
      {
        v22[v25] = sqrt(v30);
      }

      --v27;
      --v25;
    }

    while (v29 > 1);
  }

  if (a6)
  {
    v39 = 0;
    if (a6 + 1 > 2)
    {
      v40 = a6 + 1;
    }

    else
    {
      v40 = 2;
    }

    v41 = v40 - 1;
    v42 = 0.0;
    do
    {
      v43 = *v15++;
      v42 = v42 + v43 * a7[v39] * a7[v39];
      v39 += a8;
      --v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0.0;
  }

  v44 = sqrt(v42);
  if (v16 < 0.0)
  {
    v42 = v44;
  }

  *a10 = v42;
  return result;
}

void Hal32_HandlePowerReportRsp(uint64_t result)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v5 = 513;
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_11;
  }

  if (*(result + 2) != 66 || *(result + 3) != 71)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDEx,%u\n", v3, "HAL");
    goto LABEL_12;
  }

  if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v1 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1542;
    v6 = *__error();
    v4 = v1;
    v2 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
LABEL_11:
    snprintf(__str, 0x3C5uLL, v2, v4, "HAL", 69, "Hal32_HandlePowerReportRsp", v5, v6);
LABEL_12:
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void Hal32_HandlePowerReportData(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v16 = 513;
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_19;
  }

  if (a2 <= 8)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v16 = 515;
    v17 = a2;
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = "%10u %s%c %s: #%04hx length %u\n";
LABEL_19:
    snprintf(__str, 0x3C5uLL, v3, v15, "HAL", 69, "Hal32_HandlePowerReportData", v16, v17, v18);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    return;
  }

  v5 = *(result + a2 - 3);
  if (a2 == 11)
  {
    v6 = 0;
LABEL_17:
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v17 = v5;
    v18 = v6;
    v16 = 771;
    v3 = "%10u %s%c %s: #%04hx zx chksum %u, computed %u\n";
    v15 = v14;
    goto LABEL_19;
  }

  v6 = 0;
  v7 = (result + 8);
  v8 = (a2 - 11);
  do
  {
    v9 = *v7++;
    v6 += v9;
    --v8;
  }

  while (v8);
  if (v5 != v6)
  {
    goto LABEL_17;
  }

  if (*(result + 4) != 80)
  {
    v10 = *(result + 8);
    v11 = *(result + 20) * 0.000001;
    v12 = *(result + 24) / 1000.0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PwrReport:ME_TTick,%u,MeasInt,%f sec,ActiveInt,%f sec,AvgPwr,%f mW,ClockMain-1,%u,ClockMain-2,%u,ClockRF-1,%u,ClockRF-2,%u\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 73, "Hal32_HandlePowerReportData", v10, v11, v11, v12, *(result + 148), *(result + 149), *(result + 150), *(result + 151));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (g_PowerReportDataCB)
    {
      g_PowerReportDataCB(result, v11, v12, v10 * 0.001, v11);
    }
  }
}

void *gnssOsa_Calloc(const char *a1, int a2, int a3, size_t size)
{
  v14 = *MEMORY[0x29EDCA608];
  v7 = a3;
  result = malloc_type_calloc(a3, size, 0xDBB5E63DuLL);
  if (!result)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      v9 = v7 * size;
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Size,%lu,Fn,%s,Line,%d\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "gnssOsa_Calloc", 1537, v9, a1, a2);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    else
    {
      v9 = v7 * size;
    }

    snprintf(v12, 0x3B6uLL, "Size,%lu,Fn,%s,Line,%d", v9, a1, a2);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 69, "gnssOsa_Calloc", v12);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_Calloc", "agpsmacosa.cpp", 74, "false && Memory allocation failure");
  }

  return result;
}

uint64_t gnssOsa_FlushLog(void)
{
  result = gp_Logger;
  if (gp_Logger)
  {
    v1 = *(*gp_Logger + 48);

    return v1();
  }

  return result;
}

BOOL gnssOsa_SemAcquire(dispatch_semaphore_t dsema)
{
  v5 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemAcquire", 1541);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return dsema != 0;
}

uint64_t gnssOsa_SemWaitTimeOut(NSObject *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = dispatch_time(0, 1000000 * a2);
    return dispatch_semaphore_wait(a1, v3) != 0;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 69, "gnssOsa_SemWaitTimeOut", 1543);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 2;
  }
}

uint64_t gnssOsa_ReleaseOSTimer(void)
{
  gnssOsa_MacEnterCriticalSection("gnssOsa_ReleaseOSTimer", 126, &g_MacTimerCriticSection);
  if (g_curTimeState == 1)
  {
    dispatch_suspend(g_timerHandler);
  }

  g_curTimeState = 0;

  return gnssOsa_MacExitCriticalSection("gnssOsa_ReleaseOSTimer", 138, &g_MacTimerCriticSection);
}

uint64_t gnssOsa_MacEnterCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 749, "false && CRTE invalid input");
  }

  if (pthread_mutex_lock(a3))
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE OS API Failed");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 754, "false && CRTE OS API Failed");
  }

  return 0;
}

uint64_t gnssOsa_MacExitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 764, "false && CRTX invalid input");
  }

  if (pthread_mutex_unlock(a3))
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX OS API Failed");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 768, "false && CRTX OS API Failed");
  }

  return 0;
}

uint64_t gnssOsa_OSTimerInit(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 1uLL, g_TimerQueue);
  g_timerHandler = v0;
  if (!v0)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", "gnssOsa_OSTimerInit", 150, "TIMC TimerHandler");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_OSTimerInit", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_OSTimerInit", "agpsmacosa.cpp", 150, "false && TIMC TimerHandler");
  }

  dispatch_source_set_event_handler_f(v0, gnssOsa_TimerExpiryHandler);
  return 1;
}

uint64_t gnssOsa_TimerExpiryHandler(void *a1)
{
  v1 = 0;
  v13 = *MEMORY[0x29EDCA608];
  do
  {
    v2 = &__str[v1 + 966];
    *v2 = 0;
    *(v2 + 1) = -1;
    *(v2 + 2) = 0;
    *(v2 + 6) = -1;
    v1 += 32;
    v2[28] = 0;
  }

  while (v1 != 640);
  gnssOsa_MacEnterCriticalSection("gnssOsa_TimerExpiryHandler", 256, &g_MacTimerContextCriticSection);
  v3 = 0;
  v4 = 0;
  v5 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
  do
  {
    v6 = &g_MacOsaTimers[4 * v4];
    if (*(v6 + 28) == 1 && v6[1] <= v5)
    {
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerExpired Handle,%u,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "gnssOsa_TimerExpiryHandler", *(v6 + 6), v6[1]);
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      if (*v6)
      {
        v8 = &__str[32 * v3 + 966];
        *v8 = *v6;
        *(v8 + 2) = v6[2];
        ++v3;
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 21) = 0;
        v6[2] = 0;
        v4 = -1;
      }

      else if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MacTimer\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_TimerExpiryHandler", 770);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }
    }

    ++v4;
  }

  while (v4 < 0x14u);
  gnssOsa_TimerHandler();
  result = gnssOsa_MacExitCriticalSection("gnssOsa_TimerExpiryHandler", 288, &g_MacTimerContextCriticSection);
  if (v3)
  {
    v11 = 0;
    do
    {
      result = (*&__str[32 * v11 + 966])(*&__str[32 * v11 + 982]);
      ++v11;
    }

    while (v3 > v11);
  }

  return result;
}

uint64_t gnssOsa_OSTimerDeInit(void)
{
  gnssOsa_MacEnterCriticalSection("gnssOsa_OSTimerDeInit", 158, &g_MacTimerCriticSection);
  v0 = g_timerHandler;
  if (!dispatch_source_testcancel(g_timerHandler))
  {
    dispatch_source_cancel(v0);
    v0 = g_timerHandler;
  }

  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(v0);
    v0 = g_timerHandler;
  }

  dispatch_release(v0);
  g_timerHandler = 0;
  g_curTimeState = 0;
  gnssOsa_MacExitCriticalSection("gnssOsa_OSTimerDeInit", 180, &g_MacTimerCriticSection);
  return 1;
}

uint64_t gnssOsa_TriggerOSTimer(int64_t a1)
{
  gnssOsa_MacEnterCriticalSection("gnssOsa_TriggerOSTimer", 191, &g_MacTimerCriticSection);
  v2 = g_timerHandler;
  v3 = dispatch_time(0, a1);
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(g_timerHandler);
  }

  g_curTimeState = 1;
  gnssOsa_MacExitCriticalSection("gnssOsa_TriggerOSTimer", 205, &g_MacTimerCriticSection);
  return 1;
}

uint64_t gnssOsa_TimerHandler(void)
{
  v0 = -1;
  v1 = &byte_2A13C3D8C;
  v2 = 20;
  do
  {
    if (*v1 == 1 && *(v1 - 20) < v0)
    {
      v0 = *(v1 - 20);
    }

    v1 += 32;
    --v2;
  }

  while (v2);
  if (v0 == -1)
  {

    return gnssOsa_ReleaseOSTimer();
  }

  else
  {
    v3 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v4 = v0 >= v3;
    v5 = v0 - v3;
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    return gnssOsa_TriggerOSTimer(v6);
  }
}

BOOL gnssOsa_Init(void)
{
  v9 = *MEMORY[0x29EDCA608];
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  v2 = v0 / v1;
  *&g_MacClockTicksToMsRelation = v2 * 0.000001;
  g_MacClockTicksToNs = *&v2;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -7);
  if (!v3 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(&info, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(&info, 0x3C5uLL, "%10u %s%c %s: #%04hx timer queueAttr\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 87, "gnssOsa_Init", 513);
    gnssOsa_PrintLog(&info, 2, 1, 0);
  }

  v5 = dispatch_queue_create("TimerQueue", v3);
  g_TimerQueue = v5;
  if (v5)
  {
    gnssOsa_InitCriticalSection("gnssOsa_Init", 334, &g_MacTimerCriticSection);
    gnssOsa_InitCriticalSection("gnssOsa_Init", 335, &g_MacTimerContextCriticSection);
    gnssOsa_OSTimerInit();
    IndusGpsLogObjectGeneral = os_log_create("com.apple.gpsd", "gpsdi");
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(&info, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(&info, 0x3C5uLL, "%10u %s%c %s: #%04hx Queue creation failed\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_Init", 513);
    gnssOsa_PrintLog(&info, 1, 1, 0);
  }

  return v5 != 0;
}

uint64_t gnssOsa_InitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 778, "false && CRTC invalid input");
  }

  if (pthread_mutex_init(a3, 0))
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC OS API Failed");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 782, "false && CRTC OS API Failed");
  }

  return 0;
}

void gnssOsa_Deinit(void)
{
  gnssOsa_StopAllTimers();
  gnssOsa_OSTimerDeInit();
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 347, &g_MacTimerCriticSection);
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 348, &g_MacTimerContextCriticSection);
  if (g_TimerQueue)
  {
    dispatch_release(g_TimerQueue);
    g_TimerQueue = 0;
  }

  gp_Logger = 0;
}

uint64_t gnssOsa_StopAllTimers(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerStopAll\n", (*&g_MacClockTicksToMsRelation * v0), "OSA", 68, "gnssOsa_StopAllTimers");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  gnssOsa_MacEnterCriticalSection("gnssOsa_StopAllTimers", 454, &g_MacTimerContextCriticSection);
  for (i = 0; i != 80; i += 4)
  {
    v2 = &g_MacOsaTimers[i];
    *v2 = 0;
    v2[1] = 0;
    *(v2 + 21) = 0;
    v2[2] = 0;
  }

  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopAllTimers", 467, &g_MacTimerContextCriticSection);
  return 1;
}

uint64_t gnssOsa_MacDeinitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(v10, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTD invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_MacDeinitCriticalSection", v10);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacDeinitCriticalSection", "agpsmacosa.cpp", 792, "false && CRTD invalid input");
  }

  result = pthread_mutex_destroy(a3);
  if (result)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      v6 = result;
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DeInit CriticalSec,errno,%d,%s,%d\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "gnssOsa_MacDeinitCriticalSection", v6, a1, a2);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t gnssOsa_StartTimer(const char *a1, int a2, unsigned int *a3, void (*a4)(void *), void *a5, unsigned int a6)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v7)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v17 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx MacTimer,ReqDurationMs,%u,%s,%d\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 69, "gnssOsa_StartTimer", 513, a6, a1, a2);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }
  }

  else
  {
    gnssOsa_MacEnterCriticalSection("gnssOsa_StartTimer", 368, &g_MacTimerContextCriticSection);
    v12 = &byte_2A13C3D8C;
    v13 = 20;
    while (*v12 == 1)
    {
      v12 += 32;
      if (!--v13)
      {
        gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 381, &g_MacTimerContextCriticSection);
        snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", "gnssOsa_StartTimer", 386, "Timer not started as max timer count hit");
        if (g_LbsOsaTrace_Config)
        {
          bzero(__s, 0x3C6uLL);
          v14 = mach_continuous_time();
          snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "gnssOsa_StartTimer", __str);
          gnssOsa_PrintLog(__s, 1, 1, 0);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_StartTimer", "agpsmacosa.cpp", 386, "false && Timer not started as max timer count hit");
      }
    }

    v18 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v19 = ++g_MacOsaTimerCount;
    *(v12 - 28) = a4;
    *(v12 - 12) = a5;
    *(v12 - 20) = v18 + 1000000 * a6;
    *(v12 - 1) = v19;
    *v12 = 1;
    *a3 = v19;
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__s, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: TimerStarted,Handle,%u,DurationMs,%u,CurrNs,%llu,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 68, "gnssOsa_StartTimer", *(v12 - 1), a6, v18, *(v12 - 20));
      gnssOsa_PrintLog(__s, 5, 1, 0);
    }

    gnssOsa_TimerHandler();
    gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 410, &g_MacTimerContextCriticSection);
  }

  return v8;
}

uint64_t gnssOsa_StopTimer(const char *a1, unsigned int a2, int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_StopTimer", 423, &g_MacTimerContextCriticSection);
  v4 = g_MacOsaTimers;
  v5 = 20;
  while (*(v4 + 6) != a3)
  {
    v4 += 4;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerStopped,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_StopTimer", a3);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  *v4 = 0;
  v4[1] = 0;
  *(v4 + 21) = 0;
  v4[2] = 0;
LABEL_8:
  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopTimer", 441, &g_MacTimerContextCriticSection);
  return 1;
}

BOOL AgpsInitMsgQueue(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  gnssOsa_InitCriticalSection("AgpsInitMsgQueue", 489, (a1 + 24));
  v2 = gnssOsa_SemInit((a1 + 88), 0);
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InitMsgQ\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsInitMsgQueue", 1539);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return v2;
}

BOOL gnssOsa_SemInit(dispatch_semaphore_s **a1, intptr_t value)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = dispatch_semaphore_create(value);
  *a1 = v3;
  if (!v3 && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "gnssOsa_SemInit", 1539);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return v3 != 0;
}

void AgpsDeinitMsgQueue(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 68, "AgpsDeinitMsgQueue");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeinitMsgQueue", 515, (a1 + 24));
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    v4 = i + 1;
    v5 = i[1];
    if (!v5)
    {
      v4 = (a1 + 16);
    }

    *v4 = 0;
    *(a1 + 8) = v5;
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Event dropped Src,%u,Dest,%u,Event,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 87, "AgpsDeinitMsgQueue", 770, **i, *(*i + 1), *(*i + 1));
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    if (*i)
    {
      free(*i);
    }

    free(i);
  }

  gnssOsa_MacExitCriticalSection("AgpsDeinitMsgQueue", 552, (a1 + 24));
  if (gnssOsa_MacDeinitCriticalSection("AgpsDeinitMsgQueue", 559, (a1 + 24)) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "AgpsDeinitMsgQueue", 1553);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (!gnssOsa_DeinitCountingSem((a1 + 88)))
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "AgpsDeinitMsgQueue", 1540);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 68, "AgpsDeinitMsgQueue");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

BOOL gnssOsa_DeinitCountingSem(dispatch_object_t *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "gnssOsa_DeinitCountingSem", 1540);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return v1 != 0;
}

unsigned __int8 *AgpsEnQueueFsmMsg(unsigned __int8 *result, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Src,%x,Dest,%x,EnQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 73, "AgpsEnQueueFsmMsg", *v3, v3[1], *(v3 + 1));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = gnssOsa_Calloc("AgpsEnQueueFsmMsg", 584, 1, 0x10uLL);
    *v5 = v3;
    gnssOsa_MacEnterCriticalSection("AgpsEnQueueFsmMsg", 595, (a2 + 24));
    v6 = *(a2 + 16);
    if (v6)
    {
      *(v6 + 8) = v5;
      *(a2 + 16) = v5;
      v5[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
        *(v6 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      *(a2 + 8) = v5;
      *(a2 + 16) = v5;
      v5[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
LABEL_8:
        *(a2 + 16) = v6;
        free(v5);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v7 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Msg,%x,ProcessId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "AgpsEnQueueFsmMsg", 1548, *(v3 + 1), *(a2 + 4));
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }
    }

    return gnssOsa_MacExitCriticalSection("AgpsEnQueueFsmMsg", 640, (a2 + 24));
  }

  return result;
}

BOOL gnssOsa_SemRelease(dispatch_semaphore_t dsema)
{
  v5 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemRelease", 1542);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return dsema != 0;
}

unsigned __int8 *AgpsDeQueueFsmMsg(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!gnssOsa_SemAcquire(*(a1 + 88)) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "AgpsDeQueueFsmMsg", 1541);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeQueueFsmMsg", 659, (a1 + 24));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 + 1;
    v5 = v3[1];
    if (!v5)
    {
      v4 = (a1 + 16);
    }

    *v4 = 0;
    *(a1 + 8) = v5;
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    v6 = *v3;
    free(v3);
    if (v6 && g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Src,%x,Dest,%x,DeQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "AgpsDeQueueFsmMsg", *v6, v6[1], *(v6 + 1));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    return 0;
  }

  return v6;
}

void gnssOsa_MarkFsmMsgInvalid(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = result;
    gnssOsa_MacEnterCriticalSection("gnssOsa_MarkFsmMsgInvalid", 715, (a2 + 24));
    v4 = *(a2 + 8);
    if (v4)
    {
      while (*(*v4 + 4) != v3)
      {
        v4 = v4[1];
        if (!v4)
        {
          goto LABEL_10;
        }
      }

      *(*v4 + 8) = 0;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 73, "gnssOsa_MarkFsmMsgInvalid", v3);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

LABEL_10:
    gnssOsa_MacExitCriticalSection("gnssOsa_MarkFsmMsgInvalid", 737, (a2 + 24));
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FsmCtxt\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 87, "gnssOsa_MarkFsmMsgInvalid", 513);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }
}

void *memcpy_s(const char *a1, int a2, void *__dst, unsigned int a4, const void *__src, size_t __n)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!__dst || !__src)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v9, "OSA", 69, "memcpy_s", 513, a1, a2);
      goto LABEL_8;
    }

    return 0;
  }

  if (a4 < __n)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v8, "OSA", 69, "memcpy_s", 515, a1, a2);
LABEL_8:
      gnssOsa_PrintLog(__str, 1, 1, 0);
      return 0;
    }

    return 0;
  }

  return memcpy(__dst, __src, __n);
}

char *strncpy_s(char *a1, unsigned int a2, const char *__src, size_t __n)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!a1 || !__src)
  {
    return 0;
  }

  if (a2 < __n)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "strncpy_s", 515);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }

  return strncpy(a1, __src, __n);
}

BOOL gnssOsa_CreateThread(const char *a1, int a2, _opaque_pthread_t **a3, unsigned int a4, void *(__cdecl *a5)(void *), void *a6, unsigned int a7, void *a8, int a9)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(&v29, 0, sizeof(v29));
  if (a3)
  {
    if (a4)
    {
      if (pthread_attr_init(&v29))
      {
        snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Init failed");
        if (g_LbsOsaTrace_Config)
        {
          bzero(__s, 0x3C6uLL);
          v23 = mach_continuous_time();
          snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 69, "gnssOsa_CreateThread", __str);
          gnssOsa_PrintLog(__s, 1, 1, 0);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1026, "false && THRD Init failed");
      }

      v15 = &v29;
      if (pthread_attr_setstacksize(&v29, a4))
      {
        snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Stack Size");
        if (g_LbsOsaTrace_Config)
        {
          bzero(__s, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 69, "gnssOsa_CreateThread", __str);
          gnssOsa_PrintLog(__s, 1, 1, 0);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1030, "false && THRD Stack Size");
      }
    }

    else
    {
      v15 = 0;
    }

    if (pthread_create(a3, v15, a5, a6))
    {
      snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Create failed");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__s, 0x3C6uLL);
        v22 = mach_continuous_time();
        snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v22), "OSA", 69, "gnssOsa_CreateThread", __str);
        gnssOsa_PrintLog(__s, 1, 1, 0);
      }

      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1037, "false && THRD Create failed");
    }

    v25 = 0;
    v26 = 0;
    if (pthread_getschedparam(*a3, &v25, &v26))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1044, "false && THRD pthread_getschedparam failed");
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__s, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx Requester,%s,Handle,%p,Prio,%d,DesiredPrio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 73, "gnssOsa_CreateThread", 1569, a1, a3, v26.sched_priority, v25, a9);
      gnssOsa_PrintLog(__s, 4, 1, 0);
    }

    if (a9 == 99)
    {
      v25 = 4;
      priority_max = sched_get_priority_max(4);
    }

    else
    {
      if (a9 != 1)
      {
LABEL_23:
        if (a4 && pthread_attr_destroy(v15))
        {
          snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Destroy failed");
          if (g_LbsOsaTrace_Config)
          {
            bzero(__s, 0x3C6uLL);
            v24 = mach_continuous_time();
            snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v24), "OSA", 69, "gnssOsa_CreateThread", __str);
            gnssOsa_PrintLog(__s, 1, 1, 0);
          }

          gnssOsa_FlushLog();
          __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1074, "false && THRD Destroy failed");
        }

        return a3 != 0;
      }

      priority_max = sched_get_priority_min(v25);
    }

    if (priority_max == -1)
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1061, "false && sched_get_priority failed");
    }

    v26.sched_priority = priority_max;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__s, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx Updated Prio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 73, "gnssOsa_CreateThread", 1569, v26.sched_priority, v25);
      gnssOsa_PrintLog(__s, 4, 1, 0);
    }

    if (pthread_setschedparam(*a3, v25, &v26))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1067, "false && pthread_setschedparam failed");
    }

    goto LABEL_23;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__s, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 69, "gnssOsa_CreateThread", 513);
    gnssOsa_PrintLog(__s, 1, 1, 0);
  }

  return a3 != 0;
}

void gnssOsa_PrintLog(char *__s, int a2, int a3, unsigned int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = gp_Logger;
  if (!gp_Logger)
  {
    return;
  }

  if (a3)
  {
    v8 = strlen(__s);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = a4;
    if (!a4)
    {
      return;
    }
  }

  v9 = 6;
  if (a2 <= 1)
  {
    if (!a2)
    {
      return;
    }

    if (a2 != 1)
    {
      goto LABEL_21;
    }

    v9 = 2;
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a2 == 4)
    {
      v9 = 5;
      goto LABEL_21;
    }

    if (a2 == 3)
    {
      v9 = 4;
      if (!a3)
      {
        goto LABEL_21;
      }
    }

    else if (a2 != 2 || (v9 = 3, !a3))
    {
LABEL_21:
      v10 = *(*gp_Logger + 32);

      v10(v4, v9, __s, v8);
      return;
    }
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v15 = v8;
  memcpy(&__dst, __s, v8);
  *(&__dst + v8) = 0;
  v11 = IndusGpsLogObjectGeneral;
  if (os_log_type_enabled(IndusGpsLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    p_dst = &__dst;
    if (v15 < 0)
    {
      p_dst = __dst;
    }

    *buf = 136446210;
    v17 = p_dst;
    _os_log_impl(&dword_298F10000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  (*(*gp_Logger + 16))(gp_Logger, v9, &__dst);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

void sub_298F7CD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_298F7CDE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void DD_GLON_Alm_Set_Health_Frq(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = 0;
  GLON_AlmBin2Int(a1, &v13);
  v3 = BYTE3(v14) - 32;
  if (BYTE3(v14) <= 0x18u)
  {
    v3 = 2139062143;
  }

  if (BYTE3(v14) >= 7u)
  {
    v4 = v3;
  }

  else
  {
    v4 = BYTE3(v14);
  }

  v5 = BYTE2(v14);
  v6 = BYTE2(v14) - 1;
  if (v6 <= 0x17)
  {
    if (BYTE6(v16) == 1)
    {
      if (g_Logging_Cfg > 4)
      {
        v7 = *(a2 + v6 + 4332);
        if (v7 != 2139062143 && v7 != v4)
        {
          EvCrt_v("DD_GLON_Alm_Set_Health_Frq:  Error:  Ignoring apparent change of Frq Id of Slot %d from %d to %d %d %d", BYTE2(v14), v7, v4, 1, v17);
        }
      }

      if (*(a2 + v6 + 4332) == 2139062143 && v4 != 2139062143)
      {
        *(a2 + v6 + 4332) = v4;
      }

      v10 = a2[1489];
      if ((*(v10 + v6) & 1) == 0 && (*(a2[2146] + v6) & 1) == 0)
      {
        *(v10 + v6) = 1;
        EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health U->H Alm:  Slot %d  FrqId %d", BYTE2(v14), v4);
        *(a2[1490] + 20 * v6 + 4) = 1;
      }
    }

    else
    {
      v11 = a2[1489];
      if (*(v11 + v6) == 1)
      {
        *(v11 + v6) = 0;
        EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health H->U Alm:  Slot %d  FrqId %d", v5, v4);
        *(a2[1490] + 20 * v6 + 4) = 2;
      }

      if (*(a2 + v6 + 4332) == 2139062143 && v4 <= 6)
      {
        *(a2 + v6 + 4332) = v4;
      }
    }
  }
}

void DD_Proc_GLON_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v125 = *MEMORY[0x29EDCA608];
  v8 = a2 + 20;
  v7 = *(a2 + 20);
  if ((v7 & 0x80000000) != 0)
  {
    if (g_Logging_Cfg >= 5)
    {
      v17 = *(a2 + 63);

      EvLog_d("DD_Proc_GLON_Data:  GLON MSB Zero test fail", v17);
    }
  }

  else
  {
    v10 = a4;
    v12 = *(a2 + 62) + 7;
    v13 = *(a6 + 17424 + 4 * v12);
    v14 = v13 - 1;
    v15 = v7 >> 27;
    *(a2 + 63) = v7 >> 27;
    if (!(v7 >> 27))
    {
      goto LABEL_3;
    }

    if (*(a4 + 76) >= 7)
    {
      v18 = *(a6 + 8972);
      if ((v18 - 2) < 5 || (v18 - 1) <= 5 && *(a4 + 80) == 1)
      {
        v19 = (*(a2 + 64) % 30);
        v20 = ((*(a2 + 64) % 30 + (((*(a2 + 64) % 30) & 0x80u) >> 7)) << 24) >> 25;
        if ((v19 + 1) < 3)
        {
          v20 = 15;
        }

        if (v20 != v7 >> 27 && !*a3 && (*(*(a6 + 64) + *(a2 + 8)) & 1) == 0 && ((v20 - 2) > 3u || v15 + 1 != v20))
        {
          v117 = a5;
          EvCrt_nd("DD_Proc_GLON_Data:  Decoded Str No error", 3, a3, v7 >> 27, v20, v19);
          v10 = a4;
          a5 = v117;
          *(a2 + 63) = 0;
          goto LABEL_3;
        }
      }
    }

    if (v15 == 2)
    {
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v15 == 3)
    {
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v15 < 5 || ((v7 >> 27) & 1) == 0)
      {
        goto LABEL_3;
      }

      if ((*(a2 + 30) & 8) == 0)
      {
LABEL_36:
        if (v13 != 2139062143)
        {
          *(a1 + v12 + 4770) = 0;
          if ((*(*(a6 + 11912) + v14) & 1) == 0 && *(*(a6 + 17184) + v14) == 1)
          {
            v118 = a5;
            memset(v120, 0, sizeof(v120));
            v121 = 0;
            v122 = 0;
            GLON_AlmBin2Int(a6 + 36 * v14 + 16248, v120);
            if (BYTE6(v121) == 1)
            {
              *(*(a6 + 11912) + v14) = 1;
              EvLog_v("DD_Proc_GLON_Data:  Health U->H Imm:  Slot %d  FrqId %d", v13, *(a2 + 63));
              *(*(a6 + 11920) + 20 * v14 + 4) = 1;
            }

            else if (g_Logging_Cfg >= 6)
            {
              EvLog_v("DD_Proc_GLON_Data:  Health U->U Imm:  Slot %d  FrqId %d", v13, *(a2 + 63));
            }

            a5 = v118;
            v10 = a4;
          }
        }

LABEL_3:
        v16 = *(a2 + 63);
        if ((v16 - 1) > 4)
        {
          if ((v16 - 6) <= 9)
          {
            if (v16)
            {
              v29 = (a1 + 6069);
              v30 = 14;
              do
              {
                v31 = *v29;
                if (v31 != v16 && v31 != 0)
                {
                  *v29 = 0;
                }

                if (*(v29 - 1))
                {
                  v33 = v16 - 1 == *(v29 - 1);
                }

                else
                {
                  v33 = 1;
                }

                if (!v33)
                {
                  *(v29 - 1) = 0;
                }

                v29 += 2;
                --v30;
              }

              while (v30);
            }

            else
            {
              v23 = (a1 + 6069);
              v24 = 14;
              do
              {
                v25 = *(v23 - 1);
                if (v25 != v16 && v25 != 0)
                {
                  *(v23 - 1) = 0;
                }

                *v23 = 0;
                v23 += 2;
                --v24;
              }

              while (v24);
              *(a1 + 6461) = 0;
            }
          }
        }

        else
        {
          *(a1 + 6092) = 0;
          *(a1 + 6084) = 0;
          *(a1 + 6068) = 0u;
          *(a1 + 6462) = 0;
          *(a1 + 6460) = 0;
        }

        v34 = *(a2 + 63);
        if ((v34 - 1) < 4)
        {
          if (v13 == 2139062143 || (v35 = a6 + 11928 + (v14 << 6), *(v35 + 60) == 4095) || *(*(a6 + 11912) + v14) != 1 || *(*(a6 + 17168) + v14) != 1 || *(a2 + 64) % 1800 < 30)
          {
            DD_Proc_Glon_Eph_String(a1, a2, a6, v10, a5);
          }

          else
          {
            v36 = v8;
            v37 = a5;
            v119 = v10;
            DD_Proc_Glon_Eph_Bit_Validation(v13, v34, v36, a6);
            v38 = *(v35 + 60);
            DD_Proc_Glon_Eph_String(a1, a2, a6, v119, v37);
            if (v38 == 4095)
            {
              v39 = *v37;
              *v35 = *v37;
              *(v35 + 4) = 4;
              *(*(a6 + 17200) + v14) = 1;
              if (*(a1 + v12 + 5572) >= 2u)
              {
                v40 = *(a6 + 17224);
                *v40 = 0;
                v40[1] = 0;
                v40[2] = 0;
              }

              if (v39 >= 1)
              {
                Core_Save_GLON_Eph(v13, 0, (a6 + 11928 + (v14 << 6)));
              }
            }
          }

          goto LABEL_189;
        }

        if (v34 != 5)
        {
          if (!*(a2 + 63))
          {
            EvLog_d("DD_Proc_GLON_Data:  Bad string", *(a2 + 9));
            goto LABEL_189;
          }

          if (*(v10 + 76) < 3)
          {
            goto LABEL_189;
          }

          v48 = *(a2 + 20);
          v49 = (*(a2 + 64) - 2 * ((v48 >> 27) & 0xF) + 15) / 30 % 5 + 1;
          if (((((*(a2 + 64) - 2 * ((v48 >> 27) & 0xF) + 15) / 30 % 5) + 1) & 0x100) != 0)
          {
            goto LABEL_189;
          }

          v50 = (v48 >> 27) & 0xF;
          v51 = *(a2 + 62) + 7;
          if ((v48 >> 27))
          {
            v92 = (a1 + 6068 + 2 * v51);
            if (*v92 + 1 == v50 && *(a1 + v51 + 6036) == 1)
            {
              v93 = a1 + 24 * v51;
              v94 = *(v8 + 8);
              *(v93 + 6108) = *v8;
              *(v93 + 6116) = v94;
              if (!*(a1 + 6064))
              {
                v95 = *(a2 + 64);
                if (v95 >= 1)
                {
                  *(a1 + 6064) = v95;
                }
              }

              v92[1] = v50;
              *(a1 + v51 + 6050) = v49;
              *(a1 + 2 * v51 + 6433) = *(a2 + 16);
              ++*(a1 + 6461);
              *(a1 + 4 * v51 + 6464) = *a5;
              if (!*(a1 + 2 * v51 + 6432))
              {
                ++*(a1 + 6462);
              }
            }

            else
            {
              if (g_Logging_Cfg >= 7)
              {
                if (*(a1 + v51 + 6036) == 1)
                {
                  EvLog_v("DD_Proc_Glon_Alm_String:  String numbers not consecutive, 1stStrId %d  2ndStrId %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ");
                }

                else
                {
                  EvLog_v("DD_Proc_Glon_Alm_String:  Clk1 not Ready, FrqId %d  FrmId %d  StrId %d  Clk1_Ready %d ");
                }
              }

              if (*v92)
              {
                *v92 = 0;
              }
            }

            goto LABEL_189;
          }

          if (v50 == 14 && ((*(a2 + 64) - 2 * ((v48 >> 27) & 0xF) + 15) / 30 % 5 + 1) == 5)
          {
            v52 = *(a6 + 17424 + 4 * v51);
            if (v52 == 2139062143 || (*(*(a6 + 11912) + v52 - 1) & 1) == 0)
            {
              if (g_Logging_Cfg >= 5)
              {
                EvLog_v("DD_Proc_Glon_Alm_String:  Rejected:  Clk2 String,  SlotNum %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ", v52, *(a2 + 62), 5, 14, *(a1 + 24 * v51 + 6096));
              }

              goto LABEL_189;
            }

LABEL_182:
            v99 = a1 + 24 * v51;
            v100 = *v8;
            *(v99 + 6104) = *(v8 + 8);
            *(v99 + 6096) = v100;
            if (!*(a1 + 6064))
            {
              v101 = *(a2 + 64);
              if (v101 >= 1)
              {
                *(a1 + 6064) = v101;
              }
            }

            v102 = a1 + 2 * v51;
            *(v102 + 6068) = v50;
            *(v102 + 6432) = *(a2 + 16);
            ++*(a1 + 6460);
            *(a1 + 4 * v51 + 6464) = *a5;
            goto LABEL_189;
          }

          if (((v48 >> 19) & 0x1F) - 25 >= 0xFFFFFFE8)
          {
            v51 = v51;
            goto LABEL_182;
          }

          EvCrt_v("DD_Proc_Glon_Alm_String:  Rejected:  Invalid Slot %d  FrqId %d  FrmId %d  StrId %d  Word[0]: 0x%x ");
          goto LABEL_189;
        }

        v41 = *(a2 + 24);
        v42 = *(a2 + 28);
        HIDWORD(v44) = *(a2 + 20);
        LODWORD(v44) = v41;
        v43 = v44 >> 16;
        v45 = HIWORD(HIDWORD(v44)) & 0x7FF;
        v46 = (v44 >> 16) & 0x7FFFFFFF;
        if (v43 < 0)
        {
          v43 = -v46;
        }

        if ((v41 & 0x200) != 0)
        {
          v47 = -((__PAIR64__(v41, v42) >> 20) & 0x1FFFFF);
        }

        else
        {
          v47 = (__PAIR64__(v41, v42) >> 20) & 0x3FFFFF;
        }

        if ((v45 - 1462) < 0xFFFFFA4B)
        {
          EvCrt_v("DD_Proc_Glon_Clk1_String:  Rejected:  FrqId %d  NA = %d  - Out of range [1..1461]");
          goto LABEL_189;
        }

        v53 = 0;
        v54 = (v41 >> 10) & 0x1F;
        v55 = (v42 >> 19) & 1;
        v56 = (a1 + 5664);
        v57 = 1;
        do
        {
          if (v43 == *(v56 - 2) && v47 == *v56 && v54 - 2 < *(v56 - 4))
          {
            v58 = *(v56 - 6);
            v59 = __OFSUB__(v45, v58);
            v60 = v45 - v58;
            a3 = (v60 + 1461);
            if (v60 < 0 != v59)
            {
              v60 += 1461;
            }

            if (v60 < 4)
            {
              break;
            }
          }

          v57 = v53 < 0xD;
          v56 += 7;
          ++v53;
        }

        while (v53 != 14);
        v61 = *(a2 + 62) + 7;
        v62 = a1 + 5644 + 28 * v61;
        *v62 = *a5;
        *(v62 + 4) = 0;
        *(v62 + 8) = v45;
        *(v62 + 12) = v43;
        *(v62 + 16) = v54;
        *(v62 + 20) = v47;
        *(v62 + 24) = v55;
        v63 = v57 || *(a2 + 16) == 0;
        *(a1 + v61 + 6036) = v63;
        if ((*(a6 + 17192) & 1) != 0 || !v63)
        {
          if (!v57)
          {
            goto LABEL_154;
          }

          if (*(a6 + 17192))
          {
            if (*(a6 + 17128) >= v54)
            {
              goto LABEL_133;
            }

            v74 = *(v10 + 82) - v54;
            if (v74 < 0)
            {
              v74 = v54 - *(v10 + 82);
            }

            if (v74 >= 2)
            {
LABEL_133:
              if (*(a6 + 17120) > v45)
              {
                goto LABEL_154;
              }

              v75 = *(v10 + 84) - v45;
              if (v75 < 0)
              {
                v75 = v45 - *(v10 + 84);
              }

              if (v75 > 1)
              {
LABEL_154:
                if (g_Logging_Cfg >= 7)
                {
                  EvLog_nd("DD_Proc_Glon_Clk1_String:  Rejected: ", 6, a3, *(a6 + 17128), *(a6 + 17120), v54, v45, *(v10 + 82), *(v10 + 84));
                }

                goto LABEL_189;
              }
            }
          }

          v64 = v10;
          v76 = *v62;
          *(a6 + 17124) = *(v62 + 12);
          *(a6 + 17112) = v76;
          v66 = a5;
          *(a6 + 17112) = *a5;
          *(a6 + 17116) = 4;
          v72 = 1;
          *(a6 + 17192) = 1;
          EvVrb_v("DD_Proc_Glon_Clk1_String:  New Clk1:  FrqId %d  Source %d  GPS_secs %d  TauGPS %d");
        }

        else
        {
          v64 = v10;
          v65 = *v62;
          *(a6 + 17124) = *(v62 + 12);
          *(a6 + 17112) = v65;
          v66 = a5;
          *(a6 + 17112) = *a5;
          *(a6 + 17116) = 4;
          v67 = *(a6 + 17124);
          if (v67 >= 0)
          {
            v68 = *(a6 + 17124);
          }

          else
          {
            v68 = -v67;
          }

          v69 = *(a6 + 17132);
          if (v69 >= 0)
          {
            v70 = *(a6 + 17132);
          }

          else
          {
            v70 = -v69;
          }

          v72 = v68 < 0x285 && v70 < 0x143;
          if (v72)
          {
            *(a6 + 17192) = 1;
          }

          EvVrb_v("DD_Proc_Glon_Clk1_String:  1st Clk1:  FrqId %d  Source %d  GPS_secs %d  TauGPS %d");
        }

        if (*(a6 + 17192) != 1)
        {
LABEL_189:
          v103 = 0;
          LODWORD(v104) = 0;
          v105 = *(a6 + 11912);
          v106 = p_NV;
          v107 = *(v105 + 16);
          *(p_NV + 29172) = *v105;
          *(v106 + 29188) = v107;
          v108 = 55665;
          do
          {
            v109 = *(v106 + 29168 + v103) ^ BYTE1(v108);
            v108 = 52845 * (v108 + v109) + 22719;
            v104 = (v104 + v109);
            ++v103;
          }

          while (v103 != 32);
          *(v106 + 29160) = v104;
          return;
        }

        v77 = v66;
        v78 = v64;
        v79 = *(v64 + 84);
        v80 = *(a6 + 17120);
        v81 = v79 - v80 + 1461;
        if (v79 - v80 >= -730)
        {
          v81 = v79 - v80;
        }

        if (v79 - v80 <= 729)
        {
          v82 = v81;
        }

        else
        {
          v82 = v79 - v80 - 1461;
        }

        v83 = *(v64 + 80);
        if (v82 >= 0)
        {
          v84 = v82;
        }

        else
        {
          v84 = -v82;
        }

        v85 = *(a6 + 17128);
        if (v83 == 1 && v84 >= 2)
        {
          *(v64 + 82) = *(a6 + 17128);
          *(v64 + 80) = 0;
          *(v64 + 105) = 1;
          goto LABEL_150;
        }

        v96 = *(v64 + 84);
        if (v83)
        {
          v97 = *(v64 + 82);
          if (v85 == v97)
          {
            goto LABEL_200;
          }

          if (v97 + 1 == v85 && v96 == 1461)
          {
            EvLog_nd("DD_Proc_Glon_Clk1_String:  4yrBlockNo roll-over ", 2, v73, &unk_2A13ED000, *(v64 + 82), v85);
            v78 = v64;
            *(v64 + 84) = 1;
          }

          else
          {
            EvCrt_nd("DD_Proc_Glon_Clk1_String:  WARNING:  4yrBlockNo miss-match ", 2, v73, &unk_2A13ED000, *(v64 + 82), v85);
            v78 = v64;
          }

          *(v78 + 82) = *(a6 + 17128);
          v77 = v66;
          if (*(v78 + 80))
          {
            goto LABEL_200;
          }

LABEL_150:
          if (v72)
          {
            v86 = 0;
            LODWORD(v87) = 0;
            *(a6 + 17112) = *v77;
            *(a6 + 17116) = 4;
            v88 = p_NV;
            v89 = *(a6 + 17124);
            *(p_NV + 29208) = *(a6 + 17112);
            *(v88 + 29220) = v89;
            v90 = 55665;
            do
            {
              v91 = *(v88 + 29208 + v86) ^ BYTE1(v90);
              v90 = 52845 * (v90 + v91) + 22719;
              v87 = (v87 + v91);
              ++v86;
            }

            while (v86 != 32);
            *(v88 + 29200) = v87;
          }

          goto LABEL_189;
        }

        *(v64 + 82) = v85;
        if (v96 < 1)
        {
          goto LABEL_150;
        }

        if (v96 == 1461)
        {
          if (v80 != 1)
          {
LABEL_199:
            *(v64 + 80) = 1;
LABEL_200:
            if (*(v78 + 16) == 1 && *v78)
            {
              goto LABEL_211;
            }

            *v120 = 0;
            *v124 = 0;
            v123 = 0.0;
            v110 = v77;
            v111 = v78;
            API_Get_UTC_Cor(1, v120);
            Glon_To_GPS_Time(*(v111 + 82), *(v111 + 84), *(v111 + 88), *v120, &v124[1], v124, &v123);
            DD_Submit_WeekNum(*(a2 + 62), v124[1], SLOWORD(v124[0]), v111, v123);
            v77 = v110;
            if (!*v110)
            {
              v112 = *(p_api + 48);
              if (*(v112 + 16) == 1 && *v112 >= 3)
              {
                v113 = *(v112 + 40) + 604800 * *(v112 + 32);
              }

              else
              {
                v113 = 0;
              }

              *v110 = v113;
            }

            if (*(v111 + 80))
            {
              v78 = v111;
              if (*(v111 + 16))
              {
                if (*v111)
                {
LABEL_211:
                  v114 = *(v78 + 40);
                  if (v114 > 31.0 && v114 < 604769.0)
                  {
                    v115 = v77;
                    *v120 = 0;
                    *v124 = 0;
                    v116 = v78;
                    API_Get_UTC_Cor(1, v120);
                    Glon_To_GPS_Time(*(v116 + 82), *(v116 + 84), *(v116 + 88), *v120, &v124[1], v124, &v123);
                    if (v124[0] + (v124[1] << 10) == *(v116 + 32))
                    {
                      *(v116 + 20) = *(v116 + 24);
                    }

                    else
                    {
                      EvCrt_v("DD_Proc_Glon_Clk1_String:  WARNING:  GLONASS Date Spoofing suspected, 4yrBlk %d  Day %d  Wk  %d != %d  FreqId %d", *(v116 + 82), *(v116 + 84), v124[0] + (v124[1] << 10), *(v116 + 32), *(a2 + 62));
                      *(v116 + 80) = 0;
                      *(v116 + 82) = 0;
                      *(v116 + 105) = 1;
                    }

                    v77 = v115;
                  }
                }
              }
            }

            goto LABEL_150;
          }

          v98 = -1;
        }

        else
        {
          if (v96 != 1 || v80 != 1461)
          {
            goto LABEL_199;
          }

          v98 = 1;
        }

        *(v64 + 82) = v98 + v85;
        goto LABEL_199;
      }
    }

    if (!*(a2 + 16))
    {
      ++*(a1 + v12 + 4770);
    }

    if (v13 == 2139062143)
    {
      EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot ?  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d   (Ignored, no Slot)");
    }

    else
    {
      if (!*(a2 + 16) && *(a1 + 4770 + v12) >= 2u)
      {
        v28 = *(a6 + 11912);
        if (*(v28 + v14) == 1)
        {
          *(v28 + v14) = 0;
          EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d", v13, *(a2 + 62), *(a2 + 63), 0, *(a1 + 4770 + v12));
          *(*(a6 + 11920) + 20 * v14) = 2;
        }
      }

      if (*(*(a6 + 11912) + v14) == 1)
      {
        EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d  (Waiting Confirmation)");
      }
    }
  }
}

void DD_Proc_Glon_Eph_Bit_Validation(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 - 1);
  v5 = a2 - 1;
  if (v4 <= 0x17 && v5 <= 3)
  {
    v10 = 0;
    v11 = a4 + (v4 << 6) + 11928;
    v12 = 3 * v5;
    v14 = &MaskToStrCheck[3 * v5];
    v15 = 3 * a2 - 3;
    do
    {
      v16 = *(v11 + 60);
      if (((v16 >> (v15 + v10)) & 1) == 0)
      {
        v17 = *(a3 + 4 * v10);
        v18 = v14[v10];
        v13 = v11 + 4 * v12 + 12;
        if (((*(v13 + 4 * v10) ^ v17) & v18) != 0)
        {
          EvDbg_v("DD_Proc_Glon_Eph_Bit_Validation:  Fail SV %d  St %d  Wd %d  0x%x 0x%x 0x%x", a1, a2, v10, v17, *(v13 + 4 * v10), v18);
        }

        else
        {
          *(v11 + 60) = v16 | (1 << (v12 + v10));
        }
      }

      ++v10;
    }

    while (v10 != 3);
  }
}

void DD_Proc_Glon_Eph_String(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v40[1] = *MEMORY[0x29EDCA608];
  v9 = (*(a2 + 62) + 7);
  v10 = (a1 + 4 * v9 + 4788);
  v11 = (*(a2 + 63) - 1);
  v12 = &v10[v11];
  v13 = v10[v11];
  if (v10[v11])
  {
    if (((*(a1 + 48 * (*(a2 + 62) + 7) + 12 * (*(a2 + 63) - 1) + 4844) ^ *(a2 + 20)) & MaskToStrCheck[3 * *(a2 + 63) - 3]) != 0)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = v14;
        if (v14 == 2)
        {
          break;
        }

        v16 = MaskToStrCheck[3 * *(a2 + 63) - 2 + v14];
        v17 = *(48 * (*(a2 + 62) + 7) + 12 * (*(a2 + 63) - 1) + a1 + 4848 + 4 * v14) ^ *(a2 + 24 + 4 * v14);
        ++v14;
      }

      while ((v17 & v16) == 0);
      v13 = v15 > 1;
    }
  }

  v18 = a1 + 48 * (*(a2 + 62) + 7) + 4844 + 12 * (*(a2 + 63) - 1);
  v19 = *(a2 + 20);
  *(v18 + 8) = *(a2 + 28);
  *v18 = v19;
  v20 = a1 + 5516 + 4 * v9;
  *(v20 + v11) = *(a2 + 16);
  v21 = a1 + 4 * v9;
  *(v21 + 5588) = *a5;
  if (v13)
  {
    v22 = *v12 + 1;
  }

  else
  {
    v22 = 1;
  }

  *v12 = v22;
  if (!*(a1 + 4784))
  {
    v23 = *(a2 + 64);
    if (v23 >= 1)
    {
      *(a1 + 4784) = v23;
    }
  }

  v24 = *(a2 + 63);
  if (v24 == 1)
  {
    if ((*(a1 + 48 * v9 + 4846) & 0x180) == 0)
    {
      goto LABEL_47;
    }

    *v10 = 1;
    v24 = *(a2 + 63);
  }

  if (v24 != 4)
  {
    goto LABEL_47;
  }

  v25 = *(a1 + 4 * v9 + 4791);
  if (!*(a1 + 4 * v9 + 4791))
  {
    goto LABEL_24;
  }

  v26 = (*(a1 + 48 * v9 + 4888) >> 21) & 0x1F;
  if ((v26 - 1) > 0x17)
  {
    *v10 = 0;
    EvCrt_v("DD_Proc_Glon_Eph_String:  WARNING:  FrqId %d  Illegal SlotId %d !", *(a2 + 62), v26);
    return;
  }

  v27 = a3 + 4 * (v26 - 1);
  if (*(a3 + 17424 + 4 * v9) == 2139062143 || *(v27 + 17328) == 2139062143)
  {
    if (v25 == 1 && *(v20 + 3))
    {
LABEL_24:
      v28 = (a4 + 80);
      if (*(a4 + 80))
      {
        goto LABEL_47;
      }

      goto LABEL_25;
    }

    *(v27 + 17328) = v9 - 7;
    *(a3 + 17424 + 4 * v9) = v26;
    *(a3 + 4 * v9 + 17480) = 2;
    EvLog_v("DD_Proc_Glon_Eph_String:  Set Slot Num %d for FreqId %d  (Str 4)", v26, *(v27 + 17328));
    if (*(a2 + 63) != 4)
    {
      goto LABEL_47;
    }

    v25 = v10[3];
  }

  v28 = (a4 + 80);
  v29 = *(a4 + 80);
  if (v25 > 1)
  {
    goto LABEL_31;
  }

  if ((*(a4 + 80) & 1) == 0)
  {
LABEL_25:
    if (!*(a2 + 16))
    {
      v29 = 0;
LABEL_31:
      v30 = *(a4 + 84);
      HIDWORD(v31) = *(a1 + 48 * v9 + 4884);
      LODWORD(v31) = *(a1 + 48 * v9 + 4888);
      v32 = (v31 >> 26) & 0x7FF;
      *(a4 + 84) = v32;
      if (v29)
      {
        if (v30 != v32)
        {
          *v28 = 0;
          EvCrt_nd("DD_Proc_Glon_Eph_String:  WARNING:  DayNo miss-match", 3, a3, v32, v30, *(a2 + 62));
        }
      }

      else if (*(a4 + 82) >= 1)
      {
        *v28 = 1;
        EvLog_nd("DD_Proc_Glon_Eph_String:  New DayNo ", 2, a3, v32, *(a2 + 62));
      }

      if (*v28 == 1 && (*(a4 + 16) != 1 || !*a4))
      {
        *v39 = 0;
        v40[0] = 0.0;
        v38 = 0.0;
        API_Get_UTC_Cor(1, v40);
        Glon_To_GPS_Time(*(a4 + 82), *(a4 + 84), *(a4 + 88), v40[0], &v39[1], v39, &v38);
        DD_Submit_WeekNum(*(a2 + 62), v39[1], SLOWORD(v39[0]), a4, v38);
        if (!*a5)
        {
          v33 = *(p_api + 48);
          if (*(v33 + 16) == 1 && *v33 >= 3)
          {
            v34 = *(v33 + 40) + 604800 * *(v33 + 32);
          }

          else
          {
            v34 = 0;
          }

          *a5 = v34;
        }
      }
    }
  }

LABEL_47:
  v35 = *v10;
  if (*v10 && v10[1] && v10[2] && v10[3])
  {
    v36 = 0;
    *(a1 + 5572 + v9) = v35;
    do
    {
      v37 = *(v21 + 4789 + v36);
      if (v37 < v35)
      {
        *(a1 + 5572 + v9) = v37;
        v35 = v37;
      }

      ++v36;
    }

    while (v36 != 3);
  }
}

void DD_Save_New_GLON_Alm(int a1, void *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v93 = *MEMORY[0x29EDCA608];
  v4 = a3 + 4096;
  if (a3[6461] <= 1u && !a3[6462])
  {
    return;
  }

  v5 = 0;
  memset(v88, 0, sizeof(v88));
  v89 = 0;
  v90[0] = 0;
  *(v90 + 6) = 0;
  v87[0] = 0;
  *&v6 = 0x7F7F7F7F7F7F7F7FLL;
  *(&v6 + 1) = 0x7F7F7F7F7F7F7F7FLL;
  *(v87 + 6) = 0;
  v83 = a3 + 6068;
  v91[0] = v6;
  v91[1] = v6;
  v7 = a3 + 6069;
  v92 = 0x7F7F7F7F7F7F7F7FLL;
  v8 = 2139062143;
  v91[2] = v6;
  do
  {
    v9 = *(v7 - 1);
    if ((v9 - 6) <= 8 && *v7 == v9 + 1 && a3[v5 + 6036] == 1)
    {
      if (v8 == 2139062143)
      {
        v8 = v5;
      }

      else
      {
        v8 = v8;
      }

      *(v90 + v5) = 1;
    }

    ++v5;
    v7 += 2;
  }

  while (v5 != 14);
  if (v8 == 2139062143)
  {
    if (g_Logging_Cfg >= 7)
    {
      EvLog("DD_Check_GLON_Alm:  No valid Freq Id Channels for Cross-Checking Almanacs");
    }

    goto LABEL_93;
  }

  v10 = 0;
  v11 = 0;
  *(v88 + v8) = 1;
  v12 = a3 + 6050;
  v80 = a3 + 6096;
  v77 = a3 + 4096;
  v78 = a3 + 6432;
  v76 = a3 + 6132;
  v75 = a3 + 6120;
  v13 = 1;
  v14 = &MaskToAlmCheck;
  while (v8 >= 13)
  {
    v38 = v13 - 1;
    LOBYTE(v18) = 1;
    v20 = v8;
    v15 = v8;
LABEL_42:
    if (v12[v15] != 5 || v83[2 * v15] != 14)
    {
      v39 = &v78[2 * v15];
      if (!*v39 && !v39[1])
      {
        if (v4[2365] == v18)
        {
          goto LABEL_72;
        }

        v40 = (*&v80[24 * v15] >> 19) & 0x1F;
        if ((v40 - 1) <= 0x17 && (*(a2[2148] + v40 - 1) & 1) == 0)
        {
LABEL_40:
          *(v87 + v38) = 1;
        }
      }
    }

    if (*(v87 + v38) == 1)
    {
      *(v91 + v38) = v8;
      ++v10;
    }

    if (v20 != v8)
    {
      v11 += v18;
      *(v88 + v20) = ++v13;
      v8 = v20;
      if (v11 <= v4[2365])
      {
        continue;
      }
    }

    v3 = a2;
    if (v10 >= 1)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = a3;
      v46 = a3 + 5644;
      do
      {
        if (*(v87 + v41) == 1)
        {
          v47 = *(v91 + v41);
          v48 = *&v46[28 * v47 + 8];
          if (v43)
          {
            v49 = v48 - v44 + 1461;
            if (v48 - v44 >= -730)
            {
              v49 = v48 - v44;
            }

            if (v48 - v44 <= 730)
            {
              v50 = v49;
            }

            else
            {
              v50 = v48 - v44 - 1461;
            }

            if (v50 <= 0)
            {
              v47 = v42;
            }

            else
            {
              v47 = v47;
            }

            if (v50 > 0)
            {
              v44 = v48;
            }
          }

          else
          {
            v43 = v41 + 1;
            v44 = *&v46[28 * v47 + 8];
          }
        }

        else
        {
          v47 = v42;
        }

        ++v41;
        v42 = v47;
      }

      while ((v13 + 1) - 1 != v41);
      goto LABEL_73;
    }

    goto LABEL_93;
  }

  v81 = v11;
  v82 = v10;
  v15 = v8;
  v16 = &v83[2 * v8];
  v79 = &v80[24 * v8];
  v85 = v8 - 7;
  v17 = &v76[24 * v8];
  v18 = 1;
  v19 = v8;
  v20 = v8;
  v21 = &v75[24 * v8];
  v84 = v17;
  do
  {
    v22 = v19++;
    if (*(v90 + v19) == 1 && *(v88 + v19) <= 0)
    {
      if (v12[v15] == 5 && *v16 == 14 && v12[v19] == 5 && v83[2 * v19] == 14)
      {
        if (((*&v80[24 * v19] ^ *v79) & 0x78000030) == 0)
        {
LABEL_36:
          *(v88 + v19) = v13;
          v18 = (v18 + 1);
          goto LABEL_20;
        }
      }

      else
      {
        v29 = v21;
        v30 = v14;
        v31 = v17;
        v32 = 3;
        v33 = v14;
        v34 = v21;
        while (1)
        {
          v36 = *v33++;
          v35 = v36;
          v37 = *v34;
          v34 += 4;
          if (((v37 ^ *(v31 - 9)) & v35) != 0 || ((*(v29 + 3) ^ *(v31 - 6)) & v30[3]) != 0)
          {
            break;
          }

          v31 += 4;
          v29 = v34;
          v30 = v33;
          if (!--v32)
          {
            goto LABEL_36;
          }
        }
      }

      if (v20 == v8)
      {
        v20 = v19;
      }

      else
      {
        v20 = v20;
      }

      if (g_Logging_Cfg >= 7)
      {
        v71 = v12[v15];
        v23 = v12;
        v24 = v14;
        v86 = v20;
        v25 = v8;
        v26 = v15;
        v27 = v18;
        v28 = v16;
        EvLog_v("DD_Check_GLON_Alm:  Different Almanacs, FrqId_1 %d  FrqId_2 %d  FramId %d  StrId %d ", v85, v22 - 6, v71, *v16);
        v16 = v28;
        v18 = v27;
        v15 = v26;
        v8 = v25;
        v20 = v86;
        v14 = v24;
        v12 = v23;
        v17 = v84;
      }
    }

LABEL_20:
    v21 += 24;
  }

  while (v19 != 13);
  v38 = v13 - 1;
  if (v18 < 2u)
  {
    v4 = v77;
    v11 = v81;
    v10 = v82;
    goto LABEL_42;
  }

  v4 = v77;
  v11 = v81;
  v10 = v82;
  if (v77[2365] != v18)
  {
    goto LABEL_40;
  }

LABEL_72:
  LODWORD(v47) = v8;
  v45 = a3;
  v3 = a2;
LABEL_73:
  v51 = v47;
  v52 = v12[v47];
  if (v52 == 5 && v83[2 * v47] == 14)
  {
    goto LABEL_77;
  }

  v53 = &v80[24 * v47];
  v54 = (*v53 >> 19) & 0x1F;
  if ((v54 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("DD_Validate_GLON_Alm:  Rejected:  FrqCh %d   Slot Number %d - Out of range", v47 - 7, v54);
    goto LABEL_77;
  }

  v55 = (v54 - 1);
  v56 = v3[2148];
  if (*(v56 + v55) == 1)
  {
    v57 = *&v45[28 * v51 + 5652] - *(v3 + 18 * v55 + 8128);
    v58 = v57 - 1461;
    if (v57 <= 730)
    {
      v58 = *&v45[28 * v51 + 5652] - *(v3 + 18 * v55 + 8128);
    }

    v59 = v57 >= -730 ? v58 : v57 + 1461;
    if (v59 <= 0)
    {
      if (a1 >= 1 && !v59 && (v52 != 5 || v83[2 * v51] != 14 && v55 <= 0x17))
      {
        v70 = v3 + 36 * v55 + 16248;
        if (!*v70)
        {
          *v70 = a1;
          *(v70 + 4) = 4;
          Core_Save_GLON_Alm(v54, 0, v70);
        }
      }

LABEL_77:
      if (v4[2365] == v4[2364])
      {
        goto LABEL_92;
      }

      goto LABEL_93;
    }
  }

  if (v52 != 5 || v83[2 * v51] != 14)
  {
    v60 = v3 + 36 * v55 + 16248;
    v61 = *v53;
    *(v60 + 28) = *(v53 + 2);
    *(v60 + 12) = v61;
    if (g_Logging_Cfg >= 7)
    {
      EvLog_v("DD_Save_New_GLON_Alm:  New Alm  Slot %d  FrqId %d  FramId %d  StrId %d  Suspect_Bits %d %d  Word[0] 0x%x  NA_Clk1 %d  NA_DBnmAlm  %d ", v54, v51 + 65, v12[v51], v83[2 * v51], v78[2 * v51], v78[2 * v51 + 1], *v53, *&v45[28 * v51 + 5652], *(v3 + 18 * v55 + 8128));
      v56 = v3[2148];
    }

    *(v3 + 18 * v55 + 8128) = *&v45[28 * v51 + 5652];
    *v60 = a1;
    *(v3 + 9 * v55 + 4063) = 4;
    *(v3[2144] + v55) = 1;
    *(v56 + v55) = 1;
    DD_GLON_Alm_Set_Health_Frq(v3 + 36 * v55 + 16248, v3);
    if (a1 >= 1)
    {
      Core_Save_GLON_Alm(v54, 0, (v3 + 36 * v55 + 16248));
    }
  }

LABEL_92:
  *v83 = 0;
  *(v83 + 1) = 0;
  *(v83 + 6) = 0;
  *(v83 + 2) = 0;
  v4[2366] = 0;
  *(v4 + 1182) = 0;
LABEL_93:
  v62 = 0;
  LODWORD(v63) = 0;
  v64 = v3[1489];
  v65 = p_NV;
  v66 = p_NV + 29172;
  v67 = *(v64 + 16);
  *(p_NV + 29172) = *v64;
  *(v66 + 16) = v67;
  v68 = 55665;
  do
  {
    v69 = *(v65 + 29168 + v62) ^ BYTE1(v68);
    v68 = 52845 * (v68 + v69) + 22719;
    v63 = (v63 + v69);
    ++v62;
  }

  while (v62 != 32);
  *(v65 + 29160) = v63;
}

void DD_Save_New_GLON_Eph(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v105 = *MEMORY[0x29EDCA608];
  if (a1 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (a1 + 10800) / 0x15180u;
    v12 = (a1 + 10800) % 0x15180u;
    v13 = a4 + 11928;
    v14 = ((22967 * (v11 - 5839)) >> 25) + ((22967 * (v11 - 5839)) >> 31);
    v15 = v11 - 1461 * v14 - 5838;
    v16 = v14 + 1;
    do
    {
      if (*(*(v6 + 17168) + v9) == 1)
      {
        v17 = *(v6 + 17200);
        if ((*(v17 + v9) & 1) == 0)
        {
          v18 = v8 == 0;
          if (v8)
          {
            v19 = v7;
          }

          else
          {
            v19 = v15;
          }

          if (!v8)
          {
            v8 = v16;
          }

          HIDWORD(v21) = *(v13 + 52);
          LODWORD(v21) = *(v13 + 56);
          v20 = v21 >> 26;
          if (v18)
          {
            v10 = v12;
          }

          v22 = v20 & 0x7FF;
          v23 = *(v13 + 26) & 0x7F;
          *(v17 + v9) = 1;
          if (v22 - v19 <= 730)
          {
            v7 = v19;
          }

          else
          {
            v7 = v19 + 1461;
          }

          *v13 = a1 - ((v10 - 900 * v23 + 86400 * (v7 - v22)) & ~((v10 - 900 * v23 + 86400 * (v7 - v22)) >> 31));
          *(v13 + 4) = 4;
          Core_Save_GLON_Eph((v9 + 1), 0, v13);
        }
      }

      ++v9;
      v13 += 64;
    }

    while (v9 != 24);
  }

  v24 = 0;
  v25 = a5 + 5572;
  v93 = a5 + 4844;
  v92 = a5 + 5516;
  v26 = v6 + 17424;
  v94 = v6 + 17328;
  v86 = a5 + 4788;
  v91 = v6 + 17480;
  v83 = ((2 * (a3 / 1800)) | 1);
  v82 = v6 + 11928;
  v27 = a5 + 5517;
  v85 = vdupq_n_s64(0x3FDF400000000000uLL);
  v84 = vdupq_n_s64(0x3F4F400000000000uLL);
  v90 = v6 + 17424;
  do
  {
    if (!*(v25 + v24))
    {
      goto LABEL_62;
    }

    memset(&v99[1], 0, 46);
    v99[0] = 0u;
    v28 = (v93 + 48 * v24);
    v29 = v28[1];
    *(v99 + 12) = *v28;
    v96 = 0u;
    memset(v97, 0, 30);
    v95 = 0u;
    *(&v99[1] + 12) = v29;
    *(&v99[2] + 12) = v28[2];
    GLON_EphBin2Int(v99, &v95, *(&v99[2] + 12));
    v30 = 0;
    v31 = SBYTE12(v95);
    v32 = BYTE12(v95);
    v33 = (v92 + 4 * v24);
    LOBYTE(v34) = *v33;
    do
    {
      if (*(v27 + v30) <= v34)
      {
        v34 = v34;
      }

      else
      {
        v34 = *(v27 + v30);
      }

      ++v30;
    }

    while (v30 != 3);
    v35 = SBYTE12(v95) - 1;
    if (*(v25 + v24) >= 2u)
    {
      v36 = *(v26 + 4 * v24);
LABEL_26:
      v37 = (v26 + 4 * v24);
      v38 = v35;
      v39 = BYTE12(v95);
      if (v36 != v31)
      {
LABEL_27:
        v40 = SBYTE12(v95) - 1;
        v41 = v25;
        v42 = v6;
        v43 = BYTE12(v95);
        EvLog_v("DD_Save_New_GLON_Eph:  Set Slot Num %d for FreqId %d  (Eph)", SBYTE12(v95), *(v94 + 4 * v38));
        v32 = v43;
        v6 = v42;
        v25 = v41;
        v35 = v40;
        v39 = BYTE12(v95);
      }

      *(v94 + 4 * v38) = v24 - 7;
      *v37 = v31;
      v26 = v90;
      goto LABEL_29;
    }

    if ((*(*(v6 + 17176) + v35) & 1) != 0 || (*(*(v6 + 17168) + v35) & 1) != 0 || v34)
    {
      if ((*(v26 + 4 * v24) == 2139062143 || *(v94 + 4 * v35) == 2139062143) && (*(v86 + 4 * v24 + 3) > 1u || !v33[3]))
      {
        *(v94 + 4 * v35) = v24 - 7;
        *(v26 + 4 * v24) = v31;
        *(v91 + 4 * v24) = 2;
        EvLog_v("DD_Save_New_GLON_Eph:  Set Slot Num %d for FreqId %d  (Str 4)", v31, *(v94 + 4 * v35));
      }

      goto LABEL_61;
    }

    v37 = (v26 + 4 * v24);
    v36 = *v37;
    v38 = SBYTE12(v95) - 1;
    if (*v37 == 2139062143)
    {
      goto LABEL_27;
    }

    v39 = BYTE12(v95);
    v26 = v90;
    if (*(v94 + 4 * v35) == 2139062143)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(v91 + 4 * v24) = 2;
    if ((v39 - 25) <= 0xE7u)
    {
      if (g_Logging_Cfg >= 5)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Invalid Out-of-range GLON Slot Num %d");
      }

      goto LABEL_61;
    }

    if (a2 < 4 || (*(v6 + 8972) - 1) > 5 || v83 == BYTE13(v95))
    {
      v44 = v39 - 1;
      v45.i64[0] = SHIDWORD(v96);
      v45.i64[1] = v97[0];
      v103 = vmulq_f64(vcvtq_f64_s64(v45), v85);
      v104 = v97[1] * 0.48828125;
      v46 = 0.0;
      v47 = 2;
      do
      {
        v46 = v46 + v103.f64[v47] * v103.f64[v47];
        v48 = v47-- + 1;
      }

      while (v48 > 1);
      v49 = sqrt(v46);
      if (v49 < 25200000.0 || v49 > 25800000.0)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Pos check, R %d  Mag_Pos %g");
      }

      else
      {
        v50.i64[0] = v97[2];
        v50.i64[1] = v97[3];
        v101 = vmulq_f64(vcvtq_f64_s64(v50), v84);
        v102 = v97[4] * 0.000953674316;
        v51 = 0.0;
        v52 = 2;
        do
        {
          v51 = v51 + v101.f64[v52] * v101.f64[v52];
          v53 = v52-- + 1;
        }

        while (v53 > 1);
        v54 = sqrt(v51);
        if (v54 >= 2720.0 && v54 <= 4000.0)
        {
          v100[0] = SLOBYTE(v97[5]) * 0.000000931322575;
          v100[1] = SBYTE1(v97[5]) * 0.000000931322575;
          v100[2] = SBYTE2(v97[5]) * 0.000000931322575;
          v55 = 0.0;
          v56 = 2;
          do
          {
            v55 = v55 + v100[v56] * v100[v56];
            v57 = v56-- + 1;
          }

          while (v57 > 1);
          v58 = sqrt(v55);
          v81 = v32;
          if (v58 > 0.000009)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Acc check, R %d  Mag_Acc %g", v39, v58);
            v59 = 0;
            *(*(v6 + 17224) + v44) = 1;
            goto LABEL_90;
          }

          if (v96 - 1462 <= 0xFFFFFA4A)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Eph Nt check, R %d  Nt %d", v39, v96);
            v59 = 0;
            goto LABEL_90;
          }

          v60 = (v39 - 1);
          if (*(*(v6 + 17168) + v44) == 1)
          {
            v61 = v82 + (v60 << 6);
            memset(v98, 0, 62);
            GLON_EphBin2Int(v61, v98, 0);
            if (BYTE13(v95) == BYTE13(v98[0]) || g_Logging_Cfg < 7)
            {
              if (BYTE13(v95) == BYTE13(v98[0]))
              {
                v62 = *(v61 + 60);
                if (v62 == 4095)
                {
                  v59 = 1;
                  goto LABEL_90;
                }

                if (g_Logging_Cfg >= 5)
                {
                  EvLog_v("DD_Validate_GLON_Eph:  (Adopted) Eph Binary difference with same tb SV %d tb %d checked 0x%x", SBYTE12(v95), BYTE13(v95), v62);
                }

                v63 = 1;
LABEL_75:
                v64 = v82 + (v35 << 6);
                v65 = *v28;
                v66 = v28[1];
                *(v64 + 44) = v28[2];
                *(v64 + 28) = v66;
                *(v64 + 12) = v65;
                *v64 = a1;
                *(v64 + 4) = 4;
                if (*(v25 + v24) <= 1u)
                {
                  v67 = 0;
                }

                else
                {
                  v67 = 4095;
                }

                *(v64 + 60) = v67;
                *(*(v6 + 17168) + v35) = 1;
                *(*(v6 + 17216) + v35) = 0;
                *(v64 + 8) = v24 - 7;
                v68 = *(v6 + 11912);
                v69 = BYTE5(v96);
                if (*(v68 + v35) == 1)
                {
                  v70 = "DD_GLON_Alm_Set_Health_Frq:  Health H->U Eph:  Slot %d  FrqId %d ";
                  if ((BYTE5(v96) & 1) == 0)
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  if (BYTE5(v96))
                  {
                    v69 = 1;
LABEL_85:
                    *(v68 + v35) = v69 ^ 1;
                    if (v69)
                    {
                      v71 = 2;
                    }

                    else
                    {
                      v71 = 1;
                    }

                    *(*(v6 + 11920) + 20 * v35) = v71;
                    if (a1 < 1)
                    {
                      goto LABEL_61;
                    }

                    v59 = v63;
                    *(*(v6 + 17200) + v35) = 1;
                    Core_Save_GLON_Eph(v81, 0, v64);
LABEL_90:
                    if (a1 >= 1)
                    {
                      if (v59)
                      {
                        v72 = v82 + (v35 << 6);
                        if (!*v72)
                        {
                          *v72 = a1;
                          *(v72 + 4) = 4;
                          *(*(v6 + 17200) + v35) = 1;
                          Core_Save_GLON_Eph(v81, 0, v72);
                        }
                      }
                    }

                    goto LABEL_61;
                  }

                  v70 = "DD_GLON_Alm_Set_Health_Frq:  Health U->H Eph:  Slot %d  FrqId %d ";
                }

                EvLog_v(v70, v31);
                v64 = v82 + (v35 << 6);
                v69 = BYTE5(v96);
                v68 = *(v6 + 11912);
                goto LABEL_85;
              }
            }

            else
            {
              EvLog_v("DD_Validate_GLON_Eph:  New Eph SV %d  new Tb %d  existing Tb%d", SBYTE12(v95), BYTE13(v95), BYTE13(v98[0]));
            }
          }

          v63 = 0;
          goto LABEL_75;
        }

        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Vel check, R %d  Vel_Mag %g");
      }

      *(*(v6 + 17224) + v44) = 1;
    }

    else
    {
      EvCrt_v("DD_Validate_GLON_Eph:  FAIL:  Tb check, R %d  est %d  dec %d");
    }

LABEL_61:
    *(v25 + v24) = 0;
LABEL_62:
    ++v24;
    v27 += 4;
  }

  while (v24 != 14);
  v73 = 0;
  LODWORD(v74) = 0;
  v75 = *(v6 + 11912);
  v76 = p_NV;
  v77 = p_NV + 29172;
  v78 = *(v75 + 16);
  *(p_NV + 29172) = *v75;
  *(v77 + 16) = v78;
  v79 = 55665;
  do
  {
    v80 = *(v76 + 29168 + v73) ^ BYTE1(v79);
    v79 = 52845 * (v79 + v80) + 22719;
    v74 = (v74 + v80);
    ++v73;
  }

  while (v73 != 32);
  *(v76 + 29160) = v74;
}

void DD_Check_Age_GLON_Data(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 80) == 1 && *(a1 + 76) >= 2)
  {
    v5 = 0;
    v6 = a2 + 2154;
    v7 = (a2 + 2032);
    v8 = a2 + 1498;
    v9 = 29248;
    do
    {
      v10 = a2[2146];
      if (*(v10 + v5) == 1)
      {
        HIDWORD(v11) = *(v8 - 1);
        LODWORD(v11) = *v8;
        LODWORD(v12) = *(a1 + 88) - 900 * (*(v8 - 15) & 0x7F);
        v13 = (v11 >> 26) & 0x7FF;
        if (((v11 >> 26) & 0x7FF) != 0)
        {
          LODWORD(v12) = v12 + 86400 * (*(a1 + 84) - v13);
          if (v12 > 63115200)
          {
            LODWORD(v12) = v12 - 126230400;
          }

          if (v12 >= -63115200)
          {
            v12 = v12;
          }

          else
          {
            v12 = (v12 + 126230400);
          }
        }

        else
        {
          if (v12 < -43200)
          {
            LODWORD(v12) = v12 + 86400;
          }

          if (v12 <= 43199)
          {
            v12 = v12;
          }

          else
          {
            v12 = (v12 - 86400);
          }
        }

        *(v6 + v5) = v12;
        if (v12 >= 0)
        {
          v14 = v12;
        }

        else
        {
          v14 = -v12;
        }

        if (v14 >= 0x26AD)
        {
          v15 = v8 - 14;
          *(v10 + v5) = 0;
          *(a2[2152] + v5) = 0;
          *(v15 + 46) = 0u;
          v15[1] = 0u;
          v15[2] = 0u;
          *v15 = 0u;
          *(v6 + v5) = 0;
          *(a2[2145] + v5) = 1;
          *(a2[2153] + v5) = 0;
          if (g_Logging_Cfg >= 5)
          {
            EvLog_nd("DD_Check_Age_GLON_Data:  Delete ", 2, a3, v5 + 1, v12);
          }
        }
      }

      v16 = a2[2148];
      if (*(v16 + v5) == 1)
      {
        v17 = *(a1 + 84) - *v7;
        v18 = v17 + 1461;
        if (v17 >= -730)
        {
          v18 = *(a1 + 84) - *v7;
        }

        if (v17 <= 729)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17 - 1461;
        }

        if ((v19 - 183) <= 0xFFFFFF3A)
        {
          *(a2[2144] + v5) = 0;
          *(v16 + v5) = 0;
          *(v7 + 6) = 0;
          *(v7 - 4) = 0u;
          *(v7 + 4) = 0u;
          *(a2[2152] + v5) = 0;
          *(a2[2153] + v5) = 0;
          if ((v5 + 1) - 1 <= 0x17)
          {
            v20 = p_NV + v9;
            *(v20 - 8) = 0xFFFFFFFFLL;
            *v20 = 0uLL;
            *(v20 + 16) = 0uLL;
            *(v20 + 32) = 0;
          }

          if (v19 <= 182)
          {
            EvLog_v("DD_Check_Age_GLON_Data:  Future Almanac deleted,  SV %d age %d");
          }

          else
          {
            EvLog_v("DD_Check_Age_GLON_Data:  Old Almanac deleted,  SV %d age %d");
          }
        }
      }

      ++v5;
      v9 += 48;
      v7 += 18;
      v8 += 16;
    }

    while (v5 != 24);
  }
}

uint64_t DD_Check_GLON_Strings(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result >= 3 && (*(a4 + 8972) - 1) <= 5)
  {
    if ((a2 % 30 + 1) >= 3)
    {
      v4 = ((a2 % 30 + (((a2 % 30) & 0x80u) >> 7)) << 24) >> 25;
    }

    else
    {
      v4 = 15;
    }

    v5 = *(a3 + 6064);
    v6 = a2 - v5;
    if (a2 < v5)
    {
      v6 = a2 - v5 + 86400;
    }

    v7 = v6 > 24;
    v8 = v5 >= 1 && v7;
    if (a2 < 1)
    {
      v8 = 0;
    }

    if (v4 == 2 && result != 3 || v8)
    {
      *(a3 + 6064) = 0u;
      *(a3 + 6080) = 0u;
    }

    if (a2 >= 1 && (v11 = *(a3 + 4784), v11 >= 1) && (v11 + 10) / 0x708u != (a2 + 10) / 0x708u || (a2 % 1800 >= 1771 ? (v12 = v4 == 10) : (v12 = 0), v12))
    {
      *(a3 + 5578) = 0;
      *(a3 + 5572) = 0;
      *(a3 + 4784) = 0u;
      *(a3 + 4800) = 0u;
      *(a3 + 4816) = 0u;
      *(a3 + 4828) = 0u;
    }
  }

  return result;
}

void DD_LS_Delete_EphAlm_Str(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 1 && *(a2 + 16) == 1 && *a2 >= 1)
  {
    v4 = *(a2 + 40);
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }

    if ((a1 - 604800 * *(a2 + 32) - v7) >= 0xFFFFF1F1)
    {
      v8 = 0;
      v9 = a3 + 5588;
      v10 = a3 + 4788;
      v11 = a3 + 5572;
      v12 = a3 + 6464;
      v13 = a3 + 6096;
      v14 = a3 + 6068;
      v15 = (a3 + 6461);
      do
      {
        v16 = *(v9 + 4 * v8);
        if (v16 >= 1 && v16 <= a1)
        {
          *(v10 + 4 * v8) = 0;
          *(v11 + v8) = 0;
          *(v9 + 4 * v8) = 0;
          EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Eph , Frq %2d ", v8 + 1);
        }

        v18 = *(v12 + 4 * v8);
        if (v18 >= 1 && v18 <= a1)
        {
          v20 = (v13 + 24 * v8);
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
          *(v14 + 2 * v8) = 0;
          *v15 = 0;
          *(v12 + 4 * v8++) = 0;
          EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Alm , Frq %2d ", v8);
        }

        else
        {
          ++v8;
        }
      }

      while (v8 != 14);
    }
  }
}

void *DD_Delete_Bad_GLON_Data(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = a2 + 2166;
  v4 = a1 + 4788;
  v5 = a1 + 4844;
  v6 = a1 + 5516;
  v7 = a1 + 5572;
  v8 = a2 + 1491;
  v9 = 30400;
  result = &unk_2A13ED000;
  do
  {
    v11 = a2[2145];
    if (*(v11 + v2) == 1)
    {
      v12 = *v3 + 7;
      if (v12 <= 0xD)
      {
        *(v4 + 4 * v12) = 0;
        v13 = (v5 + 48 * v12);
        *v13 = 0uLL;
        v13[1] = 0uLL;
        v13[2] = 0uLL;
        *(v6 + 4 * v12) = 0;
        *(v7 + v12) = 0;
        v11 = a2[2145];
      }

      *(v11 + v2) = 0;
      *(a2[2143] + v2) = 0;
      *(a2[2146] + v2) = 0;
      *(v8 + 46) = 0uLL;
      v8[1] = 0uLL;
      v8[2] = 0uLL;
      *v8 = 0uLL;
      *(v3 - 24) = 0;
      *(a2[2153] + v2) = 0;
      *(a2[2150] + v2) = 1;
      v14 = (p_NV + v9);
      *(v14 - 1) = 0xFFFFFFFFLL;
      *v14 = 0uLL;
      v14[1] = 0uLL;
      v14[2] = 0uLL;
      *(v14 + 46) = 0uLL;
    }

    ++v2;
    v9 += 72;
    v8 += 4;
    ++v3;
  }

  while (v2 != 24);
  return result;
}

uint64_t DD_Delete_Inhib_GLON_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = a3 + 2166;
  v5 = a2 + 4788;
  v6 = a2 + 4844;
  v7 = a2 + 5516;
  v8 = a2 + 5572;
  v9 = a3 + 1491;
  v10 = a3 + 1683;
  v11 = a3 + 2031;
  v12 = 29248;
  v13 = 30400;
  do
  {
    if (*(result + v3) == 1)
    {
      v14 = (*v4 + 7);
      if (v14 <= 0xD && v3 + 1 == *(a3 + v14 + 4356))
      {
        *(v5 + 4 * v14) = 0;
        v15 = (v6 + 48 * v14);
        *v15 = 0uLL;
        v15[1] = 0uLL;
        v15[2] = 0uLL;
        *(v7 + 4 * v14) = 0;
        *(v8 + v14) = 0;
      }

      *(a3[2145] + v3) = 0;
      *(a3[2143] + v3) = 0;
      *(a3[2146] + v3) = 0;
      *(v9 + 46) = 0uLL;
      v9[1] = 0uLL;
      v9[2] = 0uLL;
      *v9 = 0uLL;
      *(a3[2147] + v3) = 0;
      *(v4 - 24) = 0;
      *(v10 + 111) = 0;
      *(v10 + 5) = 0uLL;
      *(v10 + 6) = 0uLL;
      *(v10 + 3) = 0uLL;
      *(v10 + 4) = 0uLL;
      *(v10 + 1) = 0uLL;
      *(v10 + 2) = 0uLL;
      *v10 = 0uLL;
      *(a3[2153] + v3) = 0;
      *(a3[2150] + v3) = 1;
      v16 = p_NV;
      v17 = (p_NV + v13);
      *v17 = 0uLL;
      v17[1] = 0uLL;
      v17[2] = 0uLL;
      *(v17 + 46) = 0uLL;
      *(a3[2144] + v3) = 0;
      *(v17 - 1) = 0xFFFFFFFFLL;
      *(a3[2148] + v3) = 0;
      *(v11 + 8) = 0;
      *v11 = 0uLL;
      *(v11 + 1) = 0uLL;
      v18 = v16 + v12;
      *(v18 - 8) = 0xFFFFFFFFLL;
      *v18 = 0uLL;
      *(v18 + 16) = 0uLL;
      *(v18 + 32) = 0;
    }

    ++v3;
    v12 += 48;
    v13 += 72;
    v11 = (v11 + 36);
    v10 = (v10 + 116);
    v9 += 4;
    ++v4;
  }

  while (v3 != 24);
  return result;
}

void DD_Submit_WeekNum(int a1, __int16 a2, uint64_t a3, double *a4, double a5)
{
  if ((a4[2] & 1) == 0)
  {
    if (*a4)
    {
      v8 = a5;
      v9 = a4[5];
      v10 = v8 - v9;
      v11 = v10 + 604800;
      if (v10 <= -302401)
      {
        v12 = a3 - 1;
      }

      else
      {
        v12 = a3;
      }

      if (v10 > -302401)
      {
        v11 = v8 - v9;
      }

      if (v10 >= 302400)
      {
        v13 = a3 + 1;
      }

      else
      {
        v13 = v12;
      }

      if (v10 >= 302400)
      {
        v14 = v10 - 604800;
      }

      else
      {
        v14 = v11;
      }

      if ((v14 + 129599) >= 0x2A2FF)
      {
        v15 = ((v14 + 43200) / 86400);
        v16 = v9 + (86400 * v15);
        a4[5] = v16;
        EvLog_nd("DD_Submit_WeekNum(R): Day number set ", 3, a3, v15, v16, v8);
      }

      v17 = v13 + (a2 << 10);
    }

    else
    {
      a4[5] = a5;
      v18 = *(a4 + 19);
      if (!v18 || (v18 >= 3 ? (v19 = 3) : (v19 = *(a4 + 19)), *a4 = v19, v18 <= 2))
      {
        if (a5 < 86370.0 || a5 >= 518370.0)
        {
          v17 = *(a4 + 16);
LABEL_26:
          if (v17)
          {
            EvLog_nd("DD_Submit_WeekNum(R): GPS Week No set from Glon SV", 4, a3, a1, v17, a4[5], *a4);
          }

          return;
        }
      }

      v17 = a3 + (a2 << 10);
    }

    *(a4 + 16) = v17;
    *(a4 + 16) = 1;
    *(a4 + 5) = *(a4 + 6);
    goto LABEL_26;
  }
}

uint64_t Inc_CA_Chips(uint64_t result, int *a2, int *a3)
{
  v3 = *a2 + result;
  for (*a2 = v3; *a2 > 1534499; v3 = *a2)
  {
    *a2 = v3 - 1534500;
    if (*a3 <= 403198)
    {
      v4 = 1;
    }

    else
    {
      v4 = -403199;
    }

    *a3 += v4;
  }

  if (v3 < 0)
  {
    do
    {
      *a2 = v3 + 1534500;
      if (*a3 < 1)
      {
        v5 = 403199;
      }

      else
      {
        v5 = -1;
      }

      *a3 += v5;
      v3 = *a2;
    }

    while (*a2 < 0);
  }

  return result;
}

uint64_t Nav_Kalman_Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, _BYTE *a12, uint64_t a13)
{
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v328 = v15;
  v329 = v14;
  v338 = v16;
  v340 = v17;
  v345 = v18;
  v326 = v19;
  v21 = v20;
  v22 = v13;
  v397 = *MEMORY[0x29EDCA608];
  v23 = *(v13 + 136);
  v334 = v20 + 19918;
  *(v13 + 177) = 0;
  v325 = v13 + 177;
  v24 = v20 + 14995;
  v344 = (v13 + 136);
  *(v13 + 181) = 0;
  if (v23 == 1)
  {
    *a12 = 0;
  }

  else if (*a12 == 1)
  {
    *a12 = 0;
    *(v13 + 136) = 1;
    *(v13 + 140) = 77;
  }

  v395 = 0u;
  memset(v396, 0, 28);
  v393 = 0u;
  v394 = 0u;
  v391 = 0u;
  v392 = 0u;
  v389 = 0u;
  v390 = 0u;
  v387 = 0u;
  v388 = 0u;
  v386 = 0u;
  bzero(v385, 0x50BuLL);
  memset(&v384[156], 0, 52);
  memset(&v384[120], 0, 135);
  memset(&v384[76], 0, 171);
  memset(v384, 0, 289);
  bzero(v383, 0x120BuLL);
  bzero(v382, 0x3A38uLL);
  bzero(v381, 0x3A38uLL);
  bzero(v380, 0x5B68uLL);
  memset(v379, 0, sizeof(v379));
  LOWORD(v378) = 0;
  BYTE2(v378) = 0;
  memset(v377, 0, 56);
  LOWORD(v376) = 0;
  BYTE2(v376) = 0;
  memset(v375, 0, 56);
  BYTE2(v374) = 0;
  LOWORD(v374) = 0;
  memset(v373, 0, 56);
  BYTE2(v372) = 0;
  LOWORD(v372) = 0;
  memset(v371, 0, sizeof(v371));
  BYTE2(v370) = 0;
  LOWORD(v370) = 0;
  memset(v369, 0, 56);
  BYTE2(v368) = 0;
  LOWORD(v368) = 0;
  memset(&v367[15], 0, 104);
  memset(&v367[14] + 4, 0, 12);
  memset(&v367[10], 0, 53);
  memset(&v367[9] + 4, 0, 12);
  memset(&v367[5], 0, 53);
  memset(&v367[4] + 4, 0, 12);
  memset(v367, 0, 61);
  BYTE2(v366) = 0;
  LOWORD(v366) = 0;
  memset(v365, 0, 56);
  BYTE2(v364) = 0;
  LOWORD(v364) = 0;
  memset(&v363[7], 0, 56);
  memset(&v363[6] + 4, 0, 12);
  memset(&v363[2], 0, 61);
  v363[0] = 0uLL;
  *(&v363[1] + 5) = 0;
  *&v363[1] = 0;
  memset(v362, 0, 36);
  BYTE2(v361) = 0;
  LOWORD(v361) = 0;
  memset(&v360[5], 0, 112);
  memset(&v360[4] + 4, 0, 12);
  memset(v360, 0, 53);
  BYTE2(v359) = 0;
  LOWORD(v359) = 0;
  memset(&v358[31], 0, 105);
  memset(v358, 0, 495);
  memset(&v357[2], 0, 229);
  memset(v350, 0, sizeof(v350));
  memset(&__src[3984], 0, 33);
  memset(&v384[121], 0, 131);
  *(&v378 + 1) = 0;
  *(&v378 + 3) = 0;
  *(&v376 + 1) = 0;
  *(&v376 + 3) = 0;
  *(&v374 + 1) = 0;
  *(&v374 + 3) = 0;
  *(&v372 + 1) = 0;
  *(&v372 + 3) = 0;
  *(&v370 + 1) = 0;
  *(&v370 + 3) = 0;
  *(&v368 + 1) = 0;
  *(&v368 + 3) = 0;
  *(&v366 + 1) = 0;
  *(&v366 + 3) = 0;
  *(&v364 + 1) = 0;
  *(&v364 + 3) = 0;
  *(&v361 + 1) = 0;
  *(&v361 + 3) = 0;
  *(&v359 + 1) = 0;
  *(&v359 + 3) = 0;
  memset(v357, 0, 27);
  v356 = 0u;
  v355 = 0u;
  v354 = 0u;
  v386 = 0uLL;
  DWORD2(v387) = 0;
  *&v387 = 0;
  v388 = 0u;
  v389 = 0u;
  v390 = 0u;
  v391 = 0u;
  v392 = 0u;
  v393 = 0u;
  v394 = 0u;
  v395 = 0u;
  memset(v396, 0, 25);
  bzero(&v385[2], 0x509uLL);
  memset(&v384[157] + 3, 0, 45);
  *(&v384[76] + 2) = 0u;
  *(&v384[80] + 2) = 0u;
  *(&v384[84] + 2) = 0u;
  *(&v384[88] + 2) = 0u;
  *(&v384[92] + 2) = 0u;
  *(&v384[96] + 2) = 0u;
  *(&v384[100] + 2) = 0u;
  *(&v384[104] + 2) = 0u;
  *(&v384[108] + 2) = 0u;
  *(&v384[112] + 2) = 0u;
  *(&v384[114] + 3) = 0u;
  *(&v384[64] + 3) = 0u;
  *(&v384[68] + 1) = 0u;
  *(v384 + 3) = 0u;
  *(&v384[4] + 3) = 0u;
  *(&v384[8] + 3) = 0u;
  *(&v384[12] + 3) = 0u;
  *(&v384[16] + 3) = 0u;
  *(&v384[20] + 3) = 0u;
  *(&v384[24] + 3) = 0u;
  *(&v384[28] + 3) = 0u;
  *(&v384[32] + 3) = 0u;
  *(&v384[36] + 3) = 0u;
  *(&v384[40] + 3) = 0u;
  *(&v384[44] + 3) = 0u;
  *(&v384[48] + 3) = 0u;
  *(&v384[52] + 3) = 0u;
  *(&v384[56] + 3) = 0u;
  *(&v384[60] + 3) = 0u;
  bzero(&v383[6], 0x1205uLL);
  bzero(v382 + 3, 0x3A35uLL);
  bzero(v381 + 3, 0x3A35uLL);
  bzero(v380 + 3, 0x5B65uLL);
  *&v379[16] = 0;
  *&v379[9] = 0;
  *&v379[1] = 0;
  memset(v377 + 3, 0, 48);
  *&v377[3] = 0;
  memset(v375 + 3, 0, 48);
  *&v375[3] = 0;
  memset(v373 + 3, 0, 48);
  *&v373[3] = 0;
  memset(v371 + 3, 0, 96);
  v371[6] = 0u;
  memset(v369 + 3, 0, 53);
  memset(&v367[18] + 3, 0, 48);
  *&v367[21] = 0;
  memset(&v367[16] + 15, 0, 17);
  memset(&v367[15] + 7, 0, 17);
  memset(&v367[10] + 4, 0, 49);
  memset(&v367[5] + 4, 0, 49);
  memset(v367 + 4, 0, 57);
  memset(v365 + 3, 0, 53);
  memset(&v363[7] + 3, 0, 53);
  memset(&v363[2] + 4, 0, 57);
  *(v363 + 12) = 0;
  *(v363 + 4) = 0;
  BYTE12(v363[1]) = 0;
  *(&v363[1] + 4) = 0;
  *(v362 + 7) = 0uLL;
  *(&v362[1] + 12) = 0;
  *(&v362[1] + 7) = 0;
  memset(&v360[5] + 3, 0, 109);
  memset(v360 + 4, 0, 49);
  memset(&v358[31] + 3, 0, 102);
  *(&v358[29] + 15) = 0u;
  *(&v358[29] + 5) = 0u;
  bzero(v353, 0x314uLL);
  v352 = 0;
  v351 = 0uLL;
  bzero(__src, 0x3E3DuLL);
  v25 = v395;
  *(v21 + 8) = v394;
  *(v21 + 9) = v25;
  *(v21 + 10) = v396[0];
  *(v21 + 43) = *(v396 + 12);
  v26 = v391;
  *(v21 + 4) = v390;
  *(v21 + 5) = v26;
  v27 = v393;
  *(v21 + 6) = v392;
  *(v21 + 7) = v27;
  v28 = v387;
  *v21 = v386;
  *(v21 + 1) = v28;
  v29 = v389;
  *(v21 + 2) = v388;
  *(v21 + 3) = v29;
  *(v21 + 98) = 0;
  *(v21 + 47) = 0;
  memcpy(v21 + 198, v385, 0x50BuLL);
  v30 = *&v384[160];
  *(v21 + 1489) = *&v384[156];
  *(v21 + 1505) = v30;
  *(v21 + 1521) = *&v384[164];
  *(v21 + 1537) = v384[168];
  *(v21 + 1541) = 0;
  *(v21 + 771) = 0;
  v21[386] = 0;
  v31 = *&v384[148];
  *(v21 + 411) = *&v384[144];
  *(v21 + 415) = v31;
  *(v21 + 1675) = *(&v384[151] + 3);
  v32 = *&v384[132];
  *(v21 + 395) = *&v384[128];
  *(v21 + 399) = v32;
  v33 = *&v384[140];
  *(v21 + 403) = *&v384[136];
  *(v21 + 407) = v33;
  v34 = *&v384[124];
  *(v21 + 387) = *&v384[120];
  *(v21 + 391) = v34;
  *(v21 + 1690) = 0;
  *(v21 + 1683) = 0;
  v35 = *&v384[112];
  *(v21 + 1822) = *&v384[108];
  *(v21 + 1838) = v35;
  *(v21 + 1849) = *(&v384[114] + 3);
  v36 = *&v384[96];
  *(v21 + 1758) = *&v384[92];
  *(v21 + 1774) = v36;
  v37 = *&v384[104];
  *(v21 + 1790) = *&v384[100];
  *(v21 + 1806) = v37;
  v38 = *&v384[80];
  *(v21 + 1694) = *&v384[76];
  *(v21 + 1710) = v38;
  v39 = *&v384[88];
  *(v21 + 1726) = *&v384[84];
  *(v21 + 1742) = v39;
  memcpy(v21 + 1865, v384, 0x121uLL);
  memcpy(v21 + 2154, v383, 0x120BuLL);
  memcpy(v21 + 6773, v382, 0x3A38uLL);
  memcpy(v21 + 21677, v381, 0x3A38uLL);
  memcpy(v21 + 36581, v380, 0x5B68uLL);
  *(v21 + 59981) = *v379;
  *(v21 + 59997) = *&v379[16];
  *(v21 + 60001) = v378;
  v40 = v377[1];
  *(v21 + 60017) = v377[0];
  *(v21 + 60033) = v40;
  *(v21 + 60049) = v377[2];
  *(v21 + 60065) = *&v377[3];
  *(v21 + 60073) = v376;
  v41 = v375[0];
  v42 = v375[1];
  v43 = v375[2];
  *(v21 + 60137) = *&v375[3];
  *(v21 + 60105) = v42;
  *(v21 + 60121) = v43;
  *(v21 + 60089) = v41;
  *(v21 + 60145) = v374;
  *(v21 + 60209) = *&v373[3];
  v44 = v373[2];
  v45 = v373[0];
  *(v21 + 60177) = v373[1];
  *(v21 + 60193) = v44;
  *(v21 + 60161) = v45;
  *(v21 + 60217) = v372;
  v46 = v371[1];
  *(v21 + 60233) = v371[0];
  *(v21 + 60249) = v46;
  v47 = v371[2];
  v48 = v371[3];
  v49 = v371[6];
  v50 = v371[4];
  *(v21 + 60313) = v371[5];
  *(v21 + 60329) = v49;
  *(v21 + 60281) = v48;
  *(v21 + 60297) = v50;
  *(v21 + 60265) = v47;
  *(v21 + 60345) = v370;
  v51 = v369[0];
  v52 = v369[1];
  v53 = v369[2];
  *(v21 + 60409) = *&v369[3];
  *(v21 + 60377) = v52;
  *(v21 + 60393) = v53;
  *(v21 + 60361) = v51;
  *(v21 + 60417) = v368;
  v54 = v367[18];
  v55 = v367[19];
  v56 = v367[20];
  *(v21 + 60481) = *&v367[21];
  *(v21 + 60449) = v55;
  *(v21 + 60465) = v56;
  *(v21 + 60433) = v54;
  *(v21 + 60491) = 0;
  *(v21 + 60489) = 0;
  v24[128] = 0;
  *(v24 + 516) = 0;
  v57 = *(&v367[16] + 8);
  *(v21 + 60513) = *(&v367[17] + 1);
  *(v21 + 60497) = v57;
  v58 = v367[15];
  *(v21 + 60537) = *&v367[16];
  *(v21 + 60521) = v58;
  v59 = *(&v367[14] + 4);
  *(v21 + 60553) = HIDWORD(v367[14]);
  *(v21 + 60545) = v59;
  *(v21 + 60559) = 0;
  *(v21 + 60557) = 0;
  v24[145] = 0;
  v60 = v367[10];
  v61 = v367[11];
  v62 = v367[12];
  *(v21 + 60609) = *(&v367[12] + 13);
  *(v21 + 15145) = v61;
  *(v21 + 15149) = v62;
  *(v21 + 15141) = v60;
  v63 = *(&v367[9] + 4);
  *(v21 + 60625) = HIDWORD(v367[9]);
  *(v21 + 60617) = v63;
  *(v21 + 60631) = 0;
  *(v21 + 60629) = 0;
  v24[163] = 0;
  v64 = v367[5];
  v65 = v367[6];
  v66 = v367[7];
  *(v21 + 60681) = *(&v367[7] + 13);
  *(v21 + 15163) = v65;
  *(v21 + 15167) = v66;
  *(v21 + 15159) = v64;
  v67 = *(&v367[4] + 4);
  *(v21 + 60697) = HIDWORD(v367[4]);
  *(v21 + 60689) = v67;
  *(v21 + 60703) = 0;
  *(v21 + 60701) = 0;
  v24[181] = 0;
  v68 = v367[0];
  v69 = v367[1];
  v70 = v367[2];
  *(v21 + 60753) = *(&v367[2] + 13);
  *(v21 + 15181) = v69;
  *(v21 + 15185) = v70;
  *(v21 + 60769) = v366;
  *(v21 + 15177) = v68;
  v71 = v365[0];
  v72 = v365[1];
  v73 = v365[2];
  *(v21 + 60833) = *&v365[3];
  *(v21 + 60801) = v72;
  *(v21 + 60817) = v73;
  *(v21 + 60785) = v71;
  *(v21 + 60841) = v364;
  v74 = v363[7];
  v75 = v363[8];
  v76 = v363[9];
  *(v21 + 60905) = *&v363[10];
  *(v21 + 60873) = v75;
  *(v21 + 60889) = v76;
  *(v21 + 60857) = v74;
  v77 = *(&v363[6] + 4);
  *(v21 + 60921) = HIDWORD(v363[6]);
  *(v21 + 60913) = v77;
  *(v21 + 60927) = 0;
  *(v21 + 60925) = 0;
  v24[237] = 0;
  v78 = v363[2];
  v79 = v363[3];
  v80 = v363[4];
  *(v21 + 60977) = *(&v363[4] + 13);
  *(v21 + 15237) = v79;
  *(v21 + 15241) = v80;
  *(v21 + 15233) = v78;
  v21[15249] = 0;
  *(v21 + 60993) = 0;
  v24[255] = 0;
  v81 = v363[0];
  *(v21 + 61017) = *(v363 + 13);
  *(v21 + 15251) = v81;
  v82 = v362[0];
  v83 = v362[1];
  *(v21 + 61065) = v362[2];
  *(v21 + 61033) = v82;
  *(v21 + 61049) = v83;
  *(v21 + 61071) = 0;
  *(v21 + 61069) = 0;
  *(v24 + 1092) = 0;
  *(v21 + 61073) = v361;
  v84 = v360[6];
  *(v21 + 61089) = v360[5];
  *(v21 + 61105) = v84;
  v85 = v360[7];
  v86 = v360[8];
  v87 = v360[11];
  v88 = v360[9];
  *(v21 + 61169) = v360[10];
  *(v21 + 61185) = v87;
  *(v21 + 61137) = v86;
  *(v21 + 61153) = v88;
  *(v21 + 61121) = v85;
  v89 = *(&v360[4] + 4);
  *(v21 + 61209) = HIDWORD(v360[4]);
  *(v21 + 61201) = v89;
  *(v21 + 61215) = 0;
  *(v21 + 61213) = 0;
  v24[309] = 0;
  v90 = v360[0];
  v91 = v360[1];
  v92 = v360[2];
  *(v21 + 61265) = *(&v360[2] + 13);
  *(v21 + 15309) = v91;
  *(v21 + 15313) = v92;
  *(v21 + 15305) = v90;
  *(v21 + 61273) = v359;
  v93 = v358[32];
  *(v21 + 61289) = v358[31];
  *(v21 + 61305) = v93;
  v94 = v358[33];
  v95 = v358[34];
  *(v21 + 61378) = *(&v358[36] + 9);
  v96 = v358[36];
  *(v21 + 61353) = v358[35];
  *(v21 + 61369) = v96;
  *(v21 + 61321) = v94;
  *(v21 + 61337) = v95;
  *(v21 + 7675) = 0;
  *(v21 + 61394) = 0;
  *(v21 + 61423) = 0;
  *(v21 + 3838) = 0u;
  memcpy(v21 + 61427, v358, 0x1EFuLL);
  v97 = v357[15];
  *(v21 + 62114) = v357[14];
  *(v21 + 62130) = v97;
  *(v21 + 62143) = *(&v357[15] + 13);
  v98 = v357[11];
  *(v21 + 62050) = v357[10];
  *(v21 + 62066) = v98;
  v99 = v357[13];
  *(v21 + 62082) = v357[12];
  *(v21 + 62098) = v99;
  v100 = v357[7];
  *(v21 + 61986) = v357[6];
  *(v21 + 62002) = v100;
  v101 = v357[9];
  *(v21 + 62018) = v357[8];
  *(v21 + 62034) = v101;
  v102 = v357[3];
  *(v21 + 61922) = v357[2];
  *(v21 + 61938) = v102;
  v103 = v357[5];
  *(v21 + 61954) = v357[4];
  *(v21 + 61970) = v103;
  *(v24 + 2171) = 0;
  v104 = v357[0];
  *(v24 + 551) = v356;
  *(v24 + 555) = v104;
  *(v24 + 2231) = *(v357 + 11);
  v105 = v355;
  *(v24 + 543) = v354;
  *(v24 + 547) = v105;
  *(v24 + 2247) = 0;
  *(v21 + 62229) = 0;
  *(v21 + 62231) = 0;
  v24[563] = 0;
  *(v24 + 2256) = 0;
  *(v21 + 62237) = 0;
  *(v21 + 62239) = 0;
  v24[565] = 0;
  *(v24 + 2264) = 0;
  *(v21 + 62245) = 0;
  *(v21 + 62247) = 0;
  v24[567] = 0;
  *(v24 + 2272) = 0;
  *(v21 + 62253) = 0;
  *(v21 + 62255) = 0;
  v24[569] = 0;
  *(v24 + 2280) = 0;
  *(v21 + 62263) = 0;
  *(v21 + 62261) = 0;
  v24[571] = 0;
  *(v24 + 2288) = 0;
  *(v21 + 62271) = 0;
  *(v21 + 62269) = 0;
  v24[573] = 0;
  *(v24 + 2296) = 0;
  *(v21 + 62279) = 0;
  *(v21 + 62277) = 0;
  v24[575] = 0;
  *(v24 + 2304) = 0;
  *(v21 + 62287) = 0;
  *(v21 + 62285) = 0;
  v24[577] = 0;
  *(v24 + 2312) = 0;
  *(v21 + 62295) = 0;
  *(v21 + 62293) = 0;
  v24[579] = 0;
  *(v24 + 2320) = 0;
  *(v21 + 62303) = 0;
  *(v21 + 62301) = 0;
  v24[581] = 0;
  *(v24 + 2328) = 0;
  *(v21 + 62311) = 0;
  *(v21 + 62309) = 0;
  v24[583] = 0;
  *(v24 + 2336) = 0;
  *(v21 + 62319) = 0;
  *(v21 + 62317) = 0;
  v24[585] = 0;
  *(v24 + 2344) = 0;
  *(v21 + 62327) = 0;
  *(v21 + 62325) = 0;
  v24[587] = 0;
  *(v24 + 2352) = 0;
  *(v21 + 62335) = 0;
  *(v21 + 62333) = 0;
  v24[589] = 0;
  *(v24 + 2360) = 0;
  *(v21 + 62343) = 0;
  *(v21 + 62341) = 0;
  v24[591] = 0;
  *(v24 + 2368) = 0;
  *(v21 + 62351) = 0;
  *(v21 + 62349) = 0;
  v24[593] = 0;
  *(v24 + 2376) = 0;
  *(v21 + 62359) = 0;
  *(v21 + 62357) = 0;
  v24[595] = 0;
  *(v24 + 2384) = 0;
  *(v21 + 62367) = 0;
  *(v21 + 62365) = 0;
  v24[597] = 0;
  *(v24 + 2392) = 0;
  *(v21 + 62375) = 0;
  *(v21 + 62373) = 0;
  v24[599] = 0;
  *(v24 + 2400) = 0;
  *(v21 + 62383) = 0;
  *(v21 + 62381) = 0;
  v24[601] = 0;
  *(v24 + 2408) = 0;
  *(v21 + 62391) = 0;
  *(v21 + 62389) = 0;
  v24[603] = 0;
  *(v24 + 2416) = 0;
  *(v21 + 62399) = 0;
  *(v21 + 62397) = 0;
  v24[605] = 0;
  *(v24 + 2424) = 0;
  *(v21 + 62407) = 0;
  *(v21 + 62405) = 0;
  v24[607] = 0;
  *(v24 + 2432) = 0;
  *(v21 + 62415) = 0;
  *(v21 + 62413) = 0;
  v24[609] = 0;
  *(v24 + 2440) = 0;
  *(v21 + 62423) = 0;
  *(v21 + 62421) = 0;
  v24[611] = 0;
  *(v24 + 2448) = 0;
  *(v21 + 62431) = 0;
  *(v21 + 62429) = 0;
  v24[613] = 0;
  *(v24 + 2456) = 0;
  *(v21 + 62439) = 0;
  *(v21 + 62437) = 0;
  v24[615] = 0;
  *(v24 + 2464) = 0;
  *(v21 + 62447) = 0;
  *(v21 + 62445) = 0;
  v24[617] = 0;
  *(v24 + 2472) = 0;
  *(v21 + 62455) = 0;
  *(v21 + 62453) = 0;
  v24[619] = 0;
  *(v24 + 2480) = 0;
  *(v21 + 62463) = 0;
  *(v21 + 62461) = 0;
  v24[621] = 0;
  *(v24 + 2488) = 0;
  *(v21 + 62471) = 0;
  *(v21 + 62469) = 0;
  v24[623] = 0;
  *(v24 + 2496) = 0;
  *(v21 + 62479) = 0;
  *(v21 + 62477) = 0;
  v24[625] = 0;
  *(v24 + 2504) = 0;
  *(v21 + 62487) = 0;
  *(v21 + 62485) = 0;
  v24[627] = 0;
  *(v24 + 2512) = 0;
  *(v21 + 62495) = 0;
  *(v21 + 62493) = 0;
  *(v24 + 629) = 0;
  memcpy(v21 + 15626, v353, 0x314uLL);
  *(v21 + 15823) = 0;
  v21[15825] = 0;
  *(v21 + 15826) = v351;
  *(v21 + 63320) = v352;
  *(v21 + 63321) = 0;
  v21[15831] = 0;
  *(v24 + 1674) = 0;
  memcpy(v21 + 63330, v350, 0x142uLL);
  v24[918] = 0;
  *(v21 + 15922) = 0u;
  *(v21 + 15926) = 0u;
  *(v21 + 63720) = 0;
  *(v21 + 15914) = 0u;
  *(v21 + 15918) = 0u;
  *(v21 + 63721) = 0;
  v21[15931] = 0;
  *(v24 + 937) = 0;
  *(v24 + 3756) = 0;
  v21[15935] = 0;
  *(v21 + 63737) = 0;
  *(v24 + 941) = 0;
  *(v21 + 63816) = 0;
  *(v21 + 15946) = 0u;
  *(v21 + 15950) = 0u;
  *(v21 + 15938) = 0u;
  *(v21 + 15942) = 0u;
  v21[15955] = 0;
  *(v21 + 63817) = 0;
  *(v24 + 961) = 0;
  *(v24 + 3852) = 0;
  v106 = *&__src[3988];
  *(v21 + 63833) = *&__src[3984];
  *(v21 + 63849) = v106;
  *(v21 + 63865) = __src[3992];
  *(v24 + 1943) = 0;
  memcpy(v21 + 15967, __src, 0x3E3DuLL);
  *(v21 + 79801) = 0;
  v21[19951] = 0;
  *(v334 + 34) = xmmword_299051010;
  *(v334 + 38) = xmmword_299051020;
  *(v334 + 21) = 0;
  *(v24 + 626) = 0u;
  *(v24 + 619) = 0u;
  *(v24 + 623) = 0u;
  *(v24 + 611) = 0u;
  *(v24 + 615) = 0u;
  *(v24 + 603) = 0u;
  *(v24 + 607) = 0u;
  *(v24 + 595) = 0u;
  *(v24 + 599) = 0u;
  *(v24 + 587) = 0u;
  *(v24 + 591) = 0u;
  *(v24 + 579) = 0u;
  *(v24 + 583) = 0u;
  *(v24 + 571) = 0u;
  *(v24 + 575) = 0u;
  *(v24 + 563) = 0u;
  *(v24 + 567) = 0u;
  *(v24 + 555) = 0u;
  *(v24 + 559) = 0u;
  *(v24 + 547) = 0u;
  *(v24 + 551) = 0u;
  *(v24 + 539) = 0u;
  *(v24 + 543) = 0u;
  v336 = (v24 + 535);
  *(v24 + 535) = 0u;
  *(v24 + 2140) = NK_Sample_Track_Meas(v345, (v22 + 15608), (v22 + 15616), v21, 0.0, v107, v108);
  *(v345 + 48) = 0;
  *(v345 + 7760) = 0u;
  *(v345 + 7744) = 0u;
  *(v345 + 7728) = 0u;
  *(v345 + 7712) = 0u;
  *(v345 + 7696) = 0u;
  *(v345 + 7680) = 0u;
  *(v345 + 7664) = 0u;
  *(v345 + 7648) = 0u;
  *(v345 + 7632) = 0u;
  *(v345 + 7616) = 0u;
  *(v345 + 7600) = 0u;
  *(v345 + 7584) = 0u;
  *(v345 + 7568) = 0u;
  *(v345 + 7552) = 0u;
  *(v345 + 7536) = 0u;
  *(v345 + 7520) = 0u;
  v343 = (v21 + 378);
  memcpy(v21 + 378, (a10 + 32), 0x160uLL);
  v109 = *(a10 + 824);
  v110 = *(a10 + 840);
  v111 = *(a10 + 872);
  *(v21 + 15506) = *(a10 + 856);
  *(v21 + 15510) = v111;
  *(v21 + 15498) = v109;
  *(v21 + 15502) = v110;
  v112 = *(a10 + 888);
  v113 = *(a10 + 904);
  v114 = *(a10 + 936);
  *(v21 + 15522) = *(a10 + 920);
  *(v21 + 15526) = v114;
  *(v21 + 15514) = v112;
  *(v21 + 15518) = v113;
  *(v21 + 1864) = *(a10 + 18);
  v21[467] = *(a10 + 12);
  *(v24 + 1954) = *(a10 + 19);
  *(v24 + 1955) = *(a10 + 20);
  v115 = a11;
  v116 = *(a11 + 2072);
  v21[14988] = *(a11 + 2080);
  *(v21 + 7493) = v116;
  v117 = *(a11 + 2084);
  v21[14991] = *(a11 + 2092);
  *(v21 + 14989) = v117;
  v118 = *(a11 + 2096);
  v21[14994] = *(a11 + 2104);
  *(v21 + 7496) = v118;
  NK_Get_Ext_CTXT(v21[1], v21, v22, a11);
  v21[468] = *a11;
  v119 = *(a11 + 52);
  if (v119 == 2)
  {
    v120 = *(v22 + 20);
    v121 = v340;
    v122 = v344;
    if (v120 - 2 <= 2)
    {
      if (*(v21 + 1864) == 1)
      {
        if (v120 > 3 || v21[467] >= 2)
        {
          goto LABEL_25;
        }
      }

      else if (v120 > 3)
      {
        goto LABEL_25;
      }

      v123 = 4;
      goto LABEL_23;
    }

LABEL_18:
    if (v119 == v120)
    {
      goto LABEL_25;
    }

    *(v22 + 20) = v119;
    *(v22 + 24) = *(a11 + 56);
    goto LABEL_24;
  }

  v120 = *(v22 + 20);
  v121 = v340;
  v122 = v344;
  if ((v119 - 5) > 3 || v120 - 5 > 3)
  {
    goto LABEL_18;
  }

  if (*(v21 + 1864) != 1 || v21[467] <= 1)
  {
    if (v120 == 5)
    {
      v123 = 6;
    }

    else
    {
      if (v120 != 6)
      {
        goto LABEL_25;
      }

      v123 = 7;
    }

LABEL_23:
    *(v22 + 20) = v123;
LABEL_24:
    NK_Set_Dynamics(*(v22 + 20), v22 + 32);
  }

LABEL_25:
  v348 = v122 + 26980;
  NK_Set_XO_PN(a11, v22 + 32);
  if (!*(a10 + 56))
  {
    *(v22 + 136) = 1;
    *(v22 + 140) = 20;
  }

  if (*(v22 + 7) == 1)
  {
    *(v22 + 7) = 0;
    *(v22 + 136) = 1;
    v124 = 33;
LABEL_31:
    *(v22 + 140) = v124;
    goto LABEL_32;
  }

  if (*(v22 + 140) == 33)
  {
    v124 = 34;
    goto LABEL_31;
  }

LABEL_32:
  v125 = (v122 + 68040);
  NK_Check_TOW_Adjust(v22, v21);
  v341 = (v122 + 26984);
  v126 = *(a11 + 1668);
  v127 = *(v22 + 18);
  if (v126 * *(v122 + 26984) > (1000 * v127) && *(a10 + 360) > 0.0)
  {
    NK_Decay_Speed(v127, v126, v343, v22);
  }

  NK_Predict_State(v21, v343);
  v128 = *(a10 + 224);
  if (fabs(v128) < 1.48352986)
  {
    v129 = __sincos_stret(v128);
    v130 = 1.0 / sqrt(v129.__sinval * v129.__sinval * -0.00669437999 + 1.0);
    v131 = v129.__cosval * (*(a10 + 240) + v130 * 6378137.0);
    if (v131 < 1.0)
    {
      v131 = 1.0;
    }

    *(v122 + 68160) = v131;
    *(v122 + 68152) = *(a10 + 240) + v130 * (v130 * v130) * 6335439.33;
  }

  v132 = *v21;
  v21[379] = v21[1];
  *(v21 + 190) = *(v21 + 1);
  if ((*v125 & 1) == 0)
  {
    *v125 = 1;
    *(v122 + 68044) = v132;
  }

  NK_Get_Ext_Meas(v132, v21[4], a11, v21, v22);
  v133 = *(v24 + 236);
  v342 = (v24 + 59);
  v332 = v122 + 68040;
  v331 = v133 == 1 && v24[61] - 3 < 2;
  if (*(v22 + 20) <= 4u && (*(v22 + 241) != 1 || (v133 & 1) != 0 && *(v24 + 364) == 1 && v21[5] >= 4 && *(v24 + 71) <= 6250000.0 && *(v24 + 99) <= 250000.0))
  {
    *(v21 + 1880) = 1;
  }

  if ((*(v21 + 1864) != 1 || (*(v122 + 68168) & 1) != 0 || (v21[467] < 2 || *(v24 + 511) > 30000.0 || !*(v122 + 27000)) && ((v331 & v133) != 1 || *(v24 + 71) > 900000000.0)) && *(v21 + 25) == 1 && v21[5] >= 1)
  {
    NK_Crude_Apx_Pos(v345);
  }

  NK_Transform_State(v343);
  v330 = (v22 + 27624);
  v337 = (v22 + 14208);
  if ((NK_Init_Cov_Mat(*(v21 + 1864), *(v22 + 20), v21[5], v342, v22 + 352, v122, (v22 + 14208), v22 + 27528, *(a11 + 1720), v22 + 27624, (v21 + 15498), (v24 + 461)) & 1) == 0)
  {
    NK_Prop_Cov_Mat(*(v21 + 194), (v22 + 352));
    NK_Add_Nominal_PN(v22, v343, *(v21 + 1488), (v22 + 32), (v22 + 352), v122, (v24 + 461));
    if (*(v22 + 136) == 1)
    {
      NK_Init_Cov_Mat(*(v21 + 1864), *(v22 + 20), v21[5], v342, v22 + 352, v122, v337, v22 + 27528, *(a11 + 1720), v330, (v21 + 15498), (v24 + 461));
    }
  }

  v333 = (v24 + 461);
  bzero(v21 + 540, 0x1200uLL);
  v346 = (v345 + 96);
  NK_Comp_DR_Meas(0x80u, v21[13], v345 + 96, v345 + 736, v345 + 1760, v345 + 2912, v345 + 6496, v345 + 4448, *(v21 + 194), v345 + 992, v345 + 1248, v22 + 20160, v22 + 25792, v21 + 52, v21 + 9158);
  *(v24 + 1953) = NK_PrePro_SV_Meas(*(v22 + 20), v121 + 50616, v121 + 50834, v345, v338, v328, a11, v329, a12, v121, v22, v21);
  NK_Set_Environ_Severity(v345, a11, v22, v21);
  NK_Set_PR_Meas_Var(v345, a11, v22, v21);
  NK_Set_DO_Meas_Var(v345, a11, v22, v21);
  NK_Set_DR_Meas_Var(v345, v21);
  if (*(v122 + 27040) == 1 && *(v122 + 26992) <= 1u)
  {
    v134 = 0;
    v135 = (v21 + 1996);
    v136 = (v345 + 96);
    do
    {
      if (*(v21 + v134 + 6824) == 1)
      {
        v137 = *v135;
        if (*v135 >= dbl_299051030[*v136 == 2])
        {
          v137 = dbl_299051030[*v136 == 2];
        }

        *v135 = v137;
      }

      ++v134;
      v135 += 3;
      v136 += 4;
    }

    while (v134 != 128);
  }

  if ((*(v121 + 25344) - 2) <= 4)
  {
    if (*(v121 + 25388) - *(v21 + 13) >= 0)
    {
      v139 = -((*(v121 + 25388) - *(v21 + 13)) & 0x3F);
    }

    else
    {
      v139 = (*(v21 + 13) - *(v121 + 25388)) & 0x3F;
    }

    if (v139 > 31)
    {
      v139 -= 64;
    }

    v140 = *(v121 + 25368) + *(v121 + 25376) * (*(v21 + 4) - *(v121 + 25384) + 604800 * v139);
    *(v21 + 187) = v140;
    *(v22 + 15544) = v140 * 299792458.0;
  }

  if ((*(v121 + 50556) - 2) >= 5)
  {
    v144 = *(v22 + 15576);
  }

  else
  {
    if (*(v121 + 50612) - *(v21 + 13) >= 0)
    {
      v141 = -((*(v121 + 50612) - *(v21 + 13)) & 0x3FF);
    }

    else
    {
      v141 = (*(v21 + 13) - *(v121 + 50612)) & 0x3FF;
    }

    if (v141 > 511)
    {
      v141 -= 1024;
    }

    if (v141 < -512)
    {
      v141 += 1024;
    }

    v142 = *(v21 + 4) - *(v121 + 50608) + (604800 * v141);
    v143 = *(v121 + 50584) + *(v121 + 50592) * v142 + *(v121 + 50600) * (v142 * v142);
    *(v21 + 188) = v143;
    v144 = v143 * 299792458.0;
    *(v22 + 15576) = v144;
  }

  v145 = v21[13];
  v146 = *(v22 + 25920) + v145 * 299792.458;
  *(v22 + 25920) = v146;
  v147 = *(v22 + 20112) + v145 * 299792.458;
  *(v22 + 20112) = v147;
  v148 = *(v22 + 20128) + v145 * 299792.458;
  *(v22 + 20128) = v148;
  v138 = v344 + 19968;
  Corr_Old_PR_Est(v346, *v138, v138[2], v138[16], v138[32], v138[1], 0x80u, v22 + 17032, *(v22 + 20152), v146, v147, v148, *(v22 + 20144), 0.0, 0.0, *(v22 + 15544) - *(v22 + 15592), v144 - *(v22 + 15600), v22 + 25928, v22 + 21184, (v22 + 24256), (v22 + 24768));
  v149 = v345;
  NK_Comp_PR_DO_Res(v345, v338, v121, a11, a9, v329, v22, v21);
  if (__PAIR64__(*(v21 + 1681), *(v21 + 1680)) != 0x100000001 || (*(v21 + 1682) & 1) == 0)
  {
    NK_Set_Constell_Clock_Bias(v346, v21, v121, *(v22 + 241), v22 + 352, v150, v151, v152, v153, v154);
  }

  NK_Comp_DR_Res(v345, v22, v21);
  if ((*(v22 + 136) & 1) == 0)
  {
    NK_Add_SV_ARes_PN_ClkDrift(v22, v21, *(a11 + 112));
  }

  NK_SV_PR_LvsE_Check(a11, v345, v22, v21);
  NK_Reflection_Rejection_Ped(a11, v345, v22, v21);
  NK_Reduce_Num_SV(v345, v22, v21, a12);
  NK_Dopp_Outlier(v345, v22, v21);
  NK_SV_Res_RTests_FDist(*(a11 + 60), v345, v22, v21);
  LOWORD(v380[0]) = 0;
  v380[1074] = 0.0;
  LOBYTE(v380[1075]) = 0;
  memset(&v380[1065], 0, 65);
  v380[1086] = 0.0;
  LOBYTE(v380[1087]) = 0;
  LODWORD(v380[1076]) = 0;
  memset(&v380[1077], 0, 65);
  bzero(&v380[1], 0x213CuLL);
  memset(&v380[1088], 0, 24);
  NK_Least_Squares_Check(v345);
  NK_Least_Squares_Publish_Soln((v24 + 837), v380);
  memcpy((v326 + 3168), &v380[1], 0x400uLL);
  memcpy((v326 + 4192), &v380[131], 0x400uLL);
  NK_Least_Squares_Cross_Check(v346, v22, v21, v380, v155, v156);
  if (*v334 == 1 && (*(v21 + 1680) != 1 || *(v21 + 1681) != 1 || (*(v21 + 1682) & 1) == 0))
  {
    NK_Set_Constell_Clock_Bias(v346, v21, v121, *(v22 + 241), v22 + 352, v157, v158, v159, v160, v161);
  }

  NK_Least_Squares_Check(v345);
  NK_Least_Squares_Publish_Soln(v326 + 1024, v380);
  NK_Least_Squares_Check(v345);
  NK_Least_Squares_Publish_Soln(v326 + 1560, v380);
  NK_Least_Squares_Check(v345);
  NK_Least_Squares_Publish_Soln(v326 + 2096, v380);
  NK_Least_Squares_Check(v345);
  NK_Least_Squares_Publish_Soln(v326 + 2632, v380);
  NK_BDS_Consistency_Checks(a11, v326, v345, v22, v21);
  NK_SV_Meas_IVar(1, v346, (v21 + 13194), (v22 + 352), (v21 + 1692), *(v21 + 194));
  v339 = (v21 + 5418);
  NK_SV_Meas_IVar(2, v346, (v21 + 13194), (v22 + 352), (v21 + 5418), *(v21 + 194));
  NK_SV_Meas_IVar(3, v346, (v21 + 13194), (v22 + 352), (v21 + 9144), *(v21 + 194));
  NK_Bit_Sync_Check(v345, v22, v21, a12);
  NK_Range_Chip_Check(v345, v22, v21, a12);
  v162 = 0;
  v163 = v21 + 1770;
  do
  {
    if (*(v163 + v162) == 1 && (*(v21 + v162 + 57) & 1) == 0)
    {
      *(v163 + v162) = 0;
      --*(v21 + 6771);
    }

    ++v162;
  }

  while (v162 != 128);
  v165 = *(v22 + 20);
  v164 = *(v22 + 24);
  if (v165 == v164)
  {
    goto LABEL_132;
  }

  if (v165 > 2)
  {
    if (v165 > 4)
    {
      if (v165 == 5)
      {
        if ((v164 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_132;
        }
      }

      else if (v165 != 6 || v164 != 7)
      {
        goto LABEL_132;
      }
    }

    else if (v165 == 3)
    {
      if (v164 <= 2)
      {
        goto LABEL_132;
      }
    }

    else if (v164 - 5 >= 3)
    {
      goto LABEL_132;
    }

LABEL_125:
    if (*v341 <= *(v22 + 16) && v21[468] == 1)
    {
      v166 = *(v22 + 148);
      if (v166 >= *(v22 + 152))
      {
        v166 = *(v22 + 152);
      }

      if (v166 >= *(v22 + 156))
      {
        v166 = *(v22 + 156);
      }

      if (v166 > 0xA)
      {
        goto LABEL_133;
      }
    }

    goto LABEL_132;
  }

  if (!v165)
  {
    goto LABEL_125;
  }

  if (v165 != 1)
  {
    if (v165 != 2 || v164 <= 1)
    {
      goto LABEL_132;
    }

    goto LABEL_125;
  }

  if (v164)
  {
    goto LABEL_125;
  }

LABEL_132:
  NK_SV_Res_RTests(v345, v22, v21, a12);
LABEL_133:
  NK_SV_Res_RTests_Riskier_SVs(v345, v21);
  v335 = (v24 + 71);
  NK_Check_Num_SV_Res(*(v21 + 1864), *(v22 + 20), *(v22 + 2), *(v24 + 236), v24[61], *(v348 + 20), (v21 + 1692), (v21 + 9144), *(v24 + 71), v339);
  v167 = 0;
  v168 = v21 + 11814;
  do
  {
    if (*(v21 + v167 + 36888) == 1 && v21[v167 + 1834] - 1 <= 0x1D)
    {
      *&v168[2 * v167] = *&v168[2 * v167] + 1.0;
      *(v168 + v167 - 128) = 1;
    }

    ++v167;
  }

  while (v167 != 128);
  if (*v344 & 1) != 0 || (NK_Add_SV_ARes_PN(*(a10 + 4), *(a10 + 17), v345, v22, v21, *(a11 + 60)), (*(v22 + 136)))
  {
    NK_Init_Cov_Mat(*(v21 + 1864), *(v22 + 20), v21[5], v342, v22 + 352, v344, v337, v22 + 27528, *(a11 + 1720), v330, (v21 + 15498), v333);
  }

  if ((*(v22 + 6) & 1) == 0 && *(v21 + 6771) >= 6u && (*(v22 + 241) & 1) == 0 && v21[5] - 3 <= 2)
  {
    v169 = *(v24 + 471) * 25.0;
    *(v24 + 471) = v169;
    *(v22 + 512) = v169;
    EvLog("Nav_Kalman_Update: Freeing-up dT Synch ");
    v170 = *v333 * 25.0;
    *v333 = v170;
    *(v22 + 352) = v170;
    v171 = *(v24 + 463) * 25.0;
    *(v24 + 463) = v171;
    *(v22 + 368) = v171;
    v172 = *(v24 + 465) * 25.0;
    *(v24 + 465) = v172;
    *(v22 + 392) = v172;
  }

  NK_Get_Ext_Time(*v21, v21, v22);
  NK_DeCor_Ext_Meas(v22, v21, v173);
  v327 = NK_Tunnel_Assist(v22, v21);
  memcpy((v22 + 976), (v22 + 352), 0x270uLL);
  v176 = 0.0;
  *(v22 + 1600) = 0u;
  *(v22 + 1616) = 0u;
  *(v22 + 1632) = 0u;
  *(v22 + 1648) = 0u;
  *(v22 + 1664) = 0u;
  *(v22 + 1680) = 0u;
  *(v22 + 1696) = 0;
  if (*(v24 + 20) == 1 && KFSt_Meas_Update(5u, 0xCu, (v24 + 5), (v22 + 976), (v22 + 27078), *(v21 + 209)))
  {
    v24[543] = v24[6];
  }

  v177 = *(v24 + 471);
  if (v177 > 0.000000001 && ((v174 = *(v24 + 473), v176 = 1600000000.0, v174 < 1600000000.0) && (v174 = *(v24 + 475), v174 < 1600000000.0) && (v174 = *(v24 + 477), v174 < 1600000000.0) || *v342 == 1 && (v174 = *v335, *v335 < 1600000000.0)) && ((v176 = 0.0001, *(v21 + 56) == 2) || (v21[6] & 1) != 0 || *(v24 + 20) == 1 && v24[6] == 1 && (v174 = *(v24 + 15), v175 = 0.00000004, v174 < 0.00000004)) || *(v21 + 56) && (v176 = 0.9, v177 > 0.9) && (v176 = 1.0, (v21[466] & 1) != 0))
  {
    v178 = *(v21 + 209);
    v381[0] = 0.0;
    memset(&__src[28], 0, 152);
    memset(&__src[12], 0, 48);
    memset(__src, 0, 40);
    *&__src[10] = 0x3FF0000000000000;
    *&__src[24] = v178;
    umeas(v22 + 976, 0xCu, v176, __src, v380, v382, v381, 1.0e20);
    v24[543] = 2;
  }

  if (*(v24 + 92) != 1)
  {
    goto LABEL_186;
  }

  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = (v345 + 96);
  do
  {
    if (*(v163 + v179) != 1)
    {
      goto LABEL_178;
    }

    v184 = *v183;
    if (v184 > 3)
    {
      if (v184 - 5 < 2)
      {
        goto LABEL_177;
      }

      if (v184 != 4)
      {
        if (v184 != 7)
        {
          goto LABEL_178;
        }

LABEL_174:
        EvCrt_Illegal_switch_case("Nav_Kalman_Update", 1269);
        goto LABEL_178;
      }

      ++v182;
    }

    else
    {
      if (*v183 <= 1u)
      {
        if (!*v183)
        {
          goto LABEL_174;
        }

LABEL_177:
        ++v180;
        goto LABEL_178;
      }

      if (v184 != 2)
      {
        if (v184 != 3)
        {
          goto LABEL_178;
        }

        goto LABEL_177;
      }

      ++v181;
    }

LABEL_178:
    ++v179;
    v183 += 4;
  }

  while (v179 != 128);
  v177 = *(v21 + 204);
  v176 = 299792458.0;
  if (!v180 && v181 | v182)
  {
    v149 = v345;
    if (v181)
    {
      v115 = a11;
      v121 = v340;
      if ((KFSt_Meas_Update(1u, 0xCu, (v24 + 23), (v22 + 976), (v22 + 27080), *(v21 + 205) * 299792458.0) & 1) == 0)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v115 = a11;
      v121 = v340;
      if (!v182 || !KFSt_Meas_Update(2u, 0xCu, (v24 + 23), (v22 + 976), (v22 + 27080), *(v21 + 206) * 299792458.0))
      {
        goto LABEL_186;
      }
    }

LABEL_185:
    v24[544] = v24[24];
    goto LABEL_186;
  }

  v115 = a11;
  v121 = v340;
  v149 = v345;
  if (KFSt_Meas_Update(0, 0xCu, (v24 + 23), (v22 + 976), (v22 + 27080), v177 * 299792458.0))
  {
    goto LABEL_185;
  }

LABEL_186:
  v185 = a10;
  if (*(v21 + 6771))
  {
    v186 = *v333;
    if (*v333 >= 90000.0)
    {
      v187 = 0;
    }

    else
    {
      v176 = *(v24 + 463);
      v187 = v176 < 90000.0;
    }

    if (v21[5] == 11 && (v380[0] = 0.0, !R8_EQ(v21 + 204, v380)))
    {
      *__src = 0;
      v204 = R8_EQ(v21 + 205, __src);
      v188 = 0;
      v176 = 900000000.0;
      if (v186 < 900000000.0 && !v204)
      {
        v177 = *(v24 + 463);
        v188 = v177 < 900000000.0;
      }
    }

    else
    {
      v188 = 0;
    }

    v189 = !*(v348 + 20) && (v200 = *(v24 + 3298), v200 >= 1) && (v201 = *(v24 + 3297), v201 >= 1) && v201 + v200 < 6;
    if (v187 || v188 || v189)
    {
      *(v24 + 508) = 2;
      v24[128] = 1;
      NK_IntConstel_TO_IntMeas(v22, v21, v121, v176, v177, v174, v175);
      v186 = *v333;
    }

    if (v186 >= 90000.0)
    {
      v190 = 0;
    }

    else
    {
      v176 = *(v24 + 465);
      v190 = v176 < 90000.0;
    }

    if (v21[5] == 11 && (v380[0] = 0.0, !R8_EQ(v21 + 204, v380)))
    {
      *__src = 0;
      v205 = R8_EQ(v21 + 206, __src);
      v191 = 0;
      v176 = 900000000.0;
      if (v186 < 900000000.0 && !v205)
      {
        v177 = *(v24 + 465);
        v191 = v177 < 900000000.0;
      }
    }

    else
    {
      v191 = 0;
    }

    v192 = !*(v348 + 20) && (v202 = *(v24 + 3300), v202 >= 1) && (v203 = *(v24 + 3297), v203 >= 1) && v203 + v202 < 6;
    if (v190 || v191 || v192)
    {
      *(v24 + 508) = 4;
      v24[128] = 4;
      NK_IntConstel_TO_IntMeas(v22, v21, v121, v176, v177, v174, v175);
    }

    if (*(v24 + 463) < 90000.0)
    {
      v193 = *(v24 + 465);
      if (v193 < 90000.0)
      {
        *(v24 + 508) = 4;
        v24[128] = 5;
        NK_IntConstel_TO_IntMeas(v22, v21, v121, v193, v177, v174, v175);
      }
    }
  }

  if (*(v24 + 164) == 1)
  {
    v194 = *(v21 + 208) * 299792458.0;
    v195 = *(v24 + 469);
    if (v195 <= 80.8879661)
    {
      *(v24 + 164) = 0;
      *(v24 + 180) = 1;
      v196 = *(v24 + 47);
      v197 = v195 + *(v24 + 49);
      if ((v196 - v194) * (v196 - v194) > v197 * 9.0)
      {
        EvLog_v("Nav_Kalman_Update: WARNING: Ext ClkD %g incompatible with NK ClkD %g Unc %g", v196, v194, sqrt(v197));
      }
    }

    else if (KFSt_Meas_Update(4u, 0xCu, (v24 + 41), (v22 + 976), (v22 + 27088), v194))
    {
      v24[547] = v24[42];
    }
  }

  *(v24 + 1012) = NK_Map_Vector(v21, v22, a10);
  if (*(v24 + 236) == 1)
  {
    if (Horz_Meas_Update(6u, v21 + 213, v21 + 217, 0xCu, v342, v22 + 976, (v22 + 27090)))
    {
      v24[549] = v24[60];
      if (*(v24 + 2392) == 1 && *v335 < 160000.0)
      {
        *(v24 + 2400) = 1;
      }

      if (*(v24 + 2424) == 1 && *v335 < 160000.0)
      {
        *(v24 + 2432) = 1;
      }
    }

    else
    {
      v24[599] = 3;
      if (*(v24 + 2424) == 1)
      {
        v24[607] = 3;
      }

      if (v24[61] - 3 <= 1)
      {
        *(p_NA + 632) = 2;
      }

      v198 = *(v24 + 83) * *(v24 + 83) + *(v24 + 81) * *(v24 + 81);
      if (v198 > *(v24 + 77))
      {
        v199 = p_NA;
        *(p_NA + 576) = v198;
        *(v199 + 584) = v198;
      }
    }
  }

  if (*(v24 + 364) == 1)
  {
    if (Vert_Meas_Update(6u, v21 + 217, 0xCu, (v24 + 91), (v22 + 976), (v22 + 27092), *(v21 + 215)))
    {
      v24[550] = v24[92];
      if ((v24[596] & 1) == 0 && *(v24 + 2408) == 1 && *(v24 + 99) < 160000.0)
      {
        *(v24 + 2416) = 1;
      }
    }

    else if (*(v24 + 2384) == 1)
    {
      *(v24 + 2384) = 0;
      v24[595] = 3;
    }

    else if (v24[92] == 1)
    {
      v24[603] = 3;
    }
  }

  if (*v24 == 1 && *(v21 + 36579) | *(v21 + 21675))
  {
    *(v24 + 564) = 1;
    v24[142] = 1;
    v24[145] = *v21;
    *(v24 + 147) = xmmword_299051040;
    *(v24 + 155) = 0x4022000000000000;
  }

  if (*(v24 + 564) == 1 && Speed_Meas_Update(9u, v21 + 198, 0xCu, (v24 + 141), (v22 + 976), (v22 + 27100), 1.0))
  {
    v24[554] = v24[142];
  }

  if (*(v24 + 636) == 1 && *(v348 + 88) != 3)
  {
    v206 = *(v24 + 525);
    v207 = (v22 + 25944);
    v208 = 0.0;
    for (i = 4; i > 1; --i)
    {
      v210 = *v207--;
      v208 = v208 + v210 * v210;
    }

    if (v206 < 45.0 && *(v24 + 165) > 0.75)
    {
      v211 = *(v21 + 231);
      if (v211 > 0.75 && *(v24 + 885) > 0.75 && sqrt(v208) > 0.5)
      {
        v212 = cos(v206 * 0.0174532925);
        if (GSpeed_Meas_Update(9, v21 + 217, 0xCu, (v24 + 159), v22 + 976, (v22 + 27104), v211, *(v22 + 27280), 1.0, 1.0 / v212))
        {
          v24[556] = v24[160];
        }

        else if (*(v24 + 2464) == 1)
        {
          *(v24 + 2464) = 0;
          v24[615] = 3;
        }
      }
    }
  }

  if (*(v24 + 436) == 1)
  {
    if (Vert_Meas_Update(9u, v21 + 217, 0xCu, (v24 + 109), (v22 + 976), (v22 + 27094), -*(v21 + 229)))
    {
      v24[551] = v24[110];
    }

    else if (*(v24 + 2480) == 1)
    {
      *(v24 + 2480) = 0;
      v24[619] = 3;
    }
  }

  if (*(v24 + 708) == 1)
  {
    v213 = *(v21 + 232);
    *(v24 + 187) = v213;
    if (Track_Meas_Update(9, v21 + 217, 0xCu, v24 + 708, v22 + 976, (v22 + 27108), v213, *(v21 + 231), 1.0))
    {
      v24[558] = v24[178];
    }

    else if (*(v24 + 2496) == 1)
    {
      *(v24 + 2496) = 0;
      v24[623] = 3;
    }
  }

  v215 = *(v22 + 20);
  v214 = *(v22 + 24);
  if (v215 != v214)
  {
    if (v215 <= 2)
    {
      switch(v215)
      {
        case 0:
          goto LABEL_309;
        case 1:
          if (!v214)
          {
            goto LABEL_310;
          }

          goto LABEL_309;
        case 2:
          if (v214 > 1)
          {
            goto LABEL_309;
          }

          goto LABEL_310;
      }
    }

    else if (v215 > 4)
    {
      if (v215 == 5)
      {
        if ((v214 & 0xFFFFFFFE) == 6)
        {
          goto LABEL_309;
        }

        goto LABEL_310;
      }

      if (v215 == 6)
      {
        if (v214 == 7)
        {
          goto LABEL_309;
        }

        goto LABEL_310;
      }
    }

    else
    {
      if (v215 != 3)
      {
        if (v214 - 5 >= 3)
        {
          goto LABEL_310;
        }

LABEL_309:
        NK_Define_Meas_Innov_Sat_Thresh(v21, v22, v343);
        v214 = *(v22 + 24);
        goto LABEL_310;
      }

      if (v214 > 2)
      {
        goto LABEL_309;
      }

LABEL_310:
      v215 = *(v22 + 20);
    }

    if (v215 != v214)
    {
      if (v215 <= 2)
      {
        if (v215)
        {
          if (v215 == 1)
          {
            if (!v214)
            {
              goto LABEL_340;
            }
          }

          else if (v215 != 2 || v214 <= 1)
          {
            goto LABEL_340;
          }
        }

        goto LABEL_331;
      }

      if (v215 > 4)
      {
        if (v215 != 5)
        {
          if (v215 != 6 || v214 != 7)
          {
            goto LABEL_340;
          }

          goto LABEL_331;
        }

        if ((v214 & 0xFFFFFFFE) == 6)
        {
          goto LABEL_331;
        }
      }

      else if (v215 == 3)
      {
        if (v214 > 2)
        {
          goto LABEL_331;
        }
      }

      else
      {
        if (v214 - 5 >= 3)
        {
          goto LABEL_340;
        }

LABEL_331:
        memset_pattern16(v21 + 7800, &unk_299051060, 0x400uLL);
        v185 = a10;
        memset_pattern16(v21 + 11526, &unk_299051060, 0x400uLL);
        if ((*(v22 + 241) & 1) == 0 && *v341 <= *(v22 + 16) && v21[468] == 1)
        {
          v216 = *(v22 + 148);
          if (v216 >= *(v22 + 152))
          {
            v216 = *(v22 + 152);
          }

          if (v216 >= *(v22 + 156))
          {
            v216 = *(v22 + 156);
          }

          if (v216 >= 0xB)
          {
            NK_Meas_Outlier_Check(2, v346, *(v21 + 56), 0, v339, (v21 + 9144));
            NK_Meas_ARP_Check(2u, v346, v339, v333, v330);
          }
        }
      }
    }
  }

LABEL_340:
  if (*v341 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_348;
  }

  v217 = *(v22 + 148);
  if (v217 >= *(v22 + 152))
  {
    v217 = *(v22 + 152);
  }

  if (v217 >= *(v22 + 156))
  {
    v217 = *(v22 + 156);
  }

  if (v217 < 0xB || (v219 = *(v22 + 20), v218 = *(v22 + 24), v219 == v218))
  {
LABEL_348:
    v220 = 0;
    goto LABEL_349;
  }

  if (v219 <= 2)
  {
    if (v219)
    {
      if (v219 != 1)
      {
        if (v219 != 2)
        {
          goto LABEL_348;
        }

        v304 = v218 > 1;
        goto LABEL_671;
      }

      v220 = v218 != 0;
    }

    else
    {
      v220 = 1;
    }
  }

  else if (v219 > 4)
  {
    if (v219 == 5)
    {
      v307 = (v218 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v219 != 6)
      {
        goto LABEL_348;
      }

      v307 = v218 == 7;
    }

    v220 = v307;
  }

  else
  {
    if (v219 != 3)
    {
      v220 = v218 - 5 < 3;
      goto LABEL_349;
    }

    v304 = v218 > 2;
LABEL_671:
    v220 = v304;
  }

LABEL_349:
  NK_SV_Meas_Update(2, v346, (v21 + 13194), v21 + 57, v339, (v22 + 976), v220, v21 + 99, *(v21 + 194), (v21 + 15348));
  v222 = *(v22 + 20);
  v221 = *(v22 + 24);
  if (v222 != v221)
  {
    if (v222 <= 2)
    {
      if (v222)
      {
        if (v222 == 1)
        {
          if (!v221)
          {
            goto LABEL_382;
          }
        }

        else if (v222 != 2 || v221 <= 1)
        {
          goto LABEL_382;
        }
      }

      goto LABEL_373;
    }

    if (v222 > 4)
    {
      if (v222 != 5)
      {
        if (v222 != 6 || v221 != 7)
        {
          goto LABEL_382;
        }

        goto LABEL_373;
      }

      if ((v221 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_373;
      }
    }

    else if (v222 == 3)
    {
      if (v221 > 2)
      {
        goto LABEL_373;
      }
    }

    else
    {
      if (v221 - 5 >= 3)
      {
        goto LABEL_382;
      }

LABEL_373:
      if ((*(v22 + 241) & 1) == 0 && *v341 <= *(v22 + 16) && v21[468] == 1)
      {
        v223 = *(v22 + 148);
        if (v223 >= *(v22 + 152))
        {
          v223 = *(v22 + 152);
        }

        if (v223 >= *(v22 + 156))
        {
          v223 = *(v22 + 156);
        }

        if (v223 >= 0xB)
        {
          NK_Meas_ARP_Check(3u, v346, (v21 + 9144), v333, v330);
        }
      }
    }
  }

LABEL_382:
  if (*v341 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_390;
  }

  v224 = *(v22 + 148);
  if (v224 >= *(v22 + 152))
  {
    v224 = *(v22 + 152);
  }

  if (v224 >= *(v22 + 156))
  {
    v224 = *(v22 + 156);
  }

  if (v224 < 0xB || (v226 = *(v22 + 20), v225 = *(v22 + 24), v226 == v225))
  {
LABEL_390:
    v227 = 0;
    goto LABEL_391;
  }

  if (v226 <= 2)
  {
    if (v226)
    {
      if (v226 != 1)
      {
        if (v226 != 2)
        {
          goto LABEL_390;
        }

        v305 = v225 > 1;
        goto LABEL_675;
      }

      v227 = v225 != 0;
    }

    else
    {
      v227 = 1;
    }
  }

  else if (v226 > 4)
  {
    if (v226 == 5)
    {
      v308 = (v225 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v226 != 6)
      {
        goto LABEL_390;
      }

      v308 = v225 == 7;
    }

    v227 = v308;
  }

  else
  {
    if (v226 != 3)
    {
      v227 = v225 - 5 < 3;
      goto LABEL_391;
    }

    v305 = v225 > 2;
LABEL_675:
    v227 = v305;
  }

LABEL_391:
  NK_SV_Meas_Update(3, v346, (v21 + 13194), v21 + 57, (v21 + 9144), (v22 + 976), v227, v21 + 99, *(v21 + 194), (v21 + 15348));
  NK_Update_Intermediate_Residual(1, v346, v22, v21);
  NK_PR_Res_ReWeight(v115, v149, v22, v21);
  v229 = *(v22 + 20);
  v228 = *(v22 + 24);
  if (v229 != v228)
  {
    if (v229 <= 2)
    {
      if (v229)
      {
        if (v229 == 1)
        {
          if (!v228)
          {
            goto LABEL_424;
          }
        }

        else if (v229 != 2 || v228 <= 1)
        {
          goto LABEL_424;
        }
      }

      goto LABEL_415;
    }

    if (v229 > 4)
    {
      if (v229 != 5)
      {
        if (v229 != 6 || v228 != 7)
        {
          goto LABEL_424;
        }

        goto LABEL_415;
      }

      if ((v228 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_415;
      }
    }

    else if (v229 == 3)
    {
      if (v228 > 2)
      {
        goto LABEL_415;
      }
    }

    else
    {
      if (v228 - 5 >= 3)
      {
        goto LABEL_424;
      }

LABEL_415:
      memset_pattern16(v21 + 4074, &unk_299051060, 0x400uLL);
      if ((*(v22 + 241) & 1) == 0 && *v341 <= *(v22 + 16) && v21[468] == 1)
      {
        v230 = *(v22 + 148);
        if (v230 >= *(v22 + 152))
        {
          v230 = *(v22 + 152);
        }

        if (v230 >= *(v22 + 156))
        {
          v230 = *(v22 + 156);
        }

        if (v230 >= 0xB)
        {
          NK_Meas_Outlier_Check(1, v346, *(v21 + 56), (v21 + 1692), 0, 0);
          NK_Meas_ARP_Check(1u, v346, (v21 + 1692), v333, (v22 + 27528));
        }
      }
    }
  }

LABEL_424:
  if (*v341 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_432;
  }

  v231 = *(v22 + 148);
  if (v231 >= *(v22 + 152))
  {
    v231 = *(v22 + 152);
  }

  if (v231 >= *(v22 + 156))
  {
    v231 = *(v22 + 156);
  }

  if (v231 < 0xB || (v233 = *(v22 + 20), v232 = *(v22 + 24), v233 == v232))
  {
LABEL_432:
    v234 = 0;
    goto LABEL_433;
  }

  if (v233 <= 2)
  {
    if (v233)
    {
      if (v233 != 1)
      {
        if (v233 != 2)
        {
          goto LABEL_432;
        }

        v306 = v232 > 1;
        goto LABEL_679;
      }

      v234 = v232 != 0;
    }

    else
    {
      v234 = 1;
    }
  }

  else if (v233 > 4)
  {
    if (v233 == 5)
    {
      v309 = (v232 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v233 != 6)
      {
        goto LABEL_432;
      }

      v309 = v232 == 7;
    }

    v234 = v309;
  }

  else
  {
    if (v233 != 3)
    {
      v234 = v232 - 5 < 3;
      goto LABEL_433;
    }

    v306 = v232 > 2;
LABEL_679:
    v234 = v306;
  }

LABEL_433:
  NK_SV_Meas_Update(1, v346, (v21 + 13194), v21 + 57, (v21 + 1692), (v22 + 976), v234, v21 + 99, 0.0, (v21 + 15348));
  *(v24 + 2512) = *(v24 + 1413);
  NK_Reject_DO_For_Rejected_PR((v21 + 13194), v346, v22, v21);
  *(v21 + 13190) = 0u;
  v236 = *(v22 + 20);
  v235 = *(v22 + 24);
  if (v236 == v235)
  {
    goto LABEL_464;
  }

  if (v236 <= 2)
  {
    if (!v236)
    {
      goto LABEL_457;
    }

    if (v236 == 1)
    {
      if (!v235)
      {
        goto LABEL_464;
      }

      goto LABEL_457;
    }

    if (v236 == 2 && v235 > 1)
    {
      goto LABEL_457;
    }

    goto LABEL_464;
  }

  if (v236 > 4)
  {
    if (v236 == 5)
    {
      if ((v235 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_457;
      }
    }

    else if (v236 == 6 && v235 == 7)
    {
      goto LABEL_457;
    }

    goto LABEL_464;
  }

  if (v236 == 3)
  {
    if (v235 > 2)
    {
      goto LABEL_457;
    }

    goto LABEL_464;
  }

  if (v235 - 5 >= 3)
  {
    goto LABEL_464;
  }

LABEL_457:
  if (*v341 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_464;
  }

  v237 = *(v22 + 148);
  if (v237 >= *(v22 + 152))
  {
    v237 = *(v22 + 152);
  }

  if (v237 >= *(v22 + 156))
  {
    v237 = *(v22 + 156);
  }

  if (v237 <= 0xA)
  {
LABEL_464:
    NK_SV_Meas_Check(v149, v22, v21);
  }

  v238 = NK_SV_Meas_AP_Stats(1, v149, v22, v21);
  *(v24 + 2141) = v238;
  *(v24 + 2142) = 0;
  if (v238)
  {
    v239 = v238 - 1;
    *(v24 + 2142) = v238 - 1;
    if (*(v24 + 2147))
    {
      if (*(v24 + 2152) && !v24[545])
      {
        v239 = v238 - 2;
        *(v24 + 2142) = v238 - 2;
      }

      if (*(v24 + 2157) && !v24[546])
      {
        *(v24 + 2142) = v239 - 1;
      }
    }

    if ((*(v22 + 6) & 1) == 0)
    {
      *(v22 + 6) = 1;
    }
  }

  v240 = v327 | v331;
  if (*(v21 + 850) > 10000.0 && *v342 == 1 && v24[60] == 1 && !((*(v24 + 77) >= 900000000.0) | v240 & 1))
  {
    v241 = vdupq_n_s64(0x41E2A05F20000000uLL);
    *v335 = v241;
    *(v24 + 77) = v241;
    v242 = p_NA;
    *(p_NA + 576) = v241;
    if (*(v24 + 364) == 1)
    {
      v243 = dbl_299051050[*(v22 + 20) < 5u];
      if (*(v24 + 101) < v243)
      {
        *(v24 + 99) = v243;
        *(v24 + 101) = v243;
        *(v242 + 624) = v243;
      }
    }

    if (v21[467] >= 2)
    {
      v21[467] = 1;
    }

    *(v22 + 136) = 1;
    *(v22 + 140) = 38;
  }

  if (v238 >= 3 && *v341 >= 0x1F && *(v21 + 1881) >= 0x1Bu && !(v240 & 1 | ((*v342 & 1) == 0)) && v24[60] == 1)
  {
    *(p_NA + 8) = 0;
    *(v24 + 236) = 0;
    v24[599] = 21;
    *(v24 + 364) = 0;
    v24[603] = 21;
    if (v21[467] >= 2)
    {
      v21[467] = 1;
    }

    *(v22 + 136) = 1;
    *(v22 + 140) = 39;
  }

  v244 = NK_SV_Meas_AP_Stats(2, v149, v22, v21);
  *(v24 + 2143) = v244;
  *(v24 + 2145) = v244;
  v245 = NK_SV_Meas_AP_Stats(3, v149, v22, v21);
  *(v24 + 2144) = v245;
  *(v24 + 2145) = *(v24 + 2143) + v245;
  *(v24 + 2150) = *(v24 + 2149) + *(v24 + 2148);
  *(v24 + 2155) = *(v24 + 2154) + *(v24 + 2153);
  *(v24 + 2160) = *(v24 + 2159) + *(v24 + 2158);
  *(v24 + 2165) = *(v24 + 2164) + *(v24 + 2163);
  *(v24 + 2170) = *(v24 + 2169) + *(v24 + 2168);
  v246 = NK_VVel_Aiding_Required(v22, v21, (v24 + 197));
  *(v24 + 788) = v246;
  if (v246 && Vert_Meas_Update(9u, v21 + 217, 0xCu, (v24 + 197), (v22 + 976), (v22 + 27094), -*(v21 + 229)))
  {
    v24[551] = v24[198];
  }

  v247 = (v22 + 1600);
  v248 = NK_AltP_Aiding_Required(v22, v21, (v24 + 215));
  *(v24 + 860) = v248;
  if (v248 && Vert_Meas_Update(6u, v21 + 217, 0xCu, (v24 + 215), (v22 + 976), (v22 + 27092), *(v21 + 215)))
  {
    v24[550] = v24[216];
  }

  *(v24 + 932) = 0;
  NK_Comp_DOPS(v22, v21);
  v249 = v24 + 643;
  v250 = *(v22 + 1616);
  *(v24 + 643) = *v247;
  *(v24 + 647) = v250;
  v251 = *(v22 + 1632);
  v252 = *(v22 + 1648);
  v253 = *(v22 + 1680);
  *(v24 + 659) = *(v22 + 1664);
  *(v24 + 663) = v253;
  *(v24 + 651) = v251;
  *(v24 + 655) = v252;
  NK_Comp_Sol_Acc(v22, v21);
  NK_Static_Filter(v22, v21, v185);
  v254 = *(v22 + 1616);
  *(v24 + 643) = *v247;
  *(v24 + 647) = v254;
  v255 = *(v22 + 1632);
  v256 = *(v22 + 1648);
  v257 = *(v22 + 1680);
  *(v24 + 659) = *(v22 + 1664);
  *(v24 + 663) = v257;
  *(v24 + 651) = v255;
  *(v24 + 655) = v256;
  *(v22 + 1632) = 0u;
  *(v22 + 1648) = 0u;
  *(v22 + 1664) = 0u;
  *(v22 + 1680) = 0u;
  *v247 = 0u;
  *(v22 + 1616) = 0u;
  NK_Validate_Cor(v336, (v24 + 363), v333, (v21 + 434), *(v22 + 20), *v21, (v22 + 241), v21 + 1864, v344, (v22 + 244), a12, (v24 + 643), v21 + 7703, v21 + 7691, (v24 + 640), (v21 + 15662), v21 + 15686, v24 + 692, v21 + 15688, v21 + 15689, v24 + 695, v337);
  NK_ARP_Kalman(v346, (v345 + 736), v21, v22);
  v347 = (v24 + 363);
  if (*(v24 + 363) > 1000000000.0)
  {
    *v249 = 0;
    *(v24 + 2560) = 0;
  }

  if (!*(v24 + 2152) && !v24[544] && *(v24 + 508) == 2 && !v24[128] || *(v24 + 365) > 1000000000.0)
  {
    *(v24 + 645) = 0;
    *(v24 + 2561) = 0;
  }

  if (!*(v24 + 2157) && !v24[544] && *(v24 + 508) == 4 && !v24[128] || *(v24 + 367) > 1000000000.0)
  {
    *(v24 + 647) = 0;
    *(v24 + 2562) = 0;
  }

  v344[19968] = *(v24 + 2560);
  v344[19970] = *(v24 + 2561);
  v344[19984] = *(v24 + 2562);
  v344[20000] = *(v24 + 2563);
  v344[19969] = *(v24 + 2566);
  *(v22 + 25920) = *v249;
  *(v22 + 20112) = *(v24 + 645);
  *(v22 + 20128) = *(v24 + 647);
  *(v22 + 20144) = *(v24 + 649);
  v258 = *(v21 + 15650);
  *(v22 + 25944) = *(v21 + 7827);
  *(v22 + 25928) = v258;
  NK_Correct_State((v24 + 643), v24 + 2560, v343);
  NK_Transform_State(v343);
  NK_Heading(v22, v21, *(a11 + 60));
  NK_DT_Synch_ProcNoise(v22, v21);
  v259 = *(v21 + 209);
  v260 = -0.5;
  if (v259 > 0.0)
  {
    v260 = 0.5;
  }

  v261 = v259 + v260;
  if (v261 > 2147483650.0)
  {
    v262 = 0x7FFFFFFF;
    goto LABEL_520;
  }

  if (v261 < -2147483650.0)
  {
    v262 = 0x80000000;
    goto LABEL_520;
  }

  v262 = v261;
  if (v261)
  {
LABEL_520:
    v263 = v262;
    v264 = v262 * 0.001;
    Inc_GPS_TOW(v264, v21 + 191, v21 + 771);
    v380[0] = 0.0;
    if (!R8_EQ(v21 + 204, v380))
    {
      *(v21 + 204) = *(v21 + 204) + *(v21 + 208) * v264;
    }

    v380[0] = 0.0;
    if (!R8_EQ(v21 + 205, v380))
    {
      *(v21 + 205) = *(v21 + 205) + *(v21 + 208) * v264;
    }

    v380[0] = 0.0;
    if (!R8_EQ(v21 + 206, v380))
    {
      *(v21 + 206) = *(v21 + 206) + *(v21 + 208) * v264;
    }

    *(v21 + 209) = *(v21 + 209) - v263;
  }

  NK_Set_Fix_Type(v24 + 2560, v21 + 7691, v336, v344, *(a11 + 1668), v24[692], v24[695], *(v22 + 20), *v335, *(v24 + 99), *(v22 + 16), (v327 | v331) & 1, *(v348 + 20), v21[5], (v22 + 241), v348, v341, (v22 + 27112), v21 + 15481, v21 + 15482);
  NK_Set_TTFF(v22, v21);
  NK_Check_State(v345 + 1760, v22, v21);
  NK_Limited_Reset(v22, v21, *(a11 + 52), *(a11 + 1720));
  if (*(v21 + 1680) == 1)
  {
    v265 = a10;
    goto LABEL_535;
  }

  v265 = a10;
  if (*(v24 + 2147))
  {
    v380[0] = 0.0;
    if (!R8_EQ((v24 + 643), v380))
    {
      *(v21 + 1680) = 1;
      goto LABEL_535;
    }
  }

  v380[0] = 0.0;
  if (!R8_EQ((v24 + 643), v380))
  {
LABEL_535:
    v266 = a12;
    goto LABEL_536;
  }

  *__src = 0;
  v266 = a12;
  if (!R8_EQ(v21 + 204, __src))
  {
    *(v21 + 204) = 0;
  }

LABEL_536:
  if (*(v21 + 1681) == 1)
  {
    goto LABEL_543;
  }

  if (*(v24 + 2152))
  {
    v380[0] = 0.0;
    if (!R8_EQ((v24 + 645), v380))
    {
      *(v21 + 1681) = 1;
      goto LABEL_543;
    }
  }

  v380[0] = 0.0;
  if (!R8_EQ((v24 + 645), v380))
  {
LABEL_543:
    v267 = v340;
    v268 = (v348 + 4);
    goto LABEL_544;
  }

  *__src = 0;
  v267 = v340;
  v268 = (v348 + 4);
  if (!R8_EQ(v21 + 205, __src))
  {
    *(v21 + 205) = 0;
  }

LABEL_544:
  if (*(v21 + 1682) == 1)
  {
    goto LABEL_551;
  }

  if (*(v24 + 2157))
  {
    v380[0] = 0.0;
    if (!R8_EQ((v24 + 647), v380))
    {
      *(v21 + 1682) = 1;
      goto LABEL_551;
    }
  }

  v380[0] = 0.0;
  if (!R8_EQ((v24 + 647), v380))
  {
LABEL_551:
    v269 = a11;
    v270 = a13;
    goto LABEL_552;
  }

  *__src = 0;
  v269 = a11;
  v270 = a13;
  if (!R8_EQ(v21 + 206, __src))
  {
    *(v21 + 206) = 0;
  }

LABEL_552:
  NK_Final_Check(v22, v21, v269, v266, v345, *(v269 + 52), *(v269 + 1712), *(v269 + 1720));
  NK_Set_Accuracy(*(v269 + 1772), v345 + 1760, *(v269 + 60), v345, v269, v22, v21);
  NK_Set_TOW_Status(v22, v21);
  if (*(v21 + 1540) == 1)
  {
    v271 = v21[384];
    if (v271 >= 3 && (!R8_EQ(v21 + 191, v21 + 4) || v271 != v21[5]))
    {
      __src[0] = 0;
      LODWORD(v382[0]) = 0;
      v380[0] = 0.0;
      API_Get_UTC_Cor(1, v380);
      GPS_To_Glon_Time(0, *(v21 + 13), *(v21 + 191), v380[0], v382, __src, v21 + 212);
      *(v21 + 845) = LOWORD(v382[0]);
      *(v21 + 846) = __src[0];
      *(v21 + 1688) = 1;
      v272 = v21[384];
      if (v21[421] < v272 && (*(v267 + 8972) - 2) <= 4)
      {
        v21[421] = v272;
      }
    }
  }

  NK_Publish_Nav_Soln(v345, v21, v22, v265);
  if (*(v21 + 1864) == 1)
  {
    *(v22 + 28) = 1;
  }

  NK_Validate_Fix(v345, v22, v21, v269);
  *v265 = *(v24 + 1940);
  v273 = *(v24 + 1941);
  *(v265 + 1) = v273;
  *(v265 + 19) = *(v24 + 977);
  if (v273 == 1)
  {
    *(v22 + 27344) = *(v265 + 368);
    *(v348 + 236) = *v21;
  }

  if (*v268)
  {
    if (*(v24 + 2541) <= 2u)
    {
      ++*(v348 + 8);
    }
  }

  else
  {
    *(v348 + 8) = 0;
  }

  if (*(v22 + 27344) < 10.0 || *(v348 + 8) < 4u)
  {
    if (*v348 >= 0x10u)
    {
      *(v348 + 60) = 0;
      *(v348 + 64) = *v21;
      *(v22 + 27184) = *(v21 + 208) * 299792458.0;
      *(v22 + 27192) = *(v21 + 231);
    }
  }

  else
  {
    *(v348 + 60) = 1;
  }

  v274 = v21[469];
  if (v274 && !*(v266 + 1))
  {
    *(v266 + 1) = v274;
  }

  *(v270 + 24) = *(v265 + 32);
  *(v270 + 8) = *(v265 + 40);
  *(v270 + 32) = *(v265 + 62);
  *(v270 + 16) = *(v265 + 60);
  *(v270 + 40) = *(v265 + 48);
  *v270 = *(v265 + 56);
  v275 = *v347;
  v276 = *(v24 + 365);
  if (*v347 > v276)
  {
    v275 = *(v24 + 365);
  }

  v277 = 168;
  if (*v347 > v276 && v275 <= *(v24 + 367))
  {
    v277 = 160;
  }

  v278 = 152;
  if (v275 > *(v24 + 367) || *v347 > v276)
  {
    v278 = v277;
  }

  *(v270 + 48) = *(v265 + v278);
  *(v270 + 82) = *(v265 + 210);
  *(v270 + 84) = *(v265 + 212);
  *(v270 + 80) = *(v265 + 208);
  *(v270 + 88) = *(v265 + 216);
  *(v270 + 76) = *(v265 + 204);
  *(v270 + 56) = *(v265 + 184);
  *(v270 + 4) = *(v21 + 24);
  if (*(v24 + 3340) == 1)
  {
    ++*(v269 + 1788);
  }

  v279 = *(v24 + 515);
  if (v279 >= 9999000.0)
  {
    v281 = v21[5];
    if (v281 >= 0xC)
    {
      __assert_rtn("Generate_DollarG_Message", "Nav_Kalman_Update.cpp", 3152, "FALSE");
    }

    v280 = dword_2990510D0[v281];
  }

  else
  {
    v280 = fmin(v279 * 0.00000333564095, 999999999.0);
  }

  v282 = g_CB_GDbg;
  v283 = 36;
  v284 = 1u;
  do
  {
    g_CB_GDbg = (v282 + 1);
    *v282 = v283;
    v282 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v282 = qword_2A1453F90;
      g_CB_GDbg = qword_2A1453F90;
    }

    v283 = aG_0[v284++];
  }

  while (v284 != 4);
  sprintf_2d(&g_CB_GDbg, ((*(v21 + 191) + 0.0005) * 1000.0));
  v285 = g_CB_GDbg++;
  *v285 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_1u(&g_CB_GDbg, v21[1]);
  v286 = g_CB_GDbg++;
  *v286 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v280);
  v287 = g_CB_GDbg++;
  *v287 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_1u(&g_CB_GDbg, *v21);
  v288 = g_CB_GDbg++;
  *v288 = 10;
  v289 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v289 = qword_2A1453F90;
    g_CB_GDbg = qword_2A1453F90;
  }

  *v289 = 0;
  GNB_Debug_Flush_Check();
  if (!*(v22 + 152))
  {
    *(v22 + 183) = *v325;
    *(v22 + 187) = *(v325 + 4);
  }

  result = NK_Set_Aid_Data(v22, v21, v22 + 280);
  v291 = v21[384];
  if (v291 >= 1)
  {
    result = Core_Save_ApxTime(*(v21 + 1540), v291, *(v21 + 771), v21[379], *(v21 + 191));
    v292 = *(v267 + 8972);
    if (v292 != 3 && (v292 - 7) >= 0xFFFFFFFB)
    {
      v293 = 0;
      LODWORD(v294) = 0;
      v295 = p_NV;
      v296 = *(v267 + 8984);
      v297 = p_NV + 168;
      *(p_NV + 168) = *(v267 + 8968);
      *(v295 + 184) = v296;
      v298 = 55665;
      do
      {
        v299 = *(v297 + v293) ^ BYTE1(v298);
        v298 = 52845 * (v298 + v299) + 22719;
        v294 = (v294 + v299);
        ++v293;
      }

      while (v293 != 24);
      *(v295 + 160) = v294;
    }
  }

  if (*(v270 + 16) == 1 && *(v270 + 32) >= 1717 && v21[384] >= 9 && *v21 != *(v332 + 4))
  {
    v300 = *(v21 + 191) * 1000.0;
    v301 = -0.5;
    if (v300 > 0.0)
    {
      v301 = 0.5;
    }

    v302 = v300 + v301;
    if (v302 <= 2147483650.0)
    {
      if (v302 >= -2147483650.0)
      {
        v303 = v302;
      }

      else
      {
        v303 = 0x80000000;
      }
    }

    else
    {
      v303 = 0x7FFFFFFF;
    }

    v310 = 0;
    LODWORD(v311) = 0;
    v312 = v303 - *v21;
    v313 = p_NV;
    v314 = p_NV + 0x8000;
    v315 = p_NV + 33200;
    *(p_NV + 33200) = v312;
    *(v313 + 33204) = *v343;
    v316 = 55665;
    do
    {
      v317 = *(v315 + v310) ^ BYTE1(v316);
      v316 = 52845 * (v316 + v317) + 22719;
      v311 = (v311 + v317);
      ++v310;
    }

    while (v310 != 16);
    *(v314 + 424) = v311;
  }

  v318 = v21[467];
  if (v318 == 3)
  {
    if (*v348 && v21[384] >= 3)
    {
      if (*(v24 + 527) < 10.0)
      {
        result = Core_Save_Clk_Drift(1, *(v21 + 191) + 604800 * *(v21 + 771), *(v21 + 208));
        *(v269 + 1712) = *(v21 + 208);
        v319 = *(v269 + 240) * 0.000000001;
        if (!*(v269 + 240))
        {
          v319 = 0.0000001;
        }

        *(v269 + 1720) = v319;
      }

      if (*(v24 + 511) < 400.0)
      {
        *(v348 + 28) = v21[378];
        v320 = *(v21 + 426);
        *(v22 + 27168) = *(v21 + 215);
        *(v22 + 27152) = v320;
      }
    }
  }

  else if (v318 <= 1)
  {
    if (*(v269 + 240))
    {
      *(v269 + 1720) = *(v269 + 240) * 0.000000001;
    }

    else if (*v268 >= 0x385u)
    {
      *(v269 + 1720) = 0x3EA0C6F7A0B5ED8ELL;
    }
  }

  if (v21[468] == 1 && *(v21 + 1540) == 1 && v21[384] >= 10 && v21[467] == 3 && *v348 >= 0xAu)
  {
    v321 = *(v21 + 207);
    if (fabs(v321) <= 0.000000066712819 && *(v24 + 511) <= 10.0 && *(v24 + 513) <= 10.0 && *(v24 + 517) <= 1.0)
    {
      result = Core_Save_Clk_L5L1(1, *(v21 + 191) + 604800 * *(v21 + 771), v321);
    }
  }

  v322 = *(v21 + 7493);
  *(a11 + 2080) = v21[14988];
  *(a11 + 2072) = v322;
  v323 = *(v21 + 14989);
  *(a11 + 2092) = v21[14991];
  *(a11 + 2084) = v323;
  v324 = *(v21 + 7496);
  *(a11 + 2104) = v21[14994];
  *(a11 + 2096) = v324;
  return result;
}