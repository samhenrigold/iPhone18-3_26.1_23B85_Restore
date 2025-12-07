void sub_103BA20(uint64_t a1)
{
  v52 = -1431655765 * ((*(a1 + 1176) - *(a1 + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v60 = _Q0;
    while (1)
    {
      v56 = v2;
      v6 = *(a1 + 1168) + 96 * v2;
      if (*(a1 + 3048) == 1)
      {
        sub_103FD28(a1, v6);
      }

      sub_1056F4C(*(a1 + 976) + 24, v6, &v62);
      if (v62)
      {
        v59 = *(v6 + 8);
        v7 = *a1;
        v8 = *(a1 + 2968);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10AFB6C(v7 + 9736, &v62, v6, v6 + 8, v8, 1);
        if (v66)
        {
          v10 = sub_F8634C(&v62, &v64, v9);
          v54 = v63 + v10;
          if (v63 + v10 != -1)
          {
            v53 = DWORD1(v63) + HIDWORD(v10);
            if (DWORD1(v63) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v56 + 1;
      if (v56 + 1 == v52)
      {
        return;
      }
    }

    sub_1056F4C(*(a1 + 976) + 24, v6, &v62);
    v12 = *(*(&v63 + 1) + 8);
    v11 = *(*(&v63 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v57 = v12;
      v13 = (**(a1 + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v57 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = *v13 + 96 * v15;
      if (*v16 != *v6)
      {
        goto LABEL_16;
      }

      v17 = *(v16 + 8);
      v18 = *a1;
      v19 = *(a1 + 2968);
      v62 = 0u;
      v63 = 0u;
      v64 = v60;
      v65 = 0x3FF0000000000000;
      v66 = 1;
      sub_10AFB6C(v18 + 9736, &v62, v16, v16 + 8, v19, 1);
      if ((v66 & 1) == 0)
      {
        goto LABEL_16;
      }

      LODWORD(v20) = v62;
      v21 = *&v64 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v64 + 1) * SDWORD1(v62);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      v25 = v63 + v21;
      if (v25 != -1 && DWORD1(v63) + v23 != 0x7FFFFFFF && v17 >= v59)
      {
        v28 = *a1;
        v29 = *(a1 + 2968);
        v30 = *(a1 + 2964);
        v31 = *v6;
        v32 = HIDWORD(*v6);
        v33 = (*v6 << 47) & 0x1000000000000;
        v34 = *v6 << 16;
        if (*(*a1 + 31330) == 1)
        {
          v35 = 0;
          v36 = v31 & 0xFFFFFFFFFFFF0000;
          v37 = (v33 ^ 0x1000000000000uLL) >> 48;
          if (!v37)
          {
            ++v36;
          }

          v38 = (0x2127599BF4325C37 * (v36 ^ (v31 >> 23))) ^ ((0x2127599BF4325C37 * (v36 ^ (v31 >> 23))) >> 47);
          while (2)
          {
            v40 = v38 & (v28[3924] - 1);
            v41 = *(v28[3926] + 8 * v40);
            if (__PAIR64__(*(*a1 + 31404), *(*a1 + 31400)) == __PAIR64__(WORD2(v41), v41) && *(*a1 + 31406) == BYTE6(v41))
            {
              goto LABEL_59;
            }

            if (v28[3922] && __PAIR64__(*(*a1 + 31372), *(*a1 + 31368)) == __PAIR64__(WORD2(v41), v41))
            {
              if (*(*a1 + 31374) == BYTE6(v41) || v32 != v41)
              {
                goto LABEL_47;
              }
            }

            else if (v32 != v41)
            {
LABEL_47:
              v38 = ++v35 + v40;
              continue;
            }

            break;
          }

          if (WORD2(v34) == WORD2(v41) && v37 == BYTE6(v41))
          {
            if (v40 == -1)
            {
              goto LABEL_59;
            }

            goto LABEL_16;
          }

          goto LABEL_47;
        }

LABEL_59:
        v58 = DWORD1(v63) + v23;
        sub_F8EC88((v28 + 1), (v34 & 0xFFFF00000000 | v32 | v33) ^ 0x1000000000000, v61);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10AFF14((v28 + 1217), &v62, v61, v17 - v59, v29, (a1 + 2960), v30);
        if (v66)
        {
          LODWORD(v43) = v62;
          v44 = *&v64 * v43;
          if (v44 >= 0.0)
          {
            v45 = v58;
            if (v44 < 4.50359963e15)
            {
              v46 = (v44 + v44) + 1;
LABEL_65:
              v44 = (v46 >> 1);
            }
          }

          else
          {
            v45 = v58;
            if (v44 > -4.50359963e15)
            {
              v46 = (v44 + v44) - 1 + (((v44 + v44) - 1) >> 63);
              goto LABEL_65;
            }
          }

          v47 = *(&v64 + 1) * SDWORD1(v62);
          if (v47 >= 0.0)
          {
            if (v47 < 4.50359963e15)
            {
              v48 = (v47 + v47) + 1;
LABEL_71:
              v47 = (v48 >> 1);
            }
          }

          else if (v47 > -4.50359963e15)
          {
            v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
            goto LABEL_71;
          }

          v49 = v63 + v44;
          v50 = DWORD1(v63) + v47;
          if (v49 != -1 && v50 != 0x7FFFFFFF)
          {
            LODWORD(v62) = v25 + v54 + v49;
            DWORD1(v62) = v45 + v53 + v50;
            sub_1034078(a1, v6, &v62, *v57, v56, v15, 1, 0);
          }
        }
      }

LABEL_16:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_103C024(uint64_t **a1, unsigned int *a2, unsigned int a3)
{
  if (*(a1 + 2964) == 2 && (v6 = a1[371], *(v6 + 204) == 1))
  {
    v77 = *(v6 + 177);
    v7 = *a1;
    if (*(*a1 + 31328) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v77 = 0;
    v7 = *a1;
    if (*(*a1 + 31328) != 1)
    {
      goto LABEL_8;
    }
  }

  if (sub_585D8(v7 + 8))
  {
    v8 = sub_101E508(a1[1]) - 1;
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
LABEL_9:
  if (*a2 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *a2;
  }

  if (*a2 != -1)
  {
    v8 = v9;
  }

  v10 = a1[371];
  if (*(v10 + 177) == 1)
  {
    v11 = *(v10 + 49);
    v12 = v11 >= v8 ? v8 : *(v10 + 49);
    if (v11 != -1 && *(a1 + 2964) == 2)
    {
      v8 = v12;
    }
  }

  v83 = v8;
  if (v10[22])
  {
    v14 = *(v10 + 48);
    if (v14 != -1)
    {
      if (v8 >= v14)
      {
        v8 = v14;
      }

      else
      {
        v8 = v83;
      }
    }
  }

  v82 = v8;
  if (*(a1 + 518))
  {
    v76 = a1 + 375;
    v15 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v16 = &a1[246][10 * *a1[253]];
      v91[0] = *v16;
      v17 = *(v16 + 3);
      v18 = *(v16 + 4);
      v19 = *(v16 + 2);
      v91[1] = *(v16 + 1);
      v91[3] = v17;
      v92 = v18;
      v91[2] = v19;
      sub_1032874((a1 + 150));
      v20 = **a1;
      if (*(v20 + 7774) == 1)
      {
        v21 = WORD1(v91[0]);
        v22 = HIDWORD(*&v91[0]);
        if ((v23 = sub_2AF704(v20 + 3896, DWORD1(v91[0]), 1)) == 0)
        {
          continue;
        }

        v24 = &v23[-*v23];
        if (*v24 < 5u || (v25 = *(v24 + 2)) == 0 || *&v23[v25 + *&v23[v25]] <= v21 || !sub_2B817C(v20, v22 & 0xFFFF0000FFFFFFFFLL | (v21 << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, HIDWORD(*&v91[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v91[0]) << 32)))
      {
        v26 = DWORD2(v92);
        v27 = *(a1 + 260);
        if (v27 != -1 && DWORD2(v91[0]) > v27 || *(a1 + 3048) == 1 && sub_103E5CC(a1, v91 + 2))
        {
          return;
        }

        v28 = *(a1 + 261);
        if (v28 != 0x7FFFFFFF && SHIDWORD(v91[0]) <= v28)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v29 = a1[1], LODWORD(v84) = *(a1 + 756), !sub_101F374(*v29, HIDWORD(*&v91[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v91[0]) << 32), &v84)))
        {
          v75 = v26 & 0x7FFFFFFF;
          v81 = sub_103E7D0(a1, v91, v91 + 2, v26 & 0x7FFFFFFF);
          v30 = *(a1 + 740);
          v31 = 0x7FFFFFFF;
          if (v30 != 0x7FFFFFFF)
          {
            if (v91[0] < 0)
            {
              v32 = -5;
            }

            else
            {
              v32 = 5;
            }

            v31 = SHIDWORD(v91[0]) / 10 + v30 + (((103 * (v32 + SHIDWORD(v91[0]) % 10)) >> 15) & 1) + ((103 * (v32 + SHIDWORD(v91[0]) % 10)) >> 10);
          }

          v80 = v31;
          v33 = sub_10B7504((*a1 + 1217), a1[371], v31, *(a1 + 2964));
          v34 = &v83;
          if (v33)
          {
            v34 = &v82;
          }

          v35 = *v34 >= v81 ? &v81 : v34;
          v36 = sub_103EB98(a1, v91, a1[371], &v80, *(a1 + 2964), v35);
          v37 = v36;
          if (v36 != -1)
          {
            if (v36)
            {
              v47 = a1[1];
              LODWORD(v84) = v36;
              v48 = sub_101F854(*v47, HIDWORD(*&v91[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v91[0]) << 32), (v91[0] & 2) == 0, &v84);
              v79 = v48;
              if (!v48 || v48 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v49 = (v77 & 1) != 0 && (sub_103ED40(a1 + 356, &v79) & 1) == 0 && (sub_106177C((*a1 + 1896), v79, a1[371], v80, *(a1 + 2964)) & 1) != 0 ? 0 : *(a1 + 2964);
              v74 = v49;
              sub_105FAF8((*a1 + 1896), *&v91[0], v37, 0, a1[371], v80, v49, v76);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v79, &v84);
              v50 = v84;
              if (v85 == 1)
              {
                v51 = *(v84 + 8) + 12 * *(&v84 + 1);
                *v51 = v79;
                *(v51 + 8) = 0x7FFFFFFF;
              }

              v52 = *(v50 + 8) + 12 * *(&v84 + 1);
              v55 = *(v52 + 8);
              v53 = (v52 + 8);
              v54 = v55;
              if (v55 == 0x7FFFFFFF || SHIDWORD(v91[0]) < v54)
              {
                *v53 = HIDWORD(v91[0]);
              }

              v56 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v56)
              {
                v57 = 0;
                v58 = 0;
                v59 = 40 * v56;
                do
                {
                  v60 = &(*v76)[v57 / 8];
                  v61 = *(v60 + 28);
                  v62 = v61 & 0xFFFFFFFF00000000;
                  if (v61 != -1 && v62 != 0x7FFFFFFF00000000)
                  {
                    *&v84 = (v62 + *(&v91[0] + 1)) & 0xFFFFFFFF00000000 | (v61 + DWORD2(v91[0]));
                    DWORD2(v84) = v80;
                    BYTE12(v84) = v74;
                    v85 = 0uLL;
                    *&v86 = 640;
                    v88 = v58;
                    v89 = v37;
                    v90 = v75;
                    v64 = *v60;
                    v65 = *(v60 + 1);
                    v87 = *(v60 + 8);
                    v85 = v64;
                    v86 = v65;
                    v78 = v60[1];
                    sub_1032738(a1, &v78, &v84);
                  }

                  ++v58;
                  v57 += 40;
                }

                while (v59 != v57);
              }
            }

            else
            {
              if ((a1[381] & 1) == 0)
              {
                sub_103EE44(a1, v91, v91 + 2, v75);
              }

              sub_F90350((*a1 + 1), *&v91[0], 0, a1 + 372, 0);
              v38 = -1431655765 * ((a1[373] - a1[372]) >> 5);
              if (v38)
              {
                v39 = 0;
                v40 = 0;
                v41 = 96 * v38;
                do
                {
                  v42 = a1[372];
                  v43 = sub_103F3F0(*a1, &v42[v39 / 8], a1[371], &v80, *(a1 + 2964));
                  v44 = v43 & 0xFFFFFFFF00000000;
                  if (v43 != -1 && v44 != 0x7FFFFFFF00000000)
                  {
                    v79 = (((4 * WORD1(v42[v39 / 8 + 10])) | (v42[v39 / 8 + 9] << 32)) + ((v42[v39 / 8 + 9] >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (LOBYTE(v42[v39 / 8 + 11]) >> 1) & 1 | (2 * ((v42[v39 / 8 + 9] & 0xFF000000000000) == 0));
                    v46 = *(a1 + 2964);
                    *&v84 = (*(&v91[0] + 1) + v44) & 0xFFFFFFFF00000000 | (DWORD2(v91[0]) + v43);
                    DWORD2(v84) = v80;
                    BYTE12(v84) = v46;
                    *&v85 = (((v42[v39 / 8 + 4] >> 16) & 0xFFFF0000 | (v42[v39 / 8 + 4] << 32) | (2 * ((v42[v39 / 8 + 4] & 0xFF000000000000) == 0))) + 4 * LODWORD(v42[v39 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | v42[v39 / 8 + 11] & 1;
                    *(&v85 + 1) = (((v42[v39 / 8 + 9] >> 16) & 0xFFFF0000 | (v42[v39 / 8 + 9] << 32) | (2 * ((v42[v39 / 8 + 9] & 0xFF000000000000) == 0))) + 4 * WORD1(v42[v39 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | (LOBYTE(v42[v39 / 8 + 11]) >> 1) & 1;
                    *&v86 = *(&v42[v39 / 8 + 10] + 4);
                    v88 = v40;
                    v89 = 0;
                    v90 = v75;
                    sub_1032738(a1, &v79, &v84);
                  }

                  ++v40;
                  v39 += 96;
                }

                while (v41 != v39);
              }
            }

            v66 = *(a1 + 261);
            if (v66 != 0x7FFFFFFF && !*(a1 + 262) && v15 == -1)
            {
              v67 = a1[119];
              v68 = a1[120];
              if (v67 == v68)
              {
                return;
              }

              v15 = 0;
              v69 = a1[116];
              do
              {
                if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v69) > *v67)
                {
                  v70 = v69[3 * *v67 + 1];
                }

                else
                {
                  v70 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v71 = HIDWORD(v70);
                if (v15 > v70)
                {
                  LODWORD(v70) = v15;
                }

                if (v66 >= v71)
                {
                  v15 = v70;
                }

                ++v67;
              }

              while (v67 != v68);
              v72 = *(a1 + 260);
              if (v72 == -1 || v15 < v72)
              {
                *(a1 + 260) = v15;
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_103C888(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_103A7D0(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_103AB18(a1);
  sub_103B424(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_1053B80((a1 + 1056), v21, &v23);
      sub_1058D74((a1 + 1056), a10);
      sub_1059D34((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_103C024(a1, a8, a11);
}

void sub_103C9C0(void *a1, uint64_t a2, unint64_t ***a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_103A7D0(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_103E178(a1 + 3, v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052908((a1 + 116), v22 - v21);
  }

  a1[122] = a1 + 3;
  sub_103CAD0(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_103CAD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  *(a1 + 2960) = a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  v13 = (a1 + 1168);
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = a6;
  *(a1 + 1044) = a7;
  v14 = *(a1 + 976);
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || *(a1 + 3048) == 1)
  {
    sub_103AB18(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_103B424(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_103BA20(a1);
    sub_103C024(a1, &v18, a9);
  }
}

void sub_103CC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_103CC48(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = v2 + 24 * a2, !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return *(v3 + 20) & 0x3FFFFFFF;
}

void sub_103CD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_103CD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  sub_103CF20(a1, 0, v3, a2);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void sub_103CE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_103CE4C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  sub_103CF20(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_103CF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_103CF20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_F6BEE8(a4);
  v9 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    v11 = *v10;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          sub_F8EC88(*a1 + 8, (HIDWORD(v11) & 0xFFFE0000FFFFFFFFLL | (WORD1(v11) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v11 >> 1) & 1) << 48)) ^ 0x1000000000000, v12);
          sub_F6C100(a4, v11, v12, 0);
          sub_F68F20(a4, *(a1 + 1168) + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_103D21C(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_103D868(v10, *(a1 + 3880) + 40 * a2, v12);
          sub_F6DDE0(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F6901C(a4, *(**(a1 + 976) + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_103D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_4547F0(v3);
  _Unwind_Resume(a1);
}

_BYTE *sub_103D148@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  sub_103D21C(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_103D208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

void sub_103D21C(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_F6BEE8(a4);
  v8 = *a2;
  if (!*a2)
  {
    return;
  }

  v51 = a2;
  v52 = a3;
  v53 = v7;
  v9 = 0;
  v10 = 0;
  v58 = v8;
  do
  {
    sub_F98EF8((a1 + 150), &v58, &v61);
    v11 = a1[246] + 80 * *(*(&v62 + 1) + 8);
    v12 = v10 - v9;
    v13 = 0x8E38E38E38E38E39 * ((v10 - v9) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    if (0x1C71C71C71C71C72 * (-v9 >> 3) > v14)
    {
      v14 = 0x1C71C71C71C71C72 * (-v9 >> 3);
    }

    if (0x8E38E38E38E38E39 * (-v9 >> 3) >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      if (v15 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v16 = 8 * ((v10 - v9) >> 3);
    *v16 = *(v11 + 8);
    v17 = *(v11 + 24);
    v18 = *(v11 + 40);
    v19 = *(v11 + 56);
    *(v16 + 64) = *(v11 + 72);
    *(v16 + 32) = v18;
    *(v16 + 48) = v19;
    *(v16 + 16) = v17;
    v10 = v16 + 72;
    v20 = 72 * v13 + 72 * (v12 / -72);
    memcpy((v16 + 72 * (v12 / -72)), v9, v12);
    if (v9)
    {
      operator delete(v9);
    }

    v9 = v20;
    if ((*(v11 + 72) & 0x80000000) != 0)
    {
      v58 = 0;
      if (v20 == v10)
      {
        goto LABEL_49;
      }

      goto LABEL_19;
    }

    v58 = *(v11 + 24);
  }

  while (v58);
  if (v20 == v10)
  {
    goto LABEL_49;
  }

LABEL_19:
  if (!*(v52 + 24))
  {
    v21 = v10 - 72;
    if (v10 - 72 > v20)
    {
      v22 = v20 + 72;
      do
      {
        v61 = *(v22 - 72);
        v23 = *(v22 - 56);
        v24 = *(v22 - 40);
        v25 = *(v22 - 24);
        *v65 = *(v22 - 8);
        v64 = v25;
        v62 = v23;
        v63 = v24;
        v27 = *(v21 + 32);
        v26 = *(v21 + 48);
        v28 = *(v21 + 64);
        *(v22 - 56) = *(v21 + 16);
        *(v22 - 8) = v28;
        *(v22 - 24) = v26;
        *(v22 - 40) = v27;
        *(v22 - 72) = *v21;
        v29 = v64;
        v31 = v62;
        v30 = v63;
        *(v21 + 64) = *v65;
        *(v21 + 32) = v30;
        *(v21 + 48) = v29;
        *(v21 + 16) = v31;
        *v21 = v61;
        v21 -= 72;
        v32 = v22 >= v21;
        v22 += 72;
      }

      while (!v32);
    }
  }

  v57[0] = v52;
  v57[1] = v53;
  __p = 0;
  v55 = 0;
  v56 = 0;
  while (!*(v20 + 60))
  {
    if (*(v52 + 24) && !sub_F69D6C(v53))
    {
      *&v61 = *(v20 + 24);
      v33 = *(v52 + 24);
      if (!v33)
      {
        sub_2B7420();
      }

      if ((*(*v33 + 48))(v33, &v61))
      {
        goto LABEL_37;
      }
    }

    v34 = *a1;
    sub_F8EC88(*a1 + 8, (HIDWORD(*(v20 + 16)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v20 + 16)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v20 + 16) >> 1) & 1) << 48)) ^ 0x1000000000000, v59);
    sub_F8EC88(v34 + 8, (HIDWORD(*(v20 + 24)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v20 + 24)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v20 + 24) >> 1) & 1) << 48)) ^ 0x1000000000000, &v63 + 1);
    v35 = *(v20 + 16);
    v36 = *(v20 + 24);
    *&v63 = v60;
    v61 = v59[0];
    v62 = v59[1];
    *&v65[16] = (v36 << 14) & 0x3FFF0000 | (v35 >> 2);
    *&v65[20] = *(v20 + 32);
    sub_F6C3B8(v53, &v61, 0);
LABEL_25:
    v20 += 72;
    if (v20 == v10)
    {
      v37 = 1;
      if (!*(v52 + 24))
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    }
  }

  sub_107C170((*a1 + 20648), v20 + 16, a1[371], (v20 + 8), *(v20 + 12), &__p);
  if (__p == v55)
  {
    sub_F687F4(v53);
    goto LABEL_47;
  }

  if ((sub_103DB8C(v57, &__p) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_37:
  v37 = 0;
  if (!*(v52 + 24))
  {
    goto LABEL_43;
  }

LABEL_38:
  v38 = sub_5FC64(v53);
  v39 = sub_445EF4(v53);
  if (v38 != v39)
  {
    v40 = (v39 - 96);
    if (v39 - 96 > v38)
    {
      v41 = v38 + 96;
      do
      {
        v63 = *(v41 - 64);
        v64 = *(v41 - 48);
        *v65 = *(v41 - 32);
        *&v65[16] = *(v41 - 16);
        v61 = *(v41 - 96);
        v62 = *(v41 - 80);
        v42 = v40[1];
        *(v41 - 96) = *v40;
        *(v41 - 80) = v42;
        v44 = v40[3];
        v43 = v40[4];
        v45 = v40[2];
        *(v41 - 20) = *(v40 + 76);
        *(v41 - 48) = v44;
        *(v41 - 32) = v43;
        *(v41 - 64) = v45;
        v40[4] = *v65;
        *(v40 + 76) = *&v65[12];
        *v40 = v61;
        v40[3] = v64;
        v40[2] = v63;
        v40[1] = v62;
        v40 -= 6;
        v32 = v41 >= v40;
        v41 += 96;
      }

      while (!v32);
    }
  }

LABEL_43:
  if (v37)
  {
    sub_F98EF8((a1 + 150), v51, &v61);
    sub_F68F20(v53, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v62 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
  }

  else
  {
    v46 = sub_73F1C(v53);
    v47 = *(v46 + 16);
    v61 = *v46;
    v62 = v47;
    v48 = *(v46 + 32);
    v49 = *(v46 + 48);
    v50 = *(v46 + 64);
    *&v65[16] = *(v46 + 80);
    v64 = v49;
    *v65 = v50;
    v63 = v48;
    LODWORD(v61) = 0;
    sub_F68F20(v53, &v61);
  }

LABEL_47:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

LABEL_49:
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_103D7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      sub_4547F0(a11);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  sub_4547F0(a11);
  _Unwind_Resume(a1);
}

void sub_103D868(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_F6BEE8(a5);
  if (*a2)
  {
    v7 = *a2;
    sub_10348A4(a3, &v7);
    operator new();
  }
}

void sub_103DAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_103DB8C(uint64_t *a1, int ***a2)
{
  if (*(*a1 + 24))
  {
    v4 = *a2;
    for (i = a2[1]; i != v4; sub_F6C3B8(a1[1], i, 0))
    {
      if (!sub_F69D6C(a1[1]))
      {
        v5 = *a1;
        v12 = (((*(i - 3) >> 16) & 0xFFFF0000 | (*(i - 3) << 32) | (2 * ((*(i - 3) & 0xFF000000000000) == 0))) + 4 * *(i - 7)) & 0xFFFFFFFFFFFFFFFELL | (*(i - 8) >> 1) & 1;
        v6 = *(v5 + 24);
        if (!v6)
        {
          goto LABEL_18;
        }

        if ((*(*v6 + 48))(v6, &v12))
        {
          return 1;
        }
      }

      i -= 12;
    }
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    while (v8 != v9)
    {
      if (*(*a1 + 24) && !sub_F69D6C(a1[1]))
      {
        v10 = *a1;
        v12 = (((v8[9] >> 16) & 0xFFFF0000 | (v8[9] << 32) | (2 * ((v8[9] & 0xFF000000000000) == 0))) + 4 * *(v8 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v8 + 88) >> 1) & 1;
        v11 = *(v10 + 24);
        if (!v11)
        {
LABEL_18:
          sub_2B7420();
        }

        if ((*(*v11 + 48))(v11, &v12))
        {
          return 1;
        }
      }

      sub_F6C3B8(a1[1], v8, 0);
      v8 += 12;
    }
  }

  return 0;
}

unint64_t sub_103DD3C(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, HIDWORD(v25) & 0xFFFF0000FFFFFFFFLL | (WORD1(v25) << 32), (v25 >> 1) & 1, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_103E158(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_103E178(uint64_t **a1, unint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v32 = a2;
    v33 = ((v5 - *a1) >> 5);
    do
    {
      v11 = *v6 >> 1;
      v12 = *v6 >> 16;
      v13 = **a4;
      v14 = HIDWORD(*v6);
      LODWORD(v34) = HIDWORD(*v6);
      WORD2(v34) = v12;
      BYTE6(v34) = ((v14 & 0xFFFE0000FFFFFFFFLL | (v12 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((v11 & 1) << 48)) ^ 0x1000000000000) >> 48;
      if (sub_100A97C(v13 + 31336, &v34) == -1)
      {
        if (a3)
        {
          LODWORD(v34) = 0;
          sub_1053B80(a1 + 99, v6, &v34);
          sub_1059D34(a1 + 99);
        }

        sub_1055328((a1 + 3), v6, &v34);
        v15 = v34;
        if (v36 == 1)
        {
          v16 = (*(v34 + 8) + 32 * v35);
          *v16 = *v6;
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
        }

        v17 = (*(v15 + 8) + 32 * v35);
        v19 = v17[2];
        v18 = v17[3];
        if (v19 < v18)
        {
          *v19 = v33;
          v10 = v19 + 8;
        }

        else
        {
          v20 = v17[1];
          v21 = v19 - v20;
          v22 = (v19 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_1794();
          }

          v24 = a3;
          v25 = v18 - v20;
          if (v25 >> 2 > v23)
          {
            v23 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v23;
          }

          if (v26)
          {
            if (!(v26 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v27 = (v19 - v20) >> 3;
          v28 = (8 * v22);
          v29 = (8 * v22 - 8 * v27);
          *v28 = v33;
          v10 = v28 + 1;
          memcpy(v29, v20, v21);
          v17[1] = v29;
          v17[2] = v10;
          v17[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }

          a3 = v24;
        }

        v17[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = a1[1];
    a2 = v32;
  }

  if (v5 >= a1[2])
  {
    result = sub_1055A68(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v30 = a2[1];
    if (v30 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v30 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    a1[1] = v5 + 4;
  }

  a1[1] = result;
  return result;
}

void sub_103E45C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

unint64_t sub_103E47C(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, signed int *a5, uint64_t a6)
{
  if (*(a1 + 31330) == 1)
  {
    v12 = HIDWORD(*a2);
    v13 = ~(*a2 << 47);
    WORD2(v23) = WORD1(*a2);
    LODWORD(v23) = v12;
    BYTE6(v23) = BYTE6(v13) & 1;
    if (sub_100A97C(a1 + 31336, &v23) != -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  sub_F8EC88(a1 + 8, (HIDWORD(*a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(*a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*a2 >> 1) & 1) << 48)) ^ 0x1000000000000, v22);
  v23 = 0u;
  v24 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v25 = _Q0;
  v26 = 0x3FF0000000000000;
  v27 = 1;
  sub_10AFF14(a1 + 9736, &v23, v22, a3, a4, a5, a6);
  if (v27 != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = sub_F8634C(&v23, &v25, v19);
  return (v24 + v20) | ((DWORD1(v24) + HIDWORD(v20)) << 32);
}

BOOL sub_103E5CC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_103E7B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_103E7D0(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  v4 = a4;
  sub_103EE44(a1, a2, a3, a4);
  result = sub_103F568(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = v4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_103F714(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_1053B80((a1 + 816), v23, v38);
                sub_1059D34((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || v19 + a3[1] <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_103FAEC(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_1053B80((a1 + 816), v35, &v37);
                    sub_1059D34((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F50[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F50[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674F68[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_1034078(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 4364);
  }

  return result;
}

void sub_103EB5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_103EB98(uint64_t a1, unint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v12 = a3[50];
    do
    {
      v13 = *(a1 + 8);
      v14 = *a2;
      v15 = *a2 >> 16;
      LODWORD(v23) = v6;
      if (sub_101F374(*v13, HIDWORD(v14) & 0xFFFF0000FFFFFFFFLL | (v15 << 32), &v23))
      {
        v16 = *(a1 + 8);
        v17 = *a2;
        v18 = *a2 >> 16;
        v24 = v6;
        v19 = sub_101F854(*v16, HIDWORD(v17) & 0xFFFF0000FFFFFFFFLL | (v18 << 32), (v17 & 2) == 0, &v24);
        v23 = v19;
        if (v19)
        {
          v20 = v19 >= 0xFFFFFFFF00000000;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          v21 = *(a1 + 20);
          if (v21 != -1 && v6 == v21)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (sub_10550EC(a1 + 1064, &v23) == -1 && sub_10550EC(*(a1 + 976) + 800, &v23) == -1 && (v6 <= v12 || (sub_106177C(*a1 + 15168, v23, a3, *a4, a5) & 1) == 0))
        {
          if (*(a1 + 3048) == 1 && v6 < *(*(a1 + 3032) + 4360))
          {
            return 0;
          }

          if (*(*a1 + 31329) != 1 || !sub_106177C(*a1 + 15168, v23, a3, *a4, a5))
          {
            return v6;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v6);
  }

  return v6;
}

uint64_t sub_103ED40(uint64_t **a1, unint64_t *a2)
{
  v2 = *a2;
  v9 = v2;
  if (v2)
  {
    v3 = v2 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  while (1)
  {
    if (atomic_load_explicit(byte_2732E58, memory_order_acquire))
    {
      if (v9 != qword_2732E50)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_21E6BE8();
      if (v9 != qword_2732E50)
      {
        goto LABEL_10;
      }
    }

    if (HIDWORD(v9) == HIDWORD(qword_2732E50))
    {
      return 0;
    }

LABEL_10:
    if (sub_10550EC((a1 + 1), &v9) != -1)
    {
      return 1;
    }

    v6 = *a1;
    v10 = v9;
    v7 = sub_1055218(*v6, &v10);
    v9 = v7;
    if (v7)
    {
      v8 = v7 >= 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }
}

void sub_103EE44(uint64_t *a1, uint64_t *a2, int *a3, int a4)
{
  v61 = a2;
  if (*(a1 + 3048) == 1)
  {
    sub_103FD28(a1, a2);
    a2 = v61;
  }

  v5 = a2;
  sub_1056F4C(a1[122] + 24, a2, &v64);
  if (v64)
  {
    sub_1056F4C(a1[122] + 24, v5, &v64);
    v6 = *(a1 + 740);
    v7 = 0x7FFFFFFF;
    if (v6 != 0x7FFFFFFF)
    {
      v8 = a3[1];
      v9 = v8 / 10;
      v10 = v8 % 10;
      if (v8 < 0)
      {
        v11 = -5;
      }

      else
      {
        v11 = 5;
      }

      v7 = v9 + v6 + (((103 * (v11 + v10)) >> 15) & 1) + ((103 * (v11 + v10)) >> 10);
    }

    v62 = v7;
    v12 = *(*(&v65 + 1) + 8);
    v57 = *(*(&v65 + 1) + 16);
    v13 = v61;
    if (v12 != v57)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v60 = _Q0;
      while (1)
      {
        v59 = v12;
        v18 = (*a1[122] + 32 * *v12);
        v19 = -1431655765 * ((v18[1] - *v18) >> 5);
        if (v19)
        {
          break;
        }

LABEL_11:
        v12 = v59 + 1;
        if (v59 + 1 == v57)
        {
          return;
        }
      }

      v20 = 0;
      while (1)
      {
        v21 = *v18 + 96 * v20;
        v22 = *v21;
        if (*v21 != *v13)
        {
          goto LABEL_15;
        }

        v23 = *a1;
        v24 = *(v21 + 8);
        v25 = a1[371];
        v26 = *(a1 + 2964);
        v27 = (v22 << 47) & 0x1000000000000;
        v28 = v22 << 16;
        if (*(*a1 + 31330) == 1)
        {
          v29 = 0;
          v30 = v22 & 0xFFFFFFFFFFFF0000;
          v31 = (v27 ^ 0x1000000000000uLL) >> 48;
          if (!v31)
          {
            ++v30;
          }

          v32 = (0x2127599BF4325C37 * (v30 ^ (v22 >> 23))) ^ ((0x2127599BF4325C37 * (v30 ^ (v22 >> 23))) >> 47);
          while (2)
          {
            v34 = v32 & (v23[3924] - 1);
            v35 = *(v23[3926] + 8 * v34);
            if (__PAIR64__(*(*a1 + 31404), *(*a1 + 31400)) == __PAIR64__(WORD2(v35), v35) && *(*a1 + 31406) == BYTE6(v35))
            {
              goto LABEL_38;
            }

            if (v23[3922] && __PAIR64__(*(*a1 + 31372), *(*a1 + 31368)) == __PAIR64__(WORD2(v35), v35))
            {
              if (*(*a1 + 31374) == BYTE6(v35) || HIDWORD(v22) != v35)
              {
                goto LABEL_25;
              }
            }

            else if (HIDWORD(v22) != v35)
            {
LABEL_25:
              v32 = ++v29 + v34;
              continue;
            }

            break;
          }

          if (WORD2(v28) == WORD2(v35) && v31 == BYTE6(v35))
          {
            if (v34 != -1)
            {
              goto LABEL_15;
            }

            goto LABEL_38;
          }

          goto LABEL_25;
        }

LABEL_38:
        sub_F8EC88((v23 + 1), (v28 & 0xFFFF00000000 | HIDWORD(v22) | v27) ^ 0x1000000000000, v63);
        v64 = 0u;
        v65 = 0u;
        v66 = v60;
        v67 = 0x3FF0000000000000;
        v68 = 1;
        sub_10AFF14((v23 + 1217), &v64, v63, v24, v25, &v62, v26);
        if ((v68 & 1) == 0)
        {
          goto LABEL_14;
        }

        LODWORD(v37) = v64;
        v38 = *&v66 * v37;
        if (v38 >= 0.0)
        {
          v13 = v61;
          if (v38 >= 4.50359963e15)
          {
            goto LABEL_45;
          }

          v39 = (v38 + v38) + 1;
        }

        else
        {
          v13 = v61;
          if (v38 <= -4.50359963e15)
          {
            goto LABEL_45;
          }

          v39 = (v38 + v38) - 1 + (((v38 + v38) - 1) >> 63);
        }

        v38 = (v39 >> 1);
LABEL_45:
        v40 = *(&v66 + 1) * SDWORD1(v64);
        if (v40 >= 0.0)
        {
          if (v40 >= 4.50359963e15)
          {
            goto LABEL_51;
          }

          v41 = (v40 + v40) + 1;
        }

        else
        {
          if (v40 <= -4.50359963e15)
          {
            goto LABEL_51;
          }

          v41 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
        }

        v40 = (v41 >> 1);
LABEL_51:
        v42 = v65 + v38;
        v43 = DWORD1(v65) + v40;
        if (v42 == -1 || v43 == 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v46 = *a3;
        v45 = a3[1];
        v47 = *a1;
        v48 = a1[371];
        v64 = 0u;
        v65 = 0u;
        v66 = v60;
        v67 = 0x3FF0000000000000;
        v68 = 1;
        sub_10AFB6C(v47 + 9736, &v64, v21, v21 + 8, v48, 1);
        if (v68)
        {
          LODWORD(v49) = v64;
          v50 = *&v66 * v49;
          if (v50 >= 0.0)
          {
            v13 = v61;
            if (v50 < 4.50359963e15)
            {
              v51 = (v50 + v50) + 1;
LABEL_61:
              v50 = (v51 >> 1);
            }
          }

          else
          {
            v13 = v61;
            if (v50 > -4.50359963e15)
            {
              v51 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
              goto LABEL_61;
            }
          }

          v52 = *(&v66 + 1) * SDWORD1(v64);
          if (v52 >= 0.0)
          {
            if (v52 < 4.50359963e15)
            {
              v53 = (v52 + v52) + 1;
LABEL_67:
              v52 = (v53 >> 1);
            }
          }

          else if (v52 > -4.50359963e15)
          {
            v53 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
            goto LABEL_67;
          }

          v54 = v65 + v50;
          if (v54 == -1)
          {
            goto LABEL_15;
          }

          v55 = DWORD1(v65) + v52;
          if (v55 == 0x7FFFFFFF)
          {
            goto LABEL_15;
          }

          *&v64 = (v42 + v46 + v54) | ((v43 + v45 + v55) << 32);
          sub_1034078(a1, v13, &v64, *v59, a4, v20, 0, 0);
        }

LABEL_14:
        v13 = v61;
LABEL_15:
        if (++v20 == v19)
        {
          goto LABEL_11;
        }
      }
    }
  }
}

unint64_t sub_103F3F0(int32x2_t *a1, uint64_t a2, uint64_t a3, signed int *a4, uint64_t a5)
{
  if (a1[3916].i8[2] != 1 || (v9 = a4, sub_1008EEC(&a1[3927], a2) == -1) && (v10 = *(a2 + 32), v11 = (v10 >> 16) & 0xFFFF0000 | (v10 << 32), v12 = (v10 & 0xFF000000000000) == 0, v13 = (v11 | (2 * v12)) + 4 * *(a2 + 80), BYTE6(v26) = !v12, WORD2(v26) = WORD1(v13), LODWORD(v26) = HIDWORD(v13), v14 = sub_100A97C(&a1[3917], &v26), a4 = v9, v14 == -1))
  {
    v25 = *a4;
    v26 = 0u;
    v27 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v28 = _Q0;
    v29 = 0x3FF0000000000000;
    v30 = 1;
    sub_10B54B8(a1 + 1217, &v26, a2, 0x3B9ACA00u, a3, &v25, a5);
    if (v30 == 1)
    {
      v23 = sub_F8634C(&v26, &v28, v22);
      v16 = (v27 + v23) | ((DWORD1(v27) + HIDWORD(v23)) << 32);
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v15 = v16 & 0xFFFFFFFF00000000;
    v16 = v16;
  }

  else
  {
    v15 = 0x7FFFFFFF00000000;
    v16 = 0xFFFFFFFFLL;
  }

  return v15 | v16;
}

void *sub_103F568(uint64_t a1, unint64_t a2)
{
  LODWORD(v26[0]) = *(a1 + 4360);
  v28 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 & 2) == 0, v26);
  v4 = HIDWORD(v28);
  if (v28)
  {
    v5 = v4 == 0xFFFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v26[0] = 0;
  v26[1] = 0;
  v6 = sub_1059F84(*(a1 + 32), v28, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return 0;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return 0;
  }

  v9 = &v6[v8 + *&v6[v8]];
  if (*v9 <= v4)
  {
    return 0;
  }

  v10 = &v9[4 * v4 + 4 + *&v9[4 * v4 + 4]];
  v11 = &v10[-*v10];
  if (*v11 < 9u)
  {
    return 0;
  }

  v12 = *(v11 + 4);
  if (!v12)
  {
    return 0;
  }

  v13 = &v10[v12 + *&v10[v12]];
  v16 = *v13;
  v14 = v13 + 4;
  v15 = v16;
  v17 = &v14[v16];
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    do
    {
      v19 = (v18 + ((4 * v15) & 0x7FFFFFFF8));
      v21 = *v19;
      v20 = v19 + 1;
      v22 = v15 >> 1;
      v15 += ~(v15 >> 1);
      if (v21 >= a2)
      {
        v15 = v22;
      }

      else
      {
        v18 = v20;
      }
    }

    while (v15);
  }

  if (v18 == v17)
  {
    return 0;
  }

  if (*v18 != a2)
  {
    return 0;
  }

  v27 = (v18 - v14) >> 3;
  if (v27 == 0xFFFF)
  {
    return 0;
  }

  v23 = *(a1 + 8);
  v24 = (a1 + 4440);
  sub_1055C88(v23, &v28, &v27, v24);
  return v24;
}

uint64_t sub_103F714(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 4392));
  sub_1015D8C(v7 + 40, (v7 + 4392), *(v7 + 4368), 0, &__p);
  v44 = a1;
  sub_103E178(a1 + 3, &__p, 0, &v44);
  v4 = (v6 - v5) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = (v20 + 1);
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = (v10 + 8);
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1052CA0((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = 0;
      *(v29 + 8) = xmmword_2297C80;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = 0;
      *(v37 + 8) = xmmword_2297C80;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_103FAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_103FAEC@<D0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 4385) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[(v17 >> 32) + 1] + v20[(v17 >> 32) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 9)
  {
    v12 = v9[4];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_105A284(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

void sub_103FD28(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[379];
  v5 = *a2;
  sub_1057E78(v2[1], &v5, v2 + 552);
  v3 = v2[552];
  v4 = v2[553];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_103FDF0(uint64_t a1, unint64_t *a2, int a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  v12 = *a2;
  v13 = *a2 >> 16;
  v19 = a3;
  v14 = sub_101F854(*(a1 + 15152), HIDWORD(v12) & 0xFFFF0000FFFFFFFFLL | (v13 << 32), (v12 & 2) == 0, &v19);
  if (sub_106177C(a1 + 15168, v14, a4, *a5, a6))
  {
    return 1;
  }

  v16 = *a2;
  v17 = *a2 >> 16;
  v20 = a3;
  v18 = sub_101F854(*(a1 + 15152), HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (v17 << 32), (v16 >> 1) & 1, &v20);
  return sub_106177C(a1 + 15168, v18, a4, *a5, a6);
}

void sub_103FED0(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 15152;
  *(a1 + 16) = -1;
  sub_103A0DC(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_10401A8(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

double sub_104025C(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F50[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_10405A4(void *a1)
{
  if (*(a1 + 2964) == 2 && (v2 = a1[371], *(v2 + 204) == 1) && *(v2 + 177) == 1 && *(*a1 + 31328) == 1 && sub_585D8((*a1 + 8)) && (v3 = *(a1[371] + 200), v3 != -1))
  {
    v4 = sub_101E508(a1[1]) - 1;
    if (v4 >= v3)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  v71 = v4;
  __p = 0;
  v69 = 0;
  v70 = 0;
  v5 = *a1;
  v6 = *a1 + 28672;
  v7 = *(*a1 + 31392);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *(*a1 + 31408);
    while (1)
    {
      v10 = BYTE6(*v9);
      v11 = HIDWORD(*v9);
      if ((*(*a1 + 31400) != *v9 || *(*a1 + 31404) != v11 || *(*a1 + 31406) != v10) && (!*(v5 + 31376) || __PAIR64__(*(*a1 + 31372), *(*a1 + 31368)) != __PAIR64__(v11, *v9) || *(*a1 + 31374) != v10))
      {
        break;
      }

      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_79;
      }
    }
  }

  else
  {
    v9 = *(*a1 + 31408);
  }

  v12 = *(*a1 + 31408) + 8 * v7;
  if (v9 == v12)
  {
LABEL_79:
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v66 = (a1 + 370);
    __asm { FMOV            V0.2D, #1.0 }

    v65 = _Q0;
    v64 = *a1;
    do
    {
      v67 = (*v9 >> 16) & 0xFFFF0000 | (*v9 << 32) | (2 * ((*v9 & 0xFF000000000000) == 0));
      if (v71 && ((v19 = *a1, v20 = a1[371], v21 = *(a1 + 2964), sub_F8EC88(*a1 + 8, *v9, &v72), v80[0] = *v66, v75 = 0u, v76 = 0u, v77 = v65, v78 = 0x3FF0000000000000, v79 = 1, sub_10AFF14(v19 + 9736, &v75, &v72, 0x3B9ACA00u, v20, v80, v21), (v79 & 1) == 0) || (v23 = sub_F8634C(&v75, &v77, v22), v76 + v23 == -1) || DWORD1(v76) + HIDWORD(v23) == 0x7FFFFFFF || *(&v76 + 1) + v24 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v25 = a1[371];
        if (*(v25 + 177) == 1)
        {
          v26 = *(v25 + 196);
        }

        else
        {
          v26 = -1;
        }

        v27 = sub_101E508(a1[1]) - 1;
        if (v27 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (v28 <= v71 || (sub_103FDF0(*a1, &v67, v28, a1[371], v66, *(a1 + 2964)) & 1) != 0)
        {
          sub_1053B80(a1 + 132, &v67, &v71);
          sub_1059D34(a1 + 132);
          v29 = v14;
          LODWORD(v75) = v71 - 1;
          sub_1053B80(a1 + 356, &v67, &v75);
          sub_1059D34(a1 + 356);
          v30 = a1[1];
          LODWORD(v75) = v71;
          v31 = sub_101F854(*v30, HIDWORD(v67) & 0xFFFF0000FFFFFFFFLL | (WORD1(v67) << 32), (v67 & 2) == 0, &v75);
          v32 = v14;
          if (v14 == v13 || v13[-1].i64[1] != v31)
          {
            if (v13 >= v70)
            {
              v33 = v13 - v14;
              v34 = (v13 - v14) >> 3;
              v35 = v34 + 1;
              if ((v34 + 1) >> 61)
              {
                sub_1794();
              }

              v36 = v70 - v14;
              if ((v70 - v14) >> 2 > v35)
              {
                v35 = v36 >> 2;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFF8)
              {
                v37 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                if (!(v37 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v32 = 0;
              v38 = (8 * v34);
              *v38 = v31;
              v13 = (v38 + 1);
              memcpy(0, v14, v33);
              __p = 0;
              v69 = v13;
              v70 = 0;
            }

            else
            {
              v13->i64[0] = v31;
              v13 = (v13 + 8);
            }

            v29 = v32;
            v69 = v13;
          }

          v39 = a1[1];
          LODWORD(v75) = v71;
          v40 = sub_101F854(*v39, HIDWORD(v67) & 0xFFFF0000FFFFFFFFLL | (WORD1(v67) << 32), (v67 >> 1) & 1, &v75);
          if (v13[-1].i64[1] == v40)
          {
            v14 = v29;
            v5 = v64;
          }

          else
          {
            v14 = v29;
            if (v13 >= v70)
            {
              v41 = v13 - v29;
              v42 = (v13 - v29) >> 3;
              v43 = v42 + 1;
              if ((v42 + 1) >> 61)
              {
                sub_1794();
              }

              v44 = v70 - v29;
              if ((v70 - v29) >> 2 > v43)
              {
                v43 = v44 >> 2;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF8)
              {
                v45 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v43;
              }

              if (v45)
              {
                if (!(v45 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v46 = (8 * v42);
              *v46 = v40;
              v13 = (v46 + 1);
              memcpy(0, v29, v41);
              __p = 0;
              v69 = v13;
              v70 = 0;
              v14 = 0;
            }

            else
            {
              v13->i64[0] = v40;
              v13 = (v13 + 8);
            }

            v5 = v64;
            v69 = v13;
          }
        }

        else
        {
          LODWORD(v75) = v28 - 1;
          sub_1053B80(a1 + 356, &v67, &v75);
          sub_1059D34(a1 + 356);
        }
      }

      else
      {
        LODWORD(v75) = 0;
        sub_1053B80(a1 + 132, &v67, &v75);
        sub_1059D34(a1 + 132);
      }

      for (++v9; v9 != v12; ++v9)
      {
        v47 = BYTE6(*v9);
        v48 = HIDWORD(*v9);
        if ((*(v6 + 2728) != *v9 || *(v6 + 2732) != v48 || *(v6 + 2734) != v47) && (!*(v5 + 31376) || __PAIR64__(*(v6 + 2700), *(v6 + 2696)) != __PAIR64__(v48, *v9) || *(v6 + 2702) != v47))
        {
          break;
        }
      }
    }

    while (v9 != v12);
    v5 = *a1;
  }

  v49 = *(v5 + 31664);
  v50 = v49 + 96 * *(v5 + 31560);
  *&v75 = v5 + 31416;
  *(&v75 + 1) = v49;
  *&v76 = v50;
  sub_1008D5C(&v75);
  v51 = *(v5 + 31664) + 96 * *(v5 + 31560);
  v72 = (v5 + 31416);
  v73 = v51;
  v74 = v51;
  sub_1008D5C(&v72);
  while (1)
  {
    v52 = *(&v75 + 1);
    if (*(&v75 + 1) == v73)
    {
      break;
    }

    v67 = (((*(*(&v75 + 1) + 32) >> 16) & 0xFFFF0000 | (*(*(&v75 + 1) + 32) << 32) | (2 * ((*(*(&v75 + 1) + 32) & 0xFF000000000000) == 0))) + 4 * *(*(&v75 + 1) + 80)) & 0xFFFFFFFFFFFFFFFELL | *(*(&v75 + 1) + 88) & 1;
    v80[0] = 0;
    sub_1053B80(a1 + 132, &v67, v80);
    sub_1059D34(a1 + 132);
    v67 = (((*(v52 + 72) >> 16) & 0xFFFF0000 | (*(v52 + 72) << 32) | (2 * ((*(v52 + 72) & 0xFF000000000000) == 0))) + 4 * *(v52 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v52 + 88) >> 1) & 1;
    v80[0] = 0;
    sub_1053B80(a1 + 132, &v67, v80);
    sub_1059D34(a1 + 132);
    *(&v75 + 1) += 96;
    sub_1008D5C(&v75);
  }

  for (i = *(sub_F8F520(*a1 + 8) + 16); i; i = *i)
  {
    *&v75 = (i[2] >> 16) & 0xFFFF0000 | (i[2] << 32) | (2 * ((i[2] & 0xFF000000000000) == 0));
    LODWORD(v72) = 0;
    sub_1053B80(a1 + 132, &v75, &v72);
    sub_1059D34(a1 + 132);
  }

  v54 = 126 - 2 * __clz((v13 - v14) >> 3);
  if (v13 == v14)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  sub_2D31D4(v14, v13, &v75, v55, 1);
  v57 = __p;
  v56 = v69;
  if (__p == v69)
  {
LABEL_106:
    if (v57 != v56)
    {
      v69 = v57;
    }
  }

  else
  {
    v58 = __p - 8;
    while (v58 + 4 != v69)
    {
      v59 = v58[2];
      v58 += 2;
      LODWORD(v60) = v58[2];
      if (v59 == v60 && v58[1] == v58[3])
      {
        v62 = v58 + 4;
        if (v58 + 4 != v69)
        {
          do
          {
            if (v60 != *v62 || v58[1] != v62[1])
            {
              v60 = *v62;
              *(v58 + 1) = *v62;
              v58 += 2;
            }

            v62 += 2;
          }

          while (v62 != v56);
          v56 = v69;
        }

        v57 = v58 + 2;
        goto LABEL_106;
      }
    }
  }

  sub_1060274(*a1 + 15168, &__p, a1[371], *(a1 + 740), *(a1 + 2964), 4u);
  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }
}

void sub_1040E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    v17 = a1;
    operator delete(v16);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void sub_1040EB0(uint64_t **a1, void *a2)
{
  v2 = a1[147];
  v3 = a1[146];
  v59 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v59 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v55 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v60 = _Q0;
    do
    {
      v10 = &a1[146][12 * v5];
      v11 = *a1;
      v12 = **a1;
      if (*(v12 + 7774) == 1)
      {
        v13 = *v10;
        v14 = HIDWORD(*v10);
        v15 = sub_2AF704(v12 + 3896, HIDWORD(*v10), 1);
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          goto LABEL_4;
        }

        v17 = *(v16 + 2);
        if (!v17 || *&v15[v17 + *&v15[v17]] <= WORD1(v13) || !sub_2B817C(v12, v14 & 0xFFFF0000FFFFFFFFLL | (WORD1(v13) << 32)))
        {
          goto LABEL_4;
        }

        v11 = *a1;
      }

      v18 = a1[371];
      v67 = 0u;
      v68 = 0u;
      v69 = v60;
      v70 = 0x3FF0000000000000;
      LOBYTE(v71) = 1;
      sub_10AFB6C((v11 + 1217), &v67, v10, (v10 + 1), v18, 1);
      if (v71)
      {
        v20 = sub_F8634C(&v67, &v69, v19);
        v21 = v68 + v20;
        if (v68 + v20 != -1)
        {
          v22 = DWORD1(v68) + HIDWORD(v20);
          if (DWORD1(v68) + HIDWORD(v20) != 0x7FFFFFFF)
          {
            v23 = sub_103E47C(*a1, v10, *(v10 + 2), a1[371], a1 + 740, *(a1 + 2964));
            if (v23 != -1 && HIDWORD(v23) != 0x7FFFFFFF)
            {
              sub_F90350((*a1 + 1), *v10, 1, a1 + 372, 0);
              v25 = -1431655765 * ((a1[373] - a1[372]) >> 5);
              if (v25)
              {
                v26 = 0;
                v27 = 0;
                if (v23 < 0)
                {
                  v28 = -5;
                }

                else
                {
                  v28 = 5;
                }

                v29 = SHIDWORD(v23) / 10 + (((103 * (SHIDWORD(v23) % 10 + v28)) >> 15) & 1) + ((103 * (SHIDWORD(v23) % 10 + v28)) >> 10);
                v57 = v21 + v23;
                v56 = v22 + HIDWORD(v23);
                v30 = 96 * v25;
                while (2)
                {
                  v31 = a1[372];
                  v32 = *(a1 + 740);
                  if (v32 == 0x7FFFFFFF)
                  {
                    v33 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v33 = v29 + v32;
                  }

                  v64 = v33;
                  v34 = *a1;
                  v35 = a1[371];
                  v36 = *(a1 + 2964);
                  if (*(*a1 + 31330) == 1)
                  {
                    if (sub_1008EEC(&v34[3927], &v31[v26 / 8]) != -1)
                    {
                      goto LABEL_24;
                    }

                    v37 = v31[v26 / 8 + 4];
                    v38 = (v37 >> 16) & 0xFFFF0000 | (v37 << 32);
                    v39 = (v37 & 0xFF000000000000) == 0;
                    v40 = (v38 | (2 * v39)) + 4 * LODWORD(v31[v26 / 8 + 10]);
                    WORD2(v67) = ((v38 | (2 * v39)) + 4 * LODWORD(v31[v26 / 8 + 10])) >> 16;
                    LODWORD(v67) = HIDWORD(v40);
                    BYTE6(v67) = (((v40 << 16) & 0xFFFF00000000 | HIDWORD(v40) | (v39 << 48)) ^ 0x1000000000000uLL) >> 48;
                    if (sub_100A97C(&v34[3917], &v67) != -1)
                    {
                      goto LABEL_24;
                    }
                  }

                  v67 = 0u;
                  v68 = 0u;
                  v69 = v60;
                  v70 = 0x3FF0000000000000;
                  LOBYTE(v71) = 1;
                  sub_10B54B8(v34 + 1217, &v67, &v31[v26 / 8], 0x3B9ACA00u, v35, &v64, v36);
                  if ((v71 & 1) == 0)
                  {
                    goto LABEL_24;
                  }

                  v42 = sub_F8634C(&v67, &v69, v41);
                  if (v68 + v42 == -1 || DWORD1(v68) + HIDWORD(v42) == 0x7FFFFFFF)
                  {
                    goto LABEL_24;
                  }

                  v43 = &v31[v26 / 8];
                  v44 = v31[v26 / 8 + 11];
                  v45 = v31[v26 / 8 + 4];
                  v46 = 4 * LODWORD(v31[v26 / 8 + 10]);
                  v47 = (v56 + DWORD1(v68) + HIDWORD(v42));
                  v62 = (v57 + v68 + v42) | (v47 << 32);
                  v63 = ((v46 & 0xFFFFFFFFFFFFFFFELL | (v45 << 32) | v44 & 1) + ((v45 >> 16) & 0xFFFF0000)) | (2 * ((v45 & 0xFF000000000000) == 0));
                  v48 = *(a1 + 2964);
                  *&v67 = v62;
                  DWORD2(v67) = v64;
                  BYTE12(v67) = v48;
                  *&v68 = (((v31[v26 / 8 + 4] >> 16) & 0xFFFF0000 | (v31[v26 / 8 + 4] << 32) | (2 * ((v31[v26 / 8 + 4] & 0xFF000000000000) == 0))) + 4 * LODWORD(v31[v26 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | v31[v26 / 8 + 11] & 1;
                  *(&v68 + 1) = (((v31[v26 / 8 + 9] >> 16) & 0xFFFF0000 | (v31[v26 / 8 + 9] << 32) | (2 * ((v31[v26 / 8 + 9] & 0xFF000000000000) == 0))) + 4 * *(v43 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v43 + 88) >> 1) & 1;
                  *&v69 = *(&v31[v26 / 8 + 10] + 4);
                  v71 = v27;
                  v72 = 0;
                  v73 = v5 | 0x80000000;
                  v61 = (((4 * LODWORD(v31[v26 / 8 + 10])) | (v31[v26 / 8 + 4] << 32) | v31[v26 / 8 + 11] & 1) + ((v31[v26 / 8 + 4] >> 16) & 0xFFFF0000)) | (2 * ((v31[v26 / 8 + 4] & 0xFF000000000000) == 0));
                  v49 = *(a1 + 261);
                  if (v49 == 0x7FFFFFFF)
                  {
LABEL_46:
                    sub_1034330((a1 + 150), &v61, &v67);
                    v65[0] = (((4 * *(v43 + 20)) | (v43[4] << 32) | v43[11] & 1) + ((v43[4] >> 16) & 0xFFFF0000)) | (2 * ((v43[4] & 0xFF000000000000) == 0));
                    LODWORD(v61) = 0;
                    sub_1053B80(a1 + 132, v65, &v61);
                    sub_1058D74(a1 + 132, a2);
                    sub_1059D34(a1 + 132);
                    sub_1043B88(a1, &v63, &v62, v5);
LABEL_24:
                    ++v27;
                    v26 += 96;
                    if (v30 == v26)
                    {
                      goto LABEL_4;
                    }

                    continue;
                  }

                  break;
                }

                sub_F98EF8((a1 + 150), &v61, v65);
                if (v65[0])
                {
                  sub_F98EF8((a1 + 150), &v61, v65);
                  v50 = a1[246][10 * *(v66 + 8) + 1];
                  if (v67 == v50)
                  {
                    if (SDWORD1(v67) >= SHIDWORD(v50))
                    {
                      goto LABEL_46;
                    }
                  }

                  else if (v67 >= v50)
                  {
                    goto LABEL_46;
                  }

                  sub_F98EF8((a1 + 150), &v61, v65);
                  v51 = HIDWORD(a1[246][10 * *(v66 + 8) + 1]);
                  v52 = *(a1 + 261);
                  if (v52 >= v51 && v47 > v49)
                  {
                    v53 = -1;
LABEL_45:
                    *(a1 + 262) += v53;
                    goto LABEL_46;
                  }

                  if (v52 >= v51)
                  {
                    goto LABEL_46;
                  }
                }

                if (v47 > v49)
                {
                  goto LABEL_46;
                }

                v53 = 1;
                goto LABEL_45;
              }
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v59);
  }
}

void sub_1041584(uint64_t a1)
{
  v52 = -1431655765 * ((*(a1 + 1176) - *(a1 + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v60 = _Q0;
    while (1)
    {
      v56 = v2;
      v6 = *(a1 + 1168) + 96 * v2;
      if (*(a1 + 3048) == 1)
      {
        sub_10451B4(a1, v6);
      }

      sub_1056F4C(*(a1 + 976) + 24, v6, &v62);
      if (v62)
      {
        v59 = *(v6 + 8);
        v7 = *a1;
        v8 = *(a1 + 2968);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10AFB6C(v7 + 9736, &v62, v6, v6 + 8, v8, 1);
        if (v66)
        {
          v10 = sub_F8634C(&v62, &v64, v9);
          v54 = v63 + v10;
          if (v63 + v10 != -1)
          {
            v53 = DWORD1(v63) + HIDWORD(v10);
            if (DWORD1(v63) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v56 + 1;
      if (v56 + 1 == v52)
      {
        return;
      }
    }

    sub_1056F4C(*(a1 + 976) + 24, v6, &v62);
    v12 = *(*(&v63 + 1) + 8);
    v11 = *(*(&v63 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v57 = v12;
      v13 = (**(a1 + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v57 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = *v13 + 96 * v15;
      if (*v16 != *v6)
      {
        goto LABEL_16;
      }

      v17 = *(v16 + 8);
      v18 = *a1;
      v19 = *(a1 + 2968);
      v62 = 0u;
      v63 = 0u;
      v64 = v60;
      v65 = 0x3FF0000000000000;
      v66 = 1;
      sub_10AFB6C(v18 + 9736, &v62, v16, v16 + 8, v19, 1);
      if ((v66 & 1) == 0)
      {
        goto LABEL_16;
      }

      LODWORD(v20) = v62;
      v21 = *&v64 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v64 + 1) * SDWORD1(v62);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      v25 = v63 + v21;
      if (v25 != -1 && DWORD1(v63) + v23 != 0x7FFFFFFF && v59 >= v17)
      {
        v28 = *a1;
        v29 = *(a1 + 2968);
        v30 = *(a1 + 2964);
        v31 = *v6;
        v32 = HIDWORD(*v6);
        v33 = (*v6 << 47) & 0x1000000000000;
        v34 = *v6 << 16;
        if (*(*a1 + 31330) == 1)
        {
          v35 = 0;
          v36 = v31 & 0xFFFFFFFFFFFF0000;
          v37 = (v33 ^ 0x1000000000000uLL) >> 48;
          if (!v37)
          {
            ++v36;
          }

          v38 = (0x2127599BF4325C37 * (v36 ^ (v31 >> 23))) ^ ((0x2127599BF4325C37 * (v36 ^ (v31 >> 23))) >> 47);
          while (2)
          {
            v40 = v38 & (v28[3924] - 1);
            v41 = *(v28[3926] + 8 * v40);
            if (__PAIR64__(*(*a1 + 31404), *(*a1 + 31400)) == __PAIR64__(WORD2(v41), v41) && *(*a1 + 31406) == BYTE6(v41))
            {
              goto LABEL_59;
            }

            if (v28[3922] && __PAIR64__(*(*a1 + 31372), *(*a1 + 31368)) == __PAIR64__(WORD2(v41), v41))
            {
              if (*(*a1 + 31374) == BYTE6(v41) || v32 != v41)
              {
                goto LABEL_47;
              }
            }

            else if (v32 != v41)
            {
LABEL_47:
              v38 = ++v35 + v40;
              continue;
            }

            break;
          }

          if (WORD2(v34) == WORD2(v41) && v37 == BYTE6(v41))
          {
            if (v40 == -1)
            {
              goto LABEL_59;
            }

            goto LABEL_16;
          }

          goto LABEL_47;
        }

LABEL_59:
        v58 = DWORD1(v63) + v23;
        sub_F8EC88((v28 + 1), (v34 & 0xFFFF00000000 | v32 | v33) ^ 0x1000000000000, v61);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10AFF14((v28 + 1217), &v62, v61, v59 - v17, v29, (a1 + 2960), v30);
        if (v66)
        {
          LODWORD(v43) = v62;
          v44 = *&v64 * v43;
          if (v44 >= 0.0)
          {
            v45 = v58;
            if (v44 < 4.50359963e15)
            {
              v46 = (v44 + v44) + 1;
LABEL_65:
              v44 = (v46 >> 1);
            }
          }

          else
          {
            v45 = v58;
            if (v44 > -4.50359963e15)
            {
              v46 = (v44 + v44) - 1 + (((v44 + v44) - 1) >> 63);
              goto LABEL_65;
            }
          }

          v47 = *(&v64 + 1) * SDWORD1(v62);
          if (v47 >= 0.0)
          {
            if (v47 < 4.50359963e15)
            {
              v48 = (v47 + v47) + 1;
LABEL_71:
              v47 = (v48 >> 1);
            }
          }

          else if (v47 > -4.50359963e15)
          {
            v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
            goto LABEL_71;
          }

          v49 = v63 + v44;
          v50 = DWORD1(v63) + v47;
          if (v49 != -1 && v50 != 0x7FFFFFFF)
          {
            LODWORD(v62) = v25 + v54 + v49;
            DWORD1(v62) = v45 + v53 + v50;
            sub_1034078(a1, v6, &v62, *v57, v56, v15, 1, 0);
          }
        }
      }

LABEL_16:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_1041B88(uint64_t **a1, unsigned int *a2, unsigned int a3)
{
  if (*(a1 + 2964) == 2 && (v6 = a1[371], *(v6 + 204) == 1))
  {
    v76 = *(v6 + 177);
    v7 = *a1;
    if (*(*a1 + 31328) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v76 = 0;
    v7 = *a1;
    if (*(*a1 + 31328) != 1)
    {
      goto LABEL_8;
    }
  }

  if (sub_585D8(v7 + 8))
  {
    v8 = sub_101E508(a1[1]) - 1;
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
LABEL_9:
  if (*a2 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *a2;
  }

  if (*a2 != -1)
  {
    v8 = v9;
  }

  v10 = a1[371];
  if (*(v10 + 177) == 1)
  {
    v11 = *(v10 + 49);
    v12 = v11 >= v8 ? v8 : *(v10 + 49);
    if (v11 != -1 && *(a1 + 2964) == 2)
    {
      v8 = v12;
    }
  }

  v83 = v8;
  if (v10[22])
  {
    v14 = *(v10 + 48);
    if (v14 != -1)
    {
      if (v8 >= v14)
      {
        v8 = v14;
      }

      else
      {
        v8 = v83;
      }
    }
  }

  v82 = v8;
  if (*(a1 + 518))
  {
    v75 = a1 + 375;
    v15 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v16 = &a1[246][10 * *a1[253]];
      v91[0] = *v16;
      v17 = *(v16 + 3);
      v18 = *(v16 + 4);
      v19 = *(v16 + 2);
      v91[1] = *(v16 + 1);
      v91[3] = v17;
      v92 = v18;
      v91[2] = v19;
      sub_1032874((a1 + 150));
      v20 = **a1;
      if (*(v20 + 7774) == 1)
      {
        v21 = WORD1(v91[0]);
        v22 = HIDWORD(*&v91[0]);
        if ((v23 = sub_2AF704(v20 + 3896, DWORD1(v91[0]), 1)) == 0)
        {
          continue;
        }

        v24 = &v23[-*v23];
        if (*v24 < 5u || (v25 = *(v24 + 2)) == 0 || *&v23[v25 + *&v23[v25]] <= v21 || !sub_2B817C(v20, v22 & 0xFFFF0000FFFFFFFFLL | (v21 << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, HIDWORD(*&v91[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v91[0]) << 32)))
      {
        v26 = DWORD2(v92);
        v27 = *(a1 + 260);
        if (v27 != -1 && DWORD2(v91[0]) > v27 || *(a1 + 3048) == 1 && sub_1044288(a1, v91 + 2))
        {
          return;
        }

        v28 = *(a1 + 261);
        if (v28 != 0x7FFFFFFF && SHIDWORD(v91[0]) <= v28)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v29 = a1[1], LODWORD(v84) = *(a1 + 756), !sub_101F374(*v29, HIDWORD(*&v91[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v91[0]) << 32), &v84)))
        {
          v77 = v26 & 0x7FFFFFFF;
          v81 = sub_104448C(a1, v91, v91 + 2, v26 & 0x7FFFFFFF);
          v30 = *(a1 + 740);
          v31 = 0x7FFFFFFF;
          if (v30 != 0x7FFFFFFF)
          {
            if (v91[0] < 0)
            {
              v32 = -5;
            }

            else
            {
              v32 = 5;
            }

            v31 = SHIDWORD(v91[0]) / -10 + v30 + (((-103 * (v32 + SHIDWORD(v91[0]) % 10)) >> 15) & 1) + ((-103 * (v32 + SHIDWORD(v91[0]) % 10)) >> 10);
          }

          v80 = v31;
          v33 = sub_10B7504((*a1 + 1217), a1[371], v31, *(a1 + 2964));
          v34 = &v83;
          if (v33)
          {
            v34 = &v82;
          }

          v35 = *v34 >= v81 ? &v81 : v34;
          v36 = sub_1044854(a1, v91, a1[371], &v80, *(a1 + 2964), v35);
          v37 = v36;
          if (v36 != -1)
          {
            if (v36)
            {
              v47 = a1[1];
              LODWORD(v84) = v36;
              v48 = sub_101F854(*v47, HIDWORD(*&v91[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v91[0]) << 32), (*&v91[0] >> 1) & 1, &v84);
              v79 = v48;
              if (!v48 || v48 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v49 = (v76 & 1) != 0 && (sub_103ED40(a1 + 356, &v79) & 1) == 0 && (sub_106177C((*a1 + 1896), v79, a1[371], v80, *(a1 + 2964)) & 1) != 0 ? 0 : *(a1 + 2964);
              v74 = v49;
              sub_105FAF8((*a1 + 1896), *&v91[0], v37, 1, a1[371], v80, v49, v75);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v79, &v84);
              v50 = v84;
              if (v85 == 1)
              {
                v51 = *(v84 + 8) + 12 * *(&v84 + 1);
                *v51 = v79;
                *(v51 + 8) = 0x7FFFFFFF;
              }

              v52 = *(v50 + 8) + 12 * *(&v84 + 1);
              v55 = *(v52 + 8);
              v53 = (v52 + 8);
              v54 = v55;
              if (v55 == 0x7FFFFFFF || SHIDWORD(v91[0]) < v54)
              {
                *v53 = HIDWORD(v91[0]);
              }

              v56 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v56)
              {
                v57 = 0;
                v58 = 0;
                v59 = 40 * v56;
                do
                {
                  v60 = &(*v75)[v57 / 8];
                  v61 = *(v60 + 28);
                  v62 = v61 & 0xFFFFFFFF00000000;
                  if (v61 != -1 && v62 != 0x7FFFFFFF00000000)
                  {
                    *&v84 = (v62 + *(&v91[0] + 1)) & 0xFFFFFFFF00000000 | (v61 + DWORD2(v91[0]));
                    DWORD2(v84) = v80;
                    BYTE12(v84) = v74;
                    v85 = 0uLL;
                    *&v86 = 640;
                    v88 = v58;
                    v89 = v37;
                    v90 = v77;
                    v64 = *v60;
                    v65 = *(v60 + 1);
                    v87 = *(v60 + 8);
                    v85 = v64;
                    v86 = v65;
                    v78 = *v60;
                    sub_1032738(a1, &v78, &v84);
                  }

                  ++v58;
                  v57 += 40;
                }

                while (v59 != v57);
              }
            }

            else
            {
              if ((a1[381] & 1) == 0)
              {
                sub_1043B88(a1, v91, v91 + 2, v77);
              }

              sub_F90350((*a1 + 1), *&v91[0], 1, a1 + 372, 0);
              v38 = -1431655765 * ((a1[373] - a1[372]) >> 5);
              if (v38)
              {
                v39 = 0;
                v40 = 0;
                v41 = 96 * v38;
                do
                {
                  v42 = a1[372];
                  v43 = sub_103F3F0(*a1, &v42[v39 / 8], a1[371], &v80, *(a1 + 2964));
                  v44 = v43 & 0xFFFFFFFF00000000;
                  if (v43 != -1 && v44 != 0x7FFFFFFF00000000)
                  {
                    v79 = (((4 * LODWORD(v42[v39 / 8 + 10])) | (v42[v39 / 8 + 4] << 32) | v42[v39 / 8 + 11] & 1) + ((v42[v39 / 8 + 4] >> 16) & 0xFFFF0000)) | (2 * ((v42[v39 / 8 + 4] & 0xFF000000000000) == 0));
                    v78 = (*(&v91[0] + 1) + v44) & 0xFFFFFFFF00000000 | (DWORD2(v91[0]) + v43);
                    v46 = *(a1 + 2964);
                    *&v84 = v78;
                    DWORD2(v84) = v80;
                    BYTE12(v84) = v46;
                    *&v85 = (((v42[v39 / 8 + 4] >> 16) & 0xFFFF0000 | (v42[v39 / 8 + 4] << 32) | (2 * ((v42[v39 / 8 + 4] & 0xFF000000000000) == 0))) + 4 * LODWORD(v42[v39 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | v42[v39 / 8 + 11] & 1;
                    *(&v85 + 1) = (((v42[v39 / 8 + 9] >> 16) & 0xFFFF0000 | (v42[v39 / 8 + 9] << 32) | (2 * ((v42[v39 / 8 + 9] & 0xFF000000000000) == 0))) + 4 * WORD1(v42[v39 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | (LOBYTE(v42[v39 / 8 + 11]) >> 1) & 1;
                    *&v86 = *(&v42[v39 / 8 + 10] + 4);
                    v88 = v40;
                    v89 = 0;
                    v90 = v77;
                    sub_1032738(a1, &v79, &v84);
                    sub_1043B88(a1, &v79, &v78, v77);
                  }

                  ++v40;
                  v39 += 96;
                }

                while (v41 != v39);
              }
            }

            v66 = *(a1 + 261);
            if (v66 != 0x7FFFFFFF && !*(a1 + 262) && v15 == -1)
            {
              v67 = a1[119];
              v68 = a1[120];
              if (v67 == v68)
              {
                return;
              }

              v15 = 0;
              v69 = a1[116];
              do
              {
                if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v69) > *v67)
                {
                  v70 = v69[3 * *v67 + 1];
                }

                else
                {
                  v70 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v71 = HIDWORD(v70);
                if (v15 > v70)
                {
                  LODWORD(v70) = v15;
                }

                if (v66 >= v71)
                {
                  v15 = v70;
                }

                ++v67;
              }

              while (v67 != v68);
              v72 = *(a1 + 260);
              if (v72 == -1 || v15 < v72)
              {
                *(a1 + 260) = v15;
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_1042418(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_104025C(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_10405A4(a1);
  sub_1040EB0(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_1053B80((a1 + 1056), v21, &v23);
      sub_1058D74((a1 + 1056), a10);
      sub_1059D34((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_1041B88(a1, a8, a11);
}

void sub_1042550(void *a1, uint64_t a2, unint64_t ***a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_104025C(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_1043884(a1 + 3, v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052908((a1 + 116), v22 - v21);
  }

  a1[122] = a1 + 3;
  sub_1042660(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1042660(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  *(a1 + 2960) = a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  v13 = (a1 + 1168);
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = a6;
  *(a1 + 1044) = a7;
  v14 = *(a1 + 976);
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || *(a1 + 3048) == 1)
  {
    sub_10405A4(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_1040EB0(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_1041584(a1);
    sub_1041B88(a1, &v18, a9);
  }
}

void sub_10427BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10427D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0;
  sub_10428AC(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1042898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10428AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = sub_F6BEE8(a4);
  v9 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    v11 = *v10;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          sub_F8EC88(*a1 + 8, (HIDWORD(v11) & 0xFFFE0000FFFFFFFFLL | (WORD1(v11) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v11 >> 1) & 1) << 48)) ^ 0x1000000000000, v12);
          sub_F6C100(a4, v11, v12, 0);
          sub_F6901C(a4, *(a1 + 1168) + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_1042BA8(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_10430E8(v10, *(a1 + 3880) + 40 * a2, v12);
          sub_F6E128(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F68F20(a4, *(**(a1 + 976) + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_1042A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_4547F0(v3);
  _Unwind_Resume(a1);
}

_BYTE *sub_1042AD4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  sub_1042BA8(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1042B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

void sub_1042BA8(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_F6BEE8(a4);
  if (*a2)
  {
    v33 = a2;
    v8 = 0;
    v9 = 0;
    v40 = *a2;
    do
    {
      sub_F98EF8((a1 + 150), &v40, &v34);
      v10 = a1[246] + 80 * *(*(&v35 + 1) + 8);
      v11 = &v9[-v8];
      v12 = 0x8E38E38E38E38E39 * (&v9[-v8] >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0x38E38E38E38E38ELL)
      {
        sub_1794();
      }

      if (0x1C71C71C71C71C72 * (-v8 >> 3) > v13)
      {
        v13 = 0x1C71C71C71C71C72 * (-v8 >> 3);
      }

      if (0x8E38E38E38E38E39 * (-v8 >> 3) >= 0x1C71C71C71C71C7)
      {
        v14 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (v14 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        sub_1808();
      }

      v15 = 8 * (&v9[-v8] >> 3);
      *v15 = *(v10 + 8);
      v16 = *(v10 + 24);
      v17 = *(v10 + 40);
      v18 = *(v10 + 56);
      *(v15 + 64) = *(v10 + 72);
      *(v15 + 32) = v17;
      *(v15 + 48) = v18;
      *(v15 + 16) = v16;
      v9 = (v15 + 72);
      v19 = (72 * v12 + 72 * (v11 / -72));
      memcpy((v15 + 72 * (v11 / -72)), v8, v11);
      if (v8)
      {
        operator delete(v8);
      }

      v8 = v19;
      if ((*(v10 + 72) & 0x80000000) != 0)
      {
        v40 = 0;
        if (v19 == v9)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }

      v40 = *(v10 + 32);
    }

    while (v40);
    if (v19 == v9)
    {
      goto LABEL_37;
    }

LABEL_19:
    __p[0] = 0;
    __p[1] = 0;
    v20 = v19;
    v39 = 0;
    while (!*(v20 + 15))
    {
      if (*(a3 + 24) && !sub_F69D6C(a4))
      {
        *&v34 = *(v20 + 2);
        v24 = *(a3 + 24);
        if (!v24)
        {
          sub_2B7420();
        }

        if ((*(*v24 + 48))(v24, &v34))
        {
          goto LABEL_34;
        }
      }

      v25 = *a1;
      sub_F8EC88(*a1 + 8, (HIDWORD(*(v20 + 2)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v20 + 2)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v20 + 2) >> 1) & 1) << 48)) ^ 0x1000000000000, v41);
      sub_F8EC88(v25 + 8, (HIDWORD(*(v20 + 3)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v20 + 3)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v20 + 3) >> 1) & 1) << 48)) ^ 0x1000000000000, v36 + 1);
      v26 = *(v20 + 4);
      v27 = *(v20 + 6);
      *&v36[0] = v42;
      v34 = v41[0];
      v35 = v41[1];
      LODWORD(v37[0]) = (v27 << 14) & 0x3FFF0000 | (v26 >> 2);
      *(v37 + 4) = *(v20 + 4);
      sub_F6C3B8(a4, &v34, 0);
LABEL_20:
      v20 += 72;
      if (v20 == v9)
      {
        sub_F98EF8((a1 + 150), v33, &v34);
        sub_F6901C(a4, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v35 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
        goto LABEL_35;
      }
    }

    sub_107C170((*a1 + 20648), (v20 + 16), a1[371], v20 + 2, v20[12], __p);
    v21 = __p[1];
    v22 = __p[0];
    if (__p[0] != __p[1])
    {
      while (1)
      {
        if (*(a3 + 24) && !sub_F69D6C(a4))
        {
          *&v34 = (((v22[4] >> 16) & 0xFFFF0000 | (v22[4] << 32) | (2 * ((v22[4] & 0xFF000000000000) == 0))) + 4 * *(v22 + 20)) & 0xFFFFFFFFFFFFFFFELL | v22[11] & 1;
          v23 = *(a3 + 24);
          if (!v23)
          {
            sub_2B7420();
          }

          if ((*(*v23 + 48))(v23, &v34))
          {
            break;
          }
        }

        sub_F6C3B8(a4, v22, 0);
        v22 += 12;
        if (v22 == v21)
        {
          goto LABEL_20;
        }
      }

LABEL_34:
      v28 = sub_F69058(a4);
      v29 = *(v28 + 16);
      v34 = *v28;
      v35 = v29;
      v30 = *(v28 + 32);
      v31 = *(v28 + 48);
      v32 = *(v28 + 64);
      v37[0] = *(v28 + 80);
      v36[1] = v31;
      v36[2] = v32;
      v36[0] = v30;
      LODWORD(v34) = 1000000000;
      sub_F6901C(a4, &v34);
      goto LABEL_35;
    }

    sub_F687F4(a4);
LABEL_35:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

LABEL_37:
    if (v19)
    {
      operator delete(v19);
    }
  }
}

void sub_1043070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    if (!v25)
    {
LABEL_3:
      sub_4547F0(v24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  sub_4547F0(v24);
  _Unwind_Resume(a1);
}

void sub_10430E8(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_F6BEE8(a5);
  if (*a2)
  {
    v7 = *a2;
    sub_10348A4(a3, &v7);
    operator new();
  }
}

void sub_10433B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a9);
  _Unwind_Resume(a1);
}

unint64_t sub_1043448(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, HIDWORD(v25) & 0xFFFF0000FFFFFFFFLL | (WORD1(v25) << 32), (v25 >> 1) & 1, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_1043864(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1043884(uint64_t **a1, unint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v32 = a2;
    v33 = ((v5 - *a1) >> 5);
    do
    {
      v11 = *v6 >> 1;
      v12 = *v6 >> 16;
      v13 = **a4;
      v14 = HIDWORD(*v6);
      LODWORD(v34) = HIDWORD(*v6);
      WORD2(v34) = v12;
      BYTE6(v34) = ((v14 & 0xFFFE0000FFFFFFFFLL | (v12 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((v11 & 1) << 48)) ^ 0x1000000000000) >> 48;
      if (sub_100A97C(v13 + 31336, &v34) == -1)
      {
        if (a3)
        {
          LODWORD(v34) = 0;
          sub_1053B80(a1 + 99, v6, &v34);
          sub_1059D34(a1 + 99);
        }

        sub_1055328((a1 + 3), v6, &v34);
        v15 = v34;
        if (v36 == 1)
        {
          v16 = (*(v34 + 8) + 32 * v35);
          *v16 = *v6;
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
        }

        v17 = (*(v15 + 8) + 32 * v35);
        v19 = v17[2];
        v18 = v17[3];
        if (v19 < v18)
        {
          *v19 = v33;
          v10 = v19 + 8;
        }

        else
        {
          v20 = v17[1];
          v21 = v19 - v20;
          v22 = (v19 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_1794();
          }

          v24 = a3;
          v25 = v18 - v20;
          if (v25 >> 2 > v23)
          {
            v23 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v23;
          }

          if (v26)
          {
            if (!(v26 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v27 = (v19 - v20) >> 3;
          v28 = (8 * v22);
          v29 = (8 * v22 - 8 * v27);
          *v28 = v33;
          v10 = v28 + 1;
          memcpy(v29, v20, v21);
          v17[1] = v29;
          v17[2] = v10;
          v17[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }

          a3 = v24;
        }

        v17[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = a1[1];
    a2 = v32;
  }

  if (v5 >= a1[2])
  {
    result = sub_1055A68(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v30 = a2[1];
    if (v30 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v30 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    a1[1] = v5 + 4;
  }

  a1[1] = result;
  return result;
}

void sub_1043B68(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_1043B88(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v5 = a2;
  if (*(a1 + 3048) == 1)
  {
    sub_10451B4(a1, a2);
  }

  sub_1056F4C(*(a1 + 976) + 24, v5, &v82);
  if (!v82)
  {
    return;
  }

  sub_1056F4C(*(a1 + 976) + 24, v5, &v82);
  v7 = *(a1 + 2960);
  v8 = 0x7FFFFFFF;
  if (v7 != 0x7FFFFFFF)
  {
    v9 = a3[1];
    v10 = v9 / -10;
    v11 = v9 % 10;
    if (v9 < 0)
    {
      v12 = -5;
    }

    else
    {
      v12 = 5;
    }

    v8 = v10 + v7 + (((-103 * (v12 + v11)) >> 15) & 1) + ((-103 * (v12 + v11)) >> 10);
  }

  v78 = a3;
  v80 = v8;
  v13 = *(*(&v83 + 1) + 8);
  v74 = *(*(&v83 + 1) + 16);
  if (v13 == v74)
  {
    return;
  }

  __asm { FMOV            V0.2D, #1.0 }

  v79 = _Q0;
  v75 = v5;
  while (2)
  {
    v76 = v13;
    v18 = (**(a1 + 976) + 32 * *v13);
    v19 = (v18[1] - *v18) >> 5;
    v20 = (-1431655765 * v19);
    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = 0;
    v77 = (-1431655765 * v19);
    while (2)
    {
      v22 = *v18 + 96 * v21;
      v23 = *v22;
      if (*v22 != *v5)
      {
        goto LABEL_15;
      }

      v24 = *a1;
      v25 = *(a1 + 2968);
      v26 = *(a1 + 2964);
      v27 = (v23 << 47) & 0x1000000000000;
      v28 = v23 << 16;
      if (*(*a1 + 31330) != 1)
      {
        goto LABEL_37;
      }

      v29 = 0;
      v30 = v23 & 0xFFFFFFFFFFFF0000;
      v31 = (v27 ^ 0x1000000000000uLL) >> 48;
      if (!v31)
      {
        ++v30;
      }

      for (i = (0x2127599BF4325C37 * (v30 ^ (v23 >> 23))) ^ ((0x2127599BF4325C37 * (v30 ^ (v23 >> 23))) >> 47); ; i = v29 + v34)
      {
        v34 = i & (v24[3924] - 1);
        v35 = *(v24[3926] + 8 * v34);
        if (__PAIR64__(*(*a1 + 31404), *(*a1 + 31400)) == __PAIR64__(WORD2(v35), v35) && *(*a1 + 31406) == BYTE6(v35))
        {
          goto LABEL_37;
        }

        if (!v24[3922] || __PAIR64__(*(*a1 + 31372), *(*a1 + 31368)) != __PAIR64__(WORD2(v35), v35))
        {
          break;
        }

        if (*(*a1 + 31374) != BYTE6(v35) && HIDWORD(v23) == v35)
        {
          goto LABEL_21;
        }

LABEL_25:
        ++v29;
      }

      if (HIDWORD(v23) != v35)
      {
        goto LABEL_25;
      }

LABEL_21:
      if (WORD2(v28) != WORD2(v35) || v31 != BYTE6(v35))
      {
        goto LABEL_25;
      }

      if (v34 != -1)
      {
        goto LABEL_15;
      }

LABEL_37:
      sub_F8EC88((v24 + 1), (v28 & 0xFFFF00000000 | HIDWORD(v23) | v27) ^ 0x1000000000000, v81);
      v82 = 0u;
      v83 = 0u;
      v84 = v79;
      v85 = 0x3FF0000000000000;
      v86 = 1;
      sub_10AFF14((v24 + 1217), &v82, v81, 0x3B9ACA00u, v25, &v80, v26);
      if (v86)
      {
        LODWORD(v37) = v82;
        v38 = *&v84 * v37;
        if (v38 >= 0.0)
        {
          if (v38 < 4.50359963e15)
          {
            v39 = (v38 + v38) + 1;
LABEL_43:
            v38 = (v39 >> 1);
          }
        }

        else if (v38 > -4.50359963e15)
        {
          v39 = (v38 + v38) - 1 + (((v38 + v38) - 1) >> 63);
          goto LABEL_43;
        }

        v40 = *(&v84 + 1) * SDWORD1(v82);
        if (v40 >= 0.0)
        {
          if (v40 < 4.50359963e15)
          {
            v41 = (v40 + v40) + 1;
LABEL_49:
            v40 = (v41 >> 1);
          }
        }

        else if (v40 > -4.50359963e15)
        {
          v41 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
          goto LABEL_49;
        }

        v42 = v83 + v38;
        v43 = DWORD1(v83) + v40;
        if (v42 != -1 && v43 != 0x7FFFFFFF)
        {
          v45 = *a1;
          v46 = v5;
          v47 = *(a1 + 2968);
          v48 = *(a1 + 2964);
          v49 = *v46;
          v50 = HIDWORD(*v46);
          v51 = (v49 << 47) & 0x1000000000000;
          v52 = v49 << 16;
          if (*(*a1 + 31330) == 1)
          {
            v53 = 0;
            v54 = v49 & 0xFFFFFFFFFFFF0000;
            v55 = (v51 ^ 0x1000000000000uLL) >> 48;
            if (!v55)
            {
              ++v54;
            }

            v56 = (0x2127599BF4325C37 * (v54 ^ (v49 >> 23))) ^ ((0x2127599BF4325C37 * (v54 ^ (v49 >> 23))) >> 47);
            while (2)
            {
              v58 = v56 & (v45[3924] - 1);
              v59 = *(v45[3926] + 8 * v58);
              if (__PAIR64__(*(*a1 + 31404), *(*a1 + 31400)) == __PAIR64__(WORD2(v59), v59) && *(*a1 + 31406) == BYTE6(v59))
              {
                goto LABEL_75;
              }

              if (v45[3922] && __PAIR64__(*(*a1 + 31372), *(*a1 + 31368)) == __PAIR64__(WORD2(v59), v59))
              {
                if (*(*a1 + 31374) == BYTE6(v59) || v50 != v59)
                {
                  goto LABEL_62;
                }
              }

              else if (v50 != v59)
              {
LABEL_62:
                v56 = ++v53 + v58;
                continue;
              }

              break;
            }

            if (WORD2(v52) == WORD2(v59) && v55 == BYTE6(v59))
            {
              if (v58 != -1)
              {
                goto LABEL_77;
              }

              goto LABEL_75;
            }

            goto LABEL_62;
          }

LABEL_75:
          v61 = 1000000000 - *(v22 + 8);
          sub_F8EC88((v45 + 1), (v52 & 0xFFFF00000000 | v50 | v51) ^ 0x1000000000000, v81);
          v82 = 0u;
          v83 = 0u;
          v84 = v79;
          v85 = 0x3FF0000000000000;
          v86 = 1;
          sub_10AFF14((v45 + 1217), &v82, v81, v61, v47, &v80, v48);
          if (v86 == 1)
          {
            v63 = sub_F8634C(&v82, &v84, v62);
            v64 = (v83 + v63) | ((DWORD1(v83) + HIDWORD(v63)) << 32);
          }

          else
          {
LABEL_77:
            v64 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v5 = v75;
          v20 = v77;
          v65 = v42 - v64;
          v66 = v43 - HIDWORD(v64);
          if (*v78 == v65)
          {
            if (v78[1] >= v66)
            {
LABEL_82:
              v68 = *v78;
              v67 = v78[1];
              v69 = *a1;
              v70 = *(a1 + 2968);
              v82 = 0u;
              v83 = 0u;
              v84 = v79;
              v85 = 0x3FF0000000000000;
              v86 = 1;
              sub_10AFB6C(v69 + 9736, &v82, v22, v22 + 8, v70, 1);
              if (v86)
              {
                v72 = sub_F8634C(&v82, &v84, v71);
                if (v83 + v72 != -1 && DWORD1(v83) + HIDWORD(v72) != 0x7FFFFFFF)
                {
                  *&v82 = (v68 - v65 + v83 + v72) | ((v67 - v66 + DWORD1(v83) + HIDWORD(v72)) << 32);
                  sub_1034078(a1, v75, &v82, *v76, a4, v21, 0, 0);
                }
              }
            }
          }

          else if (*v78 >= v65)
          {
            goto LABEL_82;
          }
        }
      }

LABEL_15:
      if (++v21 != v20)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v13 = v76 + 1;
    if (v76 + 1 != v74)
    {
      continue;
    }

    break;
  }
}

BOOL sub_1044288(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_1044470(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_104448C(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  sub_1043B88(a1, a2, a3, a4);
  result = sub_10449F8(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = a4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_1044BA0(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_1053B80((a1 + 816), v23, v38);
                sub_1059D34((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || (v19 + a3[1]) <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_1044F78(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_1053B80((a1 + 816), v35, &v37);
                    sub_1059D34((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F50[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F50[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674F68[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_1034078(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 4364);
  }

  return result;
}

void sub_1044818(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1044854(uint64_t a1, unint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v12 = a3[50];
    do
    {
      v13 = *(a1 + 8);
      v14 = *a2;
      v15 = *a2 >> 16;
      LODWORD(v23) = v6;
      if (sub_101F374(*v13, HIDWORD(v14) & 0xFFFF0000FFFFFFFFLL | (v15 << 32), &v23))
      {
        v16 = *(a1 + 8);
        v17 = *a2;
        v18 = *a2 >> 16;
        v24 = v6;
        v19 = sub_101F854(*v16, HIDWORD(v17) & 0xFFFF0000FFFFFFFFLL | (v18 << 32), (v17 >> 1) & 1, &v24);
        v23 = v19;
        if (v19)
        {
          v20 = v19 >= 0xFFFFFFFF00000000;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          v21 = *(a1 + 20);
          if (v21 != -1 && v6 == v21)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (sub_10550EC(a1 + 1064, &v23) == -1 && sub_10550EC(*(a1 + 976) + 800, &v23) == -1 && (v6 <= v12 || (sub_106177C(*a1 + 15168, v23, a3, *a4, a5) & 1) == 0))
        {
          if (*(a1 + 3048) == 1 && v6 < *(*(a1 + 3032) + 4360))
          {
            return 0;
          }

          if (*(*a1 + 31329) != 1 || !sub_106177C(*a1 + 15168, v23, a3, *a4, a5))
          {
            return v6;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v6);
  }

  return v6;
}

void *sub_10449F8(uint64_t a1, unint64_t a2)
{
  LODWORD(v26[0]) = *(a1 + 4360);
  v28 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 >> 1) & 1, v26);
  v4 = HIDWORD(v28);
  if (v28)
  {
    v5 = v4 == 0xFFFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v26[0] = 0;
  v26[1] = 0;
  v6 = sub_1059F84(*(a1 + 32), v28, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return 0;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return 0;
  }

  v9 = &v6[v8 + *&v6[v8]];
  if (*v9 <= v4)
  {
    return 0;
  }

  v10 = &v9[4 * v4 + 4 + *&v9[4 * v4 + 4]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return 0;
  }

  v12 = *(v11 + 5);
  if (!v12)
  {
    return 0;
  }

  v13 = &v10[v12 + *&v10[v12]];
  v16 = *v13;
  v14 = v13 + 4;
  v15 = v16;
  v17 = &v14[v16];
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    do
    {
      v19 = (v18 + ((4 * v15) & 0x7FFFFFFF8));
      v21 = *v19;
      v20 = v19 + 1;
      v22 = v15 >> 1;
      v15 += ~(v15 >> 1);
      if (v21 >= a2)
      {
        v15 = v22;
      }

      else
      {
        v18 = v20;
      }
    }

    while (v15);
  }

  if (v18 == v17)
  {
    return 0;
  }

  if (*v18 != a2)
  {
    return 0;
  }

  v27 = (v18 - v14) >> 3;
  if (v27 == 0xFFFF)
  {
    return 0;
  }

  v23 = *(a1 + 8);
  v24 = (a1 + 4440);
  sub_1058664(v23, &v28, &v27, v24);
  return v24;
}

uint64_t sub_1044BA0(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 4392));
  sub_1015D8C(v7 + 40, (v7 + 4392), *(v7 + 4368), 0, &__p);
  v44 = a1;
  sub_1043884(a1 + 3, &__p, 0, &v44);
  v4 = (v6 - v5) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = (v20 + 1);
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = (v10 + 8);
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1052CA0((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = 0;
      *(v29 + 8) = xmmword_2297C80;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = 0;
      *(v37 + 8) = xmmword_2297C80;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_1044F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1044F78@<D0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 4385) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[(v17 >> 32) + 1] + v20[(v17 >> 32) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 7)
  {
    v12 = v9[3];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_105A56C(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

void sub_10451B4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[379];
  v5 = *a2;
  sub_1057E78(v2[1], &v5, v2 + 552);
  v3 = v2[552];
  v4 = v2[553];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_104527C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 224;
  *(a1 + 16) = -1;
  sub_1045600(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_1045550(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1045600(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = &unk_2290750;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2290750;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_2290750;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = &unk_2290750;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &unk_2290750;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = &unk_2290750;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = &unk_2290750;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = &unk_2290750;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = &unk_2290750;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = &unk_2290750;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = &unk_2290750;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 552) = &unk_2290750;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 600) = &unk_2290750;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 648) = &unk_2290750;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 696) = &unk_2290750;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 744) = &unk_2290750;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  sub_101E350(a1 + 792, (a2 + 224));
  return a1;
}

void sub_1045728(_Unwind_Exception *a1)
{
  sub_4821F8(v2);
  sub_39393C(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_10457EC(int32x2_t *a1, int32x2_t *a2, unint64_t **a3, uint64_t a4, int *a5, char a6, int a7, int a8, unsigned int a9)
{
  v37 = a8;
  sub_1045D94(a1);
  if (*a2 == *&a2[1])
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_42;
    }

    sub_19594F8(&__t.__d_.__rep_);
    sub_4A5C(&__t, "p2p_query called with empty origin terminal", 43);
    if ((v36 & 0x10) != 0)
    {
      v20 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v20 = v32;
      }

      v21 = v31;
      v19 = v20 - v31;
      if (v20 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v19 = 0;
        v25 = 0;
LABEL_37:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 1u);
        if (v25 < 0)
        {
          operator delete(__dst);
        }

        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_42;
      }

      v21 = v29;
      v19 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v25 = v19;
    if (!v19)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*a3 == a3[1])
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__t.__d_.__rep_);
      sub_4A5C(&__t, "p2p_query called with empty destination terminal", 48);
      if ((v36 & 0x10) != 0)
      {
        v22 = v35;
        if (v35 < v32)
        {
          v35 = v32;
          v22 = v32;
        }

        v21 = v31;
        v19 = v22 - v31;
        if (v22 - v31 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v36 & 8) == 0)
        {
          v19 = 0;
          v25 = 0;
          goto LABEL_37;
        }

        v21 = v29;
        v19 = v30 - v29;
        if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_45:
          sub_3244();
        }
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      v25 = v19;
      if (!v19)
      {
        goto LABEL_37;
      }

LABEL_36:
      memmove(&__dst, v21, v19);
      goto LABEL_37;
    }

LABEL_42:
    v17 = 0x7FFFFFFF00000000;
    v18 = 0xFFFFFFFFLL;
    return v18 | v17;
  }

  v16 = *a5;
  if (*a5 == 0x7FFFFFFF)
  {
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v16 = std::chrono::system_clock::to_time_t(&__t);
  }

  a1[370].i32[0] = v16;
  a1[370].i8[4] = a6;
  a1[371] = a4;
  a1[130].i32[0] = a7;
  if (&a1[146] != a2)
  {
    sub_C70E60(&a1[146], *a2, *&a2[1], 0xAAAAAAAAAAAAAAABLL * ((*&a2[1] - *a2) >> 5));
  }

  a1[149] = a2[3];
  __t.__d_.__rep_ = a1;
  sub_104A234(&a1[3], a3, 1, &__t);
  a1[122] = &a1[3];
  if (!(*&a1[14] + *&a1[8] + *&a1[20] + *&a1[26] + *&a1[32] + *&a1[38] + *&a1[44] + *&a1[50] + *&a1[56] + *&a1[62] + *&a1[68] + *&a1[74] + *&a1[80] + *&a1[86] + *&a1[92] + *&a1[98]))
  {
    goto LABEL_42;
  }

  sub_10460DC(a1);
  __t.__d_.__rep_ = 0;
  rep = 0;
  v28.__locale_ = 0;
  sub_1046ABC(a1, &__t);
  if (__t.__d_.__rep_)
  {
    rep = __t.__d_.__rep_;
    operator delete(__t.__d_.__rep_);
  }

  sub_10470D0(a1);
  sub_104772C(a1, &v37, a9);
  v18 = *(*&a1[116] + 8);
  v17 = v18 & 0xFFFFFFFF00000000;
  v18 = v18;
  return v18 | v17;
}

void sub_1045D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

double sub_1045D94(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F98[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_10460DC(int32x2_t *a1)
{
  v84 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v2 = *a1;
  v3 = *(*a1 + 1536);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 8 * v3;
  v5 = *(*a1 + 1552);
  while (1)
  {
    v6 = *(v5 + 4);
    if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v6)
    {
      if (!*(*&v2 + 1520))
      {
        break;
      }

      if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v6)
      {
        break;
      }
    }

    v5 += 8;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  v9 = *(*a1 + 1552) + 8 * v3;
  if (v5 == v9)
  {
LABEL_14:
    v10 = *(*&v2 + 1792);
    v11 = *(*&v2 + 1696);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_87:
    v13 = v10;
    goto LABEL_88;
  }

  v15 = 0;
  v16 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v78 = _Q0;
  do
  {
    v21 = HIDWORD(*v5) & 0x40000000;
    v22 = *v5 < 0 && v21 == 0;
    v23 = (*v5 >> 33) & 0x10000000 | HIDWORD(*v5) & 0xFFFFFFF;
    if (v22)
    {
      v24 = 0x40000000;
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v80) = *v5;
    HIDWORD(v80) = v23 | (v21 >> 1) | v24;
    if (v84 && ((v25 = *a1, v26 = a1[371], sub_F92868((*a1 + 8), *v5, v85), v86 = 0u, v87 = 0u, v88 = v78, v89 = 0x3FF0000000000000, v90 = 1, sub_10B9C08((*&v25 + 192), &v86, v85, 0x3B9ACA00u, v26), (v90 & 1) == 0) || (v28 = sub_F8634C(&v86, &v88, v27), v87 + v28 == -1) || DWORD1(v87) + HIDWORD(v28) == 0x7FFFFFFF || *(&v87 + 1) + v29 == 0x7FFFFFFFFFFFFFFFLL))
    {
      __src = v16;
      v30 = sub_101E508(*&a1[1]);
      if (v30 - 1 <= v84 || (v31 = *a1, v32 = a1[371], v33 = a1[370].i8[4], LODWORD(v86) = v30 - 1, v34 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86), (sub_1063C18(*&v31 + 240, v34, v32, a1[370].i32[0], v33) & 1) != 0) || (LODWORD(v86) = v30 - 1, v35 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86), (sub_1063C18(*&v31 + 240, v35, v32, a1[370].i32[0], v33) & 1) != 0))
      {
        sub_101F030(&a1[132], &v80, &v84);
        sub_105B98C(a1 + 132);
        LODWORD(v86) = v84 - 1;
        sub_101F030(&a1[356], &v80, &v86);
        sub_105B98C(a1 + 356);
        v36 = a1[1];
        LODWORD(v86) = v84;
        v37 = sub_101F854(*v36, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86);
        v16 = __src;
        if (__src == v15 || v15[-1].i64[1] != v37)
        {
          if (v15 >= v83)
          {
            v38 = v15 - __src;
            v39 = (v15 - __src) >> 3;
            v40 = v39 + 1;
            if ((v39 + 1) >> 61)
            {
              sub_1794();
            }

            v41 = v83 - __src;
            if ((v83 - __src) >> 2 > v40)
            {
              v40 = v41 >> 2;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFF8)
            {
              v42 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v40;
            }

            if (v42)
            {
              if (!(v42 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v39) = v37;
            v15 = (8 * v39 + 8);
            memcpy(0, __src, v38);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v37;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }

        v43 = a1[1];
        LODWORD(v86) = v84;
        v44 = sub_101F854(*v43, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86);
        if (v15[-1].i64[1] != v44)
        {
          if (v15 >= v83)
          {
            v45 = v15 - v16;
            v46 = (v15 - v16) >> 3;
            v47 = v46 + 1;
            if ((v46 + 1) >> 61)
            {
              sub_1794();
            }

            v48 = v83 - v16;
            if ((v83 - v16) >> 2 > v47)
            {
              v47 = v48 >> 2;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (!(v49 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v46) = v44;
            v15 = (8 * v46 + 8);
            memcpy(0, v16, v45);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v44;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }
      }

      else
      {
        LODWORD(v86) = v30 - 2;
        sub_101F030(&a1[356], &v80, &v86);
        v16 = __src;
        sub_105B98C(a1 + 356);
      }
    }

    else
    {
      LODWORD(v86) = 0;
      sub_101F030(&a1[132], &v80, &v86);
      sub_105B98C(a1 + 132);
    }

    for (v5 += 8; v5 != v9; v5 += 8)
    {
      v50 = *(v5 + 4);
      if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v50)
      {
        if (!*(*&v2 + 1520))
        {
          break;
        }

        if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v50)
        {
          break;
        }
      }
    }
  }

  while (v5 != v9);
  v2 = *a1;
  v10 = *(*a1 + 1792);
  v11 = *(*a1 + 1696);
  if (!v11)
  {
    goto LABEL_87;
  }

LABEL_15:
  v12 = 88 * v11;
  v13 = v10;
  while (1)
  {
    v14 = v13[4];
    if ((*(*&v2 + 1736) != v14 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v14 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
    {
      break;
    }

    v13 += 11;
    v12 -= 88;
    if (!v12)
    {
      goto LABEL_114;
    }
  }

LABEL_88:
  v53 = &v10[11 * v11];
  if (v13 != v53)
  {
    do
    {
      v54 = v13[4];
      v55 = HIDWORD(v54) & 0x40000000;
      if (v54 < 0 && v55 == 0)
      {
        v57 = 0x40000000;
      }

      else
      {
        v57 = 0;
      }

      *&v86 = v13[4] | (((v13[10] >> 25) & 0x80000000 | HIDWORD(v54) & 0xFFFFFFF | (v54 >> 33) & 0x10000000 | (v55 >> 1) | v57) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      v58 = v13[9];
      v59 = HIDWORD(v58) & 0x40000000;
      if (v58 < 0 && v59 == 0)
      {
        v61 = 0x40000000;
      }

      else
      {
        v61 = 0;
      }

      *&v86 = v13[9] | (((v13[10] >> 26) & 0x80000000 | HIDWORD(v58) & 0xFFFFFFF | (v58 >> 33) & 0x10000000 | (v59 >> 1) | v61) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      for (v13 += 11; v13 != v53; v13 += 11)
      {
        v62 = v13[4];
        if ((*(*&v2 + 1736) != v62 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v62 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
        {
          break;
        }
      }
    }

    while (v13 != v53);
    v2 = *a1;
  }

LABEL_114:
  for (i = *(sub_F931AC(*&v2 + 8) + 16); i; i = *i)
  {
    v64 = i[2];
    v65 = HIDWORD(v64) & 0x40000000;
    if (v64 < 0 && v65 == 0)
    {
      v67 = 0x40000000;
    }

    else
    {
      v67 = 0;
    }

    LODWORD(v86) = i[2];
    DWORD1(v86) = (v64 >> 33) & 0x10000000 | HIDWORD(v64) & 0xFFFFFFF | (v65 >> 1) | v67;
    LODWORD(v85[0]) = 0;
    sub_101F030(&a1[132], &v86, v85);
    sub_105B98C(a1 + 132);
  }

  v69 = __p;
  v68 = v82;
  v70 = 126 - 2 * __clz((v82 - __p) >> 3);
  if (v82 == __p)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70;
  }

  sub_2D31D4(__p, v82, &v86, v71, 1);
  if (v68 == v69)
  {
LABEL_143:
    if (v69 != v68)
    {
      v82 = v69;
    }
  }

  else
  {
    v72 = &v69[-1].i32[2];
    while (v72 + 4 != v68)
    {
      v73 = v72[2];
      v72 += 2;
      LODWORD(v74) = v72[2];
      if (v73 == v74 && v72[1] == v72[3])
      {
        v76 = (v72 + 4);
        if (v72 + 4 != v68)
        {
          do
          {
            if (v74 != v76->i32[0] || v72[1] != v76->i32[1])
            {
              v74 = v76->i64[0];
              *(v72 + 1) = v76->i64[0];
              v72 += 2;
            }

            v76 = (v76 + 8);
          }

          while (v76 != v68);
          v68 = v82;
        }

        v69 = (v72 + 2);
        goto LABEL_143;
      }
    }
  }

  sub_10625E0(*a1 + 240, &__p, *&a1[371], a1[370].i32[0], a1[370].u8[4], 4u);
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }
}

void sub_1046A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    v16 = a1;
    operator delete(__p);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_1046ABC(uint64_t **a1, void *a2)
{
  v2 = a1[147];
  v3 = a1[146];
  v66 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v66 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v62 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v68 = _Q0;
    do
    {
      v10 = &a1[146][12 * v5];
      v11 = *a1;
      v12 = **a1;
      if (*(v12 + 7774) == 1)
      {
        v14 = *v10;
        v13 = v10[1];
        v15 = sub_2AF704(v12 + 3896, *v10, 1);
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          goto LABEL_4;
        }

        v17 = *(v16 + 2);
        if (!v17 || *&v15[v17 + *&v15[v17]] <= (v13 & 0xFFFFFFF) || !sub_2B817C(v12, v14 & 0xF0000000FFFFFFFFLL | ((v13 & 0xFFFFFFF) << 32)))
        {
          goto LABEL_4;
        }

        v11 = *a1;
      }

      v18 = a1[371];
      v72 = 0u;
      v73 = 0u;
      v74 = v68;
      v75 = 0x3FF0000000000000;
      LOBYTE(v76) = 1;
      sub_10B9770(v11 + 24, &v72, v10, (v10 + 2), v18, 1, 1);
      if (v76)
      {
        v20 = sub_F8634C(&v72, &v74, v19);
        v65 = v73 + v20;
        if (v73 + v20 != -1)
        {
          v64 = DWORD1(v73) + HIDWORD(v20);
          if (DWORD1(v73) + HIDWORD(v20) != 0x7FFFFFFF)
          {
            v21 = v10[2];
            sub_F92948(*a1 + 8, *v10, 0, a1 + 372);
            v22 = -1171354717 * ((a1[373] - a1[372]) >> 3);
            if (v22)
            {
              v23 = 0;
              v24 = 0;
              v67 = 1000000000 - v21;
              v25 = 88 * v22;
              while (2)
              {
                v26 = a1[372];
                v27 = *(a1 + 740);
                v28 = *a1;
                v29 = a1[371];
                v30 = *(a1 + 2964);
                if (*(*a1 + 1474) == 1)
                {
                  if (sub_100A224(v28 + 195, &v26[v23 / 8]) != -1)
                  {
                    goto LABEL_17;
                  }

                  v31 = v26[v23 / 8 + 4];
                  v32 = HIDWORD(v31) & 0x40000000;
                  _ZF = v31 < 0 && v32 == 0;
                  v34 = _ZF ? 0x40000000 : 0;
                  *&v72 = v31 | ((HIDWORD(v31) & 0x6FFFFFFF | (((v34 | (v32 >> 1)) == 0x40000000) << 31)) << 32);
                  if (sub_100B6E4((v28 + 185), &v72) != -1)
                  {
                    goto LABEL_17;
                  }
                }

                v72 = 0u;
                v73 = 0u;
                v74 = v68;
                v75 = 0x3FF0000000000000;
                LOBYTE(v76) = 1;
                sub_10BC914(v28 + 24, &v72, &v26[v23 / 8], v67, v29, v27, v30);
                if ((v76 & 1) == 0)
                {
                  goto LABEL_17;
                }

                v36 = sub_F8634C(&v72, &v74, v35);
                if (v73 + v36 == -1 || DWORD1(v73) + HIDWORD(v36) == 0x7FFFFFFF)
                {
                  goto LABEL_17;
                }

                v37 = &v26[v23 / 8];
                v38 = (DWORD1(v73) + HIDWORD(v36) + v64);
                v39 = *(a1 + 2964);
                *&v72 = (v73 + v36 + v65) | (v38 << 32);
                DWORD2(v72) = v27;
                BYTE12(v72) = v39;
                v40 = v26[v23 / 8 + 4];
                v41 = HIDWORD(v40) & 0x40000000;
                if (v40 < 0 && v41 == 0)
                {
                  v43 = 0x40000000;
                }

                else
                {
                  v43 = 0;
                }

                *&v73 = v26[v23 / 8 + 4] | (((v26[v23 / 8 + 10] >> 25) & 0x80000000 | HIDWORD(v40) & 0xFFFFFFF | (v40 >> 33) & 0x10000000 | (v41 >> 1) | v43) << 32);
                v44 = v37[9];
                v45 = HIDWORD(v44) & 0x40000000;
                if (v44 < 0 && v45 == 0)
                {
                  v47 = 0x40000000;
                }

                else
                {
                  v47 = 0;
                }

                *(&v73 + 1) = v37[9] | (((v37[10] >> 26) & 0x80000000 | HIDWORD(v44) & 0xFFFFFFF | (v44 >> 33) & 0x10000000 | (v45 >> 1) | v47) << 32);
                *&v74 = v37[10];
                v76 = v24;
                v77 = 0;
                v78 = v5 | 0x80000000;
                v48 = v37[9];
                v49 = HIDWORD(v48) & 0x40000000;
                if (v48 < 0 && v49 == 0)
                {
                  v51 = 0x40000000;
                }

                else
                {
                  v51 = 0;
                }

                v69 = v37[9] | ((HIDWORD(v48) & 0xFFFFFFF | (v37[10] >> 26) & 0x80000000 | (v48 >> 33) & 0x10000000 | (v49 >> 1) | v51) << 32);
                v52 = *(a1 + 261);
                if (v52 == 0x7FFFFFFF)
                {
LABEL_60:
                  sub_104C048((a1 + 150), &v69, &v72);
                  v57 = v37[9];
                  v58 = HIDWORD(v57) & 0x40000000;
                  if (v57 < 0 && v58 == 0)
                  {
                    v60 = 0x40000000;
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v70[0] = (v37[9] | ((HIDWORD(v57) & 0xFFFFFFF | (v37[10] >> 26) & 0x80000000 | (v57 >> 33) & 0x10000000 | (v58 >> 1) | v60) << 32));
                  LODWORD(v69) = 0;
                  sub_101F030((a1 + 132), v70, &v69);
                  sub_105A9CC(a1 + 132, a2);
                  sub_105B98C(a1 + 132);
LABEL_17:
                  ++v24;
                  v23 += 88;
                  if (v25 == v23)
                  {
                    goto LABEL_4;
                  }

                  continue;
                }

                break;
              }

              sub_105A854((a1 + 150), &v69, v70);
              if (v70[0])
              {
                sub_105A854((a1 + 150), &v69, v70);
                v53 = a1[246][10 * *(v71 + 8) + 1];
                if (v72 == v53)
                {
                  if (SDWORD1(v72) >= SHIDWORD(v53))
                  {
                    goto LABEL_60;
                  }
                }

                else if (v72 >= v53)
                {
                  goto LABEL_60;
                }

                sub_105A854((a1 + 150), &v69, v70);
                v54 = HIDWORD(a1[246][10 * *(v71 + 8) + 1]);
                v55 = *(a1 + 261);
                if (v55 >= v54 && v38 > v52)
                {
                  v56 = -1;
LABEL_59:
                  *(a1 + 262) += v56;
                  goto LABEL_60;
                }

                if (v55 >= v54)
                {
                  goto LABEL_60;
                }
              }

              if (v38 > v52)
              {
                goto LABEL_60;
              }

              v56 = 1;
              goto LABEL_59;
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v66);
  }
}

void sub_10470D0(uint64_t result)
{
  v52 = -1431655765 * ((*(result + 1176) - *(result + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v61 = _Q0;
    while (1)
    {
      v55 = v2;
      v6 = (*(result + 1168) + 96 * v2);
      if (*(result + 3048) == 1)
      {
        sub_104C2AC(result, v6);
      }

      sub_105C338(*(result + 976) + 24, v6, &v63);
      if (v63)
      {
        v60 = *(v6 + 2);
        v7 = *result;
        v8 = *(result + 2968);
        v63 = 0u;
        v64 = 0u;
        v65 = v61;
        v66 = 0x3FF0000000000000;
        v67 = 1;
        sub_10B9770((v7 + 192), &v63, v6, (v6 + 1), v8, 1, 1);
        if (v67)
        {
          v10 = sub_F8634C(&v63, &v65, v9);
          v54 = v64 + v10;
          if (v64 + v10 != -1)
          {
            v53 = DWORD1(v64) + HIDWORD(v10);
            if (DWORD1(v64) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v55 + 1;
      if (v55 + 1 == v52)
      {
        return;
      }
    }

    sub_105C338(*(result + 976) + 24, v6, &v63);
    v12 = *(*(&v64 + 1) + 8);
    v11 = *(*(&v64 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v59 = v12;
      v13 = (**(result + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v59 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = (*v13 + 96 * v15);
      if (*v16 != *v6)
      {
        goto LABEL_15;
      }

      if (v16[1] != *(v6 + 1))
      {
        goto LABEL_15;
      }

      v17 = v16[2];
      v18 = *result;
      v19 = *(result + 2968);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9770((v18 + 192), &v63, v16, (v16 + 2), v19, 1, 1);
      if ((v67 & 1) == 0)
      {
        goto LABEL_15;
      }

      LODWORD(v20) = v63;
      v21 = *&v65 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v65 + 1) * SDWORD1(v63);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      if (v64 + v21 == -1 || DWORD1(v64) + v23 == 0x7FFFFFFF || v17 < v60)
      {
        goto LABEL_15;
      }

      v57 = DWORD1(v64) + v23;
      v58 = v64 + v21;
      v27 = *result;
      v28 = *(result + 2968);
      if (*(*result + 1474) == 1)
      {
        v29 = *v6;
        v30 = *(v6 + 1) & 0xFFFFFFF | (((*(v6 + 1) >> 28) & 3) << 29) | (((*(v6 + 1) & 0x60000000) == 0x40000000) << 31);
        v31 = *(v27 + 1536) - 1;
        v32 = 0x2127599BF4325C37 * (((v30 >> 29) & 2 | (v30 >> 31) | (v30 >> 27) & 4 | (v29 << 32) | (8 * (v30 & 0xFFFFFFF))) ^ (((v29 << 32) | (8 * (v30 & 0xFFFFFFF))) >> 23));
        v33 = *(v27 + 1552);
        v34 = *(v27 + 1544);
        v35 = *(v27 + 1548);
        v36 = (v32 ^ (v32 >> 47)) & v31;
        v38 = *(v33 + 8 * v36);
        v37 = *(v33 + 8 * v36 + 4);
        if (v34 != v38 || v35 != v37)
        {
          if (*(v27 + 1520))
          {
            v40 = 1;
            while (*(v27 + 1512) == v38 && *(v27 + 1516) == v37 || v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v40) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v40;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          else
          {
            v42 = 1;
            while (v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v42) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v42;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          if (v36 != -1)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_63:
      sub_F92868((v27 + 8), *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v62);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9C08((v27 + 192), &v63, v62, v17 - v60, v28);
      if (v67)
      {
        LODWORD(v44) = v63;
        v45 = *&v65 * v44;
        if (v45 >= 0.0)
        {
          if (v45 < 4.50359963e15)
          {
            v46 = (v45 + v45) + 1;
LABEL_69:
            v45 = (v46 >> 1);
          }
        }

        else if (v45 > -4.50359963e15)
        {
          v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
          goto LABEL_69;
        }

        v47 = *(&v65 + 1) * SDWORD1(v63);
        if (v47 >= 0.0)
        {
          if (v47 < 4.50359963e15)
          {
            v48 = (v47 + v47) + 1;
LABEL_75:
            v47 = (v48 >> 1);
          }
        }

        else if (v47 > -4.50359963e15)
        {
          v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
          goto LABEL_75;
        }

        v49 = v64 + v45;
        v50 = DWORD1(v64) + v47;
        if (v49 != -1 && v50 != 0x7FFFFFFF)
        {
          LODWORD(v63) = v58 + v54 + v49;
          DWORD1(v63) = v57 + v53 + v50;
          sub_104BD90(result, v6, &v63, *v59, v55, v15, 1, 0);
        }
      }

LABEL_15:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_104772C(void ***a1, unsigned int *a2, unsigned int a3)
{
  if (*(*a1 + 1472) == 1 && sub_6EECC())
  {
    v6 = sub_101E508(a1[1]) - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 != -1)
  {
    v6 = v7;
  }

  v86 = v6;
  v87 = v6;
  if (*(a1 + 518))
  {
    v81 = (a1 + 375);
    v8 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v9 = &a1[246][10 * *a1[253]];
      v95[0] = *v9;
      v10 = v9[3];
      v11 = v9[4];
      v12 = v9[2];
      v95[1] = v9[1];
      v95[3] = v10;
      v96 = v11;
      v95[2] = v12;
      sub_1032874((a1 + 150));
      v13 = **a1;
      if (*(v13 + 7774) == 1)
      {
        v14 = LODWORD(v95[0]);
        v15 = DWORD1(v95[0]);
        if ((v16 = sub_2AF704(v13 + 3896, v95[0], 1)) == 0)
        {
          continue;
        }

        v17 = &v16[-*v16];
        if (*v17 < 5u || (v18 = *(v17 + 2)) == 0 || *&v16[v18 + *&v16[v18]] <= (v15 & 0xFFFFFFFu) || !sub_2B817C(v13, v14 & 0xF0000000FFFFFFFFLL | ((v15 & 0xFFFFFFF) << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, LODWORD(v95[0]) | ((DWORD1(v95[0]) & 0xFFFFFFF) << 32)))
      {
        v19 = DWORD2(v96);
        v20 = *(a1 + 260);
        if (v20 != -1 && DWORD2(v95[0]) > v20 || *(a1 + 3048) == 1 && sub_104A7B0(a1, v95 + 2))
        {
          return;
        }

        v21 = *(a1 + 261);
        if (v21 != 0x7FFFFFFF && SHIDWORD(v95[0]) <= v21)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v22 = a1[1], LODWORD(v88) = *(a1 + 756), !sub_101F374(*v22, *&v95[0] & 0xFFFFFFFFFFFFFFFLL, &v88)))
        {
          v80 = v19 & 0x7FFFFFFF;
          v85 = sub_104A9B4(a1, v95, v95 + 2, v19 & 0x7FFFFFFF);
          v23 = *(a1 + 740);
          v24 = 0x7FFFFFFF;
          if (v23 != 0x7FFFFFFF)
          {
            if (v95[0] < 0)
            {
              v25 = -5;
            }

            else
            {
              v25 = 5;
            }

            v24 = SHIDWORD(v95[0]) / 10 + v23 + (((103 * (v25 + SHIDWORD(v95[0]) % 10)) >> 15) & 1) + ((103 * (v25 + SHIDWORD(v95[0]) % 10)) >> 10);
          }

          v84 = v24;
          v26 = sub_394BD0();
          v27 = &v87;
          if (v26)
          {
            v27 = &v86;
          }

          v28 = *v27 >= v85 ? &v85 : v27;
          v29 = sub_104AD7C(a1, v95, a1[371], &v84, *(a1 + 2964), v28);
          v30 = v29;
          if (v29 != -1)
          {
            if (v29)
            {
              v53 = a1[1];
              LODWORD(v88) = v29;
              v54 = sub_101F854(*v53, *&v95[0] & 0xFFFFFFFFFFFFFFFLL, (*&v95[0] & 0x1000000000000000) == 0, &v88);
              v83 = v54;
              if (!v54)
              {
                continue;
              }

              if (v54 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v79 = *(a1 + 2964);
              sub_1061D68((*a1 + 30), *&v95[0], v30, 0, a1[371], v84, v79, v81);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v83, &v88);
              v55 = v88;
              if (v89 == 1)
              {
                v56 = *(v88 + 8) + 12 * *(&v88 + 1);
                *v56 = v83;
                *(v56 + 8) = 0x7FFFFFFF;
              }

              v57 = *(v55 + 8) + 12 * *(&v88 + 1);
              v60 = *(v57 + 8);
              v58 = (v57 + 8);
              v59 = v60;
              if (v60 == 0x7FFFFFFF || SHIDWORD(v95[0]) < v59)
              {
                *v58 = HIDWORD(v95[0]);
              }

              v61 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v61)
              {
                v62 = 0;
                v63 = 0;
                v64 = 40 * v61;
                do
                {
                  v65 = *v81 + v62;
                  v66 = *(v65 + 28);
                  v67 = v66 & 0xFFFFFFFF00000000;
                  if (v66 != -1 && v67 != 0x7FFFFFFF00000000)
                  {
                    *&v88 = (v67 + *(&v95[0] + 1)) & 0xFFFFFFFF00000000 | (v66 + DWORD2(v95[0]));
                    DWORD2(v88) = v84;
                    BYTE12(v88) = v79;
                    *&v90 = 0;
                    v89 = 0uLL;
                    v92 = v63;
                    v93 = v30;
                    v94 = v80;
                    v69 = *(v65 + 8);
                    v70 = *(v65 + 1);
                    v89 = *v65;
                    v90 = v70;
                    v91 = v69;
                    v82 = *(v65 + 1);
                    sub_104A674(a1, &v82, &v88);
                  }

                  ++v63;
                  v62 += 40;
                }

                while (v64 != v62);
              }
            }

            else
            {
              if ((a1[381] & 1) == 0)
              {
                sub_104AED8(a1, v95, v95 + 2, v80);
              }

              sub_F92948(*a1 + 8, *&v95[0], 0, a1 + 372);
              v31 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v31)
              {
                v32 = 0;
                v33 = 0;
                v34 = 88 * v31;
                do
                {
                  v35 = a1[372];
                  v36 = sub_104B508(*a1, &v35[v32 / 8], a1[371], &v84, *(a1 + 2964));
                  v37 = v36 & 0xFFFFFFFF00000000;
                  if (v36 != -1 && v37 != 0x7FFFFFFF00000000)
                  {
                    v39 = &v35[v32 / 8];
                    v40 = v35[v32 / 8 + 9];
                    v41 = HIDWORD(v40) & 0x40000000;
                    if (v40 < 0 && v41 == 0)
                    {
                      v43 = 0x40000000;
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v83 = v35[v32 / 8 + 9] | ((HIDWORD(v40) & 0xFFFFFFF | (v35[v32 / 8 + 10] >> 26) & 0x80000000 | (v40 >> 33) & 0x10000000 | (v41 >> 1) | v43) << 32);
                    v44 = *(a1 + 2964);
                    *&v88 = (*(&v95[0] + 1) + v37) & 0xFFFFFFFF00000000 | (DWORD2(v95[0]) + v36);
                    DWORD2(v88) = v84;
                    BYTE12(v88) = v44;
                    v45 = v39[4];
                    v46 = HIDWORD(v45) & 0x40000000;
                    if (v45 < 0 && v46 == 0)
                    {
                      v48 = 0x40000000;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    *&v89 = v39[4] | (((v39[10] >> 25) & 0x80000000 | HIDWORD(v45) & 0xFFFFFFF | (v45 >> 33) & 0x10000000 | (v46 >> 1) | v48) << 32);
                    v49 = v39[9];
                    v50 = HIDWORD(v49) & 0x40000000;
                    if (v49 < 0 && v50 == 0)
                    {
                      v52 = 0x40000000;
                    }

                    else
                    {
                      v52 = 0;
                    }

                    *(&v89 + 1) = v39[9] | (((v39[10] >> 26) & 0x80000000 | HIDWORD(v49) & 0xFFFFFFF | (v49 >> 33) & 0x10000000 | (v50 >> 1) | v52) << 32);
                    *&v90 = v39[10];
                    v92 = v33;
                    v93 = 0;
                    v94 = v80;
                    sub_104A674(a1, &v83, &v88);
                  }

                  ++v33;
                  v32 += 88;
                }

                while (v34 != v32);
              }
            }

            v71 = *(a1 + 261);
            if (v71 != 0x7FFFFFFF && !*(a1 + 262) && v8 == -1)
            {
              v72 = a1[119];
              v73 = a1[120];
              if (v72 == v73)
              {
                return;
              }

              v8 = 0;
              v74 = a1[116];
              do
              {
                if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v74) > *v72)
                {
                  v75 = v74[3 * *v72 + 1];
                }

                else
                {
                  v75 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v76 = HIDWORD(v75);
                if (v8 > v75)
                {
                  LODWORD(v75) = v8;
                }

                if (v71 >= v76)
                {
                  v8 = v75;
                }

                ++v72;
              }

              while (v72 != v73);
              v77 = *(a1 + 260);
              if (v77 == -1 || v8 < v77)
              {
                *(a1 + 260) = v8;
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_1047EB8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_1045D94(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_10460DC(a1);
  sub_1046ABC(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_101F030(a1 + 1056, v21, &v23);
      sub_105A9CC((a1 + 1056), a10);
      sub_105B98C((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_104772C(a1, a8, a11);
}

void sub_1047FF0(uint64_t *a1, int32x2_t *a2, unint64_t ***a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_1045D94(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_104A234((a1 + 3), v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052E94((a1 + 116), v22 - v21);
  }

  a1[122] = (a1 + 3);
  sub_1048100(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1048100(int32x2_t *a1, int32x2_t *a2, uint64_t a3, int a4, char a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  a1[370].i32[0] = a4;
  a1[370].i8[4] = a5;
  a1[371] = a3;
  v13 = &a1[146];
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *&a2[1], 0xAAAAAAAAAAAAAAABLL * ((*&a2[1] - *a2) >> 5));
  }

  a1[149] = a2[3];
  a1[130].i32[0] = a6;
  a1[130].i32[1] = a7;
  v14 = a1[122];
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || a1[381].i8[0] == 1)
  {
    sub_10460DC(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_1046ABC(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_10470D0(a1);
    sub_104772C(a1, &v18, a9);
  }
}

void sub_104825C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1048278(int32x2_t *a1, int32x2_t *a2, void *a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_1045D94(a1);
  v19 = 0xAAAAAAAAAAAAAAABLL * ((*&a1[117] - *&a1[116]) >> 3);
  v20 = (a3[1] - *a3) >> 5;
  if (v20 > v19)
  {
    sub_1052E94(&a1[116], v20 - v19);
  }

  a1[122] = a3;

  sub_1048100(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1048350(int32x2_t *a1, int32x2_t *a2, int a3, char a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, char a10)
{
  if (!*&a1[379])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v24 = sub_2D390(exception, "A BucketSearchDataProvider is required for the bucket search query", 0x42uLL);
  }

  sub_1045D94(a1);
  a1[122] = &a1[3];
  a1[381].i8[0] = 1;
  a1[381].i8[1] = a10;
  a1[381].i32[1] = a9;
  a1[384] = a1[383];
  a1[382].i32[0] = 0;
  v18 = a1[379];
  if ((*(*&v18 + 224) & 1) == 0)
  {
    v25 = __cxa_allocate_exception(0x40uLL);
    v26 = sub_2D390(v25, "The bucket search cost function has to be preprocessed.", 0x37uLL);
  }

  v19 = *(*&v18 + 204);
  v20 = *(*&v18 + 216);
  if (v19 >= a7)
  {
    v21 = a7;
  }

  else
  {
    v21 = *(*&v18 + 204);
  }

  if (a7 == -1)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  sub_1048100(a1, a2, v20, a3, a4, a5, a6, v22, a8);
}

uint64_t sub_104849C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return v3[5] & 0x3FFFFFFF;
}

void sub_1048570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10485C8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return v3[4];
}

void sub_1048698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10486F0(void *a1, unint64_t a2)
{
  v2 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v2) >> 3) <= a2 || !*(v2 + 24 * a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v9, a2);
    sub_23E08("No valid data for target id ", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return *(a1[482] + 8 * a2);
}

void sub_10487C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_104881C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  sub_10489C8(a1, 0, v3, a2);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void sub_10488E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_10488F4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  sub_10489C8(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_10489B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10489C8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_F6EB3C(a4);
  v9 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          v11 = *v10;
          sub_F92868((*a1 + 8), *v10 | ((HIDWORD(*v10) & 0xFFFFFFF | (*v10 >> 31) & 0x60000000 | (((*v10 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v12);
          sub_F69060(a4, v11, v12, 0);
          sub_F68F20(a4, a1[146] + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_1048D60(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_10493DC(v10, a1[485] + 40 * a2, v12);
          sub_F708E4(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F6901C(a4, *(*a1[122] + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_1048B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_4547F0(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1048C00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

_BYTE *sub_1048C8C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  sub_1048D60(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1048D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

void sub_1048D60(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_F6EB3C(a4);
  if (!*a2)
  {
    return;
  }

  v55 = *a2;
  if (!v55)
  {
    return;
  }

  v48 = a2;
  v49 = v6;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    sub_105A854((a1 + 150), &v55, &v58);
    v9 = a1[246] + 80 * *(*(&v59 + 1) + 8);
    v10 = v8 - v7;
    v11 = 0x8E38E38E38E38E39 * ((v8 - v7) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    if (0x1C71C71C71C71C72 * (-v7 >> 3) > v12)
    {
      v12 = 0x1C71C71C71C71C72 * (-v7 >> 3);
    }

    if (0x8E38E38E38E38E39 * (-v7 >> 3) >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      if (v13 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v14 = 8 * ((v8 - v7) >> 3);
    *v14 = *(v9 + 8);
    v15 = *(v9 + 24);
    v16 = *(v9 + 40);
    v17 = *(v9 + 56);
    *(v14 + 64) = *(v9 + 72);
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    v8 = v14 + 72;
    v18 = 72 * v11 + 72 * (v10 / -72);
    memcpy((v14 + 72 * (v10 / -72)), v7, v10);
    if (v7)
    {
      operator delete(v7);
    }

    v7 = v18;
    if ((*(v9 + 72) & 0x80000000) != 0)
    {
      break;
    }

    v55 = *(v9 + 24);
    if (!v55)
    {
      v19 = v49;
      if (v18 != v8)
      {
        goto LABEL_21;
      }

LABEL_18:
      if (v8)
      {
        goto LABEL_52;
      }

      return;
    }
  }

  v55 = 0;
  v19 = v49;
  if (v18 == v8)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (!*(a3 + 24))
  {
    v20 = v8 - 72;
    if (v8 - 72 > v18)
    {
      v21 = v18 + 72;
      do
      {
        v58 = *(v21 - 72);
        v22 = *(v21 - 56);
        v23 = *(v21 - 40);
        v24 = *(v21 - 24);
        *&v62 = *(v21 - 8);
        v61 = v24;
        v59 = v22;
        v60 = v23;
        v26 = *(v20 + 32);
        v25 = *(v20 + 48);
        v27 = *(v20 + 64);
        *(v21 - 56) = *(v20 + 16);
        *(v21 - 8) = v27;
        *(v21 - 24) = v25;
        *(v21 - 40) = v26;
        *(v21 - 72) = *v20;
        v28 = v61;
        v30 = v59;
        v29 = v60;
        *(v20 + 64) = v62;
        *(v20 + 32) = v29;
        *(v20 + 48) = v28;
        *(v20 + 16) = v30;
        *v20 = v58;
        v20 -= 72;
        v31 = v21 >= v20;
        v21 += 72;
      }

      while (!v31);
    }
  }

  v54[0] = a3;
  v54[1] = v19;
  __p = 0;
  v52 = 0;
  v53 = 0;
  while (!*(v18 + 60))
  {
    if (*(a3 + 24) && !sub_F6FDC8(v19))
    {
      *&v58 = *(v18 + 24);
      v32 = *(a3 + 24);
      if (!v32)
      {
        sub_2B7420();
      }

      if ((*(*v32 + 48))(v32, &v58))
      {
        goto LABEL_39;
      }
    }

    v33 = *a1;
    sub_F92868((*a1 + 8), *(v18 + 16) | ((HIDWORD(*(v18 + 16)) & 0xFFFFFFF | (*(v18 + 16) >> 31) & 0x60000000 | (((*(v18 + 16) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v56);
    sub_F92868((v33 + 8), *(v18 + 24) | ((HIDWORD(*(v18 + 24)) & 0xFFFFFFF | (*(v18 + 24) >> 31) & 0x60000000 | (((*(v18 + 24) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), &v60 + 1);
    *&v60 = v57;
    v58 = v56[0];
    v59 = v56[1];
    v63 = *(v18 + 32);
    sub_F6F284(v19, &v58, 0);
LABEL_27:
    v18 += 72;
    if (v18 == v8)
    {
      v34 = 1;
      if (!*(a3 + 24))
      {
        goto LABEL_45;
      }

      goto LABEL_40;
    }
  }

  sub_1080924(*a1 + 336, (v18 + 16), a1[371], (v18 + 8), *(v18 + 12), &__p);
  if (__p == v52)
  {
    sub_F6E9D8(v19);
    goto LABEL_49;
  }

  if ((sub_1049750(v54, &__p) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_39:
  v34 = 0;
  if (!*(a3 + 24))
  {
    goto LABEL_45;
  }

LABEL_40:
  v35 = sub_5FC64(v19);
  v36 = sub_445EF4(v19);
  if (v35 != v36)
  {
    v37 = v36 - 88;
    if (v36 - 88 > v35)
    {
      v38 = v35 + 88;
      do
      {
        v60 = *(v38 - 56);
        v61 = *(v38 - 40);
        v62 = *(v38 - 24);
        v63 = *(v38 - 8);
        v58 = *(v38 - 88);
        v59 = *(v38 - 72);
        v39 = *(v37 + 16);
        *(v38 - 88) = *v37;
        *(v38 - 72) = v39;
        v41 = *(v37 + 48);
        v40 = *(v37 + 64);
        v42 = *(v37 + 80);
        *(v38 - 56) = *(v37 + 32);
        *(v38 - 8) = v42;
        *(v38 - 24) = v40;
        *(v38 - 40) = v41;
        *v37 = v58;
        *(v37 + 80) = v63;
        *(v37 + 64) = v62;
        *(v37 + 48) = v61;
        *(v37 + 32) = v60;
        *(v37 + 16) = v59;
        v37 -= 88;
        v31 = v38 >= v37;
        v38 += 88;
      }

      while (!v31);
    }
  }

LABEL_45:
  if (v34)
  {
    sub_105A854((a1 + 150), v48, &v58);
    sub_F68F20(v19, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v59 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
  }

  else
  {
    v43 = sub_73F1C(v19);
    v44 = *(v43 + 16);
    v58 = *v43;
    v59 = v44;
    v45 = *(v43 + 32);
    v46 = *(v43 + 48);
    v47 = *(v43 + 64);
    v63 = *(v43 + 80);
    v61 = v46;
    v62 = v47;
    v60 = v45;
    LODWORD(v58) = 0;
    sub_F68F20(v19, &v58);
  }

LABEL_49:
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  if (v7)
  {
LABEL_52:
    operator delete(v7);
  }
}

void sub_1049364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      sub_4547F0(a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

void sub_10493DC(_DWORD *a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  sub_F6EB3C(a5);
  if (*a2)
  {
    v8 = *a2;
    if (v8)
    {
      v7 = *(a3 + 32);
      if (v7 == 2)
      {
        sub_105C628(a3, &v8);
      }

      else
      {
        if (v7 != 1)
        {
          sub_5AF20();
        }

        sub_105C7AC(*a3, &v8);
      }

      operator new();
    }
  }
}

void sub_10496B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1049750(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 24))
  {
    v4 = *a2;
    v3 = a2[1];
    if (v3 != *a2)
    {
      while (1)
      {
        if (!sub_F6FDC8(a1[1]))
        {
          v5 = *a1;
          v6 = *(v3 - 16);
          v7 = HIDWORD(v6) & 0x40000000;
          if (v6 < 0 && v7 == 0)
          {
            v9 = 0x40000000;
          }

          else
          {
            v9 = 0;
          }

          v20 = *(v3 - 16) | (((*(v3 - 8) >> 26) & 0x80000000 | HIDWORD(v6) & 0xFFFFFFF | (v6 >> 33) & 0x10000000 | (v7 >> 1) | v9) << 32);
          v10 = *(v5 + 24);
          if (!v10)
          {
            goto LABEL_30;
          }

          if ((*(*v10 + 48))(v10, &v20))
          {
            return 1;
          }
        }

        v3 -= 88;
        sub_F6F284(a1[1], v3, 0);
        if (v3 == v4)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = *a2;
  v13 = a2[1];
  if (*a2 == v13)
  {
    return 0;
  }

  while (1)
  {
    if (*(*a1 + 24) && !sub_F6FDC8(a1[1]))
    {
      v14 = *a1;
      v15 = *(v12 + 72);
      v16 = HIDWORD(v15) & 0x40000000;
      if (v15 < 0 && v16 == 0)
      {
        v18 = 0x40000000;
      }

      else
      {
        v18 = 0;
      }

      v20 = *(v12 + 72) | (((*(v12 + 80) >> 26) & 0x80000000 | HIDWORD(v15) & 0xFFFFFFF | (v15 >> 33) & 0x10000000 | (v16 >> 1) | v18) << 32);
      v19 = *(v14 + 24);
      if (!v19)
      {
LABEL_30:
        sub_2B7420();
      }

      if ((*(*v19 + 48))(v19, &v20))
      {
        break;
      }
    }

    sub_F6F284(a1[1], v12, 0);
    v12 += 88;
    if (v12 == v13)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_10499B8(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, v25 & 0xFFFFFFFFFFFFFFFLL, (v25 & 0x1000000000000000) != 0, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_1049DCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1049DEC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  sub_105A854(a1 + 1200, &v5, v6);
  if (!v6[0])
  {
    return 0;
  }

  sub_105A854(a1 + 1200, &v5, v6);
  v3 = *(a1 + 1968) + 80 * *(v6[3] + 2);
  if ((*(v3 + 72) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 24);
  }
}

unint64_t sub_1049E74(void *a1, uint64_t a2)
{
  v9 = a2;
  sub_105A854((a1 + 150), &v9, v10);
  if (!v10[0])
  {
    return 0;
  }

  sub_105A854((a1 + 150), &v9, v10);
  v3 = a1[246] + 80 * *(v10[3] + 2);
  if (!*(v3 + 68))
  {
    return *(v3 + 24) | (((*(v3 + 24) >> 31) & 0x60000000 | HIDWORD(*(v3 + 24)) & 0xFFFFFFF | (((*(v3 + 24) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
  }

  sub_1080924(*a1 + 336, (v3 + 24), a1[371], (v3 + 16), *(v3 + 20), a1 + 372);
  v4 = *(a1[373] - 56);
  v5 = HIDWORD(v4) & 0x40000000;
  if (v4 < 0 && v5 == 0)
  {
    v7 = 0x40000000;
  }

  else
  {
    v7 = 0;
  }

  return *(a1[373] - 56) | ((HIDWORD(v4) & 0x6FFFFFFF | (((v7 | (v5 >> 1)) == 0x40000000) << 31)) << 32);
}

unint64_t sub_1049F94(void *a1, unint64_t a2)
{
  v2 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v2) >> 3) <= a2)
  {
    return 0;
  }

  v3 = v2 + 24 * a2;
  if ((*(v3 + 23) & 0x40) != 0)
  {
    return 0;
  }

  else
  {
    return sub_1049E74(a1, *v3);
  }
}

uint64_t sub_1049FFC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_105A854(a1 + 1200, &v4, v5);
  if (!v5[0])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_105A854(a1 + 1200, &v4, v5);
  return *(*(a1 + 1968) + 80 * *(v5[3] + 2) + 8);
}

unint64_t sub_104A07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v15 = a2;
  sub_105A854(a1 + 1200, &v15, v16);
  v4 = v16[0];
  if (v16[0])
  {
    sub_105A854(a1 + 1200, &v14, v16);
    v4 = v16[0];
    if (v16[0])
    {
      v12 = v14;
      v13 = v15;
      sub_105A854(a1 + 1200, &v13, v16);
      v5 = *(v17 + 8);
      v6 = *(a1 + 1968);
      sub_105A854(a1 + 1200, &v12, v16);
      v7 = v13;
      if (v13)
      {
        v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
        v9 = v6 + 80 * v5 + 8;
        do
        {
          if (!v12)
          {
            break;
          }

          if (__PAIR64__(HIDWORD(v13), v7) == v12)
          {
            v4 = v13 & 0xFFFFFFFF00000000;
            v11 = v13;
            return v11 | v4;
          }

          if (*v8 == *v9)
          {
            if (*(v8 + 4) >= *(v9 + 4))
            {
              goto LABEL_12;
            }
          }

          else if (*v8 >= *v9)
          {
LABEL_12:
            if ((*(v8 + 64) & 0x80000000) != 0)
            {
              v12 = 0;
            }

            else
            {
              v12 = *(v8 + 16);
              if (v12)
              {
                sub_105A854(a1 + 1200, &v12, v16);
                v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
              }
            }

            goto LABEL_6;
          }

          if ((*(v9 + 64) & 0x80000000) != 0)
          {
            break;
          }

          v13 = *(v9 + 16);
          if (v13)
          {
            sub_105A854(a1 + 1200, &v13, v16);
            v9 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
          }

LABEL_6:
          v7 = v13;
        }

        while (v13);
      }

      v4 = 0;
    }
  }

  v11 = 0;
  return v11 | v4;
}

void *sub_104A234(uint64_t a1, unint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v27 = a2;
    v28 = ((v5 - *a1) >> 5);
    do
    {
      v11 = **a4;
      v29[0] = *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
      if (sub_100B6E4(v11 + 1480, v29) == -1)
      {
        if (a3)
        {
          LODWORD(v29[0]) = 0;
          sub_101F030(a1 + 792, v6, v29);
          sub_105B98C((a1 + 792));
        }

        sub_105BBDC(a1 + 24, v6, v29);
        v12 = v30;
        v14 = v30[2];
        v13 = v30[3];
        if (v14 < v13)
        {
          *v14 = v28;
          v10 = v14 + 8;
        }

        else
        {
          v15 = v30[1];
          v16 = v14 - v15;
          v17 = (v14 - v15) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            sub_1794();
          }

          v19 = a3;
          v20 = v13 - v15;
          if (v20 >> 2 > v18)
          {
            v18 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v18;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (v14 - v15) >> 3;
          v23 = (8 * v17);
          v24 = (8 * v17 - 8 * v22);
          *v23 = v28;
          v10 = v23 + 1;
          memcpy(v24, v15, v16);
          v12[1] = v24;
          v12[2] = v10;
          v12[3] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3 = v19;
        }

        v12[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = *(a1 + 8);
    a2 = v27;
  }

  if (v5 >= *(a1 + 16))
  {
    result = sub_1020B2C(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v25 = a2[1];
    if (v25 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v25 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    *(a1 + 8) = v5 + 4;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_104A4E8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

unint64_t sub_104A508(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (*(a1 + 1474) == 1)
  {
    *&v19 = *a2 | ((a2[1] & 0xFFFFFFF | (((a2[1] >> 28) & 3) << 29) | (((a2[1] & 0x60000000) == 0x40000000) << 31)) << 32);
    if (sub_100B6E4(a1 + 1480, &v19) != -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  sub_F92868((a1 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v18);
  v19 = 0u;
  v20 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v21 = _Q0;
  v22 = 0x3FF0000000000000;
  v23 = 1;
  sub_10B9C08((a1 + 192), &v19, v18, a3, a4);
  if (v23 != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = sub_F8634C(&v19, &v21, v15);
  return (v20 + v16) | ((DWORD1(v20) + HIDWORD(v16)) << 32);
}

uint64_t sub_104A674(uint64_t a1, unsigned int *a2, __int128 *a3)
{
  v5 = *(a1 + 1044);
  if (v5 == 0x7FFFFFFF)
  {
    return sub_104C048(a1 + 1200, a2, a3);
  }

  v6 = a3;
  v7 = *(a3 + 1);
  sub_105A854(a1 + 1200, a2, v15);
  if (!v15[0])
  {
    a3 = v6;
    if (v7 > v5)
    {
      return sub_104C048(a1 + 1200, a2, a3);
    }

    goto LABEL_19;
  }

  sub_105A854(a1 + 1200, a2, v15);
  v8 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 8);
  a3 = v6;
  if (*v6 == v8)
  {
    if (*(v6 + 1) >= SHIDWORD(v8))
    {
      return sub_104C048(a1 + 1200, a2, a3);
    }
  }

  else if (*v6 >= v8)
  {
    return sub_104C048(a1 + 1200, a2, a3);
  }

  sub_105A854(a1 + 1200, a2, v15);
  v9 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 12);
  v10 = *(a1 + 1044);
  if (v10 >= v9 && v7 > v5)
  {
    v13 = -1;
    a3 = v6;
LABEL_20:
    *(a1 + 1048) += v13;
    return sub_104C048(a1 + 1200, a2, a3);
  }

  v12 = v10 < v9 && v7 <= v5;
  a3 = v6;
  if (v12)
  {
LABEL_19:
    v13 = 1;
    goto LABEL_20;
  }

  return sub_104C048(a1 + 1200, a2, a3);
}

BOOL sub_104A7B0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}