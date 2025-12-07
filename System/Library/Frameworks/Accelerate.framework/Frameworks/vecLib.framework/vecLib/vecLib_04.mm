void *sub_2366E8CEC(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  v156[0] = 0;
  sub_2366E2AA8(a1);
  v6 = *a2;
  v7 = a2[2];
  v147 = v7;
  v141 = *(a2 + 2);
  v142 = *(a2 + 3);
  v8 = *(a2 + 5);
  v151 = *(a2 + 6);
  v120 = *(a2 + 8);
  v10 = *(a2 + 20);
  v9 = *(a2 + 21);
  v11 = *(a2 + 15);
  v146 = *(a2 + 16);
  v12 = *(a2 + 18);
  v134 = a2;
  v155 = *(a2 + 19);
  v150 = sub_2366E2AB8(a1, *a2);
  v143 = sub_2366E2AB8(a1, v6);
  v116 = sub_2366E2AB8(a1, v6);
  v148 = sub_2366E2AB8(a1, v6);
  v133 = sub_2366E2AB8(a1, v7);
  v128 = sub_2366E2AB8(a1, v7);
  __dst = sub_2366E2AB8(a1, v7);
  v13 = fmax(v6 * 0.01, 25.0);
  if (v13 < 150.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 150.0;
  }

  v123 = v6;
  if (v6 <= 20)
  {
    v15 = 20;
  }

  else
  {
    v15 = v6;
  }

  v138 = v15;
  v112 = (2 * v7);
  v145 = a1;
  v149 = sub_2366E2AA0(a1, 16 * v7);
  v144 = v7;
  if (v7 >= 1)
  {
    v16 = (2 * v7);
    v17 = v149;
    do
    {
      *v17++ = sub_2366E76B8(v6);
      --v16;
    }

    while (v16);
  }

  v152 = v6;
  if (v6 >= 1)
  {
    v18 = v148;
    v19 = 4 * v7;
    v20 = v123;
    v21 = v142;
    do
    {
      *v18++ = sub_2366C8CA4(v147, v21, v120);
      v21 += v19;
      --v20;
    }

    while (v20);
  }

  v22 = sub_2366ED910(v134, 2u, *(v145 + 128), *(v145 + 112), v133);
  if (v147 >= 1)
  {
    v23 = v144;
    v24 = *(v145 + 112);
    v25 = v133;
    do
    {
      v26 = *v24++;
      v27 = v26;
      v28 = *v25 + v26;
      if (*v25 <= 0.0)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      *v25++ = v29;
      --v23;
    }

    while (v23);
  }

  v30 = v148;
  if ((*(v145 + 8) & 8) != 0)
  {
    sub_2366E9830(v145, v134, a3, -2, v22);
  }

  sub_2366E736C(v152, -1, v150);
  if (a4 >= 1)
  {
    v38 = 0;
    v117 = v14;
    if (v112 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v112;
    }

    v114 = v39;
    v40 = 0.5 / v138;
    v136 = v11;
    v137 = v8;
    while (1)
    {
      v118 = v38;
      if (v144 >= 1)
      {
        v41 = v114;
        v42 = v149;
        do
        {
          v43 = *v42++;
          sub_2366E7774(v43);
          --v41;
        }

        while (v41);
      }

      v119 = v134[28];
      v44 = sub_2366ED910(v134, 2u, *(v145 + 128), v133, __dst);
      v45 = v134[34];
      sub_2366C8A48(v45, v116, v45 / 5, 1, (v145 + 68));
      if (v45 >= 1)
      {
        v46 = v45;
        v47 = v116;
        do
        {
          v48 = *v47++;
          v49 = *(v155 + 4 * v48);
          sub_2366E7BC4(v149[2 * v30[v49] + *(v11 + 4 * v49)], v49, (*(v9 + 4 * v49) - *(v10 + 4 * v49)));
          --v46;
        }

        while (v46);
      }

      if (v123 < 1)
      {
        v72 = v155;
        v82 = -1;
        v83 = v119;
        v84 = -1;
        LODWORD(v85) = v45;
        goto LABEL_89;
      }

      v135 = 0;
      v126 = -1;
      v50 = v119;
      v131 = v119;
      v51 = v149;
      while (1)
      {
        sub_2366E99E0(v134, *(v145 + 128), v133, v51, v156 + 1, v156);
        v52 = HIDWORD(v156[0]);
        if (HIDWORD(v156[0]) + 1 >= 0)
        {
          v53 = (HIDWORD(v156[0]) + 1) & 1;
        }

        else
        {
          v53 = -((HIDWORD(v156[0]) + 1) & 1);
        }

        v153 = v53;
        if (HIDWORD(v156[0]) == -1)
        {
          v72 = v155;
          v81 = v135;
          goto LABEL_83;
        }

        v130 = v45;
        v125 = v156[0];
        v54 = sub_2366E7E64(*(v51 + 8 * (HIDWORD(v156[0]) + 2 * LODWORD(v156[0]))));
        if (v54 == -1)
        {
          v72 = v155;
          v81 = v135;
          goto LABEL_82;
        }

        v139 = *(v10 + 4 * v54) - *(v9 + 4 * v54) + v50;
        v129 = v54;
        v55 = (v142 + 4 * v54 * v144);
        v122 = &v146[v153 * v147];
        sub_2366E7208(v147, 1, v55, 1, v122, 1);
        v124 = v52;
        v56 = v52 * v144;
        v57 = v55;
        v58 = &v146[v56];
        sub_2366E7208(v147, -1, v57, 1, v58, 1);
        v59 = sub_2366ED910(v134, 2u, *(v145 + 128), v133, v128);
        v60 = v59;
        v61 = v59;
        v62 = v139 >= v131 || v59 > v40;
        if (v62 && (v139 != v131 || v59 >= v44 && (v59 != v44 || !sub_2366ED720(v147, __dst, v128))))
        {
          break;
        }

        sub_2366E7408(v147, v128, __dst);
        v131 = v139;
        v63 = v135;
        v126 = v135;
        v64 = 4 * v144;
LABEL_51:
        *(v11 + 4 * v129) = v153;
        v65 = v150;
        v150[v129] = v63;
        v143[v63] = v129;
        if ((*(v145 + 8) & 0x20) != 0)
        {
          printf("Moved%6d from %d(%d) Gain:%5d, Cut:%5d, NPwgts:", v129, v124, v125, *(v9 + 4 * v129) - *(v10 + 4 * v129), v139);
          if (v147 >= 1)
          {
            v66 = 0;
            v67 = v146;
            do
            {
              printf("(%.3f %.3f)", (*(v120 + v66) * *v67), (*(v120 + v66) * v67[v64 / 4]));
              ++v67;
              v66 += 4;
            }

            while (v64 != v66);
          }

          v68 = sub_2366ED820(v134, 2u, *(v145 + 128));
          printf(" %+.3f LB: %.3f(%+.3f)\n", v61, v68, v60);
          v11 = v136;
          v8 = v137;
          v65 = v150;
        }

        v69 = *(v10 + 4 * v129);
        *(v10 + 4 * v129) = *(v9 + 4 * v129);
        *(v9 + 4 * v129) = v69;
        v70 = (v141 + 4 * v129);
        v71 = v151;
        v72 = v155;
        if (v69)
        {
          v45 = v130;
        }

        else
        {
          v45 = v130;
          if (*v70 < v70[1])
          {
            v45 = (v130 - 1);
            v73 = *(v155 + 4 * v45);
            *(v155 + 4 * *(v12 + 4 * v129)) = v73;
            *(v12 + 4 * v73) = *(v12 + 4 * v129);
            *(v12 + 4 * v129) = -1;
          }
        }

        v74 = *v70;
        v75 = v153;
        if (v74 < v70[1])
        {
          do
          {
            v31 = *(v8 + 4 * v74);
            if (v75 == *(v11 + 4 * v31))
            {
              v76 = *(v71 + 4 * v74);
            }

            else
            {
              v76 = -*(v71 + 4 * v74);
            }

            *(v10 + 4 * v31) += v76;
            v77 = *(v9 + 4 * v31);
            v78 = v77 - v76;
            *(v9 + 4 * v31) = v77 - v76;
            v79 = *(v12 + 4 * v31);
            if (v79 == -1)
            {
              if (v78 >= 1)
              {
                *(v72 + 4 * v45) = v31;
                *(v12 + 4 * v31) = v45;
                if (v65[v31] == -1)
                {
                  sub_2366E7BC4(v149[2 * v148[v31] + *(v11 + 4 * v31)], v31, (*(v9 + 4 * v31) - *(v10 + 4 * v31)));
                  v65 = v150;
                  v71 = v151;
                  v72 = v155;
                }

                v45 = (v45 + 1);
                v75 = v153;
              }

              goto LABEL_75;
            }

            if (v77 == v76)
            {
              v45 = v45 - 1;
              v80 = *(v72 + 4 * v45);
              *(v72 + 4 * v79) = v80;
              *(v12 + 4 * v80) = *(v12 + 4 * v31);
              *(v12 + 4 * v31) = -1;
              if (v65[v31] == -1)
              {
                sub_2366E7C30(v149[2 * v148[v31] + *(v11 + 4 * v31)], v31);
LABEL_74:
                v65 = v150;
                v71 = v151;
                v72 = v155;
              }
            }

            else if (v65[v31] == -1)
            {
              sub_2366E7D60(v149[2 * v148[v31] + *(v11 + 4 * v31)], v31, (v78 - *(v10 + 4 * v31)));
              goto LABEL_74;
            }

LABEL_75:
            ++v74;
          }

          while (v74 < v70[1]);
        }

        v44 = v61;
        ++v135;
        v51 = v149;
        v50 = v139;
        if (v135 == v123)
        {
          v81 = v123;
          v44 = v61;
          goto LABEL_83;
        }
      }

      v63 = v135;
      v64 = 4 * v144;
      if (v135 - v126 <= v117)
      {
        break;
      }

      sub_2366E7208(v147, 1, v57, 1, v58, 1);
      v81 = v135;
      sub_2366E7208(v147, -1, v57, 1, v122, 1);
      v72 = v155;
LABEL_82:
      LODWORD(v45) = v130;
LABEL_83:
      v82 = v126;
      v83 = v131;
      if (v81)
      {
        v86 = v81;
        v87 = v143;
        do
        {
          v88 = *v87++;
          v150[v88] = -1;
          --v86;
        }

        while (v86);
        v84 = v81 - 1;
      }

      else
      {
        v84 = -1;
      }

      LODWORD(v85) = v45;
LABEL_89:
      v132 = v83;
      v127 = v82;
      if (v84 > v82)
      {
        v89 = v84;
        v140 = v82;
        while (1)
        {
          v154 = v89;
          v90 = v143[v89];
          v91 = *(v11 + 4 * v90);
          v92 = __OFADD__(v91++, 1);
          v62 = (v91 < 0) ^ v92;
          v93 = v91 & 1;
          v94 = v62 ? -v93 : v93;
          *(v11 + 4 * v90) = v94;
          v95 = *(v10 + 4 * v90);
          *(v10 + 4 * v90) = *(v9 + 4 * v90);
          *(v9 + 4 * v90) = v95;
          v96 = (v141 + 4 * v90);
          if (v95)
          {
            if (v95 >= 1 && *(v12 + 4 * v90) == -1)
            {
              *(v72 + 4 * v85) = v90;
              *(v12 + 4 * v90) = v85;
              LODWORD(v85) = v85 + 1;
            }
          }

          else
          {
            v97 = *(v12 + 4 * v90);
            if (v97 != -1 && *v96 < v96[1])
            {
              v85 = v85 - 1;
              v98 = *(v72 + 4 * v85);
              *(v72 + 4 * v97) = v98;
              *(v12 + 4 * v98) = *(v12 + 4 * v90);
              *(v12 + 4 * v90) = -1;
            }
          }

          v99 = (v142 + 4 * v90 * v144);
          sub_2366E7208(v147, 1, v99, 1, &v146[v94 * v147], 1);
          sub_2366E7208(v147, -1, v99, 1, &v146[((v94 & 1) == 0) * v144], 1);
          v100 = *v96;
          if (v100 < v96[1])
          {
            break;
          }

          v11 = v136;
          v8 = v137;
          v72 = v155;
LABEL_118:
          v89 = v154 - 1;
          if (v154 - 1 <= v140)
          {
            goto LABEL_119;
          }
        }

        v11 = v136;
        v8 = v137;
        v72 = v155;
        while (2)
        {
          v101 = *(v137 + 4 * v100);
          if (v94 == *(v136 + 4 * v101))
          {
            v102 = *(v151 + 4 * v100);
          }

          else
          {
            v102 = -*(v151 + 4 * v100);
          }

          *(v10 + 4 * v101) += v102;
          v103 = *(v9 + 4 * v101);
          v104 = v103 - v102;
          *(v9 + 4 * v101) = v103 - v102;
          v105 = *(v12 + 4 * v101);
          if (v105 != -1 && v103 == v102)
          {
            LODWORD(v85) = v85 - 1;
            v107 = *(v155 + 4 * v85);
            *(v155 + 4 * v105) = v107;
            *(v12 + 4 * v107) = *(v12 + 4 * v101);
            *(v12 + 4 * v101) = -1;
            v104 = *(v9 + 4 * v101);
LABEL_113:
            if (v104 >= 1)
            {
              *(v155 + 4 * v85) = v101;
              *(v12 + 4 * v101) = v85;
              LODWORD(v85) = v85 + 1;
            }
          }

          else if (v105 == -1)
          {
            goto LABEL_113;
          }

          if (++v100 >= v96[1])
          {
            goto LABEL_118;
          }

          continue;
        }
      }

LABEL_119:
      v134[28] = v132;
      v134[34] = v85;
      if ((*(v145 + 8) & 8) != 0)
      {
        sub_2366E9830(v145, v134, a3, v127, v44);
      }

      v30 = v148;
      if (v127 >= 1 && v132 != v119)
      {
        v38 = v118 + 1;
        if (v118 + 1 != a4)
        {
          continue;
        }
      }

      goto LABEL_124;
    }

    v61 = v44;
    goto LABEL_51;
  }

LABEL_124:
  v108 = v112;
  v109 = v149;
  if (v144 >= 1)
  {
    do
    {
      v110 = *v109++;
      sub_2366E77F4(v110, v31, v32, v33, v34, v35, v36, v37);
      --v108;
    }

    while (v108);
  }

  return sub_2366E2AB0(v145, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_2366E9830(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  if (a4 == -2)
  {
    printf("Parts: ");
    printf("Nv-Nb[%5d %5d] ICut: %6d", *a2, *(a2 + 136), *(a2 + 112));
    printf(" [");
    LODWORD(v9) = *(a2 + 8);
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(*(a2 + 64) + 4 * v10);
        printf("(%.3f %.3f T:%.3f %.3f)", (v11 * *(*(a2 + 128) + 4 * v10)), (v11 * *(*(a2 + 128) + 4 * (v10 + v9))), *(a3 + 4 * v10), *(a3 + 4 * (v10 + v9)));
        ++v10;
        v9 = *(a2 + 8);
      }

      while (v10 < v9);
    }
  }

  else
  {
    printf("\tMincut: %6d at %5d NBND %6d NPwgts: [", *(a2 + 112), a4, *(a2 + 136));
    LODWORD(v12) = *(a2 + 8);
    if (v12 >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(*(a2 + 64) + 4 * v13);
        printf("(%.3f %.3f)", (v14 * *(*(a2 + 128) + 4 * v13)), (v14 * *(*(a2 + 128) + 4 * (v13 + v12))));
        ++v13;
        v12 = *(a2 + 8);
      }

      while (v13 < v12);
    }
  }

  v15 = sub_2366ED820(a2, 2u, *(a1 + 128));
  return printf("] LB: %.3f(%+.3f)\n", v15, a5);
}

void sub_2366E99E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _DWORD *a6)
{
  v12 = 0;
  v13 = *(a1 + 8);
  v14 = -1;
  *a5 = -1;
  *a6 = -1;
  v15 = 4 * v13;
  v16 = 0.0;
  v17 = 1;
  do
  {
    v18 = v17;
    if (v13 >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 128) + v15 * v12;
      do
      {
        v21 = -(*(a3 + 4 * v19) - (*(v20 + 4 * v19) * *(a2 + v15 * v12 + 4 * v19)));
        if (v21 >= v16)
        {
          *a5 = v12;
          *a6 = v19;
          v14 = v19;
          v16 = v21;
        }

        ++v19;
      }

      while (v13 != v19);
    }

    v17 = 0;
    v12 = 1;
  }

  while ((v18 & 1) != 0);
  if (*a5 == -1)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v26 = v25;
      if (v13 >= 1)
      {
        v27 = 0;
        v28 = (a4 + 8 * v24);
        do
        {
          if (sub_2366E7BBC(*v28) && (*a5 == -1 || sub_2366E7F78(*v28) > v16))
          {
            v16 = sub_2366E7F78(*v28);
            *a5 = v24;
            *a6 = v27;
          }

          ++v27;
          v28 += 2;
        }

        while (v13 != v27);
      }

      v25 = 0;
      v24 = 1;
    }

    while ((v26 & 1) != 0);
  }

  else if (!sub_2366E7BBC(*(a4 + 8 * (*a5 + 2 * v14))))
  {
    if (v13 < 1)
    {
      LODWORD(v23) = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      while (!sub_2366E7BBC(*(a4 + 8 * (v22 + *a5))))
      {
        ++v23;
        v22 += 2;
        if (v13 == v23)
        {
          LODWORD(v23) = v13;
          goto LABEL_27;
        }
      }

      v29 = v23 + *a5 * v13;
      v16 = -(*(a3 + 4 * v23) - (*(*(a1 + 128) + 4 * v29) * *(a2 + 4 * v29)));
      *a6 = v23;
    }

LABEL_27:
    if (v23 + 1 < v13)
    {
      v30 = 2 * v23 + 2;
      v31 = v23 + 1;
      v32 = (a3 + 4 * v23 + 4);
      do
      {
        v33 = -(*v32 - (*(*(a1 + 128) + 4 * (v31 + *a5 * v13)) * *(a2 + 4 * (v31 + *a5 * v13))));
        if (v33 > v16)
        {
          if (sub_2366E7BBC(*(a4 + 8 * (v30 + *a5))))
          {
            *a6 = v31;
            v16 = v33;
          }
        }

        v30 += 2;
        ++v31;
        ++v32;
      }

      while (v13 > v31);
    }
  }
}

uint64_t sub_2366E9C3C(unsigned int *a1, unsigned int *a2, _DWORD *a3, uint64_t a4, char *a5, char *a6, uint64_t a7, unsigned int *a8, const void *a9, const void *a10, _DWORD *a11, _DWORD *a12, _DWORD *a13)
{
  v48 = 0;
  if (!sub_23681BFAC())
  {
    return 4294967293;
  }

  sub_23681509C();
  off_281949F20();
  v21 = off_281949ED8();
  v23 = setjmp((v22 + 192 * *v21));
  if (v23)
  {
LABEL_3:
    sub_236815190();
    sub_23681BFF8(0);
    return sub_2366C8DA0(v23);
  }

  v25 = sub_2366E188C(1, a11, *a2, *a8, a9, a10);
  v48 = v25;
  if (v25)
  {
    v26 = v25;
    v47 = v25[20];
    if (v47 == 1)
    {
      sub_2366DFE98(*a1, a3, a4);
    }

    v27 = sub_2366EBDFC(v26, *a1, *a2, a3, a4, a5, a6, a7);
    sub_2366E27D4(v26, v27);
    if (*(v26 + 16) == 4)
    {
      v28 = *a1;
      v29 = v28 / (40 * sub_236814F20(*a8));
      v30 = 30 * *a8;
      if (v29 >= v30)
      {
        v31 = *a1;
        v30 = v31 / (40 * sub_236814F20(*a8));
      }

      *(v26 + 24) = v30;
      v32 = 10 * *a8;
      *(v26 + 24) = v32;
      if (v32 == 30 * *a8)
      {
        v33 = 4;
      }

      else
      {
        v33 = 5;
      }
    }

    else
    {
      *(v26 + 24) = 10 * *a8;
      v33 = 10;
    }

    *(v26 + 28) = v33;
    if (*(v26 + 44) && !sub_2366C8FF8(v27, 0))
    {
      sub_236815030(15, "METIS Error: A contiguous partition is requested for a non-contiguous input graph.\n");
    }

    sub_2366E2894(v26);
    if ((*(v26 + 8) & 2) != 0)
    {
      v39.n128_f64[0] = sub_2366BC918(v26);
      if ((*(v26 + 8) & 2) != 0)
      {
        v39.n128_f64[0] = *(v26 + 144) - sub_23681E0C8();
        *(v26 + 144) = v39.n128_u64[0];
      }
    }

    *a12 = sub_2366E9EF0(v26, v27, a13, v39, v34, v35, v36, v37, v38);
    if ((*(v26 + 8) & 2) != 0)
    {
      *(v26 + 144) = sub_23681E0C8() + *(v26 + 144);
      if ((*(v26 + 8) & 2) != 0)
      {
        sub_2366BC92C(v26);
      }
    }

    sub_2366E2774(&v48, v40, v41, v42, v43, v44, v45, v46);
    if (v47 == 1)
    {
      sub_2366DFEE8(*a1, a3, a4, a13);
    }

    goto LABEL_3;
  }

  sub_236815190();
  return 4294967294;
}

uint64_t sub_2366E9EF0(uint64_t a1, int *a2, void *a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a2;
  if (*(a1 + 72) < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    do
    {
      v16 = sub_2366E2BD8(a1, a2, a4);
      if ((*(a1 + 8) & 2) != 0)
      {
        *(a1 + 152) = *(a1 + 152) - sub_23681E0C8();
      }

      sub_2366DD7E8(a1, v16);
      v24 = *(a1 + 16);
      if (v24)
      {
        if (v24 == 4)
        {
          sub_2366E29EC(a1, v17, v18, v19, v20, v21, v22, v23);
          sub_2366EA124(a1, v16);
          sub_2366E2894(a1);
        }

        else
        {
          sub_236815030(15, "Unknown iptype: %d\n", *(a1 + 16));
        }
      }

      else
      {
        sub_2366E28C4(a1, 2 * v16[1]);
        sub_2366EA2A8(a1, v16);
      }

      v25 = *(a1 + 8);
      if ((v25 & 2) != 0)
      {
        *(a1 + 152) = sub_23681E0C8() + *(a1 + 152);
        v25 = *(a1 + 8);
      }

      if ((v25 & 0x10) != 0)
      {
        printf("Initial %d-way partitioning cut: %d\n", *(a1 + 100), 0);
      }

      sub_2366DC81C(a1, a2, v16);
      v26 = *(a1 + 4);
      if (v26 == 1)
      {
        v13 = a2[29];
      }

      else if (v26)
      {
        sub_236815030(15, "Unknown objtype: %d\n", *(a1 + 4));
      }

      else
      {
        v13 = a2[28];
      }

      v34 = sub_2366ED894(a2, *(a1 + 100), *(a1 + 128), *(a1 + 112));
      if (!v14 || v34 <= 0.0005 && v12 > v13 || v15 > 0.0005 && v34 < v15)
      {
        sub_2366E7408(*a2, *(a2 + 15), a3);
        v12 = v13;
        v15 = v34;
      }

      sub_2366EC300(a2, v27, v28, v29, v30, v31, v32, v33);
      if (!v12)
      {
        break;
      }

      ++v14;
    }

    while (v14 < *(a1 + 72));
  }

  sub_2366EC36C(&v36, a2, a3, a5, a6, a7, a8, a9);
  return v12;
}

void *sub_2366EA124(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v20 = 0;
  sub_2366D7428(v22);
  v22[6] = 10;
  v22[1] = 0;
  v23 = *(a1 + 32);
  v4 = sub_2366E7294(*(a2 + 8), "InitKWayPartitioning: ubvec");
  v19 = v4;
  v5 = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = *(a1 + 112);
    v7 = v4;
    v8 = 1.0 / log(*(a1 + 100));
    do
    {
      v9 = *v6++;
      v10 = pow(v9, v8);
      *v7++ = v10;
      --v5;
    }

    while (v5);
  }

  if (*(a1 + 4) > 1u)
  {
    sub_236815030(15, "Unknown objtype: %d\n");
  }

  else
  {
    v22[7] = *(a1 + 28);
    if (sub_2366DBDF8(a2, (a2 + 8), *(a2 + 16), *(a2 + 40), *(a2 + 24), *(a2 + 32), *(a2 + 48), (a1 + 100), *(a1 + 120), v4, v22, &v21, *(a2 + 120)) != 1)
    {
      sub_236815030(15, "Failed during initial partitioning\n");
    }
  }

  return sub_23681BE6C(&v19, v11, v12, v13, v14, v15, v16, v17, &v20, 0);
}

void *sub_2366EA2A8(uint64_t a1, const void **a2)
{
  sub_2366E2AA8(a1);
  v4 = sub_2366E2AB8(a1, *a2);
  if (*(a1 + 28) < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      sub_2366EA3E4(a1, a2);
      v9 = *(a1 + 4);
      if (v9 == 1)
      {
        v7 = *(a2 + 29);
      }

      else if (v9)
      {
        sub_236815030(15, "Unknown objtype: %d\n", *(a1 + 4));
      }

      else
      {
        v7 = *(a2 + 28);
      }

      printf("  Ipart.%d curobj: %d\n", v8, v7);
      if (!v8 || v6 > v7)
      {
        sub_2366E7408(*a2, a2[15], v5);
        v6 = v7;
      }

      ++v8;
    }

    while (v8 < *(a1 + 28));
    if (v6 != v7)
    {
      sub_2366E7408(*a2, v5, a2[15]);
    }
  }

  printf("  Ipart Select bestobj: %d\n", v6);

  return sub_2366E2AB0(a1, v10, v11, v12, v13, v14, v15, v16);
}

void *sub_2366EA3E4(uint64_t a1, unsigned int *a2)
{
  sub_2366E2AA8(a1);
  v4 = *a2;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  v7 = *(a2 + 2);
  v54 = *(a2 + 3);
  v8 = *(a2 + 15);
  v55 = *(a2 + 16);
  v9 = *(a1 + 100);
  v10 = sub_2366E2AB8(a1, *(a1 + 100));
  v11 = sub_2366E2AB8(a1, v9);
  if (v9 >= 1)
  {
    v12 = *(a2 + 7);
    v13 = *(a1 + 120);
    v14 = **(a1 + 112);
    v15 = v9;
    do
    {
      v16 = *v13++;
      *v11++ = ((v16 * *v12) * v14);
      *v10++ = (1.0 / v14 * (v16 * *v12));
      --v15;
    }

    while (v15);
  }

  sub_2366E736C(v4, v9, v8);
  sub_2366E736C(v9, 0, v55);
  v56 = sub_2366E2AB8(a1, v4);
  v17 = sub_2366E2AB8(a1, v4);
  v18 = v17;
  if (v4 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = v19;
      v17[v19] = 0;
      v21 = *(v7 + 4 * v19++);
      if (v21 < *(v7 + 4 * v19))
      {
        v22 = 0;
        do
        {
          v22 += *(v5 + 4 * v21);
          v17[v20] = v22;
          ++v21;
        }

        while (v21 < *(v7 + 4 * v19));
      }
    }

    while (v19 != v4);
  }

  v23 = sub_2366E71E0(v4, v17, 1) / v4;
  v24 = *(a1 + 112);
  v25 = *v24;
  v26 = *v24 * 1.05;
  *v24 = v26;
  sub_2366E7FA0(v4, v56, v4, 1);
  if (v4 < 1)
  {
    v34 = 0;
    v28 = 0;
LABEL_23:
    printf("  nvtxs: %d, nmis: %d, minvwgt: %d, ii: %d\n", v4, v28, v23, v34);
    if (v28 < v9)
    {
      sub_2366E7FA0(v4, v56, v4, 0);
      if (v4 >= 1)
      {
        v41 = 0;
        while (1)
        {
          v42 = v56[v41];
          if (v18[v42] >= (v23 * 0.75))
          {
            if (v8[v42] == v9)
            {
              *(v55 + 4 * v28) = *(v54 + 4 * v42);
              v8[v42] = v28;
              v43 = (v7 + 4 * v42);
              v44 = v43[1];
              v45 = *v43;
              if (v45 < v44)
              {
                do
                {
                  v46 = *(v6 + 4 * v45);
                  if (v8[v46] == v9)
                  {
                    v8[v46] = v9 + 1;
                    v44 = v43[1];
                  }

                  ++v45;
                }

                while (v45 < v44);
              }

              ++v28;
            }

            if (v28 == v9)
            {
              break;
            }
          }

          if (++v41 == v4)
          {
            goto LABEL_38;
          }
        }

        v28 = v9;
      }

LABEL_38:
      printf("  nvtxs: %d, nmis: %d\n", v4, v28);
    }

    v47 = v56;
    if (v28 < v9)
    {
      sub_2366E7FA0(v4, v56, v4, 0);
      if (v4 >= 1)
      {
        v48 = v4;
        v49 = v56;
        do
        {
          v51 = *v49++;
          v50 = v51;
          if (v8[v51] == v9 + 1)
          {
            *(v55 + 4 * v28) = *(v54 + 4 * v50);
            v8[v50] = v28++;
            if (v28 == v9)
            {
              break;
            }
          }

          --v48;
        }

        while (v48);
      }

      printf("  nvtxs: %d, nmis: %d\n");
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v29 = v56[v27];
      if (v18[v29] >= v23)
      {
        if (v8[v29] == v9)
        {
          *(v55 + 4 * v28) = *(v54 + 4 * v29);
          v8[v29] = v28;
          v30 = (v7 + 4 * v29);
          v31 = v30[1];
          v32 = *v30;
          if (v32 < v31)
          {
            do
            {
              v33 = *(v6 + 4 * v32);
              if (v8[v33] == v9)
              {
                v8[v33] = v9 + 1;
                v31 = v30[1];
              }

              ++v32;
            }

            while (v32 < v31);
          }

          ++v28;
        }

        if (v28 == v9)
        {
          break;
        }
      }

      if (++v27 == v4)
      {
        v34 = v4;
        goto LABEL_23;
      }
    }

    printf("  nvtxs: %d, nmis: %d, minvwgt: %d, ii: %d\n");
  }

  if (v4 >= 1)
  {
    do
    {
      if (*v8 >= v9)
      {
        *v8 = v9;
      }

      ++v8;
      --v4;
    }

    while (v4);
  }

  sub_2366E2AB0(a1, v47, v35, v36, v37, v38, v39, v40);
  sub_2366DCBD4(a1, a2);
  if (*(a1 + 40))
  {
    sub_2366BA08C(a1, a2);
  }

  v52 = 4;
  do
  {
    sub_2366DD0C0(a1, a2, 2);
    sub_2366D0FF0(a1, a2, 10, 2, 0.0);
    sub_2366DD0C0(a1, a2, 1);
    sub_2366D0FF0(a1, a2, *(a1 + 76), 1, 1.0);
    result = sub_2366D64C0(a1, a2, *(a1 + 76));
    --v52;
  }

  while (v52);
  **(a1 + 112) = v25;
  return result;
}

uint64_t sub_2366EA8A4(int *a1, _DWORD *a2, _DWORD *a3, char *a4, _DWORD *a5, int *a6, int *a7)
{
  v13 = sub_2366E188C(2, a5, 1u, 3u, 0, 0);
  v74 = v13;
  if (!v13)
  {
    return 4294967294;
  }

  v14 = v13;
  v15 = v13[20];
  if (v15 == 1)
  {
    sub_2366DFE98(*a1, a2, a3);
  }

  if ((*(v14 + 8) & 2) != 0)
  {
    sub_2366BC918(v14);
    if ((*(v14 + 8) & 2) != 0)
    {
      *(v14 + 144) = *(v14 + 144) - sub_23681E0C8();
    }
  }

  v72 = 0;
  v73 = 0;
  v71 = 0;
  if (*(v14 + 104) <= 0.0)
  {
    v25 = 0;
    v24 = 0;
  }

  else
  {
    v71 = sub_2366E7294(*a1, "OMETIS: piperm");
    v16 = sub_2366ED2B0(v14, *a1, a2, a3, a4, v71, *(v14 + 104));
    v24 = v16;
    if (v16)
    {
      v25 = *v16;
      *(v14 + 56) = 0;
    }

    else
    {
      sub_23681BE6C(&v71, v17, v18, v19, v20, v21, v22, v23, 0, v70);
      v25 = 0;
      *(v14 + 104) = 0;
    }
  }

  if (*(v14 + 56))
  {
    v73 = sub_2366E7294(*a1 + 1, "OMETIS: cptr");
    v72 = sub_2366E7294(*a1, "OMETIS: cind");
    v27 = sub_2366ECE1C(v14, *a1, a2, a3, a4, v73, v72);
    v24 = v27;
    if (v27)
    {
      v25 = *v27;
      v35 = *a1 / *v27;
      *(v14 + 136) = v35;
      if (v35 > 1.5 && *(v14 + 48) == 1)
      {
        *(v14 + 48) = 2;
      }
    }

    else
    {
      sub_23681BE6C(&v73, v28, v29, v30, v31, v32, v33, v34, &v72, 0);
      *(v14 + 56) = 0;
    }
  }

  if (*(v14 + 104) == 0.0 && !*(v14 + 56))
  {
    v24 = sub_2366EBDFC(v14, *a1, 1, a2, a3, a4, 0, 0);
  }

  sub_2366E2894(v14);
  v37 = *v24;
  if (v74[15])
  {
    sub_2366EACA4(v74, v24, a7, v37, v36);
  }

  else
  {
    sub_2366EAEB0(v74, v24, a7, v37, v36);
  }

  v45 = v74;
  if (*(v74 + 26) <= 0.0)
  {
    if (v74[14])
    {
      if (v25 >= 1)
      {
        for (i = 0; i != v25; ++i)
        {
          a6[a7[i]] = i;
        }

        v62 = 0;
        v63 = 0;
        v65 = v72;
        v64 = v73;
        do
        {
          v66 = &v64[a6[v62]];
          v67 = *v66;
          if (v67 >= v66[1])
          {
            v68 = v63;
          }

          else
          {
            do
            {
              v68 = (v63 + 1);
              a7[v65[v67++]] = v63;
              LODWORD(v63) = v63 + 1;
            }

            while (v67 < v66[1]);
          }

          ++v62;
          v63 = v68;
        }

        while (v62 != v25);
      }

      sub_23681BE6C(&v73, v38, v39, v40, v41, v42, v43, v44, &v72, 0);
    }
  }

  else
  {
    v46 = v25;
    sub_2366E7408(v25, a7, a6);
    if (v25 >= 1)
    {
      v54 = v71;
      v55 = v25;
      v56 = a6;
      do
      {
        v58 = *v56++;
        v57 = v58;
        v59 = *v54++;
        a7[v59] = v57;
        --v55;
      }

      while (v55);
    }

    if (v25 < *a1)
    {
      v60 = v71;
      do
      {
        a7[v60[v46]] = v46;
        ++v46;
      }

      while (v46 < *a1);
    }

    sub_23681BE6C(&v71, v47, v48, v49, v50, v51, v52, v53, 0, v70);
  }

  if (*a1 >= 1)
  {
    v69 = 0;
    do
    {
      a6[a7[v69]] = v69;
      ++v69;
    }

    while (v69 < *a1);
  }

  if ((*(v45 + 8) & 2) != 0)
  {
    *(v45 + 144) = sub_23681E0C8() + *(v45 + 144);
    if ((*(v45 + 8) & 2) != 0)
    {
      sub_2366BC92C(v45);
    }
  }

  sub_2366E2774(&v74, v38, v39, v40, v41, v42, v43, v44);
  if (v15 == 1)
  {
    sub_2366DFF54(*a1, a2, a3, a6, a7);
  }

  return sub_2366C8DA0(0);
}

void *sub_2366EACA4(uint64_t a1, int *a2, uint64_t a3, int a4, __n128 a5)
{
  v60 = 0;
  v61 = a2;
  v9 = *a2;
  sub_2366EB0B4(a1, a2, a5);
  if ((*(a1 + 8) & 0x40) != 0)
  {
    printf("Nvtxs: %6d, [%6d %6d %6d]\n", *a2, **(a2 + 16), *(*(a2 + 16) + 4), *(*(a2 + 16) + 8));
  }

  v10 = a2[34];
  if (v10 >= 1)
  {
    v11 = *(a2 + 19);
    v12 = *(a2 + 13);
    do
    {
      v13 = *v11++;
      *(a3 + 4 * *(v12 + 4 * v13)) = --a4;
      --v10;
    }

    while (v10);
  }

  sub_2366E2AA8(a1);
  v14 = sub_2366E2AB8(a1, v9 + 1);
  v15 = sub_2366E2AB8(a1, v9);
  v16 = sub_2366C9058(a1, a2, v14, v15);
  v17 = v16;
  if ((*(a1 + 8) & 1) != 0 && v16 > 2)
  {
    printf("  Bisection resulted in %d connected components\n", v16);
  }

  v18 = sub_2366EB91C(a1, a2, v17, v14, v15);
  v59 = v18;
  sub_2366E2AB0(a1, v19, v20, v21, v22, v23, v24, v25);
  sub_2366EC36C(&v61, v26, v27, v28, v29, v30, v31, v32);
  nullsub_1();
  v33 = sub_2366E7294(v17, "X");
  v41 = v33;
  v60 = v33;
  *v33 = 0;
  v42 = v17;
  if (v17 > 1)
  {
    v43 = 0;
    v44 = v33 + 1;
    v45 = v17 - 1;
    v46 = v18;
    do
    {
      v47 = *v46++;
      v43 += *v47;
      *v44++ = v43;
      --v45;
    }

    while (v45);
  }

  if (v17 >= 1)
  {
    do
    {
      v49 = *v41++;
      v48 = v49;
      v50 = *v18;
      if (**v18 < 121 || v50[1] < 1)
      {
        sub_2366EB754(a1, v50, a3, a4 - v48);
        sub_2366EC36C(v18, v51, v52, v53, v54, v55, v56, v57);
      }

      else
      {
        sub_2366EACA4(a1, v50, a3, a4 - v48);
      }

      ++v18;
      --v42;
    }

    while (v42);
  }

  return sub_23681BE6C(&v59, v34, v35, v36, v37, v38, v39, v40, &v60, 0);
}

void *sub_2366EAEB0(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, __n128 a5)
{
  v47 = 0;
  v48 = a2;
  v46 = 0;
  sub_2366EB0B4(a1, a2, a5);
  if ((*(a1 + 8) & 0x40) != 0)
  {
    printf("Nvtxs: %6d, [%6d %6d %6d]\n", *a2, **(a2 + 16), *(*(a2 + 16) + 4), *(*(a2 + 16) + 8));
  }

  v9 = a2[34];
  if (v9 >= 1)
  {
    v10 = *(a2 + 19);
    v11 = *(a2 + 13);
    do
    {
      v12 = *v10++;
      *(a3 + 4 * *(v11 + 4 * v12)) = --a4;
      --v9;
    }

    while (v9);
  }

  sub_2366EB220(a1, a2, &v47, &v46);
  sub_2366EC36C(&v48, v13, v14, v15, v16, v17, v18, v19);
  v20 = v47;
  v21 = a4 - *v46;
  if (*v47 + *v46 < 2049)
  {
    if (*v47 < 121 || v47[1] < 1)
    {
      sub_2366EB754(a1, v47, a3, a4 - *v46);
      sub_2366EC36C(&v47, v32, v33, v34, v35, v36, v37, v38);
    }

    else
    {
      sub_2366EAEB0(a1, v47, a3, a4 - *v46);
    }

    if (*v46 < 121 || v46[1] < 1)
    {
      sub_2366EB754(a1, v46, a3, a4);
      return sub_2366EC36C(&v46, v39, v40, v41, v42, v43, v44, v45);
    }

    else
    {
      return sub_2366EAEB0(a1, v46, a3, a4);
    }
  }

  else
  {
    v22 = malloc_type_malloc(0x20uLL, 0x10300405ED1140EuLL);
    *v22 = a1;
    v22[1] = v20;
    v22[2] = a3;
    *(v22 + 6) = v21;
    v23 = sub_2366D0700(sub_2366EB5FC, v22);
    if (*v46 < 121 || v46[1] < 1)
    {
      sub_2366EB754(a1, v46, a3, a4);
      sub_2366EC36C(&v46, v24, v25, v26, v27, v28, v29, v30);
    }

    else
    {
      sub_2366EAEB0(a1, v46, a3, a4);
    }

    return sub_2366D084C(v23);
  }
}

void sub_2366EB0B4(uint64_t a1, int *a2, __n128 a3)
{
  if (*(a1 + 48) == 1 || (*(a1 + 56) ? (v5 = 1000) : (v5 = 2000), *a2 < v5))
  {

    sub_2366EBC34(a1, a2, 7, a3);
  }

  else
  {
    sub_2366E2AA8(a1);
    v13 = sub_2366E2AB8(a1, *a2);
    v15 = **(a2 + 7);
    if (*(a1 + 48) >= 1)
    {
      v16 = 0;
      do
      {
        v14.n128_f64[0] = sub_2366EBC34(a1, a2, 7, v14);
        v17 = a2[28];
        if (!v16 || v17 < v15)
        {
          if (v16 < *(a1 + 48) - 1)
          {
            sub_2366E7408(*a2, *(a2 + 15), v13);
          }

          v15 = v17;
        }

        if (!v15)
        {
          break;
        }

        v18 = *(a1 + 48);
        if (v16 < v18 - 1)
        {
          sub_2366EC300(a2, v6, v7, v8, v9, v10, v11, v12);
          v18 = *(a1 + 48);
        }

        ++v16;
      }

      while (v16 < v18);
    }

    if (v15 != a2[28])
    {
      sub_2366E7408(*a2, v13, *(a2 + 15));
      sub_2366DBBCC(a1, a2);
    }

    sub_2366E2AB0(a1, v6, v7, v8, v9, v10, v11, v12);
  }
}

void *sub_2366EB220(uint64_t a1, unsigned int *a2, int **a3, int **a4)
{
  v88 = *MEMORY[0x277D85DE8];
  sub_2366E2AA8(a1);
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 208) = *(a1 + 208) - sub_23681E0C8();
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 5);
  v72 = *(a2 + 13);
  v73 = *(a2 + 3);
  v9 = *(a2 + 15);
  v11 = *(a2 + 18);
  v10 = *(a2 + 19);
  v12 = sub_2366E2AB8(a1, *a2);
  v13 = v12;
  v85 = 0;
  v84 = 0;
  v87 = 0;
  v86 = 0;
  v76 = a1;
  if (v6 < 1)
  {
    v69 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
  }

  else
  {
    v14 = (v7 + 4);
    v15 = v6;
    v16 = v9;
    v17 = v12;
    do
    {
      v18 = *v16++;
      v19 = *(&v86 + v18);
      *(&v86 + v18) = v19 + 1;
      *v17++ = v19;
      *(&v84 + v18) += *v14 - *(v14 - 1);
      ++v14;
      --v15;
    }

    while (v15);
    v20 = v86;
    v21 = HIDWORD(v86);
    v22 = v84;
    v69 = HIDWORD(v84);
  }

  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v23 = sub_2366EC1F8(a2, v20, v22);
  v24 = *(v23 + 3);
  v68 = *(v23 + 2);
  v82 = v68;
  v80 = v24;
  v25 = *(v23 + 6);
  v78 = *(v23 + 5);
  v71 = v23;
  v77[0] = *(v23 + 13);
  v26 = sub_2366EC1F8(a2, v21, v69);
  v27 = *(v26 + 2);
  v28 = *(v26 + 3);
  v83 = v27;
  v81 = v28;
  v29 = *(v26 + 6);
  v79 = *(v26 + 5);
  v70 = v26;
  v77[1] = *(v26 + 13);
  v30 = a2[34];
  if (v30 >= 1)
  {
    for (i = 0; i < v30; ++i)
    {
      v32 = (v7 + 4 * *(v10 + 4 * i));
      v33 = *v32;
      if (v33 < v32[1])
      {
        do
        {
          *(v11 + 4 * *(v8 + 4 * v33++)) = 1;
        }

        while (v33 < v32[1]);
        v30 = a2[34];
      }
    }
  }

  v84 = 0;
  v86 = 0;
  *v27 = 0;
  *v68 = 0;
  if (v6 >= 1)
  {
    for (j = 0; j != v6; ++j)
    {
      v35 = v9[j];
      if (v35 != 2)
      {
        v36 = (v7 + 4 * j);
        v37 = *v36;
        v38 = v36[1];
        v39 = *(&v78 + v35);
        v40 = *(&v84 + v35);
        if (*(v11 + 4 * j) == -1)
        {
          if (v38 > v37)
          {
            v45 = (v39 + 4 * v40);
            v46 = v38 - v37;
            v47 = (v8 + 4 * v37);
            do
            {
              v48 = *v47++;
              *v45++ = v48;
              --v46;
            }

            while (v46);
          }

          v40 += v38 - v37;
        }

        else if (v38 > v37)
        {
          v41 = (v8 + 4 * v37);
          v42 = v38 - v37;
          do
          {
            v44 = *v41++;
            v43 = v44;
            if (v9[v44] == v35)
            {
              *(v39 + 4 * v40++) = v43;
            }

            --v42;
          }

          while (v42);
        }

        *(&v84 + v35) = v40;
        v49 = *(&v86 + v35);
        *(*(&v80 + v35) + 4 * v49) = *(v73 + 4 * j);
        *(v77[v35] + 4 * v49) = *(v72 + 4 * j);
        v50 = (&v82)[v35];
        *(&v86 + v35) = v49 + 1;
        v50[v49 + 1] = v40;
      }
    }
  }

  v51 = &v84;
  v52 = &v78;
  v53 = 1;
  do
  {
    v54 = v53;
    v55 = *v51;
    sub_2366E736C(v55, 1, v25);
    if (v55 >= 1)
    {
      v56 = *v52;
      do
      {
        *v56 = v13[*v56];
        ++v56;
        --v55;
      }

      while (v55);
    }

    v53 = 0;
    v25 = v29;
    v52 = &v79;
    v51 = (&v84 + 4);
  }

  while ((v54 & 1) != 0);
  v57 = HIDWORD(v86);
  v58 = v84;
  v59 = HIDWORD(v84);
  *v71 = v86;
  v71[1] = v58;
  *v70 = v57;
  v70[1] = v59;
  sub_2366EC0C8(v71);
  sub_2366EC0C8(v70);
  if ((*(v76 + 8) & 2) != 0)
  {
    *(v76 + 208) = sub_23681E0C8() + *(v76 + 208);
  }

  *a3 = v71;
  *a4 = v70;

  return sub_2366E2AB0(v76, v60, v61, v62, v63, v64, v65, v66);
}

void sub_2366EB5FC(void *a1)
{
  v3 = *a1;
  v22 = a1[1];
  v2 = v22;
  v4 = a1[2];
  v5 = *(a1 + 6);
  v6 = sub_23681BC6C(0x158uLL, "X");
  memcpy(v6, v3, 0x158uLL);
  v6[30] = 0;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  v6[11] = sub_2366E72A4(v3[24], 0, "SetupCtrl: maxvwgt");
  v6[15] = sub_2366E75EC(2, "ctrl->tpwgts", 0.5);
  v7 = v3[13] * 0.001 + 1.0;
  v6[14] = sub_2366E75EC(v3[24], "SetupCtrl: ubfactors", v7);
  v6[16] = sub_2366E7294(v3[25], "SetupCtrl: ctrl->pijbm");
  sub_2366E2894(v6);
  v23 = v6;
  if (*v2 < 121 || *(v2 + 4) < 1)
  {
    sub_2366EB754(v6, v2, v4, v5);
    sub_2366EC36C(&v22, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    sub_2366EAEB0(v6, v2, v4, v5);
  }

  sub_2366E2774(&v23, v8, v9, v10, v11, v12, v13, v14);
  free(a1);
}

void *sub_2366EB754(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v39 = 0;
  sub_2366E2AA8(a1);
  v7 = *a2;
  v8 = v7;
  v9 = a2[2];
  v10 = a2[5];
  v11 = *(v9 + 4 * v7);
  if (v11 >= 1)
  {
    v12 = a2[5];
    do
    {
      ++*v12++;
      --v11;
    }

    while (v11);
  }

  v38 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    v13 = v7 + 1;
    v14 = v9;
    do
    {
      ++*v14++;
      --v13;
    }

    while (v13);
  }

  v37 = sub_2366E2AB8(a1, v7 + 5);
  v15 = sub_2366E2AB8(a1, v8 + 5);
  v16 = sub_2366E2AB8(a1, v8 + 5);
  v17 = sub_2366E2AB8(a1, v8 + 5);
  v18 = sub_2366E2AB8(a1, v8 + 5);
  v19 = sub_2366E2AB8(a1, v8 + 5);
  sub_2366BB3CC(v8, v9, v10, v15, v37, 1, v16, v17, v18, v19, 0x7FFFFFFF, &v39);
  if (v8 >= 1)
  {
    v27 = a2[13];
    v28 = v8;
    do
    {
      v29 = *v15++;
      v30 = ~v8 + a4 + v29;
      v31 = *v27++;
      *(a3 + 4 * v31) = v30;
      --v28;
    }

    while (v28);
  }

  if ((v8 & 0x80000000) == 0)
  {
    v32 = (v8 + 1);
    v33 = v9;
    do
    {
      --*v33++;
      --v32;
    }

    while (v32);
  }

  v34 = *(v9 + 4 * v38);
  if (v34 >= 1)
  {
    do
    {
      --*v10++;
      --v34;
    }

    while (v34);
  }

  return sub_2366E2AB0(a1, v20, v21, v22, v23, v24, v25, v26);
}

void *sub_2366EB91C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  sub_2366E2AA8(a1);
  if ((*(v8 + 8) & 2) != 0)
  {
    *(v8 + 208) = *(v8 + 208) - sub_23681E0C8();
  }

  v9 = *a2;
  v10 = *(a2 + 16);
  v65 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  v14 = *(a2 + 144);
  v15 = *(a2 + 136);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(a2 + 152);
    do
    {
      v18 = (v10 + 4 * *(v17 + 4 * v16));
      v19 = *v18;
      if (v19 < v18[1])
      {
        do
        {
          *(v14 + 4 * *(v11 + 4 * v19++)) = 1;
        }

        while (v19 < v18[1]);
        v15 = *(a2 + 136);
      }

      ++v16;
    }

    while (v16 < v15);
  }

  v63 = v12;
  v64 = v11;
  v20 = sub_2366E2AB8(v8, v9);
  v21 = sub_23681BC6C(8 * a3, "SplitGraphOrderCC: sgraphs");
  v29 = v21;
  if (a3 >= 1)
  {
    v30 = 0;
    v66 = a3;
    v67 = v21;
    v68 = v8;
    do
    {
      v31 = v30++;
      v32 = *(a4 + 4 * v31);
      v33 = *(a4 + 4 * v30) - v32;
      sub_2366C8A48(v33, a5 + 4 * v32, v33, 0, (v8 + 68));
      v34 = 0;
      v35 = 0;
      v36 = *(a4 + 4 * v31);
      if (v36 < *(a4 + 4 * v30))
      {
        v35 = 0;
        v37 = 0;
        do
        {
          v38 = *(a5 + 4 * v36);
          v34 = v37 + 1;
          v20[v38] = v37;
          v35 = *(v10 + 4 * v38 + 4) + v35 - *(v10 + 4 * v38);
          ++v36;
          ++v37;
        }

        while (v36 < *(a4 + 4 * v30));
      }

      v39 = sub_2366EC1F8(a2, v34, v35);
      v29[v31] = v39;
      v40 = v39[2];
      v41 = v39[3];
      v43 = v39[5];
      v42 = v39[6];
      v44 = v39[13];
      *v40 = 0;
      v70 = v31;
      v45 = *(a4 + 4 * v31);
      if (v45 >= *(a4 + 4 * v30))
      {
        sub_2366E736C(0, 1, v42);
        v47 = 0;
        LODWORD(v46) = 0;
      }

      else
      {
        v46 = 0;
        v47 = 0;
        do
        {
          v48 = *(a5 + 4 * v45);
          v49 = (v10 + 4 * v48);
          v50 = *v49;
          v51 = v49[1];
          if (*(v14 + 4 * v48) == -1)
          {
            if (v50 < v51)
            {
              v56 = &v43[v47];
              v57 = v51 - v50;
              v58 = (v64 + 4 * v50);
              do
              {
                v59 = *v58++;
                *v56++ = v59;
                --v57;
              }

              while (v57);
            }

            v47 = v47 - v50 + v51;
          }

          else if (v50 < v51)
          {
            v52 = (v64 + 4 * v50);
            v53 = v51 - v50;
            do
            {
              v55 = *v52++;
              v54 = v55;
              if (*(v13 + 4 * v55) != 2)
              {
                v43[v47++] = v54;
              }

              --v53;
            }

            while (v53);
          }

          *(v41 + 4 * v46) = *(v65 + 4 * v48);
          *(v44 + 4 * v46++) = *(v63 + 4 * v48);
          v40[v46] = v47;
          ++v45;
        }

        while (v45 < *(a4 + 4 * v30));
        sub_2366E736C(v47, 1, v42);
        if (v47 >= 1)
        {
          v60 = v47;
          do
          {
            *v43 = v20[*v43];
            ++v43;
            --v60;
          }

          while (v60);
        }
      }

      v29 = v67;
      v61 = v67[v70];
      *v61 = v46;
      v61[1] = v47;
      sub_2366EC0C8(v61);
      v8 = v68;
    }

    while (v30 != v66);
  }

  if ((*(v8 + 8) & 2) != 0)
  {
    *(v8 + 208) = sub_23681E0C8() + *(v8 + 208);
  }

  sub_2366E2AB0(v8, v22, v23, v24, v25, v26, v27, v28);
  return v29;
}

double sub_2366EBC34(uint64_t a1, int *a2, uint64_t a3, __n128 a4)
{
  v4 = a3;
  if (*a2 > 4999)
  {
    sub_2366E2AA8(a1);
    if (*a2 >= 3030)
    {
      v8 = *a2 / 30;
    }

    else
    {
      v8 = 100;
    }

    *(a1 + 24) = v8;
    v9 = sub_2366E3860(a1, a2, 4);
    sub_2366E2AB8(a1, *v9);
    v10.n128_f64[0] = v4 * 0.7;
    sub_2366EBD3C(a1, v9, v10.n128_f64[0], v10);
    sub_2366E2AB0(a1, v11, v12, v13, v14, v15, v16, v17);

    return sub_2366DBA78(a1, a2, v9);
  }

  else
  {

    return sub_2366EBD3C(a1, a2, a3, a4);
  }
}

double sub_2366EBD3C(uint64_t a1, int *a2, int a3, __n128 a4)
{
  v7 = *a2;
  v8 = *a2 + 7;
  if (*a2 >= 0)
  {
    v8 = *a2;
  }

  *(a1 + 24) = v8 >> 3;
  if (v7 <= 807)
  {
    if (v7 > 319)
    {
      goto LABEL_8;
    }

    v9 = 40;
  }

  else
  {
    v9 = 100;
  }

  *(a1 + 24) = v9;
LABEL_8:
  v10 = sub_2366E2BD8(a1, a2, a4);
  if (*v10 <= *(a1 + 24))
  {
    v11 = a3 / 2;
  }

  else
  {
    v11 = a3;
  }

  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  sub_2366DB4F4(a1, v10, v12);

  return sub_2366DBA78(a1, a2, v10);
}

uint64_t sub_2366EBDFC(_DWORD *a1, int a2, int a3, _DWORD *a4, uint64_t a5, char *a6, char *a7, uint64_t a8)
{
  sub_2366EC044();
  v16 = v15;
  *v15 = a2;
  *(v15 + 4) = a4[a2];
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;
  *(v15 + 72) = 0;
  *(v15 + 40) = a5;
  *(v15 + 84) = 0;
  if (a6)
  {
    *(v15 + 76) = 0;
  }

  else
  {
    a6 = sub_2366E72A4(a3 * a2, 1, "SetupGraph: vwgt");
  }

  *(v16 + 24) = a6;
  *(v16 + 56) = sub_2366E7294(a3, "SetupGraph: tvwgts");
  *(v16 + 64) = sub_2366E7294(a3, "SetupGraph: invtvwgts");
  if (a3 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = sub_2366E71E0(a2, a6, a3);
      v19 = *(v16 + 64);
      *(*(v16 + 56) + 4 * v17) = v18;
      v20 = 1.0 / v18;
      if (v18 <= 0)
      {
        v20 = 1.0;
      }

      *(v19 + 4 * v17++) = v20;
      a6 += 4;
    }

    while (a3 != v17);
  }

  if (a1[1] == 1)
  {
    if (a7)
    {
      *(v16 + 80) = 0;
    }

    else
    {
      a7 = sub_2366E72A4(a2, 1, "SetupGraph: vsize");
    }

    *(v16 + 32) = a7;
    v21 = sub_2366E7294(*(v16 + 4), "SetupGraph: adjwgt");
    *(v16 + 48) = v21;
    if (a2 >= 1)
    {
      v22 = 0;
      LODWORD(v23) = *a4;
      do
      {
        v24 = v22++;
        LODWORD(v25) = a4[v22];
        if (v23 < v25)
        {
          v23 = v23;
          do
          {
            v21[v23] = *&a7[4 * v24] + *&a7[4 * *(a5 + 4 * v23)] + 1;
            ++v23;
            v25 = a4[v22];
          }

          while (v23 < v25);
        }

        LODWORD(v23) = v25;
      }

      while (v22 != a2);
    }
  }

  else if (a8)
  {
    *(v16 + 48) = a8;
    *(v16 + 88) = 0;
  }

  else
  {
    *(v16 + 48) = sub_2366E72A4(*(v16 + 4), 1, "SetupGraph: adjwgt");
  }

  sub_2366EC0C8(v16);
  if ((*a1 | 2) == 2)
  {
    sub_2366EC198(v16);
  }

  return v16;
}

double sub_2366EC044()
{
  v0 = sub_23681BC6C(0xE0uLL, "CreateGraph: graph");
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[13] = 0u;
  *v0 = -1;
  *(v0 + 2) = -1;
  *(v0 + 14) = -1;
  *(v0 + 34) = -1;
  *(v0 + 8) = 0;
  *(v0 + 12) = 0;
  *(v0 + 13) = 0;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(v0 + 72) = v2;
  *(v0 + 22) = 1;
  *(v0 + 15) = 0;
  *(v0 + 16) = 0;
  *(v0 + 26) = 0;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  return result;
}

int *sub_2366EC0C8(int *result)
{
  v1 = result;
  if (!*(result + 7))
  {
    result = sub_2366E7294(result[2], "SetupGraph_tvwgt: tvwgt");
    *(v1 + 7) = result;
  }

  if (!*(v1 + 8))
  {
    result = sub_2366E7294(v1[2], "SetupGraph_tvwgt: invtvwgt");
    *(v1 + 8) = result;
  }

  LODWORD(v2) = v1[2];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      result = sub_2366E71E0(*v1, (*(v1 + 3) + v3), v2);
      v5 = *(v1 + 8);
      *(*(v1 + 7) + v3) = result;
      v6 = 1.0 / result;
      if (result <= 0)
      {
        v6 = 1.0;
      }

      *(v5 + v3) = v6;
      ++v4;
      v3 += 4;
      v2 = v1[2];
    }

    while (v4 < v2);
  }

  return result;
}

_DWORD *sub_2366EC198(int *a1)
{
  result = *(a1 + 13);
  if (!result)
  {
    result = sub_2366E7294(*a1, "SetupGraph_label: label");
    *(a1 + 13) = result;
  }

  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      result[v3] = v3;
      ++v3;
    }

    while (v3 < *a1);
  }

  return result;
}

uint64_t sub_2366EC1F8(uint64_t a1, int a2, int a3)
{
  sub_2366EC044();
  v7 = v6;
  *v6 = a2;
  *(v6 + 4) = a3;
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = sub_2366E7294(a2 + 1, "SetupSplitGraph: xadj");
  *(v7 + 24) = sub_2366E7294(*(v7 + 8) * a2, "SetupSplitGraph: vwgt");
  *(v7 + 40) = sub_2366E7294(a3, "SetupSplitGraph: adjncy");
  *(v7 + 48) = sub_2366E7294(a3, "SetupSplitGraph: adjwgt");
  *(v7 + 104) = sub_2366E7294(a2, "SetupSplitGraph: label");
  *(v7 + 56) = sub_2366E7294(*(v7 + 8), "SetupSplitGraph: tvwgt");
  *(v7 + 64) = sub_2366E7294(*(v7 + 8), "SetupSplitGraph: invtvwgt");
  if (*(a1 + 32))
  {
    *(v7 + 32) = sub_2366E7294(a2, "SetupSplitGraph: vsize");
  }

  return v7;
}

void *sub_2366EC300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 176) == *(a1 + 184))
  {
    *(a1 + 176) = 0;
  }

  return sub_23681BE6C((a1 + 120), a2, a3, a4, a5, a6, a7, a8, (a1 + 128), a1 + 160);
}

void *sub_2366EC36C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *a1;
  if (*(*a1 + 72))
  {
    sub_23681BE6C((v18 + 16), a2, a3, a4, a5, a6, a7, a8, 0, v17);
  }

  if (*(v18 + 76))
  {
    sub_23681BE6C((v18 + 24), a2, a3, a4, a5, a6, a7, a8, 0, v17);
  }

  if (*(v18 + 80))
  {
    sub_23681BE6C((v18 + 32), a2, a3, a4, a5, a6, a7, a8, 0, v17);
  }

  if (*(v18 + 84))
  {
    sub_23681BE6C((v18 + 40), a2, a3, a4, a5, a6, a7, a8, 0, v17);
  }

  if (*(v18 + 88))
  {
    sub_23681BE6C((v18 + 48), a2, a3, a4, a5, a6, a7, a8, 0, v17);
  }

  sub_2366EC300(v18, a2, a3, a4, a5, a6, a7, a8);
  result = sub_23681BE6C((v18 + 56), v9, v10, v11, v12, v13, v14, v15, (v18 + 64), v18 + 104);
  *a1 = 0;
  return result;
}

uint64_t sub_2366EC430(uint64_t result, int *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(result + 36))
  {
    v3 = (a2 + 4);
    if (((*a2 + *a2 * a2[2] + 2 * *(*(a2 + 2) + 4 * *a2)) & 0x3FFFFFFFFE000000) != 0)
    {
      v4 = result;
      v5 = a2[54];
      if (v5 >= 1)
      {
        __sprintf_chk(__filename, 0, 0x400uLL, "metis%d.%d", *(result + 336), v5);
        sub_2366D73B4(__filename);
      }

      v6 = dword_27DE4870C++;
      a2[54] = v6;
      __sprintf_chk(__filename, 0, 0x400uLL, "metis%d.%d", *(v4 + 336), v6);
      result = fopen(__filename, "wb");
      if (result)
      {
        v7 = result;
        v8 = *a2;
        v9 = a2[2];
        v10 = *(a2 + 2);
        if (a2[18] && fwrite(*(a2 + 2), 4uLL, v8 + 1, result) != v8 + 1 || a2[19] && fwrite(*(a2 + 3), 4uLL, v9 * v8, v7) != v9 * v8 || a2[21] && fwrite(*(a2 + 5), 4uLL, *(v10 + 4 * v8), v7) != *(v10 + 4 * v8) || a2[22] && fwrite(*(a2 + 6), 4uLL, *(v10 + 4 * v8), v7) != *(v10 + 4 * v8) || *(v4 + 4) == 1 && a2[20] && fwrite(*(a2 + 4), 4uLL, v8, v7) != v8)
        {
          printf("Failed on writing %s\n", __filename);
          fclose(v7);
          result = sub_2366D73B4(__filename);
          v18 = 0;
        }

        else
        {
          result = fclose(v7);
          if (a2[18])
          {
            result = sub_23681BE6C(v3, v11, v12, v13, v14, v15, v16, v17, 0, v19);
          }

          if (a2[19])
          {
            result = sub_23681BE6C(a2 + 3, v11, v12, v13, v14, v15, v16, v17, 0, v19);
          }

          if (a2[20])
          {
            result = sub_23681BE6C(a2 + 4, v11, v12, v13, v14, v15, v16, v17, 0, v19);
          }

          if (a2[21])
          {
            result = sub_23681BE6C(a2 + 5, v11, v12, v13, v14, v15, v16, v17, 0, v19);
          }

          if (a2[22])
          {
            result = sub_23681BE6C(a2 + 6, v11, v12, v13, v14, v15, v16, v17, 0, v19);
          }

          v18 = 1;
        }

        a2[55] = v18;
      }
    }
  }

  return result;
}

void *sub_2366EC6D0(uint64_t a1, int *a2)
{
  sub_2366E2AA8(a1);
  v4 = *(a2 + 2);
  v5 = a2[34];
  v6 = *(a2 + 19);
  v7 = *a2;
  v8 = *(a2 + 15);
  v9 = sub_2366E2AB8(a1, *a2);
  v10 = sub_2366E7408(v7, v8, v9);
  v18 = v10;
  if (v5 >= 1)
  {
    do
    {
      v20 = *v6++;
      v19 = v20;
      if (*(v4 + 4 * v20 + 4) > *(v4 + 4 * v20))
      {
        *(v10 + v19) = 2;
      }

      --v5;
    }

    while (v5);
  }

  sub_2366EC300(a2, v11, v12, v13, v14, v15, v16, v17);
  sub_2366DBD70(a1, a2);
  sub_2366E7408(v7, v18, *(a2 + 15));
  sub_2366E2AB0(a1, v21, v22, v23, v24, v25, v26, v27);
  sub_2366DBBCC(a1, a2);
  sub_2366CBB20(a1, a2, 1);

  return sub_2366CC5E8(a1, a2, 4);
}

uint64_t sub_2366EC7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2366DE2A4(*(a1 + 400), a2);
  v5 = sub_2366DE2E4(*(a1 + 400));
  v6 = v4;
  v7 = sub_2366DE78C(16 * v5, *(a1 + 400)) + 16 * v4;
  v8 = *(*(a2 + 48) + 4 * v4);
  v9 = malloc_type_malloc(0x28uLL, 0x10100405A89562EuLL);
  v9[4] = 0;
  v9[5] = v8;
  *v9 = 0;
  *(v9 + 1) = v8;
  *(v9 + 3) = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  v10 = *(v9 + 1);
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    memset(v11, 255, 4 * v10);
  }

  *(v9 + 4) = v12;
  *v7 = v9;
  v7[1] = malloc_type_malloc(8 * *(*(a2 + 48) + 4 * v6), 0x100004000313F17uLL);
  if (!v6)
  {
    *(a2 + 152) = v7;
  }

  v14 = *(a1 + 400);

  return sub_2366DE30C(v14);
}

void sub_2366EC918(uint64_t a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*(a1 + 12), a2);
  v4 = *(a1 + 152) + 16 * v3;
  if (*v4)
  {
    sub_2366D7F8C(*v4);
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    free(v5);
  }

  sub_2366DE830(*(a1 + 152), *(a1 + 12));
  if (!v3)
  {
    *(a1 + 152) = 0;
  }
}

uint64_t sub_2366EC980(uint64_t a1, uint64_t a2)
{
  v4 = sub_2366DE2A4(*(a1 + 400), a2);
  v5 = sub_2366DE2E4(*(a1 + 400));
  v6 = v4;
  v7 = sub_2366DE78C(16 * v5, *(a1 + 400)) + 16 * v4;
  v8 = *(*(a2 + 48) + 4 * v4);
  v9 = malloc_type_malloc(0x28uLL, 0x10100405A89562EuLL);
  v9[4] = 0;
  v9[5] = v8;
  *v9 = 0;
  *(v9 + 1) = v8;
  *(v9 + 3) = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  v10 = *(v9 + 1);
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    memset(v11, 255, 4 * v10);
  }

  *(v9 + 4) = v12;
  *v7 = v9;
  v7[1] = malloc_type_malloc(8 * *(*(a2 + 48) + 4 * v6), 0x100004000313F17uLL);
  if (!v6)
  {
    *(a2 + 160) = v7;
  }

  v14 = *(a1 + 400);

  return sub_2366DE30C(v14);
}

void sub_2366ECAAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*(a1 + 12), a2);
  v4 = *(a1 + 160) + 16 * v3;
  if (*v4)
  {
    sub_2366D7F8C(*v4);
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    free(v5);
  }

  sub_2366DE830(*(a1 + 160), *(a1 + 12));
  if (!v3)
  {
    *(a1 + 160) = 0;
  }
}

uint64_t sub_2366ECB2C(uint64_t a1, void *a2)
{
  v4 = sub_2366DE2A4(*(a1 + 400), a2);
  v5 = sub_2366DE2E4(*(a1 + 400));
  v6 = v4;
  v7 = sub_2366DE78C(v5 << 6, *(a1 + 400)) + 64 * v4;
  *v7 = *(a1 + 408);
  v8 = *(a2[6] + 4 * v4);
  v9 = malloc_type_malloc(0x28uLL, 0x10100405A89562EuLL);
  v9[4] = 0;
  v9[5] = v8;
  *v9 = 0;
  *(v9 + 1) = v8;
  *(v9 + 3) = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  v10 = *(v9 + 1);
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v12 = v11;
  if (v10 && v11)
  {
    memset(v11, 255, 4 * v10);
  }

  *(v9 + 4) = v12;
  *(v7 + 1) = v9;
  *(v7 + 2) = malloc_type_malloc(16 * *(a2[6] + 4 * v6), 0x1000040451B5BE8uLL);
  *(v7 + 6) = 0;
  v13 = 4 * *(a2[7] + 4 * v6);
  if (v13 <= 0x400)
  {
    v14 = 1024;
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_2366D0B04(v14);
  *(v7 + 7) = 1 << v15;
  *(v7 + 4) = v15;
  *(v7 + 5) = 64;
  *(v7 + 6) = malloc_type_malloc(0x200uLL, 0x2004093837F09uLL);
  v16 = malloc_type_malloc(8 * *(v7 + 7), 0x100004000313F17uLL);
  v17 = *(v7 + 5);
  **(v7 + 6) = v16;
  if (v17 >= 2)
  {
    for (i = 1; i != v17; ++i)
    {
      *(*(v7 + 6) + 8 * i) = 0;
    }
  }

  sub_2366DE290(v7 + 14);
  if (!v6)
  {
    a2[18] = v7;
  }

  v19 = *(a1 + 400);

  return sub_2366DE30C(v19);
}

void sub_2366ECCF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*(a1 + 12), a2);
  v4 = sub_2366DE2E4(*(a1 + 12));
  if (*(a1 + 16) > v3)
  {
    v5 = v4;
    do
    {
      v6 = (*(a1 + 144) + (v3 << 6));
      v7 = v6[1];
      if (v7)
      {
        free(v7[4]);
        free(v7[3]);
        free(v7);
      }

      v8 = v6[2];
      if (v8)
      {
        free(v8);
      }

      v9 = v6[6];
      if (v9)
      {
        if (v6[5])
        {
          v10 = 0;
          while (1)
          {
            v9 = v6[6];
            if (!v9[v10])
            {
              break;
            }

            free(v9[v10++]);
            if (v10 >= v6[5])
            {
              v9 = v6[6];
              break;
            }
          }
        }

        free(v9);
      }

      nullsub_1();
      sub_2366DE830(*(a1 + 144), *(a1 + 12));
      if (!v3)
      {
        *(a1 + 144) = 0;
      }

      v3 += v5;
    }

    while (v3 < *(a1 + 16));
  }
}

char *sub_2366ECDF0(const char *a1, uint64_t a2)
{
  result = getenv(a1);
  if (!result)
  {
    return a2;
  }

  return result;
}

uint64_t sub_2366ECE1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7)
{
  v13 = a2;
  v14 = sub_2366E72A4(a2, -1, "CompressGraph: mark");
  v80 = v14;
  v15 = sub_2366E72A4(v13, -1, "CompressGraph: map");
  v79 = v15;
  v16 = sub_2366E71D8(v13, "CompressGraph: keys");
  v17 = v16;
  __nel = v13;
  v78 = v16;
  if (a2 <= 0)
  {
    sub_2366D7228(v13, v16);
    v34 = 0;
    *a6 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *(a3 + 4 * v18);
      v20 = v18 + 1;
      v21 = *(a3 + 4 * (v18 + 1));
      if (v19 >= v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = (a4 + 4 * v19);
        v24 = v21 - v19;
        do
        {
          v25 = *v23++;
          v22 += v25;
          --v24;
        }

        while (v24);
      }

      v26 = &v16[8 * v18];
      *v26 = v22 + v18;
      *(v26 + 1) = v18++;
    }

    while (v20 != a2);
    sub_2366D7228(v13, v16);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    *a6 = 0;
    v36 = 1;
    do
    {
      v37 = &v17[8 * v33];
      v38 = *(v37 + 1);
      if (*&v15[4 * v38] == -1)
      {
        *&v14[4 * v38] = v33;
        v40 = (a3 + 4 * v38);
        v41 = *v40;
        if (v41 < v40[1])
        {
          do
          {
            *&v14[4 * *(a4 + 4 * v41++)] = v33;
          }

          while (v41 < v40[1]);
        }

        *&v15[4 * v38] = v34;
        v42 = v35 + 1;
        *(a7 + 4 * v35) = v38;
        v39 = v33 + 1;
        if (v33 + 1 < v13)
        {
          v43 = v36;
          do
          {
            v44 = &v17[8 * v43];
            if (*v37 != *v44)
            {
              break;
            }

            v45 = *(v44 + 1);
            v27 = (v40[1] - *v40);
            v46 = *(a3 + 4 * v45);
            v47 = *(a3 + 4 * v45 + 4);
            v28 = (v47 - v46);
            if (v27 != v28)
            {
              break;
            }

            v27 = *&v15[4 * v45];
            if (v27 == -1)
            {
              if (v47 > v46)
              {
                v27 = a4 + 4 * v46;
                while (1)
                {
                  v48 = *v27;
                  v27 += 4;
                  v28 = *&v14[4 * v48];
                  if (v33 != v28)
                  {
                    break;
                  }

                  if (v47 == ++v46)
                  {
                    goto LABEL_25;
                  }
                }
              }

              if (v46 == v47)
              {
LABEL_25:
                *&v15[4 * v45] = v34;
                *(a7 + 4 * v42++) = v45;
              }
            }

            ++v43;
          }

          while (v43 != a2);
        }

        v34 = (v34 + 1);
        a6[v34] = v42;
        v35 = v42;
      }

      else
      {
        v39 = v33 + 1;
      }

      ++v36;
      v33 = v39;
    }

    while (v39 != a2);
  }

  v49 = *(a1 + 8);
  v76 = v34;
  if (v49)
  {
    printf("  Compression: reduction in # of vertices: %d.\n", a2 - v34);
    v34 = v76;
  }

  if (a2 * 0.85 <= v34)
  {
    v56 = 0;
  }

  else
  {
    sub_2366EC044();
    v51 = v50;
    if (v76 < 1)
    {
      v73 = 0;
    }

    else
    {
      v52 = 0;
      v53 = v76;
      v54 = a6;
      do
      {
        v55 = *v54++;
        v52 = *(a3 + 4 * *(a7 + 4 * v55) + 4) + v52 - *(a3 + 4 * *(a7 + 4 * v55));
        --v53;
      }

      while (v53);
      v73 = v52;
    }

    v57 = sub_2366E7294(v76 + 1, "CompressGraph: xadj");
    *(v51 + 16) = v57;
    v58 = sub_2366E72A4(v76, 0, "CompressGraph: vwgt");
    *(v51 + 24) = v58;
    v59 = sub_2366E7294(v73, "CompressGraph: adjncy");
    v60 = v51;
    v74 = v51;
    v61 = v59;
    *(v60 + 40) = v59;
    *(v74 + 48) = sub_2366E72A4(v73, 1, "CompressGraph: adjwgt");
    sub_2366E736C(__nel, -1, v14);
    *v57 = 0;
    if (v76 < 1)
    {
      v63 = 0;
    }

    else
    {
      v62 = 0;
      v63 = 0;
      do
      {
        *&v14[4 * v62] = v62;
        v64 = a6[v62];
        v65 = v62 + 1;
        if (v64 < a6[v62 + 1])
        {
          do
          {
            v66 = *(a7 + 4 * v64);
            if (a5)
            {
              v67 = *(a5 + 4 * v66);
            }

            else
            {
              v67 = 1;
            }

            *&v58[4 * v62] += v67;
            v68 = (a3 + 4 * v66);
            v69 = v68[1];
            v70 = *v68;
            if (v70 < v69)
            {
              do
              {
                v71 = *&v15[4 * *(a4 + 4 * v70)];
                if (v62 != *&v14[4 * v71])
                {
                  *&v14[4 * v71] = v62;
                  v61[v63++] = v71;
                  v69 = v68[1];
                }

                ++v70;
              }

              while (v70 < v69);
            }

            ++v64;
          }

          while (v64 < a6[v65]);
        }

        v57[v65] = v63;
        ++v62;
      }

      while (v65 != v76);
    }

    v56 = v74;
    *v74 = v76;
    *(v74 + 4) = v63;
    *(v74 + 8) = 1;
    sub_2366EC0C8(v74);
    sub_2366EC198(v74);
  }

  sub_23681BE6C(&v78, v27, v28, v34, v29, v30, v31, v32, &v79, &v80);
  return v56;
}

uint64_t sub_2366ED2B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v14 = sub_2366E7294(a2, "PruneGraph: perm");
  v22 = v14;
  v49 = v14;
  v23 = (*(a3 + 4 * a2) * a7) / a2;
  v24 = a2;
  if (a2 < 1)
  {
    v28 = 0;
    v27 = 0;
    v30 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = (a3 + 4 * v25);
      if (v23 <= (v29[1] - *v29))
      {
        ++v28;
        v14[v25] = a2 - v28;
        *(a6 + 4 * (a2 - v28)) = v25;
      }

      else
      {
        v14[v25] = v27;
        *(a6 + 4 * v27) = v25;
        v26 = v29[1] + v26 - *(a3 + 4 * v25);
        ++v27;
      }

      ++v25;
    }

    while (a2 != v25);
    v30 = v26;
  }

  if (*(a1 + 8))
  {
    printf("  Pruned %d of %d vertices.\n", v28, a2);
  }

  if (v28 < 1 || v28 >= a2)
  {
    v33 = 0;
    if (v28 >= 1 && v28 == a2)
    {
      if (*(a1 + 8))
      {
        puts("  Pruning is ignored as it removes all vertices.");
      }

      v33 = 0;
    }
  }

  else
  {
    sub_2366EC044();
    v31 = v30;
    v48 = v30;
    v33 = v32;
    v34 = sub_2366E7294(v27 + 1, "PruneGraph: xadj");
    *(v33 + 16) = v34;
    v35 = sub_2366E7294(v27, "PruneGraph: vwgt");
    *(v33 + 24) = v35;
    v36 = sub_2366E7294(v31, "PruneGraph: adjncy");
    *(v33 + 40) = v36;
    v37 = sub_2366E72A4(v48, 1, "PruneGraph: adjwgt");
    v38 = 0;
    v39 = 0;
    LODWORD(v40) = 0;
    *(v33 + 48) = v37;
    *v34 = 0;
    do
    {
      v41 = v38 + 1;
      if (v23 > (*(a3 + 4 * (v38 + 1)) - *(a3 + 4 * v38)))
      {
        if (a5)
        {
          v42 = *(a5 + 4 * v38);
        }

        else
        {
          v42 = 1;
        }

        v35[v40] = v42;
        v43 = *(a3 + 4 * v38);
        v44 = *(a3 + 4 * v41);
        if (v43 < v44)
        {
          do
          {
            v45 = v22[*(a4 + 4 * v43)];
            if (v45 < v27)
            {
              v36[v39++] = v45;
              v44 = *(a3 + 4 * v41);
            }

            ++v43;
          }

          while (v43 < v44);
        }

        v40 = v40 + 1;
        v34[v40] = v39;
      }

      v38 = v41;
    }

    while (v41 != v24);
    *v33 = v27;
    *(v33 + 4) = v39;
    *(v33 + 8) = 1;
    sub_2366EC0C8(v33);
    sub_2366EC198(v33);
  }

  sub_23681BE6C(&v49, v15, v16, v17, v18, v19, v20, v21, 0, v47);
  return v33;
}

uint64_t sub_2366ED558(uint64_t result, float *a2, float *a3)
{
  v3 = *a2 - *a3;
  if (result >= 2)
  {
    v4 = result - 1;
    do
    {
      v5 = a3[v4];
      if (v3 < (a2[v4] - v5))
      {
        v3 = a2[v4] - v5;
      }

      v6 = v4-- + 1;
    }

    while (v6 > 2);
  }

  return result;
}

uint64_t sub_2366ED59C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  while (v3 >= 1)
  {
    v4 = *(a2 - 4 + 4 * v3);
    v5 = *(a3 - 4 + 4 * v3--);
    if (v4 > v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2366ED5D4(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  while (v5 >= 1)
  {
    v6 = *(a3 - 4 + 4 * v5);
    v7 = *(a4 - 4 + 4 * v5);
    v8 = *(a5 - 4 + 4 * v5--);
    if (v7 + v6 * a2 > v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2366ED618(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  while (v5 >= 1)
  {
    v6 = *(a3 - 4 + 4 * v5);
    v7 = *(a4 - 4 + 4 * v5);
    v8 = *(a5 - 4 + 4 * v5--);
    if (v7 + v6 * a2 < v8)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_2366ED65C(unsigned int a1, float *a2, int *a3, int *a4, int *a5)
{
  if (a1 < 1)
  {
    return 1;
  }

  v5 = a1;
  v6 = 0.0;
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = a2;
  v11 = a5;
  v12 = 0.0;
  do
  {
    v14 = *v8++;
    v13 = v14;
    v15 = *v9++;
    v16 = (v15 + v13);
    v17 = *v10++;
    v18 = v17;
    v19 = *v11++;
    v12 = v12 + (v16 * v18);
    v6 = v6 + ((v19 + v13) * v18);
    --v7;
  }

  while (v7);
  v20 = v12 / a1;
  v21 = 0.0;
  v22 = 0.0;
  v23 = v6 / a1;
  do
  {
    v25 = *a3++;
    v24 = v25;
    v26 = *a4++;
    v27 = (v26 + v24);
    v28 = *a2++;
    v29 = v28;
    v22 = v22 + fabsf(v20 - (v27 * v28));
    v30 = *a5++;
    v21 = v21 + fabsf(v23 - ((v30 + v24) * v29));
    --v5;
  }

  while (v5);
  return (v22 - v21) >= 0.0;
}

BOOL sub_2366ED720(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 1)
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v3 = a1 - 1;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      v6 = *(a2 + 4 * v3);
      if (v6 > 0.0)
      {
        v5 = v5 + (v6 * v6);
      }

      v7 = *(a3 + 4 * v3);
      if (v7 > 0.0)
      {
        v4 = v4 + (v7 * v7);
      }

      v8 = v3-- + 1;
    }

    while (v8 > 1);
  }

  return v4 < v5;
}

uint64_t sub_2366ED780(unsigned int a1, int *a2, float *a3, int a4, int *a5, float *a6, int a7, int *a8, float *a9)
{
  if (a1 < 1)
  {
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v10 = a1;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      v15 = *a6++;
      v16 = v15;
      v18 = *a5++;
      v17 = v18;
      v20 = *a2++;
      v19 = v20;
      v21 = (v17 + v20 * a4);
      v22 = *a3++;
      v23 = v22;
      v24 = -(v22 - (v16 * v21));
      v14 = v14 + (v24 * v24);
      v25 = *a9++;
      v26 = v25;
      v27 = *a8++;
      v28 = v27 + v19 * a7;
      if (v24 > v12)
      {
        v12 = v24;
      }

      v29 = -(v23 - (v26 * v28));
      v13 = v13 + (v29 * v29);
      if (v29 > v11)
      {
        v11 = -(v23 - (v26 * v28));
      }

      --v10;
    }

    while (v10);
  }

  v31 = v13 < v14 && v11 == v12;
  return (v11 < v12) | v31;
}

float sub_2366ED820(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 < 1)
  {
    return 1.0;
  }

  v4 = 0;
  v5 = *(a1 + 128);
  result = 1.0;
  do
  {
    if (a2 >= 1)
    {
      v7 = 0;
      v8 = a2;
      do
      {
        v9 = *(a3 + v7);
        if ((v9 * *(v5 + v7)) > result)
        {
          result = v9 * *(v5 + v7);
        }

        v7 += 4 * v3;
        --v8;
      }

      while (v8);
    }

    ++v4;
    a3 += 4;
    v5 += 4;
  }

  while (v4 != v3);
  return result;
}

float sub_2366ED894(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    return -1.0;
  }

  v5 = 0;
  v6 = *(a1 + 128);
  result = -1.0;
  do
  {
    if (a2 >= 1)
    {
      v8 = 0;
      v9 = a2;
      do
      {
        v10 = *(a3 + v8);
        if (((*(v6 + v8) * v10) - *(a4 + 4 * v5)) > result)
        {
          result = (*(v6 + v8) * v10) - *(a4 + 4 * v5);
        }

        v8 += 4 * v4;
        --v9;
      }

      while (v9);
    }

    ++v5;
    a3 += 4;
    v6 += 4;
  }

  while (v5 != v4);
  return result;
}

float sub_2366ED910(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5 < 1)
  {
    return -1.0;
  }

  v6 = 0;
  v7 = *(a1 + 128);
  v8 = a3 + 4 * v5;
  v9 = v7 + 4 * v5;
  result = -1.0;
  do
  {
    v11 = -(*(a4 + 4 * v6) - (*(v7 + 4 * v6) * *(a3 + 4 * v6)));
    *(a5 + 4 * v6) = v11;
    if (a2 >= 2)
    {
      v12 = 0;
      v13 = a2 - 1;
      do
      {
        v14 = -(*(a4 + 4 * v6) - (*(v9 + v12) * *(v8 + v12)));
        if (v14 > v11)
        {
          *(a5 + 4 * v6) = v14;
          v11 = v14;
        }

        v12 += 4 * v5;
        --v13;
      }

      while (v13);
    }

    if (result < v11)
    {
      result = v11;
    }

    ++v6;
    v8 += 4;
    v9 += 4;
  }

  while (v6 != v5);
  return result;
}

uint64_t sub_2366ED9BC(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 128);
    v7 = a3 + 4 * v4;
    v8 = v6 + 4 * v4;
    do
    {
      v9 = *(a3 + 4 * v5) * *(v6 + 4 * v5);
      *(a4 + 4 * v5) = v9;
      if (a2 >= 2)
      {
        v10 = 0;
        v11 = a2 - 1;
        do
        {
          v12 = *(v7 + v10) * *(v8 + v10);
          if (v12 > v9)
          {
            *(a4 + 4 * v5) = v12;
            v9 = v12;
          }

          v10 += 4 * v4;
          --v11;
        }

        while (v11);
      }

      ++v5;
      v7 += 4;
      v8 += 4;
    }

    while (v5 != v4);
  }

  return result;
}

SparseMatrix_Float *__cdecl _SparseConvertFromCoordinate_Float(SparseMatrix_Float *__return_ptr retstr, int m, int n, uint64_t nBlock, uint8_t blockSize, SparseAttributes_t attributes, const int *row, const int *col, const float *val, char *storage, int *workspace)
{
  v11 = n;
  retstr->structure.rowCount = m;
  retstr->structure.columnCount = n;
  v12 = ((storage + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (n + 1);
  v14 = ((&v12[v13 + 1] + 7) & 0xFFFFFFFFFFFFFFF0);
  *&retstr->structure.attributes = 0;
  retstr->data = v14;
  retstr->structure.attributes = attributes;
  *&retstr->structure.blockSize = v15;
  *(&retstr->structure.blockSize + 2) = blockSize;
  v107 = v14;
  v16 = ((&v14[nBlock * (blockSize * blockSize) + 3] + 3) & 0xFFFFFFFFFFFFFFF0);
  retstr->structure.columnStarts = v12;
  retstr->structure.rowIndices = v16;
  if (!nBlock)
  {
    if ((n & 0x80000000) == 0)
    {

      bzero(((storage + 15) & 0xFFFFFFFFFFFFFFF0), 8 * (n + 1));
    }

    goto LABEL_145;
  }

  v18 = blockSize;
  v19 = m;
  v106 = (blockSize * blockSize);
  v20 = attributes;
  v118 = *&attributes;
  if (n >= 1)
  {
    bzero(v12 + 2, 8 * n);
    *&attributes = v118;
  }

  v111 = (v20 >> 2) & 3;
  v21 = v106;
  if (v111 == 1)
  {
    goto LABEL_12;
  }

  if (v111 != 2)
  {
    LOBYTE(v115) = 0;
    v117 = 0;
    goto LABEL_14;
  }

  if (v18 != 1)
  {
LABEL_12:
    v117 = (*&attributes & 2) == 0;
    v115 = (*&attributes & 2) >> 1;
LABEL_14:
    v116 = 1;
    LOBYTE(v114) = 1;
    goto LABEL_15;
  }

  LOBYTE(v115) = 0;
  v117 = 0;
  v114 = (*&attributes & 2) >> 1;
  v116 = (*&attributes & 2) == 0;
LABEL_15:
  if (nBlock >= 1)
  {
    v22 = row;
    v23 = col;
    v24 = nBlock;
    do
    {
      v26 = *v22++;
      v25 = v26;
      v28 = *v23++;
      v27 = v28;
      if ((v25 & 0x80000000) == 0 && v25 < v19)
      {
        v29 = v25 > v27 && v117;
        v30 = v116;
        if (v25 >= v27)
        {
          v30 = 1;
        }

        if ((v27 & 0x80000000) == 0)
        {
          v31 = v27 < v11 && !v29;
          v32 = v31 && (v115 & (v25 < v27)) == 0;
          if (v32 && v114 & 1 | (v25 < v27) && v30)
          {
            v33 = ((*&attributes >> 1) & 1) == 0;
            if (v25 <= v27)
            {
              v33 = 0;
            }

            if (((v111 == 3) & ((v25 < v27) & (*&attributes >> 1) | v33)) == 0)
            {
              v25 = v27;
            }

            ++*(((storage + 15) & 0xFFFFFFFFFFFFFFF0) + 0x10 + 8 * v25);
          }
        }
      }

      --v24;
    }

    while (v24);
  }

  *(((storage + 15) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
  v105 = v12 + 1;
  *v12 = 0;
  if (v11 >= 1)
  {
    v34 = 0;
    v35 = v13 - 1;
    v36 = v12 + 2;
    do
    {
      v34 += *v36;
      *v36++ = v34;
      --v35;
    }

    while (v35);
  }

  v101 = ((storage + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19 >= 1)
  {
    memset_pattern16(workspace, &unk_23681FAD0, 4 * v19);
    *&attributes = v118;
  }

  v113 = v19;
  v37 = 4 * v106;
  v39 = col;
  v38 = nBlock;
  v40 = (&v12[v13 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  *&m = row;
  v41 = v111;
  v42 = v12 + 1;
  if (nBlock >= 1)
  {
    v43 = val;
    v44 = 0;
    v45 = 4 * v18;
    v102 = v11;
    do
    {
      v46 = *(*&m + 4 * v44);
      if ((v46 & 0x80000000) != 0 || v46 >= v113)
      {
        goto LABEL_122;
      }

      v47 = v39[v44];
      v48 = v46 > v47 && v117;
      v49 = v116;
      if (v46 >= v47)
      {
        v49 = 1;
      }

      if ((v47 & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      v50 = v47 < v11 && !v48;
      v51 = v50 && (v115 & (v46 < v47)) == 0;
      if (!v51 || !(v114 & 1 | (v46 < v47)) || !v49)
      {
        goto LABEL_122;
      }

      if (v41 == 3 && (v46 > v47 ? (v52 = ((*&attributes >> 1) & 1) == 0) : (v52 = 0), (*&attributes & 2) != 0 && v46 < v47 || v52))
      {
        v59 = v42[v46];
        v42[v46] = v59 + 1;
        v16[v59] = v47;
        if (v18)
        {
          v60 = 0;
          v61 = (v40 + 4 * v59 * v21);
          v62 = v43;
          v119 = v61;
          do
          {
            v63 = v18;
            v64 = v62;
            v65 = v61;
            do
            {
              *v65++ = *v64;
              v64 = (v64 + v45);
              --v63;
            }

            while (v63);
            ++v60;
            v61 = (v61 + v45);
            ++v62;
          }

          while (v60 != v18);
          v58 = v46;
LABEL_81:
          if (v18 >= 2 && v47 == v46)
          {
            v103 = v58;
            v104 = v43;
            if (v41 > 1)
            {
              if (v41 == 2)
              {
                v70 = 0;
                v71 = 0;
                v112 = workspace[v58];
                v72 = v119;
                do
                {
                  if ((*&attributes & 2) != 0)
                  {
                    v73 = 0;
                  }

                  else
                  {
                    v73 = v71;
                  }

                  ++v71;
                  if ((*&attributes & 2) != 0)
                  {
                    v74 = v71;
                  }

                  else
                  {
                    v74 = v18;
                  }

                  if (v74 <= v73 + 1)
                  {
                    v74 = v73 + 1;
                  }

                  bzero(&v119[v70 + v73], 4 * (v74 + ~v73) + 4);
                  if (v112 == -2)
                  {
                    *v72 = 1065353216;
                  }

                  v72 = (v72 + v45 + 4);
                  v70 += v18;
                  *&attributes = v118;
                }

                while (v18 != v71);
              }

              else
              {
                v75 = 0;
                v76 = 0;
                do
                {
                  v77 = v76 + 1;
                  if ((*&attributes & 2) != 0)
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v78 = v76 + 1;
                  }

                  if ((*&attributes & 2) != 0)
                  {
                    v79 = v76;
                  }

                  else
                  {
                    v79 = v18;
                  }

                  if (v78 < v79)
                  {
                    v80 = &v119[v76 + v18 * v78];
                    v81 = &v119[v75 + v78];
                    v82 = v79 - v78;
                    do
                    {
                      *v80 = *v81 + *v80;
                      *v81++ = 0.0;
                      v80 = (v80 + v45);
                      --v82;
                    }

                    while (v82);
                  }

                  v75 += v18;
                  v76 = v77;
                }

                while (v77 != v18);
              }
            }

            else if (v41)
            {
              v66 = 0;
              for (i = 0; i != v18; ++i)
              {
                if ((*&attributes & 2) != 0)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = i + 1;
                }

                if ((*&attributes & 2) != 0)
                {
                  v69 = i;
                }

                else
                {
                  v69 = v18;
                }

                if (v68 < v69)
                {
                  bzero(&v119[v68 + v66], 4 * (v69 + ~v68) + 4);
                  *&attributes = v118;
                }

                v66 += v18;
              }
            }

            v11 = v102;
            workspace[v103] = -1;
            v21 = v106;
            v40 = v107;
            v43 = v104;
            v42 = v105;
            *&m = row;
            v39 = col;
            v38 = nBlock;
            v41 = v111;
          }
        }
      }

      else
      {
        v53 = v42[v47];
        v42[v47] = v53 + 1;
        v16[v53] = v46;
        v54 = (v40 + 4 * v53 * v21);
        v55 = v21;
        v56 = v43;
        v119 = v54;
        if (v18)
        {
          do
          {
            v57 = *v56++;
            *v54++ = v57;
            --v55;
          }

          while (v55);
          v58 = v47;
          goto LABEL_81;
        }
      }

LABEL_122:
      ++v44;
      v43 = (v43 + v37);
    }

    while (v44 != v38);
  }

  if (v11 < 1)
  {
    v84 = 0;
    v85 = (storage + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    v85 = (storage + 15) & 0xFFFFFFFFFFFFFFF0;
    v86 = *v101;
    do
    {
      v87 = v84;
      v101[v83++] = v84;
      v88 = v101[v83];
      if (v86 < v88)
      {
        v89 = (v40 + v37 * v86);
        do
        {
          v90 = v16[v86];
          v91 = workspace[v90];
          if ((v91 & 0x80000000) != 0)
          {
            if (v84 != v86)
            {
              v16[v84] = v90;
              if (v18)
              {
                v94 = (v40 + 4 * v84 * v21);
                *&m = v21;
                v95 = v89;
                do
                {
                  v96 = *v95++;
                  *v94++ = v96;
                  --*&m;
                }

                while (*&m);
              }
            }

            workspace[v90] = v84++ - v87;
          }

          else if (v18)
          {
            v92 = 0;
            v93 = v40 + 4 * (v87 + v91) * v21;
            do
            {
              *(v93 + v92) = *&v89[v92 / 4] + *(v93 + v92);
              v92 += 4;
            }

            while (v37 != v92);
          }

          ++v86;
          v89 = (v89 + v37);
        }

        while (v86 != v88);
      }

      v97 = v84 - v87;
      if (v84 > v87)
      {
        v98 = &v16[v87];
        do
        {
          v99 = *v98++;
          workspace[v99] = -1;
          --v97;
        }

        while (v97);
      }

      v86 = v88;
    }

    while (v83 != v11);
  }

  *(v85 + 8 * v11) = v84;
LABEL_145:
  LODWORD(result) = m;
  return result;
}

unsigned int *sub_2366EE0E8(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, char *__b, char *__ba)
{
  v14 = *result;
  if (__ba)
  {
    v15 = &__ba[4 * v14 + 4];
  }

  else
  {
    v15 = 0;
  }

  v67 = result;
  if (__ba)
  {
    v17 = result;
    v18 = result[1];
    if ((v14 & 0x80000000) == 0)
    {
      result = memset(__ba, 255, 4 * v14 + 4);
      v17 = v67;
    }

    if (v18 >= 1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (!a2 || *(a2 + 4 * i))
        {
          v20 = (*(v17 + 1) + 8 * i);
          v22 = *v20;
          v21 = v20[1];
          v23 = v14;
          v24 = v21 <= v22;
          v25 = v21 - v22;
          if (!v24)
          {
            v26 = (*(v17 + 2) + 4 * v22);
            v27 = v14;
            do
            {
              v29 = *v26++;
              v28 = v29;
              if ((v29 & 0x80000000) == 0 && v28 < v14 && (!a3 || *(a3 + 4 * v28)))
              {
                v30 = *(a4 + 4 * v28);
                if (v30 < v27)
                {
                  v27 = v30;
                }
              }

              --v25;
            }

            while (v25);
            v23 = v27;
          }

          *&v15[4 * i] = *&__ba[4 * v23];
          *&__ba[4 * v23] = i;
        }
      }
    }
  }

  if (v14 >= 1)
  {
    v31 = &__b[4 * v14];
    v32 = &__b[8 * v14];
    v33 = 4 * v14;
    if (4 * v14 <= 1)
    {
      v33 = 1;
    }

    v34 = &__b[12 * v14];
    memset(__b, 255, 4 * v33);
    result = a5;
    for (j = 0; j != v14; ++j)
    {
      v36 = *&v34[4 * j];
      v38 = v36 == -1;
      v37 = v36 == -1;
      v38 = !v38 || a3 == 0;
      if (!v38)
      {
        v37 = *(a3 + 4 * a5[j]);
      }

      *(a7 + 4 * j) = v37;
      v39 = j;
      do
      {
        if (*&v34[4 * v39] != -1)
        {
          break;
        }

        *&v34[4 * v39] = j;
        v39 = *(a6 + 4 * v39);
      }

      while (v39 != -1);
    }

    v40 = 0;
    v41 = vdupq_n_s64(v14 - 1);
    v42 = xmmword_23681F910;
    v43 = xmmword_23681F920;
    v44 = __b + 8;
    v45 = vdupq_n_s64(4uLL);
    do
    {
      v46 = vmovn_s64(vcgeq_u64(v41, v43));
      if (vuzp1_s16(v46, *v41.i8).u8[0])
      {
        *(v44 - 2) = v40;
      }

      if (vuzp1_s16(v46, *&v41).i8[2])
      {
        *(v44 - 1) = v40 + 1;
      }

      if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, *&v42))).i32[1])
      {
        *v44 = v40 + 2;
        *(v44 + 1) = v40 + 3;
      }

      v40 += 4;
      v42 = vaddq_s64(v42, v45);
      v43 = vaddq_s64(v43, v45);
      v44 += 16;
    }

    while (((v14 + 3) & 0xFFFFFFFC) != v40);
    for (k = 0; k != v14; ++k)
    {
      if (__ba)
      {
        v48 = __ba;
      }

      else
      {
        v48 = a5;
      }

      v49 = v48[k];
      if (v49 != -1)
      {
        v50 = *(v67 + 1);
        do
        {
          v51 = (v50 + 8 * v49);
          v52 = *v51;
          v53 = v51[1];
          if (v52 < v53)
          {
            v54 = *(v67 + 2);
            do
            {
              v55 = *(v54 + 4 * v52);
              if ((v55 & 0x80000000) == 0 && v55 < v14 && (!a3 || *(a3 + 4 * v55)))
              {
                v56 = *(a4 + 4 * v55);
                if (k < v56)
                {
                  v57 = *&v34[4 * k];
                  if (v57 > *&v31[4 * v56])
                  {
                    *&v31[4 * v56] = v57;
                    v58 = *&v32[4 * v56];
                    *&v32[4 * v56] = k;
                    v59 = a3 ? *(a3 + 4 * v55) : 1;
                    *(a7 + 4 * k) += v59;
                    if (v58 != -1)
                    {
                      v60 = v58;
                      do
                      {
                        v61 = v60;
                        v60 = *&__b[4 * v60];
                      }

                      while (v61 != v60);
                      if (v58 != v61)
                      {
                        do
                        {
                          v62 = *&__b[4 * v58];
                          *&__b[4 * v58] = v61;
                          v58 = v62;
                        }

                        while (v62 != v61);
                      }

                      if (a3)
                      {
                        v63 = *(a3 + 4 * v55);
                      }

                      else
                      {
                        v63 = 1;
                      }

                      *(a7 + 4 * v61) -= v63;
                    }
                  }
                }
              }

              ++v52;
            }

            while (v52 != v53);
          }

          if (!__ba)
          {
            break;
          }

          v49 = *&__ba[4 * v14 + 4 + 4 * v49];
        }

        while (v49 != -1);
      }

      v64 = *(a6 + 4 * k);
      if (v64 != -1)
      {
        *&__b[4 * k] = v64;
        if (a3)
        {
          v65 = *(a3 + 4 * a5[k]);
        }

        else
        {
          v65 = 1;
        }

        *(a7 + 4 * v64) += *(a7 + 4 * k) - v65;
      }
    }
  }

  return result;
}

uint64_t sub_2366EE490(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_35;
  }

  v13 = 0;
  v45 = a5 + 4 * ~a6 * a4;
  v51 = a5 + 4;
  v52 = a6 + 1;
  v14 = 4 * a6;
  v50 = 4 * a6 + 4;
  v15 = a3;
  v16 = a9;
  v53 = a6;
  while (1)
  {
    v17 = (v13 + 1);
    if (v17 >= a3)
    {
      break;
    }

    v18 = (v51 + v50 * v13);
    a7.n128_u32[0] = -1.0;
    v19 = -1;
    v20 = v13 + 1;
    do
    {
      v21 = *v18++;
      v22 = fabsf(v21);
      if (v22 > a7.n128_f32[0])
      {
        a7.n128_f32[0] = v22;
        v19 = v20;
      }

      ++v20;
    }

    while (a3 != v20);
    if (v19 < 0)
    {
      goto LABEL_13;
    }

    v23 = *(a10 + 24);
    if (v23 <= a7.n128_f32[0] || v23 <= fabsf(*(a5 + 4 * v52 * v13)))
    {
      goto LABEL_13;
    }

    sub_236778048((v13 + a4), (--v15 + a4), (a4 + a1), (a4 + a2), v45);
    v17 = v13;
LABEL_27:
    v13 = v17;
    a6 = v53;
    if (v17 >= v15)
    {
      goto LABEL_32;
    }
  }

  a7.n128_u32[0] = -1.0;
  v19 = -1;
LABEL_13:
  if (v13 != v15 - 1 || *(a5 + 4 * v52 * v13) != 0.0)
  {
    v24 = (a5 + 4 * v52 * v13);
    v25 = v16 + 8 * v13;
    if (v19 == -1)
    {
      goto LABEL_26;
    }

    v26 = fabsf(*v24);
    if (v26 >= (a7.n128_f32[0] * 0.64039))
    {
      goto LABEL_26;
    }

    v27 = -1.0;
    if (v13 < v19)
    {
      v28 = (a5 + v14 * v13 + 4 * v19);
      v29 = v19 - v13;
      do
      {
        v27 = fmaxf(v27, fabsf(*v28));
        v28 = (v28 + v14);
        --v29;
      }

      while (v29);
    }

    if (v19 + 1 < a3)
    {
      v30 = (a5 + v14 * v19 + 4 * (v19 + 1));
      v31 = v44 - v19;
      do
      {
        v32 = *v30++;
        v27 = fmaxf(v27, fabsf(v32));
        --v31;
      }

      while (v31);
    }

    a7.n128_f32[0] = a7.n128_f32[0] * (a7.n128_f32[0] * 0.64039);
    if (a7.n128_f32[0] <= (v26 * v27))
    {
LABEL_26:
      sub_2367789E4((a3 - v13), (a3 - v13), a5 + 4 * v52 * v13, a6, v16 + 8 * v13, a11, a7);
    }

    else
    {
      v33 = (a3 - v13);
      if (fabsf(*(a5 + 4 * v52 * v19)) >= (v27 * 0.64039))
      {
        v36 = (v13 + a4);
        v37 = a6;
        sub_236778048(v36, (v19 + a4), (a4 + a1), (a4 + a2), v45);
        sub_2367789E4(v33, v33, v24, v37, v25, a11, v38);
      }

      else
      {
        v34 = (v17 + a4);
        v35 = a6;
        sub_236778048(v34, (v19 + a4), (a4 + a1), (a4 + a2), v45);
        sub_23677AFB4((a3 - v13), (a3 - v13), v24, v35, v25, a11);
        v17 = (v13 + 2);
      }

      v16 = a9;
    }

    goto LABEL_27;
  }

  v15 = v13;
LABEL_32:
  v39 = (a3 - v15);
  if (a3 > v15)
  {
    v40 = a9 + 8 * v15;
    v41 = (a5 + 4 * v52 * v15);
    v42 = v14 + 4;
    do
    {
      *v41 = 968164595;
      sub_2367789E4(v39, v39, v41, a6, v40, a11, a7);
      a6 = v53;
      v40 += 8;
      v41 = (v41 + v42);
      v39 = (v39 - 1);
    }

    while (v39);
  }

LABEL_35:
  sub_23677E9BC((a1 - a3), a3, a5, a6, a5 + 4 * a3, a6, a9, a11);
  return a3;
}

uint64_t sub_2366EE860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v10 = a4;
  v11 = a3;
  v13 = a3 + 4 * a2 * a4;
  if (a2 >= 48)
  {
    LODWORD(v14) = 0;
    v33 = a4 + 1;
    v28 = a1 - a2;
    v30 = a3 + 4 * a2 * a4;
    v31 = a5;
    v29 = a6;
    do
    {
      v15 = v11 + 4 * v33 * v14;
      v16 = v13 + 8 * v14;
      v17 = a2 - v14;
      if (a2 - v14 >= 48)
      {
        v18 = 48;
      }

      else
      {
        v18 = v17;
      }

      v19 = a1;
      v20 = a7;
      v21 = v10;
      sub_2366EE490(a1 - v14, a2 - v14, v18, v14, v11 + 4 * v33 * v14, v10, a8, a5 + 4 * v14, v13 + 8 * v14, a6, a7);
      v14 = (v18 + v14);
      if (v17 >= 1 && v14 < a2)
      {
        v22 = (v17 - v18);
        v23 = v15 + 4 * v18;
        v24 = v15 + 4 * v33 * v18;
        sub_236743FF4(v22, v18, v23, v21, v16, v24, v21, v20);
        if (v19 > a2)
        {
          sub_2367489A0(v28, v22, v18, v23 + 4 * v22, v23, v21, v16, v24 + 4 * v22, a8.n128_f64[0], v25, v26, v21, v20);
        }
      }

      a5 = v31;
      v11 = a3;
      a6 = v29;
      v13 = v30;
      v10 = v21;
      a7 = v20;
      a1 = v19;
    }

    while (v14 < a2);
  }

  else
  {
    sub_2366EE490(a1, a2, a2, 0, a3, a4, a8, a5, v13, a6, a7);
    return a2;
  }

  return v14;
}

BOOL sub_2366EE9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = a5 + 4 * a1 * a6;
  v10 = *(v9 + 4 * a1);
  v11 = *(v9 + 4 * a2);
  v12 = *(a5 + 4 * (a2 * a6 + a2));
  v13 = fmaxf(fabsf(v10), fmaxf(fabsf(v11), fabsf(v12)));
  v14 = *(a7 + 24);
  result = 0;
  if (v14 <= v13)
  {
    v15 = 1.0 / v13;
    v16 = v10 * v15;
    v17 = v12 * (v10 * v15);
    v18 = v11 * (v11 * v15);
    v19 = vabds_f32(v17, v18);
    if (v14 <= v19 && v19 >= fmaxf(fabsf(v17) * 0.5, fabsf(v18) * 0.5))
    {
      v23 = a4;
      v24 = a3;
      v25 = v17 - v18;
      v26 = (v12 * v15) / (v17 - v18);
      v27 = -(v11 * v15) / (v17 - v18);
      sub_2366EEB84(a1, a2, a3, a4, a5, a6);
      v29 = v28;
      sub_2366EEB84(a2, v8, v24, v23, a5, a6);
      v31 = fabsf(v27);
      v32 = 1.0 / *(a7 + 16);
      if (v32 >= ((v31 * v30) + (fabsf(v26) * v29)) && v32 >= ((fabsf(v16 / v25) * v30) + (v31 * v29)))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2366EEB84(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 0.0;
  if (a4 < result)
  {
    v7 = a2 - a4;
    v8 = (a5 + 4 * a6 * a4 + 4 * result);
    v9 = result - a4;
    do
    {
      if (v7)
      {
        v10 = fabsf(*v8);
        if (v10 > v6)
        {
          v6 = v10;
        }
      }

      --v7;
      v8 += a6;
      --v9;
    }

    while (v9);
  }

  v11 = result + 1;
  if (result + 1 < a3)
  {
    v12 = a2 - v11;
    v13 = (a5 + 4 * a6 * result + 4 * v11);
    v14 = ~result + a3;
    do
    {
      if (v12)
      {
        v15 = fabsf(*v13);
        if (v15 > v6)
        {
          v6 = v15;
        }
      }

      --v12;
      ++v13;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_2366EEC38(signed int a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a6;
  v12 = 0;
  v40 = a5 + 4 * ~a6 * a4;
  v48 = a3;
  v49 = a6 + 1;
  v45 = a5 + 4;
  v13 = 4 * a6;
  v39 = 4 * a6 + 4;
  v14 = a9;
  v38 = a1 - 2;
  while (2)
  {
    v15 = 0;
    v16 = v12;
    v46 = a5 + 4 * v12 * v10;
    v47 = v12 + 1;
    v17 = (v45 + v13 + v13 * v12 + 4 * v12);
    v18 = v12;
    while (1)
    {
      v19 = v18 + 1;
      if (v18 + 1 >= v48)
      {
        break;
      }

      v20 = v12;
      if (v18 > v16)
      {
        v21 = fabsf(*(v46 + 4 * v19));
        v22 = v15;
        v23 = v12 + 1;
        v24 = v17;
        LODWORD(v20) = v12;
        do
        {
          v25 = fabsf(*v24);
          if (v25 <= v21)
          {
            v20 = v20;
          }

          else
          {
            v21 = v25;
            v20 = v23;
          }

          v24 = (v24 + v13);
          ++v23;
          --v22;
        }

        while (v22);
      }

      v10 = a6;
      if (sub_2366EE9FC(v20, v19, a1, v12, a5, a6, v14))
      {
        sub_236778048((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v40);
        sub_236778048(v47 + a4, (v19 + a4), (a4 + a1), (a4 + a2), v40);
        v28 = a3;
        sub_23677AFB4((a1 - v12), a3 - v12, a5 + 4 * v49 * v12, a6, a8 + 8 * v12, a10);
        v30 = (v12 + 2);
        goto LABEL_27;
      }

      if (fabsf(*(a5 + 4 * v49 * v20)) <= fabsf(*(a5 + 4 * v49 * v19)))
      {
        v20 = v19;
      }

      else
      {
        v20 = v20;
      }

      sub_2366EF108(v20, a1, v12, a5, a6);
      v27 = v26;
      if (*(v14 + 24) > v27)
      {
        v10 = a6;
        sub_236778048((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v40);
        v14 = a9;
        v35 = *(v46 + 4 * v12);
        if (*(a9 + 24) > fabsf(v35))
        {
          v35 = INFINITY;
        }

        *(a8 + 8 * v12) = v35;
        *(a8 + 4 * ((2 * v12) | 1)) = 0;
        *(v46 + 4 * v12) = 1065353216;
        v30 = v47;
        if (v47 < a1)
        {
          bzero((v45 + v39 * v12), 4 * (v38 - v12) + 4);
          v14 = a9;
        }

        v28 = a3;
        goto LABEL_27;
      }

      ++v17;
      ++v15;
      v18 = v19;
      v16 = v12;
      if (*(v14 + 16) * v27 <= fabsf(*(a5 + 4 * v49 * v20)))
      {
        v10 = a6;
        sub_236778048((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v40);
        v28 = a3;
        sub_2367789E4((a1 - v12), a3 - v12, a5 + 4 * v49 * v12, a6, a8 + 8 * v12, a10, v29);
        v14 = a9;
        v30 = v47;
        goto LABEL_27;
      }
    }

    v31 = v16;
    v10 = a6;
    sub_2366EF108(v12, a1, v12, a5, a6);
    v32.n128_f64[0] = v32.n128_f32[0];
    v33 = *(a9 + 24);
    if (v33 > v32.n128_f64[0])
    {
      v36 = *(v46 + 4 * v31);
      if (v33 > fabsf(v36))
      {
        v36 = INFINITY;
      }

      *(a8 + 8 * v31) = v36;
      *(a8 + 4 * ((2 * v31) | 1)) = 0;
      *(v46 + 4 * v31) = 1065353216;
      v30 = v47;
      if (v47 < a1)
      {
        bzero((v45 + v39 * v31), 4 * (v38 - v12) + 4);
      }

      return v30;
    }

    v34 = (a5 + 4 * v49 * v31);
    v32.n128_f64[0] = *(a9 + 16) * v32.n128_f64[0];
    v30 = v47;
    if (v32.n128_f64[0] > fabsf(*v34))
    {
      return v12;
    }

    v28 = a3;
    sub_2367789E4((a1 - v12), a3 - v12, v34, a6, a8 + 8 * v31, a10, v32);
    v14 = a9;
LABEL_27:
    v12 = v30;
    if (v30 < v28)
    {
      continue;
    }

    return v30;
  }
}

uint64_t sub_2366EF108(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 0.0;
  if (a3 < result)
  {
    v6 = (a4 + 4 * a5 * a3 + 4 * result);
    v7 = result - a3;
    do
    {
      v8 = fabsf(*v6);
      if (v8 > v5)
      {
        v5 = v8;
      }

      v6 += a5;
      --v7;
    }

    while (v7);
  }

  if (result + 1 < a2)
  {
    v9 = (a4 + 4 * a5 * result + 4 * (result + 1));
    v10 = ~result + a2;
    do
    {
      v11 = *v9++;
      v12 = fabsf(v11);
      if (v12 > v5)
      {
        v5 = v12;
      }

      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_2366EF198(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v10 = a3 + 4 * a2 * a4;
  if (a2 < 48)
  {
    return sub_2366EEC38(a1, a2, a2, 0, a3, a4, a5, v10, a6, a7);
  }

  v12 = 0;
  v31 = a4 + 1;
  v27 = a1 - a2;
  v28 = a3 + 4 * a2 * a4;
  v29 = a5;
  v32 = a6;
  do
  {
    v13 = v8 + 4 * v31 * v12;
    v14 = v10 + 8 * v12;
    v15 = a2 - v12;
    if (a2 - v12 >= 48)
    {
      v16 = 48;
    }

    else
    {
      v16 = a2 - v12;
    }

    v17 = a1;
    v18 = a1 - v12;
    v19 = a5 + 4 * v12;
    v20 = sub_2366EEC38(a1 - v12, a2 - v12, v16, v12, v8 + 4 * v31 * v12, a4, v19, v10 + 8 * v12, a6, a7);
    if (v20)
    {
      v21 = v20;
      if (v16 + v12 < a2 && v20 >= 1)
      {
        v22 = (v15 - v16);
        v23 = v13 + 4 * v31 * v16;
        sub_236743FF4(v22, v20, v13 + 4 * v16, a4, v14, v23, a4, a7);
        if (v17 > a2)
        {
          sub_2367489A0(v27, v22, v21, v13 + 4 * v16 + 4 * v22, v13 + 4 * v16, a4, v14, v23 + 4 * v22, v24, v25, v26, a4, a7);
        }
      }

      a1 = v17;
      goto LABEL_15;
    }

    if (v15 < 49)
    {
      break;
    }

    v21 = sub_2366EEC38(v18, a2 - v12, a2 - v12, v12, v13, a4, v19, v14, v32, a7);
    a1 = v17;
    if (!v21)
    {
      break;
    }

LABEL_15:
    v12 = (v21 + v12);
    a5 = v29;
    v8 = a3;
    a6 = v32;
    v10 = v28;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_2366EF440(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v10 = a2;
  v78 = a1;
  if (a1 > 192 || a2 > 96)
  {
    if (a8)
    {
      v11 = (a1 - 1) / 96 + 1;
      v83 = a4;
      v12 = (a2 - 1) / 96 + 1;
      v81[0] = a1;
      v81[1] = a2;
      v82 = a3;
      v84 = a2;
      v79 = 0u;
      v80 = 0u;
      sub_236792218(a8, a9 + 64, &v79);
      *(&v80 + 1) = v81;
      v17 = v12 * v11;
      v18 = *(a9 + 80) + 48 * atomic_fetch_add((a9 + 88), v17);
      if (v17 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v17; ++i)
        {
          v21 = v18 + 48 * i;
          atomic_store(0, v21);
          *(v21 + 4) = 0;
          *(v21 + 8) = 0;
          v22 = *(v21 + 16);
          do
          {
            _X5 = *(v21 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X12] }

            _ZF = _X4 == v22;
            v22 = _X4;
          }

          while (!_ZF);
          *(v21 + 32) = 0;
          *(v21 + 40) = 0;
        }
      }

      v77 = v18;
      if (v10 >= 1)
      {
        v71 = 0;
        v75 = v11;
        v70 = 96;
        do
        {
          v27 = v71;
          v28 = v71 / 0x60 * v75;
          v29 = v77 + 48 * v28;
          v30 = v29 + 48 * (v71 / 0x60);
          v73 = v71 / 0x60;
          sub_236792228(&v79, v71 / 0x60, sub_2366EFB8C, 1u, _X4, _X5, v15, v16, v30);
          v31 = v78;
          v71 += 96;
          if (v27 + 96 < v78)
          {
            v32 = v70;
            do
            {
              sub_236792228(&v79, v28 + v32 / 0x60uLL, sub_2366EFC88, 2u, _X4, _X5, v15, v16, v30);
              v31 = v78;
              v32 += 96;
            }

            while (v32 < v78);
          }

          v33 = v70;
          if (v71 >= v10)
          {
            break;
          }

          do
          {
            if (v33 < v31)
            {
              v34 = v33 / 0x60u;
              v35 = v33;
              do
              {
                v36 = v35 / 0x60uLL;
                v37 = (v73 + v33 / 0x60u * v75) * v75 + v36;
                if (v35 / 0x60 == v34)
                {
                  sub_236792228(&v79, v37, sub_2366EFD44, 2u, _X4, _X5, v15, v16, v29 + 48 * v34);
                }

                else
                {
                  sub_236792228(&v79, v37, sub_2366EFD44, 3u, _X4, _X5, v15, v16, v29 + 48 * v36);
                }

                v35 += 96;
                v31 = v78;
              }

              while (v35 < v78);
            }

            v33 += 96;
            LODWORD(v10) = a2;
          }

          while (v33 < a2);
          v70 += 96;
        }

        while (v71 < a2);
      }

      if (sub_236792900(&v79))
      {
        sub_2366FCEC8(a8);
      }

      return v84;
    }

    else if (a2 >= 1)
    {
      v39 = 0;
      v61 = a1 - 96;
      v58 = a2 - 96;
      v62 = 384 * a4 + 384;
      v57 = a3 + v62;
      v59 = 96;
      v60 = a3 + 384;
      for (j = a4; ; v9 = j)
      {
        if (v10 - v39 >= 96)
        {
          v40 = 96;
        }

        else
        {
          v40 = v10 - v39;
        }

        v74 = v40;
        v81[0] = v40;
        v86 = 76;
        if (a1 - v39 >= 96)
        {
          v41 = 96;
        }

        else
        {
          v41 = a1 - v39;
        }

        LODWORD(v79) = 0;
        v85 = v9;
        spotf2_NEWLAPACK();
        v42 = v81[0];
        if (v41 > v81[0])
        {
          APL_strsm();
          v42 = v81[0];
        }

        if (v42 < v74)
        {
          break;
        }

        a1 = v78;
        v56 = v39 + 96;
        if (v39 + 96 < v78)
        {
          v43 = v60;
          v44 = v59;
          v45 = v61;
          do
          {
            v46 = v45 - 96;
            APL_strsm();
            a1 = v78;
            v43 += 384;
            v44 += 96;
            v45 = v46;
          }

          while (v44 < v78);
        }

        if (v56 >= v10)
        {
          return v10;
        }

        v47 = v59;
        v66 = v57;
        v68 = v60;
        v48 = v58;
        v65 = v61;
        do
        {
          v63 = v48;
          v76 = v10 - v47;
          v64 = v47;
          if (v47 < a1)
          {
            v49 = 0;
            v50 = v47;
            v51 = v66;
            v52 = v68;
            v53 = v65;
            do
            {
              v54 = v53;
              _VF = __OFSUB__(v53, 96);
              v53 -= 96;
              if (v53 < 0 != _VF)
              {
                v55 = v54;
              }

              else
              {
                v55 = 96;
              }

              if (v49 || (cblas_ssyrk_NEWLAPACK(), v76 < v55))
              {
                APL_sgemm();
              }

              v51 += 384;
              v52 += 384;
              v49 -= 384;
              v50 += 96;
              a1 = v78;
            }

            while (v50 < v78);
          }

          v47 = v64 + 96;
          v65 -= 96;
          v48 = v63 - 96;
          v10 = a2;
          v66 += v62;
          v68 += 384;
        }

        while (v64 + 96 < a2);
        v61 -= 96;
        v59 += 96;
        v60 += v62;
        v58 -= 96;
        v39 = v56;
        v57 += v62;
      }

      return 0;
    }
  }

  else
  {
    v81[0] = a2;
    v86 = 76;
    LODWORD(v79) = 0;
    v85 = a4;
    spotf2_NEWLAPACK();
    v10 = v81[0];
    if (v78 > v81[0])
    {
      APL_strsm();
      return v81[0];
    }
  }

  return v10;
}

uint64_t sub_2366EFB8C(uint64_t a1, uint64_t a2)
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

  result = spotf2_NEWLAPACK();
  v7 = v5;
  if (v4 > v5)
  {
    result = APL_strsm();
    v7 = v5;
  }

  if (v7 != v5)
  {
    v2[6] = 0;
  }

  return result;
}

uint64_t sub_2366EFD44(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v4 = *(*a1 + 24);
  v5 = (*v4 - 1) / 96 + 1;
  v6 = 3 * (a2 % v5);
  v7 = 96 * (a2 % v5);
  v8 = (v5 * v5);
  v9 = 3 * (a2 / v8);
  v10 = 96 * (a2 / v8);
  if (*v4 - 32 * v6 >= 96)
  {
    v11 = 96;
  }

  else
  {
    v11 = *v4 - 32 * v6;
  }

  v12 = v4[1] - 32 * v9;
  if (4 * v7 != 4 * v10)
  {
    return APL_sgemm();
  }

  result = cblas_ssyrk_NEWLAPACK();
  if (v12 < v11)
  {
    return APL_sgemm();
  }

  return result;
}

uint64_t sub_2366EFEEC(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int32 *a6, uint64_t a7, unsigned __int32 *a8, uint64_t a9, uint64_t a10)
{
  if (a4 < 1)
  {
    return 0;
  }

  v15 = 0;
  v16 = a4;
  v17 = 4 * a7 + 4;
  while (*a6 != 0.0)
  {
    a2.n128_u32[0] = *a6;
    sub_2367789E4(a1, v16, a6, a7, a8, a10, a2);
    *a6 = *a8;
    v15 = (v15 + 1);
    a1 = (a1 - 1);
    a6 = (a6 + v17);
    if (!--v16)
    {
      return a4;
    }
  }

  return v15;
}

uint64_t sub_2366EFFAC(uint64_t a1, uint64_t a2, unsigned __int32 *a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = a2;
  v30 = *MEMORY[0x277D85DE8];
  if (a2 < 48)
  {
    return sub_2366EFEEC(a1, a5, a2, a2, a4, a3, a4, &v29, a9, a8);
  }

  LODWORD(v13) = 0;
  v28 = a4 + 1;
  v26 = a1 - a2;
  do
  {
    v14 = &v11[v28 * v13];
    v15 = v12 - v13;
    if (v12 - v13 >= 48)
    {
      v16 = 48;
    }

    else
    {
      v16 = v15;
    }

    v17 = a1;
    v18 = sub_2366EFEEC((a1 - v13), a5, a2, v16, a4, &v11[v28 * v13], a4, &v29, a9, a8);
    v13 = (v18 + v13);
    if (v18 >= 1 && v13 < v12)
    {
      v20 = v18;
      v21 = v15 - v18;
      v22 = v14 + 4 * v18;
      v23 = v14 + 4 * v28 * v18;
      sub_2368011E8(v21, v18, v22, a4, v14, v23, a4, a8);
      if (v17 > v12)
      {
        sub_236802020(v26, v21, v20, v22 + 4 * v21, v22, a4, v14, v23 + 4 * v21, a5.n128_f64[0], v24, a4, a8);
      }
    }

    v11 = a3;
    a1 = v17;
  }

  while (v13 < v12);
  return v13;
}

uint64_t sub_2366F0134(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4 - 1;
  if (a4 >= 1)
  {
    v10 = 0;
    v11 = a6 + 4;
    do
    {
      cblas_sscal_NEWLAPACK();
      if (v9 >= 1)
      {
        cblas_sger_NEWLAPACK();
      }

      ++v10;
      v11 += 4 * a7 + 4;
      --v9;
    }

    while (a4 != v10);
  }

  if (a1 > a4)
  {
    cblas_strsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_strsm_NEWLAPACK();
    cblas_sgemm_NEWLAPACK();
  }

  return a4;
}

uint64_t sub_2366F02E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9)
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

      sub_2366F0134(a1 - v14, a2, v15, v16, a5, a4 + 4 * (a5 + 1) * v14, a5);
      v14 += v16;
    }

    while (v14 < a3);
  }

  else
  {
    sub_2366F0134(a1, a2, a3, a3, a5, a4, a5);
  }

  v17 = __OFSUB__(v12, a3);
  v18 = v12 - a3;
  if (!((v18 < 0) ^ v17 | (v18 == 0)))
  {
    cblas_strsm_NEWLAPACK();
  }

  if (a1 - a3 >= 1 && v18 >= 1)
  {
    cblas_sgemm_NEWLAPACK();
  }

  return a3;
}

uint64_t sub_2366F0440(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = a3;
  v20 = a1;
  v21 = a10;
  if (a1 > 767 || a3 > 383)
  {
    if (a17)
    {
      v22 = (a1 - 1) / 384;
      v23 = v22 + 1;
      v76[0] = a1;
      v76[1] = a2;
      v78 = a4;
      v77 = a3;
      v24 = (a2 - 1) / 384 + 1;
      v79 = a5;
      v80 = a6;
      v81 = a7;
      v82 = a8;
      v83 = a9;
      v84 = a10;
      v85 = a14;
      v86 = a12;
      v87 = a13;
      v88 = a16;
      v74 = 0u;
      v75 = 0u;
      sub_236792218(a17, a18, &v74);
      *(&v75 + 1) = v76;
      v25 = v24 * (v22 + 1);
      v30 = (*(a12 + 24))(48 * v25);
      if (v25 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v25; ++i)
        {
          v33 = v30 + 48 * i;
          atomic_store(0, v33);
          *(v33 + 4) = 0;
          *(v33 + 8) = 0;
          v34 = *(v33 + 16);
          do
          {
            _X5 = *(v33 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X11] }

            _ZF = _X4 == v34;
            v34 = _X4;
          }

          while (!_ZF);
          *(v33 + 32) = 0;
          *(v33 + 40) = 0;
        }
      }

      if (v19 >= 1)
      {
        v64 = v30;
        v65 = 0;
        v39 = 0;
        v40 = v23;
        v62 = 48 * v22 + 48;
        v69 = v23;
        v70 = 384;
        v63 = v19;
        v72 = v30;
        do
        {
          v66 = v39 / 0x180 * v40;
          v68 = v39 / 0x180;
          v41 = v30 + 48 * v66;
          v42 = v41 + 48 * (v39 / 0x180);
          sub_236792228(&v74, v39 / 0x180, sub_2366F0E74, 1u, _X4, _X5, v28, v29, v42);
          v43 = v39;
          if (v39)
          {
            v44 = v40;
            v45 = 0;
            v46 = v64;
            v47 = v65;
            do
            {
              v48 = v42;
              v49 = v44;
              sub_236792228(&v74, v47, sub_2366F140C, 2u, _X4, _X5, v28, v29, v46);
              v44 = v49;
              v42 = v48;
              v45 += 384;
              v46 += v62;
              v47 += v44;
            }

            while (v45 < v43);
          }

          v39 = v43 + 384;
          if (v43 + 384 < v20)
          {
            v50 = v70;
            do
            {
              sub_236792228(&v74, v66 + v50 / 0x180uLL, sub_2366F157C, 2u, _X4, _X5, v28, v29, v72 + 48 * (v66 + v50 / 0x180uLL));
              v50 += 384;
            }

            while (v50 < v20);
          }

          if (v39 < a2)
          {
            v51 = v70;
            do
            {
              sub_236792228(&v74, v68 + v51 / 0x180u * v69, sub_2366F1768, 2u, _X4, _X5, v28, v29, v42);
              v51 += 384;
            }

            while (v51 < a2);
            v67 = v66 * v24;
            v52 = v70;
            do
            {
              if (v39 < v20)
              {
                v53 = v70;
                do
                {
                  sub_236792228(&v74, v67 + v52 / 0x180u * v69 + v53 / 0x180uLL, sub_2366F1B1C, 3u, _X4, _X5, v28, v29, v41 + 48 * (v53 / 0x180uLL));
                  v53 += 384;
                }

                while (v53 < v20);
              }

              v52 += 384;
            }

            while (v52 < a2);
          }

          v40 = v69;
          v70 += 384;
          v64 += 48;
          ++v65;
          v19 = v63;
          v30 = v72;
        }

        while (v39 < v63);
      }

      if (sub_236792900(&v74))
      {
        sub_2366FCEC8(a17);
      }

      (*(a12 + 32))(v30);
    }

    else
    {
      if (a3 >= 384)
      {
        v54 = 0;
        v55 = a5 + 1;
        do
        {
          v58 = v19 - v54;
          if (v19 - v54 >= 384)
          {
            v59 = 384;
          }

          else
          {
            v59 = v58;
          }

          v60 = v21;
          sub_2366F0AB4(v20 - v54, a2 - v54, v58, v59, v54, a4 + 4 * v55 * v54, a5, a6, a7, v21 + 4 * v54, a13);
          v21 = v60;
          v54 += v59;
        }

        while (v54 < v19);
      }

      else
      {
        sub_2366F0AB4(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
      }

      if (a2 > v19)
      {
        cblas_strsm_NEWLAPACK();
      }

      if (v20 - v19 >= 1 && a2 - v19 >= 1)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_2366F0AB4(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
    if (a2 > v19)
    {
      cblas_strsm_NEWLAPACK();
    }

    if (v20 - v19 >= 1 && a2 - v19 >= 1)
    {
LABEL_46:
      cblas_sgemm_NEWLAPACK();
    }
  }

  return v19;
}

uint64_t sub_2366F0AB4(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v33 = a6 + 4 * ~a7 * a5;
    v39 = (a5 + a3);
    v35 = 4 * a7 + 4;
    v36 = a10 - 4 * a5;
    v34 = a3 - 2;
    v40 = a3 + 1;
    do
    {
      if (a3 - v13 < 1)
      {
        v15 = 0.0;
      }

      else
      {
        v14 = v40 - v13;
        v15 = 0.0;
        v16 = (a6 + 4 * v13 * a7 + 4 * v13);
        do
        {
          v17 = *v16++;
          v18 = fabsf(v17);
          if (v15 <= v18)
          {
            v15 = v18;
          }

          --v14;
        }

        while (v14 > 1);
      }

      if (*(a11 + 24) <= v15)
      {
        v20 = (a6 + 4 * v13 * a7 + 4 * v13);
        v21 = v13;
        v22 = v13;
        if (a3 > v13)
        {
          while (fabsf(*v20) != v15)
          {
            ++v21;
            ++v20;
            if (a3 == v21)
            {
              v22 = v13;
              goto LABEL_18;
            }
          }

          v22 = v21;
        }

LABEL_18:
        if (v13 != v22)
        {
          v23 = v22 + a5;
          v24 = v13 + a5;
          v25 = *(a10 + 4 * v13);
          *(a10 + 4 * v13) = *(v36 + 4 * v23);
          v26 = v23;
          *(v36 + 4 * v23) = v25;
          if (v39 >= 1)
          {
            v27 = v33;
            v28 = v39;
            do
            {
              v29 = *(v27 + 4 * v24);
              *(v27 + 4 * v24) = *(v27 + 4 * v26);
              *(v27 + 4 * v26) = v29;
              v27 += 4 * a7;
              --v28;
            }

            while (v28);
          }

          if (a2 > a3)
          {
            cblas_sswap_NEWLAPACK();
          }
        }

        v19 = v13 + 1;
        cblas_sscal_NEWLAPACK();
        if (a3 - v13 >= 2 && ~v13 + a4 >= 1)
        {
          cblas_sger_NEWLAPACK();
        }
      }

      else
      {
        *(a6 + 4 * v13 * a7 + 4 * v13) = 968164595;
        v19 = v13 + 1;
        if (v13 + 1 < a3)
        {
          bzero((a6 + 4 + v35 * v13), 4 * (v34 - v13) + 4);
        }
      }

      v13 = v19;
    }

    while (v19 != a4);
  }

  if (a1 > a3)
  {
    cblas_strsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_strsm_NEWLAPACK();
    cblas_sgemm_NEWLAPACK();
  }

  return a4;
}

void sub_2366F0E74(uint64_t a1, uint64_t a2, int64x2_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
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

  v67 = v4;
  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7 + 384;
  }

  v66 = v9;
  v10 = v3[2];
  if (v8 < v10)
  {
    v10 = v7 + 384;
  }

  v69 = v10;
  v11 = (v10 - (v6 << 7));
  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  v70 = v7;
  v14 = v12 + 4 * (v7 * v13 + v7);
  v68 = v3;
  v15 = *(v3 + 9);
  v16 = (v15 + 4 * v7);
  if (v11 >= 1)
  {
    v17 = 0;
    v18 = *(v68 + 11);
    a3 = vdupq_n_s64(v11 - 1);
    v19 = (v15 + 4 * v70 + 8);
    v20 = xmmword_23681F910;
    v21 = xmmword_23681F920;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(a3, v21));
      if (vuzp1_s16(v23, *a3.i8).u8[0])
      {
        *(v19 - 2) = v17;
      }

      if (vuzp1_s16(v23, *&a3).i8[2])
      {
        *(v19 - 1) = v17 + 1;
      }

      if (vuzp1_s16(*&a3, vmovn_s64(vcgeq_u64(*&a3, *&v20))).i32[1])
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
    v73 = 4 * v13 + 4;
    v72 = v11 - 2;
    v71 = v14 + 4;
    v74 = v69 - v70 + 1;
    do
    {
      if (v11 - v24 < 1)
      {
        a3.i64[0] = 0;
      }

      else
      {
        v25 = v74 - v24;
        a3.i64[0] = 0;
        v26 = (v14 + 4 * v24 * v13 + 4 * v24);
        do
        {
          v27 = *v26++;
          v28 = fabsf(v27);
          if (*a3.i32 <= v28)
          {
            *a3.i32 = v28;
          }

          --v25;
        }

        while (v25 > 1);
      }

      v29 = (v14 + 4 * v24 * v13 + 4 * v24);
      v30 = v24;
      if (*(v18 + 24) <= *a3.i32)
      {
        while (fabsf(*v29) != *a3.i32)
        {
          ++v30;
          ++v29;
          if (v11 == v30)
          {
            LODWORD(v30) = v24;
            break;
          }
        }

        if (v24 != v30)
        {
          v32 = v16[v24];
          v33 = v30;
          v16[v24] = v16[v30];
          v16[v30] = v32;
          v34 = v14;
          v35 = v11;
          do
          {
            v36 = *(v34 + 4 * v24);
            *(v34 + 4 * v24) = *(v34 + 4 * v33);
            *(v34 + 4 * v33) = v36;
            v34 += 4 * v13;
            --v35;
          }

          while (v35);
        }

        v31 = v24 + 1;
        cblas_sscal_NEWLAPACK();
        if (v11 - v24 >= 2)
        {
          LODWORD(v63) = v13;
          cblas_sger_NEWLAPACK();
        }
      }

      else
      {
        *(v14 + 4 * v24 * v13 + 4 * v24) = 968164595;
        v31 = v24 + 1;
        if (v24 + 1 < v11)
        {
          bzero((v71 + v24 * v73), 4 * (v72 - v24) + 4);
        }
      }

      v24 = v31;
    }

    while (v31 != v11);
  }

  v37 = v68;
  v38 = (*(v68 + 8) + 4 * v70);
  MEMORY[0x28223BE20](a3);
  v40 = &v65 - ((v39 + 15) & 0x7FFFFFFF0);
  memcpy(v40, v38, 4 * v11);
  if (v11 >= 1)
  {
    v42 = v11;
    v43 = v16;
    do
    {
      v44 = *v43++;
      *v38++ = *&v40[4 * v44];
      --v42;
    }

    while (v42);
  }

  v45 = v67 - v69;
  v46 = (v66 - v69);
  if (v67 - v69 > 0)
  {
    LODWORD(v63) = v37[6];
    v62 = v14 + 4 * v11;
    LODWORD(v61) = v63;
    cblas_strsm_NEWLAPACK();
  }

  if (v46 >= 1)
  {
    v47 = *(v37 + 4) + 4 * *(v37 + 5) * v70;
    MEMORY[0x28223BE20](v41);
    v48 = 0;
    v49 = 4 * *(v37 + 5);
    v50 = v47;
    do
    {
      if (v11 >= 1)
      {
        v51 = v50;
        v52 = v60;
        v53 = v11;
        do
        {
          *v52++ = *v51;
          v51 = (v51 + v49);
          --v53;
        }

        while (v53);
        v54 = 0;
        v55 = v16;
        v56 = v11;
        do
        {
          v57 = *v55++;
          *(v50 + v54) = v60[v57];
          v54 += v49;
          --v56;
        }

        while (v56);
      }

      ++v48;
      ++v50;
    }

    while (v48 != v46);
    cblas_strsm_NEWLAPACK();
    if (v45 >= 1)
    {
      v58 = *(v37 + 5);
      v59 = *(v37 + 6) + 4 * (v69 - v37[2]);
      v64 = *(v37 + 7);
      v63 = v59;
      LODWORD(v62) = v58;
      v61 = v47;
      cblas_sgemm_NEWLAPACK();
    }
  }
}

uint64_t sub_2366F140C(uint64_t result, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*result + 24);
  v3 = *(v2 + 4);
  v4 = (*v2 - 1) / 384 + 1;
  v5 = a2 / v4;
  if (v3 >= 384 * v5 + 384)
  {
    v3 = 384 * v5 + 384;
  }

  v19 = (v3 - 384 * v5);
  if (v19 >= 1)
  {
    v6 = 0;
    v7 = 384 * (a2 % v4);
    v8 = *(v2 + 72) + 4 * v7;
    v9 = *(v2 + 24);
    v10 = *(v2 + 16) + 4 * v9 * 384 * v5 + 4 * v7;
    v11 = *(v2 + 8);
    if (v11 >= v7 + 384)
    {
      v11 = v7 + 384;
    }

    v12 = v11 - v7;
    v13 = 4 * (v11 - v7);
    v14 = v10;
    do
    {
      result = __memcpy_chk();
      v15 = v8;
      v16 = v14;
      v17 = v13;
      if (v12 >= 1)
      {
        do
        {
          v18 = *v15++;
          *v16++ = v20[v18];
          v17 -= 4;
        }

        while (v17);
      }

      ++v6;
      v14 += v9;
    }

    while (v6 != v19);
  }

  return result;
}

void sub_2366F157C(uint64_t a1, uint64_t a2)
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

  cblas_strsm_NEWLAPACK();
  v8 = v2[2];
  v9 = v8 - (v5 << 7);
  if (v7 < v9)
  {
    v9 = v7;
  }

  v10 = v7 - (v9 & ~(v9 >> 31));
  v11 = v8 - (v4 << 7);
  if (v6 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6;
  }

  v13 = v6 - (v12 & ~(v12 >> 31));
  if (v12 >= 1 && v10 >= 1)
  {
    cblas_sgemm_NEWLAPACK();
  }

  if (v10 >= 1 && v13 >= 1)
  {
    cblas_sgemm_NEWLAPACK();
  }
}

void sub_2366F1768(uint64_t a1, uint64_t a2, __n128 a3)
{
  v64 = *MEMORY[0x277D85DE8];
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

  v4 = *(v3 + 1);
  if (v4 - (v9 << 7) >= 384)
  {
    v13 = 384;
  }

  else
  {
    v13 = v4 - (v9 << 7);
  }

  v14 = *(v3 + 2);
  v15 = v14 - (v7 << 7);
  if (v15 >= 384)
  {
    v16 = 384;
  }

  else
  {
    v16 = v15;
  }

  v17 = v8;
  v18 = v3[2];
  v19 = v3[3];
  v20 = v18 + 4 * (v8 * v19 + v8);
  v63 = v3[9] + 4 * v8;
  v21 = v14 - (v9 << 7);
  if (v13 < v21)
  {
    v21 = v13;
  }

  v22 = v21 & ~(v21 >> 31);
  v23 = (v13 - v22);
  if (v12 >= v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = v12;
  }

  if (v21 >= 1)
  {
    v55 = v24;
    v57 = v15;
    v59 = v20;
    v60 = (v13 - v22);
    v61 = v16;
    v54[1] = v54;
    v56 = v10;
    v58 = v17;
    v25 = v18 + 4 * v19 * v10 + 4 * v17;
    MEMORY[0x28223BE20](a3);
    v26 = 0;
    v62 = v3;
    v27 = v3[3];
    v28 = v25;
    do
    {
      __memcpy_chk();
      v29 = v63;
      v30 = v28;
      v31 = v12;
      if (v11 >= 1)
      {
        do
        {
          v32 = *v29++;
          *v30++ = v49[v32];
          --v31;
        }

        while (v31);
      }

      ++v26;
      v28 += v27;
    }

    while (v26 != v22);
    v16 = v61;
    cblas_strsm_NEWLAPACK();
    v3 = v62;
    v14 = *(v62 + 2);
    v23 = v60;
    v17 = v58;
    LODWORD(v10) = v56;
    v24 = v55;
  }

  if (v23 >= 1)
  {
    v62 = v54;
    v33 = v24 & ~(v24 >> 31);
    v34 = v22 + v10 - v14;
    v35 = v3[4] + 4 * v3[5] * v17 + 4 * v34;
    v36 = MEMORY[0x28223BE20](a3);
    v37 = 0;
    v38 = 4 * v3[5];
    v39 = v35;
    do
    {
      if (v36 >= 1)
      {
        v40 = v39;
        v41 = v49;
        v42 = v16;
        do
        {
          *v41++ = *v40;
          v40 = (v40 + v38);
          --v42;
        }

        while (v42);
        v43 = 0;
        v44 = v63;
        v45 = v16;
        do
        {
          v46 = *v44++;
          *(v39 + v43) = v49[v46];
          v43 += v38;
          --v45;
        }

        while (v45);
      }

      ++v37;
      ++v39;
    }

    while (v37 != v23);
    cblas_strsm_NEWLAPACK();
    if (v12 - v33 >= 1)
    {
      v47 = v3[5];
      v48 = v3[6] + 4 * v3[7] * v34 + 4 * (v33 + v17 - *(v3 + 2));
      v53 = v3[7];
      v51 = v47;
      v50 = v35;
      v52 = v48;
      cblas_sgemm_NEWLAPACK();
    }
  }
}

uint64_t sub_2366F1B1C(uint64_t result, uint64_t a2, double a3, double a4)
{
  v4 = *(*result + 24);
  v5 = v4[1];
  v6 = (*v4 - 1) / 384 + 1;
  v7 = 3 * (a2 % v6);
  v8 = 3 * ((a2 % (v6 + v6 * ((v5 - 1) / 384))) / v6);
  if (*v4 - (v7 << 7) >= 384)
  {
    v9 = 384;
  }

  else
  {
    v9 = *v4 - (v7 << 7);
  }

  if (v5 - (v8 << 7) >= 384)
  {
    v10 = 384;
  }

  else
  {
    v10 = v5 - (v8 << 7);
  }

  v11 = v4[2];
  v12 = v11 - (v8 << 7);
  if (v10 < v12)
  {
    v12 = v10;
  }

  v13 = v10 - (v12 & ~(v12 >> 31));
  if (v9 >= v11 - (v7 << 7))
  {
    v14 = v11 - (v7 << 7);
  }

  else
  {
    v14 = v9;
  }

  if (v12 >= 1)
  {
    result = cblas_sgemm_NEWLAPACK();
  }

  v15 = v9 - (v14 & ~(v14 >> 31));
  if (v14 >= 1 && v13 >= 1)
  {
    result = cblas_sgemm_NEWLAPACK();
  }

  if (v15 >= 1 && v13 >= 1)
  {
    return cblas_sgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_2366F1D7C(int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a4 < 1)
  {
    return 0;
  }

  v17 = a6;
  v59 = 0;
  v21 = 0;
  v57 = a6 + 4 * ~a7 * a5;
  v55 = a10 - 4 * a5;
  v56 = a8 - 4 * a5 * a9;
  v22 = a11 - 4 * a5;
  v51 = 4 * a7;
  v52 = a7 + 1;
  v53 = 4 * a7 + 4;
  v54 = a6 + 4;
  v50 = a3 - 1;
  v48 = a1 - a3;
  v49 = a6 + 4 * a3;
  LODWORD(v23) = a4;
  while (1)
  {
    v24 = (v21 + 1);
    v25 = 0.0;
    if (v24 < a3)
    {
      v26 = (v54 + v53 * v21);
      v27 = v50 - v21;
      do
      {
        v28 = *v26++;
        v29 = fabsf(v28);
        if (v25 <= v29)
        {
          v25 = v29;
        }

        --v27;
      }

      while (v27);
    }

    v30 = v25;
    if (a3 < a1)
    {
      v31 = (v49 + v51 * v21);
      v32 = v48;
      v30 = v25;
      do
      {
        v33 = *v31++;
        v34 = fabsf(v33);
        if (v30 <= v34)
        {
          v30 = v34;
        }

        --v32;
      }

      while (v32);
    }

    v35 = v30;
    v36 = *(a13 + 24);
    if (v36 <= v35 || v36 <= fabsf(*(v17 + 4 * v52 * v21)))
    {
      v37 = *(a13 + 16) * v35;
      if (v37 <= fabsf(*(v17 + 4 * v21 * a7 + 4 * v21)))
      {
        goto LABEL_25;
      }

      if (v37 <= v25)
      {
        if (v24 >= a3)
        {
LABEL_23:
          v42 = -1;
        }

        else
        {
          v41 = (v54 + v53 * v21);
          v42 = v21 + 1;
          while (fabsf(*v41) < v25)
          {
            ++v42;
            ++v41;
            if (a3 == v42)
            {
              goto LABEL_23;
            }
          }
        }

        sub_2366F2198((v21 + a5), v42 + a5, a5 + a2, a5 + a3, v57, a7, v56, a9, v55);
LABEL_25:
        cblas_sscal_NEWLAPACK();
        if (~v21 + a1 >= 1 && (~v21 + a4) >= 1)
        {
          cblas_sger_NEWLAPACK();
        }

        ++v59;
        goto LABEL_29;
      }
    }

    v23 = v23 - 1;
    v38 = v23 + a5;
    v39 = v21 + a5;
    sub_2366F2198(v39, v23 + a5, a5 + a2, a5 + a3, v57, a7, v56, a9, v55);
    if (v21 == v23)
    {
      break;
    }

    v40 = *(v22 + 4 * v39);
    *(v22 + 4 * v39) = *(v22 + 4 * v38);
    *(v22 + 4 * v38) = v40;
    cblas_sswap_NEWLAPACK();
    v24 = v21;
LABEL_29:
    v21 = v24;
    v17 = a6;
    if (v24 >= v23)
    {
      goto LABEL_33;
    }
  }

  v17 = a6;
LABEL_33:
  if (a3 <= a4)
  {
    return v59;
  }

  v43 = v59;
  if (v59 > 0)
  {
    cblas_strsm_NEWLAPACK();
    sub_2366F2218(111, a1 - v59, a3 - a4, v59, v17 + 4 * v59, a7, v17 + 4 * a4 * a7, a7, v44, v45, v17 + 4 * a4 * a7 + 4 * v59, a7, a12, a14, a15, a16);
  }

  return v43;
}

uint64_t sub_2366F2198(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != a2)
  {
    v9 = *(a9 + 4 * result);
    *(a9 + 4 * result) = *(a9 + 4 * a2);
    *(a9 + 4 * a2) = v9;
    if (a4 >= 1)
    {
      v10 = a4;
      do
      {
        v11 = *(a5 + 4 * result);
        *(a5 + 4 * result) = *(a5 + 4 * a2);
        *(a5 + 4 * a2) = v11;
        a5 += 4 * a6;
        --v10;
      }

      while (v10);
    }

    result = (a3 - a4);
    if (a3 > a4)
    {
      return cblas_sswap_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_2366F2218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = a2 - 1;
  if (a2 < 1)
  {
    v16 = a2 + 254;
  }

  v17 = (v16 >> 8) + 1;
  v18 = a3 - 1;
  if (a3 < 1)
  {
    v18 = a3 + 254;
  }

  v19 = ((v18 >> 8) + 1) * v17;
  if (v19 == 1 || a15 == 0)
  {

    return cblas_sgemm_NEWLAPACK();
  }

  else
  {
    v33[0] = a2;
    v33[1] = a3;
    v33[2] = a4;
    v33[3] = 111;
    v34 = a1;
    v35 = a5;
    v36 = a7;
    v37 = a11;
    v38 = a6;
    v39 = a8;
    v40 = a12;
    __asm { FMOV            V1.2S, #-1.0 }

    v42 = 0;
    v43 = a13;
    v41 = -_D1;
    v44 = a14;
    v31 = 0u;
    v32 = 0u;
    sub_236792218(a15, a16, &v31);
    *(&v32 + 1) = v33;
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        sub_236792228(&v31, i, sub_2366F3878, 0, v26, v27, v28, v29, v31);
      }
    }

    result = sub_236792900(&v31);
    if (result)
    {
      return sub_2366FCEC8(a15);
    }
  }

  return result;
}

uint64_t sub_2366F2398(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v77 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  v12 = a6;
  v13 = a5;
  v15 = a2;
  v69 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v80 = a5 + 4 * ~a6 * a4;
  v74 = a9 - 4 * a4;
  v75 = a7 - 4 * a4 * a8;
  v70 = (a2 - a3);
  v20 = a5 + 4;
  v21 = 4 * a6;
  v78 = 4 * a6 + 4;
  v66 = 4 * (~a3 + a2);
  v64 = a3 - 2;
  v65 = a1 - 2;
  v84 = 16 * a6;
  LODWORD(v22) = a3;
  v67 = a10 - 4 * a4;
  v73 = a5 + 4 * a3;
  v71 = a5 + 4;
  do
  {
    while (1)
    {
      v23 = (v18 + 1);
      v24 = 0.0;
      if (v23 < a3)
      {
        v25 = (v20 + v78 * v18);
        v26 = v77 - v18;
        do
        {
          v27 = *v25++;
          v28 = fabsf(v27);
          if (v24 <= v28)
          {
            v24 = v28;
          }

          --v26;
        }

        while (v26);
      }

      v85 = v19;
      v29 = v24;
      if (a3 < a1)
      {
        v30 = (v73 + v21 * v18);
        v31 = a3;
        v29 = v24;
        do
        {
          v32 = *v30++;
          v33 = fabsf(v32);
          if (v29 <= v33)
          {
            v29 = v33;
          }

          ++v31;
        }

        while (v31 < a1);
      }

      v34 = v29;
      v35 = *(a12 + 24);
      v36 = v13 + 4 * v18 * v12;
      if (v35 <= v34 || v35 <= fabsf(*(v36 + 4 * v18)))
      {
        v45 = *(a12 + 16) * v34;
        if (v45 <= fabsf(*(v36 + 4 * v18)))
        {
          goto LABEL_34;
        }

        if (v45 <= v24)
        {
          if (v23 >= a3)
          {
LABEL_32:
            v50 = -1;
          }

          else
          {
            v49 = (v20 + v78 * v18);
            v50 = v18 + 1;
            while (fabsf(*v49) < v24)
            {
              ++v50;
              ++v49;
              if (a3 == v50)
              {
                goto LABEL_32;
              }
            }
          }

          sub_2366F2198((v18 + a4), v50 + a4, a4 + v15, a4 + a3, v80, v12, v75, a8, v74);
LABEL_34:
          cblas_sscal_NEWLAPACK();
          if (~v18 + a1 >= 1 && ~v18 + a3 >= 1)
          {
            cblas_sger_NEWLAPACK();
          }

          v19 = (v85 + 1);
          v17 = 1;
          v12 = a6;
          v13 = a5;
          goto LABEL_67;
        }

        v81 = v17;
        v22 = v22 - 1;
        v46 = v22 + a4;
        v47 = v18 + a4;
        v48 = v12;
        sub_2366F2198(v47, v22 + a4, a4 + v15, a4 + a3, v80, v12, v75, a8, v74);
        goto LABEL_63;
      }

      v37 = 0.0;
      if (v23 < a3)
      {
        v38 = (a5 + v21 + v21 * v18 + 4 * v18);
        v39 = v77 - v18;
        do
        {
          v40 = fabsf(*v38);
          if (v37 <= v40)
          {
            v37 = v40;
          }

          v38 = (v38 + v21);
          --v39;
        }

        while (v39);
      }

      v41 = v37;
      if (v35 > v37)
      {
        v42 = v80;
        if (v15 <= a3)
        {
          v43 = v69;
        }

        else
        {
          v43 = v69;
          if (v19 > v69)
          {
            v44 = v17;
            cblas_strsm_NEWLAPACK();
            v17 = v44;
            v42 = v80;
            v12 = a6;
            v43 = v85;
            if (a3 > v85)
            {
              cblas_sgemm_NEWLAPACK();
              v17 = v44;
              v42 = v80;
              v12 = a6;
              v43 = v85;
            }
          }
        }

        v69 = v43;
        v15 = a2;
        if (a2 <= a3)
        {
          v20 = v71;
          goto LABEL_47;
        }

        v51 = (a7 + 4 * v18 * a8);
        v52 = v70;
        v20 = v71;
        do
        {
          v53 = *v51++;
          v54 = fabsf(v53);
          if (v37 <= v54)
          {
            v37 = v54;
          }

          --v52;
        }

        while (v52);
        v41 = v37;
      }

      v42 = v80;
LABEL_47:
      v81 = v17;
      if (*(a12 + 24) > v41)
      {
        *(v36 + 4 * v18) = 2139095040;
        if (a1 > v23)
        {
          bzero((v20 + v78 * v18), 4 * (v65 - v18) + 4);
        }

        v13 = a5;
        if (v23 < a3)
        {
          v55 = 0;
          v56 = a5 + 4 * v18;
          v57 = (v64 - v18);
          v58 = vdupq_n_s64(v57);
          do
          {
            v59 = vdupq_n_s64(v55);
            v60 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v59, xmmword_23681F920)));
            if (vuzp1_s16(v60, *v58.i8).u8[0])
            {
              *(v56 + v21 + v21 * v18) = 0;
            }

            if (vuzp1_s16(v60, *&v58).i8[2])
            {
              *(v56 + v21 * (v18 + 2)) = 0;
            }

            if (vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, vorrq_s8(v59, xmmword_23681F910)))).i32[1])
            {
              *(v56 + v21 * (v18 + 3)) = 0;
              *(v56 + v21 * (v18 + 4)) = 0;
            }

            v55 += 4;
            v56 += v84;
          }

          while (((v57 + 4) & 0x1FFFFFFFCLL) != v55);
        }

        if (v70 >= 1)
        {
          bzero((a7 + 4 * v18 * a8), v66 + 4);
        }

        v19 = (v85 + 1);
        v12 = a6;
        goto LABEL_66;
      }

      v22 = v22 - 1;
      v46 = v22 + a4;
      v47 = v18 + a4;
      v48 = v12;
      sub_2366F2198(v47, v22 + a4, a4 + v15, a4 + a3, v42, v12, v75, a8, v74);
LABEL_63:
      if (v18 == v22)
      {
        break;
      }

      v61 = *(v67 + 4 * v47);
      *(v67 + 4 * v47) = *(v67 + 4 * v46);
      *(v67 + 4 * v46) = v61;
      cblas_sswap_NEWLAPACK();
      v23 = v18;
      v12 = v48;
      v13 = a5;
      v15 = a2;
      v19 = v85;
      v20 = v71;
LABEL_66:
      v17 = v81;
LABEL_67:
      v18 = v23;
      if (v23 >= v22)
      {
        goto LABEL_68;
      }
    }

    v12 = v48;
    v13 = a5;
    v15 = a2;
    v19 = v85;
    v20 = v71;
    LOBYTE(v17) = v81;
LABEL_68:
    if ((v17 & 1) == 0)
    {
      break;
    }

    v17 = 0;
    v18 = v19;
    LODWORD(v22) = a3;
  }

  while (a3 > v19);
  if (v15 > a3 && v19 > v69)
  {
    v62 = v19;
    cblas_strsm_NEWLAPACK();
    if (a3 > v62)
    {
      cblas_sgemm_NEWLAPACK();
    }

    return v62;
  }

  return v19;
}

uint64_t sub_2366F2B88(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a8;
  v21 = a5;
  v22 = a4;
  v24 = a1;
  v25 = a2;
  if (a3 >= 100)
  {
    v30 = 0;
    v31 = a5 + 1;
    do
    {
      if (a3 - v30 < 101)
      {
        break;
      }

      v32 = v24;
      v33 = sub_2366F1D7C(v24 - v30, v25 - v30, a3 - v30, 0x64u, v30, v22 + 4 * v31 * v30, a5, a6 + 4 * v30 * a7, a7, a10 + 4 * v30, a11 + 4 * v30, a12, a13, a16, a17, a18);
      v24 = v32;
      a2 = v25;
      v22 = a4;
      v30 += v33;
    }

    while (v33);
    if (a2 > a3 && v30 >= 1)
    {
      LODWORD(v38) = a7;
      v39 = v24;
      cblas_strsm_NEWLAPACK();
      LODWORD(v24) = v39;
      a2 = v25;
      v22 = a4;
      if (a3 > v30)
      {
        v38 = a6 + 4 * v30 * a7;
        cblas_sgemm_NEWLAPACK();
        LODWORD(v24) = v39;
        a2 = v25;
        v22 = a4;
      }
    }

    v34 = v22 + 4 * v31 * v30;
    v26 = v24;
    v21 = a5;
    v27 = sub_2366F2398(v24 - v30, a2 - v30, a3 - v30, v30, v34, a5, a6 + 4 * v30 * a7, a7, a10 + 4 * v30, a11 + 4 * v30, v38, a13) + v30;
    v18 = a8;
  }

  else
  {
    v26 = a1;
    v27 = sub_2366F2398(a1, a2, a3, 0, a4, a5, a6, a7, a10, a11, v38, a13);
  }

  v35 = (v26 - a3);
  if (v35 >= 1)
  {
    v36 = (v25 - a3);
    if (v36 >= 1)
    {
      sub_2366F2218(112, v35, v36, v27, a4 + 4 * a3, v21, a6, a7, v28, v29, v18, a9, a12, a16, a17, a18);
    }
  }

  return v27;
}

uint64_t sub_2366F2E38(int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = a2;
  v99 = a4;
  v10 = a4 + 1;
  v11 = *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4);
  v12 = *(a2 + 88);
  v112 = v10;
  v106 = *(v12 + 4 * v10);
  v105 = *(v12 + 4 * a4);
  v13 = (v106 - v105);
  v97 = *(a3[5] + 8 * a4);
  v14 = v97 + 1;
  v96 = *v97;
  v15 = 2 * v13;
  v116 = a1 - 3;
  if ((a1 - 3) >= 2)
  {
    v15 = 0;
  }

  v109 = v15;
  v16 = atomic_load((a3[6] + 4 * a4));
  *(a3[5] + 8 * a4) = (*(a2 + 24))(4 * (2 * (v16 + v13) + (v16 + v13) + (v16 + v11) * (v16 + v13)) + 8);
  v102 = a3;
  v17 = *(a3[5] + 8 * a4);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v98 = v16;
  *v17 = 4 * (2 * (v16 + v13) + (v16 + v13) + (v16 + v11) * (v16 + v13)) + 8;
  v101 = a1;
  if (a1 == 4)
  {
    v18 = a3[5];
    v19 = v99;
    v20 = atomic_load((a3[6] + 4 * v99));
    v17 = *(v18 + 8 * v19);
    v21 = v112;
  }

  else
  {
    v20 = 0;
    v21 = v112;
    v19 = v99;
  }

  v23 = *(v8 + 88);
  v24 = *(v23 + 4 * v21);
  v25 = *(v23 + 4 * v19);
  v26 = v24 - v25 + v20;
  v27 = v17 + 1;
  v95 = v20 + *(*(v8 + 120) + 8 * v21) - *(*(v8 + 120) + 8 * v19);
  if (v116 >= 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = 2 * v26;
  }

  v29 = 4 * v95;
  v100 = v8;
  v113 = v17;
  v115 = v17 + 1;
  v93 = v28;
  v94 = v24 - v25 + v20;
  if (v13 >= 1)
  {
    v30 = v14 + v11 * v13 + v109;
    v31 = v24 - v25 + v20;
    v32 = v17 + v26 * v95 + v28 + 2;
    v33 = (v106 - v105);
    do
    {
      v34 = *v30++;
      *v32++ = v34;
      --v33;
    }

    while (v33);
    v35 = 0;
    v36 = 4 * v13 + 8;
    v107 = 4 * (v20 + v24 + v105 + ~v25 - v106);
    v108 = v36;
    v37 = 4 * v11;
    v38 = v37 + 4;
    v39 = v29 + 4;
    v40 = v17 + 4 * v98 + 4 * v13 + 8;
    v41 = (v97 + v36);
    v42 = v17 + 1;
    v110 = v24 - v25 + v20;
    v104 = v37 + 4;
    v103 = v29 + 4;
    do
    {
      v43 = 0;
      do
      {
        *(v42 + v43) = *(v14 + v43);
        ++v43;
      }

      while (v35 + v43 < v13);
      if (v13 < v31)
      {
        bzero(v113 + v36 + v29 * v35, v107 + 4);
        v39 = v103;
        v38 = v104;
        v37 = 4 * v11;
        v36 = v108;
        v31 = v110;
        v29 = 4 * v95;
        v27 = v115;
      }

      v44 = v13;
      v45 = v41;
      for (i = v40; v44 < v11; ++v44)
      {
        v47 = *v45++;
        *i++ = v47;
      }

      ++v35;
      v14 = (v14 + v38);
      v42 = (v42 + v39);
      v40 += v29;
      v41 = (v41 + v37);
    }

    while (v35 != v13);
    v19 = v99;
    v8 = v100;
    v21 = v112;
  }

  bzero(v27 + 4 * v95 * v13, 4 * v98 * v95);
  v48 = *(v8 + 120);
  v49 = *(v48 + 8 * v19);
  v50 = *(v48 + 8 * v21);
  v51 = v50 <= v49;
  v52 = v50 - v49;
  v53 = a3;
  v54 = v101;
  if (!v51)
  {
    v55 = 0;
    v56 = *(v8 + 128) + 4 * v49;
    do
    {
      *(a5 + 4 * *(v56 + 4 * v55)) = v55;
      ++v55;
    }

    while (v52 != v55);
  }

  v57 = *(v8 + 96);
  v58 = *(v57 + 4 * v19);
  if (v58 < *(v57 + 4 * v21))
  {
    v111 = v113 + 1;
    v59 = v13;
    do
    {
      v60 = *(*(v8 + 104) + 4 * v58);
      if (v54 == 4)
      {
        v61 = atomic_load((v53[6] + 4 * v60));
        v48 = *(v8 + 120);
      }

      else
      {
        v61 = 0;
      }

      v62 = *(v48 + 8 * (v60 + 1));
      v63 = *(v8 + 88);
      v64 = *(v63 + 4 * (v60 + 1));
      v65 = v64 - *(v63 + 4 * v60) + v61;
      v66 = v65;
      if (v54 == 4)
      {
        v66 = *(v53[7] + 4 * v60);
      }

      if (v116 >= 2)
      {
        v67 = 0;
      }

      else
      {
        v67 = 2 * v65;
      }

      if (v65 != v66)
      {
        if (v66 < v65)
        {
          v68 = *(v53[5] + 8 * v60);
          v69 = (v61 + v62 - *(v48 + 8 * v60));
          v114 = *(v63 + 4 * v60);
          v70 = v64 - v114;
          v71 = v59 - v66;
          v72 = v66;
          v73 = 4 * v65;
          v74 = (v68 + v73 * v69 + 4 * v67 + 4 * v66 + 8);
          v75 = v59;
          v76 = v66;
          do
          {
            v77 = *v74++;
            *(v115 + v94 * v95 + v93 + v75) = v77;
            ++v76;
            ++v75;
          }

          while (v76 < v65);
          v78 = 4 * v69 + 4;
          v79 = v68 + v78 * v66 + 8;
          v80 = v111 + 4 * v59;
          v81 = v59;
          v82 = v66;
          do
          {
            v83 = 0;
            do
            {
              *(v80 + 4 * v95 * v81 + 4 * v83) = *(v79 + 4 * v83);
              ++v83;
            }

            while (v82 + v83 < v65);
            ++v82;
            v79 += v78;
            v80 += 4;
            ++v81;
          }

          while (v82 < v65);
          v84 = *(v48 + 8 * v60) + v70;
          v85 = v68 + 4 * v66 * v69 + 4 * v64 + v73 - 4 * v114 - 4 * v70 + 8;
          v8 = v100;
          v53 = v102;
          v54 = v101;
          do
          {
            if (v84 < v62)
            {
              v86 = *(v100 + 128);
              v87 = v85;
              v88 = v84;
              do
              {
                v89 = *(a5 + 4 * *(v86 + 4 * v88));
                v90 = *v87++;
                v91 = v90;
                if (v89 >= v13)
                {
                  v92 = v115 + v98 + v95 * (v71 + v72) + v89;
                }

                else
                {
                  v92 = v115 + v71 + v72 + v89 * v95;
                }

                *v92 = v91;
                ++v88;
              }

              while (v88 < v62);
            }

            ++v72;
            v85 += 4 * v69;
          }

          while (v72 < v65);
        }

        v59 = v65 + v59 - v66;
        v21 = v112;
      }

      ++v58;
    }

    while (v58 < *(*(v8 + 96) + 4 * v21));
  }

  if (v96)
  {
    (*(v8 + 32))(v97);
  }

  return 0;
}

uint64_t sub_2366F33E8(uint64_t result, int a2, int a3, uint64_t a4, float *a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a2;
  v13 = a9;
  v14 = 4 * a2;
  if (a9)
  {
    v14 = 0;
  }

  else
  {
    v13 = a11;
  }

  v58 = v13;
  v65 = a6;
  if (((a2 | result) & 0x80000000) != 0 || a6 < 1 || ((v15 = (a12 - v14) >> 2, v15 >= a2) ? (v16 = a6 < a2) : (v16 = 1), !v16 ? (v17 = v15 <= 0) : (v17 = 1), v17))
  {
    __break(1u);
  }

  else
  {
    v19 = a5;
    v20 = result;
    if (a2 >= result)
    {
      v21 = result;
    }

    else
    {
      v21 = a2;
    }

    if (v21)
    {
      v61 = a11 + v14;
      v57 = a3;
      v56 = a6;
      v55 = result;
      if (v21 < 33)
      {
        v22 = 0;
        v23 = 32;
      }

      else if (v21 < 0x41 || v15 >= 32 * a2)
      {
        v23 = 32;
        v22 = 64;
      }

      else
      {
        v22 = 64;
        v23 = v15 / a2;
      }

      v24 = 0;
      v64 = v21 - v22;
      if (v21 > v22 && v23 >= 2 && v23 < v21)
      {
        if (v64 < 1)
        {
          v24 = 0;
        }

        else
        {
          v25 = 0;
          v24 = 0;
          v26 = a4;
          v59 = 4 * v23;
          v60 = a4 - 4;
          v27 = v21;
          v28 = v58;
          do
          {
            if (v23 >= v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = v23;
            }

            v30 = v21;
            v31 = v21 + v25;
            if (v21 + v25 >= v23)
            {
              v32 = v23;
            }

            else
            {
              v32 = v21 + v25;
            }

            v33 = *(v60 + 4 * (v29 + v24));
            v34 = (v25 + v33);
            v35 = v34 & ~(v34 >> 31);
            if (v35 < v32)
            {
              if (v23 < v31)
              {
                v31 = v23;
              }

              bzero((v58 + 4 * (((v33 + v25) & ~((v33 + v25) >> 31)) + v24)), 4 * (v31 + ~v35) + 4);
            }

            if (v34 >= 1)
            {
              sub_2366F397C(v34, v32, v26, v24, &a5[v24 + v24 * v65], v65, v28, v61);
              if (v24 + v32 < a2)
              {
                slarft_NEWLAPACK();
                slarfb_NEWLAPACK();
              }
            }

            v24 += v23;
            v28 += v59;
            v26 += v59;
            v25 -= v23;
            v27 -= v23;
            v21 = v30;
          }

          while (v64 > v24);
        }
      }

      v12 = a2;
      v19 = a5;
      v20 = v55;
      if (v24 < v21)
      {
        sub_2366F397C((v55 - v24), a2 - v24, a4 + 4 * v24, v24, &a5[v24 + v24 * v65], v65, v58 + 4 * v24, v61);
      }

      a3 = v57;
      a6 = v56;
    }

    LODWORD(v36) = v20 - a3;
    if (v20 >= a3)
    {
      v37 = a3;
    }

    else
    {
      v37 = v20;
    }

    if (v37 >= 1)
    {
      if (*v19 == 0.0)
      {
        return 1;
      }

      v38 = 0;
      v39 = a6 + 1;
      while (v37 - 1 != v38)
      {
        v40 = v19[v39];
        v39 += a6 + 1;
        ++v38;
        if (v40 == 0.0)
        {
          return v38 < v37;
        }
      }
    }

    if (a7 && a3 >= 1)
    {
      v41 = 0;
      v42 = v19;
      v43 = v12;
      do
      {
        v44 = v43;
        v45 = a7;
        v46 = v42;
        if (v41 < v12)
        {
          do
          {
            v47 = *v46++;
            *v45++ = v47;
            --v44;
          }

          while (v44);
        }

        ++v41;
        v42 += a6 + 1;
        a7 += a8 + 1;
        --v43;
      }

      while (v41 != a3);
    }

    v48 = v12 - a3;
    if (v20 >= v12)
    {
      v36 = v48;
    }

    else
    {
      v36 = v36;
    }

    if (v36 >= 1)
    {
      v49 = 0;
      v51 = &v19[a3 + a3 * a6];
      do
      {
        if (v49 < v48)
        {
          v52 = 0;
          do
          {
            *(a10 + 4 * v52) = v51[v52];
            ++v52;
          }

          while (v49 + v52 < v48);
        }

        ++v49;
        v51 += a6 + 1;
        a10 += 4 * v12 - 4 * a3 + 4;
      }

      while (v49 != v36);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2366F397C(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= result)
  {
    v8 = result;
  }

  else
  {
    v8 = a2;
  }

  if (v8 >= 1)
  {
    v13 = 0;
    do
    {
      v19 = *(a3 + 4 * v13) - (v13 + a4);
      if (v19 <= 0)
      {
        *(a7 + 4 * v13) = 0;
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13 + 1;
        result = slarfg_NEWLAPACK();
        if (v13 + 1 < a2)
        {
          v15 = (a5 + 4 * (v13 + a6 * v13));
          v16 = *v15;
          *v15 = 1065353216;
          result = sub_2367E3D50(~v13 + a2, v19, v15, a6, a7 + 4 * v13, a5 + 4 * (a6 * v13 + v14), a6, a8);
          *(a5 + 4 * (v13 + v13 * a6)) = v16;
        }
      }

      v13 = v14;
    }

    while (v14 != v8);
  }

  return result;
}

SparseOpaqueSymbolicFactorization *__cdecl _SparseSymbolicFactorSymmetric(SparseOpaqueSymbolicFactorization *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrixStructure *Matrix, const SparseSymbolicFactorOptions *options)
{
  v39 = *MEMORY[0x277D85DE8];
  if (factorType == SparseFactorizationLDLT)
  {
    v6 = 4;
  }

  else
  {
    v6 = factorType;
  }

  *&retstr->columnCount = 0;
  retstr->factorization = 0;
  rowCount = Matrix->rowCount;
  columnCount = Matrix->columnCount;
  retstr->status = SparseInternalError;
  retstr->rowCount = rowCount;
  retstr->columnCount = columnCount;
  retstr->attributes = (*&Matrix->attributes & 1);
  v9 = *(&Matrix->blockSize + 2);
  LOBYTE(retstr->factorization) = v9;
  BYTE1(retstr->factorization) = v6;
  *&retstr->workspaceSize_Float = 0u;
  *&retstr->factorSize_Float = 0u;
  *&retstr[1].status = 0;
  v10 = 8;
  if (options->ignoreRowsAndColumns)
  {
    v10 = 9;
  }

  v11 = v10 + v9;
  v12 = !is_mul_ok(v11, columnCount);
  v13 = v11 * columnCount;
  v14 = __CFADD__(v13, 2);
  v15 = v13 + 2;
  v16 = v14;
  v17 = v16 << 63 >> 63 != v16;
  if (v12 || v17 || ((v19 = Matrix->columnStarts[columnCount], v14 = __CFADD__(v15, 2 * v19), v20 = v15 + 2 * v19, !v14) ? (v21 = 0) : (v21 = 1), v19 < 0 || (v21 & 1) != 0 || v20 >> 62 || (v24 = 2 * columnCount + 2, (columnCount & 0x80000000) != 0) || 2 * columnCount >= 0xFFFFFFFFFFFFFFFELL || (v25 = 2 * v19, v14 = __CFADD__(v24, v25), v26 = v24 + v25, v14) || ((v27 = 4 * v20, v14 = __CFADD__(v27, 8 * v26), v28 = v27 + 8 * v26, !v14) ? (v29 = 0) : (v29 = 1), v26 >> 61 || (v29 & 1) != 0 || (v30 = v28 + 88, v28 >= 0xFFFFFFFFFFFFFFA8))))
  {
    reportError = options->reportError;
    if (reportError)
    {
      memset(&__str[69], 0, 187);
      strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
      return (reportError)(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F71E4();
    }

    goto LABEL_21;
  }

  v31 = (options->malloc)(v30);
  if (!v31)
  {
    if (options->reportError)
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v30);
      return (options->reportError)(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

LABEL_21:
    _SparseTrap();
  }

  v32 = *&Matrix->rowIndices;
  *__str = *&Matrix->rowCount;
  *&__str[16] = v32;
  v33 = v31;
  v34 = sub_2366F3E90(v6, __str, options, v31);
  if (v34)
  {
    retstr->workspaceSize_Float = v34;
    retstr->status = SparseStatusOK;
    v37 = v34;
    (options->free)(v33);
    if (sub_2366F486C(v6, *(v37 + 52), columnCount, *(&Matrix->blockSize + 2), v37, &retstr->workspaceSize_Double, &retstr->factorSize_Float) || (result = sub_2366F4ABC(v6, retstr->workspaceSize_Float, &retstr->factorSize_Double, &retstr[1]), result))
    {
      v35 = options->reportError;
      if (!v35)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F7128();
        }

        _SparseTrap();
      }

      memset(&__str[73], 0, 183);
      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
      (v35)(__str);
      _SparseDestroyOpaqueSymbolic(retstr);
    }
  }

  else
  {
    free = options->free;

    return (free)(v33);
  }

  return result;
}

uint64_t sub_2366F3E90(unsigned int a1, unsigned int *a2, __int128 *a3, char *a4)
{
  v152 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = *(a2 + 28);
  v10 = v8 * v9;
  v129 = v8 * v9;
  v11 = v129 + 224;
  if (!*(a3 + 2))
  {
    v11 = 224;
  }

  v12 = v11 + 4 * (v9 + 2) * v8;
  v13 = (*(a3 + 3))(v12);
  if (!v13)
  {
    if (!*(a3 + 5))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

LABEL_76:
      _SparseTrap();
    }

LABEL_14:
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    *__str = 0u;
    v137 = 0u;
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v12);
    (*(a3 + 5))(__str);
    return 0;
  }

  v14 = v13;
  v128 = a1;
  v15 = v13 + v12;
  v16 = ((v13 + 191) & 0xFFFFFFFFFFFFFFF8);
  if (v15 < v16)
  {
    goto LABEL_134;
  }

  v17 = v8;
  v18 = a3[1];
  v19 = a3[2];
  v133 = *a3;
  v134 = v18;
  v135 = v19;
  v20 = 1;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    v20 = sub_2366FCCD0(0);
    v17 = v8;
  }

  v21 = v134;
  *v14 = v133;
  *(v14 + 16) = v21;
  *(v14 + 32) = v135;
  *(v14 + 48) = 1;
  *(v14 + 52) = v20;
  *(v14 + 56) = v8;
  *(v14 + 60) = v10;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0u;
  v22 = &v16[4 * v17 + 7] & 0xFFFFFFFFFFFFFFF8;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 164) = 0u;
  if (v15 < v22 || (*(v14 + 72) = v16, v23 = (v22 + 4 * v10 + 7) & 0xFFFFFFFFFFFFFFF8, v15 < v23) || (v24 = 4 * v17, *(v14 + 80) = v22, v25 = ((v23 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8), v15 < v25))
  {
LABEL_134:
    __break(1u);
  }

  *(v14 + 112) = v23;
  v26 = *(a3 + 2);
  if (v26)
  {
    if (v15 < ((v25 + v10 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_134;
    }

    *(v14 + 136) = v25;
    v27 = 9;
  }

  else
  {
    v25 = 0;
    v27 = 8;
  }

  v28 = 0;
  v29 = *(a2 + 1);
  v30 = v27 + *(a2 + 28);
  v31 = !is_mul_ok(v30, v17);
  v32 = v30 * v17;
  v33 = __CFADD__(v32, 2);
  v34 = v32 + 2;
  v35 = v33;
  v36 = v35 << 63 >> 63 != v35;
  if (!v31 && !v36)
  {
    v28 = 0;
    v37 = *(v29 + 8 * v17);
    v33 = __CFADD__(v34, 2 * v37);
    v38 = v34 + 2 * v37;
    v39 = v33;
    if ((v37 & 0x8000000000000000) == 0 && !v39)
    {
      v28 = v38 >> 62;
      if (v38 >> 62)
      {
        goto LABEL_27;
      }

      v97 = 2 * v17 + 2;
      if ((v8 & 0x80000000) != 0 || 2 * v17 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_28;
      }

      v33 = __CFADD__(v97, 2 * v37);
      v98 = v97 + 2 * v37;
      if (v33)
      {
LABEL_27:
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v99 = 4 * v38;
        v33 = __CFADD__(v99, 8 * v98);
        v100 = v99 + 8 * v98;
        v101 = v33;
        if (!(v98 >> 61) && (v101 & 1) == 0)
        {
          v28 = v100 + 88;
        }
      }
    }
  }

LABEL_28:
  v40 = &a4[v28];
  v41 = (v9 + 3) * v8;
  if (v41 <= 6 * v8 + 12)
  {
    v42 = 24 * v8 + 48;
  }

  else
  {
    v42 = 4 * v41;
  }

  v43 = (&a4[v42 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v40 < v43)
  {
    goto LABEL_134;
  }

  v44 = (&v43[v24 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v40 < v44)
  {
    goto LABEL_134;
  }

  v45 = ((v44 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v40 < v45)
  {
    goto LABEL_134;
  }

  v125 = v23;
  v46 = *(v29 + 8 * a2[1]);
  v47 = &v45[8 * v17 + 16 + 8 * v46];
  if (v47 > v40)
  {
    goto LABEL_134;
  }

  v124 = v10;
  v48 = v47 + 16 * v46;
  if (v48 > v40)
  {
    goto LABEL_134;
  }

  v49 = ((v48 + 8 * v17) & 0xFFFFFFFFFFFFFFF8);
  if (v40 < v49)
  {
    goto LABEL_134;
  }

  v126 = v47 + 16 * v46;
  v127 = &v45[8 * v17 + 16 + 8 * v46];
  if (v26)
  {
    if (v40 < (&v49[v24 + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_134;
    }

    bzero(v25, v129);
    v47 = v127;
    if (v8 >= 1)
    {
      v50 = *(a2 + 28);
      v51 = (v8 + 3) & 0xFFFFFFFC;
      v52 = vdupq_n_s64(v8 - 1);
      v53 = xmmword_23681F910;
      v54 = xmmword_23681F920;
      v55 = v49 + 8;
      v56 = vdupq_n_s64(4uLL);
      do
      {
        v57 = vmovn_s64(vcgeq_u64(v52, v54));
        if (vuzp1_s16(v57, *v52.i8).u8[0])
        {
          *(v55 - 2) = v50;
        }

        if (vuzp1_s16(v57, *&v52).i8[2])
        {
          *(v55 - 1) = v50;
        }

        if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, *&v53))).i32[1])
        {
          *v55 = v50;
          v55[1] = v50;
        }

        v53 = vaddq_s64(v53, v56);
        v54 = vaddq_s64(v54, v56);
        v55 += 4;
        v51 -= 4;
      }

      while (v51);
    }

    v58 = *(a3 + 2);
    v59 = *v58;
    v48 = v126;
    if ((*v58 & 0x80000000) == 0)
    {
      v60 = *(a2 + 28);
      v61 = *(v14 + 136);
      v62 = (v58 + 1);
      do
      {
        --*&v49[4 * (v59 / v60)];
        *(v61 + *(v62 - 1)) = 1;
        v63 = *v62++;
        v59 = v63;
      }

      while ((v63 & 0x80000000) == 0);
    }
  }

  else
  {
    v49 = 0;
  }

  v131 = 0u;
  v132 = 0u;
  v64 = *(a2 + 1);
  if ((a2[6] & 2) != 0)
  {
    *__str = *a2;
    v137 = v64;
    sub_2367861D0(__str, v49, v45, v47, v48, &v131);
  }

  else
  {
    v130[0] = *a2;
    v130[1] = v64;
    sub_236785FB0(v130, v49, v45, v47, v48, __str);
    v131 = *__str;
    v132 = v137;
  }

  *__str = v131;
  v137 = v132;
  if (sub_2367E3E64(v128, __str, v49, v16, v43, a3))
  {
    free(v14);
    return 0;
  }

  *__str = v131;
  v137 = v132;
  sub_236768978(__str, 0, v49, v16, v43, v125, a4, 0);
  sub_236750DDC(v8, v125, v16, v43, a4);
  *__str = v131;
  v137 = v132;
  sub_2366EE0E8(__str, 0, v49, v16, v43, v125, v44, a4, 0);
  v65 = sub_236767CA0(v8, *(a2 + 28), v49, v16, v43, *(v14 + 112), v44, a4, a3, &a4[4 * v8 + 4]);
  *(v14 + 64) = v65;
  *(v14 + 160) = 0;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  if (v65 < 1)
  {
    v70 = 0;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    do
    {
      v71 = *(v44 + 4 * v67);
      v72 = &a4[4 * v67];
      if (v49)
      {
        v73 = *v72;
        v74 = *(v72 + 1);
        if (v73 >= v74)
        {
          v75 = 0;
        }

        else
        {
          v75 = 0;
          v76 = &v43[v73];
          v77 = v74 - v73;
          do
          {
            v78 = *v76++;
            v75 += *&v49[4 * v78];
            --v77;
          }

          while (v77);
        }
      }

      else
      {
        v71 = *(a2 + 28) * v71;
        v75 = (*(v72 + 1) - *v72) * *(a2 + 28);
      }

      if (v75 > v69)
      {
        *(v14 + 176) = v75;
        v69 = v75;
      }

      if (v71 > 192 || v75 >= 97)
      {
        v66 += ((v75 - 1) / 96 + 1) * ((v71 - 1) / 96) + (v75 - 1) / 96 + 1;
        *(v14 + 168) = v66;
      }

      v68 += v71 * v75;
      v70 += v71;
      ++v67;
    }

    while (v67 != v65);
    *(v14 + 160) = v68;
  }

  v12 = 4 * (v70 + 3 * v65 + 3) + 16 * v65 + 16 * *(*(a2 + 1) + 8 * v8) + 72;
  v80 = (*(a3 + 3))(v12);
  if (!v80)
  {
    free(v14);
    if (!*(a3 + 5))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      goto LABEL_76;
    }

    goto LABEL_14;
  }

  v81 = v80 + v12;
  v82 = *(v14 + 64);
  v83 = v82 + 1;
  v84 = (v80 + 4 * (v82 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v80 + v12 < v84)
  {
    goto LABEL_134;
  }

  *(v14 + 88) = v80;
  v85 = (v84 + 4 * v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v81 < v85)
  {
    goto LABEL_134;
  }

  *(v14 + 96) = v84;
  v86 = (v85 + 4 * v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v81 < v86)
  {
    goto LABEL_134;
  }

  *(v14 + 104) = v85;
  v87 = v86 + 8 * v83;
  if (v87 > v81)
  {
    goto LABEL_134;
  }

  *(v14 + 120) = v86;
  v88 = (v87 + 4 * v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v81 < v88)
  {
    goto LABEL_134;
  }

  *(v14 + 128) = v87;
  v89 = v88 + 8 * v83;
  if (v89 > v81)
  {
    goto LABEL_134;
  }

  *(v14 + 144) = v88;
  if (v89 + 16 * *(*(a2 + 1) + 8 * v8) > v81)
  {
    goto LABEL_134;
  }

  *(v14 + 152) = v89;
  if (v49)
  {
    if (v82 < 1)
    {
      v91 = 0;
    }

    else
    {
      v90 = 0;
      v91 = 0;
      do
      {
        *(v80 + 4 * v90) = v91;
        v92 = *&a4[4 * v90++];
        v93 = *&a4[4 * v90];
        if (v92 < v93)
        {
          v94 = &v43[v92];
          v95 = v93 - v92;
          do
          {
            v96 = *v94++;
            v91 += *&v49[4 * v96];
            --v95;
          }

          while (v95);
        }

        v82 = *(v14 + 64);
      }

      while (v90 < v82);
    }

    *(v80 + 4 * v82) = v91;
    v102 = v124;
  }

  else
  {
    v102 = v124;
    if ((v82 & 0x80000000) == 0)
    {
      v103 = 0;
      v104 = *(a2 + 28);
      do
      {
        *(v80 + 4 * v103) = *&a4[4 * v103] * v104;
      }

      while (v103++ < *(v14 + 64));
    }
  }

  if (*(a3 + 2))
  {
    bzero(*(v14 + 80), 4 * v129);
    v106 = *(a3 + 2);
    v107 = *v106;
    if ((v107 & 0x80000000) == 0)
    {
      v108 = *(v14 + 80);
      v109 = v102 - 1;
      v110 = v106 + 1;
      do
      {
        *(v108 + 4 * v107) = v109;
        v111 = *v110++;
        v107 = v111;
        --v109;
      }

      while ((v111 & 0x80000000) == 0);
    }

    if (v8 >= 1)
    {
      v112 = 0;
      v113 = 0;
      v114 = *(a2 + 28);
      do
      {
        if (v114)
        {
          v115 = 0;
          v116 = *(v14 + 80);
          do
          {
            v117 = v115 + v43[v112] * v114;
            if (!*(v116 + 4 * v117))
            {
              *(v116 + 4 * v117) = v113++;
            }

            ++v115;
          }

          while (v114 != v115);
        }

        ++v112;
      }

      while (v112 != v8);
    }
  }

  else if (v8 >= 1)
  {
    v118 = 0;
    v119 = 0;
    v120 = *(a2 + 28);
    do
    {
      if (v120)
      {
        v121 = 0;
        v122 = *(v14 + 72);
        v123 = *(v14 + 80) + v118;
        do
        {
          *(v123 + 4 * v121) = v121 + *(v122 + 4 * v119) * v120;
          ++v121;
        }

        while (v120 != v121);
      }

      ++v119;
      v118 += 4 * v120;
    }

    while (v119 != v8);
  }

  sub_236812888(*(v14 + 64), *(v14 + 112), *(v14 + 96), *(v14 + 104));
  sub_23679A71C(&v131, v14, a4, *(a3 + 2), v43, &a4[4 * *(v14 + 64) + 4]);
  sub_23678A440(&v131, v14, v127, v126, a4);
  return v14;
}

BOOL sub_2366F486C(int a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, void *a6, void *a7)
{
  v7 = 0x100 / a4 * a4;
  if (v7 <= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  if (!is_mul_ok(a3, a4))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_45;
  }

  v9 = 0;
  v14 = a3 * a4;
  v15 = v14 + 2 * v8;
  v13 = 1;
  if (__CFADD__(v14, 2 * v8))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v15 >> 62)
    {
      goto LABEL_45;
    }

    v9 = 4 * v15 + 72;
    if (4 * v15 >= 0xFFFFFFFFFFFFFFB8)
    {
      goto LABEL_9;
    }

    v10 = 0;
    v16 = *(a5 + 64);
    if (v16 >= 0)
    {
      v17 = *(a5 + 64);
    }

    else
    {
      v17 = -v16;
    }

    v18 = 41 * v17;
    if (v16 < 0)
    {
      v18 = -v18;
    }

    v19 = __CFADD__(v18, 32);
    v20 = v18 + 32;
    v21 = v19;
    if (v16 < 0 || (v21 & 1) != 0)
    {
      goto LABEL_44;
    }

    v19 = __CFADD__(v20, 19200);
    v22 = v20 + 19200;
    if (v19)
    {
LABEL_9:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_45;
    }

    v10 = 0;
    v23 = *(a5 + 168);
    v24 = v23 < 0;
    v25 = v23 < 0;
    if (v23 < 0)
    {
      v23 = -v23;
    }

    v26 = (v23 * 0x30uLL) >> 64;
    v27 = 48 * v23;
    v28 = v24 ? -v27 : v27;
    v29 = v26 != 0;
    v30 = v27 && v25;
    v19 = __CFADD__(v22, v28);
    v31 = v22 + v28;
    v32 = v19;
    v13 = 1;
    if (v29 || v30 || v32)
    {
LABEL_44:
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v10 = 0;
      v12 = v31 + 4 * v14;
      v33 = __CFADD__(v31, 4 * v14);
      if (v14 >> 62 || v33)
      {
        v11 = 0;
      }

      else
      {
        v11 = a4 * a4 * a3;
        v13 = !is_mul_ok(a4 * a4, a3);
        v10 = v8 * v8;
        if (!is_mul_ok(a4 * a4, a3))
        {
          v10 = 0;
        }
      }
    }
  }

LABEL_45:
  if ((a1 - 3) >= 2)
  {
    if (a1 == 2)
    {
      if (v13)
      {
        return 1;
      }

      LODWORD(v40) = *(a5 + 176);
      if (v40 <= 4160)
      {
        v40 = 4160;
      }

      else
      {
        v40 = v40;
      }

      v37 = v10 + v40;
    }

    else
    {
      if (v13)
      {
        return 1;
      }

      v19 = __CFADD__(v11, 2 * v10);
      v37 = v11 + 2 * v10;
      if (v19)
      {
        return 1;
      }
    }

LABEL_68:
    v41 = !is_mul_ok(v9, a2);
    v42 = v9 * a2;
    v19 = __CFADD__(v12, v42);
    v43 = v12 + v42;
    v44 = v19;
    result = 1;
    if (!v41 && (v44 & 1) == 0)
    {
      v45 = !is_mul_ok(v37, a2);
      v46 = v37 * a2;
      v19 = __CFADD__(v11, v46);
      v47 = v11 + v46;
      v48 = v19;
      if (!v45 && !v48)
      {
        v49 = __CFADD__(v43, 4 * v47);
        *a6 = v43 + 4 * v47;
        if (!(v47 >> 62) && !v49)
        {
          *a7 = v43 + 8 * v47;
          return __CFADD__(v43, 8 * v47) || v47 >> 61 != 0;
        }
      }
    }

    return result;
  }

  if (v13)
  {
    return 1;
  }

  v34 = 2 * a3;
  if (2 * a3 <= 0x1040)
  {
    v34 = 4160;
  }

  v19 = __CFADD__(v10, v34);
  v35 = v10 + v34;
  v36 = v19;
  v19 = __CFADD__(v11, v35);
  v37 = v11 + v35;
  v38 = v19;
  result = 1;
  if ((v36 & 1) == 0 && (v38 & 1) == 0)
  {
    goto LABEL_68;
  }

  return result;
}

BOOL sub_2366F4ABC(int a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a2 + 60);
  v4 = *(a2 + 64);
  v6 = 8 * v4;
  v7 = *(a2 + 160);
  v8 = v5 < 0;
  v9 = 16 * v4 + 4 * v5;
  if (__CFADD__(16 * v4, 4 * v5))
  {
    v8 = 1;
  }

  if (v4 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v9 = 8 * v4;
    v10 = 1;
  }

  if (a1 == 4)
  {
    if ((v10 & 1) == 0)
    {
      v11 = __CFADD__(v7, 2 * v5);
      v7 += 2 * v5;
      v14 = v11;
      v11 = __CFADD__(v9, v6);
      v9 += v6;
      v12 = v11;
      result = 1;
      if ((v5 & 0x80000000) != 0 || (v14 & 1) != 0 || (v4 & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_25;
    }

    return 1;
  }

  if (a1 != 3)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

    return 1;
  }

  if (v10)
  {
    return 1;
  }

  v11 = __CFADD__(v7, 2 * v5);
  v7 += 2 * v5;
  v12 = v11;
  result = 1;
  if ((v5 & 0x80000000) != 0)
  {
    return result;
  }

LABEL_25:
  if (v12)
  {
    return result;
  }

LABEL_28:
  v11 = __CFADD__(v5, v7);
  v15 = v5 + v7;
  if (v11)
  {
    return 1;
  }

  v16 = v4 + 5;
  if (v4 < -5)
  {
    v16 = -v16;
  }

  v17 = 8 * v16;
  if (v4 < -5)
  {
    v17 = -8 * v16;
  }

  v11 = __CFADD__(v9, v17);
  v18 = v9 + v17;
  v19 = v11;
  result = 1;
  if (v4 >= -5 && !(v16 >> 61) && (v19 & 1) == 0)
  {
    v20 = v18 + 96;
    if (v18 < 0xFFFFFFFFFFFFFFA0)
    {
      v21 = __CFADD__(v20, 4 * v15);
      *a3 = v20 + 4 * v15;
      if (!(v15 >> 62) && !v21)
      {
        *a4 = v20 + 8 * v15;
        return __CFADD__(v20, 8 * v15) || v15 >> 61 != 0;
      }
    }
  }

  return result;
}

SparseOpaqueFactorization_Double *__cdecl _SparseNumericFactorSymmetric_Double(SparseOpaqueFactorization_Double *__return_ptr retstr, SparseOpaqueSymbolicFactorization *symbolicFactor, const SparseMatrix_Double *Matrix, const SparseNumericFactorOptions *options, void *factorStorage, void *workspace)
{
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  *&retstr->userFactorStorage = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->status = 0u;
  v10 = *&symbolicFactor->workspaceSize_Double;
  *&retstr->symbolicFactorization.factorSize_Double = *&symbolicFactor->factorSize_Double;
  *&retstr->symbolicFactorization.workspaceSize_Double = v10;
  v11 = *&symbolicFactor->status;
  *&retstr->symbolicFactorization.factorization = *&symbolicFactor->factorization;
  v12 = BYTE1(symbolicFactor->factorization);
  workspaceSize_Float = symbolicFactor->workspaceSize_Float;
  retstr->status = SparseInternalError;
  *&retstr->symbolicFactorization.status = v11;
  LOBYTE(retstr->numericFactorization) = 1;
  retstr->solveWorkspaceRequiredStatic = 0;
  retstr->solveWorkspaceRequiredPerRHS = 0;
  *&retstr[1].status = 8 * Matrix->structure.columnCount * *(&Matrix->structure.blockSize + 2);
  atomic_fetch_add((workspaceSize_Float + 48), 1u);
  retstr->solveWorkspaceRequiredStatic = sub_2366F4C94(v12, workspaceSize_Float, *&symbolicFactor[1].status, options, factorStorage);

  _SparseRefactorSymmetric_Double(Matrix, retstr, options, workspace);
  return result;
}

uint64_t sub_2366F4C94(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    a5 = (*(a2 + 24))(a3);
    if (!a5)
    {
      if (*(a2 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorSymmetric.", a3);
        v10 = *(a2 + 40);
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F726C();
      }

LABEL_36:
      _SparseTrap();
    }
  }

  v9 = *(a2 + 60);
  if (*(a4 + 4) <= 1u)
  {
    if (*(a4 + 4))
    {
      v11 = *(a4 + 8) == 0;
    }

    else
    {
      v11 = a1 == 0;
    }

    if (v11)
    {
      v9 = 0;
    }
  }

  else if (*(a4 + 4) - 2 >= 2)
  {
    v10 = *(a2 + 40);
    if (v10)
    {
      memset(&__str[88], 0, 168);
      strcpy(__str, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
LABEL_31:
      v10(__str, a2, a3, a4, a5);
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7228();
    }

    goto LABEL_36;
  }

  v12 = a5 + a3;
  v13 = ((a5 + 103) & 0xFFFFFFFFFFFFFFF8);
  if (a5 + a3 < v13 || (v14 = &v13[*(a2 + 64)], v14 > v12))
  {
LABEL_38:
    __break(1u);
  }

  if (v9 * 8)
  {
    v15 = (&v14[v9] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v15 = &v13[*(a2 + 64)];
    v14 = 0;
  }

  v16 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v16;
  *(a5 + 32) = 1;
  *(a5 + 40) = v13;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = v14;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  v17 = *(a2 + 64);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = *(*(a2 + 88) + 4 * v18 + 4) - *(*(a2 + 88) + 4 * v18);
      v21 = (16 * v20) | 8;
      if ((a1 - 3) >= 2)
      {
        v21 = 8;
      }

      v15 = (v19 + v21 + ((8 * (*(*(a2 + 120) + 8 * v18 + 8) - *(*(a2 + 120) + 8 * v18))) | 4) * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v15)
      {
        goto LABEL_38;
      }

      v13[v18] = v19;
      v13 = *(a5 + 40);
      *v13[v18++] = 0;
      v19 = v15;
    }

    while (v17 != v18);
  }

  if (a1 == 4)
  {
    v22 = (v15 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v22)
    {
      goto LABEL_38;
    }

    *(a5 + 48) = v15;
    v15 = (v22 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }

    *(a5 + 56) = v22;
  }

  *(a5 + 72) = v15 - *v13;
  return a5;
}

void _SparseRefactorSymmetric_Double(const SparseMatrix_Double *Matrix, SparseOpaqueFactorization_Double *Factorization, const SparseNumericFactorOptions *nfoptions, void *workspace)
{
  v6 = Factorization;
  v106 = *MEMORY[0x277D85DE8];
  rowCount = Matrix->structure.rowCount;
  v8 = *(&Matrix->structure.blockSize + 2);
  workspaceSize_Float = Factorization->symbolicFactorization.workspaceSize_Float;
  solveWorkspaceRequiredStatic = Factorization->solveWorkspaceRequiredStatic;
  v11 = BYTE1(Factorization->symbolicFactorization.factorization);
  scalingMethod = nfoptions->scalingMethod;
  v87 = v11;
  if (scalingMethod <= 1)
  {
    if (nfoptions->scalingMethod)
    {
      scaling = nfoptions->scaling;
      if (scaling)
      {
        v25 = (rowCount * v8);
        if (v25 >= 1)
        {
          v26 = *(solveWorkspaceRequiredStatic + 64);
          do
          {
            v27 = *scaling++;
            *v26++ = v27;
            --v25;
          }

          while (v25);
        }
      }

LABEL_11:
      v19 = nfoptions->scaling;
      if (v19 && nfoptions->scalingMethod != SparseScalingUser)
      {
        v20 = *(solveWorkspaceRequiredStatic + 64);
        v21 = (rowCount * v8);
        if (v20)
        {
          if (v21 >= 1)
          {
            do
            {
              v22 = *v20++;
              *v19++ = v22;
              --v21;
            }

            while (v21);
          }
        }

        else if (v21 >= 1)
        {
          memset_pattern16(v19, &unk_23681FAF0, 8 * (rowCount * v8));
        }
      }

      v28 = *(&Matrix->structure.blockSize + 2);
      v29 = 0x100 / v28 * v28;
      if (v29 <= v28)
      {
        v30 = *(&Matrix->structure.blockSize + 2);
      }

      else
      {
        v30 = v29;
      }

      v31 = workspace + v6->symbolicFactorization.factorSize_Float;
      v32 = *(workspaceSize_Float + 60);
      v33 = (workspace + 4 * v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v31 >= v33)
      {
        if (v32 >= 1)
        {
          v34 = 0;
          v35 = *(workspaceSize_Float + 80);
          do
          {
            *(workspace + *(v35 + 4 * v34)) = v34;
            ++v34;
          }

          while (v34 < *(workspaceSize_Float + 60));
        }

        bzero(**(solveWorkspaceRequiredStatic + 40), *(solveWorkspaceRequiredStatic + 72));
        v36 = *(workspaceSize_Float + 64);
        if (v36 < 1)
        {
          v41 = 0;
        }

        else
        {
          v37 = 0;
          v38 = *(solveWorkspaceRequiredStatic + 40);
          do
          {
            v39 = *(v38 + 8 * v37);
            v40 = *v39;
            if (*v39)
            {
              bzero(v39, *v39);
              v38 = *(solveWorkspaceRequiredStatic + 40);
              v36 = *(workspaceSize_Float + 64);
              v39 = *(v38 + 8 * v37);
            }

            *v39 = v40;
            ++v37;
          }

          while (v37 < v36);
          v41 = v36 > 0;
          v11 = v87;
        }

        v42 = *(workspaceSize_Float + 60);
        v86 = v6;
        if (*(workspaceSize_Float + 52) <= 1)
        {
          v45 = ((v33 + 4 * v42 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (v31 >= v45)
          {
            v46 = v31;
            v47 = (&v45[v30 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
            if (v31 >= v47)
            {
              v48 = (v47 + 4 * v30 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v46 >= v48 && v48 + 8 * v30 * v30 <= v46)
              {
                if (v41)
                {
                  v49 = 0;
                  while (1)
                  {
                    v85 = sub_2366F6040(0, v49, v87, Matrix, workspaceSize_Float, solveWorkspaceRequiredStatic, v30, workspace, v33, v45, ((&v45[v30 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v47 + 4 * v30 + 7) & 0xFFFFFFFFFFFFFFF8, (v48 + 8 * v30 * v30), 0);
                    if (v85)
                    {
                      break;
                    }

                    v49 = (v49 + 1);
                    if (v49 >= *(workspaceSize_Float + 64))
                    {
                      goto LABEL_53;
                    }
                  }
                }

                else
                {
LABEL_53:
                  v85 = 0;
                }

                goto LABEL_77;
              }
            }
          }
        }

        else
        {
          v43 = (8 * v30 * v30 + 56) + 4 * (v42 + 2 * v30);
          if ((v11 - 3) >= 2)
          {
            if (v11 == 2)
            {
              v50 = *(workspaceSize_Float + 176);
              v51 = 8 * v50;
              v52 = v50 <= 4160;
              v53 = 33280;
              if (!v52)
              {
                v53 = v51;
              }

              v43 += v53;
            }
          }

          else
          {
            v44 = 16 * v42;
            if (*(workspaceSize_Float + 60) <= 2080)
            {
              v44 = 33280;
            }

            v43 += v44;
          }

          v54 = sub_2366FCCD0(0);
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v55 = (v33 + (v43 + 16) * v54 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v31 >= v55)
          {
            v56 = sub_2366FCCD0(0);
            _X2 = 0;
            LODWORD(v101) = v56;
            atomic_store(0, &v101 + 1);
            atomic_store(0, (&v101 | 0xC));
            atomic_store(0, &v102);
            v58 = v103;
            do
            {
              _X5 = *(&v103 + 1);
              __asm { CASPAL          X4, X5, X2, X3, [X26] }

              _ZF = _X4 == v58;
              v58 = _X4;
            }

            while (!_ZF);
            *&v104 = v43;
            *(&v104 + 1) = v33;
            *&v89[36] = 0;
            *v89 = v87;
            *&v89[8] = Matrix;
            *&v89[16] = workspaceSize_Float;
            *&v89[24] = solveWorkspaceRequiredStatic;
            *&v89[32] = v30;
            *&v89[40] = workspace;
            v65 = *(workspaceSize_Float + 64);
            v66 = v55 + 40 * v65;
            if (v66 <= v31)
            {
              *&v89[48] = v55;
              v67 = (v66 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v31 >= v67)
              {
                *&v89[56] = v66;
                v68 = v67 + 19200;
                if (v67 + 19200 <= v31)
                {
                  *&v89[64] = sub_2367921D4(100, (v67 + 15) & 0xFFFFFFFFFFFFFFF0);
                  *&v89[72] = v69;
                  if (v68 + 48 * *(workspaceSize_Float + 168) <= v31)
                  {
                    *&v89[80] = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
                    *&v90 = 0;
                    *&v105 = v89;
                    if (*(workspaceSize_Float + 64) >= 1)
                    {
                      _X22 = 0;
                      v71 = 0;
                      do
                      {
                        v72 = v71 + 1;
                        v73 = *&v89[48] + 40 * v71;
                        _ZF = *(*(workspaceSize_Float + 96) + 4 * (v71 + 1)) == *(*(workspaceSize_Float + 96) + 4 * v71);
                        atomic_store(*(*(workspaceSize_Float + 96) + 4 * (v71 + 1)) - *(*(workspaceSize_Float + 96) + 4 * v71), v73);
                        *(v73 + 8) = v71;
                        *(v73 + 16) = sub_2366F5DE8;
                        *(*&v89[56] + v71) = 0;
                        if (_ZF)
                        {
                          v74 = *&v89[48] + 40 * v71;
                          _X0 = 0;
                          _X1 = 0;
                          __asm { CASP            X0, X1, X0, X1, [X24] }

                          *(v74 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                          *(v74 + 32) = 0;
                          v78 = _X0 & 1;
                          _X2 = v78 | v74;
                          _X5 = 0;
                          __asm { CASPL           X4, X5, X2, X3, [X24] }

                          while (_X4 != _X0)
                          {
                            _X1 = 0;
                            __asm { CASP            X0, X1, X22, X23, [X10] }

                            *(v74 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                            *(v74 + 32) = 0;
                            v78 = _X0 & 1;
                            _X2 = v78 | v74;
                            _X5 = 0;
                            __asm { CASPL           X4, X5, X2, X3, [X10] }
                          }

                          if (v78)
                          {
                            __ulock_wake();
                          }
                        }

                        v71 = v72;
                      }

                      while (v72 < *(workspaceSize_Float + 64));
                    }

                    v85 = sub_2366FCD2C(&v101, 0);
LABEL_77:
                    v6 = v86;
                    goto LABEL_81;
                  }
                }
              }
            }
          }
        }
      }

      __break(1u);
    }

    if (!BYTE1(Factorization->symbolicFactorization.factorization))
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = *(solveWorkspaceRequiredStatic + 64);
    v18 = *&Matrix->structure.rowIndices;
    *v89 = *&Matrix->structure.rowCount;
    *&v89[16] = v18;
    *&v89[32] = Matrix->data;
    sub_236786410(v89, v17, workspace);
    goto LABEL_11;
  }

  if (scalingMethod == 2)
  {
    goto LABEL_10;
  }

  if (scalingMethod == 3)
  {
    v13 = sub_23670CFB0(rowCount, Matrix->structure.columnStarts[rowCount], v8);
    v14 = workspace;
    if (v13 + 4 * rowCount > v6->symbolicFactorization.factorSize_Float)
    {
      v14 = (*(workspaceSize_Float + 24))();
    }

    v15 = *(solveWorkspaceRequiredStatic + 64);
    v16 = *&Matrix->structure.rowIndices;
    *v89 = *&Matrix->structure.rowCount;
    *&v89[16] = v16;
    *&v89[32] = Matrix->data;
    sub_23670CFEC(v89, v14, v15, &v14[4 * rowCount], v13);
    if (v14 != workspace)
    {
      (*(workspaceSize_Float + 32))(v14);
    }

    goto LABEL_11;
  }

  v23 = *(workspaceSize_Float + 40);
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7228();
    }

    _SparseTrap();
  }

  v100 = 0;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  strcpy(v89, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
  v23(v89);
  v85 = -4;
LABEL_81:
  v6->status = v85;
}

SparseOpaqueFactorization_Double *__cdecl _SparseFactorSymmetric_Double(SparseOpaqueFactorization_Double *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrix_Double *Matrix, const SparseSymbolicFactorOptions *sfoptions, const SparseNumericFactorOptions *nfoptions)
{
  v48 = *MEMORY[0x277D85DE8];
  if (factorType == SparseFactorizationLDLT)
  {
    v7 = 4;
  }

  else
  {
    v7 = factorType;
  }

  rowCount = Matrix->structure.rowCount;
  columnCount = Matrix->structure.columnCount;
  v10 = Matrix->structure.columnStarts[rowCount];
  *&retstr->status = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  p_factorSize_Float = &retstr->symbolicFactorization.factorSize_Float;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->userFactorStorage = 0u;
  retstr->status = SparseInternalError;
  retstr->symbolicFactorization.status = SparseInternalError;
  retstr->symbolicFactorization.rowCount = rowCount;
  retstr->symbolicFactorization.columnCount = rowCount;
  retstr->symbolicFactorization.attributes = (*&Matrix->structure.attributes & 1);
  v12 = *(&Matrix->structure.blockSize + 2);
  LOBYTE(retstr->symbolicFactorization.factorization) = v12;
  BYTE1(retstr->symbolicFactorization.factorization) = v7;
  *(&retstr->symbolicFactorization.factorSize_Double + 1) = 0u;
  retstr->solveWorkspaceRequiredStatic = 0;
  retstr->solveWorkspaceRequiredPerRHS = 0;
  *&retstr[1].status = 8 * v12 * columnCount;
  v13 = 8;
  if (sfoptions->ignoreRowsAndColumns)
  {
    v13 = 9;
  }

  v14 = v13 + v12;
  v15 = !is_mul_ok(v14, rowCount);
  v16 = v14 * rowCount;
  v17 = __CFADD__(v16, 2);
  v18 = v16 + 2;
  v19 = v17;
  v20 = v19 << 63 >> 63 != v19;
  if (v15 || v20 || ((v17 = __CFADD__(v18, 2 * v10), v21 = v18 + 2 * v10, !v17) ? (v22 = 0) : (v22 = 1), v10 < 0 || (v22 & 1) != 0 || v21 >> 62 || (v25 = 2 * rowCount + 2, (rowCount & 0x80000000) != 0) || 2 * rowCount >= 0xFFFFFFFFFFFFFFFELL || (v26 = 2 * v10, v17 = __CFADD__(v25, v26), v27 = v25 + v26, v17) || ((v28 = 4 * v21 + 8 * v27, !__CFADD__(4 * v21, 8 * v27)) ? (v29 = 0) : (v29 = 1), v27 >> 61 || (v29 & 1) != 0 || (v30 = v28 + 88, v28 >= 0xFFFFFFFFFFFFFFA8))))
  {
    reportError = sfoptions->reportError;
    if (!reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F71E4();
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = (reportError)(__str);
    goto LABEL_19;
  }

  v33 = (sfoptions->malloc)(v30);
  if (!v33)
  {
    if (sfoptions->reportError)
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v30);
      return (sfoptions->reportError)(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

LABEL_44:
    _SparseTrap();
  }

  v34 = *&Matrix->structure.rowIndices;
  *__str = *&Matrix->structure.rowCount;
  *&__str[16] = v34;
  workspace = v33;
  v35 = sub_2366F3E90(v7, __str, sfoptions, v33);
  if (v35)
  {
    v44 = *(&Matrix->structure.blockSize + 2);
    v45 = v35;
    if (sub_2366F4ABC(v7, v35, &retstr->symbolicFactorization.factorSize_Double, &retstr->userFactorStorage))
    {
      v36 = sfoptions->reportError;
      if (!v36)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F72E4();
        }

        _SparseTrap();
      }

      memset(&__str[40], 0, 216);
      strcpy(__str, "Computation of factor size overflowed.\n");
      (v36)(__str);
      (sfoptions->free)(workspace);
      return sub_23680EEA8(v45, sfoptions);
    }

    if ((HIBYTE(sfoptions->control) & 0x40) != 0)
    {
      v37 = 1;
      v38 = v44;
    }

    else
    {
      v37 = sub_2366FCCD0(0);
      v38 = *(&Matrix->structure.blockSize + 2);
    }

    if (sub_2366F486C(v7, v37, rowCount, v38, v45, &retstr->symbolicFactorization.workspaceSize_Double, &retstr->symbolicFactorization.factorSize_Float))
    {
      v39 = sfoptions->reportError;
      if (!v39)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F7128();
        }

        _SparseTrap();
      }

      memset(&__str[73], 0, 183);
      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
      (v39)(__str);
      result = (sfoptions->free)(workspace);
LABEL_19:
      retstr->status = SparseParameterError;
      return result;
    }

    v40 = *p_factorSize_Float;
    if (*p_factorSize_Float <= v30)
    {
      v41 = v45;
    }

    else
    {
      (sfoptions->free)(workspace);
      workspace = (sfoptions->malloc)(v40);
      v41 = v45;
      if (!workspace)
      {
        if (sfoptions->reportError)
        {
          memset(__str, 0, 256);
          snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v40);
          return (sfoptions->reportError)(__str);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F716C();
        }

        goto LABEL_44;
      }
    }

    retstr->symbolicFactorization.status = SparseStatusOK;
    retstr->symbolicFactorization.workspaceSize_Float = v41;
    v42 = sub_2366F4C94(v7, v41, *&retstr->userFactorStorage, nfoptions, 0);
    if (v42)
    {
      retstr->solveWorkspaceRequiredStatic = v42;
      _SparseRefactorSymmetric_Double(Matrix, retstr, nfoptions, workspace);
    }
  }

  free = sfoptions->free;

  return (free)(workspace);
}

int SparseGetInertia(SparseOpaqueFactorization_Double *Factored, int *num_positive, int *num_zero, int *num_negative)
{
  v16 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &Factored->symbolicFactorization;
  if (Factored->symbolicFactorization.status || !Factored->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v15, &Factored->symbolicFactorization);
  v10 = *&v15[40];
  if (p_symbolicFactorization->status || !Factored->symbolicFactorization.workspaceSize_Float || Factored->status || (solveWorkspaceRequiredStatic = Factored->solveWorkspaceRequiredStatic) == 0)
  {
    if (*&v15[40])
    {
      memset(v15, 0, sizeof(v15));
      snprintf(v15, 0x100uLL, "%s does not hold a completed matrix factorization.\n", "Factored");
LABEL_9:
      v10(v15);
      return -1;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  if (BYTE1(Factored->symbolicFactorization.factorization) != 4)
  {
    if (*&v15[40])
    {
      memset(&v15[89], 0, 167);
      strcpy(v15, "SparseGetInertia is only supported for factorizations of type SparseFactorizationLDLTTPP");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7328();
    }

    goto LABEL_4;
  }

  result = 0;
  v12 = atomic_load(solveWorkspaceRequiredStatic + 20);
  *num_positive = v12;
  v13 = atomic_load(solveWorkspaceRequiredStatic + 21);
  *num_zero = v13;
  v14 = atomic_load(solveWorkspaceRequiredStatic + 22);
  *num_negative = v14;
  return result;
}