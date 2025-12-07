void sub_1866BC960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v30 = a26;
    if (!a26)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v30 = a26;
    if (!a26)
    {
LABEL_9:
      v31 = a23;
      if (!a23)
      {
LABEL_10:
        v32 = a20;
        if (!a20)
        {
LABEL_11:
          v33 = a17;
          if (!a17)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_5:
        operator delete(v32);
        v33 = a17;
        if (!a17)
        {
          goto LABEL_13;
        }

LABEL_12:
        operator delete(v33);
LABEL_13:
        if (v29)
        {
          operator delete(v29);
          _Unwind_Resume(a1);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(v31);
      v32 = a20;
      if (!a20)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  operator delete(v30);
  v31 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_4;
}

int32x4_t gcl::polyline::DecoderImpl::decodeResidual(uint64_t a1, int32x4_t *a2, int a3, char a4, uint64_t *a5, int32x4_t *a6)
{
  if (a4 == 2)
  {
    if (a3 < 1)
    {
      return result;
    }

    v165 = 0;
    v166 = 0;
    v186 = a3;
    v167 = 2 * a3;
    while (1)
    {
      v169 = a5[12];
      v170 = gcl::ArithmeticDecoder::decodeSignedExpGolomb((a1 + 128), *(v169 + v165), (a5[3] + v166), (a5[9] + v166));
      if (v170 >= 0)
      {
        v171 = v170;
      }

      else
      {
        v171 = -v170;
      }

      v172 = *(v169 + v165);
      v173 = v171 >> v172;
      if (v172)
      {
        v174 = v173 == 0;
      }

      else
      {
        v174 = 0;
      }

      if (v174)
      {
        v168 = -1;
      }

      else
      {
        if (v173 < 2)
        {
          goto LABEL_201;
        }

        v168 = 1;
      }

      *(v169 + v165) = v172 + v168;
LABEL_201:
      a6->i32[v165 / 4] = v170;
      v166 += 2;
      v165 += 4;
      if (v167 == v166)
      {
        goto LABEL_211;
      }
    }
  }

  if (a4 == 1)
  {
    if (a3 < 1)
    {
      return result;
    }

    v25 = 0;
    v26 = a1 + 176;
    v27 = *a5;
    v186 = a3;
    v28 = a3;
    while (1)
    {
      v31 = *(v27 + 2 * v25);
      v33 = *(a1 + 156);
      v32 = *(a1 + 160);
      if (v33 >= 0x40000001)
      {
        v36 = *(a1 + 156);
      }

      else
      {
        v34 = *(a1 + 168);
        do
        {
          v32 *= 2;
          *(a1 + 168) = --v34;
          if (!v34)
          {
            v37 = *(a1 + 144);
            *(a1 + 144) = v37 + 1;
            v38 = *(a1 + 128);
            if (v37 + 1 >= v38)
            {
              v39 = 65280;
            }

            else
            {
              v39 = *(*(a1 + 136) + v37 + 1) << 8;
            }

            v40 = v37 + 2;
            *(a1 + 144) = v40;
            if (v40 < v38)
            {
              v35 = *(*(a1 + 136) + v40);
            }

            else
            {
              v35 = 255;
            }

            v32 |= v39 | v35;
            v34 = 16;
            *(a1 + 168) = 16;
          }

          v36 = 2 * v33;
          v44 = v33 >= 0x20000001;
          v33 *= 2;
        }

        while (!v44);
      }

      v41 = (HIWORD(v36) * v31) & 0xFFFF0000;
      if (v32 < v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = (HIWORD(v36) * v31) & 0xFFFF0000;
      }

      v43 = v32 - v42;
      v44 = v32 >= v41;
      v45 = (v31 >> 7) & 0x1FE;
      if (v44)
      {
        ++v45;
      }

      v46 = v36 - v41;
      *(v27 + 2 * v25) = *(v26 + 2 * v45) + v31;
      v47 = v44 ? v36 - v41 : (HIWORD(v36) * v31) & 0xFFFF0000;
      *(a1 + 156) = v47;
      *(a1 + 160) = v43;
      if (v44)
      {
        break;
      }

      v30 = 0;
LABEL_32:
      a6->i32[v25++] = v30;
      if (v25 == v28)
      {
        goto LABEL_211;
      }
    }

    v48 = a5[3];
    v49 = *(v48 + 2 * v25);
    if (v46 >= 0x40000001)
    {
      v52 = v36 - v41;
    }

    else
    {
      v50 = *(a1 + 168);
      do
      {
        v43 *= 2;
        *(a1 + 168) = --v50;
        if (!v50)
        {
          v53 = *(a1 + 144);
          *(a1 + 144) = v53 + 1;
          v54 = *(a1 + 128);
          if (v53 + 1 >= v54)
          {
            v55 = 65280;
          }

          else
          {
            v55 = *(*(a1 + 136) + v53 + 1) << 8;
          }

          v56 = v53 + 2;
          *(a1 + 144) = v56;
          if (v56 < v54)
          {
            v51 = *(*(a1 + 136) + v56);
          }

          else
          {
            v51 = 255;
          }

          v43 |= v55 | v51;
          v50 = 16;
          *(a1 + 168) = 16;
        }

        v52 = 2 * v46;
        v44 = v46 >= 0x20000001;
        v46 *= 2;
      }

      while (!v44);
    }

    v57 = (HIWORD(v52) * v49) & 0xFFFF0000;
    v58 = (v49 >> 7) & 0x1FE;
    v59 = v52 - v57;
    if (v43 >= v57)
    {
      ++v58;
    }

    *(v48 + 2 * v25) = *(v26 + 2 * v58) + v49;
    if (v43 >= v57)
    {
      v60 = (HIWORD(v52) * v49) & 0xFFFF0000;
    }

    else
    {
      v59 = (HIWORD(v52) * v49) & 0xFFFF0000;
      v60 = 0;
    }

    v61 = v43 - v60;
    *(a1 + 156) = v59;
    *(a1 + 160) = v43 - v60;
    v62 = (a5[6] + 2 * (v25 << 6));
    v63 = *v62;
    if (v59 >= 0x40000001)
    {
      v66 = v59;
    }

    else
    {
      v64 = *(a1 + 168);
      do
      {
        v61 *= 2;
        *(a1 + 168) = --v64;
        if (!v64)
        {
          v67 = *(a1 + 144);
          *(a1 + 144) = v67 + 1;
          v68 = *(a1 + 128);
          if (v67 + 1 >= v68)
          {
            v69 = 65280;
          }

          else
          {
            v69 = *(*(a1 + 136) + v67 + 1) << 8;
          }

          v70 = v67 + 2;
          *(a1 + 144) = v70;
          if (v70 < v68)
          {
            v65 = *(*(a1 + 136) + v70);
          }

          else
          {
            v65 = 255;
          }

          v61 |= v69 | v65;
          v64 = 16;
          *(a1 + 168) = 16;
        }

        v66 = 2 * v59;
        v44 = v59 >= 0x20000001;
        v59 *= 2;
      }

      while (!v44);
    }

    v71 = (HIWORD(v66) * v63) & 0xFFFF0000;
    v72 = (v63 >> 7) & 0x1FE;
    v73 = v66 - v71;
    if (v61 >= v71)
    {
      ++v72;
    }

    v74 = *(v26 + 2 * v72);
    v75 = v61 >= v71;
    *v62 = v74 + v63;
    if (v61 >= v71)
    {
      v76 = v71;
    }

    else
    {
      v73 = v71;
      v76 = 0;
    }

    v77 = v61 - v76;
    *(a1 + 156) = v73;
    *(a1 + 160) = v77;
    v78 = &v62[v75 & 0x7FFFFFF];
    v79 = v78[1];
    if (v73 >= 0x40000001)
    {
      v82 = v73;
    }

    else
    {
      v80 = *(a1 + 168);
      do
      {
        v77 *= 2;
        *(a1 + 168) = --v80;
        if (!v80)
        {
          v83 = *(a1 + 144);
          *(a1 + 144) = v83 + 1;
          v84 = *(a1 + 128);
          if (v83 + 1 >= v84)
          {
            v85 = 65280;
          }

          else
          {
            v85 = *(*(a1 + 136) + v83 + 1) << 8;
          }

          v86 = v83 + 2;
          *(a1 + 144) = v86;
          if (v86 < v84)
          {
            v81 = *(*(a1 + 136) + v86);
          }

          else
          {
            v81 = 255;
          }

          v77 |= v85 | v81;
          v80 = 16;
          *(a1 + 168) = 16;
        }

        v82 = 2 * v73;
        v44 = v73 >= 0x20000001;
        v73 *= 2;
      }

      while (!v44);
    }

    v87 = 32 * v75;
    v88 = (HIWORD(v82) * v79) & 0xFFFF0000;
    v89 = (v79 >> 7) & 0x1FE;
    v90 = v82 - v88;
    if (v77 >= v88)
    {
      ++v89;
    }

    v78[1] = *(v26 + 2 * v89) + v79;
    if (v77 < v88)
    {
      v91 = v88;
    }

    else
    {
      v91 = v90;
    }

    if (v77 < v88)
    {
      v92 = 0;
    }

    else
    {
      v92 = v88;
    }

    v93 = v77 - v92;
    *(a1 + 156) = v91;
    *(a1 + 160) = v93;
    v94 = v87 | (16 * (v77 >= v88));
    v95 = &v62[v94 >> 4];
    v96 = v95[3];
    if (v91 >= 0x40000001)
    {
      v99 = v91;
    }

    else
    {
      v97 = *(a1 + 168);
      do
      {
        v93 *= 2;
        *(a1 + 168) = --v97;
        if (!v97)
        {
          v100 = *(a1 + 144);
          *(a1 + 144) = v100 + 1;
          v101 = *(a1 + 128);
          if (v100 + 1 >= v101)
          {
            v102 = 65280;
          }

          else
          {
            v102 = *(*(a1 + 136) + v100 + 1) << 8;
          }

          v103 = v100 + 2;
          *(a1 + 144) = v103;
          if (v103 < v101)
          {
            v98 = *(*(a1 + 136) + v103);
          }

          else
          {
            v98 = 255;
          }

          v93 |= v102 | v98;
          v97 = 16;
          *(a1 + 168) = 16;
        }

        v99 = 2 * v91;
        v44 = v91 >= 0x20000001;
        v91 *= 2;
      }

      while (!v44);
    }

    v104 = (HIWORD(v99) * v96) & 0xFFFF0000;
    v105 = (v96 >> 7) & 0x1FE;
    v106 = v99 - v104;
    v107 = v93 >= v104;
    if (v93 >= v104)
    {
      ++v105;
    }

    v95[3] = *(v26 + 2 * v105) + v96;
    if (v93 < v104)
    {
      v108 = v104;
    }

    else
    {
      v108 = v106;
    }

    if (v93 < v104)
    {
      v109 = 0;
    }

    else
    {
      v109 = v104;
    }

    v110 = v93 - v109;
    *(a1 + 156) = v108;
    *(a1 + 160) = v110;
    v111 = v94 | (8 * v107);
    v112 = &v62[v111 >> 3];
    v113 = v112[7];
    if (v108 >= 0x40000001)
    {
      v116 = v108;
    }

    else
    {
      v114 = *(a1 + 168);
      do
      {
        v110 *= 2;
        *(a1 + 168) = --v114;
        if (!v114)
        {
          v117 = *(a1 + 144);
          *(a1 + 144) = v117 + 1;
          v118 = *(a1 + 128);
          if (v117 + 1 >= v118)
          {
            v119 = 65280;
          }

          else
          {
            v119 = *(*(a1 + 136) + v117 + 1) << 8;
          }

          v120 = v117 + 2;
          *(a1 + 144) = v120;
          if (v120 < v118)
          {
            v115 = *(*(a1 + 136) + v120);
          }

          else
          {
            v115 = 255;
          }

          v110 |= v119 | v115;
          v114 = 16;
          *(a1 + 168) = 16;
        }

        v116 = 2 * v108;
        v44 = v108 >= 0x20000001;
        v108 *= 2;
      }

      while (!v44);
    }

    v121 = (HIWORD(v116) * v113) & 0xFFFF0000;
    v122 = (v113 >> 7) & 0x1FE;
    v123 = v116 - v121;
    v124 = v110 >= v121;
    if (v110 >= v121)
    {
      ++v122;
    }

    v112[7] = *(v26 + 2 * v122) + v113;
    if (v110 < v121)
    {
      v125 = v121;
    }

    else
    {
      v125 = v123;
    }

    if (v110 < v121)
    {
      v126 = 0;
    }

    else
    {
      v126 = v121;
    }

    v127 = v110 - v126;
    *(a1 + 156) = v125;
    *(a1 + 160) = v127;
    v128 = v111 | (4 * v124);
    v129 = &v62[v128 >> 2];
    v130 = v129[15];
    if (v125 >= 0x40000001)
    {
      v133 = v125;
    }

    else
    {
      v131 = *(a1 + 168);
      do
      {
        v127 *= 2;
        *(a1 + 168) = --v131;
        if (!v131)
        {
          v134 = *(a1 + 144);
          *(a1 + 144) = v134 + 1;
          v135 = *(a1 + 128);
          if (v134 + 1 >= v135)
          {
            v136 = 65280;
          }

          else
          {
            v136 = *(*(a1 + 136) + v134 + 1) << 8;
          }

          v137 = v134 + 2;
          *(a1 + 144) = v137;
          if (v137 < v135)
          {
            v132 = *(*(a1 + 136) + v137);
          }

          else
          {
            v132 = 255;
          }

          v127 |= v136 | v132;
          v131 = 16;
          *(a1 + 168) = 16;
        }

        v133 = 2 * v125;
        v44 = v125 >= 0x20000001;
        v125 *= 2;
      }

      while (!v44);
    }

    v138 = (HIWORD(v133) * v130) & 0xFFFF0000;
    v139 = (v130 >> 7) & 0x1FE;
    v140 = v133 - v138;
    if (v127 >= v138)
    {
      ++v139;
    }

    v141 = v127 >= v138;
    v129[15] = *(v26 + 2 * v139) + v130;
    if (v127 < v138)
    {
      v142 = v138;
    }

    else
    {
      v142 = v140;
    }

    if (v127 < v138)
    {
      v143 = 0;
    }

    else
    {
      v143 = v138;
    }

    v144 = v127 - v143;
    *(a1 + 156) = v142;
    *(a1 + 160) = v144;
    v145 = v128 | (2 * v141);
    v146 = v62 + v145;
    v147 = *(v146 + 31);
    if (v142 >= 0x40000001)
    {
      v150 = v142;
    }

    else
    {
      v148 = *(a1 + 168);
      do
      {
        v144 *= 2;
        *(a1 + 168) = --v148;
        if (!v148)
        {
          v151 = *(a1 + 144);
          *(a1 + 144) = v151 + 1;
          v152 = *(a1 + 128);
          if (v151 + 1 >= v152)
          {
            v153 = 65280;
          }

          else
          {
            v153 = *(*(a1 + 136) + v151 + 1) << 8;
          }

          v154 = v151 + 2;
          *(a1 + 144) = v154;
          if (v154 < v152)
          {
            v149 = *(*(a1 + 136) + v154);
          }

          else
          {
            v149 = 255;
          }

          v144 |= v153 | v149;
          v148 = 16;
          *(a1 + 168) = 16;
        }

        v150 = 2 * v142;
        v44 = v142 >= 0x20000001;
        v142 *= 2;
      }

      while (!v44);
    }

    v155 = (HIWORD(v150) * v147) & 0xFFFF0000;
    v156 = (v147 >> 7) & 0x1FE;
    v157 = v150 - v155;
    v158 = v144 >= v155;
    if (v144 >= v155)
    {
      ++v156;
    }

    *(v146 + 31) = *(v26 + 2 * v156) + v147;
    if (v144 < v155)
    {
      v159 = v155;
    }

    else
    {
      v159 = v157;
    }

    if (v144 < v155)
    {
      v155 = 0;
    }

    if (v158)
    {
      v160 = v145 + 1;
    }

    else
    {
      v160 = v145;
    }

    *(a1 + 156) = v159;
    *(a1 + 160) = v144 - v155;
    if (v160 == 63)
    {
      v161 = a5[12];
      v160 = gcl::ArithmeticDecoder::decodeExpGolomb((a1 + 128), *(v161 + 4 * v25), (a5[9] + 2 * v25)) + 63;
      v163 = *(v161 + 4 * v25);
      v164 = v160 >> v163;
      v27 = *a5;
      if (v163 && !v164)
      {
        v29 = -1;
LABEL_28:
        *(v161 + 4 * v25) = v163 + v29;
        goto LABEL_29;
      }

      if (v164 >= 2)
      {
        v29 = 1;
        goto LABEL_28;
      }
    }

LABEL_29:
    if (v43 >= v57)
    {
      v30 = v160 + 1;
    }

    else
    {
      v30 = ~v160;
    }

    goto LABEL_32;
  }

  v186 = a3;
  if (!a4)
  {
    if (a3 < 1)
    {
      return result;
    }

    v9 = 0;
    v10 = *(a1 + 104);
    do
    {
      v12 = *(v10 + 4 * v9);
      if (v12 < 1)
      {
        v11 = 0;
      }

      else
      {
        v13 = 0;
        v11 = 0;
        v15 = *(a1 + 156);
        v14 = *(a1 + 160);
        do
        {
          if (v15 >= 0x40000001)
          {
            v16 = v15;
          }

          else
          {
            v19 = *(a1 + 168);
            do
            {
              v14 *= 2;
              *(a1 + 168) = --v19;
              if (!v19)
              {
                v21 = *(a1 + 144);
                *(a1 + 144) = v21 + 1;
                v22 = *(a1 + 128);
                if (v21 + 1 >= v22)
                {
                  v23 = 65280;
                }

                else
                {
                  v23 = *(*(a1 + 136) + v21 + 1) << 8;
                }

                v24 = v21 + 2;
                *(a1 + 144) = v24;
                if (v24 < v22)
                {
                  v20 = *(*(a1 + 136) + v24);
                }

                else
                {
                  v20 = 255;
                }

                v14 |= v23 | v20;
                v19 = 16;
                *(a1 + 168) = 16;
              }

              v16 = 2 * v15;
              v44 = v15 >= 0x20000001;
              v15 *= 2;
            }

            while (!v44);
          }

          v17 = (v16 >> 1) & 0x7FFF0000;
          v15 = v16 - v17;
          v18 = v14 >= v17;
          if (v14 < v17)
          {
            v15 = v17;
            v17 = 0;
          }

          v14 -= v17;
          *(a1 + 156) = v15;
          *(a1 + 160) = v14;
          v11 += v18 << v13++;
        }

        while (v13 != v12);
      }

      a6->i32[v9++] = v11;
    }

    while (v9 != v186);
  }

LABEL_211:
  if (v186 >= 1)
  {
    if (v186 <= 7 || (a2 + 4 * v186) > a6 && (a6 + 4 * v186) > a2)
    {
      v175 = 0;
LABEL_216:
      v176 = v186 - v175;
      v177 = v175;
      v178 = &a6->i32[v175];
      v179 = &a2->i32[v177];
      do
      {
        v180 = *v179++;
        *v178++ += v180;
        --v176;
      }

      while (v176);
      return result;
    }

    v175 = v186 & 0x7FFFFFF8;
    v181 = a6 + 1;
    v182 = a2 + 1;
    v183 = v175;
    do
    {
      result = vaddq_s32(v181[-1], v182[-1]);
      v184 = vaddq_s32(*v181, *v182);
      v181[-1] = result;
      *v181 = v184;
      v181 += 2;
      v182 += 2;
      v183 -= 8;
    }

    while (v183);
    if (v175 != v186)
    {
      goto LABEL_216;
    }
  }

  return result;
}

void mgcl::iarray::Decoder::~Decoder(mgcl::iarray::Decoder *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = v2[13];
      if (v3)
      {
        v2[14] = v3;
        operator delete(v3);
      }

      v4 = v2[10];
      if (v4)
      {
        v2[11] = v4;
        operator delete(v4);
      }

      MEMORY[0x18CFD1E40](v2, 0x1070C40ADA6D0DELL);
    }

    MEMORY[0x18CFD1E40](v1, 0x20C4093837F09);
  }
}

uint64_t mgcl::ints::IntDecompressor<unsigned long long>::decompress(char **a1, unsigned __int8 *a2, uint64_t a3, char a4, char a5, unint64_t a6, uint64x2_t *a7)
{
  v219 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  v11 = 8 * a6;
  bzero(a7, 8 * a6);
  v12 = *a2;
  if ((v12 - 66) < 0xFFFFFFBF)
  {
    return 3;
  }

  v218 = 0;
  memset(__dst, 0, sizeof(__dst));
  v202 = a2 + 1;
  memcpy(__dst, a2 + 1, v12);
  v15 = 0;
  v16 = v12 + 1;
  v191 = &a7->i8[v11];
  v195 = a2 + 2;
  v200 = v11;
  v201 = 8 * a3 - 24;
  v192 = 4 * a6;
  v193 = a6 & 0xFFFFFFFFFFFFFFFCLL;
  v17.i64[0] = 0xFFFFFF0DFFFFFF0CLL;
  v205 = a2;
  v203 = a1;
  v199 = v12;
  while (1)
  {
    v204 = v15;
    v18 = *(__dst + v15);
    v19 = a2[v16];
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = &a2[v16 + 1];
    if (!*(__dst + v15))
    {
      break;
    }

    v24 = v201 - 8 * v16;
    do
    {
      v25 = v23[v21];
      v26 = v24;
      v22 |= (v23[v21] & 0x7F) << v20;
      v27 = v21 + 1;
      if (v21 > 8)
      {
        break;
      }

      v20 += 7;
      v24 -= 8;
      ++v21;
    }

    while (v25 < 0);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v16 + v27;
    v32 = &v202[v16 + v27];
    do
    {
      v33 = v32[v29];
      v30 |= (v32[v29] & 0x7F) << v28;
      v34 = v29 + 1;
      if (v29 > 8)
      {
        break;
      }

      v28 += 7;
      v26 -= 8;
      ++v29;
    }

    while (v33 < 0);
    v35 = v31 + v34;
    v16 = v31 + v34 + 1;
    result = 3;
    if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          return result;
        }

        v36 = a1[1];
        v37 = v36 - *a1;
        v38 = v200 - v37;
        if (v200 <= v37)
        {
          if (v200 < v37)
          {
            a1[1] = &(*a1)[v200];
          }
        }

        else
        {
          if (a1[2] - v36 < v38)
          {
            if ((a6 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_171;
          }

          v91 = &v36[v38];
          bzero(v36, v38);
          a1[1] = v91;
        }

        v92 = *a1;
        result = mgcl::muid::decompress(&v205[v16], v30, 0, 0, *a1, 8, a6);
        if (result)
        {
          return result;
        }

        if (v18 > 0x3F)
        {
          v93 = 0;
          if (a6 < 4)
          {
            goto LABEL_97;
          }

          if ((a7 - v92) < 0x20)
          {
            goto LABEL_97;
          }

          v17 = vdupq_n_s64(v22);
          v94 = v92 + 1;
          i8 = a7[1].i8;
          v96 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v14 = vaddq_s64(v94[-1], v17);
            v97 = vaddq_s64(*v94, v17);
            *(i8 - 1) = v14;
            *i8 = v97;
            i8 += 32;
            v94 += 2;
            v96 -= 4;
          }

          while (v96);
          v93 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if (v193 != a6)
          {
LABEL_97:
            v98 = a6 - v93;
            v99 = v93;
            v100 = &a7->i8[8 * v93];
            v101 = &v92->i64[v99];
            do
            {
              v102 = *v101++;
              *v100 = v102 + v22;
              v100 += 8;
              --v98;
            }

            while (v98);
          }

          goto LABEL_106;
        }

        v103 = ~(-1 << v18);
        if (a6 <= 3 || &v92->i8[v200] > a7 && v92 < v191)
        {
          v104 = 0;
          goto LABEL_104;
        }

        v17 = vdupq_n_s64(v22);
        v14 = vdupq_n_s64(v18);
        v124 = v92 + 1;
        v125 = a7 + 1;
        v126 = vdupq_n_s64(v103);
        v127 = a6 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v128 = vorrq_s8(vshlq_u64(*v125, v14), vandq_s8(vaddq_s64(*v124, v17), v126));
          v125[-1] = vorrq_s8(vshlq_u64(v125[-1], v14), vandq_s8(vaddq_s64(v124[-1], v17), v126));
          *v125 = v128;
          v125 += 2;
          v124 += 2;
          v127 -= 4;
        }

        while (v127);
        v104 = a6 & 0xFFFFFFFFFFFFFFFCLL;
        if (v193 != a6)
        {
LABEL_104:
          v105 = a6 - v104;
          v106 = v104;
          v107 = &a7->i8[8 * v104];
          v108 = &v92->i64[v106];
          do
          {
            v109 = *v108++;
            *v107 = (*v107 << v18) | (v109 + v22) & v103;
            v107 += 8;
            --v105;
          }

          while (v105);
        }

LABEL_106:
        v16 += v30;
        goto LABEL_5;
      }

      if (!a1[3])
      {
        operator new();
      }

      *&v208[6] = 0x10000;
      v207 = 0;
      BYTE4(v207) = a4;
      BYTE5(v207) = a5;
      *&v208[4] = a6;
      v208[13] = v18 == 1;
      v54 = (v30 - 2);
      *v208 = v30 - 2;
      if (v30 <= 1)
      {
        return 3;
      }

      v55 = v205[v16];
      v56 = v195[v35];
      v57 = v35 + 3;
      v206 = 0;
      v59 = *v203;
      v58 = v203[1];
      v60 = v58 - *v203;
      v194 = v54;
      if (v18 == 1)
      {
        v61 = a6 - v60;
        if (a6 <= v60)
        {
          v62 = v203;
          if (a6 < v60)
          {
            v203[1] = &v59[a6];
          }
        }

        else
        {
          v62 = v203;
          v63 = v203[2];
          if (v63 - v58 < v61)
          {
            if ((a6 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_171;
          }

          v129 = &v58[v61];
          v130 = a6 - v60;
          v131 = v56;
          v132 = v55;
          bzero(v58, v130);
          v55 = v132;
          v56 = v131;
          v203[1] = v129;
        }

        v133 = *v62;
        result = mgcl::iarray::Decoder::decompress(**v62[3], &v205[v57], &v207, v55, v56, &v206, *v62, *v17.i64, v14);
        if (result)
        {
          return result;
        }

        if (a6 < 4)
        {
          v134 = 0;
          a1 = v203;
          v135 = v194;
          v136 = v57;
          goto LABEL_166;
        }

        a1 = v203;
        v135 = v194;
        v136 = v57;
        if (a6 >= 0x10)
        {
          v17 = vdupq_n_s64(v22);
          v163 = a7;
          v164 = v133;
          v165 = a6 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v166 = *v164++;
            v167 = vqtbl1q_s8(v166, xmmword_187FBF340);
            v168 = vqtbl1q_s8(v166, xmmword_187FBF330);
            v169 = vqtbl1q_s8(v166, xmmword_187FBF320);
            v170 = vqtbl1q_s8(v166, xmmword_187FBF310);
            v171 = vaddw_u32(v17, *v167.i8);
            v172 = vaddw_u32(v17, *v170.i8);
            v174 = *v163;
            v173 = *(v163 + 1);
            v175 = *(v163 + 4);
            v176 = *(v163 + 5);
            v14 = vsliq_n_s64(vaddw_high_u32(v17, v170), *(v163 + 7), 1uLL);
            v177 = vsliq_n_s64(v172, *(v163 + 6), 1uLL);
            v178 = vsliq_n_s64(vaddw_high_u32(v17, v167), *(v163 + 3), 1uLL);
            *(v163 + 2) = vsliq_n_s64(v171, *(v163 + 2), 1uLL);
            *(v163 + 3) = v178;
            *v163 = vsliq_n_s64(vaddw_u32(v17, *v168.i8), v174, 1uLL);
            *(v163 + 1) = vsliq_n_s64(vaddw_high_u32(v17, v168), v173, 1uLL);
            *(v163 + 4) = vsliq_n_s64(vaddw_u32(v17, *v169.i8), v175, 1uLL);
            *(v163 + 5) = vsliq_n_s64(vaddw_high_u32(v17, v169), v176, 1uLL);
            *(v163 + 6) = v177;
            *(v163 + 7) = v14;
            v163 += 128;
            v165 -= 16;
          }

          while (v165);
          if ((a6 & 0xFFFFFFFFFFFFFFF0) != a6)
          {
            v134 = a6 & 0xFFFFFFFFFFFFFFF0;
            v137 = a6 & 0xFFFFFFFFFFFFFFF0;
            if ((a6 & 0xC) == 0)
            {
              goto LABEL_166;
            }

            goto LABEL_163;
          }
        }

        else
        {
          v137 = 0;
LABEL_163:
          v17 = vdupq_n_s64(v22);
          v179 = v137 - (a6 & 0xFFFFFFFFFFFFFFFCLL);
          v180 = (v133 + v137);
          v181 = (a7 + 8 * v137);
          do
          {
            v182 = *v180++;
            v14.n128_u32[0] = v182;
            v183 = vmovl_u16(*&vmovl_u8(v14.n128_u64[0]));
            v184 = vaddw_high_u32(v17, v183);
            v14 = vsliq_n_s64(vaddw_u32(v17, *v183.i8), *v181, 1uLL);
            v185 = vsliq_n_s64(v184, v181[1], 1uLL);
            *v181 = v14;
            v181[1] = v185;
            v181 += 2;
            v179 += 4;
          }

          while (v179);
          v134 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if (v193 != a6)
          {
LABEL_166:
            v186 = a6 - v134;
            v187 = (v133 + v134);
            v188 = &a7->i8[8 * v134];
            do
            {
              v189 = *v187++;
              *v188 = (v22 + v189) & 1 | (2 * *v188);
              v188 += 8;
              --v186;
            }

            while (v186);
          }
        }

LABEL_168:
        v16 = &v135[v136];
        goto LABEL_5;
      }

      v89 = v192 - v60;
      if (v192 <= v60)
      {
        v90 = v203;
        if (v192 < v60)
        {
          v110 = &v59[v192];
          goto LABEL_137;
        }
      }

      else
      {
        v90 = v203;
        if (v203[2] - v58 < v89)
        {
          if ((a6 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_171;
        }

        v190 = &v58[v89];
        v138 = v192 - v60;
        v139 = v56;
        v140 = v55;
        bzero(v58, v138);
        v55 = v140;
        v56 = v139;
        v110 = v190;
LABEL_137:
        v90[1] = v110;
      }

      v141 = *v90;
      v142 = *v90[3];
      LODWORD(v209) = 0;
      BYTE4(v209) = a4;
      BYTE5(v209) = a5;
      HIWORD(v209) = 0;
      v211 = 0;
      v212 = v18 == 1;
      v213 = 0;
      if (v55 >= 4)
      {
        v143 = 1;
      }

      else
      {
        v143 = v55;
      }

      v214 = v143;
      if (v56 == 2)
      {
        v144 = 4;
      }

      else
      {
        v144 = 1;
      }

      if (!v56)
      {
        v144 = 0;
      }

      v215 = v144;
      *(&v210 + 1) = *&v208[8];
      *&v210 = *v208;
      v145 = *v142;
      v216[0] = &v205[v57];
      v216[1] = *v208;
      result = gcl::polyline::DecoderImpl::decompressAttributes(v145, v216, v141, &v209);
      if (result)
      {
        return result;
      }

      v146 = ~(-1 << v18);
      if (a6 >= 4)
      {
        a1 = v203;
        v135 = v194;
        v136 = v57;
        if (&v141->i8[v192] <= a7 || v141 >= v191)
        {
          v17 = vdupq_n_s64(v22);
          v14 = vdupq_n_s64(v18);
          v148 = vdupq_n_s64(v146);
          v149 = vdup_n_s32(v18 > 0x3F);
          v150 = &v141->u64[1];
          v151.i64[0] = v149.u32[0];
          v151.i64[1] = v149.u32[1];
          v152 = vcltzq_s64(vshlq_n_s64(v151, 0x3FuLL));
          v153 = a7 + 1;
          v154 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v155 = vaddw_s32(v17, v150[-1]);
            v156 = vaddw_s32(v17, *v150);
            v157 = vbslq_s8(v152, v156, vorrq_s8(vshlq_u64(*v153, v14), vandq_s8(v156, v148)));
            v153[-1] = vbslq_s8(v152, v155, vorrq_s8(vshlq_u64(v153[-1], v14), vandq_s8(v155, v148)));
            *v153 = v157;
            v153 += 2;
            v150 += 2;
            v154 -= 4;
          }

          while (v154);
          v147 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if (v193 == a6)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v147 = 0;
        }
      }

      else
      {
        v147 = 0;
        a1 = v203;
        v135 = v194;
        v136 = v57;
      }

      v158 = a6 - v147;
      v159 = &a7->i8[8 * v147];
      v160 = &v141->i32[v147];
      do
      {
        v161 = *v160++;
        v162 = v22 + v161;
        if (v18 <= 0x3F)
        {
          v162 = (*v159 << v18) | v162 & v146;
        }

        *v159 = v162;
        v159 += 8;
        --v158;
      }

      while (v158);
      goto LABEL_168;
    }

    if (v19 != 3)
    {
      if (v19 == 4)
      {
        operator new();
      }

      return result;
    }

    v64 = *a1;
    if (a1[1] != *a1)
    {
      a1[1] = v64;
    }

    if (a1[2] - v64 < v200)
    {
      if ((a6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_171:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v65 = 0;
    do
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = &v205[v16];
      do
      {
        v70 = v69[v67];
        v68 |= (v69[v67] & 0x7F) << v66;
        v71 = v67 + 1;
        if (v67 > 8)
        {
          break;
        }

        v66 += 7;
        ++v67;
      }

      while (v70 < 0);
      v72 = v68 + v22;
      if (v18 <= 0x3F)
      {
        v72 = (a7->i64[v65] << v18) | v72 & ~(-1 << v18);
      }

      v16 += v71;
      a7->i64[v65++] = v72;
    }

    while (v65 != a6);
LABEL_5:
    a2 = v205;
    v15 = v204 + 1;
    if (v204 + 1 == v199)
    {
      return 0;
    }
  }

  v39 = v201 - 8 * v16;
  do
  {
    v40 = v23[v21];
    v41 = v39;
    v22 |= (v23[v21] & 0x7F) << v20;
    v42 = v21 + 1;
    if (v21 > 8)
    {
      break;
    }

    v20 += 7;
    v39 -= 8;
    ++v21;
  }

  while (v40 < 0);
  v43 = 0;
  v44 = 0;
  v30 = 0;
  v45 = v16 + v42;
  v46 = &v202[v16 + v42];
  do
  {
    v47 = v46[v44];
    v30 |= (v46[v44] & 0x7F) << v43;
    v48 = v44 + 1;
    if (v44 > 8)
    {
      break;
    }

    v43 += 7;
    v41 -= 8;
    ++v44;
  }

  while (v47 < 0);
  v49 = v45 + v48;
  v16 = v45 + v48 + 1;
  result = 3;
  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      if (v19 != 2)
      {
        return result;
      }

      v50 = v203[1];
      v51 = v50 - *v203;
      v52 = v200 >= v51;
      v53 = v200 - v51;
      if (v200 <= v51)
      {
        a1 = v203;
        if (!v52)
        {
          v203[1] = &(*v203)[v200];
        }
      }

      else
      {
        if (v203[2] - v50 < v53)
        {
          if ((a6 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_172;
        }

        v111 = &v50[v53];
        bzero(v50, v200 - v51);
        v203[1] = v111;
        a1 = v203;
      }

      v112 = *a1;
      result = mgcl::muid::decompress(&v205[v16], v30, 0, 0, *a1, 8, a6);
      if (result)
      {
        return result;
      }

      v113 = a7;
      v114 = a6;
      do
      {
        v115 = *v112;
        v112 += 8;
        if (v115 != -v22 && *v113)
        {
          *v113 = -*v113;
        }

        v113 += 8;
        --v114;
      }

      while (v114);
      goto LABEL_106;
    }

    if (!v203[3])
    {
      operator new();
    }

    *(&v210 + 6) = 0x100000000010000;
    v209 = 0;
    BYTE4(v209) = a4;
    BYTE5(v209) = a5;
    DWORD1(v210) = a6;
    v73 = (v30 - 2);
    LODWORD(v210) = v30 - 2;
    if (v30 <= 1)
    {
      return 3;
    }

    v74 = v205[v16];
    v75 = v195[v49];
    v207 = 0;
    v76 = v203[1];
    v77 = v76 - *v203;
    v78 = a6 - v77;
    if (a6 <= v77)
    {
      if (a6 < v77)
      {
        v203[1] = &(*v203)[a6];
      }
    }

    else
    {
      v79 = v203[2];
      if (v79 - v76 < v78)
      {
        if ((a6 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_172;
      }

      v116 = &v76[v78];
      v117 = v78;
      v118 = v75;
      bzero(v76, v117);
      v75 = v118;
      v203[1] = v116;
    }

    v119 = v49 + 3;
    v120 = *v203;
    result = mgcl::iarray::Decoder::decompress(**v203[3], &v205[v49 + 3], &v209, v74, v75, &v207, *v203, *v17.i64, v14);
    if (result)
    {
      return result;
    }

    v121 = a7;
    v122 = a6;
    a1 = v203;
    do
    {
      v123 = *v120++;
      if (v22 + v123 && *v121)
      {
        *v121 = -*v121;
      }

      v121 += 8;
      --v122;
    }

    while (v122);
    v16 = &v73[v119];
    goto LABEL_5;
  }

  if (v19 == 3)
  {
    a1 = v203;
    v80 = *v203;
    if (v203[1] != *v203)
    {
      v203[1] = v80;
    }

    if (v203[2] - v80 < v200)
    {
      if ((a6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_172:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v81 = 0;
    do
    {
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = &v205[v16];
      do
      {
        v86 = v85[v83];
        v84 |= (v85[v83] & 0x7F) << v82;
        v87 = v83 + 1;
        if (v83 > 8)
        {
          break;
        }

        v82 += 7;
        ++v83;
      }

      while (v86 < 0);
      if (v84 != -v22)
      {
        v88 = a7->i64[v81];
        if (v88)
        {
          a7->i64[v81] = -v88;
        }
      }

      v16 += v87;
      ++v81;
    }

    while (v81 != a6);
    goto LABEL_5;
  }

  if (v19 == 4)
  {
    operator new();
  }

  return result;
}

void sub_1866BF2A4(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v2, 0x20C4093837F09);
  MEMORY[0x18CFD1E40](v1, 0x20C4093837F09);
  _Unwind_Resume(a1);
}

uint64_t geo::codec::_readAnnotationLabels(geo::codec::zone_mallocator *a1, uint64_t *a2)
{
  v271 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while (*(*a1 + 16 * v3) != 160)
    {
      v3 = ++v4;
      if (v2 <= v4)
      {
        goto LABEL_23;
      }
    }

    v6 = geo::codec::chapterAt(a1, v4, 160, (*a2 + 1920));
    if (v6)
    {
      v7 = v6;
      v260 = 0;
      if (geo::codec::chapterReadVarUint32(v6, &v260 + 1))
      {
        if (geo::codec::chapterReadVarUint32(v7, &v260))
        {
          v259 = 0;
          if (geo::codec::chapterReadVarUint32(v7, &v259))
          {
            v258 = 0;
            if (geo::codec::chapterReadVarUint32(v7, &v258))
            {
              v257 = 0;
              v8 = geo::codec::chapterReadVarUint32(v7, &v257);
              if (v8)
              {
                v9 = v257;
                v269 = 0;
                v270 = 0;
                v268 = 0;
                if (v257)
                {
                  v10 = geo::codec::zone_mallocator::instance(v8);
                  v11 = pthread_rwlock_rdlock((v10 + 32));
                  if (v11)
                  {
                    geo::read_write_lock::logFailure(v11, "read lock", v12);
                  }

                  v13 = malloc_type_zone_malloc(*v10, 12 * v9, 0x10000403E1C8BA9uLL);
                  atomic_fetch_add((v10 + 24), 1u);
                  v14 = pthread_rwlock_unlock((v10 + 32));
                  if (v14)
                  {
                    geo::read_write_lock::logFailure(v14, "unlock", v15);
                  }

                  v268 = v13;
                  v270 = &v13[3 * v9];
                  v16 = 12 * ((12 * v9 - 12) / 0xCuLL) + 12;
                  bzero(v13, v16);
                  v17 = (v13 + v16);
                  v269 = v13 + v16;
                  if (0xAAAAAAAAAAAAAAABLL * (v16 >> 2) != v257)
                  {
                    v32 = 11452;
                    goto LABEL_45;
                  }

                  v18 = v13 == v17;
                  v19 = 0;
                  if (v13 != v17)
                  {
                    v20 = v13;
                    while (1)
                    {
                      *v20 = v19;
                      v21 = v20 + 1;
                      if (!geo::codec::chapterReadVarUint32(v7, v21))
                      {
                        break;
                      }

                      v22 = *v21;
                      v20 = v21 + 2;
                      v19 += v22;
                      if (v20 == v17)
                      {
                        goto LABEL_35;
                      }
                    }

                    v32 = 11456;
                    goto LABEL_45;
                  }
                }

                else
                {
                  v17 = 0;
                  v13 = 0;
                  v19 = 0;
                  v18 = 1;
                }

LABEL_35:
                v256 = 0;
                if ((geo::codec::chapterReadVarUint32(v7, &v256) & 1) == 0)
                {
                  v33 = *MEMORY[0x1E69E9848];
                  v32 = 11461;
LABEL_46:
                  fprintf(v33, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v32);
                  std::vector<geo::codec::_readAnnotationLabels(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::ValueArraySpan,geo::allocator_adapter<geo::codec::_readAnnotationLabels(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::ValueArraySpan,geo::codec::zone_mallocator>>::__destroy_vector::operator()[abi:ne200100](&v268);
                  goto LABEL_31;
                }

                v255 = 0;
                if (geo::codec::chapterReadVarUint32(v7, &v255))
                {
                  if (v255)
                  {
                    v245 = v255;
                    *v253 = 0u;
                    v254 = 0u;
                    *v251 = 0u;
                    v252 = 0u;
                    *v249 = 0u;
                    v250 = 0u;
                    *__p = 0u;
                    v248 = 0u;
                    v31 = v259;
                    if (v259)
                    {
                      operator new();
                    }

                    v34 = v260;
                    v35 = BYTE4(v260);
                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v36 = v266, v37 = v7[6], v37 + v266 > v7[7]) || (v38 = v7[5], v7[6] = v37 + v266, mgcl::ints::IntDecompressor<unsigned short>::decompress(v251, (v38 + v37), v36, v35, v34, 0, 0)))
                    {
                      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11474);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v60 = v266, v61 = v7[6], v61 + v266 > v7[7]) || (v62 = v7[5], v7[6] = v61 + v266, mgcl::ints::IntDecompressor<unsigned int>::decompress(v249, (v62 + v61), v60, v35, v34, 0, 0)))
                    {
                      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11478);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v63 = v266, v64 = v7[6], v64 + v266 > v7[7]) || (v65 = v7[5], v7[6] = v64 + v266, mgcl::ints::IntDecompressor<unsigned char>::decompress(v253, (v65 + v64), v63, v35, v34, 0, 0)))
                    {
                      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11482);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    if (v258)
                    {
                      operator new();
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v66 = v266, v67 = v7[6], v67 + v266 > v7[7]) || (v68 = v7[5], v7[6] = v67 + v266, mgcl::ints::IntDecompressor<unsigned char>::decompress(v253, (v68 + v67), v66, v35, v34, 0, 0)))
                    {
                      v69 = *MEMORY[0x1E69E9848];
                      v70 = 11486;
LABEL_116:
                      fprintf(v69, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v70);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v71 = v266, v72 = v7[6], v72 + v266 > v7[7]) || (v73 = v7[5], v7[6] = v72 + v266, mgcl::ints::IntDecompressor<unsigned int>::decompress(v249, (v73 + v72), v71, v35, v34, 0, 0)))
                    {
                      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11490);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v74 = v266, v75 = v7[6], v75 + v266 > v7[7]) || (v76 = v7[5], v7[6] = v75 + v266, mgcl::ints::IntDecompressor<unsigned char>::decompress(v253, (v76 + v75), v74, v35, v34, 0, 0)))
                    {
                      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11494);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    if (v256)
                    {
                      operator new();
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v77 = v266, v78 = v7[6], v78 + v266 > v7[7]) || (v79 = v7[5], v7[6] = v78 + v266, mgcl::ints::IntDecompressor<unsigned char>::decompress(v253, (v79 + v78), v77, v35, v34, 0, 0)))
                    {
                      v69 = *MEMORY[0x1E69E9848];
                      v70 = 11498;
                      goto LABEL_116;
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v80 = v266, v81 = v7[6], v81 + v266 > v7[7]) || (v82 = v7[5], v7[6] = v81 + v266, mgcl::ints::IntDecompressor<unsigned int>::decompress(v249, (v82 + v81), v80, v35, v34, 0, 0)))
                    {
                      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11502);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    LODWORD(v266) = 0;
                    if (!geo::codec::chapterReadVarUint32(v7, &v266) || (v83 = v266, v84 = v7[6], v84 + v266 > v7[7]) || (v85 = v7[5], v7[6] = v84 + v266, v86 = mgcl::ints::IntDecompressor<unsigned short>::decompress(v251, (v85 + v84), v83, v35, v34, 0, 0), v86))
                    {
                      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11506);
                      v39 = 6;
                      goto LABEL_51;
                    }

                    if (v19)
                    {
                      v87 = geo::codec::zone_mallocator::instance(v86);
                      v244 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<long long>(v87, v19);
                      bzero(v244, 8 * v19);
                      v88 = &v244[8 * v19];
                    }

                    else
                    {
                      v88 = 0;
                      v244 = 0;
                    }

                    if (v19 == (v88 - v244) >> 3)
                    {
                      if (v18)
                      {
                        goto LABEL_150;
                      }

                      while (1)
                      {
                        v90 = v260;
                        v89 = BYTE4(v260);
                        v91 = *v13;
                        v92 = v13[1];
                        LODWORD(v266) = 0;
                        if (!geo::codec::chapterReadVarUint32(v7, &v266))
                        {
                          break;
                        }

                        v93 = v266;
                        v94 = v7[6];
                        if (v94 + v266 > v7[7])
                        {
                          break;
                        }

                        v95 = v7[5];
                        v7[6] = v94 + v266;
                        if (mgcl::ints::IntDecompressor<long long>::decompress(__p, (v95 + v94), v93, v89, v90, v92, &v244[8 * v91]))
                        {
                          break;
                        }

                        v13 += 3;
                        if (v13 == v17)
                        {
                          v31 = v259;
LABEL_150:
                          std::vector<unsigned int,geo::allocator_adapter<unsigned int,geo::codec::zone_mallocator>>::vector[abi:ne200100](&v266, v31);
                          if (v31 == v267 - v266)
                          {
                            v246 = 0;
                            SpaceForLabels = geo::codec::_makeSpaceForLabels(v31, &v246, a2);
                            if (SpaceForLabels)
                            {
                              if (!v31)
                              {
                                __key = 0;
                                v264 = 0;
                                v265 = 0;
                                goto LABEL_206;
                              }

                              v98 = 0;
                              v99 = *(*a2 + 864);
                              v242 = *(*a2 + 872) - v99;
                              v100 = v246;
                              if (v31 <= 1)
                              {
                                v101 = 1;
                              }

                              else
                              {
                                v101 = v31;
                              }

                              v240 = 4 * v101;
                              v102 = 24 * v246;
                              while (2)
                              {
                                v103 = *v98;
                                if (v242 <= v103)
                                {
                                  v149 = *MEMORY[0x1E69E9848];
                                  v150 = 11524;
                                }

                                else
                                {
                                  v104 = *a2;
                                  if (v100 < *(*a2 + 1064))
                                  {
                                    v105 = v104[132];
                                    v106 = v105 + v102;
                                    *v106 = &v103[v99];
                                    *(v106 + 16) = 0;
                                    v107 = v104[112];
                                    v108 = v104[113];
                                    __key = v103;
                                    v109 = bsearch(&__key, v107, v108, 0x18uLL, geo::codec::findLabelLanguageLocal);
                                    if (v109)
                                    {
                                      v110 = *(v109 + 2);
                                    }

                                    else
                                    {
                                      v110 = 0;
                                    }

                                    *(v105 + v102 + 8) = v110;
                                    *(v98++ + v266) = v100++;
                                    v102 += 24;
                                    if (v240 != v98)
                                    {
                                      continue;
                                    }

                                    v246 = v100;
                                    __key = 0;
                                    v264 = 0;
                                    v265 = 0;
                                    p_key = &__key;
                                    v262 = 0;
                                    v111 = geo::codec::zone_mallocator::instance(v109);
                                    v112 = pthread_rwlock_rdlock((v111 + 32));
                                    if (v112)
                                    {
                                      geo::read_write_lock::logFailure(v112, "read lock", v113);
                                    }

                                    v114 = malloc_type_zone_malloc(*v111, 40 * v31, 0x10200407B768E4FuLL);
                                    atomic_fetch_add((v111 + 24), 1u);
                                    v115 = pthread_rwlock_unlock((v111 + 32));
                                    if (v115)
                                    {
                                      geo::read_write_lock::logFailure(v115, "unlock", v116);
                                    }

                                    __key = v114;
                                    v265 = &v114[40 * v31];
                                    bzero(v114, 40 * ((40 * v31 - 40) / 0x28) + 40);
                                    v264 = &v114[40 * ((40 * v31 - 40) / 0x28) + 40];
                                    if (0xCCCCCCCCCCCCCCCDLL * ((v264 - __key) >> 3) != v259)
                                    {
                                      v177 = 11536;
                                      goto LABEL_284;
                                    }

                                    if (v259)
                                    {
                                      v117 = 0;
                                      v241 = 0;
                                      v243 = 0;
                                      v239 = 0;
                                      while (1)
                                      {
                                        v118 = &__key[40 * v117];
                                        *(v118 + 2) = *(2 * v117);
                                        *v118 = v266[v117];
                                        v119 = *(v118 + 1);
                                        v120 = *(v118 + 2);
                                        v121 = &v120[-v119];
                                        v122 = &v120[-v119] >> 3;
                                        v238 = *v117;
                                        v123 = v238 >= v122;
                                        v124 = v238 - v122;
                                        if (v124 == 0 || !v123)
                                        {
                                          break;
                                        }

                                        v125 = *(v118 + 3);
                                        v237 = 8 * v124;
                                        if (v124 <= (v125 - v120) >> 3)
                                        {
                                          bzero(v120, v237);
                                          v120 += v237;
LABEL_187:
                                          *(v118 + 2) = v120;
                                          goto LABEL_188;
                                        }

                                        v126 = v125 - v119;
                                        v127 = v126 >> 2;
                                        if (v126 >> 2 <= v238)
                                        {
                                          v127 = *v117;
                                        }

                                        if (v126 >= 0x7FFFFFFFFFFFFFF8)
                                        {
                                          v128 = 0x1FFFFFFFFFFFFFFFLL;
                                        }

                                        else
                                        {
                                          v128 = v127;
                                        }

                                        v129 = geo::codec::zone_mallocator::instance(SpaceForLabels);
                                        v130 = pthread_rwlock_rdlock((v129 + 32));
                                        if (v130)
                                        {
                                          geo::read_write_lock::logFailure(v130, "read lock", v131);
                                        }

                                        v132 = malloc_type_zone_malloc(*v129, 8 * v128, 0x1000040CE7E837CuLL);
                                        atomic_fetch_add((v129 + 24), 1u);
                                        v133 = pthread_rwlock_unlock((v129 + 32));
                                        if (v133)
                                        {
                                          geo::read_write_lock::logFailure(v133, "unlock", v134);
                                        }

                                        v135 = &v121[v132];
                                        v136 = v132 + 8 * v128;
                                        bzero(v135, v237);
                                        v120 = &v135[v237];
                                        v137 = *(v118 + 1);
                                        v138 = *(v118 + 2) - v137;
                                        v139 = &v135[-v138];
                                        memcpy(&v135[-v138], v137, v138);
                                        SpaceForLabels = *(v118 + 1);
                                        *(v118 + 1) = v139;
                                        *(v118 + 2) = &v135[v237];
                                        *(v118 + 3) = v136;
                                        if (SpaceForLabels)
                                        {
                                          std::allocator_traits<geo::allocator_adapter<geo::codec::_readAnnotationLabels(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::AnnotationTemplateValue,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](SpaceForLabels);
                                          v120 = *(v118 + 2);
                                        }

LABEL_188:
                                        v140 = *(v118 + 1);
                                        if (v238 != (v120 - v140) >> 3)
                                        {
                                          v177 = 11543;
                                          goto LABEL_284;
                                        }

                                        if (v140 != v120)
                                        {
                                          v141 = 0;
                                          v142 = v257;
                                          if (v243)
                                          {
                                            v143 = v243;
                                          }

                                          else
                                          {
                                            v143 = 0;
                                          }

                                          v144 = v243 - v143;
                                          while (1)
                                          {
                                            if (!(v144 + v141))
                                            {
                                              v177 = 11545;
                                              goto LABEL_284;
                                            }

                                            v140[1] = *(v243 + v141);
                                            *(v140 + 1) = *(4 * v241 + 4 * v141);
                                            v145 = *(v239 + v141);
                                            *v140 = v145;
                                            if (v142 <= v145)
                                            {
                                              break;
                                            }

                                            v140 += 8;
                                            ++v141;
                                            if (v140 == v120)
                                            {
                                              v239 += v141;
                                              v241 += v141;
                                              v243 += v141;
                                              goto LABEL_198;
                                            }
                                          }

                                          v177 = 11549;
LABEL_284:
                                          fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v177);
                                          v39 = 6;
                                          goto LABEL_285;
                                        }

LABEL_198:
                                        if (++v117 >= v259)
                                        {
                                          goto LABEL_206;
                                        }
                                      }

                                      if (v123)
                                      {
                                        goto LABEL_188;
                                      }

                                      v120 = (v119 + 8 * v238);
                                      goto LABEL_187;
                                    }

LABEL_206:
                                    v151 = *a2;
                                    v152 = v256;
                                    v153 = *(*a2 + 544);
                                    v154 = *(*a2 + 536);
                                    v155 = v153 - v154;
                                    v156 = (v153 - v154) >> 4;
                                    v157 = v256 >= v156;
                                    v158 = v256 - v156;
                                    if (v158 != 0 && v157)
                                    {
                                      v159 = v151[69];
                                      v160 = 16 * v158;
                                      if (v158 <= (v159 - v153) >> 4)
                                      {
                                        bzero(*(*a2 + 544), 16 * v158);
                                        v178 = v153 + v160;
LABEL_230:
                                        v151[68] = v178;
                                      }

                                      else
                                      {
                                        v161 = v159 - v154;
                                        if (v161 >> 3 > v256)
                                        {
                                          v152 = v161 >> 3;
                                        }

                                        if (v161 >= 0x7FFFFFFFFFFFFFF0)
                                        {
                                          v162 = 0xFFFFFFFFFFFFFFFLL;
                                        }

                                        else
                                        {
                                          v162 = v152;
                                        }

                                        v163 = geo::codec::zone_mallocator::instance(SpaceForLabels);
                                        v164 = pthread_rwlock_rdlock((v163 + 32));
                                        if (v164)
                                        {
                                          geo::read_write_lock::logFailure(v164, "read lock", v165);
                                        }

                                        v166 = malloc_type_zone_malloc(*v163, 16 * v162, 0x10000408B6DE1C6uLL);
                                        atomic_fetch_add((v163 + 24), 1u);
                                        v167 = pthread_rwlock_unlock((v163 + 32));
                                        if (v167)
                                        {
                                          geo::read_write_lock::logFailure(v167, "unlock", v168);
                                        }

                                        v169 = &v166[v155];
                                        v170 = &v166[16 * v162];
                                        bzero(&v166[v155], v160);
                                        v171 = &v166[v155 + v160];
                                        v172 = v151[67];
                                        v173 = v151[68] - v172;
                                        v174 = &v169[-v173];
                                        SpaceForLabels = memcpy(v174, v172, v173);
                                        v175 = v151[67];
                                        v151[67] = v174;
                                        v151[68] = v171;
                                        v151[69] = v170;
                                        if (v175)
                                        {
                                          v176 = geo::codec::zone_mallocator::instance(SpaceForLabels);
                                          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsAnnotation>(v176, v175);
                                        }
                                      }
                                    }

                                    else if (!v157)
                                    {
                                      v178 = v154 + 16 * v256;
                                      goto LABEL_230;
                                    }

                                    v179 = *a2;
                                    if (v256 != (*(*a2 + 544) - *(*a2 + 536)) >> 4)
                                    {
                                      v177 = 11554;
                                      goto LABEL_284;
                                    }

                                    v180 = *(v179 + 576);
                                    v181 = *(v179 + 568);
                                    v182 = v180 - v181;
                                    v183 = (v180 - v181) >> 4;
                                    v184 = v19 >= v183;
                                    v185 = v19 - v183;
                                    if (v185 != 0 && v184)
                                    {
                                      v186 = *(v179 + 584);
                                      v187 = 16 * v185;
                                      if (v185 <= (v186 - v180) >> 4)
                                      {
                                        bzero(*(v179 + 576), 16 * v185);
                                        v206 = v180 + v187;
LABEL_250:
                                        *(v179 + 576) = v206;
                                      }

                                      else
                                      {
                                        v188 = v186 - v181;
                                        v189 = v188 >> 3;
                                        if (v188 >> 3 <= v19)
                                        {
                                          v189 = v19;
                                        }

                                        if (v188 >= 0x7FFFFFFFFFFFFFF0)
                                        {
                                          v190 = 0xFFFFFFFFFFFFFFFLL;
                                        }

                                        else
                                        {
                                          v190 = v189;
                                        }

                                        v191 = geo::codec::zone_mallocator::instance(SpaceForLabels);
                                        v192 = pthread_rwlock_rdlock((v191 + 32));
                                        if (v192)
                                        {
                                          geo::read_write_lock::logFailure(v192, "read lock", v193);
                                        }

                                        v194 = malloc_type_zone_malloc(*v191, 16 * v190, 0x1000040F3EE17C6uLL);
                                        atomic_fetch_add((v191 + 24), 1u);
                                        v195 = pthread_rwlock_unlock((v191 + 32));
                                        if (v195)
                                        {
                                          geo::read_write_lock::logFailure(v195, "unlock", v196);
                                        }

                                        v197 = &v194[v182];
                                        v198 = &v194[16 * v190];
                                        bzero(&v194[v182], v187);
                                        v199 = &v194[v182 + v187];
                                        v200 = *(v179 + 568);
                                        v201 = *(v179 + 576) - v200;
                                        v202 = &v197[-v201];
                                        v203 = memcpy(v202, v200, v201);
                                        v204 = *(v179 + 568);
                                        *(v179 + 568) = v202;
                                        *(v179 + 576) = v199;
                                        *(v179 + 584) = v198;
                                        if (v204)
                                        {
                                          v205 = geo::codec::zone_mallocator::instance(v203);
                                          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsAnnotationValue>(v205, v204);
                                        }
                                      }
                                    }

                                    else if (!v184)
                                    {
                                      v206 = v181 + 16 * v19;
                                      goto LABEL_250;
                                    }

                                    v207 = *a2;
                                    v208 = *(*a2 + 568);
                                    if (v19 != (*(*a2 + 576) - v208) >> 4)
                                    {
                                      v177 = 11557;
                                      goto LABEL_284;
                                    }

                                    v209 = v256;
                                    if (v256)
                                    {
                                      v210 = 0;
                                      v211 = 0;
                                      v212 = v207[67];
                                      v213 = __key;
                                      v214 = v268;
                                      v215 = v259;
                                      v216 = v208 + 8;
                                      while (1)
                                      {
                                        v217 = *(4 * v210);
                                        if (*v210 == 1)
                                        {
                                          v221 = v207[4];
                                          if (0xCF3CF3CF3CF3CF3DLL * ((v207[5] - v221) >> 3) <= v217)
                                          {
                                            v177 = 11580;
                                            goto LABEL_284;
                                          }

                                          v222 = v221 + 168 * v217;
                                          v223 = *(v222 + 150);
                                          if (!v223)
                                          {
                                            *(v222 + 140) = v210;
                                          }

                                          *(v222 + 150) = v223 + 1;
                                        }

                                        else if (!*v210)
                                        {
                                          v218 = v207[63];
                                          if (0x6DB6DB6DB6DB6DB7 * ((v207[64] - v218) >> 5) <= v217)
                                          {
                                            v177 = 11569;
                                            goto LABEL_284;
                                          }

                                          v219 = v218 + 224 * v217;
                                          v220 = *(v219 + 204);
                                          if (!v220)
                                          {
                                            *(v219 + 200) = v210;
                                          }

                                          *(v219 + 204) = v220 + 1;
                                        }

                                        if (v215 <= *(2 * v210))
                                        {
                                          v177 = 11594;
                                          goto LABEL_284;
                                        }

                                        v224 = v212 + 16 * v210;
                                        v225 = &v213[40 * *(2 * v210)];
                                        *v224 = *v225;
                                        *(v224 + 4) = *(v225 + 2);
                                        *(v224 + 8) = v211;
                                        v226 = *(v225 + 1);
                                        v227 = *(v225 + 2) - v226;
                                        *(v224 + 12) = v227 >> 3;
                                        if (v227)
                                        {
                                          break;
                                        }

                                        v233 = 0;
LABEL_273:
                                        ++v210;
                                        v211 += v233;
                                        if (v210 == v209)
                                        {
                                          goto LABEL_277;
                                        }
                                      }

                                      v228 = v227 >> 3;
                                      if (v228 <= 1)
                                      {
                                        v228 = 1;
                                      }

                                      v229 = (v216 + 16 * v211);
                                      while (1)
                                      {
                                        *(v229 - 8) = v226[1];
                                        v230 = &v214[3 * *v226];
                                        v231 = v230[2];
                                        if (v231 >= v230[1])
                                        {
                                          break;
                                        }

                                        v232 = *v230;
                                        v230[2] = v231 + 1;
                                        LODWORD(v97) = *(v226 + 1);
                                        v97 = 1000.0 * *&v97 * (1.0 / v245);
                                        *v229 = *&v244[8 * v232 + 8 * v231] * v97;
                                        v229 += 2;
                                        v226 += 8;
                                        if (!--v228)
                                        {
                                          v233 = *(v224 + 12);
                                          goto LABEL_273;
                                        }
                                      }

                                      v177 = 11604;
                                      goto LABEL_284;
                                    }

                                    v211 = 0;
LABEL_277:
                                    if (v211 != v19)
                                    {
                                      v177 = 11609;
                                      goto LABEL_284;
                                    }

                                    v39 = 0;
LABEL_285:
                                    p_key = &__key;
                                    std::vector<geo::codec::_readAnnotationLabels(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::AnnotationTemplate,geo::allocator_adapter<geo::codec::_readAnnotationLabels(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::AnnotationTemplate,geo::codec::zone_mallocator>>::__destroy_vector::operator()[abi:ne200100](&p_key);
LABEL_286:
                                    v234 = v266;
                                    if (v266)
                                    {
                                      v267 = v266;
                                      v235 = geo::codec::zone_mallocator::instance(v148);
                                      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v235, v234);
                                    }

LABEL_288:
                                    if (v244)
                                    {
                                      v236 = geo::codec::zone_mallocator::instance(v148);
                                      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(v236, v244);
                                    }

LABEL_51:
                                    v40 = *(&v248 + 1);
                                    if (*(&v248 + 1))
                                    {
                                      v41 = **(&v248 + 1);
                                      **(&v248 + 1) = 0;
                                      if (v41)
                                      {
                                        v42 = *v41;
                                        *v41 = 0;
                                        if (v42)
                                        {
                                          v43 = v42[13];
                                          if (v43)
                                          {
                                            v42[14] = v43;
                                            operator delete(v43);
                                          }

                                          v44 = v42[10];
                                          if (v44)
                                          {
                                            v42[11] = v44;
                                            operator delete(v44);
                                          }

                                          MEMORY[0x18CFD1E40](v42, 0x1070C40ADA6D0DELL);
                                        }

                                        MEMORY[0x18CFD1E40](v41, 0x20C4093837F09);
                                      }

                                      MEMORY[0x18CFD1E40](v40, 0x20C4093837F09);
                                    }

                                    if (__p[0])
                                    {
                                      operator delete(__p[0]);
                                    }

                                    v45 = *(&v250 + 1);
                                    if (*(&v250 + 1))
                                    {
                                      v46 = **(&v250 + 1);
                                      **(&v250 + 1) = 0;
                                      if (v46)
                                      {
                                        v47 = *v46;
                                        *v46 = 0;
                                        if (v47)
                                        {
                                          v48 = v47[13];
                                          if (v48)
                                          {
                                            v47[14] = v48;
                                            operator delete(v48);
                                          }

                                          v49 = v47[10];
                                          if (v49)
                                          {
                                            v47[11] = v49;
                                            operator delete(v49);
                                          }

                                          MEMORY[0x18CFD1E40](v47, 0x1070C40ADA6D0DELL);
                                        }

                                        MEMORY[0x18CFD1E40](v46, 0x20C4093837F09);
                                      }

                                      MEMORY[0x18CFD1E40](v45, 0x20C4093837F09);
                                    }

                                    if (v249[0])
                                    {
                                      operator delete(v249[0]);
                                    }

                                    v50 = *(&v252 + 1);
                                    if (*(&v252 + 1))
                                    {
                                      v51 = **(&v252 + 1);
                                      **(&v252 + 1) = 0;
                                      if (v51)
                                      {
                                        v52 = *v51;
                                        *v51 = 0;
                                        if (v52)
                                        {
                                          v53 = v52[13];
                                          if (v53)
                                          {
                                            v52[14] = v53;
                                            operator delete(v53);
                                          }

                                          v54 = v52[10];
                                          if (v54)
                                          {
                                            v52[11] = v54;
                                            operator delete(v54);
                                          }

                                          MEMORY[0x18CFD1E40](v52, 0x1070C40ADA6D0DELL);
                                        }

                                        MEMORY[0x18CFD1E40](v51, 0x20C4093837F09);
                                      }

                                      MEMORY[0x18CFD1E40](v50, 0x20C4093837F09);
                                    }

                                    if (v251[0])
                                    {
                                      operator delete(v251[0]);
                                    }

                                    v55 = *(&v254 + 1);
                                    if (*(&v254 + 1))
                                    {
                                      v56 = **(&v254 + 1);
                                      **(&v254 + 1) = 0;
                                      if (v56)
                                      {
                                        v57 = *v56;
                                        *v56 = 0;
                                        if (v57)
                                        {
                                          v58 = v57[13];
                                          if (v58)
                                          {
                                            v57[14] = v58;
                                            operator delete(v58);
                                          }

                                          v59 = v57[10];
                                          if (v59)
                                          {
                                            v57[11] = v59;
                                            operator delete(v59);
                                          }

                                          MEMORY[0x18CFD1E40](v57, 0x1070C40ADA6D0DELL);
                                        }

                                        MEMORY[0x18CFD1E40](v56, 0x20C4093837F09);
                                      }

                                      MEMORY[0x18CFD1E40](v55, 0x20C4093837F09);
                                    }

                                    if (v253[0])
                                    {
                                      operator delete(v253[0]);
                                    }

                                    std::vector<geo::codec::_readAnnotationLabels(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::ValueArraySpan,geo::allocator_adapter<geo::codec::_readAnnotationLabels(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::ValueArraySpan,geo::codec::zone_mallocator>>::__destroy_vector::operator()[abi:ne200100](&v268);
                                    if (v39 != 6)
                                    {
                                      v23 = 1;
                                      if (!*v7)
                                      {
                                        goto LABEL_33;
                                      }

                                      goto LABEL_32;
                                    }

LABEL_31:
                                    v23 = 0;
                                    if (!*v7)
                                    {
LABEL_33:
                                      v30 = geo::codec::zone_mallocator::instance(v27);
                                      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v30, v7);
                                      return v23 & 1;
                                    }

LABEL_32:
                                    v28 = v7[5];
                                    v29 = geo::codec::zone_mallocator::instance(v27);
                                    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v29, v28);
                                    goto LABEL_33;
                                  }

                                  v149 = *MEMORY[0x1E69E9848];
                                  v150 = 11525;
                                }

                                break;
                              }
                            }

                            else
                            {
                              v149 = *MEMORY[0x1E69E9848];
                              v150 = 11518;
                            }
                          }

                          else
                          {
                            v149 = *MEMORY[0x1E69E9848];
                            v150 = 11516;
                          }

                          v148 = fprintf(v149, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v150);
                          v39 = 6;
                          goto LABEL_286;
                        }
                      }

                      v146 = *MEMORY[0x1E69E9848];
                      v147 = 11511;
                    }

                    else
                    {
                      v146 = *MEMORY[0x1E69E9848];
                      v147 = 11509;
                    }

                    v148 = fprintf(v146, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v147);
                    v39 = 6;
                    goto LABEL_288;
                  }

                  v32 = 11464;
                }

                else
                {
                  v32 = 11463;
                }

LABEL_45:
                v33 = *MEMORY[0x1E69E9848];
                goto LABEL_46;
              }

              v25 = *MEMORY[0x1E69E9848];
              v26 = 11450;
            }

            else
            {
              v25 = *MEMORY[0x1E69E9848];
              v26 = 11446;
            }
          }

          else
          {
            v25 = *MEMORY[0x1E69E9848];
            v26 = 11444;
          }
        }

        else
        {
          v25 = *MEMORY[0x1E69E9848];
          v26 = 11441;
        }
      }

      else
      {
        v25 = *MEMORY[0x1E69E9848];
        v26 = 11440;
      }

      v27 = fprintf(v25, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v26);
      goto LABEL_31;
    }
  }

LABEL_23:
  v23 = 1;
  return v23 & 1;
}

void sub_1866C0BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geo::codec::_readContourLines(geo::codec::zone_mallocator *a1, void *a2, int a3, int a4)
{
  v28[17] = *MEMORY[0x1E69E9840];
  v4 = 3096;
  if (a3)
  {
    v5 = 164;
  }

  else
  {
    v4 = 2984;
    v5 = 161;
  }

  v6 = 3320;
  if (a3)
  {
    v7 = 172;
  }

  else
  {
    v6 = 3208;
    v7 = 171;
  }

  if (a4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a4)
  {
    v5 = v7;
  }

  v9 = *(a1 + 1);
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = 0;
  v11 = 0;
  v12 = *a2 + v8;
  while (*(*a1 + 16 * v10) != v5)
  {
    v10 = ++v11;
    if (v9 <= v11)
    {
      goto LABEL_25;
    }
  }

  v14 = geo::codec::chapterAt(a1, v11, v5, (*a2 + 1920));
  if (v14)
  {
    v15 = v14;
    v27 = 0;
    v28[0] = 0;
    v25 = 0;
    v26 = 0;
    if (geo::codec::chapterReadVarUint32(v14, v28 + 1))
    {
      if (geo::codec::chapterReadVarUint32(v15, v28))
      {
        if (geo::codec::chapterReadVarUint32(v15, &v27 + 1))
        {
          if ((BYTE4(v27) & 1) == a3)
          {
            if (geo::codec::chapterReadVarUint32(v15, &v27))
            {
              v16 = v15[6];
              if (v16 + 8 <= v15[7])
              {
                v15[6] = v16 + 8;
                if (geo::codec::chapterReadVarUint32(v15, &v26 + 1))
                {
                  *(v12 + 40) = v27;
                  if (geo::codec::chapterReadVarUint32(v15, &v25))
                  {
                    operator new();
                  }

                  v17 = *MEMORY[0x1E69E9848];
                  v18 = 1560;
                }

                else
                {
                  v17 = *MEMORY[0x1E69E9848];
                  v18 = 1557;
                }
              }

              else
              {
                v17 = *MEMORY[0x1E69E9848];
                v18 = 1556;
              }
            }

            else
            {
              v17 = *MEMORY[0x1E69E9848];
              v18 = 1555;
            }
          }

          else
          {
            v17 = *MEMORY[0x1E69E9848];
            v18 = 1553;
          }
        }

        else
        {
          v17 = *MEMORY[0x1E69E9848];
          v18 = 1550;
        }
      }

      else
      {
        v17 = *MEMORY[0x1E69E9848];
        v18 = 1549;
      }
    }

    else
    {
      v17 = *MEMORY[0x1E69E9848];
      v18 = 1548;
    }

    v21 = fprintf(v17, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v18);
    v19 = 0;
    if (*v15)
    {
      v22 = v15[5];
      v23 = geo::codec::zone_mallocator::instance(v21);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v23, v22);
    }

    v24 = geo::codec::zone_mallocator::instance(v21);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v24, v15);
  }

  else
  {
LABEL_25:
    v19 = 1;
  }

  return v19 & 1;
}

void sub_1866C3004(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void **a26, void *a27, uint64_t a28, uint64_t a29, void **a30, geo::codec::zone_mallocator *a31, uint64_t a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void **a42)
{
  if (a20 && !atomic_fetch_add(&a20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a20->__on_zero_shared)(a20, a2, a3, a4, a5, a6, a7, a8);
    std::__shared_weak_count::__release_weak(a20);
  }

  if (v44)
  {
    for (; v42 != v44; v42 -= 16)
    {
      v64 = *(v42 - 1);
      if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v64->__on_zero_shared)(v64, a2, a3, a4, a5, a6, a7, a8);
        std::__shared_weak_count::__release_weak(v64);
      }
    }

    operator delete(v44);
    v47 = a26;
    if (!a26)
    {
LABEL_6:
      v48 = __p;
      if (!__p)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v47 = a26;
    if (!a26)
    {
      goto LABEL_6;
    }
  }

  v56 = *v47;
  *v47 = 0;
  if (v56)
  {
    v57 = *v56;
    *v56 = 0;
    if (v57)
    {
      v58 = v57[13];
      if (v58)
      {
        v57[14] = v58;
        operator delete(v58);
      }

      v59 = v57[10];
      if (v59)
      {
        v57[11] = v59;
        operator delete(v59);
      }

      MEMORY[0x18CFD1E40](v57, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v56, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v47, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  v48 = __p;
  if (!__p)
  {
LABEL_7:
    v49 = a30;
    if (!a30)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v48);
  v49 = a30;
  if (!a30)
  {
LABEL_8:
    v50 = a27;
    if (!a27)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_27:
  v60 = *v49;
  *v49 = 0;
  if (v60)
  {
    v61 = *v60;
    *v60 = 0;
    if (v61)
    {
      v62 = v61[13];
      if (v62)
      {
        v61[14] = v62;
        operator delete(v62);
      }

      v63 = v61[10];
      if (v63)
      {
        v61[11] = v63;
        operator delete(v63);
      }

      MEMORY[0x18CFD1E40](v61, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v60, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v49, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  v50 = a27;
  if (!a27)
  {
LABEL_9:
    v51 = a42;
    if (!a42)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_36:
  operator delete(v50);
  v51 = a42;
  if (!a42)
  {
LABEL_10:
    v52 = a39;
    if (!a39)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_43:
  v65 = *v51;
  *v51 = 0;
  if (v65)
  {
    v66 = *v65;
    *v65 = 0;
    if (v66)
    {
      v67 = v66[13];
      if (v67)
      {
        v66[14] = v67;
        operator delete(v67);
      }

      v68 = v66[10];
      if (v68)
      {
        v66[11] = v68;
        operator delete(v68);
      }

      MEMORY[0x18CFD1E40](v66, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v65, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v51, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  v52 = a39;
  if (!a39)
  {
LABEL_11:
    v53 = a34;
    if (!a34)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v52);
  v53 = a34;
  if (!a34)
  {
LABEL_12:
    v54 = a31;
    if (!a31)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_53:
  v69 = *v53;
  *v53 = 0;
  if (v69)
  {
    v70 = *v69;
    *v69 = 0;
    if (v70)
    {
      v71 = v70[13];
      if (v71)
      {
        v70[14] = v71;
        operator delete(v71);
      }

      v72 = v70[10];
      if (v72)
      {
        v70[11] = v72;
        operator delete(v72);
      }

      MEMORY[0x18CFD1E40](v70, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v69, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v53, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  v54 = a31;
  if (!a31)
  {
LABEL_13:
    v55 = *(v45 - 208);
    if (!v55)
    {
LABEL_64:
      v74 = *(v45 - 176);
      if (v74)
      {
        *(v45 - 168) = v74;
        v75 = geo::codec::zone_mallocator::instance(v54);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v75, v74);
      }

      v76 = *(v45 - 144);
      if (v76)
      {
        *(v45 - 136) = v76;
        v77 = geo::codec::zone_mallocator::instance(v54);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v77, v76);
      }

      if (v43)
      {
        v78 = geo::codec::zone_mallocator::instance(v54);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v78, v43);
      }

      _Unwind_Resume(exception_object);
    }

LABEL_63:
    *(v45 - 200) = v55;
    v73 = geo::codec::zone_mallocator::instance(v54);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v73, v55);
    goto LABEL_64;
  }

LABEL_62:
  operator delete(v54);
  v55 = *(v45 - 208);
  if (!v55)
  {
    goto LABEL_64;
  }

  goto LABEL_63;
}

void geo::codec::PBDataReaderObjC::~PBDataReaderObjC(geo::codec::PBDataReaderObjC *this)
{
  *this = &unk_1EF7F26D0;
  v1 = *(this + 1);
  if (v1)
  {
  }
}

uint64_t geo::codec::_readChapter3DBuildings(geo::codec::zone_mallocator *a1, uint64_t a2, geo::codec::zone_mallocator **a3, uint64_t *a4)
{
  v6 = a2;
  v8 = *a4;
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while (*(*a1 + 16 * v10) != v6)
    {
      v10 = ++v11;
      if (v9 <= v11)
      {
        goto LABEL_5;
      }
    }

    v12 = geo::codec::chapterAt(a1, v11, v6, (v8 + 1920));
    v8 = *a4;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  v55 = v6;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (v12)
  {
    v58 = 0uLL;
    v57 = 0;
    v15 = geo::codec::chapterReadVarUint32(v12, &v57);
    if (v15)
    {
      v16 = v57;
      if (v57 < 0x10000)
      {
        v17 = *a3;
        v18 = a3[1];
        v19 = v18 - *a3;
        v20 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 4);
        v21 = v57 - v20;
        if (v57 <= v20)
        {
          if (v57 >= v20)
          {
            goto LABEL_51;
          }

          v53 = (v17 + 112 * v57);
          while (v18 != v53)
          {
            v18 = (v18 - 112);
            std::__destroy_at[abi:ne200100]<GeoCodecs3DBuildingFeature,0>(v18);
          }
        }

        else
        {
          v22 = a3[2];
          if (0x6DB6DB6DB6DB6DB7 * ((v22 - v18) >> 4) < v21)
          {
            v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v17) >> 4);
            if (2 * v23 > v57)
            {
              v16 = 2 * v23;
            }

            if (v23 >= 0x124924924924924)
            {
              v24 = 0x249249249249249;
            }

            else
            {
              v24 = v16;
            }

            v25 = geo::codec::zone_mallocator::instance(v15);
            v26 = pthread_rwlock_rdlock((v25 + 32));
            if (v26)
            {
              geo::read_write_lock::logFailure(v26, "read lock", v27);
            }

            v28 = malloc_type_zone_malloc(*v25, 112 * v24, 0x107004038396E70uLL);
            atomic_fetch_add((v25 + 24), 1u);
            v29 = pthread_rwlock_unlock((v25 + 32));
            if (v29)
            {
              geo::read_write_lock::logFailure(v29, "unlock", v30);
            }

            v31 = &v28[v19];
            v32 = &v28[112 * v24];
            bzero(v31, 112 * ((((112 * v21 - 112) >> 4) * 0x2492492492492493uLL) >> 64) + 112);
            v34 = &v31[112 * ((((112 * v21 - 112) >> 4) * 0x2492492492492493uLL) >> 64) + 112];
            v35 = *a3;
            v36 = a3[1];
            v37 = &v31[*a3 - v36];
            if (v36 == *a3)
            {
              v42 = a3;
            }

            else
            {
              v38 = *a3;
              v39 = v37;
              do
              {
                *v39 = *v38;
                *v38 = 0;
                *(v38 + 1) = 0;
                *(v39 + 1) = *(v38 + 1);
                *(v39 + 4) = *(v38 + 4);
                *(v38 + 3) = 0;
                *(v38 + 4) = 0;
                v40 = *(v38 + 40);
                v41 = *(v38 + 56);
                *(v39 + 18) = *(v38 + 18);
                *(v39 + 56) = v41;
                *(v39 + 40) = v40;
                *(v39 + 11) = 0;
                *(v39 + 12) = 0;
                *(v39 + 10) = 0;
                v39[104] = *(v38 + 104);
                *(v39 + 5) = *(v38 + 5);
                *(v39 + 12) = *(v38 + 12);
                *(v38 + 10) = 0;
                *(v38 + 11) = 0;
                *(v38 + 12) = 0;
                v38 = (v38 + 112);
                v39 += 112;
              }

              while (v38 != v36);
              do
              {
                std::__destroy_at[abi:ne200100]<GeoCodecs3DBuildingFeature,0>(v35);
                v35 = (v35 + 112);
              }

              while (v35 != v36);
              v42 = a3;
              v35 = *a3;
            }

            *v42 = v37;
            v42[1] = v34;
            v42[2] = v32;
            if (v35)
            {
              v54 = geo::codec::zone_mallocator::instance(v33);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecs3DBuildingFeature>(v54, v35);
            }

LABEL_51:
            geo::codec::attributesForFeatureType(&v56, 4);
          }

          bzero(v18, 112 * ((((112 * v21 - 112) >> 4) * 0x2492492492492493uLL) >> 64) + 112);
          v53 = (v18 + 112 * ((((112 * v21 - 112) >> 4) * 0x2492492492492493uLL) >> 64) + 112);
        }

        a3[1] = v53;
        goto LABEL_51;
      }

      v44 = *MEMORY[0x1E69E9848];
      v45 = 4267;
    }

    else
    {
      v44 = *MEMORY[0x1E69E9848];
      v45 = 4265;
    }

    v46 = fprintf(v44, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v45);
    v43 = 0;
    if (a1)
    {
      if (*v12)
      {
        v47 = v12[5];
        v48 = geo::codec::zone_mallocator::instance(v46);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v48, v47);
      }

      v49 = geo::codec::zone_mallocator::instance(v46);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v49, v12);
    }

    v50 = *(&v58 + 1);
    if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v50->__on_zero_shared)(v50);
      std::__shared_weak_count::__release_weak(v50);
    }
  }

  else
  {
    v43 = 1;
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *&v56 = v55;
  *&v58 = &v56;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v8 + 1920), &v56, &v58) + 4) = ((rep - v14.__d_.__rep_) / 1000) * 0.001;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return v43;
}

void sub_1866C4154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, std::__shared_weak_count *a20)
{
  v25 = pthread_rwlock_unlock((v23 + 32));
  if (v25)
  {
    geo::read_write_lock::logFailure(v25, "unlock", v26);
  }

  v27 = a20;
  if (a20 && !atomic_fetch_add(&a20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  a15 = a14;
  a19 = &a15;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v22 + 1920), &a15, &a19) + 4) = ((rep - v21) / 1000) * 0.001;
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  _Unwind_Resume(a1);
}

id _NSDictionarySafeDecodingCopy(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v17 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v2 objectForKey:{v7, v17}];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v18 setObject:v8 forKey:v7];
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 objectForKey:@"_geo_SerializedError"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v9 objectForKey:@"_geo_SerializedError"];
            v12 = [v11 BOOLValue];

            v5 = v17;
            if (v12)
            {
              v13 = _geo_NSErrorFromDictionaryRepresentationCopy(v9);
              if (!v13)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
          }

          v13 = _NSDictionarySafeDecodingCopy(v9);
LABEL_18:
          [v18 setObject:v13 forKey:v7];
LABEL_19:

          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = _NSArraySafeDecodingCopy(v8);
        }

        else
        {
          v14 = [MEMORY[0x1E695DFB0] null];
        }

        v15 = v14;
        [v18 setObject:v14 forKey:v7];

LABEL_22:
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  return v18;
}

uint64_t geo::codec::_readTransitSystems(geo::codec::zone_mallocator *a1, uint64_t *a2)
{
  v400[6] = *MEMORY[0x1E69E9840];
  v399 = v400;
  memset(v400, 0, 40);
  v3 = *a2;
  v4 = *(a1 + 1);
  if (!v4)
  {
LABEL_5:
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = 0;
  while (*(*a1 + 16 * v5) != 128)
  {
    v5 = ++v6;
    if (v4 <= v6)
    {
      goto LABEL_5;
    }
  }

  v7 = geo::codec::chapterAt(a1, v6, 128, (v3 + 1920));
  v3 = *a2;
  v8 = a2[1];
  if (v8)
  {
LABEL_6:
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v9.__d_.__rep_;
  if (!v7)
  {
    v14 = 1;
    goto LABEL_25;
  }

  v11 = v7[6];
  v10 = v7[7];
  v12 = v10 - v11;
  if (v10 >= v11)
  {
    v13 = 0;
    *(v7 + 32) = 1;
    v15 = v7[5] + v11;
    v7[2] = v12;
    v7[3] = 0;
    v7[1] = v15;
  }

  else
  {
    v12 = v7[2];
    v13 = v7[3];
  }

  v16 = 8 * v12;
  if (v13 + 5 > v16)
  {
    goto LABEL_20;
  }

  v17 = 0;
  v18 = v7[1];
  v19 = 5;
  do
  {
    v20 = 8 - (v13 & 7);
    if (v19 < v20)
    {
      v20 = v19;
    }

    v17 = (*(v18 + (v13 >> 3)) >> (8 - (v13 & 7) - v20)) & ~(-1 << v20) | (v17 << v20);
    v13 += v20;
    v7[3] = v13;
    v19 -= v20;
  }

  while (v19);
  v21 = (v17 + 1);
  if (v13 + v21 > v16)
  {
LABEL_20:
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5849;
    goto LABEL_21;
  }

  if (v17 == -1)
  {
    v30 = 0;
    v33 = (*a2 + 1328);
    v34 = *v33;
    v35 = *(*a2 + 1320);
    v37 = 0x8E38E38E38E38E39 * ((*v33 - v35) >> 3);
  }

  else
  {
    LODWORD(v30) = 0;
    do
    {
      v31 = 8 - (v13 & 7);
      if (v21 < v31)
      {
        v31 = v21;
      }

      v30 = (*(v18 + (v13 >> 3)) >> (8 - (v13 & 7) - v31)) & ~(-1 << v31) | (v30 << v31);
      v13 += v31;
      v7[3] = v13;
      v21 -= v31;
    }

    while (v21);
    v32 = *a2;
    v33 = (*a2 + 1328);
    v34 = *v33;
    v35 = *(*a2 + 1320);
    v36 = *v33 - v35;
    v37 = 0x8E38E38E38E38E39 * (v36 >> 3);
    v38 = v30 - v37;
    if (v30 > v37)
    {
      v39 = v32[167];
      if (0x8E38E38E38E38E39 * ((v39 - v34) >> 3) >= v38)
      {
        bzero(*(*a2 + 1328), 72 * ((72 * v38 - 72) / 0x48) + 72);
        *v33 = v34 + 72 * ((72 * v38 - 72) / 0x48) + 72;
      }

      else
      {
        v40 = 0x8E38E38E38E38E39 * ((v39 - v35) >> 3);
        if (2 * v40 > v30)
        {
          v30 = 2 * v40;
        }

        if (v40 >= 0x1C71C71C71C71C7)
        {
          v41 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v41 = v30;
        }

        v42 = geo::codec::zone_mallocator::instance(v9.__d_.__rep_);
        v43 = pthread_rwlock_rdlock((v42 + 32));
        v383 = v3;
        if (v43)
        {
          geo::read_write_lock::logFailure(v43, "read lock", v44);
        }

        v45 = malloc_type_zone_malloc(*v42, 72 * v41, 0x10700403ABBFCD1uLL);
        atomic_fetch_add((v42 + 24), 1u);
        v46 = pthread_rwlock_unlock((v42 + 32));
        if (v46)
        {
          geo::read_write_lock::logFailure(v46, "unlock", v47);
        }

        v48 = &v45[v36];
        v49 = &v45[72 * v41];
        bzero(v48, 72 * ((72 * v38 - 72) / 0x48) + 72);
        v51 = &v48[72 * ((72 * v38 - 72) / 0x48) + 72];
        v52 = v32[166];
        v53 = v32[165];
        v54 = &v48[v53 - v52];
        if (v52 != v53)
        {
          v377 = v49;
          v55 = v32[165];
          v56 = v54;
          do
          {
            v57 = *v55;
            *(v56 + 2) = *(v55 + 2);
            *v56 = v57;
            *(v56 + 24) = *(v55 + 24);
            *(v55 + 3) = 0;
            *(v55 + 4) = 0;
            v58 = *(v55 + 40);
            *(v56 + 52) = *(v55 + 52);
            *(v56 + 40) = v58;
            v55 = (v55 + 72);
            v56 += 72;
          }

          while (v55 != v52);
          do
          {
            v59 = *(v53 + 4);
            if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v59->__on_zero_shared)(v59);
              std::__shared_weak_count::__release_weak(v59);
            }

            v53 += 72;
          }

          while (v53 != v52);
          v53 = v32[165];
          v49 = v377;
        }

        v32[165] = v54;
        v32[166] = v51;
        v32[167] = v49;
        v3 = v383;
        if (v53)
        {
          v63 = geo::codec::zone_mallocator::instance(v50);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitSystemInfo>(v63, v53);
        }
      }

      goto LABEL_66;
    }
  }

  if (v37 > v30)
  {
    v60 = v3;
    for (i = v35 + 72 * v30; v34 != i; v34 -= 72)
    {
      v62 = *(v34 - 40);
      if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v62->__on_zero_shared)(v62);
        std::__shared_weak_count::__release_weak(v62);
      }
    }

    *v33 = i;
    v3 = v60;
  }

LABEL_66:
  v64 = 0x8E38E38E38E38E39 * ((*(*a2 + 1328) - *(*a2 + 1320)) >> 3);
  v397[0] = &unk_1EF7F2290;
  v397[1] = a2;
  v398 = v397;
  TransitSystemsChapterIDSet = geo::codec::_readTransitSystemsChapterIDSet(v7 + 1, v64, v397);
  v66 = v398;
  if (v398 == v397)
  {
    v66 = (*(*v398 + 32))(v398);
    if (TransitSystemsChapterIDSet)
    {
      goto LABEL_70;
    }

LABEL_87:
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5854;
    goto LABEL_21;
  }

  if (v398)
  {
    v66 = (*(*v398 + 40))();
  }

  if (!TransitSystemsChapterIDSet)
  {
    goto LABEL_87;
  }

LABEL_70:
  v67 = *a2;
  v68 = *(*a2 + 1328);
  v69 = *(*a2 + 1320);
  v70 = v68 - v69;
  if (v68 == v69)
  {
    v71 = 0;
  }

  else
  {
    v71 = 0;
    v72 = 0;
    v73 = 0x8E38E38E38E38E39 * (v70 >> 3);
    v74 = v7[3];
    v75 = 8 * v7[2];
    if (v73 <= 1)
    {
      v73 = 1;
    }

    do
    {
      if (v74 + 5 > v75)
      {
        goto LABEL_88;
      }

      v76 = 0;
      v77 = v7[1];
      v78 = 5;
      do
      {
        v79 = 8 - (v74 & 7);
        if (v78 < v79)
        {
          v79 = v78;
        }

        v76 = (*(v77 + (v74 >> 3)) >> (8 - (v74 & 7) - v79)) & ~(-1 << v79) | (v76 << v79);
        v74 += v79;
        v7[3] = v74;
        v78 -= v79;
      }

      while (v78);
      v80 = (v76 + 1);
      if (v74 + v80 > v75)
      {
LABEL_88:
        v22 = *MEMORY[0x1E69E9848];
        v23 = 5859;
        goto LABEL_21;
      }

      v81 = 0;
      if (v80)
      {
        do
        {
          v82 = 8 - (v74 & 7);
          if (v80 < v82)
          {
            v82 = v80;
          }

          v81 = (*(v77 + (v74 >> 3)) >> (8 - (v74 & 7) - v82)) & ~(-1 << v82) | (v81 << v82);
          v74 += v82;
          v7[3] = v74;
          v80 -= v82;
        }

        while (v80);
      }

      v66 = (v69 + 72 * v72);
      *v66 = v71;
      *(v66 + 1) = v81;
      v71 += v81;
      ++v72;
    }

    while (v72 != v73);
  }

  v83 = v71;
  v84 = *(v67 + 1296);
  v85 = *(v67 + 1288);
  v86 = v84 - v85;
  v87 = 0x4EC4EC4EC4EC4EC5 * ((v84 - v85) >> 3);
  v88 = v83 - v87;
  if (v83 <= v87)
  {
    if (v83 >= v87)
    {
      goto LABEL_126;
    }

    v112 = v85 + 104 * v83;
    if (v84 != v112)
    {
      v113 = v3;
      do
      {
        v114 = *(v84 - 72);
        if (v114 && !atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v114->__on_zero_shared)(v114);
          std::__shared_weak_count::__release_weak(v114);
        }

        v115 = *(v84 - 96);
        if (v115)
        {
          std::__shared_weak_count::__release_weak(v115);
        }

        v84 -= 104;
      }

      while (v84 != v112);
      v3 = v113;
    }

    goto LABEL_122;
  }

  v89 = *(v67 + 1304);
  if (0x4EC4EC4EC4EC4EC5 * ((v89 - v84) >> 3) >= v88)
  {
    bzero(*(v67 + 1296), 104 * ((104 * v88 - 104) / 0x68) + 104);
    v112 = v84 + 104 * ((104 * v88 - 104) / 0x68) + 104;
LABEL_122:
    *(v67 + 1296) = v112;
    goto LABEL_126;
  }

  v90 = 0x4EC4EC4EC4EC4EC5 * ((v89 - v85) >> 3);
  v91 = 2 * v90;
  if (2 * v90 <= v83)
  {
    v91 = v83;
  }

  if (v90 >= 0x13B13B13B13B13BLL)
  {
    v92 = 0x276276276276276;
  }

  else
  {
    v92 = v91;
  }

  v93 = geo::codec::zone_mallocator::instance(v66);
  v94 = pthread_rwlock_rdlock((v93 + 32));
  v384 = v3;
  if (v94)
  {
    geo::read_write_lock::logFailure(v94, "read lock", v95);
  }

  v96 = malloc_type_zone_malloc(*v93, 104 * v92, 0x107004099F8810BuLL);
  atomic_fetch_add((v93 + 24), 1u);
  v97 = pthread_rwlock_unlock((v93 + 32));
  if (v97)
  {
    geo::read_write_lock::logFailure(v97, "unlock", v98);
  }

  v99 = &v96[v86];
  v100 = &v96[104 * v92];
  bzero(v99, 104 * ((104 * v88 - 104) / 0x68) + 104);
  v102 = &v99[104 * ((104 * v88 - 104) / 0x68) + 104];
  v103 = *(v67 + 1296);
  v104 = *(v67 + 1288);
  v105 = &v99[v104 - v103];
  if (v103 != v104)
  {
    v375 = v102;
    v378 = v100;
    v106 = *(v67 + 1288);
    v107 = v105;
    do
    {
      *v107 = *v106;
      *v106 = 0;
      *(v106 + 8) = 0;
      *(v107 + 1) = *(v106 + 16);
      *(v107 + 4) = *(v106 + 32);
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
      v108 = *(v106 + 40);
      v109 = *(v106 + 56);
      *(v107 + 18) = *(v106 + 72);
      *(v107 + 56) = v109;
      *(v107 + 40) = v108;
      v110 = *(v106 + 76);
      *(v107 + 92) = *(v106 + 92);
      *(v107 + 76) = v110;
      v106 += 104;
      v107 += 104;
    }

    while (v106 != v103);
    do
    {
      v111 = *(v104 + 4);
      if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v111->__on_zero_shared)(v111);
        std::__shared_weak_count::__release_weak(v111);
      }

      v101 = *(v104 + 1);
      if (v101)
      {
        std::__shared_weak_count::__release_weak(v101);
      }

      v104 += 104;
    }

    while (v104 != v103);
    v104 = *(v67 + 1288);
    v102 = v375;
    v100 = v378;
  }

  *(v67 + 1288) = v105;
  *(v67 + 1296) = v102;
  *(v67 + 1304) = v100;
  v3 = v384;
  if (v104)
  {
    v116 = geo::codec::zone_mallocator::instance(v101);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTransitLine>(v116, v104);
  }

LABEL_126:
  v117 = *a2;
  v118 = *(*a2 + 1320);
  v119 = 954437177 * ((*(*a2 + 1328) - v118) >> 3);
  if (v119)
  {
    for (j = 0; j != v119; ++j)
    {
      v121 = (v118 + 72 * j);
      v122 = v121[1];
      if (v122)
      {
        v123 = *v121;
        v124 = *(v117 + 1288);
        if (v122 == 1)
        {
          v125 = 0;
        }

        else
        {
          v125 = v122 & 0xFFFFFFFFFFFFFFFELL;
          v126 = (v124 + 104 * v123 + 184);
          v127 = v122 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *(v126 - 26) = j;
            *v126 = j;
            v126 += 52;
            v127 -= 2;
          }

          while (v127);
          if (v122 == v125)
          {
            continue;
          }
        }

        v128 = v122 - v125;
        v129 = (v124 + 104 * v123 + 104 * v125 + 80);
        do
        {
          *v129 = j;
          v129 += 26;
          --v128;
        }

        while (v128);
      }
    }
  }

  v130 = *(v117 + 1296);
  v131 = *(v117 + 1288);
  if (v130 != v131)
  {
    v132 = 0;
    v133 = 0;
    do
    {
      v134 = a2[1];
      if (v134)
      {
        atomic_fetch_add_explicit((v134 + 16), 1uLL, memory_order_relaxed);
      }

      v135 = (v131 + v132);
      v136 = *(v131 + v132 + 8);
      *v135 = v117;
      v135[1] = v134;
      if (v136)
      {
        std::__shared_weak_count::__release_weak(v136);
      }

      v117 = *a2;
      v131 = *(*a2 + 1288);
      *(v131 + v132 + 88) = -1;
      ++v133;
      v130 = *(v117 + 1296);
      v132 += 104;
    }

    while (v133 < 0x4EC4EC4EC4EC4EC5 * ((v130 - v131) >> 3));
  }

  if (v83)
  {
    v137 = 0;
    v138 = v7[3];
    v139 = 8 * v7[2];
    do
    {
      if (v138 + 8 > v139)
      {
        v22 = *MEMORY[0x1E69E9848];
        v23 = 5884;
        goto LABEL_21;
      }

      v140 = 0;
      v141 = v7[1];
      v142 = 8;
      do
      {
        v143 = 8 - (v138 & 7);
        if (v142 < v143)
        {
          v143 = v142;
        }

        v140 = (*(v141 + (v138 >> 3)) >> (8 - (v138 & 7) - v143)) & ~(-1 << v143) | (v140 << v143);
        v138 += v143;
        v7[3] = v138;
        v142 -= v143;
      }

      while (v142);
      if (v138 + 8 > v139)
      {
        v22 = *MEMORY[0x1E69E9848];
        v23 = 5885;
        goto LABEL_21;
      }

      v144 = 0;
      v145 = 8;
      do
      {
        v146 = 8 - (v138 & 7);
        if (v145 < v146)
        {
          v146 = v145;
        }

        v144 = (*(v141 + (v138 >> 3)) >> (8 - (v138 & 7) - v146)) & ~(-1 << v146) | (v144 << v146);
        v138 += v146;
        v7[3] = v138;
        v145 -= v146;
      }

      while (v145);
      if (v138 + 8 > v139)
      {
        v22 = *MEMORY[0x1E69E9848];
        v23 = 5886;
        goto LABEL_21;
      }

      v147 = 0;
      v148 = 8;
      do
      {
        v149 = 8 - (v138 & 7);
        if (v148 < v149)
        {
          v149 = v148;
        }

        v147 = (*(v141 + (v138 >> 3)) >> (8 - (v138 & 7) - v149)) & ~(-1 << v149) | (v147 << v149);
        v138 += v149;
        v7[3] = v138;
        v148 -= v149;
      }

      while (v148);
      v150 = (v131 + 104 * v137);
      v150[76] = v140;
      v150[77] = v144;
      v150[78] = v147;
      v150[79] = -1;
      ++v137;
    }

    while (v137 != v83);
  }

  if ((geo::codec::decodeAttributeSet<GeoCodecsFeature>(1, v7 + 1, -991146299 * ((v130 - v131) >> 3), &v399, v131, 104) & 1) == 0)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5896;
    goto LABEL_21;
  }

  v151 = 0x4EC4EC4EC4EC4EC5 * ((*(*a2 + 1296) - *(*a2 + 1288)) >> 3);
  v395[0] = &unk_1EF7F2320;
  v395[1] = a2;
  v396 = v395;
  TransitSystemsChapterLabelSet = geo::codec::_readTransitSystemsChapterLabelSet(v7 + 1, v151, v395, a2);
  if (v396 == v395)
  {
    (*(*v396 + 32))(v396);
  }

  else if (v396)
  {
    (*(*v396 + 40))();
  }

  if ((TransitSystemsChapterLabelSet & 1) == 0)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5902;
    goto LABEL_21;
  }

  v153 = 0x4EC4EC4EC4EC4EC5 * ((*(*a2 + 1296) - *(*a2 + 1288)) >> 3);
  v393[0] = &unk_1EF7F23B0;
  v393[1] = a2;
  v394 = v393;
  v154 = geo::codec::_readTransitSystemsChapterIDSet(v7 + 1, v153, v393);
  if (v394 == v393)
  {
    (*(*v394 + 32))(v394);
  }

  else if (v394)
  {
    (*(*v394 + 40))();
  }

  if ((v154 & 1) == 0)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5906;
    goto LABEL_21;
  }

  if ((geo::codec::_convertTransitLineKeys((*a2 + 1624), *(*a2 + 1640), (*a2 + 1632), a2) & 1) == 0)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5909;
    goto LABEL_21;
  }

  if ((geo::codec::_convertTransitLineKeys((*a2 + 1600), *(*a2 + 1616), (*a2 + 1608), a2) & 1) == 0)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5911;
    goto LABEL_21;
  }

  v155 = v7[2];
  v156 = v7[3];
  v157 = v156 + 1;
  v158 = 8 * v155;
  if (v156 + 1 > 8 * v155)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = 5914;
    goto LABEL_21;
  }

  v159 = v7[1];
  v160 = *(v159 + (v156 >> 3));
  v7[3] = v157;
  if ((v160 >> (~v156 & 7)))
  {
    if (v156 + 6 > v158)
    {
      v22 = *MEMORY[0x1E69E9848];
      v23 = 5917;
      goto LABEL_21;
    }

    v385 = v3;
    v161 = 0;
    v162 = 5;
    do
    {
      v163 = 8 - (v157 & 7);
      if (v162 < v163)
      {
        v163 = v162;
      }

      v161 = (*(v159 + (v157 >> 3)) >> (8 - (v157 & 7) - v163)) & ~(-1 << v163) | (v161 << v163);
      v157 += v163;
      v7[3] = v157;
      v162 -= v163;
    }

    while (v162);
    if (v157 + 5 > v158)
    {
      goto LABEL_199;
    }

    v164 = 0;
    v165 = (v161 + 1);
    v166 = 5;
    do
    {
      v167 = 8 - (v157 & 7);
      if (v166 < v167)
      {
        v167 = v166;
      }

      v164 = (*(v159 + (v157 >> 3)) >> (8 - (v157 & 7) - v167)) & ~(-1 << v167) | (v164 << v167);
      v157 += v167;
      v7[3] = v157;
      v166 -= v167;
    }

    while (v166);
    v168 = (v164 + 1);
    if (v157 + v168 > v158)
    {
LABEL_199:
      v169 = *MEMORY[0x1E69E9848];
      v170 = 5920;
LABEL_341:
      v24 = fprintf(v169, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v170);
      v14 = 0;
      goto LABEL_342;
    }

    if (v164 == -1)
    {
      v171 = 0;
    }

    else
    {
      LODWORD(v171) = 0;
      do
      {
        v172 = 8 - (v157 & 7);
        if (v168 < v172)
        {
          v172 = v168;
        }

        v171 = ((*(v159 + (v157 >> 3)) >> (8 - (v157 & 7) - v172)) & ~(-1 << v172) | (v171 << v172));
        v157 += v172;
        v7[3] = v157;
        v168 -= v172;
      }

      while (v168);
    }

    *&v388 = 0;
    if (!geo::codec::_makeSpaceForShields(v171, &v388, a2))
    {
      v170 = 5924;
      goto LABEL_340;
    }

    v173 = v388;
    v174 = *a2;
    v175 = *(*a2 + 1296);
    v176 = *(*a2 + 1288);
    v177 = v175 - v176;
    if (v175 != v176)
    {
      v178 = 0;
      v179 = v7[3];
      v180 = 8 * v7[2];
      v181 = 0x4EC4EC4EC4EC4EC5 * (v177 >> 3);
      do
      {
        v182 = v179 + 1;
        if (v179 + 1 > v180)
        {
          v170 = 5928;
          goto LABEL_340;
        }

        v183 = v7[1];
        v184 = *(v183 + (v179 >> 3));
        v7[3] = v182;
        if ((v184 >> (~v179 & 7)))
        {
          if (v182 + v165 > v180)
          {
            v170 = 5931;
            goto LABEL_340;
          }

          v185 = 0;
          if (v165)
          {
            v186 = v165;
            do
            {
              v187 = 8 - (v182 & 7);
              if (v186 < v187)
              {
                v187 = v186;
              }

              v185 = (*(v183 + (v182 >> 3)) >> (8 - (v182 & 7) - v187)) & ~(-1 << v187) | (v185 << v187);
              v182 += v187;
              v7[3] = v182;
              v186 -= v187;
            }

            while (v186);
          }

          if (v173 >= v174[135])
          {
            v170 = 5932;
            goto LABEL_340;
          }

          v188 = v176 + 104 * v178;
          *(v188 + 72) = 1;
          *(v188 + 60) = v173;
          *(v174[134] + 32 * v173++ + 24) = v185;
        }

        ++v178;
        v179 = v182;
      }

      while (v178 < v181);
    }

    if (v173 != v174[135])
    {
      v170 = 5939;
      goto LABEL_340;
    }

    v155 = v7[2];
    v157 = v7[3];
    v158 = 8 * v155;
    if (v157 + 5 > 8 * v155)
    {
      v170 = 5945;
      goto LABEL_340;
    }

    v189 = 0;
    v190 = v174[108];
    v379 = v174[109] - v190;
    v191 = v7[1];
    v192 = 5;
    do
    {
      v193 = 8 - (v157 & 7);
      if (v192 < v193)
      {
        v193 = v192;
      }

      v189 = (*(v191 + (v157 >> 3)) >> (8 - (v157 & 7) - v193)) & ~(-1 << v193) | (v189 << v193);
      v157 += v193;
      v7[3] = v157;
      v192 -= v193;
    }

    while (v192);
    v194 = *(*a2 + 1288);
    if (*(*a2 + 1296) != v194)
    {
      v195 = 0;
      v196 = (v189 + 1);
      do
      {
        v198 = v7[3];
        v199 = v198 + 1;
        v200 = 8 * v7[2];
        if (v198 + 1 > v200)
        {
          v170 = 5950;
          goto LABEL_340;
        }

        v201 = v7[1];
        v202 = *(v201 + (v198 >> 3));
        v7[3] = v199;
        if ((v202 >> (~v198 & 7)))
        {
          if (v199 + v196 > v200)
          {
            v170 = 5953;
            goto LABEL_340;
          }

          v203 = 0;
          if (v196)
          {
            v204 = v196;
            do
            {
              v205 = 8 - (v199 & 7);
              if (v204 < v205)
              {
                v205 = v204;
              }

              v203 = (*(v201 + (v199 >> 3)) >> (8 - (v199 & 7) - v205)) & ~(-1 << v205) | (v203 << v205);
              v199 += v205;
              v7[3] = v199;
              v204 -= v205;
            }

            while (v204);
          }

          if (v379 <= v203)
          {
            v170 = 5954;
            goto LABEL_340;
          }

          v206 = v194 + 104 * v195;
          if (!*(v206 + 72))
          {
            v170 = 5955;
            goto LABEL_340;
          }

          v207 = *(v206 + 60);
          v208 = *a2;
          *(*(*a2 + 1072) + 32 * v207) = v190 + v203;
          v209 = *(v208 + 896);
          v210 = *(v208 + 904);
          __key = v203;
          v211 = bsearch(&__key, v209, v210, 0x18uLL, geo::codec::findLabelLanguageLocal);
          if (v211)
          {
            v212 = v211[2];
          }

          else
          {
            v212 = 0;
          }

          v197 = *a2;
          *(*(*a2 + 1072) + 32 * v207 + 8) = v212;
        }

        else
        {
          v197 = *a2;
        }

        ++v195;
        v194 = *(v197 + 1288);
      }

      while (v195 < 0x4EC4EC4EC4EC4EC5 * ((*(v197 + 1296) - v194) >> 3));
      v155 = v7[2];
      v157 = v7[3];
      v158 = 8 * v155;
    }

    v3 = v385;
  }

  v213 = v157 + 1;
  if (v157 + 1 > v158)
  {
    v23 = 5966;
    goto LABEL_259;
  }

  v385 = v3;
  v214 = v7[1];
  v215 = *(v214 + (v157 >> 3));
  v7[3] = v213;
  if (((v215 >> (~v157 & 7)) & 1) == 0)
  {
    goto LABEL_277;
  }

  if (v157 + 6 > v158)
  {
    v23 = 5969;
    goto LABEL_259;
  }

  v216 = 0;
  v217 = 5;
  do
  {
    v218 = 8 - (v213 & 7);
    if (v217 < v218)
    {
      v218 = v217;
    }

    v216 = (*(v214 + (v213 >> 3)) >> (8 - (v213 & 7) - v218)) & ~(-1 << v218) | (v216 << v218);
    v213 += v218;
    v7[3] = v213;
    v217 -= v218;
  }

  while (v217);
  v219 = *(*a2 + 1296);
  v220 = *(*a2 + 1288);
  v221 = v219 - v220;
  if (v219 == v220)
  {
LABEL_277:
    v225 = v213;
LABEL_278:
    if (*(v7 + 16) >= 0x15u)
    {
      v230 = *(*a2 + 1328);
      v231 = *(*a2 + 1320);
      v232 = v230 - v231;
      if (v230 != v231)
      {
        v233 = 0;
        v234 = 0x8E38E38E38E38E39 * (v232 >> 3);
        do
        {
          v235 = v225 + 1;
          if (v225 + 1 > v158)
          {
            v170 = 5987;
            goto LABEL_340;
          }

          v236 = *(v214 + (v225 >> 3));
          v7[3] = v235;
          if (((v236 >> (~v225 & 7)) & 1) != 0 && (v237 = (v231 + 72 * v233), (v238 = v237[1]) != 0))
          {
            v239 = 0;
            v240 = *a2;
            do
            {
              v225 = v235 + 1;
              if (v235 + 1 > 8 * v155)
              {
                v170 = 5992;
                goto LABEL_340;
              }

              v241 = *(v214 + (v235 >> 3));
              v7[3] = v225;
              if ((v241 >> (~v235 & 7)))
              {
                if (v235 + 9 > v158)
                {
                  v170 = 5995;
                  goto LABEL_340;
                }

                v242 = 0;
                v243 = 8;
                do
                {
                  v244 = 8 - (v225 & 7);
                  if (v243 < v244)
                  {
                    v244 = v243;
                  }

                  v242 = (*(v214 + (v225 >> 3)) >> (8 - (v225 & 7) - v244)) & ~(-1 << v244) | (v242 << v244);
                  v225 += v244;
                  v7[3] = v225;
                  v243 -= v244;
                }

                while (v243);
                *(*(v240 + 1288) + 104 * *v237 + 104 * v239 + 79) = v242;
              }

              ++v239;
              v235 = v225;
            }

            while (v239 != v238);
          }

          else
          {
            ++v225;
          }

          ++v233;
        }

        while (v233 < v234);
      }
    }

    v245 = v225 + 1;
    if (v225 + 1 > v158)
    {
      v170 = 6005;
      goto LABEL_340;
    }

    v246 = *(v214 + (v225 >> 3));
    v7[3] = v245;
    v247 = *a2;
    if ((v246 >> (~v225 & 7)))
    {
      if (v225 + 6 > v158)
      {
        goto LABEL_315;
      }

      v248 = 0;
      v249 = 0x8E38E38E38E38E39 * ((*(v247 + 1328) - *(v247 + 1320)) >> 3);
      v250 = 5;
      do
      {
        v251 = 8 - (v245 & 7);
        if (v250 < v251)
        {
          v251 = v250;
        }

        v248 = (*(v214 + (v245 >> 3)) >> (8 - (v245 & 7) - v251)) & ~(-1 << v251) | (v248 << v251);
        v245 += v251;
        v7[3] = v245;
        v250 -= v251;
      }

      while (v250);
      if (v245 + 5 > v158)
      {
        goto LABEL_315;
      }

      v252 = 0;
      v253 = 5;
      do
      {
        v254 = 8 - (v245 & 7);
        if (v253 < v254)
        {
          v254 = v253;
        }

        v252 = (*(v214 + (v245 >> 3)) >> (8 - (v245 & 7) - v254)) & ~(-1 << v254) | (v252 << v254);
        v245 += v254;
        v7[3] = v245;
        v253 -= v254;
      }

      while (v253);
      if (v245 + 5 > v158)
      {
        goto LABEL_315;
      }

      v380 = 0;
      v255 = 5;
      do
      {
        v256 = 8 - (v245 & 7);
        if (v255 < v256)
        {
          v256 = v255;
        }

        v380 = (*(v214 + (v245 >> 3)) >> (8 - (v245 & 7) - v256)) & ~(-1 << v256) | (v380 << v256);
        v245 += v256;
        v7[3] = v245;
        v255 -= v256;
      }

      while (v255);
      if (v245 + 5 <= v158)
      {
        v376 = 0;
        v266 = 5;
        do
        {
          v267 = 8 - (v245 & 7);
          if (v266 < v267)
          {
            v267 = v266;
          }

          v376 = (*(v214 + (v245 >> 3)) >> (8 - (v245 & 7) - v267)) & ~(-1 << v267) | (v376 << v267);
          v245 += v267;
          v7[3] = v245;
          v266 -= v267;
        }

        while (v266);
        if (v249)
        {
          geo::codec::attributesForFeatureType(&v388, -1);
        }

        v257 = 1;
      }

      else
      {
LABEL_315:
        v257 = 0;
      }

      if (!v257)
      {
        v170 = 6007;
        goto LABEL_340;
      }

      v247 = *a2;
    }

    v258 = *(v247 + 1320);
    if (*(v247 + 1328) != v258)
    {
      v374 = 0;
      while (1)
      {
        v381 = (v258 + 72 * v374);
        if (v381[1])
        {
          break;
        }

        v258 = *(v247 + 1320);
        v259 = 0x8E38E38E38E38E39 * ((*(v247 + 1328) - v258) >> 3);
        if (++v374 >= v259)
        {
          goto LABEL_330;
        }
      }

      if (*(*(*a2 + 1288) + 104 * *v381 + 24))
      {
        operator new();
      }

      v169 = *MEMORY[0x1E69E9848];
      v170 = 6016;
      goto LABEL_341;
    }

    v259 = 0;
LABEL_330:
    v391[0] = &unk_1EF7F2430;
    v391[1] = a2;
    v392 = v391;
    v260 = geo::codec::_readTransitSystemsChapterLabelSet(v7 + 1, v259, v391, a2);
    if (v392 == v391)
    {
      (*(*v392 + 32))(v392);
    }

    else if (v392)
    {
      (*(*v392 + 40))();
    }

    if ((v260 & 1) == 0)
    {
      v169 = *MEMORY[0x1E69E9848];
      v170 = 6026;
      goto LABEL_341;
    }

    v261 = v7[3];
    v262 = v261 + 1;
    v263 = 8 * v7[2];
    if (v261 + 1 > v263)
    {
      v169 = *MEMORY[0x1E69E9848];
      v170 = 6033;
      goto LABEL_341;
    }

    v264 = v7[1];
    v265 = *(v264 + (v261 >> 3));
    v7[3] = v262;
    if ((v265 >> (~v261 & 7)))
    {
      if (v261 + 6 > v263)
      {
        v169 = *MEMORY[0x1E69E9848];
        v170 = 6036;
        goto LABEL_341;
      }

      v272 = 0;
      v273 = 5;
      do
      {
        v274 = 8 - (v262 & 7);
        if (v273 < v274)
        {
          v274 = v273;
        }

        v272 = (*(v264 + (v262 >> 3)) >> (8 - (v262 & 7) - v274)) & ~(-1 << v274) | (v272 << v274);
        v262 += v274;
        v7[3] = v262;
        v273 -= v274;
      }

      while (v273);
      if (v262 + 5 > v263)
      {
        goto LABEL_368;
      }

      v275 = 0;
      v276 = (v272 + 1);
      v277 = 5;
      do
      {
        v278 = 8 - (v262 & 7);
        if (v277 < v278)
        {
          v278 = v277;
        }

        v275 = (*(v264 + (v262 >> 3)) >> (8 - (v262 & 7) - v278)) & ~(-1 << v278) | (v275 << v278);
        v262 += v278;
        v7[3] = v262;
        v277 -= v278;
      }

      while (v277);
      v279 = (v275 + 1);
      if (v262 + v279 > v263)
      {
LABEL_368:
        v169 = *MEMORY[0x1E69E9848];
        v170 = 6039;
        goto LABEL_341;
      }

      if (v275 == -1)
      {
        v280 = 0;
      }

      else
      {
        LODWORD(v280) = 0;
        do
        {
          v281 = 8 - (v262 & 7);
          if (v279 < v281)
          {
            v281 = v279;
          }

          v280 = ((*(v264 + (v262 >> 3)) >> (8 - (v262 & 7) - v281)) & ~(-1 << v281) | (v280 << v281));
          v262 += v281;
          v7[3] = v262;
          v279 -= v281;
        }

        while (v279);
      }

      *&v388 = 0;
      if ((geo::codec::_makeSpaceForLabels(v280, &v388, a2) & 1) == 0)
      {
        v170 = 6042;
        goto LABEL_340;
      }

      v268 = *a2;
      v286 = v388;
      v287 = *(*a2 + 1288);
      if (*(*a2 + 1296) != v287)
      {
        v288 = 0;
        v289 = *(v268 + 864);
        v382 = *(v268 + 872) - v289;
        do
        {
          v291 = v7[3];
          v292 = v291 + 1;
          v293 = 8 * v7[2];
          if (v291 + 1 > v293)
          {
            v170 = 6049;
            goto LABEL_340;
          }

          v294 = v7[1];
          v295 = *(v294 + (v291 >> 3));
          v7[3] = v292;
          if ((v295 >> (~v291 & 7)))
          {
            if (v292 + v276 > v293)
            {
              v170 = 6052;
              goto LABEL_340;
            }

            v296 = 0;
            if (v276)
            {
              v297 = v276;
              do
              {
                v298 = 8 - (v292 & 7);
                if (v297 < v298)
                {
                  v298 = v297;
                }

                v296 = (*(v294 + (v292 >> 3)) >> (8 - (v292 & 7) - v298)) & ~(-1 << v298) | (v296 << v298);
                v292 += v298;
                v7[3] = v292;
                v297 -= v298;
              }

              while (v297);
            }

            if (v382 <= v296)
            {
              v170 = 6053;
              goto LABEL_340;
            }

            *(v287 + 104 * v288 + 88) = v286;
            *(*(v268 + 1056) + 24 * v286) = v289 + v296;
            v299 = *(v268 + 896);
            v300 = *(v268 + 904);
            __key = v296;
            v301 = bsearch(&__key, v299, v300, 0x18uLL, geo::codec::findLabelLanguageLocal);
            if (v301)
            {
              v290 = v301[2];
            }

            else
            {
              v290 = 0;
            }

            v268 = *a2;
            *(*(*a2 + 1056) + 24 * v286++ + 8) = v290;
          }

          ++v288;
          v287 = *(v268 + 1288);
        }

        while (v288 < 0x4EC4EC4EC4EC4EC5 * ((*(v268 + 1296) - v287) >> 3));
      }

      if (v286 != *(v268 + 1064))
      {
        v170 = 6061;
        goto LABEL_340;
      }
    }

    else
    {
      v268 = *a2;
    }

    v24 = geo::codec::_convertTransitLineKeys((v268 + 1384), *(v268 + 1400), (v268 + 1392), a2);
    if ((v24 & 1) == 0)
    {
      v169 = *MEMORY[0x1E69E9848];
      v170 = 6066;
      goto LABEL_341;
    }

    v269 = *(v7 + 16);
    v270 = v7[3];
    if (v269 >= 0x2C)
    {
      v271 = 8 * v7[2];
      if (v270 + 5 > v271)
      {
        v169 = *MEMORY[0x1E69E9848];
        v170 = 6070;
        goto LABEL_341;
      }

      v282 = 0;
      v283 = v7[1];
      v284 = 5;
      do
      {
        v285 = 8 - (v270 & 7);
        if (v284 < v285)
        {
          v285 = v284;
        }

        v282 = (*(v283 + (v270 >> 3)) >> (8 - (v270 & 7) - v285)) & ~(-1 << v285) | (v282 << v285);
        v270 += v285;
        v7[3] = v270;
        v284 -= v285;
      }

      while (v284);
      if (v270 + 5 > v271)
      {
        v169 = *MEMORY[0x1E69E9848];
        v170 = 6073;
        goto LABEL_341;
      }

      v302 = 0;
      v303 = (v282 + 1);
      v304 = 5;
      do
      {
        v305 = 8 - (v270 & 7);
        if (v304 < v305)
        {
          v305 = v304;
        }

        v24 = (-1 << v305);
        v302 = (*(v283 + (v270 >> 3)) >> (8 - (v270 & 7) - v305)) & ~v24 | (v302 << v305);
        v270 += v305;
        v7[3] = v270;
        v304 -= v305;
      }

      while (v304);
      v306 = v270 + 1;
      if (v270 + 1 > v271)
      {
        v170 = 6076;
        goto LABEL_340;
      }

      v307 = *(v283 + (v270 >> 3));
      v7[3] = v306;
      if ((v307 >> (~v270 & 7)))
      {
        if (v270 + 6 > v271)
        {
          v170 = 6080;
          goto LABEL_340;
        }

        v308 = 0;
        v309 = (v302 + 1);
        v310 = 5;
        do
        {
          v311 = 8 - (v306 & 7);
          if (v310 < v311)
          {
            v311 = v310;
          }

          v308 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v311)) & ~(-1 << v311) | (v308 << v311);
          v306 += v311;
          v7[3] = v306;
          v310 -= v311;
        }

        while (v310);
        if (v306 + 5 > v271)
        {
          v170 = 6083;
LABEL_340:
          v169 = *MEMORY[0x1E69E9848];
          goto LABEL_341;
        }

        v312 = 0;
        v313 = (v308 + 1);
        v314 = 5;
        do
        {
          v315 = 8 - (v306 & 7);
          if (v314 < v315)
          {
            v315 = v314;
          }

          v312 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v315)) & ~(-1 << v315) | (v312 << v315);
          v306 += v315;
          v7[3] = v306;
          v314 -= v315;
        }

        while (v314);
        if (v306 + 5 > v271)
        {
          goto LABEL_435;
        }

        v316 = 0;
        v317 = (v312 + 1);
        v318 = 5;
        v24 = 8;
        do
        {
          v319 = 8 - (v306 & 7);
          if (v318 < v319)
          {
            v319 = v318;
          }

          v316 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v319)) & ~(-1 << v319) | (v316 << v319);
          v306 += v319;
          v7[3] = v306;
          v318 -= v319;
        }

        while (v318);
        v320 = (v316 + 1);
        if (v306 + v320 > v271)
        {
LABEL_435:
          v170 = 6086;
          goto LABEL_340;
        }

        if (v320)
        {
          v321 = 0;
          v24 = 8;
          do
          {
            v322 = 8 - (v306 & 7);
            if (v320 < v322)
            {
              v322 = v320;
            }

            v321 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v322)) & ~(-1 << v322) | (v321 << v322);
            v306 += v322;
            v7[3] = v306;
            v320 -= v322;
          }

          while (v320);
          if (v321)
          {
            v323 = 0;
            v24 = 8;
            while (1)
            {
              if (v306 + v313 > v271)
              {
                v170 = 6090;
                goto LABEL_340;
              }

              v324 = 0;
              if (v313)
              {
                v325 = v313;
                do
                {
                  v326 = 8 - (v306 & 7);
                  if (v325 < v326)
                  {
                    v326 = v325;
                  }

                  v324 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v326)) & ~(-1 << v326) | (v324 << v326);
                  v306 += v326;
                  v7[3] = v306;
                  v325 -= v326;
                }

                while (v325);
                if (v324 == -1)
                {
                  v170 = 6091;
                  goto LABEL_340;
                }
              }

              if (v306 + v317 > v271)
              {
                v170 = 6094;
                goto LABEL_340;
              }

              if (v317)
              {
                v327 = 0;
                v328 = v317;
                do
                {
                  v329 = 8 - (v306 & 7);
                  if (v328 < v329)
                  {
                    v329 = v328;
                  }

                  v327 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v329)) & ~(-1 << v329) | (v327 << v329);
                  v306 += v329;
                  v7[3] = v306;
                  v328 -= v329;
                }

                while (v328);
                if (v327)
                {
                  break;
                }
              }

LABEL_443:
              if (++v323 == v321)
              {
                goto LABEL_480;
              }
            }

            v330 = 0;
            v331 = *a2;
            while (1)
            {
              if (v306 + v303 > v271)
              {
                v170 = 6098;
                goto LABEL_340;
              }

              v332 = 0;
              if (v303)
              {
                v333 = v303;
                do
                {
                  v334 = 8 - (v306 & 7);
                  if (v333 < v334)
                  {
                    v334 = v333;
                  }

                  v332 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v334)) & ~(-1 << v334) | (v332 << v334);
                  v306 += v334;
                  v7[3] = v306;
                  v333 -= v334;
                }

                while (v333);
              }

              v335 = v332;
              v336 = v331[165];
              if (0x8E38E38E38E38E39 * ((v331[166] - v336) >> 3) <= v335)
              {
                v170 = 6099;
                goto LABEL_340;
              }

              if (v306 + v309 > v271)
              {
                v170 = 6104;
                goto LABEL_340;
              }

              v337 = 0;
              if (v309)
              {
                v338 = v309;
                do
                {
                  v339 = 8 - (v306 & 7);
                  if (v338 < v339)
                  {
                    v339 = v338;
                  }

                  v337 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v339)) & ~(-1 << v339) | (v337 << v339);
                  v306 += v339;
                  v7[3] = v306;
                  v338 -= v339;
                }

                while (v338);
              }

              v340 = (v336 + 72 * v335);
              if (v340[1] <= v337)
              {
                break;
              }

              v341 = v331[161] + 104 * *v340 + 104 * v337;
              v344 = *(v341 + 92);
              v342 = (v341 + 92);
              v343 = v344;
              if (v344 != -1 && v343 != v324)
              {
                v170 = 6108;
                goto LABEL_340;
              }

              *v342 = v324;
              if (++v330 == v327)
              {
                goto LABEL_443;
              }
            }

            v170 = 6105;
            goto LABEL_340;
          }
        }
      }

LABEL_480:
      if (v269 < 0x2E)
      {
        v270 = v306;
      }

      else
      {
        if (v306 + 5 > v271)
        {
          v169 = *MEMORY[0x1E69E9848];
          v170 = 6118;
          goto LABEL_341;
        }

        v347 = 0;
        v348 = 5;
        do
        {
          v24 = 8 - (v306 & 7);
          if (v348 < v24)
          {
            v24 = v348;
          }

          v347 = (*(v283 + (v306 >> 3)) >> (8 - (v306 & 7) - v24)) & ~(-1 << v24) | (v347 << v24);
          v306 += v24;
          v7[3] = v306;
          v348 -= v24;
        }

        while (v348);
        v349 = v306 + 1;
        if (v306 + 1 > v271)
        {
          v170 = 6121;
          goto LABEL_340;
        }

        v350 = *(v283 + (v306 >> 3));
        v7[3] = v349;
        if ((v350 >> (~v306 & 7)))
        {
          v351 = *a2;
          v352 = *(*a2 + 1320);
          if (*(*a2 + 1328) != v352)
          {
            v353 = 0;
            v354 = (v347 + 1);
            v24 = 0xFFFFFFFFLL;
            while (1)
            {
              v355 = (v352 + 72 * v353);
              v356 = v355[1];
              if (v356)
              {
                break;
              }

LABEL_496:
              ++v353;
              v352 = v351[165];
              if (v353 >= 0x8E38E38E38E38E39 * ((v351[166] - v352) >> 3))
              {
                goto LABEL_507;
              }
            }

            v357 = 0;
            v351 = *a2;
            while (v349 + v354 <= v271)
            {
              v358 = 0;
              if (v354)
              {
                v359 = v354;
                do
                {
                  v360 = 8 - (v349 & 7);
                  if (v359 < v360)
                  {
                    v360 = v359;
                  }

                  v358 = (*(v283 + (v349 >> 3)) >> (8 - (v349 & 7) - v360)) & ~(-1 << v360) | (v358 << v360);
                  v349 += v360;
                  v7[3] = v349;
                  v359 -= v360;
                }

                while (v359);
              }

              *(v351[161] + 104 * v357++ + 104 * *v355 + 96) = v358;
              if (v357 == v356)
              {
                goto LABEL_496;
              }
            }

            v170 = 6128;
            goto LABEL_340;
          }
        }

LABEL_507:
        if (v269 < 0x30)
        {
          v270 = v349;
        }

        else
        {
          v270 = v349 + 1;
          if (v349 + 1 > v271)
          {
            v170 = 6139;
            goto LABEL_340;
          }

          v361 = *(v283 + (v349 >> 3));
          v7[3] = v270;
          if ((v361 >> (~v349 & 7)))
          {
            if (v349 + 6 > v271)
            {
              v170 = 6143;
              goto LABEL_340;
            }

            v362 = 0;
            v363 = 5;
            do
            {
              v364 = 8 - (v270 & 7);
              if (v363 < v364)
              {
                v364 = v363;
              }

              v362 = (*(v283 + (v270 >> 3)) >> (8 - (v270 & 7) - v364)) & ~(-1 << v364) | (v362 << v364);
              v270 += v364;
              v7[3] = v270;
              v363 -= v364;
            }

            while (v363);
            v365 = *(*a2 + 1328);
            v366 = *(*a2 + 1320);
            v367 = v365 - v366;
            if (v365 != v366)
            {
              v368 = 0;
              v369 = (v362 + 1);
              v370 = 0x8E38E38E38E38E39 * (v367 >> 3);
              while (v270 + v369 <= v271)
              {
                v371 = 0;
                if (v369)
                {
                  v372 = v369;
                  do
                  {
                    v373 = 8 - (v270 & 7);
                    if (v372 < v373)
                    {
                      v373 = v372;
                    }

                    v371 = (*(v283 + (v270 >> 3)) >> (8 - (v270 & 7) - v373)) & ~(-1 << v373) | (v371 << v373);
                    v270 += v373;
                    v7[3] = v270;
                    v372 -= v373;
                  }

                  while (v372);
                }

                v24 = v366 + 72 * v368;
                *(v24 + 64) = v371;
                if (++v368 >= v370)
                {
                  goto LABEL_484;
                }
              }

              v170 = 6147;
              goto LABEL_340;
            }
          }
        }
      }
    }

LABEL_484:
    v346 = v7[6] + (v270 >> 3);
    if ((v270 & 7) != 0)
    {
      ++v346;
    }

    v7[6] = v346;
    *(v7 + 32) = 0;
    v14 = 1;
LABEL_342:
    v3 = v385;
    if (a1)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v222 = 0;
  v223 = (v216 + 1);
  v224 = 0x4EC4EC4EC4EC4EC5 * (v221 >> 3);
  while (1)
  {
    v225 = v213 + 1;
    if (v213 + 1 > v158)
    {
      v23 = 5973;
      goto LABEL_259;
    }

    v226 = *(v214 + (v213 >> 3));
    v7[3] = v225;
    if ((v226 >> (~v213 & 7)))
    {
      break;
    }

LABEL_267:
    ++v222;
    v213 = v225;
    if (v222 >= v224)
    {
      goto LABEL_278;
    }
  }

  if (v225 + v223 <= v158)
  {
    v227 = 0;
    if (v223)
    {
      v228 = v223;
      do
      {
        v229 = 8 - (v225 & 7);
        if (v228 < v229)
        {
          v229 = v228;
        }

        v227 = (*(v214 + (v225 >> 3)) >> (8 - (v225 & 7) - v229)) & ~(-1 << v229) | (v227 << v229);
        v225 += v229;
        v7[3] = v225;
        v228 -= v229;
      }

      while (v228);
    }

    *(v220 + 104 * v222 + 84) = v227 * 0.1;
    goto LABEL_267;
  }

  v23 = 5976;
LABEL_259:
  v22 = *MEMORY[0x1E69E9848];
LABEL_21:
  v24 = fprintf(v22, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v23);
  v14 = 0;
  if (a1)
  {
LABEL_22:
    if (*v7)
    {
      v25 = v7[5];
      v26 = geo::codec::zone_mallocator::instance(v24);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v26, v25);
    }

    v27 = geo::codec::zone_mallocator::instance(v24);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v27, v7);
  }

LABEL_25:
  v28 = std::chrono::steady_clock::now().__d_.__rep_;
  v390 = 128;
  *&v388 = &v390;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v3 + 1920), &v390, &v388) + 4) = ((v28 - rep) / 1000) * 0.001;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  FeatureStyleAttributesSet::~FeatureStyleAttributesSet(&v399);
  return v14;
}

void sub_1866C7794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  a33 = 128;
  a29 = &a33;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((a26 + 1920), &a33, &a29) + 4) = ((rep - a28) / 1000) * 0.001;
  if (v33)
  {
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }
  }

  FeatureStyleAttributesSet::~FeatureStyleAttributesSet((v34 - 152));
  _Unwind_Resume(a1);
}

void _recursivelyClearAllRelatedOperations(void *a1)
{
  v1 = a1;
  v3 = [v1 baseTile];
  v2 = [v1 localizationTile];
  [v1 clearAllRelatedOperations];

  if (v3)
  {
    _recursivelyClearAllRelatedOperations(v3);
  }

  if (v2)
  {
    _recursivelyClearAllRelatedOperations(v2);
  }
}

void FeatureStyleAttributes::replaceAttributes(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = *(a1 + 33);
    do
    {
      v6 = *a1;
      if (v5)
      {
        v7 = 0;
        v8 = v5;
        v9 = *a1;
        do
        {
          v10 = *v9;
          v9 += 2;
          if (v10 == *(a2 + 8 * v4))
          {
            v6[2 * v7 + 1] = *(a2 + 4 + 8 * v4);
            goto LABEL_12;
          }

          ++v7;
        }

        while (v5 != v7);
        if (v5 <= 0x1Fu)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = 0;
LABEL_10:
        *&v6[2 * v8] = *(a2 + 8 * v4);
        v5 = *(a1 + 33) + 1;
        *(a1 + 33) = v5;
        *(a1 + 35) = 0;
      }

LABEL_12:
      ++v4;
    }

    while (v4 != a3);
  }

  if ((*(a1 + 35) & 1) == 0)
  {
    qsort(*a1, *(a1 + 33), 8uLL, FeatureStyleAttributes::compareStylePairs);
    *(a1 + 35) = 1;
  }
}

void geo::codec::VectorTile::DaVinciReadDaVinci3DDataDealloc(uint64_t this, uint64_t a2, const char *a3)
{
  v3 = this;
  v251 = *MEMORY[0x1E69E9840];
  v236 = this;
  v244 = *(this + 2016);
  if (v244)
  {
    v241 = *(this + 2008);
    if (*(this + 2008))
    {
      v4 = 0;
      while (1)
      {
        v5 = &v244[16 * v4];
        if (*(v5 + 2))
        {
          break;
        }

LABEL_4:
        if (++v4 == v241)
        {
          goto LABEL_23;
        }
      }

      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 1);
        v8 = geo::codec::zone_mallocator::instance(this);
        v9 = pthread_rwlock_rdlock((v8 + 32));
        if (v9)
        {
          {
            geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
          }

          v10 = geo::read_write_lock::logFailure(int,char const*)::log;
          if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
          {
            break;
          }
        }

        if (v7)
        {
          goto LABEL_12;
        }

LABEL_13:
        malloc_zone_free(*v8, v7);
        this = pthread_rwlock_unlock((v8 + 32));
        v11 = this;
        if (this)
        {
          {
            geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
          }

          v12 = geo::read_write_lock::logFailure(int,char const*)::log;
          this = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
          if (this)
          {
            *buf = 136315394;
            v248 = "unlock";
            v249 = 1024;
            v250 = v11;
            _os_log_fault_impl(&dword_18660C000, v12, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          }
        }

        if (++v6 >= *(v5 + 2))
        {
          goto LABEL_4;
        }
      }

      *buf = 136315394;
      v248 = "read lock";
      v249 = 1024;
      v250 = v9;
      _os_log_fault_impl(&dword_18660C000, v10, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
      if (!v7)
      {
        goto LABEL_13;
      }

LABEL_12:
      atomic_fetch_add((v8 + 24), 0xFFFFFFFF);
      goto LABEL_13;
    }

LABEL_23:
    v13 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciExplicitTextureMappingData>(v13, v244);
    v3 = v236;
  }

  *(v3 + 2016) = 0;
  *(v3 + 2008) = 0;
  v14 = *(v3 + 2032);
  if (v14)
  {
    v15 = geo::codec::zone_mallocator::instance(this);
    v16 = pthread_rwlock_rdlock((v15 + 32));
    if (v16)
    {
      geo::read_write_lock::logFailure(v16, "read lock", v17);
    }

    atomic_fetch_add((v15 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v15, v14);
    this = pthread_rwlock_unlock((v15 + 32));
    if (this)
    {
      geo::read_write_lock::logFailure(this, "unlock", v18);
    }

    *(v3 + 2032) = 0;
  }

  v19 = *(v3 + 2048);
  if (v19)
  {
    v20 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v20, v19);
    *(v3 + 2048) = 0;
  }

  v21 = *(v3 + 2064);
  if (v21)
  {
    v22 = *(v3 + 2060);
    if (*(v3 + 2060))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(v3 + 2064) + v23;
        if ((*(v25 + 24) & 1) == 0)
        {
          v26 = *(v25 + 48);
          v27 = geo::codec::zone_mallocator::instance(this);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v27, v26);
          v28 = *(*(v3 + 2064) + v23 + 32);
          v30 = geo::codec::zone_mallocator::instance(v29);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v30, v28);
          v22 = *(v3 + 2060);
        }

        ++v24;
        v23 += 80;
      }

      while (v24 < v22);
      v21 = *(v3 + 2064);
    }

    v31 = geo::codec::zone_mallocator::instance(this);
    v32 = pthread_rwlock_rdlock((v31 + 32));
    if (v32)
    {
      geo::read_write_lock::logFailure(v32, "read lock", v33);
    }

    if (v21)
    {
      atomic_fetch_add((v31 + 24), 0xFFFFFFFF);
    }

    malloc_zone_free(*v31, v21);
    this = pthread_rwlock_unlock((v31 + 32));
    if (this)
    {
      geo::read_write_lock::logFailure(this, "unlock", v34);
    }

    *(v3 + 2064) = 0;
    *(v3 + 2060) = 0;
  }

  v35 = *(v3 + 2072);
  if (v35)
  {
    v36 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v36, v35);
    *(v3 + 2072) = 0;
  }

  geo::codec::DaVinciRenderablesDealloc(*(v3 + 2192), *(v3 + 2184));
  *(v3 + 2192) = 0;
  *(v3 + 2184) = 0;
  geo::codec::DaVinciRenderablesDealloc(*(v3 + 2208), *(v3 + 2200));
  *(v3 + 2208) = 0;
  *(v3 + 2200) = 0;
  v38 = *(v3 + 2312);
  if (v38)
  {
    v39 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciLineLoop>(v39, v38);
    *(v3 + 2312) = 0;
  }

  v40 = *(v3 + 2328);
  if (v40)
  {
    v41 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciBuildingSection>(v41, v40);
    *(v3 + 2328) = 0;
  }

  v42 = *(v3 + 2768);
  if (v42)
  {
    v43 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v43, v42);
    *(v3 + 2768) = 0;
  }

  v44 = *(v3 + 2776);
  if (v44)
  {
    v45 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v45, v44);
    *(v3 + 2776) = 0;
  }

  v46 = *(v3 + 2784);
  if (v46)
  {
    v47 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v47, v46);
    *(v3 + 2784) = 0;
  }

  v48 = *(v3 + 3816);
  if (v48)
  {
    v49 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciBuildingSection>(v49, v48);
    *(v3 + 3816) = 0;
  }

  v50 = *(v3 + 3832);
  if (v50)
  {
    v51 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciLineLoop>(v51, v50);
    *(v3 + 3832) = 0;
  }

  v52 = *(v3 + 2808);
  if (!v52)
  {
    goto LABEL_84;
  }

  if (!*(v3 + 2816))
  {
    goto LABEL_77;
  }

  v53 = 0;
  v54 = 0;
  do
  {
    v64 = *(v3 + 2808);
    if (*(v64 + v53 + 20) == 1)
    {
      v67 = *(v64 + v53 + 26);
      if (v67 == 16)
      {
        v37 = *(v64 + v53 + 8);
        if (v37)
        {
          goto LABEL_65;
        }
      }

      else if (v67 == 8)
      {
        v37 = *(v64 + v53 + 8);
        if (v37)
        {
LABEL_65:
          v37 = MEMORY[0x18CFD1E20]();
        }
      }
    }

    else if (!*(v64 + v53 + 20))
    {
      v65 = *(v64 + v53 + 8);
      v66 = geo::codec::zone_mallocator::instance(v37);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v66, v65);
    }

    v55 = (v64 + v53);
    v56 = v55[6];
    v57 = geo::codec::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v57, v56);
    v58 = v55[8];
    v60 = geo::codec::zone_mallocator::instance(v59);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v60, v58);
    v61 = v55[4];
    v63 = geo::codec::zone_mallocator::instance(v62);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v63, v61);
    ++v54;
    v53 += 80;
  }

  while (v54 < *(v3 + 2816));
  v52 = *(v3 + 2808);
LABEL_77:
  v68 = geo::codec::zone_mallocator::instance(v37);
  v69 = pthread_rwlock_rdlock((v68 + 32));
  if (v69)
  {
    geo::read_write_lock::logFailure(v69, "read lock", v70);
  }

  if (v52)
  {
    atomic_fetch_add((v68 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*v68, v52);
  v37 = pthread_rwlock_unlock((v68 + 32));
  if (v37)
  {
    geo::read_write_lock::logFailure(v37, "unlock", v71);
  }

  *(v3 + 2808) = 0;
  *(v3 + 2816) = 0;
LABEL_84:
  v72 = *(v3 + 2792);
  if (v72)
  {
    if (*(v3 + 2800))
    {
      v73 = 0;
      v74 = 0;
      do
      {
        v75 = *(v3 + 2792) + v73;
        if (*(v75 + 16) == 1)
        {
          v37 = *v75;
          if (*v75)
          {
            v37 = MEMORY[0x18CFD1E20](v37, 0x1000C8077774924);
          }
        }

        else if (!*(v75 + 16))
        {
          v76 = *v75;
          v77 = geo::codec::zone_mallocator::instance(v37);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v77, v76);
        }

        ++v74;
        v73 += 24;
      }

      while (v74 < *(v3 + 2800));
      v72 = *(v3 + 2792);
    }

    v78 = geo::codec::zone_mallocator::instance(v37);
    v79 = pthread_rwlock_rdlock((v78 + 32));
    if (v79)
    {
      geo::read_write_lock::logFailure(v79, "read lock", v80);
    }

    if (v72)
    {
      atomic_fetch_add((v78 + 24), 0xFFFFFFFF);
    }

    malloc_zone_free(*v78, v72);
    v37 = pthread_rwlock_unlock((v78 + 32));
    if (v37)
    {
      geo::read_write_lock::logFailure(v37, "unlock", v81);
    }

    *(v3 + 2792) = 0;
    *(v3 + 2800) = 0;
  }

  ptr = *(v3 + 2160);
  if (ptr)
  {
    v237 = *(v3 + 2152);
    if (*(v3 + 2152))
    {
      v82 = 0;
      while (1)
      {
        v239 = v82;
        v83 = &ptr[40 * v82];
        v245 = v83;
        if (v83[12])
        {
          v84 = 0;
          v85 = 8;
          while (1)
          {
            v86 = *(*(v83 + 4) + v85);
            v87 = geo::codec::zone_mallocator::instance(v37);
            v88 = pthread_rwlock_rdlock((v87 + 32));
            if (v88)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v89 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                break;
              }
            }

            if (v86)
            {
              goto LABEL_111;
            }

LABEL_112:
            malloc_zone_free(*v87, v86);
            v37 = pthread_rwlock_unlock((v87 + 32));
            v90 = v37;
            if (v37)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v91 = geo::read_write_lock::logFailure(int,char const*)::log;
              v37 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
              if (v37)
              {
                *buf = 136315394;
                v248 = "unlock";
                v249 = 1024;
                v250 = v90;
                _os_log_fault_impl(&dword_18660C000, v91, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
              }
            }

            ++v84;
            v83 = v245;
            v85 += 16;
            if (v84 >= v245[12])
            {
              goto LABEL_122;
            }
          }

          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v88;
          _os_log_fault_impl(&dword_18660C000, v89, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (!v86)
          {
            goto LABEL_112;
          }

LABEL_111:
          atomic_fetch_add((v87 + 24), 0xFFFFFFFF);
          goto LABEL_112;
        }

LABEL_122:
        v92 = *(v83 + 4);
        v93 = geo::codec::zone_mallocator::instance(v37);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciTextureData>(v93, v92);
        v95 = v245;
        if (*(v245 + 5))
        {
          v96 = 0;
          while (1)
          {
            v242 = v96;
            v97 = *(v95 + 3) + 24 * v96;
            v98 = *(v97 + 8);
            v99 = geo::codec::zone_mallocator::instance(v94);
            v100 = pthread_rwlock_rdlock((v99 + 32));
            if (v100)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v101 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                break;
              }
            }

            if (v98)
            {
              goto LABEL_129;
            }

LABEL_130:
            malloc_zone_free(*v99, v98);
            v102 = pthread_rwlock_unlock((v99 + 32));
            v103 = v102;
            if (v102)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v104 = geo::read_write_lock::logFailure(int,char const*)::log;
              v102 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
              if (v102)
              {
                *buf = 136315394;
                v248 = "unlock";
                v249 = 1024;
                v250 = v103;
                _os_log_fault_impl(&dword_18660C000, v104, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
                if (!*(v97 + 16))
                {
                  goto LABEL_169;
                }

LABEL_134:
                v105 = 0;
                v106 = 0;
                while (2)
                {
                  v107 = *v97;
                  v108 = *(*v97 + v105 + 8);
                  v109 = geo::codec::zone_mallocator::instance(v102);
                  v110 = pthread_rwlock_rdlock((v109 + 32));
                  if (!v110)
                  {
                    goto LABEL_139;
                  }

                  {
                    geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                  }

                  v111 = geo::read_write_lock::logFailure(int,char const*)::log;
                  if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315394;
                    v248 = "read lock";
                    v249 = 1024;
                    v250 = v110;
                    _os_log_fault_impl(&dword_18660C000, v111, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
                    if (v108)
                    {
LABEL_140:
                      atomic_fetch_add((v109 + 24), 0xFFFFFFFF);
                    }
                  }

                  else
                  {
LABEL_139:
                    if (v108)
                    {
                      goto LABEL_140;
                    }
                  }

                  malloc_zone_free(*v109, v108);
                  v112 = pthread_rwlock_unlock((v109 + 32));
                  v113 = v112;
                  if (v112)
                  {
                    {
                      geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                    }

                    v114 = geo::read_write_lock::logFailure(int,char const*)::log;
                    v112 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
                    if (v112)
                    {
                      *buf = 136315394;
                      v248 = "unlock";
                      v249 = 1024;
                      v250 = v113;
                      _os_log_fault_impl(&dword_18660C000, v114, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
                    }
                  }

                  v115 = *&v107[v105 + 16];
                  v116 = geo::codec::zone_mallocator::instance(v112);
                  v117 = pthread_rwlock_rdlock((v116 + 32));
                  if (!v117)
                  {
                    goto LABEL_148;
                  }

                  {
                    geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                  }

                  v118 = geo::read_write_lock::logFailure(int,char const*)::log;
                  if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315394;
                    v248 = "read lock";
                    v249 = 1024;
                    v250 = v117;
                    _os_log_fault_impl(&dword_18660C000, v118, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
                    if (v115)
                    {
LABEL_149:
                      atomic_fetch_add((v116 + 24), 0xFFFFFFFF);
                    }
                  }

                  else
                  {
LABEL_148:
                    if (v115)
                    {
                      goto LABEL_149;
                    }
                  }

                  malloc_zone_free(*v116, v115);
                  v102 = pthread_rwlock_unlock((v116 + 32));
                  v119 = v102;
                  if (v102)
                  {
                    {
                      geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                    }

                    v120 = geo::read_write_lock::logFailure(int,char const*)::log;
                    v102 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
                    if (v102)
                    {
                      *buf = 136315394;
                      v248 = "unlock";
                      v249 = 1024;
                      v250 = v119;
                      _os_log_fault_impl(&dword_18660C000, v120, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
                    }
                  }

                  ++v106;
                  v105 += 32;
                  if (v106 >= *(v97 + 16))
                  {
                    goto LABEL_169;
                  }

                  continue;
                }
              }
            }

            if (*(v97 + 16))
            {
              goto LABEL_134;
            }

LABEL_169:
            v121 = *v97;
            v122 = geo::codec::zone_mallocator::instance(v102);
            v123 = pthread_rwlock_rdlock((v122 + 32));
            if (v123)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v124 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v248 = "read lock";
                v249 = 1024;
                v250 = v123;
                _os_log_fault_impl(&dword_18660C000, v124, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
                if (!v121)
                {
                  goto LABEL_174;
                }

LABEL_173:
                atomic_fetch_add((v122 + 24), 0xFFFFFFFF);
                goto LABEL_174;
              }
            }

            if (v121)
            {
              goto LABEL_173;
            }

LABEL_174:
            malloc_zone_free(*v122, v121);
            v94 = pthread_rwlock_unlock((v122 + 32));
            v125 = v94;
            if (v94)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v126 = geo::read_write_lock::logFailure(int,char const*)::log;
              v94 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
              if (v94)
              {
                *buf = 136315394;
                v248 = "unlock";
                v249 = 1024;
                v250 = v125;
                _os_log_fault_impl(&dword_18660C000, v126, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
              }
            }

            v95 = v245;
            v96 = v242 + 1;
            if ((v242 + 1) >= *(v245 + 5))
            {
              goto LABEL_188;
            }
          }

          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v100;
          _os_log_fault_impl(&dword_18660C000, v101, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (!v98)
          {
            goto LABEL_130;
          }

LABEL_129:
          atomic_fetch_add((v99 + 24), 0xFFFFFFFF);
          goto LABEL_130;
        }

LABEL_188:
        v127 = *(v95 + 3);
        v128 = geo::codec::zone_mallocator::instance(v94);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciMaterial>(v128, v127);
        v129 = *(v245 + 2);
        v130 = *(v129 + 1);
        v132 = geo::codec::zone_mallocator::instance(v131);
        v133 = pthread_rwlock_rdlock((v132 + 32));
        if (v133)
        {
          geo::read_write_lock::logFailure(v133, "read lock", v134);
        }

        if (v130)
        {
          atomic_fetch_add((v132 + 24), 0xFFFFFFFF);
        }

        malloc_zone_free(*v132, v130);
        v135 = pthread_rwlock_unlock((v132 + 32));
        if (v135)
        {
          geo::read_write_lock::logFailure(v135, "unlock", v136);
        }

        if (v129[8])
        {
          break;
        }

LABEL_227:
        v153 = *v129;
        v154 = geo::codec::zone_mallocator::instance(v135);
        v155 = pthread_rwlock_rdlock((v154 + 32));
        if (v155)
        {
          geo::read_write_lock::logFailure(v155, "read lock", v156);
        }

        if (v153)
        {
          atomic_fetch_add((v154 + 24), 0xFFFFFFFF);
        }

        malloc_zone_free(*v154, v153);
        v157 = pthread_rwlock_unlock((v154 + 32));
        if (v157)
        {
          geo::read_write_lock::logFailure(v157, "unlock", v158);
        }

        v159 = geo::codec::zone_mallocator::instance(v157);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciMaterial>(v159, v129);
        v82 = v239 + 1;
        if (v239 + 1 == v237)
        {
          goto LABEL_234;
        }
      }

      v137 = 0;
      v138 = 0;
      while (2)
      {
        v139 = *v129;
        v140 = *(*v129 + v137 + 8);
        v141 = geo::codec::zone_mallocator::instance(v135);
        v142 = pthread_rwlock_rdlock((v141 + 32));
        if (!v142)
        {
          goto LABEL_200;
        }

        {
          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
        }

        v143 = geo::read_write_lock::logFailure(int,char const*)::log;
        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v142;
          _os_log_fault_impl(&dword_18660C000, v143, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (v140)
          {
LABEL_201:
            atomic_fetch_add((v141 + 24), 0xFFFFFFFF);
          }
        }

        else
        {
LABEL_200:
          if (v140)
          {
            goto LABEL_201;
          }
        }

        malloc_zone_free(*v141, v140);
        v144 = pthread_rwlock_unlock((v141 + 32));
        v145 = v144;
        if (v144)
        {
          {
            geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
          }

          v146 = geo::read_write_lock::logFailure(int,char const*)::log;
          v144 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
          if (v144)
          {
            *buf = 136315394;
            v248 = "unlock";
            v249 = 1024;
            v250 = v145;
            _os_log_fault_impl(&dword_18660C000, v146, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          }
        }

        v147 = *&v139[v137 + 16];
        v148 = geo::codec::zone_mallocator::instance(v144);
        v149 = pthread_rwlock_rdlock((v148 + 32));
        if (!v149)
        {
          goto LABEL_209;
        }

        {
          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
        }

        v150 = geo::read_write_lock::logFailure(int,char const*)::log;
        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v149;
          _os_log_fault_impl(&dword_18660C000, v150, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (v147)
          {
LABEL_210:
            atomic_fetch_add((v148 + 24), 0xFFFFFFFF);
          }
        }

        else
        {
LABEL_209:
          if (v147)
          {
            goto LABEL_210;
          }
        }

        malloc_zone_free(*v148, v147);
        v135 = pthread_rwlock_unlock((v148 + 32));
        v151 = v135;
        if (v135)
        {
          {
            geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
          }

          v152 = geo::read_write_lock::logFailure(int,char const*)::log;
          v135 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
          if (v135)
          {
            *buf = 136315394;
            v248 = "unlock";
            v249 = 1024;
            v250 = v151;
            _os_log_fault_impl(&dword_18660C000, v152, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          }
        }

        ++v138;
        v137 += 32;
        if (v138 >= v129[8])
        {
          goto LABEL_227;
        }

        continue;
      }
    }

LABEL_234:
    v160 = geo::codec::zone_mallocator::instance(v37);
    v161 = pthread_rwlock_rdlock((v160 + 32));
    if (v161)
    {
      geo::read_write_lock::logFailure(v161, "read lock", v162);
    }

    atomic_fetch_add((v160 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v160, ptr);
    v3 = v236;
    v37 = pthread_rwlock_unlock((v160 + 32));
    if (v37)
    {
      geo::read_write_lock::logFailure(v37, "unlock", v163);
    }
  }

  *(v3 + 2160) = 0;
  *(v3 + 2152) = 0;
  v243 = *(v3 + 2176);
  if (v243)
  {
    v240 = *(v3 + 2168);
    if (*(v3 + 2168))
    {
      v164 = 0;
      while (1)
      {
        v246 = v164;
        v165 = &v243[56 * v164];
        v166 = *v165;
        v167 = geo::codec::zone_mallocator::instance(v37);
        v168 = pthread_rwlock_rdlock((v167 + 32));
        if (v168)
        {
          geo::read_write_lock::logFailure(v168, "read lock", v169);
        }

        if (v166)
        {
          atomic_fetch_add((v167 + 24), 0xFFFFFFFF);
        }

        malloc_zone_free(*v167, v166);
        v170 = pthread_rwlock_unlock((v167 + 32));
        if (v170)
        {
          geo::read_write_lock::logFailure(v170, "unlock", v171);
        }

        if (*(v165 + 21))
        {
          v172 = 0;
          v173 = 8;
          while (1)
          {
            v174 = *(*(v165 + 1) + v173);
            v175 = geo::codec::zone_mallocator::instance(v170);
            v176 = pthread_rwlock_rdlock((v175 + 32));
            if (v176)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v177 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                break;
              }
            }

            if (v174)
            {
              goto LABEL_254;
            }

LABEL_255:
            malloc_zone_free(*v175, v174);
            v170 = pthread_rwlock_unlock((v175 + 32));
            v178 = v170;
            if (v170)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v179 = geo::read_write_lock::logFailure(int,char const*)::log;
              v170 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
              if (v170)
              {
                *buf = 136315394;
                v248 = "unlock";
                v249 = 1024;
                v250 = v178;
                _os_log_fault_impl(&dword_18660C000, v179, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
              }
            }

            ++v172;
            v173 += 16;
            if (v172 >= *(v165 + 21))
            {
              goto LABEL_265;
            }
          }

          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v176;
          _os_log_fault_impl(&dword_18660C000, v177, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (!v174)
          {
            goto LABEL_255;
          }

LABEL_254:
          atomic_fetch_add((v175 + 24), 0xFFFFFFFF);
          goto LABEL_255;
        }

LABEL_265:
        v180 = *(v165 + 1);
        v181 = geo::codec::zone_mallocator::instance(v170);
        v182 = pthread_rwlock_rdlock((v181 + 32));
        if (v182)
        {
          geo::read_write_lock::logFailure(v182, "read lock", v183);
        }

        if (v180)
        {
          atomic_fetch_add((v181 + 24), 0xFFFFFFFF);
        }

        malloc_zone_free(*v181, v180);
        v184 = pthread_rwlock_unlock((v181 + 32));
        if (v184)
        {
          geo::read_write_lock::logFailure(v184, "unlock", v185);
        }

        if (*(v165 + 23))
        {
          v186 = 0;
          v187 = 0;
          while (1)
          {
            v188 = *(*(v165 + 3) + v186);
            v189 = geo::codec::zone_mallocator::instance(v184);
            v190 = pthread_rwlock_rdlock((v189 + 32));
            if (v190)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v191 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                break;
              }
            }

            if (v188)
            {
              goto LABEL_278;
            }

LABEL_279:
            malloc_zone_free(*v189, v188);
            v184 = pthread_rwlock_unlock((v189 + 32));
            v192 = v184;
            if (v184)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v193 = geo::read_write_lock::logFailure(int,char const*)::log;
              v184 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
              if (v184)
              {
                *buf = 136315394;
                v248 = "unlock";
                v249 = 1024;
                v250 = v192;
                _os_log_fault_impl(&dword_18660C000, v193, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
              }
            }

            ++v187;
            v186 += 16;
            if (v187 >= *(v165 + 23))
            {
              goto LABEL_289;
            }
          }

          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v190;
          _os_log_fault_impl(&dword_18660C000, v191, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (!v188)
          {
            goto LABEL_279;
          }

LABEL_278:
          atomic_fetch_add((v189 + 24), 0xFFFFFFFF);
          goto LABEL_279;
        }

LABEL_289:
        v194 = *(v165 + 3);
        v195 = geo::codec::zone_mallocator::instance(v184);
        v196 = pthread_rwlock_rdlock((v195 + 32));
        if (v196)
        {
          geo::read_write_lock::logFailure(v196, "read lock", v197);
        }

        if (v194)
        {
          atomic_fetch_add((v195 + 24), 0xFFFFFFFF);
        }

        malloc_zone_free(*v195, v194);
        v198 = pthread_rwlock_unlock((v195 + 32));
        if (v198)
        {
          geo::read_write_lock::logFailure(v198, "unlock", v199);
        }

        if (*(v165 + 22))
        {
          break;
        }

LABEL_343:
        v223 = *(v165 + 2);
        v224 = geo::codec::zone_mallocator::instance(v198);
        v225 = pthread_rwlock_rdlock((v224 + 32));
        if (v225)
        {
          geo::read_write_lock::logFailure(v225, "read lock", v226);
        }

        if (v223)
        {
          atomic_fetch_add((v224 + 24), 0xFFFFFFFF);
        }

        malloc_zone_free(*v224, v223);
        v227 = pthread_rwlock_unlock((v224 + 32));
        if (v227)
        {
          geo::read_write_lock::logFailure(v227, "unlock", v228);
        }

        v229 = *(v165 + 4);
        v230 = geo::codec::zone_mallocator::instance(v227);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v230, v229);
        v164 = v246 + 1;
        if (v246 + 1 == v240)
        {
          goto LABEL_350;
        }
      }

      v200 = 0;
      v201 = 0;
      while (2)
      {
        v202 = *(v165 + 2);
        v203 = *(v202 + v200 + 8);
        v204 = geo::codec::zone_mallocator::instance(v198);
        v205 = pthread_rwlock_rdlock((v204 + 32));
        if (!v205)
        {
          goto LABEL_301;
        }

        {
          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
        }

        v206 = geo::read_write_lock::logFailure(int,char const*)::log;
        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v205;
          _os_log_fault_impl(&dword_18660C000, v206, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (v203)
          {
LABEL_302:
            atomic_fetch_add((v204 + 24), 0xFFFFFFFF);
          }
        }

        else
        {
LABEL_301:
          if (v203)
          {
            goto LABEL_302;
          }
        }

        malloc_zone_free(*v204, v203);
        v207 = pthread_rwlock_unlock((v204 + 32));
        v208 = v207;
        if (v207)
        {
          {
            geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
          }

          v209 = geo::read_write_lock::logFailure(int,char const*)::log;
          v207 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
          if (v207)
          {
            *buf = 136315394;
            v248 = "unlock";
            v249 = 1024;
            v250 = v208;
            _os_log_fault_impl(&dword_18660C000, v209, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          }
        }

        v210 = *(v202 + v200 + 16);
        v211 = geo::codec::zone_mallocator::instance(v207);
        v212 = pthread_rwlock_rdlock((v211 + 32));
        if (!v212)
        {
          goto LABEL_310;
        }

        {
          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
        }

        v213 = geo::read_write_lock::logFailure(int,char const*)::log;
        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v212;
          _os_log_fault_impl(&dword_18660C000, v213, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (v210)
          {
LABEL_311:
            atomic_fetch_add((v211 + 24), 0xFFFFFFFF);
          }
        }

        else
        {
LABEL_310:
          if (v210)
          {
            goto LABEL_311;
          }
        }

        malloc_zone_free(*v211, v210);
        v214 = pthread_rwlock_unlock((v211 + 32));
        v215 = v214;
        if (v214)
        {
          {
            geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
          }

          v216 = geo::read_write_lock::logFailure(int,char const*)::log;
          v214 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
          if (v214)
          {
            *buf = 136315394;
            v248 = "unlock";
            v249 = 1024;
            v250 = v215;
            _os_log_fault_impl(&dword_18660C000, v216, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          }
        }

        v217 = *(v202 + v200 + 24);
        v218 = geo::codec::zone_mallocator::instance(v214);
        v219 = pthread_rwlock_rdlock((v218 + 32));
        if (!v219)
        {
          goto LABEL_319;
        }

        {
          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
        }

        v220 = geo::read_write_lock::logFailure(int,char const*)::log;
        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v248 = "read lock";
          v249 = 1024;
          v250 = v219;
          _os_log_fault_impl(&dword_18660C000, v220, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          if (v217)
          {
LABEL_320:
            atomic_fetch_add((v218 + 24), 0xFFFFFFFF);
          }
        }

        else
        {
LABEL_319:
          if (v217)
          {
            goto LABEL_320;
          }
        }

        malloc_zone_free(*v218, v217);
        v198 = pthread_rwlock_unlock((v218 + 32));
        v221 = v198;
        if (v198)
        {
          {
            geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
          }

          v222 = geo::read_write_lock::logFailure(int,char const*)::log;
          v198 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
          if (v198)
          {
            *buf = 136315394;
            v248 = "unlock";
            v249 = 1024;
            v250 = v221;
            _os_log_fault_impl(&dword_18660C000, v222, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", buf, 0x12u);
          }
        }

        ++v201;
        v200 += 32;
        if (v201 >= *(v165 + 22))
        {
          goto LABEL_343;
        }

        continue;
      }
    }

LABEL_350:
    v231 = geo::codec::zone_mallocator::instance(v37);
    v232 = pthread_rwlock_rdlock((v231 + 32));
    if (v232)
    {
      geo::read_write_lock::logFailure(v232, "read lock", v233);
    }

    atomic_fetch_add((v231 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v231, v243);
    v3 = v236;
    v234 = pthread_rwlock_unlock((v231 + 32));
    if (v234)
    {
      geo::read_write_lock::logFailure(v234, "unlock", v235);
    }
  }

  *(v3 + 2176) = 0;
  *(v3 + 2168) = 0;
}

void sub_1866CA090(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void geo::codec::VectorTile::~VectorTile(uint64_t this, GeoCodecsCurveVertexPool *a2)
{
  v2 = this;
  v3 = *(this + 136);
  if (v3)
  {
    v4 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint>(v4, v3);
  }

  v5 = *(v2 + 256);
  if (v5)
  {
    v6 = geo::codec::zone_mallocator::instance(this);
    v7 = pthread_rwlock_rdlock((v6 + 32));
    if (v7)
    {
      geo::read_write_lock::logFailure(v7, "read lock", v8);
    }

    atomic_fetch_add((v6 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v6, v5);
    this = pthread_rwlock_unlock((v6 + 32));
    if (this)
    {
      geo::read_write_lock::logFailure(this, "unlock", v9);
    }
  }

  v10 = *(v2 + 272);
  if (v10)
  {
    v11 = geo::codec::zone_mallocator::instance(this);
    v12 = pthread_rwlock_rdlock((v11 + 32));
    if (v12)
    {
      geo::read_write_lock::logFailure(v12, "read lock", v13);
    }

    atomic_fetch_add((v11 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v11, v10);
    this = pthread_rwlock_unlock((v11 + 32));
    if (this)
    {
      geo::read_write_lock::logFailure(this, "unlock", v14);
    }
  }

  v15 = *(v2 + 672);
  if (v15)
  {
    v16 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLabelTextPlacement>(v16, v15);
  }

  v17 = *(v2 + 696);
  if (v17)
  {
    v18 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityJunction>(v18, v17);
  }

  v19 = *(v2 + 720);
  if (v19)
  {
    v20 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityPointOnRoad>(v20, v19);
  }

  v21 = *(v2 + 736);
  if (v21)
  {
    v22 = geo::codec::zone_mallocator::instance(this);
    v23 = pthread_rwlock_rdlock((v22 + 32));
    if (v23)
    {
      geo::read_write_lock::logFailure(v23, "read lock", v24);
    }

    atomic_fetch_add((v22 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v22, v21);
    this = pthread_rwlock_unlock((v22 + 32));
    if (this)
    {
      geo::read_write_lock::logFailure(this, "unlock", v25);
    }
  }

  v26 = *(v2 + 760);
  if (v26)
  {
    v27 = geo::codec::zone_mallocator::instance(this);
    v28 = pthread_rwlock_rdlock((v27 + 32));
    if (v28)
    {
      geo::read_write_lock::logFailure(v28, "read lock", v29);
    }

    atomic_fetch_add((v27 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v27, v26);
    v30 = pthread_rwlock_unlock((v27 + 32));
    if (v30)
    {
      geo::read_write_lock::logFailure(v30, "unlock", v31);
    }
  }

  geo::codec::CurveVertexPoolDealloc(*(v2 + 776), a2);
  v34 = *(v2 + 784);
  if (v34)
  {
    v35 = geo::codec::zone_mallocator::instance(v32);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v35, v34);
  }

  geo::codec::VertexPoolDealloc(*(v2 + 800), v33);
  geo::codec::VertexPoolDealloc(*(v2 + 808), v36);
  geo::codec::VertexPoolDealloc(*(v2 + 816), v37);
  geo::codec::VertexPoolDealloc(*(v2 + 824), v38);
  geo::codec::VertexPoolDealloc(*(v2 + 832), v39);
  geo::codec::VertexPoolDealloc(*(v2 + 840), v40);
  geo::codec::VertexPoolDealloc(*(v2 + 848), v41);
  geo::codec::VertexPoolDealloc(*(v2 + 3480), v42);
  geo::codec::VertexPoolDealloc(*(v2 + 3016), v43);
  geo::codec::VertexPoolDealloc(*(v2 + 3128), v44);
  geo::codec::VertexPoolDealloc(*(v2 + 3240), v45);
  geo::codec::VertexPoolDealloc(*(v2 + 3352), v46);
  geo::codec::VertexPoolDealloc(*(v2 + 3648), v47);
  v50 = *(v2 + 896);
  if (v50)
  {
    v51 = *(v2 + 904);
    if (v51)
    {
      v52 = 0;
      v53 = 16;
      do
      {
        v48 = *(*(v2 + 896) + v53);
        if (v48)
        {
          free(v48);
          v51 = *(v2 + 904);
        }

        ++v52;
        v53 += 24;
      }

      while (v52 < v51);
      v50 = *(v2 + 896);
    }

    v54 = geo::codec::zone_mallocator::instance(v48);
    v55 = pthread_rwlock_rdlock((v54 + 32));
    if (v55)
    {
      geo::read_write_lock::logFailure(v55, "read lock", v56);
    }

    if (v50)
    {
      atomic_fetch_add((v54 + 24), 0xFFFFFFFF);
    }

    malloc_zone_free(*v54, v50);
    v48 = pthread_rwlock_unlock((v54 + 32));
    if (v48)
    {
      geo::read_write_lock::logFailure(v48, "unlock", v57);
    }
  }

  v58 = *(v2 + 1056);
  if (v58)
  {
    v59 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsFeatureLabel>(v59, v58);
  }

  v60 = *(v2 + 1072);
  if (v60)
  {
    v61 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsShieldLabel>(v61, v60);
  }

  v62 = *(v2 + 1208);
  if (v62)
  {
    v63 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsCharacteristicPoint>(v63, v62);
  }

  v64 = *(v2 + 1224);
  if (v64)
  {
    v65 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsCharacteristicPoint>(v65, v64);
  }

  v66 = *(v2 + 1240);
  if (v66)
  {
    v67 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsStrokeSpecification>(v67, v66);
  }

  v68 = *(v2 + 1256);
  if (v68)
  {
    v69 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsStrokeSpecification>(v69, v68);
  }

  v70 = *(v2 + 1280);
  if (v70)
  {
    v71 = geo::codec::zone_mallocator::instance(v48);
    v72 = pthread_rwlock_rdlock((v71 + 32));
    if (v72)
    {
      geo::read_write_lock::logFailure(v72, "read lock", v73);
    }

    atomic_fetch_add((v71 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v71, v70);
    v48 = pthread_rwlock_unlock((v71 + 32));
    if (v48)
    {
      geo::read_write_lock::logFailure(v48, "unlock", v74);
    }
  }

  v75 = *(v2 + 1384);
  if (v75)
  {
    v76 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitLineKey>(v76, v75);
  }

  v77 = *(v2 + 1392);
  if (v77)
  {
    v78 = geo::codec::zone_mallocator::instance(v48);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v78, v77);
  }

  geo::codec::VertexPoolDealloc(*(v2 + 1408), v49);
  v81 = *(v2 + 1448);
  if (v81)
  {
    v82 = geo::codec::zone_mallocator::instance(v79);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v82, v81);
  }

  geo::codec::VertexPoolDealloc(*(v2 + 1464), v80);
  v86 = *(v2 + 1504);
  if (v86)
  {
    v87 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityJunction>(v87, v86);
  }

  v88 = *(v2 + 1520);
  if (v88)
  {
    v89 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityPointOnRoad>(v89, v88);
  }

  v90 = *(v2 + 1536);
  if (v90)
  {
    v91 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v91, v90);
  }

  v92 = *(v2 + 1544);
  if (v92)
  {
    v93 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v93, v92);
  }

  v94 = *(v2 + 1552);
  if (v94)
  {
    v95 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v95, v94);
  }

  v96 = *(v2 + 1600);
  if (v96)
  {
    v97 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitLineKey>(v97, v96);
  }

  v98 = *(v2 + 1608);
  if (v98)
  {
    v99 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v99, v98);
  }

  v100 = *(v2 + 1624);
  if (v100)
  {
    v101 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitLineKey>(v101, v100);
  }

  v102 = *(v2 + 1632);
  if (v102)
  {
    v103 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v103, v102);
  }

  v104 = *(v2 + 1648);
  if (v104)
  {
    v105 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v105, v104);
  }

  v106 = *(v2 + 1664);
  if (v106)
  {
    v107 = geo::codec::zone_mallocator::instance(v83);
    v108 = pthread_rwlock_rdlock((v107 + 32));
    if (v108)
    {
      geo::read_write_lock::logFailure(v108, "read lock", v109);
    }

    atomic_fetch_add((v107 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v107, v106);
    v83 = pthread_rwlock_unlock((v107 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v110 = *(v2 + 1672);
  if (v110)
  {
    v111 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v111, v110);
  }

  v112 = *(v2 + 1688);
  if (v112)
  {
    v113 = geo::codec::zone_mallocator::instance(v83);
    v114 = pthread_rwlock_rdlock((v113 + 32));
    if (v114)
    {
      geo::read_write_lock::logFailure(v114, "read lock", v115);
    }

    atomic_fetch_add((v113 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v113, v112);
    v83 = pthread_rwlock_unlock((v113 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v116 = *(v2 + 1704);
  if (v116)
  {
    v117 = geo::codec::zone_mallocator::instance(v83);
    v118 = pthread_rwlock_rdlock((v117 + 32));
    if (v118)
    {
      geo::read_write_lock::logFailure(v118, "read lock", v119);
    }

    atomic_fetch_add((v117 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v117, v116);
    v83 = pthread_rwlock_unlock((v117 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v120 = *(v2 + 1760);
  if (v120)
  {
    v121 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v121, v120);
  }

  v122 = *(v2 + 1776);
  if (v122)
  {
    v123 = geo::codec::zone_mallocator::instance(v83);
    v124 = pthread_rwlock_rdlock((v123 + 32));
    if (v124)
    {
      geo::read_write_lock::logFailure(v124, "read lock", v125);
    }

    atomic_fetch_add((v123 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v123, v122);
    v83 = pthread_rwlock_unlock((v123 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v126 = *(v2 + 1784);
  if (v126)
  {
    v127 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v127, v126);
  }

  v128 = *(v2 + 1800);
  if (v128)
  {
    v129 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v129, v128);
  }

  v130 = *(v2 + 1816);
  if (v130)
  {
    v131 = geo::codec::zone_mallocator::instance(v83);
    v132 = pthread_rwlock_rdlock((v131 + 32));
    if (v132)
    {
      geo::read_write_lock::logFailure(v132, "read lock", v133);
    }

    atomic_fetch_add((v131 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v131, v130);
    v83 = pthread_rwlock_unlock((v131 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v134 = *(v2 + 1832);
  if (v134)
  {
    v135 = geo::codec::zone_mallocator::instance(v83);
    v136 = pthread_rwlock_rdlock((v135 + 32));
    if (v136)
    {
      geo::read_write_lock::logFailure(v136, "read lock", v137);
    }

    atomic_fetch_add((v135 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v135, v134);
    v83 = pthread_rwlock_unlock((v135 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v138 = *(v2 + 1848);
  if (v138)
  {
    v139 = geo::codec::zone_mallocator::instance(v83);
    v140 = pthread_rwlock_rdlock((v139 + 32));
    if (v140)
    {
      geo::read_write_lock::logFailure(v140, "read lock", v141);
    }

    atomic_fetch_add((v139 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v139, v138);
    v83 = pthread_rwlock_unlock((v139 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v142 = *(v2 + 1864);
  if (v142)
  {
    v143 = geo::codec::zone_mallocator::instance(v83);
    v144 = pthread_rwlock_rdlock((v143 + 32));
    if (v144)
    {
      geo::read_write_lock::logFailure(v144, "read lock", v145);
    }

    atomic_fetch_add((v143 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v143, v142);
    v83 = pthread_rwlock_unlock((v143 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v146 = *(v2 + 1880);
  if (v146)
  {
    v147 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v147, v146);
  }

  v148 = *(v2 + 1896);
  if (v148)
  {
    v149 = geo::codec::zone_mallocator::instance(v83);
    v150 = pthread_rwlock_rdlock((v149 + 32));
    if (v150)
    {
      geo::read_write_lock::logFailure(v150, "read lock", v151);
    }

    atomic_fetch_add((v149 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v149, v148);
    v83 = pthread_rwlock_unlock((v149 + 32));
    if (v83)
    {
      geo::read_write_lock::logFailure(v83, "unlock", v85);
    }
  }

  v152 = *(v2 + 688);
  if (v152)
  {
    v153 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityOverpass>(v153, v152);
  }

  v154 = *(v2 + 752);
  if (v154)
  {
    v155 = geo::codec::zone_mallocator::instance(v83);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLineCrossing>(v155, v154);
  }

  geo::codec::VectorTile::DaVinciReadDaVinci3DDataDealloc(v2, v84, v85);
  v158 = *(v2 + 2840);
  if (v158)
  {
    v159 = geo::codec::zone_mallocator::instance(v156);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v159, v158);
  }

  geo::codec::DaVinciMetaDataDealloc(*(v2 + 2248), v157);
  v162 = *(v2 + 2256);
  if (v162)
  {
    std::__tree<std::__value_type<unsigned char,std::vector<unsigned long long>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned long long>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned long long>>>>::destroy(*(v162 + 32));
    std::__tree<std::__value_type<unsigned char,std::vector<unsigned long long>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned long long>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned long long>>>>::destroy(*(v162 + 8));
    v163 = *(v2 + 2256);
    v165 = geo::codec::zone_mallocator::instance(v164);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciAssetMetaData>(v165, v163);
  }

  v166 = *(v2 + 2944);
  if (v166)
  {
    v167 = geo::codec::zone_mallocator::instance(v160);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v167, v166);
  }

  if (*(v2 + 2964))
  {
    v168 = *(v2 + 2968);
    v169 = geo::codec::zone_mallocator::instance(v160);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v169, v168);
    *(v2 + 2964) = 0;
  }

  v170 = *(v2 + 600);
  if (v170)
  {
    v171 = geo::codec::zone_mallocator::instance(v160);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v171, v170);
  }

  v172 = *(v2 + 656);
  if (v172)
  {
    v173 = geo::codec::zone_mallocator::instance(v160);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsMetaDataVariant>(v173, v172);
  }

  geo::codec::VertexPoolDealloc(*(v2 + 856), v161);
  v175 = *(v2 + 1184);
  for (i = *(v2 + 1176); v175 != i; v175 -= 16)
  {
    v177 = *(v175 - 8);
    if (v177 && !atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v177->__on_zero_shared)(v177);
      std::__shared_weak_count::__release_weak(v177);
    }
  }

  *(v2 + 1184) = i;
  v178 = *(v2 + 504);
  v179 = *(v2 + 512);
  if (v179 != v178)
  {
    while (1)
    {
      v180 = *(v179 - 192);
      if (v180)
      {
        if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v174 = *(v179 - 216);
      if (v174)
      {
        goto LABEL_170;
      }

LABEL_166:
      v179 -= 224;
      if (v179 == v178)
      {
        goto LABEL_173;
      }
    }

    (v180->__on_zero_shared)(v180);
    std::__shared_weak_count::__release_weak(v180);
    v174 = *(v179 - 216);
    if (!v174)
    {
      goto LABEL_166;
    }

LABEL_170:
    std::__shared_weak_count::__release_weak(v174);
    goto LABEL_166;
  }

LABEL_173:
  *(v2 + 512) = v178;
  if (*(v2 + 3680))
  {
    v174 = *(v2 + 3672);
    if (v174)
    {
      do
      {
        v181 = v174->__vftable;
        operator delete(v174);
        v174 = v181;
      }

      while (v181);
    }

    *(v2 + 3672) = 0;
    v182 = *(v2 + 3664);
    if (v182)
    {
      bzero(*(v2 + 3656), 8 * v182);
    }

    *(v2 + 3680) = 0;
  }

  v183 = *(v2 + 3848);
  if (v183)
  {
    *(v2 + 3856) = v183;
    v184 = geo::codec::zone_mallocator::instance(v174);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint3D>(v184, v183);
  }

  v185 = *(v2 + 3776);
  if (v185)
  {
    v186 = *(v2 + 3784);
    v187 = *(v2 + 3776);
    if (v186 != v185)
    {
      do
      {
        v188 = *(v186 - 32);
        if (v188 && !atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v188->__on_zero_shared)(v188);
          std::__shared_weak_count::__release_weak(v188);
        }

        v186 -= 40;
      }

      while (v186 != v185);
      v187 = *(v2 + 3776);
    }

    *(v2 + 3784) = v185;
    v189 = geo::codec::zone_mallocator::instance(v174);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciBuilding>(v189, v187);
  }

  v190 = *(v2 + 3736);
  if (v190)
  {
    *(v2 + 3744) = v190;
    v191 = geo::codec::zone_mallocator::instance(v174);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRemovedPoiInfo>(v191, v190);
  }

  v192 = *(v2 + 3704);
  if (v192)
  {
    v193 = *(v2 + 3712);
    v194 = *(v2 + 3704);
    if (v193 != v192)
    {
      do
      {
        v195 = *(v193 - 32);
        if (v195)
        {
          v196 = *(v193 - 24);
          v197 = *(v193 - 32);
          if (v196 != v195)
          {
            do
            {
              v198 = *(v196 - 40);
              if (v198)
              {
                *(v196 - 32) = v198;
                v199 = geo::codec::zone_mallocator::instance(v174);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<unsigned int,3,1>>(v199, v198);
              }

              v196 -= 48;
            }

            while (v196 != v195);
            v197 = *(v193 - 32);
          }

          *(v193 - 24) = v195;
          v200 = geo::codec::zone_mallocator::instance(v174);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRunningTrackLane>(v200, v197);
        }

        v201 = *(v193 - 80);
        if (v201)
        {
          *(v193 - 72) = v201;
          v202 = geo::codec::zone_mallocator::instance(v174);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<unsigned int,3,1>>(v202, v201);
        }

        v193 -= 128;
      }

      while (v193 != v192);
      v194 = *(v2 + 3704);
    }

    *(v2 + 3712) = v192;
    v203 = geo::codec::zone_mallocator::instance(v174);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRunningTrack>(v203, v194);
  }

  v204 = *(v2 + 3672);
  if (v204)
  {
    do
    {
      v205 = *v204;
      operator delete(v204);
      v204 = v205;
    }

    while (v205);
  }

  v206 = *(v2 + 3656);
  *(v2 + 3656) = 0;
  if (v206)
  {
    operator delete(v206);
  }

  v207 = *(v2 + 3624);
  if (v207)
  {
    *(v2 + 3632) = v207;
    operator delete(v207);
  }

  v208 = *(v2 + 3600);
  if (v208)
  {
    *(v2 + 3608) = v208;
    operator delete(v208);
  }

  v209 = *(v2 + 3576);
  if (v209)
  {
    *(v2 + 3584) = v209;
    operator delete(v209);
  }

  v210 = *(v2 + 3552);
  if (v210)
  {
    *(v2 + 3560) = v210;
    operator delete(v210);
  }

  v211 = *(v2 + 3528);
  if (v211)
  {
    *(v2 + 3536) = v211;
    operator delete(v211);
  }

  v212 = *(v2 + 3488);
  if (v212)
  {
    *(v2 + 3496) = v212;
    v213 = geo::codec::zone_mallocator::instance(v211);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v213, v212);
  }

  v214 = *(v2 + 3448);
  if (v214)
  {
    v215 = *(v2 + 3456);
    v216 = *(v2 + 3448);
    if (v215 != v214)
    {
      do
      {
        v217 = *(v215 - 32);
        if (v217)
        {
          *(v215 - 24) = v217;
          v218 = geo::codec::zone_mallocator::instance(v211);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v218, v217);
        }

        v438 = (v215 - 64);
        std::vector<std::vector<BOOL,geo::allocator_adapter<BOOL,geo::codec::zone_mallocator>>,geo::allocator_adapter<std::vector<BOOL,geo::allocator_adapter<BOOL,geo::codec::zone_mallocator>>,geo::codec::zone_mallocator>>::__destroy_vector::operator()[abi:ne200100](&v438);
        v211 = std::vector<std::vector<unsigned short,geo::allocator_adapter<unsigned short,geo::codec::zone_mallocator>>,geo::allocator_adapter<std::vector<unsigned short,geo::allocator_adapter<unsigned short,geo::codec::zone_mallocator>>,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v215 - 96));
        v215 -= 128;
      }

      while (v215 != v214);
      v216 = *(v2 + 3448);
    }

    *(v2 + 3456) = v214;
    v219 = geo::codec::zone_mallocator::instance(v211);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsMultiPolygonFeature>(v219, v216);
  }

  v220 = *(v2 + 3400);
  if (v220)
  {
    *(v2 + 3408) = v220;
    v221 = geo::codec::zone_mallocator::instance(v211);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineAttribute>(v221, v220);
  }

  v222 = *(v2 + 3368);
  if (v222)
  {
    *(v2 + 3376) = v222;
    v223 = geo::codec::zone_mallocator::instance(v211);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineInfo>(v223, v222);
  }

  v224 = std::vector<GeoCodecsContourLinesFeature,geo::allocator_adapter<GeoCodecsContourLinesFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v2 + 3320));
  v225 = *(v2 + 3288);
  if (v225)
  {
    *(v2 + 3296) = v225;
    v226 = geo::codec::zone_mallocator::instance(v224);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineAttribute>(v226, v225);
  }

  v227 = *(v2 + 3256);
  if (v227)
  {
    *(v2 + 3264) = v227;
    v228 = geo::codec::zone_mallocator::instance(v224);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineInfo>(v228, v227);
  }

  v229 = std::vector<GeoCodecsContourLinesFeature,geo::allocator_adapter<GeoCodecsContourLinesFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v2 + 3208));
  v230 = *(v2 + 3176);
  if (v230)
  {
    *(v2 + 3184) = v230;
    v231 = geo::codec::zone_mallocator::instance(v229);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineAttribute>(v231, v230);
  }

  v232 = *(v2 + 3144);
  if (v232)
  {
    *(v2 + 3152) = v232;
    v233 = geo::codec::zone_mallocator::instance(v229);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineInfo>(v233, v232);
  }

  v234 = std::vector<GeoCodecsContourLinesFeature,geo::allocator_adapter<GeoCodecsContourLinesFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v2 + 3096));
  v235 = *(v2 + 3064);
  if (v235)
  {
    *(v2 + 3072) = v235;
    v236 = geo::codec::zone_mallocator::instance(v234);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineAttribute>(v236, v235);
  }

  v237 = *(v2 + 3032);
  if (v237)
  {
    *(v2 + 3040) = v237;
    v238 = geo::codec::zone_mallocator::instance(v234);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourPolylineInfo>(v238, v237);
  }

  v239 = std::vector<GeoCodecsContourLinesFeature,geo::allocator_adapter<GeoCodecsContourLinesFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v2 + 2984));
  v240 = *(v2 + 2912);
  if (v240)
  {
    *(v2 + 2920) = v240;
    v241 = geo::codec::zone_mallocator::instance(v239);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRoadOffsets>(v241, v240);
  }

  v242 = *(v2 + 2880);
  if (v242)
  {
    v243 = *(v2 + 2888);
    v244 = *(v2 + 2880);
    if (v243 != v242)
    {
      do
      {
        v245 = *(v243 - 32);
        if (v245)
        {
          *(v243 - 24) = v245;
          v246 = geo::codec::zone_mallocator::instance(v239);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTrafficSkeletonRecord>(v246, v245);
        }

        v243 -= 40;
      }

      while (v243 != v242);
      v244 = *(v2 + 2880);
    }

    *(v2 + 2888) = v242;
    v247 = geo::codec::zone_mallocator::instance(v239);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTrafficSkeleton>(v247, v244);
  }

  v248 = *(v2 + 2872);
  *(v2 + 2872) = 0;
  if (v248)
  {
    MEMORY[0x18CFD1E40](v248, 0x1000C40504FFAC1);
  }

  v249 = *(v2 + 2848);
  if (v249)
  {
    *(v2 + 2856) = v249;
    operator delete(v249);
  }

  std::mutex::~mutex((v2 + 2688));
  v250 = *(v2 + 2664);
  if (v250)
  {
    v251 = *(v2 + 2672);
    v252 = *(v2 + 2664);
    if (v251 != v250)
    {
      v253 = *(v2 + 2672);
      do
      {
        v255 = *(v253 - 24);
        v253 -= 24;
        v254 = v255;
        if (v255)
        {
          *(v251 - 16) = v254;
          operator delete(v254);
        }

        v251 = v253;
      }

      while (v253 != v250);
      v252 = *(v2 + 2664);
    }

    *(v2 + 2672) = v250;
    operator delete(v252);
  }

  v256 = *(v2 + 2640);
  if (v256)
  {
    v257 = *(v2 + 2648);
    v258 = *(v2 + 2640);
    if (v257 != v256)
    {
      v259 = *(v2 + 2648);
      do
      {
        v261 = *(v259 - 24);
        v259 -= 24;
        v260 = v261;
        if (v261)
        {
          *(v257 - 16) = v260;
          operator delete(v260);
        }

        v257 = v259;
      }

      while (v259 != v256);
      v258 = *(v2 + 2640);
    }

    *(v2 + 2648) = v256;
    operator delete(v258);
  }

  v262 = *(v2 + 2616);
  if (v262)
  {
    v263 = *(v2 + 2624);
    v264 = *(v2 + 2616);
    if (v263 != v262)
    {
      v265 = *(v2 + 2624);
      do
      {
        v267 = *(v265 - 24);
        v265 -= 24;
        v266 = v267;
        if (v267)
        {
          *(v263 - 16) = v266;
          operator delete(v266);
        }

        v263 = v265;
      }

      while (v265 != v262);
      v264 = *(v2 + 2616);
    }

    *(v2 + 2624) = v262;
    operator delete(v264);
  }

  v268 = *(v2 + 2592);
  if (v268)
  {
    v269 = *(v2 + 2600);
    v270 = *(v2 + 2592);
    if (v269 != v268)
    {
      v271 = *(v2 + 2600);
      do
      {
        v273 = *(v271 - 24);
        v271 -= 24;
        v272 = v273;
        if (v273)
        {
          *(v269 - 16) = v272;
          operator delete(v272);
        }

        v269 = v271;
      }

      while (v271 != v268);
      v270 = *(v2 + 2592);
    }

    *(v2 + 2600) = v268;
    operator delete(v270);
  }

  v274 = *(v2 + 2568);
  if (v274)
  {
    v275 = *(v2 + 2576);
    v276 = *(v2 + 2568);
    if (v275 != v274)
    {
      v277 = *(v2 + 2576);
      do
      {
        v279 = *(v277 - 24);
        v277 -= 24;
        v278 = v279;
        if (v279)
        {
          *(v275 - 16) = v278;
          operator delete(v278);
        }

        v275 = v277;
      }

      while (v277 != v274);
      v276 = *(v2 + 2568);
    }

    *(v2 + 2576) = v274;
    operator delete(v276);
  }

  v280 = *(v2 + 2544);
  if (v280)
  {
    v281 = *(v2 + 2552);
    v282 = *(v2 + 2544);
    if (v281 != v280)
    {
      v283 = *(v2 + 2552);
      do
      {
        v285 = *(v283 - 24);
        v283 -= 24;
        v284 = v285;
        if (v285)
        {
          *(v281 - 16) = v284;
          operator delete(v284);
        }

        v281 = v283;
      }

      while (v283 != v280);
      v282 = *(v2 + 2544);
    }

    *(v2 + 2552) = v280;
    operator delete(v282);
  }

  v286 = *(v2 + 2520);
  if (v286)
  {
    v287 = *(v2 + 2528);
    v288 = *(v2 + 2520);
    if (v287 != v286)
    {
      v289 = *(v2 + 2528);
      do
      {
        v291 = *(v289 - 24);
        v289 -= 24;
        v290 = v291;
        if (v291)
        {
          *(v287 - 16) = v290;
          operator delete(v290);
        }

        v287 = v289;
      }

      while (v289 != v286);
      v288 = *(v2 + 2520);
    }

    *(v2 + 2528) = v286;
    operator delete(v288);
  }

  v292 = *(v2 + 2472);
  if (v292)
  {
    *(v2 + 2480) = v292;
    operator delete(v292);
  }

  v293 = *(v2 + 2440);
  if (v293)
  {
    *(v2 + 2448) = v293;
    v294 = geo::codec::zone_mallocator::instance(v292);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Box<float,2>>(v294, v293);
  }

  v295 = *(v2 + 2416);
  if (v295)
  {
    do
    {
      v296 = *v295;
      operator delete(v295);
      v295 = v296;
    }

    while (v296);
  }

  v297 = *(v2 + 2400);
  *(v2 + 2400) = 0;
  if (v297)
  {
    operator delete(v297);
  }

  v298 = *(v2 + 2368);
  if (v298)
  {
    *(v2 + 2376) = v298;
    v299 = geo::codec::zone_mallocator::instance(v297);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciBuildingColor>(v299, v298);
  }

  v300 = *(v2 + 2336);
  if (v300)
  {
    v301 = *(v2 + 2344);
    v302 = *(v2 + 2336);
    if (v301 != v300)
    {
      do
      {
        v303 = *(v301 - 32);
        if (v303 && !atomic_fetch_add(&v303->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v303->__on_zero_shared)(v303);
          std::__shared_weak_count::__release_weak(v303);
        }

        v301 -= 40;
      }

      while (v301 != v300);
      v302 = *(v2 + 2336);
    }

    *(v2 + 2344) = v300;
    v304 = geo::codec::zone_mallocator::instance(v297);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciBuilding>(v304, v302);
  }

  v305 = *(v2 + 2272);
  if (v305)
  {
    *(v2 + 2280) = v305;
    v306 = geo::codec::zone_mallocator::instance(v297);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint3D>(v306, v305);
  }

  v307 = *(v2 + 2216);
  if (v307)
  {
    v308 = *(v2 + 2224);
    v309 = *(v2 + 2216);
    if (v308 != v307)
    {
      do
      {
        v310 = *(v308 - 16);
        if (v310 && !atomic_fetch_add(&v310->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v310->__on_zero_shared)(v310);
          std::__shared_weak_count::__release_weak(v310);
        }

        v308 -= 72;
      }

      while (v308 != v307);
      v309 = *(v2 + 2216);
    }

    *(v2 + 2224) = v307;
    v311 = geo::codec::zone_mallocator::instance(v297);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciDecal>(v311, v309);
  }

  v312 = *(v2 + 2120);
  if (v312)
  {
    *(v2 + 2128) = v312;
    v313 = geo::codec::zone_mallocator::instance(v297);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciMaterialModifier>(v313, v312);
  }

  v314 = *(v2 + 2088);
  if (v314)
  {
    v315 = *(v2 + 2096);
    v316 = *(v2 + 2088);
    if (v315 != v314)
    {
      do
      {
        v317 = *(v315 - 32);
        if (v317)
        {
          v318 = *(v315 - 24);
          v319 = *(v315 - 32);
          if (v318 != v317)
          {
            do
            {
              v320 = *(v318 - 8);
              if (v320 && !atomic_fetch_add(&v320->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v320->__on_zero_shared)(v320);
                std::__shared_weak_count::__release_weak(v320);
              }

              v318 -= 32;
            }

            while (v318 != v317);
            v319 = *(v315 - 32);
          }

          *(v315 - 24) = v317;
          v321 = geo::codec::zone_mallocator::instance(v297);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciAttributedMesh>(v321, v319);
        }

        v315 -= 40;
      }

      while (v315 != v314);
      v316 = *(v2 + 2088);
    }

    *(v2 + 2096) = v314;
    v322 = geo::codec::zone_mallocator::instance(v297);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciAsset>(v322, v316);
  }

  v323 = *(v2 + 1976);
  if (v323)
  {
    *(v2 + 1984) = v323;
    v324 = geo::codec::zone_mallocator::instance(v297);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint3D>(v324, v323);
  }

  v325 = *(v2 + 1936);
  if (v325)
  {
    do
    {
      v326 = *v325;
      operator delete(v325);
      v325 = v326;
    }

    while (v326);
  }

  v327 = *(v2 + 1920);
  *(v2 + 1920) = 0;
  if (v327)
  {
    operator delete(v327);
  }

  v328 = *(v2 + 1728);
  if (v328)
  {
    v329 = *(v2 + 1736);
    v330 = *(v2 + 1728);
    if (v329 != v328)
    {
      do
      {
        v331 = *(v329 - 8);
        if (v331 && !atomic_fetch_add(&v331->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v331->__on_zero_shared)(v331);
          std::__shared_weak_count::__release_weak(v331);
        }

        v329 -= 16;
      }

      while (v329 != v328);
      v330 = *(v2 + 1728);
    }

    *(v2 + 1736) = v328;
    v332 = geo::codec::zone_mallocator::instance(v327);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<FeatureStyleAttributes const>>(v332, v330);
  }

  v333 = *(v2 + 1568);
  if (!v333)
  {
    goto LABEL_392;
  }

  v334 = *(v2 + 1576);
  v335 = *(v2 + 1568);
  if (v334 == v333)
  {
    goto LABEL_391;
  }

  do
  {
    v336 = *(v334 - 216);
    if (!v336 || atomic_fetch_add(&v336->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v327 = *(v334 - 240);
      if (!v327)
      {
        goto LABEL_383;
      }

LABEL_387:
      std::__shared_weak_count::__release_weak(v327);
      goto LABEL_383;
    }

    (v336->__on_zero_shared)(v336);
    std::__shared_weak_count::__release_weak(v336);
    v327 = *(v334 - 240);
    if (v327)
    {
      goto LABEL_387;
    }

LABEL_383:
    v334 -= 248;
  }

  while (v334 != v333);
  v335 = *(v2 + 1568);
LABEL_391:
  *(v2 + 1576) = v333;
  v337 = geo::codec::zone_mallocator::instance(v327);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitAccessPointFeature>(v337, v335);
LABEL_392:
  v338 = *(v2 + 1472);
  if (!v338)
  {
    goto LABEL_404;
  }

  v339 = *(v2 + 1480);
  v340 = *(v2 + 1472);
  if (v339 == v338)
  {
    goto LABEL_403;
  }

  while (2)
  {
    v341 = *(v339 - 72);
    if (v341 && !atomic_fetch_add(&v341->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v341->__on_zero_shared)(v341);
      std::__shared_weak_count::__release_weak(v341);
      v327 = *(v339 - 96);
      if (v327)
      {
LABEL_399:
        std::__shared_weak_count::__release_weak(v327);
      }
    }

    else
    {
      v327 = *(v339 - 96);
      if (v327)
      {
        goto LABEL_399;
      }
    }

    v339 -= 104;
    if (v339 != v338)
    {
      continue;
    }

    break;
  }

  v340 = *(v2 + 1472);
LABEL_403:
  *(v2 + 1480) = v338;
  v342 = geo::codec::zone_mallocator::instance(v327);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitStationTransfer>(v342, v340);
LABEL_404:
  v343 = *(v2 + 1416);
  if (!v343)
  {
    goto LABEL_416;
  }

  v344 = *(v2 + 1424);
  v345 = *(v2 + 1416);
  if (v344 == v343)
  {
    goto LABEL_415;
  }

  v346 = v344 - 42;
  while (2)
  {
    v348 = v346[3];
    if (v348 && !atomic_fetch_add(&v348->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v348->__on_zero_shared)(v348);
      std::__shared_weak_count::__release_weak(v348);
      v327 = *v346;
      if (*v346)
      {
LABEL_411:
        std::__shared_weak_count::__release_weak(v327);
      }
    }

    else
    {
      v327 = *v346;
      if (*v346)
      {
        goto LABEL_411;
      }
    }

    v347 = v346 - 1;
    v346 -= 43;
    if (v347 != v343)
    {
      continue;
    }

    break;
  }

  v345 = *(v2 + 1416);
LABEL_415:
  *(v2 + 1424) = v343;
  v349 = geo::codec::zone_mallocator::instance(v327);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTransitNodeFeature>(v349, v345);
LABEL_416:
  v350 = *(v2 + 1352);
  if (v350)
  {
    v351 = *(v2 + 1360);
    v352 = *(v2 + 1352);
    if (v351 != v350)
    {
      do
      {
        v327 = *(v351 - 176);
        if (v327)
        {
          std::__shared_weak_count::__release_weak(v327);
        }

        v351 -= 184;
      }

      while (v351 != v350);
      v352 = *(v2 + 1352);
    }

    *(v2 + 1360) = v350;
    v353 = geo::codec::zone_mallocator::instance(v327);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTransitLink>(v353, v352);
  }

  v354 = *(v2 + 1320);
  if (v354)
  {
    v355 = *(v2 + 1328);
    v356 = *(v2 + 1320);
    if (v355 != v354)
    {
      do
      {
        v357 = *(v355 - 40);
        if (v357 && !atomic_fetch_add(&v357->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v357->__on_zero_shared)(v357);
          std::__shared_weak_count::__release_weak(v357);
        }

        v355 -= 72;
      }

      while (v355 != v354);
      v356 = *(v2 + 1320);
    }

    *(v2 + 1328) = v354;
    v358 = geo::codec::zone_mallocator::instance(v327);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitSystemInfo>(v358, v356);
  }

  v359 = *(v2 + 1288);
  if (!v359)
  {
    goto LABEL_445;
  }

  v360 = *(v2 + 1296);
  v361 = *(v2 + 1288);
  if (v360 == v359)
  {
    goto LABEL_444;
  }

  while (2)
  {
    v362 = *(v360 - 72);
    if (v362 && !atomic_fetch_add(&v362->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v362->__on_zero_shared)(v362);
      std::__shared_weak_count::__release_weak(v362);
      v327 = *(v360 - 96);
      if (v327)
      {
LABEL_440:
        std::__shared_weak_count::__release_weak(v327);
      }
    }

    else
    {
      v327 = *(v360 - 96);
      if (v327)
      {
        goto LABEL_440;
      }
    }

    v360 -= 104;
    if (v360 != v359)
    {
      continue;
    }

    break;
  }

  v361 = *(v2 + 1288);
LABEL_444:
  *(v2 + 1296) = v359;
  v363 = geo::codec::zone_mallocator::instance(v327);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTransitLine>(v363, v361);
LABEL_445:
  v364 = *(v2 + 1176);
  if (v364)
  {
    v365 = *(v2 + 1184);
    v366 = *(v2 + 1176);
    if (v365 != v364)
    {
      do
      {
        v367 = *(v365 - 8);
        if (v367 && !atomic_fetch_add(&v367->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v367->__on_zero_shared)(v367);
          std::__shared_weak_count::__release_weak(v367);
        }

        v365 -= 16;
      }

      while (v365 != v364);
      v366 = *(v2 + 1176);
    }

    *(v2 + 1184) = v364;
    v368 = geo::codec::zone_mallocator::instance(v327);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<FeatureStyleAttributes const>>(v368, v366);
  }

  FeatureStyleAttributesSet::~FeatureStyleAttributesSet((v2 + 1120));
  v370 = *(v2 + 1088);
  if (v370)
  {
    *(v2 + 1096) = v370;
    v371 = geo::codec::zone_mallocator::instance(v369);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLocalizationTableEntry>(v371, v370);
  }

  v372 = *(v2 + 1024);
  if (v372)
  {
    *(v2 + 1032) = v372;
    v373 = geo::codec::zone_mallocator::instance(v369);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v373, v372);
  }

  if (*(v2 + 1023) < 0)
  {
    operator delete(*(v2 + 1000));
    if (*(v2 + 999) < 0)
    {
      goto LABEL_463;
    }

LABEL_460:
    v374 = *(v2 + 944);
    if (v374)
    {
LABEL_464:
      *(v2 + 952) = v374;
      v375 = geo::codec::zone_mallocator::instance(v369);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v375, v374);
    }
  }

  else
  {
    if ((*(v2 + 999) & 0x80000000) == 0)
    {
      goto LABEL_460;
    }

LABEL_463:
    operator delete(*(v2 + 976));
    v374 = *(v2 + 944);
    if (v374)
    {
      goto LABEL_464;
    }
  }

  v376 = *(v2 + 912);
  if (v376)
  {
    *(v2 + 920) = v376;
    v377 = geo::codec::zone_mallocator::instance(v369);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v377, v376);
  }

  v378 = *(v2 + 864);
  if (v378)
  {
    *(v2 + 872) = v378;
    v379 = geo::codec::zone_mallocator::instance(v369);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v379, v378);
  }

  v380 = *(v2 + 632);
  if (v380)
  {
    do
    {
      v389 = *v380;
      v390 = v380[3];
      if (v390 != v380[5])
      {
        free(v390);
      }

      operator delete(v380);
      v380 = v389;
    }

    while (v389);
  }

  v381 = *(v2 + 616);
  *(v2 + 616) = 0;
  if (v381)
  {
    operator delete(v381);
  }

  v382 = *(v2 + 568);
  if (v382)
  {
    *(v2 + 576) = v382;
    v383 = geo::codec::zone_mallocator::instance(v381);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsAnnotationValue>(v383, v382);
  }

  v384 = *(v2 + 536);
  if (v384)
  {
    *(v2 + 544) = v384;
    v385 = geo::codec::zone_mallocator::instance(v381);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsAnnotation>(v385, v384);
  }

  v386 = *(v2 + 504);
  if (!v386)
  {
    goto LABEL_491;
  }

  v387 = *(v2 + 512);
  v388 = *(v2 + 504);
  if (v387 == v386)
  {
    goto LABEL_490;
  }

  while (2)
  {
    v391 = *(v387 - 192);
    if (v391 && !atomic_fetch_add(&v391->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v391->__on_zero_shared)(v391);
      std::__shared_weak_count::__release_weak(v391);
      v381 = *(v387 - 216);
      if (v381)
      {
LABEL_486:
        std::__shared_weak_count::__release_weak(v381);
      }
    }

    else
    {
      v381 = *(v387 - 216);
      if (v381)
      {
        goto LABEL_486;
      }
    }

    v387 -= 224;
    if (v387 != v386)
    {
      continue;
    }

    break;
  }

  v388 = *(v2 + 504);
LABEL_490:
  *(v2 + 512) = v386;
  v392 = geo::codec::zone_mallocator::instance(v381);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPointFeature>(v392, v388);
LABEL_491:
  v393 = *(v2 + 472);
  if (v393)
  {
    v394 = *(v2 + 480);
    v395 = *(v2 + 472);
    if (v394 != v393)
    {
      do
      {
        v394 = (v394 - 112);
        std::__destroy_at[abi:ne200100]<GeoCodecs3DBuildingFeature,0>(v394);
      }

      while (v394 != v393);
      v395 = *(v2 + 472);
    }

    *(v2 + 480) = v393;
    v396 = geo::codec::zone_mallocator::instance(v381);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecs3DBuildingFeature>(v396, v395);
  }

  v397 = *(v2 + 440);
  if (v397)
  {
    v398 = *(v2 + 448);
    v399 = *(v2 + 440);
    if (v398 != v397)
    {
      do
      {
        v398 = (v398 - 112);
        std::__destroy_at[abi:ne200100]<GeoCodecs3DBuildingFeature,0>(v398);
      }

      while (v398 != v397);
      v399 = *(v2 + 440);
    }

    *(v2 + 448) = v397;
    v400 = geo::codec::zone_mallocator::instance(v381);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecs3DBuildingFeature>(v400, v399);
  }

  std::vector<GeoCodecsBuildingFootprintFeature,geo::allocator_adapter<GeoCodecsBuildingFootprintFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v2 + 408));
  v401 = std::vector<GeoCodecsBuildingFootprintFeature,geo::allocator_adapter<GeoCodecsBuildingFootprintFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v2 + 376));
  v402 = *(v2 + 344);
  if (v402)
  {
    *(v2 + 352) = v402;
    v403 = geo::codec::zone_mallocator::instance(v401);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v403, v402);
  }

  v404 = *(v2 + 312);
  if (v404)
  {
    *(v2 + 320) = v404;
    v405 = geo::codec::zone_mallocator::instance(v401);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v405, v404);
  }

  v406 = std::vector<GeoCodecsBuildingFootprintFeature,geo::allocator_adapter<GeoCodecsBuildingFootprintFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100]((v2 + 280));
  v407 = *(v2 + 216);
  if (!v407)
  {
    goto LABEL_517;
  }

  v408 = *(v2 + 224);
  v409 = *(v2 + 216);
  if (v408 == v407)
  {
    goto LABEL_516;
  }

  while (2)
  {
    v410 = *(v408 - 120);
    if (v410 && !atomic_fetch_add(&v410->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v410->__on_zero_shared)(v410);
      std::__shared_weak_count::__release_weak(v410);
      v406 = *(v408 - 144);
      if (v406)
      {
LABEL_512:
        std::__shared_weak_count::__release_weak(v406);
      }
    }

    else
    {
      v406 = *(v408 - 144);
      if (v406)
      {
        goto LABEL_512;
      }
    }

    v408 -= 152;
    if (v408 != v407)
    {
      continue;
    }

    break;
  }

  v409 = *(v2 + 216);
LABEL_516:
  *(v2 + 224) = v407;
  v411 = geo::codec::zone_mallocator::instance(v406);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVenueBuildingFeature>(v411, v409);
LABEL_517:
  v412 = *(v2 + 184);
  if (!v412)
  {
    goto LABEL_529;
  }

  v413 = *(v2 + 192);
  v414 = *(v2 + 184);
  if (v413 == v412)
  {
    goto LABEL_528;
  }

  while (2)
  {
    v415 = *(v413 - 112);
    if (v415 && !atomic_fetch_add(&v415->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v415->__on_zero_shared)(v415);
      std::__shared_weak_count::__release_weak(v415);
      v406 = *(v413 - 136);
      if (v406)
      {
LABEL_524:
        std::__shared_weak_count::__release_weak(v406);
      }
    }

    else
    {
      v406 = *(v413 - 136);
      if (v406)
      {
        goto LABEL_524;
      }
    }

    v413 -= 144;
    if (v413 != v412)
    {
      continue;
    }

    break;
  }

  v414 = *(v2 + 184);
LABEL_528:
  *(v2 + 192) = v412;
  v416 = geo::codec::zone_mallocator::instance(v406);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVenueFeature>(v416, v414);
LABEL_529:
  v417 = *(v2 + 152);
  if (!v417)
  {
    goto LABEL_541;
  }

  v418 = *(v2 + 160);
  v419 = *(v2 + 152);
  if (v418 == v417)
  {
    goto LABEL_540;
  }

  while (2)
  {
    v420 = *(v418 - 144);
    if (v420 && !atomic_fetch_add(&v420->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v420->__on_zero_shared)(v420);
      std::__shared_weak_count::__release_weak(v420);
      v406 = *(v418 - 168);
      if (v406)
      {
LABEL_536:
        std::__shared_weak_count::__release_weak(v406);
      }
    }

    else
    {
      v406 = *(v418 - 168);
      if (v406)
      {
        goto LABEL_536;
      }
    }

    v418 -= 176;
    if (v418 != v417)
    {
      continue;
    }

    break;
  }

  v419 = *(v2 + 152);
LABEL_540:
  *(v2 + 160) = v417;
  v421 = geo::codec::zone_mallocator::instance(v406);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPhysicalFeature>(v421, v419);
LABEL_541:
  v422 = *(v2 + 96);
  if (!v422)
  {
    goto LABEL_553;
  }

  v423 = *(v2 + 104);
  v424 = *(v2 + 96);
  if (v423 == v422)
  {
    goto LABEL_552;
  }

  while (2)
  {
    v425 = *(v423 - 96);
    if (v425 && !atomic_fetch_add(&v425->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v425->__on_zero_shared)(v425);
      std::__shared_weak_count::__release_weak(v425);
      v406 = *(v423 - 120);
      if (v406)
      {
LABEL_548:
        std::__shared_weak_count::__release_weak(v406);
      }
    }

    else
    {
      v406 = *(v423 - 120);
      if (v406)
      {
        goto LABEL_548;
      }
    }

    v423 -= 128;
    if (v423 != v422)
    {
      continue;
    }

    break;
  }

  v424 = *(v2 + 96);
LABEL_552:
  *(v2 + 104) = v422;
  v426 = geo::codec::zone_mallocator::instance(v406);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPolygonFeature>(v426, v424);
LABEL_553:
  v427 = *(v2 + 64);
  if (!v427)
  {
    goto LABEL_565;
  }

  v428 = *(v2 + 72);
  v429 = *(v2 + 64);
  if (v428 == v427)
  {
    goto LABEL_564;
  }

  while (2)
  {
    v430 = *(v428 - 72);
    if (!v430 || atomic_fetch_add(&v430->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v406 = *(v428 - 96);
      if (!v406)
      {
        goto LABEL_558;
      }

      goto LABEL_557;
    }

    (v430->__on_zero_shared)(v430);
    std::__shared_weak_count::__release_weak(v430);
    v406 = *(v428 - 96);
    if (v406)
    {
LABEL_557:
      std::__shared_weak_count::__release_weak(v406);
    }

LABEL_558:
    v428 -= 104;
    if (v428 != v427)
    {
      continue;
    }

    break;
  }

  v429 = *(v2 + 64);
LABEL_564:
  *(v2 + 72) = v427;
  v431 = geo::codec::zone_mallocator::instance(v406);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsMultiSectionFeature>(v431, v429);
LABEL_565:
  v432 = *(v2 + 32);
  if (!v432)
  {
    goto LABEL_577;
  }

  v433 = *(v2 + 40);
  v434 = *(v2 + 32);
  if (v433 == v432)
  {
    goto LABEL_576;
  }

  while (2)
  {
    v435 = *(v433 - 136);
    if (v435 && !atomic_fetch_add(&v435->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v435->__on_zero_shared)(v435);
      std::__shared_weak_count::__release_weak(v435);
      v406 = *(v433 - 160);
      if (v406)
      {
LABEL_572:
        std::__shared_weak_count::__release_weak(v406);
      }
    }

    else
    {
      v406 = *(v433 - 160);
      if (v406)
      {
        goto LABEL_572;
      }
    }

    v433 -= 168;
    if (v433 != v432)
    {
      continue;
    }

    break;
  }

  v434 = *(v2 + 32);
LABEL_576:
  *(v2 + 40) = v432;
  v436 = geo::codec::zone_mallocator::instance(v406);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRoadFeature>(v436, v434);
LABEL_577:
  v437 = *(v2 + 24);
  if (v437)
  {
    if (!atomic_fetch_add(&v437->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v437->__on_zero_shared)(v437);
      std::__shared_weak_count::__release_weak(v437);
    }
  }
}