void sub_261535F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2614959D0(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261536040(CFStringRef *a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v12 = @"<null>";
LABEL_9:
    result = CFRetain(v12);
    *a1 = result;
    return result;
  }

  Length = CFDataGetLength(atomic_load_explicit(a2, memory_order_acquire));
  if (!Length)
  {
    v12 = @"<empty>";
    goto LABEL_9;
  }

  v5 = Length;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 2 * Length);
  BytePtr = CFDataGetBytePtr(atomic_load_explicit(a2, memory_order_acquire));
  if (v5 >= 1)
  {
    v8 = BytePtr;
    do
    {
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v10 = *v8++;
      CFStringAppendFormat(explicit, 0, @"%02hhx", v10, Mutable);
      --v5;
    }

    while (v5);
  }

  *a1 = CFStringCreateCopy(v6, atomic_load_explicit(&Mutable, memory_order_acquire));
  return sub_2614959D0(&Mutable);
}

void sub_26153612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2614959D0(va);
  _Unwind_Resume(a1);
}

void *sub_261536144(void *a1, uint64_t a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = @"GS1-type-A";
        goto LABEL_15;
      case 4:
        v3 = @"GS1-type-B";
        goto LABEL_15;
      case 5:
        v3 = @"GS1-type-C";
        goto LABEL_15;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v3 = @"none";
        goto LABEL_15;
      case 1:
        v3 = @"unknown";
        goto LABEL_15;
      case 2:
        v3 = @"linked";
LABEL_15:
        result = CFRetain(v3);
        goto LABEL_16;
    }
  }

  result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%ld", a2);
LABEL_16:
  *a1 = result;
  return result;
}

void *sub_261536210(void *result, uint64_t a2)
{
  v2 = 3317042773;
  if (*(a2 + 24) == 1)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    if (*a2 != v4)
    {
      v5 = 0;
      do
      {
        v6 = *v3;
        v7 = v3[1];
        v3 += 2;
        v8 = *&v6 + 2654435769;
        if (v6 == 0.0)
        {
          v8 = 2654435769;
        }

        v9 = *&v7 + 2654435769;
        if (v7 == 0.0)
        {
          v9 = 2654435769;
        }

        v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + (((v8 >> 2) + (v8 << 6) + v9) ^ v8);
      }

      while (v3 != v4);
      v2 = v5 + 2654435769u;
    }
  }

  *result ^= v2 + (*result << 6) + (*result >> 2);
  return result;
}

void sub_2615364E4(void *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x2667045D0](v1, 0x1091C40433B895BLL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x261536494);
}

uint64_t sub_26153652C(uint64_t a1, char *a2, unsigned int a3, char *a4, uint64_t a5, unsigned int *a6, unsigned int a7, _DWORD *a8, void *a9, void *a10)
{
  v10 = 1;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a8)
          {
            if (a9)
            {
              if (a10)
              {
                v15 = a6;
                if (a6 || !a7)
                {
                  v18 = *(a1 + 60);
                  v19 = a5 >= v18;
                  v20 = a5 - v18;
                  if (v19)
                  {
                    v19 = v20 >= a7;
                    v21 = v20 - a7;
                    if (v19)
                    {
                      v113 = v21 >> 1;
                      *a8 = 0;
                      v168 = 0;
                      v169 = 0;
                      v167 = &unk_2873D20A0;
                      sub_261539C3C(&v167, 0, 1);
                      v22 = 0;
                      v23 = *(a1 + 8);
                      v167 = &unk_2873D2018;
                      v117 = (a1 + 8);
                      v170 = a1 + 8;
                      v112 = a5;
                      v24 = v23 - 1;
                      v25 = 2 * a5 - 2;
                      do
                      {
                        v26 = *&a4[v25];
                        if (v26 > v24)
                        {
                          LOWORD(v26) = 1;
                        }

                        sub_261539B90(&v167, v22, v26);
                        v22 = (v22 + 1);
                        v25 -= 2;
                      }

                      while (a5 != v22);
                      v115 = a7;
                      v111 = a3;
                      v27 = 2 * a3 - 2;
                      v28 = a3;
                      v29 = a5;
                      do
                      {
                        v30 = *&a2[v27];
                        if (v30 > v24)
                        {
                          LOWORD(v30) = 1;
                        }

                        sub_261539B90(&v167, v29, v30);
                        v29 = (v29 + 1);
                        v27 -= 2;
                        --v28;
                      }

                      while (v28);
                      v164 = 0;
                      v165 = 0;
                      v163 = &unk_2873D20A0;
                      sub_261539C3C(&v163, 0, 1);
                      v163 = &unk_2873D2018;
                      v166 = a1 + 8;
                      v31 = *(a1 + 10);
                      if (*(a1 + 56))
                      {
                        v32 = 0;
                        v33 = 1;
                        do
                        {
                          v34 = 0;
                          if (v33 && *(a1 + 10))
                          {
                            v34 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v33) + 2 * *(*(a1 + 40) + 2 * *(a1 + 10))));
                          }

                          ++v32;
                          v33 = v34;
                        }

                        while (v32 < *(a1 + 56));
                      }

                      else
                      {
                        v34 = 1;
                      }

                      v35 = 0;
                      v36 = 0;
                      do
                      {
                        v37 = sub_26153A784(&v167, v34);
                        sub_261539B90(&v163, v35, v37);
                        v38 = 0;
                        if (v31 && v34)
                        {
                          v38 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v34) + 2 * *(*(a1 + 40) + 2 * v31)));
                        }

                        v35 = ++v36;
                        v34 = v38;
                      }

                      while (v36 < a5);
                      v39 = 1;
                      v40 = v164;
                      do
                      {
                        v41 = v164[v39 - 1];
                        if (v164[v39 - 1])
                        {
                          v42 = 1;
                        }

                        else
                        {
                          v42 = v39 > v165;
                        }

                        ++v39;
                      }

                      while (!v42);
                      if (!v41)
                      {
                        memmove(a9, a2, 2 * a3);
                        memmove(a10, a4, 2 * a5);
                        v10 = 0;
                        v163 = &unk_2873D20A0;
LABEL_155:
                        free(v40);
LABEL_156:
                        v167 = &unk_2873D20A0;
                        if (v168)
                        {
                          free(v168);
                        }

                        return v10;
                      }

                      sub_26153BC9C(v162, v115);
                      sub_26153BC9C(v161, v115);
                      v43 = a1 + 8;
                      v44 = a5 + a3;
                      if (v115)
                      {
                        v45 = v162[0];
                        v46 = v115;
                        while (1)
                        {
                          v48 = *v15++;
                          v47 = v48;
                          if (v48 >= v44)
                          {
                            break;
                          }

                          *v45++ = v44 + ~v47;
                          if (!--v46)
                          {
                            goto LABEL_46;
                          }
                        }

                        v10 = 1;
LABEL_150:
                        if (v161[0])
                        {
                          v161[1] = v161[0];
                          operator delete(v161[0]);
                        }

                        if (v162[0])
                        {
                          v162[1] = v162[0];
                          operator delete(v162[0]);
                        }

                        v40 = v164;
                        v163 = &unk_2873D20A0;
                        if (!v164)
                        {
                          goto LABEL_156;
                        }

                        goto LABEL_155;
                      }

LABEL_46:
                      sub_26153B1D0(&v159, v117, 0);
                      if (v115)
                      {
                        sub_26153B15C(&v156, v117);
                        sub_26153B1D0(&v152, v117, 0);
                        sub_26153B15C(&v148, v117);
                        v49 = 0;
                        do
                        {
                          v50 = *(*(a1 + 32) + 2 * (*(v162[0] + v49) % *(a1 + 8)));
                          sub_261539C3C(&v156, 0, 1);
                          *v157 = 0;
                          sub_261539B90(&v156, 1, v50);
                          *(v161[0] + v49) = *(*(a1 + 48) + 2 * v50);
                          sub_26153AE60(&v152, &v156, &v148);
                          sub_26153ACDC(&v159, &v148, &v159);
                          v49 += 4;
                        }

                        while (4 * v115 != v49);
                        sub_26153B4EC(&v163, &v159, &v163);
                        if (v165 >= a5)
                        {
                          sub_261539C3C(&v163, a5 - 1, 1);
                        }

                        sub_26153B310(&v163, &v163);
                        v148 = &unk_2873D20A0;
                        if (v149)
                        {
                          free(v149);
                        }

                        v152 = &unk_2873D20A0;
                        if (v153)
                        {
                          free(v153);
                        }

                        v156 = &unk_2873D20A0;
                        if (v157)
                        {
                          free(v157);
                        }
                      }

                      sub_26153B1D0(&v156, v117, a5);
                      v154 = 0;
                      v152 = &unk_2873D20A0;
                      v153 = 0;
                      sub_26153A1B8(&v152, &v156);
                      v152 = &unk_2873D2018;
                      v155 = v158;
                      v149 = 0;
                      v150 = 0;
                      v148 = &unk_2873D20A0;
                      sub_261539C3C(&v148, 0, 1);
                      v148 = &unk_2873D2018;
                      v151 = a1 + 8;
                      sub_26153B1D0(&v146, v117, 0);
                      sub_26153B1D0(&v143, v117, 0);
                      v51 = &unk_2873D20A0;
                      v140 = 0;
                      v141 = 0;
                      v139 = &unk_2873D20A0;
                      sub_261539C3C(&v139, 0, 1);
                      v139 = &unk_2873D2018;
                      v142 = a1 + 8;
                      v136 = 0;
                      v137 = 0;
                      v135 = &unk_2873D20A0;
                      sub_261539C3C(&v135, 0, 1);
                      v135 = &unk_2873D2018;
                      v138 = a1 + 8;
                      v132 = 0;
                      v133 = 0;
                      v131 = &unk_2873D20A0;
                      sub_26153A1B8(&v131, &v163);
                      v131 = &unk_2873D2018;
                      v134 = v166;
                      while (v133 > (a5 + v115 - 2) >> 1)
                      {
                        sub_26153A830(&v152, &v131, &v139, &v135);
                        sub_26153ACDC(&v139, &v146, &v143);
                        sub_26153AE60(&v148, &v143, &v143);
                        sub_26153B278(&v148, &v146);
                        sub_26153B278(&v146, &v143);
                        sub_26153B278(&v152, &v131);
                        sub_26153B278(&v131, &v135);
                      }

                      v52 = v145;
                      if (v145 > v113)
                      {
                        v10 = 3;
LABEL_132:
                        v131 = &unk_2873D20A0;
                        if (v132)
                        {
                          free(v132);
                        }

                        v135 = &unk_2873D20A0;
                        if (v136)
                        {
                          free(v136);
                        }

                        v139 = v51;
                        if (v140)
                        {
                          free(v140);
                        }

                        v143 = &unk_2873D20A0;
                        if (v144)
                        {
                          free(v144);
                        }

                        v146 = &unk_2873D20A0;
                        if (v147)
                        {
                          free(v147);
                        }

                        v148 = &unk_2873D20A0;
                        if (v149)
                        {
                          free(v149);
                        }

                        v152 = &unk_2873D20A0;
                        if (v153)
                        {
                          free(v153);
                        }

                        v156 = &unk_2873D20A0;
                        if (v157)
                        {
                          free(v157);
                        }

                        v159 = &unk_2873D20A0;
                        if (v160)
                        {
                          free(v160);
                        }

                        goto LABEL_150;
                      }

                      v53 = v145 + v115;
                      *a8 = v53;
                      sub_26153BC9C(v130, v53);
                      sub_26153BC9C(__p, v53);
                      if (v53)
                      {
                        v54 = 0;
                        v55 = v130[0];
                        v56 = __p[0];
                        do
                        {
                          v55[v54] = 0;
                          v56[v54++] = 0;
                        }

                        while (v53 > v54);
                      }

                      v57 = *v117;
                      v58 = v57 - 2;
                      if (v57 < 2)
                      {
                        v65 = 0;
                      }

                      else
                      {
                        v59 = 0;
                        v60 = *(a1 + 10);
                        v61 = __p[0];
                        v62 = v130[0];
                        v63 = *(a1 + 10);
                        do
                        {
                          if (!sub_26153A784(&v143, v63))
                          {
                            v61[v59] = v58;
                            v62[v59++] = v63;
                          }

                          v64 = 0;
                          if (v63 && v60)
                          {
                            v64 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v63) + 2 * *(*(a1 + 40) + 2 * v60)));
                          }

                          --v58;
                          v63 = v64;
                        }

                        while (v58 != -1);
                        v65 = v59;
                        v43 = a1 + 8;
                        v51 = &unk_2873D20A0;
                      }

                      if (v145 == v65)
                      {
                        if (v115)
                        {
                          v66 = 0;
                          while (!v52)
                          {
LABEL_84:
                            if (++v66 == v115)
                            {
                              goto LABEL_85;
                            }
                          }

                          v67 = v130[0];
                          v68 = v52;
                          while (1)
                          {
                            v69 = *v67++;
                            if (*(v161[0] + v66) == v69)
                            {
                              break;
                            }

                            if (!--v68)
                            {
                              goto LABEL_84;
                            }
                          }
                        }

                        else
                        {
LABEL_85:
                          sub_26153ACDC(&v143, &v159, &v143);
                          v70 = v115;
                          if (v115)
                          {
                            v71 = v161[0];
                            v72 = v130[0];
                            v73 = v162[0];
                            v74 = __p[0];
                            do
                            {
                              v75 = *v71++;
                              v72[v52] = v75;
                              v76 = *v73++;
                              v74[v52] = v76;
                              LODWORD(v52) = v52 + 1;
                              --v70;
                            }

                            while (v70);
                          }

                          if (v145 == v53)
                          {
                            v77 = sub_26153A784(&v143, 0);
                            if (v77)
                            {
                              v78 = *(*(a1 + 48) + 2 * v77);
                              sub_26153B15C(&v126, v43);
                              sub_26153B15C(&v124, v43);
                              sub_26153AF30(&v143, v78, &v126);
                              sub_26153AF30(&v131, v78, &v124);
                              v10 = 3;
                              if (*v127 && v53 == v128)
                              {
                                sub_26153BD1C(v123, *a8);
                                v79 = *a8;
                                if (v79)
                                {
                                  v80 = 0;
                                  v81 = *(a1 + 48);
                                  v116 = v130[0];
                                  v114 = v123[0];
                                  do
                                  {
                                    v82 = v51;
                                    v83 = *(a1 + 8);
                                    v84 = v116[v80] % v83;
                                    v85 = v116[v80] % v83;
                                    v86 = *(v81 + 2 * v84);
                                    v87 = sub_26153A784(&v124, v84);
                                    v88 = *(a1 + 56);
                                    if (*(a1 + 56))
                                    {
                                      if (v88 == 1)
                                      {
                                        v85 = 1;
                                      }

                                      else
                                      {
                                        v89 = 1;
                                        v90 = 1;
                                        do
                                        {
                                          v85 = 0;
                                          if (v86 && v90)
                                          {
                                            v85 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v90) + 2 * *(*(a1 + 40) + 2 * v86)));
                                          }

                                          ++v89;
                                          v90 = v85;
                                        }

                                        while (v89 < v88);
                                      }
                                    }

                                    v91 = 0;
                                    v92 = v80;
                                    do
                                    {
                                      v93 = v85;
                                      if (v92)
                                      {
                                        if (v84)
                                        {
                                          v94 = 1;
                                          if (*(v81 + 2 * (*(v130[0] + v91) % v83)))
                                          {
                                            v94 = 1 - *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * *(v81 + 2 * (*(v130[0] + v91) % v83))) + 2 * *(*(a1 + 40) + 2 * v84)));
                                          }
                                        }

                                        else
                                        {
                                          v94 = 1;
                                        }

                                        v85 = 0;
                                        if (v93)
                                        {
                                          v95 = *(*(a1 + 16) + 2 * v94 + 2 * v83);
                                          if (v95)
                                          {
                                            v85 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v93) + 2 * *(*(a1 + 40) + 2 * v95)));
                                          }
                                        }
                                      }

                                      ++v91;
                                      --v92;
                                    }

                                    while (v79 > v91);
                                    v96 = 0;
                                    if (v86)
                                    {
                                      v43 = a1 + 8;
                                      v51 = v82;
                                      if (v85)
                                      {
                                        v96 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v86) + 2 * *(*(a1 + 40) + 2 * v85)));
                                      }
                                    }

                                    else
                                    {
                                      v43 = a1 + 8;
                                      v51 = v82;
                                    }

                                    v97 = 0;
                                    if (v87)
                                    {
                                      v98 = *(v81 + 2 * v96);
                                      if (v98)
                                      {
                                        v97 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v87) + 2 * *(*(a1 + 40) + 2 * v98)));
                                      }
                                    }

                                    v114[v80++] = v97;
                                  }

                                  while (v80 != v79);
                                }

                                sub_26153B15C(&v121, v43);
                                v100 = a9;
                                v99 = a10;
                                if (*a8)
                                {
                                  v101 = 0;
                                  do
                                  {
                                    sub_261539B90(&v121, *(__p[0] + v101), *(*(a1 + 16) - 2 * *(v123[0] + v101) + 2 * *(a1 + 8)));
                                    ++v101;
                                  }

                                  while (*a8 > v101);
                                }

                                sub_26153B15C(&v118, v43);
                                sub_26153AC14(&v167, &v121, &v118);
                                v102 = v120;
                                if (v44 >= v120 + 1)
                                {
                                  v105 = v44 - 1;
                                  v103 = v119;
                                  v107 = v111;
                                  v106 = v112;
                                  do
                                  {
                                    if (v102 >= v105)
                                    {
                                      v108 = v103[v105];
                                    }

                                    else
                                    {
                                      v108 = 0;
                                    }

                                    *v100++ = v108;
                                    --v105;
                                    --v107;
                                  }

                                  while (v107);
                                  do
                                  {
                                    if (v102 >= v105)
                                    {
                                      v109 = v103[v105];
                                    }

                                    else
                                    {
                                      v109 = 0;
                                    }

                                    *v99++ = v109;
                                    --v105;
                                    --v106;
                                  }

                                  while (v106);
                                  v10 = 0;
                                }

                                else
                                {
                                  v10 = 3;
                                  v103 = v119;
                                }

                                v118 = &unk_2873D20A0;
                                if (v103)
                                {
                                  free(v103);
                                }

                                v121 = &unk_2873D20A0;
                                if (v122)
                                {
                                  free(v122);
                                }

                                if (v123[0])
                                {
                                  v123[1] = v123[0];
                                  operator delete(v123[0]);
                                }
                              }

                              v124 = &unk_2873D20A0;
                              if (v125)
                              {
                                free(v125);
                              }

                              v126 = &unk_2873D20A0;
                              if (v127)
                              {
                                free(v127);
                              }

                              goto LABEL_128;
                            }
                          }
                        }
                      }

                      v10 = 3;
LABEL_128:
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v130[0])
                      {
                        v130[1] = v130[0];
                        operator delete(v130[0]);
                      }

                      goto LABEL_132;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v10;
}

void sub_261537414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a26)
  {
    free(a26);
  }

  if (a30)
  {
    free(a30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    free(a37);
  }

  if (a41)
  {
    free(a41);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a51)
  {
    free(a51);
  }

  if (a55)
  {
    free(a55);
  }

  if (a59)
  {
    free(a59);
  }

  if (a63)
  {
    free(a63);
  }

  if (a65)
  {
    free(a65);
  }

  if (a66)
  {
    free(a66);
  }

  STACK[0x208] = a14;
  if (STACK[0x210])
  {
    free(STACK[0x210]);
  }

  STACK[0x228] = &unk_2873D20A0;
  if (STACK[0x230])
  {
    free(STACK[0x230]);
  }

  *(v66 - 232) = &unk_2873D20A0;
  v68 = *(v66 - 224);
  if (v68)
  {
    free(v68);
  }

  v69 = *(v66 - 200);
  if (v69)
  {
    *(v66 - 192) = v69;
    operator delete(v69);
  }

  v70 = *(v66 - 176);
  if (v70)
  {
    *(v66 - 168) = v70;
    operator delete(v70);
  }

  *(v66 - 152) = a21;
  v71 = *(v66 - 144);
  if (v71)
  {
    free(v71);
  }

  *(v66 - 120) = a22;
  v72 = *(v66 - 112);
  if (v72)
  {
    free(v72);
  }

  _Unwind_Resume(a1);
}

_WORD *sub_261537794(unsigned int a1)
{
  result = malloc_type_malloc(4 * a1, 0x1000040BDFB0063uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Malloc failure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = 1;
  v4 = result;
  do
  {
    v5 = v3;
    if (a1)
    {
      v6 = 0;
      do
      {
        *v4++ = v6++;
      }

      while (v6 < a1);
    }

    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

void *sub_261537848(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    free(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    free(v6);
    a1[5] = 0;
  }

  return a1;
}

void sub_2615378BC(uint64_t a1, uint64_t *a2)
{
  LODWORD(v22.a) = 2;
  BYTE4(v22.a) = 1;
  v4 = *(a1 + 8);
  if (sub_2614E9390(v4, @"Codabar", &v22))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v22.a) = 2;
  BYTE4(v22.a) = 1;
  if (sub_2614E9390(v4, @"GS1DataBar", &v22))
  {
    v5 |= 0x1000u;
  }

  LODWORD(v22.a) = 2;
  BYTE4(v22.a) = 1;
  if (sub_2614E9390(v4, @"GS1DataBarExpanded", &v22))
  {
    v5 |= 0x2000u;
  }

  LODWORD(v22.a) = 2;
  BYTE4(v22.a) = 1;
  if (sub_2614E9390(v4, @"GS1DataBarLimited", &v22))
  {
    v6 = v5 | 0x20000;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = *a2[1];
    sub_2614F59E4(v7);
    v23.origin.x = *(v7 + 8);
    v23.origin.y = *(v7 + 16);
    v8 = (v7 + 8);
    v23.size.width = v8->size.width;
    v23.size.height = v8->size.height;
    CGRectGetWidth(v23);
    CGRectGetHeight(*v8);
    v9 = a2[1];
    v10 = *(v9 + 32);
    v21.origin = *(v9 + 16);
    v21.size = v10;
    v31.origin = v21.origin;
    v31.size = v10;
    IsInfinite = CGRectIsInfinite(v31);
    v12 = &v21;
    if (IsInfinite)
    {
      v12 = v8;
    }

    size = v12->size;
    v21.origin = v12->origin;
    v21.size = size;
    if (*(*(a1 + 8) + 56) >= 196608 && *(a2 + 32) == 1)
    {
      v14 = a2[3];
      v15 = *(v14 + 72);
      v16 = *(v14 + 64);
      atan2f(v15, v16);
      v17 = *(v14 + 112);
      fmodf(v17, 180.0);
      v24.origin.x = sub_261495974(v14, 0.0);
      v18 = *(v14 + 80);
      *&v22.a = *(v14 + 64);
      *&v22.c = v18;
      *&v22.tx = *(v14 + 96);
      v25 = CGRectApplyAffineTransform(v24, &v22);
      v21 = CGRectInset(v25, v25.size.width * -0.1, v25.size.height * -0.1);
    }

    origin = v21.origin;
    v20 = v21.size;
    if (!CGRectIsNull(v21))
    {
      v26.origin = origin;
      v26.size = v20;
      if (!CGRectIsEmpty(v26))
      {
        v27.origin = origin;
        v27.size = v20;
        vcvtmd_s64_f64(CGRectGetMinX(v27));
        v28.origin = origin;
        v28.size = v20;
        vcvtpd_s64_f64(CGRectGetMaxX(v28));
        v29.origin = origin;
        v29.size = v20;
        vcvtmd_s64_f64(CGRectGetMinY(v29));
        v30.origin = origin;
        v30.size = v20;
        vcvtpd_s64_f64(CGRectGetMaxY(v30));
        operator new();
      }
    }
  }

  *a2[8] = 256;
}

void sub_2615391B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, std::__shared_weak_count *a46)
{
  if (a46)
  {
    sub_26149E780(a46);
  }

  a45 = (v46 - 184);
  sub_261519E00(&a45);
  a45 = &a23;
  sub_261519E00(&a45);
  a45 = &a27;
  sub_261519E00(&a45);
  a45 = &a30;
  sub_261518C48(&a45);
  a34 = a17;
  if (a36)
  {
    sub_26149E780(a36);
  }

  sub_26149E780(a18);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2615393C8(unint64_t *a1, uint64_t a2, const void **a3, float a4)
{
  v38 = sub_2614BF584();
  v8 = *(a2 + 4);
  if (v8 >= 0x2000)
  {
    if (v8 == 0x2000)
    {
      explicit = atomic_load_explicit(&v38, memory_order_acquire);
      v10 = &MRCSymbologyGS1DataBarExpanded;
      goto LABEL_13;
    }

    if (v8 == 0x20000)
    {
      explicit = atomic_load_explicit(&v38, memory_order_acquire);
      v10 = MRCSymbologyGS1DataBarLimited;
      goto LABEL_13;
    }

LABEL_8:
    *a1 = 0;
    return sub_261477724(&v38);
  }

  if (v8 == 2)
  {
    v11 = atomic_exchange((atomic_load_explicit(&v38, memory_order_acquire) + 16), CFRetain(@"Codabar"));
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = 0;
    goto LABEL_14;
  }

  if (v8 != 4096)
  {
    goto LABEL_8;
  }

  explicit = atomic_load_explicit(&v38, memory_order_acquire);
  v10 = MRCSymbologyGS1DataBar;
LABEL_13:
  sub_261478704((explicit + 16), *v10);
  v12 = 1;
LABEL_14:
  v13 = *MEMORY[0x277CBECE8];
  v14 = *(a2 + 31);
  if (v14 >= 0)
  {
    v15 = (a2 + 8);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 31);
  }

  else
  {
    v16 = *(a2 + 16);
  }

  v37 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v15, 4 * v16, 0x1C000100u, 0, *MEMORY[0x277CBED00]);
  if (atomic_load_explicit(&v37, memory_order_acquire))
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(v13, atomic_load_explicit(&v37, memory_order_acquire), 0x8000100u, 0);
    if (atomic_load_explicit(&ExternalRepresentation, memory_order_acquire))
    {
      v17 = atomic_exchange((atomic_load_explicit(&v38, memory_order_acquire) + 24), atomic_exchange(&ExternalRepresentation, 0));
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = atomic_load_explicit(&v38, memory_order_acquire);
      *(v18 + 32) = 1065353216;
      *(v18 + 36) = 1;
      if (*(a2 + 120) == 1)
      {
        v19 = atomic_load_explicit(&v38, memory_order_acquire);
        if (*(v19 + 208) == 1)
        {
          sub_2614BF7E0((v19 + 200));
        }

        *(v19 + 200) = 0;
        *(v19 + 184) = 0u;
        *(v19 + 168) = 0u;
        *(v19 + 208) = 1;
        *(v19 + 176) = 2;
      }

      if (v12)
      {
        if ((*(atomic_load_explicit(&v38, memory_order_acquire) + 208) & 1) == 0)
        {
          v20 = atomic_load_explicit(&v38, memory_order_acquire);
          if (*(v20 + 208) == 1)
          {
            sub_2614BF7E0((v20 + 200));
          }

          *(v20 + 200) = 0;
          *(v20 + 184) = 0u;
          *(v20 + 168) = 0u;
          *(v20 + 208) = 1;
        }

        *(atomic_load_explicit(&v38, memory_order_acquire) + 168) = 1;
      }

      v21 = atomic_load_explicit(&v38, memory_order_acquire);
      v22 = *(a2 + 124);
      if ((*(v21 + 280) & 1) == 0)
      {
        *(v21 + 280) = 1;
      }

      *(v21 + 272) = v22;
      v23 = atomic_load_explicit(&v38, memory_order_acquire);
      *(v23 + 224) = a4;
      *(v23 + 228) = 1;
      v24 = *(a2 + 32);
      v25 = *(a2 + 36);
      v26 = *(a2 + 48);
      v27 = *(a2 + 52);
      v28 = atomic_load_explicit(&v38, memory_order_acquire);
      if ((*(v28 + 264) & 1) == 0)
      {
        *(v28 + 264) = 1;
      }

      *(v28 + 232) = v24;
      *(v28 + 240) = v25;
      *(v28 + 248) = v26;
      *(v28 + 256) = v27;
      if (*a3 == a3[1])
      {
        __p = 0;
        v34 = 0;
        v35 = 0;
        sub_261473150(1uLL);
      }

      v29 = atomic_load_explicit(&v38, memory_order_acquire);
      if (*(v29 + 64) == 1)
      {
        v30 = *(v29 + 40);
        if (v30)
        {
          *(v29 + 48) = v30;
          operator delete(v30);
        }

        *(v29 + 64) = 0;
      }

      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      sub_26153986C((v29 + 40), *a3, a3[1], (a3[1] - *a3) >> 4);
      *(v29 + 64) = 1;
      v31 = atomic_exchange(&v38, 0);
    }

    else
    {
      v31 = 0;
    }

    *a1 = v31;
    sub_2614BF7E0(&ExternalRepresentation);
  }

  else
  {
    *a1 = 0;
  }

  sub_26148E848(&v37);
  return sub_261477724(&v38);
}

void sub_26153980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_26148E848(va);
  sub_261477724(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_26153986C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2614BF888(result, a4);
  }

  return result;
}

void sub_2615398CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_261539910(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2873D0960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_261539988(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v5 = result;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (a4 | 1) + 1;
    }

    sub_261472B30(v6);
  }

  *(result + 23) = a4;
  while (a2 != a3)
  {
    v7 = *a2++;
    *v5++ = v7;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_261539A18(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v12 = a2[23];
  }

  else
  {
    a2 = *a2;
    v12 = v11;
  }

  sub_261539988(&v16, a2, &a2[v12], v12);
  v13 = a4 | (a3 << 32);
  v14 = a5 | (a3 << 32);
  *a1 = 0x200000000;
  *(a1 + 8) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v14;
  *(a1 + 56) = v13;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *a6;
  *(a1 + 80) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 88) = 8 * (*(a1 + 72) - *(a1 + 64));
  return a1;
}

void **sub_261539B04(uint64_t a1, __int16 a2, int a3, uint64_t a4)
{
  v8 = 0;
  do
  {
    v9 = a3 + v8;
    if (*(a4 + 16) >= v9)
    {
      v10 = *(*(a4 + 8) + 2 * v9);
    }

    else
    {
      v10 = 0;
    }

    result = sub_261539B90(a4, v9, (v10 + *(*(a1 + 8) + 2 * v8++) * a2));
  }

  while (v8 <= *(a1 + 16));
  return result;
}

void **sub_261539B90(void **result, uint64_t a2, int a3)
{
  v3 = a2;
  v4 = result;
  v5 = *(result + 4);
  if (a3)
  {
    v6 = a3;
    if (v5 < a2)
    {
      result = sub_261539C3C(result, a2, 0);
    }

    *(v4[1] + v3) = v6;
  }

  else if (v5 >= a2)
  {
    if (v5 != a2 || v5 == 0)
    {
      *(result[1] + a2) = 0;
    }

    else
    {
      v8 = (a2 - 1);
      *(result + 4) = v8;
      if (a2 != 1)
      {
        v9 = result[1];
        if (!v9[v8])
        {
          v10 = (v9 - 1);
          do
          {
            v11 = v8 - 1;
            if (v8 == 1)
            {
              break;
            }
          }

          while (!*&v10[2 * v8--]);
          *(result + 4) = v11;
        }
      }
    }
  }

  return result;
}

void **sub_261539C3C(void **result, unsigned int a2, int a3)
{
  v5 = result;
  v6 = *(result + 4);
  if (v6 >= a2 && (v7 = result[1]) != 0)
  {
    *(result + 4) = a2;
    if (a2 && a3 && !v7[a2])
    {
      v8 = a2;
      v9 = (v7 - 1);
      do
      {
        v10 = v8 - 1;
        if (v8 == 1)
        {
          break;
        }
      }

      while (!*&v9[2 * v8--]);
      goto LABEL_31;
    }
  }

  else
  {
    v12 = *(result + 5);
    if (v12 <= a2)
    {
      v13 = result[1];
      if (v13)
      {
        v14 = 2 * v12;
        v15 = a2;
        if (2 * v12)
        {
          do
          {
            v15 = v14;
            v14 *= 2;
          }

          while (v15 <= a2);
        }
      }

      else
      {
        v15 = a2 + 1;
      }

      result = malloc_type_realloc(result[1], 2 * v15, 0x1000040BDFB0063uLL);
      v5[1] = result;
      if (!result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x266704230](exception, "Malloc failure");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (!v13)
      {
        *result = 0;
      }

      *(v5 + 5) = v15;
      v6 = *(v5 + 4);
    }

    v16 = v6 + 1;
    if (v16 <= a2)
    {
      v17 = v5[1];
      do
      {
        v17[v16++] = 0;
      }

      while (v16 <= a2);
    }

    if (!a2)
    {
      v10 = 0;
      *v5[1] = 0;
LABEL_31:
      *(v5 + 4) = v10;
      return result;
    }

    *(v5 + 4) = a2;
    if (a3)
    {
      v18 = v5[1];
      if (!v18[a2])
      {
        v19 = a2;
        v20 = (v18 - 1);
        do
        {
          v21 = v19 - 1;
          if (v19 == 1)
          {
            break;
          }
        }

        while (!*&v20[2 * v19--]);
        v10 = v21;
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t sub_261539DE0(uint64_t a1, __int16 a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  v5 = 1;
  if ((v3 + 1) > 1)
  {
    v6 = (v3 + 1);
  }

  else
  {
    v6 = 1;
  }

  do
  {
    v7 = *v4++;
    v2 += v7 * v5;
    v5 *= a2;
    --v6;
  }

  while (v6);
  return v2;
}

void sub_261539E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a3 || a4 == a1 || a4 == a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Invalid rem argument");
    goto LABEL_39;
  }

  v8 = *(a2 + 8);
  v9 = 1;
  do
  {
    v10 = *(v8 + 2 * (v9 - 1));
    if (*(v8 + 2 * (v9 - 1)))
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 > *(a2 + 16);
    }

    ++v9;
  }

  while (!v11);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Divide by zero");
LABEL_39:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  sub_26153A1B8(a4, a1);
  v12 = *(a2 + 16);
  v13 = *(*(a2 + 8) + 2 * v12);
  v28 = 0;
  v29 = 0;
  v27 = &unk_2873D20A0;
  sub_261539C3C(&v27, 0, 1);
  v25 = 0;
  v26 = 0;
  v24 = &unk_2873D20A0;
  sub_261539C3C(&v24, 0, 1);
  while (1)
  {
    v14 = *(a4 + 16);
    v15 = *(a4 + 8);
    v16 = 1;
    do
    {
      v17 = *(v15 + 2 * (v16 - 1));
      if (*(v15 + 2 * (v16 - 1)))
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 > v14;
      }

      ++v16;
    }

    while (!v18);
    if (!v17 || v14 < v12)
    {
      break;
    }

    v20 = *(v15 + 2 * v14) / v13;
    if (!v20)
    {
      v21 = v15 - 2;
      while (v14)
      {
        v22 = v14 - 1;
        if (v14 - 1 < v12)
        {
          break;
        }

        v20 = *(v21 + 2 * v14--) / v13;
        if (v20)
        {
          LODWORD(v14) = v22;
          goto LABEL_26;
        }
      }

      break;
    }

LABEL_26:
    sub_261539C3C(&v27, 0, 1);
    *v28 = 0;
    sub_261539B90(&v27, (v14 - v12), v20);
    sub_26153A25C(&v27, a3, a3);
    sub_26153A31C(&v27, a2, &v24);
    (*(*a4 + 24))(a4, &v24, a4);
  }

  v24 = &unk_2873D20A0;
  if (v25)
  {
    free(v25);
  }

  v27 = &unk_2873D20A0;
  if (v28)
  {
    free(v28);
  }
}

uint64_t sub_26153A1B8(uint64_t a1, uint64_t a2)
{
  sub_261539C3C(a1, *(a2 + 16), 0);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if ((v5 + 1) > 1)
  {
    v9 = (v5 + 1);
  }

  else
  {
    v9 = 1;
  }

  do
  {
    if (v4 <= v6)
    {
      v10 = *(v8 + 2 * v4);
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 2 * v4++) = v10;
  }

  while (v9 != v4);
  if (v5 && !*(v7 + 2 * v5))
  {
    v11 = v7 - 2;
    do
    {
      v12 = v5 - 1;
      if (v5 == 1)
      {
        break;
      }
    }

    while (!*(v11 + 2 * v5--));
    *(a1 + 16) = v12;
  }

  return a1;
}

void **sub_26153A25C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a2 + 16) >= v6)
    {
      v8 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 16) >= v6)
    {
      v9 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6, (v9 + v8));
    v6 = (v6 + 1);
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

uint64_t sub_26153A31C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  v6 = 0;
  do
  {
    result = (*(*a1 + 72))(a1, *(*(a2 + 8) + 2 * v6), v6, a3);
    v6 = (v6 + 1);
  }

  while (v6 <= *(a2 + 16));
  return result;
}

void *sub_26153A4A0(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;
  return a1;
}

void **sub_26153A4F4(uint64_t a1, __int16 a2, void **a3)
{
  v6 = 0;
  do
  {
    result = sub_261539B90(a3, v6, (*(*(a1 + 8) + 2 * v6) * a2));
    v6 = (v6 + 1);
  }

  while (v6 <= *(a1 + 16));
  return result;
}

void **sub_26153A584(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a1 + 16) >= v6)
    {
      v8 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a2 + 16) >= v6)
    {
      v9 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6, (v8 - v9));
    v6 = (v6 + 1);
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

void sub_26153A644(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;

  JUMPOUT(0x2667045D0);
}

void **sub_26153A6B8(uint64_t a1, int a2, unsigned __int16 a3, uint64_t a4)
{
  v7 = 0;
  v8 = a2;
  v9 = a3;
  do
  {
    v10 = *(a1 + 24);
    v11 = v7;
    v12 = *(*(a1 + 8) + 2 * v7);
    if (a2 && v12)
    {
      v13 = v10[4];
      v14 = *(v13 + 2 * v12);
      v15 = *(v13 + 2 * v8);
      v16 = v10[2];
      v17 = *(v10[3] + 2 * *(v16 + 2 * v14 + 2 * v15));
    }

    else
    {
      v17 = 0;
      v16 = v10[2];
    }

    v18 = *(v16 + 2 * v11 + 2 * v9);
    if (*(a4 + 16) >= v18)
    {
      v19 = *(*(a4 + 8) + 2 * *(v16 + 2 * v11 + 2 * v9));
    }

    else
    {
      v19 = 0;
    }

    result = sub_261539B90(a4, v18, *(v10[1] + 2 * v17 + 2 * v19));
    v7 = v11 + 1;
  }

  while (*(a1 + 16) >= (v11 + 1));
  return result;
}

uint64_t sub_26153A784(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = 1;
  if ((v4 + 1) > 1)
  {
    v7 = (v4 + 1);
  }

  else
  {
    v7 = 1;
  }

  do
  {
    v8 = 0;
    v10 = *v5++;
    v9 = v10;
    if (v6 && v9)
    {
      v8 = *(*(v3 + 3) + 2 * *(*(v3 + 2) + 2 * *(*(v3 + 4) + 2 * v9) + 2 * *(*(v3 + 4) + 2 * v6)));
    }

    v11 = 0;
    if ((*v3 & ((a2 % *v3) >> 31)) + (a2 % *v3) && v6)
    {
      v11 = *(*(v3 + 3) + 2 * *(*(v3 + 2) + 2 * *(*(v3 + 4) + 2 * v6) + 2 * *(*(v3 + 4) + 2 * ((*v3 & ((a2 % *v3) >> 31)) + a2 % *v3))));
    }

    LOWORD(v2) = *(*(v3 + 1) + 2 * v2 + 2 * v8);
    v6 = v11;
    --v7;
  }

  while (v7);
  return v2;
}

void sub_26153A830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = 1;
  do
  {
    v8 = *(v6 + 2 * (v7 - 1));
    if (*(v6 + 2 * (v7 - 1)))
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 > *(a2 + 16);
    }

    ++v7;
  }

  while (!v9);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Divide by zero");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 24);
  v40 = 0;
  v41 = 0;
  v39 = &unk_2873D20A0;
  sub_261539C3C(&v39, 0, 1);
  v39 = &unk_2873D2018;
  v42 = v10;
  v11 = *(a2 + 16);
  v12 = *(a1 + 24);
  v13 = *(*(v12 + 40) + 2 * *(*(a2 + 8) + 2 * v11));
  v36 = 0;
  v37 = 0;
  v35 = &unk_2873D20A0;
  sub_261539C3C(&v35, 0, 1);
  v35 = &unk_2873D2018;
  v38 = v12;
  v14 = *(a1 + 24);
  v32 = 0;
  v33 = 0;
  v31 = &unk_2873D20A0;
  sub_261539C3C(&v31, 0, 1);
  v31 = &unk_2873D2018;
  v34 = v14;
  v28 = 0;
  v29 = 0;
  v27 = &unk_2873D20A0;
  sub_26153A1B8(&v27, a1);
  v15 = *(a1 + 24);
  v27 = &unk_2873D2018;
  v30 = v15;
  while (1)
  {
    v16 = 1;
    do
    {
      v17 = *(v28 + v16 - 1);
      if (*(v28 + v16 - 1))
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 > v29;
      }

      ++v16;
    }

    while (!v18);
    if (!v17 || v29 < v11)
    {
      break;
    }

    v20 = 0;
    v21 = *(a1 + 24);
    v22 = v21[2];
    if (v13 && *(v28 + v29))
    {
      v20 = *(v21[3] + 2 * *(v22 + 2 * *(v21[4] + 2 * *(v28 + v29)) + 2 * *(v21[4] + 2 * v13)));
    }

    v23 = *(v22 + 2 * v29 + 2 * *v21 + 2 * (~v11 | 0xFFFF0000));
    sub_261539C3C(&v35, 0, 1);
    *v36 = 0;
    sub_261539B90(&v35, v23, v20);
    sub_26153AC14(&v35, &v39, &v39);
    sub_26153ACDC(&v35, a2, &v31);
    sub_26153AE60(&v27, &v31, &v27);
  }

  sub_26153A1B8(a4, &v27);
  sub_26153A1B8(a3, &v39);
  v27 = &unk_2873D20A0;
  if (v28)
  {
    free(v28);
  }

  v31 = &unk_2873D20A0;
  if (v32)
  {
    free(v32);
  }

  v35 = &unk_2873D20A0;
  if (v36)
  {
    free(v36);
  }

  v39 = &unk_2873D20A0;
  if (v40)
  {
    free(v40);
  }
}

void **sub_26153AC14(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a2 + 16) >= v6)
    {
      v8 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 16) >= v6)
    {
      v9 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6, *(*(*(a1 + 24) + 8) + 2 * v8 + 2 * v9));
    v6 = (v6 + 1);
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

uint64_t sub_26153ACDC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  v6 = 0;
  do
  {
    result = (*(*a1 + 72))(a1, *(*(a2 + 8) + 2 * v6), v6, a3);
    v6 = (v6 + 1);
  }

  while (v6 <= *(a2 + 16));
  return result;
}

void **sub_26153AE60(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a1 + 16) >= v6)
    {
      v8 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a2 + 16) >= v6)
    {
      v9 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6, *(*(*(a1 + 24) + 8) + 2 * (v8 - v9) + 2 * **(a1 + 24)));
    v6 = (v6 + 1);
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

void **sub_26153AF30(uint64_t a1, int a2, void **a3)
{
  v6 = 0;
  v7 = a2;
  do
  {
    v8 = 0;
    if (a2)
    {
      if (*(*(a1 + 8) + 2 * v6))
      {
        v9 = *(a1 + 24);
        v8 = *(v9[3] + 2 * *(v9[2] + 2 * *(v9[4] + 2 * v7) + 2 * *(v9[4] + 2 * *(*(a1 + 8) + 2 * v6))));
      }
    }

    result = sub_261539B90(a3, v6, v8);
    v6 = (v6 + 1);
  }

  while (v6 <= *(a1 + 16));
  return result;
}

void **sub_26153AFC4(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a2 + 16) >= v6)
    {
      v8 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 16) >= v6)
    {
      v9 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6, *(*(*(a1 + 24) + 8) + 2 * (v8 - v9) + 2 * **(a1 + 24)));
    v6 = (v6 + 1);
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

void sub_26153B094(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_26153B108(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;
  return a1;
}

uint64_t sub_26153B15C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873D20A0;
  sub_261539C3C(a1, 0, 1);
  *a1 = &unk_2873D2018;
  *(a1 + 24) = a2;
  return a1;
}

uint64_t sub_26153B1D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873D20A0;
  sub_261539C3C(a1, a3, 1);
  if (*(a1 + 16) < a3)
  {
    sub_261539C3C(a1, a3, 0);
  }

  *(*(a1 + 8) + 2 * a3) = 1;
  *a1 = &unk_2873D2018;
  *(a1 + 24) = a2;
  return a1;
}

uint64_t sub_26153B278(uint64_t a1, uint64_t a2)
{
  sub_261539C3C(a1, *(a2 + 16), 0);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  do
  {
    if (v6 >= v4)
    {
      v9 = *(v7 + 2 * v4);
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 2 * v4++) = v9;
  }

  while (v5 >= v4);
  if (v5 && !*(v8 + 2 * v5))
  {
    v10 = v8 - 2;
    do
    {
      v11 = v5 - 1;
      if (v5 == 1)
      {
        break;
      }
    }

    while (!*(v10 + 2 * v5--));
    *(a1 + 16) = v11;
  }

  return a1;
}

void **sub_26153B310(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_26153B278(a2, a1);
  }

  v3 = *(a2 + 16);
  if (v3 >= (**(a2 + 24) - 1))
  {
    v4 = (**(a2 + 24) - 1);
    do
    {
      if (*(a2 + 16) >= v3)
      {
        v5 = *(*(a2 + 8) + 2 * v3);
      }

      else
      {
        v5 = 0;
      }

      v6 = **(a2 + 24) - 1;
      v18 = &unk_2873D20A0;
      v7 = v3 % v6;
      v19 = 0;
      v20 = 0;
      sub_261539C3C(&v18, (v3 % v6), 1);
      sub_261539B90(&v18, v7, v5);
      (*(*a2 + 16))(a2, &v18, a2);
      sub_261539B90(a2, v3, 0);
      v18 = &unk_2873D20A0;
      if (v19)
      {
        free(v19);
      }

      v3 = (v3 - 1);
    }

    while (v3 >= v4);
    LODWORD(v3) = *(a2 + 16);
  }

  v8 = *(a2 + 8);
  if (v3)
  {
    v9 = *(v8 + 2 * v3) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v3;
    v11 = v8 - 2;
    do
    {
      v12 = v10 - 1;
      if (v10 == 1)
      {
        break;
      }
    }

    while (!*(v11 + 2 * v10--));
    *(a2 + 16) = v12;
  }

  v14 = 0;
  do
  {
    v15 = **(a2 + 24);
    v16 = *(*(a2 + 8) + 2 * v14) % v15;
    result = sub_261539B90(a2, v14, ((v15 & (v16 >> 31)) + v16));
    v14 = (v14 + 1);
  }

  while (v14 <= *(a2 + 16));
  return result;
}

void sub_26153B4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void **sub_26153B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = *(*(a2 + 8) + 2 * v6);
    do
    {
      v10 = 0;
      v11 = *(a1 + 24);
      if (v9 && *(*(a1 + 8) + 2 * v8))
      {
        v10 = *(v11[3] + 2 * *(v11[2] + 2 * *(v11[4] + 2 * *(*(a1 + 8) + 2 * v8)) + 2 * *(v11[4] + 2 * v9)));
      }

      v12 = v7 + v6;
      if (*(a3 + 16) >= v12)
      {
        v13 = *(*(a3 + 8) + 2 * v12);
      }

      else
      {
        v13 = 0;
      }

      result = sub_261539B90(a3, v12, *(v11[1] + 2 * v10 + 2 * v13));
      v7 = ++v8;
    }

    while (*(a1 + 16) >= v8);
    ++v6;
  }

  while (v6 <= *(a2 + 16));
  return result;
}

atomic_ullong *sub_26153B6C8(atomic_ullong *a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    if (atomic_load_explicit(a2, memory_order_acquire))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
      Width = CVPixelBufferGetWidth(atomic_load_explicit(a2, memory_order_acquire));
      Height = CVPixelBufferGetHeight(atomic_load_explicit(a2, memory_order_acquire));
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"<CVPixelBuffer %p: ", atomic_load_explicit(a2, memory_order_acquire));
      explicit = atomic_load_explicit(a1, memory_order_acquire);
      v8 = HIBYTE(PixelFormatType);
      v9 = PixelFormatType;
      if (HIBYTE(PixelFormatType) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      v10 = vdup_n_s32(PixelFormatType);
      if (PixelFormatType - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v11 = vshl_u32(v10, 0xFFFFFFF0FFFFFFF8);
      v12 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v11, 0xE0000000E0), 0xFF000000FFLL)), v11, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v31 = 0;
      v30 = v12.i32[0] | (v9 << 24) | v8 | v12.i32[1];
      CFStringAppendFormat(explicit, 0, @"pixelFormatType=%.4s, ", &v30);
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"width=%zu, ", Width);
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"height=%zu, ", Height);
      IsPlanar = CVPixelBufferIsPlanar(atomic_load_explicit(a2, memory_order_acquire));
      v14 = atomic_load_explicit(a1, memory_order_acquire);
      if (IsPlanar)
      {
        CFStringAppend(v14, @"planar, ");
        PlaneCount = CVPixelBufferGetPlaneCount(atomic_load_explicit(a2, memory_order_acquire));
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"planeCount=%zu, ", PlaneCount);
        if (PlaneCount)
        {
          v16 = 0;
          do
          {
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"widthOfPlane%zu=%zu, ", v16, WidthOfPlane);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"heightOfPlane%zu=%zu, ", v16, HeightOfPlane);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"baseAddressOfPlane%zu=%p, ", v16, BaseAddressOfPlane);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"bytesPerRowOfPlane%zu=%zu", v16++, BytesPerRowOfPlane);
            if (v16 < PlaneCount)
            {
              CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @", ");
            }
          }

          while (PlaneCount != v16);
        }
      }

      else
      {
        CFStringAppend(v14, @"non-planar, ");
        BaseAddress = CVPixelBufferGetBaseAddress(atomic_load_explicit(a2, memory_order_acquire));
        BytesPerRow = CVPixelBufferGetBytesPerRow(atomic_load_explicit(a2, memory_order_acquire));
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"baseAddress=%p, ", BaseAddress);
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"bytesPerRow=%zu", BytesPerRow);
      }

      IOSurface = CVPixelBufferGetIOSurface(atomic_load_explicit(a2, memory_order_acquire));
      if (IOSurface)
      {
        v26 = IOSurface;
        CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @", ");
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"surface=%p, ", v26);
        v27 = atomic_load_explicit(a1, memory_order_acquire);
        ID = IOSurfaceGetID(v26);
        CFStringAppendFormat(v27, 0, @"surfaceID=%#x", ID);
      }

      v21 = atomic_load_explicit(a1, memory_order_acquire);
      v22 = @">";
    }

    else
    {
      v21 = atomic_load_explicit(a1, memory_order_acquire);
      v22 = @"<null>";
    }

    CFStringAppend(v21, v22);
  }

  return a1;
}

atomic_ullong *sub_26153BA20(atomic_ullong *a1, double a2)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    if (fabs(a2) == INFINITY)
    {
      if ((*&a2 & 0x8000000000000000) != 0)
      {
        CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"-");
      }

      CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"Infinity");
    }

    else
    {
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"%.*g", 17, *&a2);
    }
  }

  return a1;
}

atomic_ullong *sub_26153BACC(atomic_ullong *a1, double *a2)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"{x=");
    sub_26153BA20(a1, *a2);
    CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @", y=");
    sub_26153BA20(a1, a2[1]);
    CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"}");
  }

  return a1;
}

void sub_26153BB4C(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);

  JUMPOUT(0x2667045D0);
}

void *sub_26153BBB0(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);
  return a1;
}

void sub_26153BBF4(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);

  JUMPOUT(0x2667045D0);
}

void *sub_26153BC58(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);
  return a1;
}

void *sub_26153BC9C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_261472B30(a2);
  }

  return a1;
}

void sub_26153BD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26153BD1C(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_26153BD9C(a2);
  }

  return a1;
}

void sub_26153BD80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26153BD9C(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2614709D4();
}

double ACBSConfigCreate(uint64_t a1)
{
  sub_2615449EC();
  v1 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040CBFE3DCFuLL);
  v1[1] = 8;
  *(v1 + 3) = 0;
  v1[8] = 0;
  *v1 = 0;
  result = NAN;
  *(v1 + 2) = -1;
  *(v1 + 36) = 0;
  return result;
}

void ACBSConfigFree(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

CFTypeRef ACBSConfigCopy(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v3;
  *(a1 + 16) = v2;
  result = *(a1 + 8);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFArrayRef ACBSConfigSetSymbologiesEnabled(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFArrayCreateCopy(*MEMORY[0x277CBECE8], theArray);
  *(a1 + 8) = result;
  return result;
}

CFArrayRef ACBSConfigCopySymbologiesEnabled(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *MEMORY[0x277CBECE8];
  if (v1)
  {
    return CFArrayCreateCopy(v2, v1);
  }

  else
  {
    return CFArrayCreate(v2, 0, 0, MEMORY[0x277CBF128]);
  }
}

CFMutableDictionaryRef ACBSCreateFrameInfoBySearchingForBarcodesInCGImage(uint64_t a1, CGImage *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (CGRectIsNull(*&a3) || (v27.origin.x = a3, v27.origin.y = a4, v27.size.width = a5, v27.size.height = a6, CGRectIsEmpty(v27)) || (v28.origin.x = a3, v28.origin.y = a4, v28.size.width = a5, v28.size.height = a6, CGRectIsInfinite(v28)))
  {
    v12 = 0;
  }

  else
  {
    v30.origin.x = a3;
    v30.origin.y = a4;
    v30.size.width = a5;
    v30.size.height = a6;
    a2 = CGImageCreateWithImageInRect(a2, v30);
    v12 = a2;
  }

  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = CGBitmapContextCreate(0, Width, Height, 8uLL, (4 * Width + 15) & 0xFFFFFFFFFFFFFFF0, DeviceRGB, 2u);
  if (!v16)
  {
    v18 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v17 = v16;
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = Width;
  v29.size.height = Height;
  CGContextDrawImage(v16, v29, a2);
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x34323066u, 0, &pixelBufferOut) || CVPixelBufferLockBaseAddress(pixelBufferOut, 0))
  {
    v18 = 0;
  }

  else
  {
    src.data = CGBitmapContextGetData(v17);
    src.height = CGBitmapContextGetHeight(v17);
    src.width = CGBitmapContextGetWidth(v17);
    src.rowBytes = CGBitmapContextGetBytesPerRow(v17);
    destYp.data = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
    destYp.height = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 0);
    destYp.width = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 0);
    destYp.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
    destCbCr.data = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
    destCbCr.height = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 1uLL);
    destCbCr.width = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 1uLL);
    destCbCr.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 1uLL);
    v20 = *ymmword_26157A21C;
    if (vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x277CB86D8], &v20, &outInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0) || vImageConvert_ARGB8888To420Yp8_CbCr8(&src, &destYp, &destCbCr, &outInfo, 0, 0))
    {
      v18 = 0;
    }

    else
    {
      v18 = ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer(a1, pixelBufferOut, 0.0, 0.0, Width, Height);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  }

  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
  }

  CGContextRelease(v17);
  if (v12)
  {
LABEL_12:
    CGImageRelease(v12);
  }

LABEL_13:
  CGColorSpaceRelease(DeviceRGB);
  return v18;
}

CFMutableDictionaryRef ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1111970369)
  {
    if (CVPixelBufferIsPlanar(pixelBuffer))
    {
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    }

    else
    {
      WidthOfPlane = CVPixelBufferGetWidth(pixelBuffer);
    }

    v27 = WidthOfPlane;
    if (CVPixelBufferIsPlanar(pixelBuffer))
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeight(pixelBuffer);
    }

    v29 = HeightOfPlane;
    v86.origin.x = a3;
    v86.origin.y = a4;
    v86.size.width = a5;
    v86.size.height = a6;
    if (CGRectIsNull(v86) || (v87.origin.x = a3, v87.origin.y = a4, v87.size.width = a5, v87.size.height = a6, CGRectIsEmpty(v87)) || (v88.origin.x = a3, v88.origin.y = a4, v88.size.width = a5, v88.size.height = a6, CGRectIsInfinite(v88)))
    {
      v30 = v27;
      v31 = v29;
      x = 0.0;
      y = 0.0;
      width = v27;
      height = v29;
      if (!pixelBuffer)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v30 = v27;
      v31 = v29;
      v94.origin.x = 0.0;
      v94.origin.y = 0.0;
      v92.origin.x = a3;
      v92.origin.y = a4;
      v92.size.width = a5;
      v92.size.height = a6;
      v94.size.width = v27;
      v94.size.height = v29;
      v93 = CGRectIntersection(v92, v94);
      x = v93.origin.x;
      y = v93.origin.y;
      width = v93.size.width;
      height = v93.size.height;
      if (!pixelBuffer)
      {
        goto LABEL_50;
      }
    }

    TypeID = CVPixelBufferGetTypeID();
    if (TypeID == CFGetTypeID(pixelBuffer))
    {
      if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1111970369 && !CVPixelBufferLockBaseAddress(pixelBuffer, 0))
      {
        v37 = x / v30;
        v38 = y / v31;
        v39 = width / v30;
        v40 = height / v31;
        DeviceRGB = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x277CC4B78], 0);
        if (!DeviceRGB)
        {
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
        }

        theDict = DeviceRGB;
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        v43 = CVPixelBufferGetHeight(pixelBuffer);
        v44 = CVPixelBufferGetWidth(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v46 = v37 * v44;
        v47 = v38 * v43;
        v48 = v39 * v44;
        v49 = v40 * v43;
        v89.origin.x = v46;
        v89.origin.y = v47;
        v89.size.width = v48;
        v89.size.height = v49;
        v90 = CGRectIntegral(v89);
        v50 = v90.origin.x;
        v51 = v90.origin.y;
        v52 = rint(v90.size.height);
        v78 = rint(v90.size.width);
        v53 = (4 * v78 + 15) & 0xFFFFFFFFFFFFFFF0;
        __dst = malloc_type_malloc(v53 * v52, 0xF7363B64uLL);
        if (v52)
        {
          v54 = rint(v50);
          v55 = rint(v51);
          if (v53 >= BytesPerRow)
          {
            v56 = BytesPerRow;
          }

          else
          {
            v56 = (4 * v78 + 15) & 0xFFFFFFFFFFFFFFF0;
          }

          v57 = &BaseAddress[4 * v54 + BytesPerRow * v55];
          v58 = __dst;
          v59 = v52;
          do
          {
            memcpy(v58, v57, v56);
            v58 += v53;
            v57 += BytesPerRow;
            --v59;
          }

          while (v59);
        }

        v60 = CGDataProviderCreateWithData(0, __dst, v53 * v52, sub_26154D718);
        v61 = CGImageCreate(v78, v52, 8uLL, 0x20uLL, v53, theDict, 0x2002u, v60, 0, 0, kCGRenderingIntentPerceptual);
        v91.origin.x = v46 - v50;
        v91.origin.y = v47 - v51;
        v91.size.width = v48;
        v91.size.height = v49;
        v62 = CGImageCreateWithImageInRect(v61, v91);
        CGImageRelease(v61);
        CGDataProviderRelease(v60);
        CGColorSpaceRelease(theDict);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        if (v62)
        {
          v63 = CGImageGetWidth(v62);
          v64 = CGImageGetHeight(v62);
          v65 = ACBSCreateFrameInfoBySearchingForBarcodesInCGImage(a1, v62, 0.0, 0.0, v63, v64);
          CGImageRelease(v62);
          return v65;
        }

        return 0;
      }

      goto LABEL_51;
    }

LABEL_50:
    CVPixelBufferGetTypeID();
    CFGetTypeID(pixelBuffer);
LABEL_51:
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    return 0;
  }

  v13 = CMGetAttachment(pixelBuffer, @"ImagePyramidArray", 0);
  v14 = MRCSampleCreateWithCVPixelBufferAndPyramid(pixelBuffer, v13, a3, a4, a5, a6);
  if (v14)
  {
    v15 = v14;
    MRCSampleGeneratePyramidIfNotPresent(v14);
    v16 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v18 = ACBSConfigCopySymbologiesEnabled(a1);
    CFDictionarySetValue(Mutable, @"MRCDecoderOptionSymbologies", v18);
    CFRelease(v18);
    sub_261544980(Mutable, @"MRCDecoderOptionLocatingMode", *(a1 + 4));
    sub_261544980(Mutable, @"MRCDecoderOptionMaximumQRModuleSamplingCount", *(a1 + 16));
    sub_261544980(Mutable, @"MRCDecoderOptionMaximumQRFinderPatternTripletCount", *(a1 + 20));
    LODWORD(valuePtr) = *(a1 + 32);
    v19 = CFNumberCreate(v16, kCFNumberFloat32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"MRCDecoderOptionMaximum1DSymbologyDecodingTime", v19);
    CFRelease(v19);
    sub_261544980(Mutable, @"MRCDecoderOptionMaximum1DSymbologyDecodingScanlineCount", *(a1 + 24));
    sub_261544980(Mutable, @"MRCDecoderOptionMinimum1DSymbologyDecodingScanlineCount", *(a1 + 28));
    v20 = MEMORY[0x277CBED28];
    if (!*(a1 + 36))
    {
      v20 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"MRCDecoderOptionShouldStopAtFirstPyramidWith2DSymbologies", *v20);
    v21 = CFArrayCreateMutable(v16, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v21, @"LocatorPoints");
    CFArrayAppendValue(v21, @"FocusSharpness");
    if (*(a1 + 1) == 1)
    {
      CFArrayAppendValue(v21, @"FrameFailedLocations");
    }

    if (*a1 == 1)
    {
      CFArrayAppendValue(v21, @"FrameDebugData");
    }

    CFDictionarySetValue(Mutable, @"MRCDecoderOptionNeededResultAttributes", v21);
    CFRelease(v21);
    valuePtr = 0;
    v22 = CFNumberCreate(v16, kCFNumberCFIndexType, &valuePtr);
    CFDictionarySetValue(Mutable, @"MRCDecoderOptionAlgorithmVersion", v22);
    CFRelease(v22);
    v23 = MRCDecoderCreateWithOptions(Mutable);
    CFRelease(Mutable);
    err = 0;
    v24 = MRCDecoderDecodeSampleWithRegions(v23);
    CFRelease(v23);
    if (v24)
    {
      v25 = MRCDecoderResultCopyAttributes(v24);
      MutableCopy = CFDictionaryCreateMutableCopy(v16, 0, v25);
      CFRelease(v25);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v83 = 0;
    sub_261544980(MutableCopy, @"FrameResultErrorCode", 0);
    if (v24)
    {
      DescriptorCount = MRCDecoderResultGetDescriptorCount(v24);
      if (DescriptorCount >= 1)
      {
        v68 = DescriptorCount;
        theDicta = MutableCopy;
        __dsta = v15;
        v69 = CFArrayCreateMutable(v16, DescriptorCount, MEMORY[0x277CBF128]);
        for (i = 0; i != v68; ++i)
        {
          DescriptorAtIndex = MRCDecoderResultGetDescriptorAtIndex(v24, i);
          if (DescriptorAtIndex)
          {
            v72 = MRCDescriptorCopyAttributes(DescriptorAtIndex);
            v73 = CFDictionaryCreateMutableCopy(v16, 0, v72);
            CFRelease(v72);
            v74 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            for (j = 0; j != 13; ++j)
            {
              v76 = *off_279AD95D8[j];
              Value = CFDictionaryGetValue(v73, v76);
              if (Value)
              {
                CFDictionarySetValue(v74, v76, Value);
                CFDictionaryRemoveValue(v73, v76);
              }
            }

            CFDictionarySetValue(v73, @"CodeProperties", v74);
            CFRelease(v74);
            if (v73)
            {
              CFArrayAppendValue(v69, v73);
              CFRelease(v73);
            }
          }
        }

        MutableCopy = theDicta;
        CFDictionarySetValue(theDicta, @"SymbolDescriptionArray", v69);
        CFRelease(v69);
        v15 = __dsta;
      }

      CFRelease(v24);
    }

    CFRelease(v15);
    return MutableCopy;
  }

  return 0;
}

const __CFDictionary *ACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncoding(CFDictionaryRef theDict, const void *a2)
{
  if (!theDict)
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
  if (MutableCopy)
  {
    v5 = CFDictionaryCreateMutableCopy(v3, 0, MutableCopy);
    Value = CFDictionaryGetValue(v5, @"CodeProperties");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFDictionaryGetTypeID())
      {
        for (i = 0; i != 13; ++i)
        {
          v10 = *off_279AD95D8[i];
          v11 = CFDictionaryGetValue(v7, v10);
          if (v11)
          {
            CFDictionarySetValue(v5, v10, v11);
          }
        }
      }

      CFDictionaryRemoveValue(v5, @"CodeProperties");
    }

    v12 = MRCDescriptorCreateWithAttributes(v5);
    CFRelease(v5);
    if (v12)
    {
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v14 = Mutable;
      if (a2)
      {
        CFDictionarySetValue(Mutable, @"MRCDescriptorPayloadDecodingOptionDefaultEncoding", a2);
      }

      v15 = MRCDescriptorDecodePayloadWithOptions(v12, v14, 0);
      CFRelease(v12);
      CFRelease(v14);
      if (v15)
      {
        CFDictionarySetValue(MutableCopy, @"BarcodeString", v15);
        CFRelease(v15);
      }
    }
  }

  return MutableCopy;
}

float sub_26153CC84(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = floor(a4 + a6 * 0.5) + -10.0;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  v9 = a5;
  v10 = a3 - v7;
  if (v10 >= 0x14)
  {
    LODWORD(v10) = 20;
  }

  *(a1 + 40) = -1077342245;
  result = a7;
  *(a1 + 44) = result;
  *(a1 + 48) = v10;
  *(a1 + 32) = v8 + (v10 >> 1);
  *(a1 + 36) = v9 + a7 / 2;
  *a1 = v8;
  *(a1 + 4) = v9;
  v12 = v9 + a7;
  *(a1 + 8) = v8;
  *(a1 + 12) = v12;
  v13 = v10 + v8;
  *(a1 + 16) = v13;
  *(a1 + 20) = v12;
  *(a1 + 24) = v13;
  *(a1 + 28) = v9;
  ++*a2;
  return result;
}

float sub_26153CD14(uint64_t a1, _DWORD *a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = a6;
  if (a6 >= 5)
  {
    v7 = 5;
  }

  v8 = vcvtmd_s64_f64(a4 + a6 * 0.5 - (v7 / 2));
  v9 = a1 + 56 * a3;
  *(v9 + 40) = -1077342245;
  result = a7;
  *(v9 + 44) = result;
  *(v9 + 48) = v7;
  *(v9 + 32) = v8 + v7 / 2;
  *(v9 + 36) = a5 + a7 / 2;
  *v9 = v8;
  *(v9 + 4) = a5;
  v11 = a7 + a5 - 1;
  *(v9 + 8) = v8;
  *(v9 + 12) = v11;
  v12 = v7 + v8 - 1;
  *(v9 + 16) = v12;
  *(v9 + 20) = v11;
  *(v9 + 24) = v12;
  *(v9 + 28) = a5;
  ++*a2;
  return result;
}

float sub_26153CDAC(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = a5 + a7 * 0.5 + -10.0;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  v9 = a4;
  v10 = a6;
  v11 = a3 - v7;
  if (v11 >= 0x14)
  {
    LODWORD(v11) = 20;
  }

  result = v10;
  *(a1 + 44) = v10;
  *(a1 + 48) = v11;
  *(a1 + 28) = v8;
  *(a1 + 32) = v9 + v10 / 2;
  *(a1 + 36) = v8 + (v11 >> 1);
  *a1 = v9;
  *(a1 + 4) = v8;
  v13 = v11 + v8;
  *(a1 + 8) = v9;
  *(a1 + 12) = v13;
  v14 = v9 + v10;
  *(a1 + 16) = v14;
  *(a1 + 20) = v13;
  *(a1 + 24) = v14;
  ++*a2;
  return result;
}

float sub_26153CE30(uint64_t a1, _DWORD *a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = a7;
  if (a7 >= 5)
  {
    v7 = 5;
  }

  v8 = a4;
  v9 = vcvtmd_s64_f64(a5 + a7 * 0.5 - (v7 / 2));
  v10 = a1 + 56 * a3;
  result = a6;
  *(v10 + 44) = result;
  *(v10 + 48) = v7;
  *(v10 + 28) = v9;
  *(v10 + 32) = v8 + a6 / 2;
  *(v10 + 36) = v9 + v7 / 2;
  *v10 = v8;
  *(v10 + 4) = v9;
  v12 = v7 + v9 - 1;
  *(v10 + 8) = v8;
  *(v10 + 12) = v12;
  v13 = a6 + v8 - 1;
  *(v10 + 16) = v13;
  *(v10 + 20) = v12;
  *(v10 + 24) = v13;
  ++*a2;
  return result;
}

uint64_t sub_26153CEC0(uint64_t result, _DWORD *a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a7 >= 3)
  {
    if (a4 >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = -a4;
    }

    if (!a4)
    {
      v8 = 1;
    }

    v9 = vcvtmd_s64_f64(a5 + a7 * 0.5);
    v10 = v9 - v8;
    v11 = v8 + v9;
    v12 = v11 - 1;
    v23[0] = v10;
    v23[1] = v11 - 1;
    v13 = (a5 + a7 + -1.0);
    v14 = v11 + 1;
    if (v10 >= a5 && v10 + 2 <= v13 && v12 >= a5 && v14 <= v13)
    {
      v18 = 0;
      v19 = a6;
      v20 = a8 + a6 - 1;
      v21 = result + 56 * a3 + 24;
      do
      {
        *(v21 + 12) = a6 + a8 / 2;
        *(v21 + 16) = -1077342245;
        *(v21 + 20) = a8;
        *(v21 + 24) = 1077936128;
        v22 = v23[v18];
        *(v21 + 4) = v19;
        *(v21 + 8) = v22 + 1;
        *(v21 - 24) = v22;
        *(v21 - 20) = v19;
        *(v21 - 16) = v22;
        *(v21 - 12) = v20;
        v22 += 2;
        *(v21 - 8) = v22;
        *(v21 - 4) = v20;
        *v21 = v22;
        v21 += 56;
        ++v18;
      }

      while (v18 != 2);
      *a2 += 2;
    }
  }

  return result;
}

void sub_26153CFF0(uint64_t a1, int *a2, int a3, double a4, double a5, double a6, double a7)
{
  v14 = *a2;
  sub_26153CD14(a1, a2, a3, a4, a5, a6, a7);
  v15 = *a2 - v14;
  if (v15 >= 1)
  {

    sub_26153CEC0(a1, a2, v15 + a3, 10, a4, a5, a6, a7);
  }
}

float sub_26153D0A0(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_26153CD14(a1, a2, 0, a4, a5, a6, a7);
  v14 = floor(a4 + a6 * 0.5) + -10.0;
  if (v14 <= 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  if ((a3 - v14) >= 0x14)
  {
    v16 = 20;
  }

  else
  {
    v16 = a3 - v15;
  }

  v17 = atan2f(a7, v16);
  v18 = a5 + a7 / 2;
  v19 = v15 + (v16 >> 1);
  *(a1 + 88) = v19;
  *(a1 + 92) = v18;
  v20 = sqrtf((a7 * a7 + v16 * v16));
  *(a1 + 96) = v17;
  *(a1 + 100) = v20;
  *(a1 + 104) = 1065353216;
  *(a1 + 144) = v19;
  *(a1 + 148) = v18;
  result = -v17;
  *(a1 + 152) = result;
  *(a1 + 156) = v20;
  *(a1 + 160) = 1065353216;
  *(a1 + 56) = v15;
  *(a1 + 60) = a5 + a7;
  *(a1 + 64) = v15;
  *(a1 + 68) = a5 + a7;
  *(a1 + 72) = v16 + v15;
  *(a1 + 76) = a5;
  *(a1 + 80) = v16 + v15;
  *(a1 + 84) = a5;
  *(a1 + 112) = v15;
  *(a1 + 116) = a5;
  *(a1 + 120) = v15;
  *(a1 + 124) = a5;
  *(a1 + 128) = v16 + v15;
  *(a1 + 132) = a5 + a7;
  *(a1 + 136) = v16 + v15;
  *(a1 + 140) = a5 + a7;
  *a2 += 2;
  return result;
}

uint64_t sub_26153D1BC(uint64_t result, _DWORD *a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a8 >= 3)
  {
    if (a4 >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = -a4;
    }

    if (!a4)
    {
      v8 = 1;
    }

    v9 = vcvtmd_s64_f64(a6 + a8 * 0.5);
    v10 = v9 - v8;
    v11 = v8 + v9;
    v12 = v11 - 1;
    v23[0] = v10;
    v23[1] = v11 - 1;
    v13 = (a6 + a8 + -1.0);
    v14 = v11 + 1;
    if (v10 >= a6 && v10 + 2 <= v13 && v12 >= a6 && v14 <= v13)
    {
      v18 = 0;
      v19 = a5;
      v20 = a7 + a5 - 1;
      v21 = result + 56 * a3 + 24;
      do
      {
        *(v21 + 20) = a7;
        *(v21 + 24) = 1077936128;
        v22 = v23[v18];
        *(v21 + 4) = v22;
        *(v21 + 8) = a5 + a7 / 2;
        *(v21 + 12) = v22 + 1;
        *(v21 + 16) = 0;
        *(v21 - 24) = v19;
        *(v21 - 20) = v22;
        *(v21 - 16) = v19;
        *(v21 - 12) = v22 + 2;
        *(v21 - 8) = v20;
        *(v21 - 4) = v22 + 2;
        *v21 = v20;
        v21 += 56;
        ++v18;
      }

      while (v18 != 2);
      *a2 += 2;
    }
  }

  return result;
}

void sub_26153D2E4(uint64_t a1, int *a2, int a3, double a4, double a5, double a6, double a7)
{
  v14 = *a2;
  sub_26153CE30(a1, a2, a3, a4, a5, a6, a7);
  v15 = *a2 - v14;
  if (v15 >= 1)
  {

    sub_26153D1BC(a1, a2, v15 + a3, 10, a4, a5, a6, a7);
  }
}

float sub_26153D394(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_26153CE30(a1, a2, 0, a4, a5, a6, a7);
  v14 = a5 + a7 * 0.5 + -10.0;
  if (v14 <= 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  v16 = a6;
  if ((a3 - v14) >= 0x14)
  {
    v17 = 20;
  }

  else
  {
    v17 = a3 - v15;
  }

  v18 = atan2f(v17, v16);
  v19 = sqrtf((v16 * v16 + v17 * v17));
  *(a1 + 96) = v18;
  *(a1 + 100) = v19;
  *(a1 + 104) = 1065353216;
  v20 = v15 + (v17 >> 1);
  v21 = a4 + v16 / 2;
  *(a1 + 88) = v21;
  *(a1 + 92) = v20;
  result = -v18;
  *(a1 + 152) = result;
  *(a1 + 156) = v19;
  *(a1 + 160) = 1065353216;
  *(a1 + 144) = v21;
  *(a1 + 148) = v20;
  *(a1 + 56) = a4;
  *(a1 + 60) = v17 + v15;
  *(a1 + 64) = a4;
  *(a1 + 68) = v17 + v15;
  v23 = a4 + v16;
  *(a1 + 72) = v23;
  *(a1 + 76) = v15;
  *(a1 + 80) = v23;
  *(a1 + 84) = v15;
  *(a1 + 112) = a4;
  *(a1 + 116) = v15;
  *(a1 + 120) = a4;
  *(a1 + 124) = v15;
  *(a1 + 128) = v23;
  *(a1 + 132) = v17 + v15;
  *(a1 + 136) = v23;
  *(a1 + 140) = v17 + v15;
  *a2 += 2;
  return result;
}

void sub_26153D4AC(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, float64_t a6, float64x2_t a7, double a8, double a9, float a10)
{
  v69 = *MEMORY[0x277D85DE8];
  v16 = a8;
  v17 = a9;
  v64 = v17;
  v65 = v16;
  __asm { FMOV            V3.2D, #0.5 }

  a7.f64[1] = a6;
  v23 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(a7, vmulq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v16), LODWORD(v17))), _Q3)))));
  v24 = atan2f(v17, v16);
  v25 = fabsf(a10);
  if (v25 <= 1.5708)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1.5708;
  }

  v27 = a1 + 56 * a3;
  *(v27 + 40) = v26;
  *(v27 + 96) = -v26;
  v29 = __sincosf_stret(v26);
  v30 = 0;
  v31 = 0;
  v68[0] = LODWORD(v29.__cosval);
  v68[1] = LODWORD(v29.__cosval);
  v67[0] = LODWORD(v29.__sinval);
  *&v67[1] = -v29.__sinval;
  if (v26 < v24)
  {
    v32 = v65 / v29.__cosval;
  }

  else
  {
    v32 = v64 / v29.__sinval;
  }

  *v28.i32 = v32 * 0.5;
  v33 = -(v32 * 0.5);
  *v34.i8 = vadd_s32(__PAIR64__(a4, a5), -1);
  v34.i64[1] = v34.i64[0];
  v59 = v34;
  v60 = *v34.i8;
  v35 = v34.i32[1];
  v36 = vdup_lane_s32(v28, 0);
  v37 = v34.i32[0];
  v66 = vcvt_f32_s32(v23);
  v38 = vrev64_s32(v23);
  v39 = a1 + 56 * a3;
  do
  {
    v40 = v39 + v31;
    *(v40 + 44) = v32;
    *(v40 + 48) = 0x140400000;
    *(v40 + 32) = v38;
    v41 = *(v39 + v31 + 40);
    v42 = v41 + -1.57079633;
    v43 = __sincosf_stret(v42);
    v62 = *&v68[v30];
    v44 = v66.f32[1] + (v33 * v62);
    v63 = v44;
    v45 = (v44 + v43.__cosval);
    if (v35 >= v45)
    {
      v46 = (v44 + v43.__cosval);
    }

    else
    {
      v46 = v35;
    }

    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    *v40 = v47;
    v61 = *&v67[v30];
    v48 = v41 + 1.57079633;
    v50 = __sincosf_stret(v48);
    v49.f32[0] = v50.__sinval;
    v51.i64[0] = __PAIR64__(LODWORD(v50.__cosval), LODWORD(v43.__sinval));
    *&v51.u32[2] = v50;
    v52 = vmla_f32(v66, __PAIR64__(LODWORD(v62), LODWORD(v61)), v36);
    v53 = (v43.__sinval + v52.f32[0]);
    v54.f32[0] = v66.f32[0] + (v33 * v61);
    v54.f32[1] = v63;
    if (v37 >= v53)
    {
      v55 = (v43.__sinval + v52.f32[0]);
    }

    else
    {
      v55 = v37;
    }

    v54.i32[3] = v52.i32[1];
    if (v53 >= 0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    *(v40 + 28) = v56;
    v54.f32[2] = v66.f32[0] + (v33 * v61);
    v57 = vcvtq_s32_f32(vaddq_f32(v54, v51));
    v49.i32[1] = LODWORD(v43.__cosval);
    v58 = vcvt_s32_f32(vadd_f32(v52, v49));
    *(v40 + 4) = vandq_s8(vcgezq_s32(v57), vminq_s32(v59, v57));
    *(v40 + 20) = vand_s8(vcgez_s32(v58), vmin_s32(v60, v58));
    v31 += 56;
    ++v30;
  }

  while (v31 != 112);
  *a2 += 2;
}

uint64_t sub_26153D780(uint64_t a1, int *a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9)
{
  if (a5 <= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = a5;
  }

  v18 = v17 + v17;
  v19 = __sincosf_stret(a9);
  v20 = a7 - (v19.__cosval * v18);
  v21 = a8 - (v19.__sinval * v18);
  v53 = v21 - v19.__cosval;
  v54 = v19.__sinval + v20;
  v22 = (v19.__cosval * v18) + a7;
  v23 = (v19.__sinval * v18) + a8;
  v47 = v23 - v19.__cosval;
  v48 = v19.__sinval + v22;
  v46 = v20 - v19.__sinval;
  v52 = v20 - v19.__sinval;
  v44 = v22 - v19.__sinval;
  v45 = v19.__cosval + v21;
  v50 = v22 - v19.__sinval;
  v51 = v19.__cosval + v21;
  v24 = v19.__cosval + v23;
  v49 = v19.__cosval + v23;
  v25 = a3;
  v26 = a4;
  v27 = a3 + a5;
  v28 = a4 + a6;
  result = sub_26155D4B4(&v54, &v53, &v48, &v47, v19.__sinval + v20, v21 - v19.__cosval, v19.__sinval + v22, v23 - v19.__cosval, v25, v27, v26, v28);
  if (result)
  {
    v30 = a3;
    v31 = a4;
    v32 = a4 + a6;
    result = sub_26155D4B4(&v52, &v51, &v50, &v49, v46, v45, v44, v24, v30, v27, v31, v32);
    if (result)
    {
      v33 = v53;
      v34 = v54;
      v35 = v47;
      v36 = v48;
      v37 = v51;
      v38 = v52;
      v39 = v49;
      v40 = v50;
      v41 = (sqrtf(((v53 - v47) * (v53 - v47)) + ((v54 - v48) * (v54 - v48))) + sqrtf(((v51 - v49) * (v51 - v49)) + ((v52 - v50) * (v52 - v50)))) * 0.5;
      if (v41 >= 20.0)
      {
        v42 = a1 + 56 * *a2;
        *v42 = v54;
        *(v42 + 4) = v33;
        *(v42 + 24) = v36;
        *(v42 + 28) = v35;
        *(v42 + 8) = v38;
        *(v42 + 12) = v37;
        *(v42 + 16) = v40;
        *(v42 + 20) = v39;
        *(v42 + 32) = ((v36 + ((v34 + v38) + v40)) * 0.25);
        *(v42 + 36) = ((v35 + ((v33 + v37) + v39)) * 0.25);
        *(v42 + 40) = a9;
        *(v42 + 44) = v41;
        *(v42 + 48) = 1077936128;
        ++*a2;
      }
    }
  }

  return result;
}

uint64_t sub_26153D9A8(uint64_t a1, const UInt8 *a2, unint64_t a3, unint64_t a4, size_t a5, int a6, int a7, atomic_ullong **a8, double a9, double a10, double a11, double a12, float a13)
{
  v472 = a7;
  v461 = a2;
  v462 = a5;
  v18 = a12;
  v19 = a11;
  v21 = a9;
  v541 = *MEMORY[0x277D85DE8];
  v546 = CGRectInset(*&a9, a11 * -0.100000001, a12 * -0.100000001);
  v468 = a3;
  v469 = a4;
  v552.size.width = a3;
  v552.size.height = a4;
  v552.origin.x = 0.0;
  v552.origin.y = 0.0;
  v448 = a4;
  v449 = a3;
  v547 = CGRectIntersection(v546, v552);
  origin = v547.origin;
  v482 = *&v547.origin.y;
  size = v547.size;
  v484 = *&v547.size.height;
  if (CGRectIsEmpty(v547))
  {
    return 11;
  }

  v548.origin.x = origin.x;
  v548.origin.y = v482.f64[0];
  v548.size.width = size.width;
  *&v548.size.height = v484;
  if (CGRectIsInfinite(v548))
  {
    return 11;
  }

  v549.origin.x = origin.x;
  v549.origin.y = v482.f64[0];
  v549.size.width = size.width;
  *&v549.size.height = v484;
  if (CGRectIsNull(v549))
  {
    return 11;
  }

  LODWORD(v531.realp) = 0;
  BYTE4(v531.realp) = 1;
  v23 = *(a1 + 8);
  Mutable = sub_2614E9290(v23, &v531);
  if ((Mutable & a6) == 0)
  {
    return 11;
  }

  v476 = *(v23 + 56);
  v471 = v476 >= 0x20000;
  v502[0] = v468;
  v502[1] = v469;
  v502[3] = 0x100000000;
  v502[2] = v462;
  v502[4] = v461;
  v25 = *(v23 + 53);
  v480 = Mutable & a6;
  if (v25 == 1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v26 = Mutable;
    v23 = *(a1 + 8);
  }

  else
  {
    v26 = 0;
  }

  v501 = -1.0;
  v500 = 0;
  v28 = *(v23 + 44);
  v443 = a8;
  v437 = a1;
  v479 = v26;
  if (!v472)
  {
    v32 = 0.0;
    switch(*(v23 + 8))
    {
      case 2:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        sub_26153CD14(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_209;
      case 3:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        sub_26153CC84(*&v32, &v500, v468, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_209;
      case 4:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_207;
      case 5:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        sub_26153D0A0(*&v32, &v500, v468, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_207;
      case 6:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        sub_26153CE30(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_209;
      case 7:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        sub_26153CDAC(*&v32, &v500, v469, origin.x, v482.f64[0], size.width, *&v484);
LABEL_209:
        v28 = 1;
        goto LABEL_213;
      case 8:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        sub_26153D2E4(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_207;
      case 9:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        sub_26153D394(*&v32, &v500, v469, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_207;
      case 0xA:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x70uLL, 0x100004021716A34uLL));
        sub_26153CD14(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153CE30(*&v32, &v500, 1, origin.x, v482.f64[0], size.width, *&v484);
        v28 = 2;
        goto LABEL_213;
      case 0xB:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x150uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153D2E4(*&v32, &v500, v500, origin.x, v482.f64[0], size.width, *&v484);
        goto LABEL_211;
      case 0xC:
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x230uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153D2E4(*&v32, &v500, v500, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153CEC0(*&v32, &v500, v500, 20, origin.x, v482.f64[0], size.width, *&v484);
        v105 = v500;
        v106 = *&v32;
        x = origin.x;
        v108 = v482.f64[0];
        width = size.width;
        v110 = *&v484;
        v111 = 20;
        goto LABEL_194;
      case 0xD:
        v126 = (*&v484 * 0.5);
        v127 = (size.width * 0.5);
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x8C0uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153D2E4(*&v32, &v500, v500, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 0.17453);
        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 1.3963);
        if (vcvts_n_f32_s32(v127, 3uLL) > 10.0 && *&v484 > 20.0)
        {
          v129 = size.width;
          sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v129 * 0.0625)), origin.x, v482.f64[0], size.width, *&v484);
        }

        v130 = v127;
        v131 = size.width;
        if (vcvts_n_f32_s32(v126, 3uLL) > 10.0 && size.width > 20.0)
        {
          v133 = *&v484;
          sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v133 * 0.0625)), origin.x, v482.f64[0], size.width, *&v484);
          v131 = size.width;
        }

        v134 = v126;
        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, v131, *&v484, 0.34907);
        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 1.2217);
        if ((v130 * 0.25) > 10.0 && *&v484 > 20.0)
        {
          v136 = size.width;
          sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v136 * 0.125)), origin.x, v482.f64[0], size.width, *&v484);
        }

        v137 = size.width;
        if ((v134 * 0.25) > 10.0 && size.width > 20.0)
        {
          v139 = *&v484;
          sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v139 * 0.125)), origin.x, v482.f64[0], size.width, *&v484);
          v137 = size.width;
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, v137, *&v484, 0.5236);
        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 1.0472);
        if ((v130 * 0.375) > 10.0 && *&v484 > 20.0)
        {
          v141 = size.width;
          sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v141 * 0.1875)), origin.x, v482.f64[0], size.width, *&v484);
        }

        v142 = size.width;
        if ((v134 * 0.375) > 10.0 && size.width > 20.0)
        {
          v144 = *&v484;
          sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v144 * 0.1875)), origin.x, v482.f64[0], size.width, *&v484);
          v142 = size.width;
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, v142, *&v484, 0.7854);
        if ((v130 * 0.5) > 10.0 && *&v484 > 20.0)
        {
          v146 = size.width;
          Mutable = sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v146 * 0.25)), origin.x, v482.f64[0], size.width, *&v484);
        }

        width = size.width;
        if ((v134 * 0.5) > 10.0 && size.width > 20.0)
        {
          v148 = *&v484;
          Mutable = sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v148 * 0.25)), origin.x, v482.f64[0], size.width, *&v484);
          width = size.width;
        }

        if ((v130 * 0.75) > 10.0 && *&v484 > 20.0)
        {
          v150 = width;
          Mutable = sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v150 * 0.375)), origin.x, v482.f64[0], width, *&v484);
          width = size.width;
        }

        if ((v134 * 0.75) <= 10.0 || width <= 20.0)
        {
          goto LABEL_211;
        }

        v105 = v500;
        v110 = *&v484;
        v152 = *&v484;
        v111 = fabsf(roundf(v152 * 0.375));
        v106 = *&v32;
        x = origin.x;
        v108 = v482.f64[0];
LABEL_194:
        Mutable = sub_26153D1BC(v106, &v500, v105, v111, x, v108, width, v110);
LABEL_211:
        v28 = 6;
        goto LABEL_213;
      case 0xE:
        v112 = (size.width * 0.5);
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x498uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 1.3963);
        v113 = v112;
        if (vcvts_n_f32_s32(v112, 3uLL) > 10.0 && *&v484 > 20.0)
        {
          v115 = size.width;
          sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v115 * 0.0625)), origin.x, v482.f64[0], size.width, *&v484);
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 1.2217);
        v116 = *&v484;
        if ((v113 * 0.25) > 10.0 && *&v484 > 20.0)
        {
          v118 = size.width;
          sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v118 * 0.125)), origin.x, v482.f64[0], size.width, *&v484);
          v116 = *&v484;
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, v116, 1.0472);
        if ((v113 * 0.375) > 10.0 && *&v484 > 20.0)
        {
          v120 = size.width;
          sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v120 * 0.1875)), origin.x, v482.f64[0], size.width, *&v484);
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 0.7854);
        v121 = *&v484;
        if ((v113 * 0.5) > 10.0 && *&v484 > 20.0)
        {
          v123 = size.width;
          Mutable = sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v123 * 0.25)), origin.x, v482.f64[0], size.width, *&v484);
          v121 = *&v484;
        }

        if ((v113 * 0.75) > 10.0 && v121 > 20.0)
        {
          v125 = size.width;
          Mutable = sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(v125 * 0.375)), origin.x, v482.f64[0], size.width, v121);
        }

        goto LABEL_207;
      case 0xF:
        v89 = (*&v484 * 0.5);
        v32 = COERCE_DOUBLE(malloc_type_malloc(0x498uLL, 0x100004021716A34uLL));
        sub_26153D2E4(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, size.width, *&v484, 0.17453);
        v90 = size.width;
        v91 = v89;
        if (vcvts_n_f32_s32(v89, 3uLL) > 10.0 && size.width > 20.0)
        {
          v93 = *&v484;
          sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v93 * 0.0625)), origin.x, v482.f64[0], size.width, *&v484);
          v90 = size.width;
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, v90, *&v484, 0.34907);
        v94 = size.width;
        if ((v91 * 0.25) > 10.0 && size.width > 20.0)
        {
          v96 = *&v484;
          sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v96 * 0.125)), origin.x, v482.f64[0], size.width, *&v484);
          v94 = size.width;
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, v94, *&v484, 0.5236);
        v97 = size.width;
        if ((v91 * 0.375) > 10.0 && size.width > 20.0)
        {
          v99 = *&v484;
          sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v99 * 0.1875)), origin.x, v482.f64[0], size.width, *&v484);
          v97 = size.width;
        }

        sub_26153D4AC(*&v32, &v500, v500, v468, v469, origin.x, v482, v97, *&v484, 0.7854);
        v100 = size.width;
        if ((v91 * 0.5) > 10.0 && size.width > 20.0)
        {
          v102 = *&v484;
          Mutable = sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v102 * 0.25)), origin.x, v482.f64[0], size.width, *&v484);
          v100 = size.width;
        }

        if ((v91 * 0.75) > 10.0 && v100 > 20.0)
        {
          v104 = *&v484;
          Mutable = sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(v104 * 0.375)), origin.x, v482.f64[0], v100, *&v484);
        }

LABEL_207:
        v28 = 3;
        goto LABEL_213;
      case 0x11:
        v32 = COERCE_DOUBLE(malloc_type_malloc((112 * v28) | 1, 0x100004021716A34uLL));
        sub_26153CE30(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        if (v28 < 1)
        {
          goto LABEL_213;
        }

        *&v466 = a13;
        v154 = 1;
        v155 = v28;
        do
        {
          v153 = *&v484;
          Mutable = sub_26153D1BC(*&v32, &v500, v500, fabsf(roundf(((v154++ / v28) * 0.5) * v153)), origin.x, v482.f64[0], size.width, *&v484);
          --v155;
        }

        while (v155);
        goto LABEL_26;
      case 0x12:
        v32 = COERCE_DOUBLE(malloc_type_malloc((112 * v28) | 1, 0x100004021716A34uLL));
        sub_26153CD14(*&v32, &v500, 0, origin.x, v482.f64[0], size.width, *&v484);
        if (v28 < 1)
        {
          goto LABEL_213;
        }

        *&v466 = a13;
        v157 = 1;
        v158 = v28;
        do
        {
          v156 = size.width;
          Mutable = sub_26153CEC0(*&v32, &v500, v500, fabsf(roundf(((v157++ / v28) * 0.5) * v156)), origin.x, v482.f64[0], size.width, *&v484);
          --v158;
        }

        while (v158);
        goto LABEL_26;
      default:
LABEL_213:
        v48 = v500;
        if (v500 > 0)
        {
          goto LABEL_214;
        }

        goto LABEL_36;
    }
  }

  v29 = 0.0;
  v30 = *&v484;
  if (fabsf(a13) > 5.0)
  {
    v29 = 1.5708;
    if ((90.0 - a13) <= 5.0)
    {
      v30 = size.width;
    }

    else
    {
      v30 = size.width;
      if ((a13 + 90.0) > 5.0)
      {
        v29 = a13 * 3.14159265 / 180.0;
        v31 = __sincosf_stret(v29);
        v30 = size.width / fabsf(v31.__sinval);
        if (*&v484 / v31.__cosval < v30)
        {
          v30 = *&v484 / v31.__cosval;
        }
      }
    }
  }

  v467 = v21;
  v470 = a10;
  v473 = v19;
  v474 = v18;
  *&v466 = a13;
  v33 = v30;
  v34 = fmaxf(v33 / 20.0, 3.0);
  v35 = vcvtms_s32_f32((v33 * 0.5) / v34);
  v32 = COERCE_DOUBLE(malloc_type_malloc(0x968uLL, 0x100004021716A34uLL));
  v36 = origin.x + size.width * 0.5;
  v37 = v482.f64[0] + *&v484 * 0.5;
  v38 = __sincosf_stret(v29);
  v39 = -(v34 * v38.__sinval);
  v40 = v38.__cosval * v34;
  sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36, v37, v29);
  if (v35 >= 1)
  {
    v41 = 1;
    v42 = v35;
    do
    {
      sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36 + (v39 * v41), v37 + (v40 * v41), v29);
      sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36 + (-v39 * v41), v37 + (-v40 * v41), v29);
      ++v41;
      --v42;
    }

    while (v42);
  }

  v43 = v29 + 0.087266;
  v44 = v29 + -0.087266;
  sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36, v37, v43);
  Mutable = sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36, v37, v44);
  if (v35 > 1)
  {
    v45 = v35 >> 1;
    *&v478 = v39 + v39;
    *&v477 = -(v39 + v39);
    v46 = v40 + v40;
    *&v475 = -(v40 + v40);
    v47 = 1;
    do
    {
      sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36 + (*&v478 * v47), v37 + (v46 * v47), v43);
      sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36 + (*&v478 * v47), v37 + (v46 * v47), v44);
      sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36 + (*&v477 * v47), v37 + (*&v475 * v47), v43);
      Mutable = sub_26153D780(*&v32, &v500, origin.x, v482.f64[0], size.width, *&v484, v36 + (*&v477 * v47), v37 + (*&v475 * v47), v44);
      ++v47;
      --v45;
    }

    while (v45);
  }

  v19 = v473;
  v18 = v474;
  a10 = v470;
  v21 = v467;
LABEL_26:
  v48 = v500;
  v26 = v479;
  if (!v472 || v500 < 1)
  {
    if (v500 < 1)
    {
LABEL_36:
      v444 = 0;
      LODWORD(v473) = 19;
      goto LABEL_525;
    }

LABEL_214:
    memset(v499, 0, sizeof(v499));
    v159 = MEMORY[0x28223BE20](Mutable);
    v446 = v432 - v160;
    MEMORY[0x28223BE20](v159);
    v451 = v432 - v161;
    v453 = malloc_type_malloc(104 * v48, 0x1030040C2A760F9uLL);
    v450 = malloc_type_malloc(88 * v48, 0x10A0040F0082B6AuLL);
    v162 = *(a1 + 8);
    v447 = *(v162 + 32);
    v432[1] = v432;
    if (v447 > 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v162 = *(a1 + 8);
    }

    else
    {
      Current = 0.0;
    }

    v163 = MEMORY[0x277CBECE8];
    if (*(v162 + 51) == 1)
    {
      v444 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v162 = *(a1 + 8);
    }

    else
    {
      v444 = 0;
    }

    v164 = *(v162 + 40);
    if (v48 >= v164)
    {
      v165 = v164;
    }

    else
    {
      v165 = v48;
    }

    if (v164 >= 1)
    {
      v166 = v165;
    }

    else
    {
      v166 = v48;
    }

    v441 = v166;
    if (v166 < 1)
    {
      LODWORD(v473) = 19;
      goto LABEL_524;
    }

    v467 = 0.0;
    v452 = 0;
    v167 = v468;
    if (v468 <= v469)
    {
      v167 = v469;
    }

    v440 = v167;
    v433 = v462 * v469;
    v477 = *v163;
    v168 = v28 & 1;
    if (v28 < 0)
    {
      v168 = -v168;
    }

    v434 = v444 != 0;
    v435 = v168;
    v438 = v28 - 1;
    LODWORD(v473) = 19;
    v445 = 1.5708;
    *&v442 = -1.5708;
    v169 = 0.25;
    v439 = Current;
    v170 = v479;
    v470 = v32;
    while (1)
    {
      if (v447 > 0.0 && v439 - Current >= *(*(a1 + 8) + 32))
      {
LABEL_497:
        if (v452)
        {
          v391 = 0;
          v392 = v452;
          do
          {
            v393 = &v450[88 * v391];
            v394.f32[0] = (*(v393 + 4) + *(v393 + 3));
            v394.f32[1] = *(v393 + 5) + *(v393 + 6);
            v519[0] = vmul_f32(v394, 0x3F0000003F000000);
            v395 = *&v451[4 * v391];
            sub_26155DA58(v468, v469, &v446[52 * v395], 2u, v519, &v521, v510);
            v396 = *v443;
            v397 = v443[1];
            if (*v443 == v397)
            {
LABEL_514:
              *(v393 + 14) = v521;
              *(v393 + 15) = v510[0];
              v419 = &v453[104 * v391];
              v420 = *&dword_280CB3640[16 * *v419 + 14];
              if (v420)
              {
                v421 = *&v470 + 56 * v395;
                v32 = v470;
                if (!v420(v393, &v453[104 * v391], v421, v502))
                {
                  v531.imagp = 0;
                  v531.realp = 0;
                  v532 = 0;
                  sub_261541194(&v489, v419, &v531, 0.0);
                  v422 = v443[1];
                  if (v422 >= v443[2])
                  {
                    v423 = sub_2614BF6E4(v443, &v489);
                  }

                  else
                  {
                    *v422 = atomic_exchange(&v489, 0);
                    v423 = v422 + 1;
                  }

                  v443[1] = v423;
                  sub_261477724(&v489);
                  LODWORD(v473) = 0;
                }
              }

              else
              {
                v32 = v470;
              }
            }

            else
            {
              v398 = *(&v521 + 1);
              v399 = *(v510 + 1);
              v32 = v470;
              while (1)
              {
                explicit = atomic_load_explicit(v396, memory_order_acquire);
                if (*(explicit + 64) == 1)
                {
                  v402 = explicit + 40;
                  v401 = *(explicit + 40);
                  if (*(v402 + 8) - v401 >= 0x31uLL)
                  {
                    break;
                  }
                }

LABEL_512:
                if (++v396 == v397)
                {
                  v395 = *&v451[4 * v391];
                  goto LABEL_514;
                }
              }

              v403 = 0;
              v404 = *v401;
              v405 = v401[1];
              v406 = 1;
              while (1)
              {
                v407 = v406;
                v408 = &v401[2 * v403];
                v410 = v408[4];
                v409 = v408[5];
                v411 = v408[3] - v409;
                v412 = v404 - v410;
                v413 = v410 - v408[2];
                v414 = v413 * (v405 - v409) + v411 * (v404 - v410);
                if (v414 != 0.0)
                {
                  v415 = v398 - v410;
                  v416 = (v413 * (v399 - v409) + v411 * v415) / v414;
                  if (v416 > -0.0299999993 && v416 < 1.02999997)
                  {
                    v417 = (v412 * (v399 - v409) + (v409 - v405) * v415) / v414;
                    if (v417 > -0.0299999993 && v417 < 1.02999997)
                    {
                      v418 = 1.0 - (v416 + v417);
                      if (v418 > -0.0299999993 && v418 < 1.02999997)
                      {
                        break;
                      }
                    }
                  }
                }

                v406 = 0;
                v403 = 1;
                if ((v407 & 1) == 0)
                {
                  goto LABEL_512;
                }
              }
            }

            sub_261544BD8(&v453[104 * v391]);
            sub_261544D00(v393);
            ++v391;
          }

          while (v391 != v392);
        }

LABEL_524:
        free(v450);
        free(v453);
        a8 = v443;
        a1 = v437;
        v26 = v479;
        goto LABEL_525;
      }

      v171 = (*&v32 + 56 * *&v467);
      memset(v519, 0, sizeof(v519));
      v172 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v520 = v172;
      *(v172 + 8) = 0;
      *(v172 + 18) = 0;
      *(v172 + 10) = 0;
      *v172 = 0u;
      *(v172 + 1) = 0u;
      *(v172 + 2) = 0u;
      *(v172 + 44) = 0u;
      v456 = v171;
      v173 = *(v171 + 12);
      if (v173 <= 0.0 || v173 >= v440)
      {
        *(v171 + 12) = 1065353216;
        v173 = 1.0;
      }

      v175 = v456[8];
      v176 = v456[9];
      v178 = *(v456 + 10);
      v177 = *(v456 + 11);
      v179 = v467;
      v454 = &v446[52 * *&v467];
      v180 = sub_26155E0A4(v461, v468, v469, v462, v519, v454, v175, v176, v177, v178, v173);
      LODWORD(v519[1]) = v180;
      if (v180 <= 21)
      {
        if (v519[0])
        {
          free(v519[0]);
        }

        v519[0] = 0;
        if (LODWORD(v473) == 19 || LODWORD(v473) == 11)
        {
          LODWORD(v473) = 16;
        }

        if (!v444)
        {
          goto LABEL_492;
        }

        goto LABEL_491;
      }

      if (v179 == 0.0)
      {
        break;
      }

      v498 = 0;
      v181 = v519[0];
LABEL_284:
      pthread_once(&stru_27FEB40F0, sub_26155D3D0);
      v219 = v180 & 0x7FFFFFFE;
      v220 = (v180 & 0x7FFFFFFE) - 1;
      if ((v180 & 0x7FFFFFFE) == 0)
      {
        v220 = 0;
      }

      v221 = v220 | (v220 >> 1) | ((v220 | (v220 >> 1)) >> 2);
      v222 = v221 | (v221 >> 4) | ((v221 | (v221 >> 4)) >> 8);
      v223 = (v222 | HIWORD(v222)) + 1;
      v224 = __clz(v223) ^ 0x1F;
      v225 = v223 >> 1;
      v226 = malloc_type_calloc(v180 & 0x7FFFFFFE, 4uLL, 0x100004052888210uLL);
      v531.realp = malloc_type_calloc(v223 >> 1, 4uLL, 0x100004052888210uLL);
      v531.imagp = malloc_type_calloc(v223 >> 1, 4uLL, 0x100004052888210uLL);
      v227 = qword_27FEB43F8;
      if (v224 > *(qword_27FEB43F8 + 4))
      {
        v227 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
        sub_26155D384(v227, v224);
      }

      if (v219 >= 3)
      {
        v228 = -(v219 - 2);
        v229 = v181 + 2;
        v230 = v226;
        do
        {
          *v230++ = *v229 - *(v229 - 2);
          ++v229;
        }

        while (!__CFADD__(v228++, 1));
      }

      vDSP_ctoz(v226, 2, &v531, 1, v180 >> 1);
      vDSP_fft_zrip(v227[1], &v531, 1, v224, 1);
      vDSP_zvcmul(&v531, 1, &v531, 1, &v531, 1, v223 >> 1);
      v232 = v223;
      v233 = (v223 / 40.0);
      if (v233 <= 1)
      {
        v233 = 1;
      }

      v234 = v225 - 1;
      v235 = vcvts_n_f32_u32(v223, 1uLL);
      if (v225 - 1 >= v235)
      {
        v234 = v235;
      }

      if (v233 <= v234)
      {
        v237 = -INFINITY;
        v236 = v233;
        a1 = v437;
        v32 = v470;
        do
        {
          if (v531.realp[v233] > v237)
          {
            v237 = v531.realp[v233];
            v236 = v233;
          }

          ++v233;
        }

        while (v233 <= v234);
      }

      else
      {
        v236 = v233;
        a1 = v437;
        v32 = v470;
      }

      if (v227 != qword_27FEB43F8)
      {
        vDSP_destroy_fftsetup(v227[1]);
        free(v227);
      }

      free(v531.realp);
      free(v531.imagp);
      free(v226);
      v218 = (v232 / v236) * 1.5;
LABEL_305:
      sub_26155E77C(v181, v180, &v498 + 1, &v498);
      v497 = 0;
      v496 = 0;
      v495 = 0;
      if (v238 == 0.0)
      {
        v243 = v434;
        goto LABEL_489;
      }

      v239 = v519[0];
      v240 = v519[1];
      v241 = CFDataCreate(v477, v519[0], 4 * SLODWORD(v519[1]));
      v242 = v241;
      if (v479 && v241)
      {
        CFDictionarySetValue(v479, @"NormalizedDetrendedProfile", v241);
LABEL_311:
        CFRelease(v242);
        goto LABEL_312;
      }

      if (v241)
      {
        goto LABEL_311;
      }

LABEL_312:
      LODWORD(v531.realp) = HIDWORD(v498);
      v244 = CFNumberCreate(v477, kCFNumberFloat32Type, &v531);
      v245 = v244;
      if (v479 && v244)
      {
        CFDictionarySetValue(v479, @"ProfileUnNormalizedVariance", v244);
LABEL_316:
        CFRelease(v245);
        goto LABEL_317;
      }

      if (v244)
      {
        goto LABEL_316;
      }

LABEL_317:
      v246 = llroundf(v218);
      v247 = v501;
      if (v501 <= *&v498)
      {
        v247 = *&v498;
      }

      v501 = v247;
      *(v520 + 1) = v246;
      sub_26155E3B0(v239, v240, v246, &v497, &v496, &v495);
      if (v497 >= 1)
      {
        v248 = 0;
        while (1)
        {
          v492 = 0u;
          v493 = 0u;
          v490 = 0u;
          v491 = 0u;
          v489 = 0u;
          v249 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          v494 = v249;
          *(v249 + 8) = 0;
          *(v249 + 18) = 0;
          *(v249 + 10) = 0;
          *v249 = 0u;
          *(v249 + 1) = 0u;
          *(v249 + 2) = 0u;
          *(v249 + 44) = 0u;
          sub_261544D48(v519, &v489);
          v522 = 0;
          v521 = 0;
          v524 = 0.0;
          v523 = 0;
          v527 = 0;
          v528 = 0;
          v529 = 0;
          v250 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          v251 = v250;
          v526 = v250;
          memset(v525, 0, 32);
          *(v250 + 8) = 0;
          *(v250 + 18) = 0;
          *(v250 + 10) = 0;
          *v250 = 0u;
          *(v250 + 1) = 0u;
          *(v250 + 2) = 0u;
          *(v250 + 44) = 0u;
          if (v476 >= 0x20000)
          {
            if (dword_280CB3638 < 1)
            {
              v253 = 0x7FFFFFFF;
            }

            else
            {
              v252 = 0;
              v253 = 0x7FFFFFFF;
              v254 = &dword_280CB3658;
              do
              {
                if (((v480 >> v252) & 1) != 0 && v253 >= *v254)
                {
                  v253 = *v254;
                }

                ++v252;
                v254 += 16;
              }

              while (dword_280CB3638 != v252);
            }

            *(v250 + 5) = v253;
          }

          v250[30] = v472;
          v250[29] = v471;
          v530 = v499;
          v255 = *(v496 + 4 * v248);
          HIDWORD(v489) = v255;
          v478 = v248;
          v256 = v495[v248];
          LODWORD(v490) = v256;
          LODWORD(v257) = v256 - v255 + 1;
          v258 = v494;
          *(v494 + 2) = v257;
          v259 = DWORD2(v489);
          sub_26155E81C(v489, SDWORD2(v489), v255, v256);
          LODWORD(v531.realp) = v255;
          v260 = CFNumberCreate(v477, kCFNumberIntType, &v531);
          v261 = v260;
          if (v479)
          {
            if (v260)
            {
              break;
            }
          }

          if (v260)
          {
            goto LABEL_335;
          }

LABEL_336:
          LODWORD(v531.realp) = v256;
          v262 = CFNumberCreate(v477, kCFNumberIntType, &v531);
          v263 = v262;
          if (v479 && v262)
          {
            CFDictionarySetValue(v479, @"ProfileCropRight", v262);
          }

          else if (!v262)
          {
            goto LABEL_341;
          }

          CFRelease(v263);
LABEL_341:
          if (v476 >= 0x20000)
          {
            v264 = sub_26154A5A0(&v489, &v521, v480);
            v32 = v470;
            goto LABEL_343;
          }

          if (v256 <= v255)
          {
            v264 = 15;
            goto LABEL_364;
          }

          if (v257 < 41)
          {
            v264 = 16;
LABEL_364:
            v32 = v470;
            v266 = v478;
LABEL_365:
            if (LODWORD(v473) > 0x13)
            {
              goto LABEL_412;
            }

            if (((1 << SLOBYTE(v473)) & 0x1B704) != 0)
            {
              if ((v264 & 0xFFFFFFFC) != 4)
              {
                goto LABEL_410;
              }

              goto LABEL_371;
            }

            if (((1 << SLOBYTE(v473)) & 0xE0800) == 0)
            {
LABEL_412:
              v319 = (LODWORD(v473) & 0xFFFFFFFD) == 4 || LODWORD(v473) == 7;
              if (!v319 || v264 != 5)
              {
                goto LABEL_410;
              }
            }

LABEL_371:
            LODWORD(v473) = v264;
            goto LABEL_410;
          }

          *&v510[0] = 0;
          *&v503 = 0;
          *(&v510[0] + 1) = malloc_type_malloc(4 * (v256 - v255 + 1), 0x100004052888210uLL);
          *(&v503 + 1) = malloc_type_malloc(4 * (v256 - v255 + 1), 0x100004052888210uLL);
          v485 = 0;
          v539 = 0;
          v486 = malloc_type_malloc(4 * (v256 - v255 + 1), 0x100004052888210uLL);
          v540 = malloc_type_malloc(4 * (v256 - v255 + 1), 0x100004052888210uLL);
          v304 = sub_2614F106C(&v489, &v485, &v539);
          if (!v304)
          {
            v304 = sub_2614F1134(&v489, &v485, &v539, v257, 0.8, 0.0);
            if (!v304)
            {
              v537 = 0;
              v536 = 0u;
              *&v535[12] = 0u;
              v320 = *(&v490 + 4);
              if (v257 < 0x2C)
              {
                v264 = 14;
LABEL_481:
                *(&v490 + 4) = v320;
                goto LABEL_375;
              }

              v321 = v539;
              *&v484 = v540;
              *&size.width = v539;
              v322 = v485;
              *&v482.f64[0] = v486;
              *&origin.x = v485;
              *&v474 = v485;
              v475 = 4 * v259;
              v264 = 14;
              v323 = 0.0;
              v324 = &xmmword_261561000;
              while (2)
              {
                v455 = v257;
                v257 = v257 >> 2;
                v325 = 0.6;
                v460 = v257;
LABEL_422:
                LODWORD(v503) = v321;
                if (v321 >= 1)
                {
                  v326 = *(&v503 + 1);
                  v327 = v484;
                  v328 = size.width;
                  do
                  {
                    v329 = *v327++;
                    *v326++ = v329;
                    --*&v328;
                  }

                  while (v328 != 0.0);
                }

                LODWORD(v510[0]) = v322;
                if (v322 >= 1)
                {
                  v330 = *(&v510[0] + 1);
                  v331 = v482.f64[0];
                  v332 = origin.x;
                  do
                  {
                    v333 = **&v331;
                    *&v331 += 4;
                    *v330++ = v333;
                    --*&v332;
                  }

                  while (v332 != 0.0);
                }

                v334 = sub_2614F1134(&v489, v510, &v503, v257, v325, *(v324 + 837));
                if (v334)
                {
                  v335 = v334;
                  goto LABEL_471;
                }

                v538 = 0;
                v532 = 0;
                v531.realp = 0;
                v531.imagp = 0;
                v533 = 0.0;
                v536 = 0uLL;
                LOBYTE(v537) = 0;
                v336 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
                *&v535[20] = v336;
                v534 = 0u;
                *v535 = 0u;
                *(v336 + 8) = 0;
                *(v336 + 18) = 0;
                *(v336 + 10) = 0;
                *v336 = 0u;
                *(v336 + 1) = 0u;
                *(v336 + 2) = 0u;
                *(v336 + 44) = 0u;
                v337 = v510[0];
                v338 = *(&v503 + 1);
                sub_2615456E4(*&v510[0], *(&v510[0] + 1), v503, *(&v503 + 1), v258, v480);
                v258 = v494;
                if (*v494)
                {
                  v339 = v321;
                  v340 = *(v494 + 8);
                  if (v340)
                  {
                    free(v340);
                  }

                  v341 = v257;
                  *(v258 + 64) = 0;
                  *(v258 + 56) = 0;
                  v342 = *(v258 + 80);
                  if (v342)
                  {
                    free(v342);
                  }

                  *(v258 + 80) = 0;
                  *(v258 + 72) = 0;
                  v343 = v475;
                  *(v258 + 64) = malloc_type_malloc(v475, 0x100004052888210uLL);
                  *(v258 + 80) = malloc_type_malloc(v343, 0x100004052888210uLL);
                  v344 = v489;
                  v345 = sub_2614F1878(v489, v337, *(&v337 + 1), v338, v258 + 56, v258 + 72);
                  v335 = v345;
                  v346 = *(v258 + 64);
                  v347 = *v346;
                  v348 = *(v258 + 80);
                  if (*v346 >= *v348)
                  {
                    v347 = *v348;
                  }

                  *(&v490 + 1) = v347;
                  v349 = v346[*(v258 + 56) - 1];
                  v350 = &v348[*(v258 + 72)];
                  if (v349 <= *(v350 - 1))
                  {
                    v349 = *(v350 - 1);
                  }

                  *(&v490 + 2) = v349;
                  v257 = v341;
                  v321 = v339;
                  v322 = LODWORD(v474);
                  if (v345)
                  {
LABEL_440:
                    v351 = *&v535[20];
                    v324 = &xmmword_261561000;
                    if (v335 <= 1)
                    {
LABEL_463:
                      *(v351 + 12) = v257;
                      *(v351 + 16) = v325;
                      v377 = v533;
                      if (v533 > v323)
                      {
                        v320 = *(&v490 + 4);
                        sub_261544C1C(&v531, &v521);
                        v264 = v335;
                        v323 = v377;
                      }

                      sub_261544AB4(v351);
LABEL_466:
                      free(v351);
LABEL_467:
                      *&v535[20] = 0;
                      if (v532 != v523)
                      {
                        if (v532)
                        {
                          free(v532);
                        }

                        v532 = 0;
                      }

LABEL_471:
                      if (v264 == 14)
                      {
                        v264 = v335;
                      }

                      v325 = v325 + -0.15;
                      if (v325 <= v169)
                      {
                        if (v455 < 0xB0)
                        {
                          v251 = v526;
                          a8 = v443;
                          a1 = v437;
                          goto LABEL_481;
                        }

                        continue;
                      }

                      goto LABEL_422;
                    }

LABEL_444:
                    sub_261544AB4(v351);
                    if (v351)
                    {
                      goto LABEL_466;
                    }

                    goto LABEL_467;
                  }

                  sub_261544B04(v258, *&v535[20]);
                  v352 = DWORD2(v489);
                  v335 = sub_261545510(*(v258 + 56), *(v258 + 64), *(v258 + 72), *(v258 + 80), &v531, v344, DWORD2(v489), 0);
                  if (v335 < 2)
                  {
                    v353 = 0;
LABEL_462:
                    v351 = *&v535[20];
                    *(*&v535[20] + 28) = v353;
                    v324 = &xmmword_261561000;
                    goto LABEL_463;
                  }

                  v354 = *(v258 + 56);
                  v459 = *(v258 + 64);
                  v355 = *(v258 + 80);
                  v463 = *(v258 + 72);
                  v466 = malloc_type_malloc(4 * v463, 0x100004052888210uLL);
                  v356 = malloc_type_malloc(4 * v354, 0x100004052888210uLL);
                  v464 = v354;
                  v465 = v356;
                  v457 = v355;
                  v458 = (v354 << 32) - 0x100000000;
                  if (v352 <= (*(v355 + (v458 >> 30)) + 2.0))
                  {
                    v357 = v352 - 1;
                  }

                  else
                  {
                    v357 = (*(v355 + (v458 >> 30)) + 2.0);
                  }

                  v358 = malloc_type_malloc(4 * v357, 0x100004052888210uLL);
                  v359 = v357;
                  v360 = v358;
                  if (v357 >= 1)
                  {
                    v361 = (v344 + 4 * v357);
                    v362 = v358;
                    v363 = v357;
                    do
                    {
                      v364 = *v361--;
                      *v362++ = v364;
                      --v363;
                    }

                    while (v363);
                  }

                  v365 = v463;
                  v366 = v357;
                  v367 = v466;
                  if (v463 >= 1)
                  {
                    v368 = v463 & 0x7FFFFFFF;
                    v369 = v457 - 4;
                    v370 = v466;
                    do
                    {
                      *v370++ = v366 - *(v369 + 4 * v368--);
                    }

                    while (v368);
                  }

                  v371 = v465;
                  v372 = v464;
                  v257 = v460;
                  if (v464 >= 1)
                  {
                    v373 = v464 & 0x7FFFFFFF;
                    v374 = (v459 + 4 * (v458 >> 32));
                    v375 = v465;
                    do
                    {
                      v376 = *v374--;
                      *v375++ = v366 - v376;
                      --v373;
                    }

                    while (v373);
                  }

                  LODWORD(v464) = sub_261545510(v365, v367, v372, v371, &v531, v360, v359, 0);
                  free(v360);
                  free(v367);
                  free(v371);
                  if (v464 < 2)
                  {
                    v353 = 1;
                    v335 = v464;
                    goto LABEL_462;
                  }

                  if ((v335 & 0xFFFFFFFD) != 4 || v464 != 5)
                  {
                    goto LABEL_440;
                  }

                  v335 = 5;
                  v324 = &xmmword_261561000;
                }

                else
                {
                  v335 = 2;
                }

                break;
              }

              v351 = *&v535[20];
              goto LABEL_444;
            }
          }

          v264 = v304;
LABEL_375:
          v32 = v470;
          sub_261544B04(v251, v258);
          free(*(&v510[0] + 1));
          free(*(&v503 + 1));
          free(v486);
          free(v540);
LABEL_343:
          v266 = v478;
          if (v264 != 1)
          {
            if (!v264)
            {
              *&v265 = *(&v490 + 4);
              v484 = v265;
              v539 = *(&v490 + 4);
              LODWORD(size.width) = v456[12];
              v267 = *(v456 + 10);
              v268 = v494[28];
              v270 = v468;
              v269 = v469;
              v271 = v454;
              sub_26155DA58(v468, v469, v454, 2u, &v539, &v517, &v515);
              v272 = v445;
              if (v268)
              {
                v272 = *&v442;
              }

              *&v474 = v517;
              v273 = __sincosf_stret(v267 + v272);
              *&v473 = v518;
              *&v466 = v515;
              *&origin.x = v516;
              v274 = (*&v527 + *&v527) * 0.5;
              v275 = v274 * 4.0;
              v276 = *(&v484 + 1);
              if (*&v484 >= *(&v484 + 1))
              {
                v277 = *(&v484 + 1);
              }

              else
              {
                v277 = *&v484;
              }

              v278 = v277 - v275;
              v279 = HIDWORD(v489) & ~(SHIDWORD(v489) >> 31);
              if (*&v484 > *(&v484 + 1))
              {
                v276 = *&v484;
              }

              if (v278 <= v279)
              {
                v278 = v279;
              }

              v280 = v275 + v276;
              v281 = v490;
              if ((SDWORD2(v489) + -1.0) <= v490)
              {
                v281 = SDWORD2(v489) + -1.0;
              }

              if (v280 >= v281)
              {
                v280 = v281;
              }

              v539 = __PAIR64__(LODWORD(v280), LODWORD(v278));
              sub_26155DA58(v270, v269, v271, 2u, &v539, &v517, &v515);
              *&v475 = v273.__cosval;
              v282 = roundf(v273.__cosval * (v274 + v274));
              *v482.f64 = v273.__sinval;
              v283 = roundf(v273.__sinval * (v274 + v274));
              v284 = v282 + v517;
              v285 = v283 + v515;
              v286 = v282 + v518;
              v287 = v283 + v516;
              v288 = v517 - v282;
              v289 = v515 - v283;
              *&v484 = v518 - v282;
              v538 = 0;
              v532 = 0;
              v531.realp = 0;
              v531.imagp = 0;
              v290 = v516 - v283;
              v533 = 0.0;
              v536 = 0uLL;
              LOBYTE(v537) = 0;
              v291 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
              *&v535[20] = v291;
              v534 = 0u;
              *v535 = 0u;
              *(v291 + 8) = 0;
              *(v291 + 18) = 0;
              *(v291 + 10) = 0;
              *v291 = 0u;
              *(v291 + 1) = 0u;
              *(v291 + 2) = 0u;
              *(v291 + 44) = 0u;
              v514 = 0;
              memset(v510, 0, 28);
              v513 = 0;
              *(&v511 + 1) = 0;
              v512 = 0;
              v292 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
              *&v511 = v292;
              *(&v510[1] + 12) = 0u;
              *(&v510[2] + 12) = 0u;
              *(v292 + 8) = 0;
              *(v292 + 18) = 0;
              *(v292 + 10) = 0;
              *v292 = 0u;
              *(v292 + 1) = 0u;
              *(v292 + 2) = 0u;
              *(v292 + 44) = 0u;
              LODWORD(v510[0]) = v521;
              LODWORD(v531.realp) = v521;
              v293 = v511;
              v294 = *&v535[20];
              if (v476 < 0x20000)
              {
                v305 = v472;
                *(v511 + 30) = v472;
                *(v294 + 30) = v305;
                v306 = v471;
                *(v293 + 29) = v471;
                *(v294 + 29) = v306;
                v538 = v499;
                v514 = v499;
                v307 = v494;
                v297 = sub_26155B1F8(v502, v494[28], *(v494 + 1), *(v494 + 3), &v531, v284, v285, v286, v287, *(v494 + 4));
                v298 = sub_26155B1F8(v502, *(v307 + 28), *(v307 + 1), *(v307 + 3), v510, v288, v289, *&v484, v290, v307[4]);
              }

              else
              {
                *(v511 + 24) = v274;
                *(v294 + 24) = v274;
                v295 = v526[5];
                *(v293 + 20) = v295;
                *(v294 + 20) = v295;
                LOBYTE(v295) = v472;
                *(v293 + 30) = v472;
                *(v294 + 30) = v295;
                LOBYTE(v295) = v471;
                *(v293 + 29) = v471;
                *(v294 + 29) = v295;
                v538 = v499;
                v514 = v499;
                v296 = v494;
                v297 = sub_26155AD64(v502, v494[28], &v531, v284, v285, v286, v287);
                v298 = sub_26155AD64(v502, v296[28], v510, v288, v289, *&v484, v290);
              }

              v308 = v298;
              v169 = 0.25;
              v266 = v478;
              if (v297 || v531.imagp != v522)
              {
                v309 = 0;
              }

              else
              {
                v309 = memcmp(v532, v523, v531.imagp) == 0;
                v310 = v533;
                if (v533 <= v524)
                {
                  v310 = v524;
                }

                v524 = v310;
                if (v309)
                {
LABEL_389:
                  if (!v297 && !v309 && !v308 && v531.imagp == *(&v510[0] + 1) && *(&v510[0] + 1))
                  {
                    v312 = memcmp(*&v510[1], v532, v531.imagp);
                    sub_261544C1C(v510, &v521);
                    v309 = v312 == 0;
                    v313 = v533;
                    if (v533 <= *(&v510[1] + 2))
                    {
                      v313 = *(&v510[1] + 2);
                    }

                    v524 = v313;
                  }

                  sub_261544BD8(&v531);
                  sub_261544BD8(v510);
                  if (!v309)
                  {
                    goto LABEL_409;
                  }

                  *&v503 = (*&v474 - ((*&size.width * 0.5) * *&v475));
                  *(&v503 + 1) = (*&v466 - ((*&size.width * 0.5) * *v482.f64));
                  v504 = (*&v474 + ((*&size.width * 0.5) * *&v475));
                  v505 = (*&v466 + ((*&size.width * 0.5) * *v482.f64));
                  v506 = (*&v473 + ((*&size.width * 0.5) * *&v475));
                  v507 = (*&origin.x + ((*&size.width * 0.5) * *v482.f64));
                  v508 = (*&v473 - ((*&size.width * 0.5) * *&v475));
                  v509 = (*&origin.x - ((*&size.width * 0.5) * *v482.f64));
                  v486 = 0;
                  v487 = 0;
                  v485 = 0;
                  sub_2614BF814(&v485, &v503, v510, 4uLL);
                  sub_261541194(&v488, &v521, &v485, 0.0);
                  v314 = v479;
                  if (v485)
                  {
                    operator delete(v485);
                  }

                  *&v503 = v524;
                  v315 = CFNumberCreate(v477, kCFNumberFloat32Type, &v503);
                  v316 = v315;
                  if (v314 && v315)
                  {
                    CFDictionarySetValue(v314, @"Score", v315);
                  }

                  else if (!v315)
                  {
LABEL_405:
                    v317 = a8[1];
                    if (v317 >= a8[2])
                    {
                      v318 = sub_2614BF6E4(a8, &v488);
                    }

                    else
                    {
                      *v317 = atomic_exchange(&v488, 0);
                      v318 = v317 + 1;
                    }

                    a8[1] = v318;
                    sub_261477724(&v488);
LABEL_409:
                    v264 = 0;
                    LODWORD(v473) = 0;
                    goto LABEL_410;
                  }

                  CFRelease(v316);
                  goto LABEL_405;
                }
              }

              if (!v308 && *(&v510[0] + 1) == v522)
              {
                v309 = memcmp(*&v510[1], v523, *(&v510[0] + 1)) == 0;
                v311 = *(&v510[1] + 2);
                if (*(&v510[1] + 2) <= v524)
                {
                  v311 = v524;
                }

                v524 = v311;
              }

              goto LABEL_389;
            }

            goto LABEL_365;
          }

          v299 = v452;
          v300 = &v453[104 * v452];
          *(v300 + 12) = 0;
          *(v300 + 1) = 0;
          *(v300 + 2) = 0;
          *v300 = 0;
          *(v300 + 6) = 0;
          *(v300 + 9) = 0;
          *(v300 + 10) = 0;
          v300[88] = 0;
          v301 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          *(v300 + 8) = v301;
          *(v300 + 28) = 0u;
          *(v300 + 44) = 0u;
          *(v301 + 8) = 0;
          *(v301 + 18) = 0;
          *(v301 + 10) = 0;
          *(v301 + 44) = 0u;
          *(v301 + 1) = 0u;
          *(v301 + 2) = 0u;
          *v301 = 0u;
          v302 = &v450[88 * v299];
          *(v302 + 3) = 0u;
          *(v302 + 4) = 0u;
          *(v302 + 1) = 0u;
          *(v302 + 2) = 0u;
          *v302 = 0u;
          v266 = v478;
          v303 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          *(v302 + 10) = v303;
          *(v303 + 8) = 0;
          *(v303 + 18) = 0;
          *(v303 + 10) = 0;
          *(v303 + 44) = 0u;
          *(v303 + 1) = 0u;
          *(v303 + 2) = 0u;
          *v303 = 0u;
          sub_261544C1C(&v521, v300);
          sub_261544D48(&v489, v302);
          *&v451[4 * v299] = LODWORD(v467);
          v452 = v299 + 1;
LABEL_410:
          sub_261544D00(&v489);
          sub_261544BD8(&v521);
          v248 = v266 + 1;
          if (v248 >= v497)
          {
            if (v264)
            {
              v378 = v444 == 0;
            }

            else
            {
              v378 = 1;
            }

            v243 = !v378;
            goto LABEL_489;
          }
        }

        CFDictionarySetValue(v479, @"ProfileCropLeft", v260);
LABEL_335:
        CFRelease(v261);
        goto LABEL_336;
      }

      v243 = 0;
LABEL_489:
      sub_26154496C(&v495);
      sub_26154496C(&v496);
      v170 = v479;
      if (!v243)
      {
        goto LABEL_492;
      }

      v180 = v519[1];
LABEL_491:
      LODWORD(v531.realp) = 0;
      *(&v531.realp + 1) = v180 + -1.0;
      v379 = *(v456 + 12);
      v380 = *(v456 + 10) + v445;
      sub_26155DA58(v468, v469, v454, 2u, &v531, &v521, v510);
      v381 = *&v521;
      v382 = __sincosf_stret(v380);
      v383 = *(&v521 + 1);
      v384 = *&v510[0];
      v385 = CFArrayCreateMutable(v477, 4, MEMORY[0x277CBF128]);
      v386 = v379 * 0.5;
      v542.x = (v381 + (v386 * v382.__cosval));
      v542.y = (*&v384 + (v386 * v382.__sinval));
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v542);
      CFArrayAppendValue(v385, DictionaryRepresentation);
      CFRelease(DictionaryRepresentation);
      v543.x = (v383 + (v386 * v382.__cosval));
      v543.y = (*(&v384 + 1) + (v386 * v382.__sinval));
      v388 = CGPointCreateDictionaryRepresentation(v543);
      CFArrayAppendValue(v385, v388);
      CFRelease(v388);
      v544.x = (v383 - (v386 * v382.__cosval));
      v544.y = (*(&v384 + 1) - (v386 * v382.__sinval));
      v389 = CGPointCreateDictionaryRepresentation(v544);
      CFArrayAppendValue(v385, v389);
      CFRelease(v389);
      v545.x = (v381 - (v386 * v382.__cosval));
      v545.y = (*&v384 - (v386 * v382.__sinval));
      v390 = CGPointCreateDictionaryRepresentation(v545);
      CFArrayAppendValue(v385, v390);
      CFRelease(v390);
      CFArrayAppendValue(v444, v385);
      CFRelease(v385);
      v170 = v479;
LABEL_492:
      sub_261544D00(v519);
      if (v447 > 0.0 && *&v467 >= v438 && (LOBYTE(v467) & 1 ^ v435) == 1)
      {
        v439 = CFAbsoluteTimeGetCurrent();
        v170 = v479;
      }

      if (++*&v467 == v441)
      {
        goto LABEL_497;
      }
    }

    if (v170)
    {
      v182 = vcvt_s32_f32(*(v454 + 9));
      v183 = vcvt_s32_f32(*(v454 + 11));
      v184 = vmin_s32(v182, v183);
      v185 = vabd_s32(v182, v183);
      v186 = v184.i32[1];
      v187 = v184.i32[0];
      if (v184.i32[0] <= 25)
      {
        v188 = 25;
      }

      else
      {
        v188 = v184.i32[0];
      }

      v189 = (v188 - 25);
      v190 = vceqz_s32(v185);
      if (v186 <= 25)
      {
        v191 = 25;
      }

      else
      {
        v191 = v186;
      }

      v192 = v468 - v189;
      if (v468 - v189 >= 0x33)
      {
        v192 = 51;
      }

      v193 = vaba_s32(0x100000001, v182, v183);
      v194 = (v191 - 25);
      if (v190.i8[0])
      {
        v187 = v189;
      }

      v195 = v187;
      v196 = v193.i32[0];
      if (v190.i8[0])
      {
        v196 = v192;
      }

      v197 = v469 - v194;
      if (v469 - v194 >= 0x33)
      {
        v197 = 51;
      }

      if (v190.i8[4])
      {
        v186 = v191 - 25;
      }

      v198 = v186;
      v200 = v193.i32[1];
      if (v190.i8[4])
      {
        v200 = v197;
      }

      v201 = v200;
      v553.origin.x = 0.0;
      v553.origin.y = 0.0;
      v553.size.height = v448;
      v553.size.width = v449;
      v199 = v196;
      v550 = CGRectIntersection(*&v195, v553);
      v202 = v550.origin.x;
      y = v550.origin.y;
      v204 = v550.size.width;
      height = v550.size.height;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v207 = CFDataCreate(0, v461, v433);
      v208 = CGDataProviderCreateWithCFData(v207);
      CFRelease(v207);
      v209 = CGImageCreate(v468, v469, 8uLL, 8uLL, v462, DeviceGray, 0, v208, 0, 0, kCGRenderingIntentDefault);
      CGDataProviderRelease(v208);
      v551.origin.x = v202;
      v551.origin.y = y;
      v551.size.width = v204;
      v551.size.height = height;
      v210 = CGImageCreateWithImageInRect(v209, v551);
      if (v210)
      {
        v211 = CFDataCreateMutable(v477, 0);
        v212 = CGImageDestinationCreateWithData(v211, @"public.tiff", 1uLL, 0);
        v213 = v212;
        if (v212)
        {
          CGImageDestinationAddImage(v212, v210, 0);
          CGImageDestinationFinalize(v213);
          CFRelease(v213);
        }

        else
        {
          CFRelease(v211);
          v211 = 0;
        }

        CGImageRelease(v210);
      }

      else
      {
        v211 = 0;
      }

      CGColorSpaceRelease(DeviceGray);
      CGImageRelease(v209);
      v170 = v479;
      if (v211)
      {
        CFDictionarySetValue(v479, @"CroppedImage", v211);
        CFRelease(v211);
        v180 = v519[1];
        v170 = v479;
      }
    }

    v214 = v170 != 0;
    v181 = v519[0];
    v215 = CFDataCreate(v477, v519[0], 4 * v180);
    v216 = v215;
    if (v215)
    {
      v217 = v214;
    }

    else
    {
      v217 = 0;
    }

    if (v217)
    {
      CFDictionarySetValue(v479, @"Profile", v215);
    }

    else if (!v215)
    {
      goto LABEL_283;
    }

    CFRelease(v216);
LABEL_283:
    v498 = 0;
    v218 = 1.5;
    if (v180 < 2)
    {
      goto LABEL_305;
    }

    goto LABEL_284;
  }

  v538 = 0;
  v532 = 0;
  v531.realp = 0;
  v531.imagp = 0;
  v533 = 0.0;
  v536 = 0uLL;
  LOBYTE(v537) = 0;
  v49 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  *&v535[20] = v49;
  v534 = 0u;
  *v535 = 0u;
  *(v49 + 8) = 0;
  *(v49 + 18) = 0;
  *(v49 + 10) = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  *(v49 + 2) = 0u;
  *(v49 + 44) = 0u;
  v49[30] = v472;
  v49[29] = v471;
  if (dword_280CB3638 <= 0)
  {
    *(v49 + 5) = 0x7FFFFFFF;
    v503 = 0uLL;
    v504 = 0.0;
    LOBYTE(v489) = 0;
    LOBYTE(v491) = 0;
    v54 = size.width;
    *&v53.f64[0] = v484;
    v56 = origin.x;
    v55.f64[0] = v482.f64[0];
    v57 = *&v466;
  }

  else
  {
    v50 = 0;
    v51 = 0x7FFFFFFF;
    v52 = &dword_280CB3658;
    v54 = size.width;
    *&v53.f64[0] = v484;
    v56 = origin.x;
    v55.f64[0] = v482.f64[0];
    v57 = *&v466;
    do
    {
      if (((v480 >> v50) & 1) != 0 && v51 >= *v52)
      {
        v51 = *v52;
      }

      ++v50;
      v52 += 16;
    }

    while (dword_280CB3638 != v50);
    *(v49 + 5) = v51;
    v503 = 0uLL;
    v504 = 0.0;
    LOBYTE(v489) = 0;
    LOBYTE(v491) = 0;
  }

  v58 = 0;
  v59 = v56;
  LODWORD(v482.f64[0]) = llroundf(v59);
  v60 = v55.f64[0];
  LODWORD(origin.x) = llroundf(v60);
  v55.f64[1] = v56;
  v53.f64[1] = v54;
  *&v61 = vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vaddq_f64(v55, v53))));
  *(&v61 + 1) = v61;
  v484 = v61;
  do
  {
    v511 = 0u;
    memset(v510, 0, sizeof(v510));
    v62 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
    v512 = v62;
    *(v62 + 8) = 0;
    *(v62 + 18) = 0;
    *(v62 + 10) = 0;
    *(v62 + 44) = 0u;
    *(v62 + 1) = 0u;
    *(v62 + 2) = 0u;
    *v62 = 0u;
    v63 = (*&v32 + 56 * v58);
    v64 = sub_26155E0A4(v461, v468, v469, v462, v510, v519, *(v63 + 8), *(v63 + 9), *(v63 + 11), *(v63 + 10), *(v63 + 12));
    v65 = 0;
    DWORD2(v510[0]) = v64;
    if (v64 >= 22)
    {
      HIDWORD(v510[0]) = 0;
      LODWORD(v510[1]) = v64 - 1;
      v530 = 0;
      v523 = 0;
      v521 = 0;
      v522 = 0;
      v524 = 0.0;
      v527 = 0;
      v528 = 0;
      v529 = 0;
      v66 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v526 = v66;
      memset(v525, 0, 32);
      *(v66 + 8) = 0;
      *(v66 + 18) = 0;
      *(v66 + 10) = 0;
      *v66 = 0u;
      *(v66 + 1) = 0u;
      *(v66 + 2) = 0u;
      *(v66 + 44) = 0u;
      v67 = v526;
      *(v526 + 30) = v472;
      *(v67 + 29) = v471;
      if (dword_280CB3638 < 1)
      {
        v69 = 0x7FFFFFFF;
        v71 = v480;
      }

      else
      {
        v68 = 0;
        v69 = 0x7FFFFFFF;
        v70 = &dword_280CB3658;
        v71 = v480;
        do
        {
          if (((v480 >> v68) & 1) != 0 && v69 >= *v70)
          {
            v69 = *v70;
          }

          ++v68;
          v70 += 16;
        }

        while (dword_280CB3638 != v68);
      }

      v72 = v32;
      v67[5] = v69;
      v73 = v491;
      *(v67 + 31) = v491;
      v530 = &v503;
      v74 = sub_26154A5A0(v510, &v521, v71);
      v75 = v521;
      if ((v73 & 1) == 0 && v521 == 16 && *(v526 + 31) == 1)
      {
        v489 = 0u;
        v490 = 0u;
        LOBYTE(v491) = 1;
        if (!sub_261540FF8(v468, v469, v519, &v489, *(&v510[1] + 1), *(&v510[1] + 2)))
        {
          v76 = v491;
          if (v491)
          {
            v76 = 0;
          }

          LOBYTE(v491) = v76;
        }
      }

      if (v74 == 1)
      {
        if ((v75 - 13) <= 1)
        {
          v525[2] = LODWORD(v482.f64[0]);
          v525[7] = LODWORD(origin.x);
          v525[0] = LODWORD(v482.f64[0]);
          v525[1] = LODWORD(origin.x);
          *&v525[3] = v484;
          v79 = *&dword_280CB3640[16 * v75 + 14];
          if (v79)
          {
            v32 = v72;
            if (v79(v510, &v521, v63, v502))
            {
              goto LABEL_66;
            }

            sub_261544C1C(&v521, &v531);
            goto LABEL_75;
          }
        }
      }

      else if (!v74)
      {
        v32 = v72;
        if (!v532)
        {
LABEL_62:
          sub_261544C1C(&v521, &v531);
LABEL_66:
          v65 = 0;
LABEL_68:
          sub_261544BD8(&v521);
          goto LABEL_69;
        }

        v77 = v522;
        imagp = v531.imagp;
        if (v522 != v531.imagp || memcmp(v523, v532, v522))
        {
          if (v77 < imagp || v524 < v533)
          {
            goto LABEL_66;
          }

          goto LABEL_62;
        }

        if (v491 != 1)
        {
          v65 = sub_261540FF8(v468, v469, v519, &v534, *(&v510[1] + 1), *(&v510[1] + 2));
          goto LABEL_68;
        }

        v534 = v489;
        *v535 = v490;
LABEL_75:
        v65 = 1;
        goto LABEL_68;
      }

      v65 = 0;
      v32 = v72;
      goto LABEL_68;
    }

LABEL_69:
    sub_261544D00(v510);
    ++v58;
  }

  while (v58 < v500 && !v65);
  if (v503 && *(&v503 + 1))
  {
    (*(&v503 + 1))();
  }

  a8 = v443;
  a1 = v437;
  v26 = v479;
  if (v65)
  {
    v80 = 0;
    v522 = 0;
    v521 = 0;
    v523 = 0;
    if ((LODWORD(v531.realp) - 15) <= 0xFFFFFFFD)
    {
      v81 = v534;
      v82 = DWORD1(v534);
      v83 = *v535;
      v84 = *&v535[4];
      sub_261541098(&v521);
      v85 = v82;
      v80 = v521;
      sub_26155AFC8(v521, v21, a10, v19, v18, v57, v81, v85, v86, v83, v84);
      v26 = v479;
    }

    sub_261541194(v510, &v531, &v521, v57);
    v87 = v443[1];
    if (v87 >= v443[2])
    {
      v88 = sub_2614BF6E4(v443, v510);
    }

    else
    {
      *v87 = atomic_exchange(v510, 0);
      v88 = v87 + 1;
      v80 = v521;
    }

    a8[1] = v88;
    v501 = 1.0;
    sub_261477724(v510);
    if (v80)
    {
      v522 = v80;
      operator delete(v80);
    }

    LODWORD(v473) = 0;
  }

  else
  {
    LODWORD(v473) = 19;
  }

  sub_261544BD8(&v531);
  v444 = 0;
LABEL_525:
  if (v32 != 0.0)
  {
    free(*&v32);
  }

  if (v444)
  {
    v424 = atomic_load_explicit(a8 + 3, memory_order_acquire);
    if (v424)
    {
      v424 = CFRetain(v424);
    }

    v531.realp = v424;
    v425 = atomic_load_explicit(&v531, memory_order_acquire);
    v426 = v444;
    CFDictionarySetValue(v425, @"FrameFailedLocations", v444);
    sub_2614769A4(&v531);
    CFRelease(v426);
    v26 = v479;
  }

  if (v26)
  {
    v427 = atomic_load_explicit(a8 + 3, memory_order_acquire);
    if (v427)
    {
      v427 = CFRetain(v427);
    }

    v531.realp = v427;
    v428 = atomic_load_explicit(&v531, memory_order_acquire);
    v429 = v479;
    CFDictionarySetValue(v428, @"FrameDebugData", v479);
    sub_2614769A4(&v531);
    CFRelease(v429);
  }

  if (*(*(a1 + 8) + 50) == 1 && v501 >= 0.0)
  {
    v430 = atomic_load_explicit(a8 + 3, memory_order_acquire);
    if (v430)
    {
      v430 = CFRetain(v430);
    }

    v531.realp = v430;
    v431 = atomic_load_explicit(&v531, memory_order_acquire);
    v521 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v501);
    CFDictionarySetValue(v431, @"FocusSharpness", atomic_load_explicit(&v521, memory_order_acquire));
    sub_2614769D8(&v521);
    sub_2614769A4(&v531);
  }

  return LODWORD(v473);
}

void sub_261540F18(_Unwind_Exception *a1)
{
  sub_261477724((v1 + 736));
  if (v2)
  {
    *(v1 + 960) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

BOOL sub_261540FF8(_BOOL8 a1, unint64_t a2, float *a3, _OWORD *a4, float a5, float a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v14[0] = a5;
  v14[1] = a6;
  v7 = sub_26155DA58(a1, a2, a3, 2u, v14, &v13, v12);
  if (v7)
  {
    v8.i32[0] = vdup_lane_s32(v13, 1).u32[0];
    *&v9 = vcvt_s32_f32(__PAIR64__(LODWORD(v12[0]), v13.u32[0]));
    *(&v9 + 1) = v9;
    v8.f32[1] = v12[1];
    *&v10 = vcvt_s32_f32(v8);
    *(&v10 + 1) = v10;
    *a4 = v9;
    a4[1] = v10;
  }

  return v7;
}

void sub_261541098(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if ((v4 >> 4) > 3)
  {
    if (v4 == 64)
    {
      return;
    }

    v10 = v2 + 64;
  }

  else
  {
    v5 = 4 - (v4 >> 4);
    v6 = a1[2];
    if (v5 > (v6 - v3) >> 4)
    {
      v7 = v6 - v2;
      v8 = v7 >> 3;
      if ((v7 >> 3) <= 4)
      {
        v8 = 4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v9 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      sub_261473150(v9);
    }

    bzero(a1[1], 16 * v5);
    v10 = &v3[16 * v5];
  }

  a1[1] = v10;
}

void *sub_261541194(atomic_ullong *a1, unsigned int *a2, uint64_t a3, float a4)
{
  *(&v50 + 1) = *MEMORY[0x277D85DE8];
  result = sub_2614BF584();
  *a1 = result;
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    return result;
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = *a2;
  v11 = "";
  if ((v10 & 0x80000000) == 0 && dword_280CB3638 > v10)
  {
    v11 = *&dword_280CB3640[16 * v10 + 2];
  }

  *&v49[0] = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v11, 0x8000100u);
  v12 = atomic_exchange((atomic_load_explicit(a1, memory_order_acquire) + 16), atomic_exchange(v49, 0));
  if (v12)
  {
    CFRelease(v12);
  }

  sub_26148E848(v49);
  *&v49[0] = CFDataCreate(v9, *(a2 + 2), *(a2 + 1));
  v13 = atomic_exchange((atomic_load_explicit(a1, memory_order_acquire) + 24), atomic_exchange(v49, 0));
  if (v13)
  {
    CFRelease(v13);
  }

  sub_2614BF7E0(v49);
  v14 = a2[6];
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  *(explicit + 32) = v14;
  *(explicit + 36) = 1;
  LOWORD(explicit) = *(a2 + 88);
  *(atomic_load_explicit(a1, memory_order_acquire) + 104) = explicit | 0x100;
  v16 = *(a2 + 9);
  v17 = atomic_load_explicit(a1, memory_order_acquire);
  if ((*(v17 + 280) & 1) == 0)
  {
    *(v17 + 280) = 1;
  }

  *(v17 + 272) = v16;
  v18 = *(a2 + 7);
  v19.i64[0] = v18;
  v19.i64[1] = SHIDWORD(v18);
  v20 = vcvtq_f64_s64(v19);
  v21 = *(a2 + 11);
  v19.i64[0] = v21;
  v19.i64[1] = SHIDWORD(v21);
  v22 = vcvtq_f64_s64(v19);
  v23 = atomic_load_explicit(a1, memory_order_acquire);
  if ((*(v23 + 264) & 1) == 0)
  {
    *(v23 + 264) = 1;
  }

  *(v23 + 232) = v20;
  *(v23 + 248) = v22;
  if (*a2 - 13 <= 1)
  {
    v24 = atomic_load_explicit(a1, memory_order_acquire);
    *(v24 + 144) = 0;
    *(v24 + 152) = 0;
    *(v24 + 160) = 0;
    *(v24 + 164) = 1;
    v25 = atomic_load_explicit(a1, memory_order_acquire);
    v26 = a2[20];
    if ((*(v25 + 148) & 1) == 0)
    {
      *(v25 + 148) = 1;
    }

    *(v25 + 144) = v26;
    v27 = atomic_load_explicit(a1, memory_order_acquire);
    v28 = a2[21];
    if ((*(v27 + 156) & 1) == 0)
    {
      *(v27 + 156) = 1;
    }

    *(v27 + 152) = v28;
    v29 = *a2;
    if (*a2 == 13)
    {
      *(atomic_load_explicit(a1, memory_order_acquire) + 160) = 256;
      if (a2[1] == 3)
      {
        v30 = atomic_load_explicit(a1, memory_order_acquire);
        if (*(v30 + 208) == 1)
        {
          sub_2614BF7E0((v30 + 200));
        }

        *(v30 + 200) = 0;
        *(v30 + 184) = 0u;
        *(v30 + 168) = 0u;
        *(v30 + 208) = 1;
        *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
        *(atomic_load_explicit(a1, memory_order_acquire) + 176) = 5;
      }

      v29 = *a2;
    }

    if (v29 == 14 && a2[1])
    {
      v31 = atomic_load_explicit(a1, memory_order_acquire);
      if (*(v31 + 208) == 1)
      {
        sub_2614BF7E0((v31 + 200));
      }

      *(v31 + 200) = 0;
      *(v31 + 184) = 0u;
      *(v31 + 168) = 0u;
      *(v31 + 208) = 1;
      *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
      v32 = a2[1];
      if (v32 == 1)
      {
        v33 = 3;
      }

      else
      {
        if (v32 != 2)
        {
          goto LABEL_33;
        }

        v33 = 4;
      }

      *(atomic_load_explicit(a1, memory_order_acquire) + 176) = v33;
    }
  }

LABEL_33:
  v34 = *a2;
  if (*a2 == 9 && *(a2 + 1) >= 2uLL)
  {
    if (*(*(a2 + 2) + 1) == 102)
    {
      v35 = atomic_load_explicit(a1, memory_order_acquire);
      if (*(v35 + 208) == 1)
      {
        sub_2614BF7E0((v35 + 200));
      }

      *(v35 + 200) = 0;
      *(v35 + 184) = 0u;
      *(v35 + 168) = 0u;
      *(v35 + 208) = 1;
      *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
      if (a2[1] == 4)
      {
        *(atomic_load_explicit(a1, memory_order_acquire) + 176) = 2;
      }
    }

    v34 = *a2;
  }

  if (v34 == 16)
  {
    v36 = atomic_load_explicit(a1, memory_order_acquire);
    if (*(v36 + 208) == 1)
    {
      sub_2614BF7E0((v36 + 200));
    }

    *(v36 + 200) = 0;
    *(v36 + 184) = 0u;
    *(v36 + 168) = 0u;
    *(v36 + 208) = 1;
    *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
    if (a2[1] == 4)
    {
      *(atomic_load_explicit(a1, memory_order_acquire) + 176) = 2;
    }
  }

  v37 = *a3;
  v38 = *(a3 + 8);
  v39 = atomic_load_explicit(a1, memory_order_acquire);
  if (v37 == v38)
  {
    v41 = *(a2 + 7);
    v42.i64[0] = v41;
    v42.i64[1] = SHIDWORD(v41);
    v43 = vcvtq_f64_s64(v42);
    v44 = *(a2 + 9);
    v42.i64[0] = v44;
    v42.i64[1] = SHIDWORD(v44);
    v49[0] = v43;
    v49[1] = vcvtq_f64_s64(v42);
    v43.f64[0] = *(a2 + 11);
    v42.i64[0] = SLODWORD(v43.f64[0]);
    v42.i64[1] = SHIDWORD(v43.f64[0]);
    v45 = vcvtq_f64_s64(v42);
    v46 = *(a2 + 13);
    v42.i64[0] = v46;
    v42.i64[1] = SHIDWORD(v46);
    v49[2] = v45;
    v49[3] = vcvtq_f64_s64(v42);
    if (*(v39 + 64) == 1)
    {
      v47 = *(v39 + 40);
      if (v47)
      {
        *(v39 + 48) = v47;
        operator delete(v47);
      }

      *(v39 + 64) = 0;
    }

    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    result = sub_2614BF814((v39 + 40), v49, &v50, 4uLL);
  }

  else
  {
    if (*(v39 + 64) == 1)
    {
      v40 = *(v39 + 40);
      if (v40)
      {
        *(v39 + 48) = v40;
        operator delete(v40);
      }

      *(v39 + 64) = 0;
    }

    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    result = sub_26153986C((v39 + 40), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  }

  *(v39 + 64) = 1;
  v48 = atomic_load_explicit(a1, memory_order_acquire);
  *(v48 + 224) = a4;
  *(v48 + 228) = 1;
  return result;
}

void sub_261543F54(_Unwind_Exception *a1)
{
  sub_26147743C(&STACK[0x380]);
  if (v4)
  {
    sub_2614705CC(v4);
  }

  sub_2614705CC(v1);
  if (v5)
  {
    operator delete(v5);
  }

  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_261544070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, atomic_uint *a32)
{
  sub_2614705CC(a32);
  MEMORY[0x2667045D0](v32, 0x10B1C4009E930FDLL);
  sub_2614705CC(a32);
  JUMPOUT(0x2615440B8);
}

uint64_t sub_261544130(const void **a1, atomic_uint ***a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2614709BC();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_261544634(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_2615446EC((24 * v7), *a2, a2[1], a2[1] - *a2);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26154468C(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = sub_2615446EC(v4, *a2, a2[1], a2[1] - *a2);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_261544278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26154468C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261544298(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != 1)
  {
    sub_26148012C(a1, a2);
    *(a1 + 24) = 1;
    return a1;
  }

  if (a1 != a2)
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*(a1 + 16))
    {
      v5 = *a1;
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      *a1 = a1 + 8;
      *(v6 + 16) = 0;
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      if (*(v5 + 8))
      {
        v8 = *(v5 + 8);
      }

      else
      {
        v8 = v5;
      }

      if (v8)
      {
        v9 = sub_26151A2C4(v8);
        if (v4 == v3)
        {
          v11 = v8;
        }

        else
        {
          v10 = v4;
          do
          {
            v11 = v9;
            v12 = *(v10 + 7);
            *(v8 + 28) = v12;
            *(v8 + 32) = *(v10 + 8);
            v13 = *v7;
            v14 = (a1 + 8);
            v15 = (a1 + 8);
            if (*v7)
            {
              do
              {
                while (1)
                {
                  v14 = v13;
                  if (v12 >= *(v13 + 7))
                  {
                    break;
                  }

                  v13 = *v13;
                  v15 = v14;
                  if (!*v14)
                  {
                    goto LABEL_16;
                  }
                }

                v13 = v13[1];
              }

              while (v13);
              v15 = v14 + 1;
            }

LABEL_16:
            sub_2614805A0(a1, v14, v15, v8);
            if (v9)
            {
              v9 = sub_26151A2C4(v9);
            }

            else
            {
              v9 = 0;
            }

            v16 = v10[1];
            if (v16)
            {
              do
              {
                v4 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v4 = v10[2];
                v17 = *v4 == v10;
                v10 = v4;
              }

              while (!v17);
            }

            if (!v11)
            {
              break;
            }

            v8 = v11;
            v10 = v4;
          }

          while (v4 != v3);
        }

        sub_2614802C0(v11);
        if (!v9)
        {
          goto LABEL_35;
        }

        for (i = v9[2]; i; i = i[2])
        {
          v9 = i;
        }

        v18 = v9;
      }

      else
      {
        v18 = 0;
      }

      sub_2614802C0(v18);
    }

LABEL_35:
    if (v4 != v3)
    {
      operator new();
    }
  }

  return a1;
}

uint64_t *sub_2615444F0(uint64_t *a1)
{
  if (!a1)
  {
LABEL_7:
    sub_26149AA04("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v1 = *(a1 + 7);
      if (v1 < 10)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v1 == 9)
    {
      return a1 + 4;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

void sub_261544540(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_261480A80(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2615445D4(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2614709D4();
}

void sub_261544634(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2614709D4();
}

uint64_t sub_26154468C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_261480A80(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_2615446EC(uint64_t *result, atomic_uint **a2, atomic_uint **a3, unint64_t a4)
{
  if (a4)
  {
    sub_261470D9C(result, a4);
  }

  return result;
}

void sub_2615447D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = (*(*a2 + 16))(a2);
  v6 = (*(*a2 + 24))(a2);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56) + v9 * v6 + v7 * v5;
  v12 = *(a1 + 64) + v10 * v6 + v8 * v5;
  v13 = v9 * 0.5 + v7 * 0.5;
  v14 = v10 * 0.5 + v8 * 0.5;
  v15 = *(v4 + 8);
  v16 = *(v4 + 16);
  if (v15 >= v16)
  {
    v18 = *v4;
    v19 = v15 - *v4;
    v20 = v19 >> 5;
    v21 = (v19 >> 5) + 1;
    if (v21 >> 59)
    {
      sub_2614709BC();
    }

    v22 = v16 - v18;
    if (v22 >> 4 > v21)
    {
      v21 = v22 >> 4;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFE0)
    {
      v23 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      sub_2615445D4(v23);
    }

    v24 = (32 * v20);
    *v24 = v11;
    v24[1] = v12;
    v24[2] = v13;
    v24[3] = v14;
    v17 = 32 * v20 + 32;
    memcpy(0, v18, v19);
    v25 = *v4;
    *v4 = 0;
    *(v4 + 8) = v17;
    *(v4 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = v11;
    v15[1] = v12;
    v17 = (v15 + 4);
    v15[2] = v13;
    v15[3] = v14;
  }

  *(v4 + 8) = v17;
}

void sub_26154496C(void **a1)
{
  if (a1)
  {
    v1 = *a1;
    if (v1)
    {
      free(v1);
    }
  }
}

void sub_261544980(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t sub_2615449EC()
{
  result = pthread_once(&stru_280CB31D0, sub_261544F24);
  if (result)
  {
    exit(1);
  }

  return result;
}

void sub_261544A28(int *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    free(v4);
  }

  if (*(a1 + 1))
  {
    v5 = malloc_type_malloc(4 * *a1, 0x100004052888210uLL);
    *(a2 + 8) = v5;
    v6 = *a1;
    *a2 = v6;
    v7 = *(a1 + 1);

    memcpy(v5, v7, 4 * v6);
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
  }
}

void sub_261544AB4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    v3 = *(a1 + 80);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
  }
}

void sub_261544B04(int *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    free(v4);
  }

  *(a2 + 64) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  if (v5)
  {
    free(v5);
  }

  *(a2 + 80) = 0;
  *(a2 + 72) = 0;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  *(a2 + 64) = *(a1 + 4);
  v9 = *a1;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *a2 = v9;
  *(a2 + 16) = v6;
  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  sub_261544A28(a1 + 14, a2 + 56);

  sub_261544A28(a1 + 18, a2 + 72);
}

void sub_261544BA0(uint64_t a1)
{
  sub_261544AB4(*(a1 + 64));
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 64) = 0;
}

void sub_261544BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 16) = 0;

  sub_261544BA0(a1);
}

void sub_261544C1C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = *(a1 + 24);
  v6 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v6;
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  v7 = *(a2 + 16);
  if (v7 != v5)
  {
    if (v7)
    {
      free(v7);
      v4 = *(a1 + 8);
    }

    v8 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
    *(a2 + 16) = v8;
    v9 = *(a1 + 8);
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        *(*(a2 + 16) + i) = *(*(a1 + 16) + i);
        v9 = *(a1 + 8);
      }

      v8 = *(a2 + 16);
    }

    v8[v9] = 0;
  }

  v11 = *(a1 + 28);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 28) = v11;
  v12 = *(a1 + 64);
  v13 = *(a2 + 64);

  sub_261544B04(v12, v13);
}

void sub_261544D00(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  sub_261544AB4(*(a1 + 80));
  v3 = *(a1 + 80);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 80) = 0;
}

void sub_261544D48(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    free(*a2);
  }

  v4 = malloc_type_malloc(4 * *(a1 + 8), 0x100004052888210uLL);
  *a2 = v4;
  v5 = *(a1 + 8);
  if (v5 >= 1)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    do
    {
      v8 = *v6++;
      *v4++ = v8;
      --v7;
    }

    while (v7);
  }

  *(a2 + 8) = v5;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 20) = *(a1 + 20);
  v9 = *(a1 + 28);
  v10 = *(a1 + 44);
  v11 = *(a1 + 60);
  *(a2 + 76) = *(a1 + 76);
  *(a2 + 60) = v11;
  *(a2 + 44) = v10;
  *(a2 + 28) = v9;
  v12 = *(a1 + 80);
  v13 = *(a2 + 80);

  sub_261544B04(v12, v13);
}

uint64_t sub_261544E08(int a1, CFStringRef theString, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Length = CFStringGetLength(theString);
  v17 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  result = CFStringGetCString(theString, v17, Length + 1, 0x600u);
  if (dword_280CB31E0)
  {
    exit(1);
  }

  v19 = dword_280CB3638;
  if (dword_280CB3638 <= 31)
  {
    if (dword_280CB3638 < 1)
    {
LABEL_7:
      v23 = &dword_280CB3640[16 * dword_280CB3638];
      *v23 = a1;
      v23[1] = 0;
      *(v23 + 1) = v17;
      *(v23 + 2) = theString;
      v23[6] = a3;
      *(v23 + 28) = a4;
      *(v23 + 29) = 0;
      *(v23 + 31) = 0;
      *(v23 + 4) = a5;
      *(v23 + 5) = a6;
      *(v23 + 6) = a7;
      *(v23 + 7) = a8;
      dword_280CB3638 = v19 + 1;
    }

    else
    {
      v20 = dword_280CB3640;
      v21 = dword_280CB3638;
      while (1)
      {
        v22 = *v20;
        v20 += 16;
        if (v22 == a1)
        {
          break;
        }

        if (!--v21)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t sub_261544F24()
{
  if (dword_280CB31E0 == -1)
  {
    dword_280CB31E0 = 0;
    sub_261544E08(0, @"EAN13", 30, 1, sub_26154D5D0, sub_26154B9E0, sub_26154D6E4, 0);
    sub_261544E08(1, @"EAN8", 22, 1, sub_26154D62C, sub_26154CF2C, sub_26154D700, 0);
    sub_261544E08(2, @"UPCE", 17, 1, sub_26154D688, sub_26154D100, sub_26154D70C, 0);
    sub_261544E08(3, @"Code93", 16, 0, sub_26154F3B0, sub_26154ED44, sub_26154F400, 0);
    sub_261544E08(4, @"Code93i", 16, 0, sub_261551268, sub_261550B90, sub_261552B60, 0);
    sub_261544E08(5, @"Code39", 15, 1, sub_26154EBFC, sub_26154EBCC, sub_26154EC44, 0);
    sub_261544E08(6, @"Code39_fullAscii", 15, 1, sub_26154EBFC, sub_26154EBD8, sub_26154EC44, 0);
    sub_261544E08(7, @"Code39_checksum", 20, 1, sub_26154EBFC, sub_26154EBE4, sub_26154EC6C, 0);
    sub_261544E08(8, @"Code39_fullAscii_checksum", 20, 1, sub_26154EBFC, sub_26154EBF0, sub_26154EC6C, 0);
    sub_261544E08(9, @"Code128", 13, 1, sub_26154DE24, sub_26154DA20, sub_26154E3EC, 0);
    sub_261544E08(10, @"I2of5", 14, 0, sub_26155ACDC, sub_26155AC2C, sub_26155AD20, 0);
    sub_261544E08(11, @"I2of5_checksum", 14, 0, sub_26155ACDC, sub_26155AC74, sub_26155AD20, 0);
    sub_261544E08(12, @"ITF14", 39, 0, sub_26155ACDC, sub_26155ACBC, sub_26155AD50, 0);
    sub_261544E08(13, @"PDF417", 12, 1, sub_261557808, sub_2615534D0, sub_261557898, sub_261554F64);
    sub_261544E08(14, @"MicroPDF417", 11, 1, sub_26152E28C, sub_26152B33C, sub_26152E570, sub_26152BEAC);
    sub_261544E08(15, @"MSIPlessey", 15, 0, sub_2614C7158, sub_2614C6DA0, sub_2614C7194, 0);
    result = sub_261544E08(16, @"GS1DataBarExpanded", 12, 1, sub_2614F3AD0, sub_2614F1D0C, sub_2614F3B0C, 0);
    dword_280CB31E0 = 1;
  }

  return result;
}

BOOL sub_26154543C(const __CFString *a1, _DWORD *a2)
{
  Length = CFStringGetLength(a1);
  v5 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (CFStringGetCString(a1, v5, Length + 1, 0x600u) && (v6 = dword_280CB3638, dword_280CB3638 >= 1))
  {
    v7 = 0;
    v8 = 1;
    v9 = &qword_280CB3648;
    while (strcmp(v5, *v9))
    {
      v8 = ++v7 < v6;
      v9 += 8;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    if (a2)
    {
      *a2 = v7;
    }
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  free(v5);
  return v8;
}

uint64_t sub_261545510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  *v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v13 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v26[0] = v13;
  *(v13 + 8) = 0;
  *(v13 + 18) = 0;
  *(v13 + 10) = 0;
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *(v13 + 44) = 0u;
  sub_261544B04(*(a5 + 64), v13);
  v28 = *(a5 + 96);
  if (dword_280CB3638 < 1)
  {
    v15 = 14;
  }

  else
  {
    v14 = 0;
    v15 = 14;
    v16 = &qword_280CB3668;
    do
    {
      LODWORD(v25[0]) = v14;
      v17 = *v26[0] & (1 << v14);
      if (v17)
      {
        v18 = a8 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v17 = *(v16 - 12);
      }

      if (v17)
      {
        BYTE8(v27) = a8;
        v19 = (*v16)(a1, a2, a3, a4, v25, a6, a7);
        v15 = v15 == 14 ? v19 : v15;
        if (v19 <= 1)
        {
          v20 = v19;
          sub_261544C1C(v25, a5);
          v15 = v20;
          if (*(&v25[1] + 2) > 0.8)
          {
            break;
          }
        }
      }

      ++v14;
      v16 += 8;
    }

    while (v14 < dword_280CB3638);
    v13 = v26[0];
  }

  sub_261544AB4(v13);
  if (v26[0])
  {
    free(v26[0]);
  }

  v26[0] = 0;
  if (*&v25[1] != *(a5 + 16) && *&v25[1])
  {
    free(*&v25[1]);
  }

  return v15;
}

uint64_t sub_2615456E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, int a6)
{
  v6 = dword_280CB3638;
  if (dword_280CB3638 < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    v14 = &qword_280CB3670;
    do
    {
      if (((1 << v12) & a6) != 0)
      {
        result = (*v14)(v11, a2, a3, a4);
        if (result)
        {
          v15 = 1 << v12;
        }

        else
        {
          v15 = 0;
        }

        v13 |= v15;
        v6 = dword_280CB3638;
      }

      ++v12;
      v14 += 8;
    }

    while (v12 < v6);
  }

  *a5 = v13;
  return result;
}

void sub_2615457BC(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v7 = a1;
  v9 = *a4;
  if (!*a4)
  {
    operator new();
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  sub_2614C4FCC(&v31, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  sub_261545A74(&v18, v7, a2, &v31, 0, (v9 + 8));
  sub_261546888(a5, &v18);
  sub_2614C5E88(&v18);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (*a5)
  {
    memset(v16, 0, sizeof(v16));
    sub_2614C4FCC(v16, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    sub_261545A74(v17, v7, a2, v16, 1, (v9 + 8));
    sub_261546888(&v18, v17);
    *a5 = v18;
    if (*(a5 + 31) < 0)
    {
      operator delete(*(a5 + 8));
    }

    *(a5 + 8) = *v19;
    *(a5 + 24) = v20;
    HIBYTE(v20) = 0;
    LODWORD(v19[0]) = 0;
    v10 = v22;
    *(a5 + 32) = v21;
    *(a5 + 48) = v10;
    v11 = *(a5 + 64);
    if (v11)
    {
      *(a5 + 72) = v11;
      operator delete(v11);
    }

    v13 = a5 + 104;
    v12 = *(a5 + 104);
    *(a5 + 64) = *__p;
    *(a5 + 80) = v24;
    __p[1] = 0;
    v24 = 0;
    __p[0] = 0;
    *(a5 + 88) = v25;
    sub_261518FB4(v12);
    v14 = v27;
    *(a5 + 96) = v26;
    *(a5 + 104) = v14;
    v15 = v28;
    *(a5 + 112) = v28;
    if (v15)
    {
      v14[2] = v13;
      v26 = &v27;
      v27 = 0;
      v28 = 0;
      v14 = 0;
    }

    else
    {
      *(a5 + 96) = v13;
    }

    *(a5 + 120) = v29;
    *(a5 + 124) = v30;
    sub_261518FB4(v14);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    sub_2614C5E88(v17);
    if (v16[0])
    {
      operator delete(v16[0]);
    }
  }
}

void sub_261545A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2614C5E88(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_261518D9C(v15);
  _Unwind_Resume(a1);
}

void *sub_261545A74(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v6 = a3;
  v7 = 0;
  v149 = *MEMORY[0x277D85DE8];
  v134 = &v134;
  v135 = &v134;
  v136 = 0;
  *(v144 + 4) = 0u;
  *(&v144[1] + 4) = 0u;
  v129 = a2;
  v139 = -1;
  v9 = a5 ^ 1;
  *v140 = -1;
  memset(&v140[8], 0, 32);
  v137 = 0;
  v138 = 0;
  while (1)
  {
    v10 = *v6;
    v11 = v6[1];
    if (v7)
    {
      v35 = *(v134 + 40);
      v36 = 715827883 * (v35 - *(v134 + 36));
      v37 = HIDWORD(v36) + (v36 >> 63) + v35;
      v12 = v7;
      if (v37 >= v11 - v10)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v12 = 0;
      v37 = 0;
    }

LABEL_3:
    v13 = &v10[v37];
    if (v13 != v11)
    {
      while (*v13 != 1)
      {
        if (++v13 == v11)
        {
          v13 = v11;
          break;
        }
      }
    }

    if (v13 == v11)
    {
LABEL_62:
      v10 = v11;
    }

    else
    {
      v14 = 0;
      v15 = v12 ^ a5;
      v16 = &v137;
      v10 = v13;
      v17 = v13;
      while (1)
      {
        v18 = *v10 == 0;
        v19 = &v10[v11 - v13];
        while (*v10 != v18)
        {
          if (++v10 == v11)
          {
            v10 = v19;
            break;
          }
        }

        if (v10 == v11)
        {
          *v16 = v11 - v13;
          goto LABEL_62;
        }

        *(&v137 + v14) = v10 - v13;
        v14 += 4;
        if (v14 != 16)
        {
          goto LABEL_57;
        }

        v20 = HIDWORD(v137);
        v21 = HIDWORD(v137) + v137;
        v22 = (v15 & 1) != 0 ? HIDWORD(v138) + v138 : HIDWORD(v137) + v137;
        v23 = v22 / (HIDWORD(v138) + v138 + HIDWORD(v137) + v137);
        if (v23 >= 0.79167 && v23 <= 0.89286)
        {
          break;
        }

LABEL_56:
        v17 += v21;
        v137 = v138;
        v14 = 8;
LABEL_57:
        v16 = (&v137 + v14);
        v13 = v10;
      }

      v24 = v137 <= SHIDWORD(v137) ? &v137 : (&v137 + 4);
      v25 = v137 <= SHIDWORD(v137) ? (&v137 + 4) : &v137;
      if (v138 <= SHIDWORD(v138))
      {
        if (SHIDWORD(v137) >= v137)
        {
          v29 = v137;
        }

        else
        {
          v29 = HIDWORD(v137);
        }

        if (SHIDWORD(v137) <= v137)
        {
          v20 = v137;
        }

        v26 = &v138;
        if (v138 >= v29)
        {
          v26 = v24;
        }

        v27 = SHIDWORD(v138) < v20;
        v28 = &v138 + 1;
      }

      else
      {
        v26 = (&v138 + 4);
        if (SHIDWORD(v138) >= *v24)
        {
          v26 = v24;
        }

        v27 = v138 < *v25;
        v28 = &v138;
      }

      if (v27)
      {
        v28 = v25;
      }

      v30 = *v28;
      if (v15)
      {
        if (v137 - HIDWORD(v137) >= 0)
        {
          v31 = v137 - HIDWORD(v137);
        }

        else
        {
          v31 = HIDWORD(v137) - v137;
        }

        if (v31 >= 3)
        {
          v32 = 3 * *v26;
        }

        else
        {
          v32 = 3 * ((v21 + (v21 >> 31)) >> 1);
        }

        if (v30 >= 4 * v32)
        {
          goto LABEL_56;
        }

        v95 = &v137 + 4;
        v96 = &v138 + 4;
        do
        {
          v97 = *(v95 - 1);
          *(v95 - 1) = *v96;
          *v96 = v97;
          v96 -= 4;
          v98 = v95 >= v96;
          v95 += 4;
        }

        while (!v98);
      }

      else
      {
        if (v138 - HIDWORD(v138) >= 0)
        {
          v33 = v138 - HIDWORD(v138);
        }

        else
        {
          v33 = HIDWORD(v138) - v138;
        }

        if (v33 >= 3)
        {
          v34 = 3 * *v26;
        }

        else
        {
          v34 = 3 * ((HIDWORD(v138) + v138 + ((HIDWORD(v138) + v138) >> 31)) >> 1);
        }

        if (v30 >= 4 * v34)
        {
          goto LABEL_56;
        }
      }

      v11 = v17;
    }

LABEL_63:
    if (v11 >= v10)
    {
      break;
    }

    if (a5)
    {
      ++v10;
      v38 = v6[1];
      if (v10 != v38)
      {
        while (*v10)
        {
          if (++v10 == v38)
          {
            v10 = v6[1];
            break;
          }
        }
      }

      v39 = v11;
    }

    else
    {
      v39 = *v6;
      v40 = v11;
      while (v40 != v39)
      {
        v41 = *--v40;
        if (v41 == *v11)
        {
          v39 = v40 + 1;
          break;
        }
      }
    }

    v42 = *v6;
    v43 = &v39[-*v6];
    v44 = &v10[-*v6];
    v45 = v44 - v43;
    v46 = 0.0;
    if (v44 - v43 >= 23)
    {
      __p = 0;
      v142 = 0;
      v143 = 0;
      sub_2614C4FCC(&__p, *a4, *(a4 + 8), *(a4 + 8) - *a4);
      v50 = 0.0;
      v51 = __p;
      if (v44 <= v43 || (v43 & 0x80000000) != 0)
      {
        v52 = 0.0;
        v53 = 0.0;
      }

      else
      {
        v52 = 0.0;
        v53 = 0.0;
        if (v142 - __p >= v44)
        {
          bzero(&v145, 0x400uLL);
          v54 = (v39 - v42) & 0x7FFFFFFF;
          v55 = &v51[v43 & 0x7FFFFFFF];
          v56 = 0.0;
          v57 = 0.0;
          do
          {
            v58 = *v55++;
            v57 = v57 + v58;
            v56 = v56 + (v58 * v58);
            ++*(&v145 + v58);
            ++v54;
          }

          while (v54 < v44);
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = v56 / (v45 + 1) - ((v57 / (v45 + 1)) * (v57 / (v45 + 1)));
          v63 = (v45 * 0.3);
          while (1)
          {
            v64 = *(&v145 + v59);
            if (v64 + v60 >= v63)
            {
              break;
            }

            v61 += v64 * v59++;
            v60 += v64;
            if (v59 == 256)
            {
              goto LABEL_130;
            }
          }

          v61 += (v63 - v60) * v59;
LABEL_130:
          v91 = 0;
          v92 = 0;
          v52 = (v61 / v63);
          v93 = 255;
          while (1)
          {
            v94 = *(&v145 + v93);
            if (v94 + v91 >= v63)
            {
              break;
            }

            v92 += v94 * v93--;
            v91 += v94;
            if (v93 == -1)
            {
              goto LABEL_135;
            }
          }

          v92 += (v63 - v91) * v93;
LABEL_135:
          v50 = (v92 / v63);
          v53 = v62 + v62;
          if (!v51)
          {
            goto LABEL_88;
          }

LABEL_87:
          operator delete(v51);
LABEL_88:
          v65 = 0;
          v66 = v45;
          v67 = v45 / 15.0;
          v6 = a3;
          v68 = *a4 + v43;
          v47 = -1;
          v69 = &unk_26157A35C;
          v70 = -0.15;
          do
          {
            if (a5)
            {
              LODWORD(v145) = (v67 + 0.5);
              v71 = 1;
              v72 = &v145 + 1;
              for (i = 12; i != -4; i -= 4)
              {
                v71 += *&v69[i];
                *v72++ = ((v71 * v67) + 0.5);
              }
            }

            else
            {
              v74 = 0;
              v75 = 0;
              do
              {
                v75 += *&v69[v74];
                *(&v145 + v74) = ((v75 * v67) + 0.5);
                v74 += 4;
              }

              while (v74 != 16);
              LODWORD(v146) = (((v75 + 1) * v67) + 0.5);
            }

            v76 = 0;
            v77 = 0.0;
            do
            {
              if (v76)
              {
                v78 = *(&v145 + v76 - 1);
              }

              else
              {
                v78 = 0;
              }

              v79 = *(&v145 + v76);
              if (v78 < v79)
              {
                v80 = v79 - v78;
                v81 = (v68 + v78);
                do
                {
                  v82 = *v81++;
                  v83 = v82;
                  if ((v9 ^ v76))
                  {
                    v84 = fmin((v83 - v50), 0.0);
                  }

                  else
                  {
                    v84 = fmax((v83 - v52), 0.0);
                  }

                  v85 = v84;
                  v77 = v77 + ((1.0 / v53) * (v85 * v85));
                  --v80;
                }

                while (v80);
              }

              ++v76;
            }

            while (v76 != 5);
            v86 = -v77 / v66;
            if (v86 > v70)
            {
              v70 = v86;
              v47 = v65;
            }

            ++v65;
            v69 += 16;
          }

          while (v65 != 6);
          if (v47 < 0)
          {
            v44 = 0xFFFFFFFFLL;
            v47 = -1;
            LODWORD(v43) = -1;
            v48 = 0.0;
            v49 = 0.0;
          }

          else
          {
            v49 = v43;
            v48 = v44;
            v44 = v44;
            v46 = v129;
          }

          goto LABEL_113;
        }
      }

      if (__p)
      {
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    v47 = -1;
    LODWORD(v43) = -1;
    v48 = 0.0;
    v49 = 0.0;
    v44 = 0xFFFFFFFFLL;
LABEL_113:
    v139 = __PAIR64__(v43, v47);
    *v140 = v44;
    *&v140[8] = v49;
    *&v140[16] = v46;
    *&v140[24] = v48;
    *&v140[32] = v46;
    v87 = v6[1];
    if ((v47 & 0x80000000) == 0)
    {
      LODWORD(v145) = 0;
      LODWORD(__p) = 0;
      v88 = v6;
      if (sub_261546BF8(*v6, v87, &v139, v9 & 1, 1, &v145) != 0x7FFFFFFF)
      {
        v99 = sub_261546BF8(*v88, v88[1], &v139, v9 & 1, 0, &__p);
        HIDWORD(v139) = v43 - v145;
        v100 = v46;
        *&v140[8] = (v43 - v145);
        *&v140[16] = v100;
        if (v99 != 0x7FFFFFFFLL)
        {
          *v140 = __p + v44;
          *&v140[24] = (__p + v44);
          *&v140[32] = v100;
        }

        v144[0] = *&v140[4];
        v144[1] = *&v140[20];
        LODWORD(v144[2]) = *&v140[36];
        operator new();
      }

      v87 = v88[1];
      v6 = v88;
    }

    v89 = *v11;
    if (v87 != v11)
    {
      v89 = v89 == 0;
      while (*v11 != v89)
      {
        if (++v11 == v87)
        {
          goto LABEL_125;
        }
      }
    }

    if (v11 == v87)
    {
LABEL_125:
      LODWORD(v11) = v87;
    }

    else
    {
      v90 = v89 == 0;
      while (*v11 != v90)
      {
        if (++v11 == v87)
        {
          goto LABEL_125;
        }
      }
    }

    v37 = v11 - *v6;
    v7 = v136;
    if ((v37 & 0x80000000) == 0)
    {
      v10 = *v6;
      v11 = v6[1];
      v12 = v136;
      goto LABEL_3;
    }
  }

  if (!v7)
  {
    *a1 = a1;
    a1[1] = a1;
    v106 = a1 + 2;
    goto LABEL_192;
  }

  if (sub_2615470FC(&v134))
  {
    *a1 = a1;
    a1[1] = a1;
    v102 = v134;
    v101 = v135;
    v103 = *(v134 + 8);
    v104 = *v135;
    *(v104 + 8) = v103;
    *v103 = v104;
    v105 = *a1;
    *(v105 + 8) = v101;
    *v101 = v105;
    *a1 = v102;
    *(v102 + 8) = a1;
    a1[2] = v7;
    v106 = &v136;
    goto LABEL_192;
  }

  v107 = a6[1];
  if (v107 == a6)
  {
    goto LABEL_177;
  }

  v133 = a6[2];
  v108 = v135;
  v109 = a6[1];
  do
  {
    if (v108 != &v134)
    {
      v110 = v109[2];
      v111 = v109[3];
      v112 = v108;
      do
      {
        if (v110 != v111)
        {
          v113 = v110;
          do
          {
            if (sub_2615471B0(v112 + 4, v113))
            {
              *(v112 + 81) = 1;
              *(v113 + 65) = 1;
            }

            v113 += 72;
          }

          while (v113 != v111);
        }

        v112 = v112[1];
      }

      while (v112 != &v134);
    }

    v109 = v109[1];
  }

  while (v109 != a6);
  v114 = v107 + 16;
  if (*(v107 + 40) > a2)
  {
    v115 = 0;
    v116 = v107;
    v117 = v133;
LABEL_163:
    if (!sub_26154720C(*(v116 + 16), *(v114 + 8), &v134))
    {
      goto LABEL_164;
    }

    goto LABEL_179;
  }

  v116 = v107;
  v117 = v133;
  while (1)
  {
    v115 = sub_26154720C(*(v116 + 16), *(v114 + 8), &v134);
    v116 = *(v116 + 8);
    if (v116 == a6)
    {
      break;
    }

    v114 = v116 + 16;
    if (*(v116 + 40) > a2)
    {
      goto LABEL_163;
    }
  }

LABEL_164:
  if (!v115)
  {
    if (v107 != a6)
    {
      v118 = v135;
      while (v118 != &v134)
      {
        v120 = *(v107 + 16);
        v119 = *(v107 + 24);
        v121 = v118;
        while (v120 != v119)
        {
          v122 = v120;
          while (!sub_2615471B0(v121 + 4, v122))
          {
            v122 += 18;
            if (v122 == v119)
            {
              goto LABEL_176;
            }
          }

          v121 = v121[1];
          if (v121 == &v134)
          {
            goto LABEL_179;
          }
        }

LABEL_176:
        v107 = *(v107 + 8);
        if (v107 == a6)
        {
          goto LABEL_177;
        }
      }

      goto LABEL_179;
    }

LABEL_177:
    v145 = 0uLL;
    v146 = 0;
    v147 = a2;
    v148 = 0;
    if (v7 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_2614709BC();
  }

LABEL_179:
  if (v117)
  {
    sub_2615472E4(a1, a6, 0);
    if (a1[2])
    {
      v123 = a1;
      while (1)
      {
        v123 = v123[1];
        if (v123 == a1)
        {
          break;
        }

        if (*(v123 + 81))
        {
          return sub_2614C5E88(&v134);
        }
      }
    }

    sub_2615472E4(&v145, a6, 1);
    sub_261547408(a1, &v145);
    sub_2614C5E88(&v145);
    if (a1[2])
    {
      v124 = a1;
      while (1)
      {
        v124 = v124[1];
        if (v124 == a1)
        {
          break;
        }

        if (*(v124 + 81))
        {
          return sub_2614C5E88(&v134);
        }
      }
    }

    sub_2614C5E88(a1);
  }

  *a1 = a1;
  a1[1] = a1;
  v106 = a1 + 2;
LABEL_192:
  *v106 = 0;
  return sub_2614C5E88(&v134);
}

void sub_261546844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_2614C5E88(v24);
  sub_2614C5E88(va);
  _Unwind_Resume(a1);
}

double sub_261546888(uint64_t a1, void *a2)
{
  v3 = a2[2];
  if (!v3)
  {
    *a1 = 1;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    result = 0.0;
    *(a1 + 4) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 36) = 0u;
    *(a1 + 52) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 84) = 0;
    *(a1 + 96) = a1 + 104;
    *(a1 + 120) = 0;
    *(a1 + 124) = 0;
    *(a1 + 128) = 0;
    return result;
  }

  if (*(*a2 + 24) == 0x7FFFFFFF)
  {
    v5 = -2;
  }

  else
  {
    v5 = -1;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  sub_261483200(&v36, 12 * (v5 + 2 * v3), &__p);
  v6 = 0;
  v7 = a2[1];
  v8 = *(v7 + 24);
  v9 = 11;
  do
  {
    if ((v8 >> v9))
    {
      if (v37 - v36 <= v6)
      {
        sub_2614C3568();
      }

      *(v36 + v6) = 1;
    }

    ++v6;
    --v9;
  }

  while (v6 != 12);
  v10 = *(v7 + 8);
  if (v10 != a2)
  {
    LODWORD(v11) = 12;
    do
    {
      v12 = *(v10 + 16);
      v13 = v11 + 12;
      v11 = v11;
      for (i = 11; i != -1; --i)
      {
        if ((v12 >> i))
        {
          if (v37 - v36 <= v11)
          {
            sub_2614C3568();
          }

          *(v36 + v11) = 1;
        }

        ++v11;
      }

      v15 = *(v10 + 24);
      if (v15 != 0x7FFFFFFF)
      {
        v11 = v13;
        for (j = 11; j != -1; --j)
        {
          if ((v15 >> j))
          {
            if (v37 - v36 <= v11)
            {
              sub_2614C3568();
            }

            *(v36 + v11) = 1;
          }

          ++v11;
        }
      }

      v10 = *(v10 + 8);
    }

    while (v10 != a2);
  }

  sub_2614C2F14(&__p, &v36);
  v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v21 = a2;
    v19 = *a2;
    v20 = v21[1];
    v23 = *(v20 + 36);
    v22 = *(v20 + 40);
    v25 = *(v19 + 36);
    v24 = *(v19 + 40);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_261539988(&v33, p_p, p_p + size, size);
    *&result = (v24 - v25) / 49.0;
    v28 = *(v20 + 48) | (*(v20 + 56) << 32);
    v29 = *(v19 + 64) | (*(v19 + 72) << 32);
    *a1 = 0x200000000000;
    *(a1 + 8) = v33;
    v30 = v34;
    v33 = 0uLL;
    v34 = 0;
    *(a1 + 24) = v30;
    *(a1 + 32) = v28;
    *(a1 + 40) = v29;
    *(a1 + 48) = v29;
    *(a1 + 112) = 0;
    *(a1 + 104) = 0;
    *(a1 + 56) = v28;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 96) = a1 + 104;
    *(a1 + 120) = 0;
    *(a1 + 124) = 0;
    *(a1 + 128) = 0;
    *(a1 + 88) = 0;
    v31 = v36;
    v32 = v37;
    *(a1 + 124) = (v22 - v23) / 49.0;
    *(a1 + 128) = LODWORD(result);
    if (v32 == v31)
    {
      sub_2614C3568();
    }

    *(a1 + 120) = *v31 != 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  *a1 = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  if (v17 < 0)
  {
LABEL_33:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_34:
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  return result;
}

void sub_261546BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  sub_261518D9C(v20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_261546BF8(uint64_t a1, _BYTE *a2, int *a3, int a4, int a5, int *a6)
{
  v97 = 0u;
  v98 = 0u;
  if (a5)
  {
    v10 = sub_2614C5CC4(a1, a3[1] + a1, &v97);
    if (v10 >= v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = (a1 + a3[2]);
    v14 = sub_2614C5D98(v13, a2, &v97);
    v16 = v15 != a2 || v98.i32[3] == 0;
    if (v16)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = a2;
    }

    if (v17 >= v18)
    {
      goto LABEL_18;
    }

    v19 = &v98.i8[12];
    v20 = &v97.i8[4];
    do
    {
      v21 = *(v20 - 1);
      *(v20 - 1) = *v19;
      *v19 = v21;
      v19 -= 4;
      v22 = v20 >= v19;
      v20 += 4;
    }

    while (!v22);
  }

  v23 = vaddvq_s32(vaddq_s32(v98, v97));
  *a6 = v23;
  v24 = v23 / 17.0;
  v25 = (a3[2] - a3[1]) / 15.0;
  if ((vabds_f32(v24, v25) / v25) > 0.3)
  {
LABEL_18:
    v26 = 0;
    v27 = 0x7FFFFFFFLL;
    return v26 | v27;
  }

  v29 = 0;
  v27 = 0x7FFFFFFFLL;
  do
  {
    v30 = v97.i32[v29] / v24;
    v31 = (v30 + 0.5);
    if (v31 <= 0)
    {
      if (v30 < 0.3)
      {
LABEL_40:
        v26 = 0;
        return v26 | v27;
      }

      v31 = 1;
    }

    else if (v31 >= 9)
    {
      if (v30 > 8.7)
      {
        goto LABEL_40;
      }

      v31 = 8;
    }

    v32 = v29 >> 1;
    v33 = v30 - v31;
    if (v29)
    {
      v34 = &v95;
    }

    else
    {
      v34 = &v96;
    }

    if (v29)
    {
      v35 = &v91;
    }

    else
    {
      v35 = &v93;
    }

    v34->i32[v32] = v31;
    v35[v32] = v33;
    ++v29;
  }

  while (v29 != 8);
  v36 = vaddvq_s32(v96);
  v37 = vaddvq_s32(v95);
  v38 = vaddvq_s32(vaddq_s32(v95, v96));
  v39 = v36 > 13;
  v40 = v37 > 13;
  v41 = v37 < 4;
  switch(v38)
  {
    case 16:
      if (v36)
      {
        v26 = 0;
        v27 = 0x7FFFFFFFLL;
        if ((v37 & 1) == 0 || v36 > 13)
        {
          return v26 | v27;
        }

        goto LABEL_72;
      }

      if (v37)
      {
        goto LABEL_18;
      }

      v41 = 1;
      break;
    case 17:
      if (v36)
      {
        if (v37)
        {
          goto LABEL_18;
        }

        v39 = v36 >= v37 || v36 > 13;
        v41 = v36 >= v37 || v37 < 4;
        v40 = v37 > 13 || v36 < v37;
        if (v36 < 4 || v36 < v37)
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_18;
      }

      break;
    case 18:
      if (v36)
      {
        if ((v37 & 1) == 0)
        {
          goto LABEL_18;
        }

        v39 = 1;
      }

      else
      {
        if (v37)
        {
          goto LABEL_18;
        }

        v40 = 1;
      }

      break;
    default:
      goto LABEL_18;
  }

  if (v36 <= 3)
  {
LABEL_71:
    if (v39)
    {
      goto LABEL_18;
    }

LABEL_72:
    v51 = v93;
    v52 = &v93;
    v53 = v94;
    v54 = 12;
    v55 = v94;
    do
    {
      v56 = *v55++;
      v57 = v56;
      if (v51 < v56)
      {
        v51 = v57;
        v52 = v53;
      }

      v53 = v55;
      v54 -= 4;
    }

    while (v54);
    v49 = v52 - &v93;
    v50 = *(v96.i32 + v49) + 1;
    goto LABEL_77;
  }

LABEL_59:
  if (!v39)
  {
    if (v41)
    {
      goto LABEL_78;
    }

    goto LABEL_85;
  }

  v42 = v93;
  v43 = &v93;
  v44 = v94;
  v45 = 12;
  v46 = v94;
  do
  {
    v47 = *v46++;
    v48 = v47;
    if (v47 < v42)
    {
      v42 = v48;
      v43 = v44;
    }

    v44 = v46;
    v45 -= 4;
  }

  while (v45);
  v49 = v43 - &v93;
  v50 = *(v96.i32 + v49) - 1;
LABEL_77:
  *(v96.i32 + v49) = v50;
  if (v41)
  {
LABEL_78:
    if (v40)
    {
      goto LABEL_18;
    }

    v58 = v91;
    v59 = &v91;
    v60 = v92;
    v61 = 12;
    v62 = v92;
    do
    {
      v63 = *v62++;
      v64 = v63;
      if (v58 < v63)
      {
        v58 = v64;
        v59 = v60;
      }

      v60 = v62;
      v61 -= 4;
    }

    while (v61);
    v65 = 1;
    goto LABEL_91;
  }

LABEL_85:
  if (!v40)
  {
    goto LABEL_92;
  }

  v66 = v91;
  v59 = &v91;
  v67 = v92;
  v68 = 12;
  v69 = v92;
  do
  {
    v70 = *v69++;
    v71 = v70;
    if (v70 < v66)
    {
      v66 = v71;
      v59 = v67;
    }

    v67 = v69;
    v68 -= 4;
  }

  while (v68);
  v65 = -1;
LABEL_91:
  *(v95.i32 + v59 - &v91) += v65;
LABEL_92:
  v72 = 0;
  v73 = 0;
  v74 = *a3;
  if (a4)
  {
    v75 = (a5 ^ 1) - 1;
  }

  else
  {
    v75 = (a5 ^ 1) + 1;
  }

  v76 = v75 + 4 * v74;
  if (v74)
  {
    v77 = 0;
  }

  else
  {
    v77 = a5;
  }

  v78 = v77 & a4;
  v79 = &unk_26157A3BC + 32 * v76;
  v80 = v79 + 24;
  for (i = 3; i != -1; --i)
  {
    v82 = v96.i32[i];
    if (!v78)
    {
      v73 += v82 * *v80;
    }

    v72 += v82;
    v80 -= 2;
  }

  v83 = 0;
  v84 = v79 + 28;
  for (j = 3; j != -1; --j)
  {
    if ((v78 & 1) == 0)
    {
      v83 += v95.i32[j] * *v84;
    }

    v84 -= 2;
  }

  v26 = 0;
  v27 = 0x7FFFFFFFLL;
  if ((v72 & 1) == 0 && (v72 - 14) >= 0xFFFFFFF6)
  {
    v86 = (v83 + v73);
    v87 = (12 - v72) >> 1;
    v88 = dword_26157A69C[v87];
    v89 = 9 - v88;
    v90 = sub_26150A8EC(v96.i32, 4u, v88, 0);
    v27 = sub_26150A8EC(v95.i32, 4u, v89, 1) + dword_26157A6B0[v87] * v90 + dword_26157A6C4[v87];
    v26 = v86 << 32;
  }

  return v26 | v27;
}

BOOL sub_2615470FC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (*(v1 + 24) == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 8);
  if (v4 == a1)
  {
    v6 = 422;
  }

  else
  {
    v5 = 2;
    do
    {
      v3 += *(v4 + 20);
      if (*(v4 + 24) == 0x7FFFFFFF)
      {
        ++v5;
      }

      else
      {
        v3 += *(v4 + 28);
        v5 += 2;
      }

      v4 = *(v4 + 8);
    }

    while (v4 != a1);
    v6 = 211 * v5;
  }

  return v3 % 211 + v6 - 844 == *(v1 + 16);
}

BOOL sub_26154720C(char *a1, char *a2, uint64_t a3)
{
  if (0x8E38E38E38E38E39 * ((a2 - a1) >> 3) != *(a3 + 16))
  {
    return 0;
  }

  v4 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  do
  {
    v5 = *(v5 + 8);
    result = sub_2615471B0(v4, (v5 + 16));
    v4 += 72;
  }

  while (result && v4 != a2);
  return result;
}

void sub_2615472A0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t *sub_2615472E4(uint64_t *a1, void *a2, int a3)
{
  if (a2[2] < 0x1AuLL)
  {
    if (a3)
    {
      v6 = a2[1];
      v14 = &v14;
      v15 = &v14;
      v16 = 0;
      result = sub_2615474D0(a1, a2, a2, v6, v6, &v14);
      if (v16)
      {
        result = v15;
        v7 = *(v14 + 8);
        v8 = *v15;
        *(v8 + 8) = v7;
        *v7 = v8;
        v16 = 0;
        while (result != &v14)
        {
          v9 = result[1];
          sub_2615472A0(result);
          result = v9;
        }
      }
    }

    else
    {
      v10 = a2[1];
      v14 = &v14;
      v15 = &v14;
      v16 = 0;
      result = sub_2615476A8(a1, v10, a2, &v14);
      if (v16)
      {
        result = v15;
        v11 = *(v14 + 8);
        v12 = *v15;
        *(v12 + 8) = v11;
        *v11 = v12;
        v16 = 0;
        while (result != &v14)
        {
          v13 = result[1];
          sub_2615472A0(result);
          result = v13;
        }
      }
    }
  }

  else
  {
    result = sub_261547470(a2);
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
  }

  return result;
}

void sub_2615473F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_261547470(va);
  _Unwind_Resume(a1);
}

void *sub_261547408(uint64_t *a1, uint64_t *a2)
{
  result = sub_2614C5E88(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

void *sub_261547470(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    while (result != v1)
    {
      v4 = result[1];
      sub_2615472A0(result);
      result = v4;
    }
  }

  return result;
}

void *sub_2615474D0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v13[0] = v13;
  v13[1] = v13;
  v13[2] = 0;
  for (i = a6; ; sub_261547864(v13, v13, i[2], i[3]))
  {
    i = i[1];
    if (i == a6)
    {
      break;
    }
  }

  if (a3 == a5)
  {
LABEL_9:
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
  }

  else
  {
    while (1)
    {
      sub_2615479B8(a1, v13);
      sub_261547864(a1, a1, *(*a3 + 16), *(*a3 + 24));
      if (sub_261547A74(a1))
      {
        break;
      }

      sub_2614C5E88(a1);
      a3 = *a3;
      if (a3 == a5)
      {
        goto LABEL_9;
      }
    }

    if (!sub_2615470FC(a1))
    {
      sub_261547AE4(&v12, a6);
      sub_261547B6C(*a3 + 16);
    }
  }

  return sub_2614C5E88(v13);
}

void sub_261547668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_261547470(va);
  sub_2614C5E88(v9);
  sub_2614C5E88(va1);
  _Unwind_Resume(a1);
}

void *sub_2615476A8(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  for (i = a4; ; sub_261547864(v11, v11, i[2], i[3]))
  {
    i = i[1];
    if (i == a4)
    {
      break;
    }
  }

  if (a2 == a3)
  {
LABEL_9:
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
  }

  else
  {
    while (1)
    {
      sub_2615479B8(a1, v11);
      sub_261547864(a1, a1, a2[2], a2[3]);
      if (sub_261547A74(a1))
      {
        break;
      }

      sub_2614C5E88(a1);
      a2 = a2[1];
      if (a2 == a3)
      {
        goto LABEL_9;
      }
    }

    if (!sub_2615470FC(a1))
    {
      sub_261547AE4(&v10, a4);
      sub_261547B6C((a2 + 2));
    }
  }

  return sub_2614C5E88(v11);
}

void sub_261547824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_261547470(va);
  sub_2614C5E88(v9);
  sub_2614C5E88(va1);
  _Unwind_Resume(a1);
}

void sub_261547864(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_261547984(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *sub_2615479B8(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_261547A74(uint64_t a1)
{
  v1 = 0;
  while (*(a1 + 16) > *(&off_279AD96E8 + v1 + 8))
  {
LABEL_3:
    v1 += 16;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (*(a1 + 8) != a1)
  {
    v2 = *(&off_279AD96E8 + v1);
    v3 = *(a1 + 8);
    while (*(v3 + 32) == *v2)
    {
      v3 = *(v3 + 8);
      ++v2;
      if (v3 == a1)
      {
        return 1;
      }
    }

    goto LABEL_3;
  }

  return 1;
}

uint64_t *sub_261547AE4(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_261547B6C(v2 + 16);
  }

  return a1;
}

void sub_261547C28(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_261547C4C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_2614709BC();
}

void sub_261547CB0(void *a1)
{
  *a1 = &unk_2873D1BD8;
  sub_261547470(a1 + 1);

  JUMPOUT(0x2667045D0);
}

void *sub_261547D14(void *a1)
{
  *a1 = &unk_2873D1BD8;
  sub_261547470(a1 + 1);
  return a1;
}

void sub_261547D70(uint64_t a1, int a2)
{
  v3 = (a2 + 360) % 360;
  if (v3 > 179)
  {
    if (v3 == 180)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 8);
      v6 = *(a1 + 36);
      v7 = *v5;
      if (!*(a1 + 24) && v6 * v4 == *(v5 + 8) - v7)
      {
        operator new();
      }

      sub_26154836C(&v10, v7, *(a1 + 40), *(a1 + 24), *(a1 + 28), v4, v6);
    }

    if (v3 == 270)
    {
      LODWORD(v9) = *(a1 + 36) * *(a1 + 32);
      sub_2615481C4(&v10, &v9);
    }
  }

  else
  {
    if (!v3)
    {
      operator new();
    }

    if (v3 == 90)
    {
      LODWORD(v9) = *(a1 + 36) * *(a1 + 32);
      sub_2615481C4(&v10, &v9);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_2615118C4(exception);
  __cxa_throw(exception, off_279AD85E8, MEMORY[0x277D82610]);
}

void sub_261548168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_261548248(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_261548348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_26149E780(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

__n128 sub_261548478(uint64_t a1, int a2, int a3, int a4, int a5, __n128 *a6, int a7)
{
  *a1 = &unk_2873D1D70;
  result = *a6;
  *(a1 + 8) = *a6;
  *a6 = 0uLL;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  *(a1 + 40) = a7;
  if ((a3 | a2 | a4 | a5) < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Requested offset is outside the image");
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_279AD85E0, MEMORY[0x277D825F8]);
  }

  return result;
}

void sub_26154853C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 16);
  if (v11)
  {
    sub_26149E780(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_261548568(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2614709BC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_2615486A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_2615486BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2873D08F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_261548738(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (((a3 | a2 | a4 | a5) & 0x80000000) == 0 && a4 + a2 <= *(a1 + 32) && a5 + a3 <= *(a1 + 36))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_26149AA60(exception, "Crop rectangle does not fit within image data.");
  __cxa_throw(exception, off_279AD85E0, MEMORY[0x277D825F8]);
}

void sub_261548890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_26149E780(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}