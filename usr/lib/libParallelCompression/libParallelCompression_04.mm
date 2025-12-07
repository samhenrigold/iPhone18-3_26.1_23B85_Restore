_DWORD *BXDiffMatchesCreate(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  v167[1] = *MEMORY[0x29EDCA608];
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v5 = *a5;
  if (!*a5)
  {
    v5 = 6;
  }

  if (a4 >= 0x4B000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 20;
  }

  if (a2 > 0xFFFFFFFE || (v7 = a4, a4 >= 0xFFFFFFFF))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "BXDiffMatchesCreate", 994, 92, 0, "isize,osize too large");
    return 0;
  }

  v12 = calloc(1uLL, 0x40uLL);
  v13 = v12;
  if (!v12)
  {
    v82 = *__error();
    v83 = "malloc";
    v84 = 998;
LABEL_108:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "BXDiffMatchesCreate", v84, 92, v82, v83, v153);
    BXDiffMatchesDestroy(v13);
    return 0;
  }

  v14 = *a5;
  v12[2] = a5[2];
  *v12 = v14;
  DefaultNThreads = a5[2];
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *(v13 + 8) = DefaultNThreads;
  *(v13 + 16) = a1;
  *(v13 + 24) = a3;
  *(v13 + 32) = a2;
  *(v13 + 36) = v7;
  if ((getProfile(&v163, v6) & 0x80000000) != 0)
  {
    v153 = *a5;
    v83 = "loading profile: %d";
    v84 = 1008;
LABEL_106:
    v82 = 0;
    goto LABEL_108;
  }

  if (v163 >= 1)
  {
    getRealTime();
    v16 = malloc(4 * a2 + 1028);
    v17 = malloc(8 * a2);
    v18 = v17;
    if (!v16 || !v17)
    {
      v85 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "qsufsort32", 377, 92, *v85, "malloc");
      free(v16);
      free(v18);
      *(v13 + 56) = 0;
      v84 = 1021;
      v82 = 0;
      v83 = "qsufsort32";
      goto LABEL_108;
    }

    v19 = v16 + 257;
    v16[257] = a2;
    *v17 = 0;
    if (a2)
    {
      v155 = v16;
      v157 = v7;
      v159 = v13;
      v20 = 0;
      v161 = a2 ^ 0x80000000;
      v21 = v17 + 1;
      do
      {
        if (*v18 == v161)
        {
          break;
        }

        v22 = 0;
        v23 = -1;
        do
        {
          v24 = &v18[2 * v22];
          v25 = *v24;
          if ((v25 & 0x80000000) != 0)
          {
            LODWORD(v26) = v25 & 0x7FFFFFFF;
          }

          else
          {
            v26 = v19[v25];
            if (v20)
            {
              if (v26 > v22)
              {
                v27 = v26 - v22;
                v28 = &v21[2 * v22];
                do
                {
                  *v28 = v19[*(v28 - 1) + v20];
                  v28 += 2;
                  --v27;
                }

                while (v27);
              }
            }

            else if (v26 > v22)
            {
              v29 = 0;
              v30 = (v26 - 1);
              v31 = &v21[2 * v30];
              v32 = (a1 + v30);
              v33 = 1;
              v34 = v26;
              do
              {
                v35 = *v32--;
                v36 = __PAIR64__(v35, v29) >> 8;
                v37 = v34 + 2;
                v38 = v34 - 1;
                v39 = v36 | 0xFF;
                v29 = v33 + (v36 & 0xFFFFFF00);
                if (v37 < v26)
                {
                  v29 = v39;
                }

                *(v31 - 1) = v38;
                *v31 = v29;
                v31 -= 2;
                ++v33;
                v34 = v38;
              }

              while (v22 < v38);
            }

            quicksort64(v26 - v22, &v18[2 * v22], 24);
            v40 = v22 + 1;
            if (v22 + 1 <= v26)
            {
              v41 = v24[1];
              do
              {
                v42 = v41;
                if (v40 >= v26)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = v21[2 * v40];
                }

                if (v42 != v41)
                {
                  if (v40 - v22 < 2)
                  {
                    if (v23 >= a2)
                    {
                      v23 = v22;
                    }
                  }

                  else if (v23 < a2)
                  {
                    v18[2 * v23] = v22 ^ 0x80000000;
                    v23 = -1;
                  }

                  if (v40 > v22)
                  {
                    v43 = v40 - v22;
                    v44 = &v18[2 * v22];
                    do
                    {
                      v45 = *v44;
                      v44 += 2;
                      v19[v45] = v40;
                      --v43;
                    }

                    while (v43);
                    v22 = v40;
                  }
                }

                ++v40;
              }

              while (v40 <= v26);
            }
          }

          v22 = v26;
        }

        while (v26 < a2);
        if (v23 < a2)
        {
          v18[2 * v23] = v161;
        }

        if (v20 >= 3)
        {
          v20 *= 2;
        }

        else
        {
          v20 = 3;
        }
      }

      while (v20 < a2);
      v46 = 0;
      do
      {
        *&v18[2 * (v19[v46] - 1)] = v46;
        ++v46;
      }

      while (a2 != v46);
      v47 = v18;
      v48 = v19;
      v49 = a2;
      v7 = v157;
      v13 = v159;
      v16 = v155;
      do
      {
        v50 = *v47++;
        *v48++ = v50;
        --v49;
      }

      while (v49);
    }

    v51 = 0;
    *v16 = 0;
    v16[256] = a2;
    for (i = 1; i != 256; ++i)
    {
      v53 = a2;
      if (v51 != a2)
      {
        if (v51 + 1 >= a2)
        {
          v53 = a2;
        }

        else
        {
          v53 = a2;
          do
          {
            if (i <= *(a1 + v19[v51 + ((v53 - v51) >> 1)]))
            {
              v53 = v51 + ((v53 - v51) >> 1);
            }

            else
            {
              v51 += (v53 - v51) >> 1;
            }
          }

          while (v53 > v51 + 1);
        }

        v54 = v19[v51];
        if (v54 != a2 && i == *(a1 + v54))
        {
          v53 = v51;
        }
      }

      v16[i] = v53;
      v51 = v53;
    }

    free(v18);
    *(v13 + 56) = v16;
    getRealTime();
  }

  if (SHIDWORD(v163) >= 1)
  {
    v55 = malloc(8 * v7);
    *(v13 + 48) = v55;
    if (!v55)
    {
      v82 = *__error();
      v83 = "malloc";
      v84 = 1033;
      goto LABEL_108;
    }

    if (*(v13 + 36))
    {
      v56 = 0;
      v57 = 0;
      do
      {
        *(*(v13 + 48) + v56) = 0xFFFFFFFFLL;
        ++v57;
        v56 += 8;
      }

      while (v57 < *(v13 + 36));
    }
  }

  v58 = *(v13 + 48);
  if (*(v13 + 56))
  {
    if (!v58)
    {
      goto LABEL_185;
    }

    v59 = HIDWORD(v164);
    v60 = v165;
    getRealTime();
    v61 = *(v13 + 36);
    if (v61)
    {
      v62 = 0;
      v63 = 1;
      do
      {
        v64 = v62;
        v65 = (*(v13 + 48) + 8 * v62);
        if (v65[1] < v60)
        {
          v66 = *(v13 + 56);
          v67 = (v66 + 4 * *(*(v13 + 24) + v62));
          v68 = *v67;
          LODWORD(v67) = v67[1];
          LODWORD(v166) = -1;
          v69 = bestMatchInRange(v13, v66 + 1028, v62, v68, v67 + 1, &v166);
          v70 = v166;
          *v65 = v166;
          *(*(v13 + 48) + 8 * v62 + 4) = v69;
          if (v69 >= v60)
          {
            v71 = v70 + 1;
            if ((v70 + 1) < *(v13 + 32))
            {
              v72 = 8 * v63;
              v73 = v69 - 1;
              v74 = v63;
              do
              {
                v75 = v74 < *(v13 + 36) && v73 >= v60;
                if (!v75)
                {
                  break;
                }

                *(*(v13 + 48) + v72) = v71;
                *(*(v13 + 48) + v72 + 4) = v73;
                ++v71;
                v72 += 8;
                ++v74;
                --v73;
              }

              while (v71 < *(v13 + 32));
            }

            if (v62 && v70)
            {
              v76 = 0;
              v77 = v62 - 1;
              v78 = 8 * v62;
              v79 = v69 + 1;
              do
              {
                v80 = *(v13 + 48) + v78;
                if (*(v80 - 8) != -1)
                {
                  break;
                }

                if (*(*(v13 + 16) + (v70 + v76 - 1)) != *(*(v13 + 24) + v77 + v76))
                {
                  break;
                }

                *(v80 - 8) = v70 - 1 + v76;
                *(*(v13 + 48) + v78 - 4) = v79;
                if (!(v77 + v76))
                {
                  break;
                }

                v81 = v70 + v76--;
                v78 -= 8;
                ++v79;
              }

              while (v81 != 1);
            }
          }

          v61 = *(v13 + 36);
        }

        v62 += v59;
        v63 += v59;
      }

      while (v64 + v59 < v61);
    }

    goto LABEL_184;
  }

  if (!v58)
  {
    goto LABEL_185;
  }

  v87 = -13;
  do
  {
    v88 = v87 + 33;
    v89 = 1 << (v87++ + 33 + v164);
  }

  while (v88 < SHIDWORD(v165) && v89 < *(v13 + 32));
  *(v13 + 40) = v87 + 32;
  *(v13 + 44) = -v87;
  v90 = v165;
  getRealTime();
  v91 = *(v13 + 8);
  v166 = 0;
  v167[0] = 0;
  v92 = 1;
  v94 = *(v13 + 32);
  v93 = *(v13 + 36);
  if (v94 >= v93)
  {
    v94 = *(v13 + 36);
  }

  if (v94 < 2 * v90)
  {
    v95 = 0;
    v96 = 0;
    goto LABEL_183;
  }

  v97 = 6 * (1 << *(v13 + 40));
  v162 = ((v91 + v93 - 1) / v91 + 0xFFFF) & 0xFFFF0000;
  v98 = &v166;
  v99 = 1;
  do
  {
    v100 = calloc(1uLL, v97);
    *v98 = v100;
    if (!v100)
    {
      v108 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 852, 92, *v108, "malloc");
      v95 = 0;
      v96 = 0;
      goto LABEL_182;
    }

    v101 = (v91 != 1) & v99;
    v98 = v167;
    v99 = 0;
  }

  while ((v101 & 1) != 0);
  v95 = calloc(v91, 0x28uLL);
  v102 = malloc(8 * v91);
  v96 = v102;
  if (v95 && v102)
  {
    v103 = 0;
    if (v91 <= 1)
    {
      v104 = 1;
    }

    else
    {
      v104 = v91;
    }

    v158 = v104;
    v105 = 8 * v104;
    v106 = v95;
    do
    {
      v102[v103 / 8] = v106;
      v106[5] = v90;
      *v106 = v13;
      v106 += 10;
      v103 += 8;
    }

    while (v105 != v103);
    if (v91 == 1)
    {
      v107 = 0;
    }

    else
    {
      v107 = ThreadPoolCreate(v91, v102, initBestMatchThreadProc);
      if (!v107)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 874, 92, 0, "ThreadPoolCreate");
        goto LABEL_182;
      }
    }

    v110 = *(v13 + 32);
    if (v110)
    {
      v154 = v95;
      v111 = 0;
      v112 = 0;
      while (2)
      {
        v156 = v111;
        v113 = v167[v111 - 1];
        v75 = v110 >= v90;
        v114 = v110 - v90;
        if (!v75)
        {
          v114 = 0;
        }

        v160 = v112 + v89;
        if (v112 + v89 < v114)
        {
          v114 = v112 + v89;
        }

        v115 = v112 + 4;
        if (v112 + 4 < v114)
        {
          v116 = *(v13 + 16);
          v117 = v112;
          do
          {
            v118 = v115;
            if (v90)
            {
              v119 = 0;
              v120 = (v116 + v117);
              v121 = v120;
              v122 = v90;
              do
              {
                v123 = *v121++;
                v119 = -1640531535 * (v123 + v119) - 1640531535;
                v122 -= 4;
              }

              while (v122);
              v124 = 0;
              v125 = *(v13 + 44);
              v126 = v119 >> v125;
              v127 = (v120 + 1);
              v128 = v90;
              do
              {
                v129 = *v127++;
                v124 = -1640531535 * (v129 + v124) - 1640531535;
                v128 -= 4;
              }

              while (v128);
              v130 = 0;
              v131 = v124 >> v125;
              v132 = (v120 + 2);
              v133 = v90;
              do
              {
                v134 = *v132++;
                v130 = -1640531535 * (v134 + v130) - 1640531535;
                v133 -= 4;
              }

              while (v133);
              v135 = 0;
              v136 = HIWORD(v119) ^ v119;
              v137 = v130 >> v125;
              v138 = (v120 + 3);
              v139 = v90;
              do
              {
                v140 = *v138++;
                v135 = -1640531535 * (v140 + v135) - 1640531535;
                v139 -= 4;
              }

              while (v139);
              v141 = HIWORD(v124) ^ v124;
              v142 = HIWORD(v130) ^ v130;
              v143 = &v113[6 * v126];
              v144 = &v113[6 * v131];
              v145 = &v113[6 * v137];
            }

            else
            {
              v142 = 0;
              v136 = 0;
              v141 = 0;
              v135 = 0;
              v125 = *(v13 + 44);
              v145 = v113;
              v143 = v113;
              v144 = v113;
            }

            *v143 = v117;
            *(v143 + 2) = v136;
            *v144 = v117 + 1;
            v146 = &v113[6 * (v135 >> v125)];
            *(v144 + 2) = v141;
            *v145 = v117 + 2;
            *(v145 + 2) = v142;
            *v146 = v117 + 3;
            *(v146 + 2) = v135 ^ HIWORD(v135);
            v115 = v118 + 4;
            v117 = v118;
          }

          while (v118 + 4 < v114);
        }

        v147 = v13;
        if (v107 && (ThreadPoolSync(v107) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 906, 92, 0, "ThreadPoolSync");
LABEL_179:
          v92 = 0;
          v13 = v147;
          v95 = v154;
LABEL_180:
          if ((ThreadPoolDestroy(v107) & 0x80000000) == 0)
          {
            goto LABEL_183;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 930, 92, 0, "ThreadPoolDestroy");
          goto LABEL_182;
        }

        v148 = 0;
        v149 = v158;
        do
        {
          if (v107)
          {
            Worker = ThreadPoolGetWorker(v107);
          }

          else
          {
            Worker = *v96;
          }

          if (!Worker)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 910, 92, 0, "ThreadPoolGetWorker");
            v92 = 0;
            v13 = v147;
            goto LABEL_176;
          }

          *(Worker + 32) = v113;
          *(Worker + 24) = v160 >= *(v147 + 32);
          *(Worker + 8) = v112;
          *(Worker + 12) = v148 * v162;
          v151 = v148 * v162 + v162;
          *(Worker + 16) = v151;
          v152 = *(v147 + 36);
          if (v148 * v162 > v152)
          {
            *(Worker + 12) = v152;
          }

          if (v151 > v152)
          {
            *(Worker + 16) = v152;
          }

          if (v107)
          {
            if ((ThreadPoolRunWorker(v107) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 920, 92, 0, "ThreadPoolRunWorker");
              goto LABEL_179;
            }
          }

          else
          {
            initBestMatchThreadProc();
          }

          ++v148;
          --v149;
        }

        while (v149);
        v111 = v156 ^ (v107 != 0);
        v13 = v147;
        v110 = *(v147 + 32);
        v112 += v89;
        if (v160 < v110)
        {
          continue;
        }

        break;
      }

      v92 = 1;
LABEL_176:
      v95 = v154;
    }

    else
    {
      v92 = 1;
    }

    if (!v107)
    {
      goto LABEL_183;
    }

    goto LABEL_180;
  }

  v109 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 862, 92, v109, "malloc");
LABEL_182:
  v92 = 0;
LABEL_183:
  free(v95);
  free(v96);
  free(v166);
  free(v167[0]);
  if (!v92)
  {
    v83 = "initBestMatchFromHashes";
    v84 = 1069;
    goto LABEL_106;
  }

LABEL_184:
  getRealTime();
LABEL_185:
  if (v163 >= 2)
  {
    free(*(v13 + 56));
    *(v13 + 56) = 0;
  }

  return v13;
}

size_t getProfile(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 6;
  }

  v19 = (a1 + 4);
  switch(v3)
  {
    case 2:
      v4 = xmmword_298069700;
      goto LABEL_20;
    case 3:
      v4 = xmmword_2980696F0;
      goto LABEL_20;
    case 4:
      v4 = xmmword_2980696E0;
      goto LABEL_20;
    case 5:
      v4 = xmmword_2980696D0;
      goto LABEL_20;
    case 6:
      *a1 = xmmword_2980696D0;
      v7 = 0x1A00000010;
      goto LABEL_29;
    case 7:
      v8 = xmmword_2980696D0;
      goto LABEL_22;
    case 8:
      *a1 = xmmword_2980696C0;
      v7 = 0x1A0000000CLL;
      goto LABEL_29;
    case 9:
      v8 = xmmword_2980696C0;
LABEL_22:
      *a1 = v8;
      v7 = 0x1A00000008;
      goto LABEL_29;
    case 10:
      v6 = xmmword_2980696B0;
      goto LABEL_28;
    case 11:
      v6 = xmmword_2980696A0;
      goto LABEL_28;
    case 12:
      v6 = xmmword_298069690;
      goto LABEL_28;
    case 13:
      v5 = xmmword_298069680;
      goto LABEL_11;
    case 14:
      v5 = xmmword_298069670;
      goto LABEL_11;
    case 15:
      v6 = xmmword_298069660;
      goto LABEL_28;
    case 16:
      v6 = xmmword_298069650;
      goto LABEL_28;
    case 17:
      v6 = xmmword_298069640;
LABEL_28:
      *a1 = v6;
      v7 = 24;
      goto LABEL_29;
    case 18:
      v5 = xmmword_298069640;
LABEL_11:
      *a1 = v5;
      v7 = 16;
      goto LABEL_29;
    case 19:
      *a1 = xmmword_298069640;
      v7 = 8;
      goto LABEL_29;
    case 20:
      *a1 = 1;
      *v19 = 0;
      *(a1 + 12) = 0;
      *(a1 + 20) = 0;
      goto LABEL_30;
    case 21:
      *a1 = xmmword_2980696D0;
      v7 = 0x1800000010;
      goto LABEL_29;
    default:
      v4 = xmmword_298069710;
LABEL_20:
      *a1 = v4;
      v7 = 0x1A00000018;
LABEL_29:
      *(a1 + 16) = v7;
LABEL_30:
      result = getenv("BXDIFF_MATCHES_PROFILE");
      if (!result)
      {
        return result;
      }

      v10 = result;
      result = strlen(result);
      if (!result)
      {
        return result;
      }

      v11 = result;
      v12 = v10 + 1;
      v13 = MEMORY[0x29EDCA600];
      break;
  }

  while (1)
  {
    v14 = __tolower(*(v12 - 1));
    v15 = v14;
    if (v14 > 0x7F)
    {
      if (__maskrune(v14, 0x4000uLL))
      {
        goto LABEL_51;
      }
    }

    else if ((*(v13 + 4 * v14 + 60) & 0x4000) != 0)
    {
      goto LABEL_51;
    }

    v16 = v15 - 58;
    if ((v15 - 58) <= 0x39)
    {
      break;
    }

LABEL_46:
    if (v15 != 44)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 505, 92, 0, "Invalid profile code: %c");
      goto LABEL_54;
    }

LABEL_51:
    ++v12;
    if (!--v11)
    {
      return 0;
    }
  }

  if (((1 << v16) & 0x224820000000000) == 0)
  {
    if (((1 << v16) & 3) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  __endptr = 0;
  v17 = strtol(v12, &__endptr, 10);
  if (*__error())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 508, 92, 0, "Invalid profile value: %s");
    goto LABEL_54;
  }

  if (v15 > 104)
  {
    v18 = (a1 + 8);
    if (v15 != 105)
    {
      v18 = (a1 + 16);
      if (v15 != 108)
      {
        v18 = a1;
        if (v15 != 115)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_50;
  }

  v18 = v19;
  if (v15 == 99 || (v18 = (a1 + 12), v15 == 100))
  {
LABEL_50:
    *v18 = v17;
    goto LABEL_51;
  }

LABEL_57:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 515, 92, 0, "Invalid profile code: %c");
LABEL_54:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "getProfile", 560, 92, 0, "parsing profile: %s", v10);
  return 0xFFFFFFFFLL;
}

void BXDiffMatchesDestroy(void **a1)
{
  if (a1)
  {
    free(a1[7]);
    free(a1[6]);

    free(a1);
  }
}

uint64_t BXDiffMatchesGetBestMatch(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = a2;
  v11 = 0;
  if (*(a1 + 36) <= a2)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = (v6 + 8 * a2);
    v8 = *v7;
    v11 = v8;
    if (v8 != -1)
    {
      LODWORD(result) = v7[1];
      goto LABEL_7;
    }
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
LABEL_6:
    LODWORD(result) = 0;
    goto LABEL_7;
  }

  v10 = (v8 + 4 * *(*(a1 + 24) + a2));
  result = bestMatchInRange(a1, v8 + 1028, a2, *v10, v10[1], &v11);
  v8 = v11;
  if (v6)
  {
    *(v6 + 8 * v5) = v11 | (result << 32);
  }

LABEL_7:
  *a3 = v8;
  return result;
}

uint64_t bestMatchInRange(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, _DWORD *a6)
{
  if (a5 <= a4)
  {
    v18 = 0;
    result = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(a2 + 4 * a4);
    v8 = a4;
    v9 = *(a1 + 32);
    v10 = *(a1 + 36) - a3;
    if (v10 >= v9 - v7)
    {
      v11 = (v9 - v7);
    }

    else
    {
      v11 = v10;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = v13 + a3;
    while (1)
    {
      v15 = v6 + 8;
      if (v6 + 8 > v11)
      {
        break;
      }

      v16 = *(v12 + v7 + v6);
      v17 = *(v14 + v6);
      v6 += 8;
      if (v16 != v17)
      {
        LODWORD(v11) = v15 + (__clz(__rbit64(v17 ^ v16)) >> 3) - 8;
        goto LABEL_16;
      }
    }

    if (v6 < v11)
    {
      v20 = v11 - v6;
      v21 = (v13 + a3 + v6);
      v22 = (v12 + v7 + v6);
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        v25 = *v21++;
        if (v23 != v25)
        {
          break;
        }

        ++v6;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v11) = v6;
    }

LABEL_16:
    v26 = 0;
    v27 = a5 - 1;
    v28 = *(a2 + 4 * v27);
    LODWORD(v29) = v9 - v28;
    if (v10 >= v9 - v28)
    {
      v29 = v29;
    }

    else
    {
      v29 = v10;
    }

    while (1)
    {
      v30 = v26 + 8;
      if (v26 + 8 > v29)
      {
        break;
      }

      v31 = *(v12 + v28 + v26);
      v32 = *(v14 + v26);
      v26 += 8;
      if (v31 != v32)
      {
        LODWORD(v29) = v30 + (__clz(__rbit64(v32 ^ v31)) >> 3) - 8;
        goto LABEL_28;
      }
    }

    if (v26 < v29)
    {
      v33 = v29 - v26;
      v34 = (v13 + a3 + v26);
      v35 = (v12 + v28 + v26);
      while (1)
      {
        v37 = *v35++;
        v36 = v37;
        v38 = *v34++;
        if (v36 != v38)
        {
          break;
        }

        ++v26;
        if (!--v33)
        {
          goto LABEL_28;
        }
      }

      LODWORD(v29) = v26;
    }

LABEL_28:
    v39 = v27 - v8;
    if ((v27 - v8) < 2)
    {
      v40 = v8;
    }

    else
    {
      do
      {
        v40 = v8 + (v39 >> 1);
        v41 = *(a2 + 4 * v40);
        LODWORD(v42) = v9 - v41;
        if (v10 >= v9 - v41)
        {
          v42 = v42;
        }

        else
        {
          v42 = v10;
        }

        if (v11 >= v29)
        {
          LODWORD(v43) = v29;
        }

        else
        {
          LODWORD(v43) = v11;
        }

        v44 = v12 + v41;
        while (1)
        {
          v45 = v43 + 8;
          if (v43 + 8 > v42)
          {
            break;
          }

          v46 = *(v44 + v43);
          v47 = *(v14 + v43);
          LODWORD(v43) = v43 + 8;
          if (v46 != v47)
          {
            LODWORD(v43) = v45 + (__clz(__rbit64(v47 ^ v46)) >> 3) - 8;
            goto LABEL_39;
          }
        }

        if (v43 >= v42)
        {
LABEL_46:
          LODWORD(v43) = v42;
          goto LABEL_47;
        }

        v43 = v43;
        while (*(v44 + v43) == *(v14 + v43))
        {
          if (++v43 >= v42)
          {
            goto LABEL_46;
          }
        }

LABEL_39:
        if (v43 < v42 && *(v13 + v43 + a3) < *(v12 + (v43 + v41)))
        {
          LODWORD(v29) = v43;
          v27 = v40;
          v40 = v8;
          goto LABEL_48;
        }

LABEL_47:
        LODWORD(v11) = v43;
        v8 = v40;
LABEL_48:
        v39 = v27 - v40;
      }

      while ((v27 - v40) > 1);
    }

    if (v11 <= v29)
    {
      v48 = v27;
    }

    else
    {
      v48 = v40;
    }

    if (v11 <= v29)
    {
      result = v29;
    }

    else
    {
      result = v11;
    }

    v18 = *(a2 + 4 * v48);
  }

  *a6 = v18;
  return result;
}

unint64_t GetBXDiffMaxMemoryUsage(unint64_t a1, unint64_t a2, int a3, int a4)
{
  DefaultNThreads = a3;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (!a3)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 6;
  }

  if (a2 >= 0x4B000)
  {
    v9 = v8;
  }

  else
  {
    v9 = 20;
  }

  if ((getProfile(&v16, v9) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "GetBXDiffMaxMemoryUsage", 1190, 92, "loading profile: %d", v9);
    return 0;
  }

  else
  {
    v10 = 8 * a2;
    if (SHIDWORD(v16) <= 0)
    {
      v10 = 0;
    }

    if (v16 < 1)
    {
      v13 = 19;
      do
      {
        v14 = v13 + 1;
        if (v13 + 1 >= SHIDWORD(v18))
        {
          break;
        }

        v15 = (1 << (v17 + v13++ + 1));
      }

      while (v15 < a1);
      v11 = 6 << v14 << (DefaultNThreads != 1);
    }

    else
    {
      v11 = 4 * a1;
    }

    return v11 + v10;
  }
}

unint64_t quicksort64(unint64_t result, unint64_t *a2, int a3)
{
  if (result >= 2)
  {
    v5 = result;
    while (1)
    {
      if (v5 > 3)
      {
        if (v5 == 4)
        {
          v37 = *a2;
          v36 = a2[1];
          if (HIDWORD(*a2) <= HIDWORD(v36))
          {
            v38 = a2[1];
            v36 = *a2;
          }

          else
          {
            *a2 = v36;
            a2[1] = v37;
            v38 = v37;
          }

          v58 = a2[2];
          v57 = a2[3];
          v59 = HIDWORD(v58);
          if (HIDWORD(v58) <= HIDWORD(v57))
          {
            v60 = a2[3];
            v57 = a2[2];
          }

          else
          {
            v59 = HIDWORD(v57);
            a2[2] = v57;
            a2[3] = v58;
            v60 = v58;
          }

          if (v59 >= HIDWORD(v36))
          {
            v36 = v57;
          }

          else
          {
            *a2 = v57;
            a2[2] = v36;
          }

          v61 = HIDWORD(v38);
          if (HIDWORD(v38) <= HIDWORD(v60))
          {
            v60 = v38;
          }

          else
          {
            v61 = HIDWORD(v60);
            a2[1] = v60;
            a2[3] = v38;
          }

          if (v61 > HIDWORD(v36))
          {
            a2[1] = v36;
            a2[2] = v60;
          }

          return result;
        }

        if (v5 == 5)
        {
          v39 = *a2;
          v40 = a2[1];
          if (HIDWORD(*a2) <= HIDWORD(v40))
          {
            v41 = a2[1];
            v40 = *a2;
          }

          else
          {
            *a2 = v40;
            a2[1] = v39;
            v41 = v39;
          }

          v63 = a2[2];
          v62 = a2[3];
          v64 = HIDWORD(v63);
          if (HIDWORD(v63) <= HIDWORD(v62))
          {
            v65 = a2[3];
            v62 = a2[2];
          }

          else
          {
            v64 = HIDWORD(v62);
            a2[2] = v62;
            a2[3] = v63;
            v65 = v63;
          }

          if (v64 >= HIDWORD(v40))
          {
            v66 = v62;
            v62 = v40;
          }

          else
          {
            *a2 = v62;
            a2[2] = v40;
            v66 = v40;
          }

          v67 = a2[4];
          v68 = HIDWORD(v41);
          if (HIDWORD(v41) <= HIDWORD(v67))
          {
            v69 = a2[4];
            v67 = v41;
          }

          else
          {
            v68 = HIDWORD(v67);
            a2[1] = v67;
            a2[4] = v41;
            v69 = v41;
          }

          if (v68 >= HIDWORD(v62))
          {
            v62 = v67;
          }

          else
          {
            *a2 = v67;
            a2[1] = v62;
          }

          v70 = HIDWORD(v66);
          if (HIDWORD(v66) <= HIDWORD(v65))
          {
            v71 = v65;
            v65 = v66;
          }

          else
          {
            v70 = HIDWORD(v65);
            a2[2] = v65;
            a2[3] = v66;
            v71 = v66;
          }

          if (v70 >= HIDWORD(v62))
          {
            v62 = v65;
          }

          else
          {
            a2[1] = v65;
            a2[2] = v62;
          }

          v72 = HIDWORD(v71);
          if (HIDWORD(v71) <= HIDWORD(v69))
          {
            v69 = v71;
          }

          else
          {
            v72 = HIDWORD(v69);
            a2[3] = v69;
            a2[4] = v71;
          }

          if (v72 < HIDWORD(v62))
          {
            a2[2] = v69;
            a2[3] = v62;
          }

          return result;
        }
      }

      else
      {
        if (v5 == 2)
        {
          v30 = *a2;
          v31 = a2[1];
          if (HIDWORD(*a2) > HIDWORD(v31))
          {
            *a2 = v31;
            a2[1] = v30;
          }

          return result;
        }

        if (v5 == 3)
        {
          v32 = *a2;
          v33 = a2[2];
          v34 = HIDWORD(*a2);
          if (v34 <= HIDWORD(v33))
          {
            v35 = a2[2];
            v33 = *a2;
          }

          else
          {
            v34 = HIDWORD(v33);
            *a2 = v33;
            a2[2] = v32;
            v35 = v32;
          }

          v56 = a2[1];
          if (v34 <= HIDWORD(v56))
          {
            v34 = HIDWORD(v56);
          }

          else
          {
            *a2 = v56;
            a2[1] = v33;
            v56 = v33;
          }

          if (v34 > HIDWORD(v35))
          {
            a2[1] = v35;
            a2[2] = v56;
          }

          return result;
        }
      }

      if (a3 <= 0)
      {
        break;
      }

      v6 = v5 >> 2;
      v7 = &a2[v5 >> 1];
      v8 = *a2;
      v9 = v7[-(v5 >> 2)];
      if (HIDWORD(*a2) <= HIDWORD(v9))
      {
        v10 = v7[-(v5 >> 2)];
        v9 = *a2;
      }

      else
      {
        *a2 = v9;
        v7[-(v5 >> 2)] = v8;
        v10 = v8;
      }

      v11 = *v7;
      v12 = v7[v6];
      v13 = HIDWORD(*v7);
      if (v13 <= HIDWORD(v12))
      {
        v14 = v7[v6];
        v12 = *v7;
      }

      else
      {
        v13 = HIDWORD(v12);
        *v7 = v12;
        v7[v6] = v11;
        v14 = v11;
      }

      if (v13 >= HIDWORD(v9))
      {
        v15 = v12;
        v12 = v9;
      }

      else
      {
        *a2 = v12;
        *v7 = v9;
        v15 = v9;
      }

      v16 = &a2[v5];
      v17 = *(v16 - 1);
      v18 = HIDWORD(v10);
      if (HIDWORD(v10) <= HIDWORD(v17))
      {
        v19 = *(v16 - 1);
        v17 = v10;
      }

      else
      {
        v18 = HIDWORD(v17);
        v7[-(v5 >> 2)] = v17;
        *(v16 - 1) = v10;
        v19 = v10;
      }

      if (v18 >= HIDWORD(v12))
      {
        v12 = v17;
      }

      else
      {
        *a2 = v17;
        v7[-(v5 >> 2)] = v12;
      }

      v20 = HIDWORD(v15);
      if (HIDWORD(v15) <= HIDWORD(v14))
      {
        v21 = v14;
        v14 = v15;
      }

      else
      {
        v20 = HIDWORD(v14);
        *v7 = v14;
        v7[v6] = v15;
        v21 = v15;
      }

      if (v20 >= HIDWORD(v12))
      {
        v12 = v14;
      }

      else
      {
        v7[-(v5 >> 2)] = v14;
        *v7 = v12;
      }

      v22 = HIDWORD(v21);
      if (HIDWORD(v21) <= HIDWORD(v19))
      {
        v19 = v21;
      }

      else
      {
        v22 = HIDWORD(v19);
        v7[v6] = v19;
        *(v16 - 1) = v21;
      }

      if (v22 < HIDWORD(v12))
      {
        *v7 = v19;
        v7[v6] = v12;
      }

      v23 = 0;
      v24 = *(v7 + 1);
      v25 = v5;
      while (1)
      {
        if (v23 < v5)
        {
          while (HIDWORD(a2[v23]) < v24)
          {
            if (v5 == ++v23)
            {
              v23 = v5;
              break;
            }
          }
        }

        while (v25)
        {
          if (HIDWORD(a2[v25 - 1]) < v24)
          {
            break;
          }

          --v25;
        }

        if (v23 >= v25)
        {
          break;
        }

        if (v23 != --v25)
        {
          v26 = a2[v23];
          a2[v23] = a2[v25];
          a2[v25] = v26;
        }

        ++v23;
      }

      v27 = v25;
      if (v25 < v5)
      {
        do
        {
          v28 = a2[v27];
          if (v24 == HIDWORD(v28))
          {
            if (v27 != v25)
            {
              v29 = a2[v25];
              a2[v25] = v28;
              a2[v27] = v29;
            }

            ++v25;
          }

          ++v27;
        }

        while (v5 != v27);
      }

      result = quicksort64(v23, a2, --a3);
      v5 -= v25;
      a2 += v25;
      if (v5 < 2)
      {
        return result;
      }
    }

    for (i = 1; i != v5; ++i)
    {
      v43 = a2[i];
      v44 = i;
      while (1)
      {
        v45 = v44 - 1;
        v46 = (v44 - 1) >> 1;
        v47 = a2[v46];
        if (v47 >= v43)
        {
          break;
        }

        a2[v44] = v47;
        v44 = (v44 - 1) >> 1;
        if (v45 <= 1)
        {
          goto LABEL_70;
        }
      }

      v46 = v44;
LABEL_70:
      a2[v46] = v43;
    }

    v48 = v5 - 1;
    v49 = a2[v5 - 1];
    a2[v5 - 1] = *a2;
    if (v5 - 1 >= 2)
    {
      do
      {
        v50 = 0;
        v51 = 0;
        v52 = 1;
        while (1)
        {
          v53 = a2[v52];
          v54 = v50 + 2;
          if (v50 + 2 >= v48)
          {
            v54 = v52;
          }

          else
          {
            v55 = a2[v54];
            if (v53 >= v55)
            {
              v54 = v52;
            }

            if (v53 <= v55)
            {
              v53 = v55;
            }
          }

          if (v49 >= v53)
          {
            break;
          }

          a2[v51] = v53;
          v50 = 2 * v54;
          v52 = (2 * v54) | 1;
          v51 = v54;
          if (v52 >= v48)
          {
            goto LABEL_84;
          }
        }

        v54 = v51;
LABEL_84:
        a2[v54] = v49;
        v49 = a2[--v48];
        a2[v48] = *a2;
      }

      while (v48 > 1);
    }

    *a2 = v49;
  }

  return result;
}

AAByteStream AACompressionOutputStreamOpen(AAByteStream compressed_stream, AACompressionAlgorithm compression_algorithm, size_t block_size, AAFlagSet flags, int n_threads)
{
  v24 = *MEMORY[0x29EDCA608];
  v9 = calloc(1uLL, 0x68uLL);
  if (!v9)
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", 254, 19, *v14, "malloc");
    v10 = 0;
LABEL_36:
    free(v9);
    aaCompressionOutputStreamClose(v10);
    return 0;
  }

  v10 = calloc(1uLL, 0x30uLL);
  if (!v10)
  {
    v15 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", 256, 19, v15, "malloc");
    goto LABEL_36;
  }

  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v10 + 2) = n_threads;
  v11 = calloc(n_threads, 8uLL);
  v10[2] = v11;
  if (*(v10 + 2))
  {
    v12 = 0;
    while (1)
    {
      *(v10[2] + 8 * v12) = CompressionWorkerDataCreate(block_size, compression_algorithm);
      v13 = v10[2];
      if (!*(v13 + 8 * v12))
      {
        break;
      }

      ++v12;
      v11 = *(v10 + 2);
      if (v12 >= v11)
      {
        goto LABEL_13;
      }
    }

    v18 = "Worker data allocation";
    v19 = 264;
    goto LABEL_35;
  }

  v13 = v11;
  LODWORD(v11) = 0;
LABEL_13:
  v16 = ThreadPipelineCreate(v11, v13, CompressionWorkerProc, v10, CompressionConsumerProc, 0);
  *v10 = v16;
  if (!v16)
  {
    v18 = "Thread allocation";
    v19 = 267;
LABEL_35:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", v19, 19, 0, v18);
    goto LABEL_36;
  }

  v10[3] = compressed_stream;
  qmemcpy(buf, "pbz", sizeof(buf));
  v17 = 122;
  if (compression_algorithm <= 1284)
  {
    if (compression_algorithm)
    {
      if (compression_algorithm != 256)
      {
        if (compression_algorithm == 774)
        {
          v17 = 120;
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v17 = 52;
    }

    else
    {
      v17 = 45;
    }
  }

  else
  {
    if (compression_algorithm <= 2048)
    {
      if (compression_algorithm == 1285)
      {
        goto LABEL_32;
      }

      if (compression_algorithm == 1794)
      {
        v17 = 98;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (compression_algorithm != 2049)
    {
      if (compression_algorithm == 2304)
      {
        v17 = 102;
        goto LABEL_32;
      }

LABEL_29:
      v18 = "Invalid compression algorithm";
      v19 = 274;
      goto LABEL_35;
    }

    v17 = 101;
  }

LABEL_32:
  v22 = v17;
  v23 = bswap64(block_size);
  if (AAByteStreamWrite(compressed_stream, buf, 0xCuLL) != 12)
  {
    v18 = "writing stream magic";
    v19 = 277;
    goto LABEL_35;
  }

  v9[3] = aaCompressionOutputStreamWrite;
  v9[7] = aaCompressionOutputStreamAbort;
  *v9 = v10;
  v9[1] = aaCompressionOutputStreamClose;
  v9[9] = aaCompressionOutputStreamFlush;
  return v9;
}

void **CompressionWorkerDataCreate(size_t a1, compression_algorithm a2)
{
  v4 = 56;
  v5 = calloc(1uLL, 0x38uLL);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v5[1] = 0;
  v5[2] = 0;
  *v5 = a1;
  if (a1 >= 0x2000000001)
  {
    *__error() = 12;
    v6[3] = 0;
    v4 = 62;
    v7 = 4;
LABEL_4:
    *__error() = 12;
    v6[v7] = 0;
LABEL_5:
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionWorkerDataCreate", v4, 19, *v8, "malloc");
    CompressionWorkerDataDestroy(v6);
    return 0;
  }

  v10 = malloc(a1);
  v6[3] = v10;
  v11 = malloc(a1);
  v6[4] = v11;
  v4 = 62;
  if (!v10 || !v11)
  {
    goto LABEL_5;
  }

  *(v6 + 10) = a2;
  if (a2)
  {
    if (a2 != COMPRESSION_LZMA)
    {
      v12 = compression_encode_scratch_buffer_size(a2);
      if (v12)
      {
        if (v12 <= 0x2000000000)
        {
          v13 = malloc(v12);
          v6[6] = v13;
          if (v13)
          {
            return v6;
          }

          v4 = 68;
          goto LABEL_5;
        }

        v4 = 68;
        v7 = 6;
        goto LABEL_4;
      }
    }
  }

  return v6;
}

uint64_t CompressionWorkerProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (!v3 || (v3 != COMPRESSION_LZMA ? (v5 = compression_encode_buffer(*(a1 + 32), *a1, *(a1 + 24), v2, *(a1 + 48), v3)) : (v4 = PCompressLZMA6Encode(*(a1 + 32), *a1, *(a1 + 24), v2), v5 = v4 & ~(v4 >> 63)), v5 ? (v6 = v5 + (v2 >> 4) >= v2) : (v6 = 1), v6))
  {
    memcpy(*(a1 + 32), *(a1 + 24), v2);
    v5 = v2;
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t CompressionConsumerProc(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 40))
  {
    v6 = vrev64q_s8(*(a2 + 8));
    if (AAByteStreamWrite(*(a1 + 24), &v6, 0x10uLL) == 16)
    {
      if (AAByteStreamWrite(*(a1 + 24), *(a2 + 32), *(a2 + 16)) == *(a2 + 16))
      {
        return 0;
      }

      v5 = 119;
    }

    else
    {
      v5 = 115;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionConsumerProc", v5, 19, 0, "Stream write failed");
    *(a1 + 40) = 1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t aaCompressionOutputStreamWrite(uint64_t a1, char *__src, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v7[1];
      goto LABEL_7;
    }

    Worker = ThreadPipelineGetWorker(*a1);
    *(a1 + 32) = Worker;
    if (!Worker)
    {
      break;
    }

    v7 = Worker;
    v8 = 0;
    *(Worker + 8) = 0;
    *(Worker + 16) = 0;
LABEL_7:
    if (*v7 - v8 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = *v7 - v8;
    }

    memcpy((v7[3] + v8), __src, v10);
    v11 = *v7;
    v12 = v7[1] + v10;
    v7[1] = v12;
    if (v12 == v11)
    {
      if ((ThreadPipelineRunWorker(*a1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamWrite", 186, 19, 0, "running worker");
        goto LABEL_18;
      }

      *(a1 + 32) = 0;
    }

    __src += v10;
    v6 += v10;
    v3 -= v10;
    if (!v3)
    {
      return v6;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamWrite", 168, 19, 0, "getting next worker");
LABEL_18:
  *(a1 + 40) = 1;
  return -1;
}

uint64_t *aaCompressionOutputStreamClose(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (result[4])
    {
      if ((ThreadPipelineRunWorker(*result) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 133, 19, 0, "RunWorker");
        v2 = 0;
      }

      else
      {
        v2 = 1;
      }

      v1[4] = 0;
    }

    else
    {
      v2 = 1;
    }

    if ((ThreadPipelineDestroy(*v1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 138, 19, 0, "Thread shutdown");
      v2 = 0;
    }

    v3 = v1[2];
    if (v3)
    {
      if (*(v1 + 2))
      {
        v4 = 0;
        do
        {
          CompressionWorkerDataDestroy(*(v1[2] + 8 * v4++));
        }

        while (v4 < *(v1 + 2));
        v3 = v1[2];
      }

      free(v3);
    }

    if (*(v1 + 11) && (AAByteStreamSeek(v1[3], 0, 1) < 0 || (AAByteStreamTruncate(v1[3]) & 0x80000000) != 0))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 151, 19, "Truncate on compressed stream failed");
    }

    free(v1);
    if (v2)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t aaCompressionOutputStreamFlush(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v2;
  v10 = v1;
  if ((ThreadPipelineFlush(*a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 209, 19, 0, "ThreadPipelineFlush", v2, v10, v3, v4);
    goto LABEL_16;
  }

  if (*(a1 + 32))
  {
    v7 = AAByteStreamSeek(*(a1 + 24), 0, 1);
    if (v7 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 216, 19, 0, "AAByteStreamSeek", v2, v10, v3, v4);
    }

    else
    {
      v8 = v7;
      CompressionWorkerProc(*(a1 + 32));
      if ((CompressionConsumerProc(a1, *(a1 + 32)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 220, 19, 0, "CompressionConsumerProc", v9, v10, v3, v4);
      }

      else
      {
        if (v8 == AAByteStreamSeek(*(a1 + 24), v8, 0))
        {
          *(a1 + 44) = 1;
          goto LABEL_9;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 223, 19, 0, "AAByteStreamSeek", v9, v10, v3, v4);
      }
    }

LABEL_16:
    *(a1 + 40) = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  if ((AAByteStreamFlush(*(a1 + 24)) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 230, 19, "Flush on underlying stream failed");
  }

  return 0;
}

void CompressionWorkerDataDestroy(void **a1)
{
  if (a1)
  {
    free(a1[3]);
    free(a1[4]);
    free(a1[6]);

    free(a1);
  }
}

uint64_t generateBOM(uint64_t a1, int a2)
{
  v90 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  bzero(__fd, 0x4D8uLL);
  v63[0] = *a1;
  v63[1] = a2;
  v64 = *(a1 + 48);
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  DefaultNThreads = *(a1 + 16);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v55[0] = 0;
  v55[1] = DefaultNThreads;
  v5 = *(a1 + 40);
  v56 = *(a1 + 24);
  v61 = v63;
  *(&v57 + 1) = v5;
  *&v58 = bomBeginProc;
  if (storeBlock(v63, 0, 0, __buf))
  {
    v6 = "alloc first block";
    v7 = 929;
LABEL_68:
    v36 = 0;
    goto LABEL_69;
  }

  v8 = ParallelArchiveRead(v55);
  if (v8 | v79)
  {
    v6 = "ParallelArchiveRead";
    v7 = 934;
    goto LABEL_68;
  }

  qsort(v67, *v66, 0x30uLL, BOMEntryCompareProc);
  if (createTree(v63, *v66, getPathsPK, v63, 0x1000uLL, &v75))
  {
    v6 = "path_tree";
    v7 = 940;
    goto LABEL_68;
  }

  if (!__count)
  {
    v32 = createTree(v63, 0, 0, 0, 0x1000uLL, &v76);
    goto LABEL_60;
  }

  v9 = calloc(2 * __count, 4uLL);
  if (!v9)
  {
    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 499, 52, *v33, "malloc");
    v11 = 0;
    goto LABEL_58;
  }

  v10 = calloc(__count, 8uLL);
  v11 = v10;
  if (!v10)
  {
    v34 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 501, 52, v34, "malloc");
    goto LABEL_58;
  }

  v12 = *v66;
  if (!*v66)
  {
    if (!__count)
    {
LABEL_47:
      v28 = 0;
LABEL_48:
      if (v63[0] >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "%zu clusters in main hlinks tree\n", v28);
      }

      if (createTree(v63, v28, getTablePK, v9, 0x1000uLL, &v76))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 577, 52, 0, "hlink_tree");
        goto LABEL_58;
      }

      v32 = 0;
      goto LABEL_59;
    }

LABEL_45:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 511, 52, 0, "mismatch in hlink entry count");
    goto LABEL_58;
  }

  v13 = 0;
  v14 = 0;
  v15 = (v67 + 36);
  do
  {
    v16 = *v15;
    v15 += 12;
    if (v16 != -1)
    {
      if (v13 >= __count)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 508, 52, 0, "mismatch in hlink entry count");
        goto LABEL_58;
      }

      v10[v13++] = v14;
      v12 = *v66;
    }

    ++v14;
  }

  while (v14 < v12);
  if (v13 != __count)
  {
    goto LABEL_45;
  }

  if (!v13)
  {
    goto LABEL_47;
  }

  for (i = 0; i != v13; ++i)
  {
    v18 = v67 + 48 * v11[i];
    if (*(v18 + 9) != -1)
    {
      bzero(__buf + 2, 0x462uLL);
      LOWORD(__buf[0]) = 12078;
      __memcpy_chk();
      v19 = *(v18 + 1);
      *(__buf + v19 + 2) = 0;
      if (storeBlock(v63, __buf, v19 + 3, v18 + 10))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 525, 52, 0, "hlink_path");
        goto LABEL_58;
      }
    }
  }

  for (j = 0; j != v13; ++j)
  {
    v21 = v67;
    v22 = v67 + 48 * v11[j];
    if (v22[9] == v22[4])
    {
      v23 = 0;
      for (k = 0; k != v13; ++k)
      {
        v25 = &v21[48 * v11[k]];
        if (*(v25 + 9) == v22[4])
        {
          v26 = &v9[8 * v23];
          *v26 = 0;
          *(v26 + 1) = *(v25 + 10);
          ++v23;
        }
      }

      if (v63[0] > 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "%zu entries in hlinks cluster %zu\n", v23, j);
      }

      if (createTree(v63, v23, getTablePK, v9, 0x40uLL, v22 + 11))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 551, 52, 0, "hlink_cluster_tree");
        goto LABEL_58;
      }
    }
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = v67 + 48 * v11[v27];
    if (v29[9] == v29[4])
    {
      break;
    }

LABEL_39:
    if (v13 == ++v27)
    {
      goto LABEL_48;
    }
  }

  v62 = 0;
  __buf[0] = bswap32(v29[11]);
  if (storeBlock(v63, __buf, 4uLL, &v62 + 1))
  {
    v35 = 567;
    goto LABEL_57;
  }

  __buf[0] = bswap32(v29[7]);
  if (!storeBlock(v63, __buf, 4uLL, &v62))
  {
    v30 = v62;
    v31 = &v9[8 * v28];
    *v31 = HIDWORD(v62);
    *(v31 + 1) = v30;
    ++v28;
    goto LABEL_39;
  }

  v35 = 569;
LABEL_57:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", v35, 52, 0, "storeBlock");
LABEL_58:
  v32 = -1;
LABEL_59:
  free(v11);
  free(v9);
LABEL_60:
  if (v32)
  {
    v6 = "hlinks";
    v7 = 943;
    goto LABEL_68;
  }

  if (createTree(v63, *v68, getSize64PK, v63, 0x80uLL, v77))
  {
    v6 = "size64_tree";
    v7 = 946;
    goto LABEL_68;
  }

  if (createBomInfo(v63))
  {
    v6 = "bom_info";
    v7 = 949;
    goto LABEL_68;
  }

  if (createVIndex(v63))
  {
    v6 = "vindex";
    v7 = 952;
    goto LABEL_68;
  }

  if (v63[0] >= 1)
  {
    v39 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries in BOM\n", *v66);
    fprintf(*v39, "%12zu hard link entries\n", __count);
    fprintf(*v39, "%12zu hard link clusters\n", v71);
    fprintf(*v39, "%12zu blocks allocated\n", v72);
    fprintf(*v39, "%12zu B in state blob storage\n", v78[1]);
  }

  v74 = calloc(v72, 8uLL);
  if (!v74)
  {
    v36 = *__error();
    v6 = "malloc";
    v7 = 967;
    goto LABEL_69;
  }

  v40 = *(a1 + 8);
  if (!v40)
  {
    v6 = "No output_file given";
    v7 = 970;
    goto LABEL_68;
  }

  __fd[0] = open(v40, 1537, 420);
  if (__fd[0] < 0)
  {
    v36 = *__error();
    v6 = *(a1 + 8);
    v7 = 972;
    goto LABEL_69;
  }

  v41 = 0;
  v86.i64[0] = 512;
  v84 = 83886080;
  v42 = 516;
  v85 = 516;
  do
  {
    if (v41 <= 1)
    {
      if (v41)
      {
        v43 = v75;
        v44 = "Paths";
      }

      else
      {
        v43 = v77[2];
        v44 = "BomInfo";
      }
    }

    else if (v41 == 2)
    {
      v43 = v76;
      v44 = "HLIndex";
    }

    else if (v41 == 3)
    {
      v43 = v77[0];
      v44 = "Size64";
    }

    else
    {
      v43 = v77[3];
      v44 = "VIndex";
    }

    v45 = strlen(v44);
    *(&v80 + v42) = bswap32(v43);
    v85 += 4;
    *(&v80 + v85++) = v45 + 1;
    memcpy(&v80 + v85, v44, v45);
    v85 += v45;
    *(&v80 + v85) = 0;
    v42 = ++v85;
    ++v41;
  }

  while (v41 != 5);
  v86.i64[1] = v42 - v86.i64[0];
  if (v63[0] >= 1)
  {
    v46 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu B written for header\n", v86.u64[0]);
    fprintf(*v46, "%12zu B written for TOC\n", v86.u64[1]);
    v42 = v85;
  }

  v47 = write(__fd[0], &v80, v42);
  if (v47 != v85)
  {
    v36 = *__error();
    v6 = "write";
    v7 = 1008;
    goto LABEL_69;
  }

  v48 = v72;
  if (v72)
  {
    v49 = 0;
    for (m = 0; m < v48; ++m)
    {
      v51 = *(v73 + v49 + 1);
      if (v51)
      {
        if ((v47 | v51) >> 32)
        {
          v6 = "overflow in offset,size";
          v7 = 1016;
          goto LABEL_68;
        }

        if (write(__fd[0], (v78[2] + *(v73 + v49)), v51) != v51)
        {
          v36 = *__error();
          v6 = "write";
          v7 = 1018;
          goto LABEL_69;
        }

        v52 = (4 * v49) & 0x3FFFFFFF8;
        *(v74 + v52) = bswap32(v85);
        *(v74 + v52 + 4) = bswap32(v51);
        v48 = v72;
        v47 = v85 + v51;
        v85 += v51;
        v88 += v51;
      }

      v49 += 2;
    }
  }

  if (v63[0] >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12zu B written for blocks\n", v88);
    v48 = v72;
    v47 = v85;
  }

  v87.i64[0] = v47;
  __buf[0] = bswap32(v48);
  if (write(__fd[0], __buf, 4uLL) != 4)
  {
    v36 = *__error();
    v6 = "write";
    v7 = 1033;
    goto LABEL_69;
  }

  v85 += 4;
  if (write(__fd[0], v74, 8 * v48) != 8 * v48)
  {
    v36 = *__error();
    v6 = "write";
    v7 = 1036;
LABEL_69:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "generateBOM", v7, 52, v36, v6);
    v37 = -1;
    goto LABEL_70;
  }

  v85 += 8 * v48;
  __buf[0] = 0;
  if (write(__fd[0], __buf, 4uLL) != 4)
  {
    v36 = *__error();
    v6 = "write";
    v7 = 1040;
    goto LABEL_69;
  }

  v85 += 4;
  v87.i64[1] = v85 - v87.i64[0];
  if (HIDWORD(v87.i64[0]) || (v85 - v87.i64[0]) >> 32)
  {
    v6 = "overflow in offset,size";
    v7 = 1045;
    goto LABEL_68;
  }

  if (v63[0] < 1)
  {
    v54.i64[0] = v87.i64[0];
    v54.i64[1] = v85 - v87.i64[0];
  }

  else
  {
    v53 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu B written for blocks table\n", v85 - v87.i64[0]);
    fprintf(*v53, "%12zu B final BOM size\n", v85);
    v54 = v87;
  }

  v80 = 0x65726F74534D4F42;
  v81 = 0x1000000;
  v82 = bswap32(v72);
  v83 = vrev32q_s8(vuzp1q_s32(v54, v86));
  if (pwrite(__fd[0], &v80, 0x200uLL, 0) != 512)
  {
    v36 = *__error();
    v6 = "write";
    v7 = 1064;
    goto LABEL_69;
  }

  v37 = 0;
LABEL_70:
  BlobBufferFree(v78);
  free(v67);
  free(v69);
  free(v73);
  free(v74);
  if ((__fd[0] & 0x80000000) == 0)
  {
    close(__fd[0]);
  }

  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v37;
  }

  else
  {
    return result;
  }
}

uint64_t bomBeginProc(uint64_t result, int *a2)
{
  v78 = *MEMORY[0x29EDCA608];
  v2 = a2[1] - 77;
  v3 = v2 > 6;
  v4 = (1 << v2) & 0x49;
  v5 = v3 || v4 == 0;
  if (!v5)
  {
    return result;
  }

  v7 = result;
  if ((*(a2 + 1) & 0x80) == 0)
  {
    v8 = "missing PAT field";
    v9 = 622;
LABEL_43:
    v37 = 0;
LABEL_44:
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "bomBeginProc", v9, 52, v37, v8, v71);
    ++*(v7 + 184);
    return result;
  }

  __strlcpy_chk();
  v10 = *(v7 + 8);
  if (v10)
  {
    result = v10(*(v7 + 16), __s, a2[1]);
    if (result < 1)
    {
      return result;
    }
  }

  v11 = a2[1];
  if (v11 == 68 && !__s[0])
  {
    strcpy(__s, ".");
  }

  v12 = __s;
  v13 = strlen(__s);
  v14 = v13;
  if (!v13)
  {
    v17 = 0;
LABEL_25:
    v19 = *(v7 + 40);
    v22 = v19 != 0;
    goto LABEL_26;
  }

  v15 = 0;
  v16 = __s;
  while (v16[v13] != 47)
  {
    ++v15;
    --v16;
    if (v13 == v15)
    {
      v12 = __s;
      v17 = v13;
      goto LABEL_25;
    }
  }

  v18 = &v16[v13];
  v12 = v18 + 1;
  v17 = v15 - 1;
  v19 = *(v7 + 40);
  if (!v19)
  {
    goto LABEL_25;
  }

  v72 = v18 + 1;
  v20 = *(v7 + 48) + 48 * v19 - 48;
  v21 = *(v7 + 40);
  while (v14 - *(v20 + 8) != v15 || memcmp((*(v7 + 176) + *v20), __s, v14 - v15))
  {
    v20 -= 48;
    if (!--v21)
    {
      v17 = v15 - 1;
      v12 = v72;
      goto LABEL_25;
    }
  }

  v22 = *(v20 + 16);
  v17 = v15 - 1;
  v12 = v72;
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v11 != 72)
  {
    v27 = -1;
    v29 = -1;
    goto LABEL_33;
  }

  v73 = v12;
  v23 = v17;
  v24 = strlen(a2 + 1168);
  if (!v19)
  {
    goto LABEL_31;
  }

  v25 = v24;
  v26 = cmpBOMPath(v7, a2 + 292, v24, 0);
  if (v26 < 0)
  {
    goto LABEL_31;
  }

  if (v26)
  {
    v27 = v19 - 1;
    v28 = cmpBOMPath(v7, a2 + 292, v25, v19 - 1);
    if (v28 <= 0)
    {
      if (v28)
      {
        v40 = 0;
        while (v40 + 1 < v27)
        {
          v41 = v40 + ((v27 - v40) >> 1);
          v42 = cmpBOMPath(v7, a2 + 292, v25, v41);
          if (v42 < 0)
          {
            v27 = v40 + ((v27 - v40) >> 1);
          }

          else
          {
            v40 += (v27 - v40) >> 1;
          }

          if (!v42)
          {
            v27 = v41;
            goto LABEL_64;
          }
        }

        goto LABEL_31;
      }

LABEL_64:
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_31:
    v71 = __s;
    v8 = "missing hard link target entry: %s";
    v9 = 666;
    goto LABEL_43;
  }

  v27 = 0;
LABEL_65:
  v43 = *(v7 + 48) + 48 * v27;
  v45 = *(v43 + 36);
  v44 = (v43 + 36);
  v29 = *(v44 - 5);
  v46 = *(v7 + 88);
  *(v7 + 88) = v46 + 1;
  if (v45 == -1)
  {
    *v44 = v29;
    v47 = v46 + 2;
    v48 = *(v7 + 96) + 1;
    *(v7 + 88) = v47;
    *(v7 + 96) = v48;
  }

  v17 = v23;
  v12 = v73;
LABEL_33:
  v30 = *(v7 + 32);
  if (v19 >= v30)
  {
    v32 = v30 + (v30 >> 1);
    v5 = v30 == 0;
    v33 = 0x4000;
    if (!v5)
    {
      v33 = v32;
    }

    *(v7 + 32) = v33;
    v31 = reallocf(*(v7 + 48), 48 * v33);
    *(v7 + 48) = v31;
    if (!v31)
    {
      v37 = *__error();
      v8 = "malloc";
      v9 = 688;
      goto LABEL_44;
    }

    v19 = *(v7 + 40);
  }

  else
  {
    v31 = *(v7 + 48);
  }

  v34 = *(v7 + 56);
  if (v34 == -1)
  {
    v8 = "too many entries";
    v9 = 695;
    goto LABEL_43;
  }

  v35 = v34 + 1;
  *(v7 + 56) = v35;
  v36 = &v31[48 * v19];
  *(v36 + 4) = v35;
  *(v36 + 5) = v22;
  *(v36 + 9) = v29;
  if (BlobBufferStore(v7 + 160, __s, v14, v36))
  {
    v8 = "path_blob";
    v9 = 703;
    goto LABEL_43;
  }

  v38 = a2[1];
  if (v38 == 72)
  {
    *(v36 + 7) = *(*(v7 + 48) + 48 * v27 + 28);
    goto LABEL_48;
  }

  bzero(v76, 0x44DuLL);
  v39 = *a2;
  if ((*a2 & 0x10) == 0)
  {
    v71 = __s;
    v8 = "missing MOD field: %s";
    v9 = 720;
    goto LABEL_43;
  }

  if ((v39 & 2) == 0)
  {
    v71 = __s;
    v8 = "missing UID field: %s";
    v9 = 721;
    goto LABEL_43;
  }

  if ((v39 & 4) == 0)
  {
    v71 = __s;
    v8 = "missing GID field: %s";
    v9 = 722;
    goto LABEL_43;
  }

  if ((v39 & 0x100) == 0)
  {
    v71 = __s;
    v8 = "missing MTM field: %s";
    v9 = 723;
    goto LABEL_43;
  }

  v53 = a2[5];
  if (v38 <= 67)
  {
    if (v38 == 66)
    {
      if ((v39 & 0x20) == 0)
      {
        v71 = __s;
        v8 = "missing DEV field: %s";
        v9 = 749;
        goto LABEL_43;
      }

      v56 = v17;
      v57 = v53 | 0x6000;
    }

    else
    {
      if (v38 != 67)
      {
        goto LABEL_106;
      }

      if ((v39 & 0x20) == 0)
      {
        v71 = __s;
        v8 = "missing DEV field: %s";
        v9 = 756;
        goto LABEL_43;
      }

      v56 = v17;
      v57 = v53 | 0x2000;
    }

    v58 = *(v7 + 4) == 0;
    if (*(v7 + 4))
    {
      v59 = 17;
    }

    else
    {
      v59 = 1;
    }

    v60 = 4;
  }

  else
  {
    switch(v38)
    {
      case 'D':
        v56 = v17;
        v57 = v53 | 0x4000;
        v58 = *(v7 + 4) == 0;
        if (*(v7 + 4))
        {
          v59 = 17;
        }

        else
        {
          v59 = 1;
        }

        v60 = 2;
        break;
      case 'L':
        if ((v39 & 0x10000) == 0)
        {
          v71 = __s;
          v8 = "missing LNK field: %s";
          v9 = 742;
          goto LABEL_43;
        }

        v56 = v17;
        v57 = v53 | 0xFFFFA000;
        v58 = *(v7 + 4) == 0;
        v60 = 3;
        if (*(v7 + 4))
        {
          v59 = 19;
        }

        else
        {
          v59 = 3;
        }

        break;
      case 'F':
        if ((v39 & 0x80) == 0)
        {
          v71 = __s;
          v8 = "missing SIZ field: %s";
          v9 = 727;
          goto LABEL_43;
        }

        if ((v39 & 0x1000) == 0)
        {
          v71 = __s;
          v8 = "missing CKS field: %s";
          v9 = 728;
          goto LABEL_43;
        }

        if ((v39 & 8) == 0)
        {
          v71 = __s;
          v8 = "missing FLG field: %s";
          v9 = 729;
          goto LABEL_43;
        }

        v56 = v17;
        v57 = v53 | 0xFFFF8000;
        v58 = *(v7 + 4) == 0;
        if (*(v7 + 4))
        {
          v59 = 19;
        }

        else
        {
          v59 = 3;
        }

        v60 = 1;
        break;
      default:
LABEL_106:
        v71 = __s;
        v8 = "invalid entry type: %s";
        v9 = 763;
        goto LABEL_43;
    }
  }

  v74[0] = v60;
  v74[1] = 1;
  *&v74[2] = v59 << 8;
  v61.i64[0] = *(a2 + 1);
  v62 = vmovn_s64(*(a2 + 10));
  v61.i64[1] = __PAIR64__(v62.u32[0], v62.u32[1]);
  *&v74[4] = bswap32(v57) >> 16;
  *&v74[6] = vrev32q_s8(v61);
  v75 = 1;
  if ((v59 & 2) != 0)
  {
    if ((v39 & 0x1000) != 0)
    {
      v64 = a2[22];
    }

    else
    {
      v64 = 0;
    }

    v76[0] = bswap32(v64);
    v63 = 27;
  }

  else
  {
    v63 = 23;
  }

  if (v38 == 76)
  {
    v65 = strlen(a2 + 1168);
    *&v74[v63] = bswap32(v65 + 1);
    v66 = v63 + 4;
    memcpy(&v74[v66], a2 + 292, v65);
    v67 = v65 + v66;
    v63 = v65 + v66 + 1;
    v74[v67] = 0;
  }

  else if ((v38 & 0xFFFFFFFE) == 0x42)
  {
    *&v74[v63] = bswap32(a2[6]);
    v63 += 4;
  }

  if (!v58)
  {
    *&v74[v63] = 0x8000000;
    IsCompressed = statIsCompressed(a2[4]);
    v69 = strstr(__s, "/usr/standalone/update");
    v70 = (IsCompressed << 32) | 0xF1;
    if (v69)
    {
      v70 = 0x1000000F1;
    }

    *&v74[v63 + 4] = v70;
    v63 += 12;
  }

  if (storeBlock(v7, v74, v63, v36 + 7))
  {
    v8 = "attr";
    v9 = 830;
    goto LABEL_43;
  }

  v17 = v56;
LABEL_48:
  bzero(&v74[4], 0x460uLL);
  *v74 = bswap32(*(v36 + 5));
  __memcpy_chk();
  v74[v17 + 4] = 0;
  if (storeBlock(v7, v74, v17 + 5, v36 + 6))
  {
    v8 = "name";
    v9 = 846;
    goto LABEL_43;
  }

  *v74 = bswap32(*(v36 + 4));
  *&v74[4] = bswap32(*(v36 + 7));
  result = storeBlock(v7, v74, 8uLL, v36 + 8);
  if (result)
  {
    v8 = "tree_ptr";
    v9 = 856;
    goto LABEL_43;
  }

  v49 = *(a2 + 5);
  if (HIDWORD(v49))
  {
    v51 = *(v7 + 64);
    v50 = *(v7 + 72);
    if (v50 >= v51)
    {
      v54 = v51 + (v51 >> 1);
      if (!v51)
      {
        v54 = 0x4000;
      }

      *(v7 + 64) = v54;
      v52 = reallocf(*(v7 + 80), 8 * v54);
      *(v7 + 80) = v52;
      if (!v52)
      {
        v37 = *__error();
        v8 = "malloc";
        v9 = 868;
        goto LABEL_44;
      }

      v50 = *(v7 + 72);
      v49 = *(a2 + 5);
    }

    else
    {
      v52 = *(v7 + 80);
    }

    v55 = &v52[8 * v50];
    *v74 = bswap64(v49);
    if (storeBlock(v7, v74, 8uLL, v55))
    {
      v8 = "size";
      v9 = 877;
      goto LABEL_43;
    }

    *v74 = bswap32(*(v36 + 7));
    result = storeBlock(v7, v74, 4uLL, v55 + 1);
    if (result)
    {
      v8 = "attr";
      v9 = 881;
      goto LABEL_43;
    }

    ++*(v7 + 72);
  }

  if (*v7 >= 2)
  {
    result = fprintf(*MEMORY[0x29EDCA610], "entry_id=%u parent_id=%u %s\n", *(v36 + 4), *(v36 + 5), v12);
  }

  ++*(v7 + 40);
  return result;
}

uint64_t storeBlock(uint64_t a1, const void *a2, size_t a3, _DWORD *a4)
{
  v4 = *(a1 + 112);
  if (v4 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "storeBlock", 168, 52, 0, "too many blocks");
    return 0xFFFFFFFFLL;
  }

  if (HIDWORD(a3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "storeBlock", 169, 52, 0, "block is too large: %zu B");
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 104);
  if (v4 >= v9)
  {
    v10 = v9 + (v9 >> 1);
    if (!v9)
    {
      v10 = 4096;
    }

    *(a1 + 104) = v10;
    v11 = reallocf(*(a1 + 120), 16 * v10);
    *(a1 + 120) = v11;
    if (!v11)
    {
      v14 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "storeBlock", 177, 52, v14, "malloc");
      return 0xFFFFFFFFLL;
    }

    v4 = *(a1 + 112);
  }

  *a4 = v4;
  if (a3)
  {
    if (BlobBufferStore(a1 + 160, a2, a3, (*(a1 + 120) + 16 * v4)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "storeBlock", 187, 52, 0, "blob store");
      return 0xFFFFFFFFLL;
    }

    v4 = *(a1 + 112);
  }

  else
  {
    v13 = (*(a1 + 120) + 16 * v4);
    *v13 = 0;
    v13[1] = 0;
  }

  result = 0;
  *(a1 + 112) = v4 + 1;
  return result;
}

uint64_t BOMEntryCompareProc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = v5 >= v6;
  v8 = v5 > v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t createTree(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t, int8x8_t *), uint64_t a4, size_t __size, _DWORD *a6)
{
  v72 = *MEMORY[0x29EDCA608];
  if (a2 < 0xFFFFFFFF)
  {
    v12 = malloc(__size);
    v62 = v12;
    if (!v12)
    {
      v19 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 273, 52, *v19, "malloc");
      v20 = 0;
      v21 = 0;
      goto LABEL_66;
    }

    v13 = v12;
    v14 = (__size - 16) >> 3;
    v15 = a2;
    if (a2 < 2)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v16)
        {
          v18 = v14 + 1;
        }

        else
        {
          v18 = (__size - 16) >> 3;
        }

        v15 = (v15 + v18 - 1) / v18;
        v17 += v15;
        --v16;
      }

      while (v15 > 1);
    }

    if (v17 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v17;
    }

    v21 = calloc(v22, 4uLL);
    if (!v21)
    {
      v52 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 287, 52, *v52, "malloc");
      v20 = 0;
      goto LABEL_66;
    }

    v58 = v14 + 1;
    v23 = calloc(v22, 4uLL);
    v20 = v23;
    if (!v23)
    {
      v53 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 289, 52, v53, "malloc");
      goto LABEL_66;
    }

    v61 = a1;
    if (!a2)
    {
      bzero(v13, __size);
      *v13 = 256;
      if (!storeBlock(a1, v13, __size, v21))
      {
        v56 = a6;
        v57 = v22;
        LODWORD(v66) = __size;
        v51 = 0;
        v25 = 1;
        LODWORD(a6) = 0;
        goto LABEL_61;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 301, 52, 0, "storing page");
      goto LABEL_66;
    }

    v56 = a6;
    v57 = v22;
    v66 = __size;
    v59 = v21;
    v60 = v23;
    v24 = 0;
    v25 = 0;
    v26 = v13 + 3;
    v27 = 1;
    a6 = a2;
    while (1)
    {
      v63 = v27;
      bzero(v13, v66);
      v28 = v24 + v14;
      v29 = v24 + v14 <= a6 ? v14 : (a6 - v24);
      v67 = 0;
      if (v29)
      {
        v30 = 0;
        v31 = 6;
        do
        {
          a3(a4, v24 + v30, &v67);
          v32 = v67.i32[1];
          *&v26[2 * v30] = vrev32_s8(v67);
          v31 += 4;
          ++v30;
        }

        while (v30 < v29);
        v33 = v32;
        a1 = v61;
      }

      else
      {
        v33 = 0;
        v31 = 6;
      }

      v21 = v59;
      v60[v25] = v33;
      *&v62[v31] = 0;
      v13 = v62;
      *v62 = 256;
      v62[1] = bswap32(v29) >> 16;
      if (storeBlock(a1, v62, v66, &v59[v25]))
      {
        break;
      }

      ++v25;
      a6 = a2;
      v27 = v63 + 1;
      v24 = v28;
      if (v28 >= a2)
      {
        v21 = v59;
        v20 = v60;
        if (v25)
        {
          v34 = 0;
          v35 = v59;
          while (1)
          {
            v36 = v34 + 1;
            if (v34 + 1 < v25)
            {
              break;
            }

            v37 = 0;
            if (v34)
            {
              goto LABEL_36;
            }

LABEL_37:
            v38 = *v35++;
            v39 = *(a1 + 176) + *(*(a1 + 120) + 16 * v38);
            *(v39 + 4) = bswap32(v37);
            *(v39 + 8) = bswap32(v34);
            v34 = v36;
            if (v63 == v36)
            {
              goto LABEL_38;
            }
          }

          v37 = v35[1];
          if (!v34)
          {
            goto LABEL_37;
          }

LABEL_36:
          LODWORD(v34) = *(v35 - 1);
          goto LABEL_37;
        }

LABEL_38:
        if (v25 < 2)
        {
          v51 = 0;
        }

        else
        {
          v40 = 0;
          v41 = 4 * v14 + 4;
          v42 = v25;
          while (2)
          {
            v43 = 0;
            v55 = v25;
            v44 = &v59[v40];
            v64 = v40;
            v45 = &v60[v40];
            do
            {
              bzero(v62, v66);
              v46 = v43 + v58;
              v47 = v42 - v43;
              if (v43 + v58 <= v42)
              {
                v47 = v58;
              }

              if (v47)
              {
                v48 = v60[v43 + v64];
                *(v62 + 3) = bswap32(v59[v43 + v64]);
                if (v47 != 1)
                {
                  v49 = v62 + 10;
                  for (i = 1; i < v47; ++i)
                  {
                    *(v49 - 1) = bswap32(v48);
                    v48 = *&v45[4 * i];
                    *v49 = bswap32(v44[i]);
                    v49 += 2;
                  }
                }
              }

              else
              {
                v48 = 0;
              }

              v60[v25] = v48;
              *v62 = 0;
              v62[1] = bswap32(v47 - 1) >> 16;
              if (storeBlock(v61, v62, v66, &v59[v25]))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 388, 52, 0, "storing page");
                goto LABEL_66;
              }

              ++v25;
              v44 = (v44 + v41);
              v45 += v41;
              v43 += v58;
            }

            while (v46 < v42);
            v51 = v55;
            v42 = v25 - v55;
            v40 = v55;
            LODWORD(a6) = a2;
            if (v25 - v55 >= 2)
            {
              continue;
            }

            break;
          }
        }

LABEL_61:
        if (v25 == v57)
        {
          v67 = 0x100000065657274;
          v68 = bswap32(v21[v51]);
          v69 = bswap32(v66);
          v70 = bswap32(a6);
          v71 = 0;
          if (storeBlock(v61, &v67, 0x15uLL, v56))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 413, 52, 0, "storing base block");
            v6 = 0xFFFFFFFFLL;
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_67;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 399, 52, 0, "mismatch in number of tree pages: i_page=%zu n_pages=%zu");
LABEL_66:
        v6 = 0xFFFFFFFFLL;
LABEL_67:
        free(v62);
        free(v21);
        free(v20);
        return v6;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 337, 52, 0, "storing page");
    v6 = 0xFFFFFFFFLL;
    v20 = v60;
    goto LABEL_67;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 259, 52, 0, "too many entries in tree");
  return 0xFFFFFFFFLL;
}

uint64_t getPathsPK(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(result + 48) + 48 * a2;
  *a3 = *(v3 + 32);
  a3[1] = *(v3 + 24);
  return result;
}

uint64_t getSize64PK(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = (*(result + 80) + 8 * a2);
  *a3 = *v3;
  a3[1] = v3[1];
  return result;
}

uint64_t createBomInfo(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = bswap32(*(a1 + 56) + 1);
  v3[0] = 0x1000000;
  v3[1] = v1;
  v3[2] = 0;
  result = storeBlock(a1, v3, 0xCuLL, (a1 + 152));
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createBomInfo", 458, 52, 0, "storing bom_info block");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t createVIndex(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (createTree(a1, 0, 0, 0, 0x80uLL, (a1 + 148)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createVIndex", 466, 52, 0, "vindex_tree");
  }

  else
  {
    v2 = bswap32(*(a1 + 148));
    v4[0] = 0x1000000;
    v4[1] = v2;
    v4[2] = 0;
    v5 = 0;
    result = storeBlock(a1, v4, 0xDuLL, (a1 + 156));
    if (!result)
    {
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createVIndex", 477, 52, 0, "storing vindex block");
  }

  return 0xFFFFFFFFLL;
}

uint64_t cmpBOMPath(uint64_t a1, void *__s1, size_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = *(*(a1 + 48) + 48 * a4 + 8);
  if (v5 < a3)
  {
    a3 = *(*(a1 + 48) + 48 * a4 + 8);
  }

  LODWORD(result) = memcmp(__s1, (*(a1 + 176) + *(*(a1 + 48) + 48 * a4)), a3);
  if (v5 <= v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 >= v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t getTablePK(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = (result + 8 * a2);
  *a3 = *v3;
  a3[1] = v3[1];
  return result;
}

uint64_t ParallelArchiveExtractClones()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v22 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  bzero(&v17, 0xED0uLL);
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v17 = *v0;
  if (realpath_DARWIN_EXTSN(*(v0 + 16), v18))
  {
    v1 = *(v0 + 48);
    if (v1)
    {
      v19 = ParallelArchiveDBSetCreate(v1, *(v0 + 56), 0);
      if (v19)
      {
        v20 = 0;
        v2 = *v0;
        if (*v0 >= 1)
        {
          memset(&v16, 0, 512);
          if (!statfs(v18, &v16))
          {
            v3 = MEMORY[0x29EDCA610];
            fprintf(*MEMORY[0x29EDCA610], "%12llu initial free blocks\n", v16.f_bfree);
            fprintf(*v3, "%12llu initial available blocks\n", v16.f_bavail);
            fprintf(*v3, "%12llu initial blocks\n", v16.f_blocks);
          }

          v2 = *v0;
        }

        *&v11[0] = __PAIR64__(*(v0 + 4), v2);
        v4 = *(v0 + 40);
        *(v11 + 8) = *(v0 + 24);
        v15 = &v17;
        *(&v11[1] + 1) = v4;
        *&v12 = extractClonesBegin;
        *&v14 = extractClonesEnd;
        *(&v12 + 1) = extractClonesBlob;
        *&v13 = extractClonesData;
        if ((ParallelArchiveRead(v11) & 0x80000000) == 0)
        {
          v5 = 0;
          goto LABEL_16;
        }

        v7 = "reading archive";
        v8 = 189;
      }

      else
      {
        v7 = "connecting to database";
        v8 = 162;
      }
    }

    else
    {
      v7 = "No database provided";
      v8 = 160;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "ParallelArchiveExtractClones", v8, 71, 0, v7);
  }

  else
  {
    v6 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "ParallelArchiveExtractClones", 159, 71, v6, *(v0 + 16));
  }

  v5 = 1;
LABEL_16:
  ParallelArchiveDBSetDestroy(v19);
  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    if ((v5 & 1) == 0 && *v0 >= 1)
    {
      v10 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "%12llu entries extracted\n", v21);
      memset(&v16, 0, 512);
      if (!statfs(v18, &v16))
      {
        fprintf(*v10, "%12llu final free blocks\n", v16.f_bfree);
        fprintf(*v10, "%12llu final available blocks\n", v16.f_bavail);
        fprintf(*v10, "%12llu final blocks\n", v16.f_blocks);
      }
    }

    return (v5 << 31 >> 31);
  }

  return result;
}

unsigned __int16 *extractClonesBegin(uint64_t a1, int *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  result = memcpy((a1 + 1048), a2, 0x890uLL);
  *(a1 + 3240) = 0u;
  *(a1 + 3256) = 0u;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0u;
  *(a1 + 3304) = 0u;
  *(a1 + 3320) = 0u;
  *(a1 + 3336) = 0u;
  *(a1 + 3352) = 0u;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0u;
  *(a1 + 3400) = 0u;
  *(a1 + 3416) = 0u;
  *(a1 + 3432) = 0u;
  *(a1 + 3448) = 0u;
  *(a1 + 3464) = 0u;
  *(a1 + 3480) = 0u;
  *(a1 + 3496) = 0;
  *(a1 + 3504) = 0;
  *(a1 + 3732) = 0u;
  *(a1 + 3748) = 0u;
  *(a1 + 3700) = 0u;
  *(a1 + 3716) = 0u;
  *(a1 + 3668) = 0u;
  *(a1 + 3684) = 0u;
  *(a1 + 3636) = 0u;
  *(a1 + 3652) = 0u;
  *(a1 + 3604) = 0u;
  *(a1 + 3620) = 0u;
  *(a1 + 3572) = 0u;
  *(a1 + 3588) = 0u;
  *(a1 + 3540) = 0u;
  *(a1 + 3556) = 0u;
  *(a1 + 3508) = 0u;
  *(a1 + 3524) = 0u;
  *(a1 + 3768) = 0;
  *(a1 + 3776) = 0;
  if (*(a1 + 1052) == 68)
  {
    bzero(__s, 0x800uLL);
    if (concatPath(__s, 0x800uLL, (a1 + 4), (a1 + 1192)))
    {
      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesBegin", 49, 71, 0, "concatPath");
    }

    v5 = strlen(__s);
    makePath(__s, v5);
    result = mkdir(__s, 0x1EDu);
    v6 = *a2;
    if ((*a2 & 2) != 0)
    {
      v7 = a2[2];
      if ((v6 & 4) == 0)
      {
        v8 = -1;
        return chown(__s, v7, v8);
      }
    }

    else
    {
      if ((v6 & 4) == 0)
      {
        return result;
      }

      v7 = -1;
    }

    v8 = a2[3];
    return chown(__s, v7, v8);
  }

  return result;
}

unsigned __int16 *extractClonesEnd(unsigned __int16 *result)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(result + 263) != 77)
  {
    v1 = result;
    bzero(__s, 0x800uLL);
    if (concatPath(__s, 0x800uLL, (v1 + 4), (v1 + 1192)))
    {
      v2 = "concatPath";
      v3 = 67;
      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesEnd", v3, 71, 0, v2, v8, v9);
    }

    v4 = *(v1 + 1052);
    if (v4 != 68)
    {
      if (v4 == 76)
      {
        v6 = strlen(__s);
        makePath(__s, v6);
        unlink(__s);
        if (symlink((v1 + 2216), __s))
        {
          v7 = *__error();
          return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesEnd", 82, 71, v7, "%s");
        }
      }

      else
      {
        if (v4 != 70)
        {
          v8 = v4;
          v9 = __s;
          v2 = "Unsupported file type [%c] %s";
          v3 = 85;
          return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesEnd", v3, 71, 0, v2, v8, v9);
        }

        v5 = strlen(__s);
        makePath(__s, v5);
        unlink(__s);
        if ((ParallelArchiveDBCloneWithSet(*(v1 + 1032), (v1 + 3508), __s, v1 + 3240, *(v1 + 3496), 0) & 0x80000000) != 0)
        {
          v8 = __s;
          v2 = "cloning file: %s";
          v3 = 77;
          return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesEnd", v3, 71, 0, v2, v8, v9);
        }
      }
    }

    result = yaa_setEntryAttributes(__s, (v1 + 1048), 0, *(v1 + 1040));
    if ((result & 0x80000000) != 0)
    {
      v8 = __s;
      v2 = "setting attributes: %s";
      v3 = 92;
      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesEnd", v3, 71, 0, v2, v8, v9);
    }

    ++*(v1 + 3784);
    if (*v1 >= 2)
    {
      return fprintf(*MEMORY[0x29EDCA610], "%s\n", __s);
    }
  }

  return result;
}

_DWORD *extractClonesBlob(_DWORD *result, _DWORD *a2)
{
  if (result[263] != 77)
  {
    result[944] = 0;
    result[876] = 0;
    v2 = *a2 & 0xDFDFDF;
    if (v2 == 4932697)
    {
      v3 = result + 876;
      v4 = 874;
    }

    else
    {
      if (v2 != 4277337)
      {
        return result;
      }

      v3 = result + 944;
      v4 = 942;
    }

    *v3 = 1;
    *&result[v4] = 0;
  }

  return result;
}

char *extractClonesData(char *result, void *__src, size_t a3)
{
  if (*(result + 263) != 77)
  {
    v3 = a3;
    v5 = result;
    if (*(result + 876))
    {
      v6 = *(result + 437);
      if (256 - v6 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = 256 - v6;
      }

      result = memcpy(&result[v6 + 3240], __src, v7);
      *(v5 + 437) += v7;
    }

    if (*(v5 + 944))
    {
      v8 = *(v5 + 471);
      if (256 - v8 < v3)
      {
        v3 = 256 - v8;
      }

      result = memcpy(&v5[v8 + 3508], __src, v3);
      *(v5 + 471) += v3;
    }
  }

  return result;
}

uint64_t jsonPushLabel(uint64_t a1, char a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = (a1 + 72);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 72) = v8;
    v7 = reallocf(*(a1 + 88), v8);
    *(a1 + 88) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushLabel", 358, 109, *v11, "malloc");
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 80);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v9 = 0;
  *(a1 + 80) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

uint64_t jsonPushValue(uint64_t a1, char a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = (a1 + 96);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 96) = v8;
    v7 = reallocf(*(a1 + 112), v8);
    *(a1 + 112) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushValue", 372, 109, *v11, "malloc");
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 104);
  }

  else
  {
    v7 = *(a1 + 112);
  }

  v9 = 0;
  *(a1 + 104) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

void *AAJSONInputStreamOpen(uint64_t a1)
{
  v2 = malloc(0x78uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x78uLL, 0, 0x78uLL);
    v3[1] = a1;
    v3[5] = 0x10000;
    v4 = malloc(0x10000uLL);
    v3[8] = v4;
    if (v4)
    {
      *(v3 + 20) = 32;
      v3[4] = calloc(0x20uLL, 4uLL);
    }

    else
    {
      v6 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 387, 109, *v6, "malloc");
      AAJSONInputStreamClose(v3);
      return 0;
    }
  }

  else
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 382, 109, *v5, "malloc");
  }

  return v3;
}

void AAJSONInputStreamClose(void **a1)
{
  if (a1)
  {
    free(a1[4]);
    free(a1[11]);
    free(a1[14]);
    free(a1[8]);

    free(a1);
  }
}

uint64_t AAJSONInputStreamRead(uint64_t a1, int *a2)
{
  if (atomic_load(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 16);
  if (v4 == 9 || v4 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 418, 109, 0, "unexpected read call");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v8 = MEMORY[0x29EDCA600];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v9 = *(a1 + 56);
            v10 = *(a1 + 64);
            if (v9 >= *(a1 + 48))
            {
              v11 = AAByteStreamRead(*(a1 + 8), v10, *(a1 + 40));
              if (v11 < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 430, 109, 0, "read error: %zd");
                goto LABEL_111;
              }

              if (!v11)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 431, 109, 0, "EOF reached");
                goto LABEL_111;
              }

              v9 = 0;
              *(a1 + 48) = v11;
              v10 = *(a1 + 64);
            }

            *(a1 + 56) = v9 + 1;
            v12 = v10[v9];
            v13 = v10[v9];
            v14 = *(a1 + 16);
            if (v14 > 3)
            {
              break;
            }

            if (v14 > 1)
            {
              if (v14 == 2)
              {
                if (((v13 - 98) >> 1) | ((v13 - 98) << 7)) < 0xAu && ((0x341u >> (((v13 - 98) >> 1) | ((v13 - 98) << 7))))
                {
                  v16 = asc_298069778[(((v13 - 98) >> 1) | ((v13 - 98) << 7))];
                }

                else if (v12 == 102)
                {
                  v16 = 12;
                }

                else
                {
                  v16 = v10[v9];
                }

                if ((jsonPushValue(a1, v16) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 512, 109, 0, "jsonPushValue");
                  goto LABEL_111;
                }

LABEL_55:
                v15 = 1;
                goto LABEL_78;
              }

              if ((v12 - 48) > 9)
              {
                *(a1 + 16) = 5;
                *(a1 + 56) = v9;
                if ((jsonPushValue(a1, 0) & 0x80000000) == 0)
                {
                  v20 = 4;
                  goto LABEL_128;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 539, 109, 0, "jsonPushValue");
LABEL_111:
                result = 0xFFFFFFFFLL;
                *(a1 + 16) = -1;
                return result;
              }

              if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 533, 109, 0, "jsonPushValue");
                goto LABEL_111;
              }
            }

            else if (v14)
            {
              if (v14 != 1)
              {
                goto LABEL_110;
              }

              if (v12 == 92)
              {
                v15 = 2;
                goto LABEL_78;
              }

              if (v12 == 34)
              {
                *(a1 + 16) = 5;
                if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 499, 109, 0, "jsonPushValue");
                  goto LABEL_111;
                }

                v20 = 3;
                goto LABEL_128;
              }

              if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 503, 109, 0, "jsonPushValue");
                goto LABEL_111;
              }
            }

            else
            {
              *(a1 + 104) = 0;
              if (v12 < 0)
              {
                if (!__maskrune(v12, 0x4000uLL))
                {
LABEL_63:
                  if (v12 == 34)
                  {
                    goto LABEL_55;
                  }

                  if (v12 == 43 || v12 == 45 || (v12 - 48) <= 9)
                  {
                    if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 451, 109, 0, "jsonPushValue");
                      goto LABEL_111;
                    }

                    v15 = 3;
                  }

                  else
                  {
                    if (v12 == 123)
                    {
                      v23 = *(a1 + 24);
                      if (v23 == *(a1 + 20))
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 465, 109, 0, "max level reached");
                        goto LABEL_111;
                      }

                      v20 = 0;
                      v34 = *(a1 + 32);
                      *(a1 + 24) = v23 + 1;
                      *(v34 + 4 * v23) = 0;
                      v27 = 6;
                      goto LABEL_127;
                    }

                    if (v12 == 91)
                    {
                      v24 = *(a1 + 24);
                      if (v24 == *(a1 + 20))
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 457, 109, 0, "max level reached");
                        goto LABEL_111;
                      }

                      v27 = 0;
                      v35 = *(a1 + 32);
                      *(a1 + 24) = v24 + 1;
                      v20 = 1;
                      *(v35 + 4 * v24) = 1;
                      goto LABEL_127;
                    }

                    if ((v12 - 97) > 0x19)
                    {
                      v18 = *(a1 + 24) - 1;
                      v25 = v12 != 93;
                      if (*(*(a1 + 32) + 4 * v18))
                      {
                        v26 = 0;
                      }

                      else
                      {
                        v25 = 1;
                        v26 = v12 == 125;
                      }

                      if (v25 && !v26)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_123;
                    }

                    if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 473, 109, 0, "jsonPushValue");
                      goto LABEL_111;
                    }

                    v15 = 4;
                  }

LABEL_78:
                  *(a1 + 16) = v15;
                }
              }

              else if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
              {
                goto LABEL_63;
              }
            }
          }

          if (v14 <= 5)
          {
            break;
          }

          switch(v14)
          {
            case 6:
              *(a1 + 80) = 0;
              if (v12 < 0)
              {
                if (!__maskrune(v12, 0x4000uLL))
                {
LABEL_70:
                  if (v12 != 34)
                  {
                    if (v12 != 125)
                    {
                      goto LABEL_110;
                    }

                    v22 = *(a1 + 24);
                    if (!v22)
                    {
                      goto LABEL_110;
                    }

                    v18 = v22 - 1;
                    v19 = *(*(a1 + 32) + 4 * v18);
                    goto LABEL_100;
                  }

                  v15 = 7;
                  goto LABEL_78;
                }
              }

              else if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
              {
                goto LABEL_70;
              }

              break;
            case 7:
              if (v12 == 34)
              {
                if ((jsonPushLabel(a1, 0) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 587, 109, 0, "jsonPushLabel");
                  goto LABEL_111;
                }

                v15 = 8;
                goto LABEL_78;
              }

              if ((jsonPushLabel(a1, v12) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 591, 109, 0, "jsonPushLabel");
                goto LABEL_111;
              }

              break;
            case 8:
              if (v12 < 0)
              {
                if (!__maskrune(v12, 0x4000uLL))
                {
LABEL_60:
                  if (v12 != 58)
                  {
                    goto LABEL_110;
                  }

                  v15 = 0;
                  goto LABEL_78;
                }
              }

              else if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
              {
                goto LABEL_60;
              }

              break;
            default:
              goto LABEL_110;
          }
        }

        if (v14 != 4)
        {
          break;
        }

        if ((v12 - 97) > 0x19)
        {
          *(a1 + 16) = 5;
          *(a1 + 56) = v9;
          if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 524, 109, 0, "jsonPushValue");
            goto LABEL_111;
          }

          v21 = *(a1 + 112);
          if (!strcmp(v21, "false") || !strcmp(v21, "true"))
          {
            v20 = 6;
            goto LABEL_128;
          }

          if (!strcmp(v21, "null"))
          {
            v20 = 7;
            goto LABEL_128;
          }

LABEL_110:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 610, 109, 0, "invalid char %c %s");
          goto LABEL_111;
        }

        if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 519, 109, 0, "jsonPushValue");
          goto LABEL_111;
        }
      }

      if (v12 < 0)
      {
        break;
      }

      if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  while (__maskrune(v12, 0x4000uLL));
LABEL_73:
  v17 = *(a1 + 24);
  if (!v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 546, 109, 0, "invalid JSON state");
    goto LABEL_111;
  }

  v18 = v17 - 1;
  v19 = *(*(a1 + 32) + 4 * v18);
  if (v12 == 44)
  {
    if (v19)
    {
      v15 = 0;
    }

    else
    {
      v15 = 6;
    }

    goto LABEL_78;
  }

  if (v12 == 93)
  {
    if (v19)
    {
      goto LABEL_123;
    }

    goto LABEL_110;
  }

  if (v12 != 125)
  {
    goto LABEL_110;
  }

LABEL_100:
  if (v19)
  {
    goto LABEL_110;
  }

LABEL_123:
  *(a1 + 24) = v18;
  if (v18)
  {
    v27 = 5;
  }

  else
  {
    v27 = 9;
  }

  v20 = 2;
LABEL_127:
  *(a1 + 16) = v27;
LABEL_128:
  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  *a2 = v20;
  v28 = *(a1 + 80);
  if (v28)
  {
    v28 = *(a1 + 88);
  }

  *(a2 + 1) = v28;
  a2[12] = *(a1 + 24);
  if (v20 == 6)
  {
    v32 = strcmp(*(a1 + 112), "true");
    result = 0;
    a2[9] = v32 == 0;
  }

  else if (v20 == 4)
  {
    v29 = *(a1 + 112);
    if (*v29 == 45)
    {
      v30 = strtoull(v29 + 1, 0, 10);
      result = 0;
      *(a2 + 3) = v30;
      v31 = -1;
    }

    else
    {
      v33 = strtoull(v29, 0, 0);
      result = 0;
      *(a2 + 3) = v33;
      v31 = v33 != 0;
    }

    a2[8] = v31;
  }

  else
  {
    result = 0;
    if (v20 == 3)
    {
      *(a2 + 2) = *(a1 + 112);
    }
  }

  return result;
}

void *pc_array_init(uint64_t a1, uint64_t a2)
{
  v4 = malloc(a2 * a1 + 64);
  if (v4)
  {
    *v4 = 0;
    v4[1] = a2;
    v5 = v4 + 8;
    v4[2] = a1;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_init", 26, 139, *v6, "malloc");
    return 0;
  }

  return v5;
}

void pc_array_free(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 64));
  }
}

char *pc_array_compact(uint64_t a1)
{
  v3 = *(a1 - 64);
  v4 = *(a1 - 56);
  v2 = (a1 - 64);
  if (v4 <= v3)
  {
    return v2 + 64;
  }

  *(a1 - 56) = v3;
  v2 = reallocf(v2, *(a1 - 48) * v3 + 64);
  if (v2)
  {
    return v2 + 64;
  }

  v6 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_compact", 56, 139, *v6, "reallocf");
  return 0;
}

void *pc_array_append(uint64_t a1, void *__src)
{
  v3 = *(a1 - 64);
  v4 = *(a1 - 56);
  v5 = (a1 - 64);
  if (v4 > v3)
  {
    goto LABEL_7;
  }

  v6 = 2 * v4;
  v7 = v4 == 0;
  v8 = 16;
  if (!v7)
  {
    v8 = v6;
  }

  *(a1 - 56) = v8;
  if (v8 <= v3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_append", 70, 139, 0, "too many elements");
    return 0;
  }

  v9 = reallocf((a1 - 64), *(a1 - 48) * v8 + 64);
  if (!v9)
  {
    v11 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_append", 72, 139, v11, "reallocf");
    return 0;
  }

  v5 = v9;
  v3 = *v9;
LABEL_7:
  v10 = v5 + 8;
  memcpy(v5 + v5[2] * v3 + 64, __src, v5[2]);
  ++*v5;
  return v10;
}

void *pc_array_indirect_sort(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 - 64);
  v5 = malloc(8 * v4);
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = *(v3 - 48);
      v8 = v5;
      v9 = v4;
      do
      {
        *v8++ = v3;
        v3 += v7;
        --v9;
      }

      while (v9);
    }

    qsort_r(v5, v4, 8uLL, a2, pc_array_compare);
  }

  else
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_indirect_sort", 95, 139, *v10, "malloc");
  }

  return v6;
}

uint64_t pc_array_aggregate(char *a1, unsigned int (*a2)(char *, char *), uint64_t (*a3)(char *, char *))
{
  if (*(a1 - 8) < 2uLL)
  {
    return 0;
  }

  v7 = &a1[*(a1 - 6)];
  v8 = 1;
  v9 = 1;
  v10 = a1;
  while (1)
  {
    if (a2(v10, v7))
    {
      v11 = *(a1 - 6);
      v10 += v11;
      if (v10 < v7)
      {
        memcpy(v10, v7, v11);
      }

      ++v9;
      goto LABEL_9;
    }

    if ((a3(v10, v7) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_9:
    ++v8;
    v7 += *(a1 - 6);
    if (v8 >= *(a1 - 8))
    {
      result = 0;
      *(a1 - 8) = v9;
      return result;
    }
  }
}

uint64_t ParallelArchiveConvert(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  bzero(v18, 0xC10uLL);
  v17[0] = a1;
  v17[1] = a2;
  v4 = MemBufferCreate(0x100000uLL);
  v19 = v4;
  v5 = MemBufferCreate(0x100000uLL);
  v25 = v5;
  if (!v4 || !v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "ParallelArchiveConvert", 769, 62, 0, "allocating state buffers");
LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  *&v11[0] = 0;
  DWORD1(v11[0]) = *(a2 + 4);
  *(v11 + 8) = *(a2 + 24);
  *(&v11[1] + 1) = *(a2 + 40);
  *&v12 = convertBegin;
  *&v14 = convertEnd;
  *(&v12 + 1) = convertBlob;
  *&v13 = convertPayload;
  *(&v13 + 1) = convertPadding;
  *(&v14 + 1) = convertPadding;
  v15 = v17;
  if ((ParallelArchiveRead(v11) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "ParallelArchiveConvert", 787, 62, 0, "Archive read");
    goto LABEL_9;
  }

  if (*a2 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12llu bytes read\n", v21);
  }

  v6 = 0;
LABEL_10:
  MemBufferDestroy(v25);
  MemBufferDestroy(v19);
  if (v24)
  {
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v16 = 0;
    ParallelArchiveDBRequestCloseAndGetKey(v24);
  }

  if (v23)
  {
    ParallelArchiveDBRequestClose(v23);
  }

  ParallelArchiveDBSetDestroy(v18[0]);
  ParallelArchiveDBSessionDestroy(v18[1]);
  free(v22);
  v7 = v20;
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 << 31 >> 31;
  if (result >= 0)
  {
    return v10;
  }

  else
  {
    return result;
  }
}

uint64_t convertBegin(uint64_t result, _DWORD *a2, const void *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v54 = *MEMORY[0x29EDCA608];
  if (*(result + 56))
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 64);
  *(result + 2296) = 0;
  *(result + 64) = v12 + a6;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  MemBufferClear(*(result + 2856));
  bzero((v11 + 96), 0x890uLL);
  if ((reserveExtraFields(v11, a4) & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBegin", 424, 62, 0, "allocating extraFields");
LABEL_10:
    if (!*(v11 + 56))
    {
      *(v11 + 56) = 1;
      v15 = *(v11 + 8);
      v16 = *(v15 + 32);
      if (v16)
      {
        v17 = *(v15 + 40);

        return v16(v17);
      }
    }

    return result;
  }

  memcpy((v11 + 96), a2, 0x890uLL);
  result = memcpy(*(v11 + 2304), a3, 1032 * a4);
  *(v11 + 2296) = a4;
  v23 = a2[1] == 77;
  *(v11 + 72) = v23;
  if (v23)
  {
    return result;
  }

  if (*(v11 + 60))
  {
    goto LABEL_6;
  }

  v18 = 99103;
  if (a6 >= 8)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v20;
      v20 = *(a5 + v19++) & 7 | (8 * v20);
    }

    while (v19 != 8);
    v22 = ((8 * v21) >> 6) & 0x3FFFF;
    v23 = v22 == 29121 || v22 == 29127;
    if (v23)
    {
      v18 = 99191;
    }

    else
    {
      v18 = 99103;
    }
  }

  *(v11 + 40) = v18;
  *(v11 + 44) = 0;
  if ((resolveFields(v11) & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBegin", 472, 62, 0, "resolving output fields");
    goto LABEL_10;
  }

  result = writeMetadata();
  if ((result & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBegin", 475, 62, 0, "writing metadata");
    goto LABEL_10;
  }

  if (!*(v11 + 60))
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBegin", 482, 62, 0, "metadata entry was not written");
    goto LABEL_10;
  }

LABEL_6:
  v13 = *(v11 + 8);
  v14 = *(v13 + 48);
  if (v14)
  {
    result = v14(*(v13 + 56), a2 + 36, a2[1]);
    *(v11 + 76) = result < 1;
    if (result < 1)
    {
      return result;
    }
  }

  else if (*(v11 + 76))
  {
    return result;
  }

  v24 = *(v11 + 96);
  if (*(v11 + 2296))
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    LOWORD(v29) = 0;
    while (1)
    {
      v30 = *(v11 + 2304);
      *v53 = 0;
      result = yaa_parseFields((v30 + v25), 0, v53);
      v31 = *v53;
      if (*v53)
      {
        if ((*(v11 + 52) & *v53) != 0)
        {
          goto LABEL_35;
        }
      }

      else if (*(*(v11 + 8) + 20))
      {
LABEL_35:
        if (v26 != v27)
        {
          result = memcpy((*(v11 + 2304) + 1032 * v27), (*(v11 + 2304) + v25), 0x408uLL);
        }

        ++v27;
      }

      v29 = v31 | v28 | v29;
      v28 = v29 & 0xFFFF0000;
      ++v26;
      v25 += 1032;
      if (v26 >= *(v11 + 2296))
      {
        v32 = v29;
        goto LABEL_42;
      }
    }
  }

  v32 = 0;
  LOWORD(v28) = 0;
  v27 = 0;
LABEL_42:
  v33 = 0;
  *(v11 + 2296) = v27;
  v34 = *(v11 + 48);
  *(v11 + 96) = v34 & v24;
  v35 = v34 & 0x2000;
  if ((v24 & 0x2200) != 0x200)
  {
    v35 = 512;
  }

  if ((v24 & 0x4200) == 0x200)
  {
    v36 = v34 & 0x4000;
  }

  else
  {
    v36 = 512;
  }

  if ((v24 & 0x1200) == 0x200)
  {
    v37 = v34 & 0x1000;
  }

  else
  {
    v37 = 512;
  }

  v38 = (v24 >> 7) & 1;
  if ((v24 & 0x200) == 0)
  {
    v38 = 1;
  }

  v23 = v38 == 0;
  v39 = v34 & 0x80;
  if (!v23)
  {
    v39 = 0;
  }

  if ((v32 & 8) == 0 && (v24 & 0x200) != 0)
  {
    v33 = *(v11 + 52) & 8;
  }

  v40 = 0;
  v41 = *(v11 + 84) & 0xFFFF8D7F | v35;
  v42 = v36 | v37;
  v43 = *(v11 + 88) & 0xFFE7 | v33;
  if ((v32 & 0x10) == 0 && (v24 & 0x200) != 0)
  {
    v40 = *(v11 + 52) & 0x10;
  }

  v44 = v41 | v42;
  v45 = v40 | v43;
  if ((v32 & 0x100) != 0 || (v24 & 0x200) == 0)
  {
    v48 = (v32 & 0x10) == 0;
    v47 = (v24 >> 9) & 1;
    LOWORD(v45) = v45 & 0xFEFF;
    if ((v24 & 0x80) == 0)
    {
      v48 = 1;
    }

    v46 = v34 & 0x200;
    if (v48 | ((v24 & 0x200) >> 9))
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v45 = v45 & 0xFFFFFEFF | ((HIBYTE(*(v11 + 52)) & 1) << 8);
    LOBYTE(v47) = 1;
  }

  *(v11 + 88) = v45;
  *(v11 + 84) = v46 | v44 & 0xFFFFFD7F | v39;
  if (**(v11 + 8) >= 3)
  {
    bzero(v53, 0x400uLL);
    bzero(v52, 0x400uLL);
    yaa_serializeFields(v53, 0x400uLL, v24, v28 | v32);
    yaa_serializeFields(v52, 0x400uLL, *(v11 + 84), *(v11 + 88));
    result = fprintf(*MEMORY[0x29EDCA610], "%s: generating %s -> %s\n", (v11 + 240), v53, v52);
  }

  if ((v32 & 2) == 0 && (*(v11 + 52) & 2) != 0 && (result = insertUINTField(v11, v12), (result & 0x80000000) != 0))
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBegin", 544, 62, 0, "inserting IDX");
    if (!*(v11 + 56))
    {
      *(v11 + 56) = 1;
      v50 = *(v11 + 8);
      v51 = *(v50 + 32);
      if (v51)
      {
        return v51(*(v50 + 40));
      }
    }
  }

  else
  {
    if ((*(v11 + 40) & 0x80) != 0)
    {
      v49 = v47;
    }

    else
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      *(v11 + 160) = *(v11 + 136);
    }
  }

  return result;
}

void convertEnd(uint64_t result)
{
  if (*(result + 56) || *(result + 76))
  {
    return;
  }

  if (*(result + 72))
  {
    if ((reserveBlobPayload(result, 1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 561, 62, 0, "allocating blob buffer");
      goto LABEL_22;
    }

    DataPtr = MemBufferGetDataPtr(*(result + 2856));
    DataPtr[MemBufferGetDataSize(*(result + 2856))] = 0;
    if ((yaa_parseFields(DataPtr, (result + 40), (result + 44)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 565, 62, 0, "parsing YAF blob");
      goto LABEL_22;
    }

    if ((resolveFields(result) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 568, 62, 0, "resolving output fields");
      goto LABEL_22;
    }

    if ((writeMetadata() & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 571, 62, 0, "writing metadata");
      goto LABEL_22;
    }

    return;
  }

  v3 = *(result + 84);
  if ((v3 & 0x200) != 0 && *(result + 16))
  {
    v3 &= ~0x200u;
    *(result + 84) = v3;
    *(result + 96) |= 0x200u;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (*(result + 80))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeHeader", 368, 62, 0, "writing entry header twice");
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 587, 62, 0, "writing entry header");
    goto LABEL_22;
  }

  if (v3 || *(result + 88))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeHeader", 369, 62, 0, "writing header before all required fields are updated");
    goto LABEL_20;
  }

  if ((ParallelArchiveWriteEntryHeader(*result, result + 96, *(result + 2304), *(result + 2296)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeHeader", 373, 62, 0, "writing entry header");
    goto LABEL_20;
  }

  *(result + 80) = 1;
  if (v4)
  {
    if (*(result + 2584))
    {
      v8 = (result + 2328);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(result + 160);
    v10 = ParallelArchiveDBReadRequestOpenWithSet(*(result + 16), v8, result + 2592, *(result + 2848), 0, v9, 0);
    *(result + 2312) = v10;
    if (!v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 597, 62, 0, "opening read request from database");
      goto LABEL_22;
    }

    v11 = MemBufferTransmit(*(result + 32), v9, readFromDBProc, result, archiveWriterProc, result);
    if ((v11 & 0x8000000000000000) != 0 || v11 != v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 600, 62, 0, "readining from database");
      goto LABEL_22;
    }

    ParallelArchiveDBRequestClose(*(result + 2312));
    *(result + 2312) = 0;
  }

  if (MemBufferGetDataSize(*(result + 2856)))
  {
    v12 = MemBufferGetDataPtr(*(result + 2856));
    DataSize = MemBufferGetDataSize(*(result + 2856));
    if ((ParallelArchiveWriteEntryData(*result, v12, DataSize) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 612, 62, 0, "writing entry data BLOBS");
      goto LABEL_22;
    }
  }

  if (!*(result + 2296))
  {
LABEL_55:
    OECCStreamDestroy(*(result + 3096));
    *(result + 3096) = 0;
    return;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *(result + 92);
    if ((v16 & 8) != 0 && (*(*(result + 2304) + v14) & 0xDFDFDF) == 0x414459)
    {
      v17 = *(result + 2584);
      if (v17)
      {
        if ((ParallelArchiveWriteEntryData(*result, result + 2328, v17) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 620, 62, 0, "writing entry data YDA");
          goto LABEL_22;
        }

        goto LABEL_54;
      }
    }

    if ((v16 & 0x10) == 0)
    {
      break;
    }

    if ((*(*(result + 2304) + v14) & 0xDFDFDF) != 0x4B4459)
    {
      break;
    }

    v18 = *(result + 2848);
    if (!v18)
    {
      break;
    }

    if ((ParallelArchiveWriteEntryData(*result, result + 2592, v18) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 625, 62, 0, "writing entry data YDK");
      goto LABEL_22;
    }

LABEL_54:
    ++v15;
    v14 += 1032;
    if (v15 >= *(result + 2296))
    {
      goto LABEL_55;
    }
  }

  if ((*(result + 92) & 0x100) == 0)
  {
    goto LABEL_54;
  }

  if ((*(*(result + 2304) + v14) & 0xDFDFDF) != 0x434559)
  {
    goto LABEL_54;
  }

  v19 = OECCStreamGetDataSize(*(result + 3096));
  v20 = OECCStreamGetDataPtr(*(result + 3096));
  if ((ParallelArchiveWriteEntryData(*result, v20, v19) & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", 632, 62, 0, "writing entry data YEC");
LABEL_22:
  if (!*(result + 56))
  {
    *(result + 56) = 1;
    v5 = *(result + 8);
    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 40);

      v6(v7);
    }
  }
}

uint64_t convertBlob(uint64_t result, __int16 *a2, uint64_t a3)
{
  if (*(result + 56))
  {
    return result;
  }

  v3 = result;
  if (*(result + 76))
  {
    return result;
  }

  *(result + 2868) = 0;
  v5 = *a2;
  *(result + 2866) = *(a2 + 2);
  *(result + 2864) = v5;
  *(result + 2867) = 0;
  *(result + 2872) = a3;
  v6 = *(result + 2864);
  v7 = v6 & 0xDFDFDF;
  if (*(result + 72))
  {
    if (v7 != 4604249)
    {
      return result;
    }

    result = reserveBlobPayload(result, a3 + 1);
    if ((result & 0x80000000) == 0)
    {
      *(v3 + 2868) = 1;
      return result;
    }

    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBlob", 661, 62, 0, "allocating blob buffer");
    goto LABEL_48;
  }

  if (v7 == 4997953)
  {
    v8 = 11;
LABEL_12:
    v9 = *(result + 48) >> v8;
    *(result + 2868) = v9 & 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v7 == 5521752)
  {
    v8 = 10;
    goto LABEL_12;
  }

  v10 = *(result + 2296);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = *(result + 2304);
  while (((*v11 ^ v6) & 0xDFDFDF) != 0)
  {
    v11 += 258;
    if (!--v10)
    {
      goto LABEL_23;
    }
  }

  *(result + 2868) = 1;
LABEL_21:
  result = reserveBlobPayload(result, a3);
  if ((result & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBlob", 683, 62, 0, "allocating blob buffer");
LABEL_48:
    if (!*(v3 + 56))
    {
      *(v3 + 56) = 1;
      v17 = *(v3 + 8);
      v18 = *(v17 + 32);
      if (v18)
      {
        v19 = *(v17 + 40);

        return v18(v19);
      }
    }

    return result;
  }

  v6 = *(v3 + 2864);
LABEL_23:
  v12 = v6 & 0xDFDFDF;
  switch(v12)
  {
    case 5521732:
      v13 = *(v3 + 84);
      if ((v13 & 0x80) != 0)
      {
        *(v3 + 96) |= 0x80u;
        *(v3 + 136) = a3;
      }

      LOWORD(v14) = v13 & 0xFF7F;
      *(v3 + 84) = v13 & 0xFFFFFF7F;
      if ((v13 & 0x2000) != 0)
      {
        result = CC_SHA1_Deprecated_Init((v3 + 2880));
        v14 = *(v3 + 84);
        if ((v14 & 0x4000) == 0)
        {
LABEL_32:
          if ((v14 & 0x1000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else if ((v13 & 0x4000) == 0)
      {
        goto LABEL_32;
      }

      result = CC_SHA256_Init((v3 + 2976));
      if ((*(v3 + 84) & 0x1000) == 0)
      {
LABEL_34:
        v15 = *(v3 + 88);
        if ((v15 & 0x100) != 0)
        {
          result = OECCStreamCreate(1, 0x4000u, a3);
          *(v3 + 3096) = result;
          if (!result)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATBegin", 228, 62, 0, "creating ECC context to get YEC");
LABEL_47:
            result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBlob", 693, 62, 0, "processing DAT begin");
            goto LABEL_48;
          }

          v15 = *(v3 + 88);
        }

        if ((v15 & 0x18) == 0)
        {
          return result;
        }

        v16 = *(v3 + 24);
        if (v16)
        {
          result = ParallelArchiveDBRequestOpenForWriting(v16, *(v3 + 160), 0);
          *(v3 + 2320) = result;
          if (result)
          {
            return result;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATBegin", 236, 62, 0, "creating database write request");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATBegin", 234, 62, 0, "can't connect to database to get YDA YDK");
        }

        goto LABEL_47;
      }

LABEL_33:
      result = CC_CKSUM_Init(v3 + 3080);
      goto LABEL_34;
    case 4932697:
      *(v3 + 2848) = 0;
      break;
    case 4277337:
      *(v3 + 2584) = 0;
      break;
  }

  return result;
}

uint64_t convertPayload(uint64_t result, void *__src, size_t __n)
{
  if (*(result + 56))
  {
    return result;
  }

  v4 = result;
  *(result + 64) += __n;
  if (*(result + 76))
  {
    return result;
  }

  *(result + 2872) -= __n;
  if (*(result + 2868) && (result = MemBufferFillFromBuffer(*(result + 2856), __n, __src), result < 0))
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertPayload", 710, 62, 0, "storing blob data");
  }

  else
  {
    if (*(v4 + 72))
    {
      return result;
    }

    v6 = *(v4 + 2864) & 0xDFDFDF;
    switch(v6)
    {
      case 4277337:
        v12 = *(v4 + 2584);
        if (__n + v12 - 256 > 0xFFFFFFFFFFFFFEFELL)
        {
          result = memcpy((v4 + 2328 + v12), __src, __n);
          v13 = *(v4 + 2584) + __n;
          *(v4 + 2584) = v13;
          *(v4 + 2328 + v13) = 0;
          goto LABEL_30;
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertPayload", 727, 62, 0, "YDA payload is too large");
        break;
      case 4932697:
        v11 = *(v4 + 2848);
        if (v11 + __n < 0x101)
        {
          result = memcpy((v4 + v11 + 2592), __src, __n);
          *(v4 + 2848) += __n;
          goto LABEL_30;
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertPayload", 734, 62, 0, "YDK payload is too large");
        break;
      case 5521732:
        result = *(v4 + 2320);
        if (result)
        {
          result = ParallelArchiveDBRequestWrite(result);
          if (result < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATPayload", 248, 62, 0, "writing data to database request");
            goto LABEL_38;
          }
        }

        v7 = *(v4 + 84);
        if ((v7 & 0x2000) != 0)
        {
          result = CC_SHA1_Deprecated_Update((v4 + 2880), __src, __n);
          v7 = *(v4 + 84);
          if ((v7 & 0x4000) == 0)
          {
LABEL_13:
            if ((v7 & 0x1000) == 0)
            {
LABEL_15:
              if ((*(v4 + 88) & 0x100) != 0)
              {
                result = OECCStreamWrite(*(v4 + 3096), __src, __n);
                if (result < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATPayload", 258, 62, 0, "writing data to ECC stream");
LABEL_38:
                  result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertPayload", 723, 62, 0, "processing DAT payload");
                  break;
                }
              }

LABEL_30:
              if ((*(v4 + 2864) & 0xDFDFDF) != 0x544144)
              {
                return result;
              }

              if (*(v4 + 2872))
              {
                return result;
              }

              result = processDATEnd(v4);
              if ((result & 0x80000000) == 0)
              {
                return result;
              }

              result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertPayload", 742, 62, 0, "processing DAT end");
              break;
            }

LABEL_14:
            result = CC_CKSUM_Update(v4 + 3080, __src, __n);
            goto LABEL_15;
          }
        }

        else if ((v7 & 0x4000) == 0)
        {
          goto LABEL_13;
        }

        result = CC_SHA256_Update((v4 + 2976), __src, __n);
        if ((*(v4 + 84) & 0x1000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      default:
        goto LABEL_30;
    }
  }

  if (!*(v4 + 56))
  {
    *(v4 + 56) = 1;
    v8 = *(v4 + 8);
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = *(v8 + 40);

      return v9(v10);
    }
  }

  return result;
}

uint64_t convertPadding(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 56))
  {
    *(result + 64) += a3;
  }

  return result;
}

uint64_t reserveExtraFields(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 2288) > a2)
  {
    return 0;
  }

  *(a1 + 2288) = a2 + 8;
  v4 = reallocf(*(a1 + 2304), 1032 * (a2 + 8));
  *(a1 + 2304) = v4;
  if (v4)
  {
    return 0;
  }

  v5 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "reserveExtraFields", 98, 62, *v5, "malloc");
  return 0xFFFFFFFFLL;
}

uint64_t resolveFields(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *(v2 + 12);
  v4 = *(v2 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = v5 & v3;
  v8 = v4 | (*(v2 + 18) << 16);
  *(a1 + 48) = v5 & v3;
  *(a1 + 52) = v6 & v8;
  v9 = v6 & v8 & 0xFFFD | v4 & 2;
  *(a1 + 52) = v9;
  v10 = (v5 >> 9) & 1;
  v11 = (v5 & 0x80) == 0;
  if ((v6 & 0x10) == 0)
  {
    v11 = 1;
  }

  if (!v11)
  {
    v10 = 1;
  }

  v12 = 0;
  if ((v3 & 0x1000) != 0 && (v5 & 0x1000) == 0 && v10)
  {
    v7 |= 0x1000u;
    *(a1 + 48) = v7;
    v12 = 1;
  }

  if ((v3 & 0x2000) != 0 && (v5 & 0x2000) == 0 && v10)
  {
    v7 |= 0x2000u;
    *(a1 + 48) = v7;
    v12 = 1;
  }

  if ((v3 & 0x4000) != 0 && (v5 & 0x4000) == 0 && v10)
  {
    v7 |= 0x4000u;
    *(a1 + 48) = v7;
    v12 = 1;
  }

  if ((v3 & 0x80) != 0 && (v5 & 0x80) == 0 && v10)
  {
    v7 |= 0x80u;
    *(a1 + 48) = v7;
    v12 = 1;
  }

  if ((v4 & 0x10) != 0 && v10 && (v6 & 0x10) == 0)
  {
    v9 |= 0x10u;
    *(a1 + 52) = v9;
    v12 = 1;
  }

  if ((v4 & 0x100) != 0 && v10 && (v6 & 0x100) == 0)
  {
    *(a1 + 52) = v9 | 0x100;
    v12 = 1;
  }

  if ((v3 & 0x200) != 0 && (v5 & 0x200) == 0 && v10)
  {
    v7 |= 0x200u;
    *(a1 + 48) = v7;
  }

  if (v12 && (v7 & 0x200) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "resolveFields", 142, 62, 0, "Can't write DAT-based field and DAT itself at the same time");
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 0x200) == 0 && (v7 & 0x200) != 0)
  {
    if (v11 || (v16 = *(v2 + 64)) == 0)
    {
      *(a1 + 48) = v7 & 0xFFFFFDFF;
    }

    else
    {
      v17 = ParallelArchiveDBSetCreate(v16, *(v2 + 72), 0);
      *(a1 + 16) = v17;
      if (!v17)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "resolveFields", 152, 62, 0, "connecting to database");
        return 0xFFFFFFFFLL;
      }

      if (**(a1 + 8) >= 1)
      {
        fwrite("Reading DAT blobs from database\n", 0x20uLL, 1uLL, *MEMORY[0x29EDCA610]);
      }
    }
  }

  v18 = *(a1 + 52);
  if ((v18 & 0x10) != 0 && (*(a1 + 44) & 0x10) == 0)
  {
    if ((*(a1 + 41) & 2) != 0 && (v19 = *(a1 + 8), *(v19 + 64) == 1))
    {
      v20 = ParallelArchiveDBSessionCreate(**(v19 + 72), (a1 + 2328), 0x100uLL, 0);
      *(a1 + 24) = v20;
      if (!v20)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "resolveFields", 164, 62, 0, "connecting to database");
        return 0xFFFFFFFFLL;
      }

      *(a1 + 2584) = strlen((a1 + 2328));
      if (**(a1 + 8) >= 1)
      {
        fwrite("Writing DAT blobs to database\n", 0x1EuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }
    }

    else
    {
      *(a1 + 52) = v18 & 0xFFEF;
    }
  }

  *(a1 + 52) = (*(a1 + 52) >> 1) & 8 | *(a1 + 52) & 0xFFF7;
  if (**(a1 + 8) >= 1)
  {
    bzero(v22, 0x400uLL);
    yaa_serializeFields(v22, 0x400uLL, *(a1 + 40), *(a1 + 44));
    v21 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "Input fields:          %s\n", v22);
    yaa_serializeFields(v22, 0x400uLL, v3, v8);
    fprintf(*v21, "Allowed output fields: %s\n", v22);
    yaa_serializeFields(v22, 0x400uLL, *(a1 + 48), *(a1 + 52));
    fprintf(*v21, "Output fields:         %s\n", v22);
  }

  return 0;
}

uint64_t writeMetadata()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v9[273] = *MEMORY[0x29EDCA608];
  if (*(v0 + 60))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeMetadata", 334, 62, 0, "writing archive metadata twice");
  }

  else
  {
    v2 = v0;
    bzero(v4, 0x400uLL);
    if ((yaa_serializeFields(v4, 0x400uLL, *(v2 + 48), *(v2 + 52)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeMetadata", 342, 62, 0, "serializing YAF entry");
    }

    else
    {
      v3 = strlen(v4) + 1;
      bzero(v9, 0x888uLL);
      v8 = 0x4D00000001;
      bzero(v6, 0x405uLL);
      qmemcpy(v5, "YAF", sizeof(v5));
      *&v6[1] = 2;
      v7 = v3;
      if ((ParallelArchiveWriteEntryHeader(*v2, &v8, v5, 1uLL) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeMetadata", 356, 62, 0, "writing metadata entry header");
      }

      else
      {
        if ((ParallelArchiveWriteEntryData(*v2, v4, v3) & 0x80000000) == 0)
        {
          result = 0;
          *(v2 + 60) = 1;
          return result;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeMetadata", 357, 62, 0, "writing metadata entry blob");
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t insertUINTField(uint64_t a1, uint64_t a2)
{
  if ((reserveExtraFields(a1, *(a1 + 2296) + 1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "insertUINTField", 191, 62, 0, "reserving extra fields");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = (*(a1 + 2304) + 1032 * *(a1 + 2296));
    bzero(v4, 0x408uLL);
    result = 0;
    *(v4 + 1) = 1;
    *v4 = 17481;
    *(v4 + 2) = 88;
    *(v4 + 1) = a2;
    ++*(a1 + 2296);
  }

  return result;
}

uint64_t reserveBlobPayload(uint64_t a1, uint64_t a2)
{
  DataSize = MemBufferGetDataSize(*(a1 + 2856));
  if (__CFADD__(DataSize, a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "reserveBlobPayload", 106, 62, 0, "invalid blob size: %llu");
  }

  else
  {
    if ((MemBufferIncreaseCapacity(*(a1 + 2856), DataSize + a2) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "reserveBlobPayload", 107, 62, 0, "resize blob buffer");
  }

  return 0xFFFFFFFFLL;
}

unint64_t archiveWriterProc(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  LODWORD(result) = ParallelArchiveWriteEntryData(*a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    return a3;
  }

  else
  {
    return result;
  }
}

uint64_t processDATEnd(uint64_t a1)
{
  v2 = *(a1 + 84);
  if ((v2 & 0x2000) != 0)
  {
    *(a1 + 96) |= 0x2000u;
    CC_SHA1_Deprecated_Final((a1 + 188), (a1 + 2880));
    v2 = *(a1 + 84);
  }

  v3 = v2 & 0xFFFFDFFF;
  *(a1 + 84) = v2 & 0xFFFFDFFF;
  if ((v2 & 0x4000) != 0)
  {
    *(a1 + 96) |= 0x4000u;
    CC_SHA256_Final((a1 + 208), (a1 + 2976));
    v3 = *(a1 + 84);
  }

  v4 = v3 & 0xFFFFBFFF;
  *(a1 + 84) = v3 & 0xFFFFBFFF;
  if ((v3 & 0x1000) != 0)
  {
    *(a1 + 96) |= 0x1000u;
    CC_CKSUM_Final((a1 + 184), a1 + 3080);
    v4 = *(a1 + 84);
  }

  *(a1 + 84) = v4 & 0xFFFFEFFF;
  v5 = *(a1 + 88);
  if ((v5 & 0x100) != 0)
  {
    DataSize = OECCStreamGetDataSize(*(a1 + 3096));
    if ((insertBLOBField(a1, "YEC", DataSize) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATEnd", 295, 62, 0, "inserting YEC");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 92) |= 0x100u;
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5 & 0xFEFF;
  result = *(a1 + 2320);
  if (!result)
  {
    return result;
  }

  if ((ParallelArchiveDBRequestCloseAndGetKey(result) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATEnd", 304, 62, 0, "finalizing database write");
  }

  else
  {
    *(a1 + 2320) = 0;
    v8 = *(a1 + 88);
    if ((v8 & 0x10) != 0)
    {
      if ((insertBLOBField(a1, "YDK", *(a1 + 2848)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATEnd", 312, 62, 0, "inserting YDK");
        return 0xFFFFFFFFLL;
      }

      *(a1 + 92) |= 0x10u;
      v8 = *(a1 + 88);
    }

    v9 = v8 & 0xFFEF;
    *(a1 + 88) = v8 & 0xFFEF;
    if ((v8 & 8) == 0)
    {
      goto LABEL_19;
    }

    v10 = *(a1 + 2584);
    if (!v10)
    {
      goto LABEL_19;
    }

    if ((insertBLOBField(a1, "YDA", v10) & 0x80000000) == 0)
    {
      *(a1 + 92) |= 8u;
      v9 = *(a1 + 88);
LABEL_19:
      result = 0;
      *(a1 + 88) = v9 & 0xFFF7;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATEnd", 320, 62, 0, "inserting YDA");
  }

  return 0xFFFFFFFFLL;
}

uint64_t insertBLOBField(uint64_t a1, __int16 *a2, uint64_t a3)
{
  if ((reserveExtraFields(a1, *(a1 + 2296) + 1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "insertBLOBField", 204, 62, 0, "reserving extra fields");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = (*(a1 + 2304) + 1032 * *(a1 + 2296));
    bzero(v6, 0x408uLL);
    result = 0;
    *(v6 + 1) = 2;
    v8 = *a2;
    *(v6 + 2) = *(a2 + 2);
    *v6 = v8;
    *(v6 + 1) = a3;
    ++*(a1 + 2296);
  }

  return result;
}

_DWORD *ParallelCompressionFileOpen(const char *a1, char *__s)
{
  v80 = *MEMORY[0x29EDCA608];
  if (!a1 || !__s)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 149, 46, 0, "invalid args");
    return 0;
  }

  v70 = strlen(__s);
  v3 = 0;
  v4 = 0;
  __offseta = 0;
  v67 = 0;
  v74 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0xFFFFFFFFLL;
  v8 = MEMORY[0x29EDCA600];
  v9 = -1;
  v72 = -1;
  v63 = -1;
  v66 = -1;
  DefaultNThreads = -1;
  v69 = -1;
LABEL_4:
  v10 = v9 == -1;
LABEL_5:
  v71 = v10;
  while (2)
  {
    while (2)
    {
      v11 = v7;
      while (1)
      {
        v7 = v11;
        v12 = v4 + 3;
        do
        {
          v13 = v12;
          v11 = __s[v12 - 3];
          if ((v11 & 0x80000000) != 0)
          {
            v14 = __maskrune(__s[v12 - 3], 0x4000uLL);
          }

          else
          {
            v14 = *(v8 + 4 * v11 + 60) & 0x4000;
          }

          ++v12;
        }

        while (v14);
        if ((v7 & 0x80000000) == 0)
        {
          break;
        }

        if (v11 > 0x72u)
        {
          if (v11 - 115 < 2)
          {
            goto LABEL_22;
          }

          if (v11 == 118)
          {
            ++v74;
          }

          else
          {
            if (v11 != 119)
            {
LABEL_74:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 190, 46, 0, "invalid option in mode: %s (was '%c')");
              return 0;
            }

            ++v5;
          }
        }

        else
        {
          if (v11 - 97 < 3 || v11 == 111)
          {
LABEL_22:
            v3 = 1;
            goto LABEL_23;
          }

          if (v11 != 114)
          {
            goto LABEL_74;
          }

          ++v6;
        }

LABEL_23:
        v4 = v13 - 2;
      }

      if (v72 != -1 || !v3)
      {
        if (v71 && v3 != 0)
        {
          if (v7 == 97)
          {
            if (v12 > v70 || (v71 = 0, v7 = 97, v3 = 1, v4 = v13 + 1, v69 = 1, strncmp(&__s[v12 - 4], "lzma", 4uLL)) && (v71 = 0, v69 = 0, v7 = 97, v4 = v13 + 1, strncmp(&__s[v12 - 4], "zlib", 4uLL)))
            {
              v4 = v13 + 2;
              if (v13 + 2 > v70 || (v71 = 0, v69 = 4, v7 = 97, v3 = 1, strncmp(&__s[v12 - 4], "lzfse", 5uLL)))
              {
                v4 = v13 + 5;
                if (v13 + 5 > v70 || (v71 = 0, v69 = 5, v7 = 97, v3 = 1, strncmp(&__s[v12 - 4], "lzbitmap", 8uLL)))
                {
                  if (v13 > v70 || __s[v12 - 4] != 108 || __s[v12 - 3] != 122 || (v71 = 0, v69 = 3, v7 = 97, v3 = 1, v4 = v13, __s[v12 - 2] != 52))
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 214, 46, 0, "invalid compression algorithm in mode: %s");
                    return 0;
                  }
                }
              }
            }

            continue;
          }

          *&__endptr.st_dev = 0;
          v9 = strtoull(&__s[v12 - 4], &__endptr, 10);
          if (&__s[v12 - 4] == *&__endptr.st_dev || v9 == -1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 223, 46, 0, "invalid argument for '%c' in mode: %s");
            return 0;
          }

          v4 = *&__endptr.st_dev - __s;
          if (v7 == 98 && v4 < v70 && **&__endptr.st_dev == 109)
          {
            v9 <<= 20;
            ++v4;
          }

          if (v7 == 98 && v4 < v70 && __s[v4] == 107)
          {
            v9 <<= 10;
            ++v4;
          }

          if (v7 == 98 && v4 < v70)
          {
            if (__s[v4] == 98)
            {
              ++v4;
            }
          }

          else
          {
            if (v7 > 110)
            {
              switch(v7)
              {
                case 'o':
                  __offseta = v9;
                  break;
                case 's':
                  v63 = v9;
                  break;
                case 't':
                  if (v9)
                  {
                    DefaultNThreads = v9;
                  }

                  else
                  {
                    DefaultNThreads = getDefaultNThreads();
                    v9 = 0;
                  }

                  break;
              }

              goto LABEL_60;
            }

            if (v7 != 98)
            {
              if (v7 == 99)
              {
                v66 = v9;
              }

              goto LABEL_60;
            }
          }

          v67 = v9;
LABEL_60:
          v3 = 1;
          goto LABEL_4;
        }

        if (v11 == 44)
        {
          v3 = 0;
          v4 = v13 - 2;
          v7 = 0xFFFFFFFFLL;
          v72 = -1;
          v10 = 1;
          goto LABEL_5;
        }

        if (v11)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 252, 46, 0, "invalid character in mode: %s ('%c')");
          return 0;
        }

        if (v6 + v5 != 1)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 256, 46, 0, "mode should specify either 'w' or 'r': %s");
          return 0;
        }

        if (v6 && ((v69 & 0x80000000) == 0 || v67 || (DefaultNThreads & 0x80000000) == 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 257, 46, 0, "a,b,t options are invalid in read mode");
          return 0;
        }

        if (v5 && (v66 & 0x80000000) == 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 258, 46, 0, "c option is invalid in write mode");
          return 0;
        }

        if (v5 != 0 && v69 < 0)
        {
          v17 = 4;
        }

        else
        {
          v17 = v69;
        }

        if (v5 != 0 && v67 == 0)
        {
          v18 = 0x800000;
        }

        else
        {
          v18 = v67;
        }

        if (v5)
        {
          v19 = a1;
          if (DefaultNThreads <= 0)
          {
            DefaultNThreads = getDefaultNThreads();
          }
        }

        else
        {
          v19 = a1;
        }

        if (v66 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v66;
        }

        if (v6)
        {
          v21 = v20;
        }

        else
        {
          v21 = v66;
        }

        if (v6)
        {
          memset(&__endptr, 0, sizeof(__endptr));
          if (stat(v19, &__endptr))
          {
            v22 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 270, 46, v22, "%s");
            return 0;
          }

          if ((__endptr.st_mode & 0xF000) != 0x8000)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 271, 46, 0, "%s must be an existing regular file");
            return 0;
          }

          if (__endptr.st_size <= __offseta)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 272, 46, 0, "invalid segment offset: %llu");
            return 0;
          }

          if (v63 == -1)
          {
            v63 = __endptr.st_size - __offseta;
          }

          else
          {
            if (__CFADD__(__offseta, v63))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 277, 46, 0, "invalid segment size: %llu");
              return 0;
            }

            if (__offseta + v63 > __endptr.st_size)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 278, 46, 0, "invalid segment size: %llu");
              return 0;
            }
          }

          if (v63 <= 0xB)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 283, 46, 0, "invalid segment size: %llu");
            return 0;
          }

          v19 = a1;
        }

        v23 = calloc(1uLL, 0x88uLL);
        v15 = v23;
        if (!v23)
        {
          v29 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 287, 46, *v29, "malloc");
          return v15;
        }

        *v23 = v6 == 0;
        v23[1] = -1;
        v23[2] = v74;
        if (v5)
        {
          v24 = open(v19, 1537, 420);
          v15[1] = v24;
          if (v24 < 0)
          {
            v32 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 297, 46, v32, "%s");
            goto LABEL_141;
          }

          v25 = OFileEncoderStreamCreateWithFD(v24, -1, v18, v17, v18, DefaultNThreads);
          *(v15 + 2) = v25;
          if (!v25)
          {
            goto LABEL_141;
          }

          if (v74 >= 1)
          {
            v26 = MEMORY[0x29EDCA610];
            fprintf(*MEMORY[0x29EDCA610], "filename: %s\n", a1);
            fwrite("mode: w\n", 8uLL, 1uLL, *v26);
            v27 = *v26;
            EncoderDescription = PCompressGetEncoderDescription(v17);
            fprintf(v27, "algorithm: %s\n", EncoderDescription);
            fprintf(*v26, "block size: %zu B\n", v18);
            fprintf(*v26, "n threads: %d\n");
          }

          return v15;
        }

        v30 = open(v19, 0);
        v15[1] = v30;
        if (v30 < 0)
        {
          v33 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 316, 46, v33, "%s");
          goto LABEL_141;
        }

        if (pread(v30, &__buf, 0xCuLL, __offseta) != 12)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 320, 46, 0, "reading file header");
          goto LABEL_141;
        }

        if (__buf != 25200 || v76 != 122)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 321, 46, 0, "invalid file header");
          goto LABEL_141;
        }

        if (v77 <= 0x64u)
        {
          switch(v77)
          {
            case '-':
              v34 = 6;
              break;
            case '4':
              v34 = 3;
              break;
            case 'b':
              v34 = 5;
              break;
            default:
              goto LABEL_184;
          }
        }

        else if (v77 > 0x77u)
        {
          if (v77 == 120)
          {
            v34 = 1;
          }

          else
          {
            if (v77 != 122)
            {
              goto LABEL_184;
            }

            v34 = 0;
          }
        }

        else
        {
          if (v77 != 101)
          {
            if (v77 == 102)
            {
              v34 = 2;
              goto LABEL_159;
            }

LABEL_184:
            *(v15 + 3) = 0;
            goto LABEL_185;
          }

          v34 = 4;
        }

LABEL_159:
        DecoderFilter = PCompressGetDecoderFilter(v34);
        *(v15 + 3) = DecoderFilter;
        if (DecoderFilter)
        {
          *(v15 + 5) = bswap64(v78);
          v36 = __offseta + 12;
          v37 = v63 + __offseta;
          if (__offseta + 12 < v63 + __offseta)
          {
            v38 = 0;
            while (1)
            {
              if (v37 - v36 <= 0xF)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 347, 46, 0, "truncated block header", v62);
                goto LABEL_141;
              }

              if (pread(v15[1], &__endptr, 0x10uLL, v36) != 16)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 348, 46, 0, "reading block header at offset %llu");
                goto LABEL_141;
              }

              v39 = v36 + 16;
              v73 = vrev64q_s8(*&__endptr.st_dev);
              if (v37 - (v36 + 16) < v73.i64[1])
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 352, 46, 0, "truncated block payload", v62);
                goto LABEL_141;
              }

              if (v73.i64[1] > v73.i64[0] || v73.i64[0] > *(v15 + 5))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 353, 46, 0, "corrupted file", v62);
                goto LABEL_141;
              }

              v41 = *(v15 + 6);
              v42 = *(v15 + 7);
              v43 = *(v15 + 8);
              if (v41 >= v42)
              {
                v44 = v42 + (v42 >> 1);
                if (!v42)
                {
                  v44 = 32;
                }

                *(v15 + 7) = v44;
                v43 = reallocf(v43, 40 * v44);
                *(v15 + 8) = v43;
                if (!v43)
                {
                  v59 = *__error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 361, 46, v59, "malloc", v62);
                  goto LABEL_141;
                }

                v41 = *(v15 + 6);
              }

              v45 = &v43[40 * v41];
              v45->i64[0] = v38;
              v45->i64[1] = v39;
              v45[1] = v73;
              v45[2].i64[0] = -1;
              v36 = v73.i64[1] + v39;
              if (v74 > 1)
              {
                fprintf(*MEMORY[0x29EDCA610], "block %zu: compressed:%llu..%llu raw:%llu..%llu\n", v41, v39, v36, v38, v73.i64[0] + v38);
                v41 = *(v15 + 6);
              }

              v38 += v73.i64[0];
              *(v15 + 6) = v41 + 1;
              if (v36 >= v37)
              {
                goto LABEL_180;
              }
            }
          }

          v38 = 0;
LABEL_180:
          if (v36 != v37)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 383, 46, 0, "extra bytes found in file", v62);
            goto LABEL_141;
          }

          *(v15 + 4) = v38;
          *(v15 + 9) = v21;
          v46 = *(v15 + 5);
          if (!is_mul_ok(v21, v46))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 390, 46, 0, "Invalid cache size", v62);
            goto LABEL_141;
          }

          v47 = malloc(v21 * v46);
          *(v15 + 10) = v47;
          if (!v47)
          {
            v58 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 392, 46, v58, "malloc", v62);
            goto LABEL_141;
          }

          v48 = calloc(v21, 0x18uLL);
          *(v15 + 11) = v48;
          if (v48)
          {
            v49 = v48;
            v50 = *(v15 + 9);
            v51 = *(v15 + 5);
            if (v50)
            {
              v52 = *(v15 + 10);
              v53 = v49 + 16;
              do
              {
                *(v53 - 1) = xmmword_298069790;
                *v53 = v52;
                v53 += 3;
                v52 += v51;
                --v50;
              }

              while (v50);
            }

            v54 = malloc(v51);
            *(v15 + 12) = v54;
            if (v54)
            {
              *(v15 + 13) = 0;
              *(v15 + 14) = 0;
              if (v74 >= 1)
              {
                v55 = MEMORY[0x29EDCA610];
                fprintf(*MEMORY[0x29EDCA610], "filename: %s\n", a1);
                fwrite("mode: r\n", 8uLL, 1uLL, *v55);
                v56 = *v55;
                DecoderDescription = PCompressGetDecoderDescription(v34);
                fprintf(v56, "algorithm: %s\n", DecoderDescription);
                fprintf(*v55, "payload segment: %llu [%llu]\n", __offseta, v63);
                fprintf(*v55, "raw data size: %llu B\n", *(v15 + 4));
                fprintf(*v55, "blocks: %zu\n", *(v15 + 6));
                fprintf(*v55, "block size: %zu B\n", *(v15 + 5));
                fprintf(*v55, "cache size: %zu B (%d blocks)\n");
              }

              return v15;
            }

            v61 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 405, 46, v61, "malloc", v62);
          }

          else
          {
            v60 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 394, 46, v60, "malloc", v62);
          }

LABEL_141:
          ParallelCompressionFileClose(v15);
          return 0;
        }

LABEL_185:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 334, 46, 0, "unsupported decoder in file header: %c");
        goto LABEL_141;
      }

      break;
    }

    if (v11 == 61)
    {
      v72 = v13 - 3;
      v4 = v13 - 2;
      v3 = 1;
      continue;
    }

    break;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 199, 46, 0, "invalid option in mode: %s (%c requires an arg)");
  return 0;
}

uint64_t ParallelCompressionFileClose(void *a1)
{
  if (a1)
  {
    if (!*a1 && *(a1 + 2) >= 1)
    {
      v5 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "read: %llu B\n", *(a1 + 15));
      fprintf(*v5, "decoded: %llu B\n", *(a1 + 16));
      v6 = *(a1 + 15);
      if (v6)
      {
        fprintf(*v5, "decoded/read ratio: %.2f\n", *(a1 + 16) / v6);
      }
    }

    v2 = *(a1 + 2);
    if (v2)
    {
      OFileEncoderStreamWrite(v2, 0, 0);
      OFileEncoderStreamDestroy(*(a1 + 2));
    }

    v3 = *(a1 + 1);
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
    }

    free(*(a1 + 8));
    free(*(a1 + 10));
    free(*(a1 + 11));
    free(*(a1 + 12));
    free(a1);
  }

  return 0;
}

unint64_t ParallelCompressionFileSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (!*a1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = 104;
      }

      else
      {
        if (a3 != 2)
        {
          return -1;
        }

        v3 = 32;
      }

      a2 += *(a1 + v3);
    }

    if ((a2 & 0x8000000000000000) == 0 && a2 <= *(a1 + 32))
    {
      *(a1 + 104) = a2;
      return a2;
    }

    return -1;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileSeek", 458, 46, 0, "invalid mode");
  return -1;
}

uint64_t ParallelCompressionFileWrite(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*a1 != 1)
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  result = OFileEncoderStreamWrite(*(a1 + 16), a2, a3);
  if (result < 0)
  {
    return -1;
  }

  return result;
}

uint64_t ParallelCompressionFileRead(uint64_t a1, char *__dst, size_t a3)
{
  if (!*a1)
  {
    v4 = a3;
    ++*(a1 + 112);
    if (!a3)
    {
      return 0;
    }

    v6 = *(a1 + 104);
    if (v6 >= *(a1 + 32))
    {
      return 0;
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(a1 + 64);
      if (*(v9 + 16) > v6)
      {
        v10 = 0;
LABEL_20:
        v3 = 0;
        v15 = MEMORY[0x29EDCA610];
        while (1)
        {
          if (v10 >= *(a1 + 48))
          {
            return v3;
          }

          v16 = *(a1 + 64);
          v17 = *(v16 + 40 * v10 + 32);
          if (v17 != -1)
          {
            v18 = *(a1 + 88);
            *(v18 + 24 * v17 + 8) = *(a1 + 112);
            goto LABEL_44;
          }

          v19 = *(a1 + 72);
          v20 = *(a1 + 88);
          if (v19)
          {
            v21 = 0;
            v22 = (v20 + 8);
            v23 = -1;
            while (*(v22 - 1) != -1)
            {
              if (v23 == -1 || *v22 < *(v20 + 24 * v23 + 8))
              {
                v23 = v21;
              }

              ++v21;
              v22 += 3;
              if (v19 == v21)
              {
                goto LABEL_34;
              }
            }

            v23 = v21;
          }

          else
          {
            v23 = -1;
          }

LABEL_34:
          v24 = *(v20 + 24 * v23);
          if (v24 != -1)
          {
            if (*(a1 + 8) >= 2)
            {
              fprintf(*v15, "Block %zu evicted from cache\n", *(v20 + 24 * v23));
              v16 = *(a1 + 64);
              v20 = *(a1 + 88);
              v24 = *(v20 + 24 * v23);
            }

            *(v16 + 40 * v24 + 32) = -1;
            *(v20 + 24 * v23) = -1;
          }

          v25 = (v16 + 40 * v10);
          v26 = v25[3];
          v27 = *(a1 + 4);
          v28 = v25[1];
          if (v26 == v25[2])
          {
            v29 = pread(v27, *(v20 + 24 * v23 + 16), v26, v28);
            if (v29 < 0 || (v16 = *(a1 + 64), v29 != *(v16 + 40 * v10 + 24)))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "loadBlock", 117, 46, 0, "reading uncompressed block %zu");
              return -1;
            }

            v30 = "Block %zu loaded in cache\n";
            if (*(a1 + 8) <= 1)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v41 = pread(v27, *(a1 + 96), v26, v28);
            if (v41 < 0 || v41 != *(*(a1 + 64) + 40 * v10 + 24))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "loadBlock", 125, 46, 0, "reading compressed block %zu");
              return -1;
            }

            v42 = (*(a1 + 24))(*(*(a1 + 88) + 24 * v23 + 16), *(a1 + 40), *(a1 + 96), v41);
            if (v42 < 0 || (v16 = *(a1 + 64), v42 != *(v16 + 40 * v10 + 16)))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "loadBlock", 128, 46, 0, "decoding compressed block %zu");
              return -1;
            }

            v30 = "Block %zu loaded and decoded in cache\n";
            if (*(a1 + 8) < 2)
            {
              goto LABEL_43;
            }
          }

          fprintf(*v15, v30, v10);
          v16 = *(a1 + 64);
LABEL_43:
          v18 = *(a1 + 88);
          v31 = (v18 + 24 * v23);
          v32 = *(a1 + 112);
          *v31 = v10;
          v31[1] = v32;
          v33 = v16 + 40 * v10;
          *(v33 + 32) = v23;
          *(a1 + 128) += *(v33 + 16);
LABEL_44:
          v34 = (v16 + 40 * v10);
          v35 = v34[4];
          if (v35 >= *(a1 + 72))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileRead", 506, 46, 0, "invalid entry", v43);
            return -1;
          }

          v36 = *(v18 + 24 * v35 + 16);
          v37 = *(a1 + 104);
          v38 = v37 - *v34;
          v39 = v34[2] + *v34 - v37;
          if (v4 >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v4;
          }

          memcpy(__dst, (v36 + v38), v40);
          __dst += v40;
          *(a1 + 104) += v40;
          *(a1 + 120) += v40;
          v3 += v40;
          ++v10;
          v4 -= v40;
          if (!v4)
          {
            return v3;
          }
        }
      }

      v12 = v8 - 1;
      if (*(v9 + 40 * v12) <= v6)
      {
        v10 = v12;
        goto LABEL_20;
      }

      v13 = 0;
      while (v13 < v12)
      {
        v10 = (v13 + v12) >> 1;
        v14 = (v9 + 40 * v10);
        if (*v14 > v6)
        {
          v12 = (v13 + v12) >> 1;
        }

        else
        {
          v13 = (v13 + v12) >> 1;
          if (v14[2] + *v14 > v6)
          {
            goto LABEL_20;
          }
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "locateBlock", 78, 46, 0, "locateBlock failed");
    }

    v10 = -1;
    goto LABEL_20;
  }

  return -1;
}

unsigned __int8 *patchCacheKeyFromSHA1(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = *result++;
    v4 = (a2 + v2);
    *v4 = patchCacheKeyFromSHA1_hex[v3 >> 4];
    v4[1] = patchCacheKeyFromSHA1_hex[v3 & 0xF];
    v5 = v2 >= 0x26;
    v2 += 2;
  }

  while (!v5);
  return result;
}

_BYTE *patchCacheOpenFromURL(char *a1, int a2)
{
  if (!a1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheOpenFromURL", 56, 38, 0, "Invalid patch cache URL (NULL)");
    return 0;
  }

  if (strncasecmp(a1, "file:", 5uLL))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheOpenFromURL", 66, 38, 0, "Unknown patch cache URL: %s");
    return 0;
  }

  result = filePatchCacheOpen(a1, a2);
  if (!result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheOpenFromURL", 61, 38, 0, "filePatchCacheOpen failed");
    return 0;
  }

  *result = 1;
  return result;
}

uint64_t patchCacheClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (*result == 1)
    {
      return filePatchCacheClose(result, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t patchCacheLookup(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v12 = 0;
  __dst = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  do
  {
    if (!*(a2 + v8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheLookup", 142, 38, 0, "invalid inKey", a6, v12);
      return 0xFFFFFFFFLL;
    }

    if (!*(a3 + v8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheLookup", 143, 38, 0, "invalid outKey", a6, v12);
      return 0xFFFFFFFFLL;
    }

    ++v8;
  }

  while (v8 != 40);
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = filePatchCacheLookup(a1, a2, a3, &__dst, &v12, a5, a6);
  if ((result & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (result)
  {
    v10 = __dst;
    v11 = *(__dst + 1);
    *(a4 + 8) = v11;
    *(a4 + 24) = 0;
    *a4 = 1;
    if (v11)
    {
      if (v12 >= v11 + 32)
      {
        memmove(v10, v10 + 32, v11);
        v10 = 0;
        *(a4 + 24) = __dst;
        __dst = 0;
      }
    }

    free(v10);
    return 1;
  }

  else
  {
    *(a4 + 4) = a5;
  }

  return result;
}

uint64_t patchCacheUpdate(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a4 + 4))
  {
    v15 = "PatchCache update not expected";
    v16 = 183;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheUpdate", v16, 38, 0, v15);
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 40; ++i)
  {
    if (!*(a2 + i))
    {
      v15 = "invalid inKey";
      v16 = 186;
      goto LABEL_15;
    }

    if (!*(a3 + i))
    {
      v15 = "invalid outKey";
      v16 = 187;
      goto LABEL_15;
    }
  }

  *&v19 = 0x5F44414F4C594150;
  v20 = *(a4 + 8);
  *(&v19 + 1) = time(0);
  v9 = *(a4 + 24);
  if (v9)
  {
    v10 = *(a4 + 8);
    if (v10 < *(a4 + 16))
    {
      v11 = malloc(v10 + 32);
      if (v11)
      {
        v12 = v11;
        v13 = v20;
        *v11 = v19;
        v11[1] = v13;
        memcpy(v11 + 2, v9, v10);
        if (*a1 == 1)
        {
          v14 = filePatchCacheUpdate(a1, a2, a3, v12, v10 + 32);
        }

        else
        {
          v14 = 0xFFFFFFFFLL;
        }

        free(v12);
        if (!v14)
        {
          goto LABEL_24;
        }

        return v14;
      }

      v18 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheUpdate", 209, 38, v18, "malloc");
      return 0xFFFFFFFFLL;
    }
  }

  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = filePatchCacheUpdate(a1, a2, a3, &v19, 0x20uLL);
  if (!v14)
  {
LABEL_24:
    *a4 = 1;
  }

  return v14;
}

void *aaSequentialDecompressionIStreamOpen(uint64_t a1, int a2)
{
  if (!a2)
  {
    getDefaultNThreads();
  }

  v3 = calloc(1uLL, 0x68uLL);
  v4 = malloc(0x160uLL);
  v5 = v4;
  if (!v4 || (memset_s(v4, 0x160uLL, 0, 0x160uLL), !v3))
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 266, 20, v14, "malloc");
LABEL_30:
    free(v3);
    aaDecompressionStreamClose(v5);
    return 0;
  }

  *v5 = a1;
  *(v5 + 56) = -1;
  v6 = (v5 + 8);
  v7 = *(v5 + 16);
  if (!(v7 >> 16))
  {
    do
    {
      v8 = (v7 >> 1) + v7;
      if (((v7 >> 1) & v7) != 0)
      {
        v8 = ((v7 >> 1) & v7) + v7;
      }

      if (v7)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0x4000;
      }
    }

    while (v7 < 0x10000);
    v9 = *(v5 + 24);
    v10 = realloc(v9, v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    *(v5 + 16) = v7;
    *(v5 + 24) = v10;
  }

  v11 = *(v5 + 40);
  if (v11 >> 16)
  {
    goto LABEL_23;
  }

  do
  {
    v12 = (v11 >> 1) + v11;
    if (((v11 >> 1) & v11) != 0)
    {
      v12 = ((v11 >> 1) & v11) + v11;
    }

    if (v11)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x4000;
    }
  }

  while (v11 < 0x10000);
  v9 = *(v5 + 48);
  v13 = realloc(v9, v11);
  if (!v13)
  {
    v6 = (v5 + 32);
LABEL_29:
    free(v9);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 273, 20, 0, "allocating buffer");
    goto LABEL_30;
  }

  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
LABEL_23:
  if (aaDecompressionStreamRefill(v5, 0xCuLL) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 276, 20, 0, "reading magic");
    goto LABEL_30;
  }

  __memcpy_chk();
  if (*(v5 + 56) == -1)
  {
    *(v5 + 56) = 0;
  }

  *v3 = v5;
  v3[1] = aaDecompressionStreamClose;
  v3[2] = aaDecompressionStreamRead;
  v3[7] = aaDecompressionStreamAbort;
  return v3;
}

uint64_t aaDecompressionStreamRefill(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v6 = (a1 + 8);
  v5 = *a1;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (1)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    v9 = v7 + 0x40000;
    if ((v7 + 0x40000) < 0)
    {
      return -1;
    }

    if (v7 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v8 = v7;
LABEL_14:
    v11 = v7;
LABEL_18:
    if (v11 - v8 >= v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = v11 - v8;
    }

    v15 = AAByteStreamRead(v5, (*(a1 + 24) + v8), v14);
    if (v15 < 0)
    {
      return -1;
    }

    if (!v15)
    {
      return v4;
    }

    v8 = *v6 + v15;
    if (__CFADD__(*v6, v15))
    {
      return -1;
    }

    v7 = *(a1 + 16);
    if (v8 > v7)
    {
      return -1;
    }

    *v6 = v8;
    v4 += v15;
    v2 -= v15;
    if (!v2)
    {
      return v4;
    }
  }

  do
  {
    while (!v7)
    {
      v7 = 0x4000;
      v11 = 0x4000;
      if (v9 <= 0x4000)
      {
        goto LABEL_16;
      }
    }

    v10 = v7 >> 1;
    if ((v7 & (v7 >> 1)) != 0)
    {
      v10 = v7 & (v7 >> 1);
    }

    v7 += v10;
  }

  while (v7 < v9);
  v11 = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_32;
  }

LABEL_16:
  v12 = *(a1 + 24);
  v13 = realloc(v12, v11);
  if (v13)
  {
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    goto LABEL_18;
  }

  free(v12);
LABEL_32:
  *v6 = 0;
  v6[1] = 0;
  v4 = -1;
  v6[2] = 0;
  return v4;
}

uint64_t aaDecompressionStreamReadInput(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (nbyte)
  {
    v3 = nbyte;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (v3 >= v7)
        {
          v8 = *(a1 + 8);
        }

        else
        {
          v8 = v3;
        }

        memcpy((a2 + v6), *(a1 + 24), v8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          return v8;
        }

        v9 = *(a1 + 8);
        v10 = v9 - v8;
        if (v9 >= v8)
        {
          if (v9 != v8)
          {
            memmove(*(a1 + 24), (*(a1 + 24) + v8), v9 - v8);
          }

          *(a1 + 8) = v10;
        }
      }

      else
      {
        if (*(a1 + 60))
        {
          return v6;
        }

        v11 = AAByteStreamRead(*a1, (a2 + v6), v3);
        v8 = v11;
        if (v11 < 0)
        {
          return v8;
        }

        if (!v11)
        {
          *(a1 + 60) = 1;
          return v6;
        }
      }

      v6 += v8;
      v3 -= v8;
      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t aaDecompressionStreamClose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    switch(v2)
    {
      case 2:
        compression_stream_destroy((a1 + 312));
        break;
      case 4:
        BZ2_bzDecompressEnd((a1 + 96));
        break;
      case 3:
        lzma_end();
        break;
    }

    IDecoderStreamDestroy(*(a1 + 72));
    free(*(a1 + 24));
    memset_s((a1 + 8), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 48));
    memset_s((a1 + 32), 0x18uLL, 0, 0x18uLL);
    free(a1);
  }

  return 0;
}

uint64_t aaDecompressionStreamRead(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (*(a1 + 68))
  {
    return -1;
  }

  v5 = nbyte;
  v8 = *(a1 + 72);
  if (v8)
  {

    return IDecoderStreamRead(v8, a2, nbyte);
  }

  v9 = *(a1 + 56);
  if (v9 == -1)
  {
    return -1;
  }

  if (!v9)
  {

    return aaDecompressionStreamReadInput(a1, a2, nbyte);
  }

  if (!nbyte)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      if (v5 >= v12)
      {
        v3 = *(a1 + 32);
      }

      else
      {
        v3 = v5;
      }

      memcpy((a2 + v11), *(a1 + 48), v3);
      if ((v3 & 0x8000000000000000) != 0)
      {
        return v3;
      }

      v13 = *(a1 + 32);
      v14 = v13 - v3;
      if (v13 >= v3)
      {
        if (v13 != v3)
        {
          memmove(*(a1 + 48), (*(a1 + 48) + v3), v13 - v3);
        }

        *(a1 + 32) = v14;
      }

      v11 += v3;
      v5 -= v3;
      goto LABEL_148;
    }

    if (*(a1 + 64))
    {
      return v11;
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v15 == v16)
    {
      goto LABEL_57;
    }

    if (*(a1 + 60))
    {
      goto LABEL_56;
    }

    v17 = v15 - v16;
    if (v15 == v16)
    {
      goto LABEL_55;
    }

    v3 = 0;
    v18 = *a1;
    do
    {
      if (v16 == v15)
      {
        v19 = v15 + 0x40000;
        if ((v15 + 0x40000) < 0)
        {
          goto LABEL_151;
        }

        if (v15 <= 0xFFFFFFFFFFFBFFFFLL)
        {
          do
          {
            while (!v15)
            {
              v15 = 0x4000;
              v21 = 0x4000;
              if (v19 <= 0x4000)
              {
                goto LABEL_43;
              }
            }

            v20 = v15 >> 1;
            if ((v15 & (v15 >> 1)) != 0)
            {
              v20 = v15 & (v15 >> 1);
            }

            v15 += v20;
          }

          while (v15 < v19);
          v21 = v15;
          if (v15 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_163;
          }

LABEL_43:
          v22 = *(a1 + 24);
          v23 = realloc(v22, v21);
          if (v23)
          {
            *(a1 + 16) = v21;
            *(a1 + 24) = v23;
            v16 = *(a1 + 8);
            goto LABEL_45;
          }

          free(v22);
LABEL_163:
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v3 = -1;
          *(a1 + 24) = 0;
          goto LABEL_152;
        }

        v16 = v15;
      }

      v21 = v15;
LABEL_45:
      if (v21 - v16 >= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v21 - v16;
      }

      v25 = AAByteStreamRead(v18, (*(a1 + 24) + v16), v24);
      if (v25 < 0)
      {
        goto LABEL_151;
      }

      if (!v25)
      {
        break;
      }

      v26 = *(a1 + 8);
      v16 = v26 + v25;
      if (__CFADD__(v26, v25) || (v15 = *(a1 + 16), v16 > v15))
      {
LABEL_151:
        v3 = -1;
LABEL_152:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 144, 20, 0, "stream read failed");
        return v3;
      }

      *(a1 + 8) = v16;
      v3 += v25;
      v17 -= v25;
    }

    while (v17);
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_152;
    }

    if (v3)
    {
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 60) = 1;
LABEL_56:
    v16 = *(a1 + 8);
LABEL_57:
    v28 = *(a1 + 24);
    v27 = *(a1 + 32);
    v29 = *(a1 + 40) - v27;
    v30 = (*(a1 + 48) + v27);
    v31 = *(a1 + 56);
    v3 = -1;
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        *(a1 + 176) = v28;
        *(a1 + 184) = v16;
        *(a1 + 200) = v30;
        *(a1 + 208) = v29;
        v62 = lzma_code();
        v63 = v62;
        if (v62 <= 0xA && ((1 << v62) & 0x403) != 0)
        {
          v64 = v10;
          v65 = *(a1 + 176);
          v66 = *(a1 + 200);
          v67 = v65 - v28;
          if (v65 != v28)
          {
            v68 = *(a1 + 8);
            v39 = v68 >= v67;
            v69 = v68 - v67;
            if (v39)
            {
              if (v69)
              {
                v80 = v69;
                memmove(*(a1 + 24), (*(a1 + 24) + v67), v69);
                v69 = v80;
              }

              *(a1 + 8) = v69;
            }
          }

          if (v66 != v30)
          {
            v70 = *(a1 + 32);
            v71 = v70 + v66 - v30;
            if (!__CFADD__(v70, v66 - v30) && v71 <= *(a1 + 40))
            {
              *(a1 + 32) = v71;
            }
          }

          if (v66 == v30 && v65 == v28)
          {
            v10 = v64 + 1;
          }

          else
          {
            v10 = 0;
          }

          if (v63 == 1)
          {
            goto LABEL_131;
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 194, 20, 0, "decoding lzma payload");
        }

        v3 = -1;
        if (v63 <= 0xA && ((1 << v63) & 0x403) != 0)
        {
          goto LABEL_147;
        }

        return v3;
      }

      if (v31 != 4)
      {
        return v3;
      }

      *(a1 + 96) = v28;
      *(a1 + 104) = v16;
      *(a1 + 120) = v30;
      *(a1 + 128) = v29;
      v44 = BZ2_bzDecompress((a1 + 96));
      if (v44 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 178, 20, 0, "decoding bzip2 payload");
        return v3;
      }

      v45 = v44;
      v46 = v10;
      v47 = *(a1 + 96);
      v48 = *(a1 + 120);
      v49 = v47 - v28;
      if (v47 != v28)
      {
        v50 = *(a1 + 8);
        v39 = v50 >= v49;
        v51 = v50 - v49;
        if (v39)
        {
          if (v51)
          {
            v78 = v51;
            memmove(*(a1 + 24), (*(a1 + 24) + v49), v51);
            v51 = v78;
          }

          *(a1 + 8) = v51;
        }
      }

      if (v48 != v30)
      {
        v52 = *(a1 + 32);
        v53 = v52 + v48 - v30;
        if (!__CFADD__(v52, v48 - v30) && v53 <= *(a1 + 40))
        {
          *(a1 + 32) = v53;
        }
      }

      if (v48 == v30 && v47 == v28)
      {
        v10 = v46 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (v45 == 4)
      {
        goto LABEL_131;
      }

      goto LABEL_147;
    }

    if (v31 != 1)
    {
      break;
    }

    if (!v16)
    {
      if (*(a1 + 60))
      {
        goto LABEL_131;
      }

LABEL_156:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 208, 20, 0, "truncated stream header");
      return v3;
    }

    if (v16 <= 0xF)
    {
      goto LABEL_156;
    }

    v55 = v28[1];
    v56 = bswap64(*v28);
    v57 = bswap64(v55);
    v58 = *(a1 + 80);
    if (v56 > v58 || v57 > v58)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 217, 20, 0, "corrupted stream header");
      return -1;
    }

    v79 = v10;
    v60 = v57 + 16;
    if (v57 + 16 > v16)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 218, 20, 0, "truncated stream payload");
      return -1;
    }

    if (v56 > v29)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 219, 20, 0, "unexpected output buffer size");
      return -1;
    }

    v61 = *v28;
    if (*v28 == v55)
    {
      memcpy(v30, v28 + 2, v56);
    }

    else if ((*(a1 + 88))(v30, v29, v28 + 2) != v56)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 229, 20, 0, "block decompression failed");
      return -1;
    }

    if (v60)
    {
      v73 = *(a1 + 8);
      v74 = v73 - v60;
      if (v73 >= v60)
      {
        if (v73 != v60)
        {
          memmove(*(a1 + 24), (*(a1 + 24) + v60), v73 - v60);
        }

        *(a1 + 8) = v74;
      }
    }

    if (v61)
    {
      v75 = *(a1 + 32);
      v39 = __CFADD__(v75, v56);
      v76 = v75 + v56;
      v10 = v79;
      if (!v39 && v76 <= *(a1 + 40))
      {
        *(a1 + 32) = v76;
      }
    }

    else
    {
      v10 = v79;
    }

LABEL_147:
    if (v10 >= 3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 240, 20, 0, "truncated stream");
      return -1;
    }

LABEL_148:
    v3 = v11;
    if (!v5)
    {
      return v3;
    }
  }

  if (v31 == 2)
  {
    *(a1 + 328) = v28;
    *(a1 + 336) = v16;
    *(a1 + 312) = v30;
    *(a1 + 320) = v29;
    v32 = compression_stream_process((a1 + 312), *(a1 + 60) != 0);
    if ((v32 & 0x80000000) == 0)
    {
      v33 = v32;
      v34 = v10;
      v35 = *(a1 + 336);
      v36 = *(a1 + 320);
      v37 = v16 - v35;
      if (v16 != v35)
      {
        v38 = *(a1 + 8);
        v39 = v38 >= v37;
        v40 = v38 - v37;
        if (v39)
        {
          if (v40)
          {
            v77 = v40;
            memmove(*(a1 + 24), (*(a1 + 24) + v37), v40);
            v40 = v77;
          }

          *(a1 + 8) = v40;
        }
      }

      if (v29 != v36)
      {
        v41 = *(a1 + 32);
        v42 = v41 + v29 - v36;
        if (!__CFADD__(v41, v29 - v36) && v42 <= *(a1 + 40))
        {
          *(a1 + 32) = v42;
        }
      }

      if (v29 == v36 && v16 == v35)
      {
        v10 = v34 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (v33 != COMPRESSION_STATUS_END)
      {
        goto LABEL_147;
      }

LABEL_131:
      *(a1 + 64) = 1;
      goto LABEL_147;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 162, 20, 0, "decoding compression payload");
  }

  return v3;
}

uint64_t aaDecompressionStreamAbort(uint64_t a1)
{
  *(a1 + 68) = 1;
  result = *(a1 + 72);
  if (result)
  {
    return IDecoderStreamAbort(result);
  }

  return result;
}

void *AAMemoryInputStreamOpen(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 132, 68, 0, "Invalid arguments");
    v4 = 0;
    v5 = 0;
LABEL_8:
    free(v5);
    free(v4);
    return 0;
  }

  v4 = calloc(1uLL, 0x68uLL);
  v6 = malloc(0x20uLL);
  v5 = v6;
  if (!v6 || (memset_s(v6, 0x20uLL, 0, 0x20uLL), !v4))
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 137, 68, *v7, "malloc");
    goto LABEL_8;
  }

  *v5 = a1;
  v5[1] = a2;
  *v4 = v5;
  v4[1] = memoryInputStreamClose;
  v4[7] = memoryInputStreamCancel;
  v4[2] = memoryInputStreamRead;
  v4[4] = memoryInputStreamPRead;
  v4[6] = memoryInputStreamSeek;
  return v4;
}

size_t memoryInputStreamRead(uint64_t a1, void *a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  else
  {
    return memoryInputStreamPRead(a1, a2, a3, atomic_fetch_add((a1 + 16), a3));
  }
}

size_t memoryInputStreamPRead(uint64_t a1, void *__dst, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load((a1 + 24));
  v5 = -1;
  if ((a4 & 0x8000000000000000) == 0 && !v4)
  {
    v6 = *(a1 + 8);
    v7 = v6 >= a4 ? a4 : *(a1 + 8);
    if (!__CFADD__(v7, a3))
    {
      if (v7 + a3 < v6)
      {
        v6 = v7 + a3;
      }

      v5 = v6 - v7;
      if (v6 <= v7)
      {
        return 0;
      }

      else
      {
        memcpy(__dst, (*a1 + v7), v5);
      }
    }
  }

  return v5;
}

unint64_t memoryInputStreamSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (!atomic_load((a1 + 24)))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 16), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *(a1 + 8);
    }

    atomic_store(a2, (a1 + 16));
    return a2;
  }

  return -1;
}

uint64_t LargeFileWorker()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v63 = *MEMORY[0x29EDCA608];
  *(v0 + 8) = 0;
  if (atomic_load((*v0 + 104)))
  {
    return 0;
  }

  v2 = v0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *v0;
  v7 = *(v0 + 32);
  v61 = 0;
  v8 = *(v6 + 56) - (v7 << 21);
  if (v8 >= 0x200000)
  {
    v9 = 0x200000;
  }

  else
  {
    v9 = *(v6 + 56) - (v7 << 21);
  }

  if (v8 >= 0x11)
  {
    v4 = malloc(0x1000000uLL);
    v3 = malloc(v9);
    v13 = malloc(0x40000uLL);
    v5 = v13;
    if (!v4 || (v3 ? (v14 = v13 == 0) : (v14 = 1), v14))
    {
      v20 = *__error();
      v21 = "aaMalloc";
      v22 = 496;
LABEL_72:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", v22, 112, v20, v21);
      v12 = 0;
      goto LABEL_73;
    }

    memset(__b, 255, sizeof(__b));
    v15 = *(v6 + 24);
    if (!v15[4])
    {
      goto LABEL_70;
    }

    v16 = 0;
    v56 = v7;
    v57 = v9;
    v17 = v7 << 21;
    v18 = v3;
    while (1)
    {
      v19 = (v15[4])(*v15, v18, v9, v17);
      if (v19 < 0)
      {
        break;
      }

      if (v19)
      {
        v18 += v19;
        v16 += v19;
        v17 += v19;
        v9 -= v19;
        if (v9)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v16 = v19;
LABEL_25:
    LODWORD(v7) = v56;
    v9 = v57;
    if (v57 == v16)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v24 = -1640531535 * (v24 + v3[v23++]);
      }

      while (v23 != 16);
      v58 = v4;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = *(v6 + 76);
      v30 = 17;
      if (v57 > 0x11)
      {
        v30 = v57;
      }

      v31 = v30 - 17;
      do
      {
        if (v25 >= v27 || (*(v6 + 68) & ~v24) == 0)
        {
          v27 = v25 + (2 * *(v6 + 72));
          if (v25 >= v26)
          {
            v32 = *(*(v6 + 40) + 4 * (v24 >> -*(v6 + 64)));
            if (v32 != -1)
            {
              v33 = __ROR8__(__ROR8__(2654435761 * *&v3[v25], 41) + 2654435761 * *&v3[v25 + 8], 41);
              v34 = HIDWORD(v33) ^ v33;
              while (1)
              {
                v35 = *(v6 + 32) + 16 * v32;
                if (*(v35 + 8) == v34)
                {
                  break;
                }

                v32 = *(v35 + 12);
                if (v32 == -1)
                {
                  goto LABEL_46;
                }
              }

              v36 = *v35;
              v37 = v36 >> 20;
              v38 = v36 & 0xFFFFFFFFFFF00000;
              v39 = __b[v37];
              v40 = v39;
              if (v39 == -1)
              {
LABEL_42:
                if (v28 != 0x4000)
                {
                  v42 = &v5[16 * v28];
                  *v42 = v38;
                  *(v42 + 2) = v39;
                  *(v42 + 3) = 1;
                  __b[v37] = v28++;
                }
              }

              else
              {
                while (1)
                {
                  v41 = &v5[16 * v40];
                  if (*v41 == v38)
                  {
                    break;
                  }

                  v40 = *(v41 + 2);
                  if (v40 == -1)
                  {
                    goto LABEL_42;
                  }
                }

                ++*(v41 + 3);
              }

              v26 = v25 + 16;
            }
          }
        }

LABEL_46:
        v24 = -1640531535 * (v24 + v3[v25 + 16]) - v29 * v3[v25];
        v14 = v25++ == v31;
      }

      while (!v14);
      if (!v28)
      {
        goto LABEL_6;
      }

      v55 = v3;
      qsort(v5, v28, 0x10uLL, chunk_compare_by_rating);
      if (v28 >= 0x10)
      {
        v43 = 16;
      }

      else
      {
        v43 = v28;
      }

      v59 = v43;
      qsort(v5, v43, 0x10uLL, chunk_compare_by_position);
      v44 = 0;
      LODWORD(v11) = 0;
      v60 = v5;
      do
      {
        v45 = *&v5[16 * v44];
        v46 = *(v6 + 48);
        if ((v46 - v45) >= 0x100000)
        {
          v47 = 0x100000;
        }

        else
        {
          v47 = v46 - v45;
        }

        v48 = *(v6 + 16);
        if (!v48[4])
        {
          goto LABEL_80;
        }

        if (v46 == v45)
        {
          v49 = 0;
        }

        else
        {
          v49 = 0;
          v50 = &v58[v11];
          v51 = v47;
          while (1)
          {
            v52 = (v48[4])(*v48, v50, v51, v45);
            if (v52 < 0)
            {
              break;
            }

            if (v52)
            {
              v50 += v52;
              v49 += v52;
              v45 += v52;
              v51 -= v52;
              if (v51)
              {
                continue;
              }
            }

            goto LABEL_65;
          }

          v49 = v52;
        }

LABEL_65:
        v5 = v60;
        if (v47 != v49)
        {
LABEL_80:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", 546, 112, 0, "aaByteStreamPReadExpected");
          v12 = 0;
          v4 = v58;
          v3 = v55;
          goto LABEL_73;
        }

        v11 = (v11 + v47);
        ++v44;
      }

      while (v44 != v59);
      v4 = v58;
      v3 = v55;
      if ((getBXDiffControls(v58, v11, v55, v57, &v61, v2 + 2, v6) & 0x80000000) != 0)
      {
        v21 = "generic controls";
        v22 = 550;
      }

      else
      {
        v61 = convert_block_controls(v2 + 2, v61, v2[2], v60);
        if (v61)
        {
          LODWORD(v7) = v56;
          goto LABEL_8;
        }

        v21 = "convert_block_controls";
        v22 = 552;
      }
    }

    else
    {
LABEL_70:
      v21 = "aaByteStreamPReadExpected";
      v22 = 501;
    }

    v20 = 0;
    goto LABEL_72;
  }

LABEL_6:
  v10 = malloc(0x18uLL);
  v61 = v10;
  if (!v10)
  {
    v20 = *__error();
    v21 = "aaMalloc";
    v22 = 534;
    goto LABEL_72;
  }

  LODWORD(v11) = 0;
  *v10 = 0;
  v10[1] = v9;
  v10[2] = 0;
  v2[2] = 1;
LABEL_8:
  if (*(v6 + 4) >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], " LargeFile: Block = %5u, %5u K cache, %6zu controls\n", v7, v11 >> 10, v2[2]);
  }

  v12 = 1;
LABEL_73:
  free(v4);
  free(v3);
  free(v5);
  if ((v12 & 1) == 0)
  {
    free(v61);
  }

  v53 = v61;
  if (!v12)
  {
    v53 = 0;
  }

  v2[1] = v53;
  if (v53)
  {
    return 0;
  }

  atomic_compare_exchange_strong((*v2 + 104), &v53, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t LargeFileConsumer(char **a1, void *a2)
{
  if (atomic_load((*a2 + 104)))
  {
    return 0;
  }

  result = a2[1];
  if (result)
  {
    if (a2[2])
    {
      v6 = 0;
      v7 = 0;
      v8 = *a1;
      do
      {
        v8 = add_control(v8, a1 + 1, a1 + 2, *(a2[1] + v6), *(a2[1] + v6 + 8), *(a2[1] + v6 + 16));
        *a1 = v8;
        if (!v8)
        {
          break;
        }

        ++v7;
        v6 += 24;
      }

      while (v7 < a2[2]);
      result = a2[1];
    }

    free(result);
    if (!*a1)
    {
      v9 = *a1;
      atomic_compare_exchange_strong((*a2 + 104), &v9, 1u);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  return result;
}

unint64_t GetLargeFileMaxMemoryUsage(unint64_t a1, uint64_t a2, int DefaultNThreads)
{
  v4 = __clz((a1 + 15) >> 4);
  if (1 << ~v4 >= (a1 + 15) >> 4)
  {
    v5 = 63 - v4;
  }

  else
  {
    v5 = 64 - v4;
  }

  v6 = 16;
  if (v5 >= 0x1E)
  {
    do
    {
      --v5;
      v6 = (2 * v6);
    }

    while (v5 > 0x1D);
    LOBYTE(v5) = 29;
  }

  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  return (4 << v5) + 16 * ((5 * (a1 / v6)) >> 2) + (GetBXDiffMaxMemoryUsage(0x1000000uLL, 0x200000uLL, 1, 21) + 19136512) * DefaultNThreads;
}

uint64_t GetLargeFileControlsWithStreams(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void **a5, uint64_t *a6, uint64_t *a7)
{
  RealTime = getRealTime();
  DefaultNThreads = *(a7 + 2);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *v74 = 0;
  v72 = 0u;
  *v73 = 0u;
  *v70 = 0u;
  v71 = 0u;
  v67 = 0;
  v63 = 0;
  v64 = 0;
  v68 = a1;
  v69 = a3;
  v16 = *a7;
  v65 = 0;
  v66[1] = HIDWORD(v16);
  LODWORD(v16) = __clz((a2 + 15) >> 4);
  v66[0] = 21;
  v17 = 63 - v16;
  LODWORD(v67) = 1;
  v18 = 1 << ~v16;
  v19 = 16;
  v70[1] = a2;
  *&v71 = a4;
  if (v18 >= (a2 + 15) >> 4)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + 1;
  }

  LODWORD(v72) = 16;
  if (v20 < 0x1E)
  {
    v21 = 15;
  }

  else
  {
    do
    {
      --v20;
      v19 *= 2;
    }

    while (v20 > 0x1D);
    LODWORD(v72) = v19;
    v21 = v19 - 1;
    v20 = 29;
  }

  *(&v71 + 1) = __PAIR64__(v21, v20);
  DWORD1(v72) = 840293553;
  if (DefaultNThreads < 0xCCCCCCCD)
  {
    v22 = calloc(DefaultNThreads, 0x28uLL);
  }

  else
  {
    v22 = 0;
    *__error() = 12;
  }

  v73[0] = v22;
  v23 = calloc(DefaultNThreads, 8uLL);
  v73[1] = v23;
  if (!v22 || !v23)
  {
    v38 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 672, 112, v38, "aaCalloc");
    goto LABEL_35;
  }

  *(&v69 + 1) = pc_array_init(16, (5 * (a2 / v72)) >> 2);
  if (!*(&v69 + 1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 678, 112, 0, "pc_array_init");
    goto LABEL_35;
  }

  v24 = malloc(4 << SBYTE8(v71));
  v70[0] = v24;
  if (!v24)
  {
    v41 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 683, 112, v41, "malloc");
    goto LABEL_35;
  }

  memset(v24, 255, 4 << SBYTE8(v71));
  v25 = calloc(DefaultNThreads, 0x20uLL);
  v26 = calloc(DefaultNThreads, 8uLL);
  v27 = v26;
  if (!v25 || !v26)
  {
    v42 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 433, 112, *v42, "aaCalloc");
    v32 = 0;
LABEL_47:
    v37 = 0;
    goto LABEL_48;
  }

  if (DefaultNThreads)
  {
    v28 = v25;
    v29 = v26;
    v30 = DefaultNThreads;
    v31 = v25;
    do
    {
      *v31 = v66;
      v31 += 4;
      *v29++ = v28;
      v28 = v31;
      --v30;
    }

    while (v30);
  }

  v32 = ThreadPipelineCreate(DefaultNThreads, v26, fingerprint_worker, v66, fingerprint_consumer, 0);
  if (!v32)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 444, 112, 0, "ThreadPipelineCreate");
    goto LABEL_47;
  }

  v62 = a6;
  if (!v70[1])
  {
LABEL_30:
    a6 = v62;
    if ((ThreadPipelineFlush(v32) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 461, 112, 0, "ThreadPipelineFlush");
    }

    else
    {
      *(&v69 + 1) = pc_array_compact(*(&v69 + 1));
      if (*(&v69 + 1))
      {
        v37 = 1;
        goto LABEL_48;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 465, 112, 0, "pc_array_compact");
    }

    goto LABEL_47;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    Worker = ThreadPipelineGetWorker(v32);
    if (!Worker)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 451, 112, 0, "ThreadPipelineGetWorker");
      goto LABEL_45;
    }

    Worker[1] = 0;
    Worker[2] = v34;
    v36 = v70[1] + v33;
    if (v70[1] + v33 >= 0x200000)
    {
      v36 = 0x200000;
    }

    Worker[3] = v36;
    if ((ThreadPipelineRunWorker(v32) & 0x80000000) != 0)
    {
      break;
    }

    v34 += 0x200000;
    v33 -= 0x200000;
    if (v34 >= v70[1])
    {
      goto LABEL_30;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 457, 112, 0, "ThreadPipelineRunWorker");
LABEL_45:
  v37 = 0;
  a6 = v62;
LABEL_48:
  if ((ThreadPipelineDestroy(v32) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 468, 112, 0, "ThreadPipelineDestroy");
    v37 = 0;
  }

  free(v25);
  free(v27);
  if (!v37)
  {
    goto LABEL_35;
  }

  if (*(a7 + 1) >= 3)
  {
    v43 = *MEMORY[0x29EDCA610];
    v44 = (4 << SBYTE8(v71)) >> 20;
    v45 = a5;
    v46 = (*(*(&v69 + 1) - 64) >> 16) & 0xFFFFFFFFFFFLL;
    v47 = v70[1] >> 20;
    v48 = getRealTime();
    v61 = v46;
    a5 = v45;
    fprintf(v43, " LargeFile: Using %zu M for hashing.\n LargeFile: Using %zu M for fingerprints.\n LargeFile: Parsed %zu M in %0.2f (s). Added %zu/%zu fingerprints.\n", v44, v61, v47, v48 - RealTime, *(*(&v69 + 1) - 64), v70[1] / v72);
  }

  v63 = add_control(0, &v64, &v65, 0, 0, 0);
  if (!v63)
  {
    goto LABEL_35;
  }

  if (DefaultNThreads)
  {
    for (i = 0; i != DefaultNThreads; v50[i++] = v51)
    {
      v50 = v73[1];
      v51 = v73[0] + 40 * i;
      *v51 = v66;
    }
  }

  v52 = ThreadPipelineCreate(DefaultNThreads, v73[1], LargeFileWorker, &v63, LargeFileConsumer, 0);
  *(&v72 + 1) = v52;
  if (!v52)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 711, 112, 0, "creating pipeline");
    goto LABEL_35;
  }

  if (!a4)
  {
LABEL_65:
    if ((ThreadPipelineDestroy(v52) & 0x80000000) == 0)
    {
      *(&v72 + 1) = 0;
      v64 = sanitize_internal_controls(v63, v64);
      convert_internal_controls(&v63);
      if (*(a7 + 1) >= 2)
      {
        v57 = *MEMORY[0x29EDCA610];
        v58 = v64;
        v59 = getRealTime();
        fprintf(v57, "LargeFile: Constructed %zu controls in %0.2f (s).\n", v58, v59 - RealTime);
      }

      v39 = 0;
      v60 = v64;
      *a5 = v63;
      *a6 = v60;
      goto LABEL_36;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 725, 112, 0, "ThreadPipelineDestroy failed");
    *(&v72 + 1) = 0;
LABEL_35:
    v39 = 1;
    goto LABEL_36;
  }

  v53 = 1;
  while (1)
  {
    v54 = ThreadPipelineGetWorker(*(&v72 + 1));
    if (!v54)
    {
      break;
    }

    *(v54 + 32) = v53 - 1;
    if ((ThreadPipelineRunWorker(*(&v72 + 1)) & 0x80000000) != 0 || (v55 = atomic_load(v74)) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 723, 112, 0, "RunWorker");
      goto LABEL_73;
    }

    v56 = v53++;
    if (a4 <= v56 << 21)
    {
      v52 = *(&v72 + 1);
      goto LABEL_65;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 718, 112, 0, "getting worker from pipeline");
LABEL_73:
  v39 = 1;
LABEL_36:
  ThreadPipelineDestroy(*(&v72 + 1));
  free(v73[0]);
  free(v73[1]);
  free(v70[0]);
  pc_array_free(*(&v69 + 1));
  if (v39)
  {
    free(v63);
    *a5 = 0;
    *a6 = 0;
  }

  return (v39 << 31 >> 31);
}

char *add_control(char *__ptr, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __ptr;
  v11 = *a2;
  if (*a2 < *a3)
  {
    goto LABEL_2;
  }

  v13 = v11 + (v11 >> 1) + 1;
  *a3 = v13;
  if (*a2 >= v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "add_control", 213, 112, 0, "too many controls");
    free(v10);
    return 0;
  }

  if (24 * v13 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_10:
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "add_control", 215, 112, *v15, "aaReallocf");
    return 0;
  }

  v14 = realloc(__ptr, 24 * v13);
  if (!v14)
  {
    free(v10);
    goto LABEL_10;
  }

  v11 = *a2;
  v10 = v14;
LABEL_2:
  *a2 = v11 + 1;
  v12 = &v10[24 * v11];
  *v12 = a4;
  *(v12 + 1) = a5;
  *(v12 + 2) = a6;
  return v10;
}

uint64_t sanitize_internal_controls(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a2 >= 2)
  {
    v3 = &a1[3 * a2];
    v4 = a1 + 3;
    v5 = a1;
    v6 = a1;
    do
    {
      v7 = v5;
      while (1)
      {
        v5 = v4;
        v8 = *v4;
        if (!v8)
        {
          v9 = *(v6 + 1) + v7[4];
          goto LABEL_9;
        }

        if (*(v6 + 1) || *v6 + *(v6 + 2) != v7[5])
        {
          break;
        }

        *v6 += v8;
        v9 = v7[4];
LABEL_9:
        *(v6 + 1) = v9;
        v4 = v5 + 3;
        v7 = v5;
        if (v5 + 3 >= v3)
        {
          v2 = v6;
          return -1431655765 * ((v2 - a1) >> 3) + 1;
        }
      }

      v2 = v6 + 24;
      v10 = *v5;
      *(v6 + 5) = v5[2];
      *(v6 + 24) = v10;
      v4 = v5 + 3;
      v6 += 24;
    }

    while (v5 + 3 < v3);
  }

  return -1431655765 * ((v2 - a1) >> 3) + 1;
}

uint64_t convert_internal_controls(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = 1;
    v4 = *(result + 8);
    do
    {
      v5 = *v2;
      v6 = v2[2] + *v2;
      if (v3 < v1)
      {
        v6 = v2[5];
      }

      if (v5 < 0)
      {
        v5 = 0x8000000000000000 - v5;
      }

      v7 = v2[1];
      if (v7 < 0)
      {
        v7 = 0x8000000000000000 - v7;
      }

      v8 = v6 - (v2[2] + *v2);
      if (v8 < 0)
      {
        v8 = 0x8000000000000000 - v8;
      }

      *v2 = v5;
      v2[1] = v7;
      v2[2] = v8;
      ++v3;
      v2 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t GetLargeFileControls(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void **a5, uint64_t *a6, uint64_t *a7)
{
  v13 = AAMemoryInputStreamOpen(a1, a2);
  v14 = AAMemoryInputStreamOpen(a3, a4);
  v15 = v14;
  if (!v13 || !v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControls", 758, 112, 0, "AAMemoryInputStreamOpen");
LABEL_7:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if ((GetLargeFileControlsWithStreams(v13, a2, v14, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControls", 761, 112, 0, "GetLargeFileControlsWithStreams");
    goto LABEL_7;
  }

  v16 = 0;
LABEL_8:
  AAByteStreamClose(v13);
  AAByteStreamClose(v15);
  return v16;
}

uint64_t chunk_compare_by_position(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

char *convert_block_controls(unint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v22 = 0;
  *a1 = 0;
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = &v21[24 * v7];
      if (*v10 >= 0)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0x8000000000000000 - *v10;
      }

      while (1)
      {
        v12 = v8 & 0xFFFFF;
        v13 = 0x100000 - (v8 & 0xFFFFF);
        if (v13 >= v11)
        {
          break;
        }

        v14 = add_control(v9, a1, &v22, 0x100000 - (v8 & 0xFFFFF), 0, *(a4 + 16 * (v8 >> 20)) + v12);
        if (!v14)
        {
          v19 = 251;
LABEL_18:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "convert_block_controls", v19, 112, 0, "add_control", v21, v22);
          goto LABEL_19;
        }

        v9 = v14;
        v11 -= v13;
        v8 += v13;
      }

      v15 = v10[1];
      if (v15 >= 0)
      {
        v16 = v10[1];
      }

      else
      {
        v16 = 0x8000000000000000 - v15;
      }

      v17 = add_control(v9, a1, &v22, v11, v16, *(a4 + 16 * (v8 >> 20)) + v12);
      if (!v17)
      {
        v19 = 255;
        goto LABEL_18;
      }

      v9 = v17;
      v18 = v10[2];
      if (v18 < 0)
      {
        v18 = 0x8000000000000000 - v18;
      }

      v8 += v11 + v18;
      ++v7;
    }

    while (v7 != a3);
  }

  else
  {
LABEL_19:
    v9 = 0;
  }

  free(v21);
  return v9;
}

uint64_t fingerprint_worker(uint64_t *a1)
{
  v2 = a1[3];
  if (v2 < 0x11)
  {
    return 0;
  }

  if (v2 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 325, 112, 0, "aaMalloc");
    v6 = 0;
    v7 = 0;
    goto LABEL_31;
  }

  v4 = *a1;
  v5 = malloc(v2);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = pc_array_init(16);
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 329, 112, 0, "pc_array_init");
    goto LABEL_31;
  }

  v8 = a1[3];
  v9 = *(v4 + 16);
  if (!v9[4])
  {
    v10 = -1;
LABEL_18:
    if (v8 != v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 333, 112, 0, "aaByteStreamPReadExpected");
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v10 = 0;
    v11 = a1[2];
    v12 = v6;
    v13 = a1[3];
    while (1)
    {
      v14 = (v9[4])(*v9, v12, v13, v11);
      if (v14 < 0)
      {
        break;
      }

      if (v14)
      {
        v12 += v14;
        v10 += v14;
        v11 += v14;
        v13 -= v14;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v10 = v14;
    goto LABEL_18;
  }

LABEL_19:
  v15 = 0;
  v16 = 0;
  do
  {
    v16 = -1640531535 * (v16 + v6[v15++]);
  }

  while (v15 != 16);
  v17 = a1[3];
  if (v17 < 0x11)
  {
LABEL_29:
    v3 = 0;
    a1[1] = v7;
    v7 = 0;
    goto LABEL_32;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *(v4 + 72) << 8;
  while (1)
  {
    if (v21 < v20 || v21 < v19 && (*(v4 + 68) & ~v16) != 0)
    {
      goto LABEL_28;
    }

    v23 = *(v4 + 72);
    v30 = v21 + a1[2];
    v24 = __ROR8__(__ROR8__(2654435761 * *&v6[v21], 41) + 2654435761 * *&v6[v21 + 8], 41);
    v25 = v16 >> -*(v4 + 64);
    v31 = HIDWORD(v24) ^ v24;
    v32 = v25;
    v7 = pc_array_append(v7, &v30);
    if (!v7)
    {
      break;
    }

    v19 = v21 + (2 * v23);
    v26 = v18 + (v22 >> 8);
    v27 = v22 + v21;
    v22 = v21 + v22 - v26;
    v20 = v21 + v23 - ((v27 - v26) >> 8);
    v17 = a1[3];
    v18 = v21;
LABEL_28:
    v16 = -1640531535 * (v16 + v6[v21 + 16]) - *(v4 + 76) * v6[v21];
    v28 = v21 + 17;
    ++v21;
    if (v28 >= v17)
    {
      goto LABEL_29;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 361, 112, 0, "pc_array_append");
LABEL_31:
  v3 = 0xFFFFFFFFLL;
LABEL_32:
  free(v6);
  pc_array_free(v7);
  return v3;
}