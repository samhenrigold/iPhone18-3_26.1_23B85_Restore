unint64_t sub_1001EA92C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, __n128 a11, __n128 a12, int *a13)
{
  v13 = *a13;
  if ((*a13 & 0xFFFFFFFE) != 2)
  {
    v14 = v13 == 1;
    if (v13 > 3)
    {
      if (v13 != 5)
      {
        v15 = result;
        v16 = a2;
        if (v13 != 4)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (v13)
    {
      v15 = result;
      v16 = a2;
      if (v13 != 1)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v13)
    {
      v96 = 255;
    }

    else
    {
      v96 = 0;
    }

    if (!a8)
    {
      return result;
    }

    v97 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v98 = (a3 + 2);
        v99 = (result + 2);
        v100 = (a5 + 1);
        do
        {
          if (*(v99 - 2) == *(v98 - 2))
          {
            v101 = ~v96;
          }

          else
          {
            v101 = v96;
          }

          *(v100 - 1) = v101;
          if (a7 != 1)
          {
            v102 = *(v99 - 1) == *(v98 - 1) ? ~v96 : v96;
            *v100 = v102;
            if (a7 != 2)
            {
              if (*v99 == *v98)
              {
                v103 = ~v96;
              }

              else
              {
                v103 = v96;
              }

              v100[1] = v103;
            }
          }

          v98 += a4;
          v99 += a2;
          v100 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v104 = (a8 - 1);
    v105 = (v97 & 0x7FFFFFFC) + 4;
    v106 = a5 + v105;
    if ((v97 & 0x7FFFFFFC) + 5 <= a7)
    {
      v107 = a7;
    }

    else
    {
      v107 = (v97 & 0x7FFFFFFC) + 5;
    }

    v108 = a5 + v107 + v104 * a6;
    v109 = v107 - (v97 & 0x7FFFFFFC) - 4;
    v110 = v106 + v104 * a6;
    v111 = (v97 >> 2) + 1;
    v113 = a3 + v105 + v104 * a4 > a5 && v110 > a3;
    v114 = result + v105 + v104 * a2 > a5 && v110 > result;
    v115 = a6 | a4;
    v116 = v114 || v113;
    v117 = vdupq_n_s32(v96);
    v120 = v106 < result + v107 + v104 * a2 && result + v105 < v108 || (a6 | a2) < 0;
    v123 = v106 < a3 + v107 + v104 * a4 && a3 + v105 < v108 || v115 < 0 || v120;
    v124 = v107 & 3;
    v125 = (v97 < 0x3C || (v115 | a2) < 0) | v116;
    v126 = (v109 < 4) | v123;
    v127 = v107 & 0xFFFFFFFC;
    while (1)
    {
      v128 = v104;
      v129 = 0;
      if (v125)
      {
        goto LABEL_175;
      }

      v130 = v111 & 0x3FFFFFF0;
      do
      {
        v131 = *(result + v129);
        v132 = *(result + v129 + 16);
        v134 = *(result + v129 + 32);
        v133 = *(result + v129 + 48);
        v136 = *(a3 + v129 + 32);
        v135 = *(a3 + v129 + 48);
        v137 = vmovl_u8(*v135.i8);
        v138 = vmovl_u8(*v133.i8);
        v139 = vceqq_s32(vmovl_high_u16(v138), vmovl_high_u16(v137));
        v140 = vceqq_s32(vmovl_u16(*v138.i8), vmovl_u16(*v137.i8));
        v141 = vmovl_high_u8(v135);
        v142 = vmovl_high_u8(v133);
        v143 = *(a3 + v129);
        v144 = *(a3 + v129 + 16);
        v145 = a5 + v129;
        v146 = vceqq_s32(vmovl_high_u16(v142), vmovl_high_u16(v141));
        v147 = vceqq_s32(vmovl_u16(*v142.i8), vmovl_u16(*v141.i8));
        v148 = vmovl_u8(*v136.i8);
        v149 = vmovl_u8(*v134.i8);
        v150 = vceqq_s32(vmovl_high_u16(v149), vmovl_high_u16(v148));
        v151 = vceqq_s32(vmovl_u16(*v149.i8), vmovl_u16(*v148.i8));
        v152 = vmovl_high_u8(v136);
        v153 = vmovl_high_u8(v134);
        v154 = vceqq_s32(vmovl_high_u16(v153), vmovl_high_u16(v152));
        v155 = vceqq_s32(vmovl_u16(*v153.i8), vmovl_u16(*v152.i8));
        v156 = vmovl_high_u8(v144);
        v157 = vmovl_high_u8(v132);
        v158 = vceqq_s32(vmovl_high_u16(v157), vmovl_high_u16(v156));
        v159 = vceqq_s32(vmovl_u16(*v157.i8), vmovl_u16(*v156.i8));
        v160 = vmovl_u8(*v144.i8);
        v161 = vmovl_u8(*v132.i8);
        v162 = vceqq_s32(vmovl_u16(*v161.i8), vmovl_u16(*v160.i8));
        v163 = vceqq_s32(vmovl_high_u16(v161), vmovl_high_u16(v160));
        v164 = vmovl_high_u8(v143);
        v165 = vmovl_high_u8(v131);
        v166 = vmovl_u8(*v143.i8);
        v167 = vmovl_u8(*v131.i8);
        *v145 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, vceqq_s32(vmovl_u16(*v167.i8), vmovl_u16(*v166.i8))), veorq_s8(v117, vceqq_s32(vmovl_high_u16(v167), vmovl_high_u16(v166)))), vuzp1q_s16(veorq_s8(v117, vceqq_s32(vmovl_u16(*v165.i8), vmovl_u16(*v164.i8))), veorq_s8(v117, vceqq_s32(vmovl_high_u16(v165), vmovl_high_u16(v164)))));
        *(v145 + 16) = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, v162), veorq_s8(v117, v163)), vuzp1q_s16(veorq_s8(v117, v159), veorq_s8(v117, v158)));
        a11 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, v140), veorq_s8(v117, v139)), vuzp1q_s16(veorq_s8(v117, v147), veorq_s8(v117, v146)));
        a12 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, v151), veorq_s8(v117, v150)), vuzp1q_s16(veorq_s8(v117, v155), veorq_s8(v117, v154)));
        *(v145 + 32) = a12;
        *(v145 + 48) = a11;
        v129 += 64;
        v130 -= 16;
      }

      while (v130);
      v129 = 4 * (v111 & 0x3FFFFFF0);
      if (v111 != (v111 & 0x3FFFFFF0))
      {
LABEL_175:
        do
        {
          v168 = result + v129;
          v169 = a3 + v129;
          if (*(result + v129 + 1) == *(a3 + v129 + 1))
          {
            v170 = ~v96;
          }

          else
          {
            v170 = v96;
          }

          if (*(result + v129) == *(a3 + v129))
          {
            v171 = ~v96;
          }

          else
          {
            v171 = v96;
          }

          v172 = (a5 + v129);
          *v172 = v171;
          v172[1] = v170;
          if (*(v168 + 3) == *(v169 + 3))
          {
            v173 = ~v96;
          }

          else
          {
            v173 = v96;
          }

          if (*(v168 + 2) == *(v169 + 2))
          {
            v174 = ~v96;
          }

          else
          {
            v174 = v96;
          }

          v172[2] = v174;
          v172[3] = v173;
          v129 += 4;
        }

        while (v129 <= v97);
      }

      if (v129 >= a7)
      {
        goto LABEL_139;
      }

      v175 = (v97 & 0x7FFFFFFC) + 4;
      if (v126)
      {
        do
        {
LABEL_168:
          if (*(result + v175) == *(a3 + v175))
          {
            v189 = ~v96;
          }

          else
          {
            v189 = v96;
          }

          *(a5 + v175++) = v189;
        }

        while (v175 < a7);
        goto LABEL_139;
      }

      if (v109 >= 0x10)
      {
        v177 = (v97 & 0x7FFFFFFC) + 4;
        v178 = v109 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v179 = *(result + v177);
          v180 = *(a3 + v177);
          v181 = vmovl_u8(*v180.i8);
          v182 = vmovl_u8(*v179.i8);
          v183 = vceqq_s32(vmovl_u16(*v182.i8), vmovl_u16(*v181.i8));
          v184 = vceqq_s32(vmovl_high_u16(v182), vmovl_high_u16(v181));
          v185 = vmovl_high_u8(v180);
          v186 = vmovl_high_u8(v179);
          v187 = vceqq_s32(vmovl_u16(*v186.i8), vmovl_u16(*v185.i8));
          a12 = vmovl_high_u16(v185);
          v192.val[3] = veorq_s8(v117, vceqq_s32(vmovl_high_u16(v186), a12));
          v192.val[2] = veorq_s8(v117, v187);
          v192.val[1] = veorq_s8(v117, v184);
          v192.val[0] = veorq_s8(v117, v183);
          a11 = vqtbl4q_s8(v192, xmmword_1003E36F0);
          *(a5 + v177) = a11;
          v177 += 16;
          v178 -= 16;
        }

        while (v178);
        if (v109 == (v109 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_139;
        }

        v176 = v109 & 0xFFFFFFFFFFFFFFF0;
        v175 = v105 + (v109 & 0xFFFFFFFFFFFFFFF0);
        if ((v109 & 0xC) == 0)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v176 = 0;
      }

      v188 = v105 + v176;
      do
      {
        a11.n128_u32[0] = *(a3 + v188);
        a12.n128_u32[0] = *(result + v188);
        a12 = vmovl_u16(*&vmovl_u8(a12.n128_u64[0]));
        a11.n128_u64[0] = vuzp1_s8(vmovn_s32(veorq_s8(v117, vceqq_s32(a12, vmovl_u16(*&vmovl_u8(a11.n128_u64[0]))))), *v117.i8);
        *(a5 + v188) = a11.n128_u32[0];
        v188 += 4;
      }

      while (v127 != v188);
      v175 = v105 + v109 - v124;
      if (v124)
      {
        goto LABEL_168;
      }

LABEL_139:
      result += a2;
      a3 += a4;
      a5 += a6;
      LODWORD(v104) = v128 - 1;
      if (!v128)
      {
        return result;
      }
    }
  }

  v14 = v13 != 2;
  if (v13 == 2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  v15 = a3;
  v16 = a4;
  a3 = result;
  a4 = a2;
LABEL_6:
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = 255;
  }

  if (a8)
  {
    v18 = 0;
    v19 = (a7 - 16);
    v20 = a7 - 4;
    v21 = a5 - a3;
    result = a5 - v15;
    v190 = a5 - v15;
    v22 = a5 + 4;
    v23 = vdupq_n_s32(v17);
    v24 = v15;
    v25 = a3;
    do
    {
      if (v13 > 3)
      {
        if (a7 < 16)
        {
LABEL_18:
          LODWORD(i) = 0;
          if (v20 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        for (i = 0; i <= v19; i += 16)
        {
          a12 = *(v25 + i);
          a11 = vcgeq_s8(a12, *(v24 + i));
          *(a5 + i) = a11;
        }
      }

      else
      {
        if (a7 < 16)
        {
          goto LABEL_18;
        }

        for (i = 0; i <= v19; i += 16)
        {
          a12 = *(v25 + i);
          a11 = vcgtq_s8(*(v24 + i), a12);
          *(a5 + i) = a11;
        }
      }

      if (i > v20)
      {
LABEL_19:
        if (i >= a7)
        {
          goto LABEL_11;
        }

        goto LABEL_40;
      }

LABEL_24:
      v27 = i;
      v28 = v20 - i;
      if (v28 <= 0x3B || ((v38 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + v27, v39 = v22 + v18 * a6 + v38, a5 + v27 < v15 + v16 * v18 + 4 + v38) ? (v40 = v24 + v27 >= v39) : (v40 = 1), v40 ? (v41 = 0) : (v41 = 1), v25 + v27 < v39 ? (v42 = a5 + v27 >= a3 + a4 * v18 + 4 + v38) : (v42 = 1), !v42 || (v41 & 1) != 0))
      {
        i = v27;
      }

      else
      {
        v43 = (v28 >> 2) + 1;
        i = v27 + 4 * (v43 & 0x7FFFFFFFFFFFFFF0);
        v44 = v43 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v45 = *(v24 + v27);
          v46 = *(v24 + v27 + 16);
          v48 = *(v24 + v27 + 32);
          v47 = *(v24 + v27 + 48);
          result = v25 + v27;
          v50 = *(v25 + v27 + 32);
          v49 = *(v25 + v27 + 48);
          v51 = vmovl_s8(*v49.i8);
          v52 = vmovl_s8(*v47.i8);
          v53 = vcgtq_s32(vmovl_high_s16(v52), vmovl_high_s16(v51));
          v54 = vcgtq_s32(vmovl_s16(*v52.i8), vmovl_s16(*v51.i8));
          v55 = vmovl_high_s8(v49);
          v56 = vmovl_high_s8(v47);
          v57 = *(v25 + v27);
          v58 = *(v25 + v27 + 16);
          v59 = a5 + v27;
          v60 = vcgtq_s32(vmovl_high_s16(v56), vmovl_high_s16(v55));
          v61 = vcgtq_s32(vmovl_s16(*v56.i8), vmovl_s16(*v55.i8));
          v62 = vmovl_s8(*v50.i8);
          v63 = vmovl_s8(*v48.i8);
          v64 = vcgtq_s32(vmovl_high_s16(v63), vmovl_high_s16(v62));
          v65 = vcgtq_s32(vmovl_s16(*v63.i8), vmovl_s16(*v62.i8));
          v66 = vmovl_high_s8(v50);
          v67 = vmovl_high_s8(v48);
          v68 = vcgtq_s32(vmovl_high_s16(v67), vmovl_high_s16(v66));
          v69 = vcgtq_s32(vmovl_s16(*v67.i8), vmovl_s16(*v66.i8));
          v70 = vmovl_high_s8(v58);
          v71 = vmovl_high_s8(v46);
          v72 = vcgtq_s32(vmovl_high_s16(v71), vmovl_high_s16(v70));
          v73 = vcgtq_s32(vmovl_s16(*v71.i8), vmovl_s16(*v70.i8));
          v74 = vmovl_s8(*v58.i8);
          v75 = vmovl_s8(*v46.i8);
          v76 = vcgtq_s32(vmovl_s16(*v75.i8), vmovl_s16(*v74.i8));
          v77 = vcgtq_s32(vmovl_high_s16(v75), vmovl_high_s16(v74));
          v78 = vmovl_high_s8(v57);
          v79 = vmovl_high_s8(v45);
          v80 = vmovl_s8(*v57.i8);
          v81 = vmovl_s8(*v45.i8);
          *v59 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, vcgtq_s32(vmovl_s16(*v81.i8), vmovl_s16(*v80.i8))), veorq_s8(v23, vcgtq_s32(vmovl_high_s16(v81), vmovl_high_s16(v80)))), vuzp1q_s16(veorq_s8(v23, vcgtq_s32(vmovl_s16(*v79.i8), vmovl_s16(*v78.i8))), veorq_s8(v23, vcgtq_s32(vmovl_high_s16(v79), vmovl_high_s16(v78)))));
          *(v59 + 16) = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, v76), veorq_s8(v23, v77)), vuzp1q_s16(veorq_s8(v23, v73), veorq_s8(v23, v72)));
          a11 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, v54), veorq_s8(v23, v53)), vuzp1q_s16(veorq_s8(v23, v61), veorq_s8(v23, v60)));
          a12 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, v65), veorq_s8(v23, v64)), vuzp1q_s16(veorq_s8(v23, v69), veorq_s8(v23, v68)));
          *(v59 + 32) = a12;
          *(v59 + 48) = a11;
          v27 += 64;
          v44 -= 16;
        }

        while (v44);
        if (v43 == (v43 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_39;
        }
      }

      do
      {
        v29 = v24 + i;
        v30 = v25 + i;
        if (*(v24 + i + 1) <= *(v25 + i + 1))
        {
          v31 = v17;
        }

        else
        {
          v31 = ~v17;
        }

        if (*(v24 + i) <= *(v25 + i))
        {
          v32 = v17;
        }

        else
        {
          v32 = ~v17;
        }

        v33 = (a5 + i);
        *v33 = v32;
        v33[1] = v31;
        if (*(v29 + 3) <= *(v30 + 3))
        {
          v34 = v17;
        }

        else
        {
          v34 = ~v17;
        }

        if (*(v29 + 2) <= *(v30 + 2))
        {
          result = v17;
        }

        else
        {
          result = ~v17;
        }

        v33[2] = result;
        v33[3] = v34;
        i += 4;
      }

      while (i <= v20);
LABEL_39:
      if (i >= a7)
      {
        goto LABEL_11;
      }

LABEL_40:
      v35 = i;
      v36 = a7 - i;
      if (v36 < 4)
      {
        v37 = v35;
        goto LABEL_42;
      }

      if ((v21 + (a6 - a4) * v18) < 0x10)
      {
        v37 = v35;
        goto LABEL_42;
      }

      result = v190 + (a6 - v16) * v18;
      if (result < 0x10)
      {
        v37 = v35;
        goto LABEL_42;
      }

      if (v36 >= 0x10)
      {
        v82 = v36 & 0xFFFFFFFFFFFFFFF0;
        v83 = v35;
        v84 = v36 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v85 = *(v24 + v83);
          v86 = *(v25 + v83);
          v87 = vmovl_s8(*v86.i8);
          v88 = vmovl_s8(*v85.i8);
          v89 = vcgtq_s32(vmovl_s16(*v88.i8), vmovl_s16(*v87.i8));
          v90 = vcgtq_s32(vmovl_high_s16(v88), vmovl_high_s16(v87));
          v91 = vmovl_high_s8(v86);
          v92 = vmovl_high_s8(v85);
          v93 = vcgtq_s32(vmovl_s16(*v92.i8), vmovl_s16(*v91.i8));
          a12 = vmovl_high_s16(v91);
          v191.val[3] = veorq_s8(v23, vcgtq_s32(vmovl_high_s16(v92), a12));
          v191.val[2] = veorq_s8(v23, v93);
          v191.val[1] = veorq_s8(v23, v90);
          v191.val[0] = veorq_s8(v23, v89);
          a11 = vqtbl4q_s8(v191, xmmword_1003E36F0);
          *(a5 + v83) = a11;
          v83 += 16;
          v84 -= 16;
        }

        while (v84);
        if (v36 == v82)
        {
          goto LABEL_11;
        }

        if ((v36 & 0xC) == 0)
        {
          v37 = v82 + v35;
          do
          {
LABEL_42:
            if (*(v24 + v37) <= *(v25 + v37))
            {
              result = v17;
            }

            else
            {
              result = ~v17;
            }

            *(a5 + v37++) = result;
          }

          while (a7 != v37);
          goto LABEL_11;
        }
      }

      else
      {
        v82 = 0;
      }

      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + v35;
      v94 = v82 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
      v95 = v82 + v35;
      do
      {
        a11.n128_u32[0] = *(v25 + v95);
        a12.n128_u32[0] = *(v24 + v95);
        a12 = vmovl_s16(*&vmovl_s8(a12.n128_u64[0]));
        a11.n128_u64[0] = vuzp1_s8(vmovn_s32(veorq_s8(v23, vcgtq_s32(a12, vmovl_s16(*&vmovl_s8(a11.n128_u64[0]))))), *v23.i8);
        *(a5 + v95) = a11.n128_u32[0];
        v95 += 4;
        v94 += 4;
      }

      while (v94);
      if (v36 != (v36 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_42;
      }

LABEL_11:
      v24 += v16;
      v25 += a4;
      a5 += a6;
      ++v18;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001EB41C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, int8x16_t *a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a2 >> 1;
  v11 = a4 >> 1;
  v181 = a6;
  v182 = a7;
  if ((*a9 & 0xFFFFFFFE) != 2)
  {
    v12 = v9 == 1;
    if (v9 > 3)
    {
      if (v9 != 5)
      {
        v13 = result;
        v14 = a2 >> 1;
        if (v9 != 4)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (v9)
    {
      v13 = result;
      v14 = a2 >> 1;
      if (v9 != 1)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v9)
    {
      v95 = 255;
    }

    else
    {
      v95 = 0;
    }

    if (!a8)
    {
      return result;
    }

    v96 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v97 = (a3 + 4);
        v98 = (result + 4);
        v99 = &a5->i8[1];
        do
        {
          if (*(v98 - 2) == *(v97 - 2))
          {
            v100 = ~v95;
          }

          else
          {
            v100 = v95;
          }

          *(v99 - 1) = v100;
          if (a7 != 1)
          {
            v101 = *(v98 - 1) == *(v97 - 1) ? ~v95 : v95;
            *v99 = v101;
            if (a7 != 2)
            {
              if (*v98 == *v97)
              {
                v102 = ~v95;
              }

              else
              {
                v102 = v95;
              }

              v99[1] = v102;
            }
          }

          v97 += v11;
          v98 += v10;
          v99 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v103 = (a8 - 1);
    v104 = a7;
    v105 = v96 & 0x7FFFFFFC;
    v106 = v105 + 4;
    v107 = &a5->i8[v105 + 4];
    if (v105 + 5 <= a7)
    {
      v108 = a7;
    }

    else
    {
      v108 = (v96 & 0x7FFFFFFC) + 5;
    }

    v109 = &a5->i8[v108 + v103 * a6];
    v110 = ((2 * (a7 - 4)) & 0xFFFFFFF8) + 8;
    v111 = result + v110;
    v112 = a3 + v110;
    v113 = v108 - v105 - 4;
    v114 = &v107[v103 * a6];
    v115 = result + 2 * (v10 * v103 + v105) + 8;
    v116 = a3 + 2 * (v11 * v103 + v105) + 8;
    v117 = (v96 >> 2) + 1;
    v119 = v116 > a5 && v114 > a3;
    v120 = v115 > a5 && v114 > result;
    v121 = a6 | a4;
    if (v120)
    {
      v119 = 1;
    }

    v122 = vdupq_n_s32(v95);
    v125 = v107 < result + 2 * (v10 * v103 + v108) && v111 < v109 || ((a6 | a2) & 0x8000000000000000) != 0;
    v128 = v107 < a3 + 2 * (v11 * v103 + v108) && v112 < v109 || v121 < 0 || v125;
    v129 = v108 & 3;
    v130 = v96 < 0x3C || ((v121 | a2) & 0x8000000000000000) != 0 || v119;
    v131 = (v113 < 4) | v128;
    v132 = 2 * v10;
    v133 = 2 * v11;
    v134 = v108 & 0xFFFFFFFC;
    while (1)
    {
      v135 = v103;
      v136 = 0;
      if (v130)
      {
        goto LABEL_154;
      }

      v137 = v117 & 0x3FFFFFF0;
      v138 = a5;
      do
      {
        v140 = *(result + v136 + 32);
        v139 = *(result + v136 + 48);
        v142 = *(result + v136 + 64);
        v141 = *(result + v136 + 80);
        v143 = *(result + v136 + 96);
        v144 = *(result + v136 + 112);
        v145 = *(a3 + v136 + 96);
        v146 = *(a3 + v136 + 112);
        v147 = vceqq_s32(vmovl_high_u16(v143), vmovl_high_u16(v145));
        v148 = vceqq_s32(vmovl_u16(*v143.i8), vmovl_u16(*v145.i8));
        v149 = vceqq_s32(vmovl_high_u16(v144), vmovl_high_u16(v146));
        v150 = vceqq_s32(vmovl_u16(*v144.i8), vmovl_u16(*v146.i8));
        v152 = *(a3 + v136 + 64);
        v151 = *(a3 + v136 + 80);
        v153 = vceqq_s32(vmovl_high_u16(v142), vmovl_high_u16(v152));
        v154 = vceqq_s32(vmovl_u16(*v142.i8), vmovl_u16(*v152.i8));
        v155 = vceqq_s32(vmovl_high_u16(v141), vmovl_high_u16(v151));
        v156 = vceqq_s32(vmovl_u16(*v141.i8), vmovl_u16(*v151.i8));
        v158 = *(a3 + v136 + 32);
        v157 = *(a3 + v136 + 48);
        *v138 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*(result + v136)), vmovl_u16(*(a3 + v136)))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(*(result + v136)), vmovl_high_u16(*(a3 + v136))))), vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*(result + v136 + 16)), vmovl_u16(*(a3 + v136 + 16)))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(*(result + v136 + 16)), vmovl_high_u16(*(a3 + v136 + 16))))));
        v138[1] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*v140.i8), vmovl_u16(*v158.i8))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(v140), vmovl_high_u16(v158)))), vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*v139.i8), vmovl_u16(*v157.i8))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(v139), vmovl_high_u16(v157)))));
        v138[2] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, v154), veorq_s8(v122, v153)), vuzp1q_s16(veorq_s8(v122, v156), veorq_s8(v122, v155)));
        v138[3] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, v148), veorq_s8(v122, v147)), vuzp1q_s16(veorq_s8(v122, v150), veorq_s8(v122, v149)));
        v138 += 4;
        v136 += 128;
        v137 -= 16;
      }

      while (v137);
      v136 = 4 * (v117 & 0x3FFFFFF0);
      if (v117 != (v117 & 0x3FFFFFF0))
      {
LABEL_154:
        v159 = 2 * v136 + 6;
        do
        {
          v160 = result + 2 * v136;
          v161 = a3 + 2 * v136;
          if (*(v160 + 2) == *(v161 + 2))
          {
            v162 = ~v95;
          }

          else
          {
            v162 = v95;
          }

          if (*(result + v159 - 6) == *(a3 + v159 - 6))
          {
            v163 = ~v95;
          }

          else
          {
            v163 = v95;
          }

          v164 = &a5->i8[v136];
          *v164 = v163;
          v164[1] = v162;
          if (*(result + v159) == *(a3 + v159))
          {
            v165 = ~v95;
          }

          else
          {
            v165 = v95;
          }

          if (*(v160 + 4) == *(v161 + 4))
          {
            v166 = ~v95;
          }

          else
          {
            v166 = v95;
          }

          v164[2] = v166;
          v164[3] = v165;
          v136 += 4;
          v159 += 8;
        }

        while (v136 <= v96);
      }

      if (v136 >= v182)
      {
        goto LABEL_149;
      }

      v167 = (v96 & 0x7FFFFFFC) + 4;
      if (v131)
      {
        do
        {
LABEL_179:
          if (*(result + 2 * v167) == *(a3 + 2 * v167))
          {
            v178 = ~v95;
          }

          else
          {
            v178 = v95;
          }

          a5->i8[v167++] = v178;
        }

        while (v167 < v104);
        goto LABEL_149;
      }

      if (v113 >= 0x10)
      {
        v169 = (v96 & 0x7FFFFFFC) + 4;
        v170 = 8 * ((v96 >> 2) & 0x1FFFFFFF) + 8;
        v171 = v113 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v173 = *(result + v170);
          v172 = *(result + v170 + 16);
          v175 = *(a3 + v170);
          v174 = *(a3 + v170 + 16);
          v184.val[3] = veorq_s8(v122, vceqq_s32(vmovl_high_u16(v172), vmovl_high_u16(v174)));
          v184.val[1] = veorq_s8(v122, vceqq_s32(vmovl_high_u16(v173), vmovl_high_u16(v175)));
          v184.val[2] = veorq_s8(v122, vceqq_s32(vmovl_u16(*v172.i8), vmovl_u16(*v174.i8)));
          v184.val[0] = veorq_s8(v122, vceqq_s32(vmovl_u16(*v173.i8), vmovl_u16(*v175.i8)));
          *(a5 + v169) = vqtbl4q_s8(v184, xmmword_1003E36F0);
          v170 += 32;
          v169 += 16;
          v171 -= 16;
        }

        while (v171);
        if (v113 == (v113 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_149;
        }

        v168 = v113 & 0xFFFFFFFFFFFFFFF0;
        v167 = v106 + (v113 & 0xFFFFFFFFFFFFFFF0);
        if ((v113 & 0xC) == 0)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v168 = 0;
      }

      v176 = v106 + v168;
      v177 = 8 * ((v96 >> 2) & 0x1FFFFFFF) + 8 + 2 * v168;
      do
      {
        *(a5->i32 + v176) = vuzp1_s8(vmovn_s32(veorq_s8(v122, vceqq_s32(vmovl_u16(*(result + v177)), vmovl_u16(*(a3 + v177))))), *v122.i8).u32[0];
        v176 += 4;
        v177 += 8;
      }

      while (v134 != v176);
      v167 = v106 + v113 - v129;
      if (v129)
      {
        goto LABEL_179;
      }

LABEL_149:
      a5 = (a5 + a6);
      LODWORD(v103) = v135 - 1;
      result += v132;
      a3 += v133;
      if (!v135)
      {
        return result;
      }
    }
  }

  v12 = v9 != 2;
  if (v9 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  v13 = a3;
  v14 = a4 >> 1;
  a3 = result;
  v11 = a2 >> 1;
LABEL_6:
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 255;
  }

  if (a8)
  {
    v16 = 0;
    v17 = (a7 - 8);
    v18 = a7 - 4;
    v19 = a7;
    v179 = 2 * a7;
    v20 = 2 * v11;
    v21 = vdupq_n_s32(v15);
    v22 = 2 * v14;
    result = v13;
    v23 = a3;
    v24 = a5;
    v180 = v22;
    do
    {
      if (v9 > 3)
      {
        if (a7 < 8)
        {
LABEL_18:
          LODWORD(i) = 0;
          v27 = &a5->i8[v16 * a6];
          v28 = a3 + v20 * v16;
          v29 = v13 + v22 * v16;
          if (v18 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        v30 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *&v24->i8[i] = vmovn_s16(vcgeq_u16(*(v23 + v30), *(result + v30)));
          v30 += 16;
        }
      }

      else
      {
        if (a7 < 8)
        {
          goto LABEL_18;
        }

        v25 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *&v24->i8[i] = vmovn_s16(vcgtq_u16(*(result + v25), *(v23 + v25)));
          v25 += 16;
        }
      }

      v27 = &a5->i8[v16 * a6];
      v28 = a3 + v20 * v16;
      v29 = v13 + v22 * v16;
      if (i > v18)
      {
LABEL_19:
        if (i >= a7)
        {
          goto LABEL_11;
        }

        goto LABEL_41;
      }

LABEL_24:
      v31 = v20;
      v32 = v13;
      v33 = i;
      v34 = v18 - i;
      if (v34 <= 0x3B || ((v47 = v34 >> 2, v48 = &v27[v33 + 4 + (v34 & 0xFFFFFFFFFFFFFFFCLL)], v49 = 2 * v33, v50 = 2 * v33 + 8 * v47, v51 = v28 + 8 + v50, v24->u64 + v33 < v29 + 8 + v50) ? (v52 = result + 2 * v33 >= v48) : (v52 = 1), v52 ? (v53 = 0) : (v53 = 1), v23 + 2 * v33 < v48 ? (v54 = v24->u64 + v33 >= v51) : (v54 = 1), !v54 || (v53 & 1) != 0))
      {
        i = v33;
      }

      else
      {
        v55 = v47 + 1;
        v56 = (v47 + 1) & 0x7FFFFFFFFFFFFFF0;
        i = v33 + 4 * v56;
        v57 = v56;
        do
        {
          v59 = *(result + v49 + 32);
          v58 = *(result + v49 + 48);
          v61 = *(result + v49 + 64);
          v60 = *(result + v49 + 80);
          v62 = *(result + v49 + 96);
          v63 = *(result + v49 + 112);
          v64 = *(v23 + v49 + 96);
          v65 = *(v23 + v49 + 112);
          v66 = vcgtq_u32(vmovl_high_u16(v62), vmovl_high_u16(v64));
          v67 = vcgtq_u32(vmovl_u16(*v62.i8), vmovl_u16(*v64.i8));
          v68 = vcgtq_u32(vmovl_high_u16(v63), vmovl_high_u16(v65));
          v69 = vcgtq_u32(vmovl_u16(*v63.i8), vmovl_u16(*v65.i8));
          v71 = *(v23 + v49 + 64);
          v70 = *(v23 + v49 + 80);
          v72 = vcgtq_u32(vmovl_high_u16(v61), vmovl_high_u16(v71));
          v73 = vcgtq_u32(vmovl_u16(*v61.i8), vmovl_u16(*v71.i8));
          v74 = vcgtq_u32(vmovl_high_u16(v60), vmovl_high_u16(v70));
          v75 = vcgtq_u32(vmovl_u16(*v60.i8), vmovl_u16(*v70.i8));
          v77 = *(v23 + v49 + 32);
          v76 = *(v23 + v49 + 48);
          v78 = (v24 + v33);
          *v78 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*(result + v49)), vmovl_u16(*(v23 + v49)))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(*(result + v49)), vmovl_high_u16(*(v23 + v49))))), vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*(result + v49 + 16)), vmovl_u16(*(v23 + v49 + 16)))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(*(result + v49 + 16)), vmovl_high_u16(*(v23 + v49 + 16))))));
          v78[1] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*v59.i8), vmovl_u16(*v77.i8))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v59), vmovl_high_u16(v77)))), vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*v58.i8), vmovl_u16(*v76.i8))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v58), vmovl_high_u16(v76)))));
          v78[2] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, v73), veorq_s8(v21, v72)), vuzp1q_s16(veorq_s8(v21, v75), veorq_s8(v21, v74)));
          v78[3] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, v67), veorq_s8(v21, v66)), vuzp1q_s16(veorq_s8(v21, v69), veorq_s8(v21, v68)));
          v33 += 64;
          v49 += 128;
          v57 -= 16;
        }

        while (v57);
        if (v55 == v56)
        {
          goto LABEL_40;
        }
      }

      v35 = 2 * i + 6;
      do
      {
        v36 = result + 2 * i;
        v37 = v23 + 2 * i;
        if (*(v36 + 2) <= *(v37 + 2))
        {
          v38 = v15;
        }

        else
        {
          v38 = ~v15;
        }

        if (*(result + v35 - 6) <= *(v23 + v35 - 6))
        {
          v39 = v15;
        }

        else
        {
          v39 = ~v15;
        }

        v40 = &v24->i8[i];
        *v40 = v39;
        v40[1] = v38;
        if (*(result + v35) <= *(v23 + v35))
        {
          v41 = v15;
        }

        else
        {
          v41 = ~v15;
        }

        if (*(v36 + 4) <= *(v37 + 4))
        {
          v42 = v15;
        }

        else
        {
          v42 = ~v15;
        }

        v40[2] = v42;
        v40[3] = v41;
        i += 4;
        v35 += 8;
      }

      while (i <= v18);
LABEL_40:
      v13 = v32;
      a6 = v181;
      a7 = v182;
      v20 = v31;
      v22 = v180;
      if (i >= v182)
      {
        goto LABEL_11;
      }

LABEL_41:
      v43 = i;
      v44 = v19 - i;
      if (v44 < 4)
      {
        v45 = v43;
        goto LABEL_43;
      }

      v79 = &v27[v19];
      v80 = v28 + v179;
      v81 = 2 * v43;
      v83 = v24->u64 + v43 < v29 + v179 && result + 2 * v43 < v79;
      if (v23 + 2 * v43 < v79 && v24->u64 + v43 < v80)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v83)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v44 >= 0x10)
      {
        v85 = v44 & 0xFFFFFFFFFFFFFFF0;
        v86 = v43;
        v87 = v44 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v89 = *(result + v81);
          v88 = *(result + v81 + 16);
          v91 = *(v23 + v81);
          v90 = *(v23 + v81 + 16);
          v183.val[3] = veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v88), vmovl_high_u16(v90)));
          v183.val[1] = veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v89), vmovl_high_u16(v91)));
          v183.val[2] = veorq_s8(v21, vcgtq_u32(vmovl_u16(*v88.i8), vmovl_u16(*v90.i8)));
          v183.val[0] = veorq_s8(v21, vcgtq_u32(vmovl_u16(*v89.i8), vmovl_u16(*v91.i8)));
          *(v24 + v86) = vqtbl4q_s8(v183, xmmword_1003E36F0);
          v81 += 32;
          v86 += 16;
          v87 -= 16;
        }

        while (v87);
        if (v44 == v85)
        {
          goto LABEL_11;
        }

        if ((v44 & 0xC) == 0)
        {
          v45 = v85 + v43;
          do
          {
LABEL_43:
            if (*(result + 2 * v45) <= *(v23 + 2 * v45))
            {
              v46 = v15;
            }

            else
            {
              v46 = ~v15;
            }

            v24->i8[v45++] = v46;
          }

          while (v19 != v45);
          goto LABEL_11;
        }
      }

      else
      {
        v85 = 0;
      }

      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + v43;
      v92 = v85 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
      v93 = v85 + v43;
      v94 = 2 * v93;
      do
      {
        *(v24->i32 + v93) = vuzp1_s8(vmovn_s32(veorq_s8(v21, vcgtq_u32(vmovl_u16(*(result + v94)), vmovl_u16(*(v23 + v94))))), *v21.i8).u32[0];
        v94 += 8;
        v93 += 4;
        v92 += 4;
      }

      while (v92);
      if (v44 != (v44 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_43;
      }

LABEL_11:
      result += v22;
      v23 += v20;
      v24 = (v24 + a6);
      ++v16;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001EBFB4(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, int8x16_t *a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a4 >> 1;
  v167 = a6;
  if ((*a9 & 0xFFFFFFFE) == 2)
  {
    v11 = v9 != 2;
    v12 = a3;
    v13 = a4 >> 1;
    a3 = result;
    v10 = a2 >> 1;
LABEL_3:
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = 255;
    }

    if (!a8)
    {
      return result;
    }

    v15 = a8 - 1;
    v16 = (a7 - 16);
    if (a7 < 16)
    {
      if (a7 >= 1)
      {
        v17 = 2 * v13;
        v18 = 2 * v10;
        do
        {
          v19 = 0;
          v20 = v15;
          do
          {
            if (*(v12 + 2 * v19) <= *(a3 + 2 * v19))
            {
              v21 = v14;
            }

            else
            {
              v21 = ~v14;
            }

            a5->i8[v19++] = v21;
          }

          while (a7 != v19);
          a5 = (a5 + a6);
          --v15;
          v12 += v17;
          a3 += v18;
        }

        while (v20);
      }

      return result;
    }

    v22 = 0;
    v23 = a7;
    v24 = vdupq_n_s8(v14);
    v25 = v16 & 0x7FFFFFF0;
    v26 = v25 + 17;
    if (v25 + 17 <= a7)
    {
      v26 = a7;
    }

    v156 = v26 - v25;
    result = 2 * v10;
    v162 = 2 * v26 - ((2 * (a7 - 16)) & 0xFFFFFFE0);
    v27 = 2 * v13;
    v28 = v26 - 16;
    v29 = v26 - 16 - v25;
    v30 = v26 & 0xF;
    v31 = vdupq_n_s32(v14);
    v32 = v26 & 3;
    v158 = v29;
    v150 = v29 - v32;
    v152 = v32;
    v154 = v30;
    v146 = v29 - v30;
    v147 = v28 - v30 - v25;
    v33 = v12 + 32;
    v34 = (a3 + 32);
    v35 = a5 + 1;
    v148 = v28 - v32 - v25;
    v36 = a3;
    v37 = v12;
    v38 = a5;
    v164 = result;
    v160 = v27;
    while (1)
    {
      v39 = 0;
      v40 = 0;
      v168 = v15;
      v41 = v22 * a6;
      v42 = result * v22;
      v43 = result * v22 + 32;
      v44 = v162 + v42;
      v45 = v27 * v22;
      v46 = v27 * v22 + 32;
      v47 = v162 + v45;
      v48 = v35;
      v49 = v34;
      v50 = v33;
      v51 = 16;
      do
      {
        v52 = (v37 + 2 * v40);
        v53 = (v36 + 2 * v40);
        v54 = v52[1];
        v55 = v53[1];
        v56 = vcgtq_s16(*v52, *v53);
        v57 = v51;
        v58 = v39;
        v59 = v50;
        v60 = v49;
        v61 = v48;
        v38[v40 / 0x10] = veorq_s8(vqmovn_high_u16(vqmovn_u16(v56), vcgtq_s16(v54, v55)), v24);
        v40 += 16;
        v51 += 16;
        ++v39;
        v50 += 2;
        v49 += 2;
        ++v48;
      }

      while (v40 <= v16);
      if (v40 >= a7)
      {
        goto LABEL_27;
      }

      if (v158 < 4)
      {
        v62 = v57;
        goto LABEL_33;
      }

      v64 = &a5[v58].i8[v41];
      v65 = (v64 + 16);
      v66 = &v64[v156];
      v67 = a3 + 32 * v58 + v43;
      v68 = v12 + 32 * v58 + v46;
      v70 = (v64 + 16) < v12 + v47 + 32 * v58 && v68 < v66;
      if (v67 < v66 && v65 < a3 + v44 + 32 * v58)
      {
        v62 = v57;
        goto LABEL_33;
      }

      if (v70)
      {
        v62 = v57;
        goto LABEL_33;
      }

      if (v158 >= 0x10)
      {
        v73 = v61;
        v74 = v147;
        do
        {
          v76 = *v59;
          v75 = v59[1];
          v59 += 2;
          v78 = *v60;
          v77 = v60[1];
          v60 += 2;
          v170.val[3] = veorq_s8(v31, vcgtq_s32(vmovl_high_s16(v75), vmovl_high_s16(v77)));
          v170.val[1] = veorq_s8(v31, vcgtq_s32(vmovl_high_s16(v76), vmovl_high_s16(v78)));
          v170.val[2] = veorq_s8(v31, vcgtq_s32(vmovl_s16(*v75.i8), vmovl_s16(*v77.i8)));
          v170.val[0] = veorq_s8(v31, vcgtq_s32(vmovl_s16(*v76.i8), vmovl_s16(*v78.i8)));
          *v73++ = vqtbl4q_s8(v170, xmmword_1003E36F0);
          v74 -= 16;
        }

        while (v74);
        if (!v154)
        {
          goto LABEL_27;
        }

        v72 = v146;
        if (v154 <= 3)
        {
          v62 = v57 + v146;
          do
          {
LABEL_33:
            if (*(v37 + 2 * v62) <= *(v36 + 2 * v62))
            {
              v63 = v14;
            }

            else
            {
              v63 = ~v14;
            }

            v38->i8[v62++] = v63;
          }

          while (v62 < v23);
          goto LABEL_27;
        }
      }

      else
      {
        v72 = 0;
      }

      v62 = v57 + v150;
      v79 = v148 - v72;
      v80 = 2 * (v72 + v57);
      v81 = (v61->i32 + v72);
      do
      {
        *v81++ = vuzp1_s8(vmovn_s32(veorq_s8(v31, vcgtq_s32(vmovl_s16(*(v37 + v80)), vmovl_s16(*(v36 + v80))))), *v24.i8).u32[0];
        v80 += 8;
        v79 -= 4;
      }

      while (v79);
      if (v152)
      {
        goto LABEL_33;
      }

LABEL_27:
      v27 = v160;
      v37 += v160;
      result = v164;
      v36 += v164;
      a6 = v167;
      v38 = (v38 + v167);
      v15 = v168 - 1;
      ++v22;
      v33 += v160;
      v34 = (v34 + v164);
      v35 = (v35 + v167);
      if (!v168)
      {
        return result;
      }
    }
  }

  v11 = v9 == 1;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v12 = result;
      v13 = a2 >> 1;
      if (v9 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v9)
  {
    v12 = result;
    v13 = a2 >> 1;
    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v9)
  {
    v82 = 255;
  }

  else
  {
    v82 = 0;
  }

  if (!a8)
  {
    return result;
  }

  v83 = a8 - 1;
  v84 = (a7 - 16);
  if (a7 >= 16)
  {
    v89 = 0;
    v90 = a7;
    v91 = vdupq_n_s8(v82);
    v92 = v84 & 0x7FFFFFF0;
    v93 = v92 + 17;
    if (v92 + 17 <= a7)
    {
      v93 = a7;
    }

    v163 = v93 - v92;
    v94 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v161 = 2 * v93 - ((2 * (a7 - 16)) & 0xFFFFFFE0);
    v95 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v96 = v93 - 16 - v92;
    v149 = v96 - (v93 & 0xF);
    v97 = vdupq_n_s32(v82);
    v165 = v96;
    v155 = v96 - (v93 & 3);
    v157 = v93 & 3;
    v159 = v93 & 0xF;
    v151 = v93 - 16 - v159 - v92;
    v98 = (result + 32);
    v99 = (a3 + 32);
    v100 = a5 + 1;
    v153 = v93 - 16 - v157 - v92;
    v101 = a3;
    v102 = result;
    v103 = a5;
    v169 = a2 & 0xFFFFFFFFFFFFFFFELL;
    while (1)
    {
      v104 = 0;
      v105 = 0;
      v106 = v83;
      v107 = v89 * a6;
      v108 = v94 * v89;
      v109 = v100;
      v110 = v99;
      v111 = v98;
      v112 = 16;
      do
      {
        v113 = (v102 + 2 * v105);
        v114 = (v101 + 2 * v105);
        v115 = v113[1];
        v116 = v114[1];
        v117 = vceqq_s16(*v113, *v114);
        v118 = v112;
        v119 = v104;
        v120 = v111;
        v121 = v110;
        v122 = v109;
        v103[v105 / 0x10] = veorq_s8(vqmovn_high_u16(vqmovn_u16(v117), vceqq_s16(v115, v116)), v91);
        v105 += 16;
        v112 += 16;
        ++v104;
        v111 += 2;
        v110 += 2;
        ++v109;
      }

      while (v105 <= v84);
      if (v105 >= a7)
      {
        goto LABEL_79;
      }

      if (v165 < 4)
      {
        v123 = v118;
        goto LABEL_85;
      }

      v125 = &a5[v119].i8[v107];
      v126 = v125 + 16;
      v127 = &v125[v163];
      v128 = 32 * v119;
      v129 = result + v108 + 32 * v119;
      v130 = v129 + 32;
      v131 = v129 + v161;
      v132 = a3 + v95 * v89 + v128;
      v134 = v126 < v132 + v161 && v132 + 32 < v127;
      if (v130 < v127 && v126 < v131)
      {
        v123 = v118;
        goto LABEL_85;
      }

      if (v134)
      {
        v123 = v118;
        goto LABEL_85;
      }

      if (v165 >= 0x10)
      {
        v137 = v122;
        v138 = v151;
        do
        {
          v140 = *v120;
          v139 = v120[1];
          v120 += 2;
          v142 = *v121;
          v141 = v121[1];
          v121 += 2;
          v171.val[3] = veorq_s8(v97, vceqq_s32(vmovl_high_u16(v139), vmovl_high_u16(v141)));
          v171.val[1] = veorq_s8(v97, vceqq_s32(vmovl_high_u16(v140), vmovl_high_u16(v142)));
          v171.val[2] = veorq_s8(v97, vceqq_s32(vmovl_u16(*v139.i8), vmovl_u16(*v141.i8)));
          v171.val[0] = veorq_s8(v97, vceqq_s32(vmovl_u16(*v140.i8), vmovl_u16(*v142.i8)));
          *v137++ = vqtbl4q_s8(v171, xmmword_1003E36F0);
          v138 -= 16;
        }

        while (v138);
        if (!v159)
        {
          goto LABEL_79;
        }

        v136 = v149;
        if (v159 <= 3)
        {
          v123 = v118 + v149;
          do
          {
LABEL_85:
            if (*(v102 + 2 * v123) == *(v101 + 2 * v123))
            {
              v124 = ~v82;
            }

            else
            {
              v124 = v82;
            }

            v103->i8[v123++] = v124;
          }

          while (v123 < v90);
          goto LABEL_79;
        }
      }

      else
      {
        v136 = 0;
      }

      v123 = v118 + v155;
      v143 = v153 - v136;
      v144 = 2 * (v136 + v118);
      v145 = (v122->i32 + v136);
      do
      {
        *v145++ = vuzp1_s8(vmovn_s32(veorq_s8(v97, vceqq_s32(vmovl_u16(*(v102 + v144)), vmovl_u16(*(v101 + v144))))), *v91.i8).u32[0];
        v144 += 8;
        v143 -= 4;
      }

      while (v143);
      if (v157)
      {
        goto LABEL_85;
      }

LABEL_79:
      a6 = v167;
      v94 = v169;
      v102 += v169;
      v101 += v95;
      v103 = (v103 + v167);
      v83 = v106 - 1;
      ++v89;
      v98 = (v98 + v169);
      v99 = (v99 + v95);
      v100 = (v100 + v167);
      if (!v106)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v85 = 2 * v10;
    do
    {
      v86 = 0;
      v87 = v83;
      do
      {
        if (*(result + 2 * v86) == *(a3 + 2 * v86))
        {
          v88 = ~v82;
        }

        else
        {
          v88 = v82;
        }

        a5->i8[v86++] = v88;
      }

      while (a7 != v86);
      a5 = (a5 + a6);
      --v83;
      result += 2 * (a2 >> 1);
      a3 += v85;
    }

    while (v87);
  }

  return result;
}

unint64_t sub_1001EC74C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a2 >> 2;
  v11 = a4 >> 2;
  v139 = a6;
  v140 = a7;
  if ((*a9 & 0xFFFFFFFE) != 2)
  {
    v12 = v9 == 1;
    if (v9 > 3)
    {
      if (v9 != 5)
      {
        v13 = result;
        v14 = a2 >> 2;
        if (v9 != 4)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (v9)
    {
      v13 = result;
      v14 = a2 >> 2;
      if (v9 != 1)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v9)
    {
      v74 = 255;
    }

    else
    {
      v74 = 0;
    }

    if (!a8)
    {
      return result;
    }

    v75 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v76 = (a3 + 8);
        v77 = (result + 8);
        v78 = (a5 + 1);
        do
        {
          if (*(v77 - 2) == *(v76 - 2))
          {
            v79 = ~v74;
          }

          else
          {
            v79 = v74;
          }

          *(v78 - 1) = v79;
          if (a7 != 1)
          {
            v80 = *(v77 - 1) == *(v76 - 1) ? ~v74 : v74;
            *v78 = v80;
            if (a7 != 2)
            {
              if (*v77 == *v76)
              {
                v81 = ~v74;
              }

              else
              {
                v81 = v74;
              }

              v78[1] = v81;
            }
          }

          v76 += v11;
          v77 += v10;
          v78 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v82 = (a8 - 1);
    v83 = a7;
    v84 = v75 & 0x7FFFFFFC;
    v85 = v84 + 4;
    v86 = a5 + v84 + 4;
    if (v84 + 5 <= a7)
    {
      v87 = a7;
    }

    else
    {
      v87 = (v75 & 0x7FFFFFFC) + 5;
    }

    v88 = a5 + v87 + v82 * a6;
    v89 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
    v90 = result + v89;
    v91 = a3 + v89;
    v92 = v87 - v84 - 4;
    v93 = v86 + v82 * a6;
    v94 = result + 4 * (v10 * v82 + v84) + 16;
    v95 = a3 + 4 * (v11 * v82 + v84) + 16;
    v96 = (v75 >> 2) + 1;
    v98 = v95 > a5 && v93 > a3;
    v99 = v94 > a5 && v93 > result;
    v100 = a6 | a4;
    if (v99)
    {
      v98 = 1;
    }

    v101 = vdupq_n_s32(v74);
    v104 = v86 < result + 4 * (v10 * v82 + v87) && v90 < v88 || ((a6 | a2) & 0x8000000000000000) != 0;
    v107 = v86 < a3 + 4 * (v11 * v82 + v87) && v91 < v88 || v100 < 0 || v104;
    v108 = v87 & 3;
    v109 = v75 < 0x3C || ((v100 | a2) & 0x8000000000000000) != 0 || v98;
    v110 = (v92 < 4) | v107;
    v111 = 4 * v10;
    v112 = 4 * v11;
    v113 = v87 & 0xFFFFFFFC;
    while (1)
    {
      v114 = v82;
      v115 = 0;
      if (v109)
      {
        goto LABEL_154;
      }

      v116 = v96 & 0x3FFFFFF0;
      v117 = a5;
      do
      {
        v118 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 192), *(a3 + v115 + 192))), veorq_s8(v101, vceqq_s32(*(result + v115 + 208), *(a3 + v115 + 208)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 224), *(a3 + v115 + 224))), veorq_s8(v101, vceqq_s32(*(result + v115 + 240), *(a3 + v115 + 240)))));
        v119 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 128), *(a3 + v115 + 128))), veorq_s8(v101, vceqq_s32(*(result + v115 + 144), *(a3 + v115 + 144)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 160), *(a3 + v115 + 160))), veorq_s8(v101, vceqq_s32(*(result + v115 + 176), *(a3 + v115 + 176)))));
        v120 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 64), *(a3 + v115 + 64))), veorq_s8(v101, vceqq_s32(*(result + v115 + 80), *(a3 + v115 + 80)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 96), *(a3 + v115 + 96))), veorq_s8(v101, vceqq_s32(*(result + v115 + 112), *(a3 + v115 + 112)))));
        *v117 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115), *(a3 + v115))), veorq_s8(v101, vceqq_s32(*(result + v115 + 16), *(a3 + v115 + 16)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 32), *(a3 + v115 + 32))), veorq_s8(v101, vceqq_s32(*(result + v115 + 48), *(a3 + v115 + 48)))));
        *(v117 + 16) = v120;
        *(v117 + 32) = v119;
        *(v117 + 48) = v118;
        v117 += 64;
        v115 += 256;
        v116 -= 16;
      }

      while (v116);
      v115 = 4 * (v96 & 0x3FFFFFF0);
      if (v96 != (v96 & 0x3FFFFFF0))
      {
LABEL_154:
        v121 = 4 * v115 + 12;
        do
        {
          v122 = result + 4 * v115;
          v123 = a3 + 4 * v115;
          if (*(v122 + 4) == *(v123 + 4))
          {
            v124 = ~v74;
          }

          else
          {
            v124 = v74;
          }

          if (*(result + v121 - 12) == *(a3 + v121 - 12))
          {
            v125 = ~v74;
          }

          else
          {
            v125 = v74;
          }

          v126 = (a5 + v115);
          *v126 = v125;
          v126[1] = v124;
          if (*(result + v121) == *(a3 + v121))
          {
            v127 = ~v74;
          }

          else
          {
            v127 = v74;
          }

          if (*(v122 + 8) == *(v123 + 8))
          {
            v128 = ~v74;
          }

          else
          {
            v128 = v74;
          }

          v126[2] = v128;
          v126[3] = v127;
          v115 += 4;
          v121 += 16;
        }

        while (v115 <= v75);
      }

      if (v115 >= v140)
      {
        goto LABEL_149;
      }

      v129 = (v75 & 0x7FFFFFFC) + 4;
      if (v110)
      {
        do
        {
LABEL_179:
          if (*(result + 4 * v129) == *(a3 + 4 * v129))
          {
            v136 = ~v74;
          }

          else
          {
            v136 = v74;
          }

          *(a5 + v129++) = v136;
        }

        while (v129 < v83);
        goto LABEL_149;
      }

      if (v92 >= 0x10)
      {
        v131 = (v75 & 0x7FFFFFFC) + 4;
        v132 = 16 * ((v75 >> 2) & 0x1FFFFFFF) + 16;
        v133 = v92 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v142.val[3] = veorq_s8(v101, vceqq_s32(*(result + v132 + 48), *(a3 + v132 + 48)));
          v142.val[2] = veorq_s8(v101, vceqq_s32(*(result + v132 + 32), *(a3 + v132 + 32)));
          v142.val[1] = veorq_s8(v101, vceqq_s32(*(result + v132 + 16), *(a3 + v132 + 16)));
          v142.val[0] = veorq_s8(v101, vceqq_s32(*(result + v132), *(a3 + v132)));
          *(a5 + v131) = vqtbl4q_s8(v142, xmmword_1003E36F0);
          v132 += 64;
          v131 += 16;
          v133 -= 16;
        }

        while (v133);
        if (v92 == (v92 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_149;
        }

        v130 = v92 & 0xFFFFFFFFFFFFFFF0;
        v129 = v85 + (v92 & 0xFFFFFFFFFFFFFFF0);
        if ((v92 & 0xC) == 0)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v130 = 0;
      }

      v134 = v85 + v130;
      v135 = 16 * ((v75 >> 2) & 0x1FFFFFFF) + 16 + 4 * v130;
      do
      {
        *(a5 + v134) = vuzp1_s8(vmovn_s32(veorq_s8(v101, vceqq_s32(*(result + v135), *(a3 + v135)))), *v101.i8).u32[0];
        v134 += 4;
        v135 += 16;
      }

      while (v113 != v134);
      v129 = v85 + v92 - v108;
      if (v108)
      {
        goto LABEL_179;
      }

LABEL_149:
      a5 += a6;
      LODWORD(v82) = v114 - 1;
      result += v111;
      a3 += v112;
      if (!v114)
      {
        return result;
      }
    }
  }

  v12 = v9 != 2;
  if (v9 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  v13 = a3;
  v14 = a4 >> 2;
  a3 = result;
  v11 = a2 >> 2;
LABEL_6:
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 255;
  }

  if (a8)
  {
    v16 = 0;
    v17 = (a7 - 8);
    v18 = a7 - 4;
    v19 = a7;
    v137 = 4 * a7;
    v20 = 4 * v11;
    v21 = vdupq_n_s32(v15);
    v22 = 4 * v14;
    result = v13;
    v23 = a3;
    v24 = a5;
    v138 = v22;
    do
    {
      if (v9 > 3)
      {
        if (a7 < 8)
        {
LABEL_18:
          LODWORD(i) = 0;
          v27 = a5 + v16 * a6;
          v28 = a3 + v20 * v16;
          v29 = v13 + v22 * v16;
          if (v18 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        v30 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *(v24 + i) = vmovn_s16(vuzp1q_s16(vcgeq_s32(*(v23 + v30), *(result + v30)), vcgeq_s32(*(v23 + v30 + 16), *(result + v30 + 16))));
          v30 += 32;
        }
      }

      else
      {
        if (a7 < 8)
        {
          goto LABEL_18;
        }

        v25 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *(v24 + i) = vmovn_s16(vuzp1q_s16(vcgtq_s32(*(result + v25), *(v23 + v25)), vcgtq_s32(*(result + v25 + 16), *(v23 + v25 + 16))));
          v25 += 32;
        }
      }

      v27 = a5 + v16 * a6;
      v28 = a3 + v20 * v16;
      v29 = v13 + v22 * v16;
      if (i > v18)
      {
LABEL_19:
        if (i >= a7)
        {
          goto LABEL_11;
        }

        goto LABEL_41;
      }

LABEL_24:
      v31 = v20;
      v32 = v13;
      v33 = i;
      v34 = v18 - i;
      if (v34 <= 0x3B || ((v47 = v34 >> 2, v48 = v27 + 4 + v33 + (v34 & 0xFFFFFFFFFFFFFFFCLL), v49 = 4 * v33, v50 = 4 * v33 + 16 * v47, v51 = v28 + 16 + v50, v24 + v33 < v29 + 16 + v50) ? (v52 = result + 4 * v33 >= v48) : (v52 = 1), v52 ? (v53 = 0) : (v53 = 1), v23 + 4 * v33 < v48 ? (v54 = v24 + v33 >= v51) : (v54 = 1), !v54 || (v53 & 1) != 0))
      {
        i = v33;
      }

      else
      {
        v55 = v47 + 1;
        v56 = (v47 + 1) & 0x7FFFFFFFFFFFFFF0;
        i = v33 + 4 * v56;
        v57 = v56;
        do
        {
          v58 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 192), *(v23 + v49 + 192))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 208), *(v23 + v49 + 208)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 224), *(v23 + v49 + 224))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 240), *(v23 + v49 + 240)))));
          v59 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 128), *(v23 + v49 + 128))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 144), *(v23 + v49 + 144)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 160), *(v23 + v49 + 160))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 176), *(v23 + v49 + 176)))));
          v60 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 64), *(v23 + v49 + 64))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 80), *(v23 + v49 + 80)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 96), *(v23 + v49 + 96))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 112), *(v23 + v49 + 112)))));
          v61 = (v24 + v33);
          *v61 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49), *(v23 + v49))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 16), *(v23 + v49 + 16)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 32), *(v23 + v49 + 32))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 48), *(v23 + v49 + 48)))));
          v61[1] = v60;
          v61[2] = v59;
          v61[3] = v58;
          v33 += 64;
          v49 += 256;
          v57 -= 16;
        }

        while (v57);
        if (v55 == v56)
        {
          goto LABEL_40;
        }
      }

      v35 = 4 * i + 12;
      do
      {
        v36 = result + 4 * i;
        v37 = v23 + 4 * i;
        if (*(v36 + 4) <= *(v37 + 4))
        {
          v38 = v15;
        }

        else
        {
          v38 = ~v15;
        }

        if (*(result + v35 - 12) <= *(v23 + v35 - 12))
        {
          v39 = v15;
        }

        else
        {
          v39 = ~v15;
        }

        v40 = (v24 + i);
        *v40 = v39;
        v40[1] = v38;
        if (*(result + v35) <= *(v23 + v35))
        {
          v41 = v15;
        }

        else
        {
          v41 = ~v15;
        }

        if (*(v36 + 8) <= *(v37 + 8))
        {
          v42 = v15;
        }

        else
        {
          v42 = ~v15;
        }

        v40[2] = v42;
        v40[3] = v41;
        i += 4;
        v35 += 16;
      }

      while (i <= v18);
LABEL_40:
      v13 = v32;
      a6 = v139;
      a7 = v140;
      v20 = v31;
      v22 = v138;
      if (i >= v140)
      {
        goto LABEL_11;
      }

LABEL_41:
      v43 = i;
      v44 = v19 - i;
      if (v44 < 4)
      {
        v45 = v43;
        goto LABEL_43;
      }

      v62 = v27 + v19;
      v63 = v28 + v137;
      v64 = 4 * v43;
      v66 = v24 + v43 < v29 + v137 && result + 4 * v43 < v62;
      if (v23 + 4 * v43 < v62 && v24 + v43 < v63)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v66)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v44 >= 0x10)
      {
        v68 = v44 & 0xFFFFFFFFFFFFFFF0;
        v69 = v43;
        v70 = v44 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v141.val[3] = veorq_s8(v21, vcgtq_s32(*(result + v64 + 48), *(v23 + v64 + 48)));
          v141.val[2] = veorq_s8(v21, vcgtq_s32(*(result + v64 + 32), *(v23 + v64 + 32)));
          v141.val[1] = veorq_s8(v21, vcgtq_s32(*(result + v64 + 16), *(v23 + v64 + 16)));
          v141.val[0] = veorq_s8(v21, vcgtq_s32(*(result + v64), *(v23 + v64)));
          *(v24 + v69) = vqtbl4q_s8(v141, xmmword_1003E36F0);
          v64 += 64;
          v69 += 16;
          v70 -= 16;
        }

        while (v70);
        if (v44 == v68)
        {
          goto LABEL_11;
        }

        if ((v44 & 0xC) == 0)
        {
          v45 = v68 + v43;
          do
          {
LABEL_43:
            if (*(result + 4 * v45) <= *(v23 + 4 * v45))
            {
              v46 = v15;
            }

            else
            {
              v46 = ~v15;
            }

            *(v24 + v45++) = v46;
          }

          while (v19 != v45);
          goto LABEL_11;
        }
      }

      else
      {
        v68 = 0;
      }

      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + v43;
      v71 = v68 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
      v72 = v68 + v43;
      v73 = 4 * v72;
      do
      {
        *(v24 + v72) = vuzp1_s8(vmovn_s32(veorq_s8(v21, vcgtq_s32(*(result + v73), *(v23 + v73)))), *v21.i8).u32[0];
        v73 += 16;
        v72 += 4;
        v71 += 4;
      }

      while (v71);
      if (v44 != (v44 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_43;
      }

LABEL_11:
      result += v22;
      v23 += v20;
      v24 += a6;
      ++v16;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001ED22C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a2 >> 2;
  v11 = a4 >> 2;
  v142 = a7;
  v143 = a6;
  if ((*a9 & 0xFFFFFFFE) != 2)
  {
    v12 = v9 == 1;
    if (v9 > 3)
    {
      if (v9 != 5)
      {
        v13 = result;
        v14 = a2 >> 2;
        if (v9 != 4)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (v9)
    {
      v13 = result;
      v14 = a2 >> 2;
      if (v9 != 1)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v9)
    {
      v75 = 255;
    }

    else
    {
      v75 = 0;
    }

    if (!a8)
    {
      return result;
    }

    v76 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v77 = (a3 + 8);
        v78 = (result + 8);
        v79 = (a5 + 1);
        do
        {
          if (*(v78 - 2) == *(v77 - 2))
          {
            v80 = -1;
          }

          else
          {
            v80 = 0;
          }

          *(v79 - 1) = v75 ^ v80;
          if (a7 != 1)
          {
            v81 = *(v78 - 1) == *(v77 - 1) ? -1 : 0;
            *v79 = v75 ^ v81;
            if (a7 != 2)
            {
              if (*v78 == *v77)
              {
                v82 = -1;
              }

              else
              {
                v82 = 0;
              }

              v79[1] = v75 ^ v82;
            }
          }

          v77 += v11;
          v78 += v10;
          v79 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v83 = (a8 - 1);
    v84 = a7;
    v85 = v76 & 0x7FFFFFFC;
    v86 = v85 + 4;
    v87 = a5 + v85 + 4;
    if (v85 + 5 <= a7)
    {
      v88 = a7;
    }

    else
    {
      v88 = (v76 & 0x7FFFFFFC) + 5;
    }

    v89 = a5 + v88 + v83 * a6;
    v90 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
    v91 = result + v90;
    v92 = a3 + v90;
    v93 = v88 - v85 - 4;
    v94 = v87 + v83 * a6;
    v95 = result + 4 * (v10 * v83 + v85) + 16;
    v96 = a3 + 4 * (v11 * v83 + v85) + 16;
    v97 = (v76 >> 2) + 1;
    v99 = v96 > a5 && v94 > a3;
    v100 = v95 > a5 && v94 > result;
    v101 = a6 | a4;
    if (v100)
    {
      v99 = 1;
    }

    v102 = vdupq_n_s32(v75);
    v105 = v87 < result + 4 * (v10 * v83 + v88) && v91 < v89 || ((a6 | a2) & 0x8000000000000000) != 0;
    v108 = v87 < a3 + 4 * (v11 * v83 + v88) && v92 < v89 || v101 < 0 || v105;
    v109 = v88 & 3;
    v110 = v76 < 0x3C || ((v101 | a2) & 0x8000000000000000) != 0 || v99;
    v111 = (v93 < 4) | v108;
    v112 = 4 * v10;
    v113 = 4 * v11;
    v114 = v88 & 0xFFFFFFFC;
    while (1)
    {
      v115 = v83;
      v116 = 0;
      if (v110)
      {
        goto LABEL_155;
      }

      v117 = v97 & 0x3FFFFFF0;
      v118 = a5;
      do
      {
        v119 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116 + 192), *(a3 + v116 + 192))), veorq_s8(v102, vceqq_f32(*(result + v116 + 208), *(a3 + v116 + 208)))), vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116 + 224), *(a3 + v116 + 224))), veorq_s8(v102, vceqq_f32(*(result + v116 + 240), *(a3 + v116 + 240)))));
        v120 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116 + 128), *(a3 + v116 + 128))), veorq_s8(v102, vceqq_f32(*(result + v116 + 144), *(a3 + v116 + 144)))), vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116 + 160), *(a3 + v116 + 160))), veorq_s8(v102, vceqq_f32(*(result + v116 + 176), *(a3 + v116 + 176)))));
        v121 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116 + 64), *(a3 + v116 + 64))), veorq_s8(v102, vceqq_f32(*(result + v116 + 80), *(a3 + v116 + 80)))), vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116 + 96), *(a3 + v116 + 96))), veorq_s8(v102, vceqq_f32(*(result + v116 + 112), *(a3 + v116 + 112)))));
        *v118 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116), *(a3 + v116))), veorq_s8(v102, vceqq_f32(*(result + v116 + 16), *(a3 + v116 + 16)))), vuzp1q_s16(veorq_s8(v102, vceqq_f32(*(result + v116 + 32), *(a3 + v116 + 32))), veorq_s8(v102, vceqq_f32(*(result + v116 + 48), *(a3 + v116 + 48)))));
        *(v118 + 16) = v121;
        *(v118 + 32) = v120;
        *(v118 + 48) = v119;
        v118 += 64;
        v116 += 256;
        v117 -= 16;
      }

      while (v117);
      v116 = 4 * (v97 & 0x3FFFFFF0);
      if (v97 != (v97 & 0x3FFFFFF0))
      {
LABEL_155:
        v122 = 4 * v116 + 12;
        do
        {
          if (*(result + v122 - 12) == *(a3 + v122 - 12))
          {
            v123 = -1;
          }

          else
          {
            v123 = 0;
          }

          v124 = v75 ^ v123;
          v125 = result + 4 * v116;
          v126 = a3 + 4 * v116;
          if (*(v125 + 4) == *(v126 + 4))
          {
            v127 = -1;
          }

          else
          {
            v127 = 0;
          }

          v128 = (a5 + v116);
          *v128 = v124;
          v128[1] = v75 ^ v127;
          if (*(v125 + 8) == *(v126 + 8))
          {
            v129 = -1;
          }

          else
          {
            v129 = 0;
          }

          v130 = v75 ^ v129;
          if (*(result + v122) == *(a3 + v122))
          {
            v131 = -1;
          }

          else
          {
            v131 = 0;
          }

          v128[2] = v130;
          v128[3] = v75 ^ v131;
          v116 += 4;
          v122 += 16;
        }

        while (v116 <= v76);
      }

      if (v116 >= v142)
      {
        goto LABEL_150;
      }

      v132 = (v76 & 0x7FFFFFFC) + 4;
      if (v111)
      {
        do
        {
LABEL_180:
          if (*(result + 4 * v132) == *(a3 + 4 * v132))
          {
            v139 = -1;
          }

          else
          {
            v139 = 0;
          }

          *(a5 + v132++) = v75 ^ v139;
        }

        while (v132 < v84);
        goto LABEL_150;
      }

      if (v93 >= 0x10)
      {
        v134 = (v76 & 0x7FFFFFFC) + 4;
        v135 = 16 * ((v76 >> 2) & 0x1FFFFFFF) + 16;
        v136 = v93 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v145.val[3] = veorq_s8(v102, vceqq_f32(*(result + v135 + 48), *(a3 + v135 + 48)));
          v145.val[2] = veorq_s8(v102, vceqq_f32(*(result + v135 + 32), *(a3 + v135 + 32)));
          v145.val[1] = veorq_s8(v102, vceqq_f32(*(result + v135 + 16), *(a3 + v135 + 16)));
          v145.val[0] = veorq_s8(v102, vceqq_f32(*(result + v135), *(a3 + v135)));
          *(a5 + v134) = vqtbl4q_s8(v145, xmmword_1003E36F0);
          v135 += 64;
          v134 += 16;
          v136 -= 16;
        }

        while (v136);
        if (v93 == (v93 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_150;
        }

        v133 = v93 & 0xFFFFFFFFFFFFFFF0;
        v132 = v86 + (v93 & 0xFFFFFFFFFFFFFFF0);
        if ((v93 & 0xC) == 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v133 = 0;
      }

      v137 = v86 + v133;
      v138 = 16 * ((v76 >> 2) & 0x1FFFFFFF) + 16 + 4 * v133;
      do
      {
        *(a5 + v137) = vuzp1_s8(vmovn_s32(veorq_s8(v102, vceqq_f32(*(result + v138), *(a3 + v138)))), *v102.i8).u32[0];
        v137 += 4;
        v138 += 16;
      }

      while (v114 != v137);
      v132 = v86 + v93 - v109;
      if (v109)
      {
        goto LABEL_180;
      }

LABEL_150:
      a5 += a6;
      LODWORD(v83) = v115 - 1;
      result += v112;
      a3 += v113;
      if (!v115)
      {
        return result;
      }
    }
  }

  v12 = v9 != 2;
  if (v9 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  v13 = a3;
  v14 = a4 >> 2;
  a3 = result;
  v11 = a2 >> 2;
LABEL_6:
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 255;
  }

  if (a8)
  {
    v16 = 0;
    v17 = (a7 - 8);
    v18 = a7 - 4;
    v19 = a7;
    v140 = 4 * a7;
    v20 = 4 * v11;
    v21 = vdupq_n_s32(v15);
    v22 = 4 * v14;
    result = v13;
    v23 = a3;
    v24 = a5;
    v141 = 4 * v11;
    do
    {
      if (v9 > 3)
      {
        if (a7 < 8)
        {
LABEL_18:
          LODWORD(i) = 0;
          v27 = a5 + v16 * a6;
          v28 = a3 + v20 * v16;
          v29 = v13 + v22 * v16;
          if (v18 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        v30 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *(v24 + i) = vmovn_s16(vuzp1q_s16(vcgeq_f32(*(v23 + v30), *(result + v30)), vcgeq_f32(*(v23 + v30 + 16), *(result + v30 + 16))));
          v30 += 32;
        }
      }

      else
      {
        if (a7 < 8)
        {
          goto LABEL_18;
        }

        v25 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *(v24 + i) = vmovn_s16(vuzp1q_s16(vcgtq_f32(*(result + v25), *(v23 + v25)), vcgtq_f32(*(result + v25 + 16), *(v23 + v25 + 16))));
          v25 += 32;
        }
      }

      v27 = a5 + v16 * a6;
      v28 = a3 + v20 * v16;
      v29 = v13 + v22 * v16;
      if (i > v18)
      {
LABEL_19:
        if (i >= a7)
        {
          goto LABEL_11;
        }

        goto LABEL_58;
      }

LABEL_24:
      v31 = i;
      v32 = v18 - i;
      if (v32 > 0x3B)
      {
        v33 = v13;
        v34 = v32 >> 2;
        v35 = v27 + 4 + v31 + (v32 & 0xFFFFFFFFFFFFFFFCLL);
        v36 = 4 * v31;
        v37 = 4 * v31 + 16 * v34;
        v38 = v28 + 16 + v37;
        v40 = v24 + v31 < v29 + 16 + v37 && result + 4 * v31 < v35;
        v41 = v23 + 4 * v31 >= v35 || v24 + v31 >= v38;
        if (!v41 || v40)
        {
          i = v31;
          v13 = v33;
          v20 = v141;
        }

        else
        {
          v42 = v34 + 1;
          v43 = (v34 + 1) & 0x7FFFFFFFFFFFFFF0;
          i = v31 + 4 * v43;
          v44 = v43;
          v13 = v33;
          do
          {
            v45 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36 + 192), *(v23 + v36 + 192))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 208), *(v23 + v36 + 208)))), vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36 + 224), *(v23 + v36 + 224))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 240), *(v23 + v36 + 240)))));
            v46 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36 + 128), *(v23 + v36 + 128))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 144), *(v23 + v36 + 144)))), vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36 + 160), *(v23 + v36 + 160))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 176), *(v23 + v36 + 176)))));
            v47 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36 + 64), *(v23 + v36 + 64))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 80), *(v23 + v36 + 80)))), vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36 + 96), *(v23 + v36 + 96))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 112), *(v23 + v36 + 112)))));
            v48 = (v24 + v31);
            *v48 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36), *(v23 + v36))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 16), *(v23 + v36 + 16)))), vuzp1q_s16(veorq_s8(v21, vcgtq_f32(*(result + v36 + 32), *(v23 + v36 + 32))), veorq_s8(v21, vcgtq_f32(*(result + v36 + 48), *(v23 + v36 + 48)))));
            v48[1] = v47;
            v48[2] = v46;
            v48[3] = v45;
            v31 += 64;
            v36 += 256;
            v44 -= 16;
          }

          while (v44);
          v20 = v141;
          if (v42 == v43)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        i = i;
      }

      v49 = 4 * i + 12;
      do
      {
        if (*(result + v49 - 12) <= *(v23 + v49 - 12))
        {
          v50 = 0;
        }

        else
        {
          v50 = -1;
        }

        v51 = v15 ^ v50;
        v52 = result + 4 * i;
        v53 = v23 + 4 * i;
        if (*(v52 + 4) <= *(v53 + 4))
        {
          v54 = 0;
        }

        else
        {
          v54 = -1;
        }

        v55 = (v24 + i);
        *v55 = v51;
        v55[1] = v15 ^ v54;
        if (*(v52 + 8) <= *(v53 + 8))
        {
          v56 = 0;
        }

        else
        {
          v56 = -1;
        }

        v57 = v15 ^ v56;
        if (*(result + v49) <= *(v23 + v49))
        {
          v58 = 0;
        }

        else
        {
          v58 = -1;
        }

        v55[2] = v57;
        v55[3] = v15 ^ v58;
        i += 4;
        v49 += 16;
      }

      while (i <= v18);
LABEL_57:
      a7 = v142;
      a6 = v143;
      if (i >= v142)
      {
        goto LABEL_11;
      }

LABEL_58:
      v59 = i;
      v60 = v19 - i;
      if (v60 < 4)
      {
        v61 = v59;
        goto LABEL_60;
      }

      v63 = v27 + v19;
      v64 = v28 + v140;
      v65 = 4 * v59;
      v67 = v24 + v59 < v29 + v140 && result + 4 * v59 < v63;
      if (v23 + 4 * v59 < v63 && v24 + v59 < v64)
      {
        v61 = v59;
        v20 = v141;
        goto LABEL_60;
      }

      v20 = v141;
      if (v67)
      {
        v61 = v59;
        goto LABEL_60;
      }

      if (v60 >= 0x10)
      {
        v69 = v60 & 0xFFFFFFFFFFFFFFF0;
        v70 = v59;
        v71 = v60 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v144.val[3] = veorq_s8(v21, vcgtq_f32(*(result + v65 + 48), *(v23 + v65 + 48)));
          v144.val[2] = veorq_s8(v21, vcgtq_f32(*(result + v65 + 32), *(v23 + v65 + 32)));
          v144.val[1] = veorq_s8(v21, vcgtq_f32(*(result + v65 + 16), *(v23 + v65 + 16)));
          v144.val[0] = veorq_s8(v21, vcgtq_f32(*(result + v65), *(v23 + v65)));
          *(v24 + v70) = vqtbl4q_s8(v144, xmmword_1003E36F0);
          v65 += 64;
          v70 += 16;
          v71 -= 16;
        }

        while (v71);
        if (v60 == v69)
        {
          goto LABEL_11;
        }

        if ((v60 & 0xC) == 0)
        {
          v61 = v69 + v59;
          do
          {
LABEL_60:
            if (*(result + 4 * v61) <= *(v23 + 4 * v61))
            {
              v62 = 0;
            }

            else
            {
              v62 = -1;
            }

            *(v24 + v61++) = v15 ^ v62;
          }

          while (v19 != v61);
          goto LABEL_11;
        }
      }

      else
      {
        v69 = 0;
      }

      v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL) + v59;
      v72 = v69 - (v60 & 0xFFFFFFFFFFFFFFFCLL);
      v73 = v69 + v59;
      v74 = 4 * v73;
      do
      {
        *(v24 + v73) = vuzp1_s8(vmovn_s32(veorq_s8(v21, vcgtq_f32(*(result + v74), *(v23 + v74)))), *v21.i8).u32[0];
        v74 += 16;
        v73 += 4;
        v72 += 4;
      }

      while (v72);
      if (v60 != (v60 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }

LABEL_11:
      result += v22;
      v23 += v20;
      v24 += a6;
      ++v16;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001EDD60(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a2 >> 3;
  v11 = a4 >> 3;
  if ((*a9 & 0xFFFFFFFE) == 2)
  {
    v12 = v9 != 2;
    v13 = a3;
    v14 = a2 >> 3;
    a3 = result;
    v10 = a4 >> 3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = 255;
    }

    if (!a8)
    {
      return result;
    }

    v16 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v17 = (a3 + 16);
        v18 = (v13 + 16);
        v19 = (a5 + 1);
        do
        {
          if (*(v18 - 2) <= *(v17 - 2))
          {
            v20 = 0;
          }

          else
          {
            v20 = -1;
          }

          *(v19 - 1) = v15 ^ v20;
          if (a7 != 1)
          {
            v21 = *(v18 - 1) <= *(v17 - 1) ? 0 : -1;
            *v19 = v15 ^ v21;
            if (a7 != 2)
            {
              if (*v18 <= *v17)
              {
                v22 = 0;
              }

              else
              {
                v22 = -1;
              }

              v19[1] = v15 ^ v22;
            }
          }

          v17 += v14;
          v18 += v10;
          v19 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v23 = (a8 - 1);
    v24 = v16 & 0x7FFFFFFC;
    v25 = v24 + 4;
    v26 = a5 + v24 + 4;
    if (v24 + 5 <= a7)
    {
      v27 = a7;
    }

    else
    {
      v27 = (v16 & 0x7FFFFFFC) + 5;
    }

    v28 = a5 + v27 + v23 * a6;
    v29 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
    v30 = a3 + v29;
    v31 = v13 + v29;
    v32 = v27 - v24 - 4;
    v33 = v26 + v23 * a6;
    v34 = a3 + 8 * (v14 * v23 + v24) + 32;
    v35 = v13 + 8 * (v10 * v23 + v24) + 32;
    v36 = (v16 >> 2) + 1;
    v38 = v35 > a5 && v13 < v33;
    v40 = v34 > a5 && a3 < v33 || v38;
    v42 = v26 < v13 + 8 * (v10 * v23 + v27) && v31 < v28;
    v44 = v26 < a3 + 8 * (v14 * v23 + v27) && v30 < v28 || v42;
    v45 = v14 >> 60;
    v46 = v40 | (v10 >> 60);
    if (a6 < 0)
    {
      v46 = 1;
    }

    v47 = vdupq_n_s32(v15);
    v48 = v44 | (v10 >> 60);
    if (a6 < 0)
    {
      v48 = 1;
    }

    v145 = v27 & 3;
    v49 = (v16 < 0x3C) | v46 | v45;
    v50 = (v32 < 4) | v48 | v45;
    v51 = 8 * v10;
    v52 = 8 * v14;
    result = 32 * ((v16 >> 2) & 0x1FFFFFFF) + 32;
    v53 = v27 & 0xFFFFFFFC;
    while (1)
    {
      v54 = v23;
      if (v49)
      {
        v55 = 0;
      }

      else
      {
        v56 = 0;
        v57 = v36 & 0x3FFFFFF0;
        v58 = a5;
        do
        {
          v59 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 384), *(a3 + v56 + 384)), vcgtq_f64(*(v13 + v56 + 400), *(a3 + v56 + 400)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 416), *(a3 + v56 + 416)), vcgtq_f64(*(v13 + v56 + 432), *(a3 + v56 + 432))))), vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 448), *(a3 + v56 + 448)), vcgtq_f64(*(v13 + v56 + 464), *(a3 + v56 + 464)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 480), *(a3 + v56 + 480)), vcgtq_f64(*(v13 + v56 + 496), *(a3 + v56 + 496))))));
          v60 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 256), *(a3 + v56 + 256)), vcgtq_f64(*(v13 + v56 + 272), *(a3 + v56 + 272)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 288), *(a3 + v56 + 288)), vcgtq_f64(*(v13 + v56 + 304), *(a3 + v56 + 304))))), vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 320), *(a3 + v56 + 320)), vcgtq_f64(*(v13 + v56 + 336), *(a3 + v56 + 336)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 352), *(a3 + v56 + 352)), vcgtq_f64(*(v13 + v56 + 368), *(a3 + v56 + 368))))));
          v61 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 128), *(a3 + v56 + 128)), vcgtq_f64(*(v13 + v56 + 144), *(a3 + v56 + 144)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 160), *(a3 + v56 + 160)), vcgtq_f64(*(v13 + v56 + 176), *(a3 + v56 + 176))))), vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 192), *(a3 + v56 + 192)), vcgtq_f64(*(v13 + v56 + 208), *(a3 + v56 + 208)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 224), *(a3 + v56 + 224)), vcgtq_f64(*(v13 + v56 + 240), *(a3 + v56 + 240))))));
          *v58 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56), *(a3 + v56)), vcgtq_f64(*(v13 + v56 + 16), *(a3 + v56 + 16)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 32), *(a3 + v56 + 32)), vcgtq_f64(*(v13 + v56 + 48), *(a3 + v56 + 48))))), vuzp1q_s16(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 64), *(a3 + v56 + 64)), vcgtq_f64(*(v13 + v56 + 80), *(a3 + v56 + 80)))), veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v56 + 96), *(a3 + v56 + 96)), vcgtq_f64(*(v13 + v56 + 112), *(a3 + v56 + 112))))));
          *(v58 + 16) = v61;
          *(v58 + 32) = v60;
          *(v58 + 48) = v59;
          v58 += 64;
          v56 += 512;
          v57 -= 16;
        }

        while (v57);
        v55 = 4 * (v36 & 0x3FFFFFF0);
        if (v36 == (v36 & 0x3FFFFFF0))
        {
          goto LABEL_82;
        }
      }

      v62 = 8 * v55 + 24;
      do
      {
        if (*(v13 + v62 - 24) <= *(a3 + v62 - 24))
        {
          v63 = 0;
        }

        else
        {
          v63 = -1;
        }

        v64 = v15 ^ v63;
        v65 = v13 + 8 * v55;
        v66 = a3 + 8 * v55;
        if (*(v65 + 8) <= *(v66 + 8))
        {
          v67 = 0;
        }

        else
        {
          v67 = -1;
        }

        v68 = (a5 + v55);
        *v68 = v64;
        v68[1] = v15 ^ v67;
        if (*(v65 + 16) <= *(v66 + 16))
        {
          v69 = 0;
        }

        else
        {
          v69 = -1;
        }

        result = v15 ^ v69;
        if (*(v13 + v62) <= *(a3 + v62))
        {
          v70 = 0;
        }

        else
        {
          v70 = -1;
        }

        v68[2] = result;
        v68[3] = v15 ^ v70;
        v55 += 4;
        v62 += 32;
      }

      while (v55 <= v16);
LABEL_82:
      if (v55 < a7)
      {
        v71 = (v16 & 0x7FFFFFFC) + 4;
        if (v50)
        {
          goto LABEL_93;
        }

        if (v32 >= 0x10)
        {
          v73 = (v16 & 0x7FFFFFFC) + 4;
          v74 = 32 * ((v16 >> 2) & 0x1FFFFFFF) + 32;
          v75 = v32 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v147.val[3] = veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v74 + 96), *(a3 + v74 + 96)), vcgtq_f64(*(v13 + v74 + 112), *(a3 + v74 + 112))));
            v147.val[2] = veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v74 + 64), *(a3 + v74 + 64)), vcgtq_f64(*(v13 + v74 + 80), *(a3 + v74 + 80))));
            v147.val[1] = veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v74 + 32), *(a3 + v74 + 32)), vcgtq_f64(*(v13 + v74 + 48), *(a3 + v74 + 48))));
            v147.val[0] = veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v74), *(a3 + v74)), vcgtq_f64(*(v13 + v74 + 16), *(a3 + v74 + 16))));
            *(a5 + v73) = vqtbl4q_s8(v147, xmmword_1003E36F0);
            v74 += 128;
            v73 += 16;
            v75 -= 16;
          }

          while (v75);
          if (v32 == (v32 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_62;
          }

          v72 = v32 & 0xFFFFFFFFFFFFFFF0;
          v71 = v25 + (v32 & 0xFFFFFFFFFFFFFFF0);
          if ((v32 & 0xC) == 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v72 = 0;
        }

        v76 = v25 + v72;
        v77 = 32 * ((v16 >> 2) & 0x1FFFFFFF) + 32 + 8 * v72;
        do
        {
          *(a5 + v76) = vuzp1_s8(vmovn_s32(veorq_s8(v47, vuzp1q_s32(vcgtq_f64(*(v13 + v77), *(a3 + v77)), vcgtq_f64(*(v13 + v77 + 16), *(a3 + v77 + 16))))), *v47.i8).u32[0];
          v76 += 4;
          v77 += 32;
        }

        while (v53 != v76);
        v71 = v25 + v32 - v145;
        result = v145;
        if (v145)
        {
          do
          {
LABEL_93:
            if (*(v13 + 8 * v71) <= *(a3 + 8 * v71))
            {
              v78 = 0;
            }

            else
            {
              v78 = -1;
            }

            result = v15 ^ v78;
            *(a5 + v71++) = result;
          }

          while (v71 < a7);
        }
      }

LABEL_62:
      a5 += a6;
      LODWORD(v23) = v54 - 1;
      v13 += v51;
      a3 += v52;
      if (!v54)
      {
        return result;
      }
    }
  }

  v12 = v9 == 1;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v13 = result;
      v14 = a4 >> 3;
      if (v9 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v9)
  {
    v13 = result;
    v14 = a4 >> 3;
    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v9)
  {
    v79 = 255;
  }

  else
  {
    v79 = 0;
  }

  if (!a8)
  {
    return result;
  }

  v80 = (a7 - 4);
  if (a7 >= 4)
  {
    v87 = (a8 - 1);
    v88 = v80 & 0x7FFFFFFC;
    v89 = v88 + 4;
    v90 = a5 + v88 + 4;
    if (v88 + 5 <= a7)
    {
      v91 = a7;
    }

    else
    {
      v91 = (v80 & 0x7FFFFFFC) + 5;
    }

    v92 = a5 + v91 + v87 * a6;
    v93 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
    v94 = result + v93;
    v95 = a3 + v93;
    v96 = v91 - v88 - 4;
    v97 = v90 + v87 * a6;
    v98 = result + 8 * (v10 * v87 + v88) + 32;
    v99 = a3 + 8 * (v11 * v87 + v88) + 32;
    v100 = (v80 >> 2) + 1;
    v102 = v99 > a5 && v97 > a3;
    v103 = v98 > a5 && v97 > result;
    v104 = a6 | a2;
    v105 = a6 | a4;
    if (v103)
    {
      v102 = 1;
    }

    v106 = ((v105 | a2) & 0x8000000000000000) != 0;
    v107 = vdupq_n_s32(v79);
    v110 = v90 < result + 8 * (v10 * v87 + v91) && v94 < v92 || v104 < 0;
    v113 = v90 < a3 + 8 * (v11 * v87 + v91) && v95 < v92 || v105 < 0 || v110;
    v146 = v91 & 3;
    v114 = v80 < 0x3C || v106 || v102;
    v115 = (v96 < 4) | v113;
    v116 = 8 * v10;
    v117 = 8 * v11;
    v118 = v91 & 0xFFFFFFFC;
    while (1)
    {
      v119 = v87;
      if (v114)
      {
        v120 = 0;
      }

      else
      {
        v121 = 0;
        v122 = v100 & 0x3FFFFFF0;
        v123 = a5;
        do
        {
          v124 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 384), *(a3 + v121 + 384)), vceqq_f64(*(result + v121 + 400), *(a3 + v121 + 400)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 416), *(a3 + v121 + 416)), vceqq_f64(*(result + v121 + 432), *(a3 + v121 + 432))))), vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 448), *(a3 + v121 + 448)), vceqq_f64(*(result + v121 + 464), *(a3 + v121 + 464)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 480), *(a3 + v121 + 480)), vceqq_f64(*(result + v121 + 496), *(a3 + v121 + 496))))));
          v125 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 256), *(a3 + v121 + 256)), vceqq_f64(*(result + v121 + 272), *(a3 + v121 + 272)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 288), *(a3 + v121 + 288)), vceqq_f64(*(result + v121 + 304), *(a3 + v121 + 304))))), vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 320), *(a3 + v121 + 320)), vceqq_f64(*(result + v121 + 336), *(a3 + v121 + 336)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 352), *(a3 + v121 + 352)), vceqq_f64(*(result + v121 + 368), *(a3 + v121 + 368))))));
          v126 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 128), *(a3 + v121 + 128)), vceqq_f64(*(result + v121 + 144), *(a3 + v121 + 144)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 160), *(a3 + v121 + 160)), vceqq_f64(*(result + v121 + 176), *(a3 + v121 + 176))))), vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 192), *(a3 + v121 + 192)), vceqq_f64(*(result + v121 + 208), *(a3 + v121 + 208)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 224), *(a3 + v121 + 224)), vceqq_f64(*(result + v121 + 240), *(a3 + v121 + 240))))));
          *v123 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121), *(a3 + v121)), vceqq_f64(*(result + v121 + 16), *(a3 + v121 + 16)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 32), *(a3 + v121 + 32)), vceqq_f64(*(result + v121 + 48), *(a3 + v121 + 48))))), vuzp1q_s16(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 64), *(a3 + v121 + 64)), vceqq_f64(*(result + v121 + 80), *(a3 + v121 + 80)))), veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v121 + 96), *(a3 + v121 + 96)), vceqq_f64(*(result + v121 + 112), *(a3 + v121 + 112))))));
          *(v123 + 16) = v126;
          *(v123 + 32) = v125;
          *(v123 + 48) = v124;
          v123 += 64;
          v121 += 512;
          v122 -= 16;
        }

        while (v122);
        v120 = 4 * (v100 & 0x3FFFFFF0);
        if (v100 == (v100 & 0x3FFFFFF0))
        {
          goto LABEL_172;
        }
      }

      v127 = 8 * v120 + 24;
      do
      {
        if (*(result + v127 - 24) == *(a3 + v127 - 24))
        {
          v128 = -1;
        }

        else
        {
          v128 = 0;
        }

        v129 = v79 ^ v128;
        v130 = result + 8 * v120;
        v131 = a3 + 8 * v120;
        if (*(v130 + 8) == *(v131 + 8))
        {
          v132 = -1;
        }

        else
        {
          v132 = 0;
        }

        v133 = (a5 + v120);
        *v133 = v129;
        v133[1] = v79 ^ v132;
        if (*(v130 + 16) == *(v131 + 16))
        {
          v134 = -1;
        }

        else
        {
          v134 = 0;
        }

        v135 = v79 ^ v134;
        if (*(result + v127) == *(a3 + v127))
        {
          v136 = -1;
        }

        else
        {
          v136 = 0;
        }

        v133[2] = v135;
        v133[3] = v79 ^ v136;
        v120 += 4;
        v127 += 32;
      }

      while (v120 <= v80);
LABEL_172:
      if (v120 < a7)
      {
        v137 = (v80 & 0x7FFFFFFC) + 4;
        if (v115)
        {
          goto LABEL_183;
        }

        if (v96 >= 0x10)
        {
          v139 = (v80 & 0x7FFFFFFC) + 4;
          v140 = 32 * ((v80 >> 2) & 0x1FFFFFFF) + 32;
          v141 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v148.val[3] = veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v140 + 96), *(a3 + v140 + 96)), vceqq_f64(*(result + v140 + 112), *(a3 + v140 + 112))));
            v148.val[2] = veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v140 + 64), *(a3 + v140 + 64)), vceqq_f64(*(result + v140 + 80), *(a3 + v140 + 80))));
            v148.val[1] = veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v140 + 32), *(a3 + v140 + 32)), vceqq_f64(*(result + v140 + 48), *(a3 + v140 + 48))));
            v148.val[0] = veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v140), *(a3 + v140)), vceqq_f64(*(result + v140 + 16), *(a3 + v140 + 16))));
            *(a5 + v139) = vqtbl4q_s8(v148, xmmword_1003E36F0);
            v140 += 128;
            v139 += 16;
            v141 -= 16;
          }

          while (v141);
          if (v96 == (v96 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_152;
          }

          v138 = v96 & 0xFFFFFFFFFFFFFFF0;
          v137 = v89 + (v96 & 0xFFFFFFFFFFFFFFF0);
          if ((v96 & 0xC) == 0)
          {
            goto LABEL_183;
          }
        }

        else
        {
          v138 = 0;
        }

        v142 = v89 + v138;
        v143 = 32 * ((v80 >> 2) & 0x1FFFFFFF) + 32 + 8 * v138;
        do
        {
          *(a5 + v142) = vuzp1_s8(vmovn_s32(veorq_s8(v107, vuzp1q_s32(vceqq_f64(*(result + v143), *(a3 + v143)), vceqq_f64(*(result + v143 + 16), *(a3 + v143 + 16))))), *v107.i8).u32[0];
          v142 += 4;
          v143 += 32;
        }

        while (v118 != v142);
        v137 = v89 + v96 - v146;
        if (v146)
        {
          do
          {
LABEL_183:
            if (*(result + 8 * v137) == *(a3 + 8 * v137))
            {
              v144 = -1;
            }

            else
            {
              v144 = 0;
            }

            *(a5 + v137++) = v79 ^ v144;
          }

          while (v137 < a7);
        }
      }

LABEL_152:
      a5 += a6;
      LODWORD(v87) = v119 - 1;
      result += v116;
      a3 += v117;
      if (!v119)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v81 = (a3 + 16);
    v82 = (result + 16);
    v83 = (a5 + 1);
    do
    {
      if (*(v82 - 2) == *(v81 - 2))
      {
        v84 = -1;
      }

      else
      {
        v84 = 0;
      }

      *(v83 - 1) = v79 ^ v84;
      if (a7 != 1)
      {
        v85 = *(v82 - 1) == *(v81 - 1) ? -1 : 0;
        *v83 = v79 ^ v85;
        if (a7 != 2)
        {
          if (*v82 == *v81)
          {
            v86 = -1;
          }

          else
          {
            v86 = 0;
          }

          v83[1] = v79 ^ v86;
        }
      }

      v81 += v11;
      v82 += v10;
      v83 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001EE9AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __n128 a9, __n128 a10, unint64_t *a11)
{
  v11 = a5;
  v12 = a3;
  v13 = result;
  a9.n128_u64[0] = *a11;
  v14 = *a11;
  if (v14 != 1.0)
  {
    if (!a8)
    {
      return result;
    }

    v75 = 0;
    v76 = a7 - 4;
    v77 = a7;
    v151 = a5 - result;
    v150 = a6 - a2;
    v146 = a5 - a3;
    v145 = a6 - a4;
    v149 = a5 + 4;
    v148 = result + 4;
    v147 = a3 + 4;
    v154 = a7;
    v163 = *a11;
    while (1)
    {
      v160 = a8;
      v78 = a2;
      v79 = a4;
      a9.n128_f32[0] = v14;
      v80 = a6;
      result = sub_1001F7D74(a9, v179, v13, v12, v11, a7);
      v14 = v163;
      a2 = v78;
      a4 = v79;
      a6 = v80;
      if (result > v76)
      {
        goto LABEL_82;
      }

      v82 = result;
      v83 = v76 - result;
      if (v83 <= 0x3B || ((v100 = (v83 & 0xFFFFFFFFFFFFFFFCLL) + result, v101 = v149 + v75 * v80 + v100, v11 + result < v147 + v75 * v79 + v100) ? (v102 = v12 + result >= v101) : (v102 = 1), v102 ? (v103 = 0) : (v103 = 1), v13 + result < v101 ? (v104 = v11 + result >= v148 + v75 * v78 + v100) : (v104 = 1), !v104 || (v103 & 1) != 0))
      {
        result = result;
      }

      else
      {
        v105 = (v83 >> 2) + 1;
        result = result + 4 * (v105 & 0x7FFFFFFFFFFFFFF0);
        v106 = v105 & 0x7FFFFFFFFFFFFFF0;
        v107.i64[0] = 0xFF000000FFLL;
        v107.i64[1] = 0xFF000000FFLL;
        do
        {
          v108 = (v13 + v82);
          v109 = (v12 + v82);
          v180 = vld4q_s8(v108);
          v183 = vld4q_s8(v109);
          v110 = vqtbl1q_s8(v183.val[1], xmmword_1003E3700);
          v111 = vqtbl1q_s8(v183.val[1], xmmword_1003E3710);
          v112 = vqtbl1q_s8(v183.val[1], xmmword_1003E3730);
          v113 = vqtbl1q_s8(v183.val[1], xmmword_1003E3720);
          v14 = v163;
          v114 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[1], xmmword_1003E3700)), v163), vcvtq_f32_u32(v110));
          v115 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[1], xmmword_1003E3710)), v163), vcvtq_f32_u32(v111));
          v116 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[1], xmmword_1003E3730)), v163), vcvtq_f32_u32(v112));
          v117 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[1], xmmword_1003E3720)), v163), vcvtq_f32_u32(v113));
          v118 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[0], xmmword_1003E3730)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[0], xmmword_1003E3730)));
          v119 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[0], xmmword_1003E3720)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[0], xmmword_1003E3720)));
          v120 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[0], xmmword_1003E3710)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[0], xmmword_1003E3710)));
          v121 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[0], xmmword_1003E3700)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[0], xmmword_1003E3700)));
          v184.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v119.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v119, v119, 8uLL))))), 0), v107), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v118.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v118, v118, 8uLL))))), 0), v107)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v121.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v121, v121, 8uLL))))), 0), v107), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v120.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v120, v120, 8uLL))))), 0), v107)));
          v184.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v117.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v117, v117, 8uLL))))), 0), v107), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v116.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v116, v116, 8uLL))))), 0), v107)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v114.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v114, v114, 8uLL))))), 0), v107), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v115.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v115, v115, 8uLL))))), 0), v107)));
          v122 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[2], xmmword_1003E3730)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[2], xmmword_1003E3730)));
          v123 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[2], xmmword_1003E3720)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[2], xmmword_1003E3720)));
          v124 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[2], xmmword_1003E3710)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[2], xmmword_1003E3710)));
          v125 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[2], xmmword_1003E3700)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[2], xmmword_1003E3700)));
          v184.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v123.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v123, v123, 8uLL))))), 0), v107), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v122.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v122, v122, 8uLL))))), 0), v107)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v125.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v125, v125, 8uLL))))), 0), v107), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v124.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v124, v124, 8uLL))))), 0), v107)));
          v126 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[3], xmmword_1003E3700)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[3], xmmword_1003E3700)));
          v127 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[3], xmmword_1003E3710)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[3], xmmword_1003E3710)));
          v128 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[3], xmmword_1003E3730)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[3], xmmword_1003E3730)));
          v180.val[0] = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v180.val[3], xmmword_1003E3720)), v163), vcvtq_f32_u32(vqtbl1q_s8(v183.val[3], xmmword_1003E3720)));
          v81 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v127.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v127, v127, 8uLL))))), 0), v107);
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v126.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v126, v126, 8uLL))))), 0), v107), v81);
          v184.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v180.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v180.val[0], v180.val[0], 8uLL))))), 0), v107), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v128.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v128, v128, 8uLL))))), 0), v107)), a9);
          v129 = (v11 + v82);
          vst4q_s8(v129, v184);
          v82 += 64;
          v106 -= 16;
        }

        while (v106);
        if (v105 == (v105 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_82;
        }
      }

      do
      {
        v84 = v13 + result;
        a9.n128_u8[0] = *(v13 + result);
        v85 = v12 + result;
        v81.i8[0] = *(v12 + result);
        *&v86 = v81.u32[0];
        *&v87 = rintf((v14 * a9.n128_u32[0]) * *&v86);
        v88 = *&v87 & ~(*&v87 >> 31);
        LOBYTE(v87) = *(v13 + result + 1);
        LOBYTE(v86) = *(v12 + result + 1);
        *v81.i32 = v86;
        a9.n128_f32[0] = rintf((v14 * v87) * *v81.i32);
        if (v88 >= 255)
        {
          LOBYTE(v88) = -1;
        }

        v89 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        v90 = (v11 + result);
        if (v89 >= 255)
        {
          LOBYTE(v89) = -1;
        }

        *v90 = v88;
        v90[1] = v89;
        a9.n128_u8[0] = *(v84 + 2);
        v81.i8[0] = *(v85 + 2);
        *&v91 = v81.u32[0];
        *&v92 = rintf((v14 * a9.n128_u32[0]) * *&v91);
        v93 = *&v92 & ~(*&v92 >> 31);
        LOBYTE(v92) = *(v84 + 3);
        LOBYTE(v91) = *(v85 + 3);
        *v81.i32 = v91;
        a9.n128_f32[0] = rintf((v14 * v92) * *v81.i32);
        v94 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v93 >= 255)
        {
          v95 = -1;
        }

        else
        {
          v95 = v93;
        }

        if (v94 >= 255)
        {
          LOBYTE(v94) = -1;
        }

        v90[2] = v95;
        v90[3] = v94;
        result += 4;
      }

      while (result <= v76);
LABEL_82:
      LODWORD(a7) = v154;
      v96.i64[0] = 0xFF000000FFLL;
      v96.i64[1] = 0xFF000000FFLL;
      if (result < v154)
      {
        v97 = v77 - result;
        if (v97 < 4)
        {
          v98 = result;
          goto LABEL_85;
        }

        if ((v151 + v150 * v75) < 0x10)
        {
          v98 = result;
          goto LABEL_85;
        }

        if ((v146 + v145 * v75) < 0x10)
        {
          v98 = result;
          goto LABEL_85;
        }

        if (v97 >= 0x10)
        {
          v130 = v97 & 0xFFFFFFFFFFFFFFF0;
          v131 = result;
          v132 = v97 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v133 = *(v13 + v131);
            v134 = vqtbl1q_s8(v133, xmmword_1003E3720);
            v135 = vqtbl1q_s8(v133, xmmword_1003E3730);
            v136 = vqtbl1q_s8(v133, xmmword_1003E3700);
            v137 = *(v12 + v131);
            v138 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v133, xmmword_1003E3710)), v14), vcvtq_f32_u32(vqtbl1q_s8(v137, xmmword_1003E3710)));
            v139 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(v136), v14), vcvtq_f32_u32(vqtbl1q_s8(v137, xmmword_1003E3700)));
            v140 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(v135), v14), vcvtq_f32_u32(vqtbl1q_s8(v137, xmmword_1003E3730)));
            v141 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(v134), v14), vcvtq_f32_u32(vqtbl1q_s8(v137, xmmword_1003E3720)));
            v81 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v141.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v141, v141, 8uLL))))), 0);
            v182.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v138.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v138, v138, 8uLL))))), 0), v96);
            v182.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v139.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v139, v139, 8uLL))))), 0), v96);
            v182.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v140.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v140, v140, 8uLL))))), 0), v96);
            v182.val[0] = vminq_s32(v81, v96);
            a9 = vqtbl4q_s8(v182, xmmword_1003E36F0);
            *(v11 + v131) = a9;
            v131 += 16;
            v132 -= 16;
          }

          while (v132);
          if (v97 == v130)
          {
            goto LABEL_68;
          }

          if ((v97 & 0xC) == 0)
          {
            v98 = v130 + result;
            do
            {
LABEL_85:
              a9.n128_u8[0] = *(v13 + v98);
              v81.i8[0] = *(v12 + v98);
              *v81.i32 = v81.u32[0];
              a9.n128_f32[0] = rintf((v14 * a9.n128_u32[0]) * *v81.i32);
              v99 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
              if (v99 >= 255)
              {
                LOBYTE(v99) = -1;
              }

              *(v11 + v98++) = v99;
            }

            while (v77 != v98);
            goto LABEL_68;
          }
        }

        else
        {
          v130 = 0;
        }

        v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v142 = v130 - (v97 & 0xFFFFFFFFFFFFFFFCLL);
        v143 = v130 + result;
        do
        {
          a9.n128_u32[0] = *(v13 + v143);
          v81.i32[0] = *(v12 + v143);
          v144 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a9.n128_u64[0]))), v14), vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v81.i8))));
          v81 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v144.i8)));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(v81, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v144, v144, 8uLL))))), 0), v96);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v11 + v143) = a9.n128_u32[0];
          v143 += 4;
          v142 += 4;
        }

        while (v142);
        if (v97 != (v97 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_85;
        }
      }

LABEL_68:
      v13 += v78;
      v12 += v79;
      v11 += v80;
      ++v75;
      a8 = v160 - 1;
      if (v160 == 1)
      {
        return result;
      }
    }
  }

  if (a8)
  {
    v15 = 0;
    v16 = a7 - 4;
    v17 = a7;
    v18 = a7 - 8;
    result = a5 - result;
    v19 = a6 - a2;
    v20 = a5 - v12;
    v21 = a6 - a4;
    v178 = v11 + 4;
    v177 = v13 + 4;
    v176 = v12 + 4;
    v22.i64[0] = 0xFF000000FFLL;
    v22.i64[1] = 0xFF000000FFLL;
    v23 = xmmword_1003E36F0;
    do
    {
      if (a7 < 8)
      {
        LODWORD(v24) = 0;
        if (v16 < 0)
        {
          goto LABEL_28;
        }

LABEL_16:
        v28 = v24;
        v29 = v16 - v24;
        if (v29 <= 0x3B || ((v41 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + v24, v42 = v178 + v15 * a6 + v41, v11 + v24 < v176 + v15 * a4 + v41) ? (v43 = v12 + v24 >= v42) : (v43 = 1), v43 ? (v44 = 0) : (v44 = 1), v13 + v24 < v42 ? (v45 = v11 + v24 >= v177 + v15 * a2 + v41) : (v45 = 1), !v45 || (v44 & 1) != 0))
        {
          v30 = v24;
        }

        else
        {
          v46 = (v29 >> 2) + 1;
          v30 = v24 + 4 * (v46 & 0x7FFFFFFFFFFFFFF0);
          v47 = v46 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v48 = *(v13 + v28 + 32);
            v49 = *(v13 + v28 + 48);
            v50 = *(v13 + v28);
            v51 = *(v13 + v28 + 16);
            v52 = *(v12 + v28);
            v53 = *(v12 + v28 + 16);
            v54 = vmull_high_u8(v53, v51);
            v55 = vmull_u8(*v53.i8, *v51.i8);
            v56 = vmull_high_u8(v52, v50);
            v57 = vmull_u8(*v52.i8, *v50.i8);
            v58 = *(v12 + v28 + 32);
            v59 = *(v12 + v28 + 48);
            v60 = v11 + v28;
            v61 = vmull_high_u8(v59, v49);
            v62 = vmull_u8(*v59.i8, *v49.i8);
            v63 = vmull_high_u8(v58, v48);
            v64 = vmull_u8(*v58.i8, *v48.i8);
            a10 = vuzp1q_s8(vuzp1q_s16(vminq_u32(vmovl_u16(*v62.i8), v22), vminq_u32(vmovl_high_u16(v62), v22)), vuzp1q_s16(vminq_u32(vmovl_u16(*v61.i8), v22), vminq_u32(vmovl_high_u16(v61), v22)));
            *(v60 + 32) = vuzp1q_s8(vuzp1q_s16(vminq_u32(vmovl_u16(*v64.i8), v22), vminq_u32(vmovl_high_u16(v64), v22)), vuzp1q_s16(vminq_u32(vmovl_u16(*v63.i8), v22), vminq_u32(vmovl_high_u16(v63), v22)));
            *(v60 + 48) = a10;
            a9 = vuzp1q_s8(vuzp1q_s16(vminq_u32(vmovl_u16(*v57.i8), v22), vminq_u32(vmovl_high_u16(v57), v22)), vuzp1q_s16(vminq_u32(vmovl_u16(*v56.i8), v22), vminq_u32(vmovl_high_u16(v56), v22)));
            *v60 = a9;
            *(v60 + 16) = vuzp1q_s8(vuzp1q_s16(vminq_u32(vmovl_u16(*v55.i8), v22), vminq_u32(vmovl_high_u16(v55), v22)), vuzp1q_s16(vminq_u32(vmovl_u16(*v54.i8), v22), vminq_u32(vmovl_high_u16(v54), v22)));
            v28 += 64;
            v47 -= 16;
          }

          while (v47);
          if (v46 == (v46 & 0x7FFFFFFFFFFFFFF0))
          {
LABEL_27:
            LODWORD(v24) = v30;
            goto LABEL_28;
          }
        }

        do
        {
          v31 = (v13 + v30);
          v32 = (v12 + v30);
          v33 = *(v12 + v30) * *(v13 + v30);
          if (v33 >= 0xFF)
          {
            LOBYTE(v33) = -1;
          }

          v34 = v32[1] * v31[1];
          if (v34 >= 0xFF)
          {
            LOBYTE(v34) = -1;
          }

          v35 = (v11 + v30);
          *v35 = v33;
          v35[1] = v34;
          v36 = v32[2] * v31[2];
          if (v36 >= 0xFF)
          {
            LOBYTE(v36) = -1;
          }

          v37 = v32[3] * v31[3];
          if (v37 >= 0xFF)
          {
            LOBYTE(v37) = -1;
          }

          v35[2] = v36;
          v35[3] = v37;
          v30 += 4;
        }

        while (v30 <= v16);
        goto LABEL_27;
      }

      v24 = 0;
      do
      {
        v25 = *(v13 + v24);
        v26 = *(v12 + v24);
        if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
        {
          v27 = xmmword_1004B0050;
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v158 = a8;
          v152 = a7;
          v174 = a6;
          v172 = a4;
          v170 = a2;
          v168 = v15;
          v166 = result;
          v164 = v19;
          v161 = v20;
          v156 = v23;
          sub_1003C836C();
          v23 = v156;
          v22.i64[0] = 0xFF000000FFLL;
          v22.i64[1] = 0xFF000000FFLL;
          v20 = v161;
          v19 = v164;
          result = v166;
          v15 = v168;
          a2 = v170;
          a4 = v172;
          a6 = v174;
          a7 = v152;
          a8 = v158;
          v27 = xmmword_1004B0050;
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
            goto LABEL_11;
          }
        }

        v159 = a8;
        v153 = a7;
        v175 = a6;
        v173 = a4;
        v171 = a2;
        v169 = v15;
        v167 = result;
        v165 = v19;
        v162 = v20;
        v155 = v27;
        v157 = v23;
        sub_1003C836C();
        v27 = v155;
        v23 = v157;
        v22.i64[0] = 0xFF000000FFLL;
        v22.i64[1] = 0xFF000000FFLL;
        v20 = v162;
        v19 = v165;
        result = v167;
        v15 = v169;
        a2 = v171;
        a4 = v173;
        a6 = v175;
        a7 = v153;
        a8 = v159;
LABEL_11:
        a9 = vmull_u8(v26, v25);
        a10 = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(v27, vcvtq_f32_u32(vmovl_u16(a9.n128_u64[0]))))), vcvtq_u32_f32(vaddq_f32(xmmword_1004B0050, vcvtq_f32_u32(vmovl_high_u16(a9)))));
        a9.n128_u64[0] = vqmovn_u16(a10);
        *(v11 + v24) = a9.n128_u64[0];
        v24 += 8;
      }

      while (v18 >= v24);
      if (v24 <= v16)
      {
        goto LABEL_16;
      }

LABEL_28:
      if (v24 < a7)
      {
        v38 = v17 - v24;
        if (v38 < 4)
        {
          v39 = v24;
          goto LABEL_31;
        }

        if ((result + v19 * v15) < 0x10)
        {
          v39 = v24;
          goto LABEL_31;
        }

        if ((v20 + v21 * v15) < 0x10)
        {
          v39 = v24;
          goto LABEL_31;
        }

        if (v38 >= 0x10)
        {
          v65 = v38 & 0xFFFFFFFFFFFFFFF0;
          v66 = v24;
          v67 = v38 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v68 = *(v13 + v66);
            v69 = *(v12 + v66);
            v70 = vmull_u8(*v69.i8, *v68.i8);
            v71 = vmull_high_u8(v69, v68);
            a10 = vmovl_u16(*v71.i8);
            v181.val[3] = vminq_u32(vmovl_high_u16(v71), v22);
            v181.val[2] = vminq_u32(a10, v22);
            v181.val[1] = vminq_u32(vmovl_high_u16(v70), v22);
            v181.val[0] = vminq_u32(vmovl_u16(*v70.i8), v22);
            a9 = vqtbl4q_s8(v181, v23);
            *(v11 + v66) = a9;
            v66 += 16;
            v67 -= 16;
          }

          while (v67);
          if (v38 != v65)
          {
            if ((v38 & 0xC) == 0)
            {
              v39 = v65 + v24;
              goto LABEL_31;
            }

            goto LABEL_61;
          }
        }

        else
        {
          v65 = 0;
LABEL_61:
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + v24;
          v72 = v65 - (v38 & 0xFFFFFFFFFFFFFFFCLL);
          v73 = v65 + v24;
          do
          {
            a9.n128_u32[0] = *(v13 + v73);
            a10.n128_u32[0] = *(v12 + v73);
            a10.n128_u64[0] = vmovl_u8(a10.n128_u64[0]).u64[0];
            v74 = vmovn_s32(vminq_u32(vmull_u16(a10.n128_u64[0], *&vmovl_u8(a9.n128_u64[0])), v22));
            a9.n128_u64[0] = vuzp1_s8(v74, v74);
            *(v11 + v73) = a9.n128_u32[0];
            v73 += 4;
            v72 += 4;
          }

          while (v72);
          if (v38 != (v38 & 0xFFFFFFFFFFFFFFFCLL))
          {
            do
            {
LABEL_31:
              v40 = *(v12 + v39) * *(v13 + v39);
              if (v40 >= 0xFF)
              {
                LOBYTE(v40) = -1;
              }

              *(v11 + v39++) = v40;
            }

            while (v17 != v39);
          }
        }
      }

      v13 += a2;
      v12 += a4;
      v11 += a6;
      ++v15;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001EF8A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double d0_0, __n128 a10, int16x8_t a11, __n128 a12, int16x8_t a13, double *a9)
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a3;
  v18 = result;
  v19 = *a9;
  if (v19 != 1.0)
  {
    if (!a8)
    {
      return result;
    }

    v74 = 0;
    v75 = a7 - 4;
    v147 = a5 - result;
    v146 = a6 - a2;
    v142 = a5 - a3;
    v141 = a6 - a4;
    v145 = a5 + 4;
    v144 = result + 4;
    v143 = a3 + 4;
    v151 = *a9;
    while (1)
    {
      result = sub_1001F7FEC(v19, a10.n128_f64[0], *a11.i64, a12.n128_f64[0], a13, v159, v18, v17, v16, v15);
      v19 = v151;
      if (result > v75)
      {
        goto LABEL_89;
      }

      v77 = result;
      v78 = v75 - result;
      if (v78 <= 0x3B || ((v92 = (v78 & 0xFFFFFFFFFFFFFFFCLL) + result, v93 = v145 + v74 * a6 + v92, v16 + result < v143 + v74 * a4 + v92) ? (v94 = v17 + result >= v93) : (v94 = 1), v94 ? (v95 = 0) : (v95 = 1), v18 + result < v93 ? (v96 = v16 + result >= v144 + v74 * a2 + v92) : (v96 = 1), !v96 || (v95 & 1) != 0))
      {
        result = result;
      }

      else
      {
        v97 = (v78 >> 2) + 1;
        result = result + 4 * (v97 & 0x7FFFFFFFFFFFFFF0);
        v98 = v97 & 0x7FFFFFFFFFFFFFF0;
        v99.i64[0] = 0x7F0000007FLL;
        v99.i64[1] = 0x7F0000007FLL;
        do
        {
          v100 = (v18 + v77);
          v101 = (v17 + v77);
          v160 = vld4q_s8(v100);
          v161 = vld4q_s8(v101);
          v102 = vqtbl1q_s8(v161.val[1], xmmword_1003E3740);
          v103 = vqtbl1q_s8(v161.val[1], xmmword_1003E3750);
          v104 = vqtbl1q_s8(v161.val[1], xmmword_1003E3770);
          v105 = vqtbl1q_s8(v161.val[1], xmmword_1003E3760);
          v19 = v151;
          v106 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[1], xmmword_1003E3740), 0x18uLL), v151), vcvtq_n_f32_s32(v102, 0x18uLL));
          v107 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[1], xmmword_1003E3750), 0x18uLL), v151), vcvtq_n_f32_s32(v103, 0x18uLL));
          v108 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[1], xmmword_1003E3770), 0x18uLL), v151), vcvtq_n_f32_s32(v104, 0x18uLL));
          v109 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[1], xmmword_1003E3760), 0x18uLL), v151), vcvtq_n_f32_s32(v105, 0x18uLL));
          v110 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[0], xmmword_1003E3770), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[0], xmmword_1003E3770), 0x18uLL));
          v111 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[0], xmmword_1003E3760), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[0], xmmword_1003E3760), 0x18uLL));
          v112 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[0], xmmword_1003E3750), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[0], xmmword_1003E3750), 0x18uLL));
          v113 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[0], xmmword_1003E3740), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[0], xmmword_1003E3740), 0x18uLL));
          v114 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v109.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v109, v109, 8uLL)))));
          v109.i64[0] = 0x7F0000007FLL;
          v109.i64[1] = 0x7F0000007FLL;
          v162.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v111.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v111, v111, 8uLL))))), v109), v99), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v110.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v110, v110, 8uLL))))), v109), v99)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v113.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v113, v113, 8uLL))))), v109), v99), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v112.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v112, v112, 8uLL))))), v109), v99)));
          v162.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(v114, v109), v99), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108, v108, 8uLL))))), v109), v99)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106, v106, 8uLL))))), v109), v99), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v107.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v107, v107, 8uLL))))), v109), v99)));
          v115 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[2], xmmword_1003E3770), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[2], xmmword_1003E3770), 0x18uLL));
          v116 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[2], xmmword_1003E3760), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[2], xmmword_1003E3760), 0x18uLL));
          v117 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[2], xmmword_1003E3750), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[2], xmmword_1003E3750), 0x18uLL));
          v118 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[2], xmmword_1003E3740), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[2], xmmword_1003E3740), 0x18uLL));
          v162.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v116.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v116, v116, 8uLL))))), v109), v99), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v115.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v115, v115, 8uLL))))), v109), v99)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v118.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v118, v118, 8uLL))))), v109), v99), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v117.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v117, v117, 8uLL))))), v109), v99)));
          v119 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[3], xmmword_1003E3740), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[3], xmmword_1003E3740), 0x18uLL));
          v120 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[3], xmmword_1003E3750), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[3], xmmword_1003E3750), 0x18uLL));
          v121 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[3], xmmword_1003E3770), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[3], xmmword_1003E3770), 0x18uLL));
          v160.val[0] = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v160.val[3], xmmword_1003E3760), 0x18uLL), v151), vcvtq_n_f32_s32(vqtbl1q_s8(v161.val[3], xmmword_1003E3760), 0x18uLL));
          a13 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v160.val[0].i8)));
          a12 = vminq_s32(vmaxq_s32(vuzp1q_s32(a13, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v160.val[0], v160.val[0], 8uLL))))), v109), v99);
          a11 = vuzp1q_s16(a12, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v121.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v121, v121, 8uLL))))), v109), v99));
          a10 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v120.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v120, v120, 8uLL))))), v109), v99);
          v76 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v119.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v119, v119, 8uLL))))), v109), v99), a10);
          v162.val[3] = vuzp1q_s8(a11, v76);
          v122 = (v16 + v77);
          vst4q_s8(v122, v162);
          v77 += 64;
          v98 -= 16;
        }

        while (v98);
        if (v97 == (v97 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_89;
        }
      }

      do
      {
        v79 = (v18 + result);
        v76.i8[0] = *(v18 + result);
        v76.i64[0] = vmovl_s16(*&vmovl_s8(*v76.i8)).u64[0];
        v80 = (v17 + result);
        a10.n128_u8[0] = *(v17 + result);
        a10.n128_u64[0] = vmovl_s16(*&vmovl_s8(a10.n128_u64[0])).u64[0];
        a10.n128_f32[0] = a10.n128_i32[0];
        *v76.i32 = rintf((v19 * v76.i32[0]) * a10.n128_f32[0]);
        v81 = *v76.i32;
        if (*v76.i32 <= -128)
        {
          LODWORD(v81) = -128;
        }

        v76.i8[0] = v79[1];
        v76.i64[0] = vmovl_s16(*&vmovl_s8(*v76.i8)).u64[0];
        a10.n128_u8[0] = v80[1];
        a10.n128_u64[0] = vmovl_s16(*&vmovl_s8(a10.n128_u64[0])).u64[0];
        a10.n128_f32[0] = a10.n128_i32[0];
        *v76.i32 = (v19 * v76.i32[0]) * a10.n128_f32[0];
        if (v81 >= 127)
        {
          LOBYTE(v81) = 127;
        }

        *v76.i32 = rintf(*v76.i32);
        v82 = *v76.i32;
        if (*v76.i32 <= -128)
        {
          LODWORD(v82) = -128;
        }

        if (v82 >= 127)
        {
          LOBYTE(v82) = 127;
        }

        v83 = (v16 + result);
        *v83 = v81;
        v83[1] = v82;
        v76.i8[0] = v79[2];
        v76.i64[0] = vmovl_s16(*&vmovl_s8(*v76.i8)).u64[0];
        a10.n128_u8[0] = v80[2];
        a10.n128_u64[0] = vmovl_s16(*&vmovl_s8(a10.n128_u64[0])).u64[0];
        a10.n128_f32[0] = a10.n128_i32[0];
        *v76.i32 = rintf((v19 * v76.i32[0]) * a10.n128_f32[0]);
        v84 = *v76.i32;
        if (*v76.i32 <= -128)
        {
          LODWORD(v84) = -128;
        }

        v76.i8[0] = v79[3];
        v76 = vmovl_s16(*&vmovl_s8(*v76.i8));
        *v76.i32 = v19 * v76.i32[0];
        a10.n128_u8[0] = v80[3];
        a10 = vmovl_s16(*&vmovl_s8(a10.n128_u64[0]));
        a10.n128_f32[0] = a10.n128_i32[0];
        if (v84 >= 127)
        {
          v85 = 127;
        }

        else
        {
          v85 = v84;
        }

        *v76.i32 = rintf(*v76.i32 * a10.n128_f32[0]);
        v86 = *v76.i32;
        if (*v76.i32 <= -128)
        {
          LODWORD(v86) = -128;
        }

        if (v86 >= 127)
        {
          LOBYTE(v86) = 127;
        }

        v83[2] = v85;
        v83[3] = v86;
        result += 4;
      }

      while (result <= v75);
LABEL_89:
      v87.i64[0] = 0x7F0000007FLL;
      v87.i64[1] = 0x7F0000007FLL;
      v88.i64[0] = 0x7F0000007FLL;
      v88.i64[1] = 0x7F0000007FLL;
      if (result < v15)
      {
        v89 = v15 - result;
        if (v89 < 4)
        {
          v90 = result;
          goto LABEL_92;
        }

        if ((v147 + v146 * v74) < 0x10)
        {
          v90 = result;
          goto LABEL_92;
        }

        if ((v142 + v141 * v74) < 0x10)
        {
          v90 = result;
          goto LABEL_92;
        }

        if (v89 >= 0x10)
        {
          v123 = v89 & 0xFFFFFFFFFFFFFFF0;
          v124 = result;
          v125 = v89 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v126 = *(v18 + v124);
            v127 = vqtbl1q_s8(v126, xmmword_1003E3760);
            v128 = vqtbl1q_s8(v126, xmmword_1003E3770);
            v129 = vqtbl1q_s8(v126, xmmword_1003E3740);
            v130 = *(v17 + v124);
            v131 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v126, xmmword_1003E3750), 0x18uLL), v19), vcvtq_n_f32_s32(vqtbl1q_s8(v130, xmmword_1003E3750), 0x18uLL));
            v132 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v129, 0x18uLL), v19), vcvtq_n_f32_s32(vqtbl1q_s8(v130, xmmword_1003E3740), 0x18uLL));
            v133 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v128, 0x18uLL), v19), vcvtq_n_f32_s32(vqtbl1q_s8(v130, xmmword_1003E3770), 0x18uLL));
            v134 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v127, 0x18uLL), v19), vcvtq_n_f32_s32(vqtbl1q_s8(v130, xmmword_1003E3760), 0x18uLL));
            a10 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v134.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v134, v134, 8uLL))))), v87);
            a11 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v133.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v133, v133, 8uLL))))), v87);
            a12 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v132.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v132, v132, 8uLL))))), v87);
            v135 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v131.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v131, v131, 8uLL))))), v87), v88);
            v136 = vminq_s32(a12, v88);
            v137 = vminq_s32(a11, v88);
            a13 = vminq_s32(a10, v88);
            v76 = vqtbl4q_s8(*a13.i8, xmmword_1003E36F0);
            *(v16 + v124) = v76;
            v124 += 16;
            v125 -= 16;
          }

          while (v125);
          if (v89 == v123)
          {
            goto LABEL_67;
          }

          if ((v89 & 0xC) == 0)
          {
            v90 = v123 + result;
            do
            {
LABEL_92:
              v76.i8[0] = *(v18 + v90);
              v76.i64[0] = vmovl_s16(*&vmovl_s8(*v76.i8)).u64[0];
              a10.n128_u8[0] = *(v17 + v90);
              a10.n128_u64[0] = vmovl_s16(*&vmovl_s8(a10.n128_u64[0])).u64[0];
              a10.n128_f32[0] = a10.n128_i32[0];
              *v76.i32 = rintf((v19 * v76.i32[0]) * a10.n128_f32[0]);
              v91 = *v76.i32;
              if (*v76.i32 <= -128)
              {
                LODWORD(v91) = -128;
              }

              if (v91 >= 127)
              {
                LOBYTE(v91) = 127;
              }

              *(v16 + v90++) = v91;
            }

            while (v15 != v90);
            goto LABEL_67;
          }
        }

        else
        {
          v123 = 0;
        }

        v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v138 = v123 - (v89 & 0xFFFFFFFFFFFFFFFCLL);
        v139 = v123 + result;
        do
        {
          v76.i32[0] = *(v18 + v139);
          a10.n128_u32[0] = *(v17 + v139);
          v140 = vmulq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v76, xmmword_1003E3760), 0x18uLL), v19), vcvtq_n_f32_s32(vqtbl1q_s8(a10, xmmword_1003E3760), 0x18uLL));
          a10 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v140.i8)));
          v76 = vminq_s32(vmaxq_s32(vuzp1q_s32(a10, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v140, v140, 8uLL))))), v87), v88);
          *v76.i8 = vmovn_s32(v76);
          *v76.i8 = vuzp1_s8(*v76.i8, *v76.i8);
          *(v16 + v139) = v76.i32[0];
          v139 += 4;
          v138 += 4;
        }

        while (v138);
        if (v89 != (v89 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_92;
        }
      }

LABEL_67:
      v18 += a2;
      v17 += a4;
      v16 += a6;
      ++v74;
      if (!--v14)
      {
        return result;
      }
    }
  }

  if (a8)
  {
    v20 = 0;
    v21 = a7 - 4;
    v158 = a5 - result;
    v157 = a6 - a2;
    v153 = a5 - a3;
    v152 = a6 - a4;
    v156 = a5 + 4;
    v155 = result + 4;
    v154 = a3 + 4;
    do
    {
      result = sub_1001F7FEC(1.0, a10.n128_f64[0], *a11.i64, a12.n128_f64[0], a13, v159, v18, v17, v16, v15);
      v23.i64[0] = 0x7F0000007FLL;
      v23.i64[1] = 0x7F0000007FLL;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      if (result > v21)
      {
        goto LABEL_25;
      }

      v25 = result;
      v26 = v21 - result;
      if (v26 <= 0x3B || ((v37 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + result, v38 = v156 + v20 * a6 + v37, v16 + result < v154 + v20 * a4 + v37) ? (v39 = v17 + result >= v38) : (v39 = 1), v39 ? (v40 = 0) : (v40 = 1), v18 + result < v38 ? (v41 = v16 + result >= v155 + v20 * a2 + v37) : (v41 = 1), !v41 || (v40 & 1) != 0))
      {
        result = result;
      }

      else
      {
        v42 = (v26 >> 2) + 1;
        result = result + 4 * (v42 & 0x7FFFFFFFFFFFFFF0);
        v43 = v42 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v45 = *(v18 + v25);
          v44 = *(v18 + v25 + 16);
          v47 = *(v18 + v25 + 32);
          v46 = *(v18 + v25 + 48);
          v49 = *(v17 + v25 + 32);
          v48 = *(v17 + v25 + 48);
          v50 = vmull_s8(*v49.i8, *v47.i8);
          v51 = vmull_high_s8(v49, v47);
          v52 = vmull_s8(*v48.i8, *v46.i8);
          v53 = vmull_high_s8(v48, v46);
          v55 = *(v17 + v25);
          v54 = *(v17 + v25 + 16);
          v56 = v16 + v25;
          v57 = vmull_s8(*v55.i8, *v45.i8);
          v58 = vmull_high_s8(v55, v45);
          v59 = vmull_s8(*v54.i8, *v44.i8);
          v60 = vmull_high_s8(v54, v44);
          v22 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v59.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v59), v24), v23)), vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v60.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v60), v24), v23)));
          a13 = vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v50.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v50), v24), v23));
          a12 = vuzp1q_s8(a13, vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v51.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v51), v24), v23)));
          *(v56 + 32) = a12;
          *(v56 + 48) = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v52.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v52), v24), v23)), vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v53.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v53), v24), v23)));
          a11 = vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v57.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v57), v24), v23));
          a10 = vuzp1q_s8(a11, vuzp1q_s16(vminq_s32(vmaxq_s32(vmovl_s16(*v58.i8), v24), v23), vminq_s32(vmaxq_s32(vmovl_high_s16(v58), v24), v23)));
          *v56 = a10;
          *(v56 + 16) = v22;
          v25 += 64;
          v43 -= 16;
        }

        while (v43);
        if (v42 == (v42 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_25;
        }
      }

      do
      {
        v27 = (v18 + result);
        v28 = (v17 + result);
        v29 = *(v17 + result) * *(v18 + result);
        if (v29 <= -128)
        {
          v29 = -128;
        }

        if (v29 >= 127)
        {
          LOBYTE(v29) = 127;
        }

        v30 = v28[1] * v27[1];
        if (v30 <= -128)
        {
          v30 = -128;
        }

        if (v30 >= 127)
        {
          LOBYTE(v30) = 127;
        }

        v31 = (v16 + result);
        *v31 = v29;
        v31[1] = v30;
        v32 = v28[2] * v27[2];
        if (v32 <= -128)
        {
          v32 = -128;
        }

        if (v32 >= 127)
        {
          LOBYTE(v32) = 127;
        }

        v33 = v28[3] * v27[3];
        if (v33 <= -128)
        {
          v33 = -128;
        }

        if (v33 >= 127)
        {
          LOBYTE(v33) = 127;
        }

        v31[2] = v32;
        v31[3] = v33;
        result += 4;
      }

      while (result <= v21);
LABEL_25:
      if (result < v15)
      {
        v34 = v15 - result;
        if (v34 < 4)
        {
          v35 = result;
          goto LABEL_28;
        }

        if ((v158 + v157 * v20) < 0x10)
        {
          v35 = result;
          goto LABEL_28;
        }

        if ((v153 + v152 * v20) < 0x10)
        {
          v35 = result;
          goto LABEL_28;
        }

        if (v34 >= 0x10)
        {
          v61 = v34 & 0xFFFFFFFFFFFFFFF0;
          v62 = result;
          v63 = v34 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v64 = *(v18 + v62);
            v65 = *(v17 + v62);
            v66 = vmull_high_s8(v65, v64);
            v67 = vmovl_high_s16(v66);
            v68 = vmull_s8(*v65.i8, *v64.i8);
            a10 = vmaxq_s32(vmovl_high_s16(v68), v24);
            a11 = vmaxq_s32(vmovl_s16(*v66.i8), v24);
            v69 = vminq_s32(vmaxq_s32(v67, v24), v23);
            v70 = vminq_s32(a11, v23);
            a13 = vminq_s32(a10, v23);
            a12 = vminq_s32(vmaxq_s32(vmovl_s16(*v68.i8), v24), v23);
            v22 = vqtbl4q_s8(*a12.n128_u64, xmmword_1003E36F0);
            *(v16 + v62) = v22;
            v62 += 16;
            v63 -= 16;
          }

          while (v63);
          if (v34 == v61)
          {
            goto LABEL_4;
          }

          if ((v34 & 0xC) == 0)
          {
            v35 = v61 + result;
            do
            {
LABEL_28:
              v36 = *(v17 + v35) * *(v18 + v35);
              if (v36 <= -128)
              {
                v36 = -128;
              }

              if (v36 >= 127)
              {
                LOBYTE(v36) = 127;
              }

              *(v16 + v35++) = v36;
            }

            while (v15 != v35);
            goto LABEL_4;
          }
        }

        else
        {
          v61 = 0;
        }

        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v71 = v61 - (v34 & 0xFFFFFFFFFFFFFFFCLL);
        v72 = v61 + result;
        do
        {
          v22.i32[0] = *(v18 + v72);
          a10.n128_u32[0] = *(v17 + v72);
          a10.n128_u64[0] = vmovl_s8(a10.n128_u64[0]).u64[0];
          v73 = vmovn_s32(vminq_s32(vmaxq_s32(vmull_s16(a10.n128_u64[0], *&vmovl_s8(*v22.i8)), v24), v23));
          *v22.i8 = vuzp1_s8(v73, v73);
          *(v16 + v72) = v22.i32[0];
          v72 += 4;
          v71 += 4;
        }

        while (v71);
        if (v34 != (v34 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_28;
        }
      }

LABEL_4:
      v18 += a2;
      v17 += a4;
      v16 += a6;
      ++v20;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1001F0780(uint64_t result, unint64_t a2, uint16x8_t *a3, unint64_t a4, uint16x8_t *a5, unint64_t a6, uint64_t a7, int a8, __n128 q0_0, double *a9)
{
  v10 = a5;
  v11 = a3;
  v12 = result;
  q0_0.n128_f64[0] = *a9;
  v13 = *a9;
  v14 = a2 >> 1;
  v15 = a4 >> 1;
  v16 = a6 >> 1;
  if (v13 == 1.0)
  {
    if (a8)
    {
      result = 0;
      v17 = a7 - 4;
      v18 = a7;
      v19 = a7 - 8;
      v167 = a5 - v12;
      v20 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v21 = a2 & 0xFFFFFFFFFFFFFFFELL;
      v165 = v20 - v21;
      v155 = a5 - v11;
      v163 = a4 & 0xFFFFFFFFFFFFFFFELL;
      v153 = v20 - (a4 & 0xFFFFFFFFFFFFFFFELL);
      v161 = &a5->i64[1];
      v159 = &v12->i64[1];
      v157 = &v11->i64[1];
      v22 = 2 * v16;
      v23 = 2 * v15;
      v24 = 2 * v14;
      v25 = &v10->i8[4];
      while (a7 < 8)
      {
        LODWORD(v26) = 0;
LABEL_7:
        if (v26 <= v17)
        {
          v27 = v22;
          v28 = v26;
          v29 = v17 - v26;
          if (v29 <= 0x1B)
          {
            goto LABEL_9;
          }

          v48 = v29 >> 2;
          v49 = 2 * v26;
          v50 = v49 + 8 * v48;
          v51 = v161 + v20 * result + v50;
          v52 = &v10->i8[v49] >= v157 + v163 * result + v50 || v11 + 2 * v26 >= v51;
          v53 = !v52;
          if (v12 + 2 * v26 < v51 && &v10->i8[v49] < v159 + v21 * result + v50)
          {
            goto LABEL_9;
          }

          if (v53)
          {
            goto LABEL_9;
          }

          v55 = v48 + 1;
          v28 = v26 + 4 * (v55 & 0x7FFFFFFFFFFFFFF8);
          v56 = v55 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v57 = *(&v12[3] + v49);
            v58 = *(v12 + v49);
            v59 = *(&v11[3] + v49);
            v60 = *(v11 + v49);
            v61 = (v10 + v49);
            v62 = vqmovn_high_u32(vqmovn_u32(vmull_u16(*&v11[1].i8[v49], *&v12[1].i8[v49])), vmull_high_u16(*(&v11[1] + v49), *(&v12[1] + v49)));
            v61[2] = vqmovn_high_u32(vqmovn_u32(vmull_u16(*&v11[2].i8[v49], *&v12[2].i8[v49])), vmull_high_u16(*(&v11[2] + v49), *(&v12[2] + v49)));
            v61[3] = vqmovn_high_u32(vqmovn_u32(vmull_u16(*v59.i8, *v57.i8)), vmull_high_u16(v59, v57));
            *v61 = vqmovn_high_u32(vqmovn_u32(vmull_u16(*v60.i8, *v58.i8)), vmull_high_u16(v60, v58));
            v61[1] = v62;
            v49 += 64;
            v56 -= 8;
          }

          while (v56);
          LODWORD(v26) = v26 + 4 * (v55 & 0xFFFFFFF8);
          if (v55 != (v55 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_9:
            v30 = 2 * v28;
            v31 = v25;
            v32 = v11;
            v33 = v12;
            v26 = v28;
            do
            {
              v34 = v32->u16[v28] * v33->u16[v28];
              if (v34 >= 0xFFFF)
              {
                LOWORD(v34) = -1;
              }

              v35 = &v33->i8[v30];
              v36 = &v32->i8[v30];
              v37 = v32->u16[v30 / 2 + 1] * v33->u16[v30 / 2 + 1];
              if (v37 >= 0xFFFF)
              {
                LOWORD(v37) = -1;
              }

              v38 = &v31[v30];
              *(v38 - 2) = v34;
              *(v38 - 1) = v37;
              v39 = *(v36 + 2) * *(v35 + 2);
              if (v39 >= 0xFFFF)
              {
                LOWORD(v39) = -1;
              }

              v40 = *(v36 + 3) * *(v35 + 3);
              if (v40 >= 0xFFFF)
              {
                LOWORD(v40) = -1;
              }

              *&v31[2 * v28] = v39;
              v26 += 4;
              *(v38 + 1) = v40;
              v33 = (v33 + 8);
              v32 = (v32 + 8);
              v31 += 8;
            }

            while (v26 <= v17);
          }

          v22 = v27;
        }

        if (v26 >= a7)
        {
          goto LABEL_4;
        }

        v41 = v26;
        v42 = v18 - v26;
        if (v42 < 4 || v167 + v165 * result < 0x20 || v155 + v153 * result < 0x20)
        {
          goto LABEL_22;
        }

        if (v42 >= 0x10)
        {
          v63 = v42 & 0xFFFFFFFFFFFFFFF0;
          v64 = 2 * v26;
          v65 = v42 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v66 = vqmovn_high_u32(vqmovn_u32(vmull_u16(*&v11[1].i8[v64], *&v12[1].i8[v64])), vmull_high_u16(*(&v11[1] + v64), *(&v12[1] + v64)));
            v67 = (v10 + v64);
            *v67 = vqmovn_high_u32(vqmovn_u32(vmull_u16(*&v11->i8[v64], *&v12->i8[v64])), vmull_high_u16(*(v11 + v64), *(v12 + v64)));
            v67[1] = v66;
            v64 += 32;
            v65 -= 16;
          }

          while (v65);
          if (v42 == v63)
          {
            goto LABEL_4;
          }

          if ((v42 & 0xC) == 0)
          {
            v41 = v63 + v26;
            do
            {
LABEL_22:
              v43 = v11->u16[v41] * v12->u16[v41];
              if (v43 >= 0xFFFF)
              {
                LOWORD(v43) = -1;
              }

              v10->i16[v41++] = v43;
            }

            while (v18 != v41);
            goto LABEL_4;
          }
        }

        else
        {
          v63 = 0;
        }

        v68 = v63 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
        v69 = 2 * (v63 + v26);
        do
        {
          *&v10->i8[v69] = vqmovn_u32(vmull_u16(*&v11->i8[v69], *&v12->i8[v69]));
          v69 += 8;
          v68 += 4;
        }

        while (v68);
        v41 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + v26;
        if (v42 != (v42 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_22;
        }

LABEL_4:
        v12 = (v12 + v24);
        v11 = (v11 + v23);
        v10 = (v10 + v22);
        ++result;
        v25 += v22;
        if (!--a8)
        {
          return result;
        }
      }

      v44 = 0;
      LODWORD(v26) = 0;
      while (1)
      {
        v45 = v12[v44];
        v46 = v11[v44];
        if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
        {
          v47 = xmmword_1004B0050;
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v150 = a8;
          v144 = result;
          v147 = a7;
          v138 = v20;
          v141 = v18;
          v133 = v22;
          v135 = v21;
          v129 = v24;
          v131 = v23;
          v125 = v45;
          v127 = v46;
          sub_1003C836C();
          v45 = v125;
          v46 = v127;
          v24 = v129;
          v23 = v131;
          v22 = v133;
          v21 = v135;
          v20 = v138;
          v18 = v141;
          result = v144;
          a7 = v147;
          a8 = v150;
          v47 = xmmword_1004B0050;
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
LABEL_32:
            v151 = a8;
            v145 = result;
            v148 = a7;
            v139 = v20;
            v142 = v18;
            v134 = v22;
            v136 = v21;
            v130 = v24;
            v132 = v23;
            v126 = v45;
            v128 = v46;
            v124 = v47;
            sub_1003C836C();
            v47 = v124;
            v45 = v126;
            v46 = v128;
            v24 = v130;
            v23 = v132;
            v22 = v134;
            v21 = v136;
            v20 = v139;
            v18 = v142;
            result = v145;
            a7 = v148;
            a8 = v151;
          }
        }

        v10[v44] = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v45.i8)), vcvtq_f32_u32(vmovl_u16(*v46.i8))), v47))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v45)), vcvtq_f32_u32(vmovl_high_u16(v46))), xmmword_1004B0050)));
        LODWORD(v26) = v26 + 8;
        ++v44;
        if (v19 < v26)
        {
          goto LABEL_7;
        }
      }
    }
  }

  else if (a8)
  {
    v70 = 0;
    v71 = a7 - 4;
    v72 = a7;
    v160 = &a5->i8[-result];
    v156 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v158 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v154 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v140 = a5 - a3;
    v137 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a4 & 0xFFFFFFFFFFFFFFFELL);
    v149 = &a5->i64[1];
    v152 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v146 = result + 8;
    v143 = &a3->i64[1];
    v164 = 2 * v14;
    v166 = 2 * v16;
    v162 = 2 * v15;
    v73 = &a5->i8[4];
    v168 = *a9;
    do
    {
      v74 = a8;
      v75 = a7;
      q0_0.n128_f32[0] = v13;
      result = sub_1001F8470(q0_0, v169, v12, v11, v10, a7);
      v77.i64[0] = 0xFFFF0000FFFFLL;
      v77.i64[1] = 0xFFFF0000FFFFLL;
      v13 = v168;
      if (result <= v71)
      {
        v78 = result;
        v79 = v71 - result;
        if (v79 <= 0x1B)
        {
          goto LABEL_67;
        }

        v96 = v79 >> 2;
        v97 = result;
        v98 = v97 * 2 + 8 * v96;
        v99 = v149 + v158 * v70 + v98;
        v100 = &v10->i8[v97 * 2] >= v143 + v152 * v70 + v98 || v11 + 2 * result >= v99;
        v101 = !v100;
        if (v12 + 2 * result < v99 && v10->u64 + v97 * 2 < v146 + v156 * v70 + v98)
        {
          goto LABEL_67;
        }

        if (v101)
        {
          goto LABEL_67;
        }

        v103 = v96 + 1;
        v78 = result + 4 * (v103 & 0x7FFFFFFFFFFFFFF8);
        v104 = v103 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v105 = &v12->i16[v97];
          v170 = vld4q_s16(v105);
          v106 = &v11->i16[v97];
          v171 = vld4q_s16(v106);
          v107 = vcvtq_f32_u32(vmovl_high_u16(v170.val[0]));
          v108 = vcvtq_f32_u32(vmovl_u16(*v170.val[0].i8));
          v109 = vcvtq_f32_u32(vmovl_high_u16(v170.val[2]));
          v110 = vcvtq_f32_u32(vmovl_u16(*v170.val[2].i8));
          v111 = vcvtq_f32_u32(vmovl_high_u16(v170.val[3]));
          v112 = vcvtq_f32_u32(vmovl_u16(*v170.val[3].i8));
          v113 = &v10->i16[v97];
          v170.val[0] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v170.val[1].i8)), v168);
          v170.val[3] = vmulq_f32(vmulq_n_f32(v107, v168), vcvtq_f32_u32(vmovl_high_u16(v171.val[0])));
          v170.val[2] = vmulq_f32(vmulq_n_f32(v108, v168), vcvtq_f32_u32(vmovl_u16(*v171.val[0].i8)));
          v170.val[1] = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v170.val[1])), v168), vcvtq_f32_u32(vmovl_high_u16(v171.val[1])));
          v170.val[0] = vmulq_f32(v170.val[0], vcvtq_f32_u32(vmovl_u16(*v171.val[1].i8)));
          v114 = vmulq_f32(vmulq_n_f32(v109, v168), vcvtq_f32_u32(vmovl_high_u16(v171.val[2])));
          v115 = vmulq_f32(vmulq_n_f32(v110, v168), vcvtq_f32_u32(vmovl_u16(*v171.val[2].i8)));
          v116 = vmulq_f32(vmulq_n_f32(v111, v168), vcvtq_f32_u32(vmovl_high_u16(v171.val[3])));
          v117 = vmulq_f32(vmulq_n_f32(v112, v168), vcvtq_f32_u32(vmovl_u16(*v171.val[3].i8)));
          v170.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v170.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v170.val[0], v170.val[0], 8uLL))))), 0), v77), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v170.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v170.val[1], v170.val[1], 8uLL))))), 0), v77));
          v170.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v170.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v170.val[2], v170.val[2], 8uLL))))), 0), v77), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v170.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v170.val[3], v170.val[3], 8uLL))))), 0), v77));
          q0_0 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v114.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v114, v114, 8uLL))))), 0), v77);
          v76 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v115.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v115, v115, 8uLL))))), 0), v77);
          v170.val[3] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v117.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v117, v117, 8uLL))))), 0), v77), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v116.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v116, v116, 8uLL))))), 0), v77));
          v170.val[2] = vuzp1q_s16(v76, q0_0);
          vst4q_s16(v113, v170);
          v97 += 32;
          v104 -= 8;
        }

        while (v104);
        result = result + 4 * (v103 & 0x7FFFFFFFFFFFFFF8);
        if (v103 != (v103 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_67:
          v80 = 2 * v78;
          v81 = v73;
          v82 = v11;
          v83 = v12;
          result = v78;
          do
          {
            q0_0.n128_u16[0] = v83->u16[v78];
            v76.i16[0] = v82->i16[v78];
            *v76.i32 = v76.u32[0];
            q0_0.n128_f32[0] = rintf((v168 * q0_0.n128_u32[0]) * *v76.i32);
            v84 = q0_0.n128_f32[0] & ~(q0_0.n128_f32[0] >> 31);
            if (v84 >= 0xFFFF)
            {
              LOWORD(v84) = -1;
            }

            v85 = &v83->i8[v80];
            q0_0.n128_u16[0] = v83->u16[v80 / 2 + 1];
            v86 = &v82->i8[v80];
            v76.i16[0] = v82->i16[v80 / 2 + 1];
            *v76.i32 = v76.u32[0];
            q0_0.n128_f32[0] = rintf((v168 * q0_0.n128_u32[0]) * *v76.i32);
            v87 = q0_0.n128_f32[0] & ~(q0_0.n128_f32[0] >> 31);
            if (v87 >= 0xFFFF)
            {
              LOWORD(v87) = -1;
            }

            v88 = &v81[v80];
            *(v88 - 2) = v84;
            *(v88 - 1) = v87;
            q0_0.n128_u16[0] = *(v85 + 2);
            v76.i16[0] = *(v86 + 2);
            *&v89 = v76.u32[0];
            *&v90 = rintf((v168 * q0_0.n128_u32[0]) * *&v89);
            v91 = *&v90 & ~(*&v90 >> 31);
            LOWORD(v90) = *(v85 + 3);
            LOWORD(v89) = *(v86 + 3);
            *v76.i32 = v89;
            q0_0.n128_f32[0] = rintf((v168 * v90) * *v76.i32);
            if (v91 >= 0xFFFF)
            {
              LOWORD(v91) = -1;
            }

            v92 = q0_0.n128_f32[0] & ~(q0_0.n128_f32[0] >> 31);
            if (v92 >= 0xFFFF)
            {
              LOWORD(v92) = -1;
            }

            *&v81[2 * v78] = v91;
            result += 4;
            *(v88 + 1) = v92;
            v83 = (v83 + 8);
            v82 = (v82 + 8);
            v81 += 8;
          }

          while (result <= v71);
        }
      }

      a7 = v75;
      if (result < v75)
      {
        v93 = result;
        v94 = v72 - result;
        if (v94 <= 7)
        {
          goto LABEL_107;
        }

        if (&v160[v154 * v70] < 0x10)
        {
          goto LABEL_107;
        }

        if (v140 + v137 * v70 < 0x10)
        {
          goto LABEL_107;
        }

        v118 = 2 * result;
        v119 = v94 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v120 = *(v12 + v118);
          v121 = *(v11 + v118);
          v122 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v120)), v168), vcvtq_f32_u32(vmovl_high_u16(v121)));
          v123 = vmulq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v120.i8)), v168), vcvtq_f32_u32(vmovl_u16(*v121.i8)));
          v76 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v122.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v122, v122, 8uLL))))), 0), v77);
          q0_0 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v123.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v123, v123, 8uLL))))), 0), v77), v76);
          *(v10 + v118) = q0_0;
          v118 += 16;
          v119 -= 8;
        }

        while (v119);
        v93 = (v94 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v94 != (v94 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_107:
          do
          {
            q0_0.n128_u16[0] = v12->u16[v93];
            v76.i16[0] = v11->i16[v93];
            *v76.i32 = v76.u32[0];
            q0_0.n128_f32[0] = rintf((v168 * q0_0.n128_u32[0]) * *v76.i32);
            v95 = q0_0.n128_f32[0] & ~(q0_0.n128_f32[0] >> 31);
            if (v95 >= 0xFFFF)
            {
              LOWORD(v95) = -1;
            }

            v10->i16[v93++] = v95;
          }

          while (v72 != v93);
        }
      }

      v12 = (v12 + v164);
      v11 = (v11 + v162);
      v10 = (v10 + v166);
      ++v70;
      v73 += v166;
      a8 = v74 - 1;
    }

    while (v74 != 1);
  }

  return result;
}

int16x8_t *sub_1001F1258(int16x8_t *result, unint64_t a2, int16x8_t *a3, unint64_t a4, int16x8_t *a5, unint64_t a6, uint64_t a7, int a8, int16x8_t q0_0, double *a9)
{
  v10 = a8;
  v11 = a5;
  v12 = a3;
  v13 = result;
  q0_0.i64[0] = *a9;
  v14 = *a9;
  v15 = a2 >> 1;
  v16 = a4 >> 1;
  v17 = a6 >> 1;
  v136 = a7;
  if (v14 == 1.0)
  {
    if (a8)
    {
      v18 = 0;
      v19 = a7 - 4;
      v20 = a7;
      v128 = a5 - result;
      v124 = a2 & 0xFFFFFFFFFFFFFFFELL;
      v126 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v122 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
      v112 = a5 - a3;
      v110 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a4 & 0xFFFFFFFFFFFFFFFELL);
      v118 = &a5->i64[1];
      v120 = a4 & 0xFFFFFFFFFFFFFFFELL;
      v116 = &result->i64[1];
      v114 = &a3->i64[1];
      v132 = 2 * v15;
      v134 = 2 * v17;
      v130 = 2 * v16;
      v21 = &a5->i8[4];
      do
      {
        q0_0.i32[0] = 1.0;
        result = sub_1001F86BC(q0_0, v137, v13, v12, v11, a7);
        if (result <= v19)
        {
          v22 = result;
          v23 = v19 - result;
          if (v23 <= 0x1B)
          {
            goto LABEL_7;
          }

          v38 = v23 >> 2;
          v39 = 2 * result;
          v40 = v39 + 8 * v38;
          v41 = v118 + v126 * v18 + v40;
          v42 = &v11->i8[v39] >= v114 + v120 * v18 + v40 || v12 + 2 * result >= v41;
          v43 = !v42;
          if (v13 + 2 * result < v41 && &v11->i8[v39] < v116 + v124 * v18 + v40)
          {
            goto LABEL_7;
          }

          if (v43)
          {
            goto LABEL_7;
          }

          v45 = v38 + 1;
          v22 = result + 4 * (v45 & 0x7FFFFFFFFFFFFFF8);
          v46 = v45 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v47 = *(&v13[3] + v39);
            v48 = *(v13 + v39);
            v49 = *(&v12[3] + v39);
            v50 = *(v12 + v39);
            v51 = &v11->i8[v39];
            v52 = vqmovn_high_s32(vqmovn_s32(vmull_s16(*&v12[1].i8[v39], *&v13[1].i8[v39])), vmull_high_s16(*(&v12[1] + v39), *(&v13[1] + v39)));
            q0_0 = vqmovn_high_s32(vqmovn_s32(vmull_s16(*&v12[2].i8[v39], *&v13[2].i8[v39])), vmull_high_s16(*(&v12[2] + v39), *(&v13[2] + v39)));
            v51[2] = q0_0;
            v51[3] = vqmovn_high_s32(vqmovn_s32(vmull_s16(*v49.i8, *v47.i8)), vmull_high_s16(v49, v47));
            *v51 = vqmovn_high_s32(vqmovn_s32(vmull_s16(*v50.i8, *v48.i8)), vmull_high_s16(v50, v48));
            v51[1] = v52;
            v39 += 64;
            v46 -= 8;
          }

          while (v46);
          result = (result + 4 * (v45 & 0x7FFFFFFFFFFFFFF8));
          if (v45 != (v45 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_7:
            v24 = 2 * v22;
            v25 = v21;
            v26 = v12;
            v27 = v13;
            result = v22;
            do
            {
              v28 = v26->i16[v22] * v27->i16[v22];
              if (v28 <= -32768)
              {
                v28 = -32768;
              }

              if (v28 >= 0x7FFF)
              {
                LOWORD(v28) = 0x7FFF;
              }

              v29 = &v27->i8[v24];
              v30 = &v26->i8[v24];
              v31 = v26->i16[v24 / 2 + 1] * v27->i16[v24 / 2 + 1];
              if (v31 <= -32768)
              {
                v31 = -32768;
              }

              if (v31 >= 0x7FFF)
              {
                LOWORD(v31) = 0x7FFF;
              }

              v32 = &v25[v24];
              *(v32 - 2) = v28;
              *(v32 - 1) = v31;
              v33 = *(v30 + 2) * *(v29 + 2);
              if (v33 <= -32768)
              {
                v33 = -32768;
              }

              if (v33 >= 0x7FFF)
              {
                LOWORD(v33) = 0x7FFF;
              }

              v34 = *(v30 + 3) * *(v29 + 3);
              if (v34 <= -32768)
              {
                v34 = -32768;
              }

              if (v34 >= 0x7FFF)
              {
                LOWORD(v34) = 0x7FFF;
              }

              *&v25[2 * v22] = v33;
              *(v32 + 1) = v34;
              result = (result + 4);
              v27 = (v27 + 8);
              v26 = (v26 + 8);
              v25 += 8;
            }

            while (result <= v19);
          }
        }

        LODWORD(a7) = v136;
        if (result >= v136)
        {
          goto LABEL_4;
        }

        v35 = result;
        v36 = v20 - result;
        if (v36 < 4 || v128 + v122 * v18 < 0x20 || v112 + v110 * v18 < 0x20)
        {
          goto LABEL_27;
        }

        if (v36 >= 0x10)
        {
          v53 = v36 & 0xFFFFFFFFFFFFFFF0;
          v54 = 2 * result;
          v55 = v36 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            q0_0 = vqmovn_high_s32(vqmovn_s32(vmull_s16(*&v12->i8[v54], *&v13->i8[v54])), vmull_high_s16(*(v12 + v54), *(v13 + v54)));
            v56 = vqmovn_high_s32(vqmovn_s32(vmull_s16(*&v12[1].i8[v54], *&v13[1].i8[v54])), vmull_high_s16(*(&v12[1] + v54), *(&v13[1] + v54)));
            v57 = (v11 + v54);
            *v57 = q0_0;
            v57[1] = v56;
            v54 += 32;
            v55 -= 16;
          }

          while (v55);
          if (v36 == v53)
          {
            goto LABEL_4;
          }

          if ((v36 & 0xC) == 0)
          {
            v35 = v53 + result;
            do
            {
LABEL_27:
              v37 = v12->i16[v35] * v13->i16[v35];
              if (v37 <= -32768)
              {
                v37 = -32768;
              }

              if (v37 >= 0x7FFF)
              {
                LOWORD(v37) = 0x7FFF;
              }

              v11->i16[v35++] = v37;
            }

            while (v20 != v35);
            goto LABEL_4;
          }
        }

        else
        {
          v53 = 0;
        }

        v58 = v53 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
        v59 = 2 * (v53 + result);
        do
        {
          q0_0 = vmull_s16(*&v12->i8[v59], *&v13->i8[v59]);
          *q0_0.i8 = vqmovn_s32(q0_0);
          *(v11->i64 + v59) = q0_0.i64[0];
          v59 += 8;
          v58 += 4;
        }

        while (v58);
        v35 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + result;
        if (v36 != (v36 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_27;
        }

LABEL_4:
        v13 = (v13 + v132);
        v12 = (v12 + v130);
        v11 = (v11 + v134);
        ++v18;
        v21 += v134;
        --v10;
      }

      while (v10);
    }
  }

  else if (a8)
  {
    v60 = 0;
    v61 = a7 - 4;
    v62 = a7;
    v127 = a5 - result;
    v123 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v125 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v121 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v111 = a5 - a3;
    v109 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a4 & 0xFFFFFFFFFFFFFFFELL);
    v117 = &a5->i64[1];
    v119 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v115 = &result->i64[1];
    v113 = &a3->i64[1];
    v131 = 2 * v15;
    v133 = 2 * v17;
    v129 = 2 * v16;
    v63 = &a5->i8[4];
    v135 = *a9;
    do
    {
      *q0_0.i32 = v14;
      result = sub_1001F86BC(q0_0, v137, v13, v12, v11, a7);
      v14 = v135;
      if (result <= v61)
      {
        v65 = result;
        v66 = v61 - result;
        if (v66 <= 0x1B)
        {
          goto LABEL_67;
        }

        v81 = v66 >> 2;
        v82 = result;
        v83 = v82 * 2 + 8 * v81;
        v84 = v117 + v125 * v60 + v83;
        v85 = &v11->i8[v82 * 2] >= v113 + v119 * v60 + v83 || v12 + 2 * result >= v84;
        v86 = !v85;
        if (v13 + 2 * result < v84 && &v11->i8[v82 * 2] < v115 + v123 * v60 + v83)
        {
          goto LABEL_67;
        }

        if (v86)
        {
          goto LABEL_67;
        }

        v88 = v81 + 1;
        v65 = result + 4 * (v88 & 0x7FFFFFFFFFFFFFF8);
        v89 = v88 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v90 = &v13->i16[v82];
          v139 = vld4q_s16(v90);
          v91 = &v12->i16[v82];
          v140 = vld4q_s16(v91);
          v92 = vcvtq_f32_s32(vmovl_high_s16(v139.val[0]));
          v93 = vcvtq_f32_s32(vmovl_s16(*v139.val[0].i8));
          v94 = vcvtq_f32_s32(vmovl_high_s16(v139.val[2]));
          v95 = vcvtq_f32_s32(vmovl_s16(*v139.val[2].i8));
          v96 = vcvtq_f32_s32(vmovl_high_s16(v139.val[3]));
          v97 = vcvtq_f32_s32(vmovl_s16(*v139.val[3].i8));
          v139.val[0] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v139.val[1].i8)), v135);
          v139.val[3] = vmulq_f32(vmulq_n_f32(v92, v135), vcvtq_f32_s32(vmovl_high_s16(v140.val[0])));
          v139.val[2] = vmulq_f32(vmulq_n_f32(v93, v135), vcvtq_f32_s32(vmovl_s16(*v140.val[0].i8)));
          v139.val[1] = vmulq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v139.val[1])), v135), vcvtq_f32_s32(vmovl_high_s16(v140.val[1])));
          v139.val[0] = vmulq_f32(v139.val[0], vcvtq_f32_s32(vmovl_s16(*v140.val[1].i8)));
          v98 = vmulq_f32(vmulq_n_f32(v94, v135), vcvtq_f32_s32(vmovl_high_s16(v140.val[2])));
          v99 = vmulq_f32(vmulq_n_f32(v95, v135), vcvtq_f32_s32(vmovl_s16(*v140.val[2].i8)));
          v100 = vmulq_f32(vmulq_n_f32(v96, v135), vcvtq_f32_s32(vmovl_high_s16(v140.val[3])));
          v101 = vmulq_f32(vmulq_n_f32(v97, v135), vcvtq_f32_s32(vmovl_s16(*v140.val[3].i8)));
          v138.val[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v139.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v139.val[0], v139.val[0], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v139.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v139.val[1], v139.val[1], 8uLL))))));
          q0_0 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98, v98, 8uLL)))));
          v64 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v99.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v99, v99, 8uLL)))));
          v138.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v139.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v139.val[2], v139.val[2], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v139.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v139.val[3], v139.val[3], 8uLL))))));
          v138.val[3] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101, v101, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100, v100, 8uLL))))));
          v138.val[2] = vqmovn_high_s32(vqmovn_s32(v64), q0_0);
          v102 = &v11->i16[v82];
          vst4q_s16(v102, v138);
          v82 += 32;
          v89 -= 8;
        }

        while (v89);
        result = (result + 4 * (v88 & 0x7FFFFFFFFFFFFFF8));
        if (v88 != (v88 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_67:
          v67 = 2 * v65;
          v68 = v63;
          v69 = v12;
          v70 = v13;
          result = v65;
          do
          {
            q0_0.i16[0] = v70->i16[v65];
            q0_0.i64[0] = vmovl_s16(*q0_0.i8).u64[0];
            v64.i16[0] = v69->i16[v65];
            v64.i64[0] = vmovl_s16(*v64.i8).u64[0];
            *v64.i32 = v64.i32[0];
            *q0_0.i32 = rintf((v135 * q0_0.i32[0]) * *v64.i32);
            v71 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v71) = -32768;
            }

            if (v71 >= 0x7FFF)
            {
              LOWORD(v71) = 0x7FFF;
            }

            v72 = &v70->i8[v67];
            q0_0.i16[0] = v70->i16[v67 / 2 + 1];
            q0_0.i64[0] = vmovl_s16(*q0_0.i8).u64[0];
            v73 = &v69->i8[v67];
            v64.i16[0] = v69->i16[v67 / 2 + 1];
            v64.i64[0] = vmovl_s16(*v64.i8).u64[0];
            *v64.i32 = v64.i32[0];
            *q0_0.i32 = rintf((v135 * q0_0.i32[0]) * *v64.i32);
            v74 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v74) = -32768;
            }

            if (v74 >= 0x7FFF)
            {
              LOWORD(v74) = 0x7FFF;
            }

            v75 = &v68[v67];
            *(v75 - 2) = v71;
            *(v75 - 1) = v74;
            q0_0.i16[0] = *(v72 + 2);
            q0_0.i64[0] = vmovl_s16(*q0_0.i8).u64[0];
            v64.i16[0] = *(v73 + 2);
            v64.i64[0] = vmovl_s16(*v64.i8).u64[0];
            *v64.i32 = v64.i32[0];
            *q0_0.i32 = rintf((v135 * q0_0.i32[0]) * *v64.i32);
            v76 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v76) = -32768;
            }

            if (v76 >= 0x7FFF)
            {
              LOWORD(v76) = 0x7FFF;
            }

            q0_0.i16[0] = *(v72 + 3);
            q0_0 = vmovl_s16(*q0_0.i8);
            v64.i16[0] = *(v73 + 3);
            v64.i64[0] = vmovl_s16(*v64.i8).u64[0];
            *v64.i32 = v64.i32[0];
            *q0_0.i32 = rintf((v135 * q0_0.i32[0]) * *v64.i32);
            v77 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v77) = -32768;
            }

            if (v77 >= 0x7FFF)
            {
              LOWORD(v77) = 0x7FFF;
            }

            *&v68[2 * v65] = v76;
            result = (result + 4);
            *(v75 + 1) = v77;
            v70 = (v70 + 8);
            v69 = (v69 + 8);
            v68 += 8;
          }

          while (result <= v61);
        }
      }

      LODWORD(a7) = v136;
      if (result < v136)
      {
        v78 = result;
        v79 = v62 - result;
        if (v79 <= 7)
        {
          goto LABEL_117;
        }

        if (v127 + v121 * v60 < 0x10)
        {
          goto LABEL_117;
        }

        if (v111 + v109 * v60 < 0x10)
        {
          goto LABEL_117;
        }

        v103 = 2 * result;
        v104 = v79 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v105 = *(v13 + v103);
          v106 = *(v12 + v103);
          v107 = vmulq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v105)), v135), vcvtq_f32_s32(vmovl_high_s16(v106)));
          v108 = vmulq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v105.i8)), v135), vcvtq_f32_s32(vmovl_s16(*v106.i8)));
          v64 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v107.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v107, v107, 8uLL)))));
          q0_0 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108, v108, 8uLL)))))), v64);
          *(v11 + v103) = q0_0;
          v103 += 16;
          v104 -= 8;
        }

        while (v104);
        v78 = (v79 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v79 != (v79 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_117:
          do
          {
            q0_0.i16[0] = v13->i16[v78];
            q0_0 = vmovl_s16(*q0_0.i8);
            v64.i16[0] = v12->i16[v78];
            v64.i64[0] = vmovl_s16(*v64.i8).u64[0];
            *v64.i32 = v64.i32[0];
            *q0_0.i32 = rintf((v135 * q0_0.i32[0]) * *v64.i32);
            v80 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v80) = -32768;
            }

            if (v80 >= 0x7FFF)
            {
              LOWORD(v80) = 0x7FFF;
            }

            v11->i16[v78++] = v80;
          }

          while (v62 != v78);
        }
      }

      v13 = (v13 + v131);
      v12 = (v12 + v129);
      v11 = (v11 + v133);
      ++v60;
      v63 += v133;
      --v10;
    }

    while (v10);
  }

  return result;
}

unint64_t sub_1001F1C50(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  v9 = *a9;
  v10 = a2 >> 2;
  v11 = a4 >> 2;
  v12 = a6 >> 2;
  v13 = (a8 - 1);
  if (*a9 == 1.0)
  {
    if (a8)
    {
      v14 = (a7 - 4);
      if (a7 >= 4)
      {
        v22 = v14 & 0x7FFFFFFC;
        v23 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
        v24 = a5 + v23;
        v25 = v12 * v13;
        v26 = v22 + 5;
        if (v22 + 5 <= a7)
        {
          v26 = a7;
        }

        v27 = a5 + 4 * (v25 + v26);
        v28 = result + v23;
        v29 = result + 4 * (v10 * v13 + v26);
        v30 = a3 + v23;
        v31 = a3 + 4 * (v11 * v13 + v26);
        v32 = v26 - v22 - 4;
        v33 = a5 + 4 * (v25 + v22) + 16;
        v34 = result + 4 * (v10 * v13 + v22) + 16;
        v35 = a3 + 4 * (v11 * v13 + v22) + 16;
        v36 = (v14 >> 2) + 1;
        v38 = v35 > a5 && v33 > a3;
        v39 = v34 > a5 && v33 > result;
        v40 = a6 | a2;
        v41 = a6 | a4;
        v42 = v39 || v38;
        v43 = ((v41 | a2) & 0x8000000000000000) != 0;
        v46 = v24 < v29 && v28 < v27 || v40 < 0;
        v49 = v24 < v31 && v30 < v27 || v41 < 0 || v46;
        v50 = 4 * v12;
        v51 = (v14 < 0xC || v43) | v42;
        v52 = (v32 < 8) | v49;
        v53 = 4 * v11;
        do
        {
          v54 = v13;
          v55 = 0;
          if (v51)
          {
            goto LABEL_56;
          }

          v56 = v36 & 0x3FFFFFFC;
          do
          {
            v57 = vmulq_s32(*(a3 + v55 + 16), *(result + v55 + 16));
            v58 = vmulq_s32(*(a3 + v55), *(result + v55));
            v59 = vmulq_s32(*(a3 + v55 + 48), *(result + v55 + 48));
            v60 = (a5 + v55);
            v60[2] = vmulq_s32(*(a3 + v55 + 32), *(result + v55 + 32));
            v60[3] = v59;
            *v60 = v58;
            v60[1] = v57;
            v55 += 64;
            v56 -= 4;
          }

          while (v56);
          v55 = 4 * (v36 & 0x3FFFFFFC);
          if (v36 != (v36 & 0x3FFFFFFC))
          {
LABEL_56:
            v61 = 4 * v55;
            do
            {
              v62 = (a5 + v61);
              *v62 = vmul_s32(*(a3 + v61), *(result + v61));
              v62[1] = vmul_s32(*(a3 + v61 + 8), *(result + v61 + 8));
              v55 += 4;
              v61 += 16;
            }

            while (v55 <= v14);
          }

          if (v55 < a7)
          {
            v63 = (v14 & 0x7FFFFFFC) + 4;
            if (v52)
            {
              goto LABEL_115;
            }

            v64 = 16 * ((v14 >> 2) & 0x1FFFFFFF);
            v65 = v32 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v66 = vmulq_s32(*(a3 + v64 + 32), *(result + v64 + 32));
              v67 = (a5 + v64);
              v67[1] = vmulq_s32(*(a3 + v64 + 16), *(result + v64 + 16));
              v67[2] = v66;
              v64 += 32;
              v65 -= 8;
            }

            while (v65);
            v63 = (v14 & 0x7FFFFFFC) + 4 + (v32 & 0xFFFFFFFFFFFFFFF8);
            if (v32 != (v32 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_115:
              do
              {
                *(a5 + 4 * v63) = *(a3 + 4 * v63) * *(result + 4 * v63);
                ++v63;
              }

              while (v63 < a7);
            }
          }

          LODWORD(v13) = v54 - 1;
          a5 += v50;
          result += 4 * v10;
          a3 += v53;
        }

        while (v54);
      }

      else if (a7 >= 1)
      {
        v15 = (a5 + 8);
        v16 = (a3 + 8);
        v17 = (result + 8);
        do
        {
          *(v15 - 2) = *(v16 - 2) * *(v17 - 2);
          if (a7 != 1)
          {
            *(v15 - 1) = *(v16 - 1) * *(v17 - 1);
            if (a7 != 2)
            {
              *v15 = *v16 * *v17;
            }
          }

          v15 += v12;
          v16 += v11;
          v17 += v10;
          --a8;
        }

        while (a8);
      }
    }
  }

  else if (a8)
  {
    v18 = (a7 - 4);
    if (a7 >= 4)
    {
      v68 = v18 & 0x7FFFFFFC;
      v69 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
      v70 = a5 + v69;
      v71 = v12 * v13;
      if (v68 + 5 <= a7)
      {
        v72 = a7;
      }

      else
      {
        v72 = (v18 & 0x7FFFFFFC) + 5;
      }

      v73 = a5 + 4 * (v71 + v72);
      v133 = result + v69;
      v74 = a3 + v69;
      v75 = a5 + 4 * (v71 + v68) + 16;
      v76 = (v18 >> 2) + 1;
      v78 = a3 + 4 * (v11 * v13 + v68) + 16 > a5 && v75 > a3;
      v79 = result + 4 * (v10 * v13 + v68) + 16 > a5 && v75 > result;
      v80 = a6 | a2;
      v81 = a6 | a4;
      v82 = v79 || v78;
      v83 = ((v81 | a2) & 0x8000000000000000) != 0;
      v86 = v70 < result + 4 * (v10 * v13 + v72) && v133 < v73 || v80 < 0;
      if (v70 < a3 + 4 * (v11 * v13 + v72) && v74 < v73 || v81 < 0)
      {
        v86 = 1;
      }

      v89 = (v18 < 0xC || v83) | v82;
      v90 = v72 - 4 - v68 < 8 || v86;
      v91 = 4 * v12;
      v92 = 4 * v10;
      v93 = 4 * v11;
      v94 = a5 + 8;
      v132 = v72 - 4 - (v72 & 3) - v68;
      v134 = (v18 & 0x7FFFFFFC) + v72 - v68 - (v72 & 3);
      do
      {
        v95 = v13;
        v96 = 0;
        if (v89)
        {
          goto LABEL_104;
        }

        v97 = v76 & 0x3FFFFFFC;
        do
        {
          v98 = (result + v96);
          v135 = vld4q_f32(v98);
          v99.i64[0] = v135.val[0].i32[0];
          v99.i64[1] = v135.val[0].i32[1];
          v100 = vcvtq_f64_s64(v99);
          v99.i64[0] = v135.val[0].i32[2];
          v99.i64[1] = v135.val[0].i32[3];
          v101 = (a3 + v96);
          v136 = vld4q_f32(v101);
          v102 = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[0].i32[2];
          v99.i64[1] = v136.val[0].i32[3];
          v103 = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[0].i32[0];
          v99.i64[1] = v136.val[0].i32[1];
          v104 = vcvtq_f64_s64(v99);
          v99.i64[0] = v135.val[1].i32[0];
          v99.i64[1] = v135.val[1].i32[1];
          v105 = vcvtq_f64_s64(v99);
          v99.i64[0] = v135.val[1].i32[2];
          v99.i64[1] = v135.val[1].i32[3];
          v106 = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[1].i32[2];
          v99.i64[1] = v136.val[1].i32[3];
          v107 = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[1].i32[0];
          v99.i64[1] = v136.val[1].i32[1];
          v108 = vcvtq_f64_s64(v99);
          v99.i64[0] = v135.val[2].i32[0];
          v99.i64[1] = v135.val[2].i32[1];
          v109 = vcvtq_f64_s64(v99);
          v99.i64[0] = v135.val[2].i32[2];
          v99.i64[1] = v135.val[2].i32[3];
          v110 = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[2].i32[2];
          v99.i64[1] = v136.val[2].i32[3];
          v111 = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[2].i32[0];
          v99.i64[1] = v136.val[2].i32[1];
          v112 = vcvtq_f64_s64(v99);
          v99.i64[0] = v135.val[3].i32[0];
          v99.i64[1] = v135.val[3].i32[1];
          v113 = vcvtq_f64_s64(v99);
          v99.i64[0] = v135.val[3].i32[2];
          v99.i64[1] = v135.val[3].i32[3];
          v135.val[0] = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[3].i32[2];
          v99.i64[1] = v136.val[3].i32[3];
          v135.val[1] = vcvtq_f64_s64(v99);
          v99.i64[0] = v136.val[3].i32[0];
          v99.i64[1] = v136.val[3].i32[1];
          v114 = (a5 + v96);
          v136.val[1] = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v105, v9), v108))), vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v106, v9), v107))));
          v136.val[0] = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v100, v9), v104))), vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v102, v9), v103))));
          v136.val[3] = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v113, v9), vcvtq_f64_s64(v99)))), vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v135.val[0], v9), v135.val[1]))));
          v136.val[2] = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v109, v9), v112))), vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v110, v9), v111))));
          vst4q_f32(v114, v136);
          v96 += 64;
          v97 -= 4;
        }

        while (v97);
        v96 = 4 * (v76 & 0x3FFFFFFC);
        LODWORD(v115) = 4 * (v76 & 0x3FFFFFFC);
        if (v76 != (v76 & 0x3FFFFFFC))
        {
LABEL_104:
          v116 = 4 * v96;
          v117 = v94;
          v118 = a3;
          v119 = result;
          v115 = v96;
          do
          {
            v120 = rint(v9 * *(v119 + v116 + 4) * *(v118 + v116 + 4));
            v121 = v117 + v116;
            *(v121 - 8) = rint(v9 * *(v119 + 4 * v96) * *(v118 + 4 * v96));
            *(v121 - 4) = v120;
            v122 = rint(v9 * *(v119 + v116 + 12) * *(v118 + v116 + 12));
            *(v117 + 4 * v96) = rint(v9 * *(v119 + 4 * v96 + 8) * *(v118 + 4 * v96 + 8));
            v115 += 4;
            *(v121 + 4) = v122;
            v119 += 16;
            v118 += 16;
            v117 += 16;
          }

          while (v115 <= v18);
        }

        if (v115 < a7)
        {
          v123 = (v18 & 0x7FFFFFFC) + 4;
          if (v90)
          {
            goto LABEL_116;
          }

          v124 = 16 * ((v18 >> 2) & 0x1FFFFFFF) + 16;
          v125 = v132;
          do
          {
            v126 = *(result + v124);
            v127.i64[0] = v126;
            v127.i64[1] = SDWORD1(v126);
            v128 = vcvtq_f64_s64(v127);
            v127.i64[0] = SDWORD2(v126);
            v127.i64[1] = SHIDWORD(v126);
            v129 = vmulq_n_f64(vcvtq_f64_s64(v127), v9);
            v130 = *(a3 + v124);
            v127.i64[0] = SDWORD2(v130);
            v127.i64[1] = SHIDWORD(v130);
            v131 = vcvtq_f64_s64(v127);
            v127.i64[0] = v130;
            v127.i64[1] = SDWORD1(v130);
            *(a5 + v124) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmulq_n_f64(v128, v9), vcvtq_f64_s64(v127)))), vcvtq_s64_f64(vrndxq_f64(vmulq_f64(v129, v131))));
            v124 += 16;
            v125 -= 4;
          }

          while (v125);
          v123 = v134;
          if ((v72 & 3) != 0)
          {
LABEL_116:
            do
            {
              *(a5 + 4 * v123) = rint(v9 * *(result + 4 * v123) * *(a3 + 4 * v123));
              ++v123;
            }

            while (v123 < a7);
          }
        }

        LODWORD(v13) = v95 - 1;
        a5 += v91;
        result += v92;
        a3 += v93;
        v94 += v91;
      }

      while (v95);
    }

    else if (a7 >= 1)
    {
      v19 = (a5 + 8);
      v20 = (a3 + 8);
      v21 = (result + 8);
      do
      {
        *(v19 - 2) = rint(v9 * *(v21 - 2) * *(v20 - 2));
        if (a7 != 1)
        {
          *(v19 - 1) = rint(v9 * *(v21 - 1) * *(v20 - 1));
          if (a7 != 2)
          {
            *v19 = rint(v9 * *v21 * *v20);
          }
        }

        v19 += v12;
        v20 += v11;
        v21 += v10;
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

unint64_t sub_1001F2488(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  v9 = *a9;
  v10 = a2 >> 2;
  v11 = a4 >> 2;
  v12 = a6 >> 2;
  if (v9 == 1.0)
  {
    if (a8)
    {
      v13 = 0;
      v14 = a7 - 4;
      v151 = a5 - result;
      v15 = a6 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (a6 & 0xFFFFFFFFFFFFFFFCLL) - (a2 & 0xFFFFFFFFFFFFFFFCLL);
      v150 = a5 - a3;
      v18 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      v149 = (a6 & 0xFFFFFFFFFFFFFFFCLL) - (a4 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = 4 * v10;
      v20 = a5 + 16;
      v21 = result + 16;
      v22 = a3 + 16;
      v23 = 4 * v12;
      v24 = 4 * v11;
      do
      {
        if (a7 >= 8)
        {
          v26 = 0;
          v25 = 0;
          do
          {
            v27 = vmulq_f32(*(result + v26 + 16), *(a3 + v26 + 16));
            v28 = (a5 + v26);
            *v28 = vmulq_f32(*(result + v26), *(a3 + v26));
            v28[1] = v27;
            v25 += 8;
            v26 += 32;
          }

          while (v25 <= (a7 - 8));
          if (v25 <= v14)
          {
LABEL_11:
            v25 = v25;
            v29 = v14 - v25;
            if (v29 <= 0xB)
            {
              goto LABEL_12;
            }

            v34 = v29 >> 2;
            v35 = 4 * v25;
            v36 = v35 + 16 * v34;
            v37 = v20 + v15 * v13 + v36;
            v38 = a5 + v35 >= v22 + v18 * v13 + v36 || a3 + 4 * v25 >= v37;
            v39 = !v38;
            if (result + 4 * v25 < v37 && a5 + v35 < v21 + v16 * v13 + v36)
            {
              goto LABEL_12;
            }

            if (v39)
            {
              goto LABEL_12;
            }

            v41 = v34 + 1;
            v25 = v25 + 4 * (v41 & 0x7FFFFFFFFFFFFFFCLL);
            v42 = v41 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v43 = vmulq_f32(*(result + v35 + 16), *(a3 + v35 + 16));
              v44 = vmulq_f32(*(result + v35), *(a3 + v35));
              v45 = vmulq_f32(*(result + v35 + 48), *(a3 + v35 + 48));
              v46 = (a5 + v35);
              v46[2] = vmulq_f32(*(result + v35 + 32), *(a3 + v35 + 32));
              v46[3] = v45;
              *v46 = v44;
              v46[1] = v43;
              v35 += 64;
              v42 -= 4;
            }

            while (v42);
            if (v41 != (v41 & 0x7FFFFFFFFFFFFFFCLL))
            {
LABEL_12:
              v30 = 4 * v25;
              do
              {
                v31 = (a5 + v30);
                *v31 = vmul_f32(*(result + v30), *(a3 + v30));
                v31[1] = vmul_f32(*(result + v30 + 8), *(a3 + v30 + 8));
                v25 += 4;
                v30 += 16;
              }

              while (v25 <= v14);
            }
          }
        }

        else
        {
          LODWORD(v25) = 0;
          if (v14 >= 0)
          {
            goto LABEL_11;
          }
        }

        if (v25 < a7)
        {
          v32 = v25;
          v33 = a7 - v25;
          if (v33 <= 7)
          {
            goto LABEL_139;
          }

          if (v151 + v17 * v13 < 0x20)
          {
            goto LABEL_139;
          }

          if (v150 + v149 * v13 < 0x20)
          {
            goto LABEL_139;
          }

          v47 = (v33 & 0xFFFFFFFFFFFFFFF8) + v32;
          v48 = 4 * v32;
          v49 = v33 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v50 = vmulq_f32(*(result + v48 + 16), *(a3 + v48 + 16));
            v51 = (a5 + v48);
            *v51 = vmulq_f32(*(result + v48), *(a3 + v48));
            v51[1] = v50;
            v48 += 32;
            v49 -= 8;
          }

          while (v49);
          v32 = v47;
          if (v33 != (v33 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_139:
            do
            {
              *(a5 + 4 * v32) = *(result + 4 * v32) * *(a3 + 4 * v32);
              ++v32;
            }

            while (a7 != v32);
          }
        }

        result += v19;
        a3 += v24;
        a5 += v23;
        ++v13;
        --a8;
      }

      while (a8);
    }
  }

  else if (a8)
  {
    v52 = (a8 - 1);
    v53 = (a7 - 4);
    v54 = (a7 - 8);
    if (a7 >= 8)
    {
      v58 = 0;
      v59 = (v54 & 0xFFFFFFF8) + 8;
      v60 = a5 - result;
      v61 = (a6 & 0xFFFFFFFFFFFFFFFCLL) - (a2 & 0xFFFFFFFFFFFFFFFCLL);
      v62 = a5 - a3;
      v63 = (a6 & 0xFFFFFFFFFFFFFFFCLL) - (a4 & 0xFFFFFFFFFFFFFFFCLL);
      v64 = 4 * v59;
      v65 = a5 + 4 * v59;
      v66 = v59 | 4;
      if ((v59 | 4uLL) <= v53 + 1)
      {
        v66 = v53 + 1;
      }

      v67 = ~v59 + v66;
      v68 = a5 + 4 * ((v67 & 0x3FFFFFFFFFFFFFFCLL) + v12 * v52 + v59) + 16;
      v69 = v67 < 0xC;
      v38 = v65 >= result + 4 * ((v67 & 0x3FFFFFFFFFFFFFFCLL) + v10 * v52 + v59) + 16;
      v70 = a3 + 4 * ((v67 & 0x3FFFFFFFFFFFFFFCLL) + v11 * v52 + v59) + 16;
      v71 = (v67 >> 2) + 1;
      v72 = v38 || result + v64 >= v68;
      v73 = a6 | a2;
      v75 = !v72 || v73 < 0;
      v77 = v65 < v70 && a3 + v64 < v68 || ((a6 | a4) & 0x8000000000000000) != 0;
      v78 = 4 * v10;
      if (v77)
      {
        v79 = 1;
      }

      else
      {
        v79 = v75;
      }

      v80 = v69 | v79;
      v81 = 4 * v12;
      v82 = 4 * v11;
      do
      {
        v83 = 0;
        v84 = 0;
        v85 = v52;
        do
        {
          v86 = vmulq_n_f32(vmulq_f32(*(result + v83 + 16), *(a3 + v83 + 16)), v9);
          v87 = (a5 + v83);
          *v87 = vmulq_n_f32(vmulq_f32(*(result + v83), *(a3 + v83)), v9);
          v87[1] = v86;
          v84 += 8;
          v83 += 32;
        }

        while (v84 <= v54);
        if (v53 >= v84)
        {
          v84 = (v54 & 0xFFFFFFF8) + 8;
          if (v80)
          {
            goto LABEL_78;
          }

          v88 = v71 & 0x7FFFFFFFFFFFFFFCLL;
          v89 = 4 * ((v54 & 0xFFFFFFF8) + 8);
          do
          {
            v90 = (a5 + v89);
            v91 = vmulq_f32(vmulq_n_f32(*(result + v89 + 48), v9), *(a3 + v89 + 48));
            v92 = vmulq_f32(vmulq_n_f32(*(result + v89 + 16), v9), *(a3 + v89 + 16));
            v93 = vmulq_f32(vmulq_n_f32(*(result + v89 + 32), v9), *(a3 + v89 + 32));
            *v90 = vmulq_f32(vmulq_n_f32(*(result + v89), v9), *(a3 + v89));
            v90[1] = v92;
            v90[2] = v93;
            v90[3] = v91;
            v89 += 64;
            v88 -= 4;
          }

          while (v88);
          v84 = v59 + 4 * (v71 & 0x7FFFFFFFFFFFFFFCLL);
          if (v71 != (v71 & 0x7FFFFFFFFFFFFFFCLL))
          {
LABEL_78:
            v94 = 4 * v84;
            do
            {
              v95 = (a5 + v94);
              *v95 = vmul_f32(vmul_n_f32(*(result + v94), v9), *(a3 + v94));
              v95[1] = vmul_f32(vmul_n_f32(*(result + v94 + 8), v9), *(a3 + v94 + 8));
              v84 += 4;
              v94 += 16;
            }

            while (v84 <= v53);
          }
        }

        if (v84 < a7)
        {
          v96 = v84;
          v97 = a7 - v84;
          if (v97 <= 7)
          {
            goto LABEL_140;
          }

          if (v60 + v61 * v58 < 0x20)
          {
            goto LABEL_140;
          }

          if (v62 + v63 * v58 < 0x20)
          {
            goto LABEL_140;
          }

          v98 = (v97 & 0xFFFFFFFFFFFFFFF8) + v96;
          v99 = 4 * v96;
          v100 = v97 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v101 = vmulq_f32(vmulq_n_f32(*(result + v99 + 16), v9), *(a3 + v99 + 16));
            v102 = (a5 + v99);
            *v102 = vmulq_f32(vmulq_n_f32(*(result + v99), v9), *(a3 + v99));
            v102[1] = v101;
            v99 += 32;
            v100 -= 8;
          }

          while (v100);
          v96 = v98;
          if (v97 != (v97 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_140:
            do
            {
              *(a5 + 4 * v96) = (*(result + 4 * v96) * v9) * *(a3 + 4 * v96);
              ++v96;
            }

            while (a7 != v96);
          }
        }

        LODWORD(v52) = v52 - 1;
        ++v58;
        result += v78;
        a5 += v81;
        a3 += v82;
      }

      while (v85);
    }

    else if (a7 >= 4)
    {
      v103 = v53 & 0x7FFFFFFC;
      v104 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
      v105 = a5 + v104;
      v106 = v12 * v52;
      v107 = v103 + 5;
      if (v103 + 5 <= a7)
      {
        v107 = a7;
      }

      v108 = a5 + 4 * (v106 + v107);
      v109 = result + v104;
      v110 = result + 4 * (v10 * v52 + v107);
      v111 = a3 + v104;
      v112 = a3 + 4 * (v11 * v52 + v107);
      v113 = v107 - v103 - 4;
      v114 = a5 + 4 * (v106 + v103) + 16;
      v115 = result + 4 * (v10 * v52 + v103) + 16;
      v116 = a3 + 4 * (v11 * v52 + v103) + 16;
      v117 = (v53 >> 2) + 1;
      v119 = v116 > a5 && v114 > a3;
      v120 = v115 > a5 && v114 > result;
      v121 = a6 | a2;
      v122 = a6 | a4;
      v123 = v120 || v119;
      v124 = ((v122 | a2) & 0x8000000000000000) != 0;
      v127 = v105 < v110 && v109 < v108 || v121 < 0;
      v130 = v105 < v112 && v111 < v108 || v122 < 0 || v127;
      v131 = 4 * v12;
      v132 = (v53 < 0xC || v124) | v123;
      v133 = (v113 < 8) | v130;
      v134 = 4 * v11;
      do
      {
        v135 = v52;
        v136 = 0;
        if (v132)
        {
          goto LABEL_128;
        }

        v137 = v117 & 0x3FFFFFFC;
        do
        {
          v138 = (a5 + v136);
          v139 = vmulq_f32(vmulq_n_f32(*(result + v136 + 48), v9), *(a3 + v136 + 48));
          v140 = vmulq_f32(vmulq_n_f32(*(result + v136 + 16), v9), *(a3 + v136 + 16));
          v141 = vmulq_f32(vmulq_n_f32(*(result + v136 + 32), v9), *(a3 + v136 + 32));
          *v138 = vmulq_f32(vmulq_n_f32(*(result + v136), v9), *(a3 + v136));
          v138[1] = v140;
          v138[2] = v141;
          v138[3] = v139;
          v136 += 64;
          v137 -= 4;
        }

        while (v137);
        v136 = 4 * (v117 & 0x3FFFFFFC);
        if (v117 != (v117 & 0x3FFFFFFC))
        {
LABEL_128:
          v142 = 4 * v136;
          do
          {
            v143 = (a5 + v142);
            *v143 = vmul_f32(vmul_n_f32(*(result + v142), v9), *(a3 + v142));
            v143[1] = vmul_f32(vmul_n_f32(*(result + v142 + 8), v9), *(a3 + v142 + 8));
            v136 += 4;
            v142 += 16;
          }

          while (v136 <= v53);
        }

        if (v136 < a7)
        {
          v144 = (v53 & 0x7FFFFFFC) + 4;
          if (v133)
          {
            goto LABEL_141;
          }

          v145 = 16 * ((v53 >> 2) & 0x1FFFFFFF);
          v146 = v113 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v147 = vmulq_f32(vmulq_n_f32(*(result + v145 + 32), v9), *(a3 + v145 + 32));
            v148 = (a5 + v145);
            v148[1] = vmulq_f32(vmulq_n_f32(*(result + v145 + 16), v9), *(a3 + v145 + 16));
            v148[2] = v147;
            v145 += 32;
            v146 -= 8;
          }

          while (v146);
          v144 = (v53 & 0x7FFFFFFC) + 4 + (v113 & 0xFFFFFFFFFFFFFFF8);
          if (v113 != (v113 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_141:
            do
            {
              *(a5 + 4 * v144) = (*(result + 4 * v144) * v9) * *(a3 + 4 * v144);
              ++v144;
            }

            while (v144 < a7);
          }
        }

        LODWORD(v52) = v135 - 1;
        a5 += v131;
        result += 4 * v10;
        a3 += v134;
      }

      while (v135);
    }

    else if (a7 >= 1)
    {
      v55 = (a5 + 8);
      v56 = (a3 + 8);
      v57 = (result + 8);
      do
      {
        *(v55 - 2) = (*(v57 - 2) * v9) * *(v56 - 2);
        if (a7 != 1)
        {
          *(v55 - 1) = (*(v57 - 1) * v9) * *(v56 - 1);
          if (a7 != 2)
          {
            *v55 = (*v57 * v9) * *v56;
          }
        }

        v55 += v12;
        v56 += v11;
        v57 += v10;
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

unint64_t sub_1001F2CF4(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  v9 = *a9;
  v10 = a2 >> 3;
  v11 = a4 >> 3;
  v12 = a6 >> 3;
  v13 = (a8 - 1);
  if (*a9 == 1.0)
  {
    if (a8)
    {
      v14 = (a7 - 4);
      if (a7 >= 4)
      {
        v22 = v14 & 0x7FFFFFFC;
        v23 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
        v24 = a5 + v23;
        v25 = v12 * v13;
        if (v22 + 5 <= a7)
        {
          v26 = a7;
        }

        else
        {
          v26 = (v14 & 0x7FFFFFFC) + 5;
        }

        v27 = a5 + 8 * (v25 + v26);
        v103 = a3 + v23;
        v104 = result + v23;
        v28 = v26 - 4;
        v29 = a5 + 8 * (v25 + v22) + 32;
        v30 = (v14 >> 2) + 1;
        v32 = a3 + 8 * (v11 * v13 + v22) + 32 > a5 && v29 > a3;
        v33 = result + 8 * (v10 * v13 + v22) + 32 > a5 && v29 > result;
        v34 = a6 | a2;
        v35 = a6 | a4;
        v36 = v33 || v32;
        v37 = ((v35 | a2) & 0x8000000000000000) != 0;
        v40 = v24 < result + 8 * (v10 * v13 + v26) && v104 < v27 || v34 < 0;
        if (v24 < a3 + 8 * (v11 * v13 + v26) && v103 < v27 || v35 < 0)
        {
          v40 = 1;
        }

        v43 = v26 & 3;
        v44 = (v14 & 0x7FFFFFFC) + v26 - v22 - v43;
        v45 = (v14 < 4 || v37) | v36;
        v46 = v26 - 4 - v22 < 8 || v40;
        v47 = 8 * v11;
        do
        {
          v48 = v13;
          v49 = 0;
          if (v45)
          {
            goto LABEL_57;
          }

          v50 = v30 & 0x3FFFFFFE;
          do
          {
            v51 = vmulq_f64(*(result + v49 + 16), *(a3 + v49 + 16));
            v52 = vmulq_f64(*(result + v49), *(a3 + v49));
            v53 = vmulq_f64(*(result + v49 + 48), *(a3 + v49 + 48));
            v54 = (a5 + v49);
            v54[2] = vmulq_f64(*(result + v49 + 32), *(a3 + v49 + 32));
            v54[3] = v53;
            *v54 = v52;
            v54[1] = v51;
            v49 += 64;
            v50 -= 2;
          }

          while (v50);
          v49 = 4 * (v30 & 0x3FFFFFFE);
          if (v30 != (v30 & 0x3FFFFFFE))
          {
LABEL_57:
            v55 = 8 * v49;
            do
            {
              v56 = (a5 + v55);
              *v56 = vmulq_f64(*(result + v55), *(a3 + v55));
              v56[1] = vmulq_f64(*(result + v55 + 16), *(a3 + v55 + 16));
              v49 += 4;
              v55 += 32;
            }

            while (v49 <= v14);
          }

          if (v49 < a7)
          {
            v57 = (v14 & 0x7FFFFFFC) + 4;
            if (v46)
            {
              goto LABEL_116;
            }

            v58 = 32 * ((v14 >> 2) & 0x1FFFFFFF);
            v59 = v28 - v43 - v22;
            do
            {
              v60 = vmulq_f64(*(result + v58 + 48), *(a3 + v58 + 48));
              v61 = (a5 + v58);
              v61[2] = vmulq_f64(*(result + v58 + 32), *(a3 + v58 + 32));
              v61[3] = v60;
              v58 += 32;
              v59 -= 4;
            }

            while (v59);
            v57 = v44;
            if (v43)
            {
LABEL_116:
              do
              {
                *(a5 + 8 * v57) = *(result + 8 * v57) * *(a3 + 8 * v57);
                ++v57;
              }

              while (v57 < a7);
            }
          }

          LODWORD(v13) = v48 - 1;
          a5 += 8 * v12;
          result += 8 * v10;
          a3 += v47;
        }

        while (v48);
      }

      else if (a7 >= 1)
      {
        v15 = (a5 + 16);
        v16 = (a3 + 16);
        v17 = (result + 16);
        do
        {
          *(v15 - 2) = *(v17 - 2) * *(v16 - 2);
          if (a7 != 1)
          {
            *(v15 - 1) = *(v17 - 1) * *(v16 - 1);
            if (a7 != 2)
            {
              *v15 = *v17 * *v16;
            }
          }

          v15 += v12;
          v16 += v11;
          v17 += v10;
          --a8;
        }

        while (a8);
      }
    }
  }

  else if (a8)
  {
    v18 = (a7 - 4);
    if (a7 >= 4)
    {
      v62 = v18 & 0x7FFFFFFC;
      v63 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
      v64 = a5 + v63;
      v65 = v12 * v13;
      if (v62 + 5 <= a7)
      {
        v66 = a7;
      }

      else
      {
        v66 = (v18 & 0x7FFFFFFC) + 5;
      }

      v67 = a5 + 8 * (v65 + v66);
      v105 = result + v63;
      v68 = a3 + v63;
      v69 = v66 - 4;
      v70 = a5 + 8 * (v65 + v62) + 32;
      v71 = (v18 >> 2) + 1;
      v73 = a3 + 8 * (v11 * v13 + v62) + 32 > a5 && v70 > a3;
      v74 = result + 8 * (v10 * v13 + v62) + 32 > a5 && v70 > result;
      v75 = a6 | a2;
      v76 = a6 | a4;
      v77 = v74 || v73;
      v80 = v64 < result + 8 * (v10 * v13 + v66) && v105 < v67 || v75 < 0;
      v83 = v64 < a3 + 8 * (v11 * v13 + v66) && v68 < v67 || v76 < 0 || v80;
      v84 = v66 & 3;
      v85 = (v18 & 0x7FFFFFFC) + v66 - v62 - v84;
      v86 = (v18 < 4 || ((v76 | a2) & 0x8000000000000000) != 0) | v77;
      v87 = (v66 - 4 - v62 < 6) | v83;
      v88 = 8 * v11;
      do
      {
        v89 = v13;
        v90 = 0;
        if (v86)
        {
          goto LABEL_105;
        }

        v91 = v71 & 0x3FFFFFFE;
        do
        {
          v92 = (a5 + v90);
          v93 = vmulq_f64(vmulq_n_f64(*(result + v90 + 48), v9), *(a3 + v90 + 48));
          v94 = vmulq_f64(vmulq_n_f64(*(result + v90 + 16), v9), *(a3 + v90 + 16));
          v95 = vmulq_f64(vmulq_n_f64(*(result + v90 + 32), v9), *(a3 + v90 + 32));
          *v92 = vmulq_f64(vmulq_n_f64(*(result + v90), v9), *(a3 + v90));
          v92[1] = v94;
          v92[2] = v95;
          v92[3] = v93;
          v90 += 64;
          v91 -= 2;
        }

        while (v91);
        v90 = 4 * (v71 & 0x3FFFFFFE);
        if (v71 != (v71 & 0x3FFFFFFE))
        {
LABEL_105:
          v96 = 8 * v90;
          do
          {
            v97 = (a5 + v96);
            *v97 = vmulq_f64(vmulq_n_f64(*(result + v96), v9), *(a3 + v96));
            v97[1] = vmulq_f64(vmulq_n_f64(*(result + v96 + 16), v9), *(a3 + v96 + 16));
            v90 += 4;
            v96 += 32;
          }

          while (v90 <= v18);
        }

        if (v90 < a7)
        {
          v98 = (v18 & 0x7FFFFFFC) + 4;
          if (v87)
          {
            goto LABEL_117;
          }

          v99 = 32 * ((v18 >> 2) & 0x1FFFFFFF);
          v100 = v69 - v84 - v62;
          do
          {
            v101 = vmulq_f64(vmulq_n_f64(*(result + v99 + 48), v9), *(a3 + v99 + 48));
            v102 = (a5 + v99);
            v102[2] = vmulq_f64(vmulq_n_f64(*(result + v99 + 32), v9), *(a3 + v99 + 32));
            v102[3] = v101;
            v99 += 32;
            v100 -= 4;
          }

          while (v100);
          v98 = v85;
          if (v84)
          {
LABEL_117:
            do
            {
              *(a5 + 8 * v98) = v9 * *(result + 8 * v98) * *(a3 + 8 * v98);
              ++v98;
            }

            while (v98 < a7);
          }
        }

        LODWORD(v13) = v89 - 1;
        a5 += 8 * v12;
        result += 8 * v10;
        a3 += v88;
      }

      while (v89);
    }

    else if (a7 >= 1)
    {
      v19 = (a5 + 16);
      v20 = (a3 + 16);
      v21 = (result + 16);
      do
      {
        *(v19 - 2) = v9 * *(v21 - 2) * *(v20 - 2);
        if (a7 != 1)
        {
          *(v19 - 1) = v9 * *(v21 - 1) * *(v20 - 1);
          if (a7 != 2)
          {
            *v19 = v9 * *v21 * *v20;
          }
        }

        v19 += v12;
        v20 += v11;
        v21 += v10;
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

uint64_t sub_1001F332C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double d1_0, double a11, double a12, double a13, __n128 a14, double *a10)
{
  v15 = a8;
  v16 = a7;
  v18 = a5;
  v20 = a3;
  v21 = *a10;
  *&a9 = *a10;
  v51 = a9;
  if (!result)
  {
    v53[0] = 1;
    if (!a8)
    {
      return result;
    }

    v27 = 0;
    v49 = a5 - a3;
    v50 = vdupq_lane_s32(*&a9, 0);
    while (1)
    {
      result = sub_1001F8D7C(v53, v20, v18, v16, v21);
      v29.i64[0] = 0xFF000000FFLL;
      v29.i64[1] = 0xFF000000FFLL;
      if (result < v16)
      {
        v30 = v16 - result;
        if (v30 < 8 || (v49 + (a6 - a4) * v27) < 0x10)
        {
          v32 = result;
          do
          {
LABEL_32:
            v47 = *(v20 + v32);
            if (*(v20 + v32))
            {
              v48 = rintf(*&v51 / v47);
              v47 = v48 & ~(v48 >> 31);
              if (v47 >= 255)
              {
                LOBYTE(v47) = -1;
              }
            }

            *(v18 + v32++) = v47;
          }

          while (v16 != v32);
          goto LABEL_13;
        }

        if (v30 >= 0x10)
        {
          v33 = v30 & 0xFFFFFFFFFFFFFFF0;
          v39 = result;
          v40 = v30 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v41 = *(v20 + v39);
            v42 = vceqzq_s8(v41);
            v43 = vdivq_f32(v50, vcvtq_f32_u32(vqtbl1q_s8(v41, xmmword_1003E3710)));
            v44 = vdivq_f32(v50, vcvtq_f32_u32(vqtbl1q_s8(v41, xmmword_1003E3700)));
            v45 = vdivq_f32(v50, vcvtq_f32_u32(vqtbl1q_s8(v41, xmmword_1003E3730)));
            v46 = vdivq_f32(v50, vcvtq_f32_u32(vqtbl1q_s8(v41, xmmword_1003E3720)));
            v55.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v29);
            v55.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v29);
            v55.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0), v29);
            v55.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v29);
            v28 = vbicq_s8(vqtbl4q_s8(v55, xmmword_1003E36F0), v42);
            *(v18 + v39) = v28;
            v39 += 16;
            v40 -= 16;
          }

          while (v40);
          if (v30 == v33)
          {
            goto LABEL_13;
          }

          if ((v30 & 8) == 0)
          {
            v32 = v33 + result;
            goto LABEL_32;
          }
        }

        else
        {
          v33 = 0;
        }

        v32 = (v30 & 0xFFFFFFFFFFFFFFF8) + result;
        v34 = v33 - (v30 & 0xFFFFFFFFFFFFFFF8);
        v35 = v33 + result;
        do
        {
          v28.i64[0] = *(v20 + v35);
          v36 = vceqz_s8(*v28.i8);
          v37 = vdivq_f32(v50, vcvtq_f32_u32(vqtbl1q_s8(v28, xmmword_1003E3730)));
          v38 = vdivq_f32(v50, vcvtq_f32_u32(vqtbl1q_s8(v28, xmmword_1003E3720)));
          v54.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))), 0), v29);
          v54.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), 0), v29);
          v28 = vqtbl2q_s8(v54, xmmword_1003E3780);
          *(v18 + v35) = vbic_s8(*v28.i8, v36);
          v35 += 8;
          v34 += 8;
        }

        while (v34);
        if (v30 != (v30 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_32;
        }
      }

LABEL_13:
      v20 += a4;
      v18 += a6;
      ++v27;
      if (!--v15)
      {
        return result;
      }
    }
  }

  v52 = 1;
  if (a8)
  {
    v23 = result;
    do
    {
      result = sub_1001F8B00(&v52, v23, v20, v18, v16, v21, d1_0, a11, a12, a13, a14);
      a11 = v51;
      if (result < v16)
      {
        v25 = result;
        do
        {
          v26 = *(v20 + v25);
          if (*(v20 + v25))
          {
            LOBYTE(v24) = *(v23 + v25);
            *&d1_0 = v26;
            v24 = rintf((*&v51 * LODWORD(v24)) / v26);
            v26 = v24 & ~(v24 >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }
          }

          *(v18 + v25++) = v26;
        }

        while (v16 != v25);
      }

      v23 += a2;
      v20 += a4;
      v18 += a6;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1001F371C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double d0_0, double a10, double a11, double a12, double a13, __n128 a14, double *a9)
{
  v15 = *a9;
  v29 = 1;
  if (a8)
  {
    v16 = a8;
    v17 = a7;
    v22 = result;
    v24 = a7;
    do
    {
      result = sub_1001F8FBC(&v29, v22, a3, a5, v17, v15, a10, a11, a12, a13, a14);
      if (result < v17)
      {
        v26 = result;
        do
        {
          LOBYTE(v27) = *(a3 + v26);
          if (v27)
          {
            v25.i8[0] = *(v22 + v26);
            v25 = vmovl_s16(*&vmovl_s8(v25)).u64[0];
            *&a10 = v27;
            v23 = v15;
            *v25.i32 = rintf((v23 * v25.i32[0]) / *&a10);
            v27 = *v25.i32;
            if (*v25.i32 <= -128)
            {
              LODWORD(v27) = -128;
            }

            if (v27 >= 127)
            {
              LOBYTE(v27) = 127;
            }
          }

          *(a5 + v26++) = v27;
        }

        while (v24 != v26);
      }

      v22 += a2;
      a3 += a4;
      a5 += a6;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint16x8_t *sub_1001F3848(uint16x8_t *result, unint64_t a2, int16x8_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, uint64_t a7, int a8, double d0_0, double a10, double a11, double a12, __n128 a13, double *a9)
{
  v14 = *a9;
  v28 = 1;
  if (a8)
  {
    v15 = a8;
    v16 = a7;
    v19 = result;
    v21 = a7;
    v22 = 2 * (a6 >> 1);
    v23 = 2 * (a2 >> 1);
    v24 = 2 * (a4 >> 1);
    do
    {
      result = sub_1001F9238(&v28, v19, a3, a5, v16, v14, a10, a11, a12, a13);
      if (result < v16)
      {
        v26 = result;
        do
        {
          v27 = a3->u16[v26];
          if (a3->i16[v26])
          {
            LOWORD(v25) = v19->i16[v26];
            *&a10 = v27;
            v20 = v14;
            v25 = rintf((v20 * LODWORD(v25)) / v27);
            v27 = v25 & ~(v25 >> 31);
            if (v27 >= 0xFFFF)
            {
              LOWORD(v27) = -1;
            }
          }

          a5->i16[v26++] = v27;
        }

        while (v21 != v26);
      }

      v19 = (v19 + v23);
      a3 = (a3 + v24);
      a5 = (a5 + v22);
      --v15;
    }

    while (v15);
  }

  return result;
}

int16x8_t *sub_1001F3968(int16x8_t *result, unint64_t a2, int16x8_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, uint64_t a7, int a8, double d0_0, double a10, double a11, double a12, __n128 a13, double *a9)
{
  v14 = *a9;
  v28 = 1;
  if (a8)
  {
    v15 = a8;
    v16 = a7;
    v19 = result;
    v20 = a7;
    v27 = 2 * (a6 >> 1);
    v22 = 2 * (a2 >> 1);
    v23 = 2 * (a4 >> 1);
    do
    {
      result = sub_1001F94AC(&v28, v19, a3, a5, v16, v14, a10, a11, a12, a13);
      if (result < v16)
      {
        v25 = result;
        do
        {
          LOWORD(v26) = a3->i16[v25];
          if (v26)
          {
            v24.i16[0] = v19->i16[v25];
            v24 = vmovl_s16(v24).u64[0];
            *&a10 = v26;
            v21 = v14;
            *v24.i32 = rintf((v21 * v24.i32[0]) / *&a10);
            v26 = *v24.i32;
            if (*v24.i32 <= -32768)
            {
              LODWORD(v26) = -32768;
            }

            if (v26 >= 0x7FFF)
            {
              LOWORD(v26) = 0x7FFF;
            }
          }

          a5->i16[v25++] = v26;
        }

        while (v20 != v25);
      }

      v19 = (v19 + v22);
      a3 = (a3 + v23);
      a5 = (a5 + v27);
      --v15;
    }

    while (v15);
  }

  return result;
}

int32x4_t *sub_1001F3AA0(int32x4_t *result, unint64_t a2, int32x4_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, uint64_t a7, int a8, double d0_0, double a10, double a11, double a12, __n128 a13, double *a9)
{
  v14 = *a9;
  v27 = 1;
  if (a8)
  {
    v15 = a8;
    v16 = a7;
    v19 = result;
    v21 = a7;
    v22 = 4 * (a6 >> 2);
    v23 = 4 * (a2 >> 2);
    v24 = 4 * (a4 >> 2);
    do
    {
      result = sub_1001F9720(&v27, v19, a3, a5, v16, v14, a10, a11, a12, a13);
      if (result < v16)
      {
        v25 = result;
        do
        {
          LODWORD(v26) = a3->i32[v25];
          if (v26)
          {
            *&a10 = v26;
            v20 = v14;
            v26 = rintf((v20 * v19->i32[v25]) / v26);
          }

          a5->i32[v25++] = v26;
        }

        while (v21 != v25);
      }

      v19 = (v19 + v23);
      a3 = (a3 + v24);
      a5 = (a5 + v22);
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1001F3BB0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  if (a8)
  {
    v9 = a2 >> 2;
    v10 = *a9;
    v11 = a4 >> 2;
    v12 = a6 >> 2;
    v13 = (a7 - 8);
    if (a7 >= 8)
    {
      v19 = a8 - 1;
      v20 = 4 * v9;
      v21 = 4 * v12;
      v22 = 4 * v11;
      do
      {
        v23 = 0;
        v24 = 0;
        v25 = v19;
        do
        {
          v26 = vbicq_s8(vdivq_f32(vmulq_n_f32(*(result + v23 + 16), v10), *(a3 + v23 + 16)), vceqzq_f32(*(a3 + v23 + 16)));
          v27 = (a5 + v23);
          *v27 = vbicq_s8(vdivq_f32(vmulq_n_f32(*(result + v23), v10), *(a3 + v23)), vceqzq_f32(*(a3 + v23)));
          v27[1] = v26;
          v24 += 8;
          v23 += 32;
        }

        while (v24 <= v13);
        if (v24 < a7)
        {
          v28 = ((v13 & 0xFFFFFFF8) + 8);
          do
          {
            while (1)
            {
              v29 = *(a3 + 4 * v28);
              if (v29 == 0.0)
              {
                break;
              }

              *(a5 + 4 * v28) = (*(result + 4 * v28) * v10) / v29;
              if (++v28 >= a7)
              {
                goto LABEL_6;
              }
            }

            *(a5 + 4 * v28++) = 0;
          }

          while (v28 < a7);
        }

LABEL_6:
        v19 = v25 - 1;
        result += v20;
        a5 += v21;
        a3 += v22;
      }

      while (v25);
    }

    else if (a7 >= 1)
    {
      v14 = 4 * v12;
      v15 = a5 + 12;
      v16 = (a3 + 12);
      v17 = (result + 12);
      v18 = 4 * v9;
      do
      {
        v31 = *(v16 - 3);
        if (v31 == 0.0)
        {
          *(v15 - 12) = 0;
          if (a7 == 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v15 - 12) = (*(v17 - 3) * v10) / v31;
          if (a7 == 1)
          {
            goto LABEL_17;
          }
        }

        v32 = *(v16 - 2);
        if (v32 == 0.0)
        {
          *(v15 - 8) = 0;
          if (a7 == 2)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v15 - 8) = (*(v17 - 2) * v10) / v32;
          if (a7 == 2)
          {
            goto LABEL_17;
          }
        }

        v33 = *(v16 - 1);
        if (v33 == 0.0)
        {
          *(v15 - 4) = 0;
          if (a7 == 3)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v15 - 4) = (*(v17 - 1) * v10) / v33;
          if (a7 == 3)
          {
            goto LABEL_17;
          }
        }

        if (*v16 == 0.0)
        {
          *v15 = 0;
          if (a7 == 4)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *v15 = (*v17 * v10) / *v16;
          if (a7 == 4)
          {
            goto LABEL_17;
          }
        }

        v34 = v16[1];
        if (v34 == 0.0)
        {
          *(v15 + 4) = 0;
          if (a7 == 5)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v15 + 4) = (v17[1] * v10) / v34;
          if (a7 == 5)
          {
            goto LABEL_17;
          }
        }

        v35 = v16[2];
        if (v35 == 0.0)
        {
          *(v15 + 8) = 0;
          if (a7 != 6)
          {
LABEL_42:
            v36 = v16[3];
            if (v36 == 0.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = (v17[3] * v10) / v36;
            }

            *(v15 + 12) = v30;
          }
        }

        else
        {
          *(v15 + 8) = (v17[2] * v10) / v35;
          if (a7 != 6)
          {
            goto LABEL_42;
          }
        }

LABEL_17:
        v15 += v14;
        v16 += v11;
        v17 = (v17 + v18);
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

uint64_t sub_1001F3E60(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  if (a8)
  {
    v9 = a2 >> 3;
    v10 = *a9;
    v11 = a4 >> 3;
    v12 = a6 >> 3;
    v13 = (a7 - 4);
    if (a7 >= 4)
    {
      v22 = a8 - 1;
      v23 = 8 * v9;
      v24 = 8 * v12;
      v25 = 8 * v11;
      do
      {
        v26 = 0;
        v27 = 0;
        v28 = v22;
        do
        {
          v29 = vbicq_s8(vdivq_f64(vmulq_n_f64(*(result + v26 + 16), v10), *(a3 + v26 + 16)), vceqzq_f64(*(a3 + v26 + 16)));
          v30 = (a5 + v26);
          *v30 = vbicq_s8(vdivq_f64(vmulq_n_f64(*(result + v26), v10), *(a3 + v26)), vceqzq_f64(*(a3 + v26)));
          v30[1] = v29;
          v27 += 4;
          v26 += 32;
        }

        while (v27 <= v13);
        if (v27 < a7)
        {
          v31 = ((v13 & 0xFFFFFFFC) + 4);
          do
          {
            while (1)
            {
              v32 = *(a3 + 8 * v31);
              if (v32 == 0.0)
              {
                break;
              }

              *(a5 + 8 * v31) = v10 * *(result + 8 * v31) / v32;
              if (++v31 >= a7)
              {
                goto LABEL_19;
              }
            }

            *(a5 + 8 * v31++) = 0;
          }

          while (v31 < a7);
        }

LABEL_19:
        v22 = v28 - 1;
        result += v23;
        a5 += v24;
        a3 += v25;
      }

      while (v28);
    }

    else if (a7 >= 1)
    {
      v14 = 8 * v12;
      v15 = (a5 + 16);
      v16 = (a3 + 16);
      v17 = (result + 16);
      v18 = 8 * v9;
      do
      {
        v20 = *(v16 - 2);
        if (v20 == 0.0)
        {
          *(v15 - 2) = 0.0;
          if (a7 == 1)
          {
            goto LABEL_7;
          }
        }

        else
        {
          *(v15 - 2) = v10 * *(v17 - 2) / v20;
          if (a7 == 1)
          {
            goto LABEL_7;
          }
        }

        v21 = *(v16 - 1);
        if (v21 == 0.0)
        {
          *(v15 - 1) = 0.0;
          if (a7 != 2)
          {
LABEL_16:
            if (*v16 == 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = v10 * *v17 / *v16;
            }

            *v15 = v19;
          }
        }

        else
        {
          *(v15 - 1) = v10 * *(v17 - 1) / v21;
          if (a7 != 2)
          {
            goto LABEL_16;
          }
        }

LABEL_7:
        v15 = (v15 + v14);
        v16 += v11;
        v17 = (v17 + v18);
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

void sub_1001F402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double *a9)
{
  v10 = *a9;
  v45[0] = 1;
  if (a8)
  {
    v11 = a8;
    v12 = a7;
    v14 = a5;
    v16 = a3;
    v17 = 0;
    *v9.i32 = v10;
    v18 = a7;
    v42 = a5 - a3;
    v19 = a6 - a4;
    v43 = vdupq_lane_s32(v9, 0);
    v44 = *v9.i32;
    do
    {
      v20 = sub_1001F8D7C(v45, v16, v14, v12, v10);
      v22.i64[0] = 0xFF000000FFLL;
      v22.i64[1] = 0xFF000000FFLL;
      if (v20 < v12)
      {
        v23 = v18 - v20;
        if (v23 < 8 || (v42 + v19 * v17) < 0x10)
        {
          v25 = v20;
          goto LABEL_22;
        }

        if (v23 >= 0x10)
        {
          v26 = v23 & 0xFFFFFFFFFFFFFFF0;
          v32 = v20;
          v33 = v23 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v34 = *(v16 + v32);
            v35 = vceqzq_s8(v34);
            v36 = vdivq_f32(v43, vcvtq_f32_u32(vqtbl1q_s8(v34, xmmword_1003E3710)));
            v37 = vdivq_f32(v43, vcvtq_f32_u32(vqtbl1q_s8(v34, xmmword_1003E3700)));
            v38 = vdivq_f32(v43, vcvtq_f32_u32(vqtbl1q_s8(v34, xmmword_1003E3730)));
            v39 = vdivq_f32(v43, vcvtq_f32_u32(vqtbl1q_s8(v34, xmmword_1003E3720)));
            v47.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))), 0), v22);
            v47.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))), 0), v22);
            v47.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), 0), v22);
            v47.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v22);
            v21 = vbicq_s8(vqtbl4q_s8(v47, xmmword_1003E36F0), v35);
            *(v14 + v32) = v21;
            v32 += 16;
            v33 -= 16;
          }

          while (v33);
          if (v23 == v26)
          {
            goto LABEL_3;
          }

          if ((v23 & 8) == 0)
          {
            v25 = v26 + v20;
            do
            {
LABEL_22:
              v40 = *(v16 + v25);
              if (*(v16 + v25))
              {
                v41 = rintf(v44 / v40);
                v40 = v41 & ~(v41 >> 31);
                if (v40 >= 255)
                {
                  LOBYTE(v40) = -1;
                }
              }

              *(v14 + v25++) = v40;
            }

            while (v18 != v25);
            goto LABEL_3;
          }
        }

        else
        {
          v26 = 0;
        }

        v25 = (v23 & 0xFFFFFFFFFFFFFFF8) + v20;
        v27 = v26 - (v23 & 0xFFFFFFFFFFFFFFF8);
        v28 = v26 + v20;
        do
        {
          v21.i64[0] = *(v16 + v28);
          v29 = vceqz_s8(*v21.i8);
          v30 = vdivq_f32(v43, vcvtq_f32_u32(vqtbl1q_s8(v21, xmmword_1003E3730)));
          v31 = vdivq_f32(v43, vcvtq_f32_u32(vqtbl1q_s8(v21, xmmword_1003E3720)));
          v46.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), 0), v22);
          v46.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), 0), v22);
          v21 = vqtbl2q_s8(v46, xmmword_1003E3780);
          *(v14 + v28) = vbic_s8(*v21.i8, v29);
          v28 += 8;
          v27 += 8;
        }

        while (v27);
        if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_22;
        }
      }

LABEL_3:
      v16 += a4;
      v14 += a6;
      ++v17;
      --v11;
    }

    while (v11);
  }
}

void sub_1001F4370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double *a9)
{
  v10 = *a9;
  v45[0] = 1;
  if (a8)
  {
    v11 = a8;
    v12 = a7;
    v14 = a5;
    v16 = a3;
    v17 = 0;
    *v9.i32 = v10;
    v18 = a7;
    v42 = a5 - a3;
    v41 = a6 - a4;
    v43 = vdupq_lane_s32(v9, 0);
    v44 = *v9.i32;
    do
    {
      v19 = sub_1001F99B4(v45, v16, v14, v12, v10);
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      v22.i64[0] = 0x7F0000007FLL;
      v22.i64[1] = 0x7F0000007FLL;
      if (v19 < v12)
      {
        v23 = v18 - v19;
        if (v23 < 8 || (v42 + v41 * v17) < 0x10)
        {
          v25 = v19;
          goto LABEL_22;
        }

        if (v23 >= 0x10)
        {
          v26 = v23 & 0xFFFFFFFFFFFFFFF0;
          v32 = v19;
          v33 = v23 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v34 = *(v16 + v32);
            v35 = vceqzq_s8(v34);
            v36 = vdivq_f32(v43, vcvtq_n_f32_s32(vqtbl1q_s8(v34, xmmword_1003E3750), 0x18uLL));
            v37 = vdivq_f32(v43, vcvtq_n_f32_s32(vqtbl1q_s8(v34, xmmword_1003E3740), 0x18uLL));
            v38 = vdivq_f32(v43, vcvtq_n_f32_s32(vqtbl1q_s8(v34, xmmword_1003E3770), 0x18uLL));
            v39 = vdivq_f32(v43, vcvtq_n_f32_s32(vqtbl1q_s8(v34, xmmword_1003E3760), 0x18uLL));
            v47.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))), v22), v21);
            v47.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))), v22), v21);
            v47.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), v22), v21);
            v47.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), v22), v21);
            v20 = vbicq_s8(vqtbl4q_s8(v47, xmmword_1003E36F0), v35);
            *(v14 + v32) = v20;
            v32 += 16;
            v33 -= 16;
          }

          while (v33);
          if (v23 == v26)
          {
            goto LABEL_3;
          }

          if ((v23 & 8) == 0)
          {
            v25 = v26 + v19;
            do
            {
LABEL_22:
              LOBYTE(v40) = *(v16 + v25);
              if (v40)
              {
                v40 = rintf(v44 / v40);
                if (v40 <= -128)
                {
                  LODWORD(v40) = -128;
                }

                if (v40 >= 127)
                {
                  LOBYTE(v40) = 127;
                }
              }

              *(v14 + v25++) = v40;
            }

            while (v18 != v25);
            goto LABEL_3;
          }
        }

        else
        {
          v26 = 0;
        }

        v25 = (v23 & 0xFFFFFFFFFFFFFFF8) + v19;
        v27 = v26 - (v23 & 0xFFFFFFFFFFFFFFF8);
        v28 = v26 + v19;
        do
        {
          v20.i64[0] = *(v16 + v28);
          v29 = vceqz_s8(*v20.i8);
          v30 = vdivq_f32(v43, vcvtq_n_f32_s32(vqtbl1q_s8(v20, xmmword_1003E3770), 0x18uLL));
          v31 = vdivq_f32(v43, vcvtq_n_f32_s32(vqtbl1q_s8(v20, xmmword_1003E3760), 0x18uLL));
          v46.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), v22), v21);
          v46.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), v22), v21);
          v20 = vqtbl2q_s8(v46, xmmword_1003E3780);
          *(v14 + v28) = vbic_s8(*v20.i8, v29);
          v28 += 8;
          v27 += 8;
        }

        while (v27);
        if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_22;
        }
      }

LABEL_3:
      v16 += a4;
      v14 += a6;
      ++v17;
      --v11;
    }

    while (v11);
  }
}

void sub_1001F46C4(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, int16x8_t *a9, uint64_t a10, int8x16_t *a11, uint64_t a12, uint64_t a13, int a14, double *a15)
{
  v15 = *a15;
  v42 = 1;
  if (a14)
  {
    v16 = a14;
    v17 = a13;
    v18 = a11;
    v19 = a9;
    v20 = 0;
    *&a6 = v15;
    v21 = a13;
    v39 = a11 - a9;
    v22 = a12 & 0xFFFFFFFFFFFFFFFELL;
    v23 = a10 & 0xFFFFFFFFFFFFFFFELL;
    v24 = (a12 & 0xFFFFFFFFFFFFFFFELL) - (a10 & 0xFFFFFFFFFFFFFFFELL);
    v40 = vdupq_lane_s32(*&a6, 0);
    v41 = *&a6;
    do
    {
      v25 = sub_1001F9BF4(&v42, v19, v18, v17, v15);
      v26.i64[0] = 0xFFFF0000FFFFLL;
      v26.i64[1] = 0xFFFF0000FFFFLL;
      if (v25 < v17)
      {
        v27 = v21 - v25;
        v28 = v27 >= 8 && v39 + v24 * v20 >= 0x10;
        v29 = v25;
        if (!v28)
        {
          goto LABEL_20;
        }

        v29 = (v27 & 0xFFFFFFFFFFFFFFF8) + v25;
        v30 = 2 * v25;
        v31 = v27 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v32 = *(v19 + v30);
          v33 = vceqzq_s16(v32);
          v34 = vcvtq_f32_u32(vmovl_u16(*v32.i8));
          v35 = vdivq_f32(v40, vcvtq_f32_u32(vmovl_high_u16(v32)));
          v36 = vdivq_f32(v40, v34);
          *(v18 + v30) = vbicq_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))), 0), v26), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), 0), v26)), v33);
          v30 += 16;
          v31 -= 8;
        }

        while (v31);
        if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_20:
          do
          {
            v37 = v19->u16[v29];
            if (v19->i16[v29])
            {
              v38 = rintf(v41 / v37);
              v37 = v38 & ~(v38 >> 31);
              if (v37 >= 0xFFFF)
              {
                LOWORD(v37) = -1;
              }
            }

            v18->i16[v29++] = v37;
          }

          while (v21 != v29);
        }
      }

      v19 = (v19 + v23);
      v18 = (v18 + v22);
      ++v20;
      --v16;
    }

    while (v16);
  }
}

void sub_1001F48A0(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, int16x8_t *a9, uint64_t a10, int8x16_t *a11, uint64_t a12, uint64_t a13, int a14, double *a15)
{
  v15 = *a15;
  v40 = 1;
  if (a14)
  {
    v16 = a14;
    v17 = a13;
    v18 = a11;
    v19 = a9;
    v20 = 0;
    *&a6 = v15;
    v21 = a13;
    v37 = a11 - a9;
    v22 = a12 & 0xFFFFFFFFFFFFFFFELL;
    v23 = a10 & 0xFFFFFFFFFFFFFFFELL;
    v36 = (a12 & 0xFFFFFFFFFFFFFFFELL) - (a10 & 0xFFFFFFFFFFFFFFFELL);
    v38 = vdupq_lane_s32(*&a6, 0);
    v39 = *&a6;
    do
    {
      v24 = sub_1001F9E2C(&v40, v19, v18, v17, v15);
      if (v24 < v17)
      {
        v25 = v21 - v24;
        v26 = v25 >= 8 && v37 + v36 * v20 >= 0x10;
        v27 = v24;
        if (!v26)
        {
          goto LABEL_22;
        }

        v27 = (v25 & 0xFFFFFFFFFFFFFFF8) + v24;
        v28 = 2 * v24;
        v29 = v25 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v30 = *(v19 + v28);
          v31 = vceqzq_s16(v30);
          v32 = vcvtq_f32_s32(vmovl_s16(*v30.i8));
          v33 = vdivq_f32(v38, vcvtq_f32_s32(vmovl_high_s16(v30)));
          v34 = vdivq_f32(v38, v32);
          *(v18 + v28) = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL)))))), v31);
          v28 += 16;
          v29 -= 8;
        }

        while (v29);
        if (v25 != (v25 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            LOWORD(v35) = v19->i16[v27];
            if (v35)
            {
              v35 = rintf(v39 / v35);
              if (v35 <= -32768)
              {
                LODWORD(v35) = -32768;
              }

              if (v35 >= 0x7FFF)
              {
                LOWORD(v35) = 0x7FFF;
              }
            }

            v18->i16[v27++] = v35;
          }

          while (v21 != v27);
        }
      }

      v19 = (v19 + v23);
      v18 = (v18 + v22);
      ++v20;
      --v16;
    }

    while (v16);
  }
}

void sub_1001F4A78(uint64_t a1, uint64_t a2, int32x4_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, uint64_t a7, int a8, double *a9)
{
  v9 = *a9;
  v21 = 1;
  if (a8)
  {
    v10 = a8;
    v11 = a7;
    v15 = a7;
    v16 = 4 * (a6 >> 2);
    v17 = 4 * (a4 >> 2);
    do
    {
      v18 = sub_1001FA064(&v21, a3, a5, v11, v9);
      if (v18 < v11)
      {
        v19 = v18;
        do
        {
          LODWORD(v20) = a3->i32[v19];
          if (v20)
          {
            v14 = v9;
            v20 = rintf(v14 / v20);
          }

          a5->i32[v19++] = v20;
        }

        while (v15 != v19);
      }

      a3 = (a3 + v17);
      a5 = (a5 + v16);
      --v10;
    }

    while (v10);
  }
}

void sub_1001F4B60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, int a8, int32x2_t *a9)
{
  if (a8)
  {
    v9 = *a9;
    *v9.i32 = *a9->i32;
    v10 = a4 >> 2;
    v11 = a6 >> 2;
    v12 = a7 - 8;
    if (a7 >= 8)
    {
      v28 = (a8 - 1);
      v29 = vdupq_lane_s32(v9, 0);
      v30 = (v12 & 0xFFFFFFF8) + 8;
      if ((v30 | 1uLL) > a7)
      {
        v31 = v30 + 1;
      }

      else
      {
        v31 = a7;
      }

      v32 = v31 - v30;
      if ((v31 - v30) > 7)
      {
        v43 = 4 * v30;
        v44 = a3 + 4 * v30 >= a5 + 4 * (v31 + v11 * v28) || a5 + 4 * v30 >= a3 + 4 * (v31 + v10 * v28);
        if (!v44 || ((a6 | a4) & 0x8000000000000000) != 0)
        {
          v63 = 4 * v11;
          v64 = 4 * v10;
          do
          {
            v65 = 0;
            v66 = 0;
            v67 = v28;
            do
            {
              v68 = vbicq_s8(vdivq_f32(v29, *(a3 + v65 + 16)), vceqzq_f32(*(a3 + v65 + 16)));
              v69 = (a5 + v65);
              *v69 = vbicq_s8(vdivq_f32(v29, *(a3 + v65)), vceqzq_f32(*(a3 + v65)));
              v69[1] = v68;
              v66 += 8;
              v65 += 32;
            }

            while (v66 <= v12);
            if (v66 < a7)
            {
              v70 = (v12 & 0xFFFFFFF8) + 8;
              do
              {
                v71 = *(a3 + 4 * v70);
                if (v71 == 0.0)
                {
                  v72 = 0.0;
                }

                else
                {
                  v72 = *v9.i32 / v71;
                }

                *(a5 + 4 * v70++) = v72;
              }

              while (v70 < a7);
            }

            LODWORD(v28) = v67 - 1;
            a5 += v63;
            a3 += v64;
          }

          while (v67);
        }

        else
        {
          v45 = v31 & 7;
          v46 = v32 - v45 + v30;
          v47 = 4 * v11;
          v48 = 4 * v10;
          if (v30 + 1 > a7)
          {
            v49 = ((a7 - 8) & 0xF8) + 9;
          }

          else
          {
            v49 = a7;
          }

          v50 = v32 - (v49 & 7);
          do
          {
            v51 = 0;
            v52 = 0;
            v53 = v28;
            do
            {
              v54 = vbicq_s8(vdivq_f32(v29, *(a3 + v51 + 16)), vceqzq_f32(*(a3 + v51 + 16)));
              v55 = (a5 + v51);
              *v55 = vbicq_s8(vdivq_f32(v29, *(a3 + v51)), vceqzq_f32(*(a3 + v51)));
              v55[1] = v54;
              v52 += 8;
              v51 += 32;
            }

            while (v52 <= v12);
            if (v52 < a7)
            {
              v56 = v43;
              v57 = v50;
              do
              {
                v58 = vbicq_s8(vdivq_f32(v29, *(a3 + v56 + 16)), vceqzq_f32(*(a3 + v56 + 16)));
                v59 = (a5 + v56);
                *v59 = vbicq_s8(vdivq_f32(v29, *(a3 + v56)), vceqzq_f32(*(a3 + v56)));
                v59[1] = v58;
                v56 += 32;
                v57 -= 8;
              }

              while (v57);
              if (v45)
              {
                v60 = v46;
                do
                {
                  v61 = *(a3 + 4 * v60);
                  if (v61 == 0.0)
                  {
                    v62 = 0.0;
                  }

                  else
                  {
                    v62 = *v9.i32 / v61;
                  }

                  *(a5 + 4 * v60++) = v62;
                }

                while (v60 < a7);
              }
            }

            LODWORD(v28) = v53 - 1;
            a5 += v47;
            a3 += v48;
          }

          while (v53);
        }
      }

      else
      {
        v33 = 4 * v11;
        v34 = 4 * v10;
        do
        {
          v35 = 0;
          v36 = 0;
          v37 = v28;
          do
          {
            v38 = vbicq_s8(vdivq_f32(v29, *(a3 + v35 + 16)), vceqzq_f32(*(a3 + v35 + 16)));
            v39 = (a5 + v35);
            *v39 = vbicq_s8(vdivq_f32(v29, *(a3 + v35)), vceqzq_f32(*(a3 + v35)));
            v39[1] = v38;
            v36 += 8;
            v35 += 32;
          }

          while (v36 <= v12);
          if (v36 < a7)
          {
            v40 = (v12 & 0xFFFFFFF8) + 8;
            do
            {
              v41 = *(a3 + 4 * v40);
              if (v41 == 0.0)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = *v9.i32 / v41;
              }

              *(a5 + 4 * v40++) = v42;
            }

            while (v40 < a7);
          }

          LODWORD(v28) = v37 - 1;
          a5 += v33;
          a3 += v34;
        }

        while (v37);
      }
    }

    else if (a7 >= 1)
    {
      v13 = (a5 + 12);
      v14 = (a3 + 12);
      do
      {
        v15 = *(v14 - 3);
        if (v15 == 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = *v9.i32 / v15;
        }

        *(v13 - 3) = v16;
        if (a7 != 1)
        {
          v17 = *(v14 - 2);
          v18 = v17 == 0.0 ? 0.0 : *v9.i32 / v17;
          *(v13 - 2) = v18;
          if (a7 != 2)
          {
            v19 = *(v14 - 1);
            v20 = v19 == 0.0 ? 0.0 : *v9.i32 / v19;
            *(v13 - 1) = v20;
            if (a7 != 3)
            {
              v21 = *v14 == 0.0 ? 0.0 : *v9.i32 / *v14;
              *v13 = v21;
              if (a7 != 4)
              {
                v22 = v14[1];
                v23 = v22 == 0.0 ? 0.0 : *v9.i32 / v22;
                v13[1] = v23;
                if (a7 != 5)
                {
                  v24 = v14[2];
                  v25 = v24 == 0.0 ? 0.0 : *v9.i32 / v24;
                  v13[2] = v25;
                  if (a7 != 6)
                  {
                    v26 = v14[3];
                    if (v26 == 0.0)
                    {
                      v27 = 0.0;
                    }

                    else
                    {
                      v27 = *v9.i32 / v26;
                    }

                    v13[3] = v27;
                  }
                }
              }
            }
          }
        }

        v13 += v11;
        v14 += v10;
        --a8;
      }

      while (a8);
    }
  }
}

void sub_1001F4EEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, int a8, double *a9)
{
  if (a8)
  {
    v9 = *a9;
    v10 = a4 >> 3;
    v11 = a6 >> 3;
    v12 = a7 - 4;
    if (a7 >= 4)
    {
      v20 = (a8 - 1);
      v21 = vdupq_lane_s64(v9, 0);
      v22 = (v12 & 0xFFFFFFFC) + 4;
      if ((v22 | 1uLL) > a7)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = a7;
      }

      v24 = v23 - v22;
      if ((v23 - v22) > 3)
      {
        v35 = 8 * v22;
        v36 = a3 + 8 * v22 >= a5 + 8 * (v23 + v11 * v20) || a5 + 8 * v22 >= a3 + 8 * (v23 + v10 * v20);
        if (!v36 || ((a6 | a4) & 0x8000000000000000) != 0)
        {
          v55 = 8 * v11;
          v56 = 8 * v10;
          do
          {
            v57 = 0;
            v58 = 0;
            v59 = v20;
            do
            {
              v60 = vbicq_s8(vdivq_f64(v21, *(a3 + v57 + 16)), vceqzq_f64(*(a3 + v57 + 16)));
              v61 = (a5 + v57);
              *v61 = vbicq_s8(vdivq_f64(v21, *(a3 + v57)), vceqzq_f64(*(a3 + v57)));
              v61[1] = v60;
              v58 += 4;
              v57 += 32;
            }

            while (v58 <= v12);
            if (v58 < a7)
            {
              v62 = (v12 & 0xFFFFFFFC) + 4;
              do
              {
                v63 = *(a3 + 8 * v62);
                if (v63 == 0.0)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = *&v9 / v63;
                }

                *(a5 + 8 * v62++) = v64;
              }

              while (v62 < a7);
            }

            LODWORD(v20) = v59 - 1;
            a5 += v55;
            a3 += v56;
          }

          while (v59);
        }

        else
        {
          v37 = v23 & 3;
          v38 = v24 - v37 + v22;
          v39 = 8 * v11;
          v40 = 8 * v10;
          if (v22 + 1 > a7)
          {
            v41 = ((a7 - 4) & 0xFC) + 5;
          }

          else
          {
            v41 = a7;
          }

          v42 = v24 - (v41 & 3);
          do
          {
            v43 = 0;
            v44 = 0;
            v45 = v20;
            do
            {
              v46 = vbicq_s8(vdivq_f64(v21, *(a3 + v43 + 16)), vceqzq_f64(*(a3 + v43 + 16)));
              v47 = (a5 + v43);
              *v47 = vbicq_s8(vdivq_f64(v21, *(a3 + v43)), vceqzq_f64(*(a3 + v43)));
              v47[1] = v46;
              v44 += 4;
              v43 += 32;
            }

            while (v44 <= v12);
            if (v44 < a7)
            {
              v48 = v35;
              v49 = v42;
              do
              {
                v50 = vbicq_s8(vdivq_f64(v21, *(a3 + v48 + 16)), vceqzq_f64(*(a3 + v48 + 16)));
                v51 = (a5 + v48);
                *v51 = vbicq_s8(vdivq_f64(v21, *(a3 + v48)), vceqzq_f64(*(a3 + v48)));
                v51[1] = v50;
                v48 += 32;
                v49 -= 4;
              }

              while (v49);
              if (v37)
              {
                v52 = v38;
                do
                {
                  v53 = *(a3 + 8 * v52);
                  if (v53 == 0.0)
                  {
                    v54 = 0.0;
                  }

                  else
                  {
                    v54 = *&v9 / v53;
                  }

                  *(a5 + 8 * v52++) = v54;
                }

                while (v52 < a7);
              }
            }

            LODWORD(v20) = v45 - 1;
            a5 += v39;
            a3 += v40;
          }

          while (v45);
        }
      }

      else
      {
        v25 = 8 * v11;
        v26 = 8 * v10;
        do
        {
          v27 = 0;
          v28 = 0;
          v29 = v20;
          do
          {
            v30 = vbicq_s8(vdivq_f64(v21, *(a3 + v27 + 16)), vceqzq_f64(*(a3 + v27 + 16)));
            v31 = (a5 + v27);
            *v31 = vbicq_s8(vdivq_f64(v21, *(a3 + v27)), vceqzq_f64(*(a3 + v27)));
            v31[1] = v30;
            v28 += 4;
            v27 += 32;
          }

          while (v28 <= v12);
          if (v28 < a7)
          {
            v32 = (v12 & 0xFFFFFFFC) + 4;
            do
            {
              v33 = *(a3 + 8 * v32);
              if (v33 == 0.0)
              {
                v34 = 0.0;
              }

              else
              {
                v34 = *&v9 / v33;
              }

              *(a5 + 8 * v32++) = v34;
            }

            while (v32 < a7);
          }

          LODWORD(v20) = v29 - 1;
          a5 += v25;
          a3 += v26;
        }

        while (v29);
      }
    }

    else if (a7 >= 1)
    {
      v13 = (a3 + 16);
      v14 = (a5 + 16);
      do
      {
        v15 = *(v13 - 2);
        if (v15 == 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = *&v9 / v15;
        }

        *(v14 - 2) = v16;
        if (a7 != 1)
        {
          v17 = *(v13 - 1);
          v18 = v17 == 0.0 ? 0.0 : *&v9 / v17;
          *(v14 - 1) = v18;
          if (a7 != 2)
          {
            if (*v13 == 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = *&v9 / *v13;
            }

            *v14 = v19;
          }
        }

        v13 += v10;
        v14 += v11;
        --a8;
      }

      while (a8);
    }
  }
}

uint64_t sub_1001F5204(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11, double a12, __n128 a13, __n128 a14, double a15, __n128 a16, double *a17)
{
  if (!a8)
  {
    return result;
  }

  a13.n128_f32[0] = *a17;
  a14.n128_f32[0] = a17[2];
  v17 = vdupq_lane_s32(a14.n128_u64[0], 0);
  a16.n128_f32[0] = a17[1];
  v18 = a7 - 8;
  v19 = a7 - 4;
  do
  {
    if (a7 < 8)
    {
      v20 = 0;
      if (v19 >= 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

    v21 = 0;
    do
    {
      v22 = *(result + v21);
      v23 = *(a3 + v21);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v76 = a8;
        v30 = a7;
        v96 = a6;
        v72 = a5;
        v92 = a4;
        v84 = a2;
        v88 = a3;
        v80 = result;
        v64 = a14;
        v68 = a13;
        v56 = a16;
        v60 = v17;
        sub_1003C83B4();
        a16 = v56;
        v17 = v60;
        a14 = v64;
        a13 = v68;
        result = v80;
        a2 = v84;
        a3 = v88;
        a4 = v92;
        a6 = v96;
        a5 = v72;
        a7 = v30;
        a8 = v76;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_9:
          v24 = xmmword_1004B0030;
          v25 = xmmword_1004B0010;
          if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_10;
        }
      }

      v77 = a8;
      v31 = a7;
      v97 = a6;
      v73 = a5;
      v93 = a4;
      v85 = a2;
      v89 = a3;
      v81 = result;
      v65 = a14;
      v69 = a13;
      v57 = a16;
      v61 = v17;
      sub_1003C83FC();
      a16 = v57;
      v17 = v61;
      a14 = v65;
      a13 = v69;
      result = v81;
      a2 = v85;
      a3 = v89;
      a4 = v93;
      a6 = v97;
      a5 = v73;
      a7 = v31;
      a8 = v77;
      v24 = xmmword_1004B0030;
      v25 = xmmword_1004B0010;
      if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
      {
LABEL_15:
        v78 = a8;
        v32 = a7;
        v98 = a6;
        v74 = a5;
        v94 = a4;
        v86 = a2;
        v90 = a3;
        v82 = result;
        v66 = a14;
        v70 = a13;
        v58 = a16;
        v62 = v17;
        v52 = v25;
        v54 = v24;
        sub_1003C83B4();
        v25 = v52;
        v24 = v54;
        a16 = v58;
        v17 = v62;
        a14 = v66;
        a13 = v70;
        result = v82;
        a2 = v86;
        a3 = v90;
        a4 = v94;
        a6 = v98;
        a5 = v74;
        a7 = v32;
        a8 = v78;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_10:
      if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
      {
        goto LABEL_11;
      }

LABEL_16:
      v79 = a8;
      v33 = a7;
      v99 = a6;
      v75 = a5;
      v95 = a4;
      v87 = a2;
      v91 = a3;
      v83 = result;
      v67 = a14;
      v71 = a13;
      v59 = a16;
      v63 = v17;
      v53 = v25;
      v55 = v24;
      sub_1003C83FC();
      v25 = v53;
      v24 = v55;
      a16 = v59;
      v17 = v63;
      a14 = v67;
      a13 = v71;
      result = v83;
      a2 = v87;
      a3 = v91;
      a4 = v95;
      a6 = v99;
      a5 = v75;
      a7 = v33;
      a8 = v79;
LABEL_11:
      v26 = vmovl_u8(v22);
      v27 = vmovl_u8(v23);
      v28 = vaddq_f32(v17, vaddq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v26.i8)), a13.n128_f32[0]), vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v27.i8)), a16.n128_f32[0])));
      v29 = vaddq_f32(v17, vaddq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v26)), a13.n128_f32[0]), vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v27)), a16.n128_f32[0])));
      *(a5 + v21) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v28, vorrq_s8(vandq_s8(v25, v28), v24)))), vcvtq_s32_f32(vaddq_f32(v29, vorrq_s8(vandq_s8(xmmword_1004B0010, v29), xmmword_1004B0030)))));
      v21 += 8;
    }

    while (v18 >= v21);
    v20 = v21;
    if (v21 <= v19)
    {
LABEL_18:
      v34 = 0;
      v35 = result;
      v36 = a5;
      v37 = a3;
      do
      {
        v38 = v35 + v20;
        v39 = v37 + v20;
        v40 = rintf(((flt_1003E53DC[*(v37 + v20) + 128] * a16.n128_f32[0]) + (flt_1003E53DC[*(v35 + v20) + 128] * a13.n128_f32[0])) + a14.n128_f32[0]);
        v41 = v40 & ~(v40 >> 31);
        if (v41 >= 255)
        {
          LOBYTE(v41) = -1;
        }

        v42 = (v36 + v20);
        v43 = rintf(((flt_1003E53DC[*(v37 + v20 + 1) + 128] * a16.n128_f32[0]) + (flt_1003E53DC[*(v35 + v20 + 1) + 128] * a13.n128_f32[0])) + a14.n128_f32[0]);
        *(v36 + v20) = v41;
        v44 = v43 & ~(v43 >> 31);
        if (v44 >= 255)
        {
          LOBYTE(v44) = -1;
        }

        v42[1] = v44;
        v45 = (flt_1003E53DC[*(v39 + 3) + 128] * a16.n128_f32[0]) + (flt_1003E53DC[*(v38 + 3) + 128] * a13.n128_f32[0]);
        v46 = rintf(((flt_1003E53DC[*(v39 + 2) + 128] * a16.n128_f32[0]) + (flt_1003E53DC[*(v38 + 2) + 128] * a13.n128_f32[0])) + a14.n128_f32[0]);
        v47 = v46 & ~(v46 >> 31);
        v48 = rintf(v45 + a14.n128_f32[0]);
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        v49 = v48 & ~(v48 >> 31);
        v34 += 4;
        if (v49 >= 255)
        {
          LOBYTE(v49) = -1;
        }

        v42[2] = v47;
        v42[3] = v49;
        v37 += 4;
        v36 += 4;
        v35 += 4;
      }

      while (v19 >= v20 + v34);
      v20 = (v20 + v34);
    }

LABEL_32:
    while (v20 < a7)
    {
      v50 = rintf(((flt_1003E53DC[*(a3 + v20) + 128] * a16.n128_f32[0]) + (flt_1003E53DC[*(result + v20) + 128] * a13.n128_f32[0])) + a14.n128_f32[0]);
      v51 = v50 & ~(v50 >> 31);
      if (v51 >= 255)
      {
        LOBYTE(v51) = -1;
      }

      *(a5 + v20++) = v51;
    }

    result += a2;
    a3 += a4;
    a5 += a6;
    --a8;
  }

  while (a8);
  return result;
}

uint64_t sub_1001F5668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double d0_0, int16x8_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13, int8x16_t a14, double *a9)
{
  if (a8)
  {
    v17 = a5;
    v18 = a3;
    v19 = result;
    v20 = 0;
    a10.i64[0] = a9[1];
    *v15.i32 = *a9;
    v21 = *a10.i64;
    *v16.i32 = a9[2];
    v22 = a7 - 4;
    v100 = a5 - result;
    v99 = a6 - a2;
    v95 = a5 - a3;
    v94 = a6 - a4;
    v97 = result + 4;
    v98 = a5 + 4;
    v96 = a3 + 4;
    v23 = &unk_1003E3000;
    v101 = a7;
    v102 = a7;
    v105 = v16.i32[0];
    v106 = v15.i32[0];
    v111 = v21;
    v103 = vdupq_lane_s32(v16, 0);
    v104 = vdupq_lane_s32(v15, 0);
    do
    {
      v110 = a8;
      v24 = v23;
      *a10.i32 = v21;
      a11.i32[0] = v16.i32[0];
      result = sub_1001FA2C0(*v15.i32, a10, *a11.i8, *a12.i64, *a13.i64, a14, v112, v19, v18, v17, a7);
      v23 = v24;
      v16.i32[0] = v105;
      v15.i32[0] = v106;
      v21 = v111;
      if (result > v22)
      {
        goto LABEL_25;
      }

      v26 = result;
      v27 = v22 - result;
      if (v27 <= 0x3B || ((v43 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + result, v44 = v98 + v20 * a6 + v43, v17 + result < v96 + v20 * a4 + v43) ? (v45 = v18 + result >= v44) : (v45 = 1), v45 ? (v46 = 0) : (v46 = 1), v19 + result < v44 ? (v47 = v17 + result >= v97 + v20 * a2 + v43) : (v47 = 1), !v47 || (v46 & 1) != 0))
      {
        result = result;
      }

      else
      {
        v48 = (v27 >> 2) + 1;
        result = result + 4 * (v48 & 0x7FFFFFFFFFFFFFF0);
        v49 = v48 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v50 = (v19 + v26);
          v51 = (v18 + v26);
          v114 = vld4q_s8(v50);
          v113 = vld4q_s8(v51);
          v52 = v24[118];
          v53 = vqtbl1q_s8(v113.val[0], xmmword_1003E3770);
          v54 = vqtbl1q_s8(v113.val[0], xmmword_1003E3750);
          v55 = vqtbl1q_s8(v113.val[0], xmmword_1003E3740);
          a14 = vqtbl1q_s8(v113.val[3], xmmword_1003E3750);
          v56 = vqtbl1q_s8(v113.val[0], v52);
          v21 = v111;
          v57 = vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v53, 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[0], xmmword_1003E3770), 0x18uLL));
          v58 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[1], xmmword_1003E3740), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[1], xmmword_1003E3740), 0x18uLL)), v103);
          v59 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[1], xmmword_1003E3750), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[1], xmmword_1003E3750), 0x18uLL)), v103);
          v60 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[1], xmmword_1003E3770), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[1], xmmword_1003E3770), 0x18uLL)), v103);
          v61 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[1], v52), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[1], v52), 0x18uLL)), v103);
          v62 = vaddq_f32(v57, v103);
          v63 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v56, 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[0], v52), 0x18uLL)), v103);
          v64 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v54, 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[0], xmmword_1003E3750), 0x18uLL)), v103);
          v65 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v55, 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[0], xmmword_1003E3740), 0x18uLL)), v103);
          v66 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))));
          v67 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL)))));
          v61.i64[0] = 0x7F0000007FLL;
          v61.i64[1] = 0x7F0000007FLL;
          v60.i64[0] = 0x7F0000007FLL;
          v60.i64[1] = 0x7F0000007FLL;
          v115.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), v61), v60), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), v61), v60)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v65.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v65, v65, 8uLL))))), v61), v60), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))))), v61), v60)));
          v115.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(v67, v61), v60), vminq_s32(vmaxq_s32(v66, v61), v60)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL))))), v61), v60), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))), v61), v60)));
          v68 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[2], xmmword_1003E3770), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[2], xmmword_1003E3770), 0x18uLL)), v103);
          v69 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[2], v52), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[2], v52), 0x18uLL)), v103);
          v70 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[2], xmmword_1003E3750), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[2], xmmword_1003E3750), 0x18uLL)), v103);
          v71 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[2], xmmword_1003E3740), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[2], xmmword_1003E3740), 0x18uLL)), v103);
          v115.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v69.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v69, v69, 8uLL))))), v61), v60), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v68.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v68, v68, 8uLL))))), v61), v60)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))))), v61), v60), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v70.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v70, v70, 8uLL))))), v61), v60)));
          v72 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[3], xmmword_1003E3740), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[3], xmmword_1003E3740), 0x18uLL)), v103);
          v73 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(a14, 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[3], xmmword_1003E3750), 0x18uLL)), v103);
          v74 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[3], xmmword_1003E3770), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[3], xmmword_1003E3770), 0x18uLL)), v103);
          v75 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v113.val[3], v52), 0x18uLL), v111), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v114.val[3], v52), 0x18uLL)), v103);
          a12 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL)))));
          a13 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8)));
          a10 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(a13, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))), v61), v60), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), v61), v60));
          a11 = vminq_s32(vmaxq_s32(a12, v61), v60);
          v25 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), v61), v60), a11);
          v115.val[3] = vuzp1q_s8(a10, v25);
          v76 = (v17 + v26);
          vst4q_s8(v76, v115);
          v26 += 64;
          v49 -= 16;
        }

        while (v49);
        v16.i32[0] = v105;
        v15.i32[0] = v106;
        if (v48 == (v48 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_25;
        }
      }

      do
      {
        v28 = v19 + result;
        v25.i8[0] = *(v19 + result);
        v29 = vmovl_s16(*&vmovl_s8(*v25.i8)).u64[0];
        v30 = v18 + result;
        a10.i8[0] = *(v18 + result);
        v31 = vmovl_s16(*&vmovl_s8(*a10.i8)).u64[0];
        *v31.i32 = v21 * v31.i32[0];
        *v29.i32 = rintf((*v31.i32 + (v29.i32[0] * *v15.i32)) + *v16.i32);
        v32 = *v29.i32;
        v29.i8[0] = *(v19 + result + 1);
        v25.i64[0] = vmovl_s16(*&vmovl_s8(v29)).u64[0];
        *v25.i32 = v25.i32[0];
        v31.i8[0] = *(v18 + result + 1);
        a10.i64[0] = vmovl_s16(*&vmovl_s8(v31)).u64[0];
        *a10.i32 = v21 * a10.i32[0];
        if (v32 <= -128)
        {
          LODWORD(v32) = -128;
        }

        *v25.i32 = rintf((*a10.i32 + (*v25.i32 * *v15.i32)) + *v16.i32);
        v33 = *v25.i32;
        if (v32 >= 127)
        {
          LOBYTE(v32) = 127;
        }

        if (v33 <= -128)
        {
          LODWORD(v33) = -128;
        }

        v34 = (v17 + result);
        if (v33 >= 127)
        {
          LOBYTE(v33) = 127;
        }

        *v34 = v32;
        v34[1] = v33;
        v25.i8[0] = *(v28 + 2);
        v25.i64[0] = vmovl_s16(*&vmovl_s8(*v25.i8)).u64[0];
        a10.i8[0] = *(v30 + 2);
        a10.i64[0] = vmovl_s16(*&vmovl_s8(*a10.i8)).u64[0];
        *a10.i32 = v21 * a10.i32[0];
        *v25.i32 = rintf((*a10.i32 + (v25.i32[0] * *v15.i32)) + *v16.i32);
        v35 = *v25.i32;
        if (*v25.i32 <= -128)
        {
          LODWORD(v35) = -128;
        }

        v25.i8[0] = *(v28 + 3);
        v25 = vmovl_s16(*&vmovl_s8(*v25.i8));
        a10.i8[0] = *(v30 + 3);
        a10 = vmovl_s16(*&vmovl_s8(*a10.i8));
        *a10.i32 = v21 * a10.i32[0];
        *v25.i32 = *a10.i32 + (v25.i32[0] * *v15.i32);
        if (v35 >= 127)
        {
          v36 = 127;
        }

        else
        {
          v36 = v35;
        }

        *v25.i32 = rintf(*v25.i32 + *v16.i32);
        v37 = *v25.i32;
        if (*v25.i32 <= -128)
        {
          LODWORD(v37) = -128;
        }

        if (v37 >= 127)
        {
          LOBYTE(v37) = 127;
        }

        v34[2] = v36;
        v34[3] = v37;
        result += 4;
      }

      while (result <= v22);
LABEL_25:
      LODWORD(a7) = v102;
      v38.i64[0] = 0x7F0000007FLL;
      v38.i64[1] = 0x7F0000007FLL;
      v39.i64[0] = 0x7F0000007FLL;
      v39.i64[1] = 0x7F0000007FLL;
      if (result < v102)
      {
        v40 = v101 - result;
        if (v40 < 4)
        {
          v41 = result;
          goto LABEL_28;
        }

        if ((v100 + v99 * v20) < 0x10)
        {
          v41 = result;
          goto LABEL_28;
        }

        if ((v95 + v94 * v20) < 0x10)
        {
          v41 = result;
          goto LABEL_28;
        }

        if (v40 >= 0x10)
        {
          v77 = v40 & 0xFFFFFFFFFFFFFFF0;
          v78 = result;
          v79 = v40 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v80 = *(v19 + v78);
            v81 = vqtbl1q_s8(v80, xmmword_1003E3770);
            v82 = vqtbl1q_s8(v80, xmmword_1003E3740);
            v83 = *(v18 + v78);
            v84 = vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v83, v24[118]), 0x18uLL), v21), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, v24[118]), 0x18uLL));
            v85 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v83, xmmword_1003E3750), 0x18uLL), v21), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3750), 0x18uLL)), v103);
            v86 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v83, xmmword_1003E3740), 0x18uLL), v21), v104, vcvtq_n_f32_s32(v82, 0x18uLL)), v103);
            v87 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v83, xmmword_1003E3770), 0x18uLL), v21), v104, vcvtq_n_f32_s32(v81, 0x18uLL)), v103);
            v88 = vaddq_f32(v84, v103);
            a10 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88, v88, 8uLL))))), v38);
            a12 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87, v87, 8uLL))))), v38);
            a11 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v86.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v86, v86, 8uLL))))), v38);
            v89 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85, v85, 8uLL))))), v38), v39);
            v90 = vminq_s32(a11, v39);
            a14 = vminq_s32(a12, v39);
            a13 = vminq_s32(a10, v39);
            v25 = vqtbl4q_s8(*a13.i8, xmmword_1003E36F0);
            *(v17 + v78) = v25;
            v78 += 16;
            v79 -= 16;
          }

          while (v79);
          if (v40 == v77)
          {
            goto LABEL_3;
          }

          if ((v40 & 0xC) == 0)
          {
            v41 = v77 + result;
            do
            {
LABEL_28:
              v25.i8[0] = *(v19 + v41);
              v25.i64[0] = vmovl_s16(*&vmovl_s8(*v25.i8)).u64[0];
              a10.i8[0] = *(v18 + v41);
              a10 = vmovl_s16(*&vmovl_s8(*a10.i8));
              *a10.i32 = v21 * a10.i32[0];
              *v25.i32 = rintf((*a10.i32 + (v25.i32[0] * *v15.i32)) + *v16.i32);
              v42 = *v25.i32;
              if (*v25.i32 <= -128)
              {
                LODWORD(v42) = -128;
              }

              if (v42 >= 127)
              {
                LOBYTE(v42) = 127;
              }

              *(v17 + v41++) = v42;
            }

            while (v101 != v41);
            goto LABEL_3;
          }
        }

        else
        {
          v77 = 0;
        }

        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v91 = v77 - (v40 & 0xFFFFFFFFFFFFFFFCLL);
        v92 = v77 + result;
        do
        {
          v25.i32[0] = *(v19 + v92);
          a11.i32[0] = *(v18 + v92);
          v93 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(a11, v24[118]), 0x18uLL), v21), v104, vcvtq_n_f32_s32(vqtbl1q_s8(v25, v24[118]), 0x18uLL)), v103);
          a10 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.i8)));
          v25 = vminq_s32(vmaxq_s32(vuzp1q_s32(a10, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93, v93, 8uLL))))), v38), v39);
          *v25.i8 = vmovn_s32(v25);
          *v25.i8 = vuzp1_s8(*v25.i8, *v25.i8);
          *(v17 + v92) = v25.i32[0];
          v92 += 4;
          v91 += 4;
        }

        while (v91);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_28;
        }
      }

LABEL_3:
      v19 += a2;
      v18 += a4;
      v17 += a6;
      ++v20;
      a8 = v110 - 1;
    }

    while (v110 != 1);
  }

  return result;
}

uint64_t sub_1001F613C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  if (a8)
  {
    v11 = 0;
    v12.i64[0] = *(a9 + 8);
    *v9.i32 = *a9;
    v13 = *v12.i64;
    v14.i64[0] = *(a9 + 16);
    *v10.i32 = *v14.i64;
    v15 = a6 >> 1;
    v16 = vdupq_lane_s32(v10, 0);
    v17 = a7 - 8;
    v18 = a7 - 4;
    v19 = a7;
    v113 = a5 - result;
    v20 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v111 = v20 - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v112 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v106 = a5 - a3;
    v110 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v105 = v20 - (a4 & 0xFFFFFFFFFFFFFFFELL);
    v109 = a5 + 8;
    v108 = result + 8;
    v107 = a3 + 8;
    v21 = vdupq_lane_s32(v9, 0);
    v22 = 2 * v15;
    v23 = 2 * (a4 >> 1);
    v24 = 2 * (a2 >> 1);
    v25 = a5 + 4;
    v26 = 0uLL;
    v27.i64[0] = 0xFFFF0000FFFFLL;
    v27.i64[1] = 0xFFFF0000FFFFLL;
    while (a7 < 8)
    {
      v28 = 0;
LABEL_6:
      if (v28 <= v18)
      {
        v29 = v22;
        v30 = v28;
        v31 = v18 - v28;
        if (v31 <= 0x1B)
        {
          goto LABEL_8;
        }

        v53 = v31 >> 2;
        v54 = 2 * v28;
        v55 = v54 + 8 * v53;
        v56 = v109 + v20 * v11 + v55;
        v57 = a5 + v54 >= v107 + v110 * v11 + v55 || a3 + 2 * v28 >= v56;
        v58 = !v57;
        if (result + 2 * v28 < v56 && a5 + v54 < v108 + v112 * v11 + v55)
        {
          goto LABEL_8;
        }

        if (v58)
        {
          goto LABEL_8;
        }

        v60 = v53 + 1;
        v30 = v28 + 4 * (v60 & 0x7FFFFFFFFFFFFFF8);
        v61 = v60 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v62 = (a3 + v54);
          v114 = vld4q_s16(v62);
          v63 = (result + v54);
          v115 = vld4q_s16(v63);
          v64 = vcvtq_f32_u32(vmovl_u16(*v114.val[0].i8));
          v65 = vcvtq_f32_u32(vmovl_u16(*v114.val[1].i8));
          v66 = vcvtq_f32_u32(vmovl_high_u16(v114.val[1]));
          v67 = vcvtq_f32_u32(vmovl_u16(*v114.val[2].i8));
          v68 = vcvtq_f32_u32(vmovl_high_u16(v114.val[2]));
          v69 = vcvtq_f32_u32(vmovl_u16(*v114.val[3].i8));
          v70 = vcvtq_f32_u32(vmovl_high_u16(v114.val[3]));
          v71 = (a5 + v54);
          v114.val[0] = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v114.val[0])), v13), v21, vcvtq_f32_u32(vmovl_high_u16(v115.val[0]))), v16);
          v114.val[1] = vaddq_f32(vmlaq_f32(vmulq_n_f32(v64, v13), v21, vcvtq_f32_u32(vmovl_u16(*v115.val[0].i8))), v16);
          v114.val[2] = vaddq_f32(vmlaq_f32(vmulq_n_f32(v66, v13), v21, vcvtq_f32_u32(vmovl_high_u16(v115.val[1]))), v16);
          v114.val[3] = vaddq_f32(vmlaq_f32(vmulq_n_f32(v65, v13), v21, vcvtq_f32_u32(vmovl_u16(*v115.val[1].i8))), v16);
          v72 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v68, v13), v21, vcvtq_f32_u32(vmovl_high_u16(v115.val[2]))), v16);
          v73 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v67, v13), v21, vcvtq_f32_u32(vmovl_u16(*v115.val[2].i8))), v16);
          v74 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v70, v13), v21, vcvtq_f32_u32(vmovl_high_u16(v115.val[3]))), v16);
          v75 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v69, v13), v21, vcvtq_f32_u32(vmovl_u16(*v115.val[3].i8))), v16);
          v76 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v114.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v114.val[1], v114.val[1], 8uLL))))), v26);
          v114.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v114.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v114.val[3], v114.val[3], 8uLL))))), v26), v27), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v114.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v114.val[2], v114.val[2], 8uLL))))), v26), v27));
          v114.val[0] = vuzp1q_s16(vminq_s32(v76, v27), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v114.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v114.val[0], v114.val[0], 8uLL))))), v26), v27));
          v12 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), v26), v27);
          v14 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))), v26), v27);
          v114.val[3] = vuzp1q_s16(v14, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), v26), v27));
          v114.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), v26), v27), v12);
          vst4q_s16(v71, v114);
          v54 += 64;
          v61 -= 8;
        }

        while (v61);
        LODWORD(v36) = v28 + 4 * (v60 & 0xFFFFFFF8);
        if (v60 != (v60 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_8:
          v32 = 2 * v30;
          v33 = v25;
          v34 = a3;
          v35 = result;
          v36 = v30;
          do
          {
            v14.i16[0] = *(v35 + 2 * v30);
            v12.i16[0] = *(v34 + 2 * v30);
            *v12.i32 = v13 * v12.u32[0];
            *v14.i32 = rintf((*v12.i32 + (v14.u32[0] * *v9.i32)) + *v10.i32);
            v37 = *v14.i32 & ~(*v14.i32 >> 31);
            if (v37 >= 0xFFFF)
            {
              LOWORD(v37) = -1;
            }

            v38 = v35 + v32;
            v14.i16[0] = *(v35 + v32 + 2);
            v39 = v34 + v32;
            v12.i16[0] = *(v34 + v32 + 2);
            *v12.i32 = v13 * v12.u32[0];
            *v14.i32 = rintf((*v12.i32 + (v14.u32[0] * *v9.i32)) + *v10.i32);
            v40 = *v14.i32 & ~(*v14.i32 >> 31);
            if (v40 >= 0xFFFF)
            {
              LOWORD(v40) = -1;
            }

            v41 = v33 + v32;
            *(v41 - 4) = v37;
            *(v41 - 2) = v40;
            v14.i16[0] = *(v38 + 4);
            v12.i16[0] = *(v39 + 4);
            *&v42 = v13 * v12.u32[0];
            *&v43 = rintf((*&v42 + (v14.u32[0] * *v9.i32)) + *v10.i32);
            v44 = *&v43 & ~(*&v43 >> 31);
            LOWORD(v43) = *(v38 + 6);
            LOWORD(v42) = *(v39 + 6);
            *v12.i32 = v13 * v42;
            *v14.i32 = rintf((*v12.i32 + (v43 * *v9.i32)) + *v10.i32);
            if (v44 >= 0xFFFF)
            {
              LOWORD(v44) = -1;
            }

            v45 = *v14.i32 & ~(*v14.i32 >> 31);
            if (v45 >= 0xFFFF)
            {
              LOWORD(v45) = -1;
            }

            *(v33 + 2 * v30) = v44;
            v36 += 4;
            *(v41 + 2) = v45;
            v35 += 8;
            v34 += 8;
            v33 += 8;
          }

          while (v36 <= v18);
        }

        v28 = v36;
        v22 = v29;
      }

      if (v28 < a7)
      {
        v46 = v28;
        v47 = v19 - v28;
        if (v47 <= 7)
        {
          goto LABEL_56;
        }

        if (v113 + v111 * v11 < 0x10)
        {
          goto LABEL_56;
        }

        if (v106 + v105 * v11 < 0x10)
        {
          goto LABEL_56;
        }

        v77 = 2 * v28;
        v78 = v47 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v79 = *(result + v77);
          v80 = *(a3 + v77);
          v81 = vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v80.i8)), v13), v21, vcvtq_f32_u32(vmovl_u16(*v79.i8)));
          v82 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v80)), v13), v21, vcvtq_f32_u32(vmovl_high_u16(v79))), v16);
          v83 = vaddq_f32(v81, v16);
          v12 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83, v83, 8uLL))))), v26), v27);
          v14 = vuzp1q_s16(v12, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))))), v26), v27));
          *(a5 + v77) = v14;
          v77 += 16;
          v78 -= 8;
        }

        while (v78);
        v46 = (v47 & 0xFFFFFFFFFFFFFFF8) + v28;
        if (v47 != (v47 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_56:
          do
          {
            v14.i16[0] = *(result + 2 * v46);
            v12.i16[0] = *(a3 + 2 * v46);
            *v12.i32 = v13 * v12.u32[0];
            *v14.i32 = rintf((*v12.i32 + (v14.u32[0] * *v9.i32)) + *v10.i32);
            v48 = *v14.i32 & ~(*v14.i32 >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            *(a5 + 2 * v46++) = v48;
          }

          while (v19 != v46);
        }
      }

      result += v24;
      a3 += v23;
      a5 += v22;
      ++v11;
      v25 += v22;
      if (!--a8)
      {
        return result;
      }
    }

    v49 = 0;
    v28 = 0;
    while (1)
    {
      v50 = *(result + v49);
      v51 = *(a3 + v49);
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
        v52 = xmmword_1004B0050;
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v103 = a8;
        v99 = a5;
        v101 = a3;
        v95 = a7;
        v97 = result;
        v93 = v20;
        v91 = v22;
        v89 = v24;
        v85 = v50;
        v87 = v51;
        sub_1003C836C();
        v50 = v85;
        v51 = v87;
        v27.i64[0] = 0xFFFF0000FFFFLL;
        v27.i64[1] = 0xFFFF0000FFFFLL;
        v26 = 0uLL;
        v24 = v89;
        v22 = v91;
        v20 = v93;
        a7 = v95;
        result = v97;
        a5 = v99;
        a3 = v101;
        a8 = v103;
        v52 = xmmword_1004B0050;
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_31:
          v104 = a8;
          v100 = a5;
          v102 = a3;
          v96 = a7;
          v98 = result;
          v94 = v20;
          v92 = v22;
          v90 = v24;
          v86 = v50;
          v88 = v51;
          v84 = v52;
          sub_1003C836C();
          v52 = v84;
          v50 = v86;
          v51 = v88;
          v27.i64[0] = 0xFFFF0000FFFFLL;
          v27.i64[1] = 0xFFFF0000FFFFLL;
          v26 = 0uLL;
          v24 = v90;
          v22 = v92;
          v20 = v94;
          a7 = v96;
          result = v98;
          a5 = v100;
          a3 = v102;
          a8 = v104;
        }
      }

      v12 = vcvtq_u32_f32(vaddq_f32(vaddq_f32(v16, vaddq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v50)), *v9.i32), vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v51)), v13))), xmmword_1004B0050));
      v14 = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vaddq_f32(v16, vaddq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v50.i8)), *v9.i32), vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v51.i8)), v13))), v52))), v12);
      *(a5 + v49) = v14;
      v28 += 8;
      v49 += 16;
      if (v17 < v28)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}