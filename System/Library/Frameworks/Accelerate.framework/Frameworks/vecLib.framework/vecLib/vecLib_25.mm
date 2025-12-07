void sub_2367E31D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2367E31EC(void *a1, uint64_t a2)
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
      if (*(v23 + v18) & 1) != 0 || (sub_2367DE38C(v7, *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), *(v4 + 20), *(v4 + 21), v65, v64, v63, v62, v61, v59, v23, *(v4 + 15), v20), (*(*(v4 + 14) + v18)))
      {
        *(**(v4 + 21) + v22) = *(**(v4 + 21) + v22 - 8);
        v24 = *(v4 + 19);
        *(**(v4 + 20) + v22) = *(**(v4 + 20) + v22 - 8);
        v25 = sub_2367E064C(v7, HIDWORD(a2), *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), &v56 + 1, &v56, v55, v54, v63, v62, v61, v59, v57, *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), v24, v20, v21, *(v4 + 13), a1, v4);
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

uint64_t sub_2367E3678(uint64_t result, int a2, double *a3, int a4, double *a5, uint64_t a6, int a7, float64x2_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, float64x2_t a15, float64x2_t a16)
{
  if (*a5 != 0.0)
  {
    if (result <= 0)
    {
      v18 = -(-result & 7);
    }

    else
    {
      v18 = result & 7;
    }

    if (result <= 0)
    {
      v19 = -(-result & 3);
    }

    else
    {
      v19 = result & 3;
    }

    if (result >= 0)
    {
      v20 = result & 1;
    }

    else
    {
      v20 = -(result & 1);
    }

    v21 = a2 & 3;
    if (a2 <= 0)
    {
      v21 = -(-a2 & 3);
    }

    v22 = result - v18;
    v23 = result - v19;
    v24 = a2 - v21;
    if (v22 < 1)
    {
      LODWORD(v25) = 0;
    }

    else
    {
      v25 = 0;
      v26 = 8 * a4;
      v27 = 8 * a7;
      v28 = v27 - 48;
      v29 = a6;
      do
      {
        v30 = (a6 + 8 * v25);
        v32 = *v30;
        v33 = v30[1];
        v34 = v30[2];
        v35 = v30[3];
        v31 = (v30 + v27);
        v37 = *v31;
        v38 = v31[1];
        v39 = v31[2];
        v40 = v31[3];
        v36 = (v31 + v27);
        v42.f64[0] = *a3;
        v42.f64[1] = a3[a4];
        v41 = &a3[v26 / 8 + v26 / 8];
        *&a15.f64[0] = veor_s8(*&a15.f64[0], *&a15.f64[0]);
        *&a16.f64[0] = veor_s8(*&a16.f64[0], *&a16.f64[0]);
        *&v16.f64[0] = veor_s8(*&v16.f64[0], *&v16.f64[0]);
        *&v17.f64[0] = veor_s8(*&v17.f64[0], *&v17.f64[0]);
        if (v24 < 1)
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v24; i += 4)
          {
            v45.f64[0] = *v41;
            v44 = &v41[v26 / 8];
            v45.f64[1] = *v44;
            v46 = &v44[v26 / 8];
            v47 = vmlaq_n_f64(a15, v32, v42.f64[0]);
            v49 = *v36;
            v48 = v36 + 1;
            v50 = vmlaq_n_f64(a16, v33, v42.f64[0]);
            v51 = *v48++;
            v52 = vmlaq_n_f64(v16, v34, v42.f64[0]);
            v53 = *v48++;
            v54 = vmlaq_n_f64(v17, v35, v42.f64[0]);
            v56 = *v48;
            v55 = (v48 + v28);
            v57 = vmlaq_laneq_f64(v47, v37, v42, 1);
            v58 = *v55++;
            v59 = vmlaq_laneq_f64(v50, v38, v42, 1);
            v60 = *v55++;
            v61 = vmlaq_laneq_f64(v52, v39, v42, 1);
            v62 = *v55++;
            v63 = vmlaq_laneq_f64(v54, v40, v42, 1);
            v65 = *v55;
            v64 = (v55 + v28);
            v42.f64[0] = *v46;
            v66 = &v46[v26 / 8];
            v42.f64[1] = *v66;
            v41 = &v66[v26 / 8];
            v67 = vmlaq_n_f64(v57, v49, v45.f64[0]);
            v32 = *v64++;
            v68 = vmlaq_n_f64(v59, v51, v45.f64[0]);
            v33 = *v64++;
            v69 = vmlaq_n_f64(v61, v53, v45.f64[0]);
            v34 = *v64++;
            v70 = vmlaq_n_f64(v63, v56, v45.f64[0]);
            v35 = *v64;
            v71 = (v64 + v28);
            a15 = vmlaq_laneq_f64(v67, v58, v45, 1);
            v37 = *v71++;
            a16 = vmlaq_laneq_f64(v68, v60, v45, 1);
            v38 = *v71++;
            v16 = vmlaq_laneq_f64(v69, v62, v45, 1);
            v39 = *v71++;
            v17 = vmlaq_laneq_f64(v70, v65, v45, 1);
            v40 = *v71;
            v36 = (v71 + v28);
          }
        }

        v72 = a2 - i;
        if (a2 > i)
        {
          v73 = (a3 + v26 * i);
          v74 = (v29 + v27 * i);
          do
          {
            a15 = vmlaq_n_f64(a15, *v74, *v73);
            a16 = vmlaq_n_f64(a16, v74[1], *v73);
            v16 = vmlaq_n_f64(v16, v74[2], *v73);
            v17 = vmlaq_n_f64(v17, v74[3], *v73);
            v73 = (v73 + v26);
            v74 = (v74 + v27);
            --v72;
          }

          while (v72);
        }

        v75 = &a8[v25 / 2];
        *v75 = a15;
        v75[1] = a16;
        v75[2] = v16;
        v75[3] = v17;
        v25 += 8;
        v29 += 64;
      }

      while (v22 > v25);
    }

    v76 = result - v20;
    if (v25 >= v23)
    {
      LODWORD(v80) = v25;
    }

    else
    {
      v77 = 8 * a4;
      v78 = 8 * a7;
      v79 = v78 - 16;
      v80 = v25;
      v81 = a6 + 8 * v25;
      do
      {
        v82 = (a6 + 8 * v80);
        v84 = *v82;
        v85 = v82[1];
        v83 = (v82 + v78);
        v87 = *v83;
        v88 = v83[1];
        v86 = (v83 + v78);
        v90.f64[0] = *a3;
        v90.f64[1] = a3[a4];
        v89 = &a3[v77 / 8 + v77 / 8];
        *&a15.f64[0] = veor_s8(*&a15.f64[0], *&a15.f64[0]);
        *&a16.f64[0] = veor_s8(*&a16.f64[0], *&a16.f64[0]);
        if (v24 < 1)
        {
          j = 0;
        }

        else
        {
          for (j = 0; j < v24; j += 4)
          {
            v93.f64[0] = *v89;
            v92 = &v89[v77 / 8];
            v93.f64[1] = *v92;
            v94 = &v92[v77 / 8];
            v95 = vmlaq_n_f64(a15, v84, v90.f64[0]);
            v97 = *v86;
            v96 = v86 + 1;
            v98 = vmlaq_n_f64(a16, v85, v90.f64[0]);
            v100 = *v96;
            v99 = (v96 + v79);
            v101 = vmlaq_laneq_f64(v95, v87, v90, 1);
            v102 = *v99++;
            v103 = vmlaq_laneq_f64(v98, v88, v90, 1);
            v105 = *v99;
            v104 = (v99 + v79);
            v90.f64[0] = *v94;
            v106 = &v94[v77 / 8];
            v90.f64[1] = *v106;
            v89 = &v106[v77 / 8];
            v107 = vmlaq_n_f64(v101, v97, v93.f64[0]);
            v84 = *v104++;
            v108 = vmlaq_n_f64(v103, v100, v93.f64[0]);
            v85 = *v104;
            v109 = (v104 + v79);
            a15 = vmlaq_laneq_f64(v107, v102, v93, 1);
            v87 = *v109++;
            a16 = vmlaq_laneq_f64(v108, v105, v93, 1);
            v88 = *v109;
            v86 = (v109 + v79);
          }
        }

        v110 = a2 - j;
        if (a2 > j)
        {
          v111 = (a3 + v77 * j);
          v112 = (v81 + v78 * j);
          do
          {
            a15 = vmlaq_n_f64(a15, *v112, *v111);
            a16 = vmlaq_n_f64(a16, v112[1], *v111);
            v111 = (v111 + v77);
            v112 = (v112 + v78);
            --v110;
          }

          while (v110);
        }

        v113 = (a8 + 8 * v80);
        *v113 = a15;
        v113[1] = a16;
        v80 += 4;
        v81 += 32;
      }

      while (v23 > v80);
    }

    if (v80 >= v76)
    {
      LODWORD(v116) = v80;
    }

    else
    {
      v114 = 8 * a4;
      v115 = 8 * a7;
      v116 = v80;
      v117 = a6 + 8 * v80;
      do
      {
        v118 = (a6 + 8 * v116);
        v120 = *v118;
        v119 = (v118 + v115);
        v122 = *v119;
        v121 = (v119 + v115);
        v124.f64[0] = *a3;
        v124.f64[1] = a3[a4];
        v123 = &a3[v114 / 8 + v114 / 8];
        *&a15.f64[0] = veor_s8(*&a15.f64[0], *&a15.f64[0]);
        if (v24 < 1)
        {
          k = 0;
        }

        else
        {
          for (k = 0; k < v24; k += 4)
          {
            v127.f64[0] = *v123;
            v126 = &v123[v114 / 8];
            v127.f64[1] = *v126;
            v128 = &v126[v114 / 8];
            v129 = vmlaq_n_f64(a15, v120, v124.f64[0]);
            v131 = *v121;
            v130 = (v121 + v115);
            v132 = vmlaq_laneq_f64(v129, v122, v124, 1);
            v134 = *v130;
            v133 = (v130 + v115);
            v124.f64[0] = *v128;
            v135 = &v128[v114 / 8];
            v124.f64[1] = *v135;
            v123 = &v135[v114 / 8];
            v136 = vmlaq_n_f64(v132, v131, v127.f64[0]);
            v120 = *v133;
            v137 = (v133 + v115);
            a15 = vmlaq_laneq_f64(v136, v134, v127, 1);
            v122 = *v137;
            v121 = (v137 + v115);
          }
        }

        v138 = a2 - k;
        if (a2 > k)
        {
          v139 = (a3 + v114 * k);
          v140 = (v117 + v115 * k);
          do
          {
            a15 = vmlaq_n_f64(a15, *v140, *v139);
            v139 = (v139 + v114);
            v140 = (v140 + v115);
            --v138;
          }

          while (v138);
        }

        *(a8 + 8 * v116) = a15;
        v116 += 2;
        v117 += 16;
      }

      while (v76 > v116);
    }

    if (v116 < result)
    {
      v141 = v116;
      v142 = (a6 + 8 * v116);
      do
      {
        v143 = 0.0;
        if (a2 >= 1)
        {
          v144 = a2;
          v145 = v142;
          v146 = a3;
          do
          {
            v143 = v143 + *v145 * *v146;
            v146 += a4;
            v145 += a7;
            --v144;
          }

          while (v144);
        }

        a8->f64[v141++] = v143;
        ++v142;
      }

      while (v141 != result);
    }

    v147 = a2 & 1;
    if (a2 < 0)
    {
      v147 = -v147;
    }

    v148 = (a2 - v147);
    v197 = -*a5;
    if (v148 < 1)
    {
      LODWORD(v149) = 0;
    }

    else
    {
      v149 = 0;
      v150 = a4;
      v151 = 16 * a7;
      v152 = a6;
      v153 = a3;
      v154 = a6 + 8 * a7;
      do
      {
        v155 = (a6 + 8 * v149 * a7);
        v156 = (a6 + 8 * (v149 | 1) * a7);
        v158.f64[0] = *v153;
        v157 = &v153[v150];
        v158.f64[1] = *v157;
        v153 = &v157[v150];
        v159 = vmulq_n_f64(v158, v197);
        if (v23 < 1)
        {
          v160 = 0;
          v161 = a8;
        }

        else
        {
          v160 = 0;
          v161 = a8;
          do
          {
            v162 = *v161;
            v163 = v161[1];
            v161 += 2;
            v164 = vmlaq_n_f64(v155[1], v163, v159.f64[0]);
            v165 = vmlaq_laneq_f64(*v156, v162, v159, 1);
            v166 = vmlaq_laneq_f64(v156[1], v163, v159, 1);
            *v155 = vmlaq_n_f64(*v155, v162, v159.f64[0]);
            v155[1] = v164;
            v155 += 2;
            *v156 = v165;
            v156[1] = v166;
            v156 += 2;
            v160 += 4;
          }

          while (v160 < v23);
        }

        while (v160 < v76)
        {
          v167 = *v161++;
          v168 = vmlaq_laneq_f64(*v156, v167, v159, 1);
          *v155 = vmlaq_n_f64(*v155, v167, v159.f64[0]);
          ++v155;
          *v156++ = v168;
          v160 += 2;
        }

        if (v160 < result)
        {
          v169 = (v154 + 8 * v160);
          v170 = (v152 + 8 * v160);
          f64 = a8[v160 / 2u].f64;
          v172 = result - v160;
          do
          {
            *v170 = *v170 + *f64 * a3[v149 * a4] * v197;
            ++v170;
            v173 = *f64++;
            *v169 = *v169 + v173 * a3[(v149 | 1) * a4] * v197;
            ++v169;
            --v172;
          }

          while (v172);
        }

        v149 += 2;
        v154 += v151;
        v152 += v151;
      }

      while (v149 < v148);
    }

    if (v149 < a2)
    {
      v174 = v149;
      v175 = a7;
      v176 = a6 + 8 * v149 * a7;
      v177 = 8 * a7;
      do
      {
        v178 = (a6 + 8 * v174 * v175);
        v179 = v197 * a3[v174 * a4];
        if (v22 < 1)
        {
          v180 = 0;
          v181 = a8;
        }

        else
        {
          v180 = 0;
          v181 = a8;
          do
          {
            v182 = *v181;
            v183 = v181[1];
            v184 = v181[2];
            v185 = v181[3];
            v181 += 4;
            v186 = vmlaq_n_f64(v178[1], v183, v179);
            v187 = vmlaq_n_f64(v178[2], v184, v179);
            v188 = vmlaq_n_f64(v178[3], v185, v179);
            *v178 = vmlaq_n_f64(*v178, v182, v179);
            v178[1] = v186;
            v178[2] = v187;
            v178[3] = v188;
            v178 += 4;
            v180 += 8;
          }

          while (v180 < v22);
        }

        while (v180 < v23)
        {
          v189 = *v181;
          v190 = v181[1];
          v181 += 2;
          v191 = vmlaq_n_f64(v178[1], v190, v179);
          *v178 = vmlaq_n_f64(*v178, v189, v179);
          v178[1] = v191;
          v178 += 2;
          v180 += 4;
        }

        while (v180 < v76)
        {
          v192 = *v181++;
          *v178 = vmlaq_n_f64(*v178, v192, v179);
          ++v178;
          v180 += 2;
        }

        if (v180 < result)
        {
          v193 = (v176 + 8 * v180);
          v194 = a8[v180 / 2u].f64;
          v195 = result - v180;
          do
          {
            v196 = *v194++;
            *v193 = *v193 + v196 * a3[v174 * a4] * v197;
            ++v193;
            --v195;
          }

          while (v195);
        }

        ++v174;
        v176 += v177;
      }

      while (v174 != a2);
    }
  }

  return result;
}

uint64_t sub_2367E3E64(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4, int *a5, uint64_t a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = *(a6 + 4);
  if ((a1 & 0xFC) == 0x50)
  {
    v12 = 5;
  }

  else
  {
    v12 = 2;
  }

  if (*(a6 + 4))
  {
    v12 = *(a6 + 4);
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      LODWORD(v44) = *(a2 + 4);
      v28 = v44;
      v29 = (*(a6 + 24))(4 * v44 + 4);
      if (v29)
      {
        v30 = v29;
        if ((v44 & 0x80000000) == 0)
        {
          v31 = 0;
          v32 = *(a2 + 8);
          do
          {
            v29[v31] = *(v32 + 8 * v31);
          }

          while (v31++ < v28);
        }

        sub_236815220(&v44, v29, *(a2 + 16), a3, 0, a5, a4);
        (*(a6 + 32))(v30);
        goto LABEL_33;
      }

      if (*(a6 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", 4 * v44 + 4);
        goto LABEL_66;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v12 != 5)
      {
        if (!*(a6 + 40))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367E4508();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "The specified options.orderMethod (%d) is not supported for thisfactorization type (%d).\n", v11, a1);
        (*(a6 + 40))(__str);
        goto LABEL_33;
      }

      v18 = *(a2 + 4);
      LODWORD(v44) = v18;
      v19 = (*(a6 + 24))(4 * (v18 + 1));
      if (v19)
      {
        v20 = v19;
        if (v18 != -1)
        {
          v21 = 0;
          v22 = *(a2 + 8);
          do
          {
            *(v19 + 4 * v21) = *(v22 + 8 * v21);
            ++v21;
          }

          while (v21 < (v18 + 1));
        }

        v23 = sub_2366E59A8();
        sub_2366E6428(&v44, v20, *(a2 + 16), a3, v23, a5, a4);
        free(v23);
        (*(a6 + 32))(v20);
        goto LABEL_33;
      }

      if (*(a6 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", 4 * (v18 + 1));
        goto LABEL_66;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    sub_2367E43C8();
    goto LABEL_74;
  }

  if (v12 != 1)
  {
    v13 = *(a2 + 4);
    v14 = v13;
    if (a3)
    {
      if (v13 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = *(a2 + 4);
        v16 = a3;
        do
        {
          v17 = *v16;
          v16 += 4;
          v14 += v17;
          --v15;
        }

        while (v15);
      }
    }

    v44 = 0;
    if (_SparseAMDWorkspaceSizeWithOverflowCheck(v13, *(*(a2 + 8) + 8 * v13), v14, &v44))
    {
      v39 = *(a6 + 40);
      if (v39)
      {
        memset(&__str[44], 0, 212);
        strcpy(__str, "AMD workspace size calculation overflowed.\n");
LABEL_67:
        v39(__str);
        return 0xFFFFFFFFLL;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367E44C4();
      }

LABEL_74:
      _SparseTrap();
    }

    v40 = (*(a6 + 24))(v44);
    if (v40)
    {
      v41 = v40;
      v42 = *(a2 + 16);
      *__str = *a2;
      *&__str[16] = v42;
      _SparseAMD(__str, a3, 0, a5, v40);
      (*(a6 + 32))(v41);
      if (*(a2 + 4) >= 1)
      {
        v43 = 0;
        do
        {
          a4[a5[v43]] = v43;
          ++v43;
        }

        while (v43 < *(a2 + 4));
      }

      goto LABEL_33;
    }

    if (!*(a6 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367E4444();
      }

      goto LABEL_74;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v44);
LABEL_66:
    v39 = *(a6 + 40);
    goto LABEL_67;
  }

  v24 = *(a6 + 8);
  v25 = *(a2 + 4);
  if (v24)
  {
    if (v25 >= 1)
    {
      v26 = 0;
      do
      {
        a4[v26] = *(v24 + 4 * v26);
        ++v26;
        v27 = *(a2 + 4);
      }

      while (v26 < v27);
      goto LABEL_47;
    }
  }

  else if (v25 >= 1)
  {
    v37 = 0;
    do
    {
      a4[v37] = v37;
      ++v37;
      v27 = *(a2 + 4);
    }

    while (v37 < v27);
LABEL_47:
    if (v27 >= 1)
    {
      v38 = 0;
      do
      {
        a5[a4[v38]] = v38;
        ++v38;
      }

      while (v38 < *(a2 + 4));
    }
  }

LABEL_33:
  v34 = *(a6 + 8);
  if (v34 && *(a6 + 4) != 1 && *(a2 + 4) >= 1)
  {
    v35 = 0;
    do
    {
      *(v34 + 4 * v35) = a4[v35];
      ++v35;
    }

    while (v35 < *(a2 + 4));
  }

  return 0;
}

void sub_2367E4598(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v8 = *a1;
  v7 = a1[1];
  *a3 = v7;
  *(a3 + 4) = v8;
  v9 = a1[6];
  v10 = (&a2[v8 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a3 + 24) = 0;
  *(a3 + 32) = v10;
  *(a3 + 24) = v9;
  *(a3 + 28) = v5;
  v11 = *(a1 + 1);
  v12 = v10 + 8 * v6 * v11[v7];
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9 ^ 2;
  v13 = a2 + 2;
  if (v8 >= 1)
  {
    bzero(v13, 8 * v8);
  }

  if (v7 >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      v16 = v11[++v14];
      if (v15 < v16)
      {
        v17 = *(a1 + 2);
        do
        {
          v18 = *(v17 + 4 * v15);
          if ((v18 & 0x80000000) == 0 && v18 < v8)
          {
            ++v13[v18];
            v16 = v11[v14];
          }

          ++v15;
        }

        while (v15 < v16);
      }

      v15 = v16;
    }

    while (v14 != v7);
  }

  a2[1] = 0;
  v19 = a2 + 1;
  *a2 = 0;
  if (v8 > 1)
  {
    v20 = 0;
    v21 = v8 - 1;
    v22 = a2 + 2;
    do
    {
      v20 += *v22;
      *v22++ = v20;
      --v21;
    }

    while (v21);
  }

  if (v7 >= 1)
  {
    v23 = 0;
    v24 = 8 * v5;
    LODWORD(v25) = v5;
    v26 = v5;
    do
    {
      v27 = v23;
      v28 = v11[v23++];
      if (v28 < v11[v23])
      {
        do
        {
          v29 = *(*(a1 + 2) + 4 * v28);
          if ((v29 & 0x80000000) == 0 && v29 < *a1)
          {
            v30 = v19[v29];
            v19[v29] = v30 + 1;
            *(v12 + 4 * v30) = v27;
            if (v26)
            {
              v31 = 0;
              v32 = *(a1 + 4) + 8 * v28 * v6;
              v33 = v10 + 4 + 8 * v6 * v30;
              do
              {
                if (v25)
                {
                  v34 = 0;
                  v35 = v33;
                  do
                  {
                    v36 = v32 + 8 * v31 + 8 * (v34 * v25);
                    v37 = -*(v36 + 4);
                    *(v35 - 1) = *v36;
                    *v35 = v37;
                    ++v34;
                    v25 = *(a1 + 28);
                    v35 += 2;
                    LODWORD(v5) = *(a1 + 28);
                  }

                  while (v34 < v25);
                }

                else
                {
                  v25 = v5;
                }

                ++v31;
                v33 += v24;
                v38 = v31 >= v25;
                LODWORD(v25) = v5;
              }

              while (!v38);
              v11 = *(a1 + 1);
              LODWORD(v25) = v5;
              v26 = v5;
            }
          }

          ++v28;
        }

        while (v28 < v11[v23]);
        LODWORD(v7) = a1[1];
      }
    }

    while (v23 < v7);
  }
}

int *_SparseNumericFactorQR_Complex_Float@<X0>(__int128 *a1@<X0>, int *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, char *a6@<X4>)
{
  v6 = a6;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v12 = a1[2];
  *(a5 + 56) = a1[3];
  *(a5 + 40) = v12;
  v13 = *a1;
  *(a5 + 24) = a1[1];
  v14 = *(a1 + 17);
  v16 = *a2;
  v15 = a2[1];
  v17 = *(a2 + 28);
  *a5 = -3;
  *(a5 + 8) = v13;
  *(a5 + 72) = 1;
  *(a5 + 88) = 0;
  v18 = (a5 + 88);
  *(a5 + 96) = 0;
  v19 = (a5 + 96);
  *(a5 + 80) = 0;
  v20 = *(a1 + 3);
  atomic_fetch_add((v20 + 48), 1u);
  if (*(a1 + 17) == 40)
  {
    if (a2[1] <= *a2)
    {
      v21 = *a2;
    }

    else
    {
      v21 = a2[1];
    }

    v27 = v15;
    v28 = v14;
    sub_23678B078(v21 * *(a2 + 28), *(a1 + 3), v18, v19);
    v15 = v27;
    v14 = v28;
    v22 = 2 * v21;
    v6 = a6;
    v23 = *v19 + 8 * *(a2 + 28) * v22;
  }

  else
  {
    *v18 = 0;
    v23 = 16 * a2[1] * *(a2 + 28);
  }

  if (v16 >= v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = v16;
  }

  *(a5 + 96) = v23;
  *(a5 + 80) = sub_236796F24(v14, v24 * v17, v20, 2 * *(a1 + 6), v20, a3, a4);

  return _SparseRefactorQR_Complex_Float(a2, a5, v25, v6);
}

int *_SparseRefactorQR_Complex_Float(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = a1;
  *a2 = -3;
  v7 = *(a2 + 32);
  v8 = (*(a1 + 12) >> 2) & 7;
  if (v8 <= 1)
  {
    if (v8)
    {
      result = sub_2367E6A60(a1, *(a2 + 32));
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (*(v7 + 53) != 1)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v11 = *(a1 + 1);
      v16 = *a1;
      v17 = v11;
      v18 = *(a1 + 4);
      result = sub_2367E674C(&v16, v7);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    v9 = *(a2 + 32);
    if (v8 == 2)
    {
      result = sub_2367E6DC4(a1, v9);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_2367E71B8(a1, v9);
      if (!result)
      {
        return result;
      }
    }
  }

  v6 = result;
  v12 = 1;
LABEL_13:
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  if (*(v7 + 52))
  {
    v13 = *(v6 + 1);
    v16 = *v6;
    v17 = v13;
    v18 = *(v6 + 4);
    v14 = a4;
  }

  else
  {
    sub_2367E4598(v6, a4, &v16);
    v15 = *(*(v6 + 1) + 8 * v6[1]);
    v14 = (&a4[8 * *v6 + 31 + 8 * v15 * BYTE12(v17) * BYTE12(v17) + 4 * v15] & 0xFFFFFFFFFFFFFFF8);
  }

  result = sub_2367E785C(*(a2 + 25), &v16, v7, *(a2 + 80), v14, a4 - v14 + 2 * *(a2 + 40));
  *a2 = result;
  if (v12)
  {
    return (*(v7 + 32))(v6);
  }

  return result;
}

uint64_t _SparseFactorQR_Complex_Float@<X0>(unsigned int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v413 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 12);
  if (v10 & 0x20) == 0 && (v10)
  {
    v11 = *(a3 + 40);
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EBF0();
      }

      _SparseTrap();
    }

    memset(&__str[68], 0, 188);
    strcpy(__str, "QR factorization can only factor matrix or its conjugate transpose\n");
    v11(__str);
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = -3;
  v12 = *a2;
  v13 = a2[1];
  *(a5 + 8) = -3;
  *(a5 + 12) = v12;
  *(a5 + 16) = v13;
  v14 = *(a2 + 12);
  *(a5 + 20) = a2[6] & 1;
  *(a5 + 24) = *(a2 + 28);
  v15 = (v14 >> 2) & 7;
  *(a5 + 25) = a1;
  if (v15 <= 1)
  {
    if (v15)
    {
      result = sub_2367E6A60(a2, v6);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v17 = *(a2 + 1);
      *__str = *a2;
      *&__str[16] = v17;
      *&__str[32] = *(a2 + 4);
      result = sub_2367E674C(__str, v6);
      if (!result)
      {
        return result;
      }
    }
  }

  else if (v15 == 2)
  {
    result = sub_2367E6DC4(a2, v6);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_2367E71B8(a2, v6);
    if (!result)
    {
      return result;
    }
  }

  v18 = result;
  v19 = 8 * v12 + 16;
  v20 = v19 + 4 * *(*(result + 8) + 8 * v13);
  v21 = (*(v6 + 24))(v20);
  if (v21)
  {
    v22 = v21;
    v383 = v13;
    v384 = a4;
    v385 = a1;
    v396 = a5;
    v409 = 0u;
    v410 = 0u;
    v23 = v18[1];
    *__str = *v18;
    *&__str[16] = v23;
    _SparseFromStructureComplex(__str, &v409);
    v24 = DWORD1(v409);
    v25 = v409;
    v403 = DWORD1(v409);
    v404 = v409;
    v26 = &v22[v409 + 1];
    v405 = v22;
    v406 = v26;
    v407 = DWORD2(v410);
    v408 = BYTE12(v410);
    if (v409 >= 1)
    {
      bzero(v22 + 2, 8 * v409);
    }

    if (v24 >= 1)
    {
      v27 = 0;
      v28 = *(&v409 + 1);
      v29 = v410;
      v30 = **(&v409 + 1);
      do
      {
        ++v27;
        v31 = *(v28 + 8 * v27);
        while (v30 < v31)
        {
          v32 = *(v29 + 4 * v30);
          if ((v32 & 0x80000000) == 0 && v32 < v25)
          {
            ++v22[v32 + 2];
            v31 = *(v28 + 8 * v27);
          }

          ++v30;
        }

        v30 = v31;
      }

      while (v27 != v24);
    }

    v22[1] = 0;
    v33 = v22 + 1;
    *v22 = 0;
    if (v25 > 1)
    {
      v34 = 0;
      v35 = v25 - 1;
      v36 = v22 + 2;
      do
      {
        v34 += *v36;
        *v36++ = v34;
        --v35;
      }

      while (v35);
    }

    if (v24 >= 1)
    {
      v37 = 0;
      v38 = *(&v409 + 1);
      v39 = v410;
      v40 = **(&v409 + 1);
      do
      {
        v41 = v37++;
        v42 = *(v38 + 8 * v37);
        if (v40 < v42)
        {
          do
          {
            v43 = *(v39 + 4 * v40);
            if ((v43 & 0x80000000) == 0 && v43 < v409)
            {
              v44 = v33[v43];
              v33[v43] = v44 + 1;
              *(v26 + 4 * v44) = v41;
              v42 = *(v38 + 8 * v37);
            }

            ++v40;
          }

          while (v40 < v42);
          LODWORD(v24) = DWORD1(v409);
        }

        v40 = v42;
      }

      while (v37 < v24);
    }

    v398 = v22;
    v399 = v6;
    v382 = v19;
    v45 = BYTE12(v410);
    v46 = DWORD2(v410);
    if (BYTE8(v410))
    {
      v47 = DWORD1(v409);
    }

    else
    {
      v47 = v409;
    }

    if (BYTE8(v410))
    {
      v48 = v409;
    }

    else
    {
      v48 = DWORD1(v409);
    }

    v49 = BYTE12(v410) * v47;
    v50 = BYTE12(v410) * v48;
    if (*(v6 + 16))
    {
      v51 = v50 + v49 + 4 * (v50 + v49 + v409 + DWORD1(v409) + 2) + 48;
      v52 = (*(v6 + 24))(v51);
      if (!v52)
      {
        if (!*(v6 + 40))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672EC38();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v51);
        (*(v6 + 40))(__str);
        v84 = v22;
        *v396 = -3;
        goto LABEL_233;
      }

      v53 = v52;
      v54 = &v52[v51];
      v55 = (&v52[v49 + 7] & 0xFFFFFFFFFFFFFFF8);
      if (v54 < v55)
      {
        goto LABEL_466;
      }

      v392 = v18;
      v56 = (v55 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v56)
      {
        goto LABEL_466;
      }

      v376 = a2;
      v57 = (v56 + 4 * v49 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v57)
      {
        goto LABEL_466;
      }

      v58 = (v57 + 4 * v50 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v58)
      {
        goto LABEL_466;
      }

      v59 = (v58 + 4 * v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v59 || v54 < ((v59 + 4 * v48 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }

      v60 = BYTE12(v410);
      v46 = DWORD2(v410);
      if (BYTE8(v410))
      {
        v61 = DWORD1(v409);
      }

      else
      {
        v61 = v409;
      }

      if (BYTE8(v410))
      {
        v62 = v409;
      }

      else
      {
        v62 = DWORD1(v409);
      }

      v50 = BYTE12(v410) * v62;
      if (*(v399 + 16))
      {
        v388 = v62;
        v390 = *(v399 + 16);
        v393 = BYTE12(v410) * v61;
        bzero(v52, BYTE12(v410) * v61);
        bzero(v55, v50);
        if (v61 >= 1)
        {
          v63 = (v61 + 3) & 0xFFFFFFFC;
          v64 = vdupq_n_s64(v61 - 1);
          v65 = xmmword_23681F910;
          v66 = xmmword_23681F920;
          v67 = (v58 + 8);
          v68 = vdupq_n_s64(4uLL);
          do
          {
            v69 = vmovn_s64(vcgeq_u64(v64, v66));
            if (vuzp1_s16(v69, *v64.i8).u8[0])
            {
              *(v67 - 2) = v60;
            }

            if (vuzp1_s16(v69, *&v64).i8[2])
            {
              *(v67 - 1) = v60;
            }

            if (vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, *&v65))).i32[1])
            {
              *v67 = v60;
              v67[1] = v60;
            }

            v65 = vaddq_s64(v65, v68);
            v66 = vaddq_s64(v66, v68);
            v67 += 4;
            v63 -= 4;
          }

          while (v63);
        }

        if (v388 >= 1)
        {
          v70 = (v388 + 3) & 0xFFFFFFFC;
          v71 = vdupq_n_s64(v388 - 1);
          v72 = xmmword_23681F910;
          v73 = xmmword_23681F920;
          v74 = (v59 + 8);
          v75 = vdupq_n_s64(4uLL);
          do
          {
            v76 = vmovn_s64(vcgeq_u64(v71, v73));
            if (vuzp1_s16(v76, *v71.i8).u8[0])
            {
              *(v74 - 2) = v60;
            }

            if (vuzp1_s16(v76, *&v71).i8[2])
            {
              *(v74 - 1) = v60;
            }

            if (vuzp1_s16(*&v71, vmovn_s64(vcgeq_u64(v71, *&v72))).i32[1])
            {
              *v74 = v60;
              v74[1] = v60;
            }

            v72 = vaddq_s64(v72, v75);
            v73 = vaddq_s64(v73, v75);
            v74 += 4;
            v70 -= 4;
          }

          while (v70);
        }

        v77 = *v390;
        if (*v390 < 0)
        {
          v79 = 0;
          v78 = 0;
        }

        else
        {
          v78 = 0;
          v79 = 0;
          v80 = v390 + 1;
          do
          {
            v81 = v77 - v393;
            if (v77 >= v393)
            {
              *(v57 + 4 * v79++) = v81;
              *(v55 + v81) = 1;
              v82 = (v59 + 4 * (v81 / v60));
            }

            else
            {
              *(v56 + 4 * v78++) = v77;
              v53[v77] = 1;
              v82 = (v58 + 4 * (v77 / v60));
            }

            --*v82;
            v83 = *v80++;
            v77 = v83;
          }

          while ((v83 & 0x80000000) == 0);
        }

        if (BYTE8(v410))
        {
          if (v404 >= 1)
          {
            v85 = 0;
            v86 = 0;
            v87 = v405;
            v88 = v406;
            do
            {
              if (*(v59 + 4 * v86))
              {
                v89 = &v87[v86];
                v91 = *v89;
                v90 = v89[1];
                v162 = v90 <= v91;
                v92 = v90 - v91;
                if (v162)
                {
LABEL_108:
                  *(v59 + 4 * v86) = 0;
                  if (v60)
                  {
                    v96 = v85;
                    v97 = v60;
                    do
                    {
                      if ((*(v55 + v96) & 1) == 0)
                      {
                        *(v57 + 4 * v79++) = v96;
                      }

                      *(v55 + v96++) = 1;
                      --v97;
                    }

                    while (v97);
                  }
                }

                else
                {
                  v93 = (v88 + 4 * v91);
                  while (1)
                  {
                    v95 = *v93++;
                    v94 = v95;
                    if ((v95 & 0x80000000) == 0 && v94 < v403 && *(v58 + 4 * v94))
                    {
                      break;
                    }

                    if (!--v92)
                    {
                      goto LABEL_108;
                    }
                  }
                }
              }

              ++v86;
              v85 += v60;
            }

            while (v86 < v404);
          }

          if (SDWORD1(v409) >= 1)
          {
            v98 = 0;
            v99 = 0;
            v100 = *(&v409 + 1);
            v101 = v410;
            do
            {
              if (*(v58 + 4 * v99))
              {
                v102 = (v100 + 8 * v99);
                v104 = *v102;
                v103 = v102[1];
                v162 = v103 <= v104;
                v105 = v103 - v104;
                if (v162)
                {
LABEL_123:
                  *(v58 + 4 * v99) = 0;
                  if (v60)
                  {
                    v109 = v98;
                    v110 = v60;
                    do
                    {
                      if ((v53[v109] & 1) == 0)
                      {
                        *(v56 + 4 * v78++) = v109;
                      }

                      v53[v109++] = 1;
                      --v110;
                    }

                    while (v110);
                  }
                }

                else
                {
                  v106 = (v101 + 4 * v104);
                  while (1)
                  {
                    v108 = *v106++;
                    v107 = v108;
                    if ((v108 & 0x80000000) == 0 && v107 < v409 && *(v59 + 4 * v107))
                    {
                      break;
                    }

                    if (!--v105)
                    {
                      goto LABEL_123;
                    }
                  }
                }
              }

              ++v99;
              v98 += v60;
            }

            while (v99 < SDWORD1(v409));
          }
        }

        else
        {
          if (SDWORD1(v409) >= 1)
          {
            v111 = 0;
            v112 = 0;
            v113 = *(&v409 + 1);
            v114 = v410;
            do
            {
              if (*(v59 + 4 * v112))
              {
                v115 = (v113 + 8 * v112);
                v117 = *v115;
                v116 = v115[1];
                v162 = v116 <= v117;
                v118 = v116 - v117;
                if (v162)
                {
LABEL_139:
                  *(v59 + 4 * v112) = 0;
                  if (v60)
                  {
                    v122 = v111;
                    v123 = v60;
                    do
                    {
                      if ((*(v55 + v122) & 1) == 0)
                      {
                        *(v57 + 4 * v79++) = v122;
                      }

                      *(v55 + v122++) = 1;
                      --v123;
                    }

                    while (v123);
                  }
                }

                else
                {
                  v119 = (v114 + 4 * v117);
                  while (1)
                  {
                    v121 = *v119++;
                    v120 = v121;
                    if ((v121 & 0x80000000) == 0 && v120 < v409 && *(v58 + 4 * v120))
                    {
                      break;
                    }

                    if (!--v118)
                    {
                      goto LABEL_139;
                    }
                  }
                }
              }

              ++v112;
              v111 += v60;
            }

            while (v112 < SDWORD1(v409));
          }

          if (v404 >= 1)
          {
            v124 = 0;
            v125 = 0;
            v126 = v405;
            v127 = v406;
            do
            {
              if (*(v58 + 4 * v125))
              {
                v128 = &v126[v125];
                v130 = *v128;
                v129 = v128[1];
                v162 = v129 <= v130;
                v131 = v129 - v130;
                if (v162)
                {
LABEL_154:
                  *(v58 + 4 * v125) = 0;
                  if (v60)
                  {
                    v135 = v124;
                    v136 = v60;
                    do
                    {
                      if ((v53[v135] & 1) == 0)
                      {
                        *(v56 + 4 * v78++) = v135;
                      }

                      v53[v135++] = 1;
                      --v136;
                    }

                    while (v136);
                  }
                }

                else
                {
                  v132 = (v127 + 4 * v130);
                  while (1)
                  {
                    v134 = *v132++;
                    v133 = v134;
                    if ((v134 & 0x80000000) == 0 && v133 < v403 && *(v59 + 4 * v133))
                    {
                      break;
                    }

                    if (!--v131)
                    {
                      goto LABEL_154;
                    }
                  }
                }
              }

              ++v125;
              v124 += v60;
            }

            while (v125 < v404);
          }
        }

        LODWORD(v49) = v393 - v78;
        LODWORD(v50) = v50 - v79;
        *(v56 + 4 * v78) = -1;
        *(v57 + 4 * v79) = -1;
        v46 = DWORD2(v410);
      }

      else
      {
        LODWORD(v49) = BYTE12(v410) * v61;
      }
    }

    else
    {
      v376 = a2;
      v392 = v18;
      v56 = 0;
      v57 = 0;
      v59 = 0;
      v58 = 0;
      v55 = 0;
      v53 = 0;
    }

    v137 = (v46 ^ (v49 < v50)) & 1;
    if (v49 < v50)
    {
      v138 = v50;
    }

    else
    {
      v138 = v49;
    }

    if (v49 < v50)
    {
      v139 = v49;
    }

    else
    {
      v139 = v50;
    }

    if (v49 < v50)
    {
      v140 = v53;
    }

    else
    {
      v140 = v55;
    }

    if (v49 < v50)
    {
      v141 = v59;
    }

    else
    {
      v141 = v58;
    }

    v379 = v141;
    __src = v140;
    if (v49 < v50)
    {
      v142 = v58;
    }

    else
    {
      v142 = v59;
    }

    if (v49 < v50)
    {
      v143 = v56;
    }

    else
    {
      v143 = v57;
    }

    if (v49 < v50)
    {
      v56 = v57;
    }

    v144 = &v403;
    if (v137)
    {
      v145 = &v409;
    }

    else
    {
      v145 = &v403;
    }

    if (v137)
    {
      v146 = &v403;
    }

    else
    {
      v146 = &v409;
    }

    v389 = v138;
    v391 = v139;
    if (v138 < v139)
    {
      goto LABEL_466;
    }

    v386 = v146;
    v387 = *v146;
    v394 = v137;
    if (!v137)
    {
      v144 = &v409;
    }

    *v397 = *(v144 + 1);
    v147 = v397[0] * v45;
    v148 = v147 + 8;
    v149 = v399;
    if (!*(v399 + 16))
    {
      v148 = 0;
    }

    v150 = v148 + 4 * v147 + 224;
    v151 = (*(v399 + 24))(v150);
    if (!v151)
    {
      if (!*(v399 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672EC38();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v150);
      (*(v399 + 40))(__str);
      v152 = 0;
      *v396 = -3;
LABEL_351:
      if (*(v149 + 16))
      {
        (*(v149 + 32))(v53);
      }

      v302 = *(v149 + 32);
      v182 = (v149 + 32);
      v302(v398);
      if (v152)
      {
        v303 = *(v392 + 28);
        if (*v392 >= *(v392 + 1))
        {
          v304 = *(v392 + 1);
        }

        else
        {
          v304 = *v392;
        }

        v305 = v409;
        v306 = BYTE12(v410);
        if (*(v152 + 52))
        {
          v307 = 0;
          v308 = 0;
        }

        else
        {
          v310 = 8 * (v409 + 2);
          v311 = v310 + 8;
          v312 = v310 >= 0xFFFFFFFFFFFFFFF8;
          if ((v409 + 2) >> 61 || v312)
          {
            goto LABEL_374;
          }

          v305 = DWORD1(v409);
          v313 = *(*(&v409 + 1) + 8 * SDWORD1(v409));
          v308 = v311 + 4 * v313;
          v314 = __CFADD__(v311, 4 * v313);
          if (v313 >> 62 || v314 || !is_mul_ok(v313, 8 * BYTE12(v410) * BYTE12(v410)))
          {
            goto LABEL_374;
          }

          v307 = v313 * 8 * BYTE12(v410) * BYTE12(v410);
        }

        if (v385 == 40)
        {
          v309 = 0;
        }

        else
        {
          v309 = *(v152 + 168);
        }

        v315 = *(v152 + 184);
        v316 = v315 + v309;
        if (!__CFADD__(v315, v309))
        {
          *__str = 1;
          LODWORD(v400) = -1;
          v411 = 10000;
          v318 = ilaenv_NEWLAPACK();
          v319 = v385 == 40 ? v318 : v318 + 1;
          v320 = *(v152 + 176);
          v321 = !is_mul_ok(v319, v320);
          v322 = v319 * v320;
          v323 = __CFADD__(v316, v322);
          v324 = v316 + v322;
          v325 = v323;
          if (!v321 && !v325)
          {
            v323 = __CFADD__(v324, v307);
            v326 = v324 + v307;
            if (!v323)
            {
              v327 = v305 * v306;
              v328 = v308 + 4 * v327;
              v329 = __CFADD__(v308, 4 * v327);
              if (!(v327 >> 62) && !v329)
              {
                v330 = *(v152 + 88);
                v323 = __CFADD__(v328, 8 * v330);
                v331 = v328 + 8 * v330;
                v332 = v323;
                if ((v330 & 0x80000000) == 0 && !v332)
                {
                  v323 = __CFADD__(v331, 40);
                  v333 = v331 + 40;
                  if (!v323)
                  {
                    if ((v320 & 0x80000000) == 0)
                    {
                      v334 = *(v152 + 176);
                    }

                    else
                    {
                      v334 = -v320;
                    }

                    v335 = 2 * v334;
                    if ((v320 & 0x80000000) != 0)
                    {
                      v335 = -v335;
                    }

                    v323 = __CFADD__(v333, v335);
                    v336 = v333 + v335;
                    v337 = v323;
                    if ((v320 & 0x80000000) == 0 && !v337)
                    {
                      v338 = v336 + 4 * v326;
                      v339 = __CFADD__(v336, 4 * v326);
                      *(v396 + 40) = v338;
                      if (!(v326 >> 62) && !v339)
                      {
                        v340 = v336 + 8 * v326;
                        v341 = __CFADD__(v336, 8 * v326);
                        *(v396 + 48) = v340;
                        if (!(v326 >> 61) && !v341)
                        {
                          if (v385 == 40)
                          {
                            v342 = (v152 + 72);
                            v343 = *(v152 + 88);
                            v344 = *(*(v152 + 104) + 8 * v343);
                          }

                          else
                          {
                            v344 = 0;
                            v342 = (v152 + 80);
                            LODWORD(v343) = *(v152 + 88);
                          }

                          v345 = v343 + 1;
                          if (v343 >= -1)
                          {
                            v346 = v343 + 1;
                          }

                          else
                          {
                            v346 = -v345;
                          }

                          v347 = 8 * v346;
                          if (v343 < -1)
                          {
                            v347 = -8 * v346;
                          }

                          v323 = __CFADD__(v347, 96);
                          v348 = v347 + 96;
                          v349 = v323;
                          if (v343 >= -1 && !(v346 >> 61) && !v349)
                          {
                            v350 = 8 * v345 + 96;
                            if ((8 * v345) < 0xFFFFFFFFFFFFFFA0)
                            {
                              v351 = v303 * v304;
                              v352 = *v342;
                              v323 = __CFADD__(v352, v344);
                              v353 = v352 + v344;
                              v354 = v323;
                              v323 = __CFADD__(v351, v353);
                              v355 = v351 + v353;
                              v356 = v323;
                              if (!v354 && !v356)
                              {
                                v357 = *(v152 + 176);
                                if (v357 >= 0)
                                {
                                  v358 = *(v152 + 176);
                                }

                                else
                                {
                                  v358 = -v357;
                                }

                                v359 = 2 * v358;
                                if (v357 < 0)
                                {
                                  v359 = -v359;
                                }

                                v323 = __CFADD__(v355, v359);
                                v360 = v355 + v359;
                                v361 = v323;
                                if ((v357 & 0x80000000) == 0 && !v361)
                                {
                                  v362 = v348 + 4 * v360;
                                  v363 = __CFADD__(v348, 4 * v360);
                                  *(v396 + 56) = v362;
                                  if (!(v360 >> 62) && !v363)
                                  {
                                    v364 = __CFADD__(v350, 8 * v360);
                                    *(v396 + 64) = v350 + 8 * v360;
                                    if (!(v360 >> 61) && !v364)
                                    {
                                      *(v396 + 32) = v152;
                                      *(v396 + 8) = 0;
                                      v365 = 2 * v338;
                                      v366 = (*(v399 + 24))(2 * v338);
                                      if (v366)
                                      {
                                        v367 = v366;
                                        v402 = 0;
                                        v400 = 0u;
                                        v401 = 0u;
                                        if (*(v152 + 52))
                                        {
                                          v400 = *v392;
                                          v401 = v392[1];
                                          v402 = *(v392 + 4);
                                          v368 = v366;
                                        }

                                        else
                                        {
                                          sub_2367E4598(v392, v366, &v400);
                                          v369 = *(*(v392 + 1) + 8 * v383);
                                          v368 = (&v367[v369 * BYTE12(v401) * BYTE12(v401) + 1] + 4 * v369 + v382 + 7) & 0xFFFFFFFFFFFFFFF8;
                                        }

                                        v370 = sub_236796F24(v385, v351, v152, 2 * v362, v152, v384, 0);
                                        *(v396 + 80) = v370;
                                        if (v370)
                                        {
                                          *v396 = sub_2367E785C(v385, &v400, v152, v370, v368, v367 + v365 - v368);
                                          if (v385 == 40)
                                          {
                                            if (*(v392 + 1) <= *v392)
                                            {
                                              v371 = *v392;
                                            }

                                            else
                                            {
                                              v371 = *(v392 + 1);
                                            }

                                            sub_23678B078(v371 * *(v392 + 28), v152, (v396 + 88), (v396 + 96));
                                            *(v396 + 96) += 8 * *(v376 + 28) * (2 * v371);
                                          }

                                          else
                                          {
                                            *(v396 + 88) = 0;
                                            *(v396 + 96) = 8 * *(v392 + 1) * *(v392 + 28);
                                          }
                                        }

                                        else
                                        {
                                          if (!*(v399 + 40))
                                          {
                                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                            {
                                              sub_23672ECA8();
                                            }

                                            _SparseTrap();
                                          }

                                          memset(__str, 0, 256);
                                          snprintf(__str, 0x100uLL, "Failed to allocate space for QR factors of size %ld.", 2 * v362);
                                          (*(v399 + 40))(__str);
                                        }

                                        (*v182)(v367);
                                      }

                                      else
                                      {
                                        if (!*(v399 + 40))
                                        {
                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                          {
                                            sub_23672ED18();
                                          }

                                          _SparseTrap();
                                        }

                                        memset(__str, 0, 256);
                                        snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld for QR Numeric factorization.", v365);
                                        (*(v399 + 40))(__str);
                                      }

                                      return (*v182)(v392);
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
                }
              }
            }
          }
        }

LABEL_374:
        v317 = *(v399 + 40);
        if (!v317)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672ED88();
          }

          _SparseTrap();
        }

        memset(&__str[70], 0, 186);
        strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
        v317(__str);
        (*v182)(v152);
        return (*v182)(v392);
      }

      v18 = v392;
      return (*v182)(v18);
    }

    v152 = v151;
    v153 = v151 + v150;
    v154 = (v151 + 215) & 0xFFFFFFFFFFFFFFF8;
    if (v151 + v150 < v154)
    {
      goto LABEL_466;
    }

    v155 = (v154 + 4 * v147 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v153 < v155)
    {
      goto LABEL_466;
    }

    v377 = v145;
    if (*(v399 + 16))
    {
      if (v153 < ((v155 + v147 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }
    }

    else
    {
      v155 = 0;
    }

    v156 = *v399;
    v157 = *(v399 + 32);
    *(v151 + 16) = *(v399 + 16);
    *(v151 + 32) = v157;
    *v151 = v156;
    *(v151 + 48) = 1;
    *(v151 + 52) = v394;
    *(v151 + 56) = v389;
    *(v151 + 60) = v391;
    *(v151 + 96) = 0u;
    v375 = (v151 + 96);
    *(v151 + 72) = 0;
    *(v151 + 80) = 0;
    *(v151 + 64) = v154;
    *(v151 + 88) = 0;
    v158 = 5 * v397[0] + 2 * v387;
    *(v151 + 112) = 0u;
    v159 = v387 - v397[0] + 8 * v397[0];
    v160 = v159 + 5;
    v161 = v159 + 2;
    *(v151 + 128) = 0;
    *(v151 + 136) = v387 * v45;
    v162 = v158 <= v160;
    if (v158 > v160)
    {
      v163 = v158 + 1;
    }

    else
    {
      v163 = v161;
    }

    v164 = 56;
    if (!v162)
    {
      v164 = 40;
    }

    *(v151 + 144) = 0uLL;
    v374 = (v151 + 144);
    *(v151 + 160) = 0uLL;
    *(v151 + 176) = 0;
    *(v151 + 184) = 0;
    *(v151 + 192) = 0;
    *(v151 + 200) = v155;
    v378 = v164 + 4 * v163;
    v165 = v378 + 12 * v397[0] + 24;
    v166 = (*(v399 + 24))(v165);
    if (v166)
    {
      v167 = v166;
      v372 = v56;
      v168 = v166 + v165;
      v169 = (v166 + 4 * v397[0] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v166 + v165 < v169)
      {
        goto LABEL_466;
      }

      v170 = 4 * v397[0];
      v171 = (v169 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v168 < v171)
      {
        goto LABEL_466;
      }

      v373 = ((v169 + v170 + 7) & 0xFFFFFFFFFFFFFFF8);
      v172 = ((v171 + v170 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v168 < v172 || v168 < (&v172[v378 + 7] & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }

      if (*(v399 + 16))
      {
        memcpy(*(v152 + 200), __src, v147);
      }

      v173 = 1 << *(v399 + 4);
      if ((v173 & 0x2C) != 0)
      {
        memset(__str, 0, 32);
        v149 = v399;
        sub_236752DB4(0, v386, v399, __str);
        v174 = *(v152 + 64);
        v400 = *__str;
        v401 = *&__str[16];
        v175 = sub_2367E3E64(v385, &v400, 0, v167, v174, v399);
        (*(v399 + 32))(*&__str[8]);
        if (!v175)
        {
          v176 = *(v152 + 64);
          goto LABEL_252;
        }
      }

      else
      {
        if ((v173 & 0x11) == 0)
        {
          v183 = *(v399 + 8);
          v176 = *(v152 + 64);
          if (v183)
          {
            if (v397[0] < 1)
            {
              goto LABEL_252;
            }

            v184 = 0;
            do
            {
              *(v176 + 4 * *(v183 + 4 * v184)) = v184;
              ++v184;
            }

            while (v397[0] != v184);
          }

          else
          {
            if (v397[0] < 1)
            {
              goto LABEL_252;
            }

            v185 = 0;
            v186 = vdupq_n_s64(v397[0] - 1);
            v187 = xmmword_23681F910;
            v188 = xmmword_23681F920;
            v189 = (v176 + 8);
            v190 = vdupq_n_s64(4uLL);
            do
            {
              v191 = vmovn_s64(vcgeq_u64(v186, v188));
              if (vuzp1_s16(v191, *v186.i8).u8[0])
              {
                *(v189 - 2) = v185;
              }

              if (vuzp1_s16(v191, *&v186).i8[2])
              {
                *(v189 - 1) = v185 + 1;
              }

              if (vuzp1_s16(*&v186, vmovn_s64(vcgeq_u64(v186, *&v187))).i32[1])
              {
                *v189 = v185 + 2;
                v189[1] = v185 + 3;
              }

              v185 += 4;
              v187 = vaddq_s64(v187, v190);
              v188 = vaddq_s64(v188, v190);
              v189 += 4;
            }

            while (((v397[0] + 3) & 0xFFFFFFFC) != v185);
          }

          v192 = 0;
          do
          {
            *&v167[4 * *(v176 + 4 * v192)] = v192;
            ++v192;
          }

          while (v397[0] != v192);
LABEL_252:
          v193 = *(v386 + 16);
          *__str = *v386;
          *&__str[16] = v193;
          sub_236768978(__str, v379, v142, v167, v176, v373, v172, &v172[4 * v397[0]]);
          sub_236750DDC(*v397, v373, v167, *(v152 + 64), v172);
          v194 = *(v152 + 64);
          v195 = v377[1];
          *__str = *v377;
          *&__str[16] = v195;
          sub_2366EE0E8(__str, v379, v142, v167, v194, v373, v169, v172, &v172[16 * v397[0]]);
          v196 = sub_236768200(v386, v379, v142, v167, *(v152 + 64), v373, v169, v172, v399, &v172[4 * v397[0] + 4]);
          *(v152 + 88) = v196;
          *(v152 + 80) = 0;
          if (v397[0] < 1)
          {
            v197 = 0;
            v200 = v389;
          }

          else
          {
            v197 = 0;
            v198 = v397[0];
            v199 = v169;
            v200 = v389;
            do
            {
              v201 = *v199++;
              v197 += v201;
              --v198;
            }

            while (v198);
            *(v152 + 80) = v197;
          }

          if (v196 < 1)
          {
            v202 = 0;
          }

          else
          {
            v202 = 0;
            v203 = v196;
            v204 = (v172 + 4);
            v205 = *v172;
            v206 = v169;
            do
            {
              v208 = *v206++;
              v207 = v208;
              v209 = *v204++;
              v202 += v207 * v45;
              v197 += v207 * (v209 - v205);
              v205 = v209;
              --v203;
            }

            while (v203);
            *(v152 + 80) = v197;
          }

          __srca = v200;
          v395 = 8 * (v200 - v391 + v202);
          v210 = v395 + 12 * v196 + 8 * (v202 + 2 * v196 + 2) + 44;
          v211 = (*(v399 + 24))(v210);
          if (v211)
          {
            v212 = v211 + v210;
            v213 = *(v152 + 88);
            v214 = v213 + 1;
            v215 = (v211 + 4 * (v213 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v211 + v210 >= v215)
            {
              *v375 = v211;
              v216 = v215 + 8 * v214;
              if (v216 <= v212)
              {
                *(v152 + 104) = v215;
                v217 = (v216 + 4 * v202 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v212 >= v217)
                {
                  *(v152 + 112) = v216;
                  v218 = (v217 + 4 * v202 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v212 >= v218)
                  {
                    *v374 = v217;
                    v219 = v218 + 8 * v214;
                    if (v219 <= v212)
                    {
                      *(v152 + 120) = v218;
                      v220 = v219 + v395;
                      if (v219 + v395 <= v212)
                      {
                        *(v152 + 128) = v219;
                        v221 = (v220 + 4 * v213 + 15) & 0xFFFFFFFFFFFFFFF8;
                        if (v212 >= v221)
                        {
                          *(v152 + 152) = v220;
                          if (v212 >= ((v221 + 4 * v213 + 7) & 0xFFFFFFFFFFFFFFF8))
                          {
                            *(v152 + 160) = v221;
                            if ((v213 & 0x80000000) == 0)
                            {
                              v222 = 0;
                              do
                              {
                                *(v211 + 4 * v222) = *&v172[4 * v222];
                                v162 = v222++ < *(v152 + 88);
                              }

                              while (v162);
                              v213 = *(v152 + 88);
                            }

                            sub_236812888(v213, v373, v220, v221);
                            v223 = *(v152 + 88);
                            if (v223 < 1)
                            {
                              v225 = 0;
                              v228 = v387 * v45;
                            }

                            else
                            {
                              v224 = 0;
                              v225 = 0;
                              v226 = *(v152 + 152);
                              v227 = *v226;
                              v228 = v387 * v45;
                              do
                              {
                                v229 = v226[++v224];
                                v230 = __srca;
                                if (v227 < v229)
                                {
                                  v231 = v229 - v227;
                                  v232 = (*(v152 + 160) + 4 * v227);
                                  v233 = v389;
                                  do
                                  {
                                    v234 = *v232++;
                                    v233 += (*(v169 + 4 * v234) - *(*(v152 + 96) + 4 * v234 + 4) + *(*(v152 + 96) + 4 * v234)) * v45;
                                    --v231;
                                  }

                                  while (v231);
                                  v230 = v233;
                                }

                                if (v225 <= v230)
                                {
                                  v225 = v230;
                                }

                                v227 = v226[v224];
                              }

                              while (v224 != v223);
                            }

                            v235 = *(v399 + 16);
                            if (v235)
                            {
                              v236 = (v152 + 184);
                              if ((v223 & 0x80000000) == 0)
                              {
                                v237 = 0;
                                v238 = *v375;
                                do
                                {
                                  *&v172[4 * v237] = v238[v237];
                                  v239 = *(v152 + 88);
                                  v162 = v237++ < v239;
                                }

                                while (v162);
                                if ((v239 & 0x80000000) == 0)
                                {
                                  v240 = 0;
                                  v241 = 0;
                                  do
                                  {
                                    v238[v240] = v241;
                                    v242 = *&v172[4 * v240];
                                    v243 = *&v172[4 * v240 + 4];
                                    if (v242 < v243)
                                    {
                                      v244 = v243 - v242;
                                      v245 = (*(v152 + 64) + 4 * v242);
                                      do
                                      {
                                        v246 = *v245++;
                                        v241 += v142[v246];
                                        --v244;
                                      }

                                      while (v244);
                                    }

                                    v162 = v240++ < *(v152 + 88);
                                  }

                                  while (v162);
                                }
                              }

                              if (v397[0] >= 1)
                              {
                                v247 = *(v152 + 64);
                                v248 = v247;
                                v249 = v172;
                                v250 = v397[0];
                                do
                                {
                                  v251 = *v248++;
                                  *v249 = v251;
                                  v249 += 4;
                                  --v250;
                                }

                                while (v250);
                                v252 = 0;
                                v253 = 0;
                                v254 = v397[0] * v45 - 1;
                                do
                                {
                                  if (v45)
                                  {
                                    v255 = 0;
                                    v256 = *(v152 + 200);
                                    do
                                    {
                                      v257 = *&v172[4 * v252] * v45;
                                      v258 = v255 + v257;
                                      v259 = *(v256 + v257);
                                      if (v259)
                                      {
                                        v260 = v254;
                                      }

                                      else
                                      {
                                        v260 = v253;
                                      }

                                      v254 -= v259;
                                      v253 += v259 ^ 1;
                                      v247[v260] = v258;
                                      ++v255;
                                      ++v256;
                                    }

                                    while (v45 != v255);
                                  }

                                  ++v252;
                                }

                                while (v252 != v397[0]);
                              }
                            }

                            else
                            {
                              v236 = (v152 + 184);
                              if (v45 < 2)
                              {
LABEL_322:
                                if (v235)
                                {
                                  v271 = v228 + 8;
                                }

                                else
                                {
                                  v271 = 0;
                                }

                                __b = v172;
                                if (v378 < 8 * v225 + 4 * (v225 + v387 + 2 * v45 * v397[0]) + v271 + 32)
                                {
                                  __b = (*(v399 + 24))();
                                }

                                sub_23679A9A8(v386, v377, v152, *(v152 + 152), *(v152 + 160), v225, v372, v143, __b);
                                if (__b != v172)
                                {
                                  (*(v399 + 32))(__b);
                                }

                                *(v152 + 168) = 0;
                                *(v152 + 176) = 0;
                                *(v152 + 72) = 0;
                                *v236 = 0;
                                v236[1] = 0;
                                v273 = *(v152 + 88);
                                if (v273 >= 1)
                                {
                                  v274 = 0;
                                  v275 = 0;
                                  v276 = 0;
                                  v277 = 0;
                                  v278 = 0;
                                  v279 = 0;
                                  v280 = 0;
                                  v281 = 0;
                                  v282 = *(v152 + 96);
                                  v283 = *(v152 + 104);
                                  v284 = *(v152 + 120);
                                  while (1)
                                  {
                                    v285 = v279 + 1;
                                    v286 = *(v282 + 4 * (v279 + 1)) - *(v282 + 4 * v279);
                                    v287 = *(v284 + 8 * (v279 + 1)) - *(v284 + 8 * v279);
                                    if (v287 < v286)
                                    {
                                      break;
                                    }

                                    v288 = *(v283 + 8 * v285) - *(v283 + 8 * v279);
                                    v289 = v288;
                                    v290 = v287 * v288;
                                    if (v290 > v278)
                                    {
                                      *(v152 + 168) = v290;
                                      v278 = v287 * v288;
                                    }

                                    if (v277 < v288)
                                    {
                                      *(v152 + 176) = v288;
                                      v277 = v288;
                                    }

                                    v276 += v290;
                                    *(v152 + 72) = v276;
                                    v291 = *(v152 + 152);
                                    v292 = *(v291 + 4 * v279);
                                    v293 = *(v291 + 4 * v285);
                                    if (v292 < v293)
                                    {
                                      v294 = v293 - v292;
                                      v295 = (*(v152 + 160) + 4 * v292);
                                      do
                                      {
                                        v296 = *v295++;
                                        v297 = *(v282 + 4 * (v296 + 1)) - *(v282 + 4 * v296);
                                        v298 = *(v283 + 8 * (v296 + 1)) - *(v283 + 8 * v296);
                                        v299 = *(v284 + 8 * (v296 + 1)) - *(v284 + 8 * v296);
                                        if (v299 >= v298)
                                        {
                                          v299 = v298;
                                        }

                                        v300 = v299 - v297;
                                        v281 += v300 * (v297 - v298);
                                        v280 -= v300;
                                        --v294;
                                      }

                                      while (v294);
                                    }

                                    if (v287 >= v289)
                                    {
                                      v287 = v289;
                                    }

                                    v301 = v287 - v286;
                                    v281 += v301 * (v289 - v286);
                                    if (v281 > v275)
                                    {
                                      *v236 = v281;
                                      v275 = v281;
                                    }

                                    v280 += v301;
                                    if (v280 > v274)
                                    {
                                      *(v152 + 192) = v280;
                                      v274 = v280;
                                    }

                                    v279 = v285;
                                    if (v285 == v273)
                                    {
                                      goto LABEL_350;
                                    }
                                  }

                                  *v396 = -2;
                                  (*(v399 + 32))();
                                  (*(v399 + 32))(v152);
                                  v152 = 0;
                                }

LABEL_350:
                                v149 = v399;
                                (*(v399 + 32))(v167);
                                goto LABEL_351;
                              }

                              if (v397[0] >= 1)
                              {
                                v261 = *(v152 + 64);
                                v262 = v261;
                                v263 = v167;
                                v264 = v397[0];
                                do
                                {
                                  v265 = *v262++;
                                  *v263 = v265;
                                  v263 += 4;
                                  --v264;
                                }

                                while (v264);
                                v266 = 0;
                                LODWORD(v267) = 0;
                                do
                                {
                                  v268 = 0;
                                  v267 = v267;
                                  do
                                  {
                                    v261[v267++] = v268++ + *&v167[4 * v266] * v45;
                                  }

                                  while (v45 != v268);
                                  ++v266;
                                }

                                while (v266 != v397[0]);
                                LODWORD(v223) = *(v152 + 88);
                              }

                              if ((v223 & 0x80000000) == 0)
                              {
                                v269 = *v375;
                                v270 = -1;
                                do
                                {
                                  *v269++ *= v45;
                                  ++v270;
                                }

                                while (v270 < *(v152 + 88));
                              }
                            }

                            *(v152 + 80) *= (v45 * v45);
                            goto LABEL_322;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_466:
            __break(1u);
          }

          (*(v399 + 32))(v167);
          (*(v399 + 32))(v152);
          v18 = v392;
          v6 = v399;
          goto LABEL_226;
        }

        v177 = &v409;
        if (v394)
        {
          v177 = &v403;
        }

        v178 = _SparseCOLAMDWorkspaceSize(v387, v397[0], *(*(v177 + 1) + 8 * v397[0]), v391);
        v149 = v399;
        v179 = (*(v399 + 24))(v178);
        if (v179)
        {
          v180 = v179;
          _SparseCOLAMD(v386, v377, v142, 0, *(v152 + 64), v179);
          (*(v399 + 32))(v180);
          v176 = *(v152 + 64);
          if (v397[0] >= 1)
          {
            v181 = 0;
            do
            {
              *&v167[4 * *(v176 + 4 * v181)] = v181;
              ++v181;
            }

            while (v397[0] != v181);
          }

          goto LABEL_252;
        }
      }

      (*(v149 + 32))(v167);
    }

    (*(v149 + 32))(v152);
    v18 = v392;
    v6 = v149;
LABEL_226:
    v84 = v398;
LABEL_233:
    (*(v6 + 32))(v84);
    v182 = (v6 + 32);
    return (*v182)(v18);
  }

  if (!*(v6 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.", v20);
  (*(v6 + 40))(__str);
  return (*(v6 + 32))(v18);
}

uint64_t sub_2367E674C(int *a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 24))(12 * *a1);
  v5 = *a1;
  v38 = v4;
  v6 = (v4 + 8 * v5);
  bzero(v6, 4 * v5);
  v7 = a1[1];
  __n = *a1;
  v8 = *(*(a1 + 1) + 8 * v7);
  v37 = *(a1 + 28);
  v9 = v37 * v37;
  v10 = 8 * v7 + 8;
  v11 = v10 + 4 * v8 + 8 * v8 * v9 + 64;
  v12 = (*(a2 + 24))(v11);
  v13 = v12;
  if (v12)
  {
    v35 = a2;
    v14 = v12 + v11;
    v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + v11 < v15 || (v16 = v15 + v10, v15 + v10 > v14) || (v17 = (v16 + 4 * v8 + 7) & 0xFFFFFFFFFFFFFFF8, v14 < v17) || v17 + 8 * v8 * v9 > v14)
    {
      __break(1u);
    }

    v18 = *(a1 + 28);
    v19 = a1[6];
    *v12 = __n;
    *(v12 + 4) = v7;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = v19;
    *(v12 + 28) = v18;
    *(v12 + 32) = v17;
    v20 = a1[1];
    if (v20 < 1)
    {
      v22 = 0;
      v33 = v7;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 1);
      v24 = 8 * v37 * v37;
      do
      {
        v25 = v21;
        *(*(v13 + 8) + 8 * v21) = v22;
        v26 = *(v23 + 8 * v21++);
        if (v26 < *(v23 + 8 * v21))
        {
          v27 = v24 * v26;
          do
          {
            v28 = *(*(a1 + 2) + 4 * v26);
            if ((v28 & 0x80000000) == 0 && v28 < *a1)
            {
              if (v25 >= v6[v28])
              {
                *(*(v13 + 16) + 4 * v22) = v28;
                v6[v28] = v21;
                *(v38 + 8 * v28) = v22;
                memcpy((*(v13 + 32) + 8 * v22 * v9), (*(a1 + 4) + 8 * v26 * v9), 8 * v9);
                ++v22;
              }

              else if (v37)
              {
                v29 = (*(v13 + 32) + 8 * *(v38 + 8 * v28) * v9);
                v30 = (*(a1 + 4) + v27);
                v31 = v37 * v37;
                do
                {
                  v32 = *v30++;
                  *v29 = vadd_f32(v32, *v29);
                  ++v29;
                  --v31;
                }

                while (v31);
              }
            }

            ++v26;
            v23 = *(a1 + 1);
            v27 += v24;
          }

          while (v26 < *(v23 + 8 * v21));
          v20 = a1[1];
        }
      }

      while (v21 < v20);
      v15 = *(v13 + 8);
      v33 = *(v13 + 4);
    }

    *(v15 + 8 * v33) = v22;
    (*(v35 + 32))(v38);
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *__str = 0u;
    v40 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v10 + 4 * v8 + 8 * v8 * v9 + 64);
    (*(a2 + 40))(__str);
  }

  return v13;
}

uint64_t sub_2367E6A60(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(*(a1 + 8) + 8 * v4);
  v6 = *(a1 + 28);
  v7 = 8 * v4 + 8;
  v41 = (v6 * v6);
  v42 = v4;
  v8 = v7 + 4 * v5 + 8 * v5 * v41 + 64;
  result = (*(a2 + 24))(v8);
  if (result)
  {
    v10 = result + v8;
    v11 = (result + 47) & 0xFFFFFFFFFFFFFFF8;
    if (result + v8 < v11 || (v12 = v11 + v7, v11 + v7 > v10) || (v13 = (v12 + 4 * v5 + 7) & 0xFFFFFFFFFFFFFFF8, v10 < v13) || v13 + 8 * v5 * v41 > v10)
    {
      __break(1u);
    }

    v14 = *(a1 + 24);
    v15 = v42;
    *result = v42;
    *(result + 4) = v42;
    *(result + 8) = v11;
    *(result + 16) = v12;
    *(result + 24) = v14;
    *(result + 28) = v6;
    *(result + 32) = v13;
    *(result + 24) = v14 & 0xFFE3;
    if (v42 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v6 * v6);
      __n = 8 * v41;
      v40 = result;
      v19 = *(a1 + 8);
      v20 = 8 * v6;
      v21 = 8 * v6 + 8;
      v22 = 8 * v6 * v6;
      while (1)
      {
        v23 = v16;
        *(*(result + 8) + 8 * v16) = v17;
        v24 = *(v19 + 8 * v16++);
        if (v24 < *(v19 + 8 * v16))
        {
          break;
        }

LABEL_35:
        if (v16 == v15)
        {
          v11 = *(result + 8);
          goto LABEL_40;
        }
      }

      v25 = v22 * v24;
      v43 = v23;
      while (1)
      {
        v26 = *(*(a1 + 16) + 4 * v24);
        v27 = *(a1 + 24);
        if ((v27 & 2) != 0 && v23 > v26)
        {
          goto LABEL_34;
        }

        v28 = (v27 >> 1) & 1;
        if (v23 >= v26)
        {
          v28 = 1;
        }

        if (v28 != 1 || v26 >= v15)
        {
          goto LABEL_34;
        }

        *(*(result + 16) + 4 * v17) = v26;
        v30 = *(a1 + 32);
        v31 = (*(result + 32) + 8 * v17 * v18);
        v44 = v17 + 1;
        if (v23 == v26)
        {
          bzero(v31, __n);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v6)
            {
              v36 = 0;
              v37 = v30 + v25;
              result = v40;
              v15 = v42;
              v23 = v43;
              v17 = v44;
              do
              {
                v38 = 0;
                do
                {
                  *&v31[8 * v38] = *(v37 + 8 * v38);
                  ++v38;
                }

                while (v36 + v38 < v6);
                ++v36;
                v31 += v21;
                v37 += v21;
              }

              while (v36 != v6);
              goto LABEL_33;
            }
          }

          else if (v6)
          {
            v32 = 0;
            v33 = v30 + v25;
            v34 = 1;
            result = v40;
            v15 = v42;
            v23 = v43;
            v17 = v44;
            do
            {
              v35 = 0;
              do
              {
                *&v31[8 * v35] = *(v33 + 8 * v35);
                ++v35;
              }

              while (v34 != v35);
              ++v32;
              ++v34;
              v31 += v20;
              v33 += v20;
            }

            while (v32 != v6);
LABEL_33:
            v18 = (v6 * v6);
            goto LABEL_34;
          }
        }

        else
        {
          memcpy(v31, (v30 + 8 * v24 * v18), __n);
        }

        result = v40;
        v18 = (v6 * v6);
        v15 = v42;
        v23 = v43;
        v17 = v44;
LABEL_34:
        ++v24;
        v19 = *(a1 + 8);
        v25 += v22;
        if (v24 >= *(v19 + 8 * v16))
        {
          goto LABEL_35;
        }
      }
    }

    v17 = 0;
LABEL_40:
    *(v11 + 8 * v15) = v17;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *__str = 0u;
    v46 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
    return 0;
  }

  return result;
}

void *sub_2367E6DC4(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = 8 * v4 + 8;
  v55 = v4;
  v56 = (v5 * v5);
  v7 = *(*(a1 + 8) + 8 * v4) + v4;
  v8 = v6 + 4 * v7 + 8 * v7 * v56 + 64;
  v9 = (*(a2 + 24))(v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9 + v8;
    v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + v8 < v12 || (v13 = v12 + v6, LODWORD(v14) = v55, v12 + v6 > v11) || (v15 = (v13 + 4 * v7 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || v15 + 8 * v7 * v56 > v11)
    {
      __break(1u);
    }

    v16 = *(a1 + 24);
    *v9 = v55;
    *(v9 + 4) = v55;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v16;
    *(v9 + 28) = v5;
    *(v9 + 32) = v15;
    *(v9 + 24) = v16 & 0xFFE3;
    if (v55 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      __n = 8 * v56;
      v19 = 8 * v5;
      v20 = 8 * v5 + 8;
      v21 = 8 * v5 * v5;
      v57 = v9;
      do
      {
        v22 = v17;
        v23 = v10[2];
        *(v10[1] + 8 * v17) = v18;
        *(v23 + 4 * v18) = v17;
        v24 = v18;
        v25 = (v10[4] + 8 * v18 * v56);
        bzero(v25, __n);
        v26 = v5;
        if (v5)
        {
          do
          {
            *v25 = 1065353216;
            v25 = (v25 + v20);
            --v26;
          }

          while (v26);
        }

        v18 = v24 + 1;
        v27 = *(a1 + 8);
        v28 = *(v27 + 8 * v22);
        v17 = v22 + 1;
        if (v28 >= *(v27 + 8 * (v22 + 1)))
        {
          v14 = v55;
        }

        else
        {
          v29 = v21 * v28;
          v30 = v21 * v28 + 8;
          v14 = v55;
          do
          {
            v31 = *(*(a1 + 16) + 4 * v28);
            v32 = *(a1 + 24);
            if ((v32 & 2) == 0 || v22 <= v31)
            {
              v33 = v22 >= v31 || (v32 >> 1) & 1;
              if (v33 && v31 < v14)
              {
                v35 = *(a1 + 32);
                if (v22 == v31)
                {
                  v36 = v57[4];
                  v37 = *(v57[1] + 8 * v22);
                  if ((v32 & 2) != 0)
                  {
                    if (v5)
                    {
                      v38 = 0;
                      v39 = v36 + v21 * v37 + 8;
                      v40 = (v35 + v30);
                      v41 = v5 - 1;
                      do
                      {
                        if (++v38 < v5)
                        {
                          v42 = v41;
                          v43 = v40;
                          v44 = v39;
                          do
                          {
                            v45 = *v43++;
                            *v44++ = v45;
                            --v42;
                          }

                          while (v42);
                        }

                        v39 += v20;
                        v40 = (v40 + v20);
                        --v41;
                      }

                      while (v38 != v5);
                    }
                  }

                  else if (v5)
                  {
                    v49 = 0;
                    v50 = v36 + 8 * v37 * v56;
                    v51 = v35 + v29;
                    do
                    {
                      if (v49)
                      {
                        for (i = 0; i != v49; ++i)
                        {
                          *(v50 + 8 * i) = *(v51 + 8 * i);
                        }
                      }

                      ++v49;
                      v50 += v19;
                      v51 += v19;
                    }

                    while (v49 != v5);
                  }
                }

                else
                {
                  *(v57[2] + 4 * v18) = v31;
                  v46 = v22;
                  v47 = v21;
                  v48 = v17;
                  memcpy((v57[4] + 8 * v18 * v56), (v35 + 8 * v28 * v56), __n);
                  v17 = v48;
                  v21 = v47;
                  v22 = v46;
                  v19 = 8 * v5;
                  v14 = v55;
                  ++v18;
                }
              }
            }

            ++v28;
            v29 += v21;
            v30 += v21;
          }

          while (v28 < *(*(a1 + 8) + 8 * v17));
        }

        v10 = v57;
      }

      while (v17 != v14);
      v12 = v57[1];
    }

    *(v12 + 8 * v14) = v18;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *__str = 0u;
    v59 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
  }

  return v10;
}

uint64_t sub_2367E71B8(__int128 *a1, uint64_t a2)
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v7 = *(*(a1 + 1) + 8 * v4);
  v88 = v4;
  v8 = 8 * (v4 + v7) + 16;
  v9 = 16 * v7;
  v10 = 16 * v7 * v6;
  v11 = v10 + v8 + 72;
  v12 = (*(a2 + 24))(v11);
  if (!v12)
  {
    if (*(a2 + 40))
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      *__str = 0u;
      v92 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v10 + v8 + 72);
LABEL_12:
      (*(a2 + 40))(__str);
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_96;
    }

    goto LABEL_97;
  }

  v13 = v12;
  v87 = a2;
  v14 = v12 + v11;
  v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v12 + v11 < v15)
  {
    goto LABEL_99;
  }

  v16 = (v15 + v10);
  if (v16 > v14)
  {
    goto LABEL_99;
  }

  v17 = *(a1 + 28);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v12 + 28) = v17;
  *(v12 + 29) = 0;
  *(v12 + 31) = 0;
  *(v12 + 32) = v15;
  v18 = (*(a2 + 24))(v9);
  if (!v18)
  {
    if (*(a2 + 40))
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      *__str = 0u;
      v92 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v9);
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_96:
      sub_23672EEB0();
    }

LABEL_97:
    _SparseTrap();
  }

  v19 = v18;
  v20 = v16 + v8;
  if ((*(a1 + 24) & 2) != 0)
  {
    v22 = a1[1];
    v89 = *a1;
    v90 = v22;
    _SparseFromStructureComplex(&v89, __str);
    if (v20 <= v14)
    {
      sub_2367861D0(__str, 0, v16, v19, 0, &v89);
      goto LABEL_15;
    }

LABEL_99:
    __break(1u);
  }

  v21 = a1[1];
  v89 = *a1;
  v90 = v21;
  _SparseFromStructureComplex(&v89, __str);
  if (v20 > v14)
  {
    goto LABEL_99;
  }

  sub_236785FB0(__str, 0, v16, v19, 0, &v89);
LABEL_15:
  _SparseToStructureComplex(&v89, __str);
  v26 = v92;
  *v13 = *__str;
  *(v13 + 16) = v26;
  v27 = v88;
  if ((~*(a1 + 12) & 0x1C) != 0)
  {
    if (v88 >= 1)
    {
      v63 = 0;
      v64 = *(v13 + 8);
      v65 = 8 * v5 * v5;
      v66 = 8 * v5;
      v67 = 8 * v5 + 8;
      do
      {
        v68 = v63;
        v69 = *(v64 + 8 * v63++);
        if (v69 < *(v64 + 8 * v63))
        {
          v70 = v65 * v69;
          do
          {
            v71 = *(v19 + 8 * v69);
            v72 = *(a1 + 4);
            if (v71 >= 0)
            {
              v24 = *(v19 + 8 * v69);
            }

            else
            {
              v24 = -v71;
            }

            v23 = *(v13 + 32);
            if (v68 == *(*(v13 + 16) + 4 * v69))
            {
              if ((*(a1 + 24) & 2) != 0)
              {
                if (v5)
                {
                  v82 = 0;
                  v83 = v23 + v70;
                  if (((v71 & 0x4000000000000000) != 0) ^ __OFSUB__(v71, -v71) | (v71 == -v71))
                  {
                    v71 = -v71;
                  }

                  v84 = v72 + v65 * (v71 - 1);
                  do
                  {
                    v85 = 0;
                    v23 = 0;
                    do
                    {
                      *(v83 + 8 * v85) = *(v84 + 8 * v85);
                      *(v83 + v23) = *(v84 + 8 * v85);
                      v23 += v66;
                      ++v85;
                      v24 = v82 + v85;
                    }

                    while (v82 + v85 < v5);
                    ++v82;
                    v83 += v67;
                    v84 += v67;
                  }

                  while (v82 != v5);
                }
              }

              else if (v5)
              {
                v73 = 0;
                v74 = v23 + v70;
                if (((v71 & 0x4000000000000000) != 0) ^ __OFSUB__(v71, -v71) | (v71 == -v71))
                {
                  v71 = -v71;
                }

                v75 = v72 + v65 * (v71 - 1);
                v76 = (v23 + v70);
                v23 = 1;
                do
                {
                  v24 = 0;
                  v25 = v76;
                  do
                  {
                    *v25 = *(v75 + 8 * v24);
                    *(v74 + 8 * v24) = *(v75 + 8 * v24);
                    ++v24;
                    v25 = (v25 + v66);
                  }

                  while (v23 != v24);
                  ++v73;
                  ++v23;
                  v76 += 2;
                  v74 += v66;
                  v75 += v66;
                }

                while (v73 != v5);
              }
            }

            else if (v5)
            {
              v77 = 0;
              v78 = 0;
              v79 = v72 + 8 * (v24 - 1) * v6;
              v23 += v70;
              do
              {
                v24 = v5;
                v25 = v78;
                v80 = v77;
                do
                {
                  if (v71 >= 0)
                  {
                    v81 = v80;
                  }

                  else
                  {
                    v81 = v25;
                  }

                  *(v23 + 8 * v80++) = *(v79 + 8 * v81);
                  v25 = (v25 + v5);
                  --v24;
                }

                while (v24);
                v78 = (v78 + 1);
                v77 += v5;
              }

              while (v78 != v5);
            }

            ++v69;
            v64 = *(v13 + 8);
            v70 += v65;
          }

          while (v69 < *(v64 + 8 * v63));
          v27 = v88;
        }
      }

      while (v63 != v27);
    }
  }

  else if (v88 >= 1)
  {
    v28 = 0;
    v29 = *(v13 + 8);
    v30 = 8 * v5 * v5;
    v31 = 8 * v5;
    v32 = 8 * v5 + 8;
    do
    {
      v33 = v28;
      v34 = *(v29 + 8 * v28++);
      if (v34 < *(v29 + 8 * v28))
      {
        v35 = v30 * v34;
        v36 = v30 * v34 + 4;
        do
        {
          v37 = *(v19 + 8 * v34);
          v25 = *(a1 + 4);
          if (v37 >= 0)
          {
            v23 = *(v19 + 8 * v34);
          }

          else
          {
            v23 = -v37;
          }

          v24 = *(v13 + 32);
          if (v33 == *(*(v13 + 16) + 4 * v34))
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              if (v5)
              {
                v56 = 0;
                v57 = (v24 + v36);
                v23 = v24 + v35;
                if (((v37 & 0x4000000000000000) != 0) ^ __OFSUB__(v37, -v37) | (v37 == -v37))
                {
                  v37 = -v37;
                }

                v58 = v25 + v30 * (v37 - 1);
                do
                {
                  v24 = v58;
                  v25 = v23;
                  v59 = v57;
                  v60 = v56;
                  do
                  {
                    *v25 = *v24;
                    v25 += 2;
                    v61 = *v24;
                    v62 = *(v24 + 4);
                    v24 += 8;
                    *(v59 - 1) = v61;
                    *v59 = -v62;
                    ++v60;
                    v59 = (v59 + v31);
                  }

                  while (v60 < v5);
                  ++v56;
                  v57 = (v57 + v32);
                  v23 += v32;
                  v58 += v32;
                }

                while (v56 != v5);
              }
            }

            else if (v5)
            {
              v38 = 0;
              v39 = (v24 + v36);
              v23 = v24 + v35;
              if (((v37 & 0x4000000000000000) != 0) ^ __OFSUB__(v37, -v37) | (v37 == -v37))
              {
                v37 = -v37;
              }

              v40 = v25 + v30 * (v37 - 1);
              v24 = 8;
              do
              {
                v25 = 0;
                v41 = v39;
                do
                {
                  v42 = -*(v25 + v40 + 4);
                  *(v41 - 1) = *(v25 + v40);
                  *v41 = v42;
                  *(v25 + v23) = *(v25 + v40);
                  v25 += 2;
                  v41 = (v41 + v31);
                }

                while (v24 != v25);
                ++v38;
                v24 += 8;
                v39 += 2;
                v23 += v31;
                v40 += v31;
              }

              while (v38 != v5);
            }
          }

          else if (v5)
          {
            v43 = 0;
            v44 = 0;
            v23 = &v25[2 * (v23 - 1) * v6];
            v24 += 8 * v34 * v6;
            if (((v37 & 0x4000000000000000) != 0) ^ __OFSUB__(v37, -v37) | (v37 == -v37))
            {
              v45 = -v37;
            }

            else
            {
              v45 = *(v19 + 8 * v34);
            }

            v25 = (v25 + v30 * (v45 - 1));
            v46 = v25 + 1;
            do
            {
              v47 = 0;
              v48 = v5;
              v49 = v46;
              v50 = v25;
              v51 = v43;
              do
              {
                if (v37 < 0)
                {
                  v54 = (v23 + 8 * v44 + 8 * v47 * v5);
                  v53 = -*v49;
                  v52 = v51;
                }

                else
                {
                  v52 = v47 + v44 * v5;
                  v53 = v50[1];
                  v54 = v50;
                }

                v55 = v24 + 8 * v52;
                ++v47;
                *v55 = *v54;
                *(v55 + 4) = v53;
                ++v51;
                v50 += 2;
                v49 = (v49 + v31);
                --v48;
              }

              while (v48);
              ++v44;
              v43 += v5;
              v25 = (v25 + v31);
              v46 += 2;
            }

            while (v44 != v5);
          }

          ++v34;
          v29 = *(v13 + 8);
          v36 += v30;
          v35 += v30;
        }

        while (v34 < *(v29 + 8 * v28));
        v27 = v88;
      }
    }

    while (v28 != v27);
  }

  (*(v87 + 32))(v19, v23, v24, v25);
  return v13;
}

uint64_t sub_2367E785C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a2 + 28);
  v13 = ilaenv_NEWLAPACK();
  if (a1 == 40)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = a5 + a6;
  v17 = *(a3 + 88);
  v18 = (a5 + 8 * (*(a3 + 184) + v17) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (a5 + a6 < v18 || (v14 = (v18 + 4 * v11 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v16 < v14) || (v116 = 8 * v15 * *(a3 + 176), v122 = (v14 + v116), v14 + v116 > v16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 40)
  {
    if (&v122[8 * *(a3 + 168)] <= v16)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v122 = 0;
LABEL_11:
  if (v17 < 1)
  {
    return 0;
  }

  v114 = v14;
  v19 = 0;
  v20 = (a5 + 8 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = a1;
  while (1)
  {
    if (a1 == 40)
    {
      v122 = *(*(a4 + 40) + 8 * v19);
    }

    v21 = v19 + 1;
    v23 = *(a3 + 96);
    v22 = *(a3 + 104);
    v24 = *(v22 + 8 * (v19 + 1));
    v25 = *(v22 + 8 * v19);
    v26 = *(a3 + 120);
    v27 = *(v26 + 8 * (v19 + 1));
    v28 = *(v26 + 8 * v19);
    v118 = *(v23 + 4 * v19);
    v119 = *(v23 + 4 * (v19 + 1));
    v29 = *(a2 + 28);
    v30 = *a2;
    if (v24 > v25)
    {
      v31 = 0;
      v32 = *(a3 + 112) + 4 * v25;
      do
      {
        *(v18 + 4 * *(v32 + 4 * v31)) = v31;
        ++v31;
      }

      while (v24 - v25 != v31);
    }

    v33 = v24 - v25;
    v34 = v33;
    v120 = v27 - v28;
    v121 = v33;
    bzero(v122, (v27 - v28) * 8 * v33);
    v35 = *(a3 + 120);
    v36 = *(v35 + 8 * v19);
    if (v36 < *(v35 + 8 * v21))
    {
      if (v29 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v29;
      }

      v38 = 8 * (v29 * v29);
      v39 = v122;
      do
      {
        v40 = *(a3 + 136);
        v41 = *(*(a3 + 128) + 8 * v36);
        v42 = v41 / v40;
        v43 = v41 % v40;
        if (v42)
        {
          v44 = (v42 << 32) - 0x100000000;
          v45 = *(a3 + 104);
          v46 = *(v45 + 8 * v42);
          v47 = v44 >> 29;
          v48 = *(v45 + (v44 >> 29));
          v49 = *(*(a3 + 96) + 4 * v42) - *(*(a3 + 96) + (v44 >> 30));
          v50 = v48 + v43 + v49;
          if (v50 < v46)
          {
            v51 = (*(a5 + v47) + (8 * (v46 - v48) - 8 * v49 + 8) * v43);
            do
            {
              v52 = *v51++;
              *&v39[8 * *(v18 + 4 * *(*(a3 + 112) + 4 * v50++))] = v52;
            }

            while (v50 < *(*(a3 + 104) + 8 * v42));
          }
        }

        else
        {
          v53 = v43 / v29;
          v54 = (*(a2 + 8) + 8 * v53);
          v55 = *v54;
          v56 = v54[1];
          if ((*(a2 + 24) & 0x1C) == 4)
          {
            if (v55 < v56)
            {
              v57 = (v53 * v29);
              v58 = v38 * v55;
              do
              {
                v59 = *(*(a2 + 16) + 4 * v55);
                if ((v59 & 0x80000000) == 0 && v59 < v30)
                {
                  v60 = *(a2 + 24);
                  v61 = v60 & 2;
                  if ((v53 <= v59 || v61 == 0) && (v53 >= v59 || v61 != 0))
                  {
                    v64 = *(a2 + 32);
                    v65 = v43 % v29;
                    v66 = v43 % v29 * v29;
                    v67 = *(a3 + 200);
                    if (v53 == v59)
                    {
                      if (v67)
                      {
                        v68 = (v67 + v57);
                        v69 = (v18 + 4 * v57);
                        v70 = v37;
                        v71 = v64 + 8 * v66;
                        do
                        {
                          v72 = *v68++;
                          if ((v72 & 1) == 0)
                          {
                            *&v39[8 * *v69] = *(v71 + v58);
                          }

                          ++v69;
                          v71 += 8;
                          --v70;
                        }

                        while (v70);
                      }

                      else if ((v60 & 2) != 0)
                      {
                        v79 = v65;
                        v80 = v64 + 8 * v66 + 8 * v65;
                        do
                        {
                          *&v39[8 * *(v18 + 4 * v57 + 4 * v79++)] = *(v80 + v58);
                          v80 += 8;
                        }

                        while (v79 < v29);
                      }

                      else if ((v65 & 0x80000000) == 0)
                      {
                        v84 = (v65 + 1);
                        v85 = v64 + 8 * v66;
                        v86 = (v18 + 4 * v57);
                        do
                        {
                          v87 = *v86++;
                          *&v39[8 * v87] = *(v85 + v58);
                          v85 += 8;
                          --v84;
                        }

                        while (v84);
                      }
                    }

                    else
                    {
                      v73 = (v59 * v29);
                      v74 = (v18 + 4 * v73);
                      if (v67)
                      {
                        v75 = (v67 + v73);
                        v76 = (v64 + v58 + 8 * v66);
                        v77 = v37;
                        do
                        {
                          v78 = *v75++;
                          if ((v78 & 1) == 0)
                          {
                            *&v39[8 * *v74] = *v76;
                          }

                          ++v74;
                          ++v76;
                          --v77;
                        }

                        while (v77);
                      }

                      else
                      {
                        v81 = v64 + 8 * v66;
                        v82 = v37;
                        do
                        {
                          v83 = *v74++;
                          *&v39[8 * v83] = *(v81 + v58);
                          v81 += 8;
                          --v82;
                        }

                        while (v82);
                      }
                    }
                  }
                }

                ++v55;
                v58 += v38;
              }

              while (v55 < *(*(a2 + 8) + 8 * (v43 / v29) + 8));
            }
          }

          else if (v55 < v56)
          {
            v88 = v38 * v55 + 8 * v29 * (v43 - v29 * v53);
            do
            {
              v89 = *(*(a2 + 16) + 4 * v55);
              if ((v89 & 0x80000000) == 0 && v89 < v30)
              {
                v90 = *(a2 + 32);
                v91 = *(a3 + 200);
                v92 = (v89 * v29);
                v93 = (v18 + 4 * v92);
                if (v91)
                {
                  v94 = (v91 + v92);
                  v95 = (v90 + v88);
                  v96 = v37;
                  do
                  {
                    v97 = *v94++;
                    if ((v97 & 1) == 0)
                    {
                      *&v39[8 * *v93] = *v95;
                    }

                    ++v93;
                    ++v95;
                    --v96;
                  }

                  while (v96);
                }

                else
                {
                  v98 = v37;
                  do
                  {
                    v99 = *v93++;
                    *&v39[8 * v99] = *(v90 + v88);
                    v90 += 8;
                    --v98;
                  }

                  while (v98);
                }
              }

              ++v55;
              v88 += v38;
            }

            while (v55 < *(*(a2 + 8) + 8 * v53 + 8));
          }
        }

        v39 += 8 * v34;
        ++v36;
      }

      while (v36 < *(*(a3 + 120) + 8 * v21));
    }

    v100 = *(a3 + 152);
    v101 = *(v100 + 4 * v21);
    if (v101 > *(v100 + 4 * v19))
    {
      do
      {
        v102 = v101 - 1;
        v103 = *(*(a3 + 160) + 4 * v101 - 4);
        v104 = *(*(a3 + 96) + 4 * (v103 + 1)) - *(*(a3 + 96) + 4 * v103);
        v105 = *(*(a3 + 104) + 8 * (v103 + 1)) - *(*(a3 + 104) + 8 * v103);
        v106 = *(*(a3 + 120) + 8 * (v103 + 1)) - *(*(a3 + 120) + 8 * v103);
        if (v105 < v106)
        {
          v106 = *(*(a3 + 104) + 8 * (v103 + 1)) - *(*(a3 + 104) + 8 * v103);
        }

        *(a5 + 8 * v103) = 0;
        v20 += 8 * (v106 - v104) * (v104 - v105);
        v101 = v102;
      }

      while (v102 > *(*(a3 + 152) + 4 * v19));
    }

    v107 = v119 - v118;
    a1 = v115;
    if (v121 <= v119 - v118)
    {
      v109 = v20;
      v20 = 0;
    }

    else
    {
      v108 = v121 >= v120 ? v120 : v121;
      *(a5 + 8 * v19) = v20;
      v109 = v20 + 8 * (v108 - v107) * (v121 - (v119 - v118));
    }

    v110 = *(*(a3 + 104) + 8 * v19);
    v111 = *(a3 + 144) + 4 * v110;
    v112 = v115 == 40 ? sub_2367760E0(v120, v121, v107, v111, v122, v121, 0, v34, *(a4 + 56) + 8 * v110, v20, v114, v116) : sub_2367760E0(v120, v121, v107, v111, v122, v121, *(*(a4 + 40) + 8 * v19), v34, 0, v20, v114, v116);
    if (v112)
    {
      break;
    }

    ++v19;
    v20 = v109;
    if (v21 >= *(a3 + 88))
    {
      return 0;
    }
  }

  return 4294967294;
}

void _SparseConvertFromCoordinate_Complex_Float(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int *a6@<X5>, int *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned int *a11)
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
  v16 = (v15 + 8 * a3 * v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a9 + 8) = v13;
  *(a9 + 16) = v16;
  if (!a3)
  {
    if ((a2 & 0x80000000) == 0)
    {

      bzero(((a10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * (a2 + 1));
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
    v24 = a7;
    v25 = a3;
    do
    {
      v27 = *v23++;
      v26 = v27;
      v29 = *v24++;
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

      --v25;
    }

    while (v25);
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

  v38 = 8 * v12;
  if (a3 >= 1)
  {
    v39 = v22;
    v40 = 0;
    v41 = a4;
    v42 = 8 * a4;
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
          v57 = (v21 + 8 * v55 * v12);
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
                      *v76 = vadd_f32(*v77, *v76);
                      *v77++ = 0;
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

                  bzero(&v110[v66 + v69], 8 * (v70 + ~v69) + 8);
                  if (a11[v100] == -2)
                  {
                    *v68 = 1065353216;
                  }

                  v68 = (v68 + v42 + 8);
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
                    bzero(&v110[v64 + v62], 8 * (v65 + ~v64) + 8);
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
        v51 = (v21 + 8 * v50 * v12);
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
                v89 = (v21 + 8 * v80 * v12);
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
            v88 = v21 + 8 * (v13[v82] + v86) * v12;
            do
            {
              *(v88 + v87) = vadd_f32(v84[v87 / 8], *(v88 + v87));
              v87 += 8;
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

uint64_t sub_2367E8584(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = result;
  v14 = a5[4];
  v15 = a5[1];
  if (v14 < v15)
  {
    v16 = a5[3];
    v78 = a6;
    v17 = v16 + a10;
    while (1)
    {
      if (v14 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v14;
      }

      if (v14 == v16 && v17 >= v15)
      {
        goto LABEL_101;
      }

      v19 = a5[19];
      if (v19 - v15 + v18 >= 0 && (*(a6[6] + (v19 - v15 + v18)) & 1) != 0)
      {
        goto LABEL_100;
      }

      if (v18 >= v16)
      {
        break;
      }

      if (v18 < 0)
      {
        goto LABEL_19;
      }

      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v18);
      }

      else
      {
        v20 = v18 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_21:
      v24 = *(a13 + 4 * v20);
      v25 = *(a2 + 12);
      if (v24 >= v25)
      {
        v27 = *(a2 + 4);
        v28 = v27 - *(a2 + 76);
        if (v24 < v28)
        {
          result = ((v24 - v25) / a8);
          v26 = (v24 - v25) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v13) + 4 * result) * a8;
          goto LABEL_31;
        }

        if (v27 > v24)
        {
          v26 = *(*(a2 + 88) + 4 * (v24 - v28));
          goto LABEL_31;
        }
      }

      else if ((v24 & 0x80000000) == 0)
      {
        if (*(a2 + 56))
        {
          v26 = *(*(a2 + 64) + 4 * v24);
        }

        else
        {
          v26 = v24 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_31;
      }

      v26 = 0x7FFFFFFF;
LABEL_31:
      if (v26 == v20)
      {
        v29 = (v24 - v25);
        if (v24 - v25 >= 0)
        {
          if (a11 >= 1)
          {
            v30 = (v18 - v16);
            v31 = 8 * (v16 + a9) - 8 * v16;
            v32 = v16 + a9;
            v33 = a9;
            do
            {
              if (v32 >= v16)
              {
                v36 = *a5;
                v37 = a5[18];
                if (v32 < v36 - v37)
                {
                  v38 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * (v33 / a8));
                  v39 = v33 % a8;
LABEL_45:
                  v35 = v39 + v38 * a8;
                  goto LABEL_46;
                }

                if (v32 >= v36)
                {
LABEL_43:
                  v35 = 0x7FFFFFFF;
                  goto LABEL_46;
                }

                v35 = *(*(a5 + 10) + 4 * (v32 + v37 - v36));
              }

              else
              {
                if (v32 < 0)
                {
                  goto LABEL_43;
                }

                v34 = *(a5 + 7);
                if (!v34)
                {
                  v38 = *(a7[22] + 4 * a4);
                  v39 = v16 + v33;
                  goto LABEL_45;
                }

                v35 = *(v34 + 4 * v32);
              }

LABEL_46:
              v40 = *(a12 + 4 * v35);
              if (v40 >= v25)
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 8 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 8 * *(a5 + 6) * v32 + 8 * v30);
                }

                result = *(a3 + 96) + 8 * *(a3 + 16) * v29;
                v42 = (result + 8 * (v40 - v25));
              }

              else
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 8 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 8 * *(a5 + 6) * v32 + 8 * v30);
                }

                result = *(a2 + 40);
                v42 = (result + 8 * *(a2 + 48) * v40 + 8 * v29);
              }

              *v42 = vadd_f32(*v41, *v42);
              ++v32;
              ++v33;
              v31 += 8;
            }

            while (v32 < v16 + a9 + a11);
          }

          v43 = a5[18];
          v17 = v16 + a10;
          if (v43 >= 1)
          {
            v44 = 0;
            v45 = *a5;
            v77 = v45 - v43;
            v46 = a6[4];
            v47 = (v18 - v16);
            v79 = v45 - v16 - v43;
            v48 = -8 * v16 + 8 * (v45 - v43);
            v49 = v45 - v43;
            while ((*(v46 + v44) & 1) != 0)
            {
LABEL_99:
              ++v49;
              ++v44;
              v48 += 8;
              if (v77 + v44 >= v45)
              {
                goto LABEL_100;
              }
            }

            v50 = v77 + v44;
            if (v50 >= v16)
            {
              if (v50 < v77)
              {
                v53 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v79 + v44) / a8));
                v54 = (v79 + v44) % a8;
                goto LABEL_73;
              }

              v52 = *(a5 + 10);
LABEL_70:
              v55 = *(v52 + 4 * v44);
            }

            else if (v50 < 0)
            {
              v55 = 0x7FFFFFFF;
            }

            else
            {
              v51 = *(a5 + 7);
              if (v51)
              {
                v52 = v51 + 4 * v77;
                goto LABEL_70;
              }

              v53 = *(a7[22] + 4 * a4);
              v54 = v77 + v44;
LABEL_73:
              v55 = v54 + v53 * a8;
            }

            result = *(a12 + 4 * v55);
            v56 = result;
            if (result >= v25)
            {
              v59 = *a2 - *(a2 + 72);
              if (result < v59)
              {
                v17 = v16 + a10;
                a6 = v78;
                v58 = (result - v25) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((result - v25) / a8)) * a8;
                goto LABEL_84;
              }

              if (*a2 > result)
              {
                v58 = *(*(a2 + 80) + 4 * (result - v59));
                goto LABEL_84;
              }
            }

            else if ((result & 0x80000000) == 0)
            {
              v57 = *(a2 + 56);
              if (v57)
              {
                v58 = *(v57 + 4 * result);
              }

              else
              {
                v58 = result + *(a7[22] + 4 * v13) * a8;
              }

LABEL_84:
              if (v58 == v55)
              {
                if (v25 <= result)
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 8 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 8 * *(a5 + 6) * v50 + 8 * v47);
                  }

                  result = *(a3 + 96);
                  v61 = (result + 8 * *(a3 + 16) * v29 + 8 * (v56 - v25));
                }

                else
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 8 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 8 * *(a5 + 6) * v50 + 8 * v47);
                  }

                  result = *(a2 + 48);
                  v61 = (*(a2 + 40) + 8 * result * v56 + 8 * v29);
                }

                *v61 = vadd_f32(*v60, *v61);
              }

              goto LABEL_99;
            }

            v58 = 0x7FFFFFFF;
            goto LABEL_84;
          }
        }
      }

LABEL_100:
      v14 = v18 + 1;
      if (v18 + 1 >= v15)
      {
        goto LABEL_101;
      }
    }

    v21 = v15 - v19;
    v22 = __OFSUB__(v18, v21);
    v23 = v18 - v21;
    if (v23 < 0 != v22)
    {
      v20 = (v18 - v16) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v18 - v16) / a8)) * a8;
      goto LABEL_21;
    }

    if (v15 > v18)
    {
      v20 = *(*(a5 + 11) + 4 * v23);
      goto LABEL_21;
    }

LABEL_19:
    v20 = 0x7FFFFFFF;
    goto LABEL_21;
  }

LABEL_101:
  v62 = a5[18];
  if (v62 >= 1)
  {
    v63 = 0;
    v64 = *a5;
    v65 = v64 - v62;
    v66 = a6[4];
    result = v13;
    while ((*(v66 + v63) & 1) != 0)
    {
LABEL_126:
      ++v63;
      if (v65 + v63 >= v64)
      {
        return result;
      }
    }

    v67 = v65 + v63;
    v68 = a5[3];
    if (v67 < v68)
    {
      if (v67 < 0)
      {
        v71 = 0x7FFFFFFF;
      }

      else
      {
        v69 = *(a5 + 7);
        if (v69)
        {
          v70 = v69 + 4 * v65;
LABEL_111:
          v71 = *(v70 + 4 * v63);
          goto LABEL_114;
        }

        v71 = v65 + v63 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_114:
      v72 = *(a12 + 4 * v71);
      v73 = *(a2 + 12);
      if (v72 >= v73)
      {
        v76 = *a2 - *(a2 + 72);
        if (v72 < v76)
        {
          v75 = (v72 - v73) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((v72 - v73) / a8)) * a8;
          goto LABEL_124;
        }

        if (*a2 > v72)
        {
          v75 = *(*(a2 + 80) + 4 * (v72 - v76));
          goto LABEL_124;
        }
      }

      else if ((v72 & 0x80000000) == 0)
      {
        v74 = *(a2 + 56);
        if (v74)
        {
          v75 = *(v74 + 4 * v72);
        }

        else
        {
          v75 = v72 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_124;
      }

      v75 = 0x7FFFFFFF;
LABEL_124:
      if (v75 == v71)
      {
        *(v66 + v63) = 1;
      }

      goto LABEL_126;
    }

    if (v67 < v65)
    {
      v71 = (v65 + v63 - v68) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v65 + v63 - v68) / a8)) * a8;
      goto LABEL_114;
    }

    v70 = *(a5 + 10);
    goto LABEL_111;
  }

  return result;
}

uint64_t sub_2367E8CD4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, uint64_t a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v100 = result;
  v13 = a5[3];
  if (a11 >= 1)
  {
    v14 = v13 + a9;
    v15 = v13 + a10;
    v16 = *(a2 + 12);
    v104 = 4 * v14;
    v108 = a5 + 10;
    v106 = a5 + 12;
    v17 = a5 + 6;
    v18 = a5 + 8;
    v19 = 8 * v15 - 8 * v13;
    while (1)
    {
      result = v15 - v13;
      if (v15 < v13)
      {
        break;
      }

      v21 = a5[1];
      v22 = v21 - a5[19];
      v23 = __OFSUB__(v15, v22);
      v24 = v15 - v22;
      if (v24 < 0 != v23)
      {
        v20 = (v15 - v13) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v15 - v13) / a8)) * a8;
      }

      else
      {
        if (v15 >= v21)
        {
          goto LABEL_12;
        }

        v20 = *(*(a5 + 11) + 4 * v24);
      }

LABEL_14:
      v25 = *(a13 + 4 * v20);
      v26 = (v25 - v16);
      if (v25 - v16 >= 0)
      {
        v27 = a5[4];
        if (v27 < v13)
        {
          if (result >= 0)
          {
            v28 = a5 + 10;
          }

          else
          {
            v28 = a5 + 6;
          }

          if (result >= 0)
          {
            v29 = a5 + 12;
          }

          else
          {
            v29 = a5 + 8;
          }

          do
          {
            if (v27 < 0)
            {
              v31 = 0x7FFFFFFF;
            }

            else
            {
              v30 = *(a5 + 7);
              if (v30)
              {
                v31 = *(v30 + 4 * v27);
              }

              else
              {
                v31 = v27 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v32 = *(a12 + 4 * v31);
            if (v32 >= v16)
            {
              v37 = v32 - v16;
              if (result >= 0)
              {
                v38 = v27;
              }

              else
              {
                v38 = v15;
              }

              if (result >= 0)
              {
                v39 = v15 - v13;
              }

              else
              {
                v39 = v27;
              }

              v35 = (*v28 + 8 * *v29 * v38 + 8 * v39);
              v36 = (*(a3 + 96) + 8 * *(a3 + 16) * v26 + 8 * v37);
            }

            else
            {
              if (result >= 0)
              {
                v33 = v27;
              }

              else
              {
                v33 = v15;
              }

              if (result >= 0)
              {
                v34 = v15 - v13;
              }

              else
              {
                v34 = v27;
              }

              v35 = (*v28 + 8 * *v29 * v33 + 8 * v34);
              v36 = (*(a2 + 40) + 8 * *(a2 + 48) * v32 + 8 * v26);
            }

            *v36 = vadd_f32(*v35, *v36);
            ++v27;
          }

          while (v13 != v27);
        }

        v40 = *a5;
        if (v14 < v40)
        {
          v41 = 0;
          v42 = a5[18];
          v43 = v40 - v42;
          v44 = v13 + a9 + v42 - v40;
          v45 = v104 + 4 * v42 - 4 * v40;
          v46 = 8 * v14 - 8 * v13;
          v47 = v13 + a9;
          while (((v44 + v41) & 0x80000000) == 0 && (*(*(a6 + 32) + (v44 + v41)) & 1) != 0)
          {
LABEL_72:
            ++v47;
            ++v41;
            v46 += 8;
            if (v14 + v41 >= v40)
            {
              goto LABEL_73;
            }
          }

          v48 = v14 + v41;
          if (v14 + v41 >= v13)
          {
            if (v48 < v43)
            {
              v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v41) / a8));
              v52 = (a9 + v41) % a8;
              goto LABEL_57;
            }

            v50 = *(a5 + 10) + v45;
LABEL_54:
            v53 = *(v50 + 4 * v41);
          }

          else if (v48 < 0)
          {
            v53 = 0x7FFFFFFF;
          }

          else
          {
            v49 = *(a5 + 7);
            if (v49)
            {
              v50 = v49 + v104;
              goto LABEL_54;
            }

            v51 = *(a7[22] + 4 * a4);
            v52 = v13 + a9 + v41;
LABEL_57:
            v53 = v52 + v51 * a8;
          }

          v54 = *(a12 + 4 * v53);
          if (v54 >= v16)
          {
            if (result < 0)
            {
              v55 = (*v17 + 8 * *v18 * v15 + 8 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 8 * *v106 * v48 + 8 * result);
            }

            v56 = (*(a3 + 96) + 8 * *(a3 + 16) * v26 + 8 * (v54 - v16));
          }

          else
          {
            if (result < 0)
            {
              v55 = (*v17 + 8 * *v18 * v15 + 8 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 8 * *v106 * v48 + 8 * result);
            }

            v56 = (*(a2 + 40) + 8 * *(a2 + 48) * v54 + 8 * v26);
          }

          *v56 = vadd_f32(*v55, *v56);
          goto LABEL_72;
        }
      }

LABEL_73:
      ++v15;
      v19 += 8;
      if (v15 >= v13 + a10 + a11)
      {
        goto LABEL_74;
      }
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v15);
      }

      else
      {
        v20 = v15 + *(a7[22] + 4 * a4) * a8;
      }

      goto LABEL_14;
    }

LABEL_12:
    v20 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_74:
  v57 = a5[19];
  if (v57 < 1)
  {
    return result;
  }

  v58 = 0;
  v59 = 0;
  v60 = v13 + a9;
  v61 = a5[1];
  v62 = *(a6 + 48);
  v63 = v61 - v57;
  v102 = 4 * v60;
  v105 = a5 + 10;
  v103 = a5 + 12;
  v109 = a5 + 6;
  v107 = a5 + 8;
  v64 = 8 * v63 - 8 * v13;
  v99 = v61;
  v101 = v63;
  do
  {
    if (*(v62 + v58))
    {
      goto LABEL_153;
    }

    v65 = v63 - v13;
    if (v63 >= v13)
    {
      if (v63 >= v101)
      {
        v66 = *(*(a5 + 11) + 4 * (v63 - v101));
      }

      else
      {
        if (v65 < a10 || v65 >= a11 + a10)
        {
          __break(1u);
          return result;
        }

        v66 = v65 % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * (v65 / a8)) * a8;
      }
    }

    else if (v63 < 0)
    {
      v66 = 0x7FFFFFFF;
    }

    else if (*(a5 + 7))
    {
      v66 = *(*(a5 + 8) + 4 * v63);
    }

    else
    {
      v66 = v63 + *(a7[22] + 4 * a4) * a8;
    }

    v67 = *(a13 + 4 * v66);
    v68 = *(a2 + 12);
    if (v67 >= v68)
    {
      v70 = *(a2 + 4);
      v71 = v70 - *(a2 + 76);
      if (v67 >= v71)
      {
        if (v70 <= v67)
        {
LABEL_96:
          v69 = 0x7FFFFFFF;
          goto LABEL_98;
        }

        v69 = *(*(a2 + 88) + 4 * (v67 - v71));
      }

      else
      {
        result = ((v67 - v68) / a8);
        v69 = (v67 - v68) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v100) + 4 * result) * a8;
      }
    }

    else
    {
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

      if (*(a2 + 56))
      {
        v69 = *(*(a2 + 64) + 4 * v67);
      }

      else
      {
        v69 = v67 + *(a7[22] + 4 * v100) * a8;
      }
    }

LABEL_98:
    if (v69 == v66)
    {
      result = (v67 - v68);
      if (v67 - v68 >= 0)
      {
        v72 = a5[4];
        if (v72 < v13)
        {
          v74 = a5 + 8;
          v73 = a5 + 6;
          if (v65 >= 0)
          {
            v73 = a5 + 10;
            v74 = a5 + 12;
          }

          do
          {
            if (v72 < 0)
            {
              v76 = 0x7FFFFFFF;
            }

            else
            {
              v75 = *(a5 + 7);
              if (v75)
              {
                v76 = *(v75 + 4 * v72);
              }

              else
              {
                v76 = v72 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v77 = *(a12 + 4 * v76);
            if (v77 >= v68)
            {
              v82 = v77 - v68;
              if (v65 >= 0)
              {
                v83 = v72;
              }

              else
              {
                v83 = v63;
              }

              if (v65 >= 0)
              {
                v84 = v63 - v13;
              }

              else
              {
                v84 = v72;
              }

              v80 = (*v73 + 8 * *v74 * v83 + 8 * v84);
              v81 = (*(a3 + 96) + 8 * *(a3 + 16) * result + 8 * v82);
            }

            else
            {
              if (v65 >= 0)
              {
                v78 = v72;
              }

              else
              {
                v78 = v63;
              }

              if (v65 >= 0)
              {
                v79 = v63 - v13;
              }

              else
              {
                v79 = v72;
              }

              v80 = (*v73 + 8 * *v74 * v78 + 8 * v79);
              v81 = (*(a2 + 40) + 8 * *(a2 + 48) * v77 + 8 * result);
            }

            *v81 = vadd_f32(*v80, *v81);
            ++v72;
          }

          while (v13 != v72);
        }

        v85 = *a5;
        if (v60 < v85)
        {
          v86 = 0;
          v87 = a5[18];
          v88 = v85 - v87;
          v89 = v13 + a9 + v87 - v85;
          v90 = v102 + 4 * v87 - 4 * v85;
          v91 = 8 * v60 - 8 * v13;
          v92 = v13 + a9;
          do
          {
            if (v89 + v86 < 0 || (*(*(a6 + 32) + (v89 + v86)) & 1) == 0)
            {
              v93 = v60 + v86;
              if (v60 + v86 >= v13)
              {
                if (v93 >= v88)
                {
                  v95 = *(*(a5 + 10) + v90 + 4 * v86);
                }

                else
                {
                  v95 = (a9 + v86) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v86) / a8)) * a8;
                }
              }

              else if (v93 < 0)
              {
                v95 = 0x7FFFFFFF;
              }

              else
              {
                v94 = *(a5 + 7);
                if (v94)
                {
                  v95 = *(v94 + v102 + 4 * v86);
                }

                else
                {
                  v95 = v13 + a9 + v86 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v96 = *(a12 + 4 * v95);
              if (v96 >= v68)
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 8 * *v107 * v63 + 8 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 8 * *v103 * v93 + 8 * v65);
                }

                v98 = (*(a3 + 96) + 8 * *(a3 + 16) * result + 8 * (v96 - v68));
              }

              else
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 8 * *v107 * v63 + 8 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 8 * *v103 * v93 + 8 * v65);
                }

                v98 = (*(a2 + 40) + 8 * *(a2 + 48) * v96 + 8 * result);
              }

              *v98 = vadd_f32(*v97, *v98);
            }

            ++v92;
            ++v86;
            v91 += 8;
          }

          while (v60 + v86 < v85);
        }

        *(v62 + v58) = 1;
        ++v59;
        v61 = v99;
      }
    }

LABEL_153:
    ++v63;
    ++v58;
    v64 += 8;
  }

  while (v63 < v61);
  if (v59 > 0)
  {
    atomic_fetch_add_explicit((a6 + 24), -v59, memory_order_release);
  }

  return result;
}

uint64_t sub_2367E95C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = a5[3];
  v62 = a5[1];
  if (v12 + a10 < v62)
  {
    v13 = a5[19];
    v61 = v13 - v62;
    v64 = a5 + 10;
    v14 = v12 + a10;
    v63 = a5 + 12;
    v65 = a5 + 6;
    v15 = a5 + 8;
    v60 = v62 - v13;
    for (i = 8 * a10; ; i += 8)
    {
      if (v61 + v14 < 0 || (*(a6[6] + (v61 + v14)) & 1) == 0)
      {
        v17 = v14 - v12;
        if (v14 >= v12)
        {
          v18 = v14 >= v60 ? *(*(a5 + 11) + 4 * (v14 - v60)) : (v14 - v12) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v14 - v12) / a8)) * a8;
        }

        else if (v14 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a5 + 7) ? *(*(a5 + 8) + 4 * v14) : v14 + *(a7[22] + 4 * a4) * a8;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        v21 = (v19 - v20);
        if (v19 - v20 >= 0)
        {
          v22 = a5[4];
          if (v22 < v12)
          {
            if (v17 >= 0)
            {
              v23 = a5 + 10;
            }

            else
            {
              v23 = a5 + 6;
            }

            if (v17 >= 0)
            {
              v24 = a5 + 12;
            }

            else
            {
              v24 = a5 + 8;
            }

            do
            {
              if (v22 < 0)
              {
                v26 = 0x7FFFFFFF;
              }

              else
              {
                v25 = *(a5 + 7);
                if (v25)
                {
                  v26 = *(v25 + 4 * v22);
                }

                else
                {
                  v26 = v22 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v27 = *(a11 + 4 * v26);
              if (v27 >= v20)
              {
                v32 = v27 - v20;
                if (v17 >= 0)
                {
                  v33 = v22;
                }

                else
                {
                  v33 = v14;
                }

                if (v17 >= 0)
                {
                  v34 = v14 - v12;
                }

                else
                {
                  v34 = v22;
                }

                v30 = (*v23 + 8 * *v24 * v33 + 8 * v34);
                v31 = (*(a3 + 96) + 8 * *(a3 + 16) * v21 + 8 * v32);
              }

              else
              {
                if (v17 >= 0)
                {
                  v28 = v22;
                }

                else
                {
                  v28 = v14;
                }

                if (v17 >= 0)
                {
                  v29 = v14 - v12;
                }

                else
                {
                  v29 = v22;
                }

                v30 = (*v23 + 8 * *v24 * v28 + 8 * v29);
                v31 = (*(a2 + 40) + 8 * *(a2 + 48) * v27 + 8 * v21);
              }

              *v31 = vadd_f32(*v30, *v31);
              ++v22;
            }

            while (v12 != v22);
          }

          v35 = *a5;
          v36 = a5[18];
          v37 = v35 - v36;
          if (v12 + a9 < v35 - v36)
          {
            v38 = a7[24] + 4 * *(a7[23] + 8 * a4);
            v39 = a6[12] - 8 * v12 + a6[2] * i;
            v40 = a9;
            v41 = v12 + a9;
            do
            {
              v42 = *(a11 + 4 * (v40 % a8 + *(v38 + 4 * (v40 / a8)) * a8));
              if (v42 >= v20)
              {
                v43 = (*(a3 + 96) + 8 * *(a3 + 16) * v21 + 8 * (v42 - v20));
              }

              else
              {
                v43 = (*(a2 + 40) + 8 * *(a2 + 48) * v42 + 8 * v21);
              }

              *v43 = vadd_f32(*(v39 + 8 * v41++), *v43);
              ++v40;
            }

            while (v41 < v37);
          }

          if (v36 >= 1)
          {
            break;
          }
        }
      }

LABEL_78:
      if (++v14 >= v62)
      {
        return result;
      }
    }

    v44 = 0;
    v45 = a6[4];
    v46 = v35 - v12 - v36;
    v47 = 4 * v35 - 4 * v36;
    v48 = 8 * (v35 - v12 - v36);
    v49 = v37;
    while ((*(v45 + v44) & 1) != 0)
    {
LABEL_77:
      ++v49;
      ++v44;
      v48 += 8;
      if (v37 + v44 >= v35)
      {
        goto LABEL_78;
      }
    }

    v50 = v37 + v44;
    if (v50 >= v12)
    {
      if (v50 >= v37)
      {
        v52 = *(a5 + 10);
        goto LABEL_59;
      }

      result = ((v46 + v44) / a8);
      v54 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * result);
      v55 = (v46 + v44) % a8;
    }

    else
    {
      if (v50 < 0)
      {
        v56 = 0x7FFFFFFF;
        goto LABEL_63;
      }

      v51 = *(a5 + 7);
      if (v51)
      {
        v52 = v51 + v47;
LABEL_59:
        v56 = *(v52 + 4 * v44);
LABEL_63:
        v57 = *(a11 + 4 * v56);
        if (v57 >= v20)
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 8 * *v15 * v14 + 8 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 8 * *v63 * v50 + 8 * v17);
          }

          v59 = (*(a3 + 96) + 8 * *(a3 + 16) * v21 + 8 * (v57 - v20));
        }

        else
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 8 * *v15 * v14 + 8 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 8 * *v63 * v50 + 8 * v17);
          }

          v59 = (*(a2 + 40) + 8 * *(a2 + 48) * v57 + 8 * v21);
        }

        *v59 = vadd_f32(*v58, *v59);
        goto LABEL_77;
      }

      v54 = *(a7[22] + 4 * a4);
      v55 = v37 + v44;
    }

    v56 = v55 + v54 * a8;
    goto LABEL_63;
  }

  return result;
}

uint64_t _SparseNumericFactorLU_Complex_Float@<X0>(__int128 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  v25 = *MEMORY[0x277D85DE8];
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v8 = a1[2];
  *(a5 + 56) = a1[3];
  v9 = *(a1 + 17);
  v10 = *(a1 + 3);
  *a5 = -3;
  *(a5 + 4) = *(a1 + 6) & 1;
  *(a5 + 40) = v8;
  v11 = *a1;
  *(a5 + 24) = a1[1];
  *(a5 + 8) = v11;
  *(a5 + 72) = 1;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  atomic_fetch_add((v10 + 48), 1u);
  if (*(a3 + 4) == 4)
  {
    v12 = *(v10 + 40);
    if (!v12)
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v16)
      {
        sub_23672AC1C(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      _SparseTrap();
    }

    memset(&v24[14] + 4, 0, 28);
    memset(&v24[9] + 4, 0, 80);
    strcpy(v24, "nfoptions->scalingMethod=SparseScalingHungarianScalingAndOrdering is only supported if a combined symbolic+numeric call to SparseFactor() is made.\n");
    result = v12(v24, a2);
    *a5 = -4;
  }

  else
  {
    *(a5 + 80) = sub_2367E9C78(v9, *(a1 + 16), v10, 2 * *(a1 + 6), a3, a6);
    _SparseRefactorLU_Complex_Float(a2, a5, a3, a4);

    return sub_2367D9E50(a5);
  }

  return result;
}

uint64_t sub_2367E9C78(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v47 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v6 = (*(a3 + 24))(a4);
    if (!v6)
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672AC58();
        }

        _SparseTrap();
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__str = 0u;
      v32 = 0u;
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorLU.", a4);
      (*(a3 + 40))(__str);
      return 0;
    }
  }

  v12 = v6 + a4;
  v13 = 4 * *(a3 + 56);
  v14 = *(a5 + 4);
  if ((v14 - 2) >= 3)
  {
    if (v14 == 1)
    {
      if (!*(a5 + 8))
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = (v6 + 151) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v15)
  {
    goto LABEL_34;
  }

  v16 = v15 + 8 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60));
  if (v16 > v12)
  {
    goto LABEL_34;
  }

  if (a2 < 2)
  {
    v17 = (v15 + 8 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)));
    v16 = 0;
  }

  else
  {
    v17 = ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 < v17)
    {
      goto LABEL_34;
    }
  }

  if (a1 != 83)
  {
    v21 = 0;
    v24 = 0;
    v19 = 0;
    v22 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_23:
    v25 = (v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 >= v25)
    {
      v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 >= v26)
      {
        v13 = v17;
        v17 = v26;
        goto LABEL_26;
      }
    }

LABEL_34:
    __break(1u);
  }

  v18 = *(a3 + 168);
  v19 = (v17 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v19)
  {
    goto LABEL_34;
  }

  v20 = 4 * v18;
  v21 = (v19 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v21)
  {
    goto LABEL_34;
  }

  v22 = (v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v22)
  {
    goto LABEL_34;
  }

  v23 = (v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v23)
  {
    goto LABEL_34;
  }

  v24 = v17;
  v17 = v23;
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_21:
  v25 = 0;
LABEL_26:
  v27 = (v17 + 8 * *(a3 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v27)
  {
    goto LABEL_34;
  }

  v28 = *(a5 + 16);
  *v6 = *a5;
  *(v6 + 16) = v28;
  *(v6 + 32) = 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = v16;
  *(v6 + 56) = 0;
  *(v6 + 64) = v24;
  *(v6 + 72) = v19;
  *(v6 + 80) = v21;
  *(v6 + 88) = v22;
  *(v6 + 96) = v13;
  *(v6 + 104) = v25;
  *(v6 + 112) = v17;
  v29 = (v27 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(v6 + 120) = v29;
  *(v6 + 128) = v12 - v29;
  *(v6 + 136) = 0;
  bzero(v17, 8 * *(a3 + 168));
  return v6;
}

void _SparseRefactorLU_Complex_Float(unsigned int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v6 = a1;
  v212 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 80);
  v179 = *(a2 + 25);
  v8 = *(a1 + 28);
  v9 = *(a2 + 32);
  v10 = 2 * *(a2 + 40);
  v11 = *(a3 + 4);
  v182 = v7;
  v183 = v9;
  if (v11 <= 1)
  {
    if (*(a3 + 4))
    {
      v16 = *(a3 + 8);
      if (v16)
      {
        v17 = *a1;
        if (v17 >= 1)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            if (v8)
            {
              v20 = (v16 + 4 * *(*(v183 + 152) + 4 * i) * v8);
              v21 = (*(v7 + 96) + v18);
              v22 = v8;
              do
              {
                v23 = *v20++;
                *v21++ = v23;
                --v22;
              }

              while (v22);
            }

            v18 += 4 * v8;
          }
        }

        v24 = a1[1];
        if (v24 >= 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = v16 + 4 * v17 * v8;
          do
          {
            if (v8)
            {
              v28 = (v27 + 4 * *(*(v183 + 160) + 4 * v26) * v8);
              v29 = (*(v7 + 104) + v25);
              v30 = v8;
              do
              {
                v31 = *v28++;
                *v29++ = v31;
                --v30;
              }

              while (v30);
            }

            ++v26;
            v25 += 4 * v8;
          }

          while (v26 != v24);
        }
      }
    }
  }

  else
  {
    if (v11 == 2)
    {
      v32 = *(a1 + 1);
      v189 = *a1;
      v190 = v32;
      v191 = *(a1 + 4);
      sub_2368065BC(&v189, *(v9 + 136), *(v9 + 144), *(v7 + 96), *(v7 + 104), a4);
LABEL_25:
      v6 = a1;
      v7 = v182;
      v4 = a4;
      goto LABEL_26;
    }

    if (v11 == 3)
    {
      v12 = *a1;
      v13 = sub_2366FD568(v12, v6[1], *(*(v6 + 1) + 8 * v6[1]), v8) + 4 * v12 * v8 + 8;
      if (v10 >= v13)
      {
        v15 = 0;
        v14 = a4;
        v13 = v10;
      }

      else
      {
        v14 = (*(v183 + 24))(v13);
        v15 = v14;
      }

      v33 = (4 * (*a1 * v8) + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = *(a1 + 1);
      v189 = *a1;
      v190 = v34;
      v191 = *(a1 + 4);
      sub_236793B94(&v189, v14, *(v182 + 96), *(v182 + 104), &v14[v33], v13 - v33);
      v6 = a1;
      v7 = v182;
      v4 = a4;
      if (v15)
      {
        (*(v183 + 32))(v15);
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v35 = *(a3 + 8);
  if (v35 && *(a3 + 4) != 1)
  {
    v36 = *v6;
    v37 = &v35[4 * v36 * v8];
    v38 = *(v7 + 96);
    if (v38)
    {
      if (v36 >= 1)
      {
        for (j = 0; j != v36; ++j)
        {
          if (v8)
          {
            v40 = &v35[4 * *(*(v183 + 152) + 4 * j) * v8];
            v41 = v8;
            v42 = v38;
            do
            {
              v43 = *v42++;
              *v40 = v43;
              v40 += 4;
              --v41;
            }

            while (v41);
          }

          v38 += v8;
        }
      }

      v44 = v6[1];
      if (v44 >= 1)
      {
        v45 = 0;
        for (k = 0; k != v44; ++k)
        {
          if (v8)
          {
            v47 = &v37[4 * *(*(v183 + 160) + 4 * k) * v8];
            v48 = (*(v7 + 104) + v45);
            v49 = v8;
            do
            {
              v50 = *v48++;
              *v47 = v50;
              v47 += 4;
              --v49;
            }

            while (v49);
          }

          v45 += 4 * v8;
        }
      }
    }

    else
    {
      if (v36 * v8 >= 1)
      {
        memset_pattern16(v35, &unk_23681FB80, 4 * (v36 * v8));
        v4 = a4;
        v6 = a1;
        v7 = v182;
      }

      if ((v6[1] * v8) >= 1)
      {
        memset_pattern16(v37, &unk_23681FB80, 4 * v6[1] * v8);
        v4 = a4;
        v6 = a1;
        v7 = v182;
      }
    }
  }

  v51 = v183;
  if (*(*(v183 + 120) + 8 * *(v183 + 60)) >= 1)
  {
    v52 = *(v183 + 64);
    v53 = &v4[8 * v52 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (&v4[v10] < v53 || &v4[v10] < ((v53 + 4 * v52 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    bzero((&v4[8 * v52 + 7] & 0xFFFFFFFFFFFFFFF8), 4 * v52);
    v54 = a1;
    v7 = v182;
    v55 = *(a1 + 28);
    LODWORD(v189) = v55;
    v56 = (v55 * v55);
    v57 = v183;
    v58 = a4;
    if (*(v183 + 60) >= 1)
    {
      v59 = 0;
      v60 = 8 * v56;
      v61 = 8 * v55;
      do
      {
        v62 = v59;
        v63 = *(v57 + 120);
        v64 = *(v63 + 8 * v59++);
        v65 = *(v63 + 8 * v59);
        if (v64 != v65)
        {
          if (v64 < v65)
          {
            v66 = *(v183 + 128);
            v67 = v56 * v64;
            do
            {
              v68 = *(v66 + 4 * v64);
              *(v53 + 4 * v68) = v59;
              *&v58[8 * v68] = v67;
              ++v64;
              v67 += v56;
            }

            while (v64 < *(v63 + 8 * v59));
          }

          v69 = *(*(v183 + 160) + 4 * v62);
          v70 = *(v54 + 1);
          v71 = (v70 + 8 * v69);
          v72 = *v71;
          if (*v71 < v71[1])
          {
            v73 = v60 * v72;
            do
            {
              v74 = *(*(v54 + 2) + 4 * v72);
              if ((v74 & 0x80000000) == 0 && v74 < *v54 && v62 < *(v53 + 4 * v74))
              {
                v75 = *(v7 + 96);
                v76 = (*(v7 + 40) + 8 * *&v58[8 * v74]);
                v77 = *(v54 + 4);
                if (v75)
                {
                  if (v55)
                  {
                    v78 = 0;
                    v79 = (v75 + 4 * *(*(v183 + 136) + 4 * v74));
                    v80 = *(v7 + 104) + 4 * v62;
                    v81 = (v77 + v73);
                    do
                    {
                      v82 = v79;
                      v83 = v81;
                      v84 = v76;
                      v85 = v55;
                      do
                      {
                        v86 = *v82++;
                        v87 = v86;
                        v88 = *v83++;
                        *v84++ = vmul_n_f32(vmul_n_f32(v88, v87), *(v80 + 4 * v78));
                        --v85;
                      }

                      while (v85);
                      ++v78;
                      v76 = (v76 + v61);
                      v81 = (v81 + v61);
                    }

                    while (v78 != v55);
                  }
                }

                else
                {
                  memcpy(v76, (v77 + 8 * v72 * v56), 8 * v56);
                  v58 = a4;
                  v54 = a1;
                  v7 = v182;
                  v70 = *(a1 + 1);
                }
              }

              ++v72;
              v73 += v60;
            }

            while (v72 < *(v70 + 8 * v69 + 8));
          }
        }

        v57 = v183;
      }

      while (v59 < *(v183 + 60));
    }

    LODWORD(v89) = *(v57 + 96);
    if (v55 == 1)
    {
      v51 = v183;
      if (v89 >= 1)
      {
        v90 = 0;
        v91 = *(v7 + 40);
        do
        {
          v92 = *(*(v183 + 120) + 8 * v90);
          v93 = sub_23681E680(1.0, 0.0, *(v91 + 8 * v92), *(v91 + 8 * v92 + 4));
          v7 = v182;
          v91 = *(v182 + 40);
          v94 = v91 + 8 * v92;
          *v94 = v93;
          *(v94 + 4) = v95;
          ++v90;
        }

        while (v90 < *(v183 + 96));
      }

      v96 = *(v183 + 100);
      if (v96 >= 1)
      {
        v97 = *(v183 + 60) - v96;
        v98 = *(v7 + 40);
        do
        {
          v99 = *(*(v183 + 120) + 8 * v97);
          v100 = sub_23681E680(1.0, 0.0, *(v98 + 8 * v99), *(v98 + 8 * v99 + 4));
          v7 = v182;
          v98 = *(v182 + 40);
          v101 = v98 + 8 * v99;
          *v101 = v100;
          *(v101 + 4) = v102;
          ++v97;
        }

        while (v97 < *(v183 + 60));
      }
    }

    else if (v89 < 1)
    {
LABEL_82:
      v51 = v183;
      v104 = *(v183 + 100);
      if (v104 >= 1)
      {
        v105 = *(v183 + 60) - v104;
        do
        {
          v205[0] = 0;
          cgetrf_NEWLAPACK();
          v7 = v182;
          v51 = v183;
          if (v205[0])
          {
            break;
          }

          ++v105;
          LODWORD(v89) = v89 + 1;
        }

        while (v105 < *(v183 + 60));
      }
    }

    else
    {
      v103 = 0;
      while (1)
      {
        v205[0] = 0;
        cgetrf_NEWLAPACK();
        v7 = v182;
        v51 = v183;
        if (v205[0])
        {
          break;
        }

        ++v103;
        v89 = *(v183 + 96);
        if (v103 >= v89)
        {
          goto LABEL_82;
        }
      }
    }

    v4 = a4;
    v6 = a1;
  }

  v106 = *(v6 + 28);
  v107 = *(v51 + 168);
  v108 = &v4[8 * v107];
  v109 = *(v51 + 52);
  if (v109 >= 2)
  {
    _X0 = 0;
    v111 = *(v51 + 56);
    v112 = 6 * v111;
    v113 = 4 * v111 + 8;
    if (v179 != 82)
    {
      v113 = 0;
    }

    v114 = v113 + 4 * v112 + 48;
    v205[0] = *(v51 + 52);
    atomic_store(0, &v205[1]);
    atomic_store(0, (v205 | 0xC));
    atomic_store(0, v206);
    v115 = v207;
    do
    {
      _X5 = v208;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v115;
      v115 = _X4;
    }

    while (!_ZF);
    v209 = v113 + 4 * v112 + 48;
    v210 = &v4[8 * v107];
    v122 = &v108[40 * *(v183 + 336) + ((v114 * v109 + 7) & 0xFFFFFFFFFFFFFFF8)];
    LOBYTE(v189) = v179;
    *(&v189 + 1) = v6;
    *&v190 = v183;
    DWORD2(v190) = v106;
    v191 = v7;
    v192 = v4;
    v193 = *(v7 + 120);
    v194 = &v108[(v114 * v109 + 7) & 0xFFFFFFFFFFFFFFF8];
    v195 = sub_2367921D4(256, v122 + 16 * v109);
    v196 = v123;
    v197 = 0;
    v198 = 0;
    v199 = 0;
    v200 = v122;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v211 = &v189;
    if (*(v183 + 52))
    {
      v124 = 0;
      v125 = 0;
      do
      {
        v126 = *(v183 + 56);
        madvise(v108, 8 * v126, 3);
        madvise(&v108[8 * v126], 0x64uLL, 3);
        madvise(&v108[12 * v126], 0x64uLL, 3);
        madvise(&v108[16 * v126], 0x64uLL, 3);
        madvise(&v108[20 * v126], 0x64uLL, 3);
        *(v200 + v124 + 8) = *(v183 + 392);
        v127 = (*(v183 + 24))();
        v128 = (v200 + v124);
        *v128 = v127;
        madvise(v127, v128[1], 3);
        ++v125;
        v124 += 16;
        v108 += v114;
      }

      while (v125 < *(v183 + 52));
    }

    if (*(v182 + 128) >= 0x8000000uLL)
    {
      v129 = 0x8000000;
    }

    else
    {
      v129 = *(v182 + 128);
    }

    madvise(*(v182 + 120), v129, 3);
    if (*(v183 + 336) >= 1)
    {
      _X20 = 0;
      v131 = 0;
      v132 = 0;
      do
      {
        v133 = v132;
        if (*(*(v183 + 176) + 4 * *(*(v183 + 344) + 4 * v132++)) >= *(*(v183 + 112) + 4 * (v131 + 1)))
        {
          ++v131;
        }

        v135 = *(*(v183 + 368) + 8 * v132) - *(*(v183 + 368) + 8 * v133);
        v136 = &v194[40 * v133];
        atomic_store(v135, v136);
        *(v136 + 2) = v133;
        *(v136 + 3) = v131;
        *(v136 + 2) = sub_2367EDF30;
        if (!v135)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X24] }

          *(v136 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v136 + 4) = 0;
          v140 = _X0 & 1;
          _X2 = v140 | v136;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X24] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X20, X21, [X10] }

            *(v136 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v136 + 4) = 0;
            v140 = _X0 & 1;
            _X2 = v140 | v136;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v140)
          {
            __ulock_wake();
          }
        }
      }

      while (v132 < *(v183 + 336));
    }

    _X0 = 0;
    _X1 = 0;
    v185 = xmmword_28499C308;
    v186 = off_28499C318;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v187 = _X0 & 0xFFFFFFFFFFFFFFFELL;
    v188 = 0;
    _X2 = &v185 | _X0 & 1;
    _X5 = 0;
    __asm { CASPL           X4, X5, X2, X3, [X8] }

    if (_X4 == _X0)
    {
      if ((_X0 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      _X2 = 0;
      do
      {
        _X5 = 0;
        __asm { CASP            X4, X5, X2, X3, [X8] }

        v187 = _X4 & 0xFFFFFFFFFFFFFFFELL;
        v188 = 0;
        _X0 = &v185 | _X4 & 1;
        _X7 = 0;
        __asm { CASPL           X6, X7, X0, X1, [X8] }
      }

      while (_X6 != _X4);
      if ((_X4 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    __ulock_wake();
LABEL_124:
    v167 = sub_2366FCD2C(v205, 1);
    if (v167)
    {
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      goto LABEL_135;
    }

    if (*(v183 + 52))
    {
      v176 = 0;
      v177 = 0;
      do
      {
        (*(v183 + 32))(*(v200 + v176));
        ++v177;
        v176 += 16;
      }

      while (v177 < *(v183 + 52));
    }

    if (v197)
    {
      v198 = v197;
      operator delete(v197);
    }

LABEL_134:
    v167 = 0;
    goto LABEL_135;
  }

  v153 = *(a2 + 40);
  v154 = *(v7 + 120);
  v155 = *(v7 + 128);
  *v205 = v154;
  v184 = 0;
  LODWORD(v185) = 0;
  v156 = (*(v51 + 24))(*(v51 + 392));
  v158 = *(v183 + 392);
  *&v189 = v156;
  *(&v189 + 1) = v158;
  if (*(v183 + 168) < 1)
  {
    v168 = 0;
    v169 = 0;
    v166 = v182;
LABEL_128:
    atomic_store(v169, (v166 + 136));
    atomic_store(v168, (v166 + 140));
    (*(v183 + 32))(v156);
    goto LABEL_134;
  }

  v159 = 0;
  v160 = 0;
  v161 = 2 * v153;
  v162 = v107;
  v163 = v154 + v155;
  v164 = v161 - 8 * v107;
  v166 = v182;
  v165 = v183;
  while (1)
  {
    if (*(*(v165 + 176) + 4 * v159) >= *(*(v165 + 112) + 4 * (v160 + 1)))
    {
      ++v160;
    }

    v167 = sub_2367EE3C0(v159, v160, a1, v179, v165, v106, v166, v157, a4, v162, v205, v163, &v185, &v184, v108, v164, &v189, 0, 0);
    if (v167)
    {
      break;
    }

    ++v159;
    v166 = v182;
    v165 = v183;
    if (v159 >= *(v183 + 168))
    {
      v168 = v184;
      v169 = v185;
      v156 = v189;
      goto LABEL_128;
    }
  }

LABEL_135:
  *a2 = v167;
}

void sub_2367EAB94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _SparseFactorLU_Complex_Float@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v549 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a2 + 1) + 8 * v7);
  if (a1 == 80)
  {
    v9 = 83;
  }

  else
  {
    v9 = a1;
  }

  if (v6 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *a5 = -3;
  v11 = a2[6] & 1;
  *(a5 + 4) = v11;
  *(a5 + 8) = -3;
  *(a5 + 12) = v6;
  *(a5 + 16) = v7;
  *(a5 + 20) = v11;
  v527 = a2;
  *(a5 + 24) = *(a2 + 28);
  v526 = v9;
  *(a5 + 25) = v9;
  *(a5 + 80) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 57) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v522 = (a5 + 80);
  v541 = 0;
  if (sub_236720B94(v10, v8, &v541))
  {
    v12 = *(a3 + 40);
    if (!v12)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        sub_23672B05C(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v12(__str);
LABEL_119:
    v165 = -4;
LABEL_120:
    *a5 = v165;
    return result;
  }

  v14 = v541;
  v15 = (*(a3 + 24))(v541);
  if (!v15)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v14);
    return (*(a3 + 40))(__str);
  }

  v16 = v15;
  __src = v15;
  if (*(a4 + 4) == 4)
  {
    if (*(v527 + 28) != 1)
    {
      v55 = *(a3 + 40);
      if (!v55)
      {
        v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          sub_23672ACD0(v65, v66, v67, v68, v69, v70, v71, v72);
        }

        _SparseTrap();
      }

      memset(&__str[98], 0, 158);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is only supported for blockSize=1\n");
      v55(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 16))
    {
      v17 = *(a3 + 40);
      if (!v17)
      {
        v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v82)
        {
          sub_23672AD0C(v82, v83, v84, v85, v86, v87, v88, v89);
        }

        _SparseTrap();
      }

      memset(&__str[123], 0, 133);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.ignoreRowsAndColumns!=NULL\n");
      v17(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 4) == 1)
    {
      v64 = *(a3 + 40);
      if (!v64)
      {
        v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v114)
        {
          sub_23672B020(v114, v115, v116, v117, v118, v119, v120, v121);
        }

        _SparseTrap();
      }

      memset(&__str[125], 0, 131);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.orderMethod==SparseOrderUser\n");
      v64(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    v90 = v527;
    v91 = (*(a3 + 24))(4 * *v527);
    v92 = (*(a3 + 24))(4 * (v90[1] + *v90));
    v93 = *v527;
    v94 = &v92[v93];
    v95 = sub_2366FD568(v93, v90[1], *(*(v90 + 1) + 8 * v90[1]), 1);
    v96 = v95;
    if (v95 >= v14)
    {
      v16 = (*(a3 + 24))(v95);
    }

    v97 = *(v527 + 1);
    *__str = *v527;
    *&__str[16] = v97;
    *&__str[32] = *(v527 + 4);
    v537 = v91;
    v519 = v94;
    v520 = v92;
    v98 = sub_236793B94(__str, v91, v92, v94, v16, v96);
    if (v16 != __src)
    {
      (*(a3 + 32))(v16);
    }

    if (v98 != v527[1])
    {
      v113 = *(a3 + 40);
      if (!v113)
      {
        v156 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v156)
        {
          sub_23672AD48(v156, v157, v158, v159, v160, v161, v162, v163);
        }

        _SparseTrap();
      }

      memset(&__str[39], 0, 217);
      strcpy(__str, "Matrix is structurally rank deficient\n");
      v113(__str);
      v164 = *(a3 + 32);
      v532 = (a3 + 32);
      v164(v91);
      (*v532)(v92);
      result = (*v532)(__src);
      v165 = -2;
      goto LABEL_120;
    }
  }

  else
  {
    v519 = 0;
    v520 = 0;
    v537 = 0;
  }

  v26 = *(v527 + 1);
  *__str = *v527;
  *&__str[16] = v26;
  v27 = _SparseFromStructureComplex(__str, v540);
  *a5 = -3;
  if (*v540 >= *&v540[4])
  {
    v28 = *&v540[4];
  }

  else
  {
    v28 = *v540;
  }

  if (*v540 <= *&v540[4])
  {
    v29 = *&v540[4];
  }

  else
  {
    v29 = *v540;
  }

  v30 = v540[28];
  v31 = v28 + 1;
  v32 = 4 * v28;
  v33 = v32 + 8;
  if (v526 != 83)
  {
    v33 = 0;
  }

  v34 = v540[28] * (*&v540[4] + *v540) + 8;
  if (!*(a3 + 16))
  {
    v34 = 0;
  }

  v35 = 8 * (*&v540[4] + *v540) + 24 * v31 + v33 + v34 + 464;
  result = (*(a3 + 24))(v35, v27);
  v36 = result;
  if (!result)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v35);
    (*(a3 + 40))(__str);
    goto LABEL_267;
  }

  v37 = result;
  v38 = result + v35;
  v39 = (result + 407) & 0xFFFFFFFFFFFFFFF8;
  v40 = a3;
  if (v38 < v39)
  {
    goto LABEL_552;
  }

  v41 = *(a3 + 16);
  v42 = *(a3 + 32);
  *__str = *a3;
  *&__str[16] = v41;
  *&__str[32] = v42;
  result = 1;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    result = sub_2366FCCD0(0x10u);
    v40 = a3;
    v37 = v36;
  }

  *v37 = *__str;
  *(v37 + 16) = *&__str[16];
  *(v37 + 32) = *&__str[32];
  *(v37 + 48) = 1;
  *(v37 + 52) = result;
  *(v37 + 56) = v28 * v30;
  *(v37 + 60) = v28;
  *(v37 + 64) = v29;
  *(v37 + 84) = 0u;
  *(v37 + 100) = 0u;
  *(v37 + 116) = 0u;
  *(v37 + 132) = 0u;
  *(v37 + 148) = 0u;
  *(v37 + 164) = 0u;
  *(v37 + 180) = 0u;
  *(v37 + 196) = 0u;
  *(v37 + 212) = 0u;
  *(v37 + 228) = 0u;
  *(v37 + 244) = 0u;
  *(v37 + 384) = 0u;
  *(v37 + 68) = 0u;
  *(v37 + 260) = 0u;
  *(v37 + 276) = 0u;
  *(v37 + 292) = 0u;
  *(v37 + 308) = 0u;
  *(v37 + 324) = 0u;
  *(v37 + 340) = 0u;
  *(v37 + 356) = 0u;
  *(v37 + 372) = 0u;
  v43 = *v540;
  v44 = (v39 + 4 * *v540 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v44)
  {
    goto LABEL_552;
  }

  *(v37 + 136) = v39;
  v45 = *&v540[4];
  v46 = (v44 + 4 * *&v540[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v46)
  {
    goto LABEL_552;
  }

  *(v37 + 144) = v44;
  v47 = (v46 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v47)
  {
    goto LABEL_552;
  }

  *(v37 + 152) = v46;
  v48 = (v47 + 4 * v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v48)
  {
    goto LABEL_552;
  }

  *(v37 + 160) = v47;
  v49 = v48 + 8 * v31;
  if (v49 > v38)
  {
    goto LABEL_552;
  }

  v50 = 8 * v31;
  *(v37 + 120) = v48;
  v51 = v49 + v50;
  if (v49 + v50 > v38)
  {
    goto LABEL_552;
  }

  *(v37 + 184) = v49;
  v52 = (v51 + v50) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v52)
  {
    goto LABEL_552;
  }

  *(v37 + 200) = v51;
  if (v526 == 83)
  {
    if (v38 < ((v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_552;
    }

    *(v37 + 304) = v52;
    v52 = (v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (!*(v40 + 16))
  {
    goto LABEL_49;
  }

  v53 = v540[28];
  if (v38 < ((v52 + (v45 + v43) * v540[28] + 7) & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_552:
    __break(1u);
    return result;
  }

  *(v37 + 72) = v52;
  *(v37 + 80) = v52 + v43 * v53;
LABEL_49:
  v544 = 0;
  if (sub_236720B94(v28, *(*&v540[8] + 8 * v28), &v544))
  {
    v54 = *(a3 + 40);
    if (!v54)
    {
      v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v73)
      {
        sub_23672AF6C(v73, v74, v75, v76, v77, v78, v79, v80);
      }

      _SparseTrap();
    }

    memset(&__str[56], 0, 200);
    strcpy(__str, "Symbolic workspace requirement calculation overflowed.\n");
    v54(__str);
    (*(a3 + 32))(v36);
    goto LABEL_112;
  }

  v56 = v544;
  v57 = *(a3 + 16);
  if (v57)
  {
    bzero(*(v36 + 72), (*&v540[4] + *v540) * v540[28]);
    v58 = *(a3 + 16);
    v59 = *v58;
    if ((*v58 & 0x80000000) != 0)
    {
      LODWORD(v57) = 0;
      v60 = 0;
    }

    else
    {
      v60 = 0;
      LODWORD(v57) = 0;
      v61 = *v540 * v540[28];
      v62 = v58 + 1;
      do
      {
        if (v59 >= v61)
        {
          *(*(v36 + 80) + (v59 - v61)) = 1;
          LODWORD(v57) = v57 + 1;
        }

        else
        {
          *(*(v36 + 72) + v59) = 1;
          ++v60;
        }

        v63 = *v62++;
        v59 = v63;
      }

      while ((v63 & 0x80000000) == 0);
    }

    if (v540[24])
    {
      *(v36 + 72) = vextq_s8(*(v36 + 72), *(v36 + 72), 8uLL);
      v81 = v60;
    }

    else
    {
      v81 = v57;
      LODWORD(v57) = v60;
    }
  }

  else
  {
    v81 = 0;
  }

  v99 = v540[28];
  v100 = *v540;
  v101 = *&v540[4];
  v102 = *v540 * v540[28] - v57;
  if (v102 != *&v540[4] * v540[28] - v81)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672AD84();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Sparse LU factorization only supports square matrices, but supplied matrix without any ignored rows and columns has shape %dx%d.\n", v102, *&v540[4] * v540[28] - v81);
    (*(a3 + 40))(__str);
    (*(a3 + 32))(v36);
LABEL_112:
    v111 = 0;
    v112 = -4;
LABEL_113:
    *a5 = v112;
    goto LABEL_268;
  }

  if (*(a3 + 4) != 1)
  {
    v543 = 0uLL;
    *&v542 = __PAIR64__(*v540, *&v540[4]);
    *(&v542 + 1) = __src;
    v108 = (4 * *(*&v540[8] + 8 * *&v540[4]) + 7) & 0xFFFFFFFFFFFFFFF8;
    v534 = v56;
    *&v543 = &__src[2 * *v540 + 2];
    v109 = (v543 + v108);
    if (sub_236750FA0(v540, &v542, *(v36 + 72), *(v36 + 80), (v36 + 88), (v36 + 92), (v36 + 96), (v36 + 100), *(v36 + 152), *(v36 + 160), v543 + v108))
    {
      v110 = *(a3 + 40);
      if (!v110)
      {
        v147 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v147)
        {
          sub_23672ADFC(v147, v148, v149, v150, v151, v152, v153, v154);
        }

        _SparseTrap();
      }

      memset(&__str[33], 0, 223);
      strcpy(__str, "Matrix is structurally singular.");
      v110(__str);
      (*(a3 + 32))(v36);
LABEL_155:
      v155 = -2;
LABEL_156:
      *a5 = v155;
LABEL_509:
      v293 = a3;
      v111 = 0;
      goto LABEL_269;
    }

    v137 = *v540;
    v138 = vsub_s32(*v540, *(v36 + 88));
    v139 = *(v36 + 60) - *(v36 + 88);
    *(v36 + 60) = v139;
    if ((vceq_s32(v138, vdup_lane_s32(v138, 1)).u8[0] & 1) == 0)
    {
      v179 = *(a3 + 40);
      if (!v179)
      {
        v462 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v462)
        {
          sub_23672AE38(v462, v463, v464, v465, v466, v467, v468, v469);
        }

        _SparseTrap();
      }

      memset(&__str[74], 0, 182);
      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
      v179(__str);
      *a5 = -4;
      (*(a3 + 32))(v36);
      goto LABEL_509;
    }

    v140 = v36;
    v141 = *(v36 + 96);
    v142 = *(v36 + 100) + v141;
    if (v537)
    {
      v143 = *(v36 + 152);
      v144 = *(v36 + 160);
      v145 = v109;
      if (v137 >= 1)
      {
        v146 = 0;
        do
        {
          *(v144 + v146) = *&v537[4 * *(v143 + v146)];
          v146 += 4;
        }

        while (4 * v137 != v146);
      }
    }

    else
    {
      *__str = *v540;
      *&__str[16] = *&v540[16];
      *v547 = v542;
      *&v547[16] = v543;
      v180 = v139;
      if (sub_236710A64(__str, v547, v139 - v142, *(v36 + 152) + 4 * v141, v139 - v142, (*(v36 + 160) + 4 * v141), v109) != v139 - v142)
      {
        v470 = *(a3 + 40);
        if (!v470)
        {
          v507 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v507)
          {
            sub_23672AE74(v507, v508, v509, v510, v511, v512, v513, v514);
          }

          _SparseTrap();
        }

        memset(&__str[74], 0, 182);
        strcpy(__str, "Unable to construct maximal transversal, matrix is structurally singular.");
        v470(__str);
        goto LABEL_155;
      }

      v140 = v36;
      v143 = *(v36 + 152);
      v144 = *(v36 + 160);
      v139 = v180;
      v145 = v109;
    }

    v529 = v139;
    *__str = *v540;
    *&__str[16] = *&v540[16];
    v181 = sub_2367D4EEC(__str, v139 - v142, (v143 + 4 * *(v140 + 96)), (v144 + 4 * *(v140 + 96)), v145, v145 + ((4 * (v139 - v142) + 11) & 0xFFFFFFFFFFFFFFF8));
    *(v36 + 104) = v181;
    v182 = (*(a3 + 24))(4 * v181 + 4);
    v183 = v36;
    *(v36 + 112) = v182;
    if ((*(v36 + 104) & 0x80000000) != 0)
    {
      goto LABEL_185;
    }

    v184 = v109;
    v185 = 0;
    do
    {
      *(v182 + 4 * v185) = *(v36 + 96) + *&v109[4 * v185];
      v186 = *(v36 + 104);
      v319 = v185++ < v186;
    }

    while (v319);
    if (v186 < 1)
    {
LABEL_185:
      v175 = v183;
      if (*v540 >= 1)
      {
        v212 = 0;
        v213 = *(v183 + 136);
        v214 = *(v183 + 152);
        do
        {
          *(v213 + 4 * *(v214 + 4 * v212)) = v212;
          ++v212;
        }

        while (v212 < *v540);
      }

      v176 = __src;
      v178 = v534;
      if (*&v540[4] >= 1)
      {
        v215 = 0;
        v216 = *(v183 + 144);
        v217 = *(v183 + 160);
        do
        {
          *(v216 + 4 * *(v217 + 4 * v215)) = v215;
          ++v215;
        }

        while (v215 < *&v540[4]);
      }

      v218 = *(a3 + 8);
      if (v218)
      {
        memcpy(v218, *(v183 + 136), 4 * *v540);
        memcpy((*(a3 + 8) + 4 * *v540), *(v175 + 144), 4 * *&v540[4]);
      }

      v177 = v529;
      goto LABEL_194;
    }

    v187 = 0;
    v188 = 4 * v29;
    while (1)
    {
      v189 = *(v183 + 112);
      v190 = *(v189 + 4 * v187++);
      v191 = *(v183 + 152);
      v192 = *(v183 + 160);
      __b = *(v183 + 136);
      v194 = *(v183 + 144);
      v195 = (*(v189 + 4 * v187) - v190);
      *v547 = *v540;
      *&v547[8] = *&v540[8];
      *&v547[24] = *&v540[24];
      v196 = v191 + 4 * v190;
      v545 = v542;
      v546 = v543;
      v197 = v192 + 4 * v190;
      sub_23670BC48(v547, &v545, v195, v196, v197, v184 + ((v188 + 7) & 0xFFFFFFFFFFFFFFF8), v184, __str, v188, __b, 4 * *v540, v194);
      *v547 = *__str;
      *&v547[16] = *&__str[16];
      if (sub_2367E3E64(v526, v547, 0, __b, v194, a3))
      {
        break;
      }

      if (v195 <= 0)
      {
        v211 = v196;
        v205 = 4 * v195;
        memcpy(v211, v194, v205);
        v206 = v197;
      }

      else
      {
        v198 = v196;
        v199 = __b;
        v200 = v195;
        do
        {
          v202 = *v198++;
          v201 = v202;
          v203 = *v199++;
          v194[v203] = v201;
          --v200;
        }

        while (v200);
        v204 = v196;
        v205 = 4 * v195;
        memcpy(v204, v194, 4 * v195);
        v206 = v197;
        v207 = v197;
        do
        {
          v209 = *v207++;
          v208 = v209;
          v210 = *__b++;
          v194[v210] = v208;
          --v195;
        }

        while (v195);
      }

      memcpy(v206, v194, v205);
      v183 = v36;
      v184 = v109;
      if (v187 >= *(v36 + 104))
      {
        goto LABEL_185;
      }
    }

    (*(a3 + 32))(v36);
    v155 = -3;
    goto LABEL_156;
  }

  v103 = *(a3 + 8);
  if (v103)
  {
    if (*&v540[4] >= 1)
    {
      v104 = 0;
      v105 = *(v36 + 136);
      do
      {
        *(v105 + 4 * v104) = *(v103 + 4 * v104);
        ++v104;
      }

      while (v104 < *&v540[4]);
      v100 = *v540;
    }

    if (v100 < 1)
    {
      goto LABEL_132;
    }

    v106 = 0;
    v107 = *(v36 + 144);
    do
    {
      *(v107 + 4 * v106) = *(v103 + 4 * (v106 + *&v540[4]));
      ++v106;
    }

    while (v106 < *v540);
    v100 = *v540;
  }

  else
  {
    if (*v540 >= 1)
    {
      v122 = 0;
      v123 = *(v36 + 136);
      do
      {
        *(v123 + 4 * v122) = v122;
        ++v122;
      }

      while (v122 < *v540);
      v101 = *&v540[4];
      v100 = *v540;
    }

    if (v101 >= 1)
    {
      v124 = 0;
      v125 = *(v36 + 144);
      do
      {
        *(v125 + 4 * v124) = v124;
        ++v124;
      }

      while (v124 < *&v540[4]);
      v100 = *v540;
    }
  }

  if (v100 >= 1)
  {
    v126 = 0;
    v127 = *(v36 + 152);
    v128 = *(v36 + 136);
    do
    {
      *(v127 + 4 * *(v128 + 4 * v126)) = v126;
      ++v126;
    }

    while (v126 < *v540);
  }

LABEL_132:
  v129 = *&v540[4];
  if (*&v540[4] >= 1)
  {
    v130 = 0;
    v131 = *(v36 + 160);
    v132 = *(v36 + 144);
    do
    {
      *(v131 + 4 * *(v132 + 4 * v130)) = v130;
      ++v130;
      v129 = *&v540[4];
    }

    while (v130 < *&v540[4]);
  }

  if (v57 > 0)
  {
    v133 = sub_236721ACC(*v540, v99, *(v36 + 136), *(v36 + 152), *(v36 + 72), __src);
    *(v36 + 88) = v133;
    v28 = (*(v36 + 60) - v133);
    *(v36 + 60) = v28;
    v129 = *&v540[4];
  }

  if (v81 <= 0)
  {
    v134 = *(v36 + 92);
  }

  else
  {
    v134 = sub_236721ACC(v129, v540[28], *(v36 + 144), *(v36 + 160), *(v36 + 80), __src);
    *(v36 + 92) = v134;
    v129 = *&v540[4];
  }

  if (*v540 - *(v36 + 88) != v129 - v134)
  {
    v136 = *(a3 + 40);
    if (!v136)
    {
      v166 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v166)
      {
        sub_23672AE38(v166, v167, v168, v169, v170, v171, v172, v173);
      }

      _SparseTrap();
    }

    memset(&__str[74], 0, 182);
    strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
    v136(__str);
    *a5 = -4;
    (*(a3 + 32))(v36);
    goto LABEL_267;
  }

  v135 = sub_236798D30(v28, v540, *(v36 + 136), *(v36 + 160), (v36 + 96), (v36 + 100), (v36 + 104), __src);
  if (v135 >= 1)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672AEB0();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "User-supplied ordering does not place an entry on diagonal %d.", v135 - 1);
    (*(a3 + 40))(__str);
    (*(a3 + 32))(v36);
    goto LABEL_112;
  }

  v174 = (*(a3 + 24))(4 * *(v36 + 104) + 4);
  v175 = v36;
  *(v36 + 112) = v174;
  v176 = __src;
  memcpy(v174, __src, 4 * *(v36 + 104) + 4);
  v177 = v28;
  v178 = v56;
LABEL_194:
  v219 = (v177 - (*(v175 + 96) + *(v175 + 100)));
  *__str = v219;
  *&__str[4] = v219;
  *&__str[16] = 0;
  *&__str[24] = 0;
  *&__str[8] = v176;
  *v547 = v219;
  *&v547[4] = v219;
  v220 = &v176[2 * v219 + 8 + 2 * v219];
  *&v547[16] = 0;
  *&v547[24] = 0;
  *&v547[8] = &v176[2 * v219 + 4];
  v221 = 4 * *(*&v540[8] + 8 * v177);
  v222 = (v221 + 7) & 0xFFFFFFFFFFFFFFF8;
  v535 = v178;
  v223 = &v220[v222];
  v545 = *v540;
  v546 = *&v540[16];
  sub_236789F74(&v545, *(v175 + 104), *(v175 + 112), *(v175 + 136), *(v175 + 144), __str, v547, v220, v221, &v220[v222]);
  v224 = 8 * v219;
  *(v36 + 216) = (*(a3 + 24))(v224 + 8);
  *(v36 + 240) = (*(a3 + 24))(v224 + 8);
  sub_23676C728(v526, v219, *&__str[8], *&__str[16], *&v547[8], *&v547[16], (v36 + 168), (v36 + 176), *(v36 + 184), (v36 + 192), *(v36 + 200), (v36 + 208), *(v36 + 216), (v36 + 224), (v36 + 232), v540[28], a3, v223);
  v225 = sub_23676DFE0(*(v36 + 60), *(v36 + 168), *(*(v36 + 216) + 8 * *(v36 + 168)));
  if (v225 <= v535)
  {
    sub_23676E074(v36, v540[28], __src);
  }

  else
  {
    v226 = (*(a3 + 24))(v225);
    sub_23676E074(v36, v540[28], v226);
    if (v226 != __src)
    {
      (*(a3 + 32))(v226);
    }
  }

  v227 = sub_2366F8F4C(v219, *(v36 + 168));
  v228 = v227;
  v229 = __src;
  if (v227 > v535)
  {
    v229 = (*(a3 + 24))(v227);
  }

  sub_2366F8F68(v526, v219, *(v36 + 168), *(v36 + 176), *(v36 + 184), *(v36 + 192), *(v36 + 200), *(v36 + 208), *(v36 + 216), *(v36 + 224), *(v36 + 232), *(v36 + 240), (v36 + 248), (v36 + 256), *(v36 + 304), a3, v229, v228);
  if (v229 != __src)
  {
    (*(a3 + 32))(v229);
  }

  v230 = sub_2366FAB28(*(v36 + 60), *(v36 + 168));
  v231 = __src;
  if (v230 > v535)
  {
    v231 = (*(a3 + 24))(v230, __src);
  }

  sub_2366FAB3C(v36, v231);
  if ((*(v36 + 168) & 0x80000000) == 0)
  {
    v232 = *(v36 + 176);
    v233 = -1;
    do
    {
      *v232++ += *(v36 + 96);
      v234 = *(v36 + 168);
      ++v233;
    }

    while (v233 < v234);
    if (v234 >= 1)
    {
      v235 = 0;
      v236 = *(v36 + 184);
      v237 = *(v36 + 200);
      v238 = *v236;
      do
      {
        v239 = v235++;
        v240 = v236[v235];
        v241 = v240 - v238;
        if (v240 > v238)
        {
          v242 = (*(v36 + 192) + 4 * v238);
          do
          {
            *v242++ += *(v36 + 96);
            --v241;
          }

          while (v241);
        }

        v243 = *(v237 + 8 * v239);
        v244 = *(v237 + 8 * v235);
        v319 = v244 <= v243;
        v245 = v244 - v243;
        if (!v319)
        {
          v246 = (*(v36 + 208) + 4 * v243);
          do
          {
            *v246++ += *(v36 + 96);
            --v245;
          }

          while (v245);
        }

        v238 = v240;
      }

      while (v235 < *(v36 + 168));
    }
  }

  if (v526 == 83)
  {
    LODWORD(v247) = *(v36 + 96);
    v248 = *(v36 + 60) - *(v36 + 100);
    if (v248 > v247)
    {
      v249 = *(v36 + 304) - 4;
      do
      {
        *(v249 + 4 * v248) = *(v249 + 4 * v248 - 4 * v247);
        v247 = *(v36 + 96);
        --v248;
      }

      while (v248 > v247);
    }
  }

  v250 = (*(a3 + 24))(8 * *v540 + 16);
  *(v36 + 312) = v250;
  v251 = *v540;
  v252 = *&v540[4];
  v253 = *&v540[8];
  v254 = *&v540[16];
  v255 = v250 + 2;
  bzero(v250 + 2, 8 * *v540);
  if (v252 >= 1)
  {
    v256 = 0;
    v257 = *(v36 + 144);
    v258 = *(v36 + 96);
    do
    {
      v259 = *(v257 + 4 * v256);
      if (v259 >= v258 && v259 < *(v36 + 60) - *(v36 + 100))
      {
        v260 = (v253 + 8 * v256);
        v261 = *v260;
        v262 = v260[1];
        while (v261 < v262)
        {
          v263 = *(v254 + 4 * v261);
          if ((v263 & 0x80000000) == 0 && v263 < v251)
          {
            v264 = *(*(v36 + 136) + 4 * v263);
            if (v264 <= v259)
            {
              ++v255[v264];
              v262 = v260[1];
            }
          }

          ++v261;
        }
      }

      ++v256;
    }

    while (v256 != v252);
  }

  v250[1] = 0;
  v265 = v250 + 1;
  if (v251 >= 1)
  {
    v266 = 0;
    v267 = v251;
    do
    {
      v266 += *v255;
      *v255++ = v266;
      --v267;
    }

    while (v267);
  }

  v268 = v265[v251];
  v269 = (*(a3 + 24))(12 * v268 + 8);
  v270 = (v269 + 4 * v268 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v36 + 320) = v269;
  *(v36 + 328) = v270;
  *v250 = 0;
  if (v252 > 0)
  {
    v271 = 0;
    v272 = *(v36 + 144);
    do
    {
      v273 = *(v272 + 4 * v271);
      if (v273 >= *(v36 + 96) && v273 < *(v36 + 60) - *(v36 + 100))
      {
        v274 = (v253 + 8 * v271);
        v275 = *v274;
        v276 = v274[1];
        while (v275 < v276)
        {
          v277 = *(v254 + 4 * v275);
          if ((v277 & 0x80000000) == 0 && v277 < v251)
          {
            v278 = *(*(v36 + 136) + 4 * v277);
            if (v278 <= v273)
            {
              v279 = v265[v278];
              *(v269 + 4 * v279) = v273;
              *(v270 + 8 * v279) = v275;
              ++v265[v278];
              v276 = v274[1];
            }
          }

          ++v275;
        }
      }

      ++v271;
    }

    while (v271 != v252);
  }

  v280 = *(v36 + 168);
  if (v280 < 1)
  {
    v282 = 0;
  }

  else
  {
    v281 = 0;
    v282 = 0;
    v283 = *(v36 + 176);
    v284 = *v283;
    do
    {
      v285 = v283[++v281];
      if (v284 < v285)
      {
        v286 = *(v36 + 312);
        v287 = v284;
        v288 = *(v286 + 8 * v284);
        do
        {
          *(v286 + 8 * v287++) = v282;
          v289 = *(v286 + 8 * v287);
          if (v288 < v289)
          {
            do
            {
              v290 = *(v269 + 4 * v288);
              if (v290 >= v283[v281])
              {
                *(v269 + 4 * v282) = v290;
                *(v270 + 8 * v282++) = *(v270 + 8 * v288);
                v289 = *(v286 + 8 * v287);
              }

              ++v288;
            }

            while (v288 < v289);
            v285 = v283[v281];
          }

          v288 = v289;
        }

        while (v287 < v285);
        v280 = *(v36 + 168);
      }

      v284 = v285;
    }

    while (v281 < v280);
  }

  *(*(v36 + 312) + 8 * (*(v36 + 60) - *(v36 + 100))) = v282;
  v291 = sub_2366FB334(v280);
  if (v535 >= v291)
  {
    sub_2366FB348(v36, __src);
  }

  else
  {
    v292 = (*(a3 + 24))(v291);
    sub_2366FB348(v36, v292);
    if (v292 != __src)
    {
      (*(a3 + 32))(v292);
    }
  }

  *__str = *v540;
  *&__str[16] = *&v540[16];
  if (sub_2368124D8(__str, *(v36 + 88), *(v36 + 92), *(v36 + 96), *(v36 + 100), *(v36 + 104), *(v36 + 112), *(v36 + 136), *(v36 + 160), *(v36 + 120), (v36 + 128), a3))
  {
    (*(a3 + 32))(*(v36 + 112));
    (*(a3 + 32))(v36);
LABEL_267:
    v111 = 0;
LABEL_268:
    v293 = a3;
LABEL_269:
    v294 = v537;
    goto LABEL_270;
  }

  v427 = 0;
  v428 = 0;
  v429 = 0;
  v111 = v36;
  *(v36 + 288) = 0;
  *(v36 + 296) = 0;
  v430 = *(v36 + 168) & ~(*(v36 + 168) >> 31);
  v431 = v540[28];
  v293 = a3;
  v294 = v537;
  while (v430 != v429)
  {
    v432 = (*(*(v36 + 176) + 4 * v429 + 4) - *(*(v36 + 176) + 4 * v429)) * v431;
    v433 = *(*(v36 + 184) + 8 * v429);
    v434 = *(*(v36 + 184) + 8 * v429 + 8);
    v435 = __OFSUB__(v434, v433);
    v436 = v434 - v433;
    if (v436 >= 0)
    {
      v437 = v436;
    }

    else
    {
      v437 = -v436;
    }

    v438 = (v437 * v431) >> 64;
    v439 = v437 * v431;
    if (v436 < 0 != v435)
    {
      v440 = -v439;
    }

    else
    {
      v440 = v437 * v431;
    }

    v441 = v438 != 0;
    v435 = __OFADD__(v432, v440);
    v442 = v432 + v440;
    v443 = v435;
    v445 = *(*(v36 + 200) + 8 * v429);
    v444 = *(*(v36 + 200) + 8 * v429 + 8);
    v446 = __OFSUB__(v444, v445);
    v447 = v444 - v445;
    if (v447 >= 0)
    {
      v448 = v447;
    }

    else
    {
      v448 = -v447;
    }

    v449 = (v448 * v431) >> 64;
    v450 = v448 * v431;
    if (v447 < 0 != v446)
    {
      v451 = -v450;
    }

    else
    {
      v451 = v450;
    }

    v452 = v449 != 0;
    v453 = v432 + v451;
    v454 = __OFADD__(v432, v451);
    v455 = (v442 * v432) >> 64 != (v442 * v432) >> 63;
    v435 = __OFADD__(v428, v442 * v432);
    v428 += v442 * v432;
    v456 = v435;
    v457 = v453 - v432;
    v458 = (v453 - v432) * v432;
    v459 = (v457 * v432) >> 64 != v458 >> 63;
    v435 = __OFADD__(v427, v458);
    v427 += v458;
    v460 = v435;
    *(v36 + 288) = v428;
    *(v36 + 296) = v427;
    if (!v441 && v439 <= (v436 >> 63) + 0x7FFFFFFFFFFFFFFFLL && (v443 & 1) == 0 && !v452 && v450 <= (v447 >> 63) + 0x7FFFFFFFFFFFFFFFLL && !v454 && !v455 && (v456 & 1) == 0 && !v459)
    {
      ++v429;
      if (!v460)
      {
        continue;
      }
    }

    v461 = *(a3 + 40);
    if (!v461)
    {
      v471 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v471)
      {
        sub_23672AF30(v471, v472, v473, v474, v475, v476, v477, v478);
      }

      _SparseTrap();
    }

    memset(&__str[36], 0, 220);
    strcpy(__str, "factor size calculation overflowed\n");
    v461(__str, v450, v36, v456, v455, v459, v452);
    (*(a3 + 32))(v36);
    v111 = 0;
    v112 = -3;
    goto LABEL_113;
  }

LABEL_270:
  v525 = v111;
  if (v294)
  {
    (*(v293 + 32))();
    v293 = a3;
    v111 = v525;
  }

  if (!v111)
  {
    return (*(v293 + 32))(__src);
  }

  v295 = *(v527 + 28);
  v296 = *(v111 + 168);
  if (v296 >= 0)
  {
    v297 = v296;
  }

  else
  {
    v297 = -v296;
  }

  v298 = 8 * v297;
  if (v296 < 0)
  {
    v298 = -8 * v297;
  }

  v299 = v298 + 40;
  v300 = v298 >= 0xFFFFFFFFFFFFFFD8 || v296 < 0;
  v530 = (v295 * v295);
  v301 = *(v111 + 336);
  v302 = MEMORY[0x277D85FA0];
  if (v301 < 1)
  {
    v306 = 0;
    v305 = 0;
    v348 = 0;
    v347 = 0;
  }

  else
  {
    v515 = v297;
    v516 = *(v111 + 168);
    v517 = v298 + 40;
    v303 = 0;
    v304 = 0;
    v305 = 0;
    v306 = 0;
    v307 = *(v111 + 344);
    v308 = *(v111 + 384);
    v518 = *(v527 + 28);
    v523 = (2 * v295);
    v309 = *MEMORY[0x277D85FA0] - 1;
    v310 = -*MEMORY[0x277D85FA0];
    v313 = *v307;
    v311 = v307 + 1;
    v312 = v313;
    do
    {
      v533 = *v311;
      v314 = *v311;
      v315 = *v308;
      v536 = v308 + 1;
      v538 = v311 + 1;
      v316 = *v308 >> 63;
      v539 = 0;
      v317 = sub_23681EB64(v315, v316, v530, 0, &v539);
      if ((v318 << 63 >> 63) ^ v318 | v539)
      {
        v319 = 1;
      }

      else
      {
        v319 = v318 << 63 >> 63 == -1;
      }

      v320 = v319;
      v321 = v300 | v320;
      if ((v526 & 0xFE) == 0x52)
      {
        v322 = *(v525[22] + 4 * v314) - *(v525[22] + 4 * v312);
        v323 = v523 * v322;
        v321 |= ((((v322 * v523) >> 64) + (v322 >> 63) * v523) << 63) >> 63 == -1;
      }

      else
      {
        v323 = 0;
      }

      v324 = 0;
      if (v314 - v312 < 0)
      {
        v329 = 0;
        v330 = 0;
        v331 = 0;
        v328 = 1;
      }

      else
      {
        v325 = 24 * (v314 - v312);
        v326 = v325 + 4 * v323;
        v327 = __CFADD__(v325, 4 * v323);
        v328 = 1;
        v329 = 0;
        v330 = 0;
        if (v323 >> 62)
        {
          v331 = 0;
        }

        else
        {
          v331 = 0;
          if (!v327)
          {
            v331 = v326 + 4 * v317;
            v332 = __CFADD__(v326, 4 * v317);
            if (v317 >> 62)
            {
              v324 = 0;
              v329 = 0;
              v330 = 0;
            }

            else
            {
              v330 = v326 + 8 * v317;
              v333 = __CFADD__(v326, 8 * v317);
              v334 = v317 >> 60 != 0;
              v335 = __CFADD__(v326, 16 * v317);
              v336 = v326 + 16 * v317;
              if (v335)
              {
                v334 = 1;
              }

              v337 = !v333;
              if (v333)
              {
                v338 = 0;
              }

              else
              {
                v338 = v336;
              }

              if (v337)
              {
                v339 = v330;
              }

              else
              {
                v339 = 0;
              }

              if (!v337)
              {
                v334 = 1;
              }

              if (v317 >> 61)
              {
                v338 = 0;
                v339 = 0;
                v340 = 1;
              }

              else
              {
                v340 = v334;
              }

              v341 = !v332;
              if (v332)
              {
                v324 = 0;
              }

              else
              {
                v324 = v338;
              }

              if (v341)
              {
                v329 = v339;
              }

              else
              {
                v329 = 0;
              }

              if (v341)
              {
                v328 = v340;
              }

              else
              {
                v330 = 0;
                v328 = 1;
              }
            }
          }
        }
      }

      v342 = v328 | v321 & 1;
      v343 = (v331 + v309) & v310;
      v344 = (v330 + v309) & v310;
      v345 = (v329 + v309) & v310;
      v346 = (v324 + v309) & v310;
      v335 = __CFADD__(v304, v346);
      v304 += v346;
      if (v335)
      {
        v342 = 1;
      }

      v335 = __CFADD__(v303, v345);
      v303 += v345;
      if (v335)
      {
        v342 = 1;
      }

      v335 = __CFADD__(v306, v344);
      v306 += v344;
      if (v335)
      {
        v342 = 1;
      }

      v335 = __CFADD__(v305, v343);
      v305 += v343;
      if (v335)
      {
        v300 = 1;
      }

      else
      {
        v300 = v342;
      }

      v308 = v536;
      v312 = v533;
      --v301;
      v311 = v538;
    }

    while (v301);
    v347 = (v303 + 1) >> 1;
    v348 = (v304 + 1) >> 1;
    v293 = a3;
    v111 = v525;
    v302 = MEMORY[0x277D85FA0];
    v295 = v518;
    v299 = v517;
    v296 = v516;
    v297 = v515;
  }

  if (v305 > v347)
  {
    v347 = v305;
  }

  if (v306 > v348)
  {
    v348 = v306;
  }

  v319 = v296 < 0;
  v349 = v296 < 0;
  v350 = 16 * v297;
  if (v319)
  {
    v350 = -v350;
  }

  v335 = __CFADD__(v350, 32);
  v351 = v350 + 32;
  if (v335)
  {
    v349 = 1;
  }

  v335 = __CFADD__(v351, v299);
  v352 = v351 + v299;
  v353 = v335;
  if (v349)
  {
    v352 = v299;
  }

  v354 = (v349 || v300) | v353;
  if (v526 == 83)
  {
    v355 = v354;
  }

  else
  {
    v355 = v300;
  }

  if (v526 == 83)
  {
    v356 = v352;
  }

  else
  {
    v356 = v299;
  }

  v357 = *(*(v111 + 120) + 8 * *(v111 + 60));
  v358 = v357 * v530;
  v359 = v355 || (v357 * v530) >> 64 != (v357 * v530) >> 63;
  if (v295 == 1)
  {
    v360 = 0;
  }

  else
  {
    v360 = 4 * v295 * (*(v111 + 100) + *(v111 + 96)) + 8;
  }

  v335 = __CFADD__(v356, v360);
  v361 = v356 + v360;
  if (v335)
  {
    v362 = (v360 >> 63) + 1;
  }

  else
  {
    v362 = v360 >> 63;
  }

  v364 = v362 << 63 >> 63 != v362 || v362 << 63 >> 63 == -1;
  v335 = __CFADD__(*v302, v361);
  v365 = *v302 + v361;
  if (v335)
  {
    v364 = 1;
  }

  v366 = v359 || v364;
  v367 = *(v111 + 56);
  v368 = v358 >> 63;
  v335 = __CFADD__(v358, 2 * v367);
  v369 = v358 + 2 * v367;
  if (v335)
  {
    v370 = v368 + 1;
  }

  else
  {
    v370 = v368;
  }

  v371 = v370 << 63 >> 63;
  v372 = v371 != v370;
  if (v366 || ((*(v111 + 56) >> 63) & 1) != 0 || v372 || v371 < 0 || (v373 = 4 * v369 + 144, v369 >> 62) || 4 * v369 >= 0xFFFFFFFFFFFFFF70 || ((v335 = __CFADD__(v373, v365), v374 = v373 + v365, !v335) ? (v375 = 0) : (v375 = 1), (v376 = v347 + v374, !__CFADD__(v347, v374)) ? (v377 = 0) : (v377 = 1), (*(a5 + 56) = v376, (v375 & 1) != 0) || (v377 & 1) != 0 || (v378 = 8 * v369 + 144, v369 >> 61) || 8 * v369 >= 0xFFFFFFFFFFFFFF70 || ((v335 = __CFADD__(v378, v365), v379 = v378 + v365, !v335) ? (v380 = 0) : (v380 = 1), (v335 = __CFADD__(v348, v379), v381 = v348 + v379, !v335) ? (v382 = 0) : (v382 = 1), (*(a5 + 64) = v381, (v380 & 1) != 0) || v382)))
  {
    v395 = *(v293 + 40);
    if (!v395)
    {
      v396 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v396)
      {
        sub_23672AFE4(v396, v397, v398, v399, v400, v401, v402, v403);
      }

      _SparseTrap();
    }

    memset(&__str[40], 0, 216);
    strcpy(__str, "Computation of factor size overflowed.\n");
    v395(__str);
    (*(a3 + 32))(__src);
    return sub_23680EF08(v525, a3);
  }

  else
  {
    v383 = *(v111 + 64);
    *(v111 + 392) = 8;
    v384 = *(v111 + 56);
    if (v384 >= 0)
    {
      v385 = v384;
    }

    else
    {
      v385 = -v384;
    }

    v386 = 8 * (v385 + 2 * v385);
    if (v384 < 0)
    {
      v386 = -8 * (v385 + 2 * v385);
    }

    v387 = v386 + 48;
    v388 = v386 >= 0xFFFFFFFFFFFFFFD0;
    if (v526 == 82)
    {
      v319 = v384 < 0;
      v389 = v384 < 0;
      v390 = 4 * v385;
      if (v319)
      {
        v390 = -v390;
      }

      v335 = __CFADD__(v390, 8);
      v391 = v390 + 8;
      if (v335)
      {
        v389 = 1;
      }

      v335 = __CFADD__(v391, v387);
      v392 = v391 + v387;
      v393 = v335;
      if (!v389)
      {
        v387 = v392;
      }

      LOBYTE(v394) = v389 | v393;
    }

    else
    {
      v394 = v384 >> 31;
    }

    v404 = 0;
    v405 = v388 | v394;
    v406 = *(v111 + 52);
    v407 = v406 < 0;
    if (v406 >= 0)
    {
      v408 = v406;
    }

    else
    {
      v408 = -v406;
    }

    v409 = !is_mul_ok(v408, v387);
    v410 = v408 * v387;
    if (!(v408 * v387))
    {
      v407 = 0;
    }

    v411 = 1;
    if (!v409 && !v407)
    {
      v404 = 0;
      if (v406 >= 0)
      {
        v412 = v410;
      }

      else
      {
        v412 = -v410;
      }

      v413 = *(v111 + 168);
      if (v413 >= 0)
      {
        v414 = *(v111 + 168);
      }

      else
      {
        v414 = -v413;
      }

      v415 = 8 * v414;
      if (v413 < 0)
      {
        v415 = -v415;
      }

      v335 = __CFADD__(v412, v415);
      v416 = v412 + v415;
      v417 = v335;
      v411 = 1;
      if ((v413 & 0x80000000) == 0 && (v417 & 1) == 0)
      {
        v404 = v416 + 8;
        v411 = v416 >= 0xFFFFFFFFFFFFFFF8;
      }
    }

    v418 = v411 | v405 & 1;
    if (v406 >= 2)
    {
      v419 = *(v111 + 336);
      if (v419 >= 0)
      {
        v420 = *(v111 + 336);
      }

      else
      {
        v420 = -v419;
      }

      v421 = 40 * v420;
      if (v419 < 0)
      {
        v421 = -v421;
      }

      v422 = v404 + v421;
      v423 = __CFADD__(v404, v421);
      v424 = 1;
      if ((v419 & 0x80000000) == 0 && !v423)
      {
        v425 = v422 + 49152;
        if (v422 >= 0xFFFFFFFFFFFF4000 || (v335 = __CFADD__(v425, 16 * v408), v426 = v425 + 16 * v408, v335))
        {
          v424 = 1;
        }

        else
        {
          v404 = v426 + 24;
          v424 = v426 >= 0xFFFFFFFFFFFFFFE8;
        }
      }

      v418 |= v424;
    }

    v479 = 12 * v383 + 16;
    if (v479 <= v404)
    {
      v479 = v404;
    }

    *(a5 + 40) = v479;
    *(a5 + 48) = v479;
    if (v418)
    {
      v480 = *(v293 + 40);
      if (!v480)
      {
        v499 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v499)
        {
          sub_23672AFA8(v499, v500, v501, v502, v503, v504, v505, v506);
        }

        _SparseTrap();
      }

      memset(&__str[73], 0, 183);
      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
      v480(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    v481 = 2 * v479;
    if (2 * v479 <= v541 || ((*(v293 + 32))(__src), __src = (*(a3 + 24))(v481), v111 = v525, __src))
    {
      *(a5 + 8) = 0;
      *(a5 + 32) = v111;
      v482 = sub_2367E9C78(v526, *(a5 + 24), v111, 2 * v376, a4, 0);
      if (v482)
      {
        v483 = __src;
        *v522 = v482;
        if (v520)
        {
          v484 = *(v527 + 28);
          v485 = *v527;
          if (v485 >= 1)
          {
            v486 = 0;
            for (i = 0; i != v485; ++i)
            {
              if (v484)
              {
                v488 = (*(v482 + 96) + v486);
                v489 = &v520[*(v525[19] + 4 * i) * v484];
                v490 = v484;
                do
                {
                  v491 = *v489++;
                  *v488++ = v491;
                  --v490;
                }

                while (v490);
              }

              v486 += 4 * v484;
            }
          }

          v492 = v527[1];
          if (v492 >= 1)
          {
            v493 = 0;
            for (j = 0; j != v492; ++j)
            {
              if (v484)
              {
                v495 = (*(v482 + 104) + v493);
                v496 = &v519[*(v525[20] + 4 * j) * v484];
                v497 = v484;
                do
                {
                  v498 = *v496++;
                  *v495++ = v498;
                  --v497;
                }

                while (v497);
              }

              v493 += 4 * v484;
            }
          }

          (*(a3 + 32))(v520, v519, v525, __src);
          v483 = __src;
        }

        _SparseRefactorLU_Complex_Float(v527, a5, a4, v483);
        (*(a3 + 32))(__src);
        return sub_2367D9E50(a5);
      }

      else
      {
        return (*(a3 + 32))(__src);
      }
    }

    else
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F716C();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v481);
      return (*(a3 + 40))(__str);
    }
  }
}

uint64_t _SparseUpdatePartialRefactorLU_Complex_Float(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v194 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  v7 = *(a1 + 25);
  v8 = *(a4 + 28);
  v166 = v8;
  v9 = *(v5 + 168);
  v10 = *(v5 + 56);
  v11 = 8 * v9 + 16 * v10 + 4 * (9 * v10 + v9);
  v12 = v9 + 8 * v10 + 8 * v9 + 40 * *(v5 + 336) + (v11 + 120) * *(v5 + 52) + 49208;
  v13 = (*(v5 + 24))(v12);
  v14 = *(v5 + 56);
  v15 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v13 + v15;
  v142 = v14;
  if (*(v5 + 168) >= 1)
  {
    v17 = 0;
    v18 = *(v6 + 14);
    v19 = *(v5 + 176);
    while (1)
    {
      if (v7 == 83)
      {
        v20 = *(*(v6 + 9) + 4 * v17);
        v21 = *(*(v6 + 10) + 4 * v17);
        v22 = *(*(v6 + 11) + 4 * v17);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v23 = v17 + 1;
      v24 = v20 + (*(v19 + 4 * (v17 + 1)) - *(v19 + 4 * v17)) * v8;
      if (v7 == 83)
      {
        v25 = *(*(v6 + 8) + 4 * v17);
      }

      else
      {
        v25 = v24;
        if (v7 == 81)
        {
          if (v24 >= 1)
          {
            v26 = 0;
            do
            {
              *(v13 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              *(v16 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              ++v26;
            }

            while (v24 != v26);
          }

          goto LABEL_16;
        }
      }

      if (v25 >= 1)
      {
        v27 = v24;
        v28 = v24 + v21 + (*(*(v5 + 184) + 8 * v23) - *(*(v5 + 184) + 8 * v17)) * v8;
        v29 = v25;
        v30 = *(v18 + 8 * v17) + 8;
        v31 = 8 * (v22 + (*(*(v5 + 200) + 8 * v23) - *(*(v5 + 200) + 8 * v17)) * v8) + 8 * v28;
        v32 = (v30 + (v31 | 4) * v27 + 4 * v21);
        v33 = (v30 + v31 * v27);
        do
        {
          v34 = *v33++;
          *(v13 + 4 * v34) = v17;
          v35 = *v32++;
          *(v16 + 4 * v35) = v17;
          --v29;
        }

        while (v29);
      }

LABEL_16:
      ++v17;
      if (v23 >= *(v5 + 168))
      {
        v14 = *(v5 + 56);
        break;
      }
    }
  }

  memset(__str, 0, sizeof(__str));
  v175 = 0;
  v176 = v5;
  v167[0] = v5;
  sub_23672A590(v165, v14, __str, v167);
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v176 + 32))();
  }

  v36 = *(v5 + 56);
  memset(__str, 0, sizeof(__str));
  v175 = 0;
  v176 = v5;
  v167[0] = v5;
  sub_23672A590(v164, v36, __str, v167);
  v140 = v12;
  v141 = v11;
  v148 = v7;
  v150 = v6;
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v176 + 32))();
  }

  v139 = v15;
  v37 = (v16 + v15);
  v149 = *(v5 + 168);
  bzero(v37, v149);
  if (a2 >= 1)
  {
    v38 = 0;
    v39 = (v8 * v8);
    v40 = 8 * v39;
    v152 = a2;
    v146 = -8 * v39;
    while (1)
    {
      v41 = (a3 + 8 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 / v166;
      v45 = v42 / v166;
      v46 = *(*(v5 + 136) + 4 * (v43 / v166));
      v47 = *(*(v5 + 144) + 4 * (v42 / v166));
      v48 = v43 % v166 + v46 * v166;
      LODWORD(v167[0]) = v48;
      v49 = v42 % v166 + v47 * v166;
      LODWORD(v163[0]) = v49;
      v50 = *(v5 + 72);
      if (v50 && (*(v50 + v43) & 1) != 0)
      {
        goto LABEL_58;
      }

      v51 = *(v5 + 80);
      if (v51)
      {
        if (*(v51 + v42))
        {
          goto LABEL_58;
        }
      }

      if (v47 < *(v5 + 96))
      {
        goto LABEL_35;
      }

      if (v47 >= *(v5 + 60) - *(v5 + 100))
      {
        goto LABEL_35;
      }

      v52 = *(v5 + 112);
      do
      {
        v54 = *v52++;
        v53 = v54;
      }

      while (v47 >= v54);
      if (v46 >= v53)
      {
LABEL_35:
        v59 = (*(v5 + 120) + 8 * v47);
        v61 = *v59;
        v60 = v59[1];
        v62 = v60 <= v61;
        v63 = v60 - v61;
        if (v62)
        {
LABEL_39:
          v67 = 0;
        }

        else
        {
          v64 = v146 * v61;
          v65 = (*(v5 + 128) + 4 * v61);
          while (1)
          {
            v66 = *v65++;
            if (v66 == v44)
            {
              break;
            }

            v64 -= v40;
            if (!--v63)
            {
              goto LABEL_39;
            }
          }

          v67 = (*(v150 + 5) - v64);
        }

        v68 = (*(a4 + 8) + 8 * v45);
        v70 = *v68;
        v69 = v68[1];
        v62 = v69 <= v70;
        v71 = v69 - v70;
        if (v62)
        {
LABEL_45:
          v75 = 0;
        }

        else
        {
          v72 = v146 * v70;
          v73 = (*(a4 + 16) + 4 * v70);
          while (1)
          {
            v74 = *v73++;
            if (v74 == v44)
            {
              break;
            }

            v72 -= v40;
            if (!--v71)
            {
              goto LABEL_45;
            }
          }

          v75 = (*(a4 + 32) - v72);
        }

        memcpy(v67, v75, v40);
        if (v46 == v47)
        {
          if (v166 == 1)
          {
            *v67 = sub_23681E680(1.0, 0.0, *v67, v67[1]);
            *(v67 + 1) = v76;
          }

          else
          {
            LODWORD(v162[0]) = 0;
            cgetrf_NEWLAPACK();
          }
        }

        goto LABEL_58;
      }

      v55 = *(v13 + 4 * v48);
      v56 = *(v16 + 4 * v49);
      if (v55 < v56)
      {
        break;
      }

      if (v55 > v56)
      {
        v57 = v165[0] + 32 * v56;
        v58 = v167;
        goto LABEL_53;
      }

LABEL_54:
      if (v55 <= v56)
      {
        v77 = v56;
      }

      else
      {
        v77 = v55;
      }

      v37[v77] = 1;
LABEL_58:
      if (++v38 == v152)
      {
        goto LABEL_59;
      }
    }

    v57 = v164[0] + 32 * v55;
    v58 = v163;
LABEL_53:
    sub_236725158(v57, v58);
    goto LABEL_54;
  }

LABEL_59:
  v155 = &v37[(v149 + 7) & 0xFFFFFFFFFFFFFFF8];
  v78 = *(v5 + 168);
  if (v78 >= 1)
  {
    for (i = 0; i != v78; ++i)
    {
      if ((v37[i] & 1) == 0)
      {
        v80 = (*(v5 + 240) + 8 * i);
        v82 = *v80;
        v81 = v80[1];
        v62 = v81 <= v82;
        v83 = v81 - v82;
        if (!v62)
        {
          v84 = (*(v5 + 248) + 4 * v82);
          while (1)
          {
            v85 = *v84++;
            if (v37[v85] == 1)
            {
              break;
            }

            if (!--v83)
            {
              goto LABEL_68;
            }
          }

          v37[i] = 1;
        }
      }

LABEL_68:
      ;
    }
  }

  v153 = v142 & 0x3FFFFFFFFFFFFFFFLL;
  v86 = v78;
  v87 = 8 * v78;
  v88 = &v155[v87];
  bzero(v155, v87);
  v89 = *(v5 + 52);
  if (v89 != 1)
  {
    _X0 = 0;
    LODWORD(v167[0]) = *(v5 + 52);
    atomic_store(0, v167 + 1);
    atomic_store(0, (v167 | 0xC));
    atomic_store(0, v168);
    v107 = v169;
    do
    {
      _X5 = v170;
      __asm { CASPAL          X4, X5, X0, X1, [X19] }

      _ZF = _X4 == v107;
      v107 = _X4;
    }

    while (!_ZF);
    v171 = v141 + 104;
    v172 = &v155[v87];
    v173 = 0;
    v114 = &v88[40 * *(v5 + 336) + (((v141 + 104) * v89 + 7) & 0xFFFFFFFFFFFFFFF8)];
    __str[0] = v148;
    *&__str[8] = a4;
    v175 = v5;
    LODWORD(v176) = v166;
    v177 = v150;
    v178 = &v37[(v149 + 7) & 0xFFFFFFFFFFFFFFF8];
    v179 = 0;
    v180 = &v88[((v141 + 104) * v89 + 7) & 0xFFFFFFFFFFFFFFF8];
    v181 = sub_2367921D4(256, v114 + 16 * v89);
    v182 = v115;
    __p[0] = 0;
    __p[1] = 0;
    v184 = 0;
    v185 = v114;
    v186 = v37;
    v187 = v149;
    v188 = v13;
    v189 = v142 & 0x3FFFFFFFFFFFFFFFLL;
    v190 = v16;
    v191 = v142 & 0x3FFFFFFFFFFFFFFFLL;
    v192 = v165;
    v193 = v164;
    v173 = __str;
    if (*(v5 + 52))
    {
      v116 = 0;
      v117 = 0;
      do
      {
        *(v114 + v116 + 8) = *(v5 + 392);
        v118 = (*(v5 + 24))();
        v114 = v185;
        *(v185 + v116) = v118;
        ++v117;
        v116 += 16;
      }

      while (v117 < *(v5 + 52));
    }

    if (*(v5 + 336) >= 1)
    {
      _X22 = 0;
      v120 = 0;
      v121 = 0;
      do
      {
        v122 = v121;
        v62 = *(*(v5 + 176) + 4 * *(*(v5 + 344) + 4 * v121++)) < *(*(v5 + 112) + 4 * (v120 + 1));
        if (!v62)
        {
          ++v120;
        }

        v123 = *(*(v5 + 368) + 8 * v121) - *(*(v5 + 368) + 8 * v122);
        v124 = &v180[40 * v122];
        atomic_store(v123, v124);
        *(v124 + 2) = v122;
        *(v124 + 3) = v120;
        *(v124 + 2) = sub_2367F5C48;
        if (!v123)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X27] }

          *(v124 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v124 + 4) = 0;
          v128 = _X0 & 1;
          _X2 = v128 | v124;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X27] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X22, X23, [X10] }

            *(v124 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v124 + 4) = 0;
            v128 = _X0 & 1;
            _X2 = v128 | v124;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v128)
          {
            __ulock_wake();
          }
        }
      }

      while (v121 < *(v5 + 336));
    }

    v135 = sub_2366FCD2C(v167, 1);
    v105 = v135;
    if (!v135)
    {
      if (*(v5 + 52))
      {
        v136 = 0;
        v137 = 0;
        do
        {
          (*(v5 + 32))(*(v185 + v136));
          ++v137;
          v136 += 16;
        }

        while (v137 < *(v5 + 52));
      }

      v105 = -3;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v135)
    {
      goto LABEL_106;
    }

LABEL_105:
    (*(v5 + 32))(v13);
    v105 = 0;
    goto LABEL_106;
  }

  v90 = *(v5 + 56);
  v143 = (4 * v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  *__str = &v155[v87];
  *&__str[8] = v90 & 0x3FFFFFFFFFFFFFFFLL;
  LODWORD(v175) = 1;
  bzero(v88, 4 * v90);
  v91 = *(v5 + 168);
  v167[0] = &v88[v143];
  v167[1] = v91 & 0x3FFFFFFFFFFFFFFFLL;
  v168[0] = 1;
  v145 = &v88[v143];
  v92 = 4 * v91;
  bzero(&v88[v143], 4 * v91);
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v161[0] = 0;
  v161[1] = 0;
  v160[0] = 0;
  v160[1] = 0;
  v159[0] = 0;
  v159[1] = 0;
  v93 = (*(v5 + 24))(*(v5 + 392));
  v94 = *(v5 + 392);
  v158[0] = v93;
  v158[1] = v94;
  v95 = v150;
  v96 = v150 + 34;
  LODWORD(v94) = atomic_load(v150 + 34);
  v157 = v94;
  v97 = v95 + 35;
  v98 = atomic_load(v95 + 35);
  v156 = v98;
  if (*(v5 + 168) < 1)
  {
LABEL_79:
    atomic_store(v157, v96);
    atomic_store(v98, v97);
    (*(v5 + 32))(v160[0]);
    (*(v5 + 32))(v159[0]);
    (*(v5 + 32))(v163[0]);
    (*(v5 + 32))(v162[0]);
    (*(v5 + 32))(v161[0]);
    goto LABEL_105;
  }

  v99 = 0;
  v100 = 0;
  v101 = 0;
  v147 = v86;
  v102 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = v140 - v102 - (((v149 + 7) & 0xFFFFFFFFFFFFFFF8) + 2 * v139 + v87 + v143);
  v104 = &v145[v102];
  while (1)
  {
    if (*(*(v5 + 176) + 4 * v100) >= *(*(v5 + 112) + 4 * (v101 + 1)))
    {
      ++v101;
    }

    if (v37[v100] == 1 || (sub_2367F0D38(v100, a4, v148, v5, v166, v150, v165, v164, v160, v159, v163, v162, v161, __str, v37, v149, v104), (v37[v100] & 1) != 0))
    {
      *(v164[0] + v99 + 8) = *(v164[0] + v99);
      *(v165[0] + v99 + 8) = *(v165[0] + v99);
      v105 = sub_2367F3018(v100, v101, a4, v148, v5, v166, v150, &v157, &v156, v155, v147, v163, v162, v161, __str, v167, v37, v149, v13, v153, v16, v153, v104, v103, v158, 0, 0);
      if (v105)
      {
        break;
      }
    }

    ++v100;
    v99 += 32;
    if (v100 >= *(v5 + 168))
    {
      v98 = v156;
      v96 = v150 + 34;
      v97 = v150 + 35;
      goto LABEL_79;
    }
  }

  (*(v5 + 32))(v160[0]);
  (*(v5 + 32))(v159[0]);
  (*(v5 + 32))(v163[0]);
  (*(v5 + 32))(v162[0]);
  (*(v5 + 32))(v161[0]);
  (*(v5 + 32))(v13);
LABEL_106:
  *__str = v164;
  sub_23672A890(__str);
  *__str = v165;
  sub_23672A890(__str);
  *a1 = v105;
  return sub_2367D9E50(a1);
}