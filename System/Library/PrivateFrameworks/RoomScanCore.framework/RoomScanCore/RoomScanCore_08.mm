void sub_26224EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  *(v61 + 88) = v60;
  *(v62 - 176) = &a41;
  sub_2621C5004((v62 - 176));
  if (__p)
  {
    a60 = __p;
    operator delete(__p);
  }

  sub_2621CC7B4(a50);
  if (a52)
  {
    operator delete(a52);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void sub_26224EE08(uint64_t a1, void *a2, int32x2_t *a3, void *a4, uint64_t *a5, uint64_t a6, void *a7)
{
  v419 = *MEMORY[0x277D85DE8];
  v356 = a4;
  v10 = a7;
  v355 = a6;
  if (*(a6 + 137))
  {
    goto LABEL_515;
  }

  v348 = v10;
  if (v10)
  {
    v13 = v10[1];
    v14 = (v10[2] - v13) >> 4;
    v386 = v13;
    v387 = v14;
    v15 = v10[4];
    v16 = (v10[5] - v15) >> 4;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v386 = 0;
    v387 = 0;
  }

  v385[0] = v15;
  v385[1] = v16;
  v17 = a2[4];
  v18 = a2[5];
  v368 = v14;
  if (v17 != v18)
  {
    do
    {
      v19 = sub_2621C5224(v406);
      v20 = *(v17 + 64);
      v21 = *(v17 + 68);
      objc_msgSend_confidence(*(v17 + 8), v22, v23, v19);
      v25 = v24;
      v26 = objc_opt_new();
      sub_26225C650(v406, (v17 + 16), v26, 0, v20, v21, v25);

      sub_26224663C(a2 + 1, v406, v27);
      sub_2621C50C4(v406);
      v17 += 176;
    }

    while (v17 != v18);
    v17 = a2[4];
    v18 = a2[5];
  }

  for (; v17 != v18; v17 += 176)
  {
    v29 = a2[1];
    v28 = a2[2];
    if (v29 != v28)
    {
      v30 = (v17 + 16);
      do
      {
        v31 = vsub_f32(v29[2], v29[3]);
        if (sqrtf(vaddv_f32(vmul_f32(v31, v31))) < 0.5)
        {
          sub_2621DCD34(__p, (v17 + 16), v29 + 2);
          v32 = 0;
          v33 = __p[0];
          v34 = *__p[0];
          for (i = 1; i != 4; ++i)
          {
            if (*(__p[0] + i) < v34)
            {
              v32 = i;
              v34 = *(__p[0] + i);
            }
          }

          if (v34 <= *(a1 + 492))
          {
            sub_26223FEB8(v406, (v17 + 16), v29 + 2);
            if (*&v406[24] < *(a1 + 484) && *&v406[8] >= *(a1 + 476) && *&v406[20] < *(a1 + 472))
            {
              v36 = *(v17 + 16);
              v37 = *(v17 + 24);
              v38 = vsub_f32(v37, v36);
              v39 = vaddv_f32(vmul_f32(vsub_f32(v29[((v32 & 1) == 0) + 2], v36), v38));
              v40 = vaddv_f32(vmul_f32(v38, v38));
              if (v40 < 0.000001)
              {
                v40 = 0.000001;
              }

              v41 = vmla_n_f32(v36, v38, v39 / v40);
              if (vaddv_f32(vmul_f32(vsub_f32(v41, v36), vsub_f32(v41, v37))) <= 0.00001)
              {
                v42 = vsub_f32(v41, *(v30 + 8 * (1 - (v32 >> 1))));
                if (sqrtf(vaddv_f32(vmul_f32(v42, v42))) >= 0.5)
                {
                  *__b = *v30;
                  *(&v43 + 1) = *&__b[8];
                  *&__b[8 * (v32 >> 1)] = v41;
                  *(&v44 + 1) = *&__b[8];
                  *v30 = *__b;
                  *&v44 = *(v17 + 16);
                  *&v43 = *(v17 + 24);
                  v45 = v44;
                  DWORD2(v45) = *(v17 + 64);
                  v46 = v43;
                  DWORD2(v46) = *(v17 + 68);
                  DWORD2(v44) = DWORD2(v46);
                  DWORD2(v43) = DWORD2(v45);
                  *(v17 + 32) = v45;
                  *(v17 + 48) = v46;
                  v47 = *(v17 + 8);
                  src[0] = v44;
                  src[1] = v46;
                  src[2] = v43;
                  src[3] = v45;
                  if (v47)
                  {
                    objc_copyStruct((v47 + 272), src, 64, 1, 0);
                  }
                }
              }
            }
          }

          operator delete(v33);
        }

        v29 += 22;
      }

      while (v29 != v28);
    }
  }

  *(a1 + 904) = 0;
  if (*(a1 + 768) != *(a1 + 776) || (v82 = a2[1], v83 = a2[2], v82 == v83))
  {
LABEL_29:
    *(a1 + 904) = 1;
  }

  else
  {
    v84 = v82 + 16;
    while (1)
    {
      objc_msgSend_confidence(*(v84 - 8), v11, v12);
      if (v85 >= *(a1 + 572) && (sub_262247B68(v13, v368, v84, 2uLL) & 1) != 0)
      {
        break;
      }

      v86 = v84 + 160;
      v84 += 176;
      if (v86 == v83)
      {
        goto LABEL_29;
      }
    }
  }

  v48 = &v406[16];
  for (j = 8; j != 32; j += 8)
  {
    v50 = *(v355 + j);
    *(v48 - 2) = 0;
    *(v48 - 1) = v50;
    *v48 = 1;
    v48 += 3;
  }

  sub_262202A58(v355 + 8, v406, 0, 1, *(v355 + 8), 1);
  sub_262224D0C(__p, v355, v406);
  v404[1] = 0;
  v404[0] = 0;
  v405 = 0;
  *__b = 0;
  sub_2621C9004(v404, __b);
  v51 = v404[0];
  v52 = MEMORY[0x277D82670];
  if (v404[1] != v404[0])
  {
    v53 = 0;
    v54 = (v404[1] - v404[0]) >> 3;
    v55 = MEMORY[0x277D82680];
    do
    {
      if (v51[v53] >= 3uLL)
      {
        sub_2621D552C(v52, "runtime_err in ", 15);
        sub_2621D552C(v52, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v52, " ", 1);
        v56 = MEMORY[0x266727260](v52, 28);
        sub_2621D552C(v56, " ", 1);
        sub_2621D552C(v56, "format_reduce_axes", 18);
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v57 = std::locale::use_facet(__b, v55);
        (v57->__vftable[2].~facet_0)(v57, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v58 = std::locale::use_facet(__b, v55);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v53;
    }

    while (v53 < v54);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v59 = v404[1];
  v60 = v404[0];
  v369 = (v404[1] - v404[0]) >> 3;
  v372 = v404[1] - v404[0];
  if ((v404[1] - v404[0]) != 8)
  {
    v61 = 0;
    v62 = MEMORY[0x277D82680];
    do
    {
      if (v60[v61] == v60[v61 + 1])
      {
        sub_2621D552C(v52, "runtime_err in ", 15);
        sub_2621D552C(v52, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v52, " ", 1);
        v63 = MEMORY[0x266727260](v52, 33);
        sub_2621D552C(v63, " ", 1);
        sub_2621D552C(v63, "format_reduce_axes", 18);
        std::ios_base::getloc((v63 + *(*v63 - 24)));
        v64 = std::locale::use_facet(__b, v62);
        (v64->__vftable[2].~facet_0)(v64, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v65 = std::locale::use_facet(__b, v62);
        (v65->__vftable[2].~facet_0)(v65, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v61;
    }

    while (v61 < v369 - 1);
  }

  v66 = 0;
  v417 = 0uLL;
  *&v418 = 0;
  v67 = v369;
  if (v369 <= 1)
  {
    v67 = 1;
  }

  v68 = v67 - 1;
  do
  {
    if (v59 != v60)
    {
      if (*v60 == v66)
      {
LABEL_47:
        *__b = 1;
        sub_2621C9004(&v417, __b);
        goto LABEL_53;
      }

      v69 = 0;
      while (v68 != v69)
      {
        v70 = v60[++v69];
        if (v70 == v66)
        {
          if (v69 < v369)
          {
            goto LABEL_47;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v417, &__p[v66 + 1]);
LABEL_53:
    ++v66;
  }

  while (v66 != 3);
  sub_2622042C8(__b, &v417);
  v71 = 0;
  v399 = 0u;
  v400 = 0u;
  *v398 = 0u;
  do
  {
    v398[v71] = 1;
    if (v71 <= 1)
    {
      v72 = v71;
      v73 = 1;
      do
      {
        v73 *= *&__b[8 * v72++ + 8];
      }

      while (v72 != 2);
      v398[v71] = v73;
    }

    ++v71;
  }

  while (v71 != 3);
  sub_262226244(v406, __b);
  v74 = *(v60 + v372 - 8);
  v75 = v74;
  v362 = v74;
  if (v74 != 2)
  {
    goto LABEL_66;
  }

  if (v369 == 1 || (v76 = *(v60 + v372 - 16), v60[v369 - 1] - v76 != 1))
  {
    v396 = 0;
    v395 = 0;
    v397 = 0;
    v393 = 0;
    v392 = 0;
    v75 = 2;
    v394 = 0;
  }

  else
  {
    v77 = &v60[v369 - 3];
    v78 = v369 - 2;
    do
    {
      v75 = v76;
      if (!v78)
      {
        break;
      }

      v76 = *v77;
      v79 = v77[1];
      --v77;
      --v78;
    }

    while (v79 - v76 == 1);
LABEL_66:
    v396 = 0;
    v395 = 0;
    v397 = 0;
    v393 = 0;
    v392 = 0;
    v394 = 0;
    if (!v75)
    {
      v373 = 0;
      v80 = 1;
      v81 = 1;
      __src = 1;
LABEL_86:
      v92 = 8 * v80 + 8;
      v93 = 1;
      do
      {
        v93 *= *(__p + v92);
        v92 += 8;
      }

      while (v92 != 32);
      goto LABEL_90;
    }
  }

  v373 = v75;
  v87 = 0;
  v81 = 1;
  while (2)
  {
    v88 = &__p[v87 + 1];
    v89 = *v88;
    sub_2621C9004(&v395, v88);
    if (v59 != v60)
    {
      if (*v60 == v87)
      {
LABEL_78:
        *&v416[0] = 0;
        sub_2621C9004(&v392, v416);
        goto LABEL_84;
      }

      v90 = 0;
      while (v68 != v90)
      {
        v91 = v60[++v90];
        if (v91 == v87)
        {
          if (v90 < v369)
          {
            goto LABEL_78;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v392, &v398[v87]);
LABEL_84:
    v81 *= v89;
    if (++v87 != v373)
    {
      continue;
    }

    break;
  }

  __src = 0;
  v80 = v373 + 1;
  v74 = v362;
  if (v373 + 1 <= 2)
  {
    goto LABEL_86;
  }

  v93 = 1;
LABEL_90:
  if (v74 == 2)
  {
    v94 = __p[v373 + 1];
  }

  else
  {
    v94 = 1;
  }

  v95 = v413;
  if (v74 == 2)
  {
    v96 = v81;
  }

  else
  {
    v96 = __p[v373 + 1];
  }

  memset(&v416[1], 0, 32);
  if (v74 == 2)
  {
    v97 = 1;
  }

  else
  {
    v97 = v81;
  }

  v360 = v97;
  v416[0] = 0uLL;
  memset(v415, 0, sizeof(v415));
  *__dst = 0uLL;
  if (__src)
  {
    v389 = 0;
    sub_2621C9004(&v395, &v389);
    v98 = 0;
    v390 = 0;
    v389 = 0;
    v391 = 0;
    v99 = v373;
    v100 = __src;
    goto LABEL_113;
  }

  v359 = v94;
  v101 = 0;
  v390 = 0;
  v389 = 0;
  v391 = 0;
  v388 = 0;
  if (v373 <= 1)
  {
    v102 = 1;
  }

  else
  {
    v102 = v373;
  }

  while (2)
  {
    if (v59 == v60)
    {
LABEL_110:
      sub_2621C9004(&v389, &v388);
    }

    else if (*v60 != v101)
    {
      v103 = 0;
      while (v68 != v103)
      {
        v104 = v60[++v103];
        if (v104 == v101)
        {
          if (v103 < v369)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        }
      }

      goto LABEL_110;
    }

LABEL_111:
    v388 = ++v101;
    if (v101 != v102)
    {
      continue;
    }

    break;
  }

  v99 = v373;
  v98 = v373 - 1;
  v100 = __src;
  v74 = v362;
  v94 = v359;
LABEL_113:
  v105 = v93 * v94;
  if (v74 == 2)
  {
    if (v381)
    {
      if (v96)
      {
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v109 = v382;
        v110 = v395;
        v111 = (v382 + 4);
        if (v105 <= 1)
        {
          v112 = 1;
        }

        else
        {
          v112 = v93 * v94;
        }

        v113 = v392;
        v114 = 4 * v112;
        v115 = 1;
        v116 = v95;
        while (1)
        {
          v117 = *(v109 + 4 * v107);
          if (v105 >= 2)
          {
            break;
          }

          ++v107;
          if (!v115)
          {
            goto LABEL_128;
          }

LABEL_130:
          *v116 = v117;
          v122 = v98;
          do
          {
            v123 = *(v416 + v122) + 1;
            *(v416 + v122) = v123;
            if (v123 != v110[v122])
            {
              break;
            }

            *(v416 + v122) = 0;
            v223 = v122-- <= 0;
          }

          while (!v223);
          if (v100)
          {
            v115 = 0;
            v124 = 0;
          }

          else
          {
            v124 = 0;
            v125 = v416;
            v126 = v113;
            v127 = v99;
            do
            {
              v129 = *v125++;
              v128 = v129;
              v130 = *v126++;
              v124 += v130 * v128;
              --v127;
            }

            while (v127);
            v115 = v124 > v108;
            if (v124 > v108)
            {
              v108 = v124;
            }
          }

          v116 = &v95[v124];
          ++v106;
          v111 = (v111 + v114);
          if (v106 == v96)
          {
            goto LABEL_250;
          }
        }

        v118 = v105 - 1;
        v119 = v111;
        do
        {
          v120 = *v119++;
          v121 = v120;
          if (v117 < v120)
          {
            v117 = v121;
          }

          --v118;
        }

        while (v118);
        v107 += v105;
        if (v115)
        {
          goto LABEL_130;
        }

LABEL_128:
        if (*v116 >= v117)
        {
          v117 = *v116;
        }

        goto LABEL_130;
      }
    }

    else if (v96)
    {
      v158 = 0;
      v159 = 0;
      v160 = v382;
      v161 = v395;
      v162 = v392;
      v163 = 1;
      v164 = v95;
      do
      {
        v165 = 0;
        v166 = 0;
        do
        {
          v166 += *(v378 + v165 * 8 + 8) * __dst[v165];
          ++v165;
        }

        while (v165 != 3);
        v167 = 0;
        v168 = *(v160 + 4 * v166);
        do
        {
          v169 = *(v415 + v167) + 1;
          *(v415 + v167) = v169;
          if (v169 != *(v377 + v167 + 8))
          {
            break;
          }

          *(v415 + v167) = 0;
          v167 -= 8;
        }

        while (v167 != -24);
        if (v105 >= 2)
        {
          for (k = 1; k != v105; ++k)
          {
            v171 = 0;
            v172 = 0;
            do
            {
              v172 += *(v378 + v171 * 8 + 8) * __dst[v171];
              ++v171;
            }

            while (v171 != 3);
            v173 = 0;
            if (v168 < *(v160 + 4 * v172))
            {
              v168 = *(v160 + 4 * v172);
            }

            do
            {
              v174 = *(v415 + v173) + 1;
              *(v415 + v173) = v174;
              if (v174 != *(v377 + v173 + 8))
              {
                break;
              }

              *(v415 + v173) = 0;
              v173 -= 8;
            }

            while (v173 != -24);
          }
        }

        if (!v163 && *v164 >= v168)
        {
          v168 = *v164;
        }

        *v164 = v168;
        v175 = v98;
        do
        {
          v176 = *(v416 + v175) + 1;
          *(v416 + v175) = v176;
          if (v176 != v161[v175])
          {
            break;
          }

          *(v416 + v175) = 0;
          v223 = v175-- <= 0;
        }

        while (!v223);
        if (v100)
        {
          v163 = 0;
          v177 = 0;
        }

        else
        {
          v177 = 0;
          v178 = v416;
          v179 = v162;
          v180 = v99;
          do
          {
            v182 = *v178++;
            v181 = v182;
            v183 = *v179++;
            v177 += v183 * v181;
            --v180;
          }

          while (v180);
          v163 = v177 > v159;
          if (v177 > v159)
          {
            v159 = v177;
          }
        }

        v164 = &v95[v177];
        ++v158;
      }

      while (v158 != v96);
    }
  }

  else if (v381)
  {
    if (v360)
    {
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = v395;
      v135 = v392;
      v136 = 1;
      v137 = v382;
      v138 = v95;
      do
      {
        if (v136)
        {
          if (v105)
          {
            v139 = v138;
            v140 = v93 * v94;
            do
            {
              *v139++ = *(v137 + 4 * v132++);
              --v140;
            }

            while (v140);
          }
        }

        else
        {
          v141 = v138;
          v142 = v93 * v94;
          if (v105)
          {
            do
            {
              v143 = *(v137 + 4 * v132);
              if (*v141 >= v143)
              {
                v143 = *v141;
              }

              *v141++ = v143;
              ++v132;
              --v142;
            }

            while (v142);
          }
        }

        if (v96 >= 2)
        {
          v144 = v382;
          for (m = 1; m != v96; ++m)
          {
            v146 = v138;
            v147 = v93 * v94;
            if (v105)
            {
              do
              {
                v148 = *(v144 + 4 * v132);
                if (*v146 >= v148)
                {
                  v148 = *v146;
                }

                *v146++ = v148;
                ++v132;
                --v147;
              }

              while (v147);
            }
          }
        }

        v149 = v98;
        do
        {
          v150 = *(v416 + v149) + 1;
          *(v416 + v149) = v150;
          if (v150 != v134[v149])
          {
            break;
          }

          *(v416 + v149) = 0;
          v223 = v149-- <= 0;
        }

        while (!v223);
        if (v100)
        {
          v136 = 0;
          v151 = 0;
        }

        else
        {
          v151 = 0;
          v152 = v416;
          v153 = v135;
          v154 = v99;
          do
          {
            v156 = *v152++;
            v155 = v156;
            v157 = *v153++;
            v151 += v157 * v155;
            --v154;
          }

          while (v154);
          v136 = v151 > v133;
          if (v151 > v133)
          {
            v133 = v151;
          }
        }

        v138 = &v95[v151];
        ++v131;
      }

      while (v131 != v360);
    }
  }

  else if (v360)
  {
    v184 = 0;
    v185 = 0;
    v186 = v395;
    v187 = v392;
    v188 = v382;
    v189 = 1;
    v190 = v95;
    do
    {
      if (v189)
      {
        if (v105)
        {
          for (n = 0; n != v105; ++n)
          {
            v192 = 0;
            v193 = 0;
            do
            {
              v193 += *(v378 + v192 * 8 + 8) * __dst[v192];
              ++v192;
            }

            while (v192 != 3);
            v194 = 0;
            v190[n] = *(v188 + 4 * v193);
            do
            {
              v195 = *(v415 + v194) + 1;
              *(v415 + v194) = v195;
              if (v195 != *(v377 + v194 + 8))
              {
                break;
              }

              *(v415 + v194) = 0;
              v194 -= 8;
            }

            while (v194 != -24);
          }
        }
      }

      else if (v105)
      {
        for (ii = 0; ii != v105; ++ii)
        {
          v197 = 0;
          v198 = 0;
          do
          {
            v198 += *(v378 + v197 * 8 + 8) * __dst[v197];
            ++v197;
          }

          while (v197 != 3);
          v199 = 0;
          v200 = *(v188 + 4 * v198);
          if (v190[ii] >= v200)
          {
            v200 = v190[ii];
          }

          v190[ii] = v200;
          do
          {
            v201 = *(v415 + v199) + 1;
            *(v415 + v199) = v201;
            if (v201 != *(v377 + v199 + 8))
            {
              break;
            }

            *(v415 + v199) = 0;
            v199 -= 8;
          }

          while (v199 != -24);
        }
      }

      v202 = v98;
      if (v96 > 1)
      {
        v203 = v382;
        for (jj = 1; jj != v96; ++jj)
        {
          if (v105)
          {
            for (kk = 0; kk != v105; ++kk)
            {
              v206 = 0;
              v207 = 0;
              do
              {
                v207 += *(v378 + v206 * 8 + 8) * __dst[v206];
                ++v206;
              }

              while (v206 != 3);
              v208 = 0;
              v209 = *(v203 + 4 * v207);
              if (v190[kk] >= v209)
              {
                v209 = v190[kk];
              }

              v190[kk] = v209;
              do
              {
                v210 = *(v415 + v208) + 1;
                *(v415 + v208) = v210;
                if (v210 != *(v377 + v208 + 8))
                {
                  break;
                }

                *(v415 + v208) = 0;
                v208 -= 8;
              }

              while (v208 != -24);
            }
          }
        }

        v202 = v98;
      }

      do
      {
        v211 = *(v416 + v202) + 1;
        *(v416 + v202) = v211;
        if (v211 != v186[v202])
        {
          break;
        }

        *(v416 + v202) = 0;
        v223 = v202-- <= 0;
      }

      while (!v223);
      if (v100)
      {
        v189 = 0;
        v212 = 0;
      }

      else
      {
        v212 = 0;
        v213 = v416;
        v214 = v187;
        v215 = v99;
        do
        {
          v217 = *v213++;
          v216 = v217;
          v218 = *v214++;
          v212 += v218 * v216;
          --v215;
        }

        while (v215);
        v189 = v212 > v185;
        if (v212 > v185)
        {
          v185 = v212;
        }
      }

      v190 = &v95[v212];
      ++v184;
    }

    while (v184 != v360);
  }

LABEL_250:
  if (v389)
  {
    operator delete(v389);
  }

  if (v392)
  {
    operator delete(v392);
  }

  if (v395)
  {
    operator delete(v395);
  }

  if (v417)
  {
    operator delete(v417);
  }

  if (v404[0])
  {
    operator delete(v404[0]);
  }

  sub_262224E88(src, v406, 0);
  *v406 = &unk_2874EF0D8;
  if (v412)
  {
    sub_2621D1B78(v412);
  }

  __p[0] = &unk_2874EF0D8;
  if (v380)
  {
    sub_2621D1B78(v380);
  }

  kdebug_trace();
  v363 = a2 + 1;
  sub_262251A98(a1, a2 + 1, v356, src);
  v374 = (a1 + 464);
  sub_26229E9CC(a2 + 1, a1 + 464);
  sub_262353488(a2 + 22);
  a2[24] = a2[23];
  v219 = a2[1];
  v220 = a2[2];
  if (v219 != v220)
  {
    v357 = a2[2];
    while (1)
    {
      if (v219[18].i8[7] < 0)
      {
        if (!*&v219[17])
        {
          goto LABEL_331;
        }
      }

      else if (!v219[18].i8[7])
      {
        goto LABEL_331;
      }

      v221 = vsub_f32(v219[2], v219[3]);
      v222 = sqrtf(vaddv_f32(vmul_f32(v221, v221)));
      v223 = v222 >= *(a1 + 584) && v222 <= *(a1 + 588);
      if (v223)
      {
        break;
      }

LABEL_331:
      v219 += 22;
      if (v219 == v220)
      {
        goto LABEL_332;
      }
    }

    memset(v406, 0, 24);
    v224 = a2[1];
    v225 = a2[2];
    if (v224 == v225)
    {
      v258 = 0;
      goto LABEL_325;
    }

    v361 = 0;
    while (2)
    {
      v226 = v224[18].i8[7];
      if (v226 < 0)
      {
        v227 = v224[17];
        if (v227)
        {
LABEL_281:
          if (v226 >= 0)
          {
            v228 = v224[18].i8[7];
          }

          else
          {
            v228 = v227;
          }

          v229 = v219[18].u8[7];
          v230 = v229.i8[0];
          if (v229.i8[0] < 0)
          {
            v229 = v219[17];
          }

          if (v228 != *&v229 || (v226 >= 0 ? (v231 = v224 + 16) : (v231 = v224[16]), v230 >= 0 ? (v232 = v219 + 16) : (v232 = v219[16]), memcmp(v231, v232, v228)))
          {
            v233 = vsub_f32(v224[2], v224[3]);
            if (sqrtf(vaddv_f32(vmul_f32(v233, v233))) > v222)
            {
              sub_2621DCD34(__p, v219 + 2, v224 + 2);
              v234 = __p[0];
              v235 = __p[1];
              v236 = (__p[0] + 4);
              v237 = __p[0] == __p[1] || v236 == __p[1];
              v238 = v237;
              v239 = __p[0];
              if (!v237)
              {
                v240 = *__p[0];
                v241 = (__p[0] + 4);
                v239 = __p[0];
                v242 = (__p[0] + 4);
                do
                {
                  v243 = *v242++;
                  v244 = v243;
                  if (v243 < v240)
                  {
                    v240 = v244;
                    v239 = v241;
                  }

                  v241 = v242;
                }

                while (v242 != __p[1]);
              }

              if (*v239 <= *(a1 + 492))
              {
                v245 = sub_2621C92AC(v219 + 2, v224 + 2, 0);
                v246 = *(a1 + 484);
                v247 = 90.0 - v246;
                v248 = v246 + 135.0;
                if (v245 >= v247 && v245 <= v248)
                {
                  v250 = v234;
                  if ((v238 & 1) == 0)
                  {
                    v251 = *v234;
                    v250 = v234;
                    v252 = v236;
                    do
                    {
                      v253 = *v252++;
                      v254 = v253;
                      if (v253 < v251)
                      {
                        v251 = v254;
                        v250 = v236;
                      }

                      v236 = v252;
                    }

                    while (v252 != v235);
                  }

                  v255 = v361;
                  v256 = v361 >> 2;
                  if (((v361 >> 2) + 1) >> 62)
                  {
                    sub_2621CBEB0();
                  }

                  if (v361 >> 2 != -1)
                  {
                    sub_2621C7F54((v361 >> 2) + 1);
                  }

                  *(4 * v256) = ((v250 - v234) >> 2) / 2;
                  v361 = 4 * v256 + 4;
                  memcpy(0, 0, v255);
                  sub_26224663C(v406, v224, v257);
                  v234 = __p[0];
                }
              }

              if (v234)
              {
                operator delete(v234);
              }
            }
          }
        }
      }

      else if (v224[18].i8[7])
      {
        v227 = v224[17];
        goto LABEL_281;
      }

      v224 += 22;
      if (v224 == v225)
      {
        v258 = v361;
LABEL_325:
        v220 = v357;
        if (v258 == 8)
        {
          if (MEMORY[4] + MEMORY[0] == 1 && sub_2621C92AC((*v406 + 16), (*v406 + 192), 0) >= (180.0 - *(a1 + 480)))
          {
            operator new();
          }

          __p[0] = v406;
          sub_2621C5004(__p);
          operator delete(0);
        }

        else
        {
          __p[0] = v406;
          sub_2621C5004(__p);
        }

        goto LABEL_331;
      }

      continue;
    }
  }

LABEL_332:
  sub_262252358(a1, a2, &v386, v385, v356, a5, v355, src, a3);
  kdebug_trace();
  kdebug_trace();
  v349 = v356;
  v259 = *(a1 + 544);
  v378[1] = *(a1 + 528);
  v378[2] = v259;
  v378[3] = *(a1 + 560);
  v379 = *(a1 + 576);
  v260 = *(a1 + 480);
  *__p = *v374;
  v377[0] = v260;
  v261 = *(a1 + 512);
  v377[1] = *(a1 + 496);
  v378[0] = v261;
  HIDWORD(__p[1]) = *(a1 + 524);
  v262 = (a1 + 80);
  sub_26229F2FC(v416, *(a1 + 80), *(a1 + 88), a2 + 4, __p);
  v263 = a2[4];
  for (mm = a2[5]; v263 != mm; v263 += 22)
  {
    sub_26229EFDC(v406, v263, (a1 + 56), v374);
    if (v406[0])
    {
      if ((v406[31] & 0x80000000) != 0)
      {
        sub_2621CC810(__b, *&v406[8], *&v406[16]);
      }

      else
      {
        *__b = *&v406[8];
        *&__b[16] = *&v406[24];
      }

      if ((sub_26225A7AC(*(a1 + 56), *(a1 + 64), __b) & 1) != 0 && *(sub_262259864(a1 + 48, __b) + 76) == 1)
      {
        if ((__b[23] & 0x80000000) != 0)
        {
          operator delete(*__b);
        }

        sub_262258CCC(__b, &v263[16], v416);
        if (!v402)
        {
          sub_26225A86C(v263, v407);
          v263[11].i32[0] = 4;
          v266 = *(sub_262259864(a1 + 48, &v406[8]) + 8);
          if (v266)
          {
            LODWORD(v266) = *(v266 + 116);
          }

          v267 = v263[1];
          if (v267)
          {
            *(*&v267 + 120) = v266;
          }

          sub_26224663C((a1 + 80), v263, v265);
        }

        sub_262259168(__b);
      }

      else
      {
        v263[11].i32[0] = 5;
        if ((__b[23] & 0x80000000) != 0)
        {
          operator delete(*__b);
        }
      }
    }

    else
    {
      v263[11].i32[0] = 5;
    }

    if ((v406[31] & 0x80000000) != 0)
    {
      operator delete(*&v406[8]);
    }
  }

  v350 = v349;
  v268 = *(a1 + 80);
  for (nn = *(a1 + 88); v268 != nn; v268 += 176)
  {
    sub_26229EFDC(__b, v268, (a1 + 56), v374);
    if (__b[0])
    {
      sub_26225A86C(v268, v403);
      v270 = *(sub_262259864(a1 + 48, &__b[8]) + 8);
      if (v270)
      {
        LODWORD(v270) = *(v270 + 116);
      }

      v271 = *(v268 + 8);
      if (v271)
      {
        *(v271 + 120) = v270;
      }

      if (SHIBYTE(v402) < 0)
      {
        sub_2621CC810(__dst, *&__b[8], *&__b[16]);
      }

      else
      {
        *__dst = *&__b[8];
        *&v415[0] = v402;
      }

      if (sub_26225A7AC(*(a1 + 56), *(a1 + 64), __dst) & 1) != 0 && (*(sub_262259864(a1 + 48, __dst) + 76))
      {
        sub_262258CCC(v398, (v268 + 128), v416);
        if (!*(&v399 + 1))
        {
          LODWORD(v404[0]) = 2;
          sub_26222296C(v406, v355, v404);
          v417 = *(v268 + 16);
          v405 = 0;
          v404[0] = 0;
          v404[1] = 0;
          sub_2621DC054(v404, &v417, &v418, 1uLL);
        }

        if (*(&v399 + 1) == 1)
        {
          if (*(v399 + 39) < 0)
          {
            sub_2621CC810(v406, *(v399 + 16), *(v399 + 24));
          }

          else
          {
            *v406 = *(v399 + 16);
            *&v406[16] = *(v399 + 32);
          }

          if (sub_26225A7AC(a2[4], a2[5], v406))
          {
            v272 = sub_26225A954(a2, v406);
            sub_26225AA00(v268, (v272 + 32));
            objc_msgSend_confidence(*(v272 + 8), v273, v274);
            v276 = *(v268 + 8);
            if (v276)
            {
              *(v276 + 108) = v275;
            }

            *(v268 + 88) = 1;
          }

          if ((v406[23] & 0x80000000) != 0)
          {
            operator delete(*v406);
          }
        }

        else
        {
          *(v268 + 88) = 1;
        }

        sub_262259168(v398);
      }

      else
      {
        *(v268 + 88) = 0;
      }

      if (SBYTE7(v415[0]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    else
    {
      *(v268 + 88) = 2;
    }

    if (SHIBYTE(v402) < 0)
    {
      operator delete(*&__b[8]);
    }
  }

  v277 = *(a1 + 80);
  v278 = *(a1 + 88);
  if (v277 != v278)
  {
    do
    {
      if (*(v277 + 88) != 2)
      {
        if (!sub_26225A7AC(*(a1 + 56), *(a1 + 64), (v277 + 152)))
        {
          goto LABEL_392;
        }

        v279 = sub_262259864(a1 + 48, (v277 + 152));
        *&v282 = sub_2621DCC54(*(v277 + 16), *(v277 + 24), v279[2], v279[3]);
        v283 = v282;
        DWORD2(v283) = *(v277 + 64);
        v285 = v284;
        DWORD2(v285) = *(v277 + 68);
        *(v277 + 16) = v282;
        *(v277 + 24) = v284;
        DWORD2(v282) = DWORD2(v285);
        DWORD2(v284) = DWORD2(v283);
        *(v277 + 32) = v283;
        *(v277 + 48) = v285;
        v286 = *(v277 + 8);
        *v406 = v282;
        *&v406[16] = v285;
        v407 = v284;
        *v408 = v283;
        if (v286)
        {
          objc_copyStruct((v286 + 272), v406, 64, 1, 0);
        }

        v287 = objc_msgSend_identifier(*&v279[1], *&v280, *&v281);
        sub_26225A86C(v277, v287);

        v288 = vsub_f32(*(v277 + 16), *(v277 + 24));
        if (sqrtf(vaddv_f32(vmul_f32(v288, v288))) < 0.3)
        {
LABEL_392:
          *(v277 + 88) = 2;
        }
      }

      v277 += 176;
    }

    while (v277 != v278);
    v278 = *(a1 + 88);
  }

  v289 = *v262;
  if (v278 != *v262)
  {
    v290 = 0;
    __srca = 0;
    v370 = 0;
    v291 = 0;
    do
    {
      if (v290)
      {
        goto LABEL_417;
      }

      if (v278 == v289)
      {
        goto LABEL_418;
      }

      v290 = 0;
      v292 = 0;
      v293 = 2;
      do
      {
        if (v291 < v292)
        {
          sub_26229DAC8(v406, &v289[22 * v291 + 2], &v289[v293], v374);
          v294 = *(&v407 + 2) >= 5.0 && *(&v407 + 2) <= 175.0;
          if (v294 || *(&v407 + 1) >= 0.05 || *&v406[24] <= 0.05)
          {
            v295 = 1;
          }

          else
          {
            v295 = 0;
            v290 = 1;
            __srca = v291;
            v370 = v292;
          }

          if (v410)
          {
            v411 = v410;
            operator delete(v410);
          }

          if (v408[1])
          {
            v409 = v408[1];
            operator delete(v408[1]);
          }

          v289 = *(a1 + 80);
          v278 = *(a1 + 88);
          if (!v295)
          {
            break;
          }
        }

        ++v292;
        v293 += 22;
      }

      while (v292 < 0x2E8BA2E8BA2E8BA3 * ((v278 - v289) >> 4));
      ++v291;
      v262 = (a1 + 80);
    }

    while (v291 < 0x2E8BA2E8BA2E8BA3 * ((v278 - v289) >> 4));
    if (v290)
    {
LABEL_417:
      sub_2621DBF40(*&v289[22 * __srca + 2], *&v289[22 * __srca + 3], *&v289[22 * v370 + 2], *&v289[22 * v370 + 3]);
    }
  }

LABEL_418:
  if (v289 == v278)
  {
    goto LABEL_449;
  }

  while (2)
  {
    if (v289[11].i32[0] != 2)
    {
      if (v289[21].i8[7] < 0)
      {
        if (!*&v289[20])
        {
          goto LABEL_447;
        }
      }

      else if (!v289[21].i8[7])
      {
        goto LABEL_447;
      }

      if (sub_26225A7AC(*(a1 + 56), *(a1 + 64), &v289[19]))
      {
        if (*(sub_262259864(a1 + 48, &v289[19]) + 76))
        {
          v296 = a2[16];
          v297 = a2[17];
          if (v296 != v297)
          {
            v298 = 0;
            v299 = v296 + 176;
            do
            {
              sub_26229DAC8(v406, v289 + 2, (v299 - 160), v374);
              v301 = *(&v407 + 2) >= 30.0 || *&v406[24] <= 0.5;
              if (v301 || *(&v407 + 1) >= 0.2 || (v300.n128_u64[0] = v289[2], sub_26229E5CC(__b, v300, v289[3], *(v299 - 160), *(v299 - 152)), (__b[0] & 1) != 0) && (v302 = vsub_f32(*&__b[8], *&__b[16]), sqrtf(vaddv_f32(vmul_f32(v302, v302))) >= 0.5))
              {
                v303 = 0;
              }

              else
              {
                v298 = 1;
                v303 = 1;
              }

              if (v410)
              {
                v411 = v410;
                operator delete(v410);
              }

              if (v408[1])
              {
                v409 = v408[1];
                operator delete(v408[1]);
              }

              if (v299 == v297)
              {
                v304 = 1;
              }

              else
              {
                v304 = v303;
              }

              v299 += 176;
            }

            while (v304 != 1);
            if (v298)
            {
              v289[11].i32[0] = 2;
            }
          }
        }
      }
    }

LABEL_447:
    v289 += 22;
    if (v289 != v278)
    {
      continue;
    }

    break;
  }

  v289 = *(a1 + 80);
  v278 = *(a1 + 88);
LABEL_449:
  if (v289 != v278)
  {
    v305 = v386;
    v306 = v387;
    v352 = v387;
    v354 = v386;
    do
    {
      v358 = v289 + 2;
      if (sub_262247B68(v305, v306, &v289[2], 2uLL))
      {
        v307 = sub_262259864(a1 + 48, &v289[19]);
        if (v289[11].i32[0] != 2 && *&v307[1] != 0)
        {
          v309 = v307;
          v310 = v307 + 2;
          sub_2621DCD34(__b, v358, v307 + 2);
          sub_2621CD160(v398, (*&__b[8] - *__b) >> 2);
          v311 = v398[0];
          v312 = v398[1];
          if (v398[0] != v398[1])
          {
            v313 = 0;
            v314 = (v398[1] - v398[0] - 8) >> 3;
            v315 = vdupq_n_s64(v314);
            v316 = xmmword_2623A7620;
            do
            {
              v317 = vmovn_s64(vcgeq_u64(v315, v316));
              if (v317.i8[0])
              {
                v311[v313] = v313;
              }

              if (v317.i8[4])
              {
                v311[v313 + 1] = v313 + 1;
              }

              v313 += 2;
              v316 = vaddq_s64(v316, vdupq_n_s64(2uLL));
            }

            while (((v314 + 2) & 0x3FFFFFFFFFFFFFFELL) != v313);
          }

          v318 = 126 - 2 * __clz(v312 - v311);
          *v406 = __b;
          if (v312 == v311)
          {
            v319 = 0;
          }

          else
          {
            v319 = v318;
          }

          sub_262259910(v311, v312, v406, v319, 1);
          v321 = v398[0];
          v322 = v398[1];
          if (v398[0] != v398[1])
          {
            __srcb = v398[1];
            while (*(*__b + 4 * *v321) > 0.1)
            {
LABEL_495:
              if (++v321 == v322)
              {
                goto LABEL_496;
              }
            }

            v323 = 0;
            v324 = v310[*v321 & 1];
            v371 = *v321 >> 1;
            v375 = *v321 & 1;
            __dst[0] = (a1 + 56);
            __dst[1] = a2 + 1;
            do
            {
              v325 = __dst[v323];
              v326 = v325[1];
              if (*v325 != v326)
              {
                v327 = *v325 + 128;
                while (1)
                {
                  v328 = *(v327 + 23);
                  if (v328 >= 0)
                  {
                    v329 = *(v327 + 23);
                  }

                  else
                  {
                    v329 = *(v327 + 8);
                  }

                  v330 = v309[18].u8[7];
                  v331 = v330.i8[0];
                  if (v330.i8[0] < 0)
                  {
                    v330 = v309[17];
                  }

                  if (v329 != *&v330 || (v328 >= 0 ? (v332 = v327) : (v332 = *v327), v331 >= 0 ? (v333 = v309 + 16) : (v333 = v309[16]), memcmp(v332, v333, v329)))
                  {
                    sub_26223FEB8(v406, v310, (v327 - 112));
                    if ((*&v406[20] >= *(a1 + 472) || *&v406[8] < *(a1 + 476) || *&v406[24] >= *(a1 + 480)) && sub_2621DC76C(v324, *(v327 - 112), *(v327 - 104), 0.00001) < 0.2)
                    {
                      break;
                    }
                  }

                  v334 = v327 + 48;
                  v327 += 176;
                  if (v334 == v326)
                  {
                    goto LABEL_490;
                  }
                }

                v322 = __srcb;
                goto LABEL_495;
              }

LABEL_490:
              ++v323;
            }

            while (v323 != 2);
            v335 = vsub_f32(v358[1 - v371], v310[v375 ^ 1]);
            v336 = sqrtf(vaddv_f32(vmul_f32(v335, v335)));
            v322 = __srcb;
            if (v336 >= 0.3)
            {
              v337 = v289[14].i32[1];
              v289[14].i32[1] = v337 + 1;
              if (v337 < *(a1 + 528))
              {
                goto LABEL_495;
              }
            }

            v289[11].i32[0] = 2;
            if (v336 >= 0.15)
            {
              *__dst = *v310->f32;
              *(__dst | (8 * v375)) = v358[1 - v371];
              *v310->f32 = *__dst;
              v338 = *v309[2].f32;
              v339 = v338;
              DWORD2(v339) = v309[8].i32[0];
              *&v320 = v309[3];
              v340 = v320;
              DWORD2(v340) = v309[8].i32[1];
              DWORD2(v338) = DWORD2(v340);
              DWORD2(v320) = DWORD2(v339);
              *v309[4].f32 = v339;
              *v309[6].f32 = v340;
              v341 = v309[1];
              *v406 = v338;
              *&v406[16] = v340;
              v407 = v320;
              *v408 = v339;
              if (v341)
              {
                objc_copyStruct((*&v341 + 272), v406, 64, 1, 0);
              }
            }

            else
            {
              v309[11].i32[0] = 2;
            }

LABEL_496:
            v321 = v398[0];
            v262 = (a1 + 80);
          }

          if (v321)
          {
            v398[1] = v321;
            operator delete(v321);
          }

          if (*__b)
          {
            *&__b[8] = *__b;
            operator delete(*__b);
          }

          v306 = v352;
          v305 = v354;
        }
      }

      v289 += 22;
    }

    while (v289 != v278);
  }

  sub_262251928((a1 + 56));
  sub_262251928(v262);
  sub_2622593AC(v416);

  kdebug_trace();
  kdebug_trace();
  sub_262254B98(a1, &v386, v350, v355);
  kdebug_trace();
  if (a2[2] != a2[1])
  {
    v346 = *(a1 + 56);
    v347 = *(a1 + 64);
    while (v346 != v347)
    {
      v344.i32[0] = *(*v363 + 64);
      v345.i32[0] = *(*v363 + 68);
      sub_262257E68(v346, v344, v345, v342, v343);
      v346 += 22;
    }
  }

  *&src[0] = &unk_2874EF0B8;
  if (v384)
  {
    sub_2621D1B78(v384);
  }

  v10 = v348;
LABEL_515:
}

void sub_2622512E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v68;
    operator delete(v68);
  }

  sub_2622593AC(v65 - 224);

  if (a65)
  {
    sub_2621D1B78(a65);
  }

  _Unwind_Resume(a1);
}

id sub_262251650(void *a1, id *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2621CBEB0();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v12[4] = a1;
    if (v10)
    {
      sub_2622317F8(v10);
    }

    v11 = (8 * v7);
    v12[0] = 0;
    v12[1] = v11;
    v12[3] = 0;
    *v11 = *a2;
    v12[2] = v11 + 1;
    sub_262246690(a1, v12);
    v6 = a1[1];
    result = sub_262246740(v12);
  }

  else
  {
    result = *a2;
    *v4 = result;
    v6 = v4 + 1;
  }

  a1[1] = v6;
  return result;
}

uint64_t *sub_26225172C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621DC0C4(result, a4);
  }

  return result;
}

void sub_262251784(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622517A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = (a3 + v6);
    objc_storeStrong((a3 + v6 + 8), *(a1 + v6 + 8));
    v8 = *(a1 + v6 + 16);
    v9 = *(a1 + v6 + 48);
    v7[2] = *(a1 + v6 + 32);
    v7[3] = v9;
    v7[1] = v8;
    v10 = *(a1 + v6 + 64);
    v11 = *(a1 + v6 + 80);
    v12 = *(a1 + v6 + 96);
    *(v7 + 105) = *(a1 + v6 + 105);
    v7[5] = v11;
    v7[6] = v12;
    v7[4] = v10;
    std::string::operator=((a3 + v6 + 128), (a1 + v6 + 128));
    std::string::operator=((a3 + v6 + 152), (a1 + v6 + 152));
    v6 += 176;
  }

  while (a1 + v6 != v5);
  return v5;
}

uint64_t sub_26225185C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3 - 176;
  v7 = a3;
  do
  {
    sub_262246794(v7, v4, a3);
    v4 += 176;
    v7 += 176;
    v5 -= 176;
    v6 += 176;
  }

  while (v4 != a2);
  return v7;
}

uint64_t *sub_262251928(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v3 = result;
    do
    {
      if (*(v1 + 88) == 2)
      {
        result = sub_2622519E8(v1 + 176, v2, v1);
        v2 = result;
        v4 = v3[1];
        if (v4 != result)
        {
          v5 = v4 - 22;
          v6 = v4 - 22;
          v7 = v4 - 22;
          do
          {
            v8 = *v7;
            v7 -= 22;
            result = (*v8)(v6);
            v5 -= 22;
            v9 = v6 == v2;
            v6 = v7;
          }

          while (!v9);
        }

        v3[1] = v2;
      }

      else
      {
        v1 += 176;
      }
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_2622519E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      objc_storeStrong((a3 + v6 + 8), *(a1 + v6 + 8));
      v8 = *(a1 + v6 + 16);
      v9 = *(a1 + v6 + 48);
      v7[2] = *(a1 + v6 + 32);
      v7[3] = v9;
      v7[1] = v8;
      v10 = *(a1 + v6 + 64);
      v11 = *(a1 + v6 + 80);
      v12 = *(a1 + v6 + 96);
      *(v7 + 105) = *(a1 + v6 + 105);
      v7[5] = v11;
      v7[6] = v12;
      v7[4] = v10;
      std::string::operator=((a3 + v6 + 128), (a1 + v6 + 128));
      std::string::operator=((a3 + v6 + 152), (a1 + v6 + 152));
      v6 += 176;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_262251A98(float *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  *&v97 = *MEMORY[0x277D85DE8];
  v77 = a3;
  v75 = a4;
  if (*(a4 + 137))
  {
    goto LABEL_69;
  }

LABEL_2:
  while (2)
  {
    v7 = v77;
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
LABEL_68:

      break;
    }

    v10 = 0;
    do
    {
      if (v9 == v8)
      {
        goto LABEL_68;
      }

      LOBYTE(v11) = 0;
      v12 = 0;
      v13 = (v8 + 176 * v10);
      do
      {
        if (v10 >= v12)
        {
          goto LABEL_45;
        }

        if (v11)
        {

          goto LABEL_2;
        }

        v14 = (v8 + 176 * v12);
        v15 = sub_2621C92AC(v13 + 2, v14 + 2, 0);
        v17 = a1[120];
        v18 = v15 >= v17 && v15 <= (180.0 - v17);
        if (!v18 || ((*&v16 = 90.0 - v17, v19 = v17 + 90.0, *&v16 < v15) ? (v20 = v15 < v19) : (v20 = 0), v20 || (v21 = v13[2], v22 = vsub_f32(v13[3], v21), v23 = *&v14[2], v25 = v14[3], v24 = vsub_f32(v25, *&v23), *v25.i32 = -*&v22.i32[1], v26 = vzip1_s32(v25, v22), v27 = vmul_f32(v24, v26), v80 = v27, v82 = *&v23, v27.f32[0] = vaddv_f32(v27), v27.f32[0] == 0.0)))
        {
          LOBYTE(v11) = 0;
          goto LABEL_45;
        }

        sub_2621DC4A4(&v89, v13 + 2, v14 + 2, *&v27, *&v25, v23, v16);
        sub_2621DC654(&v88, v14 + 2, v13[2], v13[3], v28, v29, v30);
        v31 = (v89 + 8);
        v32 = (v89 + 4);
        v33 = v89;
        if (v89 + 4 != v89 + 8)
        {
          v34 = *v89;
          v33 = v89;
          v35 = (v89 + 4);
          do
          {
            v36 = *v35++;
            v37 = v36;
            if (v36 < v34)
            {
              v34 = v37;
              v33 = v32;
            }

            v32 = v35;
          }

          while (v35 != v31);
        }

        v38 = (v89 + 12);
        v39 = v31 == v90 || v38 == v90;
        if (!v39)
        {
          v40 = *v31;
          v41 = (v89 + 12);
          do
          {
            v42 = *v41++;
            v43 = v42;
            if (v42 < v40)
            {
              v40 = v43;
              v31 = v38;
            }

            v38 = v41;
          }

          while (v41 != v90);
        }

        v11 = *v31 >= 0.3 && *v33 >= 0.3;
        if (!v11)
        {
          goto LABEL_60;
        }

        v44 = v88;
        if ((~*v88 & 3) == 0)
        {
          v76 = v88;
          v45 = v13[2];
          v46 = v13[3];
          v47 = v14[2];
          v48 = v14[3];
          v78 = sub_2621DC388(v45, v46, v47, v48);
          v51 = sub_2621DC388(v47, v48, v45, v46);
          v52 = vsub_f32(v45, v46);
          v53 = vsub_f32(v47, v48);
          v53.f32[0] = sqrtf(vaddv_f32(vmul_f32(v53, v53)));
          if (sqrtf(vaddv_f32(vmul_f32(v52, v52))) >= (v53.f32[0] + v53.f32[0]) && (objc_msgSend_confidence(*(*a2 + 176 * v10 + 8), v49, v50, v75, v76), v54 > a1[144]) && v51 >= a1[119])
          {
            v84 = v7;
            v64 = sub_2622519E8(*a2 + 176 * v12 + 176, a2[1], *a2 + 176 * v12);
            v65 = a2[1];
            if (v65 != v64)
            {
              v66 = v65 - 176;
              v67 = (v65 - 176);
              v68 = (v65 - 176);
              do
              {
                v69 = *v68;
                v68 -= 22;
                (*v69)(v67);
                v66 -= 176;
                v39 = v67 == v64;
                v67 = v68;
              }

              while (!v39);
            }
          }

          else
          {
            v55 = vsub_f32(v13[2], v13[3]);
            v55.f32[0] = sqrtf(vaddv_f32(vmul_f32(v55, v55)));
            v56 = vsub_f32(v14[2], v14[3]);
            if ((v55.f32[0] + v55.f32[0]) > sqrtf(vaddv_f32(vmul_f32(v56, v56))) || (objc_msgSend_confidence(*(*a2 + 176 * v12 + 8), v49, v50), v57 <= a1[144]) || v78 < a1[119])
            {
              v58 = vmul_f32(vsub_f32(v21, v82), v26);
              v59 = v13[2];
              v79 = v13[3];
              *&v87 = vmla_n_f32(v82, v24, vdiv_f32(vadd_f32(v58, vdup_lane_s32(v58, 1)), vadd_f32(v80, vdup_lane_s32(v80, 1))).f32[0]);
              *(&v87 + 1) = v59;
              *&v86 = v87;
              v81 = v14[2];
              v83 = v87;
              *(&v86 + 1) = v81;
              v60 = v14[3];
              if (sub_2621C92AC(&v87, &v86, 0) <= 90.0)
              {
                v62 = v60;
                v61 = v83;
              }

              else
              {
                v62 = v81;
                v61 = v83;
                *&v86 = v83;
                *(&v86 + 1) = v60;
              }

              src = v87;
              v92 = v61;
              v93 = v79;
              v94 = v86;
              v95 = v61;
              v96 = v62;
              memset(v85, 0, sizeof(v85));
              sub_2621DC054(v85, &src, &v97, 4uLL);
            }

            v84 = v7;
            v64 = sub_2622519E8(*a2 + 176 * v10 + 176, a2[1], *a2 + 176 * v10);
            v70 = a2[1];
            if (v70 != v64)
            {
              v71 = v70 - 176;
              v72 = (v70 - 176);
              v73 = (v70 - 176);
              do
              {
                v74 = *v73;
                v73 -= 22;
                (*v74)(v72);
                v71 -= 176;
                v39 = v72 == v64;
                v72 = v73;
              }

              while (!v39);
            }
          }

          a2[1] = v64;
          v7 = v84;
LABEL_60:
          v44 = v88;
          if (!v88)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        LOBYTE(v11) = 0;
LABEL_61:
        operator delete(v44);
LABEL_62:
        if (v89)
        {
          operator delete(v89);
        }

LABEL_45:
        ++v12;
        v8 = *a2;
        v9 = a2[1];
        v63 = 0x2E8BA2E8BA2E8BA3 * ((v9 - *a2) >> 4);
      }

      while (v12 < v63);
      ++v10;
    }

    while (v10 < v63 && !v11);

    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_69:
}

void sub_2622522B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  operator delete(__p);
  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_262252358(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, int32x2_t *a9)
{
  v460 = a5;
  v13 = a2[1];
  v463 = a2 + 1;
  v14 = a2[2];
  if (v14 != v13)
  {
    v15 = 0;
    if ((0x2E8BA2E8BA2E8BA3 * ((v14 - v13) >> 4)) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0x2E8BA2E8BA2E8BA3 * ((v14 - v13) >> 4);
    }

    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = vdupq_n_s64(v16 - 1);
    v19 = xmmword_2623A7630;
    v20 = xmmword_2623A7620;
    v21 = vdupq_n_s64(4uLL);
    v22 = a2[1];
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        v22[27] = v15;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        v22[71] = v15 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        v22[115] = v15 + 2;
        v22[159] = v15 + 3;
      }

      v15 += 4;
      v19 = vaddq_s64(v19, v21);
      v20 = vaddq_s64(v20, v21);
      v22 += 176;
    }

    while (v17 != v15);
  }

  v467 = a2;
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = (a1 + 56);
  if (v25 != v24)
  {
    v27 = 0;
    if ((0x2E8BA2E8BA2E8BA3 * ((v25 - v24) >> 4)) <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = 0x2E8BA2E8BA2E8BA3 * ((v25 - v24) >> 4);
    }

    v29 = vdupq_n_s64(v28 - 1);
    v30 = xmmword_2623A7630;
    v31 = xmmword_2623A7620;
    v32 = vdupq_n_s64(4uLL);
    v33 = *(a1 + 56);
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v29, v31));
      if (vuzp1_s16(v34, *v29.i8).u8[0])
      {
        v33[27] = v27;
      }

      if (vuzp1_s16(v34, *&v29).i8[2])
      {
        v33[71] = v27 + 1;
      }

      if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
      {
        v33[115] = v27 + 2;
        v33[159] = v27 + 3;
      }

      v27 += 4;
      v30 = vaddq_s64(v30, v32);
      v31 = vaddq_s64(v31, v32);
      v33 += 176;
    }

    while (((v28 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v27);
  }

  if (v14 != v13)
  {
    do
    {
      *(v13 + 76) = sub_262247B68(*a3, *(a3 + 8), v13 + 16, 2uLL);
      *(v13 + 77) = sub_262247B68(*a4, *(a4 + 8), v13 + 16, 2uLL);
      v13 += 176;
    }

    while (v13 != v14);
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
  }

  while (v24 != v25)
  {
    *(v24 + 76) = sub_262247B68(*a3, *(a3 + 8), v24 + 16, 2uLL);
    *(v24 + 77) = sub_262247B68(*a4, *(a4 + 8), v24 + 16, 2uLL);
    v24 += 176;
  }

  v35 = a2[1];
  v36 = a2[2];
  if (v35 != v36)
  {
    do
    {
      v37 = v35[1];
      if (v37)
      {
        *(*&v37 + 116) = 3;
      }

      v35 += 22;
    }

    while (v35 != v36);
    v35 = a2[1];
    v36 = a2[2];
  }

  for (; v35 != v36; v35 += 22)
  {
    if (v35[9].i8[4] == 1)
    {
      v38 = v35[1];
      if (v38)
      {
        *(*&v38 + 116) = 0;
      }
    }

    else if (v35[9].i8[5] == 1 && sub_26225C370(a1, v35, a2[1], a2[2]))
    {
      v39 = v35[1];
      if (v39)
      {
        *(*&v39 + 116) = 0;
      }

      v35[9].i8[4] = 1;
    }
  }

  v40 = *(a1 + 56);
  v41 = *(a1 + 64);
  if (v40 != v41)
  {
    do
    {
      if ((*(v40 + 76) & 1) == 0)
      {
        v42 = *(v40 + 8);
        if (v42)
        {
          if (!*(v42 + 116))
          {
            *(v42 + 116) = 1;
          }
        }
      }

      v40 += 176;
    }

    while (v40 != v41);
    v40 = *(a1 + 56);
    v41 = *(a1 + 64);
  }

  if (v40 != v41)
  {
    do
    {
      if (*(v40 + 76) == 1)
      {
        v43 = *(v40 + 8);
        if (v43)
        {
          *(v43 + 116) = 0;
        }
      }

      v40 += 176;
    }

    while (v40 != v41);
    v40 = *(a1 + 56);
    v41 = *(a1 + 64);
  }

  if (v40 != v41)
  {
    v44 = v40;
    do
    {
      if (*(v44 + 76) == 1)
      {
        *(v44 + 88) = -1;
      }

      v44 += 176;
    }

    while (v44 != v41);
  }

  sub_26229F2FC(v480, v40, v41, v463, (a1 + 464));
  v46 = *(a1 + 56);
  v45 = *(a1 + 64);
  v469 = a1;
  v466 = (a1 + 56);
  if (v46 == v45)
  {
    v70 = 0;
  }

  else
  {
    v464 = 0;
    do
    {
      v48 = v467[23];
      v47 = v467[24];
      while (1)
      {
        if (v48 == v47)
        {
          v26 = v466;
          goto LABEL_99;
        }

        v49 = *v48;
        v482[0] = 0;
        v482[1] = 0;
        *&v483 = 0;
        sub_2621DCD34(v486, (*(v49 + 32) + 16), (*(v49 + 32) + 192));
        v50 = v486[0];
        v51 = (v486[0] + 4);
        v52 = v486[0] == v486[1] || v51 == v486[1];
        v53 = v486[0];
        if (!v52)
        {
          v54 = *v486[0];
          v53 = v486[0];
          v55 = (v486[0] + 4);
          do
          {
            v56 = *v55++;
            v57 = v56;
            if (v56 < v54)
            {
              v54 = v57;
              v53 = v51;
            }

            v51 = v55;
          }

          while (v55 != v486[1]);
        }

        v58 = (v53 - v486[0]) >> 2;
        v59 = *(v49 + 32);
        LODWORD(src[1]) = 0;
        src[0] = *(v59 + 32);
        DWORD2(v502) = 0;
        *&v502 = *(v59 + 48);
        sub_2621D9F60(v482, &v502 + v58 / -2);
        v61 = *(v49 + 32);
        v60 = *(v49 + 40);
        while (v61 != v60)
        {
          v62 = v61[2];
          v63 = v61[3];
          LODWORD(src[1]) = 0;
          src[0] = v62.i64[0];
          DWORD2(v502) = 0;
          *&v502 = v63.i64[0];
          v64 = *(v482[1] - 1);
          v65 = vsubq_f32(v64, v62);
          v66 = vsubq_f32(v64, v63);
          if (sqrtf(vaddv_f32(*&vmulq_f32(v65, v65))) >= sqrtf(vaddv_f32(*&vmulq_f32(v66, v66))))
          {
            v67 = src;
          }

          else
          {
            v67 = &v502;
          }

          sub_2621D9F60(v482, v67);
          v61 += 11;
        }

        if (v50)
        {
          operator delete(v50);
        }

        v471 = *(v482[1] - 1);
        v474 = *v482[0];
        operator delete(v482[0]);
        *&v68 = v474;
        *(&v68 + 1) = v471;
        *v486 = v68;
        a1 = v469;
        sub_26229DAC8(src, v46 + 2, v486, (v469 + 464));
        if (*(&v503 + 1) < 0.1 && *(&v503 + 2) < 5.0)
        {
          v69 = *(&v502 + 1);
          if (*(&v502 + 1) >= *&v502)
          {
            v69 = *&v502;
          }

          if (v69 >= 0.95)
          {
            break;
          }
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (v504[1])
        {
          *&v505 = v504[1];
          operator delete(v504[1]);
        }

        ++v48;
      }

      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      v26 = v466;
      if (v504[1])
      {
        *&v505 = v504[1];
        operator delete(v504[1]);
      }

      v46[11].i32[0] = 2;
      v464 = v49;
LABEL_99:
      v46 += 22;
    }

    while (v46 != v45);
    v46 = *(a1 + 56);
    v45 = *(a1 + 64);
    a2 = v467;
    v70 = v464;
  }

  while (v46 != v45)
  {
    if (v46[11].i32[0] == 2)
    {
      v45 = sub_2622519E8(&v46[22], v45, v46);
      v71 = *(a1 + 64);
      if (v71 != v45)
      {
        v72 = v71 - 176;
        v73 = (v71 - 176);
        v74 = (v71 - 176);
        do
        {
          v75 = *v74;
          v74 -= 22;
          (*v75)(v73);
          v72 -= 176;
          v52 = v73 == v45;
          v73 = v74;
        }

        while (!v52);
      }

      a1 = v469;
      *(v469 + 64) = v45;
    }

    else
    {
      v46 += 22;
    }
  }

  if (v70)
  {
    v76 = *(v70 + 32);
    v77 = *(v70 + 40);
    if (v76 != v77)
    {
      do
      {
        v78 = sub_2621C5224(src);
        objc_msgSend_confidence(*(v76 + 8), v79, v80, v78);
        v82 = v81;
        v83 = objc_opt_new();
        sub_26225C4FC(src, (v76 + 32), 1, v83, v82);

        sub_26224663C(v26, src, v84);
        sub_2621C50C4(src);
        v76 += 176;
      }

      while (v76 != v77);
      v45 = *(a1 + 64);
    }
  }

  sub_26229F2FC(v479, *v26, v45, v463, (a1 + 464));
  v85 = a2[1];
  v86 = a2[2];
  if (v85 != v86)
  {
    while ((v85[9].i8[4] & 1) == 0)
    {
      v85[11].i32[0] = 5;
LABEL_157:
      v85 += 22;
      if (v85 == v86)
      {
        goto LABEL_158;
      }
    }

    sub_262258CCC(v486, &v85[16], v479);
    if (obj[1])
    {
LABEL_156:
      sub_262259168(v486);
      goto LABEL_157;
    }

    objc_msgSend_confidence(*&v85[1], v87, v88);
    if (v90 < *(a1 + 532) || (v91 = vsub_f32(v85[2], v85[3]), sqrtf(vaddv_f32(vmul_f32(v91, v91))) < *(a1 + 536)))
    {
      if ((sub_26225C370(a1, v85, v467[1], v467[2]) & 1) != 0 || sub_26225AC9C(a1, v85, v467[1], v467[2]))
      {
        objc_msgSend_confidence(*&v85[1], v92, v93);
        if (v94 >= *(a1 + 576))
        {
          goto LABEL_153;
        }

        v95 = sub_2621E26D8(v479, &v85[16]);
        if (v95)
        {
          v96 = v95 + 7;
          while (1)
          {
            v96 = *v96;
            if (!v96)
            {
              break;
            }

            if (*(v96 + 10) == 2)
            {
              v97 = 0;
            }

            else
            {
              v97 = *(v96 + 52) ^ 1;
            }

            v98 = sub_262259864(a1 + 48, v96 + 2);
            objc_msgSend_confidence(*(v98 + 8), v99, v100);
            v103 = v102;
            if (v102 <= *(a1 + 576))
            {
              objc_msgSend_confidence(*&v85[1], v101, v89);
              v104 = (v103 - v105) <= 0.2;
            }

            else
            {
              v104 = 0;
            }

            if (((v97 | v104) & 1) == 0)
            {
              goto LABEL_155;
            }
          }
        }

        v106 = *(a1 + 912);
        v107 = *(a1 + 920);
        if (v106 != v107)
        {
          v108 = 0;
          do
          {
            sub_26229DAC8(src, v85 + 2, v106 + 2, (a1 + 464));
            if (LOBYTE(v504[0]) != 1)
            {
              goto LABEL_143;
            }

            v109 = *(&v502 + 1);
            if (*(&v502 + 1) >= *&v502)
            {
              v109 = *&v502;
            }

            if (v109 > 0.5)
            {
              sub_26225AA00(v106, &v85[4]);
              objc_msgSend_confidence(*&v85[1], v110, v111);
              v113 = v106[1];
              if (v113)
              {
                *(*&v113 + 108) = v112;
              }

              v114 = 1;
              v108 = 2;
            }

            else
            {
LABEL_143:
              v114 = 0;
            }

            if (__p)
            {
              *(&__p + 1) = __p;
              operator delete(__p);
            }

            if (v504[1])
            {
              *&v505 = v504[1];
              operator delete(v504[1]);
            }

            v106 += 22;
            if (v106 == v107)
            {
              v115 = 1;
            }

            else
            {
              v115 = v114;
            }
          }

          while ((v115 & 1) == 0);
          if (v108)
          {
            goto LABEL_153;
          }
        }

        sub_26224663C((a1 + 912), v85, v89);
      }

LABEL_155:
      v85[11].i32[0] = 5;
      goto LABEL_156;
    }

LABEL_153:
    v85[11].i32[0] = 4;
    sub_26224663C(v26, v85, v89);
    goto LABEL_156;
  }

LABEL_158:
  v472 = v460;
  v117 = *(a1 + 56);
  v116 = *(a1 + 64);
  if (v117 != v116)
  {
    do
    {
      sub_262258CCC(src, &v117[16], v479);
      v118 = v502;
      if (v502)
      {
        v119 = 0;
        v120 = v467[1];
        v121 = v467[2];
        do
        {
          if (sub_26225A7AC(v120, v121, v118 + 2))
          {
            v119 += *(sub_262259864(v467, v118 + 2) + 76);
          }

          v118 = *v118;
        }

        while (v118);
        if (v119)
        {
          v117[9].i16[2] = 257;
          v122 = v117[1];
          if (v122)
          {
            *(*&v122 + 116) = 0;
          }
        }
      }

      sub_262259168(src);
      v117 += 22;
    }

    while (v117 != v116);
    v117 = *(a1 + 56);
    v116 = *(a1 + 64);
  }

  v514 = 0uLL;
  v515 = 0;
  v123 = v467;
  while (v117 != v116)
  {
    sub_262258CCC(&v511, &v117[16], v479);
    if (v117[9].i8[5] == 1)
    {
      v126 = v513;
      if ((v117[9].i8[4] & 1) != 0 || !v513)
      {
        v127 = v117[1];
        if (v127 && v127[29] == 3)
        {
          v117[11].i32[0] = 2;
        }

        switch(v126)
        {
          case 0:
            v130 = v117[11].i32[0];
            v131 = v117[12].i32[1];
            if (v130 != 4)
            {
              v117[12].i32[1] = ++v131;
            }

            if (v131 < *(a1 + 580))
            {
LABEL_191:
              if (v130 == 4)
              {
                goto LABEL_202;
              }

              v133 = sub_2621E26D8(v479, &v117[16]);
              if (!v133)
              {
                goto LABEL_202;
              }

              v134 = v133[7];
              if (!v134)
              {
                goto LABEL_202;
              }

              v135 = 0;
              do
              {
                if (*(v134 + 52) == 1)
                {
                  v136 = sub_262259864(v123, v134 + 2);
                  sub_262246794(src, v136, v137);
                  if (DWORD2(__p) == 4)
                  {
                    v138 = vsub_f32(*&v502, *(&v502 + 8));
                    if (sqrtf(vaddv_f32(vmul_f32(v138, v138))) > 0.3)
                    {
                      ++v135;
                    }
                  }

                  sub_2621C50C4(src);
                }

                v134 = *v134;
              }

              while (v134);
              if (!v135)
              {
LABEL_202:
                sub_26225B888(a1, v117, v472, a7, a8, a9, a6);
              }
            }

            else
            {
              objc_msgSend_confidence(v127, v124, v125);
              if (v132 >= *(a1 + 576))
              {
                v130 = v117[11].i32[0];
                goto LABEL_191;
              }
            }

            v117[11].i32[0] = 2;
            goto LABEL_174;
          case 2:
            v129 = v512;
            if (*(v512 + 39) < 0)
            {
              sub_2621CC810(__dst, *(v512 + 16), *(v512 + 24));
            }

            else
            {
              *__dst = *(v512 + 16);
              v500 = *(v512 + 32);
            }

            v139 = *v129;
            if (*(*v129 + 39) < 0)
            {
              sub_2621CC810(v497, *(v139 + 16), *(v139 + 24));
            }

            else
            {
              *v497 = *(v139 + 16);
              v498 = *(v139 + 32);
            }

            v155 = sub_262259864(v123, __dst);
            v156 = sub_262259864(v123, v497);
            sub_2621DCD34(&v496, v155 + 2, v156 + 2);
            v158 = v496;
            if (v129[14] < v129[15])
            {
              v159 = v496[3];
              if (v159 >= v496[2])
              {
                v159 = v496[2];
              }

              v160 = v496[1];
              if (v160 >= *v496)
              {
                v160 = *v496;
              }

              if (v159 >= v160)
              {
                v159 = v160;
              }

              if (*(v139 + 56) < *(v139 + 60) && v159 >= 0.3)
              {
                v157.n128_u64[0] = v155[2];
                sub_26225B780(src, v117, v157, v155[3]);
                if (src[0])
                {
                  v161.n128_u64[0] = v156[2];
                  sub_26225B780(v486, &v502, v161, v156[3]);
                  if (LOBYTE(v486[0]) == 1)
                  {
                    objc_storeStrong(&v502 + 1, obj[1]);
                    v507 = v492;
                    v508[0] = v493[0];
                    *(v508 + 9) = *(v493 + 9);
                    v503 = v488;
                    *v504 = v489;
                    v505 = v490;
                    __p = v491;
                    std::string::operator=(&v509, &v494);
                    std::string::operator=(&v510, &v495);
                    v162 = vsub_f32(*&v503, *(&v503 + 8));
                    if (sqrtf(vaddv_f32(vmul_f32(v162, v162))) >= *(a1 + 516))
                    {
                      sub_26225B888(a1, &v502, v472, a7, a8, a9, a6);
                    }

                    v117[11].i32[0] = 0;
                    sub_2621C50C4(obj);
                    sub_2621C50C4(&v502);
LABEL_246:
                    operator delete(v158);
LABEL_247:
                    if (SHIBYTE(v498) < 0)
                    {
                      operator delete(v497[0]);
                    }

                    v123 = v467;
                    if ((SHIBYTE(v500) & 0x80000000) == 0)
                    {
                      goto LABEL_174;
                    }

                    v154 = __dst[0];
LABEL_251:
                    operator delete(v154);
                    goto LABEL_174;
                  }

                  sub_2621C50C4(obj);
                }

                sub_2621C50C4(&v502);
              }
            }

            v117[12].i32[1] = 0;
            v117[11].i32[0] = 0;
            if (v158)
            {
              goto LABEL_246;
            }

            goto LABEL_247;
          case 1:
            v117[12].i32[1] = 0;
            v128 = v512;
            if (*(v512 + 39) < 0)
            {
              sub_2621CC810(v486, *(v512 + 16), *(v512 + 24));
              v128 = v512;
            }

            else
            {
              *v486 = *(v512 + 16);
              obj[0] = *(v512 + 32);
            }

            if (sub_26225A7AC(v123[1], v123[2], v486))
            {
              v140 = sub_262259864(v123, v486);
              objc_msgSend_confidence(*&v117[1], v141, v142);
              if ((v145 <= *(a1 + 532) || (objc_msgSend_confidence(*(v140 + 8), v143, v144), v146 >= 0.5)) && (objc_msgSend_confidence(*&v117[1], v143, v144), v148 = v147, objc_msgSend_confidence(*(v140 + 8), v149, v150), (v148 - v151.n128_f32[0]) < 0.3) && (v152 = *(v128 + 56), v153 = *(v128 + 60), vabds_f32(v152, v153) >= 0.001))
              {
                if (v152 >= v153)
                {
                  v117[11].i32[0] = 1;
                  sub_26225AA00(v117, (v140 + 32));
                  objc_msgSend_confidence(*(v140 + 8), v163, v164);
                  v165 = v117[1];
                  if (v165)
                  {
                    *(*&v165 + 108) = v151.n128_u32[0];
                  }

                  v152 = *(v128 + 56);
                  v153 = *(v128 + 60);
                }

                if (v152 < v153)
                {
                  v166 = v117[2];
                  v167 = v117[3];
                  v168 = *(v140 + 16);
                  v169 = *(v140 + 24);
                  v151.n128_u64[0] = v168;
                  sub_26225B780(src, v117, v151, v169);
                  if (LOBYTE(src[0]) == 1)
                  {
                    v170 = vsub_f32(v166, v167);
                    v171 = vsub_f32(v168, v169);
                    if (vabds_f32(sqrtf(vaddv_f32(vmul_f32(v170, v170))), sqrtf(vaddv_f32(vmul_f32(v171, v171)))) >= *(a1 + 512))
                    {
                      sub_26225B888(a1, &v502, v472, a7, a8, a9, a6);
                    }

                    v117[11].i32[0] = 1;
                    sub_26225AA00(v117, (v140 + 32));
                    objc_msgSend_confidence(*(v140 + 8), v172, v173);
                    v175 = v117[1];
                    if (v175)
                    {
                      *(*&v175 + 108) = v174;
                    }

                    v117[13].i32[0] = 0;
                  }

                  else
                  {
                    v117[11].i32[0] = 0;
                  }

                  sub_2621C50C4(&v502);
                }
              }

              else
              {
                v117[11].i32[0] = 0;
              }
            }

            if ((SHIBYTE(obj[0]) & 0x80000000) == 0)
            {
              goto LABEL_174;
            }

            v154 = v486[0];
            goto LABEL_251;
        }

        v117[12].i32[1] = 0;
      }
    }

    v117[11].i32[0] = 0;
LABEL_174:
    sub_262259168(&v511);
    v117 += 22;
  }

  sub_262251928(v466);
  sub_26225B42C(v466, *(a1 + 64), v514, *(&v514 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v514 + 1) - v514) >> 4));
  src[0] = &v514;
  sub_2621C5004(src);

  v486[0] = 0;
  v486[1] = 0;
  obj[0] = 0;
  v176 = *(a1 + 80);
  v177 = *(a1 + 88);
  src[0] = v486;
  LOBYTE(src[1]) = 0;
  if (v177 != v176)
  {
    v178 = 0x2E8BA2E8BA2E8BA3 * ((v177 - v176) >> 4);
    if (v178 < 0x1745D1745D1745ELL)
    {
      sub_2622469FC(v178);
    }

    sub_2621CBEB0();
  }

  sub_26225B42C(v486, 0, v123[4], v123[5], 0x2E8BA2E8BA2E8BA3 * ((v123[5] - v123[4]) >> 4));
  v179 = *(a1 + 56);
  for (i = *(a1 + 64); v179 != i; v179 += 22)
  {
    v181 = *(a1 + 56);
    v182 = *(a1 + 64);
    if (v181 != v182)
    {
      v183 = &v179[16];
      v184 = v181 + 16;
      while (1)
      {
        v185 = *(v184 + 23);
        if (v185 >= 0)
        {
          v186 = *(v184 + 23);
        }

        else
        {
          v186 = v184[1];
        }

        v187 = v179[18].u8[7];
        v188 = v187.i8[0];
        if (v187.i8[0] < 0)
        {
          v187 = v179[17];
        }

        if (v186 != *&v187 || (v185 >= 0 ? (v189 = v184) : (v189 = *v184), v188 >= 0 ? (v190 = v179 + 16) : (v190 = *v183), memcmp(v189, v190, v186)))
        {
          sub_26223FEB8(src, v179 + 2, v184 - 14);
          if (*(&v502 + 2) <= 20.0)
          {
            v191 = *src >= 0.7 && *(&src[1] + 1) <= 1.0;
            if (v191 && *(&src[1] + 1) >= 0.2)
            {
              break;
            }
          }
        }

        v192 = v184 + 6;
        v184 += 22;
        if (v192 == v182)
        {
          goto LABEL_282;
        }
      }

      v193 = v486[0];
      v194 = v486[1];
      while (v193 != v194)
      {
        sub_26223FEB8(src, v179 + 2, v193 + 2);
        if (*(&v502 + 2) <= 20.0 && *src >= 0.5 && *(&src[1] + 1) <= 1.0)
        {
          sub_26223FEB8(src, v193 + 2, v184 - 14);
          if (*(&v502 + 2) <= 10.0 && *src >= 0.9 && *(&src[1] + 1) <= 0.2)
          {
            if (v193)
            {
              v197 = *(a1 + 56);
              v198 = *(a1 + 64);
              if (v197 != v198)
              {
                v475 = 0;
                v199 = 0;
                v200 = v197 + 16;
                do
                {
                  v201 = *(v200 + 23);
                  if (v201 >= 0)
                  {
                    v202 = *(v200 + 23);
                  }

                  else
                  {
                    v202 = v200[1];
                  }

                  v203 = v179[18].u8[7];
                  v204 = v203.i8[0];
                  if (v203.i8[0] < 0)
                  {
                    v203 = v179[17];
                  }

                  if (v202 != *&v203 || (v201 >= 0 ? (v205 = v200) : (v205 = *v200), v204 >= 0 ? (v206 = v179 + 16) : (v206 = *v183), memcmp(v205, v206, v202)))
                  {
                    sub_2621DCD34(src, v200 - 14, v179 + 2);
                    v207 = src[0];
                    v208 = *(src[0] + 2);
                    if (v208 >= *src[0])
                    {
                      v209 = *src[0];
                    }

                    else
                    {
                      v209 = *(src[0] + 2);
                    }

                    if (v209 >= 0.2)
                    {
                      v210 = *(src[0] + 3);
                      v211 = *(src[0] + 1);
                      if (v210 >= v211)
                      {
                        v212 = *(src[0] + 1);
                      }

                      else
                      {
                        v212 = *(src[0] + 3);
                      }

                      if (v212 < 0.2)
                      {
                        v213 = sub_2621DC76C(v200[(v211 < v210) - 14], *(v184 - 14), *(v184 - 13), 0.00001);
                        v214 = v475;
                        if (v213 <= 0.2)
                        {
                          v214 = v200 - 16;
                        }

                        v475 = v214;
                      }
                    }

                    else if (sub_2621DC76C(v200[(*src[0] < v208) - 14], *(v184 - 14), *(v184 - 13), 0.00001) <= 0.2)
                    {
                      v199 = v200 - 16;
                    }

                    operator delete(v207);
                  }

                  v215 = v200 + 6;
                  v200 += 22;
                }

                while (v215 != v198);
                if (v199 && v475)
                {
                  *(v184 - 8) = 1;
                  *(v199 + 120) = 1;
                  *(v475 + 120) = 1;
                }
              }
            }

            break;
          }
        }

        v193 += 22;
      }
    }

LABEL_282:
    ;
  }

  src[0] = v486;
  sub_2621C5004(src);
  v216 = v466;
  v465 = v472;
  sub_262251A98(a1, v466, v465, a8);
  sub_26229E9CC(v466, a1 + 464);
  v217 = *(a1 + 56);
  v218 = *(a1 + 64);
  while (v217 != v218)
  {
    v219 = *(a1 + 56);
    v220 = *(a1 + 64);
    if (v219 != v220)
    {
      v221 = vsub_f32(v217[2], v217[3]);
      v222 = sqrtf(vaddv_f32(vmul_f32(v221, v221)));
      v223 = v219 + 16;
      while (1)
      {
        v224 = *(v223 + 23);
        if (v224 >= 0)
        {
          v225 = *(v223 + 23);
        }

        else
        {
          v225 = v223[1];
        }

        v226 = v217[18].u8[7];
        v227 = v226.i8[0];
        if (v226.i8[0] < 0)
        {
          v226 = v217[17];
        }

        if (v225 != *&v226 || (v224 >= 0 ? (v228 = v223) : (v228 = *v223), v227 >= 0 ? (v229 = v217 + 16) : (v229 = v217[16]), memcmp(v228, v229, v225)))
        {
          v230 = vsub_f32(*(v223 - 14), *(v223 - 13));
          if (sqrtf(vaddv_f32(vmul_f32(v230, v230))) >= (v222 + 0.3))
          {
            v231 = sub_2621C92AC(v217 + 2, v223 - 14, 0);
            v232 = *(a1 + 508);
            if (v222 > *(a1 + 488))
            {
              v232 = v232 * 0.5;
            }

            if (v231 <= v232)
            {
              v233 = *(v223 - 14);
              v234 = v217[2];
              v235 = vsub_f32(*(v223 - 13), v233);
              v236 = vaddv_f32(vmul_f32(vsub_f32(v234, v233), v235));
              v237 = vaddv_f32(vmul_f32(v235, v235));
              if (v237 < 0.000001)
              {
                v237 = 0.000001;
              }

              v238 = vsub_f32(vmla_n_f32(v233, v235, v236 / v237), v234);
              v239 = sqrtf(vaddv_f32(vmul_f32(v238, v238)));
              v240 = vsub_f32(vmla_n_f32(v233, v235, vaddv_f32(vmul_f32(vsub_f32(v217[3], v233), v235)) / v237), v217[3]);
              v241 = sqrtf(vaddv_f32(vmul_f32(v240, v240)));
              if (v241 < v239)
              {
                v239 = v241;
              }

              if (v239 <= 0.15)
              {
                sub_2621DC2A8();
                v244 = vsub_f32(v242, v243);
                if ((sqrtf(vaddv_f32(vmul_f32(v244, v244))) / (v222 * cosf((v231 / 180.0) * 3.1416))) > 0.5)
                {
                  break;
                }
              }
            }
          }
        }

        v245 = v223 + 6;
        v223 += 22;
        if (v245 == v220)
        {
          goto LABEL_360;
        }
      }

LABEL_419:
      if ((v217[15].i8[0] & 1) == 0)
      {
        v217[11].i32[0] = 2;
      }

      goto LABEL_421;
    }

LABEL_360:
    if (v217[18].i8[7] < 0)
    {
      if (v217[17])
      {
LABEL_364:
        v246 = v217[2];
        v247 = v217[3];
        v248 = *(a1 + 56);
        v249 = *(a1 + 64);
        if (v248 == v249)
        {
          v272 = 0;
LABEL_406:
          v273 = vsub_f32(v246, v247);
          v274 = sqrtf(vaddv_f32(vmul_f32(v273, v273)));
          v275 = *(a1 + 552);
          if (v274 >= v275 || v272 >= 2)
          {
            v277 = v274 >= v275 && v274 < (v275 + v275);
            if (!v277 || v272 != 0)
            {
              goto LABEL_421;
            }
          }

          goto LABEL_419;
        }

        v250 = 0;
        v251 = 0;
        while (2)
        {
          v252 = v248[18].i8[7];
          if ((v252 & 0x8000000000000000) == 0)
          {
            if (v248[18].i8[7])
            {
              v253 = v248[17];
              goto LABEL_370;
            }

            goto LABEL_403;
          }

          v253 = v248[17];
          if (!v253)
          {
            goto LABEL_403;
          }

LABEL_370:
          if (v252 >= 0)
          {
            v254 = v248[18].i8[7];
          }

          else
          {
            v254 = v253;
          }

          v255 = v217[18].u8[7];
          v256 = v255.i8[0];
          if (v255.i8[0] < 0)
          {
            v255 = v217[17];
          }

          if (v254 == *&v255)
          {
            v257 = v252 >= 0 ? &v248[16] : *&v248[16];
            v258 = v256 >= 0 ? &v217[16] : *&v217[16];
            if (!memcmp(v257, v258, v254))
            {
LABEL_403:
              v248 += 22;
              if (v248 == v249)
              {
                v272 = v250 + v251;
                v216 = v466;
                goto LABEL_406;
              }

              continue;
            }
          }

          break;
        }

        sub_2621DCD34(src, v217 + 2, v248 + 2);
        if (v250)
        {
          v250 = 1;
          if (!v251)
          {
LABEL_385:
            v259 = (src[0] + 8);
            v260 = (src[0] + 12);
            if (src[0] + 8 != src[1] && v260 != src[1])
            {
              v262 = *v259;
              v263 = (src[0] + 12);
              do
              {
                v264 = *v263++;
                v265 = v264;
                if (v264 < v262)
                {
                  v262 = v265;
                  v259 = v260;
                }

                v260 = v263;
              }

              while (v263 != src[1]);
            }

            v251 = *v259 <= *(a1 + 492);
            if (!src[0])
            {
              goto LABEL_403;
            }

LABEL_402:
            operator delete(src[0]);
            goto LABEL_403;
          }
        }

        else
        {
          v266 = (src[0] + 4);
          v267 = src[0];
          if (src[0] + 4 != src[0] + 8)
          {
            v268 = *src[0];
            v267 = src[0];
            v269 = (src[0] + 4);
            do
            {
              v270 = *v269++;
              v271 = v270;
              if (v270 < v268)
              {
                v268 = v271;
                v267 = v266;
              }

              v266 = v269;
            }

            while (v269 != (src[0] + 8));
          }

          v250 = *v267 <= *(a1 + 492);
          if (!v251)
          {
            goto LABEL_385;
          }
        }

        v251 = 1;
        if (!src[0])
        {
          goto LABEL_403;
        }

        goto LABEL_402;
      }
    }

    else if (v217[18].i8[7])
    {
      goto LABEL_364;
    }

LABEL_421:
    v217 += 22;
  }

  sub_262251928(v216);
  v279 = *(a1 + 56);
  for (j = *(a1 + 64); v279 != j; v279 += 22)
  {
    v281 = vsub_f32(v279[2], v279[3]);
    if (sqrtf(vaddv_f32(vmul_f32(v281, v281))) <= 1.0)
    {
      v283 = *(a1 + 56);
      for (k = *(a1 + 64); v283 != k; v283 += 22)
      {
        v284 = v283[2];
        v285 = v283[3];
        v286 = v283[18].i8[7];
        if (v286 >= 0)
        {
          v287 = v283[18].u8[7];
        }

        else
        {
          v287 = v283[17];
        }

        v288 = v279[18].u8[7];
        v289 = v288.i8[0];
        if (v288.i8[0] < 0)
        {
          v288 = v279[17];
        }

        if (v287 == *&v288)
        {
          v290 = v286 >= 0 ? &v283[16] : *&v283[16];
          v291 = v289 >= 0 ? &v279[16] : *&v279[16];
          if (!memcmp(v290, v291, v287))
          {
            continue;
          }
        }

        if (v283[11].i32[0] != 2)
        {
          v292 = vsub_f32(v284, v285);
          if (sqrtf(vaddv_f32(vmul_f32(v292, v292))) <= 1.0 && sub_2621C92AC(v279 + 2, v283 + 2, 0) < *(a1 + 508))
          {
            v293 = 0;
            src[1] = 0;
            src[0] = 0;
            *&v502 = 0;
            v486[0] = 0;
            v486[1] = 0;
            v294 = 1;
            obj[0] = 0;
            do
            {
              v295 = v294;
              *v481 = sub_2621DC76C(v279[v293 + 2], v283[2], v283[3], 0.00001);
              sub_26225B14C(src, v481);
              *v481 = sub_2621DC76C(v283[v293 + 2], v279[2], v279[3], 0.00001);
              sub_26225B14C(v486, v481);
              v294 = 0;
              v293 = 1;
            }

            while ((v295 & 1) != 0);
            *v481 = sub_2621DC76C(vmul_f32(vadd_f32(v279[2], v279[3]), 0x3F0000003F000000), v283[2], v283[3], 0.00001);
            sub_26225B14C(src, v481);
            *v481 = sub_2621DC76C(vmul_f32(vadd_f32(v283[2], v283[3]), 0x3F0000003F000000), v279[2], v279[3], 0.00001);
            sub_26225B14C(v486, v481);
            a1 = v469;
            v296 = sub_2621C92AC(v279 + 2, v283 + 2, 0);
            if (v296 >= 5.0 && v296 <= 175.0)
            {
              v298 = v279[2];
              v299 = vsub_f32(v279[3], v298);
              v300 = v283[2];
              v301 = v283[3];
              v302 = vsub_f32(v301, v300);
              *v297.i32 = -*&v299.i32[1];
              v303 = vzip1_s32(v297, v299);
              v304 = vmul_f32(v302, v303);
              if (vaddv_f32(v304) != 0.0)
              {
                v305 = vmul_f32(vsub_f32(v298, v300), v303);
                v306 = vmla_n_f32(v300, v302, vdiv_f32(vadd_f32(v305, vdup_lane_s32(v305, 1)), vadd_f32(v304, vdup_lane_s32(v304, 1))).f32[0]);
                *v481 = sub_2621DC76C(v306, v300, v301, 0.00001);
                sub_26225B14C(src, v481);
                *v481 = sub_2621DC76C(v306, v279[2], v279[3], 0.00001);
                sub_26225B14C(v486, v481);
              }
            }

            v482[0] = 0;
            v482[1] = 0;
            *&v483 = 0;
            sub_26225B224(v482, src);
            sub_26225B224(v482, v486);
            if (v486[0])
            {
              operator delete(v486[0]);
            }

            if (src[0])
            {
              operator delete(src[0]);
            }

            v309 = *v482[0];
            v310 = **v482[0];
            while (v309 != *(v482[0] + 1))
            {
              v311 = *v309++;
              v312 = v311;
              if (v311 < v310)
              {
                v310 = v312;
              }
            }

            if (v310 <= 0.1)
            {
              if ((objc_msgSend_confidence(*&v279[1], v307, v308), v315 < *(v469 + 532)) && (objc_msgSend_confidence(*&v283[1], v313, v314), v316 >= *(v469 + 532)) || (objc_msgSend_confidence(*&v283[1], v313, v314), v318 = v317, objc_msgSend_confidence(*&v279[1], v319, v320), (v318 - v321) > 0.2) || (v322 = sub_26225AADC(v469, v279, *(v469 + 56), *(v469 + 64)), v323 = sub_26225AADC(v469, v283, *(v469 + 56), *(v469 + 64)), v322 < v323) || v322 == v323 && ((v324 = sub_26225AC9C(v469, v279, *(v469 + 56), *(v469 + 64)), !(v324 | !sub_26225AC9C(v469, v283, *(v469 + 56), *(v469 + 64)))) || (objc_msgSend_confidence(*&v279[1], v325, v326), v328 = v327, objc_msgSend_confidence(*&v283[1], v329, v330), v328 < v331)))
              {
                v279[11].i32[0] = 2;
              }
            }

            src[0] = v482;
            sub_2621E1CB0(src);
          }
        }
      }
    }
  }

  sub_262251928(v466);
  v333 = *(a1 + 56);
  v334 = *(a1 + 64);
  if (v333 != v334)
  {
    do
    {
      v335 = *(a1 + 480);
      v511 = *(v333 + 16);
      v336 = *(a1 + 56);
      v337 = *(a1 + 64);
      if (v336 != v337)
      {
        v338 = v511;
        v339 = vsub_f32(*(&v511 + 8), *&v511);
        *&v332 = -*&v339.i32[1];
        v340 = vzip1_s32(*&v332, v339);
        do
        {
          v341 = v336[18].i8[7];
          if (v341 >= 0)
          {
            v342 = v336[18].u8[7];
          }

          else
          {
            v342 = v336[17];
          }

          v343 = *(v333 + 151);
          v344 = v343;
          if ((v343 & 0x80u) != 0)
          {
            v343 = *(v333 + 136);
          }

          if (v342 != v343 || (v341 >= 0 ? (v345 = v336 + 16) : (v345 = v336[16]), v344 >= 0 ? (v346 = (v333 + 128)) : (v346 = *(v333 + 128)), memcmp(v345, v346, v342)))
          {
            v347 = sub_2621C92AC(&v511, v336 + 2, 0);
            if (v347 >= v335 && v347 <= (180.0 - v335))
            {
              v351 = v336[2];
              v352 = vsub_f32(v336[3], v351);
              v353 = COERCE_DOUBLE(vmul_f32(v352, v340));
              v476 = *&v353;
              *&v353 = vaddv_f32(*&v353);
              if (*&v353 != 0.0)
              {
                sub_2621DC4A4(v486, &v511, v336 + 2, v353, v332, v348, v349);
                sub_2621DC654(v482, v336 + 2, *&v338, *(&v338 + 8), v354, v355, v356);
                v358 = v486[0];
                v359 = (v486[0] + 8);
                v360 = (v486[0] + 4);
                v361 = *v486[0];
                if (v486[0] + 4 == v486[0] + 8)
                {
                  v369 = v486[0];
                }

                else
                {
                  v362 = *v486[0];
                  v363 = (v486[0] + 4);
                  v364 = v486[0];
                  v365 = (v486[0] + 4);
                  do
                  {
                    v366 = *v365++;
                    v367 = v366;
                    if (v366 < v362)
                    {
                      v362 = v367;
                      v364 = v363;
                    }

                    v363 = v365;
                  }

                  while (v365 != v359);
                  v368 = *v364;
                  v369 = v486[0];
                  v370 = (v486[0] + 4);
                  do
                  {
                    v371 = *v370++;
                    v372 = v371;
                    if (v371 < v361)
                    {
                      v361 = v372;
                      v369 = v360;
                    }

                    v360 = v370;
                  }

                  while (v370 != v359);
                  v361 = v368;
                }

                v373 = (v486[0] + 12);
                if (v359 != v486[1] && v373 != v486[1])
                {
                  v375 = *v359;
                  v376 = (v486[0] + 12);
                  do
                  {
                    v377 = *v376++;
                    v378 = v377;
                    if (v377 < v375)
                    {
                      v375 = v378;
                      v359 = v373;
                    }

                    v373 = v376;
                  }

                  while (v376 != v486[1]);
                }

                v379 = vmul_f32(vsub_f32(*&v338, v351), v340);
                v380 = vmla_n_f32(v351, v352, vdiv_f32(vadd_f32(v379, vdup_lane_s32(v379, 1)), vadd_f32(v476, vdup_lane_s32(v476, 1))).f32[0]);
                v381 = (v369 - v486[0]) >> 2;
                v382 = *v359;
                if (v361 < 0.3 && v382 >= 0.3 && (*v482[0] & 2) != 0)
                {
                  *v481 = *(v333 + 16);
                  v481[v381] = v380;
                  *(v333 + 16) = *v481;
                  v383 = *(v333 + 16);
                  v384 = v383;
                  DWORD2(v384) = *(v333 + 64);
                  *&v357 = *(v333 + 24);
                  v385 = v357;
                  DWORD2(v385) = *(v333 + 68);
                  DWORD2(v383) = DWORD2(v385);
                  DWORD2(v357) = DWORD2(v384);
                  *(v333 + 32) = v384;
                  *(v333 + 48) = v385;
                  v386 = *(v333 + 8);
                  *src = v383;
                  v502 = v385;
                  v503 = v357;
                  *v504 = v384;
                  if (v386)
                  {
                    objc_copyStruct((v386 + 272), src, 64, 1, 0);
                  }
                }

                if (v361 < 0.3 && v382 < 0.3)
                {
                  *v481 = *(v333 + 16);
                  v481[v381] = v380;
                  *(v333 + 16) = *v481;
                  v387 = *(v333 + 16);
                  v388 = v387;
                  DWORD2(v388) = *(v333 + 64);
                  *&v357 = *(v333 + 24);
                  v389 = v357;
                  DWORD2(v389) = *(v333 + 68);
                  DWORD2(v387) = DWORD2(v389);
                  DWORD2(v357) = DWORD2(v388);
                  *(v333 + 32) = v388;
                  *(v333 + 48) = v389;
                  v390 = *(v333 + 8);
                  *src = v387;
                  v502 = v389;
                  v503 = v357;
                  *v504 = v388;
                  if (v390)
                  {
                    objc_copyStruct((v390 + 272), src, 64, 1, 0);
                  }
                }

                if (v482[0])
                {
                  operator delete(v482[0]);
                }

                operator delete(v358);
              }
            }
          }

          v336 += 22;
        }

        while (v336 != v337);
      }

      v333 += 176;
    }

    while (v333 != v334);
    v333 = *(a1 + 56);
    v334 = *(a1 + 64);
  }

  if (v333 != v334)
  {
    v391 = *(a1 + 492);
    v473 = v334;
    while (1)
    {
      v392 = *(a1 + 56);
      v393 = *(a1 + 64);
      if (v392 != v393)
      {
        break;
      }

LABEL_590:
      v333 += 176;
      if (v333 == v473)
      {
        goto LABEL_591;
      }
    }

    v394 = (v333 + 16);
    v395 = (v333 + 128);
    while (1)
    {
      v396 = v392[18].i8[7];
      if (v396 >= 0)
      {
        v397 = v392[18].u8[7];
      }

      else
      {
        v397 = v392[17];
      }

      v398 = *(v333 + 151);
      v399 = v398;
      if ((v398 & 0x80u) != 0)
      {
        v398 = *(v333 + 136);
      }

      if (v397 == v398)
      {
        v400 = v396 >= 0 ? &v392[16] : *&v392[16];
        v401 = v399 >= 0 ? (v333 + 128) : *v395;
        if (!memcmp(v400, v401, v397))
        {
          goto LABEL_589;
        }
      }

      v402 = sub_2621C92AC((v333 + 16), v392 + 2, 0);
      v404 = *(a1 + 480);
      if (v402 < v404)
      {
        goto LABEL_589;
      }

      v405 = 180.0 - v404;
      if (v405 < v402)
      {
        goto LABEL_589;
      }

      LODWORD(v405) = *(a1 + 508);
      if (v402 > *&v405 && 180.0 - *&v405 > v402)
      {
        goto LABEL_589;
      }

      v406 = *(v333 + 16);
      v407 = vsub_f32(*(v333 + 24), v406);
      v408 = v392[2];
      v410 = v392[3];
      v409 = vsub_f32(v410, v408);
      *v410.i32 = -*&v407.i32[1];
      v411 = vzip1_s32(v410, v407);
      v412 = vmul_f32(v409, v411);
      v477 = v412;
      v412.f32[0] = vaddv_f32(v412);
      if (v412.f32[0] == 0.0)
      {
        goto LABEL_589;
      }

      sub_2621DC4A4(v481, (v333 + 16), v392 + 2, *&v412, *&v410, v405, v403);
      sub_2621DC654(&v511, v392 + 2, *(v333 + 16), *(v333 + 24), v413, v414, v415);
      v417 = v481[0];
      v418 = *(v481[0] + 1);
      if (v418 >= *v481[0])
      {
        v418 = *v481[0];
      }

      if (v418 < v391)
      {
        break;
      }

      v420 = *(v481[0] + 3);
      if (v420 >= *(v481[0] + 2))
      {
        v420 = *(v481[0] + 2);
      }

      v419 = v511;
      if (v420 >= v391)
      {
        goto LABEL_585;
      }

      if (*v511)
      {
        v470 = v511;
        sub_262246794(src, v333, v416);
        sub_262246794(v486, v333, v421);
        v422 = vmul_f32(vsub_f32(v406, v408), v411);
        v423 = vmla_n_f32(v408, v409, vdiv_f32(vadd_f32(v422, vdup_lane_s32(v422, 1)), vadd_f32(v477, vdup_lane_s32(v477, 1))).f32[0]);
        v424 = *v417;
        v425 = v417[1];
        v426 = *v417 > v425;
        v514 = v502;
        v478 = (&v514 | (8 * v426));
        *v478 = v423;
        v502 = v514;
        v427 = v514;
        v428 = v514;
        DWORD2(v428) = v505;
        *&v430 = *(&v514 + 1);
        v429 = v430;
        DWORD2(v429) = DWORD1(v505);
        DWORD2(v427) = DWORD1(v505);
        DWORD2(v430) = v505;
        v503 = v428;
        *v504 = v429;
        *v482 = v427;
        v483 = v429;
        v484 = v430;
        v485 = v428;
        if (src[1])
        {
          objc_copyStruct(src[1] + 272, v482, 64, 1, 0);
        }

        v514 = *obj;
        *(&v514 | (8 * (v424 <= v425))) = v423;
        *obj = v514;
        v431 = v514;
        v432 = v514;
        DWORD2(v432) = v490;
        *&v430 = *(&v514 + 1);
        v433 = v430;
        DWORD2(v433) = DWORD1(v490);
        DWORD2(v431) = DWORD1(v490);
        DWORD2(v430) = v490;
        v488 = v432;
        v489 = v433;
        *v482 = v431;
        v483 = v433;
        v484 = v430;
        v485 = v432;
        if (v486[1])
        {
          objc_copyStruct(v486[1] + 272, v482, 64, 1, 0);
        }

        if (sub_2621C92AC(obj, v392 + 2, 0) < *(a1 + 508))
        {
          v435 = vsub_f32(obj[0], obj[1]);
          v436 = sqrtf(vaddv_f32(vmul_f32(v435, v435)));
          if (v436 < *(a1 + 488))
          {
            v437 = vsub_f32(v392[2], v392[3]);
            if (v436 < sqrtf(vaddv_f32(vmul_f32(v437, v437))))
            {
              v438 = *(a1 + 56);
              v439 = *(a1 + 64);
              if (v438 == v439)
              {
LABEL_582:
                v514 = *v394;
                *v478 = v423;
                *(&v455 + 1) = *(&v514 + 1);
                *v394 = v514;
                *&v455 = *(v333 + 16);
                *&v434 = *(v333 + 24);
                v456 = v455;
                DWORD2(v456) = *(v333 + 64);
                v457 = v434;
                DWORD2(v457) = *(v333 + 68);
                DWORD2(v455) = DWORD2(v457);
                DWORD2(v434) = DWORD2(v456);
                *(v333 + 32) = v456;
                *(v333 + 48) = v457;
                v458 = *(v333 + 8);
                *v482 = v455;
                v483 = v457;
                v484 = v434;
                v485 = v456;
                if (v458)
                {
                  objc_copyStruct((v458 + 272), v482, 64, 1, 0);
                }
              }

              else
              {
                v440 = *(v394 + 8 * v426);
                v468 = *(v333 + 151);
                if (v468 >= 0)
                {
                  v441 = *(v333 + 151);
                }

                else
                {
                  v441 = *(v333 + 136);
                }

                v442 = v438 + 16;
                while (1)
                {
                  v443 = *(v442 + 23);
                  v444 = v443;
                  if (v443 < 0)
                  {
                    v443 = v442[1];
                  }

                  if (v443 != v441 || (v444 >= 0 ? (v445 = v442) : (v445 = *v442), v468 >= 0 ? (v446 = (v333 + 128)) : (v446 = *v395), v447 = v439, v448 = memcmp(v445, v446, v441), v439 = v447, v448))
                  {
                    v449 = vsub_f32(v440, *(v442 - 14));
                    v450 = vmul_f32(v449, v449);
                    v451 = vsub_f32(v440, *(v442 - 13));
                    v452 = vmul_f32(v451, v451);
                    v453 = vsqrt_f32(vadd_f32(vzip1_s32(v452, v450), vzip2_s32(v452, v450)));
                    if (v453.f32[0] >= v453.f32[1])
                    {
                      v453.f32[0] = v453.f32[1];
                    }

                    if (v453.f32[0] < v391)
                    {
                      break;
                    }
                  }

                  v454 = v442 + 6;
                  v442 += 22;
                  if (v454 == v439)
                  {
                    goto LABEL_582;
                  }
                }
              }
            }
          }
        }

        sub_2621C50C4(v486);
        sub_2621C50C4(src);
        v419 = v470;
LABEL_585:
        if (!v419)
        {
          goto LABEL_587;
        }
      }

      operator delete(v419);
      v417 = v481[0];
LABEL_587:
      if (v417)
      {
        operator delete(v417);
      }

LABEL_589:
      v392 += 22;
      if (v392 == v393)
      {
        goto LABEL_590;
      }
    }

    v419 = v511;
    goto LABEL_585;
  }

LABEL_591:
  sub_2622B5BA8((a1 + 608), a1 + 48);

  sub_2622593AC(v479);
  sub_2622593AC(v480);
}

void sub_262254880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2621C50C4(&a65);
  sub_2621C50C4(&STACK[0x2F0]);
  operator delete(v65);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  sub_262259168(v66 - 224);
  STACK[0x2E0] = v66 - 176;
  sub_2621C5004(&STACK[0x2E0]);

  sub_2622593AC(&a23);
  sub_2622593AC(&a28);

  _Unwind_Resume(a1);
}

void sub_262254B98(uint64_t a1, __int128 **a2, void *a3, uint64_t a4)
{
  v291 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (*(a1 + 904) != 1)
  {
    goto LABEL_257;
  }

  v235 = (a1 + 816);
  v219 = v6;
  v220 = a4;
  v221 = v6;
  memset(v249, 0, sizeof(v249));
  v242 = a1;
  if (*(a4 + 137) != 1)
  {
    LODWORD(v243[0]) = 1;
    sub_26222296C(&v251, a4, v243);
    v271 = 0u;
    v270 = 0u;
    v269 = 0u;
    sub_262223F30(&v272, &v251);
    v278 = 0u;
    v277 = 0u;
    v276 = 0u;
    LODWORD(v279) = 1132396544;
    v269 = v273;
    v270 = v274;
    v271 = v275;
    *__p = 0u;
    v255 = 0u;
    v258 = v274;
    v259 = v275;
    v256 = 0u;
    v257 = v273;
    sub_262223F30(v260, &v272);
    v262 = v277;
    v263 = v278;
    v261 = v276;
    v264 = v279;
    *__p = v257;
    v255 = v258;
    *src = 0u;
    *v281 = 0u;
    v282 = 0u;
    *v283 = v257;
    v256 = v259;
    *&v283[16] = v258;
    *&v283[32] = v259;
    v285 = v259;
    v284 = v258;
    *&v283[48] = v257;
    sub_262223F30(v286, v260);
    v287 = v261;
    v288 = v262;
    v289 = v263;
    v290 = v264;
    *src = *v283;
    *v281 = *&v283[16];
    v282 = *&v283[32];
    sub_2622B8150(v265, src);
  }

  v246 = 0;
  v247 = 0;
  v248 = 0;
  src[0] = v249;
  sub_26224C618(src);

  v9 = *(a1 + 768);
  v10 = *(a1 + 776);
  while (v9 != v10)
  {
    src[1] = 0;
    src[0] = 0;
    v281[0] = 0;
    sub_2621D9F60(src, (v9 + 32));
    sub_2621D9F60(src, (v9 + 48));
    v11 = src[0];
    v12 = sub_262257F0C(*a2, a2[1], src[0], (src[1] - src[0]) >> 4);
    *(v9 + 76) = v12;
    v13 = *(v9 + 8);
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = 0;
    }

    else
    {
      if (!v13 || *(v13 + 116))
      {
        goto LABEL_13;
      }

      v14 = 1;
    }

    *(v13 + 116) = v14;
LABEL_13:
    if (v11)
    {
      operator delete(v11);
    }

    v9 += 320;
  }

  *v243 = 0u;
  v244 = 0u;
  v245 = 1065353216;
  v16 = v246;
  v15 = v247;
  if (v246 == v247)
  {
    v19 = v242;
  }

  else
  {
    v229 = v247;
    v17.i64[0] = 0;
    v18 = vdup_n_s32(0x49742400u);
    v19 = v242;
    do
    {
      v20 = *(v242 + 768);
      for (i = *(v242 + 776); v20 != i; v20 += 20)
      {
        sub_2623A3C7C(__p, v16 + 12, *v17.i64);
        sub_2623A3C7C(&v269, v20 + 12, v22);
        *v281 = xmmword_2623A7900;
        *v282.i8 = v18;
        v282.i64[1] = -3175874560;
        *v283 = 0;
        memset(&v283[8], 0, 48);
        v23 = __p[0];
        v24 = v269;
        v283[0] = sub_262257F0C(__p[0], (__p[1] - __p[0]) >> 4, v269, (*(&v269 + 1) - v269) >> 4);
        v265[0] = &v16[8];
        v25 = sub_26225836C(v243, v16[8].i64, v265);
        v265[0] = &v20[8];
        v26 = sub_262258800(v25 + 10, v20[8].i64, v265);
        v27 = v26;
        v28 = *v283;
        v29 = v282;
        v30 = *v281;
        *(v26 + 5) = *src;
        *(v26 + 7) = v30;
        *(v26 + 9) = v29;
        *(v26 + 44) = v28;
        if (v26 + 5 != src)
        {
          sub_2621CA9DC(v26 + 12, *&v283[8], *&v283[16], (*&v283[16] - *&v283[8]) >> 2);
          sub_2621CA9DC(v27 + 15, *&v283[32], *&v283[40], (*&v283[40] - *&v283[32]) >> 2);
        }

        v265[0] = &v20[8];
        v31 = sub_26225836C(v243, v20[8].i64, v265);
        v265[0] = &v16[8];
        v32 = sub_262258800(v31 + 10, v16[8].i64, v265);
        v33 = v32;
        v34 = *v283;
        v17 = v282;
        v35 = *v281;
        *(v32 + 5) = *src;
        *(v32 + 7) = v35;
        *(v32 + 9) = v17;
        *(v32 + 44) = v34;
        if (v32 + 5 != src)
        {
          sub_2621CA9DC(v32 + 12, *&v283[8], *&v283[16], (*&v283[16] - *&v283[8]) >> 2);
          sub_2621CA9DC(v33 + 15, *&v283[32], *&v283[40], (*&v283[40] - *&v283[32]) >> 2);
        }

        if (*&v283[32])
        {
          *&v283[40] = *&v283[32];
          operator delete(*&v283[32]);
        }

        if (*&v283[8])
        {
          *&v283[16] = *&v283[8];
          operator delete(*&v283[8]);
        }

        if (v24)
        {
          operator delete(v24);
        }

        if (v23)
        {
          operator delete(v23);
        }
      }

      v16 += 20;
    }

    while (v16 != v229);
    v16 = v246;
    v15 = v247;
  }

  v36 = (v19 + 768);
  if (v16 != v15)
  {
    v37 = v16 + 8;
    do
    {
      if (v37[-4].i8[12])
      {
        sub_262258CCC(src, v37, v243);
        if (!v281[1])
        {
          v38 = &v37[-8];
          v37[-3].i32[2] = 4;
          v39 = *(v242 + 776);
          if (v39 >= *(v242 + 784))
          {
            v40 = sub_262258F3C(v36, v38);
            v41 = v242;
          }

          else
          {
            sub_262258DB0(*(v242 + 776), v38);
            v40 = v39 + 320;
            v41 = v242;
            *(v242 + 776) = v39 + 320;
          }

          *(v41 + 776) = v40;
        }

        sub_262259168(src);
      }

      else
      {
        v37[-3].i32[2] = 5;
      }

      v42 = v37 + 12;
      v37 += 20;
    }

    while (v42 != v15);
  }

  v43 = v242;
  v44 = *(v242 + 768);
  v45 = *(v242 + 776);
  if (v44 != v45)
  {
    v218 = v36;
    do
    {
      sub_262258CCC(v266, (v44 + 128), v243);
      v46 = v267;
      if (v267)
      {
        v47 = v246;
        v48 = v247;
        v49 = v267;
        while (1)
        {
          v50 = sub_2622591F0(v49 + 2, v47, v48);
          if (v50 != -1 && (*(v47 + 320 * v50 + 76) & 1) != 0)
          {
            break;
          }

          v49 = *v49;
          if (!v49)
          {
            goto LABEL_56;
          }
        }

        *(v44 + 76) = 1;
        v51 = *(v44 + 8);
        if (v51)
        {
          *(v51 + 116) = 0;
        }
      }

LABEL_56:
      v52 = *(v44 + 76) == 1 && v268 == 1;
      if (v52)
      {
        v53 = sub_2622591F0(v46 + 2, v246, v247);
        v43 = v242;
        if (v53 != -1)
        {
          v221;
          LODWORD(v250) = 1;
          sub_26222296C(&v251, v220, &v250);
          v271 = 0u;
          v270 = 0u;
          v269 = 0u;
          sub_262223F30(&v272, &v251);
          v278 = 0u;
          v277 = 0u;
          v276 = 0u;
          LODWORD(v279) = 1132396544;
          v269 = v273;
          v270 = v274;
          v271 = v275;
          *__p = 0u;
          v255 = 0u;
          v256 = 0u;
          v258 = v274;
          v259 = v275;
          v257 = v273;
          sub_262223F30(v260, &v272);
          v261 = v276;
          v262 = v277;
          v263 = v278;
          v264 = v279;
          *__p = v257;
          v255 = v258;
          v256 = v259;
          *src = 0u;
          *v281 = 0u;
          v282 = 0u;
          *v283 = v257;
          *&v283[16] = v258;
          v284 = v258;
          v285 = v259;
          *&v283[32] = v259;
          *&v283[48] = v257;
          sub_262223F30(v286, v260);
          v287 = v261;
          v288 = v262;
          v289 = v263;
          v290 = v264;
          *src = *v283;
          *v281 = *&v283[16];
          v282 = *&v283[32];
          sub_2622B8150(v265, src);
        }
      }

      else
      {
        *(v44 + 88) = 0;
        v43 = v242;
      }

      sub_262259168(v266);
      v44 += 320;
    }

    while (v44 != v45);
    v44 = v43[96];
    v45 = v43[97];
    v36 = v218;
  }

  if (v44 != v45)
  {
    do
    {
      if (*(v44 + 88) == 2)
      {
        v45 = sub_2622592AC(v44 + 320, v45, v44);
        v54 = v43[97];
        if (v54 != v45)
        {
          v55 = v54 - 320;
          v56 = (v54 - 320);
          do
          {
            (**v56)(v56);
            v55 -= 320;
            v52 = v56 == v45;
            v56 -= 40;
          }

          while (!v52);
        }

        v43[97] = v45;
      }

      else
      {
        v44 += 320;
      }
    }

    while (v44 != v45);
    v44 = *v36;
  }

  *__p = 0u;
  v255 = 0u;
  LODWORD(v256) = 1065353216;
  if (v44 == v45)
  {
    v270 = 0uLL;
    v269 = 0uLL;
    LODWORD(v271) = 1065353216;
  }

  else
  {
    do
    {
      v58 = v43[7];
      for (j = v43[8]; v58 != j; v58 = v61 + 6)
      {
        v59 = sub_2622BB4B0(v58, v44, v235);
        src[0] = (v44 + 128);
        v60 = sub_2622BBF0C(__p, (v44 + 128), src);
        v61 = v58 + 16;
        src[0] = v61;
        *(sub_2622BC3A0(v60 + 10, v61, src) + 10) = v59;
        src[0] = v61;
        v62 = sub_2622BBF0C(__p, v61, src);
        src[0] = (v44 + 128);
        *(sub_2622BC3A0(v62 + 10, (v44 + 128), src) + 10) = v59;
      }

      v44 += 320;
      v43 = v242;
    }

    while (v44 != v45);
    v63 = v255;
    v270 = 0u;
    v269 = 0u;
    for (LODWORD(v271) = 1065353216; v63; v63 = *v63)
    {
      for (k = v63[7]; k; k = *k)
      {
        v65 = *(k + 10);
        src[0] = v63 + 2;
        v66 = sub_2622BBF0C(&v269, v63 + 2, src);
        src[0] = k + 2;
        *(sub_2622BC3A0(v66 + 10, k + 2, src) + 10) = v65;
        v67 = *(k + 10);
        src[0] = k + 2;
        v68 = sub_2622BBF0C(&v269, k + 2, src);
        src[0] = v63 + 2;
        *(sub_2622BC3A0(v68 + 10, v63 + 2, src) + 10) = v67;
      }
    }
  }

  v69 = v242;
  v70 = *(v242 + 768);
  for (__src = *(v242 + 776); v70 != __src; v70 += 40)
  {
    v72 = *(v69 + 56);
    for (m = *(v69 + 64); v72 != m; v72 += 22)
    {
      objc_msgSend_confidence(*&v72[1], v7, v8, v218);
      if (v73 >= *(v69 + 576))
      {
        src[0] = &v70[16];
        v74 = sub_2622BBF0C(__p, &v70[16], src);
        src[0] = &v72[16];
        v75 = *(sub_2622BC3A0(v74 + 10, &v72[16], src) + 10);
        if (!v75)
        {
          v236 = v70[28].f32[0];
          v76 = __sincosf_stret((v70[28].f32[1] / 180.0) * 3.1416);
          v78 = __sincosf_stret((v70[29].f32[0] / 180.0) * 3.1416);
          v77.f32[0] = v78.__cosval;
          v79 = v72[2];
          v80 = v72[3];
          v81 = v70[26];
          v82 = vadd_f32(v81, vmul_n_f32(__PAIR64__(LODWORD(v76.__sinval), LODWORD(v76.__cosval)), v236));
          v83 = vsub_f32(v82, v79);
          if (vaddv_f32(vmul_f32(v83, vsub_f32(v82, v80))) <= 0.00001)
          {
            v86 = vsub_f32(v80, v79);
            v87 = vaddv_f32(vmul_f32(v83, v86));
            v88 = vaddv_f32(vmul_f32(v86, v86));
            if (v88 < 0.000001)
            {
              v88 = 0.000001;
            }

            v89 = vsub_f32(vmla_n_f32(v79, v86, v87 / v88), v82);
            v85 = v242;
            v84 = sqrtf(vaddv_f32(vmul_f32(v89, v89))) < *(v242 + 860);
          }

          else
          {
            v84 = 0;
            v85 = v242;
          }

          v77.i32[1] = LODWORD(v78.__sinval);
          v90 = vadd_f32(v81, vmul_n_f32(v77, v236));
          v91 = vsub_f32(v90, v79);
          if (vaddv_f32(vmul_f32(v91, vsub_f32(v90, v80))) <= 0.00001)
          {
            v93 = vsub_f32(v80, v79);
            v94 = vaddv_f32(vmul_f32(v91, v93));
            v95 = vaddv_f32(vmul_f32(v93, v93));
            if (v95 < 0.000001)
            {
              v95 = 0.000001;
            }

            v96 = vsub_f32(vmla_n_f32(v79, v93, v94 / v95), v90);
            v92 = sqrtf(vaddv_f32(vmul_f32(v96, v96))) < *(v85 + 860);
          }

          else
          {
            v92 = 0;
          }

          if (!v84 && !v92 || (v97 = *(v85 + 56), v98 = *(v85 + 64), v97 == v98))
          {
            v75 = 0;
          }

          else
          {
            v75 = 0;
            v99 = v97 + 16;
            do
            {
              v100 = v72[18].i8[7];
              if (v100 >= 0)
              {
                v101 = v72[18].u8[7];
              }

              else
              {
                v101 = v72[17];
              }

              v102 = v99[2].u8[7];
              v103 = v102.i8[0];
              if (v102.i8[0] < 0)
              {
                v102 = v99[1];
              }

              if (v101 != *&v102 || (v100 >= 0 ? (v104 = v72 + 16) : (v104 = v72[16]), v103 >= 0 ? (v105 = v99) : (v105 = *v99), memcmp(v104, v105, v101)))
              {
                sub_26229DAC8(src, v72 + 2, v99 - 14, (v242 + 464));
                if (BYTE6(src[1]) == 1)
                {
                  v265[0] = v99;
                  v106 = sub_2622BBF0C(__p, v99, v265);
                  v265[0] = &v70[16];
                  if (*(sub_2622BC3A0(v106 + 10, &v70[16], v265) + 10) == -1)
                  {
                    v75 = 1;
                  }
                }

                if (*&v283[32])
                {
                  *&v283[40] = *&v283[32];
                  operator delete(*&v283[32]);
                }

                if (*&v283[8])
                {
                  *&v283[16] = *&v283[8];
                  operator delete(*&v283[8]);
                }
              }

              v107 = v99 + 6;
              v99 += 22;
            }

            while (v107 != v98);
          }
        }

        src[0] = &v72[16];
        v108 = sub_2622BBF0C(&v269, &v72[16], src);
        src[0] = &v70[16];
        *(sub_2622BC3A0(v108 + 10, &v70[16], src) + 10) = v75;
        src[0] = &v70[16];
        v109 = sub_2622BBF0C(&v269, &v70[16], src);
        src[0] = &v72[16];
        *(sub_2622BC3A0(v109 + 10, &v72[16], src) + 10) = v75;
        v69 = v242;
      }
    }
  }

  v110 = *(v69 + 56);
  v111 = *(v69 + 64);
  if (v110 != v111)
  {
    do
    {
      v112 = *(v242 + 768);
      v113 = *(v242 + 776);
      if (v112 != v113)
      {
        v114 = v112 + 128;
        while (1)
        {
          if ((*(v114 - 52) & 1) != 0 || *(v110 + 76) == 1)
          {
            src[0] = (v110 + 128);
            v115 = sub_2622BBF0C(&v269, (v110 + 128), src);
            src[0] = v114;
            if (!*(sub_2622BC3A0(v115 + 10, v114, src) + 10))
            {
              break;
            }
          }

          v116 = v114 + 192;
          v114 += 320;
          if (v116 == v113)
          {
            goto LABEL_137;
          }
        }

        *(v110 + 88) = 2;
      }

LABEL_137:
      v110 += 176;
    }

    while (v110 != v111);
    v69 = v242;
    v110 = *(v242 + 56);
    v111 = *(v242 + 64);
  }

  if (v110 != v111)
  {
    do
    {
      if (*(v110 + 88) == 2)
      {
        v111 = sub_2622519E8(v110 + 176, v111, v110);
        v117 = *(v69 + 64);
        if (v117 != v111)
        {
          v118 = v117 - 176;
          v119 = (v117 - 176);
          v120 = (v117 - 176);
          do
          {
            v121 = *v120;
            v120 -= 22;
            (*v121)(v119);
            v118 -= 176;
            v52 = v119 == v111;
            v119 = v120;
          }

          while (!v52);
        }

        v69 = v242;
        *(v242 + 64) = v111;
      }

      else
      {
        v110 += 176;
      }
    }

    while (v110 != v111);
    v110 = *(v69 + 56);
  }

  if (v110 != v111)
  {
    v222 = v111;
    while (1)
    {
      v122 = *(v69 + 768);
      v123 = *(v69 + 776);
      if (v122 != v123)
      {
        break;
      }

LABEL_223:
      v110 += 176;
      if (v110 == v222)
      {
        if (*(v69 + 64) != *(v69 + 56))
        {
          v197 = *(v69 + 768);
          v198 = *(v69 + 776);
          if (v197 != v198)
          {
            do
            {
              v199 = *(v197 + 228);
              v200 = *(v197 + 232);
              v201 = v200 - v199;
              if (v200 >= v199)
              {
                v202 = 0;
                do
                {
                  v241 = *(v197 + 224);
                  v203 = __sincosf_stret((v199 / 180.0) * 3.1416);
                  v204 = *(v197 + 208);
                  src[1] = 0;
                  src[0] = 0;
                  v281[0] = 0;
                  v205 = *(v242 + 56);
                  v206 = *(v242 + 64);
                  v207 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v203.__sinval), LODWORD(v203.__cosval)), v241), *&v204);
                  do
                  {
                    LODWORD(v265[0]) = sub_2621DC76C(v207, v205[2], v205[3], 0.00001);
                    sub_2621C8F2C(src, v265);
                    v205 += 22;
                  }

                  while (v205 != v206);
                  v208 = (src[0] + 4);
                  v209 = src[0] == src[1] || v208 == src[1];
                  v210 = src[0];
                  if (!v209)
                  {
                    v211 = *src[0];
                    v210 = src[0];
                    v212 = (src[0] + 4);
                    do
                    {
                      v213 = *v212++;
                      v214 = v213;
                      if (v213 < v211)
                      {
                        v211 = v214;
                        v210 = v208;
                      }

                      v208 = v212;
                    }

                    while (v212 != src[1]);
                  }

                  if (*v210 < *(v242 + 860))
                  {
                    ++v202;
                  }

                  if (src[0])
                  {
                    operator delete(src[0]);
                  }

                  v52 = v199++ == v200;
                }

                while (!v52);
                if ((v202 / (v201 + 1)) >= *(v242 + 852))
                {
                  *(v197 + 88) = 2;
                }
              }

              v197 += 320;
            }

            while (v197 != v198);
            v69 = v242;
            v197 = *(v242 + 768);
            v198 = *(v242 + 776);
          }

          while (v197 != v198)
          {
            if (*(v197 + 88) == 2)
            {
              v198 = sub_2622592AC(v197 + 320, v198, v197);
              v215 = *(v69 + 776);
              if (v215 != v198)
              {
                v216 = v215 - 320;
                v217 = (v215 - 320);
                do
                {
                  (**v217)(v217);
                  v216 -= 320;
                  v52 = v217 == v198;
                  v217 -= 40;
                }

                while (!v52);
              }

              v69 = v242;
              *(v242 + 776) = v198;
            }

            else
            {
              v197 += 320;
            }
          }
        }

        goto LABEL_256;
      }
    }

    v223 = *(v69 + 776);
    while (2)
    {
      if ((v122[4].i8[12] & 1) == 0 && *(v110 + 76) != 1)
      {
        goto LABEL_222;
      }

      src[0] = (v110 + 128);
      v124 = sub_2622BBF0C(&v269, (v110 + 128), src);
      src[0] = &v122[8];
      if (*(sub_2622BC3A0(v124 + 10, v122[8].i64, src) + 10) != 1)
      {
        goto LABEL_222;
      }

      v125 = *(v110 + 48);
      v126 = *(v110 + 32);
      DWORD2(v126) = 0;
      v237 = v126;
      src[0] = *(v110 + 32);
      v251 = v125;
      DWORD2(v125) = 0;
      *v227 = v125;
      memset(v265, 0, 24);
      LODWORD(src[1]) = 0;
      LODWORD(v252) = 0;
      v127 = src;
      v128 = 1;
      do
      {
        v129 = v128;
        v130 = v122[13];
        v131 = vsubq_f32(*v127, v130);
        v132 = vmulq_f32(v131, v131);
        v132.f32[0] = sqrtf(v132.f32[2] + vaddv_f32(*v132.f32));
        if (v132.f32[0] < 0.000001)
        {
          v132.f32[0] = 0.000001;
        }

        v133 = vdivq_f32(v131, vdupq_lane_s32(*v132.f32, 0));
        v134 = vmlaq_f32(vmlaq_n_f32(v130, v133, v122[14].f32[0]), 0, v133);
        v135 = vsubq_f32(*v127, v134);
        v136 = vmulq_f32(v135, v135);
        if (sqrtf(v136.f32[2] + vaddv_f32(*v136.f32)) < *(v69 + 860) && sub_2623A3EA4(v122 + 12, v134, 0.0))
        {
          LODWORD(v266[0]) = 1;
          sub_2621C7CD0(v265, v266);
        }

        else
        {
          LODWORD(v266[0]) = 0;
          sub_2621C7CD0(v265, v266);
        }

        v128 = 0;
        v127 = &v251;
      }

      while ((v129 & 1) != 0);
      v139 = v265[0];
      v141 = *v265[0];
      v140 = *(v265[0] + 1);
      if (!(*v265[0] + v140))
      {
        *(&v142 + 1) = *(&v237 + 1);
        v228 = v237;
        goto LABEL_166;
      }

      if (v141 != 1)
      {
        if (!v141)
        {
          *(&v142 + 1) = *(&v237 + 1);
          v228 = v237;
          if (v140 == 1)
          {
            goto LABEL_166;
          }
        }

LABEL_181:
        *(v110 + 88) = 2;
LABEL_221:
        operator delete(v139);
        v123 = v223;
LABEL_222:
        v122 += 20;
        if (v122 == v123)
        {
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    v137 = *v227;
    *(&v142 + 1) = *(&v237 + 1);
    *v227 = v237;
    v228 = v137;
    if (v140)
    {
      goto LABEL_181;
    }

LABEL_166:
    v144 = *(v110 + 32);
    v143 = *(v110 + 48);
    v145 = *(v69 + 872);
    v281[0] = 0;
    src[0] = 0;
    src[1] = 0;
    v146 = *v122[13].f32;
    v230 = v143;
    __srca = v144;
    v147 = vsub_f32(*&v143, *&v144);
    v148 = vaddv_f32(vmul_f32(vsub_f32(v146, *&v144), v147));
    *&v138 = vmul_f32(v147, v147);
    *&v138 = vaddv_f32(*&v138);
    if (*&v138 >= 0.000001)
    {
      v149 = *&v138;
    }

    else
    {
      v149 = 0.000001;
    }

    *&v142 = vmla_n_f32(*&v144, v147, v148 / v149);
    v150 = vsub_f32(*&v142, v146);
    v151 = sqrtf(vaddv_f32(vmul_f32(v150, v150)));
    v152 = v122[14].f32[0];
    if (v151 >= v152)
    {
      if (v151 <= (v152 + v145))
      {
        *v266 = v142;
        sub_2621D9F60(src, v266);
      }
    }

    else
    {
      *&v137 = sqrtf((v152 * v152) - (v151 * v151));
      *&v138 = sqrtf(*&v138);
      if (*&v138 < 0.000001)
      {
        *&v138 = 0.000001;
      }

      v153 = vdiv_f32(v147, vdup_lane_s32(*&v138, 0));
      *&v138 = vmla_n_f32(*&v142, v153, *&v137);
      *&v142 = vmls_lane_f32(*&v142, v153, *&v137, 0);
      *v266 = v138;
      v250 = v142;
      v154 = vsub_f32(*&v138, *&v142);
      if (sqrtf(vaddv_f32(vmul_f32(v154, v154))) >= 0.01)
      {
        sub_2621D9F60(src, v266);
        v155 = &v250;
      }

      else
      {
        v155 = v266;
      }

      sub_2621D9F60(src, v155);
    }

    *&v156 = __srca;
    DWORD2(v156) = 0;
    v157.i32[1] = DWORD1(v226);
    HIDWORD(v156) = v225;
    *__srcb = v156;
    *&v156 = v230;
    DWORD2(v156) = 0;
    HIDWORD(v156) = HIDWORD(v226);
    v231 = v156;
    v251 = 0;
    v252 = 0;
    v253 = 0;
    v158 = src[0];
    v159 = src[1];
    for (n = src[0]; n != v159; ++n)
    {
      v161 = *(v242 + 864);
      *v157.i32 = (v122[14].f32[0] * 6.2832) / (*(v242 + 868) * 360.0);
      v238 = *n;
      v162 = sub_2623A3EA4(v122 + 12, *n, *&v157);
      v163 = vsub_f32(*v238.f32, __srcb[0]);
      v164 = vsub_f32(*v238.f32, *&v231);
      v165 = vaddv_f32(vmul_f32(v163, v164));
      v166 = vmul_f32(v163, v163);
      v157 = vmul_f32(v164, v164);
      v167 = vsqrt_f32(vadd_f32(vzip1_s32(v166, v157), vzip2_s32(v166, v157)));
      if (v167.f32[0] < v167.f32[1])
      {
        v167.f32[0] = v167.f32[1];
      }

      if ((v165 / v167.f32[0]) <= v161 && v162)
      {
        sub_2621D9F60(&v251, n);
      }
    }

    if (v158)
    {
      operator delete(v158);
    }

    v168 = v251;
    v169 = (v252 - v251) >> 4;
    v69 = v242;
    switch(v169)
    {
      case 2:
        v171 = *(v251 + 16);
        v172 = vsub_f32(*v171.i8, *&v228);
        v173 = vmul_f32(v172, v172);
        v174 = vsub_f32(*v251, *&v228);
        v175 = vmul_f32(v174, v174);
        v176 = vsqrt_f32(vadd_f32(vzip1_s32(v175, v173), vzip2_s32(v175, v173)));
        v170 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(v176, vdup_lane_s32(v176, 1)), 0)), 0x1FuLL)), *v251, v171);
        break;
      case 1:
        v170 = *v251;
        break;
      case 0:
        v170 = *v227;
        break;
      default:
LABEL_218:
        if (v168)
        {
          operator delete(v168);
        }

        v225 = HIDWORD(__srcb[1]);
        v226 = v231;
        goto LABEL_221;
    }

    v239 = v170;
    *&v177 = v228;
    *(&v177 + 1) = v170.i64[0];
    v178 = v228;
    DWORD2(v178) = *(v110 + 64);
    v179 = v170;
    v179.i32[2] = *(v110 + 68);
    *(v110 + 16) = v177;
    *(v110 + 32) = v178;
    v180 = v228;
    DWORD2(v180) = v179.i32[2];
    v170.i32[2] = DWORD2(v178);
    *(v110 + 48) = v179;
    v181 = *(v110 + 8);
    *src = v180;
    *v281 = v179;
    v282 = v170;
    *v283 = v178;
    if (v181)
    {
      objc_copyStruct((v181 + 272), src, 64, 1, 0);
    }

    LODWORD(v178) = v122[14].i32[0];
    v182 = sub_2623A3DE4(v122[13], *&v178, v239);
    v266[0] = 0xFFFFFFFFLL;
    LODWORD(v266[1]) = 1;
    v281[0] = 0;
    src[0] = 0;
    src[1] = 0;
    sub_2621DD5D0(src, v266, &v266[1] + 1, 3uLL);
    if (src[0] == src[1])
    {
      v187 = 0;
      if (src[0])
      {
        goto LABEL_210;
      }
    }

    else
    {
      v183 = 0;
      v184 = 0.0;
      v185 = src[0];
      do
      {
        v186 = v182 + (360 * *v185);
        if (v122[14].f32[1] <= v186 && v122[14].f32[2] > v186)
        {
          ++v183;
          v184 = v182 + (360 * *v185);
        }

        ++v185;
      }

      while (v185 != src[1]);
      if (v183 == 1)
      {
        v187 = LODWORD(v184) | 0x100000000;
      }

      else
      {
        v187 = 0;
      }

      if (src[0])
      {
LABEL_210:
        operator delete(src[0]);
      }
    }

    if (HIDWORD(v187))
    {
      v240 = v122[14].f32[0];
      v188 = __sincosf_stret((v122[14].f32[1] / 180.0) * 3.1416);
      v189 = __sincosf_stret((v122[14].f32[2] / 180.0) * 3.1416);
      v190 = v122[13];
      *&v191 = v122[13].i64[0];
      *&v192 = v191;
      *(&v192 + 1) = vadd_f32(*v190.f32, vmul_n_f32(__PAIR64__(LODWORD(v188.__sinval), LODWORD(v188.__cosval)), v240));
      *src = v192;
      *(&v191 + 1) = vadd_f32(*v190.f32, vmul_n_f32(__PAIR64__(LODWORD(v189.__sinval), LODWORD(v189.__cosval)), v240));
      *v266 = v191;
      *&v250 = v190.i64[0];
      *(&v250 + 1) = v228;
      v193 = sub_2621C92AC(&v250, src, 0);
      v194 = sub_2621C92AC(&v250, v266, 0);
      v195.n128_u32[0] = v187;
      if (v193 >= v194)
      {
        v196 = v122[14].f32[1];
      }

      else
      {
        v196 = *&v187;
        v195.n128_u32[0] = v122[14].u32[2];
      }

      sub_2622BBD94(v122, v196, v195);
    }

    goto LABEL_218;
  }

LABEL_256:
  sub_2622BC7FC(&v269);
  sub_2622BC7FC(__p);
  sub_2622593AC(v243);
  src[0] = &v246;
  sub_26224C618(src);
  v6 = v219;
LABEL_257:
}

void sub_26225792C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  STACK[0x420] = &a43;
  sub_2622B85B0(&STACK[0x420]);
  STACK[0x358] = &unk_2874EF0B8;
  if (STACK[0x3D8])
  {
    sub_2621D1B78(STACK[0x3D8]);
  }

  STACK[0x420] = &a46;
  sub_26224C618(&STACK[0x420]);

  _Unwind_Resume(a1);
}

float sub_262257E68(int32x2_t *a1, int32x2_t a2, int32x2_t a3, const char *a4, uint64_t a5)
{
  v6 = vdup_lane_s32(a2, 0);
  a2.i32[1] = a3.i32[0];
  v7 = vbsl_s8(vcgt_f32(vrev64_s32(a2), a2), vdup_lane_s32(a3, 0), v6);
  *&v8 = a1[2];
  *&v9 = a1[3];
  *&v10 = v8;
  *&v11 = v9;
  *(&v9 + 1) = vdup_lane_s32(v7, 1);
  *(&v8 + 1) = *(&v9 + 1);
  *(&v10 + 1) = v7;
  *(&v11 + 1) = v7;
  a1[8] = vrev64_s32(v7);
  v12 = a1[1];
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v9;
  v14[3] = v8;
  if (v12)
  {
    objc_copyStruct((*&v12 + 272), v14, 64, 1, 0);
  }

  return sub_262246BD0(a1, a4, a5);
}

uint64_t sub_262257F0C(__int128 *a1, unint64_t a2, __int128 *a3, unint64_t a4)
{
  if (a3 && a1 && a2 && a4)
  {
    operator new[]();
  }

  return 0;
}

void *sub_26225836C(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2622587E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_262259818(va);
  _Unwind_Resume(a1);
}

void *sub_262258800(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void *sub_262258C88(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_262258CCC(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  result = sub_2621E26D8(a3, a2);
  if (result)
  {
    for (i = result[7]; i; i = *i)
    {
      if (*(i + 88) == 1)
      {
        v10 = (i + 2);
        result = sub_262258800(a1, i + 2, &v10);
        v6 = result;
        v7 = *(i + 5);
        v8 = *(i + 7);
        v9 = *(i + 9);
        *(result + 44) = *(i + 44);
        *(result + 9) = v9;
        *(result + 7) = v8;
        *(result + 5) = v7;
        if (i != result)
        {
          sub_2621CA9DC(result + 12, i[12], i[13], (i[13] - i[12]) >> 2);
          result = sub_2621CA9DC(v6 + 15, i[15], i[16], (i[16] - i[15]) >> 2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_262258DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2621C5224(a1);
  *v5 = off_2874EE620;
  v5[22] = 0;
  v5[24] = &off_2874EE600;
  v6 = (v5 + 36);
  v5[37] = 0;
  v5[38] = 0;
  v5[36] = 0;
  v9 = objc_msgSend_copy(*(a2 + 8), v7, v8, v4);
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v13 = objc_msgSend_copy(*(a2 + 176), v11, v12);
  v14 = *(a1 + 176);
  *(a1 + 176) = v13;

  *(a1 + 16) = *(a2 + 16);
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  std::string::operator=((a1 + 128), (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  v16 = *(a2 + 208);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 208) = v16;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  if (a1 != a2)
  {
    sub_26225945C(v6, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 3);
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_262258F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2621C512C(va);

  sub_2621C50C4(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_262258F3C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCLL)
  {
    sub_2621CBEB0();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 6);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 6) >= 0x66666666666666)
  {
    v5 = 0xCCCCCCCCCCCCCCLL;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    if (v5 <= 0xCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    sub_2621C6A34();
  }

  v18 = 0;
  v19 = 320 * v2;
  v20 = 320 * v2;
  sub_262258DB0(320 * v2, a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = 320 * v2 - (v7 - *a1);
  *&v20 = 320 * v2 + 320;
  if (v7 != v6)
  {
    v9 = 0;
    v10 = v19 - ((v7 - v6) >> 6 << 6) - 320;
    v11 = v6;
    v12 = v8;
    do
    {
      sub_262258DB0(v12, v11);
      v11 += 320;
      v12 += 320;
      v9 -= 320;
      v10 += 320;
    }

    while (v11 != v7);
    v13 = v6;
    do
    {
      (**v6)(v6);
      v6 += 40;
      v13 += 40;
    }

    while (v6 != v7);
  }

  v14 = *a1;
  *a1 = v8;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_262259620(&v18);
  return v17;
}

void sub_262259108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_262259620(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262259168(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 15);
      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 12);
      if (v5)
      {
        *(v2 + 13) = v5;
        operator delete(v5);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_2622591F0(const void **a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v4 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 6) <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 6);
  }

  for (i = a2 + 128; ; i += 320)
  {
    v9 = *(i + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(i + 8);
    }

    if (v9 == v5)
    {
      v11 = v10 >= 0 ? i : *i;
      if (!memcmp(v11, v6, v5))
      {
        break;
      }
    }

    if (v7 == ++v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t sub_2622592AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      objc_storeStrong((a3 + v6 + 8), *(a1 + v6 + 8));
      v9 = *(a1 + v6 + 16);
      v10 = *(a1 + v6 + 48);
      *(v7 + 32) = *(a1 + v6 + 32);
      *(v7 + 48) = v10;
      *(v7 + 16) = v9;
      v11 = *(a1 + v6 + 64);
      v12 = *(a1 + v6 + 80);
      v13 = *(a1 + v6 + 96);
      *(v7 + 105) = *(a1 + v6 + 105);
      *(v7 + 80) = v12;
      *(v7 + 96) = v13;
      *(v7 + 64) = v11;
      std::string::operator=((a3 + v6 + 128), (a1 + v6 + 128));
      std::string::operator=((a3 + v6 + 152), (a1 + v6 + 152));
      objc_storeStrong((a3 + v6 + 176), *(a1 + v6 + 176));
      v14 = *(a1 + v6 + 208);
      *(v7 + 220) = *(a1 + v6 + 220);
      *(v7 + 208) = v14;
      v15 = *(a1 + v6 + 240);
      v16 = *(a1 + v6 + 272);
      *(v7 + 256) = *(a1 + v6 + 256);
      *(v7 + 272) = v16;
      *(v7 + 240) = v15;
      if (a1 != a3)
      {
        sub_26225945C(v7 + 288, *(v8 + 288), *(v8 + 296), (*(v8 + 296) - *(v8 + 288)) >> 3);
      }

      *(v7 + 312) = *(v8 + 312);
      v6 += 320;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

uint64_t sub_2622593AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_26225940C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_26225940C(uint64_t a1)
{
  sub_262259168(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_26225945C(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      v9 = *(a1 + 8);
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *--v9;
        }

        while (v9 != v8);
        v10 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v12 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v12 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        sub_2622317F8(v13);
      }
    }

    sub_2621CBEB0();
  }

  v14 = *(a1 + 8) - v8;
  if (a4 <= v14 >> 3)
  {
    sub_2622595C4(a2, a3, v8);
    v20 = v19;
    v21 = *(a1 + 8);
    if (v21 != v19)
    {
      do
      {
        v22 = *(v21 - 8);
        v21 -= 8;
      }

      while (v21 != v20);
    }

    *(a1 + 8) = v20;
  }

  else
  {
    v15 = sub_2622595C4(a2, (a2 + v14), v8);
    v16 = *(a1 + 8);
    if (v15 != a3)
    {
      v17 = v15;
      do
      {
        v18 = *v17++;
        *v16++ = v18;
      }

      while (v17 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void **sub_2622595C4(void **a1, void **a2, id *location)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4++;
      objc_storeStrong(location++, v6);
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t sub_262259620(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 320;
    (**(i - 320))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2622596A8(uint64_t a1)
{
  *a1 = off_2874EE620;
  v2 = (a1 + 288);
  sub_2621C512C(&v2);

  sub_2621C50C4(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26225972C(uint64_t a1)
{
  *a1 = off_2874EE620;
  v3 = (a1 + 288);
  sub_2621C512C(&v3);

  return sub_2621C50C4(a1);
}

void sub_26225979C(char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 15);
    if (v3)
    {
      *(__p + 16) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 12);
    if (v4)
    {
      *(__p + 13) = v4;
      operator delete(v4);
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_262259818(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_26225940C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_262259864(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    return a1 + 208;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  for (i = v3 + 128; ; i += 176)
  {
    v9 = *(i + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(i + 8);
    }

    if (v9 == v6)
    {
      v11 = v10 >= 0 ? i : *i;
      if (!memcmp(v11, v7, v6))
      {
        break;
      }
    }

    v12 = i + 48;
    if (v12 == v4)
    {
      return a1 + 208;
    }
  }

  return i - 128;
}

uint64_t *sub_262259910(uint64_t *result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v79 = *v11;
        if (*(**a3 + 4 * *v10) > *(**a3 + 4 * *v11))
        {
          *v11 = *v10;
          *v10 = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v87 = v11 + 1;
      v88 = v11[1];
      v89 = v11 + 2;
      v90 = v11[2];
      v91 = **a3;
      v92 = *(v91 + 4 * v88);
      v93 = *v11;
      v94 = *(v91 + 4 * *v11);
      v95 = *(v91 + 4 * v90);
      if (v92 <= v94)
      {
        if (v95 <= v92)
        {
          goto LABEL_169;
        }

        *v87 = v90;
        *v89 = v88;
        v96 = v11;
        v97 = v11 + 1;
        result = v88;
        if (v95 > v94)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v96 = v11;
        v97 = v11 + 2;
        result = *v11;
        if (v95 <= v92)
        {
          *v11 = v88;
          v11[1] = v93;
          v96 = v11 + 1;
          v97 = v11 + 2;
          result = v93;
          if (v95 <= v94)
          {
LABEL_169:
            v88 = v90;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v96 = v90;
        *v97 = v93;
        v88 = result;
      }

LABEL_170:
      if (*(v91 + 4 * *v10) > *(v91 + 4 * v88))
      {
        *v89 = *v10;
        *v10 = v88;
        v149 = *v89;
        v150 = *v87;
        v151 = *(v91 + 4 * v149);
        if (v151 > *(v91 + 4 * v150))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 > *(v91 + 4 * *v11))
          {
            *v11 = v149;
            v11[1] = v152;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v78 = **a3;

      return sub_26225A334(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v98 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v99 = **a3;
            v100 = 8;
            v101 = v11;
            do
            {
              v103 = *v101;
              v102 = v101[1];
              v101 = v98;
              v104 = *(v99 + 4 * v102);
              if (v104 > *(v99 + 4 * v103))
              {
                v105 = v100;
                while (1)
                {
                  *(v11 + v105) = v103;
                  v106 = v105 - 8;
                  if (v105 == 8)
                  {
                    break;
                  }

                  v103 = *(v11 + v105 - 16);
                  v105 -= 8;
                  if (v104 <= *(v99 + 4 * v103))
                  {
                    v107 = (v11 + v106);
                    goto LABEL_123;
                  }
                }

                v107 = v11;
LABEL_123:
                *v107 = v102;
              }

              v98 = v101 + 1;
              v100 += 8;
            }

            while (v101 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = **a3;
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 4 * v146);
            if (v148 > *(v145 + 4 * v147))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 > *(v145 + 4 * v147));
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v108 = (v12 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v11[v112];
            v114 = 2 * v110 + 2;
            v115 = *v109;
            if (v114 < v12 && *(v115 + 4 * *v113) > *(v115 + 4 * v113[1]))
            {
              ++v113;
              v112 = 2 * v111 + 2;
            }

            result = &v11[v111];
            v116 = *v113;
            v117 = *result;
            v118 = *(v115 + 4 * *result);
            if (*(v115 + 4 * *v113) <= v118)
            {
              do
              {
                v119 = v113;
                *result = v116;
                if (v108 < v112)
                {
                  break;
                }

                v120 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = &v11[v112];
                v121 = v120 + 2;
                if (v121 < v12 && *(v115 + 4 * *v113) > *(v115 + 4 * v113[1]))
                {
                  ++v113;
                  v112 = v121;
                }

                v116 = *v113;
                result = v119;
              }

              while (*(v115 + 4 * *v113) <= v118);
              *v119 = v117;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v122 = 0;
          v123 = *v11;
          v124 = *a3;
          v125 = v11;
          do
          {
            v126 = v125;
            v127 = &v125[v122];
            v125 = v127 + 1;
            v128 = 2 * v122;
            v122 = (2 * v122) | 1;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = *(v130 - 1);
              if (*(*v124 + 4 * result) > *(*v124 + 4 * v131))
              {
                v125 = v130;
                v122 = v129;
              }
            }

            *v126 = *v125;
          }

          while (v122 <= ((v12 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v123;
          }

          else
          {
            *v125 = *a2;
            *a2 = v123;
            v132 = (v125 - v11 + 8) >> 3;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v11[v135];
              v137 = *v136;
              v138 = *v125;
              v139 = *v124;
              v140 = *(v139 + 4 * *v125);
              if (*(v139 + 4 * *v136) > v140)
              {
                do
                {
                  v141 = v136;
                  *v125 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v11[v135];
                  v137 = *v136;
                  v125 = v141;
                }

                while (*(v139 + 4 * *v136) > v140);
                *v141 = v138;
              }
            }
          }

          v133 = v12-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 4 * *v10);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * *v11);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 4 * *v13) > *(v15 + 4 * *v11))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 4 * *v10) > v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 4 * v29);
      v32 = *(v15 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v15 + 4 * v33);
      if (v31 <= v32)
      {
        if (v34 > v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 4 * *v28) > *(v15 + 4 * v35))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 > v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 4 * v36) > v32)
        {
          *v28 = v36;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = *(v15 + 4 * v39);
      v42 = *(v15 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v15 + 4 * v43);
      if (v41 <= v42)
      {
        if (v44 > v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 4 * *v37) > *(v15 + 4 * v45))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 > v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 4 * v46) > v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 4 * *v14);
      v50 = *(v15 + 4 * *v28);
      v51 = *v37;
      v52 = *(v15 + 4 * *v37);
      if (v49 <= v50)
      {
        if (v52 <= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 <= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 <= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 <= v50)
        {
          v47 = v48;
LABEL_56:
          v53 = *v11;
          *v11 = v47;
          *v14 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v37 = v48;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 4 * *v11);
    v25 = *(v15 + 4 * *v14);
    if (v24 <= v25)
    {
      if (v17 > v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 4 * *v11) > *(v15 + 4 * *v14))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 > v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 4 * *v10) > v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 4 * v54);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 4 * v59) > v55);
      v60 = a2;
      if (v57 == v11)
      {
        v60 = a2;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v15 + 4 * v62) <= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 4 * v61) <= v55);
      }

      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (*(v15 + 4 * v66) > v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 4 * v67) <= v55);
        }

        while (v64 < v65);
      }

      if (v57 != v11)
      {
        *v11 = *v57;
      }

      *v57 = v54;
      if (v56 < v60)
      {
        goto LABEL_79;
      }

      v68 = sub_26225A4A8(v11, v57, *a3);
      v11 = v57 + 1;
      result = sub_26225A4A8(v57 + 1, a2, *a3);
      if (result)
      {
        a2 = v57;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_79:
        result = sub_262259910(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 4 * v54);
      if (*(v15 + 4 * *(v11 - 1)) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(v15 + 4 * *v10))
      {
        v70 = (v11 + 1);
        do
        {
          v11 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v70 += 8;
        }

        while (v55 <= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 <= *(v15 + 4 * v69));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 > *(v15 + 4 * v72));
      }

      if (v11 < v71)
      {
        v73 = *v11;
        v74 = *v71;
        do
        {
          *v11 = v74;
          *v71 = v73;
          do
          {
            v75 = v11[1];
            ++v11;
            v73 = v75;
          }

          while (v55 <= *(v15 + 4 * v75));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 > *(v15 + 4 * v76));
        }

        while (v11 < v71);
      }

      v77 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v77;
      }

      a5 = 0;
      *v77 = v54;
    }
  }

  v80 = *v11;
  v81 = v11[1];
  v82 = **a3;
  v83 = *(v82 + 4 * v81);
  v84 = *(v82 + 4 * *v11);
  v85 = *v10;
  v86 = *(v82 + 4 * *v10);
  if (v83 <= v84)
  {
    if (v86 > v83)
    {
      v11[1] = v85;
      *v10 = v81;
      v143 = *v11;
      v142 = v11[1];
      if (*(v82 + 4 * v142) > *(v82 + 4 * *v11))
      {
        *v11 = v142;
        v11[1] = v143;
      }
    }
  }

  else
  {
    if (v86 <= v83)
    {
      *v11 = v81;
      v11[1] = v80;
      if (*(v82 + 4 * *v10) <= v84)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v85;
    }

    *v10 = v80;
  }

  return result;
}

uint64_t *sub_26225A334(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 <= v9)
  {
    if (v11 <= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 4 * *a2) > *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 > v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 4 * *a3) > v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 4 * *a4) > *(a6 + 4 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 4 * *a3) > *(a6 + 4 * *a2))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 4 * *a2) > *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 4 * *a5) > *(a6 + 4 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 4 * *a4) > *(a6 + 4 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 4 * *a3) > *(a6 + 4 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 4 * *a2) > *(a6 + 4 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_26225A4A8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 4 * v7);
      v10 = *(*a3 + 4 * *a1);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v9 <= v10)
      {
        if (v12 > v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) > *(v8 + 4 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 <= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 4 * v51) <= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_26225A334(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(*a3 + 4 * v24);
    v29 = *a1;
    v30 = *(*a3 + 4 * *a1);
    v31 = *(*a3 + 4 * v26);
    if (v28 <= v30)
    {
      if (v31 <= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 <= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v27 + 4 * v46) > *(v27 + 4 * v24))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v27 + 4 * v47);
          if (v49 > *(v27 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 > *(v27 + 4 * *a1))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 <= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v29;
        if (v31 <= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v29;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) > *(*a3 + 4 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a3;
  v17 = *(*a3 + 4 * v15);
  v18 = *a1;
  v19 = *(*a3 + 4 * *a1);
  v20 = *(*a3 + 4 * v13);
  if (v17 > v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 <= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_27;
  }

  if (v20 > v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 > v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v16 + 4 * *v37);
    if (v42 > *(v16 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 <= *(v16 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t sub_26225A7AC(uint64_t a1, uint64_t a2, const void **a3)
{
  if (a2 == a1)
  {
    return 0;
  }

  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a3 + 23))
    {
      v5 = a3[1];
      goto LABEL_7;
    }

    return 0;
  }

  v5 = a3[1];
  if (!v5)
  {
    return 0;
  }

LABEL_7:
  if (v4 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = v5;
  }

  if (v4 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  for (i = a1 + 128; ; i += 176)
  {
    v10 = *(i + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(i + 8);
    }

    if (v10 == v7)
    {
      v12 = v11 >= 0 ? i : *i;
      if (!memcmp(v12, v8, v7))
      {
        break;
      }
    }

    v13 = i + 48;
    if (v13 == a2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_26225A86C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v16 = v3;
  if (v3)
  {
    sub_2622C534C(v4, v3);
    v7 = objc_msgSend_parentIdentifier(*(a1 + 8), v5, v6);
    v10 = objc_msgSend_UUIDString(v7, v8, v9);
    v11 = v10;
    v14 = objc_msgSend_UTF8String(v11, v12, v13);
    sub_2621DA094((a1 + 152), v14);
  }

  else
  {
    sub_2622C534C(v4, 0);
    if (*(a1 + 175) < 0)
    {
      *(a1 + 160) = 0;
      v15 = *(a1 + 152);
    }

    else
    {
      v15 = (a1 + 152);
      *(a1 + 175) = 0;
    }

    *v15 = 0;
  }
}

uint64_t sub_26225A954(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 == v4)
  {
    return a1 + 208;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  for (i = v3 + 128; ; i += 176)
  {
    v9 = *(i + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(i + 8);
    }

    if (v9 == v6)
    {
      v11 = v10 >= 0 ? i : *i;
      if (!memcmp(v11, v7, v6))
      {
        break;
      }
    }

    v12 = i + 48;
    if (v12 == v4)
    {
      return a1 + 208;
    }
  }

  return i - 128;
}

void sub_26225AA00(uint64_t a1, float *a2)
{
  v2 = a2[2];
  if (a2[6] < v2)
  {
    v2 = a2[6];
  }

  *(a1 + 64) = v2;
  v3 = a2[2];
  if (v3 < a2[6])
  {
    v3 = a2[6];
  }

  *(a1 + 68) = v3;
  v4 = *a2;
  v5 = *(a2 + 1);
  *&v6 = *a2;
  *(&v6 + 1) = *(a2 + 2);
  v7 = *a2;
  *(&v7 + 2) = v2;
  v8 = v5;
  *(&v8 + 2) = v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(&v4 + 2) = v3;
  *(&v5 + 2) = v2;
  *(a1 + 72) = v3 - v2;
  v9 = *(a1 + 8);
  v10[0] = v4;
  v10[1] = v8;
  v10[2] = v5;
  v10[3] = v7;
  if (v9)
  {
    objc_copyStruct((v9 + 272), v10, 64, 1, 0);
  }
}

uint64_t sub_26225AAA0(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_26225AADC(uint64_t a1, float32x2_t *a2, const void **a3, const void **a4)
{
  v4 = *(a1 + 544);
  v36 = *(a1 + 528);
  v37 = v4;
  v38 = *(a1 + 560);
  v39 = *(a1 + 576);
  v5 = *(a1 + 480);
  v32 = *(a1 + 464);
  v33 = v5;
  v6 = *(a1 + 512);
  v34 = *(a1 + 496);
  v35 = v6;
  HIDWORD(v33) = 1041865114;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a3 == a4)
  {
    goto LABEL_32;
  }

  v9 = &a2[16];
  v10 = a3 + 16;
  do
  {
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = *(v10 + 23);
    }

    else
    {
      v12 = v10[1];
    }

    v13 = a2[18].u8[7];
    v14 = v13.i8[0];
    if (v13.i8[0] < 0)
    {
      v13 = a2[17];
    }

    if (v12 != *&v13 || (v11 >= 0 ? (v15 = v10) : (v15 = *v10), v14 >= 0 ? (v16 = v9) : (v16 = *v9), memcmp(v15, v16, v12)))
    {
      sub_26229DAC8(v24, a2 + 2, v10 - 14, &v32);
      sub_26225AE14(&v29, v24);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }
    }

    v17 = v10 + 6;
    v10 += 22;
  }

  while (v17 != a4);
  v18 = v29;
  if (v29 == v30)
  {
LABEL_32:
    v22 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      if (*(v18 + 14) == 1)
      {
        v21 = *(v18 + 4);
        if (!v21)
        {
          ++v19;
        }

        if (v21 == 1)
        {
          ++v20;
        }
      }

      v18 += 104;
    }

    while (v18 != v30);
    if (v19)
    {
      v22 = (v20 != 0) + 1;
    }

    else
    {
      v22 = v20 != 0;
    }
  }

  *&v24[0] = &v29;
  sub_26225B070(v24);
  return v22;
}

void sub_26225AC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a9 = &a22;
  sub_26225B070(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_26225AC9C(uint64_t a1, float32x2_t *a2, const void **a3, const void **a4)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (a3 == a4)
  {
    goto LABEL_28;
  }

  v7 = &a2[16];
  v8 = a3 + 16;
  do
  {
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(v8 + 23);
    }

    else
    {
      v10 = v8[1];
    }

    v11 = a2[18].u8[7];
    v12 = v11.i8[0];
    if (v11.i8[0] < 0)
    {
      v11 = a2[17];
    }

    if (v10 != *&v11 || (v9 >= 0 ? (v13 = v8) : (v13 = *v8), v12 >= 0 ? (v14 = v7) : (v14 = *v7), memcmp(v13, v14, v10)))
    {
      sub_26229DAC8(v21, a2 + 2, v8 - 14, (a1 + 464));
      sub_26225AE14(&v26, v21);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }
    }

    v15 = v8 + 6;
    v8 += 22;
  }

  while (v15 != a4);
  v16 = v26;
  if (v26 == v27)
  {
LABEL_28:
    v19 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      if (*(v16 + 14))
      {
        v18 = *(v16 + 13);
      }

      else
      {
        v18 = 0;
      }

      v17 += v18;
      v16 += 104;
    }

    while (v16 != v27);
    v19 = v17 != 0;
  }

  *&v21[0] = &v26;
  sub_26225B070(v21);
  return v19;
}

void sub_26225ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v9 - 72;
  sub_26225B070(&a9);
  _Unwind_Resume(a1);
}

void sub_26225AE14(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v9 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x276276276276276)
    {
      sub_2621CBEB0();
    }

    v11 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x276276276276276)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v13 = 104 * v9;
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = a2[2];
    *(v13 + 48) = *(a2 + 24);
    *(v13 + 56) = *(a2 + 56);
    *(v13 + 72) = *(a2 + 9);
    *(a2 + 56) = 0uLL;
    *(v13 + 80) = a2[5];
    *(v13 + 96) = *(a2 + 12);
    *(a2 + 88) = 0uLL;
    *(a2 + 72) = 0uLL;
    v8 = 104 * v9 + 104;
    v24 = (v13 + 104);
    v15 = *a1;
    v16 = a1[1];
    v17 = v13 + *a1 - v16;
    if (*a1 != v16)
    {
      v18 = *a1;
      v19 = v13 + *a1 - v16;
      do
      {
        v20 = *v18;
        v21 = *(v18 + 1);
        v22 = *(v18 + 2);
        *(v19 + 48) = *(v18 + 24);
        *(v19 + 16) = v21;
        *(v19 + 32) = v22;
        *v19 = v20;
        *(v19 + 64) = 0;
        *(v19 + 72) = 0;
        *(v19 + 56) = 0;
        *(v19 + 56) = *(v18 + 7);
        *(v19 + 72) = v18[9];
        v18[7] = 0;
        v18[8] = 0;
        v18[9] = 0;
        *(v19 + 80) = 0;
        *(v19 + 88) = 0;
        *(v19 + 96) = 0;
        *(v19 + 80) = *(v18 + 5);
        *(v19 + 96) = v18[12];
        v18[10] = 0;
        v18[11] = 0;
        v18[12] = 0;
        v18 += 13;
        v19 += 104;
      }

      while (v18 != v16);
      do
      {
        sub_26225B0F4(v15);
        v15 += 13;
      }

      while (v15 != v16);
    }

    v23 = *a1;
    *a1 = v17;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 24);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 9);
    *(a2 + 56) = 0uLL;
    *(a2 + 9) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = a2[5];
    *(v3 + 96) = *(a2 + 12);
    a2[5] = 0uLL;
    *(a2 + 12) = 0;
    v8 = v3 + 104;
  }

  a1[1] = v8;
}

void sub_26225B070(void ***a1)
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
        v4 -= 13;
        sub_26225B0F4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26225B0F4(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

void sub_26225B14C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2621CBEB0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2621CBEC8(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_26225B224(const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
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
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    sub_26225B3B0((24 * v7), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
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
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = sub_26225B3B0(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_26225B390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_26225B3B0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_26225B410(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_26225B42C(uint64_t *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 4) >= a5)
    {
      v15 = v10 - a2;
      if (0x2E8BA2E8BA2E8BA3 * ((v10 - a2) >> 4) >= a5)
      {
        v17 = 176 * a5;
        sub_26225B684(result, a2, result[1], &a2[176 * a5]);
        v16 = v17 + v6;
      }

      else
      {
        result = sub_26225185C(v15 + a3, a4, v10);
        v8[1] = result;
        if (v15 < 1)
        {
          return result;
        }

        sub_26225B684(v8, a2, v10, &a2[176 * a5]);
        v16 = v15 + v6;
      }

      return sub_2622517A0(v6, v16, a2);
    }

    else
    {
      v11 = *result;
      v12 = a5 + 0x2E8BA2E8BA2E8BA3 * ((v10 - *result) >> 4);
      if (v12 > 0x1745D1745D1745DLL)
      {
        sub_2621CBEB0();
      }

      v13 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xBA2E8BA2E8BA2ELL)
      {
        v14 = 0x1745D1745D1745DLL;
      }

      else
      {
        v14 = v12;
      }

      v29 = v8;
      if (v14)
      {
        sub_2622469FC(v14);
      }

      v18 = 16 * (&a2[-v11] >> 4);
      v26 = 0;
      v27 = v18;
      v28 = v18;
      v19 = 176 * a5;
      v20 = v18 + 176 * a5;
      do
      {
        sub_262246794(v18, v6, a3);
        v18 += 176;
        v6 += 176;
        v19 -= 176;
      }

      while (v19);
      *&v28 = v20;
      sub_262246A58(a2, v8[1], v20);
      v21 = *v8;
      v22 = v27;
      *&v28 = v20 + v8[1] - a2;
      v8[1] = a2;
      v23 = v22 + v21 - a2;
      sub_262246A58(v21, a2, v23);
      v24 = *v8;
      *v8 = v23;
      v25 = v8[2];
      *(v8 + 1) = v28;
      *&v28 = v24;
      *(&v28 + 1) = v25;
      v26 = v24;
      v27 = v24;
      return sub_262246B64(&v26);
    }
  }

  return result;
}

uint64_t sub_26225B684(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(result + 8);
    do
    {
      result = sub_262246794(v10, v9, a3);
      v9 += 176;
      v10 += 176;
    }

    while (v9 < a3);
  }

  *(v5 + 8) = v10;
  if (v6 != a4)
  {
    v11 = 0;
    v12 = a4 - v6;
    do
    {
      v13 = v6 + v11;
      objc_storeStrong((v6 + v11 - 168), *(v7 + v11 - 168));
      v14 = *(v7 + v11 - 160);
      v15 = *(v7 + v11 - 128);
      *(v13 - 144) = *(v7 + v11 - 144);
      *(v13 - 128) = v15;
      *(v13 - 160) = v14;
      v16 = *(v7 + v11 - 112);
      v17 = *(v7 + v11 - 96);
      v18 = *(v7 + v11 - 80);
      *(v13 - 71) = *(v7 + v11 - 71);
      *(v13 - 96) = v17;
      *(v13 - 80) = v18;
      *(v13 - 112) = v16;
      std::string::operator=((v6 + v11 - 48), (v7 + v11 - 48));
      result = std::string::operator=((v6 + v11 - 24), (v7 + v11 - 24));
      v11 -= 176;
    }

    while (v12 != v11);
  }

  return result;
}

uint64_t sub_26225B780(_BYTE *a1, float32x2_t *a2, __n128 a3, float32x2_t a4)
{
  v4 = a3.n128_u64[0];
  a3.n128_u64[0] = a2[2];
  sub_26229E5CC(&v22, a3, a2[3], v4, a4);
  if (v22.i8[0])
  {
    sub_262246794(&v15, a2, v7);
    v17 = v23;
    v9 = v23;
    v10 = v23;
    DWORD2(v10) = v20;
    *&v11 = *(&v23 + 1);
    v12 = v11;
    DWORD2(v12) = v21;
    DWORD2(v9) = v21;
    DWORD2(v11) = v20;
    v18 = v10;
    v19 = v12;
    src[0] = v9;
    src[1] = v12;
    src[2] = v11;
    src[3] = v10;
    if (v16)
    {
      objc_copyStruct((v16 + 272), src, 64, 1, 0);
    }

    *a1 = 1;
    sub_262246794((a1 + 16), &v15, v8);
  }

  else
  {
    sub_2621C5224(&v15);
    *a1 = 0;
    sub_262246794((a1 + 16), &v15, v13);
  }

  return sub_2621C50C4(&v15);
}

void sub_26225B888(uint64_t a1, float32x2_t *a2, void *a3, uint64_t a4, uint64_t a5, int32x2_t *a6, uint64_t *a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v10 = *a2[2].f32;
  memset(v9, 0, sizeof(v9));
  sub_2621DC054(v9, &v10, v11, 1uLL);
}

void sub_26225BD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 + 128);
  if (v31)
  {
    sub_2621D1B78(v31);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26225BE64(float *a1, float32x2_t *a2, uint64_t *a3, uint64_t *a4, float32x2_t **a5, void *a6, uint64_t a7)
{
  v71 = *MEMORY[0x277D85DE8];
  v32 = a6;
  sub_2621C5224(v59);
  v12 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
LABEL_6:
    v13 = 1;
  }

  else
  {
    while (1)
    {
      sub_26223FEB8(v34, a2 + 2, (v12 + 16));
      if (v35 > 0.5 && v37 < a1[120] && *(&v36 + 1) < a1[118])
      {
        break;
      }

      v12 += 176;
      if (v12 == v11)
      {
        goto LABEL_6;
      }
    }

    objc_storeStrong(&v60, *(v12 + 8));
    v19 = *(v12 + 16);
    v20 = *(v12 + 48);
    v62 = *(v12 + 32);
    v63 = v20;
    v61 = v19;
    v21 = *(v12 + 64);
    v22 = *(v12 + 80);
    v23 = *(v12 + 96);
    *(v66 + 9) = *(v12 + 105);
    v65 = v22;
    v66[0] = v23;
    v64 = v21;
    std::string::operator=(&v67, (v12 + 128));
    std::string::operator=(&v68, (v12 + 152));
    v13 = 0;
  }

  sub_2621C5224(v49);
  v15 = *a4;
  v14 = a4[1];
  if (*a4 == v14)
  {
LABEL_13:
    sub_2621C5224(v39);
    if (v13)
    {
      v17 = 0;
      v18 = v32;
      goto LABEL_21;
    }

    objc_storeStrong(&v40, v60);
    v45 = v65;
    v46[0] = v66[0];
    *(v46 + 9) = *(v66 + 9);
    v41 = v61;
    v42 = v62;
    v43 = v63;
    v44 = v64;
    std::string::operator=(&v47, &v67);
    v16 = &v68;
  }

  else
  {
    v16 = &v58;
    while (1)
    {
      sub_26223FEB8(v34, a2 + 2, (v15 + 16));
      if (v35 > 0.5 && v37 < a1[120] && *(&v36 + 1) < a1[118])
      {
        break;
      }

      v15 += 176;
      if (v15 == v14)
      {
        goto LABEL_13;
      }
    }

    objc_storeStrong(&v50, *(v15 + 8));
    v24 = *(v15 + 16);
    v25 = *(v15 + 48);
    v52 = *(v15 + 32);
    v53 = v25;
    v51 = v24;
    v26 = *(v15 + 64);
    v27 = *(v15 + 80);
    v28 = *(v15 + 96);
    *(v56 + 9) = *(v15 + 105);
    v55 = v27;
    v56[0] = v28;
    v54 = v26;
    std::string::operator=(&v57, (v15 + 128));
    std::string::operator=(&v58, (v15 + 152));
    sub_2621C5224(v39);
    objc_storeStrong(&v40, v50);
    v45 = v55;
    v46[0] = v56[0];
    *(v46 + 9) = *(v56 + 9);
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    std::string::operator=(&v47, &v57);
  }

  std::string::operator=(&v48, v16);
  v29.n128_u64[0] = v41;
  sub_26225B780(v34, a2, v29, *(&v41 + 8));
  v18 = v32;
  if (v34[0] == 1)
  {
    v30 = vsub_f32(*&v38, *(&v38 + 8));
    if (sqrtf(vaddv_f32(vmul_f32(v30, v30))) >= a1[128])
    {
      v69 = v38;
      memset(v33, 0, sizeof(v33));
      sub_2621DC054(v33, &v69, &v70, 1uLL);
    }
  }

  v17 = 1;
  sub_2621C50C4(&v36);
LABEL_21:
  sub_2621C50C4(v39);
  sub_2621C50C4(v49);
  sub_2621C50C4(v59);

  return v17;
}

void sub_26225C2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v66 + 176) = &unk_2874EF0B8;
  v68 = *(v66 + 304);
  if (v68)
  {
    sub_2621D1B78(v68);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_2621C50C4(v65 + 16);
  sub_2621C50C4(&a43);
  sub_2621C50C4(&a65);
  sub_2621C50C4(&STACK[0x270]);

  _Unwind_Resume(a1);
}

uint64_t sub_26225C370(uint64_t a1, float32x2_t *a2, const void **a3, const void **a4)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (a3 == a4)
  {
    goto LABEL_35;
  }

  v7 = &a2[16];
  v8 = a3 + 16;
  do
  {
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(v8 + 23);
    }

    else
    {
      v10 = v8[1];
    }

    v11 = a2[18].u8[7];
    v12 = v11.i8[0];
    if (v11.i8[0] < 0)
    {
      v11 = a2[17];
    }

    if (v10 != *&v11 || (v9 >= 0 ? (v13 = v8) : (v13 = *v8), v12 >= 0 ? (v14 = v7) : (v14 = *v7), memcmp(v13, v14, v10)))
    {
      sub_26229DAC8(v23, a2 + 2, v8 - 14, (a1 + 464));
      sub_26225AE14(&v28, v23);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }
    }

    v15 = v8 + 6;
    v8 += 22;
  }

  while (v15 != a4);
  v16 = v28;
  if (v28 == v29)
  {
LABEL_35:
    v21 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (*(v16 + 14) == 1)
      {
        v19 = *(v16 + 4);
        if (!v19)
        {
          ++v18;
        }

        if (v19 == 1)
        {
          ++v17;
        }
      }

      v16 += 104;
    }

    while (v16 != v29);
    if (v18)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
  }

  *&v23[0] = &v28;
  sub_26225B070(v23);
  return v21;
}

void sub_26225C4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 72);
  sub_26225B070(&a9);
  _Unwind_Resume(a1);
}

void sub_26225C4FC(uint64_t a1, float *a2, int a3, void *a4, float a5)
{
  v26 = a4;
  v9 = objc_alloc_init(RS3DSurface);
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = *(a1 + 8);
  if (v11)
  {
    *(v11 + 104) = 0;
    *(v11 + 108) = a5;
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = 0;
  }

  sub_2622C533C(v12, v26);
  sub_2622C534C(*(a1 + 8), 0);
  v13 = *(a1 + 8);
  if (v13)
  {
    *(v13 + 116) = a3;
    v14 = *(a1 + 8);
    if (v14)
    {
      *(v14 + 120) = -1;
    }
  }

  sub_26225AA00(a1, a2);
  v17 = objc_msgSend_identifier(*(a1 + 8), v15, v16);
  v20 = objc_msgSend_UUIDString(v17, v18, v19);
  v21 = v20;
  v24 = objc_msgSend_UTF8String(v21, v22, v23);
  sub_2621DA094((a1 + 128), v24);

  if (*(a1 + 175) < 0)
  {
    *(a1 + 160) = 0;
    v25 = *(a1 + 152);
  }

  else
  {
    v25 = (a1 + 152);
    *(a1 + 175) = 0;
  }

  *v25 = 0;
}

void sub_26225C650(uint64_t a1, __int128 *a2, void *a3, void *a4, float a5, float a6, float a7)
{
  v50 = a3;
  v13 = a4;
  v14 = objc_alloc_init(RS3DSurface);
  v15 = *(a1 + 8);
  *(a1 + 8) = v14;

  v16 = *(a1 + 8);
  if (v16)
  {
    *(v16 + 104) = 0;
    *(v16 + 108) = a7;
    v17 = *(a1 + 8);
  }

  else
  {
    v17 = 0;
  }

  sub_2622C533C(v17, v50);
  sub_2622C534C(*(a1 + 8), v13);
  v21 = *(a1 + 8);
  if (v21 && (*(v21 + 116) = -1, (v22 = *(a1 + 8)) != 0))
  {
    *(v22 + 120) = -1;
    v23 = *(a1 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (a6 >= a5)
  {
    v24 = a5;
  }

  else
  {
    v24 = a6;
  }

  if (a5 >= a6)
  {
    v25 = a5;
  }

  else
  {
    v25 = a6;
  }

  *(a1 + 64) = v24;
  *(a1 + 68) = v25;
  v26 = *a2;
  *(a1 + 16) = *a2;
  *&v26 = *(a1 + 16);
  *&v20 = *(a1 + 24);
  v27 = v26;
  *(&v27 + 2) = v24;
  v28 = v20;
  *(&v28 + 2) = v25;
  *(a1 + 32) = v27;
  *(a1 + 48) = v28;
  *(a1 + 72) = v25 - v24;
  *(&v26 + 2) = v25;
  *(&v20 + 2) = v24;
  src[0] = v26;
  src[1] = v28;
  src[2] = v20;
  src[3] = v27;
  if (v23)
  {
    objc_copyStruct((v23 + 272), src, 64, 1, 0);
    objc_msgSend_identifier(*(a1 + 8), v29, v30);
  }

  else
  {
    objc_msgSend_identifier(0, v18, v19);
  }
  v31 = ;
  v34 = objc_msgSend_UUIDString(v31, v32, v33);
  v35 = v34;
  v38 = objc_msgSend_UTF8String(v35, v36, v37);
  sub_2621DA094((a1 + 128), v38);

  if (v13)
  {
    v41 = objc_msgSend_parentIdentifier(*(a1 + 8), v39, v40);
    v44 = objc_msgSend_UUIDString(v41, v42, v43);
    v45 = v44;
    v48 = objc_msgSend_UTF8String(v45, v46, v47);
    sub_2621DA094((a1 + 152), v48);
  }

  else
  {
    if (*(a1 + 175) < 0)
    {
      *(a1 + 160) = 0;
      v49 = *(a1 + 152);
    }

    else
    {
      v49 = (a1 + 152);
      *(a1 + 175) = 0;
    }

    *v49 = 0;
  }
}

void sub_26225C87C()
{
  v34 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  *v33 = 0x1A00000006;
  size = 128;
  if (sysctl(v33, 2u, v32, &size, 0, 0))
  {
    if (*__error() != 12)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v1 = qword_27FF0C058;
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

LABEL_34:
      v27 = *__error();
      *buf = 67240192;
      v31 = v27;
      v23 = "sysctl failed: %{public, errno}d";
LABEL_35:
      _os_log_error_impl(&dword_2621C3000, v1, OS_LOG_TYPE_ERROR, v23, buf, 8u);
LABEL_15:

      goto LABEL_16;
    }

    if (sysctl(v33, 2u, 0, &size, 0, 0))
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v1 = qword_27FF0C058;
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

    v18 = malloc_type_malloc(size, 0xDADA5F92uLL);
    if (!v18)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v1 = qword_27FF0C058;
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v22 = *__error();
      *buf = 67240192;
      v31 = v22;
      v23 = "malloc failed: %{public, errno}d";
      goto LABEL_35;
    }

    v19 = v18;
    if (sysctl(v33, 2u, v18, &size, 0, 0))
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v20 = qword_27FF0C058;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v28 = *__error();
        *buf = 67240192;
        v31 = v28;
        _os_log_error_impl(&dword_2621C3000, v20, OS_LOG_TYPE_ERROR, "sysctl failed: %{public, errno}d", buf, 8u);
      }

      free(v19);
      goto LABEL_16;
    }

    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v25 = strlen(v19);
    v4 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v24, v26, v19, v25, 1, 1);
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = objc_msgSend_initWithCString_encoding_(v2, v3, v32, 1);
  }

  v6 = v4;
  if (!v4)
  {
LABEL_16:
    v11 = MGCopyAnswer();
    v6 = qword_27FF0C148;
    qword_27FF0C148 = v11;
    goto LABEL_28;
  }

  if (objc_msgSend_hasSuffix_(v4, v5, @"DEV"))
  {
    v9 = objc_msgSend_length(v6, v7, v8) - 3;
    objc_msgSend_substringToIndex_(v6, v10, v9);
  }

  else
  {
    if (!objc_msgSend_hasSuffix_(v6, v7, @"AP"))
    {
      v21 = qword_27FF0C148;
      qword_27FF0C148 = v6;
      v6 = v6;

      goto LABEL_28;
    }

    v14 = objc_msgSend_length(v6, v12, v13) - 2;
    objc_msgSend_substringToIndex_(v6, v15, v14);
  }
  v16 = ;
  v17 = qword_27FF0C148;
  qword_27FF0C148 = v16;

LABEL_28:
  objc_autoreleasePoolPop(v0);
}

void sub_26225CC70()
{
  v0 = objc_autoreleasePoolPush();
  byte_27FF0C158 = sub_26225CCBC(&unk_2874FACF0);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_26225CCBC(void *a1)
{
  v1 = qword_27FF0C150;
  v3 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_27FF0C150, &unk_2874EE468);
  }

  v4 = objc_msgSend_containsObject_(v3, v2, qword_27FF0C148);

  return v4;
}

void sub_26225CD24()
{
  v0 = objc_autoreleasePoolPush();
  byte_27FF0C168 = sub_26225CCBC(&unk_2874FAD08);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_26225CD70()
{
  if (qword_27FF0C160 != -1)
  {
    dispatch_once(&qword_27FF0C160, &unk_2874EE488);
  }

  if (byte_27FF0C158)
  {
    v0 = 1;
  }

  else
  {
    if (qword_27FF0C170 != -1)
    {
      dispatch_once(&qword_27FF0C170, &unk_2874EE4A8);
    }

    v0 = byte_27FF0C168;
  }

  return v0 & 1;
}

void sub_26225CDF4(void *a1)
{
  if (a1)
  {
    sub_26225CDF4(*a1);
    sub_26225CDF4(a1[1]);
    sub_26225CF48(a1[6]);

    operator delete(a1);
  }
}

void sub_26225CE48(void *a1)
{
  if (a1)
  {
    sub_26225CE48(*a1);
    sub_26225CE48(a1[1]);
    sub_26225CE9C(a1[6]);

    operator delete(a1);
  }
}

void sub_26225CE9C(void *a1)
{
  if (a1)
  {
    sub_26225CE9C(*a1);
    sub_26225CE9C(a1[1]);
    sub_26225CEF0((a1 + 4));

    operator delete(a1);
  }
}

void sub_26225CEF0(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_26225CF48(void *a1)
{
  if (a1)
  {
    sub_26225CF48(*a1);
    sub_26225CF48(a1[1]);
    sub_26225CF9C((a1 + 4));

    operator delete(a1);
  }
}

void sub_26225CF9C(uint64_t a1)
{
  sub_26225CFEC(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_26225CFEC(uint64_t a1)
{
  *a1 = &unk_2874EE728;
  v2 = *(a1 + 720);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 688);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 656);
  if (v4)
  {
    *(a1 + 664) = v4;
    operator delete(v4);
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  v5 = *(a1 + 552);
  if (v5)
  {
    operator delete(v5);
  }

  v7 = (a1 + 528);
  sub_26225D098(&v7);
  return a1;
}

void sub_26225D098(void ****a1)
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
        sub_26225D12C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26225D12C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_26225D180(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_26225D180(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_26225D1D0(uint64_t a1)
{
  sub_26225CFEC(a1);

  JUMPOUT(0x266727420);
}

void sub_26225D224(void *a1)
{
  *a1 = &unk_2874EE4D8;
  sub_2621C74C4((a1 + 19));

  JUMPOUT(0x266727420);
}

void *sub_26225D288(void *a1)
{
  *a1 = &unk_2874EE4D8;
  sub_2621C74C4((a1 + 19));
  return a1;
}