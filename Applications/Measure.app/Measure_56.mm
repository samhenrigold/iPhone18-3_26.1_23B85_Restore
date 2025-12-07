void sub_10036F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036F7D4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_10036F858(void *a1)
{
  *a1 = off_10047B6F0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036F8BC(void *a1)
{
  *a1 = off_10047B6F0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036F930(uint64_t a1, double **a2, double *a3, int a4, int a5, unsigned int a6)
{
  v9 = a2;
  v12 = (a1 + 32);
  v11 = *(a1 + 32);
  v181 = *(a1 + 16);
  v13 = (*(a1 + 40) - v11) >> 3;
  if (v13 != a6)
  {
    if (a6 <= v13)
    {
      if (a6 < v13)
      {
        *(a1 + 40) = &v11[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v13);
      v11 = *v12;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v14 = *(a1 + 24);
  if (!v14)
  {
LABEL_11:
    bzero(v11, 8 * a6);
    v15 = *(a1 + 8);
    v17 = v15 - 1;
    v18 = *(a1 + 24);
    if (v18 >= v15 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v9 += (v15 - v18 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v17;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v19 = *v11;
      v20 = ~v18 + v15;
      do
      {
        v21 = *v9;
        v19 = **v9 + v19;
        *v11 = v19;
        if (a6 != 1)
        {
          v11[1] = v21[1] + v11[1];
          if (a6 != 2)
          {
            v11[2] = v21[2] + v11[2];
          }
        }

        ++v9;
        --v20;
      }

      while (v20);
      goto LABEL_20;
    }

    v157 = a6;
    while (1)
    {
      v158 = *v9;
      if (v11 >= &(*v9)[v157] || v158 >= &v11[v157])
      {
        v160 = v158 + 1;
        v161 = a6 & 0x7FFFFFFC;
        v162 = (v11 + 2);
        do
        {
          v163 = vaddq_f64(*v160, *v162);
          v162[-1] = vaddq_f64(v160[-1], v162[-1]);
          *v162 = v163;
          v160 += 2;
          v162 += 2;
          v161 -= 4;
        }

        while (v161);
        v164 = a6 & 0x7FFFFFFC;
        if (v164 == a6)
        {
          goto LABEL_220;
        }
      }

      else
      {
        v164 = 0;
      }

      v165 = &v158->f64[v164];
      v166 = &v11[v164];
      v167 = a6 - v164;
      do
      {
        v168 = *v165++;
        *v166 = v168 + *v166;
        ++v166;
        --v167;
      }

      while (v167);
LABEL_220:
      ++v18;
      ++v9;
      if (v18 == v17)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *(a1 + 8);
  if (v14 != v15 - 1)
  {
    v183[0] = 0;
    v183[1] = 0;
    v16 = sub_1002A80E0(v183, 19);
    *(v16 + 15) = 825058682;
    *v16 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v183, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v9 = &a2[v15 - 1];
LABEL_21:
  if (!a5)
  {
    return;
  }

  v22 = (a5 - 1);
  v23 = 1 - v15;
  v24 = a6 - 2;
  if (v181 != 1.0)
  {
    v25 = 0;
    v26 = a6;
    v27 = &v11[v26];
    if (v24 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v24;
    }

    v29 = ((8 * v28) & 0x3FFFFFFF0) + 16;
    v30 = (v28 >> 1) + 1;
    v177 = (v11 + v29);
    v179 = (a3 + a4 * v22 + v29);
    v32 = (v11 + v29) > a3 && v11 < (a3 + a4 * v22 + v29);
    v174 = v32;
    v170 = v30;
    v172 = v30 & 0x7FFFFFFE;
    v33 = a3;
    while (1)
    {
      v34 = v22;
      v35 = *v9;
      v36 = v9[v23];
      if (a6 < 2)
      {
        v37 = 0;
        if (a6 <= 0)
        {
          goto LABEL_33;
        }

        goto LABEL_43;
      }

      if (v24 < 6)
      {
        break;
      }

      v37 = 0;
      v44 = v36 + v29;
      if ((v35 + v29) > a3 && v35 < v179 || a4 < 0)
      {
        v47 = 1;
      }

      else
      {
        v47 = v174;
      }

      v49 = v11 < (v35 + v29) && v35 < v177;
      v51 = v11 < v44 && v36 < v177;
      v52 = v36 < v179 && v44 > a3;
      if (v52 || (v47 & 1) != 0 || v49)
      {
        goto LABEL_39;
      }

      v38 = v181;
      if (v51)
      {
        goto LABEL_40;
      }

      v53 = 0;
      v54 = v172;
      do
      {
        v55 = &v11[v53];
        v56 = vaddq_f64(*&v11[v53 + 2], *&v35[v53 + 2]);
        v57 = vaddq_f64(*&v11[v53], *&v35[v53]);
        v58 = &v33[v53];
        *v58 = vmulq_n_f64(v57, v181);
        v58[1] = vmulq_n_f64(v56, v181);
        v59 = vsubq_f64(v56, *&v36[v53 + 2]);
        *v55 = vsubq_f64(v57, *&v36[v53]);
        v55[1] = v59;
        v53 += 4;
        v54 -= 2;
      }

      while (v54);
      v37 = 2 * v172;
      if (v170 != v172)
      {
        goto LABEL_40;
      }

LABEL_42:
      v37 = v37;
      if (v37 >= a6)
      {
        goto LABEL_33;
      }

LABEL_43:
      v41 = a6 - v37;
      if (v41 <= 7 || ((v60 = (&a3[v26] + v25 * a4), v61 = v37, v62 = &v33[v37], v63 = &v11[v37], v64 = &v35[v37], v65 = &v36[v37], v66 = &v36[v26], v62 < &v35[v26]) ? (v67 = v64 >= v60) : (v67 = 1), v67 ? (v68 = 0) : (v68 = 1), v62 < v66 ? (v69 = v65 >= v60) : (v69 = 1), v69 ? (v70 = 0) : (v70 = 1), v63 < &v35[v26] ? (v71 = v64 >= v27) : (v71 = 1), v71 ? (v72 = 0) : (v72 = 1), v63 < v66 ? (v73 = v65 >= v27) : (v73 = 1), v73 ? (v74 = 0) : (v74 = 1), v63 < v60 ? (v75 = v62 >= v27) : (v75 = 1), !v75 || (v68 & 1) != 0 || (v70 & 1) != 0 || (v72 & 1) != 0 || (v74 & 1) != 0))
      {
        v42 = v181;
      }

      else
      {
        v37 += v41 & 0xFFFFFFFFFFFFFFFELL;
        v76 = v41 & 0xFFFFFFFFFFFFFFFELL;
        v42 = v181;
        do
        {
          v77 = vaddq_f64(*&v11[v61], *&v35[v61]);
          *&v33[v61] = vmulq_n_f64(v77, v181);
          *&v11[v61] = vsubq_f64(v77, *&v36[v61]);
          v61 += 2;
          v76 -= 2;
        }

        while (v76);
        if (v41 == (v41 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_33;
        }
      }

      do
      {
        v43 = v11[v37] + v35[v37];
        v33[v37] = v42 * v43;
        v11[v37] = v43 - v36[v37];
        ++v37;
      }

      while (a6 != v37);
LABEL_33:
      v33 = (v33 + a4);
      ++v9;
      LODWORD(v22) = v34 - 1;
      ++v25;
      if (!v34)
      {
        return;
      }
    }

    v37 = 0;
LABEL_39:
    v38 = v181;
LABEL_40:
    v39 = v37;
    do
    {
      v40 = vaddq_f64(*&v11[v39], *&v35[v39]);
      *&v33[v39] = vmulq_n_f64(v40, v38);
      *&v11[v39] = vsubq_f64(v40, *&v36[v39]);
      v37 += 2;
      v39 += 2;
    }

    while (v37 <= v24);
    goto LABEL_42;
  }

  if (a6 >= 2)
  {
    v82 = 0;
    if ((v24 & 0x7FFFFFFE) + 3 <= a6)
    {
      v83 = a6;
    }

    else
    {
      v83 = (v24 & 0x7FFFFFFE) + 3;
    }

    v84 = (8 * (a6 - 2)) & 0x3FFFFFFF0;
    v182 = 8 * v83 - v84;
    v85 = v83 - (v24 & 0x7FFFFFFE) - 2;
    v86 = v84 + 16;
    v87 = (a3 + a4 * v22 + v84 + 16);
    v88 = (v11 + v86);
    v89 = (v24 >> 1) + 1;
    v91 = (v11 + v86) > a3 && v11 < v87;
    v92 = v89 & 0x7FFFFFFE;
    v178 = v86;
    v175 = (2 * v89) | 2;
    v176 = v92;
    v173 = 2 * v92;
    v171 = v92 - 1;
    v169 = v85 & 0xFFFFFFFFFFFFFFFCLL;
    v93 = a3 + 2;
    v94 = a3;
    while (1)
    {
      v95 = v22;
      v96 = *v9;
      v97 = v9[v23];
      if (v24 <= 9)
      {
        break;
      }

      v98 = 0;
      v106 = v97 + v86;
      v109 = (v96 + v86) > a3 && v96 < v87 || a4 < 0 || v91;
      v111 = v11 < (v96 + v86) && v96 < v88;
      v113 = v11 < v106 && v97 < v88;
      v114 = v97 < v87 && v106 > a3;
      if (v114 || (v109 & 1) != 0 || v111)
      {
        v100 = 2;
        v99 = 0;
LABEL_134:
        v101 = v98 - 1;
        v102 = v100 - 2;
        v103 = v99;
        do
        {
          v104 = vaddq_f64(*&v11[v103], *&v96[v103]);
          *&v94[v103] = v104;
          *&v11[v103] = vsubq_f64(v104, *&v97[v103]);
          v99 += 2;
          ++v101;
          v102 += 2;
          v103 += 2;
        }

        while (v99 <= v24);
        goto LABEL_136;
      }

      v100 = 2;
      v99 = 0;
      if (v113)
      {
        goto LABEL_134;
      }

      v115 = 0;
      v116 = v92;
      do
      {
        v117 = &v11[v115];
        v118 = vaddq_f64(*&v11[v115], *&v96[v115]);
        v119 = vaddq_f64(*&v11[v115 + 2], *&v96[v115 + 2]);
        v120 = &v94[v115];
        *v120 = v118;
        v120[1] = v119;
        v121 = vsubq_f64(v119, *&v97[v115 + 2]);
        *v117 = vsubq_f64(v118, *&v97[v115]);
        v117[1] = v121;
        v115 += 4;
        v116 -= 2;
      }

      while (v116);
      v98 = v92;
      v102 = v173;
      v100 = v175;
      v99 = v173;
      v101 = v171;
      if ((v24 >> 1) + 1 != v92)
      {
        goto LABEL_134;
      }

LABEL_136:
      if (v99 < a6)
      {
        if (v85 <= 9)
        {
          v105 = v102;
          goto LABEL_217;
        }

        v122 = v88;
        v123 = v87;
        v124 = v91;
        v125 = v85;
        v126 = &a3[2 * v101] + v82 * a4;
        v127 = v126 + 16;
        v128 = &v126[v182];
        v129 = 16 * v101 + 16;
        v130 = v11 + v129;
        v131 = v182 + 16 * v101;
        v132 = v11 + v131;
        v133 = v96 + v129;
        v134 = v96 + v131;
        v135 = v97 + v129;
        v136 = v97 + v131;
        v138 = v127 < v96 + v131 && v133 < v128;
        v140 = v127 < v136 && v135 < v128;
        v142 = v130 < v134 && v133 < v132;
        v144 = v130 < v136 && v135 < v132;
        if (v130 < v128 && v127 < v132)
        {
          v105 = v102;
          v85 = v125;
          goto LABEL_213;
        }

        v85 = v125;
        if (v138)
        {
          v105 = v102;
LABEL_213:
          v91 = v124;
        }

        else
        {
          v91 = v124;
          if (!v140)
          {
            v87 = v123;
            if (!v142)
            {
              v88 = v122;
              if (!v144)
              {
                v146 = v169;
                v105 = v102 + v169;
                v147 = v102;
                v148 = &v97[v102 + 2];
                v149 = &v11[v102 + 2];
                v150 = &v93[v147];
                v151 = &v96[v147 + 2];
                v92 = v176;
                v86 = v178;
                do
                {
                  v152 = vaddq_f64(v149[-1], v151[-1]);
                  v153 = vaddq_f64(*v149, *v151);
                  v150[-1] = v152;
                  *v150 = v153;
                  v154 = vsubq_f64(v152, v148[-1]);
                  v155 = vsubq_f64(v153, *v148);
                  v148 += 2;
                  v149[-1] = v154;
                  *v149 = v155;
                  v149 += 2;
                  v150 += 2;
                  v151 += 2;
                  v146 -= 4;
                }

                while (v146);
                if (v85 == v169)
                {
                  goto LABEL_131;
                }

                goto LABEL_217;
              }

              v105 = v102;
              goto LABEL_216;
            }

            v105 = v102;
LABEL_215:
            v88 = v122;
LABEL_216:
            v92 = v176;
            v86 = v178;
            do
            {
LABEL_217:
              v156 = v11[v105] + v96[v105];
              v94[v105] = v156;
              v11[v105] = v156 - v97[v105];
              ++v105;
            }

            while (v105 < a6);
            goto LABEL_131;
          }

          v105 = v102;
        }

        v87 = v123;
        goto LABEL_215;
      }

LABEL_131:
      v94 = (v94 + a4);
      ++v9;
      LODWORD(v22) = v95 - 1;
      ++v82;
      v93 = (v93 + a4);
      if (!v95)
      {
        return;
      }
    }

    v98 = 0;
    v99 = 0;
    v100 = 2;
    goto LABEL_134;
  }

  if (a6 == 1)
  {
    v78 = *v11;
    do
    {
      v79 = *(v9 + 8 - 8 * v15);
      v80 = *v9++;
      v81 = v78 + *v80;
      *a3 = v81;
      v78 = v81 - *v79;
      *v11 = v78;
      a3 = (a3 + a4);
      --a5;
    }

    while (a5);
  }
}

void sub_100370248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100370280(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

double sub_100370304(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  sub_1002ACE7C(v158, &off_10047B768);
  if (sub_100271148(a1) == 0x10000)
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v150 = *v10;
    v151 = v12;
    v152 = *(v10 + 32);
    v13 = *(v10 + 56);
    v153 = *(v10 + 48);
    v154 = v13;
    v155 = &v150 + 1;
    v156 = v157;
    v157[0] = 0;
    v157[1] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_4:
        v14 = *(v10 + 72);
        v15 = v156;
        *v156 = *v14;
        v15[1] = v14[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v150) = 0;
    sub_100269B58(&v150, v10);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v150);
  }

LABEL_8:
  v16 = a3 & 0xFFFFFFF8;
  if ((a3 & 0xFFFFFFF8) == 8)
  {
    if ((v150 & 0xFFF) != 0)
    {
      v159 = 0;
      v160 = 0;
      qmemcpy(sub_1002A80E0(&v159, 55), "src.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))", 55);
      sub_1002A8980(-215, &v159, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1406);
    }

    v29 = v155->u32[1];
    if ((v150 & 0x4000) != 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = v155->u32[0];
    }

    if ((v150 & 0x4000) != 0)
    {
      v31 = v155->i32[0] * v29;
    }

    else
    {
      v31 = v29;
    }

    if ((v150 & 0x4000) != 0)
    {
      v32 = v155->i32[0] * v29;
    }

    else
    {
      v32 = v157[0];
    }

    bzero(&v159, 0x400uLL);
    if (v30 >= 1)
    {
      v33 = v151;
      v34 = (v31 - 4);
      if (v31 >= 4)
      {
        for (i = 0; i != v30; ++i)
        {
          for (j = 0; j <= v34; j += 4)
          {
            v107 = *(v33 + j + 1);
            ++v159.i32[*(v33 + j)];
            ++v159.i32[v107];
            v108 = *(v33 + j + 3);
            ++v159.i32[*(v33 + j + 2)];
            ++v159.i32[v108];
          }

          v109 = (v34 & 0x7FFFFFFC) + 4;
          if (v31 > j)
          {
            do
            {
              ++v159.i32[*(v33 + v109++)];
            }

            while (v109 < v31);
          }

          v33 += v32;
        }
      }

      else if (v31 >= 1)
      {
        v35 = (v151 + 2);
        v36 = v30;
        do
        {
          ++v159.i32[*(v35 - 2)];
          if (v31 != 1)
          {
            ++v159.i32[*(v35 - 1)];
            if (v31 != 2)
            {
              ++v159.i32[*v35];
            }
          }

          v35 += v32;
          --v36;
        }

        while (v36);
      }
    }

    v110 = 0;
    v111 = 0.0;
    do
    {
      v111 = v111 + v110 * v159.i32[v110] + (v110 + 1) * v159.i32[v110 + 1];
      v110 += 2;
    }

    while (v110 != 256);
    v112 = 0;
    v113 = 1.0 / (v31 * v30);
    v114 = v113 * v111;
    a4 = 0.0;
    v115 = 0.0;
    v116 = 0.0;
    v117 = 0.0;
    do
    {
      v118 = v113 * v159.i32[v112];
      v116 = v116 * v117;
      v117 = v117 + v118;
      v119 = 1.0 - v117;
      if (1.0 - v117 >= v117)
      {
        v120 = v117;
      }

      else
      {
        v120 = 1.0 - v117;
      }

      if (v120 >= 0.00000011920929)
      {
        v121 = v117 >= v119 ? v117 : 1.0 - v117;
        if (v121 <= 0.999999881)
        {
          v116 = (v116 + v112 * v118) / v117;
          v122 = (v116 - (v114 - v117 * v116) / v119) * (v117 * v119 * (v116 - (v114 - v117 * v116) / v119));
          if (v122 > v115)
          {
            v115 = v122;
            a4 = v112;
          }
        }
      }

      ++v112;
    }

    while (v112 != 256);
  }

  else
  {
    if (v16 != 16)
    {
      if (v16 == 24)
      {
        v159 = 0;
        v160 = 0;
        qmemcpy(sub_1002A80E0(&v159, 57), "automatic_thresh != (CV_THRESH_OTSU | CV_THRESH_TRIANGLE)", 57);
        sub_1002A8980(-215, &v159, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1403);
      }

      goto LABEL_81;
    }

    v17 = v150;
    if ((v150 & 0xFFF) != 0)
    {
      v159 = 0;
      v160 = 0;
      qmemcpy(sub_1002A80E0(&v159, 55), "src.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))", 55);
      sub_1002A8980(-215, &v159, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1411);
    }

    v18 = v157[0];
    v19 = v155->u32[1];
    v20 = v155->i32[0] * v19;
    if ((v150 & 0x4000) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = v155->u32[0];
    }

    if ((v150 & 0x4000) != 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    bzero(&v159, 0x400uLL);
    if (v21 >= 1)
    {
      v23 = 0;
      if ((v17 & 0x4000) != 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = v18;
      }

      v25 = v151;
      while (v22 < 4)
      {
        v26 = 0;
        if (v22 > 0)
        {
          goto LABEL_32;
        }

LABEL_25:
        ++v23;
        v25 += v24;
        if (v23 == v21)
        {
          goto LABEL_53;
        }
      }

      v26 = 0;
      do
      {
        v27 = *(v25 + v26 + 1);
        ++v159.i32[*(v25 + v26)];
        ++v159.i32[v27];
        v28 = *(v25 + v26 + 3);
        ++v159.i32[*(v25 + v26 + 2)];
        ++v159.i32[v28];
        v26 += 4;
      }

      while (v26 <= v22 - 4);
      v26 = v26;
      if (v26 >= v22)
      {
        goto LABEL_25;
      }

      do
      {
LABEL_32:
        ++v159.i32[*(v25 + v26++)];
      }

      while (v22 != v26);
      goto LABEL_25;
    }

LABEL_53:
    v37 = 0;
    v38 = -1;
    while (v159.i32[v37] <= 0)
    {
      ++v37;
      ++v38;
      if (v37 == 256)
      {
        goto LABEL_58;
      }
    }

    if (v37 * 4)
    {
      goto LABEL_59;
    }

LABEL_58:
    v38 = 0;
LABEL_59:
    v39 = 255;
    while (v159.i32[v39] <= 0)
    {
      if (!--v39)
      {
        v39 = 1;
        goto LABEL_65;
      }
    }

    if (v39 <= 0xFE)
    {
      ++v39;
    }

LABEL_65:
    v40 = 0;
    v41 = 0;
    v42 = 0;
    do
    {
      if (v159.i32[v40] > v41)
      {
        v42 = v40;
        v41 = v159.u32[v40];
      }

      ++v40;
    }

    while (v40 != 256);
    v43 = v42 - v38;
    v44 = v39 - v42;
    if (v42 - v38 < (v39 - v42))
    {
      v45 = 0;
      for (k = 255; k != 127; --k)
      {
        v47 = v159.i32[v45];
        v159.i32[v45] = v159.i32[k];
        v159.i32[k] = v47;
        ++v45;
      }

      v38 = 255 - v39;
      v42 = 255 - v42;
    }

    v48 = v38;
    if (v38 < v42)
    {
      v49 = (v38 - v42);
      v50 = v38;
      v51 = v42 - v38;
      v52 = v50 + 1;
      v53 = 0.0;
      do
      {
        if (v49 * v159.i32[v52] + v41 * v52 > v53)
        {
          v48 = v52;
          v53 = v49 * v159.i32[v52] + v41 * v52;
        }

        ++v52;
        --v51;
      }

      while (v51);
    }

    v54 = v48 + -1.0;
    if (v43 >= v44)
    {
      a4 = v54;
    }

    else
    {
      a4 = 255.0 - v54;
    }
  }

LABEL_81:
  v159 = vrev64_s32(*v155);
  sub_100275370(a2, &v159, v150 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) == 0x10000)
  {
    v55 = *(a2 + 8);
    v56 = *v55;
    v57 = *(v55 + 16);
    v142 = *v55;
    v143 = v57;
    v144 = *(v55 + 32);
    v58 = *(v55 + 56);
    v145 = *(v55 + 48);
    v146 = v58;
    v147 = &v142 + 8;
    v148 = v149;
    v149[0] = 0;
    v149[1] = 0;
    if (v58)
    {
      atomic_fetch_add((v58 + 20), 1u);
      if (*(v55 + 4) <= 2)
      {
LABEL_84:
        v59 = *(v55 + 72);
        v60 = v148;
        *v148 = *v59;
        v60[1] = v59[1];
        goto LABEL_88;
      }
    }

    else if (SDWORD1(v56) <= 2)
    {
      goto LABEL_84;
    }

    DWORD1(v142) = 0;
    sub_100269B58(&v142, v55);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v142);
  }

LABEL_88:
  v61 = a3 & 7;
  v62 = v150 & 7;
  if (v62 <= 4)
  {
    if ((v150 & 7) == 0)
    {
      v65 = a4 - (a4 < a4);
      a4 = v65;
      v66 = rint(a5);
      if (v61 == 2)
      {
        LODWORD(v66) = v65;
      }

      v67 = v66 & ~(v66 >> 31);
      if (v67 >= 255)
      {
        v67 = 255;
      }

      if (v65 < 0xFF)
      {
        v68 = v67;
LABEL_114:
        a5 = v68;
        goto LABEL_115;
      }

      if (v61 >= 2)
      {
        v93 = v61 != 3 || v65 <= 254;
        v94 = !v93;
        v95 = v61 == 4 || v61 == 2;
        v96 = v95 && v65 < 0;
        if (!v96 && !v94)
        {
          goto LABEL_242;
        }
      }

      if (v61 == 1)
      {
        if (v65 <= 254)
        {
          v98 = 0;
        }

        else
        {
          v98 = v67;
        }
      }

      else if (v61)
      {
        v98 = 0;
      }

      else if (v65 <= 254)
      {
        v98 = v67;
      }

      else
      {
        v98 = 0;
      }

LABEL_252:
      v141 = v98;
      v159.i32[0] = -1056833530;
      v160 = &v141;
      v161 = 0x100000001;
      v123 = sub_100276DA4();
      sub_10022CDA0(&v142, &v159, v123);
      goto LABEL_148;
    }

    if (v62 != 2)
    {
      if (v62 == 3)
      {
        v63 = a4 - (a4 < a4);
        a4 = v63;
        v64 = rint(a5);
        if (v61 == 2)
        {
          LODWORD(v64) = v63;
        }

        if (v64 <= -32768)
        {
          LODWORD(v64) = -32768;
        }

        if (v64 >= 0x7FFF)
        {
          LODWORD(v64) = 0x7FFF;
        }

        if ((v63 + 0x8000) < 0xFFFF)
        {
          a5 = v64;
          goto LABEL_115;
        }

        if (v61 < 2 || (v61 == 3 ? (v99 = v63 <= 32766) : (v99 = 1), v99 ? (v100 = 0) : (v100 = 1), v61 != 4 ? (v101 = v61 == 2) : (v101 = 1), v101 ? (v102 = v63 < -32768) : (v102 = 0), !v102 ? (v103 = v100 == 0) : (v103 = 0), !v103))
        {
          if (v61 == 1)
          {
            if (v63 <= 32766)
            {
              v104 = 0;
            }

            else
            {
              v104 = v64;
            }
          }

          else if (v61)
          {
            v104 = 0;
          }

          else if (v63 <= 32766)
          {
            v104 = v64;
          }

          else
          {
            v104 = 0;
          }

          v141 = v104;
          v159.i32[0] = -1056833530;
          v160 = &v141;
          v161 = 0x100000001;
          v124 = sub_100276DA4();
          sub_10022CDA0(&v142, &v159, v124);
          goto LABEL_148;
        }

LABEL_242:
        v159.i32[0] = 33619968;
        v160 = &v142;
        v161 = 0;
        sub_10022B754(&v150, &v159);
        goto LABEL_148;
      }

LABEL_101:
      v159 = 0;
      v160 = 0;
      sub_1002A8980(-210, &v159, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1509);
    }

    v69 = a4 - (a4 < a4);
    a4 = v69;
    v70 = rint(a5);
    if (v61 == 2)
    {
      LODWORD(v70) = v69;
    }

    v71 = v70 & ~(v70 >> 31);
    if (v71 >= 0xFFFF)
    {
      v71 = 0xFFFF;
    }

    if (v69 < 0xFFFF)
    {
      v68 = v71;
      goto LABEL_114;
    }

    if (v61 >= 2)
    {
      if (v61 != 4 && v61 != 2)
      {
        if (v61 != 3 || v69 <= 65534)
        {
          goto LABEL_242;
        }

LABEL_260:
        v98 = 0;
        goto LABEL_252;
      }

      if ((v69 & 0x80000000) == 0)
      {
        goto LABEL_242;
      }
    }

    if (v61 == 1)
    {
      if (v69 <= 65534)
      {
        v98 = 0;
      }

      else
      {
        v98 = v71;
      }

      goto LABEL_252;
    }

    if (!v61)
    {
      if (v69 <= 65534)
      {
        v98 = v71;
      }

      else
      {
        v98 = 0;
      }

      goto LABEL_252;
    }

    goto LABEL_260;
  }

  if (v62 - 5 >= 2)
  {
    goto LABEL_101;
  }

LABEL_115:
  LODWORD(v141) = 0;
  HIDWORD(v141) = DWORD2(v142);
  v133 = v150;
  v134 = v151;
  v135 = v152;
  v136 = v153;
  v137 = v154;
  v138 = &v133 + 8;
  v139 = v140;
  v140[0] = 0;
  v140[1] = 0;
  if (v154)
  {
    atomic_fetch_add((v154 + 20), 1u);
    if (SDWORD1(v150) <= 2)
    {
LABEL_117:
      v72 = v156;
      v73 = v139;
      *v139 = *v156;
      v73[1] = v72[1];
      goto LABEL_120;
    }
  }

  else if (SDWORD1(v150) <= 2)
  {
    goto LABEL_117;
  }

  DWORD1(v133) = 0;
  sub_100269B58(&v133, &v150);
LABEL_120:
  v125 = v142;
  v126 = v143;
  v127 = v144;
  v128 = v145;
  v129 = v146;
  v130 = &v125 + 8;
  v131 = v132;
  v132[0] = 0;
  v132[1] = 0;
  if (!v146)
  {
    if (SDWORD1(v142) <= 2)
    {
      goto LABEL_122;
    }

LABEL_124:
    DWORD1(v125) = 0;
    sub_100269B58(&v125, &v142);
    goto LABEL_125;
  }

  atomic_fetch_add((v146 + 20), 1u);
  if (SDWORD1(v142) > 2)
  {
    goto LABEL_124;
  }

LABEL_122:
  v74 = v148;
  v75 = v131;
  *v131 = *v148;
  v75[1] = v74[1];
LABEL_125:
  sub_100371778(&v159, &v133, &v125, v61, a4, a5);
  if (SDWORD1(v142) >= 3)
  {
    v77 = (v147 + 4);
    v78 = 1;
    v79 = DWORD1(v142) & 0x7FFFFFFE;
    v80 = 1;
    do
    {
      v78 *= *(v77 - 1);
      v80 *= *v77;
      v77 += 2;
      v79 -= 2;
    }

    while (v79);
    v76 = v80 * v78;
    v81 = DWORD1(v142) - (DWORD1(v142) & 0x7FFFFFFE);
    if (v81)
    {
      v82 = &v147[8 * ((DWORD1(v142) >> 1) & 0x3FFFFFFF)];
      do
      {
        v83 = *v82;
        v82 += 4;
        v76 *= v83;
        --v81;
      }

      while (v81);
    }
  }

  else
  {
    v76 = SHIDWORD(v142) * SDWORD2(v142);
  }

  sub_1002829C8(&v141, &v159, vcvtd_n_f64_u64(v76, 0x10uLL));
  sub_100375B64(&v159);
  if (v129 && atomic_fetch_add((v129 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v125);
  }

  v129 = 0;
  v126 = 0u;
  v127 = 0u;
  if (SDWORD1(v125) >= 1)
  {
    v84 = 0;
    v85 = v130;
    do
    {
      *&v85[4 * v84++] = 0;
    }

    while (v84 < SDWORD1(v125));
  }

  if (v131 != v132)
  {
    j__free(v131);
  }

  if (v137 && atomic_fetch_add((v137 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v133);
  }

  v137 = 0;
  v134 = 0u;
  v135 = 0u;
  if (SDWORD1(v133) >= 1)
  {
    v86 = 0;
    v87 = v138;
    do
    {
      *&v87[4 * v86++] = 0;
    }

    while (v86 < SDWORD1(v133));
  }

  if (v139 != v140)
  {
    j__free(v139);
  }

LABEL_148:
  if (v146 && atomic_fetch_add((v146 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v142);
  }

  v146 = 0;
  v143 = 0u;
  v144 = 0u;
  if (SDWORD1(v142) >= 1)
  {
    v88 = 0;
    v89 = v147;
    do
    {
      *&v89[4 * v88++] = 0;
    }

    while (v88 < SDWORD1(v142));
  }

  if (v148 != v149)
  {
    j__free(v148);
  }

  if (v154 && atomic_fetch_add((v154 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v150);
  }

  v154 = 0;
  v151 = 0u;
  v152 = 0u;
  if (SDWORD1(v150) >= 1)
  {
    v90 = 0;
    v91 = v155;
    do
    {
      v91->i32[v90++] = 0;
    }

    while (v90 < SDWORD1(v150));
  }

  if (v156 != v157)
  {
    j__free(v156);
  }

  if (v158[2])
  {
    sub_1002ACC1C(v158);
  }

  return a4;
}

void sub_10037121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, __int128 a60)
{
  sub_100006D14(&a35);
  sub_100006D14(&a47);
  sub_1001D8BF4(&a60);
  _Unwind_Resume(a1);
}

void sub_100371300(void *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  JUMPOUT(0x10037131CLL);
}

void sub_100371324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  sub_100006D14(&a47);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_100371340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

double sub_100371358(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  sub_10026AD20(a1, 0, 0, 0, v49);
  sub_10026AD20(a2, 0, 0, 0, &v41);
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = &v33 + 8;
  v39 = v40;
  v40[0] = 0;
  v40[1] = 0;
  if (v45)
  {
    atomic_fetch_add((v45 + 20), 1u);
    if (SDWORD1(v41) <= 2)
    {
LABEL_3:
      v9 = v47;
      v10 = v39;
      *v39 = *v47;
      v10[1] = v9[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v41) <= 2)
  {
    goto LABEL_3;
  }

  DWORD1(v33) = 0;
  sub_100269B58(&v33, &v41);
LABEL_6:
  v11 = v51;
  v12 = *(v51 - 1);
  v13 = v46;
  if (v12 != *(v46 - 1))
  {
    goto LABEL_19;
  }

  if (v12 == 2)
  {
    if (*v51 != *v46 || v51[1] != v46[1])
    {
      goto LABEL_19;
    }
  }

  else if (v12 >= 1)
  {
    while (1)
    {
      v15 = *v11++;
      v14 = v15;
      v16 = *v13++;
      if (v14 != v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_14;
      }
    }

LABEL_19:
    v30 = 0;
    v31 = 0;
    qmemcpy(sub_1002A80E0(&v30, 108), "src.size == dst.size && src.channels() == dst.channels() && (src.depth() == dst.depth() || dst.depth() == 0)", 108);
    sub_1002A8980(-215, &v30, "cvThreshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1596);
  }

LABEL_14:
  if (((v41 ^ LOWORD(v49[0])) & 0xFF8) != 0)
  {
    goto LABEL_19;
  }

  v17 = v41 & 7;
  if ((v49[0] & 7) != v17 && v17 != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v30) = 16842752;
  v31 = v49;
  v32 = 0;
  v27 = 33619968;
  v28 = &v41;
  v29 = 0;
  v19 = sub_100370304(&v30, &v27, a3, a4, a5);
  if (v34 != v42)
  {
    LODWORD(v30) = 33619968;
    v31 = &v33;
    v32 = 0;
    sub_10020EF14(&v41, &v30, v33 & 7, 1.0, 0.0);
  }

  if (v37 && atomic_fetch_add((v37 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v33);
  }

  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  if (SDWORD1(v33) >= 1)
  {
    v20 = 0;
    v21 = v38;
    do
    {
      *&v21[4 * v20++] = 0;
    }

    while (v20 < SDWORD1(v33));
  }

  if (v39 != v40)
  {
    j__free(v39);
  }

  if (v45 && atomic_fetch_add((v45 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v41);
  }

  v45 = 0;
  v42 = 0u;
  v43 = 0u;
  if (SDWORD1(v41) >= 1)
  {
    v22 = 0;
    v23 = v46;
    do
    {
      v23[v22++] = 0;
    }

    while (v22 < SDWORD1(v41));
  }

  if (v47 != &v48)
  {
    j__free(v47);
  }

  if (v50 && atomic_fetch_add((v50 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v49);
  }

  v50 = 0;
  memset(&v49[1], 0, 32);
  if (SDWORD1(v49[0]) >= 1)
  {
    v24 = 0;
    v25 = v51;
    do
    {
      v25[v24++] = 0;
    }

    while (v24 < SDWORD1(v49[0]));
  }

  if (v52 != &v53)
  {
    j__free(v52);
  }

  return v19;
}

void sub_10037170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_100006D14(va);
  sub_100006D14(v26 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_100371778(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  *a1 = &off_10047B798;
  *(a1 + 8) = 1124007936;
  v11 = (a1 + 8);
  *(a1 + 12) = 0u;
  v12 = (a1 + 12);
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 1124007936;
  v13 = (a1 + 104);
  *(a1 + 108) = 0u;
  v14 = (a1 + 108);
  *(a1 + 96) = 0;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  if (a1 + 8 != a2)
  {
    v16 = *(a2 + 56);
    if (v16)
    {
      atomic_fetch_add((v16 + 20), 1u);
      v17 = *(a1 + 64);
      if (v17)
      {
        if (atomic_fetch_add((v17 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 8);
        }
      }
    }

    *(a1 + 64) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    if (*(a1 + 12) <= 0)
    {
      *v11 = *a2;
      v21 = *(a2 + 4);
      if (v21 <= 2)
      {
LABEL_11:
        *(a1 + 12) = v21;
        *(a1 + 16) = *(a2 + 8);
        v22 = *(a2 + 72);
        v23 = *(a1 + 80);
        *v23 = *v22;
        v23[1] = v22[1];
LABEL_14:
        *(a1 + 24) = *(a2 + 16);
        *(a1 + 40) = *(a2 + 32);
        *(a1 + 56) = *(a2 + 48);
        goto LABEL_15;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(a1 + 72);
      do
      {
        *(v19 + 4 * v18++) = 0;
        v20 = *v12;
      }

      while (v18 < v20);
      *v11 = *a2;
      if (v20 <= 2)
      {
        v21 = *(a2 + 4);
        if (v21 <= 2)
        {
          goto LABEL_11;
        }
      }
    }

    sub_100269B58(v11, a2);
    goto LABEL_14;
  }

LABEL_15:
  if (v13 != a3)
  {
    v24 = *(a3 + 56);
    if (v24)
    {
      atomic_fetch_add((v24 + 20), 1u);
    }

    v25 = *(a1 + 160);
    if (v25 && atomic_fetch_add((v25 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v13);
    }

    *(a1 + 160) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    if (*(a1 + 108) <= 0)
    {
      *v13 = *a3;
      v29 = *(a3 + 4);
      if (v29 <= 2)
      {
LABEL_26:
        *(a1 + 108) = v29;
        *(a1 + 112) = *(a3 + 8);
        v30 = *(a3 + 72);
        v31 = *(a1 + 176);
        *v31 = *v30;
        v31[1] = v30[1];
LABEL_29:
        *(a1 + 120) = *(a3 + 16);
        *(a1 + 136) = *(a3 + 32);
        *(a1 + 152) = *(a3 + 48);
        goto LABEL_30;
      }
    }

    else
    {
      v26 = 0;
      v27 = *(a1 + 168);
      do
      {
        *(v27 + 4 * v26++) = 0;
        v28 = *v14;
      }

      while (v26 < v28);
      *v13 = *a3;
      if (v28 <= 2)
      {
        v29 = *(a3 + 4);
        if (v29 <= 2)
        {
          goto LABEL_26;
        }
      }
    }

    sub_100269B58(v13, a3);
    goto LABEL_29;
  }

LABEL_30:
  *(a1 + 200) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a4;
  return a1;
}

void sub_100371A44(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  sub_100006D14(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_100371A68(uint64_t a1)
{
  sub_100375B64(a1);

  operator delete();
}

void sub_100371AA0(uint64_t a1, _DWORD *a2)
{
  v4 = a2[1];
  LODWORD(__b) = *a2;
  v3 = __b;
  DWORD1(__b) = v4;
  v729[0] = 0x7FFFFFFF80000000;
  sub_10026A3FC(&v736, (a1 + 8), &__b, v729);
  *&__b = __PAIR64__(v4, v3);
  v744 = 0x7FFFFFFF80000000;
  sub_10026A3FC(v729, (a1 + 104), &__b, &v744);
  v5 = v736 & 7;
  if (v5 <= 2)
  {
    if ((v736 & 7) != 0)
    {
      if (v5 != 2)
      {
        goto LABEL_1138;
      }

      v19 = *(a1 + 200);
      v20 = *(a1 + 208);
      v21 = *(a1 + 216);
      v22 = *v741;
      v23 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
      if ((v736 & v729[0] & 0x4000) != 0)
      {
        v23 *= v22;
        v24 = v23;
        v22 = 1;
        v25 = v23;
      }

      else
      {
        v25 = v743 / ((0x88442211uLL >> (4 * (v736 & 7))) & 0xF);
        v24 = v735 / ((0x88442211uLL >> (4 * (v729[0] & 7))) & 0xF);
      }

      v115 = v738;
      v116 = v730;
      v117 = v19;
      v118 = v20;
      if ((sub_1002A8904(3) & 1) != 0 || sub_1002A8904(100))
      {
        v119 = vdupq_n_s16(v117);
        if (v21 > 1)
        {
          if (v21 != 2)
          {
            if (v21 != 3)
            {
              if (v21 != 4 || v22 < 1)
              {
                goto LABEL_1138;
              }

              v120 = 0;
              v121 = v116 - v115;
              v122 = vdup_n_s16(v117);
              while (1)
              {
                if (v23 >= 16)
                {
                  v124 = 0;
                  v125 = 0;
                  do
                  {
                    v126 = vbicq_s8(*(v115 + v124 + 16), vcgtq_u16(*(v115 + v124 + 16), v119));
                    v127 = (v116 + v124);
                    *v127 = vbicq_s8(*(v115 + v124), vcgtq_u16(*(v115 + v124), v119));
                    v127[1] = v126;
                    v125 += 16;
                    v124 += 32;
                  }

                  while (v125 <= v23 - 16);
                  v123 = v125;
                  if (v125 >= v23)
                  {
                    goto LABEL_135;
                  }
                }

                else
                {
                  v123 = 0;
                  if (v23 <= 0)
                  {
                    goto LABEL_135;
                  }
                }

                v128 = v23 - v123;
                if (v128 < 4)
                {
                  v130 = v123;
                  goto LABEL_157;
                }

                if (v121 + 2 * (v24 - v25) * v120 < 0x20)
                {
                  v130 = v123;
                  goto LABEL_157;
                }

                if (v128 >= 0x10)
                {
                  v129 = v128 & 0xFFFFFFFFFFFFFFF0;
                  v131 = 2 * v123;
                  v132 = v128 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v133 = vbicq_s8(*(v115 + v131 + 16), vcgtq_u16(*(v115 + v131 + 16), v119));
                    v134 = (v116 + v131);
                    *v134 = vbicq_s8(*(v115 + v131), vcgtq_u16(*(v115 + v131), v119));
                    v134[1] = v133;
                    v131 += 32;
                    v132 -= 16;
                  }

                  while (v132);
                  if (v128 == v129)
                  {
                    goto LABEL_135;
                  }

                  if ((v128 & 0xC) == 0)
                  {
                    v130 = v129 + v123;
                    do
                    {
LABEL_157:
                      v137 = *(v115 + 2 * v130);
                      if (v137 > v117)
                      {
                        LOWORD(v137) = 0;
                      }

                      *(v116 + 2 * v130++) = v137;
                    }

                    while (v23 != v130);
                    goto LABEL_135;
                  }
                }

                else
                {
                  v129 = 0;
                }

                v130 = (v128 & 0xFFFFFFFFFFFFFFFCLL) + v123;
                v135 = v129 - (v128 & 0xFFFFFFFFFFFFFFFCLL);
                v136 = 2 * (v129 + v123);
                do
                {
                  *(v116 + v136) = vbic_s8(*(v115 + v136), vcgt_u16(*(v115 + v136), v122));
                  v136 += 8;
                  v135 += 4;
                }

                while (v135);
                if (v128 != (v128 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_157;
                }

LABEL_135:
                ++v120;
                v116 += 2 * v24;
                v115 += 2 * v25;
                if (v120 == v22)
                {
                  goto LABEL_1138;
                }
              }
            }

            if (v22 < 1)
            {
              goto LABEL_1138;
            }

            v419 = 0;
            v420 = v116 - v115;
            v421 = vdup_n_s16(v117);
            while (1)
            {
              if (v23 >= 16)
              {
                v423 = 0;
                v424 = 0;
                do
                {
                  v425 = vandq_s8(*(v115 + v423 + 16), vcgtq_u16(*(v115 + v423 + 16), v119));
                  v426 = (v116 + v423);
                  *v426 = vandq_s8(*(v115 + v423), vcgtq_u16(*(v115 + v423), v119));
                  v426[1] = v425;
                  v424 += 16;
                  v423 += 32;
                }

                while (v424 <= v23 - 16);
                v422 = v424;
                if (v424 >= v23)
                {
                  goto LABEL_628;
                }
              }

              else
              {
                v422 = 0;
                if (v23 <= 0)
                {
                  goto LABEL_628;
                }
              }

              v427 = v23 - v422;
              if (v427 < 4)
              {
                v429 = v422;
                goto LABEL_650;
              }

              if (v420 + 2 * (v24 - v25) * v419 < 0x20)
              {
                v429 = v422;
                goto LABEL_650;
              }

              if (v427 >= 0x10)
              {
                v428 = v427 & 0xFFFFFFFFFFFFFFF0;
                v430 = 2 * v422;
                v431 = v427 & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v432 = vandq_s8(*(v115 + v430 + 16), vcgtq_u16(*(v115 + v430 + 16), v119));
                  v433 = (v116 + v430);
                  *v433 = vandq_s8(*(v115 + v430), vcgtq_u16(*(v115 + v430), v119));
                  v433[1] = v432;
                  v430 += 32;
                  v431 -= 16;
                }

                while (v431);
                if (v427 == v428)
                {
                  goto LABEL_628;
                }

                if ((v427 & 0xC) == 0)
                {
                  v429 = v428 + v422;
                  do
                  {
LABEL_650:
                    v436 = *(v115 + 2 * v429);
                    if (v436 <= v117)
                    {
                      LOWORD(v436) = 0;
                    }

                    *(v116 + 2 * v429++) = v436;
                  }

                  while (v23 != v429);
                  goto LABEL_628;
                }
              }

              else
              {
                v428 = 0;
              }

              v429 = (v427 & 0xFFFFFFFFFFFFFFFCLL) + v422;
              v434 = v428 - (v427 & 0xFFFFFFFFFFFFFFFCLL);
              v435 = 2 * (v428 + v422);
              do
              {
                *(v116 + v435) = vand_s8(*(v115 + v435), vcgt_u16(*(v115 + v435), v421));
                v435 += 8;
                v434 += 4;
              }

              while (v434);
              if (v427 != (v427 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_650;
              }

LABEL_628:
              ++v419;
              v116 += 2 * v24;
              v115 += 2 * v25;
              if (v419 == v22)
              {
                goto LABEL_1138;
              }
            }
          }

          if (v22 < 1)
          {
            goto LABEL_1138;
          }

          v397 = 0;
          v398 = v116 - v115;
          v399 = vdup_n_s16(v117);
          while (1)
          {
            if (v23 >= 16)
            {
              v401 = 0;
              v402 = 0;
              do
              {
                v403 = vminq_u16(*(v115 + v401 + 16), v119);
                v404 = (v116 + v401);
                *v404 = vminq_u16(*(v115 + v401), v119);
                v404[1] = v403;
                v402 += 16;
                v401 += 32;
              }

              while (v402 <= v23 - 16);
              v400 = v402;
              if (v402 >= v23)
              {
                goto LABEL_582;
              }
            }

            else
            {
              v400 = 0;
              if (v23 <= 0)
              {
                goto LABEL_582;
              }
            }

            v405 = v23 - v400;
            if (v405 < 4)
            {
              v407 = v400;
              goto LABEL_604;
            }

            if (v398 + 2 * (v24 - v25) * v397 < 0x20)
            {
              v407 = v400;
              goto LABEL_604;
            }

            if (v405 >= 0x10)
            {
              v406 = v405 & 0xFFFFFFFFFFFFFFF0;
              v408 = 2 * v400;
              v409 = v405 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v410 = vminq_u16(v119, *(v115 + v408 + 16));
                v411 = (v116 + v408);
                *v411 = vminq_u16(v119, *(v115 + v408));
                v411[1] = v410;
                v408 += 32;
                v409 -= 16;
              }

              while (v409);
              if (v405 == v406)
              {
                goto LABEL_582;
              }

              if ((v405 & 0xC) == 0)
              {
                v407 = v406 + v400;
                do
                {
LABEL_604:
                  v414 = *(v115 + 2 * v407);
                  if (v117 < v414)
                  {
                    LOWORD(v414) = v19;
                  }

                  *(v116 + 2 * v407++) = v414;
                }

                while (v23 != v407);
                goto LABEL_582;
              }
            }

            else
            {
              v406 = 0;
            }

            v407 = (v405 & 0xFFFFFFFFFFFFFFFCLL) + v400;
            v412 = v406 - (v405 & 0xFFFFFFFFFFFFFFFCLL);
            v413 = 2 * (v406 + v400);
            do
            {
              *(v116 + v413) = vmin_u16(v399, *(v115 + v413));
              v413 += 8;
              v412 += 4;
            }

            while (v412);
            if (v405 != (v405 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_604;
            }

LABEL_582:
            ++v397;
            v116 += 2 * v24;
            v115 += 2 * v25;
            if (v397 == v22)
            {
              goto LABEL_1138;
            }
          }
        }

        v194 = vdupq_n_s16(v118);
        if (v21)
        {
          if (v21 != 1 || v22 < 1)
          {
            goto LABEL_1138;
          }

          v195 = 0;
          v196 = v116 - v115;
          v197 = vdup_n_s16(v117);
          v198 = vdup_n_s16(v118);
          while (1)
          {
            if (v23 >= 16)
            {
              v200 = 0;
              v201 = 0;
              do
              {
                v202 = vbicq_s8(v194, vcgtq_u16(*(v115 + v200 + 16), v119));
                v203 = (v116 + v200);
                *v203 = vbicq_s8(v194, vcgtq_u16(*(v115 + v200), v119));
                v203[1] = v202;
                v201 += 16;
                v200 += 32;
              }

              while (v201 <= v23 - 16);
              v199 = v201;
              if (v201 >= v23)
              {
                goto LABEL_251;
              }
            }

            else
            {
              v199 = 0;
              if (v23 <= 0)
              {
                goto LABEL_251;
              }
            }

            v204 = v23 - v199;
            if (v204 < 4)
            {
              v206 = v199;
              goto LABEL_273;
            }

            if (v196 + 2 * (v24 - v25) * v195 < 0x20)
            {
              v206 = v199;
              goto LABEL_273;
            }

            if (v204 >= 0x10)
            {
              v205 = v204 & 0xFFFFFFFFFFFFFFF0;
              v207 = 2 * v199;
              v208 = v204 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v209 = vbicq_s8(v194, vcgtq_u16(*(v115 + v207 + 16), v119));
                v210 = (v116 + v207);
                *v210 = vbicq_s8(v194, vcgtq_u16(*(v115 + v207), v119));
                v210[1] = v209;
                v207 += 32;
                v208 -= 16;
              }

              while (v208);
              if (v204 == v205)
              {
                goto LABEL_251;
              }

              if ((v204 & 0xC) == 0)
              {
                v206 = v205 + v199;
                do
                {
LABEL_273:
                  if (*(v115 + 2 * v206) <= v117)
                  {
                    v213 = v20;
                  }

                  else
                  {
                    v213 = 0;
                  }

                  *(v116 + 2 * v206++) = v213;
                }

                while (v23 != v206);
                goto LABEL_251;
              }
            }

            else
            {
              v205 = 0;
            }

            v206 = (v204 & 0xFFFFFFFFFFFFFFFCLL) + v199;
            v211 = v205 - (v204 & 0xFFFFFFFFFFFFFFFCLL);
            v212 = 2 * (v205 + v199);
            do
            {
              *(v116 + v212) = vbic_s8(v198, vcgt_u16(*(v115 + v212), v197));
              v212 += 8;
              v211 += 4;
            }

            while (v211);
            if (v204 != (v204 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_273;
            }

LABEL_251:
            ++v195;
            v116 += 2 * v24;
            v115 += 2 * v25;
            if (v195 == v22)
            {
              goto LABEL_1138;
            }
          }
        }

        if (v22 < 1)
        {
          goto LABEL_1138;
        }

        v453 = 0;
        v454 = v116 - v115;
        v455 = vdup_n_s16(v117);
        v456 = vdup_n_s16(v118);
        while (1)
        {
          if (v23 >= 16)
          {
            v458 = 0;
            v459 = 0;
            do
            {
              v460 = vandq_s8(v194, vcgtq_u16(*(v115 + v458 + 16), v119));
              v461 = (v116 + v458);
              *v461 = vandq_s8(v194, vcgtq_u16(*(v115 + v458), v119));
              v461[1] = v460;
              v459 += 16;
              v458 += 32;
            }

            while (v459 <= v23 - 16);
            v457 = v459;
            if (v459 >= v23)
            {
              goto LABEL_677;
            }
          }

          else
          {
            v457 = 0;
            if (v23 <= 0)
            {
              goto LABEL_677;
            }
          }

          v462 = v23 - v457;
          if (v462 < 4)
          {
            v464 = v457;
            goto LABEL_699;
          }

          if (v454 + 2 * (v24 - v25) * v453 < 0x20)
          {
            v464 = v457;
            goto LABEL_699;
          }

          if (v462 >= 0x10)
          {
            v463 = v462 & 0xFFFFFFFFFFFFFFF0;
            v465 = 2 * v457;
            v466 = v462 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v467 = vandq_s8(v194, vcgtq_u16(*(v115 + v465 + 16), v119));
              v468 = (v116 + v465);
              *v468 = vandq_s8(v194, vcgtq_u16(*(v115 + v465), v119));
              v468[1] = v467;
              v465 += 32;
              v466 -= 16;
            }

            while (v466);
            if (v462 == v463)
            {
              goto LABEL_677;
            }

            if ((v462 & 0xC) == 0)
            {
              v464 = v463 + v457;
              do
              {
LABEL_699:
                if (*(v115 + 2 * v464) <= v117)
                {
                  v471 = 0;
                }

                else
                {
                  v471 = v20;
                }

                *(v116 + 2 * v464++) = v471;
              }

              while (v23 != v464);
              goto LABEL_677;
            }
          }

          else
          {
            v463 = 0;
          }

          v464 = (v462 & 0xFFFFFFFFFFFFFFFCLL) + v457;
          v469 = v463 - (v462 & 0xFFFFFFFFFFFFFFFCLL);
          v470 = 2 * (v463 + v457);
          do
          {
            *(v116 + v470) = vand_s8(v456, vcgt_u16(*(v115 + v470), v455));
            v470 += 8;
            v469 += 4;
          }

          while (v469);
          if (v462 != (v462 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_699;
          }

LABEL_677:
          ++v453;
          v116 += 2 * v24;
          v115 += 2 * v25;
          if (v453 == v22)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          if (v21 != 3)
          {
            if (v21 == 4)
            {
              v252 = (v22 - 1);
              if (v22 < 1 || v23 < 1)
              {
                goto LABEL_1138;
              }

              v253 = 0;
              v255 = v116 < v115 + 2 * (v23 + v25 * v252) && v115 < v116 + 2 * (v23 + v24 * v252);
              v256 = vdupq_n_s16(v117);
              while (1)
              {
                if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v255)
                {
                  for (i = 0; i != v23; *(v116 + 2 * i++) = v264)
                  {
LABEL_376:
                    v264 = *(v115 + 2 * i);
                    if (v264 > v117)
                    {
                      LOWORD(v264) = 0;
                    }
                  }

                  goto LABEL_364;
                }

                if (v23 >= 0x10)
                {
                  v259 = 0;
                  do
                  {
                    v260 = vbicq_s8(*(v115 + v259 + 16), vcgtq_u16(*(v115 + v259 + 16), v256));
                    v261 = (v116 + v259);
                    *v261 = vbicq_s8(*(v115 + v259), vcgtq_u16(*(v115 + v259), v256));
                    v261[1] = v260;
                    v259 += 32;
                  }

                  while (32 * ((v23 >> 4) & 0x7FFFFFF) != v259);
                  if ((v23 & 0x7FFFFFF0) == v23)
                  {
                    goto LABEL_364;
                  }

                  v258 = v23 & 0x7FFFFFF0;
                  i = v258;
                  if ((v23 & 0xC) == 0)
                  {
                    goto LABEL_376;
                  }
                }

                else
                {
                  v258 = 0;
                }

                v262 = 2 * v258;
                v263 = v258 - (v23 & 0x7FFFFFFC);
                do
                {
                  *(v116 + v262) = vbic_s8(*(v115 + v262), vcgt_u16(*(v115 + v262), *v256.i8));
                  v262 += 8;
                  v263 += 4;
                }

                while (v263);
                i = v23 & 0x7FFFFFFC;
                if (i != v23)
                {
                  goto LABEL_376;
                }

LABEL_364:
                ++v253;
                v115 += 2 * v25;
                v116 += 2 * v24;
                if (v253 == v22)
                {
                  goto LABEL_1138;
                }
              }
            }

LABEL_1079:
            __b = 0uLL;
            sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
          }

          v650 = (v22 - 1);
          if (v22 < 1 || v23 < 1)
          {
            goto LABEL_1138;
          }

          v651 = 0;
          v653 = v116 < v115 + 2 * (v23 + v25 * v650) && v115 < v116 + 2 * (v23 + v24 * v650);
          v654 = vdupq_n_s16(v117);
          while (1)
          {
            if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v653)
            {
              for (j = 0; j != v23; *(v116 + 2 * j++) = v662)
              {
LABEL_1027:
                v662 = *(v115 + 2 * j);
                if (v662 <= v117)
                {
                  LOWORD(v662) = 0;
                }
              }

              goto LABEL_1015;
            }

            if (v23 >= 0x10)
            {
              v657 = 0;
              do
              {
                v658 = vandq_s8(*(v115 + v657 + 16), vcgtq_u16(*(v115 + v657 + 16), v654));
                v659 = (v116 + v657);
                *v659 = vandq_s8(*(v115 + v657), vcgtq_u16(*(v115 + v657), v654));
                v659[1] = v658;
                v657 += 32;
              }

              while (32 * ((v23 >> 4) & 0x7FFFFFF) != v657);
              if ((v23 & 0x7FFFFFF0) == v23)
              {
                goto LABEL_1015;
              }

              v656 = v23 & 0x7FFFFFF0;
              j = v656;
              if ((v23 & 0xC) == 0)
              {
                goto LABEL_1027;
              }
            }

            else
            {
              v656 = 0;
            }

            v660 = 2 * v656;
            v661 = v656 - (v23 & 0x7FFFFFFC);
            do
            {
              *(v116 + v660) = vand_s8(*(v115 + v660), vcgt_u16(*(v115 + v660), *v654.i8));
              v660 += 8;
              v661 += 4;
            }

            while (v661);
            j = v23 & 0x7FFFFFFC;
            if (j != v23)
            {
              goto LABEL_1027;
            }

LABEL_1015:
            ++v651;
            v115 += 2 * v25;
            v116 += 2 * v24;
            if (v651 == v22)
            {
              goto LABEL_1138;
            }
          }
        }

        v637 = (v22 - 1);
        if (v22 < 1 || v23 < 1)
        {
          goto LABEL_1138;
        }

        v638 = 0;
        v640 = v116 < v115 + 2 * (v23 + v25 * v637) && v115 < v116 + 2 * (v23 + v24 * v637);
        v641 = vdupq_n_s16(v117);
        while (1)
        {
          if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v640)
          {
            for (k = 0; k != v23; *(v116 + 2 * k++) = v649)
            {
LABEL_1002:
              v649 = *(v115 + 2 * k);
              if (v117 < v649)
              {
                LOWORD(v649) = v19;
              }
            }

            goto LABEL_990;
          }

          if (v23 >= 0x10)
          {
            v644 = 0;
            do
            {
              v645 = vminq_u16(v641, *(v115 + v644 + 16));
              v646 = (v116 + v644);
              *v646 = vminq_u16(v641, *(v115 + v644));
              v646[1] = v645;
              v644 += 32;
            }

            while (32 * ((v23 >> 4) & 0x7FFFFFF) != v644);
            if ((v23 & 0x7FFFFFF0) == v23)
            {
              goto LABEL_990;
            }

            v643 = v23 & 0x7FFFFFF0;
            k = v643;
            if ((v23 & 0xC) == 0)
            {
              goto LABEL_1002;
            }
          }

          else
          {
            v643 = 0;
          }

          v647 = 2 * v643;
          v648 = v643 - (v23 & 0x7FFFFFFC);
          do
          {
            *(v116 + v647) = vmin_u16(*v641.i8, *(v115 + v647));
            v647 += 8;
            v648 += 4;
          }

          while (v648);
          k = v23 & 0x7FFFFFFC;
          if (k != v23)
          {
            goto LABEL_1002;
          }

LABEL_990:
          ++v638;
          v115 += 2 * v25;
          v116 += 2 * v24;
          if (v638 == v22)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_1079;
        }

        v515 = (v22 - 1);
        if (v22 < 1 || v23 < 1)
        {
          goto LABEL_1138;
        }

        v516 = 0;
        v518 = v116 < v115 + 2 * (v23 + v25 * v515) && v115 < v116 + 2 * (v23 + v24 * v515);
        v519 = vdupq_n_s16(v117);
        v520 = vdupq_n_s16(v118);
        while (1)
        {
          if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v518)
          {
            for (m = 0; m != v23; *(v116 + 2 * m++) = v528)
            {
LABEL_800:
              if (*(v115 + 2 * m) <= v117)
              {
                v528 = v20;
              }

              else
              {
                v528 = 0;
              }
            }

            goto LABEL_788;
          }

          if (v23 >= 0x10)
          {
            v523 = 0;
            do
            {
              v524 = vbicq_s8(v520, vcgtq_u16(*(v115 + v523 + 16), v519));
              v525 = (v116 + v523);
              *v525 = vbicq_s8(v520, vcgtq_u16(*(v115 + v523), v519));
              v525[1] = v524;
              v523 += 32;
            }

            while (32 * ((v23 >> 4) & 0x7FFFFFF) != v523);
            if ((v23 & 0x7FFFFFF0) == v23)
            {
              goto LABEL_788;
            }

            v522 = v23 & 0x7FFFFFF0;
            m = v522;
            if ((v23 & 0xC) == 0)
            {
              goto LABEL_800;
            }
          }

          else
          {
            v522 = 0;
          }

          v526 = 2 * v522;
          v527 = v522 - (v23 & 0x7FFFFFFC);
          do
          {
            *(v116 + v526) = vbic_s8(*v520.i8, vcgt_u16(*(v115 + v526), *v519.i8));
            v526 += 8;
            v527 += 4;
          }

          while (v527);
          m = v23 & 0x7FFFFFFC;
          if (m != v23)
          {
            goto LABEL_800;
          }

LABEL_788:
          ++v516;
          v115 += 2 * v25;
          v116 += 2 * v24;
          if (v516 == v22)
          {
            goto LABEL_1138;
          }
        }
      }

      v678 = (v22 - 1);
      if (v22 < 1 || v23 < 1)
      {
        goto LABEL_1138;
      }

      v679 = 0;
      v681 = v116 < v115 + 2 * (v23 + v25 * v678) && v115 < v116 + 2 * (v23 + v24 * v678);
      v682 = vdupq_n_s16(v117);
      v683 = vdupq_n_s16(v118);
      while (1)
      {
        if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v681)
        {
          for (n = 0; n != v23; *(v116 + 2 * n++) = v691)
          {
LABEL_1071:
            if (*(v115 + 2 * n) <= v117)
            {
              v691 = 0;
            }

            else
            {
              v691 = v20;
            }
          }

          goto LABEL_1059;
        }

        if (v23 >= 0x10)
        {
          v686 = 0;
          do
          {
            v687 = vandq_s8(v683, vcgtq_u16(*(v115 + v686 + 16), v682));
            v688 = (v116 + v686);
            *v688 = vandq_s8(v683, vcgtq_u16(*(v115 + v686), v682));
            v688[1] = v687;
            v686 += 32;
          }

          while (32 * ((v23 >> 4) & 0x7FFFFFF) != v686);
          if ((v23 & 0x7FFFFFF0) == v23)
          {
            goto LABEL_1059;
          }

          v685 = v23 & 0x7FFFFFF0;
          n = v685;
          if ((v23 & 0xC) == 0)
          {
            goto LABEL_1071;
          }
        }

        else
        {
          v685 = 0;
        }

        v689 = 2 * v685;
        v690 = v685 - (v23 & 0x7FFFFFFC);
        do
        {
          *(v116 + v689) = vand_s8(*v683.i8, vcgt_u16(*(v115 + v689), *v682.i8));
          v689 += 8;
          v690 += 4;
        }

        while (v690);
        n = v23 & 0x7FFFFFFC;
        if (n != v23)
        {
          goto LABEL_1071;
        }

LABEL_1059:
        ++v679;
        v115 += 2 * v25;
        v116 += 2 * v24;
        if (v679 == v22)
        {
          goto LABEL_1138;
        }
      }
    }

    v99 = v743;
    v100 = *v741;
    v101 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
    v102 = v735;
    if ((v736 & 0x4000) != 0)
    {
      v103 = v101 * v100;
      if ((v729[0] & 0x4000) != 0)
      {
        v101 *= v100;
        v100 = 1;
        v102 = v103;
        v99 = v103;
      }
    }

    v104 = *(a1 + 200);
    v105 = *(a1 + 208);
    v106 = *(a1 + 216);
    v107 = v738;
    v108 = v730;
    v109 = v104;
    if ((sub_1002A8904(3) & 1) == 0 && !sub_1002A8904(100))
    {
      v110 = 0;
      goto LABEL_615;
    }

    v110 = 0;
    v111 = vdupq_n_s8(v109);
    if (v106 <= 1)
    {
      v174 = vdupq_n_s8(v105);
      if (v106)
      {
        if (v106 == 1)
        {
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (ii = 0; ii != v100; ++ii)
              {
                for (jj = 0; jj <= v112; jj += 16)
                {
                  *(v108 + jj) = vbicq_s8(v174, vcgtq_u8(*(v107 + jj), v111));
                }

                v107 += v99;
                v108 += v102;
              }

              goto LABEL_614;
            }
          }
        }
      }

      else
      {
        v110 = 0;
        if (v100 >= 1)
        {
          v112 = (v101 - 16);
          if (v101 >= 16)
          {
            for (kk = 0; kk != v100; ++kk)
            {
              for (mm = 0; mm <= v112; mm += 16)
              {
                *(v108 + mm) = vandq_s8(v174, vcgtq_u8(*(v107 + mm), v111));
              }

              v107 += v99;
              v108 += v102;
            }

            goto LABEL_614;
          }
        }
      }
    }

    else
    {
      switch(v106)
      {
        case 2:
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (nn = 0; nn != v100; ++nn)
              {
                for (i1 = 0; i1 <= v112; i1 += 16)
                {
                  *(v108 + i1) = vqsubq_u8(*(v107 + i1), vqsubq_u8(*(v107 + i1), v111));
                }

                v107 += v99;
                v108 += v102;
              }

              goto LABEL_614;
            }
          }

          break;
        case 3:
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (i2 = 0; i2 != v100; ++i2)
              {
                for (i3 = 0; i3 <= v112; i3 += 16)
                {
                  *(v108 + i3) = vandq_s8(*(v107 + i3), vcgtq_u8(*(v107 + i3), v111));
                }

                v107 += v99;
                v108 += v102;
              }

              goto LABEL_614;
            }
          }

          break;
        case 4:
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (i4 = 0; i4 != v100; ++i4)
              {
                for (i5 = 0; i5 <= v112; i5 += 16)
                {
                  *(v108 + i5) = vbicq_s8(*(v107 + i5), vcgtq_u8(*(v107 + i5), v111));
                }

                v107 += v99;
                v108 += v102;
              }

LABEL_614:
              v110 = (v112 & 0xFFFFFFF0) + 16;
            }
          }

          break;
      }
    }

LABEL_615:
    if (v110 >= v101)
    {
      goto LABEL_1138;
    }

    v417 = (v109 + 1);
    v757 = 0u;
    v758 = 0u;
    v755 = 0u;
    v756 = 0u;
    v753 = 0u;
    v754 = 0u;
    v751 = 0u;
    v752 = 0u;
    v749 = 0u;
    v750 = 0u;
    memset(v748, 0, sizeof(v748));
    memset(v747, 0, sizeof(v747));
    __b = 0u;
    v746 = 0u;
    if (v106 <= 1)
    {
      if (!v106)
      {
        bzero(&__b, (v109 + 1));
        if (v109 != 255)
        {
          memset(&__b + v417, v105, v109 ^ 0xFF);
        }

        goto LABEL_1127;
      }

      if (v106 == 1)
      {
        memset(&__b, v105, (v109 + 1));
        if (v109 != 255)
        {
          goto LABEL_625;
        }
      }

      goto LABEL_1127;
    }

    if (v106 != 2)
    {
      if (v106 != 3)
      {
        if (v106 != 4)
        {
          goto LABEL_1127;
        }

        if (v109 < 7)
        {
          v418 = 0;
          goto LABEL_1111;
        }

        if (v109 >= 0x1F)
        {
          v418 = (v109 + 1) & 0x1E0;
          __b = xmmword_1003EB180;
          v746 = xmmword_1003EB190;
          if (v418 != 32)
          {
            qmemcpy(v747, " !#$%&'()*+,-./0123456789:;<=>?", sizeof(v747));
            if (v418 != 64)
            {
              qmemcpy(v748, "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_", sizeof(v748));
              if (v418 != 96)
              {
                v749 = xmmword_1003EB1E0;
                v750 = xmmword_1003EB1F0;
                if (v418 != 128)
                {
                  v751 = xmmword_1003EB200;
                  v752 = xmmword_1003EB210;
                  if (v418 != 160)
                  {
                    v753 = xmmword_1003EB220;
                    v754 = xmmword_1003EB230;
                    if (v418 != 192)
                    {
                      v755 = xmmword_1003EB240;
                      v756 = xmmword_1003EB250;
                      if (v418 != 224)
                      {
                        v757 = xmmword_1003EB260;
                        v758 = xmmword_1003EB270;
                      }
                    }
                  }
                }
              }
            }
          }

          if (v418 == v417)
          {
            goto LABEL_1112;
          }

          if (((v109 + 1) & 0x18) == 0)
          {
            do
            {
LABEL_1111:
              *(&__b + v418) = v418;
              ++v418;
            }

            while (v417 != v418);
            goto LABEL_1112;
          }
        }

        else
        {
          v418 = 0;
        }

        v697 = v418;
        v418 = (v109 + 1) & 0x1F8;
        v698 = vorr_s8(vdup_n_s8(v697), 0x706050403020100);
        v699 = (&__b + v697);
        v700 = v697 - v418;
        do
        {
          *v699++ = v698;
          v698 = vadd_s8(v698, 0x808080808080808);
          v700 += 8;
        }

        while (v700);
        if (v418 != v417)
        {
          goto LABEL_1111;
        }

LABEL_1112:
        if (v109 != 255)
        {
LABEL_625:
          bzero(&__b + v417, v109 ^ 0xFF);
        }

LABEL_1127:
        if (v100 >= 1)
        {
          v711 = 0;
          v712 = v730;
          v713 = v738;
          v714 = v101 - 4;
          v715 = v738 + v110;
          v716 = v730 + v110;
          do
          {
            LODWORD(v717) = v110;
            if (v110 <= v714)
            {
              v717 = 0;
              do
              {
                v718 = *(&__b + *(v715 + v717 + 1));
                v719 = (v716 + v717);
                *v719 = *(&__b + *(v715 + v717));
                v719[1] = v718;
                v720 = *(&__b + *(v715 + v717 + 3));
                v719[2] = *(&__b + *(v715 + v717 + 2));
                v719[3] = v720;
                v717 += 4;
              }

              while (v110 + v717 <= v714);
              LODWORD(v717) = v110 + v717;
            }

            if (v717 < v101)
            {
              v717 = v717;
              do
              {
                *(v712 + v717) = *(&__b + *(v713 + v717));
                ++v717;
              }

              while (v101 != v717);
            }

            ++v711;
            v713 += v99;
            v712 += v102;
            v715 += v99;
            v716 += v102;
          }

          while (v711 != v100);
        }

        goto LABEL_1138;
      }

      bzero(&__b, (v109 + 1));
      if (v109 == 255)
      {
        goto LABEL_1127;
      }

      v530 = v109 + 1;
      v531 = v109 ^ 0xFF;
      if ((v109 ^ 0xFFuLL) >= 8)
      {
        if (v531 >= 0x20)
        {
          v701 = vdupq_n_s8(v530);
          v692 = ~v109 & 0xE0;
          v702 = (&__b + v530);
          *v702 = vaddq_s8(v701, xmmword_1003EB180);
          v702[1] = vaddq_s8(v701, xmmword_1003EB190);
          if (v692 != 32)
          {
            v703 = &__b + v109;
            *(v703 + 33) = vaddq_s8(v701, xmmword_1003EB1A0);
            *(v703 + 49) = vaddq_s8(v701, xmmword_1003EB1B0);
            if (v692 != 64)
            {
              v704 = &__b + v109;
              *(v704 + 65) = vaddq_s8(v701, xmmword_1003EB1C0);
              *(v704 + 81) = vaddq_s8(v701, xmmword_1003EB1D0);
              if (v692 != 96)
              {
                *(v704 + 97) = vaddq_s8(v701, xmmword_1003EB1E0);
                *(v704 + 113) = vaddq_s8(v701, xmmword_1003EB1F0);
                if (v692 != 128)
                {
                  v705 = &__b + v109;
                  *(v705 + 129) = vaddq_s8(v701, xmmword_1003EB200);
                  *(v705 + 145) = vaddq_s8(v701, xmmword_1003EB210);
                  if (v692 != 160)
                  {
                    *(v705 + 161) = vaddq_s8(v701, xmmword_1003EB220);
                    *(v705 + 177) = vaddq_s8(v701, xmmword_1003EB230);
                    if (v692 != 192)
                    {
                      v706 = &__b + v109;
                      *(v706 + 193) = vaddq_s8(v701, xmmword_1003EB240);
                      *(v706 + 209) = vaddq_s8(v701, xmmword_1003EB250);
                    }
                  }
                }
              }
            }
          }

          if (v531 == v692)
          {
            goto LABEL_1127;
          }

          v532 = v530 + v692;
          if ((~v109 & 0x18) == 0)
          {
            goto LABEL_1126;
          }
        }

        else
        {
          v692 = 0;
          LODWORD(v532) = v109 + 1;
        }

        v707 = vdup_n_s8(v532);
        v532 = v530 + (~v109 & 0xF8);
        v708 = vadd_s8(v707, 0x706050403020100);
        v709 = v692 - (~v109 & 0xF8);
        v710 = (&__b + v692 + v109 + 1);
        do
        {
          *v710++ = v708;
          v708 = vadd_s8(v708, 0x808080808080808);
          v709 += 8;
        }

        while (v709);
        if ((v109 ^ 0xFF) == (~v109 & 0xF8))
        {
          goto LABEL_1127;
        }
      }

      else
      {
        v532 = v109 + 1;
      }

      do
      {
LABEL_1126:
        *(&__b + v532) = v532;
        ++v532;
      }

      while (v532 != 256);
      goto LABEL_1127;
    }

    if (v109 >= 7)
    {
      if (v109 >= 0x1F)
      {
        v529 = (v109 + 1) & 0x1E0;
        __b = xmmword_1003EB180;
        v746 = xmmword_1003EB190;
        if (v529 != 32)
        {
          qmemcpy(v747, " !#$%&'()*+,-./0123456789:;<=>?", sizeof(v747));
          if (v529 != 64)
          {
            qmemcpy(v748, "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_", sizeof(v748));
            if (v529 != 96)
            {
              v749 = xmmword_1003EB1E0;
              v750 = xmmword_1003EB1F0;
              if (v529 != 128)
              {
                v751 = xmmword_1003EB200;
                v752 = xmmword_1003EB210;
                if (v529 != 160)
                {
                  v753 = xmmword_1003EB220;
                  v754 = xmmword_1003EB230;
                  if (v529 != 192)
                  {
                    v755 = xmmword_1003EB240;
                    v756 = xmmword_1003EB250;
                    if (v529 != 224)
                    {
                      v757 = xmmword_1003EB260;
                      v758 = xmmword_1003EB270;
                    }
                  }
                }
              }
            }
          }
        }

        if (v529 == v417)
        {
          goto LABEL_1096;
        }

        if (((v109 + 1) & 0x18) == 0)
        {
          goto LABEL_1095;
        }
      }

      else
      {
        v529 = 0;
      }

      v693 = v529;
      v529 = (v109 + 1) & 0x1F8;
      v694 = vorr_s8(vdup_n_s8(v693), 0x706050403020100);
      v695 = (&__b + v693);
      v696 = v693 - v529;
      do
      {
        *v695++ = v694;
        v694 = vadd_s8(v694, 0x808080808080808);
        v696 += 8;
      }

      while (v696);
      if (v529 == v417)
      {
LABEL_1096:
        if (v109 != 255)
        {
          memset(&__b + v417, v104, v109 ^ 0xFF);
        }

        goto LABEL_1127;
      }
    }

    else
    {
      v529 = 0;
    }

    do
    {
LABEL_1095:
      *(&__b + v529) = v529;
      ++v529;
    }

    while (v417 != v529);
    goto LABEL_1096;
  }

  if (v5 == 3)
  {
    v39 = *(a1 + 200);
    v40 = *(a1 + 208);
    v41 = *(a1 + 216);
    v42 = v738;
    v43 = *v741;
    v44 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
    v45 = v743 >> 1;
    v46 = v730;
    v47 = v735 >> 1;
    if ((v736 & 0x4000) != 0)
    {
      v48 = v44 * v43;
      if ((v729[0] & 0x4000) != 0)
      {
        v44 *= v43;
        v43 = 1;
        v47 = v48;
        v45 = v48;
      }
    }

    v49 = v39;
    v50 = v40;
    if ((sub_1002A8904(3) & 1) != 0 || sub_1002A8904(100))
    {
      v51 = vdupq_n_s16(v49);
      if (v41 > 1)
      {
        if (v41 != 2)
        {
          if (v41 != 3)
          {
            if (v41 == 4)
            {
              if (v43 < 1)
              {
                goto LABEL_1138;
              }

              v52 = 0;
              v53 = v46 - v42;
              v54 = vdup_n_s16(v49);
              while (1)
              {
                if (v44 >= 16)
                {
                  v56 = 0;
                  v57 = 0;
                  do
                  {
                    v58 = vbicq_s8(*(v42 + v56 + 16), vcgtq_s16(*(v42 + v56 + 16), v51));
                    v59 = (v46 + v56);
                    *v59 = vbicq_s8(*(v42 + v56), vcgtq_s16(*(v42 + v56), v51));
                    v59[1] = v58;
                    v57 += 16;
                    v56 += 32;
                  }

                  while (v57 <= v44 - 16);
                  v55 = v57;
                  if (v57 >= v44)
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  v55 = 0;
                  if (v44 <= 0)
                  {
                    goto LABEL_52;
                  }
                }

                v60 = v44 - v55;
                if (v60 < 4)
                {
                  v62 = v55;
                  goto LABEL_74;
                }

                if (v53 + 2 * (v47 - v45) * v52 < 0x20)
                {
                  v62 = v55;
                  goto LABEL_74;
                }

                if (v60 >= 0x10)
                {
                  v61 = v60 & 0xFFFFFFFFFFFFFFF0;
                  v63 = 2 * v55;
                  v64 = v60 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v65 = vbicq_s8(*(v42 + v63 + 16), vcgtq_s16(*(v42 + v63 + 16), v51));
                    v66 = (v46 + v63);
                    *v66 = vbicq_s8(*(v42 + v63), vcgtq_s16(*(v42 + v63), v51));
                    v66[1] = v65;
                    v63 += 32;
                    v64 -= 16;
                  }

                  while (v64);
                  if (v60 == v61)
                  {
                    goto LABEL_52;
                  }

                  if ((v60 & 0xC) == 0)
                  {
                    v62 = v61 + v55;
                    do
                    {
LABEL_74:
                      v69 = *(v42 + 2 * v62);
                      if (v69 > v49)
                      {
                        LOWORD(v69) = 0;
                      }

                      *(v46 + 2 * v62++) = v69;
                    }

                    while (v44 != v62);
                    goto LABEL_52;
                  }
                }

                else
                {
                  v61 = 0;
                }

                v62 = (v60 & 0xFFFFFFFFFFFFFFFCLL) + v55;
                v67 = v61 - (v60 & 0xFFFFFFFFFFFFFFFCLL);
                v68 = 2 * (v61 + v55);
                do
                {
                  *(v46 + v68) = vbic_s8(*(v42 + v68), vcgt_s16(*(v42 + v68), v54));
                  v68 += 8;
                  v67 += 4;
                }

                while (v67);
                if (v60 != (v60 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_74;
                }

LABEL_52:
                ++v52;
                v46 += 2 * v47;
                v42 += 2 * v45;
                if (v52 == v43)
                {
                  goto LABEL_1138;
                }
              }
            }

LABEL_704:
            __b = 0uLL;
            sub_1002A8980(-5, &__b, "thresh_16s", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 673);
          }

          if (v43 < 1)
          {
            goto LABEL_1138;
          }

          v283 = 0;
          v284 = v46 - v42;
          v285 = vdup_n_s16(v49);
          while (1)
          {
            if (v44 >= 16)
            {
              v287 = 0;
              v288 = 0;
              do
              {
                v289 = vandq_s8(*(v42 + v287 + 16), vcgtq_s16(*(v42 + v287 + 16), v51));
                v290 = (v46 + v287);
                *v290 = vandq_s8(*(v42 + v287), vcgtq_s16(*(v42 + v287), v51));
                v290[1] = v289;
                v288 += 16;
                v287 += 32;
              }

              while (v288 <= v44 - 16);
              v286 = v288;
              if (v288 >= v44)
              {
                goto LABEL_410;
              }
            }

            else
            {
              v286 = 0;
              if (v44 <= 0)
              {
                goto LABEL_410;
              }
            }

            v291 = v44 - v286;
            if (v291 < 4)
            {
              v293 = v286;
              goto LABEL_432;
            }

            if (v284 + 2 * (v47 - v45) * v283 < 0x20)
            {
              v293 = v286;
              goto LABEL_432;
            }

            if (v291 >= 0x10)
            {
              v292 = v291 & 0xFFFFFFFFFFFFFFF0;
              v294 = 2 * v286;
              v295 = v291 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v296 = vandq_s8(*(v42 + v294 + 16), vcgtq_s16(*(v42 + v294 + 16), v51));
                v297 = (v46 + v294);
                *v297 = vandq_s8(*(v42 + v294), vcgtq_s16(*(v42 + v294), v51));
                v297[1] = v296;
                v294 += 32;
                v295 -= 16;
              }

              while (v295);
              if (v291 == v292)
              {
                goto LABEL_410;
              }

              if ((v291 & 0xC) == 0)
              {
                v293 = v292 + v286;
                do
                {
LABEL_432:
                  v300 = *(v42 + 2 * v293);
                  if (v300 <= v49)
                  {
                    LOWORD(v300) = 0;
                  }

                  *(v46 + 2 * v293++) = v300;
                }

                while (v44 != v293);
                goto LABEL_410;
              }
            }

            else
            {
              v292 = 0;
            }

            v293 = (v291 & 0xFFFFFFFFFFFFFFFCLL) + v286;
            v298 = v292 - (v291 & 0xFFFFFFFFFFFFFFFCLL);
            v299 = 2 * (v292 + v286);
            do
            {
              *(v46 + v299) = vand_s8(*(v42 + v299), vcgt_s16(*(v42 + v299), v285));
              v299 += 8;
              v298 += 4;
            }

            while (v298);
            if (v291 != (v291 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_432;
            }

LABEL_410:
            ++v283;
            v46 += 2 * v47;
            v42 += 2 * v45;
            if (v283 == v43)
            {
              goto LABEL_1138;
            }
          }
        }

        if (v43 < 1)
        {
          goto LABEL_1138;
        }

        v265 = 0;
        v266 = v46 - v42;
        v267 = vdup_n_s16(v49);
        while (1)
        {
          if (v44 >= 16)
          {
            v269 = 0;
            v270 = 0;
            do
            {
              v271 = vminq_s16(*(v42 + v269 + 16), v51);
              v272 = (v46 + v269);
              *v272 = vminq_s16(*(v42 + v269), v51);
              v272[1] = v271;
              v270 += 16;
              v269 += 32;
            }

            while (v270 <= v44 - 16);
            v268 = v270;
            if (v270 >= v44)
            {
              goto LABEL_382;
            }
          }

          else
          {
            v268 = 0;
            if (v44 <= 0)
            {
              goto LABEL_382;
            }
          }

          v273 = v44 - v268;
          if (v273 < 4)
          {
            v275 = v268;
            goto LABEL_404;
          }

          if (v266 + 2 * (v47 - v45) * v265 < 0x20)
          {
            v275 = v268;
            goto LABEL_404;
          }

          if (v273 >= 0x10)
          {
            v274 = v273 & 0xFFFFFFFFFFFFFFF0;
            v276 = 2 * v268;
            v277 = v273 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v278 = vminq_s16(v51, *(v42 + v276 + 16));
              v279 = (v46 + v276);
              *v279 = vminq_s16(v51, *(v42 + v276));
              v279[1] = v278;
              v276 += 32;
              v277 -= 16;
            }

            while (v277);
            if (v273 == v274)
            {
              goto LABEL_382;
            }

            if ((v273 & 0xC) == 0)
            {
              v275 = v274 + v268;
              do
              {
LABEL_404:
                v282 = *(v42 + 2 * v275);
                if (v49 < v282)
                {
                  LOWORD(v282) = v39;
                }

                *(v46 + 2 * v275++) = v282;
              }

              while (v44 != v275);
              goto LABEL_382;
            }
          }

          else
          {
            v274 = 0;
          }

          v275 = (v273 & 0xFFFFFFFFFFFFFFFCLL) + v268;
          v280 = v274 - (v273 & 0xFFFFFFFFFFFFFFFCLL);
          v281 = 2 * (v274 + v268);
          do
          {
            *(v46 + v281) = vmin_s16(v267, *(v42 + v281));
            v281 += 8;
            v280 += 4;
          }

          while (v280);
          if (v273 != (v273 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_404;
          }

LABEL_382:
          ++v265;
          v46 += 2 * v47;
          v42 += 2 * v45;
          if (v265 == v43)
          {
            goto LABEL_1138;
          }
        }
      }

      v138 = vdupq_n_s16(v50);
      if (v41)
      {
        if (v41 != 1)
        {
          goto LABEL_704;
        }

        if (v43 < 1)
        {
          goto LABEL_1138;
        }

        v139 = 0;
        v140 = v46 - v42;
        v141 = vdup_n_s16(v49);
        v142 = vdup_n_s16(v50);
        while (1)
        {
          if (v44 >= 16)
          {
            v144 = 0;
            v145 = 0;
            do
            {
              v146 = vbicq_s8(v138, vcgtq_s16(*(v42 + v144 + 16), v51));
              v147 = (v46 + v144);
              *v147 = vbicq_s8(v138, vcgtq_s16(*(v42 + v144), v51));
              v147[1] = v146;
              v145 += 16;
              v144 += 32;
            }

            while (v145 <= v44 - 16);
            v143 = v145;
            if (v145 >= v44)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v143 = 0;
            if (v44 <= 0)
            {
              goto LABEL_165;
            }
          }

          v148 = v44 - v143;
          if (v148 < 4)
          {
            v150 = v143;
            goto LABEL_187;
          }

          if (v140 + 2 * (v47 - v45) * v139 < 0x20)
          {
            v150 = v143;
            goto LABEL_187;
          }

          if (v148 >= 0x10)
          {
            v149 = v148 & 0xFFFFFFFFFFFFFFF0;
            v151 = 2 * v143;
            v152 = v148 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v153 = vbicq_s8(v138, vcgtq_s16(*(v42 + v151 + 16), v51));
              v154 = (v46 + v151);
              *v154 = vbicq_s8(v138, vcgtq_s16(*(v42 + v151), v51));
              v154[1] = v153;
              v151 += 32;
              v152 -= 16;
            }

            while (v152);
            if (v148 == v149)
            {
              goto LABEL_165;
            }

            if ((v148 & 0xC) == 0)
            {
              v150 = v149 + v143;
              do
              {
LABEL_187:
                if (*(v42 + 2 * v150) <= v49)
                {
                  v157 = v40;
                }

                else
                {
                  v157 = 0;
                }

                *(v46 + 2 * v150++) = v157;
              }

              while (v44 != v150);
              goto LABEL_165;
            }
          }

          else
          {
            v149 = 0;
          }

          v150 = (v148 & 0xFFFFFFFFFFFFFFFCLL) + v143;
          v155 = v149 - (v148 & 0xFFFFFFFFFFFFFFFCLL);
          v156 = 2 * (v149 + v143);
          do
          {
            *(v46 + v156) = vbic_s8(v142, vcgt_s16(*(v42 + v156), v141));
            v156 += 8;
            v155 += 4;
          }

          while (v155);
          if (v148 != (v148 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_187;
          }

LABEL_165:
          ++v139;
          v46 += 2 * v47;
          v42 += 2 * v45;
          if (v139 == v43)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v43 < 1)
      {
        goto LABEL_1138;
      }

      v331 = 0;
      v332 = v46 - v42;
      v333 = vdup_n_s16(v49);
      v334 = vdup_n_s16(v50);
      while (1)
      {
        if (v44 >= 16)
        {
          v336 = 0;
          v337 = 0;
          do
          {
            v338 = vandq_s8(v138, vcgtq_s16(*(v42 + v336 + 16), v51));
            v339 = (v46 + v336);
            *v339 = vandq_s8(v138, vcgtq_s16(*(v42 + v336), v51));
            v339[1] = v338;
            v337 += 16;
            v336 += 32;
          }

          while (v337 <= v44 - 16);
          v335 = v337;
          if (v337 >= v44)
          {
            goto LABEL_485;
          }
        }

        else
        {
          v335 = 0;
          if (v44 <= 0)
          {
            goto LABEL_485;
          }
        }

        v340 = v44 - v335;
        if (v340 < 4)
        {
          v342 = v335;
          goto LABEL_507;
        }

        if (v332 + 2 * (v47 - v45) * v331 < 0x20)
        {
          v342 = v335;
          goto LABEL_507;
        }

        if (v340 >= 0x10)
        {
          v341 = v340 & 0xFFFFFFFFFFFFFFF0;
          v343 = 2 * v335;
          v344 = v340 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v345 = vandq_s8(v138, vcgtq_s16(*(v42 + v343 + 16), v51));
            v346 = (v46 + v343);
            *v346 = vandq_s8(v138, vcgtq_s16(*(v42 + v343), v51));
            v346[1] = v345;
            v343 += 32;
            v344 -= 16;
          }

          while (v344);
          if (v340 == v341)
          {
            goto LABEL_485;
          }

          if ((v340 & 0xC) == 0)
          {
            v342 = v341 + v335;
            do
            {
LABEL_507:
              if (*(v42 + 2 * v342) <= v49)
              {
                v349 = 0;
              }

              else
              {
                v349 = v40;
              }

              *(v46 + 2 * v342++) = v349;
            }

            while (v44 != v342);
            goto LABEL_485;
          }
        }

        else
        {
          v341 = 0;
        }

        v342 = (v340 & 0xFFFFFFFFFFFFFFFCLL) + v335;
        v347 = v341 - (v340 & 0xFFFFFFFFFFFFFFFCLL);
        v348 = 2 * (v341 + v335);
        do
        {
          *(v46 + v348) = vand_s8(v334, vcgt_s16(*(v42 + v348), v333));
          v348 += 8;
          v347 += 4;
        }

        while (v347);
        if (v340 != (v340 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_507;
        }

LABEL_485:
        ++v331;
        v46 += 2 * v47;
        v42 += 2 * v45;
        if (v331 == v43)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v41 > 1)
    {
      if (v41 != 2)
      {
        if (v41 != 3)
        {
          if (v41 == 4)
          {
            v214 = (v43 - 1);
            if (v43 < 1 || v44 < 1)
            {
              goto LABEL_1138;
            }

            v215 = 0;
            v217 = v46 < v42 + 2 * (v44 + v45 * v214) && v42 < v46 + 2 * (v44 + v47 * v214);
            v218 = vdupq_n_s16(v49);
            while (1)
            {
              if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v217)
              {
                for (i6 = 0; i6 != v44; *(v46 + 2 * i6++) = v226)
                {
LABEL_303:
                  v226 = *(v42 + 2 * i6);
                  if (v226 > v49)
                  {
                    LOWORD(v226) = 0;
                  }
                }

                goto LABEL_291;
              }

              if (v44 >= 0x10)
              {
                v221 = 0;
                do
                {
                  v222 = vbicq_s8(*(v42 + v221 + 16), vcgtq_s16(*(v42 + v221 + 16), v218));
                  v223 = (v46 + v221);
                  *v223 = vbicq_s8(*(v42 + v221), vcgtq_s16(*(v42 + v221), v218));
                  v223[1] = v222;
                  v221 += 32;
                }

                while (32 * ((v44 >> 4) & 0x7FFFFFF) != v221);
                if ((v44 & 0x7FFFFFF0) == v44)
                {
                  goto LABEL_291;
                }

                v220 = v44 & 0x7FFFFFF0;
                i6 = v220;
                if ((v44 & 0xC) == 0)
                {
                  goto LABEL_303;
                }
              }

              else
              {
                v220 = 0;
              }

              v224 = 2 * v220;
              v225 = v220 - (v44 & 0x7FFFFFFC);
              do
              {
                *(v46 + v224) = vbic_s8(*(v42 + v224), vcgt_s16(*(v42 + v224), *v218.i8));
                v224 += 8;
                v225 += 4;
              }

              while (v225);
              i6 = v44 & 0x7FFFFFFC;
              if (i6 != v44)
              {
                goto LABEL_303;
              }

LABEL_291:
              ++v215;
              v42 += 2 * v45;
              v46 += 2 * v47;
              if (v215 == v43)
              {
                goto LABEL_1138;
              }
            }
          }

LABEL_1076:
          __b = 0uLL;
          sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
        }

        v546 = (v43 - 1);
        if (v43 < 1 || v44 < 1)
        {
          goto LABEL_1138;
        }

        v547 = 0;
        v549 = v46 < v42 + 2 * (v44 + v45 * v546) && v42 < v46 + 2 * (v44 + v47 * v546);
        v550 = vdupq_n_s16(v49);
        while (1)
        {
          if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v549)
          {
            for (i7 = 0; i7 != v44; *(v46 + 2 * i7++) = v558)
            {
LABEL_862:
              v558 = *(v42 + 2 * i7);
              if (v558 <= v49)
              {
                LOWORD(v558) = 0;
              }
            }

            goto LABEL_850;
          }

          if (v44 >= 0x10)
          {
            v553 = 0;
            do
            {
              v554 = vandq_s8(*(v42 + v553 + 16), vcgtq_s16(*(v42 + v553 + 16), v550));
              v555 = (v46 + v553);
              *v555 = vandq_s8(*(v42 + v553), vcgtq_s16(*(v42 + v553), v550));
              v555[1] = v554;
              v553 += 32;
            }

            while (32 * ((v44 >> 4) & 0x7FFFFFF) != v553);
            if ((v44 & 0x7FFFFFF0) == v44)
            {
              goto LABEL_850;
            }

            v552 = v44 & 0x7FFFFFF0;
            i7 = v552;
            if ((v44 & 0xC) == 0)
            {
              goto LABEL_862;
            }
          }

          else
          {
            v552 = 0;
          }

          v556 = 2 * v552;
          v557 = v552 - (v44 & 0x7FFFFFFC);
          do
          {
            *(v46 + v556) = vand_s8(*(v42 + v556), vcgt_s16(*(v42 + v556), *v550.i8));
            v556 += 8;
            v557 += 4;
          }

          while (v557);
          i7 = v44 & 0x7FFFFFFC;
          if (i7 != v44)
          {
            goto LABEL_862;
          }

LABEL_850:
          ++v547;
          v42 += 2 * v45;
          v46 += 2 * v47;
          if (v547 == v43)
          {
            goto LABEL_1138;
          }
        }
      }

      v533 = (v43 - 1);
      if (v43 < 1 || v44 < 1)
      {
        goto LABEL_1138;
      }

      v534 = 0;
      v536 = v46 < v42 + 2 * (v44 + v45 * v533) && v42 < v46 + 2 * (v44 + v47 * v533);
      v537 = vdupq_n_s16(v49);
      while (1)
      {
        if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v536)
        {
          for (i8 = 0; i8 != v44; *(v46 + 2 * i8++) = v545)
          {
LABEL_837:
            v545 = *(v42 + 2 * i8);
            if (v49 < v545)
            {
              LOWORD(v545) = v39;
            }
          }

          goto LABEL_825;
        }

        if (v44 >= 0x10)
        {
          v540 = 0;
          do
          {
            v541 = vminq_s16(v537, *(v42 + v540 + 16));
            v542 = (v46 + v540);
            *v542 = vminq_s16(v537, *(v42 + v540));
            v542[1] = v541;
            v540 += 32;
          }

          while (32 * ((v44 >> 4) & 0x7FFFFFF) != v540);
          if ((v44 & 0x7FFFFFF0) == v44)
          {
            goto LABEL_825;
          }

          v539 = v44 & 0x7FFFFFF0;
          i8 = v539;
          if ((v44 & 0xC) == 0)
          {
            goto LABEL_837;
          }
        }

        else
        {
          v539 = 0;
        }

        v543 = 2 * v539;
        v544 = v539 - (v44 & 0x7FFFFFFC);
        do
        {
          *(v46 + v543) = vmin_s16(*v537.i8, *(v42 + v543));
          v543 += 8;
          v544 += 4;
        }

        while (v544);
        i8 = v44 & 0x7FFFFFFC;
        if (i8 != v44)
        {
          goto LABEL_837;
        }

LABEL_825:
        ++v534;
        v42 += 2 * v45;
        v46 += 2 * v47;
        if (v534 == v43)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v41)
    {
      if (v41 != 1)
      {
        goto LABEL_1076;
      }

      v472 = (v43 - 1);
      if (v43 < 1 || v44 < 1)
      {
        goto LABEL_1138;
      }

      v473 = 0;
      v475 = v46 < v42 + 2 * (v44 + v45 * v472) && v42 < v46 + 2 * (v44 + v47 * v472);
      v476 = vdupq_n_s16(v49);
      v477 = vdupq_n_s16(v50);
      while (1)
      {
        if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v475)
        {
          for (i9 = 0; i9 != v44; *(v46 + 2 * i9++) = v485)
          {
LABEL_730:
            if (*(v42 + 2 * i9) <= v49)
            {
              v485 = v40;
            }

            else
            {
              v485 = 0;
            }
          }

          goto LABEL_718;
        }

        if (v44 >= 0x10)
        {
          v480 = 0;
          do
          {
            v481 = vbicq_s8(v477, vcgtq_s16(*(v42 + v480 + 16), v476));
            v482 = (v46 + v480);
            *v482 = vbicq_s8(v477, vcgtq_s16(*(v42 + v480), v476));
            v482[1] = v481;
            v480 += 32;
          }

          while (32 * ((v44 >> 4) & 0x7FFFFFF) != v480);
          if ((v44 & 0x7FFFFFF0) == v44)
          {
            goto LABEL_718;
          }

          v479 = v44 & 0x7FFFFFF0;
          i9 = v479;
          if ((v44 & 0xC) == 0)
          {
            goto LABEL_730;
          }
        }

        else
        {
          v479 = 0;
        }

        v483 = 2 * v479;
        v484 = v479 - (v44 & 0x7FFFFFFC);
        do
        {
          *(v46 + v483) = vbic_s8(*v477.i8, vcgt_s16(*(v42 + v483), *v476.i8));
          v483 += 8;
          v484 += 4;
        }

        while (v484);
        i9 = v44 & 0x7FFFFFFC;
        if (i9 != v44)
        {
          goto LABEL_730;
        }

LABEL_718:
        ++v473;
        v42 += 2 * v45;
        v46 += 2 * v47;
        if (v473 == v43)
        {
          goto LABEL_1138;
        }
      }
    }

    v583 = (v43 - 1);
    if (v43 < 1 || v44 < 1)
    {
      goto LABEL_1138;
    }

    v584 = 0;
    v586 = v46 < v42 + 2 * (v44 + v45 * v583) && v42 < v46 + 2 * (v44 + v47 * v583);
    v587 = vdupq_n_s16(v49);
    v588 = vdupq_n_s16(v50);
    while (1)
    {
      if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v586)
      {
        for (i10 = 0; i10 != v44; *(v46 + 2 * i10++) = v596)
        {
LABEL_921:
          if (*(v42 + 2 * i10) <= v49)
          {
            v596 = 0;
          }

          else
          {
            v596 = v40;
          }
        }

        goto LABEL_909;
      }

      if (v44 >= 0x10)
      {
        v591 = 0;
        do
        {
          v592 = vandq_s8(v588, vcgtq_s16(*(v42 + v591 + 16), v587));
          v593 = (v46 + v591);
          *v593 = vandq_s8(v588, vcgtq_s16(*(v42 + v591), v587));
          v593[1] = v592;
          v591 += 32;
        }

        while (32 * ((v44 >> 4) & 0x7FFFFFF) != v591);
        if ((v44 & 0x7FFFFFF0) == v44)
        {
          goto LABEL_909;
        }

        v590 = v44 & 0x7FFFFFF0;
        i10 = v590;
        if ((v44 & 0xC) == 0)
        {
          goto LABEL_921;
        }
      }

      else
      {
        v590 = 0;
      }

      v594 = 2 * v590;
      v595 = v590 - (v44 & 0x7FFFFFFC);
      do
      {
        *(v46 + v594) = vand_s8(*v588.i8, vcgt_s16(*(v42 + v594), *v587.i8));
        v594 += 8;
        v595 += 4;
      }

      while (v595);
      i10 = v44 & 0x7FFFFFFC;
      if (i10 != v44)
      {
        goto LABEL_921;
      }

LABEL_909:
      ++v584;
      v42 += 2 * v45;
      v46 += 2 * v47;
      if (v584 == v43)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v5 == 5)
  {
    v70 = *v741;
    v71 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
    if ((v736 & 0x4000) != 0)
    {
      v72 = (v729[0] & 0x4000) != 0 ? *v741 : 1;
      v71 *= v72;
      if ((v729[0] & 0x4000) != 0)
      {
        v70 = 1;
      }
    }

    v73 = *(a1 + 200);
    v74 = *(a1 + 208);
    v75 = *(a1 + 216);
    v76 = v738;
    v77 = v743;
    v78 = v730;
    v79 = v735;
    v80 = sub_1002A8904(3);
    *v81.i32 = v73;
    v726 = v81;
    *v81.i32 = v74;
    v728 = v81;
    v82 = v77 >> 2;
    v83 = v79 >> 2;
    if ((v80 & 1) != 0 || sub_1002A8904(100))
    {
      v84 = vdupq_lane_s32(v726, 0);
      if (v75 > 1)
      {
        if (v75 != 2)
        {
          if (v75 != 3)
          {
            if (v75 == 4)
            {
              if (v70 < 1)
              {
                goto LABEL_1138;
              }

              v85 = 0;
              v86 = v78 - v76;
              while (1)
              {
                if (v71 >= 8)
                {
                  v88 = 0;
                  v89 = 0;
                  do
                  {
                    v90 = vandq_s8(*(v76 + v88 + 16), vcgeq_f32(v84, *(v76 + v88 + 16)));
                    v91 = (v78 + v88);
                    *v91 = vandq_s8(*(v76 + v88), vcgeq_f32(v84, *(v76 + v88)));
                    v91[1] = v90;
                    v89 += 8;
                    v88 += 32;
                  }

                  while (v89 <= v71 - 8);
                  v87 = v89;
                  if (v89 >= v71)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  v87 = 0;
                  if (v71 <= 0)
                  {
                    goto LABEL_92;
                  }
                }

                v92 = v71 - v87;
                if (v92 < 8 || v86 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v85 <= 0x1F)
                {
                  v93 = v87;
                  do
                  {
LABEL_106:
                    v98 = *(v76 + 4 * v93);
                    if (v98 > *v726.i32)
                    {
                      v98 = 0.0;
                    }

                    *(v78 + 4 * v93++) = v98;
                  }

                  while (v71 != v93);
                  goto LABEL_92;
                }

                v93 = (v92 & 0xFFFFFFFFFFFFFFF8) + v87;
                v94 = 4 * v87;
                v95 = v92 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v96 = vandq_s8(*(v76 + v94 + 16), vcgeq_f32(v84, *(v76 + v94 + 16)));
                  v97 = (v78 + v94);
                  *v97 = vandq_s8(*(v76 + v94), vcgeq_f32(v84, *(v76 + v94)));
                  v97[1] = v96;
                  v94 += 32;
                  v95 -= 8;
                }

                while (v95);
                if (v92 != (v92 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_106;
                }

LABEL_92:
                ++v85;
                v78 += 4 * v83;
                v76 += 4 * v82;
                if (v85 == v70)
                {
                  goto LABEL_1138;
                }
              }
            }

LABEL_705:
            __b = 0uLL;
            sub_1002A8980(-5, &__b, "thresh_32f", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 853);
          }

          if (v70 < 1)
          {
            goto LABEL_1138;
          }

          v315 = 0;
          v316 = v78 - v76;
          while (1)
          {
            if (v71 >= 8)
            {
              v318 = 0;
              v319 = 0;
              do
              {
                v320 = vandq_s8(*(v76 + v318 + 16), vcgtq_f32(*(v76 + v318 + 16), v84));
                v321 = (v78 + v318);
                *v321 = vandq_s8(*(v76 + v318), vcgtq_f32(*(v76 + v318), v84));
                v321[1] = v320;
                v319 += 8;
                v318 += 32;
              }

              while (v319 <= v71 - 8);
              v317 = v319;
              if (v319 >= v71)
              {
                goto LABEL_458;
              }
            }

            else
            {
              v317 = 0;
              if (v71 <= 0)
              {
                goto LABEL_458;
              }
            }

            v322 = v71 - v317;
            if (v322 < 8 || v316 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v315 <= 0x1F)
            {
              v323 = v317;
              do
              {
LABEL_472:
                v328 = *(v76 + 4 * v323);
                if (v328 <= *v726.i32)
                {
                  v328 = 0.0;
                }

                *(v78 + 4 * v323++) = v328;
              }

              while (v71 != v323);
              goto LABEL_458;
            }

            v323 = (v322 & 0xFFFFFFFFFFFFFFF8) + v317;
            v324 = 4 * v317;
            v325 = v322 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v326 = vandq_s8(*(v76 + v324 + 16), vcgtq_f32(*(v76 + v324 + 16), v84));
              v327 = (v78 + v324);
              *v327 = vandq_s8(*(v76 + v324), vcgtq_f32(*(v76 + v324), v84));
              v327[1] = v326;
              v324 += 32;
              v325 -= 8;
            }

            while (v325);
            if (v322 != (v322 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_472;
            }

LABEL_458:
            ++v315;
            v78 += 4 * v83;
            v76 += 4 * v82;
            if (v315 == v70)
            {
              goto LABEL_1138;
            }
          }
        }

        if (v70 < 1)
        {
          goto LABEL_1138;
        }

        v301 = 0;
        v302 = v78 - v76;
        while (1)
        {
          if (v71 >= 8)
          {
            v304 = 0;
            v305 = 0;
            do
            {
              v306 = vminq_f32(*(v76 + v304 + 16), v84);
              v307 = (v78 + v304);
              *v307 = vminq_f32(*(v76 + v304), v84);
              v307[1] = v306;
              v305 += 8;
              v304 += 32;
            }

            while (v305 <= v71 - 8);
            v303 = v305;
            if (v305 >= v71)
            {
              goto LABEL_438;
            }
          }

          else
          {
            v303 = 0;
            if (v71 <= 0)
            {
              goto LABEL_438;
            }
          }

          v308 = v71 - v303;
          if (v308 < 8 || v302 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v301 <= 0x1F)
          {
            v309 = v303;
            do
            {
LABEL_452:
              v314 = *(v76 + 4 * v309);
              if (v314 > *v726.i32)
              {
                v314 = *v726.i32;
              }

              *(v78 + 4 * v309++) = v314;
            }

            while (v71 != v309);
            goto LABEL_438;
          }

          v309 = (v308 & 0xFFFFFFFFFFFFFFF8) + v303;
          v310 = 4 * v303;
          v311 = v308 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v312 = vbslq_s8(vcgtq_f32(*(v76 + v310 + 16), v84), v84, *(v76 + v310 + 16));
            v313 = (v78 + v310);
            *v313 = vbslq_s8(vcgtq_f32(*(v76 + v310), v84), v84, *(v76 + v310));
            v313[1] = v312;
            v310 += 32;
            v311 -= 8;
          }

          while (v311);
          if (v308 != (v308 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_452;
          }

LABEL_438:
          ++v301;
          v78 += 4 * v83;
          v76 += 4 * v82;
          if (v301 == v70)
          {
            goto LABEL_1138;
          }
        }
      }

      v158 = vdupq_lane_s32(v728, 0);
      if (v75)
      {
        if (v75 != 1)
        {
          goto LABEL_705;
        }

        if (v70 < 1)
        {
          goto LABEL_1138;
        }

        v159 = 0;
        v160 = v78 - v76;
        while (1)
        {
          if (v71 >= 8)
          {
            v162 = 0;
            v163 = 0;
            do
            {
              v164 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v162 + 16)));
              v165 = (v78 + v162);
              *v165 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v162)));
              v165[1] = v164;
              v163 += 8;
              v162 += 32;
            }

            while (v163 <= v71 - 8);
            v161 = v163;
            if (v163 >= v71)
            {
              goto LABEL_196;
            }
          }

          else
          {
            v161 = 0;
            if (v71 <= 0)
            {
              goto LABEL_196;
            }
          }

          v166 = v71 - v161;
          if (v166 < 8 || v160 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v159 <= 0x1F)
          {
            v167 = v161;
            v172 = *v728.i32;
            do
            {
LABEL_210:
              if (*(v76 + 4 * v167) <= *v726.i32)
              {
                v173 = v172;
              }

              else
              {
                v173 = 0.0;
              }

              *(v78 + 4 * v167++) = v173;
            }

            while (v71 != v167);
            goto LABEL_196;
          }

          v167 = (v166 & 0xFFFFFFFFFFFFFFF8) + v161;
          v168 = 4 * v161;
          v169 = v166 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v170 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v168 + 16)));
            v171 = (v78 + v168);
            *v171 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v168)));
            v171[1] = v170;
            v168 += 32;
            v169 -= 8;
          }

          while (v169);
          v172 = *v728.i32;
          if (v166 != (v166 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_210;
          }

LABEL_196:
          ++v159;
          v78 += 4 * v83;
          v76 += 4 * v82;
          if (v159 == v70)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v70 < 1)
      {
        goto LABEL_1138;
      }

      v367 = 0;
      v368 = v78 - v76;
      while (1)
      {
        if (v71 >= 8)
        {
          v370 = 0;
          v371 = 0;
          do
          {
            v372 = vandq_s8(v158, vcgtq_f32(*(v76 + v370 + 16), v84));
            v373 = (v78 + v370);
            *v373 = vandq_s8(v158, vcgtq_f32(*(v76 + v370), v84));
            v373[1] = v372;
            v371 += 8;
            v370 += 32;
          }

          while (v371 <= v71 - 8);
          v369 = v371;
          if (v371 >= v71)
          {
            goto LABEL_541;
          }
        }

        else
        {
          v369 = 0;
          if (v71 <= 0)
          {
            goto LABEL_541;
          }
        }

        v374 = v71 - v369;
        if (v374 < 8 || v368 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v367 <= 0x1F)
        {
          v375 = v369;
          v380 = *v728.i32;
          do
          {
LABEL_555:
            if (*(v76 + 4 * v375) <= *v726.i32)
            {
              v381 = 0.0;
            }

            else
            {
              v381 = v380;
            }

            *(v78 + 4 * v375++) = v381;
          }

          while (v71 != v375);
          goto LABEL_541;
        }

        v375 = (v374 & 0xFFFFFFFFFFFFFFF8) + v369;
        v376 = 4 * v369;
        v377 = v374 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v378 = vandq_s8(v158, vcgtq_f32(*(v76 + v376 + 16), v84));
          v379 = (v78 + v376);
          *v379 = vandq_s8(v158, vcgtq_f32(*(v76 + v376), v84));
          v379[1] = v378;
          v376 += 32;
          v377 -= 8;
        }

        while (v377);
        v380 = *v728.i32;
        if (v374 != (v374 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_555;
        }

LABEL_541:
        ++v367;
        v78 += 4 * v83;
        v76 += 4 * v82;
        if (v367 == v70)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v75 > 1)
    {
      switch(v75)
      {
        case 2:
          v559 = (v70 - 1);
          if (v70 >= 1 && v71 >= 1)
          {
            v560 = 0;
            v561 = v76 + 4 * (v71 + v82 * v559);
            v562 = v78 + 4 * (v71 + v83 * v559);
            v564 = v78 < v561 && v76 < v562;
            v565 = vdupq_lane_s32(v726, 0);
            v566 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v564;
            do
            {
              v567 = 0;
              if (v566)
              {
                goto LABEL_1156;
              }

              do
              {
                v568 = vbslq_s8(vcgtq_f32(*(v76 + v567 + 16), v565), v565, *(v76 + v567 + 16));
                v569 = (v78 + v567);
                *v569 = vbslq_s8(vcgtq_f32(*(v76 + v567), v565), v565, *(v76 + v567));
                v569[1] = v568;
                v567 += 32;
              }

              while (32 * ((v71 >> 3) & 0xFFFFFFF) != v567);
              v567 = v71 & 0x7FFFFFF8;
              if (v567 != v71)
              {
LABEL_1156:
                do
                {
                  v570 = *(v76 + 4 * v567);
                  if (v570 > *v726.i32)
                  {
                    v570 = *v726.i32;
                  }

                  *(v78 + 4 * v567++) = v570;
                }

                while (v71 != v567);
              }

              ++v560;
              v76 += 4 * v82;
              v78 += 4 * v83;
            }

            while (v560 != v70);
          }

          goto LABEL_1138;
        case 3:
          v571 = (v70 - 1);
          if (v70 >= 1 && v71 >= 1)
          {
            v572 = 0;
            v573 = v76 + 4 * (v71 + v82 * v571);
            v574 = v78 + 4 * (v71 + v83 * v571);
            v576 = v78 < v573 && v76 < v574;
            v577 = vdupq_lane_s32(v726, 0);
            v578 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v576;
            do
            {
              v579 = 0;
              if (v578)
              {
                goto LABEL_1157;
              }

              do
              {
                v580 = vandq_s8(*(v76 + v579 + 16), vcgtq_f32(*(v76 + v579 + 16), v577));
                v581 = (v78 + v579);
                *v581 = vandq_s8(*(v76 + v579), vcgtq_f32(*(v76 + v579), v577));
                v581[1] = v580;
                v579 += 32;
              }

              while (32 * ((v71 >> 3) & 0xFFFFFFF) != v579);
              v579 = v71 & 0x7FFFFFF8;
              if (v579 != v71)
              {
LABEL_1157:
                do
                {
                  v582 = *(v76 + 4 * v579);
                  if (v582 <= *v726.i32)
                  {
                    v582 = 0.0;
                  }

                  *(v78 + 4 * v579++) = v582;
                }

                while (v71 != v579);
              }

              ++v572;
              v76 += 4 * v82;
              v78 += 4 * v83;
            }

            while (v572 != v70);
          }

          goto LABEL_1138;
        case 4:
          v227 = (v70 - 1);
          if (v70 >= 1 && v71 >= 1)
          {
            v228 = 0;
            v229 = v76 + 4 * (v71 + v82 * v227);
            v230 = v78 + 4 * (v71 + v83 * v227);
            v232 = v78 < v229 && v76 < v230;
            v233 = vdupq_lane_s32(v726, 0);
            v234 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v232;
            do
            {
              v235 = 0;
              if (v234)
              {
                goto LABEL_1158;
              }

              do
              {
                v236 = vandq_s8(*(v76 + v235 + 16), vcgeq_f32(v233, *(v76 + v235 + 16)));
                v237 = (v78 + v235);
                *v237 = vandq_s8(*(v76 + v235), vcgeq_f32(v233, *(v76 + v235)));
                v237[1] = v236;
                v235 += 32;
              }

              while (32 * ((v71 >> 3) & 0xFFFFFFF) != v235);
              v235 = v71 & 0x7FFFFFF8;
              if (v235 != v71)
              {
LABEL_1158:
                do
                {
                  v238 = *(v76 + 4 * v235);
                  if (v238 > *v726.i32)
                  {
                    v238 = 0.0;
                  }

                  *(v78 + 4 * v235++) = v238;
                }

                while (v71 != v235);
              }

              ++v228;
              v76 += 4 * v82;
              v78 += 4 * v83;
            }

            while (v228 != v70);
          }

          goto LABEL_1138;
      }

LABEL_1077:
      __b = 0uLL;
      sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
    }

    if (v75)
    {
      if (v75 != 1)
      {
        goto LABEL_1077;
      }

      v486 = (v70 - 1);
      if (v70 < 1 || v71 < 1)
      {
        goto LABEL_1138;
      }

      v487 = 0;
      v488 = v76 + 4 * (v71 + v82 * v486);
      v489 = v78 + 4 * (v71 + v83 * v486);
      v491 = v78 < v488 && v76 < v489;
      v492 = vdupq_lane_s32(v726, 0);
      v493 = vdupq_lane_s32(v728, 0);
      v494 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v491;
      while (1)
      {
        v495 = 0;
        if (v494)
        {
          break;
        }

        do
        {
          v497 = vandq_s8(v493, vcgeq_f32(v492, *(v76 + v495 + 16)));
          v498 = (v78 + v495);
          *v498 = vandq_s8(v493, vcgeq_f32(v492, *(v76 + v495)));
          v498[1] = v497;
          v495 += 32;
        }

        while (32 * ((v71 >> 3) & 0xFFFFFFF) != v495);
        v495 = v71 & 0x7FFFFFF8;
        v496 = *v728.i32;
        if (v495 != v71)
        {
          goto LABEL_751;
        }

LABEL_746:
        ++v487;
        v76 += 4 * v82;
        v78 += 4 * v83;
        if (v487 == v70)
        {
          goto LABEL_1138;
        }
      }

      v496 = *v728.i32;
      do
      {
LABEL_751:
        if (*(v76 + 4 * v495) <= *v726.i32)
        {
          v499 = v496;
        }

        else
        {
          v499 = 0.0;
        }

        *(v78 + 4 * v495++) = v499;
      }

      while (v71 != v495);
      goto LABEL_746;
    }

    v610 = (v70 - 1);
    if (v70 < 1 || v71 < 1)
    {
      goto LABEL_1138;
    }

    v611 = 0;
    v612 = v76 + 4 * (v71 + v82 * v610);
    v613 = v78 + 4 * (v71 + v83 * v610);
    v615 = v78 < v612 && v76 < v613;
    v616 = vdupq_lane_s32(v726, 0);
    v617 = vdupq_lane_s32(v728, 0);
    v618 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v615;
    while (1)
    {
      v619 = 0;
      if (v618)
      {
        break;
      }

      do
      {
        v621 = vandq_s8(v617, vcgtq_f32(*(v76 + v619 + 16), v616));
        v622 = (v78 + v619);
        *v622 = vandq_s8(v617, vcgtq_f32(*(v76 + v619), v616));
        v622[1] = v621;
        v619 += 32;
      }

      while (32 * ((v71 >> 3) & 0xFFFFFFF) != v619);
      v619 = v71 & 0x7FFFFFF8;
      v620 = *v728.i32;
      if (v619 != v71)
      {
        goto LABEL_958;
      }

LABEL_953:
      ++v611;
      v76 += 4 * v82;
      v78 += 4 * v83;
      if (v611 == v70)
      {
        goto LABEL_1138;
      }
    }

    v620 = *v728.i32;
    do
    {
LABEL_958:
      if (*(v76 + 4 * v619) <= *v726.i32)
      {
        v623 = 0.0;
      }

      else
      {
        v623 = v620;
      }

      *(v78 + 4 * v619++) = v623;
    }

    while (v71 != v619);
    goto LABEL_953;
  }

  if (v5 != 6)
  {
    goto LABEL_1138;
  }

  v6 = *v741;
  v7 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
  if ((v736 & 0x4000) != 0)
  {
    v8 = (v729[0] & 0x4000) != 0 ? *v741 : 1;
    v7 *= v8;
    if ((v729[0] & 0x4000) != 0)
    {
      v6 = 1;
    }
  }

  v9 = *(a1 + 216);
  v10 = v738;
  v11 = v743;
  v12 = v730;
  v13 = v735;
  v727 = *(a1 + 200);
  v725 = *(a1 + 208);
  v14 = v743 >> 3;
  v15 = v735 >> 3;
  if ((sub_1002A8904(3) & 1) == 0 && !sub_1002A8904(100))
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v239 = (v6 - 1);
            if (v6 < 1 || v7 < 1)
            {
              goto LABEL_1138;
            }

            v240 = 0;
            v241 = v10 + 8 * (v7 + v14 * v239);
            v242 = v12 + 8 * (v7 + v15 * v239);
            v244 = v12 < v241 && v10 < v242;
            v245 = vdupq_lane_s64(v727, 0);
            v246 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v244;
            while (1)
            {
              v247 = 0;
              if (v246)
              {
                break;
              }

              do
              {
                v249 = vandq_s8(*(v10 + v247 + 16), vcgeq_f64(v245, *(v10 + v247 + 16)));
                v250 = (v12 + v247);
                *v250 = vandq_s8(*(v10 + v247), vcgeq_f64(v245, *(v10 + v247)));
                v250[1] = v249;
                v247 += 32;
              }

              while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v247);
              v247 = v7 & 0x7FFFFFFC;
              v248 = *&v727;
              if (v247 != v7)
              {
                goto LABEL_347;
              }

LABEL_342:
              ++v240;
              v10 += 8 * v14;
              v12 += 8 * v15;
              if (v240 == v6)
              {
                goto LABEL_1138;
              }
            }

            v248 = *&v727;
            do
            {
LABEL_347:
              v251 = *(v10 + 8 * v247);
              if (v251 > v248)
              {
                v251 = 0.0;
              }

              *(v12 + 8 * v247++) = v251;
            }

            while (v7 != v247);
            goto LABEL_342;
          }

LABEL_1078:
          __b = 0uLL;
          sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
        }

        v624 = (v6 - 1);
        if (v6 < 1 || v7 < 1)
        {
          goto LABEL_1138;
        }

        v625 = 0;
        v626 = v10 + 8 * (v7 + v14 * v624);
        v627 = v12 + 8 * (v7 + v15 * v624);
        v629 = v12 < v626 && v10 < v627;
        v630 = vdupq_lane_s64(v727, 0);
        v631 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v629;
        while (1)
        {
          v632 = 0;
          if (v631)
          {
            break;
          }

          do
          {
            v634 = vandq_s8(*(v10 + v632 + 16), vcgtq_f64(*(v10 + v632 + 16), v630));
            v635 = (v12 + v632);
            *v635 = vandq_s8(*(v10 + v632), vcgtq_f64(*(v10 + v632), v630));
            v635[1] = v634;
            v632 += 32;
          }

          while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v632);
          v632 = v7 & 0x7FFFFFFC;
          v633 = *&v727;
          if (v632 != v7)
          {
            goto LABEL_977;
          }

LABEL_972:
          ++v625;
          v10 += 8 * v14;
          v12 += 8 * v15;
          if (v625 == v6)
          {
            goto LABEL_1138;
          }
        }

        v633 = *&v727;
        do
        {
LABEL_977:
          v636 = *(v10 + 8 * v632);
          if (v636 <= v633)
          {
            v636 = 0.0;
          }

          *(v12 + 8 * v632++) = v636;
        }

        while (v7 != v632);
        goto LABEL_972;
      }

      v597 = (v6 - 1);
      if (v6 < 1 || v7 < 1)
      {
        goto LABEL_1138;
      }

      v598 = 0;
      v599 = v10 + 8 * (v7 + v14 * v597);
      v600 = v12 + 8 * (v7 + v15 * v597);
      v602 = v12 < v599 && v10 < v600;
      v603 = vdupq_lane_s64(v727, 0);
      v604 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v602;
      while (1)
      {
        v605 = 0;
        if (v604)
        {
          break;
        }

        do
        {
          v607 = vbslq_s8(vcgtq_f64(*(v10 + v605 + 16), v603), v603, *(v10 + v605 + 16));
          v608 = (v12 + v605);
          *v608 = vbslq_s8(vcgtq_f64(*(v10 + v605), v603), v603, *(v10 + v605));
          v608[1] = v607;
          v605 += 32;
        }

        while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v605);
        v605 = v7 & 0x7FFFFFFC;
        v606 = *&v727;
        if (v605 != v7)
        {
          goto LABEL_940;
        }

LABEL_935:
        ++v598;
        v10 += 8 * v14;
        v12 += 8 * v15;
        if (v598 == v6)
        {
          goto LABEL_1138;
        }
      }

      v606 = *&v727;
      do
      {
LABEL_940:
        v609 = *(v10 + 8 * v605);
        if (v609 > v606)
        {
          v609 = v606;
        }

        *(v12 + 8 * v605++) = v609;
      }

      while (v7 != v605);
      goto LABEL_935;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_1078;
      }

      v500 = (v6 - 1);
      if (v6 < 1 || v7 < 1)
      {
        goto LABEL_1138;
      }

      v501 = 0;
      v502 = v10 + 8 * (v7 + v14 * v500);
      v503 = v12 + 8 * (v7 + v15 * v500);
      v505 = v12 < v502 && v10 < v503;
      v506 = vdupq_lane_s64(v727, 0);
      v507 = vdupq_lane_s64(v725, 0);
      v508 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v505;
      while (1)
      {
        v509 = 0;
        if (v508)
        {
          break;
        }

        do
        {
          v512 = vandq_s8(v507, vcgeq_f64(v506, *(v10 + v509 + 16)));
          v513 = (v12 + v509);
          *v513 = vandq_s8(v507, vcgeq_f64(v506, *(v10 + v509)));
          v513[1] = v512;
          v509 += 32;
        }

        while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v509);
        v509 = v7 & 0x7FFFFFFC;
        v511 = *&v725;
        v510 = *&v727;
        if (v509 != v7)
        {
          goto LABEL_772;
        }

LABEL_767:
        ++v501;
        v10 += 8 * v14;
        v12 += 8 * v15;
        if (v501 == v6)
        {
          goto LABEL_1138;
        }
      }

      v511 = *&v725;
      v510 = *&v727;
      do
      {
LABEL_772:
        if (*(v10 + 8 * v509) <= v510)
        {
          v514 = v511;
        }

        else
        {
          v514 = 0.0;
        }

        *(v12 + 8 * v509++) = v514;
      }

      while (v7 != v509);
      goto LABEL_767;
    }

    v663 = (v6 - 1);
    if (v6 < 1 || v7 < 1)
    {
      goto LABEL_1138;
    }

    v664 = 0;
    v665 = v10 + 8 * (v7 + v14 * v663);
    v666 = v12 + 8 * (v7 + v15 * v663);
    v668 = v12 < v665 && v10 < v666;
    v669 = vdupq_lane_s64(v727, 0);
    v670 = vdupq_lane_s64(v725, 0);
    v671 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v668;
    while (1)
    {
      v672 = 0;
      if (v671)
      {
        break;
      }

      do
      {
        v675 = vandq_s8(v670, vcgtq_f64(*(v10 + v672 + 16), v669));
        v676 = (v12 + v672);
        *v676 = vandq_s8(v670, vcgtq_f64(*(v10 + v672), v669));
        v676[1] = v675;
        v672 += 32;
      }

      while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v672);
      v672 = v7 & 0x7FFFFFFC;
      v674 = *&v725;
      v673 = *&v727;
      if (v672 != v7)
      {
        goto LABEL_1045;
      }

LABEL_1040:
      ++v664;
      v10 += 8 * v14;
      v12 += 8 * v15;
      if (v664 == v6)
      {
        goto LABEL_1138;
      }
    }

    v674 = *&v725;
    v673 = *&v727;
    do
    {
LABEL_1045:
      if (*(v10 + 8 * v672) <= v673)
      {
        v677 = 0.0;
      }

      else
      {
        v677 = v674;
      }

      *(v12 + 8 * v672++) = v677;
    }

    while (v7 != v672);
    goto LABEL_1040;
  }

  v16 = vdupq_lane_s64(v727, 0);
  if (v9 <= 1)
  {
    v177 = vdupq_lane_s64(v725, 0);
    if (v9)
    {
      if (v9 != 1)
      {
LABEL_706:
        __b = 0uLL;
        sub_1002A8980(-5, &__b, "thresh_64f", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 993);
      }

      if (v6 < 1)
      {
        goto LABEL_1138;
      }

      v178 = 0;
      v179 = v12 - v10;
      while (1)
      {
        if (v7 >= 4)
        {
          v181 = 0;
          v182 = 0;
          do
          {
            v183 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v181 + 16)));
            v184 = (v12 + v181);
            *v184 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v181)));
            v184[1] = v183;
            v182 += 4;
            v181 += 32;
          }

          while (v182 <= v7 - 4);
          v180 = v182;
          if (v182 >= v7)
          {
            goto LABEL_228;
          }
        }

        else
        {
          v180 = 0;
          if (v7 <= 0)
          {
            goto LABEL_228;
          }
        }

        v185 = v7 - v180;
        if (v185 < 4 || v179 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v178 <= 0x1F)
        {
          v186 = v180;
          v192 = *&v725;
          v191 = *&v727;
          do
          {
LABEL_242:
            if (*(v10 + 8 * v186) <= v191)
            {
              v193 = v192;
            }

            else
            {
              v193 = 0.0;
            }

            *(v12 + 8 * v186++) = v193;
          }

          while (v7 != v186);
          goto LABEL_228;
        }

        v186 = (v185 & 0xFFFFFFFFFFFFFFFCLL) + v180;
        v187 = 8 * v180;
        v188 = v185 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v189 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v187 + 16)));
          v190 = (v12 + v187);
          *v190 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v187)));
          v190[1] = v189;
          v187 += 32;
          v188 -= 4;
        }

        while (v188);
        v192 = *&v725;
        v191 = *&v727;
        if (v185 != (v185 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_242;
        }

LABEL_228:
        ++v178;
        v12 += 8 * v15;
        v10 += 8 * v14;
        if (v178 == v6)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v6 < 1)
    {
      goto LABEL_1138;
    }

    v437 = 0;
    v438 = v12 - v10;
    while (1)
    {
      if (v7 >= 4)
      {
        v440 = 0;
        v441 = 0;
        do
        {
          v442 = vandq_s8(v177, vcgtq_f64(*(v10 + v440 + 16), v16));
          v443 = (v12 + v440);
          *v443 = vandq_s8(v177, vcgtq_f64(*(v10 + v440), v16));
          v443[1] = v442;
          v441 += 4;
          v440 += 32;
        }

        while (v441 <= v7 - 4);
        v439 = v441;
        if (v441 >= v7)
        {
          goto LABEL_656;
        }
      }

      else
      {
        v439 = 0;
        if (v7 <= 0)
        {
          goto LABEL_656;
        }
      }

      v444 = v7 - v439;
      if (v444 < 4 || v438 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v437 <= 0x1F)
      {
        v445 = v439;
        v451 = *&v725;
        v450 = *&v727;
        do
        {
LABEL_670:
          if (*(v10 + 8 * v445) <= v450)
          {
            v452 = 0.0;
          }

          else
          {
            v452 = v451;
          }

          *(v12 + 8 * v445++) = v452;
        }

        while (v7 != v445);
        goto LABEL_656;
      }

      v445 = (v444 & 0xFFFFFFFFFFFFFFFCLL) + v439;
      v446 = 8 * v439;
      v447 = v444 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v448 = vandq_s8(v177, vcgtq_f64(*(v10 + v446 + 16), v16));
        v449 = (v12 + v446);
        *v449 = vandq_s8(v177, vcgtq_f64(*(v10 + v446), v16));
        v449[1] = v448;
        v446 += 32;
        v447 -= 4;
      }

      while (v447);
      v451 = *&v725;
      v450 = *&v727;
      if (v444 != (v444 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_670;
      }

LABEL_656:
      ++v437;
      v12 += 8 * v15;
      v10 += 8 * v14;
      if (v437 == v6)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v9 == 2)
  {
    if (v6 < 1)
    {
      goto LABEL_1138;
    }

    v350 = 0;
    v351 = v12 - v10;
    while (1)
    {
      if (v7 >= 4)
      {
        v353 = 0;
        v354 = 0;
        do
        {
          v355 = vminq_f64(*(v10 + v353 + 16), v16);
          v356 = (v12 + v353);
          *v356 = vminq_f64(*(v10 + v353), v16);
          v356[1] = v355;
          v354 += 4;
          v353 += 32;
        }

        while (v354 <= v7 - 4);
        v352 = v354;
        if (v354 >= v7)
        {
          goto LABEL_514;
        }
      }

      else
      {
        v352 = 0;
        if (v7 <= 0)
        {
          goto LABEL_514;
        }
      }

      v357 = v7 - v352;
      if (v357 < 4 || v351 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v350 <= 0x1F)
      {
        v358 = v352;
        v363 = *&v727;
        do
        {
LABEL_528:
          v364 = *(v10 + 8 * v358);
          if (v364 > v363)
          {
            v364 = v363;
          }

          *(v12 + 8 * v358++) = v364;
        }

        while (v7 != v358);
        goto LABEL_514;
      }

      v358 = (v357 & 0xFFFFFFFFFFFFFFFCLL) + v352;
      v359 = 8 * v352;
      v360 = v357 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v361 = vbslq_s8(vcgtq_f64(*(v10 + v359 + 16), v16), v16, *(v10 + v359 + 16));
        v362 = (v12 + v359);
        *v362 = vbslq_s8(vcgtq_f64(*(v10 + v359), v16), v16, *(v10 + v359));
        v362[1] = v361;
        v359 += 32;
        v360 -= 4;
      }

      while (v360);
      v363 = *&v727;
      if (v357 != (v357 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_528;
      }

LABEL_514:
      ++v350;
      v12 += 8 * v15;
      v10 += 8 * v14;
      if (v350 == v6)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v9 == 3)
  {
    if (v6 < 1)
    {
      goto LABEL_1138;
    }

    v382 = 0;
    v383 = v12 - v10;
    while (1)
    {
      if (v7 >= 4)
      {
        v385 = 0;
        v386 = 0;
        do
        {
          v387 = vandq_s8(*(v10 + v385 + 16), vcgtq_f64(*(v10 + v385 + 16), v16));
          v388 = (v12 + v385);
          *v388 = vandq_s8(*(v10 + v385), vcgtq_f64(*(v10 + v385), v16));
          v388[1] = v387;
          v386 += 4;
          v385 += 32;
        }

        while (v386 <= v7 - 4);
        v384 = v386;
        if (v386 >= v7)
        {
          goto LABEL_562;
        }
      }

      else
      {
        v384 = 0;
        if (v7 <= 0)
        {
          goto LABEL_562;
        }
      }

      v389 = v7 - v384;
      if (v389 < 4 || v383 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v382 <= 0x1F)
      {
        v390 = v384;
        v395 = *&v727;
        do
        {
LABEL_576:
          v396 = *(v10 + 8 * v390);
          if (v396 <= v395)
          {
            v396 = 0.0;
          }

          *(v12 + 8 * v390++) = v396;
        }

        while (v7 != v390);
        goto LABEL_562;
      }

      v390 = (v389 & 0xFFFFFFFFFFFFFFFCLL) + v384;
      v391 = 8 * v384;
      v392 = v389 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v393 = vandq_s8(*(v10 + v391 + 16), vcgtq_f64(*(v10 + v391 + 16), v16));
        v394 = (v12 + v391);
        *v394 = vandq_s8(*(v10 + v391), vcgtq_f64(*(v10 + v391), v16));
        v394[1] = v393;
        v391 += 32;
        v392 -= 4;
      }

      while (v392);
      v395 = *&v727;
      if (v389 != (v389 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_576;
      }

LABEL_562:
      ++v382;
      v12 += 8 * v15;
      v10 += 8 * v14;
      if (v382 == v6)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v9 != 4)
  {
    goto LABEL_706;
  }

  if (v6 >= 1)
  {
    v17 = 0;
    v18 = v12 - v10;
    do
    {
      if (v7 >= 4)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = vandq_s8(*(v10 + v27 + 16), vcgeq_f64(v16, *(v10 + v27 + 16)));
          v30 = (v12 + v27);
          *v30 = vandq_s8(*(v10 + v27), vcgeq_f64(v16, *(v10 + v27)));
          v30[1] = v29;
          v28 += 4;
          v27 += 32;
        }

        while (v28 <= v7 - 4);
        v26 = v28;
        if (v28 >= v7)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v26 = 0;
        if (v7 <= 0)
        {
          goto LABEL_23;
        }
      }

      v31 = v7 - v26;
      if (v31 < 4 || v18 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v17 <= 0x1F)
      {
        v32 = v26;
        v37 = *&v727;
        do
        {
LABEL_37:
          v38 = *(v10 + 8 * v32);
          if (v38 > v37)
          {
            v38 = 0.0;
          }

          *(v12 + 8 * v32++) = v38;
        }

        while (v7 != v32);
        goto LABEL_23;
      }

      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + v26;
      v33 = 8 * v26;
      v34 = v31 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = vandq_s8(*(v10 + v33 + 16), vcgeq_f64(v16, *(v10 + v33 + 16)));
        v36 = (v12 + v33);
        *v36 = vandq_s8(*(v10 + v33), vcgeq_f64(v16, *(v10 + v33)));
        v36[1] = v35;
        v33 += 32;
        v34 -= 4;
      }

      while (v34);
      v37 = *&v727;
      if (v31 != (v31 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_37;
      }

LABEL_23:
      ++v17;
      v12 += 8 * v15;
      v10 += 8 * v14;
    }

    while (v17 != v6);
  }

LABEL_1138:
  if (v732 && atomic_fetch_add((v732 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v729);
  }

  v732 = 0;
  v730 = 0u;
  v731 = 0u;
  if (SHIDWORD(v729[0]) >= 1)
  {
    v721 = 0;
    v722 = v733;
    do
    {
      *(v722 + 4 * v721++) = 0;
    }

    while (v721 < SHIDWORD(v729[0]));
  }

  if (v734 != &v735)
  {
    j__free(v734);
  }

  if (v740 && atomic_fetch_add((v740 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v736);
  }

  v740 = 0;
  v738 = 0u;
  v739 = 0u;
  if (v737 >= 1)
  {
    v723 = 0;
    v724 = v741;
    do
    {
      v724[v723++] = 0;
    }

    while (v723 < v737);
  }

  if (v742 != &v743)
  {
    j__free(v742);
  }
}

void sub_100375A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100375B64(uint64_t a1)
{
  *a1 = &off_10047B798;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  nullsub_1();
}

int *sub_100375C9C(__int16 a1, unsigned int *a2, int *a3, uint64_t a4)
{
  v6 = a2;
  if (!a2 || !a3 || !a4)
  {
    v13[0] = 0;
    v13[1] = 0;
    qmemcpy(sub_1002A80E0(v13, 45), "arr != 0 && contour_header != 0 && block != 0", 45);
    sub_1002A8980(-215, v13, "cvPointSeqFromMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/utils.cpp", 47);
  }

  v8 = *a2;
  if (HIWORD(*a2) != 16962 || a2[9] < 1 || a2[8] < 1 || !*(a2 + 3))
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 33), "Input array is not a valid matrix", 33);
    sub_1002A8980(-5, &v11, "cvPointSeqFromMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/utils.cpp", 54);
  }

  if ((v8 & 0xFF8) == 0 && a2[9] == 2)
  {
    v6 = sub_1001FE6DC(a2, v13, 2, 0);
    v8 = *v6;
  }

  if ((v8 & 0xFFF) - 14 <= 0xFFFFFFFD)
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 87), "The matrix can not be converted to point sequence because of inappropriate element type", 87);
    sub_1002A8980(-210, &v11, "cvPointSeqFromMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/utils.cpp", 63);
  }

  v9 = *(v6 + 36);
  if (v9 != 1 && *(v6 + 32) != 1 || (*(v6 + 1) & 0x40) == 0)
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 75), "The matrix converted to point sequence must be 1-dimensional and continuous", 75);
    sub_1002A8980(-5, &v11, "cvPointSeqFromMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/utils.cpp", 68);
  }

  sub_100232918(v8 & 0xFFF | a1 & 0x7000, 128, (((v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3), *(v6 + 24), *(v6 + 32) * v9, a3, a4);
  return a3;
}

void sub_100375F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void *sub_100375F88(void *result, int a2)
{
  result[143] = sub_100376010;
  v2 = sub_1003761B0;
  v3 = sub_1003760D8;
  v4 = sub_10037603C;
  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return result;
    }

    v2 = sub_10037631C;
    v3 = sub_100376160;
    v4 = sub_1003760A0;
  }

  result[142] = v4;
  result[144] = v3;
  result[145] = v2;
  return result;
}

int8x16_t sub_100376010(uint64_t a1, int8x16_t *a2, int8x16_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = (a2 + v3);
    do
    {
      v5 = *a3++;
      result = vaddq_s8(v5, *a2);
      *a2++ = result;
    }

    while (a2 < v4);
  }

  return result;
}

int8x16_t sub_10037603C(uint64_t a1, unint64_t a2, int8x16_t result)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = a2 + v3;
    result = *a2;
    v5 = vextq_s8(result, result, 8uLL).u64[0];
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = vadd_s8(*result.i8, v6);
      v9 = vadd_s8(vext_s8(*result.i8, v5, 3uLL), v8);
      v10 = vadd_s8(v9, vext_s8(*result.i8, v5, 6uLL));
      v11 = *(v7 + 12);
      v7 += 12;
      result = v11;
      v6 = vadd_s8(v10, vext_s8(v5, v5, 1uLL));
      *a2 = v8.i32[0];
      *(a2 + 3) = v9.i32[0];
      v5 = vextq_s8(result, result, 8uLL).u64[0];
      *(a2 + 6) = v10.i32[0];
      *(a2 + 9) = v6.i32[0];
      a2 = v7;
    }

    while (v7 < v4);
  }

  return result;
}

int8x8_t sub_1003760A0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = a2 + v2;
    v4 = 0;
    do
    {
      v8 = vld4_f32(a2);
      result = vadd_s8(v4, v8.val[0]);
      v6 = vadd_s8(result, v8.val[1]);
      v7 = vadd_s8(v6, v8.val[2]);
      v4 = vadd_s8(v7, v8.val[3]);
      *a2 = result.i32[0];
      *(a2 + 4) = v6.i32[0];
      *(a2 + 8) = v7.i32[0];
      *(a2 + 12) = v4.i32[0];
      a2 += 16;
    }

    while (a2 < v3);
  }

  return result;
}

int8x8_t sub_1003760D8(uint64_t a1, unint64_t a2, _OWORD *a3, int8x8_t result)
{
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    v5 = a2 + v4;
    v6 = *a2;
    result = vextq_s8(v6, v6, 8uLL).u64[0];
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *a3;
      a3 = (a3 + 12);
      v10 = v9;
      v11 = vadd_s8(vhadd_u8(v7, *v9.i8), *v6.i8);
      v12 = vext_s8(*v6.i8, result, 6uLL);
      v13 = vadd_s8(vhadd_u8(v11, *&vextq_s8(v10, v10, 3uLL)), vext_s8(*v6.i8, result, 3uLL));
      v14 = vext_s8(result, result, 1uLL);
      v15 = *(v8 + 12);
      v8 += 12;
      v6 = v15;
      result = vextq_s8(v6, v6, 8uLL).u64[0];
      v16 = vadd_s8(vhadd_u8(v13, *&vextq_s8(v10, v10, 6uLL)), v12);
      *a2 = v11.i32[0];
      *(a2 + 3) = v13.i32[0];
      v7 = vadd_s8(vhadd_u8(v16, *&vextq_s8(v10, vextq_s8(v10, v10, 8uLL), 9uLL)), v14);
      *(a2 + 6) = v16.i32[0];
      *(a2 + 9) = v7.i32[0];
      a2 = v8;
    }

    while (v8 < v5);
  }

  return result;
}

uint8x8_t sub_100376160(uint64_t a1, unint64_t a2, const float *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = a2 + v3;
    v5 = 0;
    do
    {
      v9 = vld4_f32(a2);
      v10 = vld4_f32(a3);
      result = vadd_s8(vhadd_u8(v5, v10.val[0]), v9.val[0]);
      v7 = vadd_s8(vhadd_u8(result, v10.val[1]), v9.val[1]);
      v8 = vadd_s8(vhadd_u8(v7, v10.val[2]), v9.val[2]);
      v5 = vadd_s8(vhadd_u8(v8, v10.val[3]), v9.val[3]);
      *a2 = result.i32[0];
      *(a2 + 4) = v7.i32[0];
      *(a2 + 8) = v8.i32[0];
      *(a2 + 12) = v5.i32[0];
      a2 += 16;
      a3 += 4;
    }

    while (a2 < v4);
  }

  return result;
}

int8x8_t sub_1003761B0(uint64_t a1, unint64_t a2, _OWORD *a3, int8x8_t result)
{
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    v5 = a2 + v4;
    v6 = *a2;
    result = vextq_s8(v6, v6, 8uLL).u64[0];
    v7 = 0;
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = *a3;
      a3 = (a3 + 12);
      v11 = v10;
      v12 = vabdq_u16(vaddl_u8(*v10.i8, v8), vshll_n_u8(v7, 1uLL));
      v13 = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(*v10.i8, v7), v12)), vcgt_u8(vabd_u8(*v10.i8, v7), vabd_u8(v8, v7))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v8, v7), v12)), v7, *v10.i8), v8), *v6.i8);
      v12.i64[0] = vextq_s8(v11, v11, 3uLL).u64[0];
      v14 = vabdq_u16(vaddl_u8(v13, *v12.i8), vshll_n_u8(*v10.i8, 1uLL));
      *v14.i8 = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(*v12.i8, *v10.i8), v14)), vcgt_u8(vabd_u8(*v12.i8, *v10.i8), vabd_u8(v13, *v10.i8))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v13, *v10.i8), v14)), *v10.i8, *v12.i8), v13), vext_s8(*v6.i8, result, 3uLL));
      v15 = vextq_s8(v11, v11, 6uLL).u64[0];
      v16 = vabdq_u16(vaddl_u8(*v14.i8, v15), vshll_n_u8(*v12.i8, 1uLL));
      *v12.i8 = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v15, *v12.i8), v16)), vcgt_u8(vabd_u8(v15, *v12.i8), vabd_u8(*v14.i8, *v12.i8))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(*v14.i8, *v12.i8), v16)), *v12.i8, v15), *v14.i8), vext_s8(*v6.i8, result, 6uLL));
      v17 = vext_s8(result, result, 1uLL);
      v18 = *(v9 + 12);
      v9 += 12;
      v6 = v18;
      v7 = vextq_s8(v11, vextq_s8(v11, v11, 8uLL), 9uLL).u64[0];
      result = vextq_s8(v6, v6, 8uLL).u64[0];
      v19 = vabdq_u16(vaddl_u8(*v12.i8, v7), vshll_n_u8(v15, 1uLL));
      *a2 = v13.i32[0];
      *(a2 + 3) = v14.i32[0];
      v8 = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v7, v15), v19)), vcgt_u8(vabd_u8(v7, v15), vabd_u8(*v12.i8, v15))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(*v12.i8, v15), v19)), v15, v7), *v12.i8), v17);
      *(a2 + 6) = v12.i32[0];
      *(a2 + 9) = v8.i32[0];
      a2 = v9;
    }

    while (v9 < v5);
  }

  return result;
}

int8x8_t sub_10037631C(uint64_t a1, unint64_t a2, const float *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = a2 + v3;
    v5 = 0;
    v6 = 0;
    do
    {
      v15 = vld4_f32(a2);
      v14 = vld4_f32(a3);
      v7 = vabdq_u16(vaddl_u8(v14.val[0], v6), vshll_n_u8(v5, 1uLL));
      result = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v14.val[0], v5), v7)), vcgt_u8(vabd_u8(v14.val[0], v5), vabd_u8(v6, v5))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v6, v5), v7)), v5, v14.val[0]), v6), v15.val[0]);
      v9 = vabdq_u16(vaddl_u8(result, v14.val[1]), vshll_n_u8(v14.val[0], 1uLL));
      v10 = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v14.val[1], v14.val[0]), v9)), vcgt_u8(vabd_u8(v14.val[1], v14.val[0]), vabd_u8(result, v14.val[0]))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(result, v14.val[0]), v9)), v14.val[0], v14.val[1]), result), v15.val[1]);
      v11 = vabdq_u16(vaddl_u8(v10, v14.val[2]), vshll_n_u8(v14.val[1], 1uLL));
      v12 = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v14.val[2], v14.val[1]), v11)), vcgt_u8(vabd_u8(v14.val[2], v14.val[1]), vabd_u8(v10, v14.val[1]))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v10, v14.val[1]), v11)), v14.val[1], v14.val[2]), v10), v15.val[2]);
      v13 = vabdq_u16(vaddl_u8(v12, v14.val[3]), vshll_n_u8(v14.val[2], 1uLL));
      v6 = vadd_s8(vbsl_s8(vorr_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v14.val[3], v14.val[2]), v13)), vcgt_u8(vabd_u8(v14.val[3], v14.val[2]), vabd_u8(v12, v14.val[2]))), vbsl_s8(vmovn_s16(vcgtq_u16(vabdl_u8(v12, v14.val[2]), v13)), v14.val[2], v14.val[3]), v12), v15.val[3]);
      *a2 = result.i32[0];
      *(a2 + 4) = v10.i32[0];
      *(a2 + 8) = v12.i32[0];
      *(a2 + 12) = v6.i32[0];
      a2 += 16;
      a3 += 4;
      v5 = v14.val[3];
    }

    while (a2 < v4);
  }

  return result;
}

uint64_t sub_100376458(uint64_t a1, unint64_t a2, size_t a3)
{
  if (a3 <= 8)
  {
    if (!a3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    a3 = 8;
  }

  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 + a2 > 8)
  {
    a3 = 8 - a2;
  }

  return memcmp((a1 + a2), &unk_1003EB2B8 + a2, a3);
}

void *sub_1003764A4(void *result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    return sub_10037BD48(result, a3 * a2);
  }

  return result;
}

uLong sub_1003764B8(uint64_t a1)
{
  result = crc32(0, 0, 0);
  *(a1 + 580) = result;
  return result;
}

uint64_t sub_1003764EC(uint64_t result, Bytef *buf, uint64_t a3)
{
  if ((*(result + 531) & 0x20) != 0)
  {
    v3 = (~*(result + 296) & 0x300) != 0;
  }

  else
  {
    v3 = (*(result + 296) & 0x800) == 0;
  }

  if (a3 && v3)
  {
    v4 = a3;
    v6 = result;
    result = *(result + 580);
    do
    {
      if (v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0xFFFFFFFFLL;
      }

      result = crc32(result, buf, v7);
      buf += v7;
      v4 -= v7;
    }

    while (v4);
    *(v6 + 580) = result;
  }

  return result;
}

uint64_t sub_100376574(uint64_t a1, char *a2)
{
  if (a2)
  {
    v4 = *a2;
    if (v4 != 49)
    {
      *(a1 + 296) |= 0x20000u;
    }

    v5 = v4 == 46;
    if (v4)
    {
      v6 = a2[1];
      if (v6 == 46)
      {
        ++v5;
      }

      else
      {
        *(a1 + 296) |= 0x20000u;
      }

      if (v5 <= 1 && v6 != 0)
      {
        v8 = a2[2];
        if (v8 != 54)
        {
          *(a1 + 296) |= 0x20000u;
        }

        if (v8 == 46)
        {
          ++v5;
        }

        if (v5 <= 1 && v8 != 0)
        {
          v10 = a2[3];
          if (v10 == 46)
          {
            ++v5;
          }

          else
          {
            *(a1 + 296) |= 0x20000u;
          }

          if (v5 <= 1 && v10 != 0)
          {
            v16 = a2[4];
            if (v16 != 51)
            {
              *(a1 + 296) |= 0x20000u;
            }

            if (v16 == 46)
            {
              ++v5;
            }

            if (v5 <= 1 && v16)
            {
              v17 = a2[5];
              if (v17 != 52)
              {
                *(a1 + 296) |= 0x20000u;
              }

              if (v17 == 46)
              {
                ++v5;
              }

              if (v5 <= 1 && v17)
              {
                if (a2[6])
                {
                  *(a1 + 296) |= 0x20000u;
                }
              }
            }
          }
        }
      }
    }

    if ((*(a1 + 298) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 296) |= 0x20000u;
  }

  v13 = sub_10037A9D8(v18, 0x80uLL, 0, "Application built with libpng-");
  v14 = sub_10037A9D8(v18, 0x80uLL, v13, a2);
  v15 = sub_10037A9D8(v18, 0x80uLL, v14, " but running with ");
  sub_10037A9D8(v18, 0x80uLL, v15, "1.6.34");
  sub_10037AB5C(a1, v18);
  return 0;
}

void *sub_100376770(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(v16, 0, sizeof(v16));
  bzero(__src, 0x4E0uLL);
  HIDWORD(__src[130]) = 1000000;
  __src[131] = 0x3E8000F4240;
  __src[132] = 8000000;
  sub_10037BDD4(__src, a5, a6, a7);
  sub_10037B8D8(__src, a2, a3, a4);
  if (setjmp(v16))
  {
    return 0;
  }

  __src[25] = v16;
  __src[26] = 0;
  __src[24] = &_longjmp;
  if (!sub_100376574(__src, a1))
  {
    return 0;
  }

  result = sub_10037BD48(__src, 0x4E0uLL);
  if (result)
  {
    v15 = result;
    __src[47] = sub_1003764A4;
    __src[48] = sub_1003764B4;
    __src[49] = result;
    memset(&__src[24], 0, 24);
    memcpy(result, __src, 0x4E0uLL);
    return v15;
  }

  return result;
}

void *sub_100376918(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = sub_10037BB9C(a1, 0x168uLL);
  if (!result)
  {
    return 0;
  }

  result[44] = 0;
  *(result + 20) = 0u;
  *(result + 21) = 0u;
  *(result + 18) = 0u;
  *(result + 19) = 0u;
  *(result + 16) = 0u;
  *(result + 17) = 0u;
  *(result + 14) = 0u;
  *(result + 15) = 0u;
  *(result + 12) = 0u;
  *(result + 13) = 0u;
  *(result + 10) = 0u;
  *(result + 11) = 0u;
  *(result + 8) = 0u;
  *(result + 9) = 0u;
  *(result + 6) = 0u;
  *(result + 7) = 0u;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  return result;
}

void sub_10037697C(uint64_t result, void **a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = *a2;
      if (*a2)
      {
        *a2 = 0;
        sub_100376A18(result, v2, 0xFFFFu, -1);
        v2[44] = 0;
        *(v2 + 20) = 0u;
        *(v2 + 21) = 0u;
        *(v2 + 18) = 0u;
        *(v2 + 19) = 0u;
        *(v2 + 16) = 0u;
        *(v2 + 17) = 0u;
        *(v2 + 14) = 0u;
        *(v2 + 15) = 0u;
        *(v2 + 12) = 0u;
        *(v2 + 13) = 0u;
        *(v2 + 10) = 0u;
        *(v2 + 11) = 0u;
        *(v2 + 8) = 0u;
        *(v2 + 9) = 0u;
        *(v2 + 6) = 0u;
        *(v2 + 7) = 0u;
        *(v2 + 4) = 0u;
        *(v2 + 5) = 0u;
        *(v2 + 2) = 0u;
        *(v2 + 3) = 0u;
        *v2 = 0u;
        *(v2 + 1) = 0u;

        sub_10037BAB4(result, v2);
      }
    }
  }
}

void sub_100376A18(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  if (!result || !a2)
  {
    return;
  }

  v8 = *(a2 + 160);
  if (!v8 || (a3 & *(a2 + 300) & 0x4000) == 0)
  {
LABEL_7:
    v9 = *(a2 + 300);
    if ((a3 & v9 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a4 != -1)
  {
    sub_10037BAB4(result, v8[7 * a4 + 1]);
    *(*(a2 + 160) + 56 * a4 + 8) = 0;
    goto LABEL_7;
  }

  if (*(a2 + 148) >= 1)
  {
    v17 = 0;
    v18 = 8;
    do
    {
      sub_10037BAB4(result, *(*(a2 + 160) + v18));
      ++v17;
      v18 += 56;
    }

    while (v17 < *(a2 + 148));
    v8 = *(a2 + 160);
  }

  sub_10037BAB4(result, v8);
  *(a2 + 160) = 0;
  *(a2 + 148) = 0;
  *(a2 + 152) = 0;
  v9 = *(a2 + 300);
  if ((a3 & v9 & 0x2000) != 0)
  {
LABEL_8:
    *(a2 + 8) &= ~0x10u;
    sub_10037BAB4(result, *(a2 + 184));
    *(a2 + 184) = 0;
    *(a2 + 34) = 0;
    v9 = *(a2 + 300);
  }

LABEL_9:
  if ((a3 & v9 & 0x100) != 0)
  {
    sub_10037BAB4(result, *(a2 + 336));
    sub_10037BAB4(result, *(a2 + 344));
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 8) &= ~0x4000u;
    v9 = *(a2 + 300);
  }

  if ((a3 & v9 & 0x80) != 0)
  {
    sub_10037BAB4(result, *(a2 + 264));
    sub_10037BAB4(result, *(a2 + 280));
    *(a2 + 264) = 0;
    *(a2 + 280) = 0;
    v10 = *(a2 + 288);
    if (v10)
    {
      if (*(a2 + 297))
      {
        v11 = 0;
        do
        {
          sub_10037BAB4(result, *(*(a2 + 288) + 8 * v11++));
        }

        while (v11 < *(a2 + 297));
        v10 = *(a2 + 288);
      }

      sub_10037BAB4(result, v10);
      *(a2 + 288) = 0;
    }

    *(a2 + 8) &= ~0x400u;
    v9 = *(a2 + 300);
  }

  if ((a3 & v9 & 0x10) != 0)
  {
    sub_10037BAB4(result, *(a2 + 128));
    sub_10037BAB4(result, *(a2 + 136));
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 8) &= ~0x1000u;
  }

  v12 = *(a2 + 320);
  if (v12 && (a3 & *(a2 + 300) & 0x20) != 0)
  {
    if (a4 == -1)
    {
      if (*(a2 + 328) >= 1)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          sub_10037BAB4(result, *(*(a2 + 320) + v19));
          sub_10037BAB4(result, *(*(a2 + 320) + v19 + 16));
          ++v20;
          v19 += 32;
        }

        while (v20 < *(a2 + 328));
        v12 = *(a2 + 320);
      }

      sub_10037BAB4(result, v12);
      *(a2 + 320) = 0;
      *(a2 + 328) = 0;
      *(a2 + 8) &= ~0x2000u;
      v15 = *(a2 + 304);
      if (!v15)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
    }

    v13 = 32 * a4;
    sub_10037BAB4(result, *&v12[v13]);
    sub_10037BAB4(result, *(*(a2 + 320) + v13 + 16));
    v14 = (*(a2 + 320) + v13);
    *v14 = 0;
    v14[2] = 0;
  }

  v15 = *(a2 + 304);
  if (v15)
  {
LABEL_26:
    if ((a3 & *(a2 + 300) & 0x200) != 0)
    {
      if (a4 == -1)
      {
        if (*(a2 + 312) >= 1)
        {
          v21 = 0;
          v22 = 8;
          do
          {
            sub_10037BAB4(result, *(*(a2 + 304) + v22));
            ++v21;
            v22 += 32;
          }

          while (v21 < *(a2 + 312));
          v15 = *(a2 + 304);
        }

        sub_10037BAB4(result, v15);
        *(a2 + 304) = 0;
        *(a2 + 312) = 0;
      }

      else
      {
        v16 = 32 * a4;
        sub_10037BAB4(result, *&v15[v16 + 8]);
        *(*(a2 + 304) + v16 + 8) = 0;
      }
    }
  }

LABEL_46:
  v23 = *(a2 + 300);
  if ((a3 & v23 & 0x8000) != 0)
  {
    v24 = *(a2 + 248);
    if (v24)
    {
      sub_10037BAB4(result, v24);
      *(a2 + 248) = 0;
    }

    v25 = *(a2 + 240);
    if (v25)
    {
      sub_10037BAB4(result, v25);
      *(a2 + 240) = 0;
    }

    *(a2 + 8) &= ~0x10000u;
    v23 = *(a2 + 300);
  }

  if ((a3 & v23 & 8) != 0)
  {
    sub_10037BAB4(result, *(a2 + 256));
    *(a2 + 256) = 0;
    *(a2 + 8) &= ~0x40u;
    v23 = *(a2 + 300);
  }

  if ((a3 & v23 & 0x1000) != 0)
  {
    sub_10037BAB4(result, *(a2 + 24));
    *(a2 + 24) = 0;
    *(a2 + 8) &= ~8u;
    *(a2 + 32) = 0;
    v23 = *(a2 + 300);
  }

  if ((a3 & v23 & 0x40) != 0)
  {
    v26 = *(a2 + 352);
    if (v26)
    {
      if (*(a2 + 4))
      {
        v27 = 0;
        do
        {
          sub_10037BAB4(result, *(*(a2 + 352) + 8 * v27++));
        }

        while (v27 < *(a2 + 4));
        v26 = *(a2 + 352);
      }

      sub_10037BAB4(result, v26);
      *(a2 + 352) = 0;
      v23 = *(a2 + 300);
    }

    *(a2 + 8) &= ~0x8000u;
  }

  v28 = a3 & 0xFFFFBDDF;
  if (a4 == -1)
  {
    v28 = a3;
  }

  *(a2 + 300) = v23 & ~v28;
}

uint64_t sub_100376E68(uint64_t result)
{
  if (result)
  {
    return *(result + 256);
  }

  return result;
}

uint64_t sub_100376E74(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 256) = a2;
  }

  return result;
}

uint64_t sub_100376E84(uint64_t a1, _DWORD *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 956);
    if (v4)
    {
      v5 = *(a1 + 960);
      v6 = v5 + (5 * v4);
      v7 = v6;
      while (1)
      {
        v8 = *(v7 - 5);
        v7 -= 5;
        if (*a2 == v8)
        {
          break;
        }

        v6 = v7;
        if (v7 <= v5)
        {
          return 0;
        }
      }

      return *(v6 - 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100376ED8(uint64_t result, unsigned int a2)
{
  v7 = bswap32(a2);
  if (result)
  {
    v2 = *(result + 956);
    if (v2)
    {
      v3 = *(result + 960);
      v4 = v3 + (5 * v2);
      v5 = v4;
      while (1)
      {
        v6 = *(v5 - 5);
        v5 -= 5;
        if (v7 == v6)
        {
          break;
        }

        v4 = v5;
        if (v5 <= v3)
        {
          return 0;
        }
      }

      return *(v4 - 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100376F34(uint64_t result, int a2)
{
  if (!*(result + 360))
  {
    if ((a2 + 7) > 9)
    {
      *(result + 360) = "unexpected zlib return code";
    }

    else
    {
      *(result + 360) = off_10047B7C8[a2 + 7];
    }
  }

  return result;
}

uint64_t sub_100376F70(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 - 625000001 < 0xDABF41CF)
  {
    v3 = *(a2 + 74);
    v4 = "gamma value out of range";
    goto LABEL_6;
  }

  v3 = *(a2 + 74);
  if ((*(result + 293) & 0x80) != 0 && (v3 & 8) != 0)
  {
    v4 = "duplicate";
LABEL_6:
    *(a2 + 74) = v3 | 0x8000;
    v5 = v4;
    v6 = 1;

    return sub_10037B590(result, v5, v6);
  }

  if ((*(a2 + 74) & 0x8000) == 0)
  {
    if (v3)
    {
      if (!*a2 || ((v7 = floor(*a2 * 100000.0 / a3 + 0.5), v7 <= 2147483650.0) ? (v8 = v7 < -2147483650.0) : (v8 = 1), !v8 ? (v9 = (v7 - 95000) >= 0x2711) : (v9 = 1), v9))
      {
        if ((v3 & 0x20) != 0)
        {
          v5 = "gamma value does not match sRGB";
          v6 = 2;

          return sub_10037B590(result, v5, v6);
        }

        v10 = a2;
        v11 = a3;
        result = sub_10037B590(result, "gamma value does not match libpng estimate", 0);
        a3 = v11;
        a2 = v10;
      }
    }

    *a2 = a3;
    *(a2 + 74) = v3 | 9;
  }

  return result;
}

void sub_1003770D4(_OWORD *result, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 112) = *(result + 1228);
    *(a2 + 68) = result[74];
    *(a2 + 84) = result[75];
    *(a2 + 100) = result[76];
    *(a2 + 52) = result[73];
    v2 = *(a2 + 126);
    v3 = *(a2 + 8);
    if ((v2 & 0x80000000) != 0)
    {
      v6 = v3 & 0xFFFFE7FA;
      *(a2 + 8) = v3 & 0xFFFFE7FA;
      v7 = *(a2 + 300);
      if ((v7 & 0x10) != 0)
      {
        v9 = a2;
        sub_10037BAB4(result, *(a2 + 128));
        sub_10037BAB4(result, *(v9 + 136));
        a2 = v9;
        *(v9 + 128) = 0;
        *(v9 + 136) = 0;
        *(v9 + 8) = v6;
      }

      *(a2 + 300) = v7 & 0xFFFFFFEF;
    }

    else
    {
      v4 = v3 & 0xFFFFF7FB | (16 * v2) & 0x800 | (4 * ((v2 >> 1) & 1));
      if (v2)
      {
        v5 = v4 | 1;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      *(a2 + 8) = v5;
    }
  }
}

uint64_t sub_1003771B4(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v8 = sub_100377324(&v16, a3);
  if (v8 == 1)
  {
    *(a2 + 74) |= 0x8000u;
    v15 = "invalid chromaticities";
LABEL_12:
    sub_10037B0C0(a1, v15);
    return 0;
  }

  if (v8)
  {
    *(a2 + 74) |= 0x8000u;
    sub_10037A948(a1, "internal error checking chromaticities");
  }

  v9 = *(a2 + 74);
  if (v9 < 0)
  {
    return 0;
  }

  if (a4 > 1 || (v9 & 2) == 0)
  {
    goto LABEL_8;
  }

  if (!sub_100378084(a3, (a2 + 4), 100))
  {
    *(a2 + 74) = v9 | 0x8000;
    v15 = "inconsistent chromaticities";
    goto LABEL_12;
  }

  if (!a4)
  {
    return 1;
  }

LABEL_8:
  v10 = *(a3 + 1);
  *(a2 + 4) = *a3;
  *(a2 + 20) = v10;
  v11 = v17;
  *(a2 + 36) = v16;
  *(a2 + 52) = v11;
  *(a2 + 68) = v18;
  v12 = sub_100378084(a3, &xmmword_1003EB6E4, 1000);
  v13 = v9 & 0x7FBD | 2;
  if (v12)
  {
    v13 = v9 | 0x42;
  }

  *(a2 + 74) = v13;
  return 2;
}

uint64_t sub_100377324(unsigned int *a1, unsigned int *a2)
{
  v4 = *a2;
  if (*a2 > 0x186A0)
  {
    return 1;
  }

  v6 = a2[1];
  if (v6 < 0)
  {
    return 1;
  }

  if (v6 > (100000 - v4))
  {
    return 1;
  }

  v7 = a2[2];
  if (v7 > 0x186A0)
  {
    return 1;
  }

  v8 = a2[3];
  if (v8 < 0)
  {
    return 1;
  }

  if (v8 > (100000 - v7))
  {
    return 1;
  }

  v9 = a2[4];
  if (v9 > 0x186A0)
  {
    return 1;
  }

  v10 = a2[5];
  if (v10 < 0)
  {
    return 1;
  }

  if (v10 > (100000 - v9))
  {
    return 1;
  }

  v11 = a2[6];
  if (v11 > 0x186A0)
  {
    return 1;
  }

  v12 = a2[7];
  if (v12 < 5 || v12 > (100000 - v11))
  {
    return 1;
  }

  v13 = 0;
  v14 = v6 - v10;
  v15 = v7 - v9;
  if (v7 != v9 && v6 != v10)
  {
    v16 = floor(v15 * v14 / 7.0 + 0.5);
    if (v16 > 2147483650.0 || v16 < -2147483650.0)
    {
      return 2;
    }

    v13 = v16;
  }

  v18 = 0;
  v19 = v8 - v10;
  v20 = v4 - v9;
  if (v4 != v9 && v8 != v10)
  {
    v21 = floor(v20 * v19 / 7.0 + 0.5);
    if (v21 <= 2147483650.0 && v21 >= -2147483650.0)
    {
      v18 = v21;
      goto LABEL_29;
    }

    return 2;
  }

LABEL_29:
  v99 = v2;
  v100 = v3;
  v23 = 0;
  v24 = v12 - v10;
  if (v7 != v9 && v12 != v10)
  {
    v25 = floor(v15 * v24 / 7.0 + 0.5);
    if (v25 > 2147483650.0 || v25 < -2147483650.0)
    {
      return 2;
    }

    v23 = v25;
  }

  v27 = 0;
  v28 = v11 - v9;
  if (v8 != v10 && v11 != v9)
  {
    v29 = floor(v19 * v28 / 7.0 + 0.5);
    if (v29 > 2147483650.0 || v29 < -2147483650.0)
    {
      return 2;
    }

    v27 = v29;
  }

  v31 = v23 - v27;
  if (v23 == v27)
  {
    return 1;
  }

  v32 = v13 - v18;
  if (v13 == v18)
  {
    v33 = 0;
  }

  else
  {
    v34 = floor(v12 * v32 / v31 + 0.5);
    if (v34 > 2147483650.0 || v34 < -2147483650.0)
    {
      return 1;
    }

    v33 = v34;
  }

  if (v33 <= v12)
  {
    return 1;
  }

  v36 = 0;
  if (v6 != v10 && v11 != v9)
  {
    v37 = floor(v14 * v28 / 7.0 + 0.5);
    if (v37 > 2147483650.0 || v37 < -2147483650.0)
    {
      return 2;
    }

    v36 = v37;
  }

  v39 = 0;
  if (v4 == v9 || v12 == v10)
  {
    goto LABEL_67;
  }

  v40 = floor(v20 * v24 / 7.0 + 0.5);
  if (v40 > 2147483650.0 || v40 < -2147483650.0)
  {
    return 2;
  }

  v39 = v40;
LABEL_67:
  if (v36 == v39)
  {
    return 1;
  }

  if (v13 == v18)
  {
    v42 = 0;
  }

  else
  {
    v43 = floor(v12 * v32 / (v36 - v39) + 0.5);
    if (v43 > 2147483650.0 || v43 < -2147483650.0)
    {
      return 1;
    }

    v42 = v43;
  }

  if (v42 <= v12)
  {
    return 1;
  }

  v45 = 1.0e10 / v12 + 0.5;
  v46 = floor(v45);
  v47 = v46 < -2147483650.0 || v46 > 2147483650.0;
  v48 = vcvtmd_s64_f64(v45);
  if (v47)
  {
    v48 = 0;
  }

  v49 = v33;
  v50 = 1.0e10 / v33 + 0.5;
  v51 = floor(v50);
  v52 = v51 < -2147483650.0 || v51 > 2147483650.0;
  v53 = vcvtmd_s64_f64(v50);
  v54 = v42;
  if (v52)
  {
    v55 = 0;
  }

  else
  {
    v55 = v53;
  }

  v56 = 1.0e10 / v54 + 0.5;
  v57 = floor(v56);
  v58 = v57 < -2147483650.0 || v57 > 2147483650.0;
  v59 = vcvtmd_s64_f64(v56);
  if (v58)
  {
    v59 = 0;
  }

  v60 = v48 - (v55 + v59);
  if (v60 < 1)
  {
    return 1;
  }

  if (v4)
  {
    v61 = floor(v4 * 100000.0 / v49 + 0.5);
    if (v61 > 2147483650.0 || v61 < -2147483650.0)
    {
      return 1;
    }

    v4 = v61;
  }

  *a1 = v4;
  v63 = a2[1];
  if (v63)
  {
    v64 = floor(v63 * 100000.0 / v49 + 0.5);
    if (v64 > 2147483650.0 || v64 < -2147483650.0)
    {
      return 1;
    }

    v63 = v64;
  }

  a1[1] = v63;
  v66 = 100000 - (a2[1] + *a2);
  if (v66)
  {
    v67 = floor(v66 * 100000.0 / v49 + 0.5);
    if (v67 > 2147483650.0 || v67 < -2147483650.0)
    {
      return 1;
    }

    v66 = v67;
  }

  a1[2] = v66;
  v69 = a2[2];
  if (v69)
  {
    v70 = floor(v69 * 100000.0 / v54 + 0.5);
    if (v70 > 2147483650.0 || v70 < -2147483650.0)
    {
      return 1;
    }

    v69 = v70;
  }

  a1[3] = v69;
  v72 = a2[3];
  if (v72)
  {
    v73 = floor(v72 * 100000.0 / v54 + 0.5);
    if (v73 > 2147483650.0 || v73 < -2147483650.0)
    {
      return 1;
    }

    v72 = v73;
  }

  a1[4] = v72;
  v75 = 100000 - (a2[3] + a2[2]);
  if (v75)
  {
    v76 = floor(v75 * 100000.0 / v54 + 0.5);
    if (v76 > 2147483650.0 || v76 < -2147483650.0)
    {
      return 1;
    }

    v75 = v76;
  }

  a1[5] = v75;
  v78 = a2[4];
  if (v78)
  {
    v79 = floor(v60 * v78 / 100000.0 + 0.5);
    if (v79 > 2147483650.0 || v79 < -2147483650.0)
    {
      return 1;
    }

    v78 = v79;
  }

  a1[6] = v78;
  v81 = a2[5];
  if (v81)
  {
    v82 = floor(v60 * v81 / 100000.0 + 0.5);
    if (v82 > 2147483650.0 || v82 < -2147483650.0)
    {
      return 1;
    }

    v81 = v82;
  }

  a1[7] = v81;
  v84 = 100000 - (a2[5] + a2[4]);
  if (v84)
  {
    v86 = floor(v60 * v84 / 100000.0 + 0.5);
    if (v86 > 2147483650.0 || v86 < -2147483650.0)
    {
      return 1;
    }

    v85 = v86;
  }

  else
  {
    v85 = 0;
  }

  v97 = 0u;
  v98 = 0u;
  a1[8] = v85;
  if (sub_10037A618(&v97, a1))
  {
    return 1;
  }

  v88 = a2[6];
  if (v88 < DWORD2(v98) - 5)
  {
    return 1;
  }

  if (v88 > DWORD2(v98) + 5)
  {
    return 1;
  }

  v89 = a2[7];
  if (v89 < HIDWORD(v98) - 5)
  {
    return 1;
  }

  if (v89 > HIDWORD(v98) + 5)
  {
    return 1;
  }

  if (*a2 < v97 - 5)
  {
    return 1;
  }

  if (*a2 > v97 + 5)
  {
    return 1;
  }

  v90 = a2[1];
  if (v90 < DWORD1(v97) - 5)
  {
    return 1;
  }

  if (v90 > DWORD1(v97) + 5)
  {
    return 1;
  }

  v91 = a2[2];
  if (v91 < DWORD2(v97) - 5)
  {
    return 1;
  }

  if (v91 > DWORD2(v97) + 5)
  {
    return 1;
  }

  v92 = a2[3];
  if (v92 < HIDWORD(v97) - 5)
  {
    return 1;
  }

  if (v92 > HIDWORD(v97) + 5)
  {
    return 1;
  }

  v93 = a2[4];
  if (v93 < v98 - 5 || v93 > v98 + 5)
  {
    return 1;
  }

  v94 = a2[5];
  return v94 > DWORD1(v98) + 5 || v94 < DWORD1(v98) - 5;
}

uint64_t sub_100377C14(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 74);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = a3;
  if (a3 >= 4)
  {
    v5 = a3;
    v6 = "invalid sRGB rendering intent";
LABEL_4:
    sub_100377E18(a1, a2, "sRGB", v5, v6);
    return 0;
  }

  v8 = *(a2 + 74);
  if ((v3 & 4) != 0 && *(a2 + 72) != a3)
  {
    v5 = a3;
    v6 = "inconsistent rendering intents";
    goto LABEL_4;
  }

  if ((v3 & 0x20) != 0)
  {
    sub_10037B0C0(a1, "duplicate sRGB information ignored");
    return 0;
  }

  else
  {
    if ((v3 & 2) != 0)
    {
      v9 = a2;
      v10 = a1;
      v11 = sub_100378084(&xmmword_1003EB6E4, (a2 + 4), 100);
      a1 = v10;
      if (!v11)
      {
        sub_10037B590(v10, "cHRM chunk does not match sRGB", 2);
        a1 = v10;
        v8 = *(v9 + 74);
      }
    }

    else
    {
      v9 = a2;
    }

    if (v8)
    {
      v12 = v9;
      if (!*v9 || ((v13 = floor(*v9 * 100000.0 / 45455.0 + 0.5), v13 <= 2147483650.0) ? (v14 = v13 < -2147483650.0) : (v14 = 1), !v14 ? (v15 = (v13 - 95000) >= 0x2711) : (v15 = 1), v15))
      {
        sub_10037B590(a1, "gamma value does not match sRGB", 2);
        v12 = v9;
        v8 = *(v9 + 74);
      }
    }

    else
    {
      v12 = v9;
    }

    *(v12 + 4) = xmmword_1003EB6E4;
    *(v12 + 20) = unk_1003EB6F4;
    *(v12 + 36) = xmmword_1003EB6C0;
    *(v12 + 72) = v4;
    *(v12 + 68) = 95053;
    *(v12 + 52) = unk_1003EB6D0;
    *v12 = 45455;
    *(v12 + 74) = v8 | 0xE7;
    return 1;
  }
}

uint64_t sub_100377E18(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, char *a5)
{
  if (a2)
  {
    *(a2 + 74) |= 0x8000u;
  }

  v10 = sub_10037A9D8(v26, 0xC4uLL, 0, "profile '");
  v11 = sub_10037A9D8(v26, v10 + 79, v10, a3);
  v12 = sub_10037A9D8(v26, 0xC4uLL, v11, "': ");
  v13 = v12;
  v14 = a4 >> 24;
  if ((a4 >> 24 == 32 || v14 - 58 > 0xFFFFFFFFFFFFFFF5 || (v14 & 0xFFFFFFFFFFFFFFDFLL) - 91 >= 0xFFFFFFFFFFFFFFE6) && (((a4 >> 16) & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || BYTE2(a4) == 32 || BYTE2(a4) - 58 >= 0xFFFFFFFFFFFFFFF6) && (((a4 >> 8) & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || BYTE1(a4) == 32 || BYTE1(a4) - 58 >= 0xFFFFFFFFFFFFFFF6) && ((a4 & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || a4 == 32 || a4 - 58 >= 0xFFFFFFFFFFFFFFF6))
  {
    v20 = &v26[v12];
    v26[v12] = 39;
    v21 = BYTE3(a4);
    if (BYTE3(a4) - 32 >= 0x5F)
    {
      v21 = 63;
    }

    v20[1] = v21;
    v22 = BYTE2(a4);
    if (BYTE2(a4) - 32 >= 0x5F)
    {
      v22 = 63;
    }

    v20[2] = v22;
    v23 = a4 >> 8;
    if (BYTE1(a4) - 32 >= 0x5F)
    {
      LOBYTE(v23) = 63;
    }

    v20[3] = v23;
    if (a4 - 32 >= 0x5F)
    {
      v24 = 63;
    }

    else
    {
      v24 = a4;
    }

    v20[4] = v24;
    *(v20 + 5) = 14887;
    v17 = v12 + 8;
    v20[7] = 32;
  }

  else
  {
    v15 = sub_10037AA34(v25, v26, 3, a4);
    v16 = sub_10037A9D8(v26, 0xC4uLL, v13, v15);
    v17 = sub_10037A9D8(v26, 0xC4uLL, v16, "h: ");
  }

  sub_10037A9D8(v26, 0xC4uLL, v17, a5);
  if (a2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  return sub_10037B590(a1, v26, v18);
}

BOOL sub_100378084(_DWORD *a1, _DWORD *a2, int a3)
{
  v3 = a1[6];
  v4 = a2[6];
  v5 = v4 - a3;
  v6 = v4 + a3;
  if (v3 < v5 || v3 > v6)
  {
    return 0;
  }

  v9 = a1[7];
  v10 = a2[7];
  v11 = v10 - a3;
  v12 = v10 + a3;
  if (v9 < v11 || v9 > v12)
  {
    return 0;
  }

  if (*a1 < *a2 - a3 || *a1 > *a2 + a3)
  {
    return 0;
  }

  v15 = 0;
  v16 = a1[1];
  v17 = a2[1];
  if (v16 >= v17 - a3 && v16 <= v17 + a3)
  {
    v15 = 0;
    v18 = a1[2];
    v19 = a2[2];
    if (v18 >= v19 - a3 && v18 <= v19 + a3)
    {
      v15 = 0;
      v20 = a1[3];
      v21 = a2[3];
      if (v20 >= v21 - a3 && v20 <= v21 + a3)
      {
        v15 = 0;
        v22 = a1[4];
        v23 = a2[4];
        if (v22 >= v23 - a3 && v22 <= v23 + a3)
        {
          v24 = a1[5];
          v25 = a2[5];
          v26 = v25 - a3;
          v27 = v25 + a3;
          return v24 >= v26 && v24 <= v27;
        }
      }
    }
  }

  return v15;
}

uint64_t sub_1003781A4(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (a4 > 0x83)
  {
    v5 = *(a1 + 1056);
    if (v5 && v5 < a4)
    {
      sub_100377E18(a1, a2, a3, a4, "exceeds application limits");
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_100377E18(a1, a2, a3, a4, "too short");
    return 0;
  }
}

uint64_t sub_10037820C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5, char a6)
{
  v6 = bswap32(*a5);
  if (v6 != a4)
  {
    v7 = "length does not match profile";
LABEL_12:
    a4 = v6;
    goto LABEL_13;
  }

  if ((a4 & 3) != 0 && *(a5 + 8) >= 4u)
  {
    a4 = a4;
    v7 = "invalid length";
LABEL_13:
    sub_100377E18(a1, a2, a3, a4, v7);
    return 0;
  }

  v6 = bswap32(*(a5 + 128));
  if (v6 > 0x1555554A || 12 * v6 + 132 > a4)
  {
    v7 = "tag count too large";
    goto LABEL_12;
  }

  a4 = bswap32(*(a5 + 64));
  if (a4 >= 0xFFFF)
  {
    v7 = "invalid rendering intent";
    goto LABEL_13;
  }

  if (a4 >= 4)
  {
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = a5;
    v15 = a6;
    sub_100377E18(a1, 0, a3, a4, "intent outside defined range");
    a6 = v15;
    a5 = v14;
    a1 = v11;
    a2 = v12;
    a3 = v13;
  }

  a4 = bswap32(*(a5 + 36));
  if (a4 != 1633907568)
  {
    v7 = "invalid signature";
    goto LABEL_13;
  }

  if (*(a5 + 68) != 0x100D6F60000 || *(a5 + 76) != 768802816)
  {
    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a5;
    v21 = a6;
    sub_100377E18(a1, 0, a3, 0, "PCS illuminant is not D50");
    a6 = v21;
    a5 = v20;
    a1 = v17;
    a2 = v18;
    a3 = v19;
  }

  a4 = bswap32(*(a5 + 16));
  if (a4 == 1196573017)
  {
    if ((a6 & 2) != 0)
    {
      v7 = "Gray color space not permitted on RGB PNG";
      a4 = 1196573017;
      goto LABEL_13;
    }
  }

  else
  {
    if (a4 != 1380401696)
    {
      v7 = "invalid ICC profile color space";
      goto LABEL_13;
    }

    if ((a6 & 2) == 0)
    {
      v7 = "RGB color space not permitted on grayscale PNG";
      a4 = 1380401696;
      goto LABEL_13;
    }
  }

  v22 = bswap32(*(a5 + 12));
  if (v22 <= 1852662635)
  {
    if (v22 == 1633842036)
    {
      v7 = "invalid embedded Abstract ICC profile";
      a4 = 1633842036;
      goto LABEL_13;
    }

    if (v22 == 1818848875)
    {
      v7 = "unexpected DeviceLink ICC profile class";
      a4 = 1818848875;
      goto LABEL_13;
    }

    v23 = 1835955314;
  }

  else if (v22 > 1935896177)
  {
    if (v22 == 1935896178)
    {
      goto LABEL_47;
    }

    v23 = 1936744803;
  }

  else
  {
    if (v22 == 1852662636)
    {
      v24 = "unexpected NamedColor ICC profile class";
      v25 = a1;
      v26 = a2;
      v27 = a3;
      v22 = 1852662636;
      goto LABEL_46;
    }

    v23 = 1886549106;
  }

  if (v22 != v23)
  {
    v24 = "unrecognized ICC profile class";
    v25 = a1;
    v26 = a2;
    v27 = a3;
LABEL_46:
    v28 = a5;
    sub_100377E18(a1, 0, a3, v22, v24);
    a5 = v28;
    a1 = v25;
    a2 = v26;
    a3 = v27;
  }

LABEL_47:
  a4 = bswap32(*(a5 + 20));
  v9 = 1;
  if (a4 != 1281450528 && a4 != 1482250784)
  {
    v7 = "unexpected ICC PCS encoding";
    goto LABEL_13;
  }

  return v9;
}

uint64_t sub_10037854C(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = bswap32(*(a5 + 128));
  if (!v5)
  {
    return 1;
  }

  for (i = a5 + 132; ; i += 12)
  {
    v11 = bswap32(*i);
    v12 = _byteswap_ulong(*(i + 4));
    v13 = a4 >= v12;
    v14 = a4 - v12;
    if (!v13 || bswap32(*(i + 8)) > v14)
    {
      break;
    }

    if ((*(i + 7) & 3) != 0)
    {
      sub_100377E18(a1, 0, a3, v11, "ICC profile tag start not a multiple of 4");
    }

    if (!--v5)
    {
      return 1;
    }
  }

  sub_100377E18(a1, a2, a3, v11, "ICC profile tag outside profile");
  return 0;
}

uint64_t sub_100378650(uint64_t result, uint64_t a2, unsigned int *a3, uLong a4)
{
  if ((~*(result + 896) & 0x30) == 0)
  {
    return result;
  }

  v4 = 0;
  v5 = bswap32(a3[21]);
  v6 = 0x10000;
  v7 = &word_1003EB722;
  v8 = 7;
  while (1)
  {
    if (v5 != *(v7 - 9) || bswap32(a3[22]) != *(v7 - 7) || bswap32(a3[23]) != *(v7 - 5) || bswap32(a3[24]) != *(v7 - 3))
    {
      goto LABEL_4;
    }

    if (!v4)
    {
      break;
    }

    if (v4 == *(v7 - 11))
    {
      goto LABEL_13;
    }

LABEL_4:
    v7 += 16;
    if (!--v8)
    {
      return result;
    }
  }

  v4 = bswap32(*a3);
  v6 = bswap32(a3[16]);
  if (v4 != *(v7 - 11))
  {
    goto LABEL_4;
  }

LABEL_13:
  if (v6 != *v7)
  {
    goto LABEL_4;
  }

  v9 = result;
  if (!a4)
  {
    v12 = adler32(0, 0, 0);
    a4 = adler32(v12, a3, v4);
    result = v9;
  }

  if (a4 == *(v7 - 15) && (v13 = crc32(0, 0, 0), v14 = crc32(v13, a3, v4), result = v9, v14 == *(v7 - 13)))
  {
    if (*(v7 - 1))
    {
      v15 = "known incorrect sRGB profile";
      v16 = v9;
      v17 = 2;
      goto LABEL_20;
    }

    if (!*(v7 - 2))
    {
      v15 = "out-of-date sRGB profile with no signature";
      v16 = v9;
      v17 = 0;
LABEL_20:
      sub_10037B590(v16, v15, v17);
      result = v9;
    }

    v18 = bswap32(a3[16]);

    return sub_100377C14(result, a2, v18);
  }

  else
  {

    return sub_10037B590(result, "Not recognizing known sRGB profile that has been edited", 0);
  }
}

uint64_t sub_10037884C(uint64_t result)
{
  if (*(result + 969) || (*(result + 1242) & 2) == 0)
  {
    return result;
  }

  v1 = *(result + 1208);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v2 = *(result + 1220);
  v3 = *(result + 1232);
  v4 = v2 + v1 + v3;
  if (v4 < 1)
  {
    goto LABEL_38;
  }

  if (v1)
  {
    v5 = floor(v1 * 32768.0 / v4 + 0.5);
    if (v5 > 2147483650.0 || v5 < -2147483650.0)
    {
      goto LABEL_38;
    }

    v1 = v5;
  }

  if ((v2 & 0x80000000) != 0 || v1 > 0x8000)
  {
    goto LABEL_38;
  }

  if (v2)
  {
    v7 = floor(v2 * 32768.0 / v4 + 0.5);
    if (v7 > 2147483650.0 || v7 < -2147483650.0)
    {
      goto LABEL_38;
    }

    v2 = v7;
  }

  if ((v3 & 0x80000000) != 0 || v2 > 0x8000)
  {
    goto LABEL_38;
  }

  if (!v3)
  {
    v12 = 0;
    v13 = v2 + v1;
    v14 = v2 + v1 == 32769;
    if (v2 + v1 <= 0x8001)
    {
      goto LABEL_29;
    }

LABEL_38:
    sub_10037A948(result, "internal error handling cHRM->XYZ");
  }

  v9 = v3 * 32768.0 / v4 + 0.5;
  v10 = floor(v9);
  if (v10 > 2147483650.0 || v10 < -2147483650.0)
  {
    goto LABEL_38;
  }

  v12 = vcvtmd_s64_f64(v9);
  if (v12 > 0x8000)
  {
    goto LABEL_38;
  }

  v13 = v2 + v1 + v12;
  v14 = v13 == 32769;
  if (v13 > 0x8001)
  {
    goto LABEL_38;
  }

LABEL_29:
  if (v14)
  {
    v15 = -1;
    if (v2 < v1)
    {
      goto LABEL_39;
    }

LABEL_35:
    if (v2 >= v12)
    {
      v2 += v15;
      goto LABEL_43;
    }

LABEL_39:
    if (v1 < v2 || v1 < v12)
    {
      v12 += v15;
    }

    else
    {
      v1 += v15;
    }

    goto LABEL_43;
  }

  if (!(v13 >> 15))
  {
    v15 = 1;
    if (v2 < v1)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_43:
  if (v2 + v1 + v12 != 0x8000)
  {
    sub_10037A948(result, "internal error handling cHRM coefficients");
  }

  *(result + 970) = v1;
  *(result + 972) = v2;
  return result;
}

uint64_t sub_100378A4C(int *a1, int a2, int a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  v5 = floor(a2 * a3 / a4 + 0.5);
  if (v5 > 2147483650.0 || v5 < -2147483650.0)
  {
    return 0;
  }

  v4 = v5;
LABEL_10:
  *a1 = v4;
  return 1;
}

uint64_t sub_100378AB4(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8)
{
  v15 = result;
  if (!a2)
  {
    v17 = "Image width is zero in IHDR";
    goto LABEL_7;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v17 = "Invalid image width in IHDR";
LABEL_7:
    result = sub_10037AB5C(result, v17);
    v16 = 1;
    if (*(v15 + 1044) >= a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v16 = 0;
  if (*(result + 1044) < a2)
  {
LABEL_8:
    result = sub_10037AB5C(v15, "Image width exceeds user limit in IHDR");
    v16 = 1;
  }

LABEL_9:
  if (a3)
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (*(v15 + 1048) >= a3)
      {
        goto LABEL_12;
      }

LABEL_17:
      result = sub_10037AB5C(v15, "Image height exceeds user limit in IHDR");
      v16 = 1;
      if (a4 > 0x10)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

    v18 = "Invalid image height in IHDR";
  }

  else
  {
    v18 = "Image height is zero in IHDR";
  }

  result = sub_10037AB5C(v15, v18);
  v16 = 1;
  if (*(v15 + 1048) < a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a4 > 0x10)
  {
LABEL_47:
    result = sub_10037AB5C(v15, "Invalid bit depth in IHDR");
    v16 = 1;
    v19 = a5 & 0xFFFFFFFB;
    if (a5 > 6)
    {
      goto LABEL_21;
    }

LABEL_20:
    if (v19 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (((1 << a4) & 0x10116) == 0)
  {
    goto LABEL_47;
  }

  v19 = a5 & 0xFFFFFFFB;
  if (a5 <= 6)
  {
    goto LABEL_20;
  }

LABEL_21:
  result = sub_10037AB5C(v15, "Invalid color type in IHDR");
  v16 = 1;
LABEL_22:
  if (a4 > 8 && a5 == 3 || (a5 != 4 ? (v20 = v19 == 2) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), a4 < 8 && v21))
  {
    result = sub_10037AB5C(v15, "Invalid color type/bit depth combination in IHDR");
    v16 = 1;
  }

  if (a6 >= 2)
  {
    result = sub_10037AB5C(v15, "Unknown interlace method in IHDR");
    v16 = 1;
  }

  if (a7)
  {
    result = sub_10037AB5C(v15, "Unknown compression method in IHDR");
    v16 = 1;
  }

  if ((*(v15 + 293) & 0x10) != 0 && *(v15 + 976))
  {
    result = sub_10037AB5C(v15, "MNG features are not allowed in a PNG datastream");
  }

  if (a8 && (a8 != 64 || (*(v15 + 976) & 4) == 0 || v19 != 2 || (*(v15 + 292) & 0x1000) != 0))
  {
    sub_10037AB5C(v15, "Unknown filter method in IHDR");
    if ((*(v15 + 293) & 0x10) != 0)
    {
      sub_10037AB5C(v15, "Invalid filter method in IHDR");
    }

LABEL_51:
    sub_10037A948(v15, "Invalid IHDR data");
  }

  if (v16)
  {
    goto LABEL_51;
  }

  return result;
}

uint64_t sub_100378D28(uint64_t a1, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  if (*a4 < a2)
  {
    while (1)
    {
      v6 = *(a1 + v5);
      if (v6 <= 0x30)
      {
        if (*(a1 + v5) > 0x2Du)
        {
          if (v6 == 46)
          {
            v7 = 16;
          }

          else
          {
            if (v6 != 48)
            {
              goto LABEL_44;
            }

            v7 = 8;
          }
        }

        else if (v6 == 43)
        {
          v7 = 4;
        }

        else
        {
          if (v6 != 45)
          {
            goto LABEL_44;
          }

          v7 = 132;
        }
      }

      else if (v6 - 49 >= 9)
      {
        if (v6 != 69 && v6 != 101)
        {
          goto LABEL_44;
        }

        v7 = 32;
      }

      else
      {
        v7 = 264;
      }

      v8 = v7 & 0x3C | v4 & 3;
      if (v8 <= 9)
      {
        break;
      }

      if (v8 > 31)
      {
        if (v8 != 32 && v8 != 33 || (v4 & 8) == 0)
        {
          goto LABEL_44;
        }

        v4 = v4 & 0x1C0 | 2;
        goto LABEL_4;
      }

      if (v8 == 10)
      {
        v4 |= 0x48u;
      }

      else
      {
        if (v8 != 16 || (v4 & 0x10) != 0)
        {
          goto LABEL_44;
        }

        if ((v4 & 8) != 0)
        {
          goto LABEL_37;
        }

        v4 = v4 & 0x1C0 | v7 | 1;
      }

LABEL_4:
      if (a2 == ++v5)
      {
        v5 = a2;
        goto LABEL_44;
      }
    }

    if (v8 > 7)
    {
      if (v8 == 8 && (v4 & 0x10) != 0)
      {
        v4 = v4 & 0x180 | 0x11;
      }

      v4 |= v7 | 0x40;
      goto LABEL_4;
    }

    if (v8 != 4)
    {
      if (v8 != 6 || (v4 & 0x3C) != 0)
      {
        goto LABEL_44;
      }

      v4 |= 4u;
      goto LABEL_4;
    }

    if ((v4 & 0x3C) != 0)
    {
      goto LABEL_44;
    }

LABEL_37:
    v4 |= v7;
    goto LABEL_4;
  }

LABEL_44:
  *a3 = v4;
  *a4 = v5;
  return (v4 >> 3) & 1;
}

uint64_t sub_100378EAC(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v5 = 0;
  result = sub_100378D28(a1, a2, &v6, &v5);
  if (result)
  {
    if (v5 == a2 || !*(a1 + v5))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100378F1C(uint64_t a1, uint64_t a2, double a3)
{
  v3 = floor(a3 * 100000.0 + 0.5);
  if (v3 > 2147483650.0 || v3 < -2147483650.0)
  {
    sub_10037B680(a1, a2);
  }

  return v3;
}

uint64_t sub_100378F6C(int a1)
{
  v1 = 1.0e10 / a1 + 0.5;
  v2 = floor(v1);
  v3 = v2 < -2147483650.0 || v2 > 2147483650.0;
  v4 = vcvtmd_s64_f64(v1);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unsigned int sub_100378FC8(int a1, int a2)
{
  if (a1 && a2 && ((v2 = 1.0e15 / a1 / a2 + 0.5, v3 = floor(v2), v3 <= 2147483650.0) ? (v4 = v3 < -2147483650.0) : (v4 = 1), !v4))
  {
    return vcvtmd_s64_f64(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100379024(uint64_t result, int a2)
{
  if ((result - 1) <= 0xFD)
  {
    LOBYTE(result) = vcvtmd_s64_f64(pow(result / 255.0, a2 * 0.00001) * 255.0 + 0.5);
  }

  return result;
}

uint64_t sub_100379088(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a2 - 1;
  if (*(a1 + 608) == 8)
  {
    if (v3 <= 0xFD)
    {
      LOBYTE(a2) = vcvtmd_s64_f64(pow(a2 / 255.0, a3 * 0.00001) * 255.0 + 0.5);
    }

    LOWORD(a2) = a2;
    return a2;
  }

  if (v3 > 0xFFFD)
  {
    return a2;
  }

  return vcvtmd_s64_f64(pow(a2 / 65535.0, a3 * 0.00001) * 65535.0 + 0.5);
}

void sub_100379148(uint64_t a1)
{
  sub_10037BAB4(a1, *(a1 + 672));
  *(a1 + 672) = 0;
  v2 = *(a1 + 680);
  if (v2)
  {
    v3 = *(a1 + 664);
    if (v3 != -23)
    {
      v4 = 0;
      v5 = 1 << (8 - v3);
      if (v5 <= 1)
      {
        v5 = 1;
      }

      v6 = 8 * v5;
      do
      {
        sub_10037BAB4(a1, *(*(a1 + 680) + v4));
        v4 += 8;
      }

      while (v6 != v4);
      v2 = *(a1 + 680);
    }

    sub_10037BAB4(a1, v2);
    *(a1 + 680) = 0;
  }

  sub_10037BAB4(a1, *(a1 + 688));
  *(a1 + 688) = 0;
  sub_10037BAB4(a1, *(a1 + 696));
  *(a1 + 696) = 0;
  v7 = *(a1 + 704);
  if (v7)
  {
    v8 = *(a1 + 664);
    if (v8 != -23)
    {
      v9 = 0;
      v10 = 1 << (8 - v8);
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = 8 * v10;
      do
      {
        sub_10037BAB4(a1, *(*(a1 + 704) + v9));
        v9 += 8;
      }

      while (v11 != v9);
      v7 = *(a1 + 704);
    }

    sub_10037BAB4(a1, v7);
    *(a1 + 704) = 0;
  }

  v12 = *(a1 + 712);
  if (v12)
  {
    v13 = *(a1 + 664);
    if (v13 != -23)
    {
      v14 = 0;
      v15 = 1 << (8 - v13);
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = 8 * v15;
      do
      {
        sub_10037BAB4(a1, *(*(a1 + 712) + v14));
        v14 += 8;
      }

      while (v16 != v14);
      v12 = *(a1 + 712);
    }

    sub_10037BAB4(a1, v12);
    *(a1 + 712) = 0;
  }
}

void sub_1003792BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 672) || *(a1 + 680))
  {
    sub_10037AB5C(a1, "gamma table being rebuilt");
    sub_100379148(a1);
  }

  if (a2 <= 8)
  {
    v6 = *(a1 + 668);
    if (v6 < 1)
    {
      v44 = 100000;
    }

    else
    {
      v7 = *(a1 + 1168);
      if (!v7 || ((v8 = 1.0e15 / v7 / v6 + 0.5, v9 = floor(v8), v9 <= 2147483650.0) ? (v10 = v9 < -2147483650.0) : (v10 = 1), v10))
      {
        v44 = 0;
      }

      else
      {
        v44 = vcvtmd_s64_f64(v8);
      }
    }

    v45 = sub_10037BB44(a1, 0x100uLL);
    *(a1 + 672) = v45;
    if ((v44 - 95000) > 0x2710)
    {
      for (i = 0; i != 256; ++i)
      {
        while ((i - 1) > 0xFD)
        {
          *(v45 + i) = i;
          if (++i == 256)
          {
            goto LABEL_68;
          }
        }

        *(v45 + i) = vcvtmd_s64_f64(pow(i / 255.0, v44 * 0.00001) * 255.0 + 0.5);
      }
    }

    else
    {
      *v45 = xmmword_1003EB180;
      v45[1] = xmmword_1003EB190;
      v45[7] = xmmword_1003EB1F0;
      v45[8] = xmmword_1003EB200;
      v45[9] = xmmword_1003EB210;
      v45[10] = xmmword_1003EB220;
      v45[11] = xmmword_1003EB230;
      v45[12] = xmmword_1003EB240;
      v45[13] = xmmword_1003EB250;
      v45[14] = xmmword_1003EB260;
      v45[15] = xmmword_1003EB270;
    }

LABEL_68:
    if ((*(a1 + 300) & 0x600080) != 0)
    {
      v47 = 1.0e10 / *(a1 + 1168) + 0.5;
      v48 = floor(v47);
      v49 = v48 < -2147483650.0 || v48 > 2147483650.0;
      v50 = vcvtmd_s64_f64(v47);
      if (v49)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      v52 = sub_10037BB44(a1, 0x100uLL);
      v53 = v52;
      *(a1 + 696) = v52;
      if ((v51 - 95000) > 0x2710)
      {
        for (j = 0; j != 256; ++j)
        {
          while ((j - 1) > 0xFD)
          {
            *(v53 + j) = j;
            if (++j == 256)
            {
              goto LABEL_81;
            }
          }

          *(v53 + j) = vcvtmd_s64_f64(pow(j / 255.0, v51 * 0.00001) * 255.0 + 0.5);
        }
      }

      else
      {
        *v52 = xmmword_1003EB180;
        v52[1] = xmmword_1003EB190;
        v52[7] = xmmword_1003EB1F0;
        v52[8] = xmmword_1003EB200;
        v52[9] = xmmword_1003EB210;
        v52[10] = xmmword_1003EB220;
        v52[11] = xmmword_1003EB230;
        v52[12] = xmmword_1003EB240;
        v52[13] = xmmword_1003EB250;
        v52[14] = xmmword_1003EB260;
        v52[15] = xmmword_1003EB270;
      }

LABEL_81:
      v55 = *(a1 + 668);
      if (v55 < 1)
      {
        v60 = *(a1 + 1168);
      }

      else
      {
        v56 = 1.0e10 / v55 + 0.5;
        v57 = floor(v56);
        v58 = v57 < -2147483650.0 || v57 > 2147483650.0;
        v59 = vcvtmd_s64_f64(v56);
        if (v58)
        {
          v60 = 0;
        }

        else
        {
          v60 = v59;
        }
      }

      v61 = sub_10037BB44(a1, 0x100uLL);
      v62 = v61;
      *(a1 + 688) = v61;
      if ((v60 - 95000) > 0x2710)
      {
        for (k = 0; k != 256; ++k)
        {
          while ((k - 1) > 0xFD)
          {
            *(v62 + k) = k;
            if (++k == 256)
            {
              return;
            }
          }

          *(v62 + k) = vcvtmd_s64_f64(pow(k / 255.0, v60 * 0.00001) * 255.0 + 0.5);
        }
      }

      else
      {
        *v61 = xmmword_1003EB180;
        v61[1] = xmmword_1003EB190;
        v61[7] = xmmword_1003EB1F0;
        v61[8] = xmmword_1003EB200;
        v61[9] = xmmword_1003EB210;
        v61[10] = xmmword_1003EB220;
        v61[11] = xmmword_1003EB230;
        v61[12] = xmmword_1003EB240;
        v61[13] = xmmword_1003EB250;
        v61[14] = xmmword_1003EB260;
        v61[15] = xmmword_1003EB270;
      }
    }

    return;
  }

  if ((*(a1 + 607) & 2) != 0)
  {
    v11 = *(a1 + 720);
    if (*(a1 + 721) > v11)
    {
      v11 = *(a1 + 721);
    }

    if (*(a1 + 722) > v11)
    {
      v11 = *(a1 + 722);
    }
  }

  else
  {
    v11 = *(a1 + 723);
  }

  v12 = v11 - 1;
  v13 = 16 - v11;
  if (v12 >= 0xF)
  {
    v13 = 0;
  }

  v14 = v13;
  if (v13 <= 5u)
  {
    v14 = 5;
  }

  v15 = *(a1 + 300) & 0x4000400;
  if (v15)
  {
    v13 = v14;
  }

  if ((v13 & 0xF8) != 0)
  {
    v16 = 8;
  }

  else
  {
    v16 = v13;
  }

  *(a1 + 664) = v16;
  v17 = *(a1 + 668);
  if (!v15)
  {
    if (v17 < 1)
    {
      v77 = 100000;
    }

    else
    {
      v23 = *(a1 + 1168);
      if (!v23 || ((v24 = 1.0e15 / v23 / v17 + 0.5, v25 = floor(v24), v25 <= 2147483650.0) ? (v26 = v25 < -2147483650.0) : (v26 = 1), v26))
      {
        v77 = 0;
      }

      else
      {
        v77 = vcvtmd_s64_f64(v24);
      }
    }

    sub_100379C40(a1, (a1 + 680), v16, v77);
    if ((*(a1 + 300) & 0x600080) != 0)
    {
      goto LABEL_101;
    }

    return;
  }

  if (v17 < 1)
  {
    v22 = 1.0;
  }

  else
  {
    v18 = *(a1 + 1168) * 0.00001 * v17 + 0.5;
    v19 = floor(v18);
    v20 = vcvtmd_s64_f64(v18);
    if (v19 < -2147483650.0 || v19 > 2147483650.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v20 * 0.00001;
    }
  }

  v27 = 8 - v16;
  v28 = (1 << (8 - v16));
  v29 = sub_10037BAD4(a1, 8 * v28);
  *(a1 + 680) = v29;
  v30 = v29;
  do
  {
    *v30++ = sub_10037BB44(a1, 0x200uLL);
    --v28;
  }

  while (v28);
  v31 = 0;
  v32 = 0;
  v33 = 0xFFu >> v16;
  do
  {
    v34 = 257 * v31;
    v35 = vcvtmd_s64_f64(pow(((257 * v31) + 128) / 65535.0, v22) * 65535.0 + 0.5);
    v36 = ((v35 << (16 - v16)) - v35 + 0x8000) / 0xFFFF;
    if (v32 <= v36)
    {
      v37 = v36 + 1;
      v38 = v37 - v32;
      if (v37 - v32 >= 2)
      {
        v39 = v32 + (v38 & 0xFFFFFFFE);
        v40 = v38 & 0xFFFFFFFE;
        do
        {
          v41 = v29[(v32 + 1) & v33];
          *(v29[v32 & v33] + 2 * (v32 >> v27)) = v34;
          *(v41 + 2 * ((v32 + 1) >> v27)) = v34;
          v32 += 2;
          v40 -= 2;
        }

        while (v40);
        if (v38 == (v38 & 0xFFFFFFFE))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v39 = v32;
      }

      do
      {
        *(v29[v39 & v33] + 2 * (v39 >> v27)) = v34;
        ++v39;
      }

      while (v37 != v39);
LABEL_49:
      v32 = v37;
    }

    ++v31;
  }

  while (v31 != 255);
  v42 = (256 << v27) - v32;
  if (256 << v27 > v32)
  {
    if (v42 <= 1)
    {
      v43 = v32;
      goto LABEL_99;
    }

    v43 = v32 + (v42 & 0xFFFFFFFE);
    v64 = v42 & 0xFFFFFFFE;
    do
    {
      v65 = v29[(v32 + 1) & v33];
      *(v29[v32 & v33] + 2 * (v32 >> v27)) = -1;
      *(v65 + 2 * ((v32 + 1) >> v27)) = -1;
      v32 += 2;
      v64 -= 2;
    }

    while (v64);
    if (v42 != (v42 & 0xFFFFFFFE))
    {
      do
      {
LABEL_99:
        *(v29[v43 & v33] + 2 * (v43 >> v27)) = -1;
        ++v43;
      }

      while (256 << v27 != v43);
    }
  }

  if ((*(a1 + 300) & 0x600080) != 0)
  {
LABEL_101:
    v66 = 1.0e10 / *(a1 + 1168) + 0.5;
    v67 = floor(v66);
    v68 = v67 < -2147483650.0 || v67 > 2147483650.0;
    v69 = vcvtmd_s64_f64(v66);
    if (v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = v69;
    }

    sub_100379C40(a1, (a1 + 712), v16, v70);
    v71 = *(a1 + 668);
    if (v71 < 1)
    {
      v76 = *(a1 + 1168);
    }

    else
    {
      v72 = 1.0e10 / v71 + 0.5;
      v73 = floor(v72);
      v74 = v73 < -2147483650.0 || v73 > 2147483650.0;
      v75 = vcvtmd_s64_f64(v72);
      if (v74)
      {
        v76 = 0;
      }

      else
      {
        v76 = v75;
      }
    }

    sub_100379C40(a1, (a1 + 704), v16, v76);
  }
}