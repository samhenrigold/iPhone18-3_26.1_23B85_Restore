uint64_t sub_23670CFEC(uint64_t a1, char *__b, long double *a3, double *a4, uint64_t a5)
{
  v7 = *(a1 + 4) * *(a1 + 28);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v13 = *(a1 + 32);
  v9 = sub_23670BF70(1, v12, __b, v7, a4, v7 & 0x1FFFFFFFFFFFFFFFLL, &a4[v7], v7 & 0x1FFFFFFFFFFFFFFFLL, &a4[v7 + v7], a5 - 16 * v7);
  if (v7)
  {
    v10 = v7;
    do
    {
      *a3++ = exp((*a4 + a4[v10]) * 0.5);
      ++a4;
      --v7;
    }

    while (v7);
  }

  return v9;
}

uint64_t sub_23670D0B4(int a1, int a2, uint64_t *a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, char *__b, uint64_t a10, void *a11, uint64_t a12, double *a13, uint64_t a14, char *a15)
{
  v17 = a1;
  v18 = a15;
  v19 = &a15[8 * a2];
  v20 = (4 * a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = &v19[8 * a2];
  v21 = &v143[v20];
  v135 = 4 * a1 + 7;
  v146 = v135 & 0xFFFFFFFFFFFFFFF8;
  if (a1 <= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a1;
  }

  v138 = v22;
  if (a1 >= 1)
  {
    memset(__b, 255, 4 * a1);
  }

  v144 = &v21[v146];
  v23 = a11;
  if (a2 >= 1)
  {
    memset(a15, 255, 8 * a2);
  }

  v128 = a2;
  if (v17 >= 1)
  {
    memset_pattern16(a11, &unk_23681FBA0, 8 * v17);
    bzero(v144, 8 * v17);
  }

  v24 = &v144[8 * v17];
  v25 = __b;
  v26 = a7;
  if (a2 >= 1)
  {
    v27 = 0;
    v28 = *a3;
    do
    {
      v29 = v27++;
      v30 = a3[v27];
      while (v28 < v30)
      {
        v31 = *(a5 + 4 * v28);
        v32 = *(a7 + 8 * v28);
        if (v32 <= *&a11[v31])
        {
          *&a11[v31] = v32;
          *&__b[4 * v31] = v29;
          *&v144[8 * v31] = v28;
          v30 = a3[v27];
        }

        ++v28;
      }

      v28 = v30;
    }

    while (v27 != a2);
  }

  v33 = (v24 + v146);
  v145 = a3 + 1;
  if (v17 < 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v35 = v17;
    v36 = __b;
    v37 = &v21[v146];
    do
    {
      v38 = *v36;
      if (*v36 != -1)
      {
        *v36 = -1;
        if (*&a15[8 * v38] == -1 && (v17 < 0x33 || v145[v38] - a3[v38] <= (v17 / 0xAuLL)))
        {
          v34 = (v34 + 1);
          *v36 = v38;
          *&a15[8 * v38] = *v37;
        }
      }

      v37 += 8;
      v36 += 4;
      --v35;
    }

    while (v35);
  }

  v140 = v20;
  v142 = v19;
  if (v128 >= v17)
  {
    v39 = v17;
  }

  else
  {
    v39 = v128;
  }

  v133 = v39;
  if (v128 >= 1 && v34 != v39)
  {
    v40 = v34;
    bzero(v33, 8 * v128);
    v41 = a3;
    v42 = v19;
    v43 = v128;
    do
    {
      v44 = *v41++;
      *v42 = v44;
      v42 += 8;
      --v43;
    }

    while (v43);
    v45 = 0;
    v25 = __b;
    v26 = a7;
    v34 = v40;
    do
    {
      if (*&a15[8 * v45] == -1)
      {
        v46 = a3[v45];
        v47 = v145[v45];
        if (v46 < v47)
        {
          v48 = *(a5 + 4 * v46);
          v49 = *(a7 + 8 * v46) - *&a11[v48];
          v50 = v46 + 1;
          if (v46 + 1 < v47)
          {
            do
            {
              v51 = *(a5 + 4 * v50);
              v52 = *(a7 + 8 * v50) - *&a11[v51];
              if (v52 <= v49)
              {
                v53 = v52 != v49 || v52 == INFINITY;
                if (v53 || *&__b[4 * v51] == -1 && *&__b[4 * v48] != -1)
                {
                  v48 = *(a5 + 4 * v50);
                  v49 = *(a7 + 8 * v50) - *&a11[v51];
                  v46 = v50;
                }
              }

              ++v50;
            }

            while (v47 != v50);
          }

          *(v33 + v45) = v49;
          v54 = &__b[4 * v48];
          if (*v54 == -1)
          {
            v60 = v19;
LABEL_62:
            v34 = (v34 + 1);
            *&a15[8 * v45] = v46;
            *v54 = v45;
            *&v60[8 * v45] = v46 + 1;
          }

          else
          {
            while (v46 < v47)
            {
              v55 = *(a5 + 4 * v46);
              if (*(a7 + 8 * v46) - *&a11[v55] <= v49)
              {
                v56 = *&__b[4 * v55];
                v57 = *&v19[8 * v56];
                v58 = v145[v56];
                if (v57 < v58)
                {
                  while (1)
                  {
                    v59 = *(a5 + 4 * v57);
                    if ((*&__b[4 * v59] & 0x80000000) != 0 && *(a7 + 8 * v57) - *&a11[v59] <= *(v33 + v56))
                    {
                      break;
                    }

                    if (v58 == ++v57)
                    {
                      goto LABEL_58;
                    }
                  }

                  *&a15[8 * v56] = v57;
                  *&__b[4 * v59] = v56;
                  v60 = v19;
                  *&v19[8 * v56] = v57 + 1;
                  v54 = &__b[4 * v55];
                  goto LABEL_62;
                }

LABEL_58:
                *&v19[8 * v56] = v58;
                v47 = v145[v45];
              }

              ++v46;
            }
          }
        }
      }

      ++v45;
    }

    while (v45 != v128);
  }

  v61 = v133;
  if (v34 == v133)
  {
    goto LABEL_65;
  }

  v130 = v17;
  if (v17 >= 1)
  {
    v70 = 8 * v17;
    v71 = &a15[16 * v128];
    v72 = &v71[((2 * v135) & 0x7FFFFFFF0) + v140 + v70];
    v136 = v34;
    memset_pattern16(v72, &unk_23681FBA0, 8 * v130);
    v73 = v146 + v140 + v70;
    v17 = v130;
    v74 = &v71[v73];
    v19 = v142;
    memset(v74, 255, 4 * v130);
    v34 = v136;
    v26 = a7;
    v25 = __b;
  }

  if (v128 >= 1)
  {
    v75 = 0;
    v131 = v17;
    v147 = v138;
    v76 = v128;
    v127 = &a15[16 * v128 + v140];
    v137 = -1;
    v139 = -1;
    v61 = v34;
    v77 = a3;
    while (1)
    {
      if (*&v18[8 * v75] != -1)
      {
        goto LABEL_166;
      }

      *&v143[4 * v75] = -1;
      v78 = v77[v75];
      v79 = v145[v75];
      if (v78 >= v79)
      {
        LODWORD(v89) = 0;
        v81 = INFINITY;
        v82 = INFINITY;
      }

      else
      {
        v80 = 0;
        v81 = INFINITY;
        v82 = INFINITY;
        v83 = v137;
        v84 = v139;
        do
        {
          v85 = *(a5 + 4 * v78);
          v86 = *&a11[v85];
          v87 = *(v26 + 8 * v78) - v86;
          if (v87 < v82)
          {
            if (*&v25[4 * v85] == -1)
            {
              v82 = *(v26 + 8 * v78) - v86;
              v84 = v75;
              v83 = v78;
            }

            else
            {
              if (v87 < v81)
              {
                v81 = *(v26 + 8 * v78) - v86;
              }

              *(v33 + v85) = v87;
              *&v144[8 * v80++] = v78;
              v79 = v145[v75];
            }
          }

          ++v78;
        }

        while (v78 < v79);
        v139 = v84;
        v137 = v83;
        if (v80 >= 1)
        {
          v88 = 0;
          v89 = 0;
          v90 = v17;
          do
          {
            v91 = *&v144[8 * v88];
            v92 = *(a5 + 4 * v91);
            v93 = *(v33 + v92);
            if (v82 <= v93)
            {
              *(v33 + v92) = 0x7FF0000000000000;
            }

            else
            {
              if (v93 <= v81)
              {
                *&v21[4 * --v90] = v92;
                *(v24 + 4 * v92) = v90;
                v94 = v89;
              }

              else
              {
                v94 = (v89 + 1);
                *(v24 + 4 * v92) = v89;
                if (v89 < 1)
                {
                  *&v21[4 * v89] = v92;
                }

                else
                {
                  do
                  {
                    v95 = *&v21[4 * ((v89 + 1) >> 1) - 4];
                    if (v93 >= *(v33 + v95))
                    {
                      goto LABEL_100;
                    }

                    *&v21[4 * v89] = v95;
                    *(v24 + 4 * v95) = v89;
                    v111 = v89 > 2;
                    LODWORD(v89) = ((v89 + 1) >> 1) - 1;
                  }

                  while (v111);
                  LODWORD(v89) = 0;
LABEL_100:
                  *&v21[4 * v89] = v92;
                  *(v24 + 4 * v92) = v89;
                }
              }

              v96 = *&v25[4 * v92];
              *&v19[8 * v96] = v91;
              *&v143[4 * v96] = v75;
              v89 = v94;
            }

            ++v88;
          }

          while (v88 != v80);
          goto LABEL_110;
        }

        LODWORD(v89) = 0;
      }

      v90 = v17;
LABEL_110:
      v129 = v75;
      v149[0] = v89;
      v134 = v61;
      if (v61 < 1)
      {
        LODWORD(v97) = v130;
        goto LABEL_150;
      }

      v141 = 0;
      v97 = v131;
      while (v90 != v97)
      {
LABEL_119:
        v100 = v97 - 1;
        v101 = *&v21[4 * v97 - 4];
        v102 = *(v33 + v101);
        if (v102 >= v82)
        {
          goto LABEL_149;
        }

        v103 = *&v25[4 * v101];
        v104 = a3[v103];
        v105 = v145[v103];
        if (v104 < v105)
        {
          v106 = v102 - *(v26 + 8 * *&a15[8 * v103]) + *&a11[v101];
          do
          {
            v107 = *(a5 + 4 * v104);
            v108 = *(v24 + 4 * v107);
            if (v100 > v108)
            {
              v109 = *&a11[v107];
              v110 = v106 + *(v26 + 8 * v104) - v109;
              if (v110 < v82)
              {
                if (*&v25[4 * v107] == -1)
                {
                  v82 = v106 + *(v26 + 8 * v104) - v109;
                  v139 = v103;
                  v137 = v104;
                }

                else
                {
                  v111 = *(v33 + v107) > v110 && v108 < v90;
                  if (v111)
                  {
                    *(v33 + v107) = v110;
                    if (v110 <= v81)
                    {
                      if (v108 != -1)
                      {
                        sub_23670DB6C(v108, v149, v21, v131 & 0x3FFFFFFFFFFFFFFFLL, v33, v147 & 0x1FFFFFFFFFFFFFFFLL, v24);
                        v26 = a7;
                        v25 = __b;
                      }

                      *&v21[4 * --v90] = v107;
                      *(v24 + 4 * v107) = v90;
                    }

                    else
                    {
                      if (v108 == -1)
                      {
                        LODWORD(v108) = v149[0]++;
                        *(v24 + 4 * v107) = v108;
                      }

                      if (v108 < 1)
                      {
                        *&v21[4 * v108] = v107;
                      }

                      else
                      {
                        while (1)
                        {
                          v112 = *&v21[4 * ((v108 + 1) >> 1) - 4];
                          if (v110 >= *(v33 + v112))
                          {
                            break;
                          }

                          *&v21[4 * v108] = v112;
                          *(v24 + 4 * v112) = v108;
                          v111 = v108 > 2;
                          LODWORD(v108) = ((v108 + 1) >> 1) - 1;
                          if (!v111)
                          {
                            LODWORD(v108) = 0;
                            break;
                          }
                        }

                        *&v21[4 * v108] = v107;
                        *(v24 + 4 * v107) = v108;
                      }
                    }

                    v113 = *&v25[4 * v107];
                    *&v142[8 * v113] = v104;
                    *&v143[4 * v113] = v103;
                    v105 = v145[v103];
                  }
                }
              }
            }

            ++v104;
          }

          while (v104 < v105);
        }

        v97 = v100;
        if (++v141 >= v134)
        {
          LODWORD(v97) = v100;
LABEL_149:
          v19 = v142;
          goto LABEL_150;
        }
      }

      if (!v149[0])
      {
        LODWORD(v97) = v90;
        goto LABEL_149;
      }

      v81 = *(v33 + *v21);
      v19 = v142;
      if (v81 < v82)
      {
        if (v149[0] >= 1)
        {
          v98 = &v127[4 * v90 - 4];
          do
          {
            v99 = *v21;
            if (*(v33 + *v21) > v81)
            {
              break;
            }

            sub_23670DB6C(0, v149, v21, v131 & 0x3FFFFFFFFFFFFFFFLL, v33, v147 & 0x1FFFFFFFFFFFFFFFLL, v24);
            v26 = a7;
            v25 = __b;
            --v90;
            *v98 = v99;
            v98 -= 4;
            *(v24 + 4 * v99) = v90;
          }

          while (v149[0] > 0);
        }

        goto LABEL_119;
      }

      LODWORD(v97) = v90;
LABEL_150:
      if (v82 == INFINITY)
      {
        v77 = a3;
        v61 = v134;
      }

      else
      {
        *&v25[4 * *(a5 + 4 * v137)] = v139;
        *&a15[8 * v139] = v137;
        if ((v134 & 0x80000000) == 0)
        {
          v114 = v134 + 1;
          v115 = v139;
          do
          {
            v116 = *&v143[4 * v115];
            if (v116 == -1)
            {
              break;
            }

            v117 = *&v19[8 * v115];
            *&v25[4 * *(a5 + 4 * v117)] = v116;
            *&a15[8 * v116] = v117;
            v115 = v116;
            --v114;
          }

          while (v114);
        }

        if (v97 < v130)
        {
          v118 = &v127[4 * v97];
          v119 = v131 - v97;
          do
          {
            v120 = *v118;
            v118 += 4;
            *&a11[v120] = *&a11[v120] + *(v33 + v120) - v82;
            --v119;
          }

          while (v119);
        }

        v61 = v134 + 1;
        v77 = a3;
      }

      v75 = v129;
      if (v90 < v130)
      {
        v121 = &v127[4 * v90];
        v122 = v131 - v90;
        do
        {
          v123 = *v121;
          v121 += 4;
          *(v33 + v123) = 0x7FF0000000000000;
          *(v24 + 4 * v123) = -1;
          --v122;
        }

        while (v122);
      }

      v124 = v149[0];
      v125 = v21;
      if (v149[0] >= 1)
      {
        do
        {
          v126 = *v125;
          v125 += 4;
          *(v33 + v126) = 0x7FF0000000000000;
          *(v24 + 4 * v126) = -1;
          --v124;
        }

        while (v124);
      }

      v17 = v130;
      v18 = a15;
      v76 = v128;
LABEL_166:
      if (++v75 == v76)
      {
LABEL_65:
        if (v128 >= 1)
        {
          v63 = v128;
          do
          {
            v65 = *v18;
            v18 += 8;
            v64 = v65;
            if (v65 == -1)
            {
              v66 = 0.0;
            }

            else
            {
              v66 = *(v26 + 8 * v64) - *&a11[*(a5 + 4 * v64)];
            }

            *a13++ = v66;
            --v63;
          }

          while (v63);
        }

        v34 = v61;
        break;
      }
    }
  }

  if (v17 >= 1)
  {
    v67 = v17;
    do
    {
      v68 = *v25;
      v25 += 4;
      if (v68 == -1)
      {
        *v23 = 0;
      }

      ++v23;
      --v67;
    }

    while (v67);
  }

  return v34;
}

uint64_t sub_23670DB6C(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2 - 1;
  if (v7 == result)
  {
    *a2 = result;
    return result;
  }

  *a2 = v7;
  v8 = *(a3 + 4 * v7);
  v9 = *(a5 + 8 * v8);
  if (result < 1)
  {
    *(a3 + 4 * result) = v8;
    v14 = (a7 + 4 * v8);
    *v14 = result;
LABEL_12:
    v15 = 2 * result;
    v16 = *a2 - 1;
    if (2 * result < v16)
    {
      while (1)
      {
        v17 = v15 | 1;
        v18 = *(a5 + 8 * *(a3 + 4 * v17));
        if (v17 < v16)
        {
          v19 = v15 + 2;
          v20 = *(a5 + 8 * *(a3 + 4 * v19));
          if (v18 <= v20)
          {
            v17 = v17;
          }

          else
          {
            v17 = v19;
          }

          if (v18 > v20)
          {
            v18 = *(a5 + 8 * *(a3 + 4 * v19));
          }
        }

        if (v9 <= v18)
        {
          break;
        }

        v21 = *(a3 + 4 * v17);
        *(a3 + 4 * result) = v21;
        *(a7 + 4 * v21) = result;
        v15 = 2 * v17;
        v16 = *a2 - 1;
        result = v17;
        if (2 * v17 >= v16)
        {
          goto LABEL_24;
        }
      }
    }

    LODWORD(v17) = result;
LABEL_24:
    *(a3 + 4 * v17) = v8;
    *v14 = v17;
    return result;
  }

  v10 = result;
  while (1)
  {
    v11 = (v10 + 1) / 2 - 1;
    v12 = *(a3 + 4 * v11);
    if (v9 >= *(a5 + 8 * v12))
    {
      break;
    }

    *(a3 + 4 * v10) = v12;
    *(a7 + 4 * v12) = v10;
    v13 = v10 <= 2;
    v10 = (v10 + 1) / 2 - 1;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v11 = v10;
LABEL_11:
  *(a3 + 4 * v11) = v8;
  v14 = (a7 + 4 * v8);
  *v14 = v11;
  if (v11 == result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_23670DC88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = 126 - 2 * __clz(a2);
  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return sub_23670DEC4(a1, (a1 + 4 * a2), &v6, v4, 1);
}

uint64_t sub_23670DCD0(unsigned int a1, uint64_t a2, _DWORD *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v8 = a1;
  if (a1 >= 1)
  {
    v9 = 0;
    v10 = vdupq_n_s64(a1 - 1);
    v11 = xmmword_23681F920;
    v12 = a4 + 1;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v10, v11));
      if (v14.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v14.i8[4])
      {
        *v12 = v9 + 1;
      }

      v9 += 2;
      v11 = vaddq_s64(v11, v13);
      v12 += 2;
    }

    while (((a1 + 1) & 0xFFFFFFFE) != v9);
  }

  v28 = a3;
  v15 = 126 - 2 * __clz(a1);
  if (a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_23670EDF8(a4, &a4[a1], &v28, v16, 1);
  if (a1 < 1)
  {
    v28 = v5;
    return sub_23670EDF8(v4, &v4[a1], &v28, v16, 1);
  }

  else
  {
    v17 = 0;
    do
    {
      v4[v17] = *(a2 + 8 * v4[v17]);
      ++v17;
    }

    while (a1 != v17);
    v18 = 0;
    do
    {
      *(a2 + v18 * 8) = v4[v18];
      ++v18;
    }

    while (v8 != v18);
    v19 = 0;
    v20 = xmmword_23681F920;
    v21 = vdupq_n_s64(v8 - 1);
    v22 = vdupq_n_s64(2uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v21, v20));
      if (v23.i8[0])
      {
        v4[v19] = v19;
      }

      if (v23.i8[4])
      {
        v4[v19 + 1] = v19 + 1;
      }

      v19 += 2;
      v20 = vaddq_s64(v20, v22);
    }

    while (((v8 + 1) & 0xFFFFFFFE) != v19);
    v28 = v5;
    result = sub_23670EDF8(v4, &v4[a1], &v28, v16, 1);
    v25 = v8;
    v26 = v4;
    do
    {
      *v26 = v5[*v26];
      ++v26;
      --v25;
    }

    while (v25);
    do
    {
      v27 = *v4++;
      *v5++ = v27;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_23670DEC4(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v81 = *(a2 - 1);
        v82 = *v10;
        if (*(*a3 + 4 * v81) >= *(*a3 + 4 * v82))
        {
          return result;
        }

        *v10 = v81;
LABEL_176:
        *(a2 - 1) = v82;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v88 = v10 + 1;
      v89 = v10[1];
      v90 = v10 + 2;
      v91 = v10[2];
      v92 = *v10;
      v93 = *a3;
      v94 = *(*a3 + 4 * v89);
      v95 = *v10;
      result = *(*a3 + 4 * v95);
      v96 = v91;
      v97 = *(*a3 + 4 * v91);
      if (v94 >= result)
      {
        if (v97 < v94)
        {
          *v88 = v91;
          *v90 = v89;
          result = *(v93 + 4 * v91);
          v95 = v89;
          v98 = v10;
          v99 = v10 + 1;
          v96 = v89;
          if (result < *(v93 + 4 * v92))
          {
            goto LABEL_178;
          }

LABEL_180:
          v144 = *(a2 - 1);
          if (*(v93 + 4 * v144) < *(v93 + 4 * v96))
          {
            *v90 = v144;
            *(a2 - 1) = v89;
            v145 = *v90;
            v146 = *v88;
            if (*(v93 + 4 * v145) < *(v93 + 4 * v146))
            {
              v10[1] = v145;
              v10[2] = v146;
              v147 = *v10;
              if (*(v93 + 4 * v145) < *(v93 + 4 * v147))
              {
                *v10 = v145;
                v10[1] = v147;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v97 < v94)
        {
          v98 = v10;
          v99 = v10 + 2;
          v89 = *v10;
          goto LABEL_178;
        }

        *v10 = v89;
        v10[1] = v92;
        result = *(v93 + 4 * v91);
        v98 = v10 + 1;
        v99 = v10 + 2;
        v89 = v92;
        if (result < *(v93 + 4 * v92))
        {
LABEL_178:
          *v98 = v91;
          *v99 = v92;
          v96 = v95;
          goto LABEL_180;
        }
      }

      v89 = v91;
      goto LABEL_180;
    }

    if (v11 == 5)
    {

      return sub_23670E92C(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v100 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v101 = 0;
            v102 = *a3;
            v103 = v10;
            do
            {
              v104 = v103[1];
              v105 = *v103;
              v103 = v100;
              if (*(v102 + 4 * v104) < *(v102 + 4 * v105))
              {
                v106 = v101;
                while (1)
                {
                  *(v10 + v106 + 4) = v105;
                  if (!v106)
                  {
                    break;
                  }

                  v105 = *(v10 + v106 - 4);
                  v106 -= 4;
                  if (*(v102 + 4 * v104) >= *(v102 + 4 * v105))
                  {
                    v107 = (v10 + v106 + 4);
                    goto LABEL_124;
                  }
                }

                v107 = v10;
LABEL_124:
                *v107 = v104;
              }

              v100 = v103 + 1;
              v101 += 4;
            }

            while (v103 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v139 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v140 = *a3;
          do
          {
            v141 = v9[1];
            v142 = *v9;
            v9 = v139;
            if (*(v140 + 4 * v141) < *(v140 + 4 * v142))
            {
              do
              {
                *v139 = v142;
                v142 = *(v139 - 2);
                --v139;
              }

              while (*(v140 + 4 * v141) < *(v140 + 4 * v142));
              *v139 = v141;
            }

            v139 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v108 = (v11 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v10[v112];
            v114 = *v113;
            if (2 * v111 + 2 < v11 && *(v109 + 4 * v114) < *(v109 + 4 * v113[1]))
            {
              v114 = v113[1];
              ++v113;
              v112 = 2 * v111 + 2;
            }

            v115 = &v10[v111];
            v116 = *v115;
            if (*(v109 + 4 * v114) >= *(v109 + 4 * *v115))
            {
              do
              {
                v117 = v113;
                *v115 = v114;
                if (v108 < v112)
                {
                  break;
                }

                v118 = (2 * v112) | 1;
                v113 = &v10[v118];
                v112 = 2 * v112 + 2;
                v114 = *v113;
                if (v112 >= v11)
                {
                  v112 = v118;
                }

                else if (*(v109 + 4 * v114) >= *(v109 + 4 * v113[1]))
                {
                  v112 = v118;
                }

                else
                {
                  v114 = v113[1];
                  ++v113;
                }

                v115 = v117;
              }

              while (*(v109 + 4 * v114) >= *(v109 + 4 * v116));
              *v117 = v116;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v119 = 0;
          v120 = *v10;
          v121 = *a3;
          v122 = v10;
          do
          {
            v123 = &v122[v119];
            v124 = v123 + 1;
            v125 = v123[1];
            result = 2 * v119;
            v126 = (2 * v119) | 1;
            v119 = 2 * v119 + 2;
            if (v119 >= v11)
            {
              v119 = v126;
            }

            else
            {
              v128 = v123[2];
              v127 = v123 + 2;
              result = v128;
              if (*(v121 + 4 * v125) >= *(v121 + 4 * v128))
              {
                v119 = v126;
              }

              else
              {
                v125 = result;
                v124 = v127;
              }
            }

            *v122 = v125;
            v122 = v124;
          }

          while (v119 <= ((v11 - 2) >> 1));
          if (v124 == --a2)
          {
            *v124 = v120;
          }

          else
          {
            *v124 = *a2;
            *a2 = v120;
            v129 = (v124 - v10 + 4) >> 2;
            v130 = v129 < 2;
            v131 = v129 - 2;
            if (!v130)
            {
              v132 = v131 >> 1;
              v133 = &v10[v132];
              v134 = *v133;
              v135 = *v124;
              if (*(v121 + 4 * v134) < *(v121 + 4 * *v124))
              {
                do
                {
                  v136 = v133;
                  *v124 = v134;
                  if (!v132)
                  {
                    break;
                  }

                  v132 = (v132 - 1) >> 1;
                  v133 = &v10[v132];
                  v134 = *v133;
                  v124 = v136;
                }

                while (*(v121 + 4 * v134) < *(v121 + 4 * v135));
                *v136 = v135;
              }
            }
          }

          v130 = v11-- <= 2;
        }

        while (!v130);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      if (v19 >= *(v14 + 4 * *v10))
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v12;
          v24 = *v10;
          if (*(v14 + 4 * v23) < *(v14 + 4 * v24))
          {
            *v10 = v23;
            *v12 = v24;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 4 * v27) < *(v14 + 4 * v18))
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 4 * v29);
      v32 = *(a2 - 2);
      v33 = *(v14 + 4 * v32);
      if (v31 >= *(v14 + 4 * v30))
      {
        if (v33 < v31)
        {
          *v28 = v32;
          *(a2 - 2) = v29;
          v34 = *v28;
          v35 = v10[1];
          if (*(v14 + 4 * v34) < *(v14 + 4 * v35))
          {
            v10[1] = v34;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v10[1] = v32;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 4 * v37) < *(v14 + 4 * v30))
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v14 + 4 * v43);
      if (v42 >= *(v14 + 4 * v41))
      {
        if (v44 < v42)
        {
          *v38 = v43;
          *(a2 - 3) = v39;
          v45 = *v38;
          v46 = v10[2];
          if (*(v14 + 4 * v45) < *(v14 + 4 * v46))
          {
            v10[2] = v45;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v44 < v42)
        {
          v10[2] = v43;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 4 * v47) < *(v14 + 4 * v41))
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + 4 * v48);
      v51 = *v38;
      v52 = *(v14 + 4 * *v38);
      if (v50 >= *(v14 + 4 * *v28))
      {
        if (v52 >= v50)
        {
          goto LABEL_56;
        }

        *v13 = v51;
        *v38 = v48;
        v38 = v13;
        LODWORD(v48) = v49;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        LODWORD(v48) = v51;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v49;
LABEL_56:
          v53 = *v10;
          *v10 = v48;
          *v13 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v38 = v49;
      goto LABEL_56;
    }

    v20 = *v10;
    v21 = *v13;
    v22 = *(v14 + 4 * v20);
    if (v22 >= *(v14 + 4 * *v13))
    {
      if (v16 < v22)
      {
        *v10 = v15;
        *(a2 - 1) = v20;
        v25 = *v10;
        v26 = *v13;
        if (*(v14 + 4 * v25) < *(v14 + 4 * v26))
        {
          *v13 = v25;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v22)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v10 = v21;
    v36 = *(a2 - 1);
    if (*(v14 + 4 * v36) < *(v14 + 4 * v21))
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v10;
    if (a5)
    {
      v55 = *(v14 + 4 * v54);
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v10[++v56];
      }

      while (*(v14 + 4 * v57) < v55);
      v58 = &v10[v56];
      v59 = a2;
      if (v56 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v14 + 4 * v61) >= v55);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v14 + 4 * v60) >= v55);
      }

      if (v58 >= v59)
      {
        v69 = v58 - 1;
      }

      else
      {
        v62 = *v59;
        v63 = v57;
        v64 = v58;
        v65 = v59;
        do
        {
          *v64 = v62;
          *v65 = v63;
          v66 = *(v14 + 4 * v54);
          do
          {
            v67 = v64[1];
            ++v64;
            v63 = v67;
          }

          while (*(v14 + 4 * v67) < v66);
          do
          {
            v68 = *--v65;
            v62 = v68;
          }

          while (*(v14 + 4 * v68) >= v66);
        }

        while (v64 < v65);
        v69 = v64 - 1;
      }

      if (v69 != v10)
      {
        *v10 = *v69;
      }

      *v69 = v54;
      if (v58 < v59)
      {
        goto LABEL_81;
      }

      v70 = sub_23670EAC0(v10, v69, a3);
      v10 = v69 + 1;
      result = sub_23670EAC0(v69 + 1, a2, a3);
      if (result)
      {
        a2 = v69;
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        result = sub_23670DEC4(v9, v69, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v69 + 1;
      }
    }

    else
    {
      v55 = *(v14 + 4 * v54);
      if (*(v14 + 4 * *(v10 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v14 + 4 * *(a2 - 1)))
      {
        v72 = (v10 + 1);
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v72 += 4;
        }

        while (v55 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v55 >= *(v14 + 4 * v71));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v55 < *(v14 + 4 * v74));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          v77 = *(v14 + 4 * v54);
          do
          {
            v78 = v10[1];
            ++v10;
            v75 = v78;
          }

          while (v77 >= *(v14 + 4 * v78));
          do
          {
            v79 = *--v73;
            v76 = v79;
          }

          while (v77 < *(v14 + 4 * v79));
        }

        while (v10 < v73);
      }

      v80 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v80;
      }

      a5 = 0;
      *v80 = v54;
    }
  }

  LODWORD(v82) = *v10;
  v83 = v10[1];
  v84 = *a3;
  v85 = *(*a3 + 4 * v83);
  v86 = *(a2 - 1);
  v87 = *(*a3 + 4 * v86);
  if (v85 < *(*a3 + 4 * *v10))
  {
    if (v87 >= v85)
    {
      *v10 = v83;
      v10[1] = v82;
      v143 = *(a2 - 1);
      if (*(v84 + 4 * v143) >= *(v84 + 4 * v82))
      {
        return result;
      }

      v10[1] = v143;
    }

    else
    {
      *v10 = v86;
    }

    goto LABEL_176;
  }

  if (v87 < v85)
  {
    v10[1] = v86;
    *(a2 - 1) = v83;
    v138 = *v10;
    v137 = v10[1];
    if (*(v84 + 4 * v137) < *(v84 + 4 * v138))
    {
      *v10 = v137;
      v10[1] = v138;
    }
  }

  return result;
}

int *sub_23670E92C(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * *a2);
  v10 = *a3;
  v11 = *(*a6 + 4 * *a3);
  if (v9 >= *(*a6 + 4 * *result))
  {
    if (v11 >= v9)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(v8 + 4 * v13) >= *(v8 + 4 * v14))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 >= v9)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(v8 + 4 * *a3) < *(v8 + 4 * v7))
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(v8 + 4 * v15) < *(v8 + 4 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(v8 + 4 * v16) < *(v8 + 4 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(v8 + 4 * v18) < *(v8 + 4 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(v8 + 4 * v20) < *(v8 + 4 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(v8 + 4 * v22) < *(v8 + 4 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(v8 + 4 * v24) < *(v8 + 4 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(v8 + 4 * v26) < *(v8 + 4 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_23670EAC0(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      LODWORD(v5) = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 4 * v6);
      v9 = *(a2 - 1);
      v10 = *(*a3 + 4 * v9);
      if (v8 >= *(*a3 + 4 * *a1))
      {
        if (v10 < v8)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v35 = *a1;
          v34 = a1[1];
          if (*(v7 + 4 * v34) < *(v7 + 4 * v35))
          {
            *a1 = v34;
            a1[1] = v35;
          }
        }

        return 1;
      }

      if (v10 < v8)
      {
        *a1 = v9;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v44 = *(a2 - 1);
      if (*(v7 + 4 * v44) < *(v7 + 4 * v5))
      {
        a1[1] = v44;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_23670E92C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 4 * v23);
    v29 = *a1;
    v30 = v25;
    v31 = *(*a3 + 4 * v25);
    if (v28 >= *(*a3 + 4 * v29))
    {
      if (v31 < v28)
      {
        *v22 = v25;
        *v24 = v23;
        v29 = v23;
        v32 = a1;
        v33 = a1 + 1;
        v30 = v23;
        if (*(v27 + 4 * v25) >= *(v27 + 4 * v26))
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v31 < v28)
      {
        v32 = a1;
        v33 = a1 + 2;
        v23 = *a1;
LABEL_44:
        *v32 = v25;
        *v33 = v26;
        v30 = v29;
LABEL_46:
        v45 = *(a2 - 1);
        if (*(v27 + 4 * v45) < *(v27 + 4 * v30))
        {
          *v24 = v45;
          *(a2 - 1) = v23;
          v46 = *v24;
          v47 = *v22;
          if (*(v27 + 4 * v46) < *(v27 + 4 * v47))
          {
            a1[1] = v46;
            a1[2] = v47;
            v48 = *a1;
            if (*(v27 + 4 * v46) < *(v27 + 4 * v48))
            {
              *a1 = v46;
              a1[1] = v48;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v32 = a1 + 1;
      v33 = a1 + 2;
      v23 = v26;
      if (*(v27 + 4 * v25) < *(v27 + 4 * v26))
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v12 = a1[2];
  v13 = a1[1];
  v14 = *a3;
  v15 = *(*a3 + 4 * v13);
  v16 = *a1;
  v17 = *(*a3 + 4 * v12);
  if (v15 >= *(*a3 + 4 * *a1))
  {
    if (v17 >= v15)
    {
      goto LABEL_26;
    }

    a1[1] = v12;
    *v11 = v13;
    v20 = *(v14 + 4 * v12);
    v21 = *(v14 + 4 * v16);
    v18 = a1;
    v19 = a1 + 1;
LABEL_24:
    if (v20 >= v21)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v16;
    v20 = *(v14 + 4 * v12);
    v21 = *(v14 + 4 * v16);
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v18 = v12;
  *v19 = v16;
LABEL_26:
  v36 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v37 = 0;
  for (i = 12; ; i += 4)
  {
    v39 = *v36;
    v40 = *v11;
    if (*(v14 + 4 * *v36) < *(v14 + 4 * v40))
    {
      v41 = i;
      while (1)
      {
        *(a1 + v41) = v40;
        v42 = v41 - 4;
        if (v41 == 4)
        {
          break;
        }

        v40 = *(a1 + v41 - 8);
        v41 -= 4;
        if (*(v14 + 4 * v39) >= *(v14 + 4 * v40))
        {
          v43 = (a1 + v42);
          goto LABEL_34;
        }
      }

      v43 = a1;
LABEL_34:
      *v43 = v39;
      if (++v37 == 8)
      {
        break;
      }
    }

    v11 = v36++;
    if (v36 == a2)
    {
      return 1;
    }
  }

  return v36 + 1 == a2;
}

uint64_t sub_23670EDF8(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v89 = *(a2 - 1);
        v90 = *v10;
        if (*(*a3 + 4 * v89) >= *(*a3 + (*v10 << 32 >> 30)))
        {
          return result;
        }

        *v10 = v89;
LABEL_175:
        *(a2 - 1) = v90;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return sub_23670F89C(v10, v10 + 1, v10 + 2, a2 - 1, a3);
    }

    if (v11 == 5)
    {
      result = sub_23670F89C(v10, v10 + 1, v10 + 2, v10 + 3, a3);
      v81 = *(a2 - 1);
      v82 = v10[3];
      v83 = *a3;
      if (*(*a3 + 4 * v81) < *(*a3 + 4 * v82))
      {
        v10[3] = v81;
        *(a2 - 1) = v82;
        v85 = v10[2];
        v84 = v10[3];
        v86 = *(v83 + 4 * v84);
        if (v86 < *(v83 + 4 * v85))
        {
          v10[2] = v84;
          v10[3] = v85;
          v87 = v10[1];
          if (v86 < *(v83 + 4 * v87))
          {
            v10[1] = v84;
            v10[2] = v87;
            v88 = *v10;
            if (v86 < *(v83 + (*v10 << 32 >> 30)))
            {
              *v10 = v84;
              v10[1] = v88;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v97 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v98 = 0;
            v99 = *a3;
            v100 = v10;
            do
            {
              v102 = *v100;
              v101 = v100[1];
              v100 = v97;
              v103 = *(v99 + 4 * v101);
              if (v103 < *(v99 + 4 * v102))
              {
                v104 = v98;
                while (1)
                {
                  *(v10 + v104 + 8) = v102;
                  if (!v104)
                  {
                    break;
                  }

                  v102 = *(v10 + v104 - 8);
                  v104 -= 8;
                  if (v103 >= *(v99 + 4 * v102))
                  {
                    v105 = (v10 + v104 + 8);
                    goto LABEL_125;
                  }
                }

                v105 = v10;
LABEL_125:
                *v105 = v101;
              }

              v97 = v100 + 1;
              v98 += 8;
            }

            while (v100 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v139 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v140 = *a3;
          do
          {
            v142 = *v9;
            v141 = v9[1];
            v9 = v139;
            v143 = *(v140 + 4 * v141);
            if (v143 < *(v140 + 4 * v142))
            {
              v144 = v9;
              do
              {
                *v144 = v142;
                v142 = *(v144 - 2);
                --v144;
              }

              while (v143 < *(v140 + 4 * v142));
              *v144 = v141;
            }

            v139 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v106 = (v11 - 2) >> 1;
        v107 = *a3;
        v108 = v106;
        do
        {
          v109 = v108;
          if (v106 >= v108)
          {
            v110 = (2 * v108) | 1;
            v111 = &v10[v110];
            v112 = *v111;
            if (2 * v109 + 2 < v11 && *(v107 + 4 * v112) < *(v107 + 4 * v111[1]))
            {
              v112 = v111[1];
              ++v111;
              v110 = 2 * v109 + 2;
            }

            v113 = &v10[v109];
            v114 = *v113;
            v115 = *(v107 + (*v113 << 32 >> 30));
            if (*(v107 + 4 * v112) >= v115)
            {
              do
              {
                v116 = v111;
                *v113 = v112;
                if (v106 < v110)
                {
                  break;
                }

                v117 = (2 * v110) | 1;
                v111 = &v10[v117];
                v110 = 2 * v110 + 2;
                v112 = *v111;
                if (v110 >= v11)
                {
                  v110 = v117;
                }

                else if (*(v107 + 4 * v112) >= *(v107 + 4 * v111[1]))
                {
                  v110 = v117;
                }

                else
                {
                  v112 = v111[1];
                  ++v111;
                }

                v113 = v116;
              }

              while (*(v107 + 4 * v112) >= v115);
              *v116 = v114;
            }
          }

          v108 = v109 - 1;
        }

        while (v109);
        do
        {
          v118 = 0;
          v119 = *v10;
          v120 = *a3;
          v121 = v10;
          do
          {
            v122 = &v121[v118];
            v123 = v122 + 1;
            v124 = v122[1];
            result = 2 * v118;
            v125 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 >= v11)
            {
              v118 = v125;
            }

            else
            {
              v127 = v122[2];
              v126 = v122 + 2;
              result = v127;
              if (*(v120 + 4 * v124) >= *(v120 + 4 * v127))
              {
                v118 = v125;
              }

              else
              {
                v124 = result;
                v123 = v126;
              }
            }

            *v121 = v124;
            v121 = v123;
          }

          while (v118 <= ((v11 - 2) >> 1));
          if (v123 == --a2)
          {
            *v123 = v119;
          }

          else
          {
            *v123 = *a2;
            *a2 = v119;
            v128 = (v123 - v10 + 8) >> 3;
            v129 = v128 < 2;
            v130 = v128 - 2;
            if (!v129)
            {
              v131 = v130 >> 1;
              v132 = &v10[v131];
              v133 = *v132;
              v134 = *v123;
              v135 = *(v120 + (*v123 << 32 >> 30));
              if (*(v120 + (*v132 << 32 >> 30)) < v135)
              {
                do
                {
                  v136 = v132;
                  *v123 = v133;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = &v10[v131];
                  v133 = *v132;
                  v123 = v136;
                }

                while (*(v120 + (*v132 << 32 >> 30)) < v135);
                *v136 = v134;
              }
            }
          }

          v129 = v11-- <= 2;
        }

        while (!v129);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + (*v12 << 32 >> 30));
      v20 = *(v14 + (*v10 << 32 >> 30));
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v10;
          if (*(v14 + (*v12 << 32 >> 30)) < *(v14 + (*v10 << 32 >> 30)))
          {
            *v10 = *v12;
            *v12 = v25;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 4 * v27) < v20)
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 4 * v29);
      v32 = *(v14 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v14 + 4 * v33);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v10[1];
          if (*(v14 + (*v28 << 32 >> 30)) < *(v14 + 4 * v35))
          {
            v10[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v10[1] = v33;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 4 * v37) < v32)
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 4 * v40);
      v43 = *(v14 + 4 * v41);
      v44 = *(a2 - 3);
      v45 = *(v14 + 4 * v44);
      if (v42 >= v43)
      {
        if (v45 < v42)
        {
          *v38 = v44;
          *(a2 - 3) = v39;
          v46 = v10[2];
          if (*(v14 + (*v38 << 32 >> 30)) < *(v14 + 4 * v46))
          {
            v10[2] = *v38;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v45 < v42)
        {
          v10[2] = v44;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 4 * v47) < v43)
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + (*v13 << 32 >> 30));
      v51 = *(v14 + (*v28 << 32 >> 30));
      v52 = *v38;
      v53 = *(v14 + (*v38 << 32 >> 30));
      if (v50 >= v51)
      {
        if (v53 >= v50)
        {
          goto LABEL_56;
        }

        *v13 = v52;
        *v38 = v48;
        v38 = v13;
        v48 = v49;
        if (v53 >= v51)
        {
          v48 = v52;
          goto LABEL_56;
        }
      }

      else if (v53 >= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        v48 = v52;
        if (v53 >= v51)
        {
          v48 = v49;
LABEL_56:
          v54 = *v10;
          *v10 = v48;
          *v13 = v54;
          goto LABEL_57;
        }
      }

      *v28 = v52;
      *v38 = v49;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(v14 + (*v10 << 32 >> 30));
    v24 = *(v14 + (*v13 << 32 >> 30));
    if (v23 >= v24)
    {
      if (v16 < v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v26 = *v13;
        if (*(v14 + (*v10 << 32 >> 30)) < *(v14 + (*v13 << 32 >> 30)))
        {
          *v13 = *v10;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 >= v23)
    {
      *v13 = v21;
      *v10 = v22;
      v36 = *(a2 - 1);
      if (*(v14 + 4 * v36) >= v24)
      {
        goto LABEL_57;
      }

      *v10 = v36;
    }

    else
    {
      *v13 = v15;
    }

    *(a2 - 1) = v22;
LABEL_57:
    --a4;
    v55 = *v10;
    v56 = *v10 << 32 >> 30;
    if ((a5 & 1) != 0 || (v57 = *(v14 + v56), *(v14 + (*(v10 - 1) << 32 >> 30)) < v57))
    {
      v58 = 0;
      v59 = *(v14 + v56);
      do
      {
        v60 = v10[++v58];
      }

      while (*(v14 + 4 * v60) < v59);
      v61 = &v10[v58];
      v62 = a2;
      if (v58 == 1)
      {
        v62 = a2;
        do
        {
          if (v61 >= v62)
          {
            break;
          }

          v64 = *--v62;
        }

        while (*(v14 + 4 * v64) >= v59);
      }

      else
      {
        do
        {
          v63 = *--v62;
        }

        while (*(v14 + 4 * v63) >= v59);
      }

      if (v61 >= v62)
      {
        v70 = v61 - 1;
      }

      else
      {
        v65 = *v62;
        v66 = &v10[v58];
        v67 = v62;
        do
        {
          *v66 = v65;
          *v67 = v60;
          do
          {
            v68 = v66[1];
            ++v66;
            v60 = v68;
          }

          while (*(v14 + 4 * v68) < v59);
          do
          {
            v69 = *--v67;
            v65 = v69;
          }

          while (*(v14 + 4 * v69) >= v59);
        }

        while (v66 < v67);
        v70 = v66 - 1;
      }

      if (v70 != v10)
      {
        *v10 = *v70;
      }

      *v70 = v55;
      if (v61 < v62)
      {
        goto LABEL_80;
      }

      v71 = sub_23670F9D4(v10, v70, a3);
      v10 = v70 + 1;
      result = sub_23670F9D4(v70 + 1, a2, a3);
      if (result)
      {
        a2 = v70;
        if (!v71)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v71)
      {
LABEL_80:
        result = sub_23670EDF8(v9, v70, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v70 + 1;
      }
    }

    else
    {
      if (v57 >= *(v14 + (*(a2 - 1) << 32 >> 30)))
      {
        v73 = (v10 + 1);
        do
        {
          v10 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v73 += 8;
        }

        while (v57 >= *(v14 + (*v10 << 32 >> 30)));
      }

      else
      {
        do
        {
          v72 = v10[1];
          ++v10;
        }

        while (v57 >= *(v14 + 4 * v72));
      }

      v74 = a2;
      if (v10 < a2)
      {
        v74 = a2;
        do
        {
          v75 = *--v74;
        }

        while (v57 < *(v14 + 4 * v75));
      }

      if (v10 < v74)
      {
        v76 = *v10;
        v77 = *v74;
        do
        {
          *v10 = v77;
          *v74 = v76;
          do
          {
            v78 = v10[1];
            ++v10;
            v76 = v78;
          }

          while (v57 >= *(v14 + 4 * v78));
          do
          {
            v79 = *--v74;
            v77 = v79;
          }

          while (v57 < *(v14 + 4 * v79));
        }

        while (v10 < v74);
      }

      v80 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v80;
      }

      a5 = 0;
      *v80 = v55;
    }
  }

  v90 = *v10;
  v91 = v10[1];
  v92 = *a3;
  v93 = *(*a3 + 4 * v91);
  v94 = *(*a3 + (*v10 << 32 >> 30));
  v95 = *(a2 - 1);
  v96 = *(*a3 + 4 * v95);
  if (v93 < v94)
  {
    if (v96 >= v93)
    {
      *v10 = v91;
      v10[1] = v90;
      v145 = *(a2 - 1);
      if (*(v92 + 4 * v145) >= v94)
      {
        return result;
      }

      v10[1] = v145;
    }

    else
    {
      *v10 = v95;
    }

    goto LABEL_175;
  }

  if (v96 < v93)
  {
    v10[1] = v95;
    *(a2 - 1) = v91;
    v138 = *v10;
    v137 = v10[1];
    if (*(v92 + 4 * v137) < *(v92 + (*v10 << 32 >> 30)))
    {
      *v10 = v137;
      v10[1] = v138;
    }
  }

  return result;
}

uint64_t *sub_23670F89C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a5;
  v8 = *a2 << 32 >> 30;
  v9 = *(*a5 + v8);
  v10 = *result << 32 >> 30;
  v11 = *(*a5 + v10);
  v12 = *a3;
  v13 = *(*a5 + (*a3 << 32 >> 30));
  if (v9 >= v11)
  {
    if (v13 >= v9)
    {
      v10 = *a3 << 32 >> 30;
      v5 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v5;
      v14 = *result;
      v10 = v8;
      if (*(v7 + (*a2 << 32 >> 30)) < *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v14;
        v5 = *a3;
        v10 = *a3 << 32 >> 30;
      }
    }
  }

  else
  {
    if (v13 >= v9)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(v7 + (*a3 << 32 >> 30)) >= v11)
      {
        v10 = *a3 << 32 >> 30;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v12;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (*(v7 + (*a4 << 32 >> 30)) < *(v7 + v10))
  {
    *a3 = *a4;
    *a4 = v5;
    v15 = *a2;
    if (*(v7 + (*a3 << 32 >> 30)) < *(v7 + (*a2 << 32 >> 30)))
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *result;
      if (*(v7 + (*a2 << 32 >> 30)) < *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

BOOL sub_23670F9D4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v18 = *a3;
        v19 = *(*a3 + 4 * v17);
        v20 = *(*a3 + (*a1 << 32 >> 30));
        v21 = *(a2 - 1);
        v22 = *(*a3 + 4 * v21);
        if (v19 >= v20)
        {
          if (v22 < v19)
          {
            a1[1] = v21;
            *(a2 - 1) = v17;
            v35 = *a1;
            v34 = a1[1];
            if (*(v18 + 4 * v34) < *(v18 + (*a1 << 32 >> 30)))
            {
              *a1 = v34;
              a1[1] = v35;
            }
          }

          return 1;
        }

        if (v22 < v19)
        {
          *a1 = v21;
          goto LABEL_41;
        }

        *a1 = v17;
        a1[1] = v8;
        v45 = *(a2 - 1);
        if (*(v18 + 4 * v45) < v20)
        {
          a1[1] = v45;
          goto LABEL_41;
        }

        return 1;
      case 4:
        sub_23670F89C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_23670F89C(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *a3;
        if (*(*a3 + 4 * v9) < *(*a3 + 4 * v10))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v13 = a1[2];
          v12 = a1[3];
          v14 = *(v11 + 4 * v12);
          if (v14 < *(v11 + 4 * v13))
          {
            a1[2] = v12;
            a1[3] = v13;
            v15 = a1[1];
            if (v14 < *(v11 + 4 * v15))
            {
              a1[1] = v12;
              a1[2] = v15;
              v16 = *a1;
              if (v14 < *(v11 + (*a1 << 32 >> 30)))
              {
                *a1 = v12;
                a1[1] = v16;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      if (*(*a3 + 4 * v7) < *(*a3 + (*a1 << 32 >> 30)))
      {
        *a1 = v7;
LABEL_41:
        *(a2 - 1) = v8;
        return 1;
      }

      return 1;
    }
  }

  v24 = a1 + 2;
  v23 = a1[2];
  v25 = a1 + 1;
  v26 = a1[1];
  v27 = *a1;
  v28 = *a3;
  v29 = *(*a3 + 4 * v26);
  v30 = *(*a3 + (*a1 << 32 >> 30));
  v31 = *(*a3 + 4 * v23);
  if (v29 >= v30)
  {
    if (v31 >= v29)
    {
      goto LABEL_28;
    }

    *v25 = v23;
    *v24 = v26;
    v32 = a1;
    v33 = a1 + 1;
LABEL_26:
    if (v31 >= v30)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v32 = a1;
  v33 = a1 + 2;
  if (v31 >= v29)
  {
    *a1 = v26;
    a1[1] = v27;
    v32 = a1 + 1;
    v33 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v32 = v23;
  *v33 = v27;
LABEL_28:
  v36 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v37 = 0;
  for (i = 24; ; i += 8)
  {
    v39 = *v36;
    v40 = *v24;
    v41 = *(v28 + (*v36 << 32 >> 30));
    if (v41 < *(v28 + 4 * v40))
    {
      v42 = i;
      while (1)
      {
        *(a1 + v42) = v40;
        v43 = v42 - 8;
        if (v42 == 8)
        {
          break;
        }

        v40 = *(a1 + v42 - 16);
        v42 -= 8;
        if (v41 >= *(v28 + 4 * v40))
        {
          v44 = (a1 + v43);
          goto LABEL_36;
        }
      }

      v44 = a1;
LABEL_36:
      *v44 = v39;
      if (++v37 == 8)
      {
        break;
      }
    }

    v24 = v36++;
    if (v36 == a2)
    {
      return 1;
    }
  }

  return v36 + 1 == a2;
}

uint64_t sub_23670FCD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 8);
  do
  {
    v9 = *(a5 + 4 * v6);
    v10 = (v8 + 8 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = v11 <= v12;
    v14 = v11 - v12;
    if (!v13)
    {
      v15 = (*(a1 + 16) + 4 * v12);
      do
      {
        v17 = *v15++;
        v16 = v17;
        if ((v17 & 0x80000000) == 0 && v16 < *a1)
        {
          v18 = *(a6 + 4 * v16);
          if (v16 == v9 && v18 != -1)
          {
            v20 = *(a3 + 4 * v18);
            v21 = *(a3 + 4 * v7);
            v22 = *(a6 + 4 * v20);
            *(a6 + 4 * v20) = *(a6 + 4 * v21);
            *(a6 + 4 * v21) = v22;
            LODWORD(v20) = *(a3 + 4 * v18);
            *(a3 + 4 * v18) = *(a3 + 4 * v7);
            *(a3 + 4 * v7) = v20;
            v7 = (v7 + 1);
          }
        }

        --v14;
      }

      while (v14);
    }

    ++v6;
  }

  while (v6 != a4);
  return v7;
}

uint64_t sub_23670FD7C(int *a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, char *__b)
{
  if (!a5)
  {
    return 0;
  }

  __pattern4 = -1;
  v13 = 4 * *a1;
  v166 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = &__b[v166];
  memset_pattern4(__b, &__pattern4, v13);
  v15 = 4 * a1[1];
  v165 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = &v14[v165];
  memset_pattern4(v14, &__pattern4, v15);
  if (a3 >= 1)
  {
    v17 = 0;
    do
    {
      *&__b[4 * *(a4 + 4 * v17)] = v17;
      ++v17;
    }

    while (a3 != v17);
  }

  v168 = a4;
  if (a5 >= 1)
  {
    v18 = a5;
    v19 = a6;
    v20 = a3;
    do
    {
      v21 = *v19++;
      *&v14[4 * v21] = v20++;
      --v18;
    }

    while (v18);
  }

  v22 = a5 + a3;
  v163 = 8 * (a5 + a3);
  bzero(v16, v163);
  if (a5 < 1)
  {
    v25 = 0;
    v39 = 0.0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = *(a1 + 1);
    do
    {
      v28 = a6[v24];
      v29 = (v27 + 8 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = v30 <= v31;
      v33 = v30 - v31;
      if (!v32)
      {
        v35 = (*(a1 + 2) + 4 * v31);
        do
        {
          v37 = *v35++;
          v36 = v37;
          if ((v37 & 0x80000000) == 0 && v36 < *a1)
          {
            v38 = *&__b[4 * v36];
            if (v38 != -1)
            {
              if (v36 == v28)
              {
                ++v26;
              }

              ++v25;
              ++*&v16[8 * v38];
              v34 = &v16[8 * a3 + 8 * v24];
              ++*v34;
            }
          }

          --v33;
        }

        while (v33);
      }

      ++v24;
    }

    while (v24 != a5);
    v39 = v26;
  }

  if ((v39 / a5) <= 0.975)
  {
    v42 = a5;
    v43 = &v16[8 * v22];
    v44 = v22;
    v161 = (4 * v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = &v43[v161];
    v164 = v42;
    if (a3 <= v42)
    {
      v46 = v42;
    }

    else
    {
      v46 = a3;
    }

    v162 = v46;
    bzero(v45, 4 * v46 + 12);
    v47 = v45 + 8;
    if (a3 >= 1)
    {
      v48 = a3;
      v49 = &v14[v165];
      do
      {
        v50 = *v49;
        v49 += 8;
        ++v47[v50];
        --v48;
      }

      while (v48);
    }

    if (v164 >= 1)
    {
      v51 = a3;
      v52 = &__b[8 * a3 + v165 + v166];
      do
      {
        v53 = *v52;
        v52 += 8;
        ++v47[v53];
        ++v51;
      }

      while (v51 < v44);
    }

    v54 = (v45 + 4);
    if ((v162 & 0x80000000) == 0)
    {
      v55 = (v162 + 1);
      v56 = *v54;
      do
      {
        v56 += *v47;
        *v47++ = v56;
        --v55;
      }

      while (v55);
    }

    if (a3 >= 1)
    {
      v57 = 0;
      v58 = &__b[v165 + 4 + v166];
      do
      {
        v59 = *(v58 - 1);
        v60 = v54[v59];
        *v58 = v60;
        v58 += 8;
        v54[v59] = v60 + 1;
        *&v43[4 * v60] = v57++;
      }

      while (a3 != v57);
    }

    if (v164 >= 1)
    {
      v61 = a3;
      v62 = &__b[8 * a3 + 4 + v165 + v166];
      do
      {
        v63 = *(v62 - 1);
        v64 = v54[v63];
        *v62 = v64;
        v62 += 8;
        v54[v63] = v64 + 1;
        *&v43[4 * v64] = v61++;
      }

      while (v61 < v44);
    }

    if (v25 < 1)
    {
      return 0;
    }

    else
    {
      result = 0;
      v65 = 1;
      do
      {
        if (v65 <= 1)
        {
          v65 = 1;
        }

        v66 = result + a3;
        do
        {
          while (1)
          {
            v67 = *&v45[4 * v65];
            v68 = &__b[4 * v65-- + 4 + v165 + v166 + v161 + v163];
            do
            {
              v69 = *v68;
              v68 += 4;
              ++v65;
            }

            while (v67 == v69);
            *(v68 - 2) = v67 + 1;
            v70 = *&v43[4 * v67];
            if (v70 >= a3)
            {
              break;
            }

            if (result <= v70)
            {
              v91 = (*(a2 + 8) + 8 * *(v168 + 4 * v70));
              v93 = *v91;
              v92 = v91[1];
              v32 = v92 <= v93;
              v94 = v92 - v93;
              if (v32)
              {
                v96 = -1;
              }

              else
              {
                v95 = (*(a2 + 16) + 4 * v93);
                v96 = -1;
                v97 = 0x7FFFFFFF;
                do
                {
                  v98 = *v95++;
                  v99 = *&v14[4 * v98];
                  if (v66 <= v99)
                  {
                    v100 = &v16[8 * v99];
                    v101 = v99 - a3;
                    v102 = *v100;
                    v103 = v100[1];
                    if (v102 < v97)
                    {
                      v96 = v101;
                    }

                    v104 = *&v45[4 * v102];
                    v105 = *&v43[4 * v104];
                    v106 = *&v43[4 * v103];
                    *&v43[4 * v103] = v105;
                    *&v43[4 * v104] = v106;
                    if (v102 < v97)
                    {
                      v97 = v102;
                    }

                    v107 = &v16[8 * v105];
                    v108 = v100[1];
                    v109 = *v100;
                    v100[1] = *(v107 + 1);
                    *(v107 + 1) = v108;
                    ++*&v45[4 * v109];
                    v110 = *v100 - 1;
                    *v100 = v110;
                    if (v110 < v65)
                    {
                      v65 = v110;
                    }

                    --v25;
                  }

                  --v94;
                }

                while (v94);
              }

              v71 = v96;
              v127 = (*(a1 + 1) + 8 * a6[v96]);
              v129 = *v127;
              v128 = v127[1];
              v32 = v128 <= v129;
              v130 = v128 - v129;
              if (!v32)
              {
                v131 = (*(a1 + 2) + 4 * v129);
                do
                {
                  v133 = *v131++;
                  v132 = v133;
                  if ((v133 & 0x80000000) == 0 && v132 < *a1)
                  {
                    v134 = *&__b[4 * v132];
                    if (result <= v134)
                    {
                      if (v134 != v70)
                      {
                        v135 = &v16[8 * v134];
                        v136 = *(v135 + 1);
                        v137 = *&v45[4 * *v135];
                        v138 = *&v43[4 * v137];
                        v139 = *&v43[4 * v136];
                        *&v43[4 * v136] = v138;
                        *&v43[4 * v137] = v139;
                        v140 = &v16[8 * v138];
                        LODWORD(v138) = *(v135 + 1);
                        v141 = *v135;
                        *(v135 + 1) = *(v140 + 1);
                        *(v140 + 1) = v138;
                        ++*&v45[4 * v141];
                      }

                      v142 = 8 * v134;
                      v143 = *&v16[v142] - 1;
                      *&v16[v142] = v143;
                      if (v143 < v65)
                      {
                        v65 = v143;
                      }

                      --v25;
                    }
                  }

                  --v130;
                }

                while (v130);
              }

              v74 = v70;
              goto LABEL_104;
            }
          }
        }

        while (v66 > v70);
        v71 = v70 - a3;
        v72 = (*(a1 + 1) + 8 * a6[v71]);
        v74 = *v72;
        v73 = v72[1];
        v32 = v73 <= v74;
        v75 = v73 - v74;
        if (v32)
        {
          v74 = -1;
        }

        else
        {
          v76 = (*(a1 + 2) + 4 * v74);
          LODWORD(v74) = -1;
          v77 = 0x7FFFFFFF;
          do
          {
            v79 = *v76++;
            v78 = v79;
            if ((v79 & 0x80000000) == 0 && v78 < *a1)
            {
              v80 = *&__b[4 * v78];
              if (result <= v80)
              {
                v81 = &v16[8 * v80];
                v82 = *v81;
                v83 = v81[1];
                if (v82 < v77)
                {
                  LODWORD(v74) = v80;
                }

                v84 = *&v45[4 * v82];
                v85 = *&v43[4 * v84];
                v86 = *&v43[4 * v83];
                *&v43[4 * v83] = v85;
                *&v43[4 * v84] = v86;
                if (v82 < v77)
                {
                  v77 = v82;
                }

                v87 = &v16[8 * v85];
                v88 = v81[1];
                v89 = *v81;
                v81[1] = *(v87 + 1);
                *(v87 + 1) = v88;
                ++*&v45[4 * v89];
                v90 = *v81 - 1;
                *v81 = v90;
                if (v90 < v65)
                {
                  v65 = v90;
                }

                --v25;
              }
            }

            --v75;
          }

          while (v75);
          v74 = v74;
        }

        v111 = (*(a2 + 8) + 8 * *(v168 + 4 * v74));
        v113 = *v111;
        v112 = v111[1];
        v32 = v112 <= v113;
        v114 = v112 - v113;
        if (!v32)
        {
          v115 = (*(a2 + 16) + 4 * v113);
          do
          {
            v116 = *v115++;
            v117 = *&v14[4 * v116];
            if (v66 <= v117)
            {
              if (v117 != v70)
              {
                v118 = &v16[8 * v117];
                v119 = *(v118 + 1);
                v120 = *&v45[4 * *v118];
                v121 = *&v43[4 * v120];
                v122 = *&v43[4 * v119];
                *&v43[4 * v119] = v121;
                *&v43[4 * v120] = v122;
                v123 = &v16[8 * v121];
                LODWORD(v121) = *(v118 + 1);
                v124 = *v118;
                *(v118 + 1) = *(v123 + 1);
                *(v123 + 1) = v121;
                ++*&v45[4 * v124];
              }

              v125 = 8 * v117;
              v126 = *&v16[v125] - 1;
              *&v16[v125] = v126;
              if (v126 < v65)
              {
                v65 = v126;
              }

              --v25;
            }

            --v114;
          }

          while (v114);
        }

        v96 = v70 - a3;
LABEL_104:
        v144 = &v16[8 * v74];
        *v144 = 0x7FFFFFFF;
        v145 = &v16[8 * v96 + 8 * a3];
        *v145 = 0x7FFFFFFF;
        v146 = *(v144 + 1);
        v147 = &v16[8 * result];
        v148 = *(v147 + 1);
        v149 = *&v43[4 * v146];
        v150 = v25;
        *&v43[4 * v146] = *&v43[4 * v148];
        *&v43[4 * v148] = v149;
        v151 = *(v145 + 1);
        v152 = &v16[8 * v66];
        v153 = *(v152 + 1);
        v154 = *&v43[4 * v151];
        *&v43[4 * v151] = *&v43[4 * v153];
        *&v43[4 * v153] = v154;
        v155 = *v144;
        *v144 = *v147;
        *v147 = v155;
        v156 = *v145;
        *v145 = *v152;
        *v152 = v156;
        v157 = *(v168 + 4 * v74);
        v158 = *(v168 + 4 * result);
        LODWORD(v145) = *&__b[4 * v157];
        *&__b[4 * v157] = *&__b[4 * v158];
        *&__b[4 * v158] = v145;
        LODWORD(v157) = *(v168 + 4 * v74);
        *(v168 + 4 * v74) = *(v168 + 4 * result);
        *(v168 + 4 * result) = v157;
        v159 = a6[v71];
        v160 = a6[result];
        LODWORD(v145) = *&v14[4 * v159];
        *&v14[4 * v159] = *&v14[4 * v160];
        *&v14[4 * v160] = v145;
        LODWORD(v159) = a6[v71];
        ++v25;
        a6[v71] = a6[result];
        a6[result++] = v159;
      }

      while ((v150 & 0x8000000000000000) == 0);
    }
  }

  else
  {
    v41 = *(a1 + 1);
    v169[0] = *a1;
    v169[1] = v41;
    return sub_23670FCD4(v169, v23, a4, a5, a6, __b);
  }

  return result;
}

uint64_t sub_236710510(int *a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, char *__b)
{
  __pattern4 = -1;
  v13 = 4 * *a1;
  v79 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = &__b[v79];
  memset_pattern4(__b, &__pattern4, v13);
  v15 = 4 * a1[1];
  v16 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  memset_pattern4(v14, &__pattern4, v15);
  if (a3 >= 1)
  {
    v17 = 0;
    do
    {
      *&__b[4 * *(a4 + 4 * v17)] = v17;
      ++v17;
    }

    while (a3 != v17);
  }

  v78 = v16;
  v18 = &v14[v16];
  v19 = a5;
  if (a5 >= 1)
  {
    v20 = 0;
    do
    {
      *&v14[4 * a6[v20]] = v20;
      ++v20;
    }

    while (a5 != v20);
  }

  v81 = v14;
  v21 = &v18[(4 * a5 + 7) & 0xFFFFFFFFFFFFFFF8];
  v22 = 4 * a3;
  v23 = &v21[(v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v24 = &v23[a5];
  bzero(v21, v22);
  if (a5 >= 1)
  {
    v25 = *(a1 + 1);
    v26 = &v23[a5];
    v27 = a6;
    do
    {
      v28 = *v27++;
      *v26++ = *(v25 + 8 * v28);
      --v19;
    }

    while (v19);
  }

  v29 = 0;
  v80 = &__b[v78 + v79];
  while (a2 < a5)
  {
    v30 = 0;
    v31 = *(a1 + 1);
    v32 = v31 + 8;
    v33 = v29 + 1;
    v34 = a2;
    do
    {
      v35 = a6[v34];
      *v18 = v34;
      if (v29)
      {
        v36 = *(v32 + 8 * v35) - 1;
      }

      else
      {
        v36 = *(v31 + 8 * v35);
      }

      *v23 = v36;
      v37 = v24[v34];
      if (v37 < *(v32 + 8 * v35))
      {
        v38 = *(a1 + 2);
        while (1)
        {
          v39 = *(v38 + 4 * v37);
          if ((v39 & 0x80000000) == 0 && v39 < *a1)
          {
            v40 = *&__b[4 * v39];
            if (v40 >= a2)
            {
              break;
            }
          }

          v24[v34] = ++v37;
          if (v37 >= *(v32 + 8 * v35))
          {
            goto LABEL_22;
          }
        }

        if (v40 != -1)
        {
          v60 = &v21[4 * v40];
          *v60 = v33;
          v41 = 1;
          goto LABEL_63;
        }
      }

LABEL_22:
      v41 = 1;
      v42 = a5;
      do
      {
        v43 = *&v18[4 * (v41 - 1)];
        v44 = a6[v43];
        v45 = v23[v41 - 1];
        if (v29)
        {
          v49 = *(v31 + 8 * v44);
          if (v45 < v49)
          {
            goto LABEL_49;
          }

          v46 = v49 - 1;
          v50 = -1;
          do
          {
            v51 = *(*(a1 + 2) + 4 * v45);
            if ((v51 & 0x80000000) == 0 && v51 < *a1)
            {
              v50 = *&__b[4 * v51];
              if (v50 == -1)
              {
                v50 = -1;
              }

              else if (*&v21[4 * v50] <= v29)
              {
                v59 = 1;
                v47 = *&__b[4 * v51];
                goto LABEL_46;
              }
            }
          }

          while (v45-- > v49);
          v59 = 0;
          v47 = v50;
        }

        else
        {
          v46 = *(v32 + 8 * v44);
          if (v45 >= v46)
          {
            goto LABEL_49;
          }

          v47 = -1;
          do
          {
            v48 = *(*(a1 + 2) + 4 * v45);
            if ((v48 & 0x80000000) == 0 && v48 < *a1)
            {
              v47 = *&__b[4 * v48];
              if (v47 == -1)
              {
                v47 = -1;
              }

              else if (*&v21[4 * v47] <= v29)
              {
                v59 = 1;
                goto LABEL_46;
              }
            }

            ++v45;
          }

          while (v46 != v45);
          v59 = 0;
        }

        v45 = v46;
LABEL_46:
        if ((v59 & 1) == 0)
        {
LABEL_49:
          *&v18[4 * --v42] = v43;
          v55 = -1;
          --v41;
          continue;
        }

        v23[v41 - 1] = v45;
        *&v21[4 * v47] = v33;
        v53 = a6[v47];
        *&v18[4 * v41] = v47;
        if (v29)
        {
          v54 = *(v32 + 8 * v53) - 1;
        }

        else
        {
          v54 = *(v31 + 8 * v53);
        }

        v23[v41++] = v54;
        v56 = v24[v47];
        if (v56 >= *(v32 + 8 * v53))
        {
LABEL_57:
          v55 = -1;
        }

        else
        {
          v57 = *(a1 + 2);
          while (1)
          {
            v58 = *(v57 + 4 * v56);
            if ((v58 & 0x80000000) == 0 && v58 < *a1)
            {
              v55 = *&__b[4 * v58];
              if (v55 >= a2)
              {
                break;
              }
            }

            v24[v47] = ++v56;
            if (v56 >= *(v32 + 8 * v53))
            {
              goto LABEL_57;
            }
          }
        }
      }

      while (v55 == -1 && v41 > 0);
      if (v55 == -1)
      {
        if (v30)
        {
          goto LABEL_69;
        }

        if (v42 < a5)
        {
          v74 = &v80[4 * v42];
          v75 = a5 - v42;
          do
          {
            v76 = *v74;
            v74 += 4;
            *&v21[4 * v76] = 0x7FFFFFFF;
            --v75;
          }

          while (v75);
        }

        v30 = 0;
      }

      else
      {
        v60 = &v21[4 * v55];
        *v60 = v33;
        if (v41 >= 1)
        {
          v40 = v55;
LABEL_63:
          v61 = v41 + 1;
          v62 = &v80[4 * v41 - 4];
          do
          {
            v63 = *v62;
            v62 -= 4;
            v64 = *(a4 + 4 * v63);
            v65 = *(a4 + 4 * v40);
            v66 = *&__b[4 * v64];
            *&__b[4 * v64] = *&__b[4 * v65];
            *&__b[4 * v65] = v66;
            LODWORD(v64) = *(a4 + 4 * v63);
            *(a4 + 4 * v63) = *(a4 + 4 * v40);
            *(a4 + 4 * v40) = v64;
            LODWORD(v64) = *&v21[4 * v63];
            *&v21[4 * v63] = *v60;
            *v60 = v64;
            --v61;
          }

          while (v61 > 1);
        }

        if (a2 != v34)
        {
          v67 = *(a4 + 4 * v34);
          v68 = *(a4 + 4 * a2);
          v69 = *&__b[4 * v67];
          *&__b[4 * v67] = *&__b[4 * v68];
          *&__b[4 * v68] = v69;
          LODWORD(v67) = *(a4 + 4 * v34);
          *(a4 + 4 * v34) = *(a4 + 4 * a2);
          *(a4 + 4 * a2) = v67;
          LODWORD(v67) = *&v21[4 * v34];
          *&v21[4 * v34] = *&v21[4 * a2];
          *&v21[4 * a2] = v67;
          v70 = a6[v34];
          v71 = a6[a2];
          v72 = *&v81[4 * v70];
          *&v81[4 * v70] = *&v81[4 * v71];
          *&v81[4 * v71] = v72;
          LODWORD(v70) = a6[v34];
          a6[v34] = a6[a2];
          a6[a2] = v70;
          v73 = v24[v34];
          v24[v34] = v24[a2];
          v24[a2] = v73;
        }

        a2 = (a2 + 1);
LABEL_69:
        v30 = 1;
      }

      ++v34;
    }

    while (v34 != a5);
    ++v29;
    if ((v30 & 1) == 0)
    {
      return a2;
    }
  }

  return a2;
}

uint64_t sub_236710A14(unint64_t *a1, int a2, int a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = 4 * (a3 + a2 + a3 + a2 + v3 + 3) + 8 * (a3 + a2) + 56;
  if (v4 <= 8 * a2 + 24 * a3 + 40)
  {
    v4 = 8 * a2 + 24 * a3 + 40;
  }

  *a1 = v4;
  return 0;
}

uint64_t sub_236710A64(__int128 *a1, _OWORD *a2, int a3, uint64_t a4, int a5, int *a6, char *a7)
{
  v13 = a1[1];
  v20 = *a1;
  v21 = v13;
  v14 = a2[1];
  v19[0] = *a2;
  v19[1] = v14;
  v15 = sub_23670FD7C(&v20, v19, a3, a4, a5, a6, a7);
  v16 = v15;
  if (v15 != a3 && v15 != a5)
  {
    v17 = a1[1];
    v20 = *a1;
    v21 = v17;
    return sub_236710510(&v20, v15, a3, a4, a5, a6, a7);
  }

  return v16;
}

uint64_t _SparseCOLAMDWorkspaceSize(int a1, int a2, uint64_t a3, int a4)
{
  if (a4 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a4;
  }

  if (a1 <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  return 16 * a2 + a1 + 4 * (a3 / 5 + a1 + 2 * a3 + v5 + a1 + 9 * a2 + 4 * v4) + 176;
}

void _SparseCOLAMD(int *a1, uint64_t a2, int *a3, int *a4, _DWORD *a5, uint64_t a6)
{
  v9 = a1[1];
  v10 = *a1;
  if (v10 <= v9)
  {
    v11 = a1[1];
  }

  else
  {
    v11 = *a1;
  }

  v12 = a1[1];
  if (a3)
  {
    if (v9 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = a1[1];
      v15 = a3;
      do
      {
        v16 = *v15++;
        v13 += v16;
        --v14;
      }

      while (v14);
    }

    if (v13 <= v9)
    {
      v12 = a1[1];
    }

    else
    {
      v12 = v13;
    }
  }

  if (a4)
  {
    v17 = *a4;
    if (v9 < 2)
    {
      v20 = *a4;
    }

    else
    {
      v18 = a4 + 1;
      v19 = v9 - 1;
      v20 = *a4;
      do
      {
        v22 = *v18++;
        v21 = v22;
        if (v22 < v17)
        {
          v17 = v21;
        }

        if (v21 > v20)
        {
          v20 = v21;
        }

        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v20 = -1;
    v17 = -1;
  }

  v23 = *(*(a1 + 1) + 8 * v9);
  v24 = v23 / 5 + v10;
  v25 = a6 + v10 + 16 * v9 + 8 * v23 + 4 * (v24 + v11 + v10 + 9 * v9 + 4 * v12) + 176;
  v26 = 8 * v9 + 8;
  v27 = (a6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v25 < v27 || (v28 = ((v27 + 4 * v9 + 7) & 0xFFFFFFFFFFFFFFF8), v25 < v28) || (v29 = 4 * v9, v30 = (&v28[v29 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v25 < v30) || (v31 = (v30 + 4 * v23 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v31) || (v32 = (v31 + v26), v31 + v26 > v25) || (v33 = (&v32[v29 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v25 < v33) || (v278 = (&v32[v29 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v249 = v24 + v23, v34 = (v33 + 4 * (v24 + v23) + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v34) || (v264 = v34, v35 = (v34 + v29 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v35) || (v36 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v36) || (v280 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8, v37 = (v36 + v29 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v37) || (v38 = (v37 + v29 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v38) || (v39 = (v38 + v29 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v39) || (v40 = (v39 + v29 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v40) || (v41 = (v40 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v41) || (v42 = 4 * v12, __b = ((v40 + v42 + 7) & 0xFFFFFFFFFFFFFFF8), v43 = (v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v43) || (v271 = v43, v44 = (v43 + v42 + 7) & 0xFFFFFFFFFFFFFFF8, v25 < v44) || (v263 = v39, v276 = v37, v277 = v38, v246 = v17, v247 = v20, v250 = v9, v45 = ((v44 + v42 + 7) & 0xFFFFFFFFFFFFFFF8), v25 < v45) || (v46 = ((&v45[v11 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), v25 < v46) || (v47 = (&v46[v10 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v25 < v47) || (v272 = (v43 + v42 + 7) & 0xFFFFFFFFFFFFFFF8, v270 = v40, v275 = v31, v279 = ((&v46[v10 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), v25 < ((v47 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    return;
  }

  v257 = a3;
  v258 = v12;
  v267 = v9;
  v269 = v10;
  if (v12 >= 1)
  {
    memset_pattern16(__b, &unk_23681FBC0, v42);
    v10 = v269;
    v9 = v267;
  }

  if (v9 >= 1)
  {
    v48 = 4 * v9;
    memset_pattern16(v277, &unk_23681FBC0, 4 * v9);
    bzero(v32, v48);
    v10 = v269;
    v9 = v267;
  }

  v287[0] = -2147483646;
  if (v10 >= 1)
  {
    v49 = 4 * v10;
    memset_pattern16(v45, &unk_23681FBC0, 4 * v10);
    memset_pattern16(v46, &unk_23681FBC0, v49);
    bzero(v279, v269);
    v10 = v269;
    v9 = v267;
  }

  v50 = a6;
  v51 = v257;
  v53 = v278;
  v52 = v279;
  v54 = v280;
  if (v9 >= 1)
  {
    memset_pattern16(v264, &unk_23681FBC0, 4 * v9);
    v52 = v279;
    v54 = v280;
    v53 = v278;
    v51 = v257;
    v10 = v269;
    v50 = a6;
    v9 = v267;
    v55 = v267;
    v56 = v35;
    v57 = v257;
    do
    {
      if (v257)
      {
        v58 = *v57;
      }

      else
      {
        v58 = 1;
      }

      *v56++ = v58;
      ++v57;
      --v55;
    }

    while (v55);
  }

  v59 = (sqrt(v12) * 10.0);
  if (v59 <= 16)
  {
    v59 = 16;
  }

  if (v10 >= 1)
  {
    v60 = 0;
    v61 = *(a2 + 8);
    while (1)
    {
      v62 = (v61 + 8 * v60);
      if (!v51)
      {
        break;
      }

      v64 = *v62;
      v63 = v62[1];
      v65 = v63 - v64;
      if (v63 > v64)
      {
        v66 = 0;
        v67 = (*(a2 + 16) + 4 * v64);
        do
        {
          v69 = *v67++;
          v68 = v69;
          if ((v69 & 0x80000000) == 0)
          {
            if (v68 < *a2)
            {
              v66 += v51[v68];
            }

            v53 = v278;
          }

          --v65;
        }

        while (v65);
        goto LABEL_70;
      }

LABEL_72:
      if (++v60 == v10)
      {
        goto LABEL_73;
      }
    }

    v66 = *(v62 + 2) - *v62;
LABEL_70:
    v54 = v280;
    if (v66 > v59)
    {
      v52[v60] = 1;
    }

    goto LABEL_72;
  }

LABEL_73:
  v252 = a5;
  v253 = v12;
  v70 = (sqrt(v10) * 10.0);
  if (v70 <= 16)
  {
    v71 = 16;
  }

  else
  {
    v71 = v70;
  }

  v259 = v71;
  if (v9 >= 1)
  {
    v72 = 0;
    v73 = 0;
    v261 = a5 - 1;
    v74 = v9;
    v75 = 0;
    v76 = a1;
    while (1)
    {
      v77 = 0;
      *(v50 + 8 * v72) = v73;
      *(v27 + 4 * v72) = 0;
      v78 = *(v76 + 1);
      v79 = *(v78 + 8 * v72);
      v80 = v72 + 1;
      v81 = *(v78 + 8 * (v72 + 1));
      v82 = v81 - v79;
      if (v81 <= v79)
      {
        goto LABEL_93;
      }

      v83 = 0;
      v84 = v79;
      do
      {
        v85 = *(*(v76 + 2) + 4 * v84);
        if ((v85 & 0x80000000) == 0)
        {
          if (v85 < *v76)
          {
            v83 += v279[v85] ^ 1;
          }

          v54 = v280;
        }

        ++v84;
      }

      while (v81 != v84);
      if (v83 <= v259)
      {
        break;
      }

      v261[v74] = v72;
      v74 = (v74 - 1);
      *(v27 + 4 * v72) = 0;
      v28[v72] = 0;
      v75 = v73;
LABEL_102:
      v72 = v80;
      v73 = v75;
      if (v80 == v9)
      {
        v92 = 0;
        v93 = 0;
        v94 = a4;
        v95 = v271;
        while (1)
        {
          v96 = v28[v92];
          if (v96)
          {
            if (v96 >= 1)
            {
              v97 = 0;
              v98 = *(v50 + 8 * v92);
              v99 = v98 + v96;
              do
              {
                v100 = (*(a2 + 8) + 8 * *(v30 + 4 * v98));
                if (v51)
                {
                  v102 = *v100;
                  v101 = v100[1];
                  v103 = v101 - v102;
                  if (v101 <= v102)
                  {
                    v104 = 0;
                  }

                  else
                  {
                    v104 = 0;
                    v105 = (*(a2 + 16) + 4 * v102);
                    do
                    {
                      v107 = *v105++;
                      v106 = v107;
                      if ((v107 & 0x80000000) == 0 && v106 < *a2)
                      {
                        v104 += v51[v106];
                      }

                      --v103;
                    }

                    while (v103);
                  }
                }

                else
                {
                  v104 = *(v100 + 2) - *v100;
                }

                v97 = v97 - *(v35 + 4 * v92) + v104;
                ++v98;
              }

              while (v98 < v99);
              v53 = v278;
              v54 = v280;
              if (v97)
              {
                goto LABEL_125;
              }
            }

            if (a4 && a4[v92] != v246)
            {
              v97 = 1;
LABEL_125:
              if (v97 >= v253)
              {
                LODWORD(v97) = v253;
              }

              v110 = v97 - 1;
              *(v270 + 4 * v92) = v110;
              v111 = __b[v110];
              if (v111 != -2147483647)
              {
                *(v272 + 4 * v111) = v92;
              }

              *(v272 + 4 * v92) = -2147483647;
              *(v271 + 4 * v92) = __b[v110];
              __b[v110] = v92;
              goto LABEL_130;
            }

            v108 = &v252[v93];
            v109 = v92;
            do
            {
              *v108++ = v109;
              v109 = *(v264 + v109);
              ++v93;
            }

            while (v109 != -2147483647);
          }

LABEL_130:
          if (++v92 == v9)
          {
            v112 = v74;
            v10 = v269;
            goto LABEL_133;
          }
        }
      }
    }

    v77 = 0;
    v86 = (*(v76 + 2) + 4 * v79);
    v75 = v73;
    do
    {
      v88 = *v86++;
      v87 = v88;
      if ((v88 & 0x80000000) == 0 && v87 < *v76 && (v279[v87] & 1) == 0)
      {
        *(v30 + 4 * v75++) = v87;
        v77 = (v87 + 1) ^ __ROR4__(v77, 27);
      }

      --v82;
    }

    while (v82);
LABEL_93:
    v89 = v75 - v73;
    v28[v72] = v89;
    if (v89)
    {
      if (v51 && !v51[v72])
      {
        v261[v74] = v72;
        v74 = (v74 - 1);
        *(v27 + 4 * v72) = 0;
        v28[v72] = 0;
      }

      else
      {
        v281 = v9;
        v282 = 0;
        v283 = v276;
        v284 = v277;
        v273 = v72 + 1;
        if (v77 % v9 >= 0)
        {
          v90 = v77 % v9;
        }

        else
        {
          v90 = -(v77 % v9);
        }

        v285 = v263;
        v286 = 0;
        v91 = v74;
        sub_236711DF0(&v281, v90, v72, v50, v27, v28, v30, v264, v35, a4, v287, v269, v45, v46);
        v80 = v273;
        v76 = a1;
        v51 = v257;
        v74 = v91;
        v54 = v280;
        v53 = v278;
        v12 = v258;
        v50 = a6;
        v9 = v267;
      }
    }

    else
    {
      v261[v74] = v72;
      v74 = (v74 - 1);
    }

    goto LABEL_102;
  }

  v93 = 0;
  v112 = v9;
  v94 = a4;
  v95 = v271;
LABEL_133:
  v251 = v112;
  v260 = v93;
  v113 = v252;
  if (v93 >= v112)
  {
    goto LABEL_298;
  }

  v262 = 0;
  __lena = 4 * v10;
  v114 = __b + 1;
  v115 = v253 - 1;
  v116 = v246;
  v248 = v253 - 1;
  do
  {
    if (!v94)
    {
      v254 = v116;
      if (v12 < 1)
      {
        LODWORD(v117) = 0;
        v124 = v279;
      }

      else
      {
        v124 = v279;
        if (*__b == -2147483647)
        {
          v117 = 0;
          while (v115 != v117)
          {
            v125 = v114[v117++];
            if (v125 != -2147483647)
            {
              goto LABEL_159;
            }
          }

LABEL_160:
          i = -1;
          goto LABEL_169;
        }

        LODWORD(v117) = 0;
      }

LABEL_159:
      if (v117 != v12)
      {
        i = __b[v117];
        v123 = i;
        goto LABEL_162;
      }

      goto LABEL_160;
    }

    while (1)
    {
      LODWORD(v117) = 0;
      v118 = v116;
LABEL_137:
      if (v117 < v12 && __b[v117] == -2147483647)
      {
        v119 = &v114[v117];
        v120 = v115 - v117;
        while (v120)
        {
          v121 = *v119++;
          LODWORD(v117) = v117 + 1;
          --v120;
          if (v121 != -2147483647)
          {
            goto LABEL_142;
          }
        }

        goto LABEL_148;
      }

LABEL_142:
      if (v117 != v12)
      {
        break;
      }

LABEL_148:
      v116 = v118 + 1;
      if (v118 >= v247)
      {
        v254 = v118 + 1;
        i = -1;
        v124 = v279;
        goto LABEL_169;
      }
    }

    for (i = __b[v117]; ; i = v95[i])
    {
      if (i == -2147483647)
      {
        LODWORD(v117) = v117 + 1;
        goto LABEL_137;
      }

      v123 = i;
      if (v94[i] == v118)
      {
        break;
      }
    }

    v254 = v118;
    v124 = v279;
LABEL_162:
    v126 = *(v272 + 4 * v123);
    v127 = v95[v123];
    if (v126 != -2147483647)
    {
      LODWORD(v117) = v126;
    }

    v128 = __b;
    if (v126 != -2147483647)
    {
      v128 = v95;
    }

    v128[v117] = v127;
    if (v127 != -2147483647)
    {
      *(v272 + 4 * v127) = v126;
    }

    v129 = -2147483647;
    if (i != -2147483647)
    {
LABEL_169:
      v130 = v287[0];
      v131 = v260;
      v132 = &v113[v260];
      v133 = i;
      do
      {
        *v132++ = v133;
        v45[v133] = v130;
        v133 = *(v264 + v133);
        ++v131;
      }

      while (v133 != -2147483647);
      v260 = v131;
      v129 = i;
    }

    v134 = v262;
    if (v262 + v250 > v249)
    {
      if (v9 >= 1)
      {
        v135 = -1;
        v136 = v32;
        v137 = v275;
        v138 = v9;
        do
        {
          if (*v136++)
          {
            v140 = *v137;
            *v137 = *(v53 + 4 * *v137);
            *(v53 + 4 * v140) = v135;
          }

          --v135;
          ++v137;
          --v138;
        }

        while (v138);
      }

      if (v262 >= 1)
      {
        v134 = 0;
        v141 = 0;
        do
        {
          v142 = v141 + 1;
          v143 = *(v53 + 4 * v141);
          if (v143 < 0 && (v144 = ~v143, *(v53 + 4 * v134) = v275[v144], v275[v144] = v134, v145 = v32[v144], ++v134, v145 >= 2))
          {
            v146 = v141 + v145;
            do
            {
              v141 = v142 + 1;
              *(v53 + 4 * v134++) = *(v53 + 4 * v142);
              v142 = v141;
            }

            while (v141 < v146);
          }

          else
          {
            ++v141;
          }
        }

        while (v141 < v262);
      }

      else
      {
        v134 = 0;
      }
    }

    v275[v129] = v134;
    *(v54 + 4 * v129) = 0;
    v147 = *(v50 + 8 * v129);
    v148 = *(v27 + 4 * v129);
    v149 = v287[0];
    v150 = v147;
    v151 = v134;
    v274 = v147;
    if (v148 < 1)
    {
      v157 = v147 + v148;
      v158 = v134;
    }

    else
    {
      do
      {
        v152 = *(v30 + 4 * v150);
        v153 = v32[v152];
        if (v153)
        {
          if (v153 >= 1)
          {
            v154 = v275[v152];
            v155 = v154;
            do
            {
              v156 = *(v53 + 4 * v155);
              if (v28[v156] && v45[v156] < v149)
              {
                *(v53 + 4 * v151) = v156;
                *(v54 + 4 * v129) += *(v35 + 4 * v156);
                ++v151;
                v45[v156] = v149;
                v153 = v32[v152];
              }

              ++v155;
            }

            while (v155 < v154 + v153);
          }

          v32[v152] = 0;
          LODWORD(v148) = *(v27 + 4 * v129);
        }

        ++v150;
        v147 = v274;
        v157 = v274 + v148;
      }

      while (v150 < v157);
      v158 = v151;
    }

    v159 = v28[v129];
    for (j = v147 + v159; v157 < j; j = v147 + v159)
    {
      v161 = *(v30 + 4 * v157);
      if ((v124[v161] & 1) == 0)
      {
        v162 = (*(a2 + 8) + 8 * v161);
        v164 = *v162;
        v163 = v162[1];
        v165 = v163 <= v164;
        v166 = v163 - v164;
        if (!v165)
        {
          v167 = (*(a2 + 16) + 4 * v164);
          do
          {
            v169 = *v167++;
            v168 = v169;
            if ((v169 & 0x80000000) == 0 && v168 < *a2 && v28[v168] && v45[v168] < v149)
            {
              *(v53 + 4 * v158) = v168;
              *(v280 + 4 * v129) += *(v35 + 4 * v168);
              v45[v168] = v149;
              ++v158;
            }

            --v166;
          }

          while (v166);
          LODWORD(v159) = v28[v129];
        }

        v147 = v274;
        v124[v161] = 1;
      }

      ++v157;
    }

    LODWORD(v170) = v158 - v134;
    v32[v129] = v158 - v134;
    v171 = __OFADD__(v149, 1);
    v172 = v149 + 1;
    v262 = v158;
    if (v171)
    {
      v172 = -2147483646;
      if (v10 >= 1)
      {
        goto LABEL_220;
      }
    }

    else if (__OFADD__(v172, v12))
    {
      v172 = -2147483646;
      if (v10 > 0)
      {
LABEL_220:
        memset_pattern16(v45, &unk_23681FBC0, __lena);
        memset_pattern16(v46, &unk_23681FBC0, __lena);
        v53 = v278;
        v124 = v279;
        v51 = v257;
        v12 = v258;
        LODWORD(v10) = v269;
        v50 = a6;
        v9 = v267;
        LODWORD(v170) = v32[v129];
        v172 = -2147483646;
      }
    }

    v173 = v134;
    if (v170 >= 1)
    {
      do
      {
        v174 = *(v53 + 4 * v173);
        v175 = *(v50 + 8 * v174);
        v176 = *(v27 + 4 * v174);
        if (v176 < 1)
        {
          v177 = 0;
          v182 = v175 + v176;
          v179 = *(v50 + 8 * v174);
        }

        else
        {
          v177 = 0;
          v178 = *(v50 + 8 * v174);
          v179 = v178;
          do
          {
            v180 = *(v30 + 4 * v178);
            if (v32[v180])
            {
              *(v30 + 4 * v179) = v180;
              v181 = v45[v180];
              if (v181 < v172)
              {
                v181 = *(v280 + 4 * v180) + v172;
                v45[v180] = v181;
              }

              v177 = (v180 + 1) ^ __ROR4__(v177, 27);
              ++v179;
              v45[v180] = v181 - *(v35 + 4 * v174);
              LODWORD(v176) = *(v27 + 4 * v174);
            }

            ++v178;
            v182 = v175 + v176;
          }

          while (v178 < v182);
        }

        v183 = v179 - v175;
        *(v27 + 4 * v174) = v179 - v175;
        v184 = v28[v174];
        if (v182 < v175 + v184)
        {
          do
          {
            v185 = *(v30 + 4 * v182);
            if ((v124[v185] & 1) == 0)
            {
              *(v30 + 4 * v179) = v185;
              v186 = v46[v185];
              if (v186 < v172)
              {
                v187 = (*(a2 + 8) + 8 * v185);
                if (v51)
                {
                  v188 = *v187;
                  v189 = v187[1];
                  v190 = v189 - v188;
                  if (v189 <= v188)
                  {
                    v191 = 0;
                  }

                  else
                  {
                    v191 = 0;
                    v192 = (*(a2 + 16) + 4 * v188);
                    do
                    {
                      v194 = *v192++;
                      v193 = v194;
                      if ((v194 & 0x80000000) == 0 && v193 < *a2)
                      {
                        v191 += v51[v193];
                      }

                      --v190;
                    }

                    while (v190);
                  }
                }

                else
                {
                  v191 = *(v187 + 2) - *v187;
                }

                v186 = v191 + v172;
                v46[v185] = v186;
                v124 = v279;
              }

              v177 = (v185 + 1) ^ __ROR4__(v177, 27);
              ++v179;
              v46[v185] = v186 - *(v35 + 4 * v174);
              LODWORD(v184) = v28[v174];
            }

            ++v182;
          }

          while (v182 < v175 + v184);
          v183 = v179 - v175;
        }

        v28[v174] = v183;
        v195 = v177 % v9;
        if (v195 < 0)
        {
          v195 = -v195;
        }

        *(v276 + 4 * v174) = v195;
        v53 = v278;
        *(v277 + v195) = -2147483647;
        ++v173;
        v170 = v32[v129];
      }

      while (v173 < v134 + v170);
      v196 = v134;
      if (v170 >= 1)
      {
        do
        {
          v197 = *(v53 + 4 * v196);
          v198 = *(v280 + 4 * v129);
          v199 = *(v50 + 8 * v197);
          v200 = *(v27 + 4 * v197);
          if (v200 < 1)
          {
            v205 = v200;
            v204 = v199 + v200;
            v206 = v270;
          }

          else
          {
            v201 = *(v50 + 8 * v197);
            do
            {
              v202 = *(v30 + 4 * v201);
              v203 = v45[v202];
              if (v203 == v172)
              {
                v32[v202] = 0;
                v200 = *(v27 + 4 * v197);
              }

              else
              {
                v198 = v198 - v172 + v203;
              }

              ++v201;
              v204 = v199 + v200;
            }

            while (v201 < v204);
            v205 = v200;
            v206 = v270;
          }

          v207 = v28[v197];
          if (v204 < v199 + v207)
          {
            v208 = v199 + v207 - v204;
            v209 = (v30 + 4 * v204);
            do
            {
              v211 = *v209++;
              v210 = v211;
              v212 = v46[v211];
              if (v212 == v172)
              {
                v124[v210] = 1;
              }

              else
              {
                v198 = v198 - v172 + v212;
              }

              --v208;
            }

            while (v208);
          }

          if (v198 >= v12)
          {
            v198 = v12;
          }

          v213 = v30 + 4 * v199;
          *(v213 + 4 * v207) = *(v213 + 4 * v205);
          *(v213 + 4 * (*(v27 + 4 * v197))++) = v129;
          ++v28[v197];
          v214 = v198 - 1;
          v53 = v278;
          if (*(v206 + 4 * v197) != v198 - 1)
          {
            v215 = *(v272 + 4 * v197);
            if (v215 == -2147483647)
            {
              v215 = *(v206 + 4 * v197);
              v216 = __b;
            }

            else
            {
              v216 = v271;
            }

            v217 = *(v271 + 4 * v197);
            v216[v215] = v217;
            if (v217 != -2147483647)
            {
              *(v272 + 4 * v217) = *(v272 + 4 * v197);
            }

            *(v206 + 4 * v197) = v214;
            v218 = __b[v214];
            if (v218 != -2147483647)
            {
              *(v272 + 4 * v218) = v197;
            }

            *(v272 + 4 * v197) = -2147483647;
            *(v271 + 4 * v197) = __b[v214];
            __b[v214] = v197;
          }

          ++v196;
          v170 = v32[v129];
        }

        while (v196 < v134 + v170);
      }
    }

    v171 = __OFADD__(v172, v12);
    v219 = v172 + v12;
    v220 = v171;
    if (v219 == 0x7FFFFFFF)
    {
      v220 = 1;
    }

    if (v220)
    {
      v219 = -2147483646;
    }

    if (v220 == 1 && v10 >= 1)
    {
      memset_pattern16(v45, &unk_23681FBC0, __lena);
      memset_pattern16(v46, &unk_23681FBC0, __lena);
      v53 = v278;
      LODWORD(v10) = v269;
      v50 = a6;
      v9 = v267;
      LODWORD(v170) = v32[v129];
      v219 = -2147483646;
    }

    v287[0] = v219;
    v221 = v274;
    if (v170 >= 1)
    {
      do
      {
        v222 = *(v53 + 4 * v134);
        v223 = *(v276 + 4 * v222);
        v281 = v9;
        v282 = 0;
        v283 = v276;
        v284 = v277;
        v285 = v263;
        v286 = 0;
        v224 = sub_236711DF0(&v281, v223, v222, v50, v27, v28, v30, v264, v35, a4, v287, v10, v45, v46);
        if (v224 != -2147483647)
        {
          v225 = *(v272 + 4 * v224);
          v226 = __b;
          if (v225 == -2147483647)
          {
            v225 = *(v270 + 4 * v224);
            v227 = v271;
          }

          else
          {
            v227 = v271;
            v226 = v271;
          }

          v228 = *(v227 + 4 * v224);
          v226[v225] = v228;
          if (v228 != -2147483647)
          {
            *(v272 + 4 * v228) = *(v272 + 4 * v224);
          }
        }

        ++v134;
        v50 = a6;
        v9 = v267;
        LODWORD(v10) = v269;
        v53 = v278;
      }

      while (v134 < v275[v129] + v32[v129]);
      v221 = *(a6 + 8 * v129);
    }

    *(v30 + 4 * v221) = v129;
    *(v27 + 4 * v129) = 1;
    v28[v129] = 0;
    v113 = v252;
    v94 = a4;
    v51 = v257;
    v12 = v258;
    v54 = v280;
    v95 = v271;
    v115 = v248;
    v114 = __b + 1;
    v116 = v254;
  }

  while (v260 < v251);
LABEL_298:
  if (v94 && v251 < v9)
  {
    if (v251 < 1)
    {
      v239 = 0;
      v231 = v250;
      v233 = v246;
      v232 = v247;
    }

    else
    {
      v229 = 0;
      v230 = 0;
      v231 = v250;
      v233 = v246;
      v232 = v247;
      do
      {
        for (k = v113[v229]; v233 < v94[k]; ++v233)
        {
          v235 = v251;
          v236 = &v113[v251];
          do
          {
            v238 = *v236++;
            v237 = v238;
            if (v94[v238] == v233)
            {
              v28[v230++] = v237;
            }

            ++v235;
          }

          while (v9 > v235);
          k = v113[v229];
        }

        v239 = v230 + 1;
        v28[v230] = k;
        ++v229;
        ++v230;
      }

      while (v229 != v251);
    }

    if (v233 <= v232)
    {
      do
      {
        v240 = v231 - v251;
        v241 = &v113[v251];
        do
        {
          v243 = *v241++;
          v242 = v243;
          if (v94[v243] == v233)
          {
            v28[v239++] = v242;
          }

          --v240;
        }

        while (v240);
      }

      while (v233++ != v232);
    }

    if (v9 >= 1)
    {
      do
      {
        v245 = *v28++;
        *v113++ = v245;
        --v9;
      }

      while (v9);
    }
  }
}

uint64_t sub_236711DF0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int *a11, unsigned int a12, _DWORD *a13, _DWORD *a14)
{
  v14 = (*(a1 + 16) + 4 * a2);
  v15 = *v14;
  if (v15 == -2147483647)
  {
    *(*(a1 + 24) + 4 * a3) = -2147483647;
    *v14 = a3;
    return 2147483649;
  }

  else
  {
    v17 = 0;
    LODWORD(v16) = -2147483647;
    do
    {
      v18 = v16;
      v16 = v15;
      v19 = *(a5 + 4 * a3);
      if (v19 == *(a5 + 4 * v16))
      {
        v20 = *(a6 + 4 * a3);
        if (v20 == *(a6 + 4 * v16) && (!a10 || *(a10 + 4 * a3) == *(a10 + 4 * v16)))
        {
          if ((v17 & 1) == 0)
          {
            v21 = *(a4 + 8 * a3);
            if (v19 < 1)
            {
              v24 = v21 + v19;
            }

            else
            {
              v22 = *a11;
              v23 = *(a4 + 8 * a3);
              do
              {
                a13[*(a7 + 4 * v23++)] = v22;
                v24 = v21 + *(a5 + 4 * a3);
              }

              while (v23 < v24);
              v20 = *(a6 + 4 * a3);
            }

            if (v24 < v21 + v20)
            {
              v25 = *a11;
              do
              {
                a14[*(a7 + 4 * v24++)] = v25;
              }

              while (v24 < v21 + *(a6 + 4 * a3));
            }
          }

          v26 = *(a4 + 8 * v16);
          v27 = *(a5 + 4 * v16);
          v28 = v26 + v27;
          if (v27 < 1)
          {
LABEL_21:
            v30 = *(a6 + 4 * v16);
            if (v27 >= v30)
            {
LABEL_30:
              v33 = *(a1 + 24);
              if (v18 == -2147483647)
              {
                v34 = v14;
              }

              else
              {
                v34 = (v33 + 4 * v18);
              }

              *v34 = *(v33 + 4 * v16);
              *(a5 + 4 * v16) = 0;
              *(a6 + 4 * v16) = 0;
              *(a9 + 4 * a3) += *(a9 + 4 * v16);
              v35 = a3;
              do
              {
                v36 = v35;
                v35 = *(a8 + 4 * v35);
              }

              while (v35 != -2147483647);
              *(a8 + 4 * v36) = v16;
              *(v33 + 4 * a3) = *v14;
              *v14 = a3;
              goto LABEL_36;
            }

            v31 = v26 + v30;
            while (a14[*(a7 + 4 * v28)] == *a11)
            {
              if (++v28 >= v31)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            v29 = *(a4 + 8 * v16);
            while (a13[*(a7 + 4 * v29)] == *a11)
            {
              if (++v29 >= v28)
              {
                goto LABEL_21;
              }
            }
          }

          v17 = 1;
        }
      }

      v32 = *(a1 + 24);
      v15 = *(v32 + 4 * v16);
    }

    while (v15 != -2147483647);
    *(v32 + 4 * a3) = *v14;
    *v14 = a3;
    v16 = 2147483649;
    if ((v17 & 1) == 0)
    {
      return v16;
    }

LABEL_36:
    v37 = *a11 + 1;
    if (__OFADD__(*a11, 1) || *a11 == 2147483646)
    {
      v37 = -2147483646;
      if (a12 >= 1)
      {
        memset_pattern16(a13, &unk_23681FBC0, 4 * a12);
        memset_pattern16(a14, &unk_23681FBC0, 4 * a12);
      }
    }

    *a11 = v37;
  }

  return v16;
}

void _SparseConvertFromCoordinate_Complex_Double(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned int *a11)
{
  v11 = a2;
  v12 = a4 * a4;
  *a9 = a1;
  *(a9 + 4) = a2;
  v13 = ((a10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + 1;
  v15 = (&v13[v14 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  *(a9 + 24) = 0;
  *(a9 + 32) = v15;
  *(a9 + 24) = a5;
  *(a9 + 28) = a4;
  v16 = v15 + 16 * a3 * v12;
  *(a9 + 8) = v13;
  *(a9 + 16) = v16;
  if (!a3)
  {
    if ((a2 & 0x80000000) == 0)
    {

      bzero(v13, 8 * (a2 + 1));
    }

    return;
  }

  v96 = (&v13[v14 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  v18 = a5;
  v105 = a1;
  v106 = a5;
  if (a2 >= 1)
  {
    v19 = a8;
    bzero(v13 + 2, 8 * a2);
    a1 = v105;
    a5 = v106;
    a8 = v19;
  }

  v20 = (v18 >> 2) & 7;
  v21 = (&v13[v14 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  v99 = v20;
  if (v20 == 1)
  {
    goto LABEL_12;
  }

  if (v20 != 2)
  {
    v22 = a8;
    LOBYTE(v102) = 0;
    v104 = 0;
    goto LABEL_14;
  }

  if (a4 != 1)
  {
LABEL_12:
    v22 = a8;
    v104 = (a5 & 2) == 0;
    v102 = (a5 & 2) >> 1;
LABEL_14:
    v103 = 1;
    LOBYTE(v101) = 1;
    goto LABEL_15;
  }

  v22 = a8;
  LOBYTE(v102) = 0;
  v101 = (a5 & 2) >> 1;
  v103 = (a5 & 2) == 0;
  v104 = 0;
LABEL_15:
  if (a3 >= 1)
  {
    v23 = a6;
    v24 = a3;
    v25 = a7;
    do
    {
      v27 = *v23++;
      v26 = v27;
      v29 = *v25++;
      v28 = v29;
      if ((v26 & 0x80000000) == 0 && v26 < a1)
      {
        v30 = v26 > v28 && v104;
        v31 = v103;
        if (v26 > v28)
        {
          v31 = 1;
        }

        if ((v28 & 0x80000000) == 0)
        {
          v32 = v28 < v11 && !v30;
          v33 = v32 && (v102 & (v26 < v28)) == 0;
          if (v33 && v101 & 1 | (v26 < v28) && v31)
          {
            v34 = ((a5 >> 1) & 1) == 0;
            if (v26 <= v28)
            {
              v34 = 0;
            }

            if (((v20 == 3) & ((v26 < v28) & (a5 >> 1) | v34)) == 0)
            {
              v26 = v28;
            }

            ++*(((a10 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x10 + 8 * v26);
          }
        }
      }

      --v24;
    }

    while (v24);
  }

  *(((a10 + 15) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
  v97 = v13 + 1;
  *v13 = 0;
  if (v11 >= 1)
  {
    v35 = 0;
    v36 = v14 - 1;
    v37 = v13 + 2;
    do
    {
      v35 += *v37;
      *v37++ = v35;
      --v36;
    }

    while (v36);
  }

  if (a1 >= 1)
  {
    memset_pattern16(a11, &unk_23681FAD0, 4 * a1);
    a1 = v105;
    a5 = v106;
  }

  v38 = 16 * v12;
  if (a3 >= 1)
  {
    v39 = v22;
    v40 = 0;
    v41 = a4;
    v42 = 16 * a4;
    v94 = v12;
    v95 = v11;
    do
    {
      v43 = a6[v40];
      if ((v43 & 0x80000000) != 0 || v43 >= a1)
      {
        goto LABEL_122;
      }

      v44 = a7[v40];
      v45 = v43 > v44 && v104;
      v46 = v103;
      if (v43 > v44)
      {
        v46 = 1;
      }

      if ((v44 & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      v107 = v39;
      v47 = v44 < v11 && !v45;
      v48 = v47 && (v102 & (v43 < v44)) == 0;
      if (!v48 || !(v101 & 1 | (v43 < v44)) || !v46)
      {
        goto LABEL_122;
      }

      if (v99 == 3 && (v43 > v44 ? (v49 = ((a5 >> 1) & 1) == 0) : (v49 = 0), (a5 & 2) != 0 && v43 < v44 || v49))
      {
        v55 = v97[v43];
        v97[v43] = v55 + 1;
        *(v16 + 4 * v55) = v44;
        if (a4)
        {
          v56 = 0;
          v57 = (v21 + 16 * v55 * v12);
          v58 = v39;
          v110 = v57;
          do
          {
            v59 = v41;
            v60 = v58;
            v61 = v57;
            do
            {
              *v61++ = *v60;
              v60 = (v60 + v42);
              --v59;
            }

            while (v59);
            ++v56;
            v57 = (v57 + v42);
            ++v58;
          }

          while (v56 != v41);
          v100 = v43;
          v39 = v107;
LABEL_81:
          if (a4 >= 2 && v44 == v43)
          {
            switch(v99)
            {
              case 3:
                v71 = 0;
                v72 = 0;
                do
                {
                  v73 = v72 + 1;
                  if ((a5 & 2) != 0)
                  {
                    v74 = 0;
                  }

                  else
                  {
                    v74 = v72 + 1;
                  }

                  if ((a5 & 2) != 0)
                  {
                    v75 = v72;
                  }

                  else
                  {
                    v75 = a4;
                  }

                  if (v74 < v75)
                  {
                    v76 = &v110[v72 + v41 * v74];
                    v77 = &v110[v71 + v74];
                    v78 = v75 - v74;
                    do
                    {
                      *v76 = vaddq_f64(*v77, *v76);
                      v77->f64[0] = 0.0;
                      v77->f64[1] = 0.0;
                      ++v77;
                      v76 = (v76 + v42);
                      --v78;
                    }

                    while (v78);
                  }

                  v71 += v41;
                  v72 = v73;
                }

                while (v73 != v41);
                break;
              case 2:
                v66 = 0;
                v67 = 0;
                v68 = v110;
                do
                {
                  if ((a5 & 2) != 0)
                  {
                    v69 = 0;
                  }

                  else
                  {
                    v69 = v67;
                  }

                  ++v67;
                  if ((a5 & 2) != 0)
                  {
                    v70 = v67;
                  }

                  else
                  {
                    v70 = a4;
                  }

                  if (v70 <= v69 + 1)
                  {
                    v70 = v69 + 1;
                  }

                  bzero(&v110[v66 + v69], 16 * (v70 + ~v69) + 16);
                  if (a11[v100] == -2)
                  {
                    *v68 = xmmword_23681FBD0;
                  }

                  v68 = (v68 + v42 + 16);
                  v41 = a4;
                  v66 += a4;
                  a1 = v105;
                  a5 = v106;
                }

                while (a4 != v67);
                break;
              case 1:
                v62 = 0;
                v63 = 0;
                do
                {
                  if ((a5 & 2) != 0)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v64 = v63 + 1;
                  }

                  if ((a5 & 2) != 0)
                  {
                    v65 = v63;
                  }

                  else
                  {
                    v65 = a4;
                  }

                  if (v64 < v65)
                  {
                    bzero(&v110[v64 + v62], 16 * (v65 + ~v64) + 16);
                    v41 = a4;
                    a1 = v105;
                    a5 = v106;
                  }

                  ++v63;
                  v62 += a4;
                }

                while (a4 != v63);
                break;
            }

            a11[v100] = -1;
            v12 = v94;
            v11 = v95;
            v21 = v96;
            v39 = v107;
          }
        }
      }

      else
      {
        v50 = v97[v44];
        v97[v44] = v50 + 1;
        *(v16 + 4 * v50) = v43;
        v51 = (v21 + 16 * v50 * v12);
        v52 = v12;
        v53 = v39;
        v110 = v51;
        if (a4)
        {
          do
          {
            v54 = *v53++;
            *v51++ = v54;
            --v52;
          }

          while (v52);
          v100 = v44;
          goto LABEL_81;
        }
      }

LABEL_122:
      ++v40;
      v39 = (v39 + v38);
    }

    while (v40 != a3);
  }

  if (v11 < 1)
  {
    v80 = 0;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v81 = *v13;
    do
    {
      v82 = v79;
      v13[v79++] = v80;
      v83 = v13[v79];
      if (v81 < v83)
      {
        v84 = (v21 + v38 * v81);
        do
        {
          v85 = *(v16 + 4 * v81);
          v86 = a11[v85];
          if ((v86 & 0x80000000) != 0)
          {
            if (v80 != v81)
            {
              *(v16 + 4 * v80) = v85;
              if (a4)
              {
                v89 = (v21 + 16 * v80 * v12);
                v90 = v12;
                v91 = v84;
                do
                {
                  v92 = *v91++;
                  *v89++ = v92;
                  --v90;
                }

                while (v90);
              }
            }

            a11[v85] = v80++ - LODWORD(v13[v82]);
          }

          else if (a4)
          {
            v87 = 0;
            v88 = v21 + 16 * (v13[v82] + v86) * v12;
            do
            {
              *(v88 + v87) = vaddq_f64(v84[v87 / 0x10], *(v88 + v87));
              v87 += 16;
            }

            while (v38 != v87);
          }

          ++v81;
          v83 = v13[v79];
          v84 = (v84 + v38);
        }

        while (v81 < v83);
        v93 = v13[v82];
        if (v93 < v80)
        {
          do
          {
            a11[*(v16 + 4 * v93++)] = -1;
          }

          while (v80 != v93);
        }
      }

      v81 = v83;
    }

    while (v79 != v11);
  }

  v13[v11] = v80;
}

void _SparseConvertFromOpaque_Complex_Double(void *A@<X0>, uint64_t a2@<X8>)
{
  if (A[8] && sparse_commit(A))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712E9C();
    }

    goto LABEL_75;
  }

  v4 = A[7];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236713044();
    }

LABEL_75:
    _SparseTrap();
  }

  v5 = *v4;
  if (*v4 > 1)
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        v20 = A[1];
        if (!(v20 ^ v20 | (v20 >> 63)))
        {
          v21 = A[2];
          if (!(v21 ^ v21 | (v21 >> 63)))
          {
            v22 = *(*(v4 + 24) + 8 * v21);
            v23 = (v21 << 32) + 0x100000000;
            v10 = malloc_type_malloc(4 * v22 + (v23 >> 29) + 16 * v22, 0x100004000313F17uLL);
            v11 = v10 + (v23 >> 29);
            v12 = &v11[16 * v22];
            if ((v21 & 0x80000000) == 0)
            {
              v24 = 0;
              v25 = A[7];
              do
              {
                v10[v24] = *(*(v25 + 24) + 8 * v24);
                ++v24;
              }

              while (v21 + 1 != v24);
            }

            if (v22 >= 1)
            {
              v26 = 0;
              v27 = (v10 + (v23 >> 29));
              do
              {
                v28 = A[7];
                *(v12 + 4 * v26) = *(*(v28 + 16) + 8 * v26);
                *v27++ = *(*(v28 + 8) + 16 * v26++);
              }

              while (v22 != v26);
            }

            v29 = *A - 1;
            if (v29 >= 8)
            {
              v19 = 0x8000;
            }

            else
            {
              v19 = word_23681FC10[v29];
            }

            *a2 = v20;
            *(a2 + 4) = v21;
            goto LABEL_80;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

LABEL_74:
          sub_236712F54();
          goto LABEL_75;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

LABEL_66:
        sub_236712EE4();
        goto LABEL_75;
      }

      goto LABEL_33;
    }

    v41 = A[1];
    if (v41 ^ v41 | (v41 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_66;
    }

    v42 = A[2];
    if (v42 ^ v42 | (v42 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    v43 = ((v42 << 32) + 0x100000000) >> 29;
    v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
    v45 = v44;
    if (v42 < 1)
    {
      v47 = 0;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 8;
      do
      {
        *(v44 + v46) = v47;
        if (v41 >= 1)
        {
          v49 = (*(A[7] + 8) + v48);
          v50 = v41;
          do
          {
            v51 = *v49 != 0.0 || *(v49 - 1) != 0.0;
            v47 += v51;
            v49 += 2;
            --v50;
          }

          while (v50);
        }

        ++v46;
        v48 += 16 * v41;
      }

      while (v46 != (v42 & 0x7FFFFFFF));
    }

    *(v44 + v42) = v47;
    v52 = malloc_type_malloc(v43 + 4 * v47 + 16 * v47, 0x100004000313F17uLL);
    memcpy(v52, v45, v43);
    free(v45);
    v11 = &v52[v43];
    v12 = &v52[16 * v47 + v43];
    if (v42 >= 1)
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      do
      {
        if (v41 >= 1)
        {
          v65 = 0;
          v66 = v41;
          v67 = v62;
          do
          {
            v68 = A[7];
            v69 = (*(v68 + 8) + v67);
            if (*v69 != 0.0 || v69[1] != 0.0)
            {
              *(v12 + 4 * v64) = v65;
              *&v11[16 * v64++] = *(*(v68 + 8) + v67);
            }

            ++v65;
            v67 += 16;
            --v66;
          }

          while (v66);
        }

        ++v63;
        v62 += 16 * v41;
      }

      while (v63 != (v42 & 0x7FFFFFFF));
    }

    v70 = *A - 1;
    if (v70 >= 8)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = word_23681FC10[v70];
    }

    *a2 = v41;
    *(a2 + 4) = v42;
LABEL_109:
    *(a2 + 8) = v52;
    goto LABEL_110;
  }

  if (v5 == -4)
  {
    v30 = A[1];
    if (v30 ^ v30 | (v30 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_66;
    }

    v31 = A[2];
    if (v31 ^ v31 | (v31 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    v32 = ((v30 << 32) + 0x100000000) >> 29;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = v33;
    if (v30 < 1)
    {
      v36 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 8;
      do
      {
        *(v33 + v35) = v36;
        if (v31 >= 1)
        {
          v38 = (*(A[7] + 8) + v37);
          v39 = v31;
          do
          {
            v40 = *v38 != 0.0 || *(v38 - 1) != 0.0;
            v36 += v40;
            v38 += 2;
            --v39;
          }

          while (v39);
        }

        ++v35;
        v37 += 16 * v31;
      }

      while (v35 != (v30 & 0x7FFFFFFF));
    }

    *(v33 + v30) = v36;
    v52 = malloc_type_malloc(v32 + 4 * v36 + 16 * v36, 0x100004000313F17uLL);
    memcpy(v52, v34, v32);
    free(v34);
    v11 = &v52[v32];
    v12 = &v52[16 * v36 + v32];
    if (v30 >= 1)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      do
      {
        if (v31 >= 1)
        {
          v56 = 0;
          v57 = v31;
          v58 = v53;
          do
          {
            v59 = A[7];
            v60 = (*(v59 + 8) + v58);
            if (*v60 != 0.0 || v60[1] != 0.0)
            {
              *(v12 + 4 * v55) = v56;
              *&v11[16 * v55++] = *(*(v59 + 8) + v58);
            }

            ++v56;
            v58 += 16;
            --v57;
          }

          while (v57);
        }

        ++v54;
        v53 += 16 * v31;
      }

      while (v54 != (v30 & 0x7FFFFFFF));
    }

    v61 = *A - 1;
    if (v61 >= 8)
    {
      v19 = -32767;
    }

    else
    {
      v19 = word_23681FC20[v61];
    }

    *a2 = v31;
    *(a2 + 4) = v30;
    goto LABEL_109;
  }

  if (v5 != -2)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712FC4(v5);
    }

    goto LABEL_75;
  }

  v6 = A[1];
  if (v6 ^ v6 | (v6 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    goto LABEL_66;
  }

  v7 = A[2];
  if (v7 ^ v7 | (v7 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  v9 = (v6 << 32) + 0x100000000;
  v10 = malloc_type_malloc(4 * v8 + (v9 >> 29) + 16 * v8, 0x100004000313F17uLL);
  v11 = v10 + (v9 >> 29);
  v12 = &v11[16 * v8];
  if ((v6 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = A[7];
    do
    {
      v10[v13] = *(*(v14 + 24) + 8 * v13);
      ++v13;
    }

    while (v6 + 1 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    v16 = (v10 + (v9 >> 29));
    do
    {
      v17 = A[7];
      *(v12 + 4 * v15) = *(*(v17 + 16) + 8 * v15);
      *v16++ = *(*(v17 + 8) + 16 * v15++);
    }

    while (v8 != v15);
  }

  v18 = *A - 1;
  if (v18 >= 8)
  {
    v19 = -32767;
  }

  else
  {
    v19 = word_23681FC20[v18];
  }

  *a2 = v7;
  *(a2 + 4) = v6;
LABEL_80:
  *(a2 + 8) = v10;
LABEL_110:
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 24) = v19;
  *(a2 + 28) = 1;
  *(a2 + 32) = v11;
}

void sub_236712E80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_236712FC4(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected matrix storage scheme %d.\n", v1, 8u);
}

uint64_t sub_2367130B4(uint64_t a1, char *__b, long double *a3, long double *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a1 + 28);
  v9 = (*a1 * v8);
  v10 = (*(a1 + 4) * v8);
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  v15 = *(a1 + 32);
  v12 = sub_236713170(0, v14, __b, v9, a3, v9, a4, v10, a5, a6);
  if (v9)
  {
    do
    {
      *v7 = exp(*v7);
      ++v7;
      --v9;
    }

    while (v9);
  }

  if (v10)
  {
    do
    {
      *v6 = exp(*v6);
      ++v6;
      --v10;
    }

    while (v10);
  }

  return v12;
}

uint64_t sub_236713170(int a1, signed int *a2, char *__b, uint64_t a4, double *a5, unint64_t a6, double *a7, unint64_t a8, uint64_t *a9, uint64_t a10)
{
  v11 = a4;
  v13 = a9;
  v14 = *(a2 + 28);
  v15 = a2[1];
  v16 = v15 * v14;
  v261 = *(a2 + 1);
  v275 = (v14 * v14);
  v17 = (*(v261 + 8 * v15) * v275) << a1;
  v247 = v15 * v14 + 1;
  v18 = (4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v17;
  v281 = &a9[v247] + v18;
  v284 = &a9[v247];
  v250 = &v281[8 * v17];
  v246 = (*a2 * v14) & 0x1FFFFFFFFFFFFFFFLL;
  v254 = &v250[(20 * v15 * v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  v20 = v15 * v14;
  v253 = &v254[8 * *a2 * v14];
  v21 = &v253[v20];
  v248 = v17;
  v249 = (20 * v15 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v244 = 8 * *a2 * v14;
  v245 = v20 & 0x1FFFFFFFFFFFFFFFLL;
  v257 = (*a2 * v14);
  v260 = &v21[v20];
  v22 = &a9[v20];
  v265 = a5;
  v270 = v20;
  v252 = 8 * v247;
  v268 = __b;
  v251 = v18;
  if (v15 * v14 < 1)
  {
    *v22 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_66;
    }

    v241 = v15 * v14;
    v242 = a4;
    v243 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = 0;
  }

  else
  {
    v240 = &a9[v16];
    v241 = v15 * v14;
    v242 = a4;
    v243 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    v23 = 0;
    v24 = 0;
    v256 = &a9[v247] + v18;
    v25 = 0;
    do
    {
      v271 = v24;
      v273 = v23;
      v13[v23] = v24;
      v26 = v23 / v14;
      v27 = (v261 + 8 * (v23 / v14));
      v28 = *v27;
      v29 = v27[1];
      if (*v27 < v29)
      {
        v30 = *(a2 + 2);
        v25 = v24;
        do
        {
          v31 = *(v30 + 4 * v28);
          if ((v31 & 0x80000000) == 0)
          {
            v32 = a1;
            if (v31 >= v26)
            {
              v32 = 0;
            }

            if ((v32 & 1) == 0 && v31 < *a2)
            {
              if (a1)
              {
                v33 = (v273 - v26 * v14);
              }

              else
              {
                v33 = 0;
              }

              v34 = *(a2 + 4) + 16 * v28 * v275 + 16 * ((v273 - v26 * v14) * v14);
              v35 = v33 + v31 * v14;
              do
              {
                v36 = (v34 + 16 * v33);
                v37 = *v36;
                v38 = v36[1];
                if (*v36 != 0.0 || v38 != 0.0)
                {
                  *(v284 + v25) = v35;
                  *&v281[8 * v25++] = hypot(v37, v38);
                }

                ++v33;
                ++v35;
              }

              while (v33 < v14);
            }
          }

          ++v28;
        }

        while (v28 != v29);
      }

      v39 = v25 - v271;
      if (v25 > v271)
      {
        v40 = &v256[8 * v271];
        do
        {
          *v40 = log(*v40);
          ++v40;
          --v39;
        }

        while (v39);
      }

      v23 = v273 + 1;
      v24 = v25;
      v20 = v270;
      v13 = a9;
    }

    while (v273 + 1 != v270);
    *v240 = v25;
    a5 = v265;
    __b = v268;
    if ((a1 & 1) == 0)
    {
      goto LABEL_50;
    }

    v41 = v25 + 1;
    bzero(v250, 4 * v270);
    v42 = 0;
    v43 = 0;
    v44 = *a9;
    do
    {
      v45 = v42 + 1;
      v46 = a9[v42 + 1];
      *&v250[4 * v42] += v46 - v44;
      v47 = v46 - v44;
      if (v46 > v44)
      {
        v48 = &a9[v252 / 8] + v44;
        do
        {
          v50 = *v48++;
          v49 = v50;
          if (v42 == v50)
          {
            ++v43;
          }

          else
          {
            ++*&v250[4 * v49];
          }

          --v47;
        }

        while (v47);
      }

      v44 = v46;
      ++v42;
    }

    while (v45 != v270);
    v51 = 2 * v25 - v43;
    v52 = v51 + 1;
    v53 = v270;
    do
    {
      v54 = v53 - 1;
      v55 = a9[v53 - 1] + 1;
      v56 = v52;
      if (v41 > v55)
      {
        v57 = 0;
        do
        {
          *(&a9[v252 / 8 - 2 + v52 + v57] + v251) = *(&a9[v252 / 8 - 2 + v41 + v57] + v251);
          *(&a9[v252 / 8 - 1] + v52 + v57) = *(&a9[v252 / 8 - 1] + v41 + v57);
          --v57;
        }

        while (v41 + v57 > v55);
        v56 = v52 + v57;
      }

      a9[v54] = v56 - 1;
      v52 -= *&v250[4 * v54];
      *&v250[4 * v54] = v41 - v55;
      v41 = v55;
      v129 = v53-- <= 1;
    }

    while (!v129);
    v20 = v270;
    v58 = v270;
    do
    {
      v59 = v58--;
      v60 = *&v250[4 * v58];
      if (v60 >= 1)
      {
        v61 = a9[v58];
        v62 = v61 + v60;
        do
        {
          v63 = *(v284 + v61);
          if (v58 != v63)
          {
            v64 = a9[v63] - 1;
            a9[v63] = v64;
            *&v281[8 * v64] = *(&a9[v61] + v251 + v252);
            *(v284 + v64) = v58;
          }

          ++v61;
        }

        while (v61 < v62);
      }
    }

    while (v59 >= 2);
    v22 = v240;
  }

  *v22 = v51;
LABEL_50:
  v11 = v242;
  v19 = v243;
  v16 = v241;
  if (v20 >= 1)
  {
    v65 = 0;
    v66 = *v13;
    do
    {
      v67 = v65 + 1;
      v68 = v13[v65 + 1];
      v69 = v68 - v66;
      if (v68 - v66 == -1)
      {
        v70 = v243 - v66;
      }

      else
      {
        v70 = v68 - v66;
      }

      if (v70)
      {
        v71 = &v281[8 * v66];
        v72 = *v71;
        v73 = 8 * v70;
        do
        {
          v74 = *v71++;
          v75 = v74;
          if (v72 < v74)
          {
            v72 = v75;
          }

          v73 -= 8;
        }

        while (v73);
      }

      else
      {
        v72 = NAN;
      }

      v21[v65] = v72;
      if (v68 > v66)
      {
        v76 = (&v13[v66] + v251 + v252);
        do
        {
          *v76 = v72 - *v76;
          ++v76;
          --v69;
        }

        while (v69);
      }

      v66 = v68;
      ++v65;
    }

    while (v67 != v20);
  }

LABEL_66:
  v77 = 8 * v16;
  v78 = v248;
  v79 = sub_23670D0B4(v257, v20, v13, v247, v284, v248, v281, v19, __b, v11, v254, v246, v253, v245, v260);
  v80 = v79;
  if (!a1 || v79 == v20)
  {
    v148 = v257;
    if (v257 >= 1)
    {
      v149 = (&v13[v78] + v251 + v249 + v252);
      v150 = a5;
      do
      {
        v151 = *v149++;
        *v150++ = v151;
        --v148;
      }

      while (v148);
    }

    v152 = a7;
    if (v20 >= 1)
    {
      v153 = (&v13[v78] + v251 + v249 + v244 + v252);
      v154 = a7;
      do
      {
        v155 = v153[v77 / 8];
        v156 = *v153++;
        *v154++ = v156 - v155;
        --v20;
      }

      while (v20);
    }

    v157 = a2[1];
    v158 = *a2;
    v159 = *(a2 + 28);
    v286 = *a2;
    v160 = *a2 * v159;
    v161 = v157 * v159;
    if (v160 == v161)
    {
      v162 = a6;
      if (v160 != -1)
      {
        v162 = v158 * *(a2 + 28);
      }

      v163 = 0.0;
      v164 = 0.0;
      if (v162)
      {
        v165 = 8 * v162;
        v166 = a5;
        do
        {
          v167 = *v166++;
          v164 = v164 + v167;
          v165 -= 8;
        }

        while (v165);
      }

      v168 = a8;
      if (v160 != -1)
      {
        v168 = v158 * *(a2 + 28);
      }

      if (v168)
      {
        v169 = 8 * v168;
        v163 = 0.0;
        v170 = a7;
        do
        {
          v171 = *v170++;
          v163 = v163 + v171;
          v169 -= 8;
        }

        while (v169);
      }

      if (v160 >= 1)
      {
        v172 = (v164 / v160 - v163 / v160) * 0.5;
        v173 = v160;
        v174 = v160;
        do
        {
          *a5 = *a5 - v172;
          ++a5;
          --v174;
        }

        while (v174);
        do
        {
          *v152 = v172 + *v152;
          ++v152;
          --v173;
        }

        while (v173);
      }
    }

    else
    {
      v175 = *(a2 + 2);
      v272 = *(a2 + 1);
      v274 = v157 * v159;
      v278 = v159 * v159;
      v280 = *(a2 + 4);
      v283 = v159;
      if (v160 >= v161)
      {
        if (v161 < v160)
        {
          v259 = v158 * v159;
          if (v160 <= 0)
          {
            v192 = (0.0 / v79 - 0.0 / v79) * 0.5;
          }

          else
          {
            v186 = 0.0;
            v187 = a5;
            v188 = v160;
            v189 = 0.0;
            do
            {
              v191 = *__b;
              __b += 4;
              v190 = v191;
              if (v191 != -1)
              {
                v189 = v189 + *v187;
                v186 = v186 + a7[v190];
              }

              ++v187;
              --v188;
            }

            while (v188);
            v192 = (v189 / v79 - v186 / v79) * 0.5;
            v193 = v160;
            do
            {
              *a5 = *a5 - v192;
              ++a5;
              --v193;
            }

            while (v193);
          }

          v264 = v79;
          v255 = v160;
          if (v161 <= 0)
          {
            bzero(v260, 8 * v160);
          }

          else
          {
            v218 = a7;
            v219 = v157 * v159;
            do
            {
              *v218 = v192 + *v218;
              ++v218;
              --v219;
            }

            while (v219);
            bzero(v260, 8 * v160);
            v220 = 0;
            if (v159 <= 1)
            {
              v221 = 1;
            }

            else
            {
              v221 = v159;
            }

            v276 = v221;
            do
            {
              v222 = (v272 + 8 * (v220 / v159));
              v223 = *v222;
              v224 = v222[1];
              if (*v222 < v224)
              {
                do
                {
                  v225 = *(v175 + 4 * v223);
                  if ((v225 & 0x80000000) == 0 && v225 < v286)
                  {
                    v226 = 0;
                    v227 = v276;
                    v229 = &v260[8 * v225 * v283];
                    do
                    {
                      v228 = v280 + 16 * v223 * v278 + 16 * (v220 - v220 / v159 * v283) * v283;
                      v230 = hypot(*(v228 + 16 * v226), *(v228 + 16 * v226 + 8));
                      v231 = v230 * exp(a7[v220]);
                      if (*v229 >= v231)
                      {
                        v231 = *v229;
                      }

                      *v229++ = v231;
                      ++v226;
                      --v227;
                    }

                    while (v227);
                  }

                  ++v223;
                }

                while (v223 != v224);
              }

              ++v220;
              v159 = v283;
            }

            while (v220 != v274);
          }

          if (v259 < 1)
          {
            return v264;
          }

          else
          {
            v232 = v268;
            v233 = v255;
            v234 = (&a9[2 * v270 + v248] + v251 + v249 + v244 + v252);
            v235 = v265;
            v80 = v264;
            do
            {
              v236 = *v232;
              v232 += 4;
              if (v236 == -1)
              {
                v237 = 0.0;
                if (*v234 != 0.0)
                {
                  v237 = log(1.0 / *v234);
                }

                *v235 = v237;
              }

              ++v235;
              ++v234;
              --v233;
            }

            while (v233);
          }
        }
      }

      else
      {
        v263 = v79;
        v258 = v158 * v159;
        if (v160 <= 0)
        {
          v184 = (0.0 / v79 - 0.0 / v79) * 0.5;
        }

        else
        {
          v176 = v160;
          v177 = 0.0;
          v178 = __b;
          v179 = a5;
          v180 = v160;
          v181 = 0.0;
          do
          {
            v183 = *v178;
            v178 += 4;
            v182 = v183;
            if (v183 != -1)
            {
              v177 = v177 + *v179;
              v181 = v181 + a7[v182];
            }

            ++v179;
            --v180;
          }

          while (v180);
          v184 = (v177 / v79 - v181 / v79) * 0.5;
          do
          {
            *a5 = *a5 - v184;
            ++a5;
            --v176;
          }

          while (v176);
        }

        if (v161 >= 1)
        {
          v194 = a7;
          v195 = v161;
          do
          {
            *v194 = v184 + *v194;
            ++v194;
            --v195;
          }

          while (v195);
          v196 = 0;
          if (v159 <= 1)
          {
            v197 = 1;
          }

          else
          {
            v197 = v159;
          }

          do
          {
            v198 = (v272 + 8 * (v196 / v159));
            v200 = *v198;
            v199 = v198[1];
            v201 = 0.0;
            if (*v198 < v199)
            {
              v202 = 0.0;
              v203 = (v196 - v196 / v159 * v283) * v283;
              do
              {
                v204 = *(v175 + 4 * v200);
                if ((v204 & 0x80000000) == 0 && v204 < v286)
                {
                  v205 = 0;
                  v207 = &v265[v204 * v283];
                  v208 = v197;
                  do
                  {
                    v206 = v280 + 16 * v200 * v278 + 16 * v203;
                    v209 = hypot(*(v206 + 16 * v205), *(v206 + 16 * v205 + 8));
                    v210 = *v207++;
                    v211 = v209 * exp(v210);
                    if (v202 < v211)
                    {
                      v202 = v211;
                    }

                    ++v205;
                    --v208;
                  }

                  while (v208);
                }

                ++v200;
                __b = v268;
              }

              while (v200 != v199);
              v201 = 0.0;
              v13 = a9;
              if (v202 != 0.0)
              {
                v201 = log(1.0 / v202);
              }
            }

            *&v260[8 * v196++] = v201;
            v161 = v274;
            v159 = v283;
          }

          while (v196 != v274);
        }

        v212 = a7;
        if (v258 >= 1)
        {
          v213 = v258;
          do
          {
            v215 = *__b;
            __b += 4;
            v214 = v215;
            if (v215 != -1)
            {
              *&v260[8 * v214] = a7[v214];
            }

            --v213;
          }

          while (v213);
        }

        v80 = v263;
        if (v161 >= 1)
        {
          v216 = (&v13[2 * v270 + v248] + v251 + v249 + v244 + v252);
          do
          {
            v217 = *v216++;
            *v212++ = v217;
            --v161;
          }

          while (v161);
        }
      }
    }
  }

  else
  {
    v81 = 2 * v20;
    if (v20 == -1)
    {
      v82 = 0x3FFFFFFFFFFFFFFDLL;
    }

    else
    {
      v82 = v20;
    }

    v83 = &v250[4 * v81];
    if (v257 >= 1)
    {
      v84 = 0;
      v85 = 0;
      v86 = v79 + 1;
      v87 = &v13[v78] + v251 + v252;
      do
      {
        if (*&__b[4 * v84] > -2)
        {
          *&v87[4 * v84] = v85;
          *&v250[4 * v20 + 4 * v85++] = v84;
        }

        else
        {
          *&v87[4 * v84] = ~v86++;
        }

        ++v84;
      }

      while (v257 != v84);
    }

    *v13 = 0;
    if (v20 <= 0)
    {
      return sub_23670D0B4(0, 0, v13, v247, v284, v248, v281, v19, v83, v82, v254, v246, v253, v245, v260);
    }

    v88 = v19;
    v89 = 0;
    v90 = 0;
    v91 = v13;
    v92 = 0;
    v93 = 0;
    v94 = v81;
    v95 = &v91[v252 / 8];
    v96 = v91 + v251 + v252;
    do
    {
      v97 = v89 + 1;
      v98 = a9[v89 + 1];
      if (*&__b[4 * v89] >= -1)
      {
        v99 = v98 - v93;
        if (v98 > v93)
        {
          v100 = v95 + v93;
          v101 = &v96[8 * v93];
          do
          {
            v103 = *v100++;
            v102 = v103;
            if (*&__b[4 * v103] >= -1)
            {
              *(v284 + v90) = *&v250[4 * v102];
              *&v281[8 * v90++] = *v101;
            }

            v101 += 8;
            --v99;
          }

          while (v99);
        }

        a9[++v92] = v90;
      }

      v89 = v97;
      v93 = v98;
    }

    while (v97 != v20);
    v104 = sub_23670D0B4(v92, v92, a9, v247, v284, v248, v281, v88, v83, v82, v254, v246, v253, v245, v260);
    v105 = (&a9[v78] + v251 + v252);
    v106 = (&a9[v78] + v251 + v249 + v77 + v244 + v252);
    v107 = v270;
    v108 = a5;
    do
    {
      v110 = *v105++;
      v109 = v110;
      if (v110 >= -1)
      {
        v111 = (*&v254[8 * v109] + v253[v109] - *v106) * 0.5;
      }

      else
      {
        v111 = -INFINITY;
      }

      *v108++ = v111;
      ++v106;
      --v107;
    }

    while (v107);
    memset_pattern16(__b, &unk_23681FAD0, 4 * v270);
    if (v92 > 0)
    {
      v112 = v92;
      v113 = v78 * 8 + v251 + v252;
      v114 = (a9 + 4 * v94 + v113);
      v115 = (a9 + 4 * v270 + v113);
      do
      {
        v117 = *v114++;
        v116 = v117;
        v118 = *v115++;
        *&__b[4 * v118] = v116;
        --v112;
      }

      while (v112);
    }

    v119 = (&a9[v78] + v251 + v252);
    v120 = v270;
    do
    {
      if (*__b == -2)
      {
        *__b = *v119;
      }

      __b += 4;
      ++v119;
      --v120;
    }

    while (v120);
    v262 = v104;
    v266 = v77;
    v121 = (&a9[v78] + v251 + v249 + v77 + v244 + v252);
    v122 = v270;
    v123 = a5;
    do
    {
      v124 = *v123++;
      *v121++ = v124;
      --v122;
    }

    while (v122);
    v125 = 0;
    v269 = *(a2 + 1);
    do
    {
      v126 = (v269 + 8 * (v125 / v14));
      v127 = *v126;
      v285 = v126[1];
      if (*v126 < v285)
      {
        v282 = *(a2 + 2);
        do
        {
          v128 = *(v282 + 4 * v127);
          if ((v128 & 0x80000000) == 0)
          {
            v129 = v128 >= (v125 / v14) && v128 < *a2;
            if (v129)
            {
              v130 = (v128 * v14);
              v131 = *(a2 + 4) + 16 * v127 * v275 + 16 * v125 % v14 * v14;
              v132 = v125 % v14;
              do
              {
                v133 = v132 + v130;
                v134 = (v131 + 16 * v132);
                v135 = *v134;
                v136 = v134[1];
                if (v21[v125] == -INFINITY && v21[v133] != -INFINITY)
                {
                  v137 = hypot(*v134, v134[1]);
                  v138 = log(v137) + a5[v133];
                  if (a5[v125] >= v138)
                  {
                    v138 = a5[v125];
                  }

                  a5[v125] = v138;
                }

                if (v21[v133] == -INFINITY && v21[v125] != -INFINITY)
                {
                  v139 = hypot(v135, v136);
                  v140 = log(v139) + a5[v125];
                  if (a5[v133] >= v140)
                  {
                    v140 = a5[v133];
                  }

                  a5[v133] = v140;
                }

                ++v132;
              }

              while (v132 < v14);
            }
          }

          ++v127;
        }

        while (v127 != v285);
      }

      ++v125;
    }

    while (v125 != v270);
    v141 = a7;
    v142 = (&a9[v248] + v251 + v249 + v266 + v244 + v252);
    v143 = v270;
    v144 = v270;
    v145 = a5;
    v80 = v262;
    do
    {
      if (*v142 == -INFINITY)
      {
        if (*v145 == -INFINITY)
        {
          v146 = 0.0;
        }

        else
        {
          v146 = -*v145;
        }

        *v145 = v146;
      }

      ++v142;
      ++v145;
      --v144;
    }

    while (v144);
    do
    {
      v147 = *a5++;
      *v141++ = v147;
      --v143;
    }

    while (v143);
  }

  return v80;
}

uint64_t sub_2367141F8(uint64_t a1, char *__b, long double *a3, double *a4, uint64_t a5)
{
  v7 = *(a1 + 4) * *(a1 + 28);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v13 = *(a1 + 32);
  v9 = sub_236713170(1, v12, __b, v7, a4, v7 & 0x1FFFFFFFFFFFFFFFLL, &a4[v7], v7 & 0x1FFFFFFFFFFFFFFFLL, &a4[v7 + v7], a5 - 16 * v7);
  if (v7)
  {
    v10 = v7;
    do
    {
      *a3++ = exp((*a4 + a4[v10]) * 0.5);
      ++a4;
      --v7;
    }

    while (v7);
  }

  return v9;
}

uint64_t sub_2367142C0(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a5;
  v13 = a10;
  v43 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_38;
  }

  v14 = 0;
  v54 = a6 + 1;
  v45 = a5 + 16 * ~a6 * a4;
  v44 = a7 - 4 * a4;
  v15 = 16 * a6;
  v50 = 16 * a6 + 16;
  v51 = a5 + 24;
  v48 = a5 + 8;
  v16 = a3;
  while (1)
  {
    v17 = (v14 + 1);
    if (v17 >= a3)
    {
      break;
    }

    v18 = (v51 + v50 * v14);
    v19 = -1;
    v20 = -1.0;
    v21 = v14 + 1;
    do
    {
      v22 = hypot(*(v18 - 1), *v18);
      if (v22 > v20)
      {
        v19 = v21;
        v20 = v22;
      }

      v18 += 2;
      ++v21;
    }

    while (a3 != v21);
    v11 = a5;
    if (v19 < 0)
    {
      goto LABEL_13;
    }

    v23 = *(a9 + 24);
    if (v20 >= v23 || hypot(*(a5 + 16 * v54 * v14), *(a5 + 16 * v54 * v14 + 8)) >= v23)
    {
      goto LABEL_13;
    }

    sub_236778828((v14 + a4), (--v16 + a4), (a4 + a1), (a4 + a2), v45, a6, v44);
    v17 = v14;
LABEL_32:
    v14 = v17;
    if (v17 >= v16)
    {
      goto LABEL_35;
    }
  }

  v19 = -1;
  v20 = -1.0;
LABEL_13:
  if (v14 != v16 - 1 || (v24 = (v11 + 16 * v54 * v14), *v24 != 0.0) || v24[1] != 0.0)
  {
    v25 = (v11 + 16 * v54 * v14);
    if (v19 == -1 || (v26 = hypot(*v25, v25[1]), v26 >= v20 * 0.640388203))
    {
      sub_23677A828((a3 - v14), (a3 - v14), v25, a6, a8 + 32 * v14, a10);
      goto LABEL_32;
    }

    v27 = v26;
    v28 = -1.0;
    if (v14 < v19)
    {
      v29 = (v48 + v15 * v14 + 16 * v19);
      v30 = v19 - v14;
      do
      {
        v28 = fmax(v28, hypot(*(v29 - 1), *v29));
        v29 = (v29 + v15);
        --v30;
      }

      while (v30);
    }

    if (v19 + 1 < a3)
    {
      v31 = (v48 + v15 * v19 + 16 * (v19 + 1));
      v32 = v43 - v19;
      do
      {
        v28 = fmax(v28, hypot(*(v31 - 1), *v31));
        v31 += 2;
        --v32;
      }

      while (v32);
    }

    if (v20 * (v20 * 0.640388203) <= v27 * v28)
    {
      v33 = (a3 - v14);
      v34 = a8 + 32 * v14;
      v35 = v33;
      v36 = v25;
      v37 = a6;
    }

    else
    {
      if (hypot(*(a5 + 16 * v54 * v19), *(a5 + 16 * v54 * v19 + 8)) < v28 * 0.640388203)
      {
        sub_236778828((v17 + a4), (v19 + a4), (a4 + a1), (a4 + a2), v45, a6, v44);
        sub_23677DD4C((a3 - v14), (a3 - v14), v25, a6, a8 + 32 * v14, a10);
        v17 = (v14 + 2);
LABEL_31:
        v11 = a5;
        goto LABEL_32;
      }

      sub_236778828((v14 + a4), (v19 + a4), (a4 + a1), (a4 + a2), v45, a6, v44);
      v33 = (a3 - v14);
      v35 = v33;
      v36 = v25;
      v37 = a6;
      v34 = a8 + 32 * v14;
    }

    sub_23677A828(v33, v35, v36, v37, v34, a10);
    goto LABEL_31;
  }

  v16 = v14;
LABEL_35:
  v38 = (a3 - v16);
  v13 = a10;
  if (a3 > v16)
  {
    v39 = a8 + 32 * v16;
    v40 = (v11 + 16 * v54 * v16);
    v41 = v15 + 16;
    do
    {
      *v40 = xmmword_23681FC30;
      sub_23677A828(v38, v38, v40, a6, v39, a10);
      v39 += 32;
      v40 = (v40 + v41);
      v38 = (v38 - 1);
    }

    while (v38);
  }

LABEL_38:
  sub_2367839C0((a1 - a3), a3, v11, a6, v11 + 16 * a3, a6, a8, v13);
  return a3;
}

uint64_t sub_23671470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v10 = a3;
  v12 = a3 + 16 * a2 * a4;
  if (a2 >= 48)
  {
    LODWORD(v13) = 0;
    v31 = a4 + 1;
    v26 = a1 - a2;
    v28 = a3 + 16 * a2 * a4;
    v29 = a5;
    v27 = a6;
    do
    {
      v14 = v31 * v13;
      v15 = v10 + 16 * v14;
      v16 = v12 + 32 * v13;
      v17 = a2 - v13;
      if (a2 - v13 >= 48)
      {
        v18 = 48;
      }

      else
      {
        v18 = v17;
      }

      v19 = a1;
      v20 = a7;
      v21 = v9;
      sub_2367142C0(a1 - v13, a2 - v13, v18, v13, v10 + 16 * v14, v9, a5 + 4 * v13, v12 + 32 * v13, a6, a7);
      v13 = (v18 + v13);
      if (v17 >= 1 && v13 < a2)
      {
        v22 = (v17 - v18);
        v23 = v15 + 16 * v18;
        v24 = v15 + 16 * v31 * v18;
        sub_236747A3C(v22, v18, v23, v21, v16, v24, v21, v20);
        if (v19 > a2)
        {
          sub_23674BD2C(v26, v22, v18, v23 + 16 * v22, v23, v21, v16, v24 + 16 * v22, v21, v20);
        }
      }

      a5 = v29;
      v10 = a3;
      a6 = v27;
      v12 = v28;
      v9 = v21;
      a7 = v20;
      a1 = v19;
    }

    while (v13 < a2);
  }

  else
  {
    sub_2367142C0(a1, a2, a2, 0, a3, a4, a5, v12, a6, a7);
    return a2;
  }

  return v13;
}

BOOL sub_2367148A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = a5 + 16 * a1 * a6;
  v15 = v14 + 16 * a1;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = (v14 + 16 * a2);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a5 + 16 * (a2 * a6 + a2));
  v22 = *v21;
  v23 = v21[1];
  v24 = hypot(*v15, v17);
  v57 = v19;
  v25 = hypot(v19, v20);
  v26 = fmax(v24, fmax(v25, hypot(v22, v23)));
  result = 0;
  if (fabs(v26) >= *(a7 + 24))
  {
    v27 = 1.0 / v26;
    v28 = v16 * (1.0 / v26);
    v29 = v17 * (1.0 / v26);
    v30 = v22 * v28 - v23 * v29;
    v31 = v23 * v28 + v22 * v29;
    v55 = v29;
    v56 = v28;
    v54 = -v20;
    v32 = 1.0 / v26 * (v57 * v57 + v20 * v20);
    v33 = 1.0 / v26 * (v57 * v20 - v57 * v20);
    v52 = v31 - v33;
    v53 = v30 - v32;
    v34 = hypot(v30 - v32, v31 - v33);
    if (v34 >= *(a7 + 24))
    {
      v35 = hypot(v30, v31) * 0.5;
      if (v34 >= fmax(v35, hypot(v32, v33) * 0.5))
      {
        v36 = sub_23681E17C(v22 * v27, v23 * v27, v53, v52);
        v38 = v37;
        v39 = sub_23681E17C(-(v57 * v27), v27 * v54, v53, v52);
        v41 = v40;
        v42 = sub_23681E17C(v56, v55, v53, v52);
        v44 = v43;
        v45 = sub_236714B8C(v13, v12, v11, v10, a5, a6);
        v46 = sub_236714B8C(v12, v13, v11, v10, a5, a6);
        v47 = hypot(v36, v38);
        v48 = hypot(v39, v41);
        v49 = v46 * v48 + v47 * v45;
        v50 = 1.0 / *(a7 + 16);
        if (v49 <= v50 && v46 * hypot(v42, v44) + v48 * v45 <= v50)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

double sub_236714B8C(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = 0.0;
  if (a4 < a1)
  {
    v12 = a2 - a4;
    v13 = a1 - a4;
    v14 = (16 * a6 * a4 + 16 * a1 + a5 + 8);
    do
    {
      if (v12)
      {
        v15 = hypot(*(v14 - 1), *v14);
        if (v15 > v11)
        {
          v11 = v15;
        }
      }

      --v12;
      v14 += 2 * a6;
      --v13;
    }

    while (v13);
  }

  v16 = a1 + 1;
  if (a1 + 1 < a3)
  {
    v17 = a2 - v16;
    v18 = (16 * a6 * a1 + 16 * v16 + a5 + 8);
    v19 = ~a1 + a3;
    do
    {
      if (v17)
      {
        v20 = hypot(*(v18 - 1), *v18);
        if (v20 > v11)
        {
          v11 = v20;
        }
      }

      --v17;
      v18 += 2;
      --v19;
    }

    while (v19);
  }

  return v11;
}

uint64_t sub_236714CA0(uint64_t a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a6;
  v12 = a1;
  v13 = 0;
  v75 = a6 + 1;
  v62 = a7 - 4 * a4;
  v63 = a5 + 16 * ~a6 * a4;
  v73 = a3;
  v14 = 16 * a6;
  v60 = 16 * a6 + 16;
  v61 = a5 + 16;
  v59 = a1 - 2;
  v67 = a5 + 24;
  v71 = a1;
  while (2)
  {
    v15 = 0;
    v16 = v13;
    v69 = a5 + 16 * v13 * v10;
    v70 = v13 + 1;
    v76 = (v67 + v14 + v14 * v13 + 16 * v13);
    v77 = v13;
    v17 = v13;
    v18 = v75;
    v74 = v13;
    while (1)
    {
      v19 = v17 + 1;
      if (v17 + 1 >= v73)
      {
        v42 = sub_2367151B0(v13, v12, v13, a5, v10);
        v43 = *(a9 + 24);
        if (v42 < v43)
        {
          v53 = (v69 + 16 * v16);
          v54 = *v53;
          v49 = hypot(*v53, v53[1]) < v43;
          v55 = INFINITY;
          if (!v49)
          {
            v55 = v54;
          }

          v56 = a8 + 32 * v16;
          *v56 = v55;
          *(v56 + 8) = 0;
          v57 = (a8 + 16 * ((2 * v16) | 1));
          *v57 = 0;
          v57[1] = 0;
          *v53 = xmmword_23681FBD0;
          v46 = v70;
          if (v70 < v12)
          {
            bzero((v61 + v60 * v16), 16 * (v59 - v77) + 16);
          }

          return v46;
        }

        v44 = (a5 + 16 * v18 * v16);
        v45 = v42 * *(a9 + 16);
        if (v45 > hypot(*v44, v44[1]))
        {
          return v77;
        }

        v37 = (v12 - v77);
        v38 = a3;
        v39 = a3 - v77;
        v41 = a8 + 32 * v16;
        v40 = v44;
        goto LABEL_20;
      }

      v20 = v12;
      v21 = v13;
      if (v17 > v16)
      {
        v22 = hypot(*(v69 + 16 * v19), *(v69 + 16 * v19 + 8));
        v23 = v15;
        v24 = v70;
        v25 = v76;
        LODWORD(v21) = v77;
        do
        {
          v26 = hypot(*(v25 - 1), *v25);
          if (v26 <= v22)
          {
            v21 = v21;
          }

          else
          {
            v22 = v26;
            v21 = v24;
          }

          v25 = (v25 + v14);
          ++v24;
          --v23;
        }

        while (v23);
      }

      if (sub_2367148A8(v21, v19, v20, v77, a5, a6, a9))
      {
        break;
      }

      v18 = v75;
      v27 = (a5 + 16 * v75 * v21);
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = (a5 + 16 * v75 * v19);
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = hypot(v28, v29);
      if (v33 <= hypot(v31, v32))
      {
        LODWORD(v21) = v19;
      }

      v34 = sub_2367151B0(v21, v20, v77, a5, a6);
      v10 = a6;
      if (v34 < *(a9 + 24))
      {
        sub_236778828((v77 + a4), (v21 + a4), a4 + v71, (a4 + a2), v63, a6, v62);
        v47 = (v69 + 16 * v74);
        v48 = *v47;
        v49 = hypot(*v47, v47[1]) < *(a9 + 24);
        v50 = INFINITY;
        if (!v49)
        {
          v50 = v48;
        }

        v51 = a8 + 32 * v74;
        *v51 = v50;
        *(v51 + 8) = 0;
        v52 = (a8 + 16 * ((2 * v74) | 1));
        *v52 = 0;
        v52[1] = 0;
        *v47 = xmmword_23681FBD0;
        v46 = v70;
        if (v70 < v71)
        {
          bzero((v61 + v60 * v74), 16 * (v59 - v77) + 16);
        }

        v38 = a3;
        v12 = v71;
        goto LABEL_27;
      }

      v35 = v34 * *(a9 + 16);
      v36 = hypot(*(a5 + 16 * v75 * v21), *(a5 + 16 * v75 * v21 + 8));
      v13 = v77;
      v76 += 2;
      ++v15;
      v17 = v19;
      v12 = v71;
      v16 = v74;
      if (v35 <= v36)
      {
        sub_236778828((v77 + a4), (v21 + a4), a4 + v71, (a4 + a2), v63, a6, v62);
        v37 = v71 - v77;
        v38 = a3;
        v39 = a3 - v77;
        v40 = a5 + 16 * v75 * v74;
        v41 = a8 + 32 * v74;
LABEL_20:
        sub_23677A828(v37, v39, v40, v10, v41, a10);
        v46 = v70;
        goto LABEL_28;
      }
    }

    sub_236778828((v77 + a4), (v21 + a4), (a4 + v20), (a4 + a2), v63, a6, v62);
    sub_236778828(v70 + a4, (v19 + a4), (a4 + v20), (a4 + a2), v63, a6, v62);
    v38 = a3;
    sub_23677DD4C((v20 - v77), a3 - v77, a5 + 16 * v75 * v74, a6, a8 + 32 * v74, a10);
    v46 = (v77 + 2);
    v12 = v20;
LABEL_27:
    v10 = a6;
LABEL_28:
    v13 = v46;
    if (v46 < v38)
    {
      continue;
    }

    return v46;
  }
}

double sub_2367151B0(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = 0.0;
  if (a3 < a1)
  {
    v10 = (16 * a5 * a3 + 16 * a1 + a4 + 8);
    v11 = a1 - a3;
    do
    {
      v12 = hypot(*(v10 - 1), *v10);
      if (v12 > v9)
      {
        v9 = v12;
      }

      v10 += 2 * a5;
      --v11;
    }

    while (v11);
  }

  if (a1 + 1 < a2)
  {
    v13 = (16 * a5 * a1 + 16 * (a1 + 1) + a4 + 8);
    v14 = ~a1 + a2;
    do
    {
      v15 = hypot(*(v13 - 1), *v13);
      if (v15 > v9)
      {
        v9 = v15;
      }

      v13 += 2;
      --v14;
    }

    while (v14);
  }

  return v9;
}

uint64_t sub_236715298(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v10 = a3 + 16 * a2 * a4;
  if (a2 < 48)
  {
    return sub_236714CA0(a1, a2, a2, 0, a3, a4, a5, v10, a6, a7);
  }

  v12 = 0;
  v29 = a4 + 1;
  v25 = a1 - a2;
  v26 = a3 + 16 * a2 * a4;
  v27 = a5;
  v30 = a6;
  do
  {
    v13 = v29 * v12;
    v14 = v8 + 16 * v13;
    v15 = v10 + 32 * v12;
    v16 = a2 - v12;
    if (a2 - v12 >= 48)
    {
      v17 = 48;
    }

    else
    {
      v17 = a2 - v12;
    }

    v18 = a1;
    v19 = (a1 - v12);
    v20 = a5 + 4 * v12;
    v21 = sub_236714CA0(v19, a2 - v12, v17, v12, v8 + 16 * v13, a4, v20, v10 + 32 * v12, a6, a7);
    if (v21)
    {
      v22 = v21;
      if (v17 + v12 < a2 && v21 >= 1)
      {
        v23 = (v16 - v17);
        v24 = v14 + 16 * v29 * v17;
        sub_236747A3C(v23, v21, v14 + 16 * v17, a4, v15, v24, a4, a7);
        if (v18 > a2)
        {
          sub_23674BD2C(v25, v23, v22, v14 + 16 * v17 + 16 * v23, v14 + 16 * v17, a4, v15, v24 + 16 * v23, a4, a7);
        }
      }

      a1 = v18;
      goto LABEL_15;
    }

    if (v16 < 49)
    {
      break;
    }

    v22 = sub_236714CA0(v19, a2 - v12, a2 - v12, v12, v14, a4, v20, v15, v30, a7);
    a1 = v18;
    if (!v22)
    {
      break;
    }

LABEL_15:
    v12 = (v22 + v12);
    a5 = v27;
    v8 = a3;
    a6 = v30;
    v10 = v26;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_23671554C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v10 = a2;
  if (a1 > 192 || a2 > 96)
  {
    if (a8)
    {
      v12 = (a1 - 1) / 96 + 1;
      v82 = a4;
      v13 = (a2 - 1) / 96 + 1;
      v80[0] = a1;
      v80[1] = a2;
      v81 = a3;
      v83 = a2;
      v78 = 0u;
      v79 = 0u;
      sub_236792218(a8, a9 + 64, &v78);
      *(&v79 + 1) = v80;
      v18 = v13 * v12;
      v19 = *(a9 + 80) + 48 * atomic_fetch_add((a9 + 88), v18);
      if (v18 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v18; ++i)
        {
          v22 = v19 + 48 * i;
          atomic_store(0, v22);
          *(v22 + 4) = 0;
          *(v22 + 8) = 0;
          v23 = *(v22 + 16);
          do
          {
            _X5 = *(v22 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X12] }

            _ZF = _X4 == v23;
            v23 = _X4;
          }

          while (!_ZF);
          *(v22 + 32) = 0;
          *(v22 + 40) = 0;
        }
      }

      v77 = v19;
      if (v10 >= 1)
      {
        v74 = v12;
        v68 = 96;
        v70 = 0;
        do
        {
          v28 = v70;
          v29 = v70 / 0x60 * v74;
          v30 = v77 + 48 * v29;
          v31 = v30 + 48 * (v70 / 0x60);
          v72 = v70 / 0x60;
          sub_236792228(&v78, v70 / 0x60, sub_236715C84, 1u, _X4, _X5, v16, v17, v31);
          v70 += 96;
          if (v28 + 96 < a1)
          {
            v32 = v68;
            do
            {
              sub_236792228(&v78, v29 + v32 / 0x60uLL, sub_236715D80, 2u, _X4, _X5, v16, v17, v31);
              v32 += 96;
            }

            while (v32 < a1);
          }

          v33 = v68;
          if (v70 >= v10)
          {
            break;
          }

          do
          {
            if (v33 < a1)
            {
              v34 = v33;
              do
              {
                v35 = v34 / 0x60uLL;
                v36 = (v72 + v33 / 0x60 * v74) * v74 + v35;
                if (v34 / 0x60 == v33 / 0x60)
                {
                  sub_236792228(&v78, v36, sub_236715E40, 2u, _X4, _X5, v16, v17, v30 + 48 * (v33 / 0x60));
                }

                else
                {
                  sub_236792228(&v78, v36, sub_236715E40, 3u, _X4, _X5, v16, v17, v30 + 48 * v35);
                }

                v34 += 96;
              }

              while (v34 < a1);
            }

            v33 += 96;
            LODWORD(v10) = a2;
          }

          while (v33 < a2);
          v68 += 96;
        }

        while (v70 < a2);
      }

      if (sub_236792900(&v78))
      {
        sub_2366FCEC8(a8);
      }

      return v83;
    }

    else if (a2 >= 1)
    {
      v38 = 0;
      v39 = a3 + 1536;
      v61 = a2 - 96;
      v62 = a1 - 96;
      v63 = 1536 * a4 + 1536;
      v60 = a3 + v63;
      v40 = 96;
      while (1)
      {
        if (v10 - v38 >= 96)
        {
          v41 = 96;
        }

        else
        {
          v41 = v10 - v38;
        }

        v42 = a1 - v38;
        v80[0] = v41;
        v85 = 76;
        if (a1 - v38 >= 96)
        {
          v42 = 96;
        }

        v75 = v42;
        LODWORD(v78) = 0;
        v84 = v9;
        zpotf2_NEWLAPACK();
        v43 = v80[0];
        if (v75 > v80[0])
        {
          cblas_ztrsm_NEWLAPACK();
          v43 = v80[0];
        }

        if (v43 < v41)
        {
          break;
        }

        v44 = v38 + 96;
        v58 = v40;
        v59 = v39;
        v45 = v40;
        v46 = v62;
        if (v44 < a1)
        {
          do
          {
            v47 = v46 - 96;
            cblas_ztrsm_NEWLAPACK();
            v39 += 1536;
            v45 += 96;
            v46 = v47;
          }

          while (v45 < a1);
        }

        v69 = v60;
        v71 = v59;
        v48 = v61;
        v67 = v62;
        v49 = v40;
        v57 = v44;
        if (v44 < v10)
        {
          do
          {
            v64 = v48;
            v65 = v49;
            v76 = v10 - v49;
            if (v49 < a1)
            {
              v50 = 0;
              v51 = v49;
              v53 = v69;
              v52 = v71;
              v54 = v67;
              do
              {
                v55 = v54;
                _VF = __OFSUB__(v54, 96);
                v54 -= 96;
                if (v54 < 0 != _VF)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = 96;
                }

                if (v50 || (cblas_zherk_NEWLAPACK(), v76 < v56))
                {
                  cblas_zgemm_NEWLAPACK();
                }

                v53 += 1536;
                v52 += 1536;
                v50 -= 1536;
                v51 += 96;
              }

              while (v51 < a1);
            }

            v49 = v65 + 96;
            v67 -= 96;
            v48 = v64 - 96;
            v69 += v63;
            v71 += 1536;
            v10 = a2;
          }

          while (v65 + 96 < a2);
          v40 = v58 + 96;
          v39 = v59 + v63;
          v61 -= 96;
          v62 -= 96;
          v60 += v63;
          v38 = v57;
          if (v57 < a2)
          {
            continue;
          }
        }

        return v10;
      }

      return 0;
    }
  }

  else
  {
    v80[0] = a2;
    v85 = 76;
    LODWORD(v78) = 0;
    v84 = a4;
    zpotf2_NEWLAPACK();
    v10 = v80[0];
    if (a1 > v80[0])
    {
      cblas_ztrsm_NEWLAPACK();
      return v80[0];
    }
  }

  return v10;
}

uint64_t sub_236715C84(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  if (*v2 - 96 * a2 >= 96)
  {
    v4 = 96;
  }

  else
  {
    v4 = *v2 - 96 * a2;
  }

  v3 = v2[1];
  if (v3 - 96 * a2 >= 96)
  {
    v5 = 96;
  }

  else
  {
    v5 = v3 - 96 * a2;
  }

  result = zpotf2_NEWLAPACK();
  v7 = v5;
  if (v4 > v5)
  {
    result = cblas_ztrsm_NEWLAPACK();
    v7 = v5;
  }

  if (v7 != v5)
  {
    v2[6] = 0;
  }

  return result;
}

uint64_t sub_236715E40(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = (*v2 - 1) / 96 + 1;
  v4 = 3 * (a2 % v3);
  v5 = 96 * (a2 % v3);
  v6 = (v3 * v3);
  v7 = 3 * (a2 / v6);
  v8 = 96 * (a2 / v6);
  if (*v2 - 32 * v4 >= 96)
  {
    v9 = 96;
  }

  else
  {
    v9 = *v2 - 32 * v4;
  }

  v10 = v2[1] - 32 * v7;
  if (16 * v5 != 16 * v8)
  {
    return cblas_zgemm_NEWLAPACK();
  }

  result = cblas_zherk_NEWLAPACK();
  if (v10 < v9)
  {
    return cblas_zgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236716000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  if (a3 < 1)
  {
    return 0;
  }

  v14 = 0;
  v15 = a3;
  v16 = 16 * a6 + 16;
  while (hypot(*a5, a5[1]) != 0.0)
  {
    sub_23677A828(a1, v15, a5, a6, a7, a9);
    *a5 = *a7;
    v14 = (v14 + 1);
    a1 = (a1 - 1);
    a5 = (a5 + v16);
    if (!--v15)
    {
      return a3;
    }
  }

  return v14;
}

uint64_t sub_2367160C4(uint64_t a1, uint64_t a2, long double *a3, uint64_t a4, uint64_t a5, uint64_t a6, float64x2_t *a7, uint64_t a8)
{
  v10 = a3;
  v11 = a2;
  v28 = *MEMORY[0x277D85DE8];
  if (a2 < 48)
  {
    return sub_236716000(a1, a2, a2, a4, a3, a4, v27, a8, a7);
  }

  LODWORD(v12) = 0;
  v26 = a4 + 1;
  v24 = a1 - a2;
  do
  {
    v13 = &v10[2 * v26 * v12];
    v14 = v11 - v12;
    if (v11 - v12 >= 48)
    {
      v15 = 48;
    }

    else
    {
      v15 = v14;
    }

    v16 = a1;
    v17 = sub_236716000((a1 - v12), a2, v15, a4, &v10[2 * v26 * v12], a4, v27, a8, a7);
    v12 = (v17 + v12);
    if (v17 >= 1 && v12 < v11)
    {
      v19 = v17;
      v20 = v14 - v17;
      v21 = (v13 + 16 * v17);
      v22 = v13 + 16 * v26 * v17;
      sub_236801D78(v20, v17, v21, a4, v13, v22, a4, a7);
      if (v16 > v11)
      {
        sub_236802AF8(v24, v20, v19, &v21[v20], v21, a4, v13, v22 + 16 * v20, a4, a7);
      }
    }

    v10 = a3;
    a1 = v16;
  }

  while (v12 < v11);
  return v12;
}

uint64_t sub_23671624C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a4 - 1;
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 16 * a7;
    v12 = 16 * a7 + 16;
    do
    {
      sub_23681E17C(1.0, 0.0, *(a6 + v9), *(a6 + v9 + 8));
      cblas_zscal_NEWLAPACK();
      if (v8 >= 1)
      {
        cblas_zgeru_NEWLAPACK();
      }

      ++v10;
      v9 += v12;
      v11 += v12;
      --v8;
    }

    while (a4 != v10);
  }

  if (a1 > a4)
  {
    cblas_ztrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_ztrsm_NEWLAPACK();
    cblas_zgemm_NEWLAPACK();
  }

  return a4;
}

uint64_t sub_236716424(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v12 = a2;
  if (a3 >= 100)
  {
    v14 = 0;
    do
    {
      v15 = a3 - v14;
      if (a3 - v14 >= 100)
      {
        v16 = 100;
      }

      else
      {
        v16 = v15;
      }

      sub_23671624C(a1 - v14, a2, v15, v16, a5, a4 + 16 * (a5 + 1) * v14, a5);
      v14 += v16;
    }

    while (v14 < a3);
  }

  else
  {
    sub_23671624C(a1, a2, a3, a3, a5, a4, a5);
  }

  v17 = __OFSUB__(v12, a3);
  v18 = v12 - a3;
  if (!((v18 < 0) ^ v17 | (v18 == 0)))
  {
    cblas_ztrsm_NEWLAPACK();
  }

  if (a1 - a3 >= 1 && v18 >= 1)
  {
    cblas_zgemm_NEWLAPACK();
  }

  return a3;
}

uint64_t sub_236716590(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = a3;
  v22 = a1;
  v23 = a13;
  v24 = a10;
  if (a1 > 767 || a3 > 383)
  {
    if (a17)
    {
      v25 = (a1 - 1) / 384;
      v26 = v25 + 1;
      v78[0] = a1;
      v78[1] = a2;
      v80 = a4;
      v79 = a3;
      v27 = (a2 - 1) / 384 + 1;
      v81 = a5;
      v82 = a6;
      v83 = a7;
      v84 = a8;
      v85 = a9;
      v86 = a10;
      v87 = a14;
      v88 = a12;
      v89 = a13;
      v90 = a16;
      v76 = 0u;
      v77 = 0u;
      sub_236792218(a17, a18, &v76);
      *(&v77 + 1) = v78;
      v28 = v27 * (v25 + 1);
      v33 = (*(a12 + 24))(48 * v28);
      if (v28 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v28; ++i)
        {
          v36 = v33 + 48 * i;
          atomic_store(0, v36);
          *(v36 + 4) = 0;
          *(v36 + 8) = 0;
          v37 = *(v36 + 16);
          do
          {
            _X5 = *(v36 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X11] }

            _ZF = _X4 == v37;
            v37 = _X4;
          }

          while (!_ZF);
          *(v36 + 32) = 0;
          *(v36 + 40) = 0;
        }
      }

      if (v21 >= 1)
      {
        v66 = v33;
        v67 = 0;
        v42 = 0;
        v43 = v26;
        v64 = 48 * v25 + 48;
        v71 = v26;
        v72 = 384;
        v65 = v21;
        v74 = v33;
        do
        {
          v68 = v42 / 0x180 * v43;
          v70 = v42 / 0x180;
          v44 = v33 + 48 * v68;
          v45 = v44 + 48 * (v42 / 0x180);
          sub_236792228(&v76, v42 / 0x180, sub_236717004, 1u, _X4, _X5, v31, v32, v45);
          v46 = v42;
          if (v42)
          {
            v47 = v43;
            v48 = 0;
            v49 = v66;
            v50 = v67;
            do
            {
              v51 = v45;
              v52 = v47;
              sub_236792228(&v76, v50, sub_2367175D8, 2u, _X4, _X5, v31, v32, v49);
              v47 = v52;
              v45 = v51;
              v48 += 384;
              v49 += v64;
              v50 += v47;
            }

            while (v48 < v46);
          }

          v42 = v46 + 384;
          if (v46 + 384 < v22)
          {
            v53 = v72;
            do
            {
              sub_236792228(&v76, v68 + v53 / 0x180uLL, sub_236717764, 2u, _X4, _X5, v31, v32, v74 + 48 * (v68 + v53 / 0x180uLL));
              v53 += 384;
            }

            while (v53 < v22);
          }

          if (v42 < a2)
          {
            v54 = v72;
            do
            {
              sub_236792228(&v76, v70 + v54 / 0x180u * v71, sub_236717964, 2u, _X4, _X5, v31, v32, v45);
              v54 += 384;
            }

            while (v54 < a2);
            v69 = v68 * v27;
            v55 = v72;
            do
            {
              if (v42 < v22)
              {
                v56 = v72;
                do
                {
                  sub_236792228(&v76, v69 + v55 / 0x180u * v71 + v56 / 0x180uLL, sub_236717D40, 3u, _X4, _X5, v31, v32, v44 + 48 * (v56 / 0x180uLL));
                  v56 += 384;
                }

                while (v56 < v22);
              }

              v55 += 384;
            }

            while (v55 < a2);
          }

          v43 = v71;
          v72 += 384;
          v66 += 48;
          ++v67;
          v21 = v65;
          v33 = v74;
        }

        while (v42 < v65);
      }

      if (sub_236792900(&v76))
      {
        sub_2366FCEC8(a17);
      }

      (*(a12 + 32))(v33);
    }

    else
    {
      if (a3 >= 384)
      {
        v57 = 0;
        v75 = a5 + 1;
        do
        {
          v59 = v21 - v57;
          if (v21 - v57 >= 384)
          {
            v60 = 384;
          }

          else
          {
            v60 = v59;
          }

          v61 = v23;
          v62 = v24;
          sub_236716C20(v22 - v57, a2 - v57, v59, v60, v57, a4 + 16 * v75 * v57, a5, a6, a7, v24 + 4 * v57, v23);
          v24 = v62;
          v23 = v61;
          v57 += v60;
        }

        while (v57 < v21);
      }

      else
      {
        sub_236716C20(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
      }

      if (a2 > v21)
      {
        cblas_ztrsm_NEWLAPACK();
      }

      if (v22 - v21 >= 1 && a2 - v21 >= 1)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_236716C20(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
    if (a2 > v21)
    {
      cblas_ztrsm_NEWLAPACK();
    }

    if (v22 - v21 >= 1 && a2 - v21 >= 1)
    {
LABEL_46:
      cblas_zgemm_NEWLAPACK();
    }
  }

  return v21;
}

uint64_t sub_236716C20(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v40 = (a5 + a3);
    v32 = a6 + 16 * ~a7 * a5;
    v36 = a10 - 4 * a5;
    v41 = 16 * a7 + 16;
    v35 = a3 - 2;
    v34 = a6 + 16;
    v42 = a3 + 1;
    v33 = a6 + 8;
    do
    {
      v14 = (a6 + 16 * v13 * a7 + 16 * v13);
      v15 = 0.0;
      if (a3 - v13 >= 1)
      {
        v16 = v42 - v13;
        v17 = (a6 + 16 * v13 * a7 + 16 * v13);
        do
        {
          v18 = *v17;
          v19 = *(v17 + 1);
          v17 += 2;
          v20 = hypot(v18, v19);
          if (v15 <= v20)
          {
            v15 = v20;
          }

          --v16;
        }

        while (v16 > 1);
      }

      if (v15 >= *(a11 + 24))
      {
        LODWORD(v22) = v13;
        if (a3 > v13)
        {
          v23 = (v33 + v41 * v13);
          v22 = v13;
          while (hypot(*(v23 - 1), *v23) != v15)
          {
            ++v22;
            v23 += 2;
            if (a3 == v22)
            {
              LODWORD(v22) = v13;
              break;
            }
          }
        }

        if (v13 != v22)
        {
          v24 = v13 + a5;
          v25 = *(a10 + 4 * v13);
          v26 = v22 + a5;
          *(a10 + 4 * v13) = *(v36 + 4 * v26);
          *(v36 + 4 * v26) = v25;
          if (v40 >= 1)
          {
            v27 = v32;
            v28 = v40;
            do
            {
              v29 = *(v27 + 16 * v24);
              *(v27 + 16 * v24) = *(v27 + 16 * v26);
              *(v27 + 16 * v26) = v29;
              v27 += 16 * a7;
              --v28;
            }

            while (v28);
          }

          if (a2 > a3)
          {
            cblas_zswap_NEWLAPACK();
          }
        }

        sub_23681E17C(1.0, 0.0, *v14, v14[1]);
        v21 = v13 + 1;
        cblas_zscal_NEWLAPACK();
        if (a3 - v13 >= 2 && ~v13 + a4 >= 1)
        {
          cblas_zgeru_NEWLAPACK();
        }
      }

      else
      {
        *v14 = xmmword_23681FC30;
        v21 = v13 + 1;
        if (v13 + 1 < a3)
        {
          bzero((v34 + v41 * v13), 16 * (v35 - v13) + 16);
        }
      }

      v13 = v21;
    }

    while (v21 != a4);
  }

  if (a1 > a3)
  {
    cblas_ztrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_ztrsm_NEWLAPACK();
    cblas_zgemm_NEWLAPACK();
  }

  return a4;
}

void *sub_236717004(uint64_t a1, uint64_t a2, __n128 a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v4 = *v3;
  v5 = v3[1];
  v6 = 3 * (a2 % ((*v3 - 1) / 384 + 1));
  v7 = 384 * (a2 % ((*v3 - 1) / 384 + 1));
  v8 = v7 + 384;
  if (v7 + 384 < *v3)
  {
    v4 = v7 + 384;
  }

  v73 = v4;
  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7 + 384;
  }

  v72 = v9;
  v10 = v3[2];
  if (v8 < v10)
  {
    v10 = v7 + 384;
  }

  v75 = v10;
  v11 = (v10 - (v6 << 7));
  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  v76 = v7;
  v14 = v12 + 16 * (v13 + 1) * v7;
  v74 = v3;
  v15 = *(v3 + 9);
  v16 = (v15 + 4 * v7);
  if (v11 >= 1)
  {
    v17 = 0;
    v83 = *(v74 + 11);
    v18 = vdupq_n_s64(v11 - 1);
    v19 = (v15 + 4 * v76 + 8);
    v20 = xmmword_23681F910;
    v21 = xmmword_23681F920;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v21));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v19 - 2) = v17;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v19 - 1) = v17 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v20))).i32[1])
      {
        *v19 = v17 + 2;
        v19[1] = v17 + 3;
      }

      v17 += 4;
      v20 = vaddq_s64(v20, v22);
      v21 = vaddq_s64(v21, v22);
      v19 += 4;
    }

    while (((v11 + 3) & 0xFFFFFFFC) != v17);
    v24 = 0;
    v82 = 16 * v13 + 16;
    v78 = v11 - 2;
    v77 = v14 + 16;
    v81 = v75 - v76 + 1;
    v80 = v14 + 8;
    v79 = xmmword_23681FC30;
    do
    {
      v25 = (v14 + 16 * v24 * v13 + 16 * v24);
      v26 = 0.0;
      if (v11 - v24 >= 1)
      {
        v27 = v81 - v24;
        v28 = (v14 + 16 * v24 * v13 + 16 * v24);
        do
        {
          v29 = *v28;
          v30 = *(v28 + 1);
          v28 += 2;
          v31 = hypot(v29, v30);
          if (v26 <= v31)
          {
            v26 = v31;
          }

          --v27;
        }

        while (v27 > 1);
      }

      if (v26 >= *(v83 + 24))
      {
        v33 = (v80 + v82 * v24);
        v34 = v24;
        while (hypot(*(v33 - 1), *v33) != v26)
        {
          ++v34;
          v33 += 2;
          if (v11 == v34)
          {
            LODWORD(v34) = v24;
            break;
          }
        }

        if (v24 != v34)
        {
          v35 = v16[v24];
          v16[v24] = v16[v34];
          v16[v34] = v35;
          v36 = v14;
          v37 = v11;
          do
          {
            v38 = *(v36 + 16 * v24);
            *(v36 + 16 * v24) = *(v36 + 16 * v34);
            *(v36 + 16 * v34) = v38;
            v36 += 16 * v13;
            --v37;
          }

          while (v37);
        }

        v84 = sub_23681E17C(1.0, 0.0, *v25, v25[1]);
        v85 = v39;
        v32 = v24 + 1;
        cblas_zscal_NEWLAPACK();
        if (v11 - v24 >= 2)
        {
          v71 = v13;
          v70 = v14 + 16 * v32 * v13 + 16 * v24 + 16;
          cblas_zgeru_NEWLAPACK();
        }
      }

      else
      {
        a3 = v79;
        *v25 = v79;
        v32 = v24 + 1;
        if (v24 + 1 < v11)
        {
          bzero((v77 + v24 * v82), 16 * (v78 - v24) + 16);
        }
      }

      v24 = v32;
    }

    while (v32 != v11);
  }

  v40 = v74;
  v41 = (*(v74 + 8) + 4 * v76);
  MEMORY[0x28223BE20](a3);
  v43 = &v72 - ((v42 + 15) & 0x7FFFFFFF0);
  result = memcpy(v43, v41, 4 * v11);
  if (v11 >= 1)
  {
    v46 = v11;
    v47 = v16;
    do
    {
      v48 = *v47++;
      *v41++ = *&v43[4 * v48];
      --v46;
    }

    while (v46);
  }

  v49 = v73 - v75;
  v50 = (v72 - v75);
  if (v73 - v75 > 0)
  {
    v71 = v40[6];
    v70 = v14 + 16 * v11;
    LODWORD(v69) = v71;
    v68 = v14;
    result = cblas_ztrsm_NEWLAPACK();
  }

  if (v50 >= 1)
  {
    v51 = *(v40 + 4) + 16 * *(v40 + 5) * v76;
    MEMORY[0x28223BE20](v45);
    v52 = 0;
    v53 = 16 * *(v40 + 5);
    v54 = v51;
    do
    {
      if (v11 >= 1)
      {
        v55 = v54;
        v56 = v65;
        v57 = v11;
        do
        {
          *v56++ = *v55;
          v55 = (v55 + v53);
          --v57;
        }

        while (v57);
        v58 = 0;
        v59 = v16;
        v60 = v11;
        do
        {
          v61 = *v59++;
          *(v54 + v58) = v65[v61];
          v58 += v53;
          --v60;
        }

        while (v60);
      }

      ++v52;
      ++v54;
    }

    while (v52 != v50);
    result = cblas_ztrsm_NEWLAPACK();
    if (v49 >= 1)
    {
      v62 = *(v40 + 5);
      v63 = *(v40 + 6) + 16 * (v75 - v40[2]);
      v64 = *(v40 + 3);
      v71 = *(v40 + 7);
      v69 = &unk_23681FC70;
      v70 = v63;
      LODWORD(v68) = v62;
      v67 = v51;
      v66 = v64;
      return cblas_zgemm_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_2367175D8(__n128 a1)
{
  result = MEMORY[0x28223BE20](a1);
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(*result + 24);
  v4 = *(v3 + 4);
  v5 = (*v3 - 1) / 384 + 1;
  v6 = v2 / v5;
  if (v4 >= 384 * v6 + 384)
  {
    v4 = 384 * v6 + 384;
  }

  v20 = (v4 - 384 * v6);
  if (v20 >= 1)
  {
    v7 = 0;
    v8 = 384 * (v2 % v5);
    v9 = *(v3 + 72) + 4 * v8;
    v10 = *(v3 + 24);
    v11 = *(v3 + 16) + 16 * v10 * 384 * v6 + 16 * v8;
    v12 = *(v3 + 8);
    if (v12 >= v8 + 384)
    {
      v12 = v8 + 384;
    }

    v13 = v12 - v8;
    v14 = 16 * (v12 - v8);
    v15 = v11;
    do
    {
      result = __memcpy_chk();
      v16 = v9;
      v17 = v15;
      v18 = v14;
      if (v13 >= 1)
      {
        do
        {
          v19 = *v16++;
          *v17++ = v21[v19];
          v18 -= 16;
        }

        while (v18);
      }

      ++v7;
      v15 += v10;
    }

    while (v7 != v20);
  }

  return result;
}

uint64_t sub_236717764(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = (*v2 - 1) / 384 + 1;
  v4 = 3 * (a2 % v3);
  v5 = 3 * (a2 / v3);
  if ((*v2 - 384 * (a2 % v3)) >= 384)
  {
    v6 = 384;
  }

  else
  {
    v6 = *v2 - 384 * (a2 % v3);
  }

  if ((v2[1] - 384 * (a2 / v3)) >= 384)
  {
    v7 = 384;
  }

  else
  {
    v7 = v2[1] - 384 * (a2 / v3);
  }

  result = cblas_ztrsm_NEWLAPACK();
  v9 = v2[2];
  v10 = v9 - (v5 << 7);
  if (v7 < v10)
  {
    v10 = v7;
  }

  v11 = v7 - (v10 & ~(v10 >> 31));
  v12 = v9 - (v4 << 7);
  if (v6 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  v14 = v6 - (v13 & ~(v13 >> 31));
  if (v13 >= 1 && v11 >= 1)
  {
    result = cblas_zgemm_NEWLAPACK();
  }

  if (v11 >= 1 && v14 >= 1)
  {
    return cblas_zgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236717964(uint64_t a1, uint64_t a2, __n128 a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v5 = (*v3 - 1) / 384 + 1;
  v6 = a2 / v5;
  v7 = 3 * (a2 % v5);
  v8 = v7 << 7;
  v9 = 3 * v6;
  v10 = (v9 << 7);
  v11 = *v3 - (v7 << 7);
  if (v11 >= 384)
  {
    v12 = 384;
  }

  else
  {
    v12 = v11;
  }

  v4 = *(v3 + 4);
  if (v4 - (v9 << 7) >= 384)
  {
    v13 = 384;
  }

  else
  {
    v13 = v4 - (v9 << 7);
  }

  v14 = *(v3 + 8);
  result = (v14 - (v7 << 7));
  if (result >= 384)
  {
    v16 = 384;
  }

  else
  {
    v16 = result;
  }

  v17 = v8;
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v20 = v18 + 16 * (v8 * v19 + v8);
  v67 = *(v3 + 72) + 4 * v8;
  v21 = v14 - (v9 << 7);
  if (v13 < v21)
  {
    v21 = v13;
  }

  v22 = v21 & ~(v21 >> 31);
  v23 = (v13 - v22);
  if (v12 >= result)
  {
    v24 = result;
  }

  else
  {
    v24 = v12;
  }

  if (v21 >= 1)
  {
    v59 = v24;
    v61 = result;
    v63 = v20;
    v64 = (v13 - v22);
    v65 = v16;
    v58[1] = v58;
    v60 = v10;
    v62 = v17;
    v25 = v18 + 16 * v19 * v10 + 16 * v17;
    MEMORY[0x28223BE20](a3);
    v26 = 0;
    v66 = v3;
    v27 = *(v3 + 24);
    v28 = v25;
    do
    {
      __memcpy_chk();
      v29 = v67;
      v30 = v28;
      v31 = v12;
      if (v11 >= 1)
      {
        do
        {
          v32 = *v29++;
          *v30++ = v51[v32];
          --v31;
        }

        while (v31);
      }

      ++v26;
      v28 += v27;
    }

    while (v26 != v22);
    v3 = v66;
    v16 = v65;
    cblas_ztrsm_NEWLAPACK();
    v14 = *(v3 + 8);
    v23 = v64;
    v17 = v62;
    result = v61;
    LODWORD(v10) = v60;
    v24 = v59;
  }

  if (v23 >= 1)
  {
    v33 = v24 & ~(v24 >> 31);
    v34 = v12 - v33;
    v35 = *(v3 + 32) + 16 * *(v3 + 40) * v17;
    v66 = v22 + v10 - v14;
    v36 = v35 + 16 * v66;
    v37 = MEMORY[0x28223BE20](a3);
    v38 = 0;
    v39 = 16 * *(v3 + 40);
    v40 = v36;
    do
    {
      if (v37 >= 1)
      {
        v41 = v40;
        v42 = v51;
        v43 = v16;
        do
        {
          *v42++ = *v41;
          v41 = (v41 + v39);
          --v43;
        }

        while (v43);
        v44 = 0;
        v45 = v67;
        v46 = v16;
        do
        {
          v47 = *v45++;
          *(v40 + v44) = v51[v47];
          v44 += v39;
          --v46;
        }

        while (v46);
      }

      ++v38;
      ++v40;
    }

    while (v38 != v23);
    result = cblas_ztrsm_NEWLAPACK();
    if (v34 >= 1)
    {
      v48 = *(v3 + 40);
      v49 = *(v3 + 48) + 16 * *(v3 + 56) * v66 + 16 * (v33 + v17 - *(v3 + 8));
      v50 = *(v3 + 24);
      v57 = *(v3 + 56);
      v54 = v48;
      v53 = v36;
      v52 = v50;
      v55 = &unk_23681FC70;
      v56 = v49;
      return cblas_zgemm_NEWLAPACK();
    }
  }

  return result;
}