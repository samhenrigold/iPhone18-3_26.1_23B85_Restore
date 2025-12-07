void *sub_2367EDF30(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = result;
  v88 = *MEMORY[0x277D85DE8];
  v9 = result[1];
  v10 = *(v9 + 64);
  v11 = *(v10 + 2);
  v12 = *(v11 + 344);
  v13 = *(v12 + 4 * a2);
  v14 = (a2 << 32) + 0x100000000;
  v15 = *(v12 + (v14 >> 30));
  v16 = *(v10 + 6);
  v17 = 8 * (v16 * v16) * *(*(v11 + 384) + 8 * a2);
  if ((*v10 & 0xFE) == 0x52)
  {
    v17 += 8 * v16 * (*(*(v11 + 176) + 4 * v15) - *(*(v11 + 176) + 4 * v13));
  }

  v18 = result[5];
  v19 = *(v9 + 48);
  v20 = *(v11 + 168);
  v21 = (v17 + 24 * (v15 - v13) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v22 = *(v10 + 4);
  v23 = *(v10 + 5);
  v24 = *(v22 + 120) + *(v22 + 128);
  v25 = *(v10 + 6);
  v26 = (v25 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v24 < v26)
  {
LABEL_4:
    v73 = 0;
LABEL_5:
    v27 = *(v11 + 40);
    if (!v27)
    {
      v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v35)
      {
        sub_23672B110(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      _SparseTrap();
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    strcpy(v74, "Failed to acquire chunkFactorStorage from pool\n");
    v75 = 0u;
    result = v27(v74);
    _X2 = 0;
    v44 = v8[1];
    atomic_store(0xFFFFFFFD, (v44 + 16));
    atomic_store(1u, (v44 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      return __ulock_wake();
    }

    return result;
  }

  v28 = *(v10 + 6);
  atomic_compare_exchange_strong_explicit(v10 + 6, &v28, v26, memory_order_relaxed, memory_order_relaxed);
  if (v28 != v25)
  {
    do
    {
      v29 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v24 < v29)
      {
        goto LABEL_4;
      }

      v25 = v28;
      v30 = v28;
      atomic_compare_exchange_strong_explicit(v10 + 6, &v30, v29, memory_order_relaxed, memory_order_relaxed);
      _ZF = v30 == v28;
      v28 = v30;
    }

    while (!_ZF);
  }

  v73 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v74[0] = 0;
  v72 = 0;
  if (v15 <= v13)
  {
    v34 = 0;
LABEL_24:
    v50 = v14 >> 32;
    v51 = *(v22 + 136);
    while (1)
    {
      v52 = *(v10 + 4);
      if (v34 <= v51)
      {
        break;
      }

      v53 = v51;
      atomic_compare_exchange_strong_explicit((v52 + 136), &v53, v34, memory_order_relaxed, memory_order_relaxed);
      _ZF = v53 == v51;
      v51 = v53;
      if (_ZF)
      {
        v52 = *(v10 + 4);
        break;
      }
    }

    v54 = *(v52 + 140);
    v55 = v72;
    do
    {
      if (v55 <= v54)
      {
        break;
      }

      v56 = v54;
      atomic_compare_exchange_strong_explicit((*(v10 + 4) + 140), &v56, v55, memory_order_relaxed, memory_order_relaxed);
      _ZF = v56 == v54;
      v54 = v56;
    }

    while (!_ZF);
    v57 = *(v10 + 2);
    v58 = *(v57 + 352);
    v59 = *(v58 + 8 * a2);
    if (v59 < *(v58 + 8 * v50))
    {
      do
      {
        v60 = (*(v10 + 7) + 40 * *(*(v57 + 360) + 4 * v59));
        if (atomic_fetch_add_explicit(v60, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v61 = v8[2];
          if (v61)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v61 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v61 + 32) = 0;
              _X2 = _X4 & 1 | v61;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          v8[2] = v60;
          v8[3] = 0;
        }

        ++v59;
        v57 = *(v10 + 2);
      }

      while (v59 < *(*(v57 + 352) + 8 * v50));
    }
  }

  else
  {
    v70 = (a2 << 32) + 0x100000000;
    v71 = a2;
    v32 = HIDWORD(a2);
    v33 = v25 + v21;
    while (1)
    {
      result = sub_2367EE3C0(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v73, v33, v74, &v72, v18, v19, *(v10 + 13), v8, v10);
      if (result)
      {
        break;
      }

      v13 = (v13 + 1);
      if (v15 == v13)
      {
        v22 = *(v10 + 4);
        v34 = v74[0];
        v14 = v70;
        LODWORD(a2) = v71;
        goto LABEL_24;
      }
    }

    _X2 = 0;
    v67 = v8[1];
    atomic_store(result, (v67 + 16));
    atomic_store(1u, (v67 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      return __ulock_wake();
    }
  }

  return result;
}

uint64_t sub_2367EE338(uint64_t result)
{
  v1 = *(*(*(result + 8) + 64) + 32);
  v2 = *(v1 + 128);
  if (v2 >= 134217729)
  {
    v3 = *(v1 + 120);
    v4 = v3 + v2;
    v5 = (v3 + 0x8000000);
    v6 = v2 - 0x8000000;
    do
    {
      if (v6 >= 0x8000000)
      {
        v7 = 0x8000000;
      }

      else
      {
        v7 = v6;
      }

      result = madvise(v5, v7, 3);
      v5 += 0x8000000;
      v6 -= 0x8000000;
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t sub_2367EE3C0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, unint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v237 = *MEMORY[0x277D85DE8];
  v203 = *(&off_28499C330 + a4 - 81);
  v21 = *(a5 + 56);
  v22 = 4 * v21;
  v23 = (4 * v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v210 = a15 + v23;
  v24 = (a15 + v23 + v23);
  v25 = (v24 + v23);
  v26 = (v24 + v23 + v23);
  v27 = (v26 + v23);
  v28 = v26 + v23 + v23;
  if (a4 != 82)
  {
    v22 = 0;
  }

  v202 = v22;
  v226 = 0;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v29 = a1;
  v30 = a1 + 1;
  v31 = *(a5 + 184);
  v32 = *(*(a5 + 176) + 4 * v30) - *(*(a5 + 176) + 4 * a1);
  v33 = v32 * a6;
  DWORD1(v221) = v32 * a6;
  v34 = *(a7[14] + 8 * a1);
  if (a4 != 82)
  {
    v28 = 0;
  }

  v201 = v28;
  *&v222 = v34 + 8;
  v35 = 8 * v30;
  v36 = 8 * a1;
  v37 = (v32 + *(v31 + 8 * v30) - *(v31 + v36)) * a6;
  v219 = v37;
  v38 = (*(*(a5 + 200) + 8 * v30) - *(*(a5 + 200) + v36)) * a6;
  v39 = v38 + v33;
  v220 = v38 + v33;
  v40 = v34 + 8 + 8 * v37 * v33;
  *(&v222 + 1) = v37;
  *&v223 = v40;
  *(&v223 + 1) = v38;
  v213 = a7;
  if (a4 == 81 || (*&v224 = v40 + 8 * v38 * v33, *(&v224 + 1) = v224 + 4 * v33, a4 != 83))
  {
    v54 = 0;
    v43 = 0;
    v47 = 0;
    v46 = 0;
    v197 = 0;
    v198 = 0;
    v55 = 0;
    v45 = 0;
    __src = 0;
    v42 = 0;
  }

  else
  {
    v41 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    sub_2367EF380(v227, a1, 1, 83, a5, a6, a7, a9, v25, v41, v27, v41);
    v42 = *&v227[8];
    v198 = *&v227[16];
    __src = *v227;
    v197 = *&v227[24];
    sub_2367EF380(v227, a1, 2, 83, a5, v19, v213, a9, v24, v41, v26, v41);
    v43 = 0;
    v44 = *v227;
    v45 = *&v227[8];
    v47 = *&v227[16];
    v46 = *&v227[24];
    a7 = v213;
    *(v213[10] + 4 * v29) = *&v227[8];
    *(v213[11] + 4 * v29) = v42;
    v48 = v213[9];
    *(v48 + 4 * v29) = 0;
    v49 = (*(a5 + 240) + 8 * v29);
    v50 = *v49;
    v51 = v49[1];
    if (v50 < v51)
    {
      v43 = 0;
      v52 = *(a5 + 256);
      do
      {
        if (*(v52 + v50) == 3)
        {
          v53 = *(*(a5 + 248) + 4 * v50);
          v43 += *(v48 + 4 * v53) + (*(*(a5 + 176) + 4 * v53 + 4) - *(*(a5 + 176) + 4 * v53)) * v19 - *(v213[8] + 4 * v53);
          *(v48 + 4 * v29) = v43;
        }

        ++v50;
      }

      while (v51 != v50);
    }

    LODWORD(v221) = v43;
    v33 = DWORD1(v221);
    v54 = 1;
    v37 = v219;
    v39 = v220;
    v55 = v44;
  }

  v204 = v42;
  v56 = v43 + v33;
  v57 = 8 * ((v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56));
  if ((a4 & 0xFE) == 0x52)
  {
    v57 += 4 * (v45 + 2 * v56 + v42);
  }

  v58 = v57 + 8;
  v59 = (a7[14] + 8 * v29);
  v60 = *v59;
  if (*v59)
  {
    v61 = a7[15];
    if (v60 < v61 || v60 >= v61 + a7[16])
    {
      if (*v60 >= v58)
      {
        goto LABEL_22;
      }

      v62 = v55;
      v63 = v46;
      v214 = 8 * v30;
      v64 = v30;
      v65 = v45;
      v66 = v47;
      (*(a5 + 32))();
      v47 = v66;
      v45 = v65;
      v30 = v64;
      a7 = v213;
      v35 = v214;
      v46 = v63;
      v55 = v62;
      v59 = (v213[14] + 8 * v29);
    }

    *v59 = 0;
  }

LABEL_22:
  v67 = a7[14];
  if (!*(v67 + 8 * v29))
  {
    v68 = *a11;
    v69 = (*a11 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v69 <= a12)
    {
      *a11 = v69;
      *(a7[14] + 8 * v29) = v68;
      if (v68)
      {
        **(a7[14] + 8 * v29) = 0;
        goto LABEL_29;
      }
    }

    else
    {
      *(v67 + 8 * v29) = 0;
    }

    v215 = v30;
    v70 = v45;
    v71 = v47;
    v72 = v55;
    v73 = v46;
    v74 = (*(a5 + 24))(v58);
    a7 = v213;
    *(v213[14] + 8 * v29) = v74;
    v75 = *(v213[14] + 8 * v29);
    if (!v75)
    {
      v185 = *(a5 + 40);
      if (!v185)
      {
        v186 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v186)
        {
          sub_23672B14C(v186, v187, v188, v189, v190, v191, v192, v193);
        }

        _SparseTrap();
      }

      memset(v236, 0, sizeof(v236));
      v235 = 0u;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      v229 = 0u;
      v228 = 0u;
      memset(&v227[58], 0, 48);
      strcpy(v227, "Failed to allocate additional storage for delayed pivots\n");
      v185(v227);
      return 4294967293;
    }

    *v75 = v58;
    v46 = v73;
    v55 = v72;
    v47 = v71;
    v45 = v70;
    v30 = v215;
  }

LABEL_29:
  v195 = v47;
  if (v54)
  {
    v76 = *(a7[9] + 4 * v29);
    v77 = *(a7[10] + 4 * v29);
    v78 = *(a7[11] + 4 * v29);
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
  }

  v194 = v46;
  v79 = a7[14];
  v211 = (*(v79 + 8 * v29) + 8);
  v80 = *(a5 + 176);
  v81 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
  v82 = v81 + v76;
  v83 = v81 + v76;
  if (v54)
  {
    v83 = *(a7[8] + 4 * v29);
  }

  v84 = *(a5 + 184);
  v85 = *(a5 + 200);
  v86 = *(v85 + v35);
  v87 = v82 + v77 + (*(v84 + v35) - *(v84 + 8 * v29)) * v19;
  v88 = (v86 - *(v85 + 8 * v29)) * v19;
  v89 = &v211[8 * v87 * v82];
  v90 = v88 + v78;
  v219 = v87;
  v220 = v82 + v78 + v88;
  LODWORD(v221) = v76;
  DWORD1(v221) = v81 + v76;
  *(&v221 + 1) = v83;
  if (a4 == 81)
  {
    v91 = 0;
  }

  else
  {
    v91 = &v89[8 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[8 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v222 = v211;
  *(&v222 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v199 = &v211[8 * v87 * v82];
  v200 = v90;
  *&v223 = v199;
  *(&v223 + 1) = v90;
  v94 = v92 + 4 * v82;
  *&v224 = v91;
  *(&v224 + 1) = v92;
  if (v78 <= 0)
  {
    v94 = 0;
  }

  *&v225 = __PAIR64__(v78, v77);
  *(&v225 + 1) = v93;
  v226 = v94;
  if (a4 != 81 && v81 >= 1)
  {
    v95 = 0;
    do
    {
      *&v91[4 * v95] = v95 + *(v80 + 4 * v29) * v19;
      *(v92 + 4 * v95) = v95 + *(v80 + 4 * v29) * v19;
      ++v95;
      v76 = v221;
    }

    while (v95 < SDWORD1(v221) - v221);
  }

  v216 = v54;
  if (v76 >= 1)
  {
    v96 = *(a5 + 240);
    v97 = *(v96 + 8 * v29);
    v98 = *(v96 + 8 * v30);
    if (v97 < v98)
    {
      v99 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
      v100 = (v92 + 4 * v99);
      v101 = &v91[4 * v99];
      v102 = *(a5 + 256);
      do
      {
        if (*(v102 + v97) == 3)
        {
          v103 = *(*(a5 + 248) + 4 * v97);
          if (v54)
          {
            v104 = *(a7[9] + 4 * v103);
            v105 = *(a7[10] + 4 * v103);
            v106 = *(a7[11] + 4 * v103);
          }

          else
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
          }

          v107 = v104 + (*(v80 + 4 * (v103 + 1)) - *(v80 + 4 * v103)) * v19;
          v108 = v107;
          if (v54)
          {
            v108 = *(a7[8] + 4 * v103);
          }

          if (a4 == 81)
          {
            v109 = 0;
            v110 = 0;
          }

          else
          {
            v54 = v216;
            v109 = *(v79 + 8 * v103) + 8 + 8 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 8 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
            v110 = v109 + 4 * v107 + 4 * v105;
          }

          if (v107 != *(a7[8] + 4 * v103) && v108 < v107)
          {
            v112 = (v109 + 4 * v108);
            v113 = (v110 + 4 * v108);
            v114 = v108 - v107;
            do
            {
              v116 = *v112++;
              v115 = v116;
              if (v116 < 0)
              {
                v115 = -v115;
              }

              *v101++ = v115;
              v118 = *v113++;
              v117 = v118;
              if (v118 < 0)
              {
                v117 = -v117;
              }

              *v100++ = v117;
            }

            while (!__CFADD__(v114++, 1));
          }
        }

        ++v97;
      }

      while (v97 != v98);
    }
  }

  if (v45)
  {
    memcpy(&v91[4 * SDWORD1(v221)], v55, 4 * v45);
  }

  if (v204)
  {
    memcpy((v92 + 4 * SDWORD1(v221)), __src, 4 * v204);
  }

  v120 = v219;
  if (v219 >= 1)
  {
    v121 = 0;
    v122 = *(&v225 + 1);
    v123 = v224;
    do
    {
      if (v121 >= SDWORD1(v221))
      {
        v125 = v120 - v225;
        if (v121 >= v125)
        {
          v124 = *(v122 - 4 * v125 + 4 * v121);
        }

        else
        {
          v124 = (v121 - DWORD1(v221)) % v19 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v29) + 4 * ((v121 - DWORD1(v221)) / v19)) * v19;
        }
      }

      else if (v123)
      {
        v124 = *(v123 + 4 * v121);
      }

      else
      {
        v124 = v121 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v124 < 0)
      {
        v124 = -v124;
      }

      *(a15 + 4 * v124) = v121++;
      v120 = v219;
    }

    while (v121 < v219);
  }

  v126 = v220;
  if (v220 >= 1)
  {
    v127 = 0;
    v128 = v226;
    v129 = v224;
    do
    {
      if (v127 >= SDWORD1(v221))
      {
        v131 = v126 - SDWORD1(v225);
        if (v127 >= v131)
        {
          v130 = *(v128 - 4 * v131 + 4 * v127);
        }

        else
        {
          v130 = (v127 - DWORD1(v221)) % v19 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v29) + 4 * ((v127 - DWORD1(v221)) / v19)) * v19;
        }
      }

      else if (v129)
      {
        v130 = *(*(&v129 + 1) + 4 * v127);
      }

      else
      {
        v130 = v127 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v130 < 0)
      {
        v130 = -v130;
      }

      *(v210 + 4 * v130) = v127++;
      v126 = v220;
    }

    while (v127 < v220);
    v120 = v219;
  }

  v132 = 8 * SDWORD1(v221);
  bzero(v211, v132 * v87);
  bzero(v199, v132 * v200);
  sub_2367EF888(a2, a1, SDWORD1(v221), a3, a5, v211, v87, v199, v200, a15, v210, v213[12], v213[13]);
  if ((v126 - DWORD1(v221)) * (v120 - DWORD1(v221)) <= 0)
  {
    v134 = 0;
  }

  else
  {
    v133 = 5 * (SDWORD1(v225) + v225);
    v134 = (*(a5 + 24))(v133 + 152);
    sub_236724DE4(v134, &v219, v195, v194, v198, v197, (v134 + 120), v133 + 32, a5);
    v135 = *(v134 + 16) * *(v134 + 8);
    v136 = (*(*v134 + 24))(8 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 8 * v135);
  }

  *(a9 + 8 * v29) = v134;
  v137 = (*(a5 + 240) + 8 * v29);
  v138 = *v137;
  v139 = v213;
  v140 = v216;
  if (*v137 < v137[1])
  {
    v206 = v134;
    v208 = v29;
    v212 = v19;
    do
    {
      v141 = *(*(a5 + 248) + 4 * v138);
      memset(&v227[16], 0, 56);
      if (v140)
      {
        v142 = *(v139[9] + 4 * v141);
        v143 = *(v139[10] + 4 * v141);
        v144 = *(v139[11] + 4 * v141);
      }

      else
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
      }

      v145 = *(v139[14] + 8 * v141) + 8;
      *&v227[8] = v142;
      *&v227[24] = v145;
      *&v227[72] = v143;
      *&v227[76] = v144;
      *&v227[12] = v142 + (*(*(a5 + 176) + 4 * (v141 + 1)) - *(*(a5 + 176) + 4 * v141)) * v19;
      v146 = *&v227[12];
      if (v140)
      {
        v146 = *(v139[8] + 4 * v141);
      }

      *&v227[16] = v146;
      v147 = 8 * (v141 + 1);
      *v227 = *&v227[12] + v143 + (*(*(a5 + 184) + v147) - *(*(a5 + 184) + 8 * v141)) * v19;
      v148 = (*(*(a5 + 200) + v147) - *(*(a5 + 200) + 8 * v141)) * v19;
      *&v227[4] = *&v227[12] + v144 + v148;
      v149 = v145 + 8 * *v227 * *&v227[12];
      *&v227[32] = *v227;
      *&v227[40] = v149;
      *&v227[48] = v148 + v144;
      if (a4 == 81)
      {
        v151 = 0;
        v150 = 0;
      }

      else
      {
        v150 = v149 + 8 * (v148 + v144) * *&v227[12];
        v151 = v150 + 4 * *&v227[12] + 4 * v143;
        *&v227[56] = v150;
        *&v227[64] = v151;
      }

      v152 = v150 + 4 * *&v227[12];
      if (v143 <= 0)
      {
        v153 = 0;
      }

      else
      {
        v153 = v152;
      }

      v154 = v151 + 4 * *&v227[12];
      if (v144 <= 0)
      {
        v155 = 0;
      }

      else
      {
        v155 = v154;
      }

      *&v227[80] = v153;
      *&v227[88] = v155;
      v156 = *(a9 + 8 * v141);
      if (!v156)
      {
        goto LABEL_144;
      }

      v157 = *(*(a5 + 264) + 4 * v138) * v19;
      v158 = *(*(a5 + 272) + 4 * v138) * v19;
      v159 = *(*(a5 + 256) + v138);
      switch(v159)
      {
        case 3:
          v177 = sub_2367F07B4(&v219, v141, v227, v156, a5, v212, v157, v158, a15, v210);
          v19 = v212;
          sub_2367E95C8(v177, &v219, v134, v141, v227, v156, a5, v212, v157, v158, a15, v210);
          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_142;
          }

          break;
        case 2:
          v170 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v218, *(a9 + 8 * v141));
          v171 = v170 * v19;
          sub_2367F0164(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_2367E8CD4(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
          add_explicit = atomic_fetch_add_explicit((v156 + 24), -v171, memory_order_release);
          if (*(v218 + 112) == 1)
          {
            v173 = (v218 + 113);
            atomic_store(0, (v218 + 113));
            std::__cxx_atomic_notify_one(v173);
          }

          v139 = v213;
          v29 = v208;
          v140 = v216;
          if (add_explicit != v171)
          {
            goto LABEL_144;
          }

          v174 = *(*v156 + 32);
          v176 = *(v156 + 96);
          v175 = (v156 + 96);
          v174(v176);
          *v175 = 0;
          v175[1] = 0;
          v139 = v213;
          v140 = v216;
          if (*&v227[12] != *&v227[16] || *&v227[76] || *&v227[72])
          {
            goto LABEL_144;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (!v168)
          {
            break;
          }

LABEL_142:
          (*(*v167 + 32))(v168);
          *v169 = 0;
          v169[1] = 0;
          break;
        case 1:
          v160 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v218, *(a9 + 8 * v141));
          v161 = v160 * v19;
          sub_2367EFCD0(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_2367E8584(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
          v162 = atomic_fetch_add_explicit((v156 + 28), -v161, memory_order_release);
          if (*(v218 + 112) == 1)
          {
            v163 = (v218 + 113);
            atomic_store(0, (v218 + 113));
            std::__cxx_atomic_notify_one(v163);
          }

          v139 = v213;
          v29 = v208;
          v140 = v216;
          if (v162 != v161)
          {
            goto LABEL_144;
          }

          v164 = *(*v156 + 32);
          v166 = *(v156 + 96);
          v165 = (v156 + 96);
          v164(v166);
          *v165 = 0;
          v165[1] = 0;
          v139 = v213;
          v140 = v216;
          if (*&v227[12] != *&v227[16] || *&v227[76] || *&v227[72])
          {
            goto LABEL_144;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_142;
          }

          break;
        default:
          goto LABEL_144;
      }

      (*(a5 + 32))();
      *(a9 + 8 * v141) = 0;
      v139 = v213;
      v140 = v216;
LABEL_144:
      ++v138;
    }

    while (v138 < *(*(a5 + 240) + 8 * v29 + 8));
  }

  if (v134)
  {
    v178 = *(v134 + 96);
    v179 = *(v134 + 16);
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  if (a19)
  {
    v180 = a19 + 64;
  }

  else
  {
    v180 = 0;
  }

  v181 = v203(v219, v220, DWORD1(v221), v222, *(&v222 + 1), v223, *(&v223 + 1), v178, v179, v224, *(&v224 + 1), a5, v139, v201, v202, a17, a18, v180);
  v182 = *a13;
  if (*a13 <= v181)
  {
    v182 = v181;
  }

  *a13 = v182;
  v183 = *a14;
  if (*a14 <= v220)
  {
    v183 = v220;
  }

  *a14 = v183;
  if (v216)
  {
    *(v213[8] + 4 * v29) = v181;
    return 0;
  }

  if (v181 == DWORD1(v221))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sub_2367EF364(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2367EF380(uint64_t *__return_ptr a1@<X8>, int a2@<W0>, int a3@<W1>, int a4@<W2>, void *a5@<X3>, int a6@<W4>, void *a7@<X5>, uint64_t a8@<X6>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
{
  v12 = a11;
  v13 = (a5[30] + 8 * a2);
  v14 = *v13;
  if (*v13 < v13[1])
  {
    v17 = 0;
    v18 = 0;
    v83 = a2;
    v19 = a9;
    v20 = a11;
    v80 = a7;
    v78 = a3;
    v79 = a4;
    while (1)
    {
      v21 = *(a5[32] + v14);
      if ((v21 & a3) != 0)
      {
        break;
      }

LABEL_61:
      if (++v14 >= *(a5[30] + 8 * v83 + 8))
      {
        goto LABEL_64;
      }
    }

    v22 = *(a5[31] + 4 * v14);
    if (a4 == 83)
    {
      v23 = *(a7[9] + 4 * v22);
      v24 = *(a7[10] + 4 * v22);
      v25 = *(a7[11] + 4 * v22);
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    v26 = a5[22];
    v27 = *(v26 + 4 * (v22 + 1));
    v28 = *(v26 + 4 * v22);
    v29 = v23 + (v27 - v28) * a6;
    if (a4 == 83)
    {
      v30 = *(a7[8] + 4 * v22);
      v31 = v29;
    }

    else
    {
      v31 = v29;
      if (a4 == 81)
      {
        v32 = 0;
        v33 = 0;
        v30 = v29;
        goto LABEL_13;
      }

      v30 = v29;
    }

    v33 = *(a7[14] + 8 * v22) + 8 + 8 * v31 * (v29 + v24 + (*(a5[23] + 8 * (v22 + 1)) - *(a5[23] + 8 * v22)) * a6) + 8 * v31 * (v25 + (*(a5[25] + 8 * (v22 + 1)) - *(a5[25] + 8 * v22)) * a6);
    v32 = v33 + 4 * v31 + 4 * v24;
LABEL_13:
    if (v24 <= 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = (v33 + 4 * v31);
    }

    v35 = (v32 + 4 * v31);
    if (v25 <= 0)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    if (v21 == 3)
    {
      v38 = 0;
      v37 = 0;
    }

    else
    {
      v37 = v29 - *(a7[8] + 4 * v22);
      if (v21 == 2)
      {
        v38 = (v33 + 4 * v30);
      }

      else if (v21 == 1)
      {
        v38 = (v32 + 4 * v30);
      }

      else
      {
        v38 = 0;
      }
    }

    v39 = *(a8 + 8 * v22);
    v40 = *(a5[38] + 4 * v28);
    if (a3 == 1)
    {
      if (v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = v25 == 0;
      }

      if (!v41)
      {
        v72 = *(a5[38] + 4 * v28);
        v74 = v38;
        v76 = v37;
        v45 = v25;
        v46 = v25;
        v47 = v17;
        v48 = v18;
        v70 = v25;
        v49 = v19;
        v50 = v20;
        sub_236724CB4(v84, v46);
        if (v70 >= 1)
        {
          v51 = 0;
          v52 = a5[38];
          v53 = v84[0];
          do
          {
              ;
            }

            v53[v51++] = i;
          }

          while (v51 != v45);
        }

        v12 = a11;
        sub_236724994(&v85, v49, v47, v50, v48, a9, a10, a11, v76, v74, v72, v70, v36, v84[0], a2, a5);
LABEL_53:
        v19 = v85;
        v17 = v86;
        v20 = v87;
        v18 = v88;
        if (v84[0])
        {
          v84[1] = v84[0];
          v65 = v86;
          v66 = v88;
          v67 = v85;
          v68 = v87;
          operator delete(v84[0]);
          v20 = v68;
          v19 = v67;
          v18 = v66;
          v17 = v65;
        }

        goto LABEL_60;
      }

      if (v39)
      {
        v42 = *(v39 + 80);
      }

      else
      {
        v42 = 0;
      }

      sub_236724994(&v85, v19, v17, v20, v18, a9, a10, v12, v37, v38, v40, v25, v36, v42, a2, a5);
    }

    else
    {
      if (v39)
      {
        v43 = 1;
      }

      else
      {
        v43 = v24 == 0;
      }

      if (!v43)
      {
        v73 = *(a5[38] + 4 * v28);
        v75 = v38;
        v77 = v37;
        v55 = v24;
        v56 = v24;
        v57 = v17;
        v58 = v18;
        v59 = v19;
        v71 = v24;
        v60 = v20;
        sub_236724CB4(v84, v56);
        if (v71 >= 1)
        {
          v61 = 0;
          v62 = a5[38];
          v63 = v84[0];
          do
          {
              ;
            }

            v63[v61++] = j;
          }

          while (v61 != v55);
        }

        v12 = a11;
        sub_236724994(&v85, v59, v57, v60, v58, a9, a10, a11, v77, v75, v73, v71, v34, v84[0], a2, a5);
        goto LABEL_53;
      }

      if (v39)
      {
        v44 = *(v39 + 64);
      }

      else
      {
        v44 = 0;
      }

      sub_236724994(&v85, v19, v17, v20, v18, a9, a10, v12, v37, v38, v40, v24, v34, v44, a2, a5);
    }

    v19 = v85;
    v17 = v86;
    v20 = v87;
    v18 = v88;
LABEL_60:
    a7 = v80;
    a3 = v78;
    a4 = v79;
    goto LABEL_61;
  }

  v17 = 0;
  v18 = 0;
  v19 = a9;
  v20 = a11;
LABEL_64:
  *a1 = v19;
  a1[1] = v17;
  a1[2] = v20;
  a1[3] = v18;
}

void sub_2367EF868(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367EF888(int a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *(a4 + 28);
  v14 = (v13 * v13);
  v15 = *(a5[14] + 4 * a1 + 4);
  v16 = a5[22];
  v17 = (v16 + 4 * a2);
  result = *v17;
  v19 = result;
  if (a12)
  {
    v20 = v17[1];
    if (result < v20)
    {
      v102 = a5[20];
      v101 = *(a4 + 8);
      v21 = 8 * v14;
      v22 = 8 * v13;
      v100 = 8 * a7 * v13;
      v23 = 8 * a7;
      v24 = result;
      do
      {
        v25 = (v101 + 8 * *(v102 + 4 * v24));
        v26 = *v25;
        v27 = v25[1];
        if (*v25 < v27)
        {
          v28 = *(a4 + 16);
          v29 = v21 * v26;
          do
          {
            v30 = *(v28 + 4 * v26);
            if ((v30 & 0x80000000) == 0 && v30 < *a4)
            {
              v31 = *(a5[17] + 4 * v30);
              v32 = v31 >= result && v31 < v15;
              if (v32 && v13)
              {
                v33 = 0;
                v34 = v31 * v13;
                v35 = (a12 + 4 * v34);
                v36 = (*(a4 + 32) + v29);
                v37 = (a6 + 8 * *(a10 + 4 * v34));
                do
                {
                  v38 = v13;
                  v39 = v37;
                  v40 = v35;
                  v41 = v36;
                  do
                  {
                    v42 = *v40++;
                    v43 = v42;
                    v44 = *v41++;
                    *v39++ = vmul_n_f32(vmul_n_f32(v44, v43), *(a13 + 4 * v24 * v13 + 4 * v33));
                    --v38;
                  }

                  while (v38);
                  ++v33;
                  v36 = (v36 + v22);
                  v37 = (v37 + v23);
                }

                while (v33 != v13);
              }
            }

            ++v26;
            v29 += v21;
          }

          while (v26 != v27);
        }

        ++v24;
        a6 += v100;
      }

      while (v24 != v20);
      v45 = a5[39];
      v46 = *(v45 + 8 * result);
      v47 = a8 - 8 * a3;
      result = 8 * a9 * v13;
      v48 = (a12 + 4 * v19 * v13);
      do
      {
        ++v19;
        v49 = *(v45 + 8 * v19);
        if (v46 < v49)
        {
          v50 = *(a4 + 32);
          v51 = a5[40];
          v52 = a5[41];
          do
          {
            if (v13)
            {
              v53 = 0;
              v54 = (v50 + 8 * *(v52 + 8 * v46) * v14);
              v55 = *(v51 + 4 * v46) * v13;
              v56 = a13 + 4 * v55;
              v57 = (v47 + 8 * *(a11 + 4 * v55));
              do
              {
                v58 = v13;
                v59 = v48;
                v60 = v57;
                v61 = v54;
                do
                {
                  v62 = *v59++;
                  v63 = v62;
                  v64 = *v61++;
                  *v60 = vmul_n_f32(vmul_n_f32(v64, v63), *(v56 + 4 * v53));
                  v60 += a9;
                  --v58;
                }

                while (v58);
                ++v53;
                v54 = (v54 + v22);
                ++v57;
              }

              while (v53 != v13);
            }

            ++v46;
          }

          while (v46 != v49);
        }

        v47 += result;
        v48 += v13;
        v46 = v49;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v65 = a2;
    v66 = a2 + 1;
    LODWORD(v67) = *(v16 + 4 * v66);
    if (result < v67)
    {
      v68 = *(a4 + 8);
      v69 = 8 * v14;
      v70 = 8 * a7;
      do
      {
        v71 = *(a5[20] + 4 * v19);
        v72 = (v68 + 8 * v71);
        v73 = *v72;
        if (*v72 < v72[1])
        {
          v74 = v69 * v73;
          do
          {
            v75 = *(*(a4 + 16) + 4 * v73);
            if ((v75 & 0x80000000) == 0 && v75 < *a4)
            {
              v76 = *(a5[17] + 4 * v75);
              v77 = *(a5[22] + 4 * v65);
              v78 = v76 >= v77 && v76 < v15;
              if (v78 && v13)
              {
                v79 = 0;
                v80 = (*(a4 + 32) + v74);
                v81 = (a6 + v70 * v13 * (v19 - v77) + 8 * *(a10 + 4 * v76 * v13));
                do
                {
                  v82 = v13;
                  v83 = v81;
                  v84 = v80;
                  do
                  {
                    v85 = *v84++;
                    *v83++ = v85;
                    --v82;
                  }

                  while (v82);
                  ++v79;
                  v80 += v13;
                  v81 = (v81 + v70);
                }

                while (v79 != v13);
                v68 = *(a4 + 8);
              }
            }

            ++v73;
            v74 += v69;
          }

          while (v73 < *(v68 + 8 * v71 + 8));
          v16 = a5[22];
        }

        ++v19;
        v67 = *(v16 + 4 * v66);
      }

      while (v19 < v67);
      result = *(v16 + 4 * v65);
    }

    if (result < v67)
    {
      v86 = result;
      v87 = a5[39];
      v88 = 8 * a9;
      v89 = a8 - 8 * a3;
      do
      {
        v90 = v86;
        result = *(v87 + 8 * v86++);
        if (result < *(v87 + 8 * v86))
        {
          do
          {
            if (v13)
            {
              v91 = 0;
              v92 = *(a4 + 32) + 8 * *(a5[41] + 8 * result) * v14;
              v93 = (v89 + v88 * v13 * (v90 - *(a5[22] + 4 * v65)) + 8 * *(a11 + 4 * *(a5[40] + 4 * result) * v13));
              do
              {
                v94 = v13;
                v95 = v93;
                v96 = v92;
                do
                {
                  v97 = *v96++;
                  *v95 = v97;
                  v95 = (v95 + v88);
                  --v94;
                }

                while (v94);
                ++v91;
                v92 += 8 * v13;
                ++v93;
              }

              while (v91 != v13);
              v87 = a5[39];
            }

            ++result;
          }

          while (result < *(v87 + 8 * v86));
          v16 = a5[22];
        }
      }

      while (v86 < *(v16 + 4 * v66));
    }
  }

  return result;
}

uint64_t sub_2367EFCD0(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v59 = result;
  v12 = a4[3];
  v61 = a4[1];
  if (v12 + a9 < v61)
  {
    v55 = v12 + a8;
    v13 = v12 + a8 + a10;
    v14 = a4[19];
    v60 = v14 - v61;
    v15 = v12 + a9;
    v57 = v61 - v14;
    for (i = 8 * a9; ; i += 8)
    {
      if (v60 + v15 < 0 || (*(a5[6] + (v60 + v15)) & 1) == 0)
      {
        v17 = v15 - v12;
        if (v15 >= v12)
        {
          v18 = v15 >= v57 ? *(*(a4 + 11) + 4 * (v15 - v57)) : (v15 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v15 - v12) / a7)) * a7;
        }

        else if (v15 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v15) : v15 + *(a6[22] + 4 * a3) * a7;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        if (v20 > v19)
        {
          v21 = v19;
          if ((v19 & 0x80000000) != 0)
          {
            v22 = 0x7FFFFFFF;
          }

          else
          {
            v22 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v19) : v19 + *(a6[22] + 4 * v59) * a7;
          }

          if (v22 == v18)
          {
            if (a10 >= 1)
            {
              v23 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
              v24 = 8 * v55 - 8 * v12;
              v25 = v55;
              v26 = a8;
              do
              {
                if (v25 >= v12)
                {
                  v29 = *a4;
                  v30 = a4[18];
                  if (v25 >= v29 - v30)
                  {
                    if (v25 < v29)
                    {
                      v28 = *(*(a4 + 10) + 4 * (v25 + v30 - v29));
                      if ((v17 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_34;
                    }

LABEL_33:
                    v28 = 0x7FFFFFFF;
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v26 / a7));
                  v32 = v26 % a7;
                }

                else
                {
                  if (v25 < 0)
                  {
                    goto LABEL_33;
                  }

                  v27 = *(a4 + 7);
                  if (v27)
                  {
                    v28 = *(v27 + 4 * v25);
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[22] + 4 * a3);
                  v32 = v12 + v26;
                }

                v28 = v32 + v31 * a7;
                if ((v17 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  if (v25 >= v12)
                  {
                    v33 = (a5[12] + i * a5[2] + v24);
                  }

                  else
                  {
                    v33 = (*(a4 + 5) + 8 * *(a4 + 6) * v25 + 8 * v17);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v33 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v25);
LABEL_40:
                v34 = *(a11 + 4 * v28);
                *(v23 + 8 * v34) = vadd_f32(*v33, *(v23 + 8 * v34));
                ++v25;
                ++v26;
                v24 += 8;
              }

              while (v25 < v13);
            }

            v35 = a4[18];
            if (v35 >= 1)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (++v15 >= v61)
      {
        return result;
      }
    }

    v36 = 0;
    v37 = *a4;
    v38 = v37 - v35;
    v39 = a5[4];
    v40 = v37 - v12 - v35;
    v58 = 4 * (v37 - v35);
    v41 = -8 * v12 + 8 * (v37 - v35);
    v42 = v37 - v35;
    while ((*(v39 + v36) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v36;
      ++v40;
      v41 += 8;
      if (v38 + v36 >= v37)
      {
        goto LABEL_73;
      }
    }

    v43 = v38 + v36;
    if (v43 >= v12)
    {
      if (v43 >= v38)
      {
        v45 = *(a4 + 10);
        goto LABEL_51;
      }

      v46 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v40 / a7));
      v47 = v40 % a7;
    }

    else
    {
      if (v43 < 0)
      {
        v48 = 0x7FFFFFFF;
        goto LABEL_55;
      }

      v44 = *(a4 + 7);
      if (v44)
      {
        v45 = v44 + v58;
LABEL_51:
        v48 = *(v45 + 4 * v36);
        goto LABEL_55;
      }

      v46 = *(a6[22] + 4 * a3);
      v47 = v38 + v36;
    }

    v48 = v47 + v46 * a7;
LABEL_55:
    v49 = *(a11 + 4 * v48);
    v50 = v49;
    if (v49 >= v20)
    {
      result = (*a2 - *(a2 + 72));
      if (v49 < result)
      {
        result = a6[24];
        v52 = (v49 - v20) % a7 + *(result + 4 * *(a6[23] + 8 * v59) + 4 * ((v49 - v20) / a7)) * a7;
        goto LABEL_65;
      }

      if (*a2 > v49)
      {
        v52 = *(*(a2 + 80) + 4 * (v49 - result));
        goto LABEL_65;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      v51 = *(a2 + 56);
      if (v51)
      {
        v52 = *(v51 + 4 * v49);
      }

      else
      {
        v52 = v49 + *(a6[22] + 4 * v59) * a7;
      }

LABEL_65:
      if (v52 == v48)
      {
        if (v17 < 0)
        {
          v53 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 8 * *(a4 + 6) * v43 + 8 * v17);
        }

        v54 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
        *(v54 + 8 * v50) = vadd_f32(*v53, *(v54 + 8 * v50));
      }

      goto LABEL_72;
    }

    v52 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_2367F0164(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v82 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    v86 = v12 + a8;
    v13 = v12 + a9;
    v14 = *(a2 + 12);
    v15 = 8 * v13 - 8 * v12;
    while (1)
    {
      v16 = v13 - v12;
      if (v13 < v12)
      {
        break;
      }

      v17 = a4[1];
      v18 = v17 - a4[19];
      v19 = __OFSUB__(v13, v18);
      v20 = v13 - v18;
      if (v20 < 0 != v19)
      {
        result = ((v13 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v13 - v12) / a7)) * a7);
      }

      else
      {
        if (v13 >= v17)
        {
          goto LABEL_12;
        }

        result = *(*(a4 + 11) + 4 * v20);
      }

LABEL_14:
      v21 = *(a12 + 4 * result);
      if (v21 < v14)
      {
        result = a4[4];
        if (result < v12)
        {
          v22 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
          if (v16 >= 0)
          {
            v23 = a4 + 10;
          }

          else
          {
            v23 = a4 + 6;
          }

          if (v16 >= 0)
          {
            v24 = a4 + 12;
          }

          else
          {
            v24 = a4 + 8;
          }

          v25 = *v23;
          v26 = *v24;
          do
          {
            if (result < 0)
            {
              v28 = 0x7FFFFFFF;
            }

            else
            {
              v27 = *(a4 + 7);
              if (v27)
              {
                v28 = *(v27 + 4 * result);
              }

              else
              {
                v28 = result + *(a6[22] + 4 * a3) * a7;
              }
            }

            v29 = *(a11 + 4 * v28);
            if (v16 >= 0)
            {
              v30 = result;
            }

            else
            {
              v30 = v13;
            }

            if (v16 >= 0)
            {
              v31 = v13 - v12;
            }

            else
            {
              v31 = result;
            }

            *(v22 + 8 * v29) = vadd_f32(*(v25 + 8 * v26 * v30 + 8 * v31), *(v22 + 8 * v29));
            ++result;
          }

          while (v12 != result);
        }

        v32 = *a4;
        if (v86 < v32)
        {
          v33 = a4[18];
          v34 = v32 - v33;
          v35 = v12 + v33 - v32;
          result = 4 * v33 - 4 * v32;
          v36 = 8 * v86 - 8 * v12;
          v37 = a8;
          v38 = v86;
          while (2)
          {
            if (v35 + v37 >= 0 && (*(*(a5 + 32) + (v35 + v37)) & 1) != 0)
            {
              goto LABEL_52;
            }

            if (v38 >= v12)
            {
              if (v38 >= v34)
              {
                v40 = *(*(a4 + 10) + result + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }
              }

              else
              {
                v40 = v37 % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v37 / a7)) * a7;
                if (v16 < 0)
                {
                  break;
                }
              }

              goto LABEL_46;
            }

            if (v38 < 0)
            {
              v40 = 0x7FFFFFFF;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v39 = *(a4 + 7);
              if (v39)
              {
                v40 = *(v39 + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }

LABEL_46:
                if (v38 >= v12)
                {
                  v41 = (*(a5 + 96) + v15 * *(a5 + 16) + v36);
                }

                else
                {
                  v41 = (*(a4 + 5) + 8 * *(a4 + 6) * v38 + 8 * v16);
                }

LABEL_51:
                v42 = *(a11 + 4 * v40);
                v43 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
                *(v43 + 8 * v42) = vadd_f32(*v41, *(v43 + 8 * v42));
LABEL_52:
                ++v38;
                ++v37;
                v36 += 8;
                if (v38 >= v32)
                {
                  goto LABEL_58;
                }

                continue;
              }

              v40 = v12 + v37 + *(a6[22] + 4 * a3) * a7;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            break;
          }

          v41 = (*(a4 + 3) + 8 * *(a4 + 4) * v13 + 8 * v38);
          goto LABEL_51;
        }
      }

LABEL_58:
      ++v13;
      v15 += 8;
      if (v13 >= v12 + a9 + a10)
      {
        goto LABEL_59;
      }
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(*(a4 + 8) + 4 * v13);
      }

      else
      {
        result = (v13 + *(a6[22] + 4 * a3) * a7);
      }

      goto LABEL_14;
    }

LABEL_12:
    result = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

LABEL_59:
  v44 = a4[19];
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = a4[1];
    v48 = *(a5 + 48);
    v84 = v12 + a8;
    result = v47 - v44;
    v49 = 8 * result - 8 * v12;
    v50 = result;
    v83 = result;
    do
    {
      if ((*(v48 + v45) & 1) == 0)
      {
        v51 = v50 - v12;
        if (v50 >= v12)
        {
          v52 = v50 >= result ? *(*(a4 + 11) + 4 * (v50 - result)) : (v50 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v50 - v12) / a7)) * a7;
        }

        else if (v50 < 0)
        {
          v52 = 0x7FFFFFFF;
        }

        else
        {
          v52 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v50) : v50 + *(a6[22] + 4 * a3) * a7;
        }

        v53 = *(a12 + 4 * v52);
        if (*(a2 + 12) > v53)
        {
          v54 = v53;
          if ((v53 & 0x80000000) != 0)
          {
            v55 = 0x7FFFFFFF;
          }

          else
          {
            v55 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v53) : v53 + *(a6[22] + 4 * v82) * a7;
          }

          if (v55 == v52)
          {
            v56 = a4[4];
            if (v56 < v12)
            {
              v57 = *(a2 + 24) + 8 * *(a2 + 32) * v54;
              v58 = a4 + 10;
              if (v51 >= 0)
              {
                v59 = a4 + 12;
              }

              else
              {
                v58 = a4 + 6;
                v59 = a4 + 8;
              }

              v60 = *v58;
              v61 = *v59;
              do
              {
                if (v56 < 0)
                {
                  v63 = 0x7FFFFFFF;
                }

                else
                {
                  v62 = *(a4 + 7);
                  if (v62)
                  {
                    v63 = *(v62 + 4 * v56);
                  }

                  else
                  {
                    v63 = v56 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v64 = *(a11 + 4 * v63);
                if (v51 >= 0)
                {
                  v65 = v56;
                }

                else
                {
                  v65 = v50;
                }

                if (v51 >= 0)
                {
                  v66 = v50 - v12;
                }

                else
                {
                  v66 = v56;
                }

                *(v57 + 8 * v64) = vadd_f32(*(v60 + 8 * v61 * v65 + 8 * v66), *(v57 + 8 * v64));
                ++v56;
              }

              while (v12 != v56);
            }

            v67 = *a4;
            if (v84 < v67)
            {
              v68 = a4[18];
              v69 = v67 - v68;
              v70 = v12 + v68 - v67;
              v71 = 4 * v68 - 4 * v67;
              v72 = 8 * v84 - 8 * v12;
              v73 = a8;
              v74 = v12 + a8;
              while (2)
              {
                if (v70 + v73 >= 0 && (*(*(a5 + 32) + (v70 + v73)) & 1) != 0)
                {
                  goto LABEL_116;
                }

                if (v74 >= v12)
                {
                  if (v74 >= v69)
                  {
                    v76 = *(*(a4 + 10) + v71 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_112;
                  }

                  v77 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v73 / a7));
                  v78 = v73 % a7;
                }

                else
                {
                  if (v74 < 0)
                  {
                    v76 = 0x7FFFFFFF;
                    if ((v51 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }

LABEL_107:
                    v79 = (*(a4 + 3) + 8 * *(a4 + 4) * v50 + 8 * v74);
                    goto LABEL_115;
                  }

                  v75 = *(a4 + 7);
                  if (v75)
                  {
                    v76 = *(v75 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

LABEL_112:
                    if (v74 >= v12)
                    {
                      v79 = (*(a5 + 96) + v49 * *(a5 + 16) + v72);
                    }

                    else
                    {
                      v79 = (*(a4 + 5) + 8 * *(a4 + 6) * v74 + 8 * v51);
                    }

LABEL_115:
                    v80 = *(a11 + 4 * v76);
                    v81 = *(a2 + 24) + 8 * *(a2 + 32) * v54;
                    *(v81 + 8 * v80) = vadd_f32(*v79, *(v81 + 8 * v80));
LABEL_116:
                    ++v74;
                    ++v73;
                    v72 += 8;
                    if (v74 >= v67)
                    {
                      goto LABEL_117;
                    }

                    continue;
                  }

                  v77 = *(a6[22] + 4 * a3);
                  v78 = v12 + v73;
                }

                break;
              }

              v76 = v78 + v77 * a7;
              if (v51 < 0)
              {
                goto LABEL_107;
              }

              goto LABEL_112;
            }

LABEL_117:
            *(v48 + v45) = 1;
            ++v46;
            result = v83;
          }
        }
      }

      ++v50;
      ++v45;
      v49 += 8;
    }

    while (v50 < v47);
    if (v46 > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -v46, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_2367F07B4(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v91 = a3[4];
  if (v91 < v10)
  {
    v11 = v10 + a7;
    v12 = *a3;
    v13 = *(a3 + 7);
    v90 = *(a3 + 8);
    v89 = *(result + 24);
    v88 = *(result + 32);
    v14 = a3[4];
    v15 = 8 * v91 - 8 * v10;
    while (1)
    {
      v16 = v91;
      v17 = *(a10 + 4 * *(v90 + 4 * v14));
      v18 = v14 - v10;
      v19 = v14 >= v10 ? a3 + 10 : a3 + 6;
      v20 = v14 >= v10 ? a3 + 12 : a3 + 8;
      v21 = *v19;
      v22 = *v20;
      do
      {
        if (v18 >= 0)
        {
          v24 = v16;
        }

        else
        {
          v24 = v14;
        }

        if (v18 >= 0)
        {
          v25 = v14 - v10;
        }

        else
        {
          v25 = v16;
        }

        v23 = *(a9 + 4 * *(v13 + 4 * v16));
        *(v89 + 8 * v88 * v17 + 8 * v23) = vadd_f32(*(v21 + 8 * v22 * v24 + 8 * v25), *(v89 + 8 * v88 * v17 + 8 * v23));
        ++v16;
      }

      while (v10 != v16);
      if (v11 < v12)
      {
        break;
      }

LABEL_39:
      ++v14;
      v15 += 8;
      if (v14 == v10)
      {
        goto LABEL_40;
      }
    }

    v26 = a3[18];
    v27 = v12 - v26;
    v28 = v10 - v12 + v26;
    v29 = -4 * v12 + 4 * v26;
    v30 = 8 * v11 - 8 * v10;
    v31 = a7;
    v32 = v10 + a7;
    while (1)
    {
      if (v28 + v31 >= 0 && (*(a4[4] + (v28 + v31)) & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v32 >= v10)
      {
        break;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        v33 = *(a3 + 7);
        if (!v33)
        {
          v34 = *(a5[22] + 4 * a2);
          v35 = v10 + v31;
          goto LABEL_27;
        }

LABEL_30:
        v36 = *(v33 + 4 * v32);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v36 = 0x7FFFFFFF;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_31:
        if (v32 >= v10)
        {
          v37 = (a4[12] + v15 * a4[2] + v30);
        }

        else
        {
          v37 = (*(a3 + 5) + 8 * *(a3 + 6) * v32 + 8 * v18);
        }

        goto LABEL_34;
      }

LABEL_28:
      v37 = (*(a3 + 3) + 8 * *(a3 + 4) * v14 + 8 * v32);
LABEL_34:
      v38 = *(a9 + 4 * v36);
      v39 = *(result + 24) + 8 * *(result + 32) * v17;
      *(v39 + 8 * v38) = vadd_f32(*v37, *(v39 + 8 * v38));
LABEL_35:
      ++v32;
      ++v31;
      v30 += 8;
      if (v32 >= v12)
      {
        goto LABEL_39;
      }
    }

    if (v32 < v27)
    {
      v34 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v31 / a6));
      v35 = v31 % a6;
LABEL_27:
      v36 = v35 + v34 * a6;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v33 = *(a3 + 10) + v29;
    goto LABEL_30;
  }

LABEL_40:
  v40 = v10 + a8;
  v41 = a3[1];
  if (v10 + a8 < v41)
  {
    v42 = a3[19];
    v43 = v42 - v41;
    v44 = v40;
    v45 = v41 - v42;
    for (i = 8 * v40 - 8 * v10; ; i += 8)
    {
      if (v43 + v44 < 0 || (*(a4[6] + (v43 + v44)) & 1) == 0)
      {
        v47 = v44 - v10;
        if (v44 >= v10)
        {
          v48 = v44 >= v45 ? *(*(a3 + 11) + 4 * (v44 - v45)) : (v44 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v44 - v10) / a6)) * a6;
        }

        else if (v44 < 0)
        {
          v48 = 0x7FFFFFFF;
        }

        else
        {
          v48 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v44) : v44 + *(a5[22] + 4 * a2) * a6;
        }

        v49 = *(a10 + 4 * v48);
        if (v49 < *(result + 12))
        {
          if (v91 < v10)
          {
            v50 = *(a3 + 7);
            v51 = *(result + 24) + 8 * *(result + 32) * v49;
            v52 = 10;
            if (v47 < 0)
            {
              v52 = 6;
            }

            v53 = 12;
            if (v47 < 0)
            {
              v53 = 8;
            }

            v54 = *&a3[v52];
            v55 = *&a3[v53];
            v56 = v91;
            do
            {
              if (v47 >= 0)
              {
                v58 = v56;
              }

              else
              {
                v58 = v44;
              }

              if (v47 >= 0)
              {
                v59 = v44 - v10;
              }

              else
              {
                v59 = v56;
              }

              v57 = *(a9 + 4 * *(v50 + 4 * v56));
              *(v51 + 8 * v57) = vadd_f32(*(v54 + 8 * v55 * v58 + 8 * v59), *(v51 + 8 * v57));
              ++v56;
            }

            while (v10 != v56);
          }

          v60 = *a3;
          v61 = a3[18];
          v62 = v60 - v61;
          if (v10 + a7 < v60 - v61)
          {
            v63 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v64 = *(result + 24) + 8 * *(result + 32) * v49;
            v65 = a4[12] - 8 * v10 + a4[2] * i;
            v66 = a7;
            v67 = v10 + a7;
            do
            {
              v68 = *(a9 + 4 * (v66 % a6 + *(v63 + 4 * (v66 / a6)) * a6));
              *(v64 + 8 * v68) = vadd_f32(*(v65 + 8 * v67++), *(v64 + 8 * v68));
              ++v66;
            }

            while (v67 < v62);
          }

          if (v61 >= 1)
          {
            break;
          }
        }
      }

LABEL_91:
      if (++v44 >= v41)
      {
        return result;
      }
    }

    v69 = 0;
    v70 = v62;
    v71 = a4[4];
    v72 = v60 - v10 - v61;
    v73 = 4 * v60 - 4 * v61;
    v74 = 8 * (v60 - v10 - v61);
    v75 = v62;
    v76 = v60 - v61;
    while ((*(v71 + v69) & 1) != 0)
    {
LABEL_90:
      ++v75;
      ++v69;
      ++v72;
      v74 += 8;
      if (v70 + v69 >= v60)
      {
        goto LABEL_91;
      }
    }

    v77 = v70 + v69;
    if (v70 + v69 >= v10)
    {
      if (v77 >= v70)
      {
        v79 = *(a3 + 10);
LABEL_80:
        v82 = *(v79 + 4 * v69);
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_88:
        v83 = (*(a3 + 3) + 8 * *(a3 + 4) * v44 + 8 * v75);
LABEL_89:
        v84 = *(a9 + 4 * v82);
        v85 = *(result + 24) + 8 * *(result + 32) * v49;
        *(v85 + 8 * v84) = vadd_f32(*v83, *(v85 + 8 * v84));
        goto LABEL_90;
      }

      v80 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v72 / a6));
      v81 = v72 % a6;
    }

    else
    {
      if (v77 < 0)
      {
        v82 = 0x7FFFFFFF;
        if (v47 < 0)
        {
          goto LABEL_88;
        }

        goto LABEL_81;
      }

      v78 = *(a3 + 7);
      if (v78)
      {
        v79 = v78 + v73;
        goto LABEL_80;
      }

      v80 = *(a5[22] + 4 * a2);
      v81 = v76 + v69;
    }

    v82 = v81 + v80 * a6;
    if (v47 < 0)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v77 >= v10)
    {
      v83 = (a4[12] + i * a4[2] + v74);
    }

    else
    {
      v83 = (*(a3 + 5) + 8 * *(a3 + 6) * v77 + 8 * v47);
    }

    goto LABEL_89;
  }

  return result;
}

void sub_2367F0D38(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, double *a6, void *a7, void *a8, uint64_t *a9, void **a10, void *a11, void *a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a4;
  v499 = *(a4 + 56);
  v550 = 0;
  v549 = 0u;
  v20 = (4 * v499 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v548 = 0u;
  v547 = 0u;
  if (a3 == 83)
  {
    v23 = *(*(a6 + 9) + 4 * a1);
    v24 = *(*(a6 + 10) + 4 * a1);
    v25 = *(*(a6 + 11) + 4 * a1);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v26 = v21 + v20;
  v27 = *(*(a6 + 14) + 8 * v22) + 8;
  *(&v547 + 1) = v27;
  v551 = v24;
  v552 = v25;
  v518 = v22 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * (v22 + 1)) - *(*(a4 + 176) + 4 * v22)) * a5;
  v545 = v23;
  v546 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 8) + 4 * v22);
  }

  i = v26 + v20;
  LODWORD(v547) = v29;
  v500 = 8 * v22;
  v31 = (*(*(a4 + 200) + 8 * v518) - *(*(a4 + 200) + 8 * v22)) * a5;
  v543 = v28 + v24 + (*(*(a4 + 184) + 8 * v518) - *(*(a4 + 184) + 8 * v22)) * a5;
  v544 = v28 + v25 + v31;
  v531 = v544;
  v527 = v543;
  *&v548 = v543;
  *(&v548 + 1) = v27 + 8 * v543 * v28;
  v32 = v31 + v25;
  *&v549 = v32;
  v488 = (4 * v499 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 8 * v543 * v28 + 8 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v549 + 1) = v34;
    v550 = v33;
  }

  v501 = v29;
  v522 = v34;
  v35 = v34 + 4 * v28;
  if (v24 <= 0)
  {
    v35 = 0;
  }

  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v506 = v35;
  v553 = v35;
  v554 = v36;
  v508 = v36;
  v512 = v33;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v517 = v26 + v20;
  v540 = a5;
  v521 = v21 + v20;
  v526 = v22;
  v486 = v25;
  if (v38 < *(v37 + 8 * v518))
  {
    v505 = 0;
    v39 = v543 - v24;
    v40 = v544 - v25;
    while (1)
    {
      v41 = *(*(v18 + 248) + 4 * v38);
      if ((*(*(v18 + 256) + v38) & 2) != 0)
      {
        v42 = *a7 + 32 * v41;
        v43 = *v42;
        v44 = *(v42 + 8);
        if (v44 != *v42)
        {
          if ((v505 & 1) == 0)
          {
            sub_23672A9A0(a1, &v543, a4, a5, v26);
            v22 = v526;
            v26 = v521;
            a5 = v540;
            v45 = *a7 + 32 * v41;
            v43 = *v45;
            v44 = *(v45 + 8);
          }

          while (v43 != v44)
          {
            v542 = *v43;
            v46 = *(v26 + 4 * v542);
            if (v46 < v527)
            {
              if (v46 >= v28)
              {
                if (v46 >= v39)
                {
                  v47 = *(v506 + 4 * (v46 - v39));
                }

                else
                {
                  v47 = (v46 - v28) % a5 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v22) + 4 * ((v46 - v28) / a5)) * a5;
                }
              }

              else if ((v46 & 0x80000000) != 0)
              {
                v47 = 0x7FFFFFFF;
              }

              else if (v522)
              {
                v47 = v522[v46];
              }

              else
              {
                v47 = v46 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v47 < 0)
              {
                v47 = -v47;
              }

              if (v542 == v47)
              {
                sub_236725158(*a7 + 32 * v22, &v542);
                v22 = v526;
                v26 = v521;
                a5 = v540;
              }
            }

            ++v43;
          }

          LOBYTE(v505) = 1;
        }

        v18 = a4;
      }

      if (*(*(v18 + 256) + v38))
      {
        v48 = *a8 + 32 * v41;
        v49 = *v48;
        v50 = *(v48 + 8);
        if (v50 != *v48)
        {
          if ((v505 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v543, a4, a5, v517);
            v22 = v526;
            v26 = v521;
            a5 = v540;
            v51 = *a8 + 32 * v41;
            v49 = *v51;
            v50 = *(v51 + 8);
          }

          for (i = v517; v49 != v50; ++v49)
          {
            v542 = *v49;
            v52 = *(v517 + 4 * v542);
            if (v52 < v531)
            {
              if (v52 >= v28)
              {
                if (v52 >= v40)
                {
                  v53 = *(v508 + 4 * (v52 - v40));
                }

                else
                {
                  v53 = (v52 - v28) % a5 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v52 - v28) / a5)) * a5;
                }
              }

              else if ((v52 & 0x80000000) != 0)
              {
                v53 = 0x7FFFFFFF;
              }

              else if (v522)
              {
                v53 = v512[v52];
              }

              else
              {
                v53 = v52 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v53 < 0)
              {
                v53 = -v53;
              }

              if (v542 == v53)
              {
                sub_236725158(*a8 + 32 * v22, &v542);
                v22 = v526;
                v26 = v521;
                a5 = v540;
              }
            }
          }

          BYTE4(v505) = 1;
          v18 = a4;
          goto LABEL_60;
        }

        v18 = a4;
      }

      i = v517;
LABEL_60:
      if (++v38 >= *(*(v18 + 240) + 8 * v518))
      {
        goto LABEL_63;
      }
    }
  }

  v505 = 0;
LABEL_63:
  if (!v501)
  {
    return;
  }

  v54 = (*a7 + 32 * v22);
  v55 = (*a8 + 32 * v22);
  if (v54[1] == *v54 && v55[1] == *v55)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v56 = sub_23672AB6C(*v54, v54[1]);
  v494 = v55;
  if (v56 != v54[1])
  {
    v54[1] = v56;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v57 = sub_23672AB6C(*v55, v55[1]);
  v59 = v55[1];
  if (v57 != v59)
  {
    v58 = v55[1];
    v59 = v57;
    v55[1] = v57;
  }

  if (v522)
  {
    if (v501 >= 1)
    {
      v60 = 0;
      v61 = v522;
      v62 = v512;
      do
      {
        v63 = *v61++;
        *(a17 + 4 * v63) = v60;
        v64 = *v62++;
        *(v21 + 4 * v64) = v60--;
      }

      while (-v501 != v60);
    }
  }

  else if (v501 >= 1)
  {
    v65 = 0;
    v66 = 0;
    v67 = *(v18 + 176);
    do
    {
      *(a17 + 4 * (v66 + *(v67 + 4 * v526) * v540)) = v65;
      *(v21 + 4 * (v66 + *(v67 + 4 * v526) * v540)) = v65;
      ++v66;
      --v65;
    }

    while (v501 != v66);
  }

  v68 = a9;
  v69 = *v54;
  v70 = v54[1];
  v71 = v70 - *v54;
  if (v70 != *v54)
  {
    v72 = 0;
    v73 = v71 >> 2;
    if ((v71 >> 2) <= 1)
    {
      v73 = 1;
    }

    do
    {
      *(a17 + 4 * v69[v72]) = v72;
      ++v72;
    }

    while (v73 != v72);
  }

  v74 = *v55;
  v75 = v59 - *v55;
  if (v59 != *v55)
  {
    v76 = 0;
    v77 = v75 >> 2;
    if ((v75 >> 2) <= 1)
    {
      v77 = 1;
    }

    do
    {
      *(v21 + 4 * v74[v76]) = v76;
      ++v76;
    }

    while (v77 != v76);
  }

  v78 = i + v488;
  v79 = v75 >> 2;
  v480 = v71;
  v484 = v75;
  v80 = (v501 * (v71 >> 2));
  v495 = 8 * v80;
  v538 = i + v488;
  if (a9[1] < v80)
  {
    if (*a9)
    {
      (*(v18 + 32))(*a9, v58);
    }

    v81 = (*(v18 + 24))(v495, v58);
    v68 = a9;
    *a9 = v81;
    a9[1] = v80;
    v78 = i + v488;
  }

  v82 = v78 + 8 * v499;
  v83 = v501 * v79;
  v520 = v82;
  if (a10[1] >= v83)
  {
    v84 = 8 * v83;
  }

  else
  {
    if (*a10)
    {
      (*(v18 + 32))();
    }

    v84 = 8 * v83;
    *a10 = (*(v18 + 24))(8 * v83);
    a10[1] = v83;
    v68 = a9;
    v82 = v520;
  }

  v507 = v82 + 8 * v499;
  bzero(*v68, v495);
  bzero(*a10, v84);
  v85 = *v54;
  v86 = v54[1] - *v54;
  v87 = *v494;
  v88 = v494[1] - *v494;
  v496 = *a9;
  v491 = *a10;
  v89 = *(a6 + 12);
  v90 = *(a2 + 28);
  v91 = (v90 * v90);
  v92 = v501;
  v93 = v86 <= 0 || v501 <= 0;
  v94 = !v93;
  if (v89)
  {
    v95 = *(a6 + 13);
    if (v94)
    {
      v96 = 0;
      v532 = *(v18 + 160);
      v509 = *(a2 + 8);
      v97 = 8 * v91;
      do
      {
        if (v512)
        {
          v98 = v512[v96];
        }

        else
        {
          v98 = v96 + *(*(v18 + 176) + 4 * v526) * v90;
        }

        v99 = (v509 + 8 * *(v532 + 4 * (v98 / v90)));
        v100 = *v99;
        v101 = v99[1];
        if (*v99 < v101)
        {
          v102 = *(a2 + 16);
          v103 = v98;
          v104 = v97 * v100 + 8 * v98 % v90 * v90;
          do
          {
            v105 = *(v102 + 4 * v100);
            if ((v105 & 0x80000000) == 0 && v105 < *a2 && v90 != 0)
            {
              v107 = *(*(a4 + 136) + 4 * v105) * v90;
              v108 = (v89 + 4 * v107);
              v109 = (a17 + 4 * v107);
              v110 = v90;
              v111 = v104;
              do
              {
                v113 = *v109++;
                v112 = v113;
                if (v113 < v86 && v107 == v85[v112])
                {
                  v496[v96 * v86 + v112] = vmul_n_f32(vmul_n_f32(*(*(a2 + 32) + v111), *v108), *(v95 + 4 * v103));
                }

                v111 += 8;
                ++v108;
                ++v107;
                --v110;
              }

              while (v110);
            }

            ++v100;
            v104 += v97;
          }

          while (v100 != v101);
        }

        ++v96;
        v18 = a4;
        i = v517;
        v92 = v501;
      }

      while (v96 != v501);
    }

    if (v88 >= 1 && v92 >= 1)
    {
      v114 = 0;
      v533 = *(v18 + 312);
      v115 = v92;
      do
      {
        if (v522)
        {
          v116 = v522[v114];
        }

        else
        {
          v116 = v114 + *(*(v18 + 176) + 4 * v526) * v90;
        }

        v117 = (v533 + 8 * (v116 / v90));
        v118 = *v117;
        v119 = v117[1];
        if (v118 < v119)
        {
          v120 = *(a4 + 320);
          v121 = v116;
          v122 = 8 * (v116 % v90);
          do
          {
            v123 = *(v120 + 4 * v118) * v90;
            v124 = (v95 + 4 * v123);
            v125 = (a17 + v488 + 4 * v123);
            v126 = v90;
            v127 = v122;
            do
            {
              v129 = *v125++;
              v128 = v129;
              if (v129 < v88 && v123 == v87[v128])
              {
                v491[v114 * v88 + v128] = vmul_n_f32(vmul_n_f32(*(*(a2 + 32) + 8 * *(*(a4 + 328) + 8 * v118) * v91 + v127), *(v89 + 4 * v121)), *v124);
              }

              v127 += 8 * v90;
              ++v124;
              ++v123;
              --v126;
            }

            while (v126);
            ++v118;
          }

          while (v118 != v119);
        }

        ++v114;
        v18 = a4;
        i = v517;
      }

      while (v114 != v115);
    }
  }

  else
  {
    if (v94)
    {
      v130 = 0;
      v131 = 8 * v91;
      do
      {
        if (v512)
        {
          v132 = v512[v130];
        }

        else
        {
          v132 = v130 + *(*(v18 + 176) + 4 * v526) * v90;
        }

        v133 = *(*(v18 + 160) + 4 * (v132 / v90));
        v134 = *(a2 + 8);
        v135 = (v134 + 8 * v133);
        v136 = *v135;
        if (*v135 < v135[1])
        {
          v137 = v131 * v136 + 8 * v132 % v90 * v90;
          do
          {
            v138 = *(*(a2 + 16) + 4 * v136);
            if ((v138 & 0x80000000) == 0 && v138 < *a2 && v90 != 0)
            {
              v140 = *(*(v18 + 136) + 4 * v138) * v90;
              v141 = (a17 + 4 * v140);
              v142 = v90;
              v143 = v137;
              do
              {
                v145 = *v141++;
                v144 = v145;
                if (v145 < v86 && v140 == v85[v144])
                {
                  v496[v130 * v86 + v144] = *(*(a2 + 32) + v143);
                }

                v143 += 8;
                ++v140;
                --v142;
              }

              while (v142);
              v134 = *(a2 + 8);
            }

            ++v136;
            v137 += v131;
          }

          while (v136 < *(v134 + 8 * v133 + 8));
        }

        ++v130;
      }

      while (v130 < v501);
    }

    if (v88 >= 1)
    {
      if (v501 >= 1)
      {
        for (j = 0; j < v501; ++j)
        {
          if (v522)
          {
            v147 = v522[j];
          }

          else
          {
            v147 = j + *(*(v18 + 176) + 4 * v526) * v90;
          }

          v148 = *(v18 + 312);
          v149 = (v148 + 8 * (v147 / v90));
          v150 = *v149;
          if (*v149 < v149[1])
          {
            do
            {
              if (v90)
              {
                v151 = *(*(v18 + 320) + 4 * v150) * v90;
                v152 = (a17 + v488 + 4 * v151);
                v153 = v90;
                v154 = 8 * (v147 % v90);
                do
                {
                  v156 = *v152++;
                  v155 = v156;
                  if (v156 < v88 && v151 == v87[v155])
                  {
                    v491[j * v88 + v155] = *(*(a2 + 32) + 8 * *(*(v18 + 328) + 8 * v150) * v91 + v154);
                  }

                  v154 += 8 * v90;
                  ++v151;
                  --v153;
                }

                while (v153);
                v148 = *(v18 + 312);
              }

              ++v150;
            }

            while (v150 < *(v148 + 8 * (v147 / v90) + 8));
          }
        }
      }

      if (v486 >= 1 && v501 < v531)
      {
        v157 = v531 - v486;
        v158 = v501;
        do
        {
          if (v158 >= v28)
          {
            if (v158 >= v157)
            {
              v159 = *(v508 + 4 * (v158 - v157));
            }

            else
            {
              v159 = (v158 - v28) % v90 + *(*(v18 + 208) + 4 * *(*(v18 + 200) + 8 * v526) + 4 * ((v158 - v28) / v90)) * v90;
            }
          }

          else if (v158 < 0)
          {
            v159 = 0x7FFFFFFF;
          }

          else if (v522)
          {
            v159 = v512[v158];
          }

          else
          {
            v159 = v158 + *(*(v18 + 176) + 4 * v526) * v90;
          }

          if (v159 < 0)
          {
            v159 = -v159;
          }

          v160 = *(v21 + 4 * v159);
          if (v160 < v88 && v87[v160] == v159 && (v158 < v28 || v159 < *(*(v18 + 176) + 4 * v526) * v90))
          {
            v161 = *(*(v18 + 160) + 4 * (v159 / v90));
            v162 = *(a2 + 8);
            v163 = (v162 + 8 * v161);
            v164 = *v163;
            if (*v163 < v163[1])
            {
              v165 = &v491[v160];
              v166 = v159 % v90 * v90;
              do
              {
                v167 = *(*(a2 + 16) + 4 * v164);
                if ((v167 & 0x80000000) == 0 && v167 < *a2 && v90 != 0)
                {
                  v169 = 0;
                  v170 = *(*(v18 + 136) + 4 * v167) * v90;
                  v171 = (a17 + 4 * v170);
                  v172 = v90;
                  do
                  {
                    v174 = *v171++;
                    v173 = v174;
                    v175 = -v174;
                    if (v174 <= 0 && v501 > v175)
                    {
                      v177 = v522 ? v522[v175] : *(*(v18 + 176) + 4 * v526) * v90 - v173;
                      if (v170 == v177)
                      {
                        v165[v175 * v88] = *(*(a2 + 32) + 8 * v164 * v91 + 8 * v169 + 8 * v166);
                      }
                    }

                    ++v169;
                    ++v170;
                    --v172;
                  }

                  while (v172);
                  v162 = *(a2 + 8);
                }

                ++v164;
              }

              while (v164 < *(v162 + 8 * v161 + 8));
            }
          }

          ++v158;
        }

        while (v158 < v531);
      }
    }
  }

  if (v54[1] == *v54)
  {
    v298 = 0;
    v299 = a14;
    v300 = v507;
    goto LABEL_380;
  }

  sub_23672AB18(a14);
  v178 = *(v18 + 240);
  v179 = *(v178 + 8 * v526);
  v180 = *(v178 + 8 * v518);
  v181 = v507;
  if (v179 >= v180)
  {
    v535 = 0;
    v187 = a6;
    goto LABEL_368;
  }

  v182 = 0;
  v183 = *(v18 + 256);
  v184 = *a14;
  v186 = v540;
  LODWORD(v185) = a3;
  v187 = a6;
  do
  {
    if ((*(v183 + v179) & 2) != 0)
    {
      v188 = *(*(v18 + 248) + 4 * v179);
      *(v507 + 4 * v182++) = v188;
      *(v184 + 4 * v188) = *(a14 + 4);
    }

    ++v179;
  }

  while (v180 != v179);
  if (v182 < 1)
  {
    v535 = v182;
    goto LABEL_368;
  }

  do
  {
    v189 = v182 - 1;
    v190 = *(v181 + 4 * v189);
    if (v185 == 83)
    {
      v191 = *(*(v187 + 9) + 4 * v190);
      LODWORD(v192) = *(*(v187 + 10) + 4 * v190);
      LODWORD(v193) = *(*(v187 + 11) + 4 * v190);
    }

    else
    {
      v191 = 0;
      LODWORD(v192) = 0;
      LODWORD(v193) = 0;
    }

    v194 = *(v18 + 176);
    v195 = v190 + 1;
    v196 = v191 + (*(v194 + 4 * (v190 + 1)) - *(v194 + 4 * v190)) * v186;
    v528 = v196;
    if (v185 == 83)
    {
      v528 = *(*(v187 + 8) + 4 * v190);
    }

    v197 = *(v187 + 14);
    v198 = *(v18 + 184);
    v199 = *(v198 + 8 * v195);
    v200 = *(v198 + 8 * v190);
    v201 = v196 + v192 + (v199 - v200) * v186;
    v202 = *(v18 + 200);
    v203 = *(v202 + 8 * v195);
    v204 = *(v202 + 8 * v190);
    v513 = *(v197 + 8 * v190) + 8;
    v205 = v193 + (v203 - v204) * v186;
    v206 = (v194 + 4 * v526);
    v534 = v189;
    v523 = *(v181 + 4 * v189);
    v510 = v513 + 8 * v201 * v196;
    v502 = v205;
    v492 = v201;
    if (v185 == 81)
    {
      v207 = 0;
      v489 = 0;
      if (v192 <= 0)
      {
        v208 = 0;
      }

      else
      {
        v208 = v196;
      }

      v209 = 4 * v208;
      if (v193 <= 0)
      {
        v210 = 0;
      }

      else
      {
        v210 = v196;
      }

      v211 = (4 * v210);
    }

    else
    {
      v207 = v513 + 8 * v201 * v196 + 8 * v205 * v196;
      if (v192 <= 0)
      {
        v209 = 0;
      }

      else
      {
        v209 = v207 + 4 * v196;
      }

      v489 = v207 + 4 * v196 + 4 * v192;
      v211 = (v489 + 4 * v196);
      if (v193 <= 0)
      {
        v211 = 0;
      }

      if (v185 == 83)
      {
        v212 = *(v187 + 8);
        v213 = *(*(v187 + 9) + 4 * v526);
        v214 = *(*(v187 + 10) + 4 * v526);
        v215 = *(*(v187 + 11) + 4 * v526);
        v216 = v540;
        v217 = v213 + (*(v194 + 4 * v518) - *v206) * v540;
        v218 = *(v212 + 4 * v526);
        goto LABEL_240;
      }
    }

    v215 = 0;
    v214 = 0;
    v216 = v540;
    v217 = (*(v194 + 4 * v518) - *v206) * v540;
    v218 = v217;
LABEL_240:
    v219 = *v54;
    v220 = (v54[1] - *v54) >> 2;
    v497 = *a9;
    v221 = *(v197 + 8 * v526) + 8 * (v214 + v217 + (*(v198 + 8 * v518) - *(v198 + v500)) * v216) * v217 + 8 * (v215 + (*(v202 + 8 * v518) - *(v202 + v500)) * v216) * v217 + 4 * v217 + 4 * v214 + 8;
    if (a3 == 81)
    {
      v222 = 0;
    }

    else
    {
      v222 = v221;
    }

    v223 = v528;
    if (v528 >= v196)
    {
      v224 = 0;
      v235 = v528;
      v228 = v538;
    }

    else
    {
      v224 = 0;
      v225 = v528 - v196;
      v226 = (v207 + 4 * v528);
      v227 = v528;
      v228 = v538;
      do
      {
        v230 = *v226++;
        v229 = v230;
        if (v230 >= 0)
        {
          v231 = v229;
        }

        else
        {
          v231 = -v229;
        }

        v232 = *(a17 + 4 * v231);
        if ((v232 & 0x80000000) == 0 && v232 < v220 && v219[v232] == v231)
        {
          v233 = (v538 + 8 * v224);
          *v233 = v227;
          v233[1] = v232;
          ++v224;
        }

        ++v227;
        v234 = __CFADD__(v225++, 1);
      }

      while (!v234);
      v235 = v196;
    }

    if (v199 > v200)
    {
      v236 = *(a4 + 192);
      do
      {
        if (v540 >= 1)
        {
          v237 = *(v236 + 4 * v200) * v540;
          v238 = v237 + v540;
          do
          {
            v239 = *(a17 + 4 * v237);
            if ((v239 & 0x80000000) == 0 && v239 < v220 && v237 == v219[v239])
            {
              v240 = &v228[v224++];
              *v240 = v235;
              v240[1] = v239;
            }

            ++v237;
            ++v235;
          }

          while (v237 < v238);
        }

        ++v200;
      }

      while (v200 != v199);
    }

    if (v192 < 1)
    {
      v18 = a4;
      v241 = v520;
    }

    else
    {
      v192 = v192;
      v18 = a4;
      v241 = v520;
      do
      {
        v242 = *v209;
        v209 += 4;
        v200 = v242;
        v199 = *(a17 + 4 * v242);
        if ((v199 & 0x80000000) == 0 && v199 < v220)
        {
          if (v219[v199] == v200)
          {
            v200 = &v228[v224];
            *v200 = v235;
            *(v200 + 4) = v199;
            ++v224;
          }

          v241 = v520;
        }

        ++v235;
        --v192;
      }

      while (v192);
    }

    v186 = v540;
    v185 = a3;
    if (v224)
    {
      if (v528 >= v196)
      {
        v243 = 0;
        v249 = v528;
      }

      else
      {
        v243 = 0;
        v244 = v528 - v196;
        v245 = (v489 + 4 * v528);
        do
        {
          v247 = *v245++;
          v246 = v247;
          if (v247 >= 0)
          {
            v199 = v246;
          }

          else
          {
            v199 = -v246;
          }

          v200 = *(v21 + 4 * v199);
          v209 = -v200;
          if (v200 <= 0 && v218 > v209)
          {
            if (v185 == 81)
            {
              v200 = (*v206 * v540 - v200);
              v185 = a3;
            }

            else
            {
              v200 = *(v221 + 4 * v209);
            }

            if (v200 == v199)
            {
              v199 = &v241[v243];
              v200 = (v243 + 1);
              *v199 = v223;
              *(v199 + 4) = v209;
              ++v243;
            }
          }

          ++v223;
          v234 = __CFADD__(v244++, 1);
        }

        while (!v234);
        v249 = v196;
      }

      if (v203 > v204)
      {
        v250 = *(v18 + 208);
        do
        {
          if (v540 >= 1)
          {
            v251 = *(v250 + 4 * v204) * v540;
            v209 = v251 + v540;
            do
            {
              v200 = *(v21 + 4 * v251);
              v199 = -v200;
              if (v200 <= 0 && v218 > v199)
              {
                if (v185 == 81)
                {
                  v200 = (*v206 * v540 - v200);
                }

                else
                {
                  v200 = *(v221 + 4 * v199);
                }

                if (v251 == v200)
                {
                  v200 = &v241[v243];
                  *v200 = v249;
                  *(v200 + 4) = v199;
                  ++v243;
                }

                v185 = a3;
              }

              ++v251;
              ++v249;
            }

            while (v251 < v209);
          }

          ++v204;
        }

        while (v204 != v203);
      }

      if (v193 < 1)
      {
        v253 = v528;
        if (!v243)
        {
          goto LABEL_355;
        }

LABEL_323:
        v260 = v224 * v253;
        if (a11[1] < (v224 * v253))
        {
          if (*a11)
          {
            (*(v18 + 32))(*a11, v209, v199, v200, v185, v540);
          }

          *a11 = (*(v18 + 24))(8 * v260);
          a11[1] = v260;
          v228 = v538;
          v241 = v520;
          v253 = v528;
        }

        v261 = v224;
        v262 = v253;
        v263 = v513;
        if (v253 >= 1)
        {
          v264 = 0;
          for (k = 0; k != v253; ++k)
          {
            if (v224 >= 1)
            {
              v266 = v228;
              v267 = v264;
              v268 = v224;
              do
              {
                v269 = *v266++;
                *(*a11 + v267) = *(v513 + 8 * k * v492 + 8 * v269);
                v267 += 8;
                --v268;
              }

              while (v268);
            }

            v264 += 8 * v224;
          }
        }

        v270 = v243 * v253;
        if (a12[1] < (v243 * v253))
        {
          v271 = a4;
          if (*a12)
          {
            (*(a4 + 32))(*a12, v224);
            v271 = a4;
          }

          *a12 = (*(v271 + 24))(8 * v270, v261);
          a12[1] = v270;
          v241 = v520;
          v253 = v528;
          v263 = v513;
        }

        v272 = v243;
        v18 = a4;
        v273 = v510;
        v274 = v502;
        if (v253 >= 1)
        {
          v275 = 0;
          v276 = 0;
          do
          {
            if (v243 >= 1)
            {
              v277 = v241;
              v278 = v275;
              v279 = v243;
              do
              {
                v280 = *v277++;
                v281 = v510 + 8 * v276 * v502 + 8 * (v280 - v196);
                v282 = (v263 + 8 * v276 + 8 * v280 * v492);
                if (v280 >= v196)
                {
                  v282 = v281;
                }

                *(*a12 + v278) = *v282;
                v278 += 8;
                --v279;
              }

              while (v279);
            }

            ++v276;
            v275 += 8 * v243;
          }

          while (v276 != v262);
        }

        v283 = v243 * v224;
        v284 = *a13;
        if (a13[1] < (v243 * v224))
        {
          if (v284)
          {
            (*(a4 + 32))(v284, v510, v502, v243);
          }

          *a13 = (*(a4 + 24))(8 * v283, v273, v274, v272);
          a13[1] = v283;
        }

        cblas_cgemm_NEWLAPACK();
        v186 = v540;
        LODWORD(v185) = a3;
        if (v243 >= 1)
        {
          v285 = 0;
          v286 = *a13;
          do
          {
            if (v224 >= 1)
            {
              v287 = &v497[8 * SHIDWORD(v520[v285]) * (v480 >> 2)];
              v288 = v538;
              v289 = v286;
              v290 = v224;
              do
              {
                v291 = *v289++;
                *&v287[8 * *(v288 + 4)] = vadd_f32(v291, *&v287[8 * *(v288 + 4)]);
                v288 += 8;
                --v290;
              }

              while (v290);
            }

            ++v285;
            v286 += v224;
          }

          while (v285 != v243);
        }

        goto LABEL_355;
      }

      v193 = v193;
      v253 = v528;
      do
      {
        v255 = *v211++;
        v254 = v255;
        v256 = *(v21 + 4 * v255);
        v257 = -v256;
        v258 = v256 > 0 || v218 <= v257;
        if (!v258 && *(v222 + 4 * v257) == v254)
        {
          v259 = &v241[v243];
          *v259 = v249;
          v259[1] = v257;
          ++v243;
        }

        ++v249;
        --v193;
      }

      while (v193);
      if (v243)
      {
        goto LABEL_323;
      }
    }

LABEL_355:
    v292 = (*(v18 + 240) + 8 * v523);
    v293 = *v292;
    v294 = v292[1];
    if (v293 >= v294)
    {
      v187 = a6;
      v181 = v507;
      v182 = v534;
    }

    else
    {
      v295 = *(v18 + 256);
      v296 = *a14;
      v187 = a6;
      v181 = v507;
      v182 = v534;
      do
      {
        if ((*(v295 + v293) & 2) != 0)
        {
          v297 = *(*(v18 + 248) + 4 * v293);
          if (*(v296 + 4 * v297) < *(a14 + 4))
          {
            *(v507 + 4 * v182++) = v297;
            *(v296 + 4 * v297) = *(a14 + 4);
          }
        }

        ++v293;
      }

      while (v294 != v293);
    }
  }

  while (v182 >= 1);
  v535 = v182;
  v501 = v547;
LABEL_368:
  cblas_ctrsm_NEWLAPACK();
  if (v501 < 1)
  {
    v308 = 0.0;
  }

  else
  {
    v301 = 0;
    v529 = v54[1];
    v524 = *v54;
    v302 = v529 - *v54;
    if (v302 <= 1)
    {
      v302 = 1;
    }

    v514 = v302;
    v303 = *a9 + 4;
    v304 = 0.0;
    do
    {
      v305 = v514;
      v306 = v303;
      if (v529 != v524)
      {
        do
        {
          v307 = hypotf(*(v306 - 1), *v306);
          if (v307 >= v304)
          {
            v304 = v307;
          }

          v306 += 2;
          --v305;
        }

        while (v305);
      }

      ++v301;
      v303 += 8 * (v480 >> 2);
    }

    while (v301 != v501);
    v308 = v304;
    v18 = a4;
    v187 = a6;
  }

  v309 = 1.0 / v187[2];
  i = v517;
  v299 = a14;
  v300 = v507;
  v298 = v535;
  if (v309 < v308)
  {
    *(a15 + v526) = 1;
    v320 = *(v18 + 168);
    if (v518 >= v320)
    {
      return;
    }

    while (1)
    {
      if ((*(a15 + v518) & 1) == 0)
      {
        v321 = (*(v18 + 240) + 8 * v518);
        v323 = *v321;
        v322 = v321[1];
        v93 = v322 <= v323;
        v324 = v322 - v323;
        if (!v93)
        {
          v325 = (*(v18 + 248) + 4 * v323);
          while (1)
          {
            v326 = *v325++;
            if (*(a15 + v326) == 1)
            {
              break;
            }

            if (!--v324)
            {
              goto LABEL_395;
            }
          }

          *(a15 + v518) = 1;
        }
      }

LABEL_395:
      if (v320 == ++v518)
      {
        return;
      }
    }
  }

LABEL_380:
  v310 = (v484 >> 2);
  if (v494[1] == *v494)
  {
    goto LABEL_541;
  }

  sub_23672AB18(v299);
  v311 = v526;
  v312 = *(v18 + 240);
  v313 = *(v312 + 8 * v526);
  v493 = v312;
  v314 = *(v312 + 8 * v518);
  if (v313 >= v314)
  {
    LODWORD(v317) = v540;
    v318 = a3;
  }

  else
  {
    v315 = *(v18 + 256);
    v316 = *v299;
    LODWORD(v317) = v540;
    v318 = a3;
    do
    {
      if (*(v315 + v313))
      {
        v319 = *(*(v18 + 248) + 4 * v313);
        *(v300 + 4 * v298++) = v319;
        *(v316 + 4 * v319) = *(v299 + 16);
      }

      ++v313;
    }

    while (v314 != v313);
  }

  while (2)
  {
    if (v298 >= 1)
    {
      v327 = v298 - 1;
      v328 = *(v300 + 4 * v327);
      if (v318 == 83)
      {
        v329 = a6;
        v330 = *(*(a6 + 9) + 4 * v328);
        LODWORD(v331) = *(*(a6 + 10) + 4 * v328);
        v332 = *(*(a6 + 11) + 4 * v328);
      }

      else
      {
        v330 = 0;
        LODWORD(v331) = 0;
        v332 = 0;
        v329 = a6;
      }

      v333 = *(v18 + 176);
      v334 = v328 + 1;
      v335 = v330 + (*(v333 + 4 * (v328 + 1)) - *(v333 + 4 * v328)) * v317;
      v336 = v335;
      if (v318 == 83)
      {
        v336 = *(*(v329 + 8) + 4 * v328);
      }

      v530 = v336;
      v337 = *(v329 + 14);
      v338 = *(v18 + 184);
      v339 = *(v338 + 8 * v334);
      v340 = *(v338 + 8 * v328);
      v341 = *(v18 + 200);
      v342 = *(v341 + 8 * v334);
      v343 = *(v341 + 8 * v328);
      v483 = v335 + v331 + (v339 - v340) * v317;
      v503 = *(v337 + 8 * v328) + 8;
      v344 = v332 + (v342 - v343) * v317;
      v345 = (v333 + 4 * v311);
      v536 = v327;
      v525 = v328;
      v487 = v344;
      v490 = v503 + 8 * v483 * v335;
      v515 = v332;
      if (v318 == 81)
      {
        v498 = 0;
        v481 = 0;
        if (v331 <= 0)
        {
          v346 = 0;
        }

        else
        {
          v346 = v335;
        }

        v347 = (4 * v346);
        v348 = v335;
        if (v332 <= 0)
        {
          v349 = 0;
        }

        else
        {
          v349 = v335;
        }

        v350 = (4 * v349);
      }

      else
      {
        v498 = v503 + 8 * v483 * v335 + 8 * v344 * v335;
        v351 = v498 + 4 * v335;
        if (v331 <= 0)
        {
          v347 = 0;
        }

        else
        {
          v347 = (v498 + 4 * v335);
        }

        v348 = v335;
        v481 = v351 + 4 * v331;
        if (v332 <= 0)
        {
          v350 = 0;
        }

        else
        {
          v350 = (v351 + 4 * v331 + 4 * v335);
        }

        if (v318 == 83)
        {
          v352 = *(v329 + 8);
          v353 = *(*(v329 + 9) + 4 * v526);
          v354 = *(*(v329 + 10) + 4 * v526);
          v355 = *(*(v329 + 11) + 4 * v526);
          v356 = v540;
          v357 = v353 + (*(v333 + 4 * v518) - *v345) * v540;
          v358 = *(v352 + 4 * v526);
          v318 = a3;
          goto LABEL_420;
        }
      }

      v355 = 0;
      v354 = 0;
      v356 = v540;
      v357 = (*(v333 + 4 * v518) - *v345) * v540;
      v358 = v357;
LABEL_420:
      v359 = 0;
      v360 = *(v337 + 8 * v526);
      v361 = *v494;
      v511 = v494[1];
      v485 = *a10;
      v362 = v360 + 8 * (v354 + v357 + (*(v338 + 8 * v518) - *(v338 + v500)) * v356) * v357 + 8 * (v355 + (*(v341 + 8 * v518) - *(v341 + v500)) * v356) * v357;
      v363 = v362 + 8;
      if (v318 == 81)
      {
        v364 = 0;
      }

      else
      {
        v364 = v362 + 8;
      }

      v365 = v530;
      v366 = v348;
      if (v530 < v335)
      {
        v359 = 0;
        v367 = v530 - v348;
        v368 = (v498 + 4 * v530);
        v369 = v530;
        do
        {
          v371 = *v368++;
          v370 = v371;
          if (v371 >= 0)
          {
            v372 = v370;
          }

          else
          {
            v372 = -v370;
          }

          v373 = *(a17 + 4 * v372);
          v374 = -v373;
          if (v373 <= 0 && v358 > v374)
          {
            if (v318 == 81)
            {
              v318 = a3;
              v376 = *v345 * v540 - v373;
            }

            else
            {
              v376 = *(v363 + 4 * v374);
            }

            if (v376 == v372)
            {
              v377 = (v538 + 8 * v359++);
              *v377 = v369;
              v377[1] = v374;
            }
          }

          ++v369;
          v234 = __CFADD__(v367++, 1);
        }

        while (!v234);
        v365 = v335;
      }

      if (v339 > v340)
      {
        v378 = *(a4 + 192);
        do
        {
          if (v540 >= 1)
          {
            v379 = *(v378 + 4 * v340) * v540;
            v380 = v379 + v540;
            v381 = v379;
            do
            {
              v382 = *(a17 + 4 * v381);
              v383 = -v382;
              if (v382 <= 0 && v358 > v383)
              {
                if (v318 == 81)
                {
                  v385 = *v345 * v540 - v382;
                  v318 = a3;
                }

                else
                {
                  v385 = *(v363 + 4 * v383);
                }

                if (v381 == v385)
                {
                  v386 = (v538 + 8 * v359++);
                  *v386 = v365;
                  v386[1] = v383;
                }
              }

              ++v381;
              ++v365;
            }

            while (v381 < v380);
          }

          ++v340;
        }

        while (v340 != v339);
      }

      if (v331 < 1)
      {
        v317 = v540;
        v387 = v538;
      }

      else
      {
        v331 = v331;
        v317 = v540;
        v387 = v538;
        do
        {
          v389 = *v347++;
          v388 = v389;
          v390 = *(a17 + 4 * v389);
          v391 = -v390;
          v392 = v390 > 0 || v358 <= v391;
          if (!v392 && *(v364 + 4 * v391) == v388)
          {
            v393 = (v538 + 8 * v359++);
            *v393 = v365;
            v393[1] = v391;
          }

          ++v365;
          --v331;
        }

        while (v331);
      }

      v18 = a4;
      if (v359)
      {
        v394 = (v511 - v361) >> 2;
        v395 = v520;
        v396 = 0;
        if (v530 >= v335)
        {
          v404 = v530;
        }

        else
        {
          v397 = v530 - v366;
          v398 = (v481 + 4 * v530);
          v399 = v530;
          do
          {
            v401 = *v398++;
            v400 = v401;
            if (v401 < 0)
            {
              v400 = -v400;
            }

            v402 = *(v21 + 4 * v400);
            if ((v402 & 0x80000000) == 0 && v402 < v394)
            {
              v340 = v361[v402];
              if (v340 == v400)
              {
                v403 = &v520[v396++];
                *v403 = v399;
                v403[1] = v402;
              }
            }

            ++v399;
            v234 = __CFADD__(v397++, 1);
          }

          while (!v234);
          v404 = v335;
        }

        if (v342 > v343)
        {
          v405 = *(a4 + 208);
          do
          {
            if (v317 >= 1)
            {
              v406 = *(v405 + 4 * v343) * v317;
              v407 = v406;
              v408 = v406 + v317;
              do
              {
                v340 = *(v21 + 4 * v407);
                if ((v340 & 0x80000000) == 0 && v340 < v394 && v407 == v361[v340])
                {
                  v409 = &v520[v396++];
                  *v409 = v404;
                  v409[1] = v340;
                }

                ++v407;
                ++v404;
              }

              while (v407 < v408);
            }

            ++v343;
          }

          while (v343 != v342);
        }

        if (v515 >= 1)
        {
          v410 = v515;
          v311 = v526;
          do
          {
            v412 = *v350++;
            v411 = v412;
            v413 = *(v21 + 4 * v412);
            if ((v413 & 0x80000000) == 0 && v413 < v394 && v361[v413] == v411)
            {
              v414 = &v520[v396++];
              *v414 = v404;
              v414[1] = v413;
            }

            ++v404;
            --v410;
          }

          while (v410);
          if (!v396)
          {
            goto LABEL_530;
          }

          goto LABEL_500;
        }

        v311 = v526;
        if (v396)
        {
LABEL_500:
          v415 = v530;
          v416 = v530 * v359;
          if (a11[1] < (v530 * v359))
          {
            if (*a11)
            {
              (*(a4 + 32))(*a11, v340, v317, v520, v318, v364);
            }

            *a11 = (*(a4 + 24))(8 * v416);
            a11[1] = v416;
            v387 = v538;
            v395 = v520;
            v415 = v530;
          }

          v417 = v415;
          v418 = v503;
          if (v415 >= 1)
          {
            v419 = 0;
            v420 = 0;
            do
            {
              v421 = v387;
              v422 = v419;
              v423 = v359;
              do
              {
                v424 = *v421++;
                *(*a11 + v422) = *(v503 + 8 * v420 * v483 + 8 * v424);
                v422 += 8;
                --v423;
              }

              while (v423);
              ++v420;
              v419 += 8 * v359;
            }

            while (v420 != v417);
          }

          v425 = v530;
          v426 = v530 * v396;
          if (a12[1] < (v530 * v396))
          {
            v427 = a4;
            if (*a12)
            {
              (*(a4 + 32))(*a12, v340, v317, v395, v318, v364);
              v427 = a4;
              v426 = v530 * v396;
            }

            v516 = v426;
            *a12 = (*(v427 + 24))(8 * v426);
            a12[1] = v516;
            v395 = v520;
            v425 = v530;
            v418 = v503;
          }

          v429 = v487;
          v428 = v503 + 8 * v483 * v335;
          if (v425 >= 1)
          {
            v430 = 0;
            v431 = 0;
            do
            {
              v432 = v395;
              v433 = v430;
              v434 = v396;
              do
              {
                v435 = *v432++;
                v436 = v490 + 8 * v431 * v487 + 8 * (v435 - v335);
                v437 = (v418 + 8 * v431 + 8 * v435 * v483);
                if (v435 >= v335)
                {
                  v437 = v436;
                }

                *(*a12 + v433) = *v437;
                v433 += 8;
                --v434;
              }

              while (v434);
              ++v431;
              v430 += 8 * v396;
            }

            while (v431 != v417);
          }

          v438 = v396 * v359;
          v439 = *a13;
          if (a13[1] >= v438)
          {
            v440 = a13;
          }

          else
          {
            if (v439)
            {
              (*(a4 + 32))(v439, v490, v487, v395);
            }

            v440 = a13;
            *a13 = (*(a4 + 24))(8 * v438, v428, v429, v395);
            a13[1] = v438;
          }

          cblas_cgemm_NEWLAPACK();
          v441 = 0;
          v442 = *v440;
          v18 = a4;
          LODWORD(v317) = v540;
          v318 = a3;
          v311 = v526;
          do
          {
            v443 = &v485[8 * SHIDWORD(v520[v441])];
            v444 = v538;
            v445 = v442;
            v446 = v359;
            do
            {
              v447 = *(v444 + 4) * v310;
              v448 = *v445++;
              *&v443[8 * v447] = vadd_f32(v448, *&v443[8 * v447]);
              v444 += 8;
              --v446;
            }

            while (v446);
            ++v441;
            v442 += v359;
          }

          while (v441 != v396);
          v493 = *(a4 + 240);
        }
      }

      else
      {
        v311 = v526;
      }

LABEL_530:
      v449 = (v493 + 8 * v525);
      v450 = *v449;
      v451 = v449[1];
      if (*v449 >= v451)
      {
        i = v517;
        v300 = v507;
        v298 = v536;
      }

      else
      {
        v452 = *(v18 + 256);
        v453 = *a14;
        i = v517;
        v300 = v507;
        v298 = v536;
        do
        {
          if (*(v452 + v450))
          {
            v454 = *(*(v18 + 248) + 4 * v450);
            if (*(v453 + 4 * v454) < *(a14 + 4))
            {
              *(v507 + 4 * v298++) = v454;
              *(v453 + 4 * v454) = *(a14 + 4);
            }
          }

          ++v450;
        }

        while (v451 != v450);
      }

      continue;
    }

    break;
  }

  if (v547 > 1)
  {
    cblas_ctrsm_NEWLAPACK();
  }

LABEL_541:
  v455 = v540;
  v456 = a9;
  if ((v505 & 1) == 0 && v54[1] != *v54)
  {
    sub_23672A9A0(a1, &v543, v18, v540, v521);
    v456 = a9;
    v455 = v540;
  }

  v457 = v547;
  if (v547 >= 1)
  {
    v458 = 0;
    v459 = 0;
    v460 = *(&v547 + 1);
    v461 = v548;
    v462 = *v54;
    v463 = v54[1];
    do
    {
      if (v463 == v462)
      {
        v463 = v462;
      }

      else
      {
        v464 = 0;
        v465 = v458;
        do
        {
          *(v460 + 8 * v461 * v459 + 8 * *(v521 + 4 * v462[v464++])) = *(*v456 + v465);
          v462 = *v54;
          v463 = v54[1];
          v465 += 8;
        }

        while (v464 < v463 - *v54);
      }

      ++v459;
      v458 += 8 * (v480 >> 2);
    }

    while (v459 != v457);
  }

  if ((v505 & 0x100000000) == 0 && v494[1] != *v494)
  {
    sub_23672AA5C(a1, &v543, v18, v455, i);
  }

  if (v457 >= 1)
  {
    v466 = 0;
    v467 = 0;
    v468 = v546;
    v469 = *(&v548 + 1);
    v470 = v549;
    v471 = *(&v547 + 1);
    v472 = v548;
    v473 = *v494;
    v474 = v494[1];
    do
    {
      if (v474 == v473)
      {
        v474 = v473;
      }

      else
      {
        v475 = 0;
        v476 = v466;
        do
        {
          v477 = *(i + 4 * v473[v475]);
          v93 = v477 < v468;
          v478 = v469 + 8 * v470 * v467 + 8 * (v477 - v468);
          v479 = (v471 + 8 * v467 + 8 * v472 * v477);
          if (!v93)
          {
            v479 = v478;
          }

          *v479 = *(*a10 + v476);
          ++v475;
          v473 = *v494;
          v474 = v494[1];
          v476 += 8;
        }

        while (v475 < v474 - *v494);
      }

      ++v467;
      v466 += 8 * v310;
    }

    while (v467 != v457);
  }
}

uint64_t sub_2367F3018(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int *a8, int *a9, uint64_t a10, int a11, uint64_t *a12, void *a13, float32x2_t **a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = a6;
  v28 = a5;
  v646 = *MEMORY[0x277D85DE8];
  v30 = *(a5 + 56);
  v31 = 4 * v30;
  v581 = *(&off_28499C330 + a4 - 81);
  v582 = 4 * v30 + 7;
  v622 = a23 + (v582 & 0xFFFFFFFFFFFFFFF8);
  v593 = v622 + (v582 & 0xFFFFFFFFFFFFFFF8);
  v587 = (v593 + 8 * v30);
  v32 = &v587[v30];
  v33 = (v32 + (v582 & 0xFFFFFFFFFFFFFFF8) + (v582 & 0xFFFFFFFFFFFFFFF8));
  v634 = 0u;
  v635 = 0u;
  v632 = 0u;
  v633 = 0u;
  v630 = 0u;
  v631 = 0u;
  v34 = a1;
  v35 = a1 + 1;
  v36 = *(a5 + 184);
  v37 = *(*(a5 + 176) + 4 * v35) - *(*(a5 + 176) + 4 * a1);
  v38 = v37 * a6;
  HIDWORD(v630) = v37 * a6;
  v39 = 8 * a1;
  *(&v631 + 1) = *(a7[14] + v39) + 8;
  v597 = v35;
  v40 = 8 * v35;
  LODWORD(v36) = *(v36 + 8 * v35) - *(v36 + v39);
  v41 = *(a5 + 168);
  LODWORD(v630) = (v37 + v36) * a6;
  v42 = (*(*(a5 + 200) + v40) - *(*(a5 + 200) + v39)) * a6;
  DWORD1(v630) = v42 + v37 * a6;
  v594 = v33 + (v582 & 0xFFFFFFFFFFFFFFF8) + (v582 & 0xFFFFFFFFFFFFFFF8);
  v584 = v41;
  *&v632 = v630;
  *(&v632 + 1) = *(&v631 + 1) + 8 * v630 * (v37 * a6);
  v607 = v594 + 8 * v41;
  v596 = v607 + (v582 & 0xFFFFFFFFFFFFFFF8);
  if (a4 != 82)
  {
    v31 = 0;
  }

  v580 = v31;
  if (a4 == 82)
  {
    v43 = v596 + (v582 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v43 = 0;
  }

  v579 = v43;
  *&v633 = v42;
  v624 = a1;
  v585 = v30;
  if (a4 == 81)
  {
    v576 = 0uLL;
    v575 = 0uLL;
    v44 = 0;
    v45 = 1;
    goto LABEL_53;
  }

  v44 = *(&v631 + 1) + 8 * v630 * v38 + 8 * v42 * v38;
  *(&v633 + 1) = v44;
  *&v634 = v44 + 4 * v38;
  if (a4 == 83)
  {
    v46 = v30 & 0x3FFFFFFFFFFFFFFFLL;
    sub_2367EF380(__src, a1, 1, 83, a5, a6, a7, a10, (v32 + (v582 & 0xFFFFFFFFFFFFFFF8)), v30 & 0x3FFFFFFFFFFFFFFFLL, (v33 + (v582 & 0xFFFFFFFFFFFFFFF8)), v30 & 0x3FFFFFFFFFFFFFFFLL);
    v623 = *__src;
    v47 = *&__src[8];
    v576 = *&__src[16];
    sub_2367EF380(__src, a1, 2, 83, a5, a6, a7, a10, v32, v46, v33, v46);
    v48 = 0;
    v49 = *__src;
    v50 = *&__src[8];
    v575 = *&__src[16];
    v51 = a7;
    *(a7[10] + 4 * v624) = *&__src[8];
    *(a7[11] + 4 * v624) = v47;
    v52 = a7[9];
    *(v52 + 4 * v624) = 0;
    v53 = *(a5 + 240);
    v54 = *(v53 + 8 * v624);
    v55 = *(v53 + 8 * v597);
    v27 = a6;
    if (v54 < v55)
    {
      v48 = 0;
      v56 = *(a5 + 256);
      do
      {
        if (*(v56 + v54) == 3)
        {
          v57 = *(*(a5 + 248) + 4 * v54);
          v48 += *(v52 + 4 * v57) + (*(*(a5 + 176) + 4 * v57 + 4) - *(*(a5 + 176) + 4 * v57)) * a6 - *(a7[8] + 4 * v57);
          *(v52 + 4 * v624) = v48;
        }

        ++v54;
      }

      while (v55 != v54);
    }

    if (v48 > 0 || v47 || v50)
    {
      v58 = SHIDWORD(v630);
      v59 = HIDWORD(v630) + v48;
      v60 = v48 + v50 + v630;
      v61 = v48 + v47 + DWORD1(v630);
      v62 = 4 * (v47 + v50 + 2 * v59) + 8 * (v61 * v59 + (v60 * v59)) + 8;
      v63 = a7[14];
      v64 = *(v63 + 8 * v624);
      if (v62 > *v64)
      {
        v613 = SHIDWORD(v630);
        if (*v64)
        {
          (*(a5 + 32))();
        }

        v65 = (*(a5 + 24))(4 * (v47 + v50 + 2 * v59) + 8 * (v61 * v59 + (v60 * v59)) + 8);
        v51 = a7;
        *(a7[14] + 8 * v624) = v65;
        v63 = a7[14];
        v64 = *(v63 + 8 * v624);
        if (!v64)
        {
          v564 = *(a5 + 40);
          if (!v564)
          {
            v565 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v565)
            {
              sub_23672B14C(v565, v566, v567, v568, v569, v570, v571, v572);
            }

            _SparseTrap();
          }

          memset(v645, 0, sizeof(v645));
          v644 = 0u;
          v643 = 0u;
          v642 = 0u;
          v641 = 0u;
          v640 = 0u;
          v639 = 0u;
          v638 = 0u;
          v637 = 0u;
          memset(&__src[58], 0, 48);
          strcpy(__src, "Failed to allocate additional storage for delayed pivots\n");
          v564(__src);
          return 4294967293;
        }

        *v64 = v62;
        v52 = a7[9];
        v48 = *(v52 + 4 * v624);
        v58 = v613;
      }

      v66 = &v64[(v60 - v59 + v61) * v59 + 1];
      v67 = (v66 + 4 * v59);
      v68 = &v67[4 * v50];
      v27 = a6;
      if (v48 >= 1)
      {
        v69 = *(a5 + 240);
        v70 = *(v69 + 8 * v624);
        v71 = *(v69 + 8 * v597);
        if (v70 < v71)
        {
          v72 = &v68[4 * v58];
          v73 = *(a5 + 256);
          v74 = v66 + 4 * v58;
          do
          {
            if (*(v73 + v70) == 3)
            {
              v75 = *(*(a5 + 248) + 4 * v70);
              v76 = *(v52 + 4 * v75) + (*(*(a5 + 176) + 4 * (v75 + 1)) - *(*(a5 + 176) + 4 * v75)) * a6;
              v77 = *(v51[8] + 4 * v75);
              if (v77 < v76)
              {
                v78 = 0;
                v79 = *(v51[10] + 4 * v75);
                v80 = v76;
                v81 = *(v63 + 8 * v75) + 8;
                v82 = 8 * (v79 + v76 + (*(*(a5 + 184) + 8 * (v75 + 1)) - *(*(a5 + 184) + 8 * v75)) * a6) + 8 * (*(v51[11] + 4 * v75) + (*(*(a5 + 200) + 8 * (v75 + 1)) - *(*(a5 + 200) + 8 * v75)) * a6);
                v83 = v81 + v82 * v76 + 4 * v77;
                v84 = v81 + (v82 | 4) * v80 + 4 * v77 + 4 * v79;
                v85 = v77 - v80;
                do
                {
                  v86 = *(v83 + v78);
                  if (v86 < 0)
                  {
                    v86 = -v86;
                  }

                  *(v74 + v78) = v86;
                  v87 = *(v84 + v78);
                  if (v87 < 0)
                  {
                    v87 = -v87;
                  }

                  *&v72[v78] = v87;
                  v78 += 4;
                  v88 = __CFADD__(v85++, 1);
                }

                while (!v88);
                v74 += v78;
                v72 += v78;
              }
            }

            ++v70;
          }

          while (v70 != v71);
        }
      }

      if (v50)
      {
        memcpy(v67, v49, 4 * v50);
        v51 = a7;
      }

      if (v47)
      {
        memcpy(&v68[4 * v59], v623, 4 * v47);
        v51 = a7;
      }

      v34 = v624;
      v28 = a5;
      v89 = *(v51[9] + 4 * v624);
      v90 = *(v51[10] + 4 * v624);
      v91 = *(v51[11] + 4 * v624);
      v92 = *(v51[14] + 8 * v624) + 8;
      v93 = v89 + (*(*(a5 + 176) + 4 * v597) - *(*(a5 + 176) + 4 * v624)) * a6;
      v94 = *(v51[8] + 4 * v624);
      v95 = (*(*(a5 + 200) + v40) - *(*(a5 + 200) + 8 * v624)) * a6;
      v96 = v93 + v91 + v95;
      v97 = (v93 + v90 + (*(*(a5 + 184) + v40) - *(*(a5 + 184) + 8 * v624)) * a6);
      v98 = v92 + 8 * v97 * v93;
      v99 = v95 + v91;
      v44 = v98 + 8 * v99 * v93;
      v100 = v44 + 4 * v93;
      LODWORD(v630) = v93 + v90 + (*(*(a5 + 184) + v40) - *(*(a5 + 184) + 8 * v624)) * a6;
      DWORD1(v630) = v96;
      if (v90 <= 0)
      {
        v101 = 0;
      }

      else
      {
        v101 = v44 + 4 * v93;
      }

      *(&v630 + 1) = __PAIR64__(v93, v89);
      v102 = v100 + 4 * v90 + 4 * v93;
      if (v91 <= 0)
      {
        v102 = 0;
      }

      *&v631 = v94;
      *(&v631 + 1) = v92;
      *&v632 = v97;
      *(&v632 + 1) = v92 + 8 * v97 * v93;
      *&v633 = v99;
      *(&v633 + 1) = v98 + 8 * v99 * v93;
      *&v634 = v100 + 4 * v90;
      *(&v634 + 1) = __PAIR64__(v91, v90);
      *&v635 = v101;
      *(&v635 + 1) = v102;
    }

    else
    {
      v44 = *(&v633 + 1);
      if (!*(&v633 + 1))
      {
        v45 = 1;
        v34 = v624;
        v28 = a5;
        goto LABEL_53;
      }

      v34 = v624;
      v28 = a5;
    }
  }

  else
  {
    v576 = 0uLL;
    v575 = 0uLL;
  }

  if (SHIDWORD(v630) > SDWORD2(v630))
  {
    v103 = 0;
    v104 = v28[22];
    v105 = v634;
    do
    {
      *(v44 + 4 * v103) = v103 + *(v104 + 4 * v34) * v27;
      *(v105 + 4 * v103) = v103 + *(v104 + 4 * v34) * v27;
      ++v103;
    }

    while (v103 < SHIDWORD(v630) - SDWORD2(v630));
  }

  v45 = 0;
LABEL_53:
  v106 = v630;
  if (v630 >= 1)
  {
    v107 = 0;
    v108 = v635;
    do
    {
      if (v107 >= SHIDWORD(v630))
      {
        v110 = v106 - SDWORD2(v634);
        if (v107 >= v110)
        {
          v109 = *(v108 - 4 * v110 + 4 * v107);
        }

        else
        {
          v109 = (v107 - HIDWORD(v630)) % v27 + *(v28[24] + 4 * *(v28[23] + 8 * v34) + 4 * ((v107 - HIDWORD(v630)) / v27)) * v27;
        }
      }

      else if (v45)
      {
        v109 = v107 + *(v28[22] + 4 * v34) * v27;
      }

      else
      {
        v109 = *(v44 + 4 * v107);
      }

      if (v109 < 0)
      {
        v109 = -v109;
      }

      *(a23 + 4 * v109) = v107++;
      v106 = v630;
    }

    while (v107 < v630);
  }

  v111 = DWORD1(v630);
  if (SDWORD1(v630) >= 1)
  {
    v112 = 0;
    v113 = *(&v635 + 1);
    v114 = v634;
    do
    {
      if (v112 >= SHIDWORD(v630))
      {
        v116 = v111 - SHIDWORD(v634);
        if (v112 >= v116)
        {
          v115 = *(v113 - 4 * v116 + 4 * v112);
        }

        else
        {
          v115 = (v112 - HIDWORD(v630)) % v27 + *(v28[26] + 4 * *(v28[25] + 8 * v34) + 4 * ((v112 - HIDWORD(v630)) / v27)) * v27;
        }
      }

      else if (v45)
      {
        v115 = v112 + *(v28[22] + 4 * v34) * v27;
      }

      else
      {
        v115 = *(v114 + 4 * v112);
      }

      if (v115 < 0)
      {
        v115 = -v115;
      }

      *(v622 + 4 * v115) = v112++;
      v111 = SDWORD1(v630);
    }

    while (v112 < SDWORD1(v630));
  }

  v117 = 8 * SHIDWORD(v630);
  bzero(*(&v631 + 1), v117 * v632);
  bzero(*(&v632 + 1), v117 * v633);
  sub_2367EF888(a2, a1, SHIDWORD(v630), a3, v28, *(&v631 + 1), v632, *(&v632 + 1), v633, a23, v622, a7[12], a7[13]);
  if (*(&v630 + 4) <= 0 || (v118 = (v28[30] + 8 * v34), v119 = *v118, v120 = a4, *v118 >= v118[1]))
  {
    v124 = a21;
  }

  else
  {
    v121 = v111;
    v122 = a7;
    v123 = a19;
    v124 = a21;
    v125 = a15;
    do
    {
      if (*(v28[32] + v119) == 3)
      {
        v126 = *(v28[31] + 4 * v119);
        if ((*(a17 + v126) & 1) == 0)
        {
          if (v120 == 83)
          {
            v127 = *(v122[9] + 4 * v126);
            v128 = *(v122[10] + 4 * v126);
            v129 = *(v122[11] + 4 * v126);
          }

          else
          {
            v127 = 0;
            v128 = 0;
            v129 = 0;
          }

          v617 = v28[22];
          v130 = v127 + (*(v617 + 4 * (v126 + 1)) - *(v617 + 4 * v126)) * a6;
          v131 = v130;
          if (v120 == 83)
          {
            v131 = *(v122[8] + 4 * v126);
          }

          v132 = v28[23];
          if (v120 == 81)
          {
            v133 = 0;
          }

          else
          {
            v133 = *(v122[14] + 8 * v126) + 8 + 8 * (v130 + v128 + (*(v132 + 8 * (v126 + 1)) - *(v132 + 8 * v126)) * a6) * v130 + 8 * (v129 + (*(v28[25] + 8 * (v126 + 1)) - *(v28[25] + 8 * v126)) * a6) * v130;
          }

          if (v120 == 81)
          {
            v134 = 0;
          }

          else
          {
            v134 = *(v122[14] + 8 * v126) + 8 + 8 * (v130 + v128 + (*(v132 + 8 * (v126 + 1)) - *(v132 + 8 * v126)) * a6) * v130 + 8 * (v129 + (*(v28[25] + 8 * (v126 + 1)) - *(v28[25] + 8 * v126)) * a6) * v130 + 4 * v130 + 4 * v128;
          }

          v601 = v134;
          if (v131 != v130)
          {
            v598 = v130;
            v135 = *(a3 + 28);
            v611 = v122[12];
            v614 = (v135 * v135);
            if (v611)
            {
              v588 = v119;
              v591 = v122[13];
              if (v131 >= v130)
              {
                v196 = v119;
                v197 = v121;
                sub_23672AB18(v125);
                v121 = v197;
                v119 = v196;
              }

              else
              {
                v136 = 4 * v135;
                v573 = v131;
                v137 = v131;
                do
                {
                  v605 = v137;
                  LODWORD(v138) = *(v601 + 4 * v137);
                  if (v138 >= 0)
                  {
                    v138 = v138;
                  }

                  else
                  {
                    v138 = -v138;
                  }

                  if (*(v124 + 4 * v138) >= a1)
                  {
                    v139 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v138 / v135)));
                    v140 = *v139;
                    v141 = v139[1];
                    if (v140 < v141)
                    {
                      v608 = *(v622 + 4 * v138);
                      v142 = v138 % v135;
                      v143 = *(a3 + 16);
                      v144 = v591 + 4 * (v138 * v135);
                      v145 = v630;
                      do
                      {
                        v146 = *(v143 + 4 * v140);
                        if ((v146 & 0x80000000) == 0)
                        {
                          v147 = v146 >= *a3 || v135 == 0;
                          if (!v147)
                          {
                            v148 = 0;
                            v149 = 0;
                            v150 = *(*(a5 + 136) + 4 * v146) * v135;
                            v151 = HIDWORD(v630);
                            v152 = v145 - DWORD2(v634);
                            v153 = v635;
                            v154 = *(&v633 + 1);
                            v155 = *(&v631 + 1) + 8 * v632 * v608;
                            v156 = (v611 + v136 * v150);
                            v157 = a19 + 4 * v150;
                            v158 = a23 + 4 * v150;
                            do
                            {
                              v159 = *(v158 + v148);
                              if (v159 < v145)
                              {
                                v160 = v159;
                                if (v159 >= v151)
                                {
                                  v161 = v159 >= v152 ? *(v153 + 4 * (v159 - v152)) : (v159 - v151) % v135 + *(*(a5 + 192) + 4 * *(v132 + 8 * v624) + 4 * ((v159 - v151) / v135)) * v135;
                                }

                                else if ((v159 & 0x80000000) != 0)
                                {
                                  v161 = 0x7FFFFFFF;
                                }

                                else
                                {
                                  v161 = v154 ? *(v154 + 4 * v159) : v159 + *(v617 + 4 * v624) * v135;
                                }

                                if (v150 == v161 && *(v157 + v148) >= a1)
                                {
                                  *(v155 + 8 * v160) = vmul_n_f32(vmul_n_f32(*(*(a3 + 32) + 8 * v140 * v614 + 8 * v149 + 8 * (v142 * v135)), *v156), *(v144 + 4 * v142));
                                }
                              }

                              ++v149;
                              v156 += v135 + 1;
                              v148 += 4;
                              LODWORD(v150) = v150 + 1;
                            }

                            while (v136 != v148);
                          }
                        }

                        ++v140;
                      }

                      while (v140 != v141);
                    }
                  }

                  v137 = v605 + 1;
                  v124 = a21;
                }

                while (v605 + 1 != v598);
                v125 = a15;
                sub_23672AB18(a15);
                v162 = *a15;
                v163 = *(a15 + 4);
                v164 = v573 - v598;
                v165 = (v133 + 4 * v573);
                do
                {
                  v167 = *v165++;
                  v166 = v167;
                  if (v167 < 0)
                  {
                    v166 = -v166;
                  }

                  *(v162 + 4 * v166) = v163;
                  v88 = __CFADD__(v164++, 1);
                }

                while (!v88);
                v111 = DWORD1(v630);
                v121 = DWORD1(v630);
                v34 = v624;
                v120 = a4;
                v123 = a19;
                v119 = v588;
              }

              if (v121 < 1)
              {
                v122 = a7;
                v28 = a5;
              }

              else
              {
                v198 = 0;
                v199 = SHIDWORD(v630);
                v618 = SHIDWORD(v630) - SDWORD2(v630);
                v609 = v121 - SHIDWORD(v634);
                v599 = *(&v635 + 1);
                v606 = *(&v633 + 1);
                v602 = v634;
                v200 = 8 * v614;
                do
                {
                  if (v198 >= v199 || v198 < v618)
                  {
                    if (v198 >= v199)
                    {
                      v201 = a21;
                      v202 = v198 >= v609 ? *(v599 + 4 * (v198 - v609)) : (v198 - v199) % v135 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v624) + 4 * ((v198 - v199) / v135)) * v135;
                    }

                    else
                    {
                      v201 = a21;
                      v202 = v606 ? *(v602 + 4 * v198) : v198 + *(*(a5 + 176) + 4 * v624) * v135;
                    }

                    if (*(v201 + 4 * v202) >= a1)
                    {
                      v203 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v202 / v135)));
                      v204 = *v203;
                      v205 = v203[1];
                      if (*v203 < v205)
                      {
                        v206 = *(a3 + 16);
                        v207 = v591 + 4 * v202 * v135;
                        v208 = v202 % v135;
                        v209 = v200 * v204 + 8 * v202 % v135 * v135;
                        do
                        {
                          v210 = *(v206 + 4 * v204);
                          if ((v210 & 0x80000000) == 0 && v210 < *a3 && v135 != 0)
                          {
                            v212 = 0;
                            v213 = *(*(a5 + 136) + 4 * v210) * v135;
                            v214 = *(a15 + 4);
                            v215 = v633;
                            v216 = *(&v632 + 1) + 8 * (v198 - v199);
                            v217 = *(&v631 + 1) + 8 * v632 * v198;
                            v218 = *a15 + 4 * v213;
                            v219 = (v611 + 4 * v135 * v213);
                            do
                            {
                              if (*(a19 + 4 * v213 + 4 * v212) >= a1 && v213 + v212 < *(*(a5 + 176) + 4 * v624) * v135 && *(v218 + 4 * v212) >= v214)
                              {
                                v220 = *(a23 + 4 * v213 + 4 * v212);
                                v221 = (v217 + 8 * v220);
                                v222 = (v216 + 8 * v215 * v220);
                                if (v198 >= v199)
                                {
                                  v221 = v222;
                                }

                                *v221 = vmul_n_f32(vmul_n_f32(*(*(a3 + 32) + v209 + 8 * v212), *v219), *(v207 + 4 * v208));
                              }

                              ++v212;
                              v219 += v135 + 1;
                            }

                            while (v135 != v212);
                          }

                          ++v204;
                          v209 += v200;
                        }

                        while (v204 != v205);
                      }
                    }
                  }

                  ++v198;
                }

                while (v198 != v121);
                v122 = a7;
                v34 = v624;
                v28 = a5;
                v120 = a4;
                v123 = a19;
                v124 = a21;
                v125 = a15;
                v119 = v588;
              }
            }

            else
            {
              if (v131 >= v130)
              {
                v223 = v119;
                sub_23672AB18(v125);
                v119 = v223;
              }

              else
              {
                v589 = v119;
                v168 = v131;
                v169 = v131;
                do
                {
                  v170 = *(v601 + 4 * v169);
                  if (v170 >= 0)
                  {
                    v171 = v170;
                  }

                  else
                  {
                    v171 = -v170;
                  }

                  if (*(v124 + 4 * v171) >= a1)
                  {
                    v172 = *(v28[20] + 4 * (v171 / v135));
                    v173 = *(a3 + 8);
                    v174 = (v173 + 8 * v172);
                    v175 = *v174;
                    if (*v174 < v174[1])
                    {
                      v176 = v171 % v135;
                      v177 = *(v622 + 4 * v171);
                      v178 = v176 * v135;
                      do
                      {
                        v179 = *(*(a3 + 16) + 4 * v175);
                        if ((v179 & 0x80000000) == 0 && v179 < *a3 && v135 != 0)
                        {
                          v181 = 0;
                          v182 = *(v28[17] + 4 * v179) * v135;
                          v183 = (v123 + 4 * v182);
                          v184 = (a23 + 4 * v182);
                          v185 = v135;
                          do
                          {
                            v187 = *v184++;
                            v186 = v187;
                            if (v187 < v630)
                            {
                              v188 = v186;
                              if (v186 >= SHIDWORD(v630))
                              {
                                v189 = v186 >= v630 - DWORD2(v634) ? *(v635 + 4 * (v186 - (v630 - DWORD2(v634)))) : (v186 - HIDWORD(v630)) % v135 + *(v28[24] + 4 * *(v28[23] + 8 * v34) + 4 * ((v186 - HIDWORD(v630)) / v135)) * v135;
                              }

                              else if ((v186 & 0x80000000) != 0)
                              {
                                v189 = 0x7FFFFFFF;
                              }

                              else
                              {
                                v189 = *(&v633 + 1) ? *(*(&v633 + 1) + 4 * v186) : v186 + *(v28[22] + 4 * v34) * v135;
                              }

                              if (v182 == v189 && *v183 >= a1)
                              {
                                *(*(&v631 + 1) + 8 * v632 * v177 + 8 * v188) = *(*(a3 + 32) + 8 * v175 * v614 + 8 * v181 + 8 * v178);
                              }
                            }

                            ++v181;
                            ++v183;
                            ++v182;
                            --v185;
                          }

                          while (v185);
                          v173 = *(a3 + 8);
                        }

                        ++v175;
                      }

                      while (v175 < *(v173 + 8 * v172 + 8));
                    }
                  }

                  ++v169;
                }

                while (v169 != v598);
                sub_23672AB18(a15);
                v190 = *a15;
                v191 = *(a15 + 4);
                v192 = v168 - v598;
                v193 = (v133 + 4 * v168);
                do
                {
                  v195 = *v193++;
                  v194 = v195;
                  if (v195 < 0)
                  {
                    v194 = -v194;
                  }

                  *(v190 + 4 * v194) = v191;
                  v88 = __CFADD__(v192++, 1);
                }

                while (!v88);
                v111 = DWORD1(v630);
                v125 = a15;
                v119 = v589;
              }

              if (v111 < 1)
              {
                v121 = v111;
                v122 = a7;
              }

              else
              {
                v224 = 0;
                v225 = 8 * v614;
                v121 = v111;
                v122 = a7;
                do
                {
                  if (v224 >= SHIDWORD(v630) || v224 < SHIDWORD(v630) - SDWORD2(v630))
                  {
                    if (v224 >= SHIDWORD(v630))
                    {
                      v228 = v121 - SHIDWORD(v634);
                      v227 = v224 >= v228 ? *(*(&v635 + 1) + 4 * (v224 - v228)) : (v224 - HIDWORD(v630)) % v135 + *(v28[26] + 4 * *(v28[25] + 8 * v34) + 4 * ((v224 - HIDWORD(v630)) / v135)) * v135;
                    }

                    else
                    {
                      v227 = *(&v633 + 1) ? *(v634 + 4 * v224) : v224 + *(v28[22] + 4 * v34) * v135;
                    }

                    if (*(v124 + 4 * v227) >= a1)
                    {
                      v229 = *(v28[20] + 4 * (v227 / v135));
                      v230 = *(a3 + 8);
                      v231 = (v230 + 8 * v229);
                      v232 = *v231;
                      if (*v231 < v231[1])
                      {
                        v233 = v225 * v232 + 8 * v227 % v135 * v135;
                        do
                        {
                          v234 = *(*(a3 + 16) + 4 * v232);
                          if ((v234 & 0x80000000) == 0 && v234 < *a3 && v135 != 0)
                          {
                            v236 = *(v28[17] + 4 * v234) * v135;
                            v237 = v135;
                            v238 = v233;
                            do
                            {
                              if (*(v123 + 4 * v236) >= a1 && v236 < *(v28[22] + 4 * v34) * v135 && *(*v125 + 4 * v236) >= *(v125 + 4))
                              {
                                v239 = *(a23 + 4 * v236);
                                v240 = v239;
                                if (v224 >= SHIDWORD(v630))
                                {
                                  v241 = &v633;
                                }

                                else
                                {
                                  v241 = &v632;
                                }

                                if (v224 >= SHIDWORD(v630))
                                {
                                  v239 = v224 - HIDWORD(v630);
                                }

                                else
                                {
                                  v240 = v224;
                                }

                                if (v224 >= SHIDWORD(v630))
                                {
                                  v242 = &v632 + 8;
                                }

                                else
                                {
                                  v242 = &v631 + 8;
                                }

                                *(*v242 + 8 * *v241 * v240 + 8 * v239) = *(*(a3 + 32) + v238);
                              }

                              v238 += 8;
                              ++v236;
                              --v237;
                            }

                            while (v237);
                            v230 = *(a3 + 8);
                          }

                          ++v232;
                          v233 += v225;
                        }

                        while (v232 < *(v230 + 8 * v229 + 8));
                        v111 = DWORD1(v630);
                        v121 = DWORD1(v630);
                      }
                    }
                  }

                  ++v224;
                }

                while (v224 < v121);
              }
            }
          }
        }
      }

      ++v119;
    }

    while (v119 < *(v28[30] + 8 * v34 + 8));
  }

  if (SHIDWORD(v634) >= 1)
  {
    v243 = a7[12];
    v244 = *(a3 + 28);
    v245 = (v244 * v244);
    v246 = v111 - HIDWORD(v634);
    if (v243)
    {
      v247 = a7[13];
      v619 = *(&v635 + 1);
      if (v244 <= 1)
      {
        v248 = 1;
      }

      else
      {
        v248 = *(a3 + 28);
      }

      v249 = v246;
      v250 = v111;
      v251 = 8 * v245;
      v252 = 4 * *(a3 + 28);
      v253 = v246;
      do
      {
        v254 = *(v619 + 4 * (v253 - v249));
        if (*(v124 + 4 * v254) >= a1)
        {
          v255 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v254 / v244)));
          v256 = *v255;
          v257 = v255[1];
          if (v256 < v257)
          {
            v258 = *(a3 + 16);
            v259 = v247 + 4 * v254 * v244;
            v260 = v254 % v244;
            v261 = v251 * v256 + 8 * v254 % v244 * v244;
            do
            {
              v262 = *(v258 + 4 * v256);
              if ((v262 & 0x80000000) == 0 && v262 < *a3)
              {
                v263 = *(*(a5 + 136) + 4 * v262) * v244;
                v264 = HIDWORD(v630);
                v265 = v633;
                v266 = *(&v632 + 1) + 8 * (v253 - HIDWORD(v630));
                v267 = (v243 + v252 * v263);
                v268 = (a23 + 4 * v263);
                v269 = (a19 + 4 * v263);
                v270 = v248;
                v271 = v261;
                do
                {
                  v272 = *v269++;
                  if (v272 >= a1)
                  {
                    v273 = *v268;
                    if ((v273 & 0x80000000) == 0 && v273 < v264 && v263 == *(*(&v265 + 1) + 4 * v273))
                    {
                      *(v266 + 8 * v265 * v273) = vmul_n_f32(vmul_n_f32(*(*(a3 + 32) + v271), *v267), *(v259 + 4 * v260));
                    }
                  }

                  v271 += 8;
                  v267 = (v267 + v252 + 4);
                  LODWORD(v263) = v263 + 1;
                  ++v268;
                  --v270;
                }

                while (v270);
              }

              ++v256;
              v261 += v251;
            }

            while (v256 != v257);
          }
        }

        ++v253;
        v124 = a21;
      }

      while (v253 < v250);
    }

    else
    {
      if (v244 <= 1)
      {
        v274 = 1;
      }

      else
      {
        v274 = *(a3 + 28);
      }

      v275 = 8 * v245;
      v276 = v246;
      do
      {
        v277 = *(*(&v635 + 1) + 4 * (v276 - v246));
        if (*(v124 + 4 * v277) >= a1)
        {
          v278 = *(*(a5 + 160) + 4 * (v277 / v244));
          v279 = *(a3 + 8);
          v280 = (v279 + 8 * v278);
          v281 = *v280;
          if (*v280 < v280[1])
          {
            v282 = v275 * v281 + 8 * v277 % v244 * v244;
            do
            {
              v283 = *(*(a3 + 16) + 4 * v281);
              if ((v283 & 0x80000000) == 0 && v283 < *a3)
              {
                v284 = *(*(a5 + 136) + 4 * v283) * v244;
                v285 = (a23 + 4 * v284);
                v286 = (a19 + 4 * v284);
                v287 = v274;
                v288 = v282;
                do
                {
                  v289 = *v286++;
                  if (v289 >= a1)
                  {
                    v290 = *v285;
                    if ((v290 & 0x80000000) == 0 && v290 < SHIDWORD(v630) && v284 == *(*(&v633 + 1) + 4 * v290))
                    {
                      *(*(&v632 + 1) + 8 * v633 * v290 + 8 * (v276 - HIDWORD(v630))) = *(*(a3 + 32) + v288);
                    }
                  }

                  v288 += 8;
                  ++v284;
                  ++v285;
                  --v287;
                }

                while (v287);
                v279 = *(a3 + 8);
              }

              ++v281;
              v282 += v275;
            }

            while (v281 < *(v279 + 8 * v278 + 8));
            LODWORD(v111) = DWORD1(v630);
          }
        }

        ++v276;
      }

      while (v276 < v111);
    }
  }

  v291 = DWORD2(v634);
  if (SDWORD2(v634) >= 1)
  {
    v292 = a7[12];
    v293 = *(a3 + 28);
    v294 = (v293 * v293);
    v295 = *(a5 + 176);
    v296 = (v295 + 4 * v624);
    v298 = *v296;
    v297 = v296[1];
    v299 = v298 * v293;
    v300 = v297 * v293;
    if (v292)
    {
      if (v299 < v300)
      {
        v301 = 0;
        v620 = a7[13];
        if (v293 <= 1)
        {
          v302 = 1;
        }

        else
        {
          v302 = v293;
        }

        v303 = ((v297 - v298) * v293);
        v304 = 8 * v294;
        v305 = 4 * v293;
        do
        {
          if (*(v124 + 4 * v299) >= a1)
          {
            v306 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v299 / v293)));
            v307 = *v306;
            v308 = v306[1];
            if (*v306 < v308)
            {
              v309 = *(a3 + 16);
              v310 = v630;
              v311 = v630 - v291;
              v312 = v304 * v307 + 8 * v299 % v293 * v293;
              do
              {
                v313 = *(v309 + 4 * v307);
                if ((v313 & 0x80000000) == 0 && v313 < *a3)
                {
                  v314 = *(*(a5 + 136) + 4 * v313) * v293;
                  v315 = v635;
                  v316 = *(&v631 + 1) + 8 * v632 * v301;
                  v317 = (v292 + v305 * v314);
                  v318 = (a19 + 4 * v314);
                  v319 = (a23 + 4 * v314);
                  v320 = v302;
                  v321 = v312;
                  do
                  {
                    v323 = *v319++;
                    v322 = v323;
                    v324 = v323 >= v310 || v322 < v311;
                    if (!v324 && v314 == *(v315 + 4 * (v322 - v311)) && *v318 >= a1)
                    {
                      *(v316 + 8 * v322) = vmul_n_f32(vmul_n_f32(*(*(a3 + 32) + v321), *v317), *(v620 + 4 * v299 * v293 + 4 * (v299 % v293)));
                    }

                    v321 += 8;
                    v317 = (v317 + v305 + 4);
                    ++v318;
                    LODWORD(v314) = v314 + 1;
                    --v320;
                  }

                  while (v320);
                }

                ++v307;
                v312 += v304;
              }

              while (v307 != v308);
            }
          }

          ++v299;
          ++v301;
          v124 = a21;
        }

        while (v301 != v303);
      }
    }

    else if (v299 < v300)
    {
      v325 = 0;
      if (v293 <= 1)
      {
        v326 = 1;
      }

      else
      {
        v326 = v293;
      }

      v299 = v299;
      v327 = 8 * v294;
      do
      {
        if (*(v124 + 4 * v299) >= a1)
        {
          v329 = *(*(a5 + 160) + 4 * (v299 / v293));
          v330 = *(a3 + 8);
          v331 = (v330 + 8 * v329);
          v332 = *v331;
          v328 = v624;
          if (*v331 < v331[1])
          {
            v333 = v327 * v332 + 8 * v299 % v293 * v293;
            do
            {
              v334 = *(*(a3 + 16) + 4 * v332);
              if ((v334 & 0x80000000) == 0 && v334 < *a3)
              {
                v335 = *(*(a5 + 136) + 4 * v334) * v293;
                v336 = (a19 + 4 * v335);
                v337 = (a23 + 4 * v335);
                v338 = v326;
                v339 = v333;
                do
                {
                  v341 = *v337++;
                  v340 = v341;
                  v342 = v630 - DWORD2(v634);
                  v343 = v341 >= v630 || v340 < v342;
                  if (!v343 && v335 == *(v635 + 4 * (v340 - v342)) && *v336 >= a1)
                  {
                    *(*(&v631 + 1) + 8 * v632 * v325 + 8 * v340) = *(*(a3 + 32) + v339);
                  }

                  v339 += 8;
                  ++v336;
                  ++v335;
                  --v338;
                }

                while (v338);
                v330 = *(a3 + 8);
              }

              ++v332;
              v333 += v327;
            }

            while (v332 < *(v330 + 8 * v329 + 8));
            v295 = *(a5 + 176);
          }
        }

        else
        {
          v328 = v624;
        }

        ++v299;
        ++v325;
      }

      while (v299 < *(v295 + 4 * v328 + 4) * v293);
    }
  }

  sub_23672AB18(a15);
  v344 = a5;
  v345 = *(a5 + 240);
  v346 = *(v345 + 8 * v624);
  v347 = *(v345 + 8 * v597);
  v348 = v582 >> 3;
  v349 = v347 - v346;
  if (v347 <= v346)
  {
    v349 = 0;
    v358 = a6;
    v353 = v584;
    v352 = v585;
  }

  else
  {
    v350 = *a15;
    v351 = *(a15 + 4);
    v353 = v584;
    v352 = v585;
    v354 = (48 * v348 + 16 * v585 + a23 + 4);
    v355 = (*(a5 + 256) + v346);
    v356 = (*(a5 + 248) + 4 * v346);
    v357 = v349;
    v358 = a6;
    do
    {
      v360 = *v356++;
      v359 = v360;
      LOBYTE(v360) = *v355++;
      *(v354 - 1) = v359;
      *v354 = v360;
      v354 += 8;
      *(v350 + 4 * v359) = v351;
      --v357;
    }

    while (v357);
  }

  v361 = a16;
  v362 = 8 * v353;
  v363 = v630;
  if (v630 < 1)
  {
    LODWORD(v364) = 0;
  }

  else
  {
    v364 = 0;
    v365 = v635;
    v366 = *(&v633 + 1);
    do
    {
      v367 = v364;
      if (v364 >= SHIDWORD(v630))
      {
        v369 = v363 - SDWORD2(v634);
        if (v364 >= v369)
        {
          v368 = *(v365 - 4 * v369 + 4 * v364);
        }

        else
        {
          v368 = (v364 - HIDWORD(v630)) % v358 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v624) + 4 * ((v364 - HIDWORD(v630)) / v358)) * v358;
        }
      }

      else if (v366)
      {
        v368 = *(v366 + 4 * v364);
      }

      else
      {
        v368 = v364 + *(*(a5 + 176) + 4 * v624) * v358;
      }

      ++v364;
      *(a23 + v362 + 48 * v348 + 16 * v352 + 4 * v367) = v368;
      v363 = v630;
    }

    while (v367 + 1 < v630);
  }

  v370 = DWORD1(v630);
  if (SDWORD1(v630) < 1)
  {
    v577 = 0;
  }

  else
  {
    v371 = 0;
    v372 = *(&v635 + 1);
    v373 = *(&v633 + 1);
    v374 = v634;
    v375 = a23 + v362 + 56 * v348 + 16 * v352;
    do
    {
      v376 = v371;
      if (v371 >= SHIDWORD(v630))
      {
        v378 = v370 - SHIDWORD(v634);
        if (v371 >= v378)
        {
          v377 = *(v372 - 4 * v378 + 4 * v371);
        }

        else
        {
          v377 = (v371 - HIDWORD(v630)) % v358 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v624) + 4 * ((v371 - HIDWORD(v630)) / v358)) * v358;
        }
      }

      else if (v373)
      {
        v377 = *(v374 + 4 * v371);
      }

      else
      {
        v377 = v371 + *(*(a5 + 176) + 4 * v624) * v358;
      }

      ++v371;
      *(v375 + 4 * v376) = v377;
      v370 = DWORD1(v630);
    }

    while (v376 + 1 < SDWORD1(v630));
    v577 = v376 + 1;
  }

  sub_23672AB18(a16);
  v379 = v594;
  v380 = a7;
  if (!v349)
  {
    goto LABEL_504;
  }

  do
  {
LABEL_367:
    --v349;
    v381 = *(v379 + 8 * v349);
    v382 = *(v361 + 16);
    if (*(*v361 + 4 * v381) >= v382)
    {
      continue;
    }

    *(*v361 + 4 * v381) = v382;
    v627 = v381;
    if (*(a17 + v381))
    {
      goto LABEL_496;
    }

    v383 = v380[8];
    if (v383)
    {
      if (*(v383 + 4 * v381) < 1)
      {
        goto LABEL_496;
      }
    }

    if (a4 == 83)
    {
      v384 = v381;
      v385 = *(v380[9] + 4 * v381);
      v386 = *(v380[10] + 4 * v381);
      v387 = *(v380[11] + 4 * v381);
    }

    else
    {
      v385 = 0;
      v386 = 0;
      v387 = 0;
      v384 = v381;
    }

    v388 = v381 << 32;
    v389 = *(v344 + 176);
    v390 = v388 + 0x100000000;
    v391 = (*(v389 + (v390 >> 30)) - *(v389 + 4 * v384)) * v358;
    v392 = v391 + v385;
    v393 = v391 + v385;
    if (a4 == 83)
    {
      v393 = *(v383 + 4 * v384);
    }

    v394 = v390 >> 32;
    v395 = *(v344 + 184);
    v394 *= 8;
    v396 = *(v395 + 8 * v384);
    v397 = v392 + v386 + (*(v395 + v394) - v396) * v358;
    v398 = *(v344 + 200);
    v399 = *(v398 + v394);
    v400 = *(v398 + 8 * v384);
    v401 = (v399 - v400) * v358;
    v600 = *(v380[14] + 8 * v384) + 8;
    v590 = v401 + v387;
    v592 = v600 + 8 * v397 * v392;
    if (a4 == 81)
    {
      v402 = 0;
      v403 = 0;
      v404 = 0;
      v405 = v386 <= 0 ? 0 : v392;
      v406 = 4 * v405;
      v407 = v387 <= 0 ? 0 : v392;
      v603 = 4 * v407;
    }

    else
    {
      v402 = v600 + 8 * v397 * v392 + 8 * (v401 + v387) * v392;
      v403 = v402 + 4 * v392 + 4 * v386;
      if (v386 <= 0)
      {
        v406 = 0;
      }

      else
      {
        v406 = v402 + 4 * v392;
      }

      v408 = v403 + 4 * v392;
      if (v387 <= 0)
      {
        v408 = 0;
      }

      v603 = v408;
      v404 = a4 == 83 ? *(v380[9] + 4 * v624) : 0;
    }

    v409 = v397;
    if (v393 >= v397)
    {
      goto LABEL_496;
    }

    v410 = 0;
    v612 = 0;
    v615 = 0;
    v586 = *(&v631 + 1);
    v411 = v632;
    v583 = v633;
    v412 = v392 + v387 + v401;
    v413 = v404 + (*(v389 + 4 * v624 + 4) - *(v389 + 4 * v624)) * v358;
    v414 = v409 - v386;
    v621 = v393;
    v415 = v406 + 4 * (v393 + v386 - v409);
    do
    {
      v416 = v393 + v410;
      if (v416 >= v392)
      {
        if (v416 >= v414)
        {
          v417 = *(v415 + 4 * v410);
        }

        else
        {
          v417 = (v393 - v391 - v385 + v410) % a6 + *(*(v344 + 192) + 4 * v396 + 4 * ((v393 - v391 - v385 + v410) / a6)) * a6;
        }
      }

      else if (v416 < 0)
      {
        v417 = 0x7FFFFFFF;
      }

      else if (v402)
      {
        v417 = *(v402 + 4 * v393 + 4 * v410);
      }

      else
      {
        v417 = v393 + v410 + *(v389 + 4 * v627) * a6;
      }

      if (v417 >= 0)
      {
        v418 = v417;
      }

      else
      {
        v418 = -v417;
      }

      v419 = *(a23 + 4 * v418);
      if (v419 < v364 && *(v607 + 4 * v419) == v418 && *(a19 + 4 * v418) >= a1)
      {
        v420 = (v593 + 8 * v615);
        *v420 = v393 + v410;
        v420[1] = v419;
        v344 = a5;
        if (v419 >= v413)
        {
          v421 = v612;
        }

        else
        {
          v421 = v612 + 1;
        }

        v612 = v421;
        ++v615;
      }

      ++v410;
    }

    while (v393 - v409 + v410);
    v358 = a6;
    v422 = v593;
    v423 = v587;
    v424 = v393;
    if (!v615 || v393 >= v412)
    {
      goto LABEL_496;
    }

    v425 = 0;
    v426 = 0;
    v427 = 0;
    v428 = v412 - v387;
    v429 = v403 + 4 * v393;
    v430 = v393 - v391 - v385;
    v431 = v393 - v412;
    v432 = v603 + 4 * (v393 + v387 - v412);
    do
    {
      v433 = v393 + v425;
      if (v433 >= v392)
      {
        if (v433 >= v428)
        {
          v434 = *(v432 + 4 * v425);
          goto LABEL_427;
        }

        v435 = *(*(v344 + 208) + 4 * v400 + 4 * ((v430 + v425) / a6));
        v436 = (v430 + v425) % a6;
      }

      else
      {
        if (v433 < 0)
        {
          v434 = 0x7FFFFFFF;
          goto LABEL_427;
        }

        if (v402)
        {
          v434 = *(v429 + 4 * v425);
          goto LABEL_427;
        }

        v435 = *(v389 + 4 * v627);
        v436 = v424 + v425;
      }

      v434 = v436 + v435 * a6;
LABEL_427:
      if (v434 >= 0)
      {
        v437 = v434;
      }

      else
      {
        v437 = -v434;
      }

      v438 = *(v622 + 4 * v437);
      if (v438 < v577 && *(v596 + 4 * v438) == v437 && *(a21 + 4 * v437) >= a1)
      {
        v439 = &v587[v427];
        *v439 = v393 + v425;
        *(v439 + 1) = v438;
        v424 = v393;
        if (v438 < v413)
        {
          ++v426;
        }

        ++v427;
      }

      ++v425;
    }

    while (v431 + v425);
    v440 = v615;
    if (v427 && v612 | v426)
    {
      v441 = v424;
      v442 = v600;
      if (v612 >= 1)
      {
        v443 = 0;
        v444 = v593;
        do
        {
          v445 = (v593 + 8 * v443);
          v446 = v445[1];
          if (v446 >= v413)
          {
            v447 = v444;
            v448 = v443;
            while (++v448 < v615)
            {
              v449 = (v447 + 8);
              v450 = *(v447 + 12);
              v447 += 8;
              if (v450 < v413)
              {
                v451 = *v449;
                *v449 = *v445;
                *v445 = v451;
                v449[1] = v446;
                v445[1] = v450;
                break;
              }
            }
          }

          ++v443;
          v444 += 8;
        }

        while (v443 != v612);
      }

      v452 = v426;
      v453 = a12;
      if (v426 >= 1)
      {
        v454 = 0;
        v455 = v587;
        do
        {
          v456 = &v587[v454];
          v457 = v456[1];
          if (v457 >= v413)
          {
            v458 = v455;
            v459 = v454;
            while (++v459 < v427)
            {
              v460 = (v458 + 1);
              v461 = *(v458++ + 3);
              if (v461 < v413)
              {
                v462 = *v460;
                *v460 = *v456;
                *v456 = v462;
                v460[1] = v457;
                v456[1] = v461;
                break;
              }
            }
          }

          ++v454;
          ++v455;
        }

        while (v454 != v426);
      }

      v463 = v615 * v424;
      if (a12[1] < (v615 * v424))
      {
        if (*a12)
        {
          (*(v344 + 32))(*a12, v426, v424, v600);
        }

        v464 = (*(v344 + 24))(8 * v463, v452, v441, v442);
        v453 = a12;
        *a12 = v464;
        a12[1] = v463;
        v380 = a7;
        v422 = v593;
        v423 = v587;
        v440 = v615;
        v441 = v621;
        v442 = v600;
      }

      v465 = v440;
      if (v441 >= 1)
      {
        v466 = 0;
        for (i = 0; i != v441; ++i)
        {
          if (v440 >= 1)
          {
            v468 = v422;
            v469 = v466;
            v470 = v440;
            do
            {
              v471 = *v468++;
              *(*v453 + v469) = *(v442 + 8 * i * v409 + 8 * v471);
              v469 += 8;
              --v470;
            }

            while (v470);
          }

          v466 += 8 * v440;
        }
      }

      v574 = v440;
      v472 = v427 * v441;
      if (a13[1] < (v427 * v441))
      {
        if (*a13)
        {
          (*(v344 + 32))(*a13, v440);
        }

        *a13 = (*(v344 + 24))(8 * v472, v465);
        a13[1] = v472;
        v380 = a7;
        v423 = v587;
        v441 = v621;
        v442 = v600;
      }

      v473 = a13;
      if (v441 >= 1)
      {
        v474 = 0;
        for (j = 0; j != v441; ++j)
        {
          if (v427 >= 1)
          {
            v476 = v423;
            v477 = v474;
            v478 = v427;
            do
            {
              v479 = *v476++;
              v480 = v592 + 8 * j * v590 + 8 * (v479 - v392);
              v481 = (v442 + 8 * j + 8 * v479 * v409);
              if (v479 >= v392)
              {
                v481 = v480;
              }

              *(*a13 + v477) = *v481;
              v477 += 8;
              --v478;
            }

            while (v478);
          }

          v474 += 8 * v427;
        }
      }

      if (v426 * v615 <= (v427 - v426) * v612)
      {
        v482 = (v427 - v426) * v612;
      }

      else
      {
        v482 = v426 * v615;
      }

      if (a14[1] < v482)
      {
        if (*a14)
        {
          (*(v344 + 32))(*a14, a13);
        }

        *a14 = (*(v344 + 24))(8 * v482, v473);
        a14[1] = v482;
        v380 = a7;
      }

      v358 = a6;
      if (v426 >= 1)
      {
        cblas_cgemm_NEWLAPACK();
        v380 = a7;
        v483 = 0;
        v484 = *a14;
        do
        {
          if (v615 >= 1)
          {
            v485 = v586 + 8 * SHIDWORD(v587[v483]) * v411;
            v486 = v593;
            v487 = v484;
            v488 = v574;
            do
            {
              v489 = *v487++;
              *(v485 + 8 * *(v486 + 4)) = vadd_f32(v489, *(v485 + 8 * *(v486 + 4)));
              v486 += 8;
              --v488;
            }

            while (v488);
          }

          ++v483;
          v484 += v615;
        }

        while (v483 != v426);
      }

      if (v612 >= 1)
      {
        cblas_cgemm_NEWLAPACK();
        v380 = a7;
        if (v427 > v426)
        {
          v490 = v426;
          v491 = *a14;
          do
          {
            v492 = *(&v411 + 1) + 8 * (HIDWORD(v587[v490]) - v413);
            v493 = v593;
            v494 = v491;
            v495 = v612;
            do
            {
              v496 = *v494++;
              *(v492 + 8 * *(v493 + 4) * v583) = vadd_f32(v496, *(v492 + 8 * *(v493 + 4) * v583));
              v493 += 8;
              --v495;
            }

            while (v495);
            ++v490;
            v491 += v612;
          }

          while (v490 != v427);
        }
      }
    }

LABEL_496:
    v497 = (*(v344 + 240) + 8 * v627);
    v498 = *v497;
    v499 = v497[1];
    if (v498 >= v499)
    {
      v379 = v594;
      v361 = a16;
      if (!v349)
      {
        break;
      }

      goto LABEL_367;
    }

    v500 = *(v344 + 248);
    v501 = *a15;
    v379 = v594;
    v361 = a16;
    do
    {
      v502 = *(v500 + 4 * v498);
      v503 = *(a15 + 4);
      if (*(v501 + 4 * v502) < v503)
      {
        v504 = *(*(v344 + 256) + v498);
        v505 = v594 + 8 * v349;
        *v505 = v502;
        ++v349;
        *(v505 + 4) = v504;
        *(v501 + 4 * v502) = v503;
      }

      ++v498;
    }

    while (v499 != v498);
  }

  while (v349);
LABEL_504:
  v506 = HIDWORD(v630);
  v507 = a4;
  if (a4 == 83 && SHIDWORD(v630) >= 1)
  {
    v508 = 0;
    v509 = *(&v633 + 1);
    v510 = v634;
    do
    {
      *(a19 + 4 * *(v509 + 4 * v508)) = -1;
      *(a21 + 4 * *(v510 + 4 * v508++)) = -1;
      v506 = HIDWORD(v630);
    }

    while (v508 < SHIDWORD(v630));
  }

  if ((DWORD1(v630) - v506) * (v630 - v506) < 1)
  {
    v512 = 0;
  }

  else
  {
    v511 = 5 * (SHIDWORD(v634) + SDWORD2(v634));
    v512 = (*(v344 + 24))(v511 + 152);
    sub_236724DE4(v512, &v630, v575, SDWORD2(v575), v576, SDWORD2(v576), (v512 + 120), v511 + 32, v344);
    v513 = *(v512 + 16) * *(v512 + 8);
    v514 = (*(*v512 + 24))(8 * v513);
    *(v512 + 96) = v514;
    *(v512 + 104) = v513;
    bzero(v514, 8 * v513);
    v380 = a7;
    v344 = a5;
    v507 = a4;
    v358 = a6;
  }

  *(a10 + 8 * v624) = v512;
  v515 = *(v344 + 240);
  v516 = *(v515 + 8 * v624);
  if (v516 < *(v515 + 8 * v597))
  {
    v628 = v512;
    while (1)
    {
      v517 = *(*(v344 + 248) + 4 * v516);
      if (*(a17 + v517) == 1)
      {
        break;
      }

LABEL_556:
      if (++v516 >= *(v515 + 8 * v597))
      {
        goto LABEL_557;
      }
    }

    memset(&__src[16], 0, 56);
    if (v507 == 83)
    {
      v518 = *(v380[9] + 4 * v517);
      v519 = *(v380[10] + 4 * v517);
      v520 = *(v380[11] + 4 * v517);
    }

    else
    {
      v518 = 0;
      v519 = 0;
      v520 = 0;
    }

    v521 = *(v380[14] + 8 * v517) + 8;
    *&__src[8] = v518;
    *&__src[24] = v521;
    *&__src[72] = v519;
    *&__src[76] = v520;
    *&__src[12] = v518 + (*(*(v344 + 176) + 4 * (v517 + 1)) - *(*(v344 + 176) + 4 * v517)) * v358;
    v522 = *&__src[12];
    if (v507 == 83)
    {
      v522 = *(v380[8] + 4 * v517);
    }

    *&__src[16] = v522;
    v523 = 8 * (v517 + 1);
    *__src = *&__src[12] + v519 + (*(*(v344 + 184) + v523) - *(*(v344 + 184) + 8 * v517)) * v358;
    v524 = (*(*(v344 + 200) + v523) - *(*(v344 + 200) + 8 * v517)) * v358;
    *&__src[4] = *&__src[12] + v520 + v524;
    v525 = v521 + 8 * *__src * *&__src[12];
    *&__src[32] = *__src;
    *&__src[40] = v525;
    *&__src[48] = v524 + v520;
    if (v507 == 81)
    {
      v526 = 0;
      v527 = 0;
    }

    else
    {
      v527 = v525 + 8 * (v524 + v520) * *&__src[12];
      v526 = v527 + 4 * *&__src[12] + 4 * v519;
      *&__src[56] = v527;
      *&__src[64] = v526;
    }

    v528 = v527 + 4 * *&__src[12];
    if (v519 <= 0)
    {
      v529 = 0;
    }

    else
    {
      v529 = v528;
    }

    v530 = v526 + 4 * *&__src[12];
    if (v520 <= 0)
    {
      v531 = 0;
    }

    else
    {
      v531 = v530;
    }

    *&__src[80] = v529;
    *&__src[88] = v531;
    v532 = *(a10 + 8 * v517);
    if (!v532)
    {
      goto LABEL_555;
    }

    v533 = *(*(a5 + 264) + 4 * v516) * v358;
    v534 = *(*(a5 + 272) + 4 * v516) * v358;
    v535 = *(*(a5 + 256) + v516);
    if (v535 == 3)
    {
      v546 = a5;
      v554 = sub_2367F07B4(&v630, v517, __src, v532, a5, v358, v533, v534, a23, v622);
      v512 = v628;
      sub_2367E95C8(v554, &v630, v628, v517, __src, v532, a5, v358, v533, v534, a23, v622);
      v543 = *(a10 + 8 * v517);
      v545 = v543 + 12;
      v555 = v543[12];
      if (!v555)
      {
        goto LABEL_554;
      }

      (*(*v543 + 32))(v555);
    }

    else
    {
      if (v535 != 2)
      {
        if (v535 == 1)
        {
          v536 = *(*(a5 + 280) + 4 * v516);
          sub_236724F10(&v629, *(a10 + 8 * v517));
          sub_2367EFCD0(a1, &v630, v517, __src, v532, a5, a6, v533, v534, v536 * a6, a23, v622);
          v537 = v536 * a6;
          v512 = v628;
          sub_2367E8584(a1, &v630, v628, v517, __src, v532, a5, a6, v533, v534, v537, a23, v622);
          add_explicit = atomic_fetch_add_explicit((v532 + 28), -v537, memory_order_release);
          if (*(v629 + 112) == 1)
          {
            v539 = (v629 + 113);
            atomic_store(0, (v629 + 113));
            std::__cxx_atomic_notify_one(v539);
          }

          v147 = add_explicit == v537;
          v380 = a7;
          v358 = a6;
          if (v147)
          {
            v540 = *(*v532 + 32);
            v542 = *(v532 + 96);
            v541 = (v532 + 96);
            v540(v542);
            *v541 = 0;
            v541[1] = 0;
            v380 = a7;
            v358 = a6;
            if (*&__src[12] == *&__src[16] && !*&__src[76] && !*&__src[72])
            {
              v543 = *(a10 + 8 * v517);
              v545 = v543 + 12;
              v544 = v543[12];
              if (v544)
              {
                goto LABEL_540;
              }

LABEL_553:
              v546 = a5;
LABEL_554:
              (*(v546 + 32))(v543);
              v380 = a7;
              *(a10 + 8 * v517) = 0;
              v358 = a6;
            }
          }
        }

LABEL_555:
        v344 = a5;
        v515 = *(a5 + 240);
        v507 = a4;
        goto LABEL_556;
      }

      v547 = *(*(a5 + 280) + 4 * v516);
      sub_236724F10(&v629, *(a10 + 8 * v517));
      v548 = v547 * a6;
      sub_2367F0164(a1, &v630, v517, __src, v532, a5, a6, v533, v534, v547 * a6, a23, v622);
      v512 = v628;
      sub_2367E8CD4(a1, &v630, v628, v517, __src, v532, a5, a6, v533, v534, v547 * a6, a23, v622);
      v549 = atomic_fetch_add_explicit((v532 + 24), -(v547 * a6), memory_order_release);
      if (*(v629 + 112) == 1)
      {
        v550 = (v629 + 113);
        atomic_store(0, (v629 + 113));
        std::__cxx_atomic_notify_one(v550);
      }

      v380 = a7;
      v358 = a6;
      if (v549 != v548)
      {
        goto LABEL_555;
      }

      v551 = *(*v532 + 32);
      v553 = *(v532 + 96);
      v552 = (v532 + 96);
      v551(v553);
      *v552 = 0;
      v552[1] = 0;
      v380 = a7;
      v358 = a6;
      if (*&__src[12] != *&__src[16] || *&__src[76] || *&__src[72])
      {
        goto LABEL_555;
      }

      v543 = *(a10 + 8 * v517);
      v545 = v543 + 12;
      v544 = v543[12];
      if (!v544)
      {
        goto LABEL_553;
      }

LABEL_540:
      (*(*v543 + 32))(v544);
      v546 = a5;
    }

    *v545 = 0;
    v545[1] = 0;
    v543 = *(a10 + 8 * v517);
    goto LABEL_554;
  }

LABEL_557:
  if (v512)
  {
    v556 = *(v512 + 96);
    v557 = *(v512 + 16);
  }

  else
  {
    v556 = 0;
    v557 = 0;
  }

  v558 = v507 == 83;
  if (a27)
  {
    v559 = a27 + 64;
  }

  else
  {
    v559 = 0;
  }

  v560 = v581(v630, DWORD1(v630), HIDWORD(v630), *(&v631 + 1), v632, *(&v632 + 1), v633, v556, v557, *(&v633 + 1), v634, v344, v380, v579, v580, a25, a26, v559);
  v561 = *a8;
  if (*a8 <= v560)
  {
    v561 = v560;
  }

  *a8 = v561;
  v562 = *a9;
  if (*a9 <= SDWORD1(v630))
  {
    v562 = DWORD1(v630);
  }

  *a9 = v562;
  if (v558)
  {
    *(a7[8] + 4 * v624) = v560;
    return 0;
  }

  if (v560 == HIDWORD(v630))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_2367F5C2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2367F5C48(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(v3 + 64);
  v5 = *(v4 + 2);
  v6 = *(v5 + 344);
  v7 = *(v6 + 4 * a2);
  v52 = (a2 << 32) + 0x100000000;
  v8 = *(v6 + (v52 >> 30));
  v9 = a1[5];
  v10 = *(v3 + 48);
  v54 = *(v5 + 168);
  v55 = *(v4 + 5);
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  v62[0] = 0;
  v62[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v11 = *(v5 + 56);
  v12 = (4 * v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = &v9[v12];
  v59[0] = v9;
  v59[1] = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v60 = 1;
  bzero(v9, 4 * v11);
  v14 = *(*(v4 + 2) + 168);
  v57[0] = v13;
  v57[1] = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v58 = 1;
  v15 = 4 * v14;
  bzero(v13, 4 * v14);
  v16 = 0;
  v56 = 0;
  if (v7 < v8)
  {
    v17 = v10;
    v18 = v7;
    v19 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = &v13[v19];
    v21 = v17 - (v12 + v19);
    v16 = 1;
    v22 = (32 * v7) | 8;
    while (1)
    {
      v23 = *(v4 + 14);
      if (*(v23 + v18) & 1) != 0 || (sub_2367F0D38(v7, *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), *(v4 + 20), *(v4 + 21), v65, v64, v63, v62, v61, v59, v23, *(v4 + 15), v20), (*(*(v4 + 14) + v18)))
      {
        *(**(v4 + 21) + v22) = *(**(v4 + 21) + v22 - 8);
        v24 = *(v4 + 19);
        *(**(v4 + 20) + v22) = *(**(v4 + 20) + v22 - 8);
        v25 = sub_2367F3018(v7, SHIDWORD(a2), *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), &v56 + 1, &v56, v55, v54, v63, v62, v61, v59, v57, *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), v24, v20, v21, *(v4 + 13), a1, v4);
        if (v25)
        {
          break;
        }
      }

      v16 = ++v18 < v8;
      v7 = (v7 + 1);
      v22 += 32;
      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    _X2 = 0;
    v27 = a1[1];
    atomic_store(v25, (v27 + 16));
    atomic_store(1u, (v27 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      __ulock_wake();
    }
  }

LABEL_10:
  (*(*(v4 + 2) + 32))(v65[0]);
  (*(*(v4 + 2) + 32))(v64[0]);
  (*(*(v4 + 2) + 32))(v63[0]);
  (*(*(v4 + 2) + 32))(v62[0]);
  result = (*(*(v4 + 2) + 32))(v61[0]);
  if (!v16)
  {
    v35 = v52 >> 32;
    v36 = *(*(v4 + 4) + 136);
    v37 = HIDWORD(v56);
    while (1)
    {
      v38 = *(v4 + 4);
      if (v37 <= v36)
      {
        break;
      }

      v39 = v36;
      atomic_compare_exchange_strong_explicit((v38 + 136), &v39, v37, memory_order_relaxed, memory_order_relaxed);
      _ZF = v39 == v36;
      v36 = v39;
      if (_ZF)
      {
        v38 = *(v4 + 4);
        break;
      }
    }

    v40 = *(v38 + 140);
    v41 = v56;
    do
    {
      if (v41 <= v40)
      {
        break;
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit((*(v4 + 4) + 140), &v42, v41, memory_order_relaxed, memory_order_relaxed);
      _ZF = v42 == v40;
      v40 = v42;
    }

    while (!_ZF);
    v43 = *(v4 + 2);
    v44 = *(v43 + 352);
    v45 = *(v44 + 8 * a2);
    if (v45 < *(v44 + 8 * v35))
    {
      do
      {
        v46 = (*(v4 + 7) + 40 * *(*(v43 + 360) + 4 * v45));
        if (atomic_fetch_add_explicit(v46, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v47 = a1[2];
          if (v47)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v47 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v47 + 32) = 0;
              _X2 = _X4 & 1 | v47;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          a1[2] = v46;
          a1[3] = 0;
        }

        ++v45;
        v43 = *(v4 + 2);
      }

      while (v45 < *(*(v43 + 352) + 8 * v35));
    }
  }

  return result;
}

void sub_2367F605C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, float32x2_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, atomic_uchar *a13)
{
  v13 = *a3;
  v14 = a4 - *a3;
  if (a4 > *a3)
  {
    v15 = a6[16];
    v16 = a6[11];
    v17 = a2;
    v18 = a2 + 1;
    if (*(a10 + 4 * *(v15 + 4 * v13)) < *(v16 + 4 * v18))
    {
      v19 = a6[15];
      v20 = *(v19 + 8 * v18);
      v21 = *(v19 + 8 * a2);
      v22 = *(*(a7 + 40) + 8 * v17);
      v23 = v20 - v21;
      v24 = v20 - v21;
      if (v20 > v21)
      {
        v25 = 0;
        v26 = v15 + 4 * v21;
        do
        {
          *(a11 + 4 * *(v26 + 4 * v25)) = v25;
          ++v25;
        }

        while (v24 != v25);
      }

      v27 = 0;
      v28 = a4 - v13;
      v29 = v15 + 4 * v13;
      do
      {
        v30 = *(v29 + 4 * v27);
        if (*(a10 + 4 * v30) >= *(v16 + 4 * v18))
        {
          if (v13 + v27 >= a4)
          {
            v28 = v27;
            if (a13)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v31 = &a12[v27];
            v32 = v27;
            do
            {
              *v31++ = *(a11 + 4 * *(v29 + 4 * v32++));
            }

            while (v14 != v32);
            v28 = v27;
            v27 = v32;
            if (a13)
            {
              goto LABEL_15;
            }
          }

LABEL_19:

          sub_2367F61CC(v27, v28, a12, a8, a9, v22 + 8, v23);
          return;
        }

        a12[v27] = *(a11 + 4 * v30);
        *a3 = v13 + v27++ + 1;
      }

      while (v14 != v27);
      v27 = (a4 - v13);
      if (!a13)
      {
        goto LABEL_19;
      }

LABEL_15:
        ;
      }

      sub_2367F61CC(v27, v28, a12, a8, a9, v22 + 8, v23);
      atomic_store(0, a13);
    }
  }
}

uint64_t sub_2367F61CC(uint64_t result, int a2, int *a3, float32x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = result;
    v9 = a3;
    v10 = result;
    do
    {
      if (v7 < v8)
      {
        v11 = a6 + 8 * a3[v7] * a7;
        v12 = v10;
        v13 = a4;
        v14 = v9;
        do
        {
          v15 = *v14++;
          result = v15;
          v16 = *v13++;
          *(v11 + 8 * result) = vadd_f32(v16, *(v11 + 8 * result));
          --v12;
        }

        while (v12);
      }

      ++v7;
      ++v9;
      a4 += a5 + 1;
      --v10;
    }

    while (v7 != a2);
  }

  return result;
}

void sub_2367F6248(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, float32x2_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, atomic_uchar *a16)
{
  v16 = *a4;
  v17 = a6 - *a4;
  if (a6 <= *a4)
  {
    return;
  }

  v18 = a8[16];
  v19 = a8[11];
  v20 = a2;
  v21 = a2 + 1;
  if (*(a12 + 4 * *(v18 + 4 * v16)) >= *(v19 + 4 * v21))
  {
    return;
  }

  v23 = a8[15];
  v24 = *(v23 + 8 * v21);
  v25 = *(v23 + 8 * v20);
  v26 = *(*(a9 + 40) + 8 * v20);
  v27 = v24 - v25;
  v28 = v24 - v25;
  if (v24 > v25)
  {
    v29 = 0;
    v30 = v18 + 4 * v25;
    do
    {
      *(a13 + 4 * *(v30 + 4 * v29)) = v29;
      ++v29;
    }

    while (v28 != v29);
  }

  v31 = 0;
  v32 = v26 + 8;
  v33 = a6 - v16;
  v34 = v16 + 1;
  v35 = v18 + 4 * v16;
  while (1)
  {
    v36 = *(v35 + 4 * v31);
    if (*(a12 + 4 * v36) >= *(v19 + 4 * v21))
    {
      break;
    }

    *(a15 + 4 * v31) = *(a13 + 4 * v36);
    *a4 = v34 + v31++;
    if (v17 == v31)
    {
      goto LABEL_11;
    }
  }

  v33 = v31;
LABEL_11:
  v37 = a5 - a3;
  if (a5 <= a3)
  {
    v37 = 0;
    if (a16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v38 = (v18 + 4 * a3);
    v39 = a5 - a3;
    v40 = a14;
    do
    {
      v41 = *v38++;
      *v40++ = *(a13 + 4 * v41);
      --v39;
    }

    while (v39);
    if (a16)
    {
LABEL_15:
        ;
      }

      if (v33)
      {
        v42 = 0;
        v43 = v33;
        do
        {
          if (v37)
          {
            v44 = v32 + 8 * v27 * *(a15 + 4 * v42);
            v45 = a14;
            v46 = a10;
            v47 = v37;
            do
            {
              v49 = *v45++;
              v48 = v49;
              v50 = *v46++;
              *(v44 + 8 * v48) = vadd_f32(v50, *(v44 + 8 * v48));
              --v47;
            }

            while (v47);
          }

          ++v42;
          a10 += a11;
        }

        while (v42 != v43);
      }

      atomic_store(0, a16);
      return;
    }
  }

  if (v33)
  {
    v51 = 0;
    v52 = v33;
    do
    {
      if (v37)
      {
        v53 = v32 + 8 * v27 * *(a15 + 4 * v51);
        v54 = a14;
        v55 = a10;
        v56 = v37;
        do
        {
          v58 = *v54++;
          v57 = v58;
          v59 = *v55++;
          *(v53 + 8 * v57) = vadd_f32(v59, *(v53 + 8 * v57));
          --v56;
        }

        while (v56);
      }

      ++v51;
      a10 += a11;
    }

    while (v51 != v52);
  }
}

uint64_t _SparseSpMV_Complex_Double(uint64_t result, uint64_t a2, char a3, uint64_t a4, double a5, double a6)
{
  v8 = result;
  v11 = 4;
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  v12 = *(a4 + v11);
  v13 = *(result + 28);
  v14 = *(result + 8);
  v15 = *(result + 16);
  v614 = *(result + 32);
  if ((a3 & 1) == 0 && v12 >= 1)
  {
    v16 = 0;
    v17 = 4;
    if ((*(result + 24) & 1) == 0)
    {
      v17 = 0;
    }

    v18 = *(result + v17) * v13;
    do
    {
      if (v18 >= 1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*(a4 + 12))
          {
            v20 = i;
          }

          else
          {
            v20 = v16;
          }

          if (*(a4 + 12))
          {
            v21 = v16;
          }

          else
          {
            v21 = i;
          }

          v22 = (*(a4 + 16) + 16 * (v21 + *(a4 + 8) * v20));
          *v22 = 0;
          v22[1] = 0;
        }
      }

      ++v16;
    }

    while (v16 != v12);
  }

  v613 = (v13 * v13);
  v23 = (*(result + 24) >> 2) & 7;
  v618 = v12;
  v629 = v13;
  v616 = v15;
  v617 = v14;
  if (v23 <= 2)
  {
    if (v23 - 1 < 2)
    {
      v24 = *(result + 4);
      if (*(result + 24))
      {
        if (v24 < 1)
        {
          return result;
        }

        v25 = 0;
        v26 = 0;
        result = 16 * v613;
        v27 = 16 * v13;
        while (1)
        {
          v28 = v14[v26];
          v29 = v26 + 1;
          if (v28 < v14[v26 + 1])
          {
            break;
          }

LABEL_83:
          if ((v8[6] & 0x1C) == 8 && v12 >= 1)
          {
            v88 = 0;
            do
            {
              v89 = v13;
              for (j = v25; v89; --v89)
              {
                if (*(a2 + 12))
                {
                  v91 = v88 + *(a2 + 8) * j;
                }

                else
                {
                  v91 = j + v88 * *(a2 + 8);
                }

                v92 = (*(a2 + 16) + 16 * v91);
                v93 = v92[1];
                v94 = a5 * *v92 - a6 * v93;
                v95 = a6 * *v92 + a5 * v93;
                if (*(a4 + 12))
                {
                  v96 = v88 + *(a4 + 8) * j;
                }

                else
                {
                  v96 = j + v88 * *(a4 + 8);
                }

                v97 = (*(a4 + 16) + 16 * v96);
                v98 = v95 + v97[1];
                *v97 = v94 + *v97;
                v97[1] = v98;
                ++j;
              }

              ++v88;
            }

            while (v88 != v12);
          }

          v25 += v13;
          ++v26;
          if (v29 >= v8[1])
          {
            return result;
          }
        }

        v30 = v26 * v13;
        v31 = v614 + 8 + result * v28;
        v32 = v614 + result * v28;
        while (1)
        {
          v33 = *(v15 + 4 * v28);
          v34 = v8[6];
          if ((v34 & 2) == 0 || v26 <= v33)
          {
            v35 = *(v15 + 4 * v28);
            if (v33 < *v8)
            {
              if ((v34 & 2) != 0)
              {
                if ((v33 & 0x80000000) == 0)
                {
LABEL_32:
                  if (v33 == v26)
                  {
                    if (v12 >= 1)
                    {
                      v36 = 0;
                      v37 = v8[6];
                      v38 = (v34 & 0x1C) == 8;
                      v39 = v35 * v13;
                      v630 = v38;
                      do
                      {
                        if (v13)
                        {
                          v40 = 0;
                          v41 = v32;
                          do
                          {
                            v42 = (v40 + v38) & (v34 << 30 >> 31);
                            v43 = v40 + 1;
                            v44 = v40 + 1 - v38;
                            if ((v34 & 2) != 0)
                            {
                              v45 = v13;
                            }

                            else
                            {
                              v45 = v40 + 1 - v38;
                            }

                            if (v42 < v45)
                            {
                              v46 = v40 + v30;
                              v47 = (v41 + 16 * v42);
                              do
                              {
                                v48 = *v47;
                                v49 = v47[1];
                                v50 = a5 * *v47;
                                if ((v37 & 0x20) != 0)
                                {
                                  v51 = v50 + a6 * v49;
                                  v52 = a6 * v48 - a5 * v49;
                                }

                                else
                                {
                                  v51 = v50 - a6 * v49;
                                  v52 = a6 * v48 + a5 * v49;
                                }

                                v53 = *(a2 + 8);
                                if (*(a2 + 12))
                                {
                                  v54 = v36 + v53 * (v39 + v42);
                                }

                                else
                                {
                                  v54 = v39 + v42 + v36 * v53;
                                }

                                v55 = (*(a2 + 16) + 16 * v54);
                                v56 = v55[1];
                                v57 = v51 * *v55 - v52 * v56;
                                v58 = v52 * *v55 + v51 * v56;
                                if (*(a4 + 12))
                                {
                                  v59 = v46;
                                }

                                else
                                {
                                  v59 = v36;
                                }

                                if (*(a4 + 12))
                                {
                                  v60 = v36;
                                }

                                else
                                {
                                  v60 = v46;
                                }

                                v61 = (*(a4 + 16) + 16 * (v60 + *(a4 + 8) * v59));
                                v62 = v58 + v61[1];
                                *v61 = v57 + *v61;
                                v61[1] = v62;
                                ++v42;
                                v34 = v8[6];
                                if ((v34 & 2) != 0)
                                {
                                  v63 = v13;
                                }

                                else
                                {
                                  v63 = v44;
                                }

                                v37 = v8[6];
                                v47 += 2;
                              }

                              while (v42 < v63);
                              v38 = v630;
                            }

                            v41 += v27;
                            v40 = v43;
                          }

                          while (v43 != v13);
                        }

                        ++v36;
                      }

                      while (v36 != v12);
                    }
                  }

                  else if (v12 >= 1)
                  {
                    for (k = 0; k != v12; ++k)
                    {
                      if (v13)
                      {
                        v65 = 0;
                        v66 = v31;
                        do
                        {
                          v67 = v13;
                          v68 = v35 * v13;
                          v69 = v66;
                          do
                          {
                            v70 = *(v69 - 1);
                            v71 = a5 * v70;
                            v72 = a6 * *v69;
                            v73 = a5 * *v69;
                            v74 = a6 * v70;
                            if ((v8[6] & 0x20) != 0)
                            {
                              v75 = v71 + v72;
                              v76 = v74 - v73;
                            }

                            else
                            {
                              v75 = v71 - v72;
                              v76 = v74 + v73;
                            }

                            v77 = *(a2 + 8);
                            if (*(a2 + 12))
                            {
                              v78 = k + v77 * v68;
                            }

                            else
                            {
                              v78 = v68 + k * v77;
                            }

                            v79 = (*(a2 + 16) + 16 * v78);
                            v80 = v79[1];
                            v81 = v75 * *v79 - v76 * v80;
                            v82 = v76 * *v79 + v75 * v80;
                            if (*(a4 + 12))
                            {
                              v83 = v65 + v30;
                            }

                            else
                            {
                              v83 = k;
                            }

                            if (*(a4 + 12))
                            {
                              v84 = k;
                            }

                            else
                            {
                              v84 = v65 + v30;
                            }

                            v85 = (*(a4 + 16) + 16 * (v84 + *(a4 + 8) * v83));
                            v86 = v82 + v85[1];
                            *v85 = v81 + *v85;
                            v85[1] = v86;
                            v69 += 2;
                            ++v68;
                            --v67;
                          }

                          while (v67);
                          ++v65;
                          v66 = (v66 + v27);
                        }

                        while (v65 != v13);
                      }
                    }
                  }
                }
              }

              else if (v26 >= v33)
              {
                goto LABEL_32;
              }
            }
          }

          ++v28;
          v31 += result;
          v32 += result;
          if (v28 >= v14[v29])
          {
            goto LABEL_83;
          }
        }
      }

      if (v24 < 1)
      {
        return result;
      }

      v322 = 0;
      result = 0;
      v323 = 16 * (v13 * v13);
      v324 = 16 * v13;
      while (1)
      {
        v325 = v14[result];
        v326 = result + 1;
        if (v325 < v14[result + 1])
        {
          break;
        }

LABEL_352:
        if ((v8[6] & 0x1C) == 8 && v12 >= 1)
        {
          v378 = 0;
          do
          {
            v379 = v13;
            for (m = v322; v379; --v379)
            {
              if (*(a2 + 12))
              {
                v381 = v378 + *(a2 + 8) * m;
              }

              else
              {
                v381 = m + v378 * *(a2 + 8);
              }

              v382 = (*(a2 + 16) + 16 * v381);
              v383 = v382[1];
              v384 = a5 * *v382 - a6 * v383;
              v385 = a6 * *v382 + a5 * v383;
              if (*(a4 + 12))
              {
                v386 = v378 + *(a4 + 8) * m;
              }

              else
              {
                v386 = m + v378 * *(a4 + 8);
              }

              v387 = (*(a4 + 16) + 16 * v386);
              v388 = v385 + v387[1];
              *v387 = v384 + *v387;
              v387[1] = v388;
              ++m;
            }

            ++v378;
          }

          while (v378 != v12);
        }

        v322 += v13;
        ++result;
        if (v326 >= v8[1])
        {
          return result;
        }
      }

      v327 = result * v13;
      v328 = v614 + 8 + v323 * v325;
      v329 = v614 + v323 * v325;
      while (1)
      {
        v330 = *(v15 + 4 * v325);
        v331 = v8[6];
        if (((v331 & 2) == 0 || result <= v330) && v330 < *v8)
        {
          if ((v331 & 2) != 0)
          {
            if ((v330 & 0x80000000) == 0)
            {
LABEL_307:
              if (v330 == result)
              {
                if (v12 >= 1)
                {
                  v332 = 0;
                  v333 = (v331 & 0x1C) == 8;
                  v334 = v330 * v13;
                  do
                  {
                    if (v13)
                    {
                      v335 = 0;
                      v336 = v329;
                      do
                      {
                        v337 = (v335 + v333) & (v331 << 30 >> 31);
                        v338 = v335 + 1;
                        v339 = v335 + 1 - v333;
                        if ((v331 & 2) != 0)
                        {
                          v340 = v13;
                        }

                        else
                        {
                          v340 = v335 + 1 - v333;
                        }

                        if (v337 < v340)
                        {
                          v634 = v335 + 1;
                          v341 = v335 + v327;
                          v342 = (v336 + 16 * v337);
                          do
                          {
                            v343 = v342[1];
                            v344 = a5 * *v342 - a6 * v343;
                            v345 = a6 * *v342 + a5 * v343;
                            if (*(a2 + 12))
                            {
                              v346 = v341;
                            }

                            else
                            {
                              v346 = v332;
                            }

                            if (*(a2 + 12))
                            {
                              v347 = v332;
                            }

                            else
                            {
                              v347 = v341;
                            }

                            v348 = (*(a2 + 16) + 16 * (v347 + *(a2 + 8) * v346));
                            v349 = v348[1];
                            v350 = v344 * *v348 - v345 * v349;
                            v351 = v345 * *v348 + v344 * v349;
                            v352 = *(a4 + 8);
                            if (*(a4 + 12))
                            {
                              v353 = v332 + v352 * (v334 + v337);
                            }

                            else
                            {
                              v353 = v334 + v337 + v332 * v352;
                            }

                            v354 = (*(a4 + 16) + 16 * v353);
                            v355 = v351 + v354[1];
                            *v354 = v350 + *v354;
                            v354[1] = v355;
                            ++v337;
                            v331 = v8[6];
                            if ((v331 & 2) != 0)
                            {
                              v356 = v13;
                            }

                            else
                            {
                              v356 = v339;
                            }

                            v342 += 2;
                          }

                          while (v337 < v356);
                          v338 = v634;
                        }

                        v336 += v324;
                        v335 = v338;
                      }

                      while (v338 != v13);
                    }

                    ++v332;
                  }

                  while (v332 != v12);
                }
              }

              else if (v12 >= 1)
              {
                v357 = 0;
                v358 = v330 * v13;
                do
                {
                  if (v13)
                  {
                    v359 = 0;
                    v360 = v328;
                    do
                    {
                      v361 = v13;
                      v362 = v358;
                      v363 = v360;
                      do
                      {
                        v364 = *(v363 - 1);
                        v365 = a5 * v364 - a6 * *v363;
                        v366 = a6 * v364 + a5 * *v363;
                        if (*(a2 + 12))
                        {
                          v367 = v359 + v327;
                        }

                        else
                        {
                          v367 = v357;
                        }

                        if (*(a2 + 12))
                        {
                          v368 = v357;
                        }

                        else
                        {
                          v368 = v359 + v327;
                        }

                        v369 = (*(a2 + 16) + 16 * (v368 + *(a2 + 8) * v367));
                        v370 = v369[1];
                        v371 = v365 * *v369 - v366 * v370;
                        v372 = v366 * *v369 + v365 * v370;
                        v373 = *(a4 + 8);
                        if (*(a4 + 12))
                        {
                          v374 = v357 + v373 * v362;
                        }

                        else
                        {
                          v374 = v362 + v357 * v373;
                        }

                        v375 = (*(a4 + 16) + 16 * v374);
                        v376 = v372 + v375[1];
                        *v375 = v371 + *v375;
                        v375[1] = v376;
                        v363 += 2;
                        ++v362;
                        --v361;
                      }

                      while (v361);
                      ++v359;
                      v360 = (v360 + v324);
                    }

                    while (v359 != v13);
                  }

                  ++v357;
                }

                while (v357 != v12);
              }
            }
          }

          else if (result >= v330)
          {
            goto LABEL_307;
          }
        }

        ++v325;
        v328 += v323;
        v329 += v323;
        if (v325 >= v14[v326])
        {
          goto LABEL_352;
        }
      }
    }

    if (!v23)
    {
      v289 = *(result + 4);
      if (*(result + 24))
      {
        if (v289 >= 1)
        {
          v290 = 0;
          v291 = *v14;
          v292 = 16 * (v13 * v13);
          do
          {
            v293 = v290++;
            v294 = v14[v290];
            if (v291 < v294)
            {
              result = v293 * v13;
              v295 = v614 + 8 + v292 * v291;
              do
              {
                v296 = *(v15 + 4 * v291);
                if ((v296 & 0x80000000) == 0 && v296 < *v8 && v12 >= 1)
                {
                  v298 = 0;
                  v299 = v296 * v13;
                  do
                  {
                    if (v13)
                    {
                      v300 = 0;
                      v301 = v295;
                      do
                      {
                        v302 = v13;
                        v303 = v299;
                        v304 = v301;
                        do
                        {
                          v305 = *(v304 - 1);
                          v306 = a5 * v305;
                          v307 = a6 * *v304;
                          v308 = a5 * *v304;
                          v309 = a6 * v305;
                          if ((v8[6] & 0x20) != 0)
                          {
                            v310 = v306 + v307;
                            v311 = v309 - v308;
                          }

                          else
                          {
                            v310 = v306 - v307;
                            v311 = v309 + v308;
                          }

                          v312 = *(a2 + 8);
                          if (*(a2 + 12))
                          {
                            v313 = v298 + v312 * v303;
                          }

                          else
                          {
                            v313 = v303 + v298 * v312;
                          }

                          v314 = (*(a2 + 16) + 16 * v313);
                          v315 = v314[1];
                          v316 = v310 * *v314 - v311 * v315;
                          v317 = v311 * *v314 + v310 * v315;
                          if (*(a4 + 12))
                          {
                            v318 = v300 + result;
                          }

                          else
                          {
                            v318 = v298;
                          }

                          if (*(a4 + 12))
                          {
                            v319 = v298;
                          }

                          else
                          {
                            v319 = v300 + result;
                          }

                          v320 = (*(a4 + 16) + 16 * (v319 + *(a4 + 8) * v318));
                          v321 = v317 + v320[1];
                          *v320 = v316 + *v320;
                          v320[1] = v321;
                          v304 += 2;
                          ++v303;
                          --v302;
                        }

                        while (v302);
                        ++v300;
                        v301 += 2 * v13;
                      }

                      while (v300 != v13);
                    }

                    ++v298;
                  }

                  while (v298 != v12);
                  v294 = v14[v290];
                }

                ++v291;
                v295 += v292;
              }

              while (v291 < v294);
              v289 = v8[1];
            }

            v291 = v294;
          }

          while (v290 < v289);
        }
      }

      else if (v289 >= 1)
      {
        v585 = 0;
        v586 = *v14;
        v587 = 16 * (v13 * v13);
        do
        {
          v588 = v585++;
          v589 = v14[v585];
          if (v586 < v589)
          {
            result = v588 * v13;
            v590 = v614 + 8 + v587 * v586;
            do
            {
              v591 = *(v15 + 4 * v586);
              if ((v591 & 0x80000000) == 0 && v591 < *v8 && v12 >= 1)
              {
                v593 = 0;
                v594 = v591 * v13;
                do
                {
                  if (v13)
                  {
                    v595 = 0;
                    v596 = v590;
                    do
                    {
                      v597 = v13;
                      v598 = v594;
                      v599 = v596;
                      do
                      {
                        v600 = *(v599 - 1);
                        v601 = a5 * v600 - a6 * *v599;
                        v602 = a6 * v600 + a5 * *v599;
                        if (*(a2 + 12))
                        {
                          v603 = v595 + result;
                        }

                        else
                        {
                          v603 = v593;
                        }

                        if (*(a2 + 12))
                        {
                          v604 = v593;
                        }

                        else
                        {
                          v604 = v595 + result;
                        }

                        v605 = (*(a2 + 16) + 16 * (v604 + *(a2 + 8) * v603));
                        v606 = v605[1];
                        v607 = v601 * *v605 - v602 * v606;
                        v608 = v602 * *v605 + v601 * v606;
                        v609 = *(a4 + 8);
                        if (*(a4 + 12))
                        {
                          v610 = v593 + v609 * v598;
                        }

                        else
                        {
                          v610 = v598 + v593 * v609;
                        }

                        v611 = (*(a4 + 16) + 16 * v610);
                        v612 = v608 + v611[1];
                        *v611 = v607 + *v611;
                        v611[1] = v612;
                        v599 += 2;
                        ++v598;
                        --v597;
                      }

                      while (v597);
                      ++v595;
                      v596 += 2 * v13;
                    }

                    while (v595 != v13);
                  }

                  ++v593;
                }

                while (v593 != v12);
                v589 = v14[v585];
              }

              ++v586;
              v590 += v587;
            }

            while (v586 < v589);
            v289 = v8[1];
          }

          v586 = v589;
        }

        while (v585 < v289);
      }

      return result;
    }

LABEL_566:
    __break(1u);
    return result;
  }

  if (v23 == 3)
  {
    v389 = *(result + 4);
    if (v389 < 1)
    {
      return result;
    }

    v390 = 0;
    v391 = 0;
    v392 = v13 + 1;
    v393 = *v14;
    v394 = 16 * v613;
    v395 = 16 * v13;
    v620 = v13 - 1;
    v396 = 16 * v13 + 16;
    v622 = 1;
    while (1)
    {
      result = v391++;
      v397 = v14[v391];
      if (v393 < v397)
      {
        break;
      }

LABEL_534:
      v390 += v13;
      v622 += v13;
      v393 = v397;
      if (v391 >= v389)
      {
        return result;
      }
    }

    v398 = result * v13;
    v399 = v614 + 8 + v394 * v393;
    v400 = v614 + 24 + v394 * v393;
LABEL_372:
    v401 = *(v15 + 4 * v393);
    v402 = v8[6];
    if ((v402 & 2) != 0 && result > v401)
    {
      goto LABEL_374;
    }

    v403 = result < v401 && (v8[6] & 2) == 0;
    if (v403 || (v401 & 0x80000000) != 0 || v401 >= *v8)
    {
      goto LABEL_374;
    }

    if (result == v401)
    {
      v404 = v614 + 16 * v393 * v613;
      if ((v402 & 2) != 0)
      {
        if (v618 >= 1)
        {
          v405 = 0;
          v406 = v401 * v629;
          do
          {
            v407 = v629;
            if (v629)
            {
              v408 = 0;
              v409 = v620;
              v410 = v622;
              v411 = v406 + 1;
              v635 = v400;
              do
              {
                v625 = v408 + 1;
                v628 = v408;
                if (v408 + 1 < v407)
                {
                  v412 = 0;
                  v413 = v408 + v398;
                  v414 = v406 + v408;
                  v415 = v635;
                  do
                  {
                    v416 = *(v415 - 1);
                    v417 = *v415;
                    v418 = *(v8 + 12);
                    if (v418 & 0x20) != 0 && (v418)
                    {
                      v419 = a5 * v416 + a6 * v417;
                      v420 = a6 * v416 - a5 * v417;
                      if (*(a2 + 12))
                      {
                        v421 = v413;
                      }

                      else
                      {
                        v421 = v405;
                      }

                      if (*(a2 + 12))
                      {
                        v422 = v405;
                      }

                      else
                      {
                        v422 = v413;
                      }

                      v423 = (*(a2 + 16) + 16 * (v422 + *(a2 + 8) * v421));
                      v424 = v423[1];
                      v425 = v419 * *v423 - v420 * v424;
                      v426 = v420 * *v423 + v419 * v424;
                      v427 = *(a4 + 8);
                      if (*(a4 + 12))
                      {
                        v428 = v405 + v427 * (v411 + v412);
                      }

                      else
                      {
                        v428 = v411 + v412 + v405 * v427;
                      }

                      v444 = (*(a4 + 16) + 16 * v428);
                      v445 = v426 + v444[1];
                      *v444 = v425 + *v444;
                      v444[1] = v445;
                      v446 = *(v415 - 1);
                      v442 = a5 * v446 + a6 * *v415;
                      v443 = a6 * v446 - a5 * *v415;
                    }

                    else
                    {
                      v429 = a5 * v416 - a6 * v417;
                      v430 = a6 * v416 + a5 * v417;
                      if (*(a2 + 12))
                      {
                        v431 = v413;
                      }

                      else
                      {
                        v431 = v405;
                      }

                      if (*(a2 + 12))
                      {
                        v432 = v405;
                      }

                      else
                      {
                        v432 = v413;
                      }

                      v433 = (*(a2 + 16) + 16 * (v432 + *(a2 + 8) * v431));
                      v434 = v433[1];
                      v435 = v429 * *v433 - v430 * v434;
                      v436 = v430 * *v433 + v429 * v434;
                      v437 = *(a4 + 8);
                      if (*(a4 + 12))
                      {
                        v438 = v405 + v437 * (v411 + v412);
                      }

                      else
                      {
                        v438 = v411 + v412 + v405 * v437;
                      }

                      v439 = (*(a4 + 16) + 16 * v438);
                      v440 = v436 + v439[1];
                      *v439 = v435 + *v439;
                      v439[1] = v440;
                      v441 = *(v415 - 1);
                      v442 = a5 * v441 - a6 * *v415;
                      v443 = a6 * v441 + a5 * *v415;
                    }

                    if (*(a2 + 12))
                    {
                      v447 = v405 + *(a2 + 8) * (v410 + v412);
                    }

                    else
                    {
                      v447 = v410 + v412 + v405 * *(a2 + 8);
                    }

                    v448 = (*(a2 + 16) + 16 * v447);
                    v449 = v448[1];
                    v450 = v442 * *v448 - v443 * v449;
                    v451 = v443 * *v448 + v442 * v449;
                    if (*(a4 + 12))
                    {
                      v452 = v414;
                    }

                    else
                    {
                      v452 = v405;
                    }

                    if (*(a4 + 12))
                    {
                      v453 = v405;
                    }

                    else
                    {
                      v453 = v414;
                    }

                    v454 = (*(a4 + 16) + 16 * (v453 + *(a4 + 8) * v452));
                    v455 = v451 + v454[1];
                    *v454 = v450 + *v454;
                    v454[1] = v455;
                    ++v412;
                    v415 += 2;
                  }

                  while (v409 != v412);
                }

                v456 = (v404 + 16 * v628 * v392);
                v457 = *v456;
                v458 = v456[1];
                v459 = *(v8 + 12);
                if (v459 & 0x20) != 0 && (v459)
                {
                  v460 = a5 * v457 + a6 * v458;
                  v461 = a6 * v457 - a5 * v458;
                }

                else
                {
                  v460 = a5 * v457 - a6 * v458;
                  v461 = a6 * v457 + a5 * v458;
                }

                if (*(a2 + 12))
                {
                  v462 = v405 + *(a2 + 8) * (v628 + v398);
                }

                else
                {
                  v462 = v628 + v398 + *(a2 + 8) * v405;
                }

                v463 = (*(a2 + 16) + 16 * v462);
                v464 = v463[1];
                v465 = v460 * *v463 - v461 * v464;
                v466 = v461 * *v463 + v460 * v464;
                v467 = *(a4 + 8);
                if (*(a4 + 12))
                {
                  v468 = v405 + v467 * (v406 + v628);
                }

                else
                {
                  v468 = v406 + v628 + v467 * v405;
                }

                v469 = (*(a4 + 16) + 16 * v468);
                v470 = v466 + v469[1];
                --v409;
                v635 = (v635 + v396);
                *v469 = v465 + *v469;
                v469[1] = v470;
                ++v411;
                ++v410;
                v408 = v625;
                v407 = v629;
              }

              while (v625 != v629);
            }

            ++v405;
          }

          while (v405 != v618);
        }
      }

      else if (v618 >= 1)
      {
        v522 = 0;
        v523 = v401 * v629;
        do
        {
          if (v629)
          {
            v524 = 0;
            v525 = v399;
            do
            {
              v636 = v525;
              if (v524)
              {
                v526 = v390;
                v527 = v401 * v629;
                v528 = v524;
                do
                {
                  v529 = *(v525 - 1);
                  v530 = *v525;
                  v531 = *(v8 + 12);
                  if (v531 & 0x20) != 0 && (v531)
                  {
                    v532 = a5 * v529 + a6 * v530;
                    v533 = a6 * v529 - a5 * v530;
                    if (*(a2 + 12))
                    {
                      v534 = v524 + v398;
                    }

                    else
                    {
                      v534 = v522;
                    }

                    if (*(a2 + 12))
                    {
                      v535 = v522;
                    }

                    else
                    {
                      v535 = v524 + v398;
                    }

                    v536 = (*(a2 + 16) + 16 * (v535 + *(a2 + 8) * v534));
                    v537 = v536[1];
                    v538 = v532 * *v536 - v533 * v537;
                    v539 = v533 * *v536 + v532 * v537;
                    v540 = *(a4 + 8);
                    if (*(a4 + 12))
                    {
                      v541 = v522 + v540 * v527;
                    }

                    else
                    {
                      v541 = v527 + v522 * v540;
                    }

                    v557 = (*(a4 + 16) + 16 * v541);
                    v558 = v539 + v557[1];
                    *v557 = v538 + *v557;
                    v557[1] = v558;
                    v559 = *(v525 - 1);
                    v555 = a5 * v559 + a6 * *v525;
                    v556 = a6 * v559 - a5 * *v525;
                  }

                  else
                  {
                    v542 = a5 * v529 - a6 * v530;
                    v543 = a6 * v529 + a5 * v530;
                    if (*(a2 + 12))
                    {
                      v544 = v524 + v398;
                    }

                    else
                    {
                      v544 = v522;
                    }

                    if (*(a2 + 12))
                    {
                      v545 = v522;
                    }

                    else
                    {
                      v545 = v524 + v398;
                    }

                    v546 = (*(a2 + 16) + 16 * (v545 + *(a2 + 8) * v544));
                    v547 = v546[1];
                    v548 = v542 * *v546 - v543 * v547;
                    v549 = v543 * *v546 + v542 * v547;
                    v550 = *(a4 + 8);
                    if (*(a4 + 12))
                    {
                      v551 = v522 + v550 * v527;
                    }

                    else
                    {
                      v551 = v527 + v522 * v550;
                    }

                    v552 = (*(a4 + 16) + 16 * v551);
                    v553 = v549 + v552[1];
                    *v552 = v548 + *v552;
                    v552[1] = v553;
                    v554 = *(v525 - 1);
                    v555 = a5 * v554 - a6 * *v525;
                    v556 = a6 * v554 + a5 * *v525;
                  }

                  if (*(a2 + 12))
                  {
                    v560 = v522 + *(a2 + 8) * v526;
                  }

                  else
                  {
                    v560 = v526 + v522 * *(a2 + 8);
                  }

                  v561 = (*(a2 + 16) + 16 * v560);
                  v562 = v561[1];
                  v563 = v555 * *v561 - v556 * v562;
                  v564 = v556 * *v561 + v555 * v562;
                  if (*(a4 + 12))
                  {
                    v565 = v523 + v524;
                  }

                  else
                  {
                    v565 = v522;
                  }

                  if (*(a4 + 12))
                  {
                    v566 = v522;
                  }

                  else
                  {
                    v566 = v523 + v524;
                  }

                  v567 = (*(a4 + 16) + 16 * (v566 + *(a4 + 8) * v565));
                  v568 = v564 + v567[1];
                  *v567 = v563 + *v567;
                  v567[1] = v568;
                  v525 += 2;
                  ++v527;
                  ++v526;
                  --v528;
                }

                while (v528);
              }

              v569 = (v404 + 16 * v524 * v392);
              v570 = *v569;
              v571 = v569[1];
              v572 = *(v8 + 12);
              if (v572 & 0x20) != 0 && (v572)
              {
                v573 = a5 * v570 + a6 * v571;
                v574 = a6 * v570 - a5 * v571;
              }

              else
              {
                v573 = a5 * v570 - a6 * v571;
                v574 = a6 * v570 + a5 * v571;
              }

              if (*(a2 + 12))
              {
                v575 = v522 + *(a2 + 8) * (v524 + v398);
              }

              else
              {
                v575 = v524 + v398 + *(a2 + 8) * v522;
              }

              v576 = (*(a2 + 16) + 16 * v575);
              v577 = v576[1];
              v578 = v573 * *v576 - v574 * v577;
              v579 = v574 * *v576 + v573 * v577;
              v580 = *(a4 + 8);
              v581 = v524;
              if (*(a4 + 12))
              {
                v582 = v522 + v580 * (v523 + v524);
              }

              else
              {
                v582 = v523 + v524 + v580 * v522;
              }

              v583 = (*(a4 + 16) + 16 * v582);
              v584 = v579 + v583[1];
              *v583 = v578 + *v583;
              v583[1] = v584;
              v525 = &v636[v395 / 8];
              v524 = v581 + 1;
            }

            while (v581 + 1 != v629);
          }

          ++v522;
        }

        while (v522 != v618);
      }

      goto LABEL_374;
    }

    if (v618 < 1)
    {
      goto LABEL_374;
    }

    v471 = 0;
    v472 = v401 * v629;
LABEL_437:
    v473 = v629;
    if (!v629)
    {
      goto LABEL_461;
    }

    v474 = 0;
    v475 = v399;
LABEL_439:
    v476 = 0;
    v477 = v472;
    v478 = v475;
    while (1)
    {
      v479 = *(v478 - 1);
      v480 = *v478;
      v481 = *(v8 + 12);
      if ((v481 & 0x20) == 0 || (v481 & 1) == 0)
      {
        break;
      }

      v482 = a5 * v479 + a6 * v480;
      v483 = a6 * v479 - a5 * v480;
      if (*(a2 + 12))
      {
        v484 = v474 + v398;
      }

      else
      {
        v484 = v471;
      }

      if (*(a2 + 12))
      {
        v485 = v471;
      }

      else
      {
        v485 = v474 + v398;
      }

      v486 = (*(a2 + 16) + 16 * (v485 + *(a2 + 8) * v484));
      v487 = v486[1];
      v488 = v482 * *v486 - v483 * v487;
      v489 = v483 * *v486 + v482 * v487;
      v490 = *(a4 + 16);
      v491 = *(a4 + 8);
      if (*(a4 + 12))
      {
        goto LABEL_457;
      }

      v492 = v477 + v471 * v491;
LABEL_459:
      v499 = (v490 + 16 * v492);
      v500 = v489 + v499[1];
      *v499 = v488 + *v499;
      v499[1] = v500;
      ++v476;
      v478 += 2;
      ++v477;
      if (!--v473)
      {
        ++v474;
        v475 = (v475 + v395);
        v473 = v629;
        if (v474 == v629)
        {
LABEL_461:
          if (++v471 == v618)
          {
            for (n = 0; n != v618; ++n)
            {
              v502 = v629;
              if (v629)
              {
                v503 = 0;
                v504 = v399;
                do
                {
                  v505 = v472;
                  v506 = v504;
                  do
                  {
                    v507 = *(v506 - 1);
                    v508 = *v506;
                    v509 = *(v8 + 12);
                    if (v509 & 0x20) != 0 && (v509)
                    {
                      v510 = a5 * v507 + a6 * v508;
                      v511 = a6 * v507 - a5 * v508;
                    }

                    else
                    {
                      v510 = a5 * v507 - a6 * v508;
                      v511 = a6 * v507 + a5 * v508;
                    }

                    v512 = *(a2 + 8);
                    if (*(a2 + 12))
                    {
                      v513 = n + v512 * v505;
                    }

                    else
                    {
                      v513 = v505 + n * v512;
                    }

                    v514 = (*(a2 + 16) + 16 * v513);
                    v515 = v514[1];
                    v516 = v510 * *v514 - v511 * v515;
                    v517 = v511 * *v514 + v510 * v515;
                    if (*(a4 + 12))
                    {
                      v518 = v503 + v398;
                    }

                    else
                    {
                      v518 = n;
                    }

                    if (*(a4 + 12))
                    {
                      v519 = n;
                    }

                    else
                    {
                      v519 = v503 + v398;
                    }

                    v520 = (*(a4 + 16) + 16 * (v519 + *(a4 + 8) * v518));
                    v521 = v517 + v520[1];
                    *v520 = v516 + *v520;
                    v520[1] = v521;
                    v506 += 2;
                    ++v505;
                    --v502;
                  }

                  while (v502);
                  ++v503;
                  v504 = (v504 + v395);
                  v502 = v629;
                }

                while (v503 != v629);
              }
            }

LABEL_374:
            ++v393;
            v15 = v616;
            v14 = v617;
            v397 = v617[v391];
            v399 += v394;
            v400 += v394;
            if (v393 >= v397)
            {
              v389 = v8[1];
              LODWORD(v13) = v629;
              goto LABEL_534;
            }

            goto LABEL_372;
          }

          goto LABEL_437;
        }

        goto LABEL_439;
      }
    }

    v493 = a5 * v479 - a6 * v480;
    v494 = a6 * v479 + a5 * v480;
    if (*(a2 + 12))
    {
      v495 = v474 + v398;
    }

    else
    {
      v495 = v471;
    }

    if (*(a2 + 12))
    {
      v496 = v471;
    }

    else
    {
      v496 = v474 + v398;
    }

    v497 = (*(a2 + 16) + 16 * (v496 + *(a2 + 8) * v495));
    v498 = v497[1];
    v488 = v493 * *v497 - v494 * v498;
    v489 = v494 * *v497 + v493 * v498;
    v490 = *(a4 + 16);
    v491 = *(a4 + 8);
    if ((*(a4 + 12) & 1) == 0)
    {
      v492 = v472 + v476 + v491 * v471;
      goto LABEL_459;
    }

LABEL_457:
    v492 = v471 + v491 * v477;
    goto LABEL_459;
  }

  if (v23 != 7)
  {
    goto LABEL_566;
  }

  v99 = *(result + 4);
  if (v99 < 1)
  {
    return result;
  }

  v100 = 0;
  v101 = 0;
  v102 = v13 + 1;
  v103 = *v14;
  v104 = 16 * (v13 * v13);
  v105 = 16 * v13;
  v106 = v13 - 1;
  v107 = 16 * v13 + 16;
  v108 = 1;
  do
  {
    result = v101++;
    v109 = v14[v101];
    if (v103 >= v109)
    {
      goto LABEL_259;
    }

    v110 = result * v13;
    v111 = v614 + 8 + v104 * v103;
    v112 = v614 + 24 + v104 * v103;
    do
    {
      v113 = *(v15 + 4 * v103);
      v114 = v8[6];
      if ((v114 & 2) != 0 && result > v113)
      {
        goto LABEL_107;
      }

      v115 = result < v113 && (v8[6] & 2) == 0;
      if (v115 || (v113 & 0x80000000) != 0 || v113 >= *v8)
      {
        goto LABEL_107;
      }

      if (result == v113)
      {
        v116 = v614 + 16 * v103 * v613;
        if ((v114 & 2) != 0)
        {
          if (v618 >= 1)
          {
            v117 = 0;
            v619 = v113 * v629;
            v615 = v113 * v629 + 1;
            do
            {
              v118 = v629;
              if (v629)
              {
                v119 = 0;
                v631 = v108;
                v120 = v615;
                v626 = v112;
                v121 = v106;
                do
                {
                  v621 = v119 + 1;
                  v623 = v119;
                  if (v119 + 1 < v118)
                  {
                    v122 = 0;
                    v123 = v626;
                    v124 = v119 + v110;
                    v125 = v619 + v119;
                    do
                    {
                      v126 = *(v123 - 1);
                      v127 = *v123;
                      v128 = *(v8 + 12);
                      if ((v128 & 0x20) != 0 || (v128 & 1) == 0)
                      {
                        v139 = a5 * v126 - a6 * v127;
                        v140 = a6 * v126 + a5 * v127;
                        if (*(a2 + 12))
                        {
                          v141 = v124;
                        }

                        else
                        {
                          v141 = v117;
                        }

                        if (*(a2 + 12))
                        {
                          v142 = v117;
                        }

                        else
                        {
                          v142 = v124;
                        }

                        v143 = (*(a2 + 16) + 16 * (v142 + *(a2 + 8) * v141));
                        v144 = v143[1];
                        v145 = v139 * *v143 - v140 * v144;
                        v146 = v140 * *v143 + v139 * v144;
                        v147 = *(a4 + 8);
                        if (*(a4 + 12))
                        {
                          v148 = v117 + v147 * (v120 + v122);
                        }

                        else
                        {
                          v148 = v120 + v122 + v117 * v147;
                        }

                        v149 = (*(a4 + 16) + 16 * v148);
                        v150 = v146 + v149[1];
                        *v149 = v145 + *v149;
                        v149[1] = v150;
                        v151 = *(v123 - 1);
                        v152 = a5 * v151 + a6 * *v123;
                        v153 = a6 * v151 - a5 * *v123;
                      }

                      else
                      {
                        v129 = a5 * v126 + a6 * v127;
                        v130 = a6 * v126 - a5 * v127;
                        if (*(a2 + 12))
                        {
                          v131 = v124;
                        }

                        else
                        {
                          v131 = v117;
                        }

                        if (*(a2 + 12))
                        {
                          v132 = v117;
                        }

                        else
                        {
                          v132 = v124;
                        }

                        v133 = (*(a2 + 16) + 16 * (v132 + *(a2 + 8) * v131));
                        v134 = v133[1];
                        v135 = v129 * *v133 - v130 * v134;
                        v136 = v130 * *v133 + v129 * v134;
                        v137 = *(a4 + 8);
                        if (*(a4 + 12))
                        {
                          v138 = v117 + v137 * (v120 + v122);
                        }

                        else
                        {
                          v138 = v120 + v122 + v117 * v137;
                        }

                        v154 = (*(a4 + 16) + 16 * v138);
                        v155 = v136 + v154[1];
                        *v154 = v135 + *v154;
                        v154[1] = v155;
                        v156 = *(v123 - 1);
                        v152 = a5 * v156 - a6 * *v123;
                        v153 = a6 * v156 + a5 * *v123;
                      }

                      if (*(a2 + 12))
                      {
                        v157 = v117 + *(a2 + 8) * (v631 + v122);
                      }

                      else
                      {
                        v157 = v631 + v122 + v117 * *(a2 + 8);
                      }

                      v158 = (*(a2 + 16) + 16 * v157);
                      v159 = v158[1];
                      v160 = v152 * *v158 - v153 * v159;
                      v161 = v153 * *v158 + v152 * v159;
                      if (*(a4 + 12))
                      {
                        v162 = v125;
                      }

                      else
                      {
                        v162 = v117;
                      }

                      if (*(a4 + 12))
                      {
                        v163 = v117;
                      }

                      else
                      {
                        v163 = v125;
                      }

                      v164 = (*(a4 + 16) + 16 * (v163 + *(a4 + 8) * v162));
                      v165 = v161 + v164[1];
                      *v164 = v160 + *v164;
                      v164[1] = v165;
                      ++v122;
                      v123 += 2;
                    }

                    while (v121 != v122);
                  }

                  v166 = (v116 + 16 * v623 * v102);
                  v167 = v166[1];
                  v168 = a5 * *v166 - a6 * v167;
                  v169 = a6 * *v166 + a5 * v167;
                  if (*(a2 + 12))
                  {
                    v170 = v117 + *(a2 + 8) * (v623 + v110);
                  }

                  else
                  {
                    v170 = v623 + v110 + *(a2 + 8) * v117;
                  }

                  v171 = (*(a2 + 16) + 16 * v170);
                  v172 = v171[1];
                  v173 = v168 * *v171 - v169 * v172;
                  v174 = v169 * *v171 + v168 * v172;
                  v175 = *(a4 + 8);
                  if (*(a4 + 12))
                  {
                    v176 = v117 + v175 * (v619 + v623);
                  }

                  else
                  {
                    v176 = v619 + v623 + v175 * v117;
                  }

                  v177 = (*(a4 + 16) + 16 * v176);
                  v178 = v174 + v177[1];
                  --v121;
                  v626 = (v626 + v107);
                  *v177 = v173 + *v177;
                  v177[1] = v178;
                  ++v120;
                  ++v631;
                  v119 = v621;
                  v118 = v629;
                }

                while (v621 != v629);
              }

              ++v117;
            }

            while (v117 != v618);
          }
        }

        else if (v618 >= 1)
        {
          v229 = 0;
          v624 = v113 * v629;
          do
          {
            if (v629)
            {
              v230 = 0;
              v633 = v111;
              do
              {
                v627 = v230;
                if (v230)
                {
                  v231 = v230;
                  v232 = v230 + v110;
                  v233 = v624;
                  v234 = v100;
                  v235 = v633;
                  do
                  {
                    v236 = *(v235 - 1);
                    v237 = *v235;
                    v238 = *(v8 + 12);
                    if ((v238 & 0x20) != 0 || (v238 & 1) == 0)
                    {
                      v249 = a5 * v236 - a6 * v237;
                      v250 = a6 * v236 + a5 * v237;
                      if (*(a2 + 12))
                      {
                        v251 = v232;
                      }

                      else
                      {
                        v251 = v229;
                      }

                      if (*(a2 + 12))
                      {
                        v252 = v229;
                      }

                      else
                      {
                        v252 = v232;
                      }

                      v253 = (*(a2 + 16) + 16 * (v252 + *(a2 + 8) * v251));
                      v254 = v253[1];
                      v255 = v249 * *v253 - v250 * v254;
                      v256 = v250 * *v253 + v249 * v254;
                      v257 = *(a4 + 8);
                      if (*(a4 + 12))
                      {
                        v258 = v229 + v257 * v233;
                      }

                      else
                      {
                        v258 = v233 + v229 * v257;
                      }

                      v259 = (*(a4 + 16) + 16 * v258);
                      v260 = v256 + v259[1];
                      *v259 = v255 + *v259;
                      v259[1] = v260;
                      v261 = *(v235 - 1);
                      v262 = a5 * v261 + a6 * *v235;
                      v263 = a6 * v261 - a5 * *v235;
                    }

                    else
                    {
                      v239 = a5 * v236 + a6 * v237;
                      v240 = a6 * v236 - a5 * v237;
                      if (*(a2 + 12))
                      {
                        v241 = v232;
                      }

                      else
                      {
                        v241 = v229;
                      }

                      if (*(a2 + 12))
                      {
                        v242 = v229;
                      }

                      else
                      {
                        v242 = v232;
                      }

                      v243 = (*(a2 + 16) + 16 * (v242 + *(a2 + 8) * v241));
                      v244 = v243[1];
                      v245 = v239 * *v243 - v240 * v244;
                      v246 = v240 * *v243 + v239 * v244;
                      v247 = *(a4 + 8);
                      if (*(a4 + 12))
                      {
                        v248 = v229 + v247 * v233;
                      }

                      else
                      {
                        v248 = v233 + v229 * v247;
                      }

                      v264 = (*(a4 + 16) + 16 * v248);
                      v265 = v246 + v264[1];
                      *v264 = v245 + *v264;
                      v264[1] = v265;
                      v266 = *(v235 - 1);
                      v262 = a5 * v266 - a6 * *v235;
                      v263 = a6 * v266 + a5 * *v235;
                    }

                    if (*(a2 + 12))
                    {
                      v267 = v229 + *(a2 + 8) * v234;
                    }

                    else
                    {
                      v267 = v234 + v229 * *(a2 + 8);
                    }

                    v268 = (*(a2 + 16) + 16 * v267);
                    v269 = v268[1];
                    v270 = v262 * *v268 - v263 * v269;
                    v271 = v263 * *v268 + v262 * v269;
                    if (*(a4 + 12))
                    {
                      v272 = v624 + v627;
                    }

                    else
                    {
                      v272 = v229;
                    }

                    if (*(a4 + 12))
                    {
                      v273 = v229;
                    }

                    else
                    {
                      v273 = v624 + v627;
                    }

                    v274 = (*(a4 + 16) + 16 * (v273 + *(a4 + 8) * v272));
                    v275 = v271 + v274[1];
                    *v274 = v270 + *v274;
                    v274[1] = v275;
                    v235 += 2;
                    ++v233;
                    ++v234;
                    --v231;
                  }

                  while (v231);
                }

                v276 = (v116 + 16 * v627 * v102);
                v277 = v276[1];
                v278 = a5 * *v276 - a6 * v277;
                v279 = a6 * *v276 + a5 * v277;
                if (*(a2 + 12))
                {
                  v280 = v229 + *(a2 + 8) * (v627 + v110);
                }

                else
                {
                  v280 = v627 + v110 + *(a2 + 8) * v229;
                }

                v281 = (*(a2 + 16) + 16 * v280);
                v282 = v281[1];
                v283 = v278 * *v281 - v279 * v282;
                v284 = v279 * *v281 + v278 * v282;
                v285 = *(a4 + 8);
                if (*(a4 + 12))
                {
                  v286 = v229 + v285 * (v624 + v627);
                }

                else
                {
                  v286 = v624 + v627 + v285 * v229;
                }

                v287 = (*(a4 + 16) + 16 * v286);
                v288 = v284 + v287[1];
                *v287 = v283 + *v287;
                v287[1] = v288;
                v230 = v627 + 1;
                v633 = (v633 + v105);
              }

              while (v627 + 1 != v629);
            }

            ++v229;
          }

          while (v229 != v618);
        }

        goto LABEL_107;
      }

      if (v618 < 1)
      {
        goto LABEL_107;
      }

      v179 = 0;
      v180 = v113 * v629;
      do
      {
        v181 = v629;
        if (!v629)
        {
          goto LABEL_190;
        }

        v182 = 0;
        v183 = v111;
        do
        {
          v184 = 0;
          v185 = v180;
          v632 = v183;
          do
          {
            v186 = *(v183 - 1);
            v187 = *v183;
            v188 = *(v8 + 12);
            if (v188 & 0x20) == 0 && (v188)
            {
              v189 = a5 * v186 + a6 * v187;
              v190 = a6 * v186 - a5 * v187;
              if (*(a2 + 12))
              {
                v191 = v182 + v110;
              }

              else
              {
                v191 = v179;
              }

              if (*(a2 + 12))
              {
                v192 = v179;
              }

              else
              {
                v192 = v182 + v110;
              }

              v193 = (*(a2 + 16) + 16 * (v192 + *(a2 + 8) * v191));
              v194 = v193[1];
              v195 = v189 * *v193 - v190 * v194;
              v196 = v190 * *v193 + v189 * v194;
              v197 = *(a4 + 16);
              v198 = *(a4 + 8);
              if ((*(a4 + 12) & 1) == 0)
              {
                v199 = v185 + v179 * v198;
                goto LABEL_188;
              }

LABEL_186:
              v199 = v179 + v198 * v185;
              goto LABEL_188;
            }

            v200 = a5 * v186 - a6 * v187;
            v201 = a6 * v186 + a5 * v187;
            if (*(a2 + 12))
            {
              v202 = v182 + v110;
            }

            else
            {
              v202 = v179;
            }

            if (*(a2 + 12))
            {
              v203 = v179;
            }

            else
            {
              v203 = v182 + v110;
            }

            v204 = (*(a2 + 16) + 16 * (v203 + *(a2 + 8) * v202));
            v205 = v204[1];
            v195 = v200 * *v204 - v201 * v205;
            v196 = v201 * *v204 + v200 * v205;
            v197 = *(a4 + 16);
            v198 = *(a4 + 8);
            if (*(a4 + 12))
            {
              goto LABEL_186;
            }

            v199 = v180 + v184 + v198 * v179;
LABEL_188:
            v206 = (v197 + 16 * v199);
            v207 = v196 + v206[1];
            *v206 = v195 + *v206;
            v206[1] = v207;
            ++v184;
            v183 += 2;
            ++v185;
            --v181;
          }

          while (v181);
          ++v182;
          v181 = v629;
          v183 = &v632[v105 / 8];
        }

        while (v182 != v629);
LABEL_190:
        ++v179;
      }

      while (v179 != v618);
      for (ii = 0; ii != v618; ++ii)
      {
        v209 = v629;
        if (v629)
        {
          v210 = 0;
          v211 = v111;
          do
          {
            v212 = v180;
            v213 = v211;
            do
            {
              v214 = *(v213 - 1);
              v215 = *v213;
              v216 = *(v8 + 12);
              if ((v216 & 0x20) != 0 || (v216 & 1) == 0)
              {
                v217 = a5 * v214 + a6 * v215;
                v218 = a6 * v214 - a5 * v215;
              }

              else
              {
                v217 = a5 * v214 - a6 * v215;
                v218 = a6 * v214 + a5 * v215;
              }

              v219 = *(a2 + 8);
              if (*(a2 + 12))
              {
                v220 = ii + v219 * v212;
              }

              else
              {
                v220 = v212 + ii * v219;
              }

              v221 = (*(a2 + 16) + 16 * v220);
              v222 = v221[1];
              v223 = v217 * *v221 - v218 * v222;
              v224 = v218 * *v221 + v217 * v222;
              if (*(a4 + 12))
              {
                v225 = v210 + v110;
              }

              else
              {
                v225 = ii;
              }

              if (*(a4 + 12))
              {
                v226 = ii;
              }

              else
              {
                v226 = v210 + v110;
              }

              v227 = (*(a4 + 16) + 16 * (v226 + *(a4 + 8) * v225));
              v228 = v224 + v227[1];
              *v227 = v223 + *v227;
              v227[1] = v228;
              v213 += 2;
              ++v212;
              --v209;
            }

            while (v209);
            ++v210;
            v211 = (v211 + v105);
            v209 = v629;
          }

          while (v210 != v629);
        }
      }

LABEL_107:
      ++v103;
      v15 = v616;
      v14 = v617;
      v109 = v617[v101];
      v111 += v104;
      v112 += v104;
    }

    while (v103 < v109);
    v99 = v8[1];
    LODWORD(v13) = v629;
LABEL_259:
    v100 += v13;
    v108 += v13;
    v103 = v109;
  }

  while (v101 < v99);
  return result;
}