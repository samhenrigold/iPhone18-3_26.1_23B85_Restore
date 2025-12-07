uint64_t sub_100364C50(void *a1)
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

void sub_100364CD8()
{
  nullsub_1();

  operator delete();
}

int32x4_t sub_100364D10(uint64_t a1, int16x8_t *a2, int32x4_t *a3, int a4, unsigned int a5, int32x4_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v13 = a5 * a4;
    if (v13 < 1)
    {
      return result;
    }

    v14 = (2 * a5);
    if (v13 < 4)
    {
      v15 = 0;
      goto LABEL_54;
    }

    if (v13 >= 0x10)
    {
      v15 = v13 & 0x7FFFFFF0;
      v68 = a2 + 1;
      v69 = a3 + 2;
      v70 = v15;
      do
      {
        v71 = v68[-1];
        v72 = *(v68 + 2 * a5 - 16);
        v73 = *(v68 + 2 * a5);
        v74 = vaddl_high_s16(v72, v71);
        v75 = vaddl_s16(*v72.i8, *v71.i8);
        v76 = vaddl_high_s16(v73, *v68);
        v77 = vaddl_s16(*v73.i8, *v68->i8);
        v78 = *(v68 + 2 * v14 - 16);
        v79 = *(v68 + 2 * v14);
        result = vaddw_s16(v75, *v78.i8);
        v69[-2] = result;
        v69[-1] = vaddw_high_s16(v74, v78);
        *v69 = vaddw_s16(v77, *v79.i8);
        v69[1] = vaddw_high_s16(v76, v79);
        v69 += 4;
        v68 += 2;
        v70 -= 16;
      }

      while (v70);
      if (v15 == v13)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_54:
        v84 = &a2->i16[v15];
        v85 = v13 - v15;
        v86 = &a3->i32[v15];
        do
        {
          *v86++ = v84[a5] + *v84 + v84[v14];
          ++v84;
          --v85;
        }

        while (v85);
        return result;
      }
    }

    else
    {
      v15 = 0;
    }

    v80 = v15;
    v15 = v13 & 0x7FFFFFFC;
    v81 = (a2 + 2 * v80);
    v82 = (a3 + 4 * v80);
    v83 = v80 - v15;
    do
    {
      result = vaddw_s16(vaddl_s16(*(v81 + 2 * a5), *v81), *(v81 + 2 * v14));
      *v82++ = result;
      ++v81;
      v83 += 4;
    }

    while (v83);
    if (v15 == v13)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (v6 != 5)
  {
    v16 = v6 * a5;
    v17 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v16 < 1)
          {
            result = 0uLL;
            goto LABEL_106;
          }

          if (v16 < 0xD)
          {
            v18 = 0;
            result = 0uLL;
            goto LABEL_104;
          }

          v89 = ((v16 - 1) >> 2) + 1;
          if (v16 >= 0x3D)
          {
            v129 = 0uLL;
            v94 = v89 & 0x7FFFFFFFFFFFFFF0;
            v130 = 0uLL;
            v131 = a2 + 4;
            v132 = 0uLL;
            v133 = v89 & 0x7FFFFFFFFFFFFFF0;
            v134 = 0uLL;
            v135 = 0uLL;
            v136 = 0uLL;
            v137 = 0uLL;
            v138 = 0uLL;
            v139 = 0uLL;
            v140 = 0uLL;
            v141 = 0uLL;
            v142 = 0uLL;
            v143 = 0uLL;
            v144 = 0uLL;
            v145 = 0uLL;
            v146 = 0uLL;
            do
            {
              i16 = v131[-4].i16;
              v174 = vld4q_s16(i16);
              v175 = vld4q_s16(v131->i16);
              v144 = vaddw_high_s16(v144, v174.val[0]);
              v143 = vaddw_s16(v143, *v174.val[0].i8);
              v146 = vaddw_high_s16(v146, v175.val[0]);
              v145 = vaddw_s16(v145, *v175.val[0].i8);
              v140 = vaddw_high_s16(v140, v174.val[1]);
              v139 = vaddw_s16(v139, *v174.val[1].i8);
              v142 = vaddw_high_s16(v142, v175.val[1]);
              v141 = vaddw_s16(v141, *v175.val[1].i8);
              v136 = vaddw_high_s16(v136, v174.val[2]);
              v135 = vaddw_s16(v135, *v174.val[2].i8);
              v138 = vaddw_high_s16(v138, v175.val[2]);
              v137 = vaddw_s16(v137, *v175.val[2].i8);
              v130 = vaddw_high_s16(v130, v174.val[3]);
              v129 = vaddw_s16(v129, *v174.val[3].i8);
              v134 = vaddw_high_s16(v134, v175.val[3]);
              v132 = vaddw_s16(v132, *v175.val[3].i8);
              v131 += 8;
              v133 -= 16;
            }

            while (v133);
            v148 = vaddvq_s32(vaddq_s32(vaddq_s32(v132, v129), vaddq_s32(v134, v130)));
            v149 = vaddvq_s32(vaddq_s32(vaddq_s32(v141, v139), vaddq_s32(v142, v140)));
            v150 = vaddvq_s32(vaddq_s32(vaddq_s32(v145, v143), vaddq_s32(v146, v144)));
            result.i64[0] = __PAIR64__(v149, v150);
            v151 = vaddvq_s32(vaddq_s32(vaddq_s32(v137, v135), vaddq_s32(v138, v136)));
            result.i32[2] = v151;
            result.i32[3] = v148;
            if (v89 == v94)
            {
              goto LABEL_106;
            }

            if ((v89 & 0xC) == 0)
            {
              v18 = 4 * v94;
LABEL_104:
              v163 = (a2 + 2 * v18);
              do
              {
                v164 = *v163++;
                result = vaddw_s16(result, v164);
                v18 += 4;
              }

              while (v18 < v16);
              goto LABEL_106;
            }

            v90 = v148;
            v91 = v151;
            v92 = v149;
            v93 = v150;
          }

          else
          {
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = 0;
          }

          v18 = 4 * (v89 & 0x7FFFFFFFFFFFFFFCLL);
          v152 = v90;
          v153 = v91;
          v154 = v92;
          v155 = v93;
          v156 = &a2->i16[4 * v94];
          v157 = v94 - (v89 & 0x7FFFFFFFFFFFFFFCLL);
          do
          {
            v173 = vld4_s16(v156);
            v156 += 16;
            v155 = vaddw_s16(v155, v173.val[0]);
            v154 = vaddw_s16(v154, v173.val[1]);
            v153 = vaddw_s16(v153, v173.val[2]);
            v152 = vaddw_s16(v152, v173.val[3]);
            v157 += 4;
          }

          while (v157);
          result.i64[0] = __PAIR64__(vaddvq_s32(v154), vaddvq_s32(v155));
          result.i32[2] = vaddvq_s32(v153);
          result.i32[3] = vaddvq_s32(v152);
          if (v89 != (v89 & 0x7FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_104;
          }

LABEL_106:
          *a3 = result;
          if (v17 >= 1)
          {
            v165 = 0;
            v166 = 2 * v16;
            v167 = a3 + 1;
            do
            {
              v165 += 4;
              v168 = *&a2->i8[v166];
              v169 = *a2->i8;
              a2 = (a2 + 8);
              result = vaddq_s32(vsubl_s16(v168, v169), result);
              *v167++ = result;
            }

            while (v165 < v17);
          }

          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v26 = 0;
        v27 = &a3->i8[4 * a5];
        while (v16 < 1)
        {
          v29 = 0;
          a3->i32[0] = 0;
          if (v17 >= 1)
          {
            goto LABEL_34;
          }

LABEL_27:
          ++v26;
          a2 = (a2 + 2);
          a3 = (a3 + 4);
          v27 += 4;
          if (v26 == a5)
          {
            return result;
          }
        }

        v28 = 0;
        v29 = 0;
        v30 = a2;
        do
        {
          v29 += v30->i16[0];
          v30 = (v30 + 2 * a5);
          v28 += a5;
        }

        while (v16 > v28);
        a3->i32[0] = v29;
        if (v17 < 1)
        {
          goto LABEL_27;
        }

LABEL_34:
        v31 = 0;
        do
        {
          v29 = v29 - a2->i16[v31] + a2->i16[v16 + v31];
          *&v27[4 * v31] = v29;
          v31 += a5;
        }

        while (v31 < v17);
        goto LABEL_27;
      }

      if (v16 < 1)
      {
        v23 = 0;
        v22 = 0;
        v21 = 0;
        goto LABEL_99;
      }

      if (v16 < 0xA)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_97;
      }

      v87 = (v16 - 1) / 3u + 1;
      if (v16 >= 0x2E)
      {
        v95 = 0uLL;
        v88 = v87 & 0x7FFFFFF0;
        v96 = 0uLL;
        v97 = v88;
        v98 = 0uLL;
        v99 = a2;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v103 = 0uLL;
        v104 = 0uLL;
        v105 = 0uLL;
        v106 = 0uLL;
        v107 = 0uLL;
        v108 = 0uLL;
        do
        {
          v109 = v99;
          v99 += 6;
          v171 = vld3q_s16(v109);
          v109 += 24;
          v106 = vaddw_high_s16(v106, v171.val[0]);
          v172 = vld3q_s16(v109);
          v105 = vaddw_s16(v105, *v171.val[0].i8);
          v108 = vaddw_high_s16(v108, v172.val[0]);
          v107 = vaddw_s16(v107, *v172.val[0].i8);
          v102 = vaddw_high_s16(v102, v171.val[1]);
          v101 = vaddw_s16(v101, *v171.val[1].i8);
          v104 = vaddw_high_s16(v104, v172.val[1]);
          v103 = vaddw_s16(v103, *v172.val[1].i8);
          v96 = vaddw_high_s16(v96, v171.val[2]);
          v95 = vaddw_s16(v95, *v171.val[2].i8);
          v100 = vaddw_high_s16(v100, v172.val[2]);
          v98 = vaddw_s16(v98, *v172.val[2].i8);
          v97 -= 16;
        }

        while (v97);
        v21 = vaddvq_s32(vaddq_s32(vaddq_s32(v98, v95), vaddq_s32(v100, v96)));
        v22 = vaddvq_s32(vaddq_s32(vaddq_s32(v103, v101), vaddq_s32(v104, v102)));
        result = vaddq_s32(vaddq_s32(v107, v105), vaddq_s32(v108, v106));
        result.i32[0] = vaddvq_s32(result);
        v23 = result.i32[0];
        if (v88 == v87)
        {
          goto LABEL_99;
        }

        if (((((v16 - 1) / 3u) + 1) & 0xC) == 0)
        {
          v20 = 3 * v88;
LABEL_97:
          v158 = &a2->i16[v20 + 2];
          do
          {
            v23 += *(v158 - 2);
            v22 += *(v158 - 1);
            v21 += *v158;
            v20 += 3;
            v158 += 3;
          }

          while (v20 < v16);
          goto LABEL_99;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v88 = 0;
      }

      v20 = 3 * (v87 & 0x7FFFFFFC);
      v110 = v21;
      v111 = v22;
      result = v23;
      v112 = &a2->i16[3 * v88];
      v113 = v88 - (v87 & 0x7FFFFFFC);
      do
      {
        v170 = vld3_s16(v112);
        v112 += 12;
        result = vaddw_s16(result, v170.val[0]);
        v111 = vaddw_s16(v111, v170.val[1]);
        v110 = vaddw_s16(v110, v170.val[2]);
        v113 += 4;
      }

      while (v113);
      v21 = vaddvq_s32(v110);
      v22 = vaddvq_s32(v111);
      result.i32[0] = vaddvq_s32(result);
      v23 = result.i32[0];
      if ((v87 & 0x7FFFFFFC) != v87)
      {
        goto LABEL_97;
      }

LABEL_99:
      a3->i32[0] = v23;
      a3->i32[1] = v22;
      a3->i32[2] = v21;
      if (v17 >= 1)
      {
        v159 = 0;
        v160 = &a3[1].u32[1];
        v161 = &a2->i16[1];
        v162 = &a2->i16[v16 + 1];
        do
        {
          v23 = v23 - *(v161 - 1) + *(v162 - 1);
          v22 = v22 - *v161 + *v162;
          v21 = v21 - v161[1] + v162[1];
          v159 += 3;
          *(v160 - 2) = v23;
          *(v160 - 1) = v22;
          *v160 = v21;
          v160 += 3;
          v162 += 3;
          v161 += 3;
        }

        while (v159 < v17);
      }

      return result;
    }

    if (v16 < 1)
    {
      v25 = 0;
      goto LABEL_83;
    }

    if (v16 < 4)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_81;
    }

    if (v16 >= 0x10)
    {
      v24 = v16 & 0x7FFFFFF0;
      v114 = a2 + 1;
      v115 = 0uLL;
      v116 = v24;
      v117 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      do
      {
        v120 = v114[-1];
        v117 = vaddw_high_s16(v117, v120);
        v115 = vaddw_s16(v115, *v120.i8);
        v119 = vaddw_high_s16(v119, *v114);
        v118 = vaddw_s16(v118, *v114->i8);
        v114 += 2;
        v116 -= 16;
      }

      while (v116);
      result = vaddq_s32(vaddq_s32(v118, v115), vaddq_s32(v119, v117));
      result.i32[0] = vaddvq_s32(result);
      v25 = result.i32[0];
      if (v24 == v16)
      {
        goto LABEL_83;
      }

      if ((v16 & 0xC) == 0)
      {
LABEL_81:
        v125 = &a2->i16[v24];
        v126 = v16 - v24;
        do
        {
          v127 = *v125++;
          v25 += v127;
          --v126;
        }

        while (v126);
        goto LABEL_83;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v121 = v24;
    v24 = v16 & 0x7FFFFFFC;
    result = v25;
    v122 = (a2 + 2 * v121);
    v123 = v121 - v24;
    do
    {
      v124 = *v122++;
      result = vaddw_s16(result, v124);
      v123 += 4;
    }

    while (v123);
    result.i32[0] = vaddvq_s32(result);
    v25 = result.i32[0];
    if (v24 != v16)
    {
      goto LABEL_81;
    }

LABEL_83:
    a3->i32[0] = v25;
    if (v17 >= 1)
    {
      v128 = &a3->u32[1];
      do
      {
        v25 = v25 - a2->i16[0] + a2->i16[v16];
        *v128++ = v25;
        a2 = (a2 + 2);
        --v17;
      }

      while (v17);
    }

    return result;
  }

  v7 = a5 * a4;
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = (2 * a5);
  v10 = (3 * a5);
  v11 = (4 * a5);
  if (v7 < 4)
  {
    v12 = 0;
    goto LABEL_44;
  }

  v19 = 2 * a5;
  if (v7 >= 0x10)
  {
    v12 = v7 & 0x7FFFFFF0;
    v32 = a2 + 1;
    v33 = a3 + 2;
    v34 = v12;
    do
    {
      v35 = v32[-1];
      v36 = *(&v32[-1] + v19);
      v37 = *(v32 + 2 * v8);
      v38 = vaddl_high_s16(v36, v35);
      v39 = vaddl_s16(*v36.i8, *v35.i8);
      v40 = vaddl_high_s16(v37, *v32);
      v41 = vaddl_s16(*v37.i8, *v32->i8);
      v42 = *(v32 + 2 * v9 - 16);
      v43 = *(v32 + 2 * v9);
      v44 = vaddw_s16(v39, *v42.i8);
      v45 = vaddw_high_s16(v38, v42);
      v46 = vaddw_s16(v41, *v43.i8);
      v47 = vaddw_high_s16(v40, v43);
      v48 = *(v32 + 2 * v10 - 16);
      v49 = *(v32 + 2 * v10);
      v50 = vaddw_high_s16(v45, v48);
      v51 = vaddw_s16(v44, *v48.i8);
      v52 = vaddw_high_s16(v47, v49);
      v53 = vaddw_s16(v46, *v49.i8);
      v54 = *(v32 + 2 * v11 - 16);
      v55 = *(v32 + 2 * v11);
      result = vaddw_s16(v51, *v54.i8);
      v33[-2] = result;
      v33[-1] = vaddw_high_s16(v50, v54);
      *v33 = vaddw_s16(v53, *v55.i8);
      v33[1] = vaddw_high_s16(v52, v55);
      v33 += 4;
      v32 += 2;
      v34 -= 16;
    }

    while (v34);
    if (v12 == v7)
    {
      return result;
    }

    if ((v7 & 0xC) == 0)
    {
LABEL_44:
      v60 = 0;
      v61 = &a2->i8[2 * v12 + 2 * v11];
      v62 = &a2->i8[2 * v12 + 2 * v10];
      v63 = &a2->i8[2 * v12 + 2 * v9];
      v64 = &a2->i8[2 * v12 + 2 * v8];
      v65 = &a2->i8[2 * v12];
      v66 = v7 - v12;
      v67 = &a3->i8[4 * v12];
      do
      {
        *&v67[4 * v60] = *&v64[2 * v60] + *&v65[2 * v60] + *&v63[2 * v60] + *&v62[2 * v60] + *&v61[2 * v60];
        ++v60;
      }

      while (v66 != v60);
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  v56 = v12;
  v12 = v7 & 0x7FFFFFFC;
  v57 = (a2 + 2 * v56);
  v58 = (a3 + 4 * v56);
  v59 = v56 - v12;
  do
  {
    result = vaddw_s16(vaddw_s16(vaddw_s16(vaddl_s16(*(v57 + 2 * v8), *v57), *(v57 + 2 * v9)), *(v57 + 2 * v10)), *(v57 + 2 * v11));
    *v58++ = result;
    ++v57;
    v59 += 4;
  }

  while (v59);
  if (v12 != v7)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_10036566C(void *a1)
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

void sub_1003656F4()
{
  nullsub_1();

  operator delete();
}

int32x4_t sub_10036572C(uint64_t a1, int32x4_t *a2, int32x4_t *a3, int a4, unsigned int a5, int32x4_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v17 = a5 * a4;
    if (v17 < 1)
    {
      return result;
    }

    v18 = (2 * a5);
    if (v17 >= 0xC)
    {
      v19 = 0;
      v32 = a3 - a2;
      if ((a3 - a2 - 4 * v18) >= 0x20 && v32 - 4 * a5 >= 0x20 && v32 >= 0x20)
      {
        v19 = v17 & 0x7FFFFFF8;
        v33 = a2 + 1;
        v34 = a3 + 1;
        v35 = v19;
        do
        {
          result = vaddq_s32(vaddq_s32(*(v33 + 4 * a5 - 16), v33[-1]), *(v33 + 4 * v18 - 16));
          v36 = vaddq_s32(vaddq_s32(*(v33 + 4 * a5), *v33), *(v33 + 4 * v18));
          v34[-1] = result;
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 8;
        }

        while (v35);
        if (v19 == v17)
        {
          return result;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = &a2->i32[v19];
    v21 = &a3->i32[v19];
    v22 = v17 - v19;
    do
    {
      *v21++ = v20[a5] + *v20 + v20[v18];
      ++v20;
      --v22;
    }

    while (v22);
    return result;
  }

  if (v6 != 5)
  {
    v23 = v6 * a5;
    v24 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v23 < 1)
          {
            result = 0uLL;
            goto LABEL_81;
          }

          if (v23 > 0x1C)
          {
            v73 = 0uLL;
            v74 = 0uLL;
            v75 = ((v23 - 1) >> 2) + 1;
            v25 = 4 * (v75 & 0x7FFFFFFFFFFFFFF8);
            i32 = a2[4].i32;
            v77 = v75 & 0x7FFFFFFFFFFFFFF8;
            v78 = 0uLL;
            v79 = 0uLL;
            v80 = 0uLL;
            v81 = 0uLL;
            v82 = 0uLL;
            v83 = 0uLL;
            do
            {
              v84 = i32 - 16;
              v95 = vld4q_f32(v84);
              v96 = vld4q_f32(i32);
              v82 = vaddq_s32(v95.val[0], v82);
              v83 = vaddq_s32(v96.val[0], v83);
              v80 = vaddq_s32(v95.val[1], v80);
              v81 = vaddq_s32(v96.val[1], v81);
              v78 = vaddq_s32(v95.val[2], v78);
              v79 = vaddq_s32(v96.val[2], v79);
              v73 = vaddq_s32(v95.val[3], v73);
              v74 = vaddq_s32(v96.val[3], v74);
              i32 += 32;
              v77 -= 8;
            }

            while (v77);
            v85 = vaddvq_s32(vaddq_s32(v74, v73));
            result.i64[0] = __PAIR64__(vaddvq_s32(vaddq_s32(v81, v80)), vaddvq_s32(vaddq_s32(v83, v82)));
            result.i32[2] = vaddvq_s32(vaddq_s32(v79, v78));
            result.i32[3] = v85;
            if (v75 == (v75 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_81:
              *a3 = result;
              if (v24 >= 1)
              {
                v88 = 0;
                v89 = 4 * v23;
                v90 = a3 + 1;
                do
                {
                  v88 += 4;
                  v91 = *(a2 + v89);
                  v92 = *a2++;
                  result = vaddq_s32(vsubq_s32(v91, v92), result);
                  *v90++ = result;
                }

                while (v88 < v24);
              }

              return result;
            }
          }

          else
          {
            v25 = 0;
            result = 0uLL;
          }

          v86 = &a2[v25 / 4];
          do
          {
            v87 = *v86++;
            result = vaddq_s32(v87, result);
            v25 += 4;
          }

          while (v25 < v23);
          goto LABEL_81;
        }

        if (a5 < 1)
        {
          return result;
        }

        v41 = 0;
        v42 = 4 * a5;
        v43 = &a3->i8[v42];
        while (v23 < 1)
        {
          v45 = 0;
          a3->i32[0] = 0;
          if (v24 >= 1)
          {
            goto LABEL_52;
          }

LABEL_45:
          ++v41;
          a2 = (a2 + 4);
          a3 = (a3 + 4);
          v43 += 4;
          if (v41 == a5)
          {
            return result;
          }
        }

        v44 = 0;
        v45 = 0;
        v46 = a2;
        do
        {
          v45 += v46->i32[0];
          v46 = (v46 + v42);
          v44 += a5;
        }

        while (v23 > v44);
        a3->i32[0] = v45;
        if (v24 < 1)
        {
          goto LABEL_45;
        }

LABEL_52:
        v47 = 0;
        do
        {
          v45 += a2->i32[v23 + v47] - a2->i32[v47];
          *&v43[4 * v47] = v45;
          v47 += a5;
        }

        while (v47 < v24);
        goto LABEL_45;
      }

      if (v23 < 1)
      {
        v38 = 0;
        result.i64[0] = 0;
        goto LABEL_63;
      }

      result = 0uLL;
      if (v23 > 0x15)
      {
        v48 = (v23 - 1) / 3u + 1;
        v37 = 3 * (v48 & 0x7FFFFFF8);
        v49 = v48 & 0x7FFFFFF8;
        v50 = a2;
        v51 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        do
        {
          v56 = v50;
          v50 += 6;
          v93 = vld3q_f32(v56);
          v56 += 12;
          v54 = vaddq_s32(v93.val[0], v54);
          v94 = vld3q_f32(v56);
          v55 = vaddq_s32(v94.val[0], v55);
          v52 = vaddq_s32(v93.val[1], v52);
          v53 = vaddq_s32(v94.val[1], v53);
          result = vaddq_s32(v93.val[2], result);
          v51 = vaddq_s32(v94.val[2], v51);
          v49 -= 8;
        }

        while (v49);
        result.i64[0] = __PAIR64__(vaddvq_s32(vaddq_s32(v51, result)), vaddvq_s32(vaddq_s32(v53, v52)));
        v38 = vaddvq_s32(vaddq_s32(v55, v54));
        if ((v48 & 0x7FFFFFF8) == v48)
        {
LABEL_63:
          a3->i32[0] = v38;
          *(a3->i64 + 4) = result.i64[0];
          if (v24 >= 1)
          {
            v59 = 0;
            v60 = 0;
            v61 = &a2->i8[4 * v23];
            do
            {
              v38 += *&v61[v59] - a2->i32[v59 / 4];
              v60 += 3;
              v62 = &a3->i8[v59];
              *result.i8 = vadd_s32(vsub_s32(*&v61[v59 + 4], *(a2->i64 + v59 + 4)), *result.i8);
              *(v62 + 3) = v38;
              *(v62 + 2) = result.i64[0];
              v59 += 12;
            }

            while (v60 < v24);
          }

          return result;
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      v57 = (a2->i64 + 4 * v37 + 4);
      do
      {
        v38 += *(v57 - 1);
        v58 = *v57;
        v57 = (v57 + 12);
        *result.i8 = vadd_s32(v58, *result.i8);
        v37 += 3;
      }

      while (v37 < v23);
      goto LABEL_63;
    }

    if (v23 < 1)
    {
      v40 = 0;
      goto LABEL_72;
    }

    if (v23 > 7)
    {
      v39 = v23 & 0x7FFFFFF8;
      v63 = a2 + 1;
      v64 = 0uLL;
      v65 = v39;
      v66 = 0uLL;
      do
      {
        v64 = vaddq_s32(v63[-1], v64);
        v66 = vaddq_s32(*v63, v66);
        v63 += 2;
        v65 -= 8;
      }

      while (v65);
      result = vaddq_s32(v66, v64);
      result.i32[0] = vaddvq_s32(result);
      v40 = result.i32[0];
      if (v39 == v23)
      {
LABEL_72:
        a3->i32[0] = v40;
        if (v24 >= 1)
        {
          v70 = &a3->i32[1];
          do
          {
            v71 = a2->i32[v23];
            v72 = a2->i32[0];
            a2 = (a2 + 4);
            v40 += v71 - v72;
            *v70++ = v40;
            --v24;
          }

          while (v24);
        }

        return result;
      }
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v67 = &a2->i32[v39];
    v68 = v23 - v39;
    do
    {
      v69 = *v67++;
      v40 += v69;
      --v68;
    }

    while (v68);
    goto LABEL_72;
  }

  v7 = a5 * a4;
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = (2 * a5);
  v10 = (3 * a5);
  v11 = (4 * a5);
  if (v7 <= 0xB)
  {
    v12 = 0;
LABEL_6:
    v13 = 0;
    v14 = &a2->i8[4 * v12 + 4 * v11];
    v15 = &a2->i8[4 * v12 + 4 * v9];
    v16 = v7 - v12;
    do
    {
      a3->i32[v12 + v13] = a2->i32[v12 + v8 + v13] + a2->i32[v12 + v13] + *&v15[4 * v13] + a2->i32[v12 + v10 + v13] + *&v14[4 * v13];
      ++v13;
    }

    while (v16 != v13);
    return result;
  }

  v12 = 0;
  v26 = a3 - a2;
  if ((a3 - a2 - 4 * v11) < 0x20)
  {
    goto LABEL_6;
  }

  if (v26 - 4 * v10 < 0x20)
  {
    goto LABEL_6;
  }

  if (v26 - 4 * v9 < 0x20)
  {
    goto LABEL_6;
  }

  v27 = 4 * a5;
  if (v26 - v27 < 0x20)
  {
    goto LABEL_6;
  }

  if (v26 < 0x20)
  {
    goto LABEL_6;
  }

  v12 = v7 & 0x7FFFFFF8;
  v28 = a2 + 1;
  v29 = a3 + 1;
  v30 = v12;
  do
  {
    result = vaddq_s32(vaddq_s32(vaddq_s32(*(&v28[-1] + v27), v28[-1]), vaddq_s32(*(v28 + 4 * v9 - 16), *(v28 + 4 * v10 - 16))), *(v28 + 4 * v11 - 16));
    v31 = vaddq_s32(vaddq_s32(vaddq_s32(*(v28 + 4 * v8), *v28), vaddq_s32(*(v28 + 4 * v9), *(v28 + 4 * v10))), *(v28 + 4 * v11));
    v29[-1] = result;
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 8;
  }

  while (v30);
  if (v12 != v7)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100365D88(void *a1)
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

void sub_100365E10()
{
  nullsub_1();

  operator delete();
}

float64_t sub_100365E48(uint64_t a1, int16x4_t *a2, uint64_t a3, int a4, unsigned int a5, float64x2_t a6, float64x2_t a7, float64x2_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v14 = *(a1 + 8);
  if (v14 == 3)
  {
    v21 = a5 * a4;
    if (v21 < 1)
    {
      return a6.f64[0];
    }

    v22 = (2 * a5);
    if (v21 >= 8)
    {
      v23 = v21 & 0x7FFFFFF8;
      v92 = v23;
      v93 = a3;
      v94 = a2;
      do
      {
        v95 = vmovl_s16(*v94);
        v96.i64[0] = v95.i32[0];
        v96.i64[1] = v95.i32[1];
        v97 = vcvtq_f64_s64(v96);
        v96.i64[0] = v95.i32[2];
        v96.i64[1] = v95.i32[3];
        v98 = vcvtq_f64_s64(v96);
        v99 = vmovl_high_s16(*v94->i8);
        v96.i64[0] = v99.i32[0];
        v96.i64[1] = v99.i32[1];
        v100 = vcvtq_f64_s64(v96);
        v96.i64[0] = v99.i32[2];
        v96.i64[1] = v99.i32[3];
        v101 = vcvtq_f64_s64(v96);
        v102 = *&v94->i8[2 * a5];
        v103 = vmovl_s16(*v102.i8);
        v96.i64[0] = v103.i32[0];
        v96.i64[1] = v103.i32[1];
        v104 = vcvtq_f64_s64(v96);
        v96.i64[0] = v103.i32[2];
        v96.i64[1] = v103.i32[3];
        v105 = vcvtq_f64_s64(v96);
        v106 = vmovl_high_s16(v102);
        v96.i64[0] = v106.i32[0];
        v96.i64[1] = v106.i32[1];
        v107 = vcvtq_f64_s64(v96);
        v96.i64[0] = v106.i32[2];
        v96.i64[1] = v106.i32[3];
        v108 = vaddq_f64(v101, vcvtq_f64_s64(v96));
        v109 = vaddq_f64(v100, v107);
        a7 = vaddq_f64(v98, v105);
        v110 = vaddq_f64(v97, v104);
        v111 = *&v94->i8[2 * v22];
        v112 = vmovl_high_s16(v111);
        v96.i64[0] = v112.i32[2];
        v96.i64[1] = v112.i32[3];
        v113 = vcvtq_f64_s64(v96);
        v96.i64[0] = v112.i32[0];
        v96.i64[1] = v112.i32[1];
        v114 = vcvtq_f64_s64(v96);
        v115 = vmovl_s16(*v111.i8);
        v96.i64[0] = v115.i32[2];
        v96.i64[1] = v115.i32[3];
        v116 = vcvtq_f64_s64(v96);
        v96.i64[0] = v115.i32[0];
        v96.i64[1] = v115.i32[1];
        v93[2] = vaddq_f64(v109, v114);
        v93[3] = vaddq_f64(v108, v113);
        a6 = vaddq_f64(a7, v116);
        *v93 = vaddq_f64(v110, vcvtq_f64_s64(v96));
        v93[1] = a6;
        v93 += 4;
        v94 += 2;
        v92 -= 8;
      }

      while (v92);
      if (v23 == v21)
      {
        return a6.f64[0];
      }
    }

    else
    {
      v23 = 0;
    }

    v117 = a2 + v23;
    v118 = v21 - v23;
    v119 = (a3 + 8 * v23);
    do
    {
      LOWORD(a6.f64[0]) = *v117;
      LOWORD(a7.f64[0]) = v117[a5];
      *&v120 = vmovl_s16(*&a7.f64[0]).i32[0];
      v121 = vmovl_s16(*&a6.f64[0]).i32[0] + *&v120;
      v120.i16[0] = v117[v22];
      a7.f64[0] = vmovl_s16(v120).i32[0];
      a6.f64[0] = v121 + a7.f64[0];
      *v119++ = a6.f64[0];
      ++v117;
      --v118;
    }

    while (v118);
    return a6.f64[0];
  }

  if (v14 != 5)
  {
    v24 = v14 * a5;
    v25 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v24 < 1)
          {
            a6 = 0uLL;
            v28 = 0uLL;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          else
          {
            v26 = 0;
            a6 = 0uLL;
            v27 = a2;
            v28 = 0uLL;
            do
            {
              v29 = *v27++;
              v30 = vmovl_s16(v29);
              v31.i64[0] = v30.i32[0];
              v31.i64[1] = v30.i32[1];
              v32 = vcvtq_f64_s64(v31);
              v31.i64[0] = v30.i32[2];
              v31.i64[1] = v30.i32[3];
              v28 = vaddq_f64(v28, vcvtq_f64_s64(v31));
              a6 = vaddq_f64(a6, v32);
              v26 += 4;
            }

            while (v26 < v24);
            *a3 = a6;
            *(a3 + 16) = v28;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          v131 = 0;
          v132 = 2 * v24;
          v133 = (a3 + 32);
          do
          {
            v131 += 4;
            v134 = vmovl_s16(*(a2 + v132));
            v135.i64[0] = v134.i32[0];
            v135.i64[1] = v134.i32[1];
            v136 = vcvtq_f64_s64(v135);
            v135.i64[0] = v134.i32[2];
            v135.i64[1] = v134.i32[3];
            v137 = vcvtq_f64_s64(v135);
            v138 = *a2++;
            v139 = vmovl_s16(v138);
            v135.i64[0] = v139.i32[0];
            v135.i64[1] = v139.i32[1];
            v140 = vcvtq_f64_s64(v135);
            v135.i64[0] = v139.i32[2];
            v135.i64[1] = v139.i32[3];
            a6 = vaddq_f64(a6, vsubq_f64(v136, v140));
            v28 = vaddq_f64(v28, vsubq_f64(v137, vcvtq_f64_s64(v135)));
            *v133 = a6;
            v133[1] = v28;
            v133 += 2;
          }

          while (v131 < v25);
          return a6.f64[0];
        }

        if (a5 < 1)
        {
          return a6.f64[0];
        }

        v126 = 0;
        v127 = a3 + 8 * a5;
        while (v24 < 1)
        {
          a6.f64[0] = 0.0;
          *a3 = 0;
          if (v25 >= 1)
          {
            goto LABEL_44;
          }

LABEL_37:
          ++v126;
          a2 = (a2 + 2);
          a3 += 8;
          v127 += 8;
          if (v126 == a5)
          {
            return a6.f64[0];
          }
        }

        v128 = 0;
        a6.f64[0] = 0.0;
        v129 = a2;
        do
        {
          LOWORD(a7.f64[0]) = v129->i16[0];
          a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          v129 = (v129 + 2 * a5);
          v128 += a5;
        }

        while (v24 > v128);
        *a3 = a6.f64[0];
        if (v25 < 1)
        {
          goto LABEL_37;
        }

LABEL_44:
        v130 = 0;
        do
        {
          LOWORD(a7.f64[0]) = a2->i16[v24 + v130];
          LOWORD(a8.f64[0]) = a2->i16[v130];
          a8.f64[0] = vmovl_s16(*&a8.f64[0]).i32[0];
          a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0] - a8.f64[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          *(v127 + 8 * v130) = a6.f64[0];
          v130 += a5;
        }

        while (v130 < v25);
        goto LABEL_37;
      }

      if (v24 < 1)
      {
        v124 = 0.0;
        v123 = 0.0;
        a6.f64[0] = 0.0;
        goto LABEL_58;
      }

      if (v24 > 3)
      {
        v141 = (v24 - 1) / 3u + 1;
        v122 = 3 * (v141 & 0x7FFFFFFE);
        v142 = a2 + 3;
        a6.f64[0] = 0.0;
        v143 = v141 & 0x7FFFFFFE;
        v123 = 0.0;
        v124 = 0.0;
        do
        {
          LOWORD(a9) = *(v142 - 3);
          a9 = vmovl_s16(*&a9).i32[0];
          LOWORD(a10) = *v142;
          a10 = vmovl_s16(*&a10).i32[0];
          LOWORD(a11) = *(v142 - 2);
          a11 = vmovl_s16(*&a11).i32[0];
          LOWORD(a12) = v142[1];
          a12 = vmovl_s16(*&a12).i32[0];
          LOWORD(a13) = *(v142 - 1);
          a13 = vmovl_s16(*&a13).i32[0];
          LOWORD(v13) = v142[2];
          v13 = vmovl_s16(*&v13).i32[0];
          a6.f64[0] = a6.f64[0] + a13 + v13;
          v123 = v123 + a11 + a12;
          v124 = v124 + a9 + a10;
          v142 += 6;
          v143 -= 2;
        }

        while (v143);
        if ((v141 & 0x7FFFFFFE) == v141)
        {
LABEL_58:
          *a3 = v124;
          *(a3 + 8) = v123;
          *(a3 + 16) = a6.f64[0];
          if (v25 >= 1)
          {
            v147 = 0;
            v148 = (a3 + 40);
            v149 = a2 + 1;
            v150 = a2 + v24 + 1;
            do
            {
              LOWORD(a9) = *(v150 - 1);
              LOWORD(a10) = *(v149 - 1);
              *&v151 = vmovl_s16(*&a10).i32[0];
              *&v152 = vmovl_s16(*&a9).i32[0] - *&v151;
              v124 = v124 + *&v152;
              v152.i16[0] = *v150;
              v151.i16[0] = *v149;
              *&v153 = vmovl_s16(v151).i32[0];
              *&v154 = vmovl_s16(v152).i32[0] - *&v153;
              v123 = v123 + *&v154;
              v154.i16[0] = v150[1];
              v153.i16[0] = v149[1];
              a10 = vmovl_s16(v153).i32[0];
              a9 = vmovl_s16(v154).i32[0] - a10;
              a6.f64[0] = a6.f64[0] + a9;
              v147 += 3;
              *(v148 - 2) = v124;
              *(v148 - 1) = v123;
              *v148 = a6.f64[0];
              v148 += 3;
              v150 += 3;
              v149 += 3;
            }

            while (v147 < v25);
          }

          return a6.f64[0];
        }
      }

      else
      {
        v122 = 0;
        a6.f64[0] = 0.0;
        v123 = 0.0;
        v124 = 0.0;
      }

      v144 = a2 + v122 + 2;
      do
      {
        LOWORD(a9) = *(v144 - 2);
        *&v145 = vmovl_s16(*&a9).i32[0];
        v124 = v124 + *&v145;
        v145.i16[0] = *(v144 - 1);
        *&v146 = vmovl_s16(v145).i32[0];
        v123 = v123 + *&v146;
        v146.i16[0] = *v144;
        a9 = vmovl_s16(v146).i32[0];
        a6.f64[0] = a6.f64[0] + a9;
        v122 += 3;
        v144 += 3;
      }

      while (v122 < v24);
      goto LABEL_58;
    }

    if (v24 < 1)
    {
      a6.f64[0] = 0.0;
      goto LABEL_74;
    }

    if (v24 < 8)
    {
      v125 = 0;
      a6.f64[0] = 0.0;
      goto LABEL_72;
    }

    if (v24 >= 0x10)
    {
      v125 = v24 & 0x7FFFFFF0;
      v164 = &a2[2];
      a6.f64[0] = 0.0;
      v165 = v125;
      do
      {
        v166 = v164[-1];
        v167 = vmovl_high_s16(v166);
        v168.i64[0] = v167.i32[2];
        v168.i64[1] = v167.i32[3];
        v169 = vcvtq_f64_s64(v168);
        v168.i64[0] = v167.i32[0];
        v168.i64[1] = v167.i32[1];
        v170 = vcvtq_f64_s64(v168);
        v171 = vmovl_s16(*v166.i8);
        v168.i64[0] = v171.i32[2];
        v168.i64[1] = v171.i32[3];
        v172 = vcvtq_f64_s64(v168);
        v168.i64[0] = v171.i32[0];
        v168.i64[1] = v171.i32[1];
        a7 = vcvtq_f64_s64(v168);
        v173 = vmovl_high_s16(*v164);
        v168.i64[0] = v173.i32[2];
        v168.i64[1] = v173.i32[3];
        v174 = vcvtq_f64_s64(v168);
        v168.i64[0] = v173.i32[0];
        v168.i64[1] = v173.i32[1];
        v175 = vcvtq_f64_s64(v168);
        v176 = vmovl_s16(*v164->i8);
        v168.i64[0] = v176.i32[2];
        v168.i64[1] = v176.i32[3];
        v177 = vcvtq_f64_s64(v168);
        v168.i64[0] = v176.i32[0];
        v168.i64[1] = v176.i32[1];
        a8 = vcvtq_f64_s64(v168);
        a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v172.f64[0] + v172.f64[1] + v170.f64[0] + v170.f64[1] + v169.f64[0] + v169.f64[1] + a8.f64[0] + a8.f64[1] + v177.f64[0] + v177.f64[1] + v175.f64[0] + v175.f64[1] + v174.f64[0] + v174.f64[1];
        v164 += 2;
        v165 -= 16;
      }

      while (v165);
      if (v125 == v24)
      {
        goto LABEL_74;
      }

      if ((v24 & 8) == 0)
      {
LABEL_72:
        v178 = a2 + v125;
        v179 = v24 - v125;
        do
        {
          v180 = *v178++;
          a7.f64[0] = v180;
          a6.f64[0] = a6.f64[0] + v180;
          --v179;
        }

        while (v179);
        goto LABEL_74;
      }
    }

    else
    {
      v125 = 0;
      a6.f64[0] = 0.0;
    }

    v155 = v125;
    v125 = v24 & 0x7FFFFFF8;
    v156 = (a2 + 2 * v155);
    v157 = v155 - v125;
    do
    {
      v158 = *v156++;
      v159 = vmovl_high_s16(v158);
      v160.i64[0] = v159.i32[2];
      v160.i64[1] = v159.i32[3];
      v161 = vcvtq_f64_s64(v160);
      v160.i64[0] = v159.i32[0];
      v160.i64[1] = v159.i32[1];
      a8 = vcvtq_f64_s64(v160);
      v162 = vmovl_s16(*v158.i8);
      v160.i64[0] = v162.i32[2];
      v160.i64[1] = v162.i32[3];
      v163 = vcvtq_f64_s64(v160);
      v160.i64[0] = v162.i32[0];
      v160.i64[1] = v162.i32[1];
      a7 = vcvtq_f64_s64(v160);
      a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v163.f64[0] + v163.f64[1] + a8.f64[0] + a8.f64[1] + v161.f64[0] + v161.f64[1];
      v157 += 8;
    }

    while (v157);
    if (v125 != v24)
    {
      goto LABEL_72;
    }

LABEL_74:
    *a3 = a6.f64[0];
    if (v25 >= 1)
    {
      v181 = (a3 + 8);
      do
      {
        LOWORD(a7.f64[0]) = a2->i16[v24];
        LOWORD(a8.f64[0]) = a2->i16[0];
        a8.f64[0] = vmovl_s16(*&a8.f64[0]).i32[0];
        a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0] - a8.f64[0];
        a6.f64[0] = a6.f64[0] + a7.f64[0];
        *v181++ = a6.f64[0];
        a2 = (a2 + 2);
        --v25;
      }

      while (v25);
    }

    return a6.f64[0];
  }

  v15 = a5 * a4;
  if (v15 < 1)
  {
    return a6.f64[0];
  }

  v16 = a5;
  v17 = (2 * a5);
  v18 = (3 * a5);
  v19 = (4 * a5);
  if (v15 <= 7)
  {
    v20 = 0;
LABEL_20:
    v78 = 0;
    v79 = a2 + 2 * v20 + 2 * v19;
    v80 = a2 + 2 * v20 + 2 * v18;
    v81 = a2 + 2 * v20 + 2 * v17;
    v82 = a2 + 2 * v20 + 2 * v16;
    v83 = a2 + 2 * v20;
    v84 = v15 - v20;
    v85 = a3 + 8 * v20;
    do
    {
      LOWORD(a6.f64[0]) = *&v83[2 * v78];
      LOWORD(a7.f64[0]) = *&v82[2 * v78];
      *&v86 = vmovl_s16(*&a7.f64[0]).i32[0];
      v87 = vmovl_s16(*&a6.f64[0]).i32[0] + *&v86;
      v86.i16[0] = *&v81[2 * v78];
      *&v88 = vmovl_s16(v86).i32[0];
      v89 = v87 + *&v88;
      v88.i16[0] = *&v80[2 * v78];
      *&v90 = vmovl_s16(v88).i32[0];
      v91 = v89 + *&v90;
      v90.i16[0] = *&v79[2 * v78];
      a7.f64[0] = vmovl_s16(v90).i32[0];
      a6.f64[0] = v91 + a7.f64[0];
      *(v85 + 8 * v78++) = a6.f64[0];
    }

    while (v84 != v78);
    return a6.f64[0];
  }

  v20 = v15 & 0x7FFFFFF8;
  v33 = v20;
  v34 = a3;
  v35 = a2;
  do
  {
    v36 = vmovl_s16(*v35);
    v37.i64[0] = v36.i32[0];
    v37.i64[1] = v36.i32[1];
    v38 = vcvtq_f64_s64(v37);
    v37.i64[0] = v36.i32[2];
    v37.i64[1] = v36.i32[3];
    v39 = vcvtq_f64_s64(v37);
    v40 = vmovl_high_s16(*v35->i8);
    v37.i64[0] = v40.i32[0];
    v37.i64[1] = v40.i32[1];
    v41 = vcvtq_f64_s64(v37);
    v37.i64[0] = v40.i32[2];
    v37.i64[1] = v40.i32[3];
    v42 = vcvtq_f64_s64(v37);
    v43 = *&v35->i8[2 * v16];
    v44 = vmovl_s16(*v43.i8);
    v37.i64[0] = v44.i32[0];
    v37.i64[1] = v44.i32[1];
    v45 = vcvtq_f64_s64(v37);
    v37.i64[0] = v44.i32[2];
    v37.i64[1] = v44.i32[3];
    v46 = vcvtq_f64_s64(v37);
    v47 = vmovl_high_s16(v43);
    v37.i64[0] = v47.i32[0];
    v37.i64[1] = v47.i32[1];
    v48 = vcvtq_f64_s64(v37);
    v37.i64[0] = v47.i32[2];
    v37.i64[1] = v47.i32[3];
    v49 = vaddq_f64(v42, vcvtq_f64_s64(v37));
    v50 = vaddq_f64(v41, v48);
    v51 = vaddq_f64(v39, v46);
    v52 = *&v35->i8[2 * v17];
    v53 = vaddq_f64(v38, v45);
    v54 = vmovl_high_s16(v52);
    v37.i64[0] = v54.i32[2];
    v37.i64[1] = v54.i32[3];
    v55 = vcvtq_f64_s64(v37);
    v37.i64[0] = v54.i32[0];
    v37.i64[1] = v54.i32[1];
    v56 = vcvtq_f64_s64(v37);
    v57 = vmovl_s16(*v52.i8);
    v37.i64[0] = v57.i32[2];
    v37.i64[1] = v57.i32[3];
    v58 = vcvtq_f64_s64(v37);
    v37.i64[0] = v57.i32[0];
    v37.i64[1] = v57.i32[1];
    v59 = vaddq_f64(v53, vcvtq_f64_s64(v37));
    v60 = vaddq_f64(v51, v58);
    v61 = vaddq_f64(v50, v56);
    v62 = vaddq_f64(v49, v55);
    v63 = *&v35->i8[2 * v18];
    v64 = vmovl_s16(*v63.i8);
    v37.i64[0] = v64.i32[0];
    v37.i64[1] = v64.i32[1];
    v65 = vcvtq_f64_s64(v37);
    v37.i64[0] = v64.i32[2];
    v37.i64[1] = v64.i32[3];
    v66 = vcvtq_f64_s64(v37);
    v67 = vmovl_high_s16(v63);
    v37.i64[0] = v67.i32[0];
    v37.i64[1] = v67.i32[1];
    v68 = vcvtq_f64_s64(v37);
    v37.i64[0] = v67.i32[2];
    v37.i64[1] = v67.i32[3];
    v69 = vaddq_f64(v62, vcvtq_f64_s64(v37));
    v70 = vaddq_f64(v61, v68);
    a7 = vaddq_f64(v60, v66);
    v71 = vaddq_f64(v59, v65);
    v72 = *&v35->i8[2 * v19];
    v73 = vmovl_high_s16(v72);
    v37.i64[0] = v73.i32[2];
    v37.i64[1] = v73.i32[3];
    v74 = vcvtq_f64_s64(v37);
    v37.i64[0] = v73.i32[0];
    v37.i64[1] = v73.i32[1];
    v75 = vcvtq_f64_s64(v37);
    v76 = vmovl_s16(*v72.i8);
    v37.i64[0] = v76.i32[2];
    v37.i64[1] = v76.i32[3];
    v77 = vcvtq_f64_s64(v37);
    v37.i64[0] = v76.i32[0];
    v37.i64[1] = v76.i32[1];
    v34[2] = vaddq_f64(v70, v75);
    v34[3] = vaddq_f64(v69, v74);
    a6 = vaddq_f64(a7, v77);
    *v34 = vaddq_f64(v71, vcvtq_f64_s64(v37));
    v34[1] = a6;
    v34 += 4;
    v35 += 2;
    v33 -= 8;
  }

  while (v33);
  if (v20 != v15)
  {
    goto LABEL_20;
  }

  return a6.f64[0];
}

uint64_t sub_1003667C0(void *a1)
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

void sub_100366848()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_100366880(uint64_t result, uint64_t a2, float64x2_t *a3, int a4, unsigned int a5)
{
  v5 = *(result + 8);
  if (v5 == 3)
  {
    v12 = a5 * a4;
    if (v12 < 1)
    {
      return result;
    }

    v13 = (2 * a5);
    if (v12 >= 4)
    {
      v14 = v12 & 0x7FFFFFFC;
      v40 = v14;
      v41 = a3;
      v42 = a2;
      do
      {
        v43 = *(v42 + 4 * a5);
        v44 = vaddq_f64(vcvt_hight_f64_f32(*v42), vcvt_hight_f64_f32(v43));
        v45 = vaddq_f64(vcvtq_f64_f32(*v42->f32), vcvtq_f64_f32(*v43.f32));
        v46 = *(v42 + 4 * v13);
        *v41 = vaddq_f64(v45, vcvtq_f64_f32(*v46.f32));
        v41[1] = vaddq_f64(v44, vcvt_hight_f64_f32(v46));
        v41 += 2;
        ++v42;
        v40 -= 4;
      }

      while (v40);
      if (v14 == v12)
      {
        return result;
      }
    }

    else
    {
      v14 = 0;
    }

    v47 = (a2 + 4 * v14);
    v48 = v12 - v14;
    v49 = &a3->f64[v14];
    do
    {
      *v49++ = *v47 + v47[a5] + v47[v13];
      ++v47;
      --v48;
    }

    while (v48);
    return result;
  }

  if (v5 != 5)
  {
    v15 = v5 * a5;
    v16 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v15 < 1)
          {
            v18 = 0uLL;
            v19 = 0uLL;
            goto LABEL_71;
          }

          if (v15 > 0x1C)
          {
            v95 = ((v15 - 1) >> 2) + 1;
            v17 = 4 * (v95 & 0x7FFFFFFFFFFFFFF8);
            v96 = (a2 + 64);
            v97 = 0.0;
            v98 = v95 & 0x7FFFFFFFFFFFFFF8;
            v19.f64[0] = 0.0;
            v99 = 0.0;
            v18.f64[0] = 0.0;
            do
            {
              v100 = v96 - 16;
              v119 = vld4q_f32(v100);
              v120 = vld4q_f32(v96);
              v101 = vcvt_hight_f64_f32(v119.val[0]);
              v102 = vcvtq_f64_f32(*v119.val[0].f32);
              v103 = vcvt_hight_f64_f32(v120.val[0]);
              v104 = vcvtq_f64_f32(*v120.val[0].f32);
              v105 = vcvt_hight_f64_f32(v119.val[1]);
              v106 = vcvtq_f64_f32(*v119.val[1].f32);
              v107 = vcvt_hight_f64_f32(v120.val[1]);
              v108 = vcvtq_f64_f32(*v120.val[1].f32);
              v109 = vcvt_hight_f64_f32(v119.val[2]);
              v110 = vcvtq_f64_f32(*v119.val[2].f32);
              v111 = vcvt_hight_f64_f32(v119.val[3]);
              v119.val[0] = vcvtq_f64_f32(*v119.val[3].f32);
              v119.val[1] = vcvt_hight_f64_f32(v120.val[2]);
              v119.val[2] = vcvtq_f64_f32(*v120.val[2].f32);
              v119.val[3] = vcvt_hight_f64_f32(v120.val[3]);
              v120.val[0] = vcvtq_f64_f32(*v120.val[3].f32);
              v97 = v97 + *v119.val[0].i64 + *&v119.val[0].i64[1] + v111.f64[0] + v111.f64[1] + *v120.val[0].i64 + *&v120.val[0].i64[1] + *v119.val[3].i64 + *&v119.val[3].i64[1];
              v19.f64[0] = v19.f64[0] + v110.f64[0] + v110.f64[1] + v109.f64[0] + v109.f64[1] + *v119.val[2].i64 + *&v119.val[2].i64[1] + *v119.val[1].i64 + *&v119.val[1].i64[1];
              v99 = v99 + v106.f64[0] + v106.f64[1] + v105.f64[0] + v105.f64[1] + v108.f64[0] + v108.f64[1] + v107.f64[0] + v107.f64[1];
              v18.f64[0] = v18.f64[0] + v102.f64[0] + v102.f64[1] + v101.f64[0] + v101.f64[1] + v104.f64[0] + v104.f64[1] + v103.f64[0] + v103.f64[1];
              v96 += 32;
              v98 -= 8;
            }

            while (v98);
            v18.f64[1] = v99;
            v19.f64[1] = v97;
            if (v95 == (v95 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_71:
              *a3 = v18;
              a3[1] = v19;
              if (v16 >= 1)
              {
                v113 = 0;
                v114 = a3 + 3;
                v115 = (a2 + 8);
                v116 = (a2 + 8 + 4 * v15);
                do
                {
                  v18 = vaddq_f64(v18, vsubq_f64(vcvtq_f64_f32(v116[-1]), vcvtq_f64_f32(v115[-1])));
                  v113 += 4;
                  v19 = vaddq_f64(v19, vsubq_f64(vcvtq_f64_f32(*v116), vcvtq_f64_f32(*v115)));
                  v114[-1] = v18;
                  *v114 = v19;
                  v114 += 2;
                  v116 += 2;
                  v115 += 2;
                }

                while (v113 < v16);
              }

              return result;
            }
          }

          else
          {
            v17 = 0;
            v18 = 0uLL;
            v19 = 0uLL;
          }

          v112 = (a2 + 4 * v17 + 8);
          do
          {
            v18 = vaddq_f64(v18, vcvtq_f64_f32(v112[-1]));
            v19 = vaddq_f64(v19, vcvtq_f64_f32(*v112));
            v17 += 4;
            v112 += 2;
          }

          while (v17 < v15);
          goto LABEL_71;
        }

        if (a5 < 1)
        {
          return result;
        }

        v55 = 0;
        v56 = &a3->f64[a5];
        while (v15 < 1)
        {
          v58 = 0.0;
          a3->f64[0] = 0.0;
          if (v16 >= 1)
          {
            goto LABEL_42;
          }

LABEL_35:
          ++v55;
          a2 += 4;
          a3 = (a3 + 8);
          v56 += 8;
          if (v55 == a5)
          {
            return result;
          }
        }

        v57 = 0;
        v58 = 0.0;
        v59 = a2;
        do
        {
          v58 = v58 + *v59;
          v59 += a5;
          v57 += a5;
        }

        while (v15 > v57);
        a3->f64[0] = v58;
        if (v16 < 1)
        {
          goto LABEL_35;
        }

LABEL_42:
        v60 = 0;
        do
        {
          v58 = v58 + *(a2 + 4 * v15 + 4 * v60) - *(a2 + 4 * v60);
          *&v56[8 * v60] = v58;
          result = v60 + a5;
          v60 = result;
        }

        while (result < v16);
        goto LABEL_35;
      }

      if (v15 < 1)
      {
        v51 = 0uLL;
        v52 = 0.0;
        goto LABEL_53;
      }

      if (v15 > 0x15)
      {
        v61 = (v15 - 1) / 3u + 1;
        v50 = 3 * (v61 & 0x7FFFFFF8);
        v52 = 0.0;
        v62 = v61 & 0x7FFFFFF8;
        v63 = a2;
        v64 = 0.0;
        v51.f64[0] = 0.0;
        do
        {
          v65 = v63;
          v63 += 96;
          v117 = vld3q_f32(v65);
          v65 += 12;
          v66 = vcvt_hight_f64_f32(v117.val[0]);
          v118 = vld3q_f32(v65);
          v67 = vcvtq_f64_f32(*v117.val[0].f32);
          v68 = vcvt_hight_f64_f32(v118.val[0]);
          v69 = vcvtq_f64_f32(*v118.val[0].f32);
          v70 = vcvt_hight_f64_f32(v117.val[1]);
          v71 = vcvtq_f64_f32(*v117.val[1].f32);
          v72 = vcvt_hight_f64_f32(v118.val[1]);
          v73 = vcvtq_f64_f32(*v118.val[1].f32);
          v74 = vcvt_hight_f64_f32(v117.val[2]);
          v117.val[0] = vcvtq_f64_f32(*v117.val[2].f32);
          v117.val[2] = vcvt_hight_f64_f32(v118.val[2]);
          v118.val[0] = vcvtq_f64_f32(*v118.val[2].f32);
          v52 = v52 + *v117.val[0].i64 + *&v117.val[0].i64[1] + v74.f64[0] + v74.f64[1] + *v118.val[0].i64 + *&v118.val[0].i64[1] + *v117.val[2].i64 + *&v117.val[2].i64[1];
          v64 = v64 + v71.f64[0] + v71.f64[1] + v70.f64[0] + v70.f64[1] + v73.f64[0] + v73.f64[1] + v72.f64[0] + v72.f64[1];
          v51.f64[0] = v51.f64[0] + v67.f64[0] + v67.f64[1] + v66.f64[0] + v66.f64[1] + v69.f64[0] + v69.f64[1] + v68.f64[0] + v68.f64[1];
          v62 -= 8;
        }

        while (v62);
        v51.f64[1] = v64;
        if ((v61 & 0x7FFFFFF8) == v61)
        {
LABEL_53:
          *a3 = v51;
          a3[1].f64[0] = v52;
          if (v16 >= 1)
          {
            v77 = 0;
            v78 = &a3[2].f64[1];
            v79 = 4 * v15;
            do
            {
              v52 = v52 + *(a2 + v79 + 8) - *(a2 + 8);
              v77 += 3;
              v80 = vcvtq_f64_f32(*(a2 + v79));
              v81 = *a2;
              a2 += 12;
              v51 = vaddq_f64(v51, vsubq_f64(v80, vcvtq_f64_f32(v81)));
              *(v78 - 1) = v51;
              *v78 = v52;
              v78 += 3;
            }

            while (v77 < v16);
          }

          return result;
        }
      }

      else
      {
        v50 = 0;
        v51 = 0uLL;
        v52 = 0.0;
      }

      v75 = (a2 + 4 * v50 + 8);
      do
      {
        v51 = vaddq_f64(v51, vcvtq_f64_f32(*(v75 - 2)));
        v76 = *v75;
        v75 += 3;
        v52 = v52 + v76;
        v50 += 3;
      }

      while (v50 < v15);
      goto LABEL_53;
    }

    if (v15 < 1)
    {
      v54 = 0.0;
      goto LABEL_62;
    }

    if (v15 > 7)
    {
      v53 = v15 & 0x7FFFFFF8;
      v82 = (a2 + 16);
      v54 = 0.0;
      v83 = v53;
      do
      {
        v84 = v82[-1];
        v85 = vcvt_hight_f64_f32(v84);
        v86 = vcvtq_f64_f32(*v84.f32);
        v87 = vcvt_hight_f64_f32(*v82);
        v88 = vcvtq_f64_f32(*v82->f32);
        v54 = v54 + v86.f64[0] + v86.f64[1] + v85.f64[0] + v85.f64[1] + v88.f64[0] + v88.f64[1] + v87.f64[0] + v87.f64[1];
        v82 += 2;
        v83 -= 8;
      }

      while (v83);
      if (v53 == v15)
      {
LABEL_62:
        a3->f64[0] = v54;
        if (v16 >= 1)
        {
          v92 = &a3->f64[1];
          do
          {
            v93 = *(a2 + 4 * v15);
            v94 = *a2;
            a2 += 4;
            v54 = v54 + v93 - v94;
            *v92++ = v54;
            --v16;
          }

          while (v16);
        }

        return result;
      }
    }

    else
    {
      v53 = 0;
      v54 = 0.0;
    }

    v89 = (a2 + 4 * v53);
    v90 = v15 - v53;
    do
    {
      v91 = *v89++;
      v54 = v54 + v91;
      --v90;
    }

    while (v90);
    goto LABEL_62;
  }

  v6 = a5 * a4;
  if (v6 < 1)
  {
    return result;
  }

  v7 = a5;
  v8 = (2 * a5);
  v9 = (3 * a5);
  v10 = (4 * a5);
  if (v6 <= 3)
  {
    v11 = 0;
LABEL_18:
    v32 = 0;
    v33 = a2 + 4 * v11 + 4 * v10;
    v34 = a2 + 4 * v11 + 4 * v9;
    v35 = a2 + 4 * v11 + 4 * v8;
    v36 = a2 + 4 * v11 + 4 * v7;
    v37 = a2 + 4 * v11;
    v38 = v6 - v11;
    v39 = &a3->f64[v11];
    do
    {
      *&v39[8 * v32] = *(v37 + 4 * v32) + *(v36 + 4 * v32) + *(v35 + 4 * v32) + *(v34 + 4 * v32) + *(v33 + 4 * v32);
      ++v32;
    }

    while (v38 != v32);
    return result;
  }

  v11 = v6 & 0x7FFFFFFC;
  result = v11;
  v20 = a3;
  v21 = a2;
  do
  {
    v22 = *(v21 + 4 * v7);
    v23 = vaddq_f64(vcvt_hight_f64_f32(*v21), vcvt_hight_f64_f32(v22));
    v24 = vaddq_f64(vcvtq_f64_f32(*v21->f32), vcvtq_f64_f32(*v22.f32));
    v25 = *(v21 + 4 * v8);
    v26 = vaddq_f64(v24, vcvtq_f64_f32(*v25.f32));
    v27 = vaddq_f64(v23, vcvt_hight_f64_f32(v25));
    v28 = *(v21 + 4 * v9);
    v29 = vaddq_f64(v27, vcvt_hight_f64_f32(v28));
    v30 = vaddq_f64(v26, vcvtq_f64_f32(*v28.f32));
    v31 = *(v21 + 4 * v10);
    *v20 = vaddq_f64(v30, vcvtq_f64_f32(*v31.f32));
    v20[1] = vaddq_f64(v29, vcvt_hight_f64_f32(v31));
    v20 += 2;
    ++v21;
    result -= 4;
  }

  while (result);
  if (v11 != v6)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100367084(void *a1)
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

void sub_10036710C()
{
  nullsub_1();

  operator delete();
}

float64x2_t sub_100367144(uint64_t a1, double *a2, float64x2_t *a3, int a4, unsigned int a5, float64x2_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v17 = a5 * a4;
    if (v17 < 1)
    {
      return result;
    }

    v18 = (2 * a5);
    if (v17 >= 0xA)
    {
      v19 = 0;
      v33 = a3 - a2;
      if ((a3 - a2 - 8 * v18) >= 0x20 && v33 - 8 * a5 >= 0x20 && v33 >= 0x20)
      {
        v19 = v17 & 0x7FFFFFFC;
        v34 = (a2 + 2);
        v35 = a3 + 1;
        v36 = v19;
        do
        {
          result = vaddq_f64(vaddq_f64(v34[-1], *(v34 + 8 * a5 - 16)), *(v34 + 8 * v18 - 16));
          v37 = vaddq_f64(vaddq_f64(*v34, *(v34 + 8 * a5)), *(v34 + 8 * v18));
          v35[-1] = result;
          *v35 = v37;
          v34 += 2;
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v19 == v17)
        {
          return result;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = &a2[v19];
    v21 = &a3->f64[v19];
    v22 = v17 - v19;
    do
    {
      result.f64[0] = *v20 + v20[a5] + v20[v18];
      *v21++ = result.f64[0];
      ++v20;
      --v22;
    }

    while (v22);
    return result;
  }

  if (v6 != 5)
  {
    v23 = v6 * a5;
    v24 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v23 < 1)
          {
            result = 0uLL;
            v26 = 0uLL;
            goto LABEL_81;
          }

          if (v23 > 0xC)
          {
            v66 = ((v23 - 1) >> 2) + 1;
            v25 = 4 * (v66 & 0x7FFFFFFFFFFFFFFCLL);
            v67 = a2 + 8;
            v68 = 0.0;
            v69 = v66 & 0x7FFFFFFFFFFFFFFCLL;
            v26.f64[0] = 0.0;
            v70 = 0.0;
            result.f64[0] = 0.0;
            do
            {
              v71 = v67 - 8;
              v77 = vld4q_f64(v71);
              v78 = vld4q_f64(v67);
              v68 = v68 + v77.val[3].f64[0] + v77.val[3].f64[1] + v78.val[3].f64[0] + v78.val[3].f64[1];
              v26.f64[0] = v26.f64[0] + v77.val[2].f64[0] + v77.val[2].f64[1] + v78.val[2].f64[0] + v78.val[2].f64[1];
              v70 = v70 + v77.val[1].f64[0] + v77.val[1].f64[1] + v78.val[1].f64[0] + v78.val[1].f64[1];
              result.f64[0] = result.f64[0] + v77.val[0].f64[0] + v77.val[0].f64[1] + v78.val[0].f64[0] + v78.val[0].f64[1];
              v67 += 16;
              v69 -= 4;
            }

            while (v69);
            result.f64[1] = v70;
            v26.f64[1] = v68;
            if (v66 == (v66 & 0x7FFFFFFFFFFFFFFCLL))
            {
LABEL_81:
              *a3 = result;
              a3[1] = v26;
              if (v24 >= 1)
              {
                v73 = 0;
                v74 = a3 + 3;
                v75 = (a2 + 2);
                v76 = &a2[v23 + 2];
                do
                {
                  result = vaddq_f64(result, vsubq_f64(v76[-1], v75[-1]));
                  v73 += 4;
                  v26 = vaddq_f64(v26, vsubq_f64(*v76, *v75));
                  v74[-1] = result;
                  *v74 = v26;
                  v74 += 2;
                  v76 += 2;
                  v75 += 2;
                }

                while (v73 < v24);
              }

              return result;
            }
          }

          else
          {
            v25 = 0;
            result = 0uLL;
            v26 = 0uLL;
          }

          v72 = &a2[v25 + 2];
          do
          {
            result = vaddq_f64(result, v72[-1]);
            v26 = vaddq_f64(v26, *v72);
            v25 += 4;
            v72 += 2;
          }

          while (v25 < v23);
          goto LABEL_81;
        }

        if (a5 < 1)
        {
          return result;
        }

        v41 = 0;
        v42 = 8 * a5;
        v43 = a3 + v42;
        while (v23 < 1)
        {
          result.f64[0] = 0.0;
          a3->f64[0] = 0.0;
          if (v24 >= 1)
          {
            goto LABEL_52;
          }

LABEL_45:
          ++v41;
          ++a2;
          a3 = (a3 + 8);
          v43 += 8;
          if (v41 == a5)
          {
            return result;
          }
        }

        v44 = 0;
        result.f64[0] = 0.0;
        v45 = a2;
        do
        {
          result.f64[0] = result.f64[0] + *v45;
          v45 = (v45 + v42);
          v44 += a5;
        }

        while (v23 > v44);
        a3->f64[0] = result.f64[0];
        if (v24 < 1)
        {
          goto LABEL_45;
        }

LABEL_52:
        v46 = 0;
        do
        {
          result.f64[0] = result.f64[0] + a2[v23 + v46] - a2[v46];
          *&v43[8 * v46] = result.f64[0];
          v46 += a5;
        }

        while (v46 < v24);
        goto LABEL_45;
      }

      if (v23 < 1)
      {
        result = 0uLL;
        v39 = 0.0;
        goto LABEL_63;
      }

      if (v23 > 3)
      {
        v47 = (v23 - 1) / 3u + 1;
        v38 = 3 * (v47 & 0x7FFFFFFE);
        v48 = a2 + 3;
        result = 0uLL;
        v39 = 0.0;
        v49 = v47 & 0x7FFFFFFE;
        do
        {
          v39 = v39 + *(v48 - 1) + v48[2];
          v50 = *(v48 - 3);
          v51 = *v48;
          v48 += 6;
          result = vaddq_f64(vaddq_f64(result, v50), v51);
          v49 -= 2;
        }

        while (v49);
        if ((v47 & 0x7FFFFFFE) == v47)
        {
LABEL_63:
          *a3 = result;
          a3[1].f64[0] = v39;
          if (v24 >= 1)
          {
            v54 = 0;
            v55 = 0;
            v56 = &a2[v23];
            do
            {
              v39 = v39 + v56[v54 + 2] - a2[v54 + 2];
              v55 += 3;
              v57 = a3 + v54 * 8;
              result = vaddq_f64(result, vsubq_f64(*&v56[v54], *&a2[v54]));
              *(v57 + 24) = result;
              *(v57 + 5) = v39;
              v54 += 3;
            }

            while (v55 < v24);
          }

          return result;
        }
      }

      else
      {
        v38 = 0;
        result = 0uLL;
        v39 = 0.0;
      }

      v52 = &a2[v38 + 2];
      do
      {
        result = vaddq_f64(result, *(v52 - 2));
        v53 = *v52;
        v52 += 3;
        v39 = v39 + v53;
        v38 += 3;
      }

      while (v38 < v23);
      goto LABEL_63;
    }

    if (v23 < 1)
    {
      result.f64[0] = 0.0;
      goto LABEL_72;
    }

    if (v23 > 3)
    {
      v40 = v23 & 0x7FFFFFFC;
      v58 = a2 + 2;
      result.f64[0] = 0.0;
      v59 = v40;
      do
      {
        result.f64[0] = result.f64[0] + *(v58 - 2) + *(v58 - 1) + *v58 + v58[1];
        v58 += 4;
        v59 -= 4;
      }

      while (v59);
      if (v40 == v23)
      {
LABEL_72:
        a3->f64[0] = result.f64[0];
        if (v24 >= 1)
        {
          v63 = &a3->f64[1];
          do
          {
            v64 = a2[v23];
            v65 = *a2++;
            result.f64[0] = result.f64[0] + v64 - v65;
            *v63++ = result.f64[0];
            --v24;
          }

          while (v24);
        }

        return result;
      }
    }

    else
    {
      v40 = 0;
      result.f64[0] = 0.0;
    }

    v60 = &a2[v40];
    v61 = v23 - v40;
    do
    {
      v62 = *v60++;
      result.f64[0] = result.f64[0] + v62;
      --v61;
    }

    while (v61);
    goto LABEL_72;
  }

  v7 = a5 * a4;
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = (2 * a5);
  v10 = (3 * a5);
  v11 = (4 * a5);
  if (v7 <= 0xB)
  {
    v12 = 0;
LABEL_6:
    v13 = 0;
    v14 = &a2[v12 + v11];
    v15 = &a2[v12 + v9];
    v16 = v7 - v12;
    do
    {
      result.f64[0] = a2[v12 + v13] + a2[v12 + v8 + v13] + v15[v13] + a2[v12 + v10 + v13] + v14[v13];
      a3->f64[v12 + v13++] = result.f64[0];
    }

    while (v16 != v13);
    return result;
  }

  v12 = 0;
  v27 = a3 - a2;
  if ((a3 - a2 - 8 * v11) < 0x20)
  {
    goto LABEL_6;
  }

  if (v27 - 8 * v10 < 0x20)
  {
    goto LABEL_6;
  }

  if (v27 - 8 * v9 < 0x20)
  {
    goto LABEL_6;
  }

  v28 = 8 * a5;
  if (v27 - v28 < 0x20)
  {
    goto LABEL_6;
  }

  if (v27 < 0x20)
  {
    goto LABEL_6;
  }

  v12 = v7 & 0x7FFFFFFC;
  v29 = (a2 + 2);
  v30 = a3 + 1;
  v31 = v12;
  do
  {
    result = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v29[-1], *(v29 + v28 - 16)), *(v29 + 8 * v9 - 16)), *(v29 + 8 * v10 - 16)), *(v29 + 8 * v11 - 16));
    v32 = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(*v29, *(v29 + 8 * v8)), *(v29 + 8 * v9)), *(v29 + 8 * v10)), *(v29 + 8 * v11));
    v30[-1] = result;
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 4;
  }

  while (v31);
  if (v12 != v7)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003677A4(void *a1)
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

void sub_100367828(void *a1)
{
  *a1 = off_10047B118;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036788C(void *a1)
{
  *a1 = off_10047B118;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_100367900(uint64_t a1, int32x4_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v7 = a6;
  v11 = a2;
  v12 = a1;
  v14 = (a1 + 32);
  v13 = *(a1 + 32);
  v246 = *(a1 + 16);
  v15 = (*(a1 + 40) - v13) >> 2;
  if (v15 == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        v249[0] = 0;
        v249[1] = 0;
        v18 = sub_1002A80E0(v249, 19);
        *(v18 + 15) = 825058682;
        *v18 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v249, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 337);
      }

      v11 = &a2[v17 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v15)
    {
      if (a6 < v15)
      {
        *(a1 + 40) = v13 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v15);
      v13 = *v14;
    }

    *(v12 + 24) = 0;
  }

  bzero(v13, 4 * v7);
  v19 = *(v12 + 24);
  v20 = *(v12 + 8);
  if (v19 < v20 - 1)
  {
    v21 = (v7 - 4);
    if (v7 >= 4)
    {
      if (((v21 & 0x7FFFFFFC) + 5) <= v7)
      {
        v172 = v7;
      }

      else
      {
        v172 = (v21 & 0x7FFFFFFC) + 5;
      }

      v173 = 4 * v172 - ((4 * (v7 - 4)) & 0x1FFFFFFF0);
      v174 = v172 - (v21 & 0x7FFFFFFC) - 4;
      v175 = v174 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v177 = 0;
        v178 = 0;
        v179 = *v11;
        i64 = (*v11)[2].i64;
        v181 = v13 + 2;
        v182 = 4;
        do
        {
          v183 = v182;
          v184 = v177;
          v185 = i64;
          v186 = v181;
          v13[v178 / 4] = vaddq_s32(v179[v178 / 4], v13[v178 / 4]);
          v178 += 4;
          v182 += 4;
          ++v177;
          i64 += 16;
          ++v181;
        }

        while (v178 <= v21);
        if (v178 < v7)
        {
          if (v174 <= 7)
          {
            goto LABEL_168;
          }

          v187 = 16 * v184;
          v188 = v187 + 16;
          v189 = &v13[v187 / 0x10 + 1];
          v190 = v173 + v187;
          if (v189 < &v179->i8[v190] && &v179->i8[v188] < &v13->i8[v190])
          {
            goto LABEL_168;
          }

          v183 += v175;
          v191 = v174 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v192 = vaddq_s32(*v186, *v185);
            v186[-1] = vaddq_s32(v186[-1], v185[-1]);
            *v186 = v192;
            v185 += 2;
            v186 += 2;
            v191 -= 8;
          }

          while (v191);
          if (v174 != v175)
          {
LABEL_168:
            do
            {
              v13->i32[v183] += v179->i32[v183];
              ++v183;
            }

            while (v183 < v7);
          }
        }

        v176 = *(v12 + 24) + 1;
        *(v12 + 24) = v176;
        ++v11;
      }

      while (v176 < *(v12 + 8) - 1);
    }

    else if (v7 >= 1)
    {
      do
      {
        v112 = *v11;
        v13->i32[0] += (*v11)->i32[0];
        if (v7 != 1)
        {
          v13->i32[1] += v112->i32[1];
          if (v7 != 2)
          {
            v13->i32[2] += v112->i32[2];
          }
        }

        v111 = *(v12 + 24) + 1;
        *(v12 + 24) = v111;
        ++v11;
      }

      while (v111 < *(v12 + 8) - 1);
    }

    else
    {
      v11 += (v20 - v19 - 2) + 1;
      *(v12 + 24) = v20 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v22 = a5 - 1;
    v23 = (v7 - 8);
    *&v6 = v246;
    v24 = a4;
    v247 = v12;
    if (v246 != 1.0)
    {
      v25 = 0;
      v26 = &v13->i32[1];
      v27 = a3 + 1;
      v28 = v13 + 1;
      v29 = 0uLL;
      v30.i64[0] = 0xFF000000FFLL;
      v30.i64[1] = 0xFF000000FFLL;
      v31 = xmmword_1003E36F0;
      v32 = &off_1004B0000;
      v245 = v7;
      while (1)
      {
        v33 = v22;
        v34 = *v11;
        v248 = v11;
        v35 = v11[1 - *(v12 + 8)];
        if (v7 < 8)
        {
          LODWORD(v36) = 0;
          if (v7 <= 0)
          {
            goto LABEL_18;
          }

LABEL_34:
          v51 = v36;
          v52 = (~v36 + v7);
          if (v52 < 3)
          {
            v53 = v36;
            v54 = v246;
            goto LABEL_81;
          }

          v55 = v33;
          v56 = a3 + v51;
          v57 = v51 + v52 + v27 + v25 * v24;
          v58 = 4 * v51;
          v59 = &v13->i32[v51];
          v60 = 4 * (v51 + v52);
          v61 = &v26[v60 / 4];
          v62 = &v34->i8[4 * v51];
          v63 = v34->u64 + v60 + 4;
          v64 = &v35->i8[4 * v51];
          v65 = v35->u64 + v60 + 4;
          v67 = a3 + v51 < v63 && v62 < v57;
          v69 = v56 < v65 && v64 < v57;
          v71 = v59 < v63 && v62 < v61;
          v73 = v59 < v65 && v64 < v61;
          if (v59 < v57 && v56 < v61)
          {
            v53 = v51;
            v54 = v246;
            v32 = &off_1004B0000;
LABEL_73:
            v33 = v55;
            do
            {
LABEL_81:
              v108 = v34->i32[v53] + v13->i32[v53];
              v109 = rint(v54 * v108);
              v110 = v109 & ~(v109 >> 31);
              if (v110 >= 255)
              {
                LOBYTE(v110) = -1;
              }

              *(a3 + v53) = v110;
              v13->i32[v53] = v108 - v35->i32[v53];
              ++v53;
            }

            while (v53 < v7);
            goto LABEL_18;
          }

          v32 = &off_1004B0000;
          if (v67 || v69 || v71 || v73)
          {
            v53 = v51;
          }

          else
          {
            v75 = v52 + 1;
            if (v52 < 0xF)
            {
              v76 = 0;
LABEL_78:
              v53 = (v75 & 0x1FFFFFFFCLL) + v51;
              v98 = v76 - (v75 & 0x1FFFFFFFCLL);
              v99 = v76 + v51;
              v100 = (v13 + 4 * v99);
              v101 = (v34 + 4 * v99);
              v102 = (v35 + 4 * v99);
              v54 = v246;
              do
              {
                v103 = *v101++;
                v104 = vaddq_s32(v103, *v100);
                v105.i64[0] = v104.i32[2];
                v105.i64[1] = v104.i32[3];
                v106 = vcvtq_f64_s64(v105);
                v105.i64[0] = v104.i32[0];
                v105.i64[1] = v104.i32[1];
                *(a3 + v99) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v105), v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v106, v246)))), v29), v30)), *v104.i8).u32[0];
                v107 = *v102++;
                *v100++ = vsubq_s32(v104, v107);
                v99 += 4;
                v98 += 4;
              }

              while (v98);
              v33 = v55;
              if (v75 == (v75 & 0x1FFFFFFFCLL))
              {
                goto LABEL_18;
              }

              goto LABEL_81;
            }

            v76 = v75 & 0x1FFFFFFF0;
            v77 = (v13 + v58);
            v78 = (v34 + v58);
            v79 = (v35 + v58);
            v80 = v51;
            v81 = v75 & 0x1FFFFFFF0;
            do
            {
              v82 = vaddq_s32(v78[2], v77[2]);
              v83 = vaddq_s32(v78[1], v77[1]);
              v84 = vaddq_s32(*v78, *v77);
              v85 = vaddq_s32(v78[3], v77[3]);
              v86.i64[0] = v85.i32[0];
              v86.i64[1] = v85.i32[1];
              v87 = vcvtq_f64_s64(v86);
              v86.i64[0] = v85.i32[2];
              v86.i64[1] = v85.i32[3];
              v88 = vcvtq_f64_s64(v86);
              v86.i64[0] = v84.i32[2];
              v86.i64[1] = v84.i32[3];
              v89 = vcvtq_f64_s64(v86);
              v86.i64[0] = v84.i32[0];
              v86.i64[1] = v84.i32[1];
              v90 = vcvtq_f64_s64(v86);
              v86.i64[0] = v83.i32[2];
              v86.i64[1] = v83.i32[3];
              v91 = vcvtq_f64_s64(v86);
              v86.i64[0] = v83.i32[0];
              v86.i64[1] = v83.i32[1];
              v92 = vcvtq_f64_s64(v86);
              v86.i64[0] = v82.i32[2];
              v86.i64[1] = v82.i32[3];
              v93 = vcvtq_f64_s64(v86);
              v86.i64[0] = v82.i32[0];
              v86.i64[1] = v82.i32[1];
              v250.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v86), v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v246)))), v29), v30);
              v250.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v246)))), v29), v30);
              v250.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v90, v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v89, v246)))), v29), v30);
              v250.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v87, v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v88, v246)))), v29), v30);
              *(a3 + v80) = vqtbl4q_s8(v250, v31);
              v94 = v79[2];
              v95 = v79[3];
              v96 = *v79;
              v97 = v79[1];
              v79 += 4;
              v77[2] = vsubq_s32(v82, v94);
              v77[3] = vsubq_s32(v85, v95);
              *v77 = vsubq_s32(v84, v96);
              v77[1] = vsubq_s32(v83, v97);
              v77 += 4;
              v78 += 4;
              v80 += 16;
              v81 -= 16;
            }

            while (v81);
            v33 = v55;
            if (v75 == v76)
            {
              goto LABEL_18;
            }

            if ((v75 & 0xC) != 0)
            {
              goto LABEL_78;
            }

            v53 = v76 + v51;
          }

          v54 = v246;
          goto LABEL_73;
        }

        v36 = 0;
        v37 = v34 + 1;
        v38 = v35 + 1;
        v39 = v28;
        do
        {
          v40 = v39[-1];
          v41 = *v39;
          v42 = v37[-1];
          v43 = *v37;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
            {
              goto LABEL_25;
            }
          }

          else
          {
            v241 = v23;
            v237 = v6;
            v229 = v26;
            v233 = v25;
            v221 = v28;
            v225 = v27;
            v217 = v31;
            v213 = v33;
            v205 = v41;
            v209 = v40;
            v197 = v43;
            v201 = v42;
            sub_1003C8EA4();
            v43 = v197;
            v42 = v201;
            v41 = v205;
            v40 = v209;
            v33 = v213;
            v32 = &off_1004B0000;
            v31 = v217;
            v30.i64[0] = 0xFF000000FFLL;
            v30.i64[1] = 0xFF000000FFLL;
            v29 = 0uLL;
            v28 = v221;
            v27 = v225;
            v26 = v229;
            v25 = v233;
            v6 = v237;
            v23 = v241;
            if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
            {
LABEL_25:
              v44 = v32[3];
              v45 = xmmword_1004B0010;
              if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
              {
                goto LABEL_31;
              }

              goto LABEL_26;
            }
          }

          v242 = v23;
          v238 = v6;
          v230 = v26;
          v234 = v25;
          v222 = v28;
          v226 = v27;
          v218 = v31;
          v214 = v33;
          v206 = v41;
          v210 = v40;
          v198 = v43;
          v202 = v42;
          sub_1003C8ED8();
          v43 = v198;
          v42 = v202;
          v41 = v206;
          v40 = v210;
          v33 = v214;
          v32 = &off_1004B0000;
          v31 = v218;
          v30.i64[0] = 0xFF000000FFLL;
          v30.i64[1] = 0xFF000000FFLL;
          v29 = 0uLL;
          v28 = v222;
          v27 = v226;
          v26 = v230;
          v25 = v234;
          v6 = v238;
          v23 = v242;
          v44 = xmmword_1004B0030;
          v45 = xmmword_1004B0010;
          if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
          {
LABEL_31:
            v243 = v23;
            v239 = v6;
            v231 = v26;
            v235 = v25;
            v223 = v28;
            v227 = v27;
            v219 = v31;
            v215 = v33;
            v207 = v41;
            v211 = v40;
            v199 = v43;
            v203 = v42;
            v193 = v45;
            v195 = v44;
            sub_1003C8EA4();
            v45 = v193;
            v44 = v195;
            v43 = v199;
            v42 = v203;
            v41 = v207;
            v40 = v211;
            v33 = v215;
            v32 = &off_1004B0000;
            v31 = v219;
            v30.i64[0] = 0xFF000000FFLL;
            v30.i64[1] = 0xFF000000FFLL;
            v29 = 0uLL;
            v28 = v223;
            v27 = v227;
            v26 = v231;
            v25 = v235;
            v6 = v239;
            v23 = v243;
            if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }

LABEL_26:
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_27;
          }

LABEL_32:
          v244 = v23;
          v240 = v6;
          v232 = v26;
          v236 = v25;
          v224 = v28;
          v228 = v27;
          v220 = v31;
          v216 = v33;
          v208 = v41;
          v212 = v40;
          v200 = v43;
          v204 = v42;
          v194 = v45;
          v196 = v44;
          sub_1003C8ED8();
          v45 = v194;
          v44 = v196;
          v43 = v200;
          v42 = v204;
          v41 = v208;
          v40 = v212;
          v33 = v216;
          v32 = &off_1004B0000;
          v31 = v220;
          v30.i64[0] = 0xFF000000FFLL;
          v30.i64[1] = 0xFF000000FFLL;
          v29 = 0uLL;
          v28 = v224;
          v27 = v228;
          v26 = v232;
          v25 = v236;
          v6 = v240;
          v23 = v244;
LABEL_27:
          v46 = vaddq_s32(v42, v40);
          v47 = vaddq_s32(v43, v41);
          v48 = vmulq_n_f32(vcvtq_f32_s32(v46), *&v6);
          v49 = vmulq_n_f32(vcvtq_f32_s32(v47), *&v6);
          *(a3 + v36) = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_s32_f32(vaddq_f32(v48, vorrq_s8(vandq_s8(v45, v48), v44)))), vcvtq_s32_f32(vaddq_f32(v49, vorrq_s8(vandq_s8(xmmword_1004B0010, v49), v32[3])))));
          v39[-1] = vsubq_s32(v46, v38[-1]);
          v50 = *v38;
          v38 += 2;
          v36 += 8;
          *v39 = vsubq_s32(v47, v50);
          v39 += 2;
          v37 += 2;
        }

        while (v23 >= v36);
        v7 = v245;
        if (v36 < v245)
        {
          goto LABEL_34;
        }

LABEL_18:
        a3 += v24;
        v12 = v247;
        v11 = v248 + 1;
        v22 = v33 - 1;
        ++v25;
        if (!v33)
        {
          return;
        }
      }
    }

    v113 = 0;
    v114 = v23;
    v115 = v7;
    v116 = &v13->i32[v115];
    v117 = a3 + v7;
    v118.i64[0] = 0xFF000000FFLL;
    v118.i64[1] = 0xFF000000FFLL;
    do
    {
      v119 = v22;
      v120 = *v11;
      v121 = v11[1 - *(v12 + 8)];
      if (v7 >= 8)
      {
        v123 = 0;
        v124 = v121 + 1;
        v125 = v120 + 1;
        v126 = v13 + 1;
        do
        {
          v127 = vaddq_s32(v125[-1], v126[-1]);
          v128 = vaddq_s32(*v125, *v126);
          *(a3 + v123) = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v127), v128));
          v126[-1] = vsubq_s32(v127, v124[-1]);
          v129 = *v124;
          v124 += 2;
          v123 += 8;
          *v126 = vsubq_s32(v128, v129);
          v126 += 2;
          v125 += 2;
        }

        while (v123 <= v114);
        v122 = v123;
        if (v123 >= v7)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v122 = 0;
        if (v7 <= 0)
        {
          goto LABEL_91;
        }
      }

      v130 = v7 - v122;
      if (v130 < 4)
      {
        v131 = v122;
        goto LABEL_145;
      }

      v132 = v11;
      v133 = v117 + v113 * v24;
      v134 = a3 + v122;
      v135 = 4 * v122;
      v136 = &v13->i32[v122];
      v137 = &v120->i8[4 * v122];
      v138 = &v121->i8[4 * v122];
      v139 = &v121->i32[v115];
      v141 = a3 + v122 < v120->u64 + v115 * 4 && v137 < v133;
      v143 = v134 < v139 && v138 < v133;
      v145 = v136 < &v120->i32[v115] && v137 < v116;
      v147 = v136 < v139 && v138 < v116;
      if (v136 < v133 && v134 < v116)
      {
        v131 = v122;
        v12 = v247;
        v11 = v132;
        goto LABEL_145;
      }

      v12 = v247;
      if (v141 || v143 || v145 || v147)
      {
        v131 = v122;
        v11 = v132;
        goto LABEL_145;
      }

      if (v130 >= 0x10)
      {
        v149 = v130 & 0xFFFFFFFFFFFFFFF0;
        v150 = (v13 + v135);
        v151 = (v120 + v135);
        v152 = (v121 + v135);
        v153 = v122;
        v154 = v130 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v155 = vaddq_s32(v151[3], v150[3]);
          v156 = vaddq_s32(v151[2], v150[2]);
          v157 = vaddq_s32(v151[1], v150[1]);
          v158 = vaddq_s32(*v151, *v150);
          v251.val[3] = vminq_s32(vmaxq_s32(v155, 0), v118);
          v251.val[2] = vminq_s32(vmaxq_s32(v156, 0), v118);
          v251.val[1] = vminq_s32(vmaxq_s32(v157, 0), v118);
          v251.val[0] = vminq_s32(vmaxq_s32(v158, 0), v118);
          *(a3 + v153) = vqtbl4q_s8(v251, xmmword_1003E36F0);
          v159 = v152[2];
          v160 = v152[3];
          v161 = *v152;
          v251.val[0] = v152[1];
          v152 += 4;
          v150[2] = vsubq_s32(v156, v159);
          v150[3] = vsubq_s32(v155, v160);
          *v150 = vsubq_s32(v158, v161);
          v150[1] = vsubq_s32(v157, v251.val[0]);
          v150 += 4;
          v151 += 4;
          v153 += 16;
          v154 -= 16;
        }

        while (v154);
        v11 = v132;
        if (v130 == v149)
        {
          goto LABEL_91;
        }

        if ((v130 & 0xC) == 0)
        {
          v131 = v149 + v122;
          v11 = v132;
          do
          {
LABEL_145:
            v170 = v120->i32[v131] + v13->i32[v131];
            v171 = v170 & ~(v170 >> 31);
            if (v171 >= 255)
            {
              LOBYTE(v171) = -1;
            }

            *(a3 + v131) = v171;
            v13->i32[v131] = v170 - v121->i32[v131];
            ++v131;
          }

          while (v7 != v131);
          goto LABEL_91;
        }
      }

      else
      {
        v149 = 0;
      }

      v131 = (v130 & 0xFFFFFFFFFFFFFFFCLL) + v122;
      v162 = v149 - (v130 & 0xFFFFFFFFFFFFFFFCLL);
      v163 = v149 + v122;
      v164 = (v13 + 4 * v163);
      v165 = (v120 + 4 * v163);
      v166 = (v121 + 4 * v163);
      do
      {
        v167 = *v165++;
        v168 = vaddq_s32(v167, *v164);
        *(a3 + v163) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(v168, 0), v118)), 0).u32[0];
        v169 = *v166++;
        *v164++ = vsubq_s32(v168, v169);
        v163 += 4;
        v162 += 4;
      }

      while (v162);
      v11 = v132;
      if (v130 != (v130 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_145;
      }

LABEL_91:
      a3 += v24;
      ++v11;
      v22 = v119 - 1;
      ++v113;
    }

    while (v119);
  }
}

uint64_t sub_10036859C(void *a1)
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

void sub_100368620(void *a1)
{
  *a1 = off_10047B1A0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_100368684(void *a1)
{
  *a1 = off_10047B1A0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_1003686F8(uint64_t a1, unsigned __int16 **a2, unint64_t a3, int a4, int a5, unsigned int a6)
{
  v7 = a5;
  v10 = a2;
  v13 = (a1 + 40);
  v12 = *(a1 + 40);
  v15 = *(a1 + 28);
  v14 = *(a1 + 32);
  v16 = *(a1 + 16);
  v17 = (*(a1 + 48) - v12) >> 1;
  if (v17 == a6)
  {
    v18 = *(a1 + 24);
    if (v18)
    {
      v19 = *(a1 + 8);
      if (v18 != v19 - 1)
      {
        v179[0] = 0;
        v179[1] = 0;
        v20 = sub_1002A80E0(v179, 19);
        *(v20 + 15) = 825058682;
        *v20 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v179, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 485);
      }

      v10 = &a2[v19 - 1];
      if (!a5)
      {
        return;
      }

      goto LABEL_53;
    }
  }

  else
  {
    if (a6 <= v17)
    {
      if (a6 < v17)
      {
        *(a1 + 48) = v12 + 2 * a6;
      }
    }

    else
    {
      sub_1003690F0(a1 + 40, a6 - v17);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
  }

  bzero(v12, 2 * a6);
  v21 = *(a1 + 24);
  v22 = *(a1 + 8) - 1;
  if (v21 >= v22)
  {
    goto LABEL_52;
  }

  v23 = a6 - 8;
  if (a6 >= 8)
  {
    v27 = v23 & 0x7FFFFFF8;
    if (v27 + 9 <= a6)
    {
      v28 = a6;
    }

    else
    {
      v28 = (v23 & 0x7FFFFFF8) + 9;
    }

    v29 = 2 * v28 - ((2 * (a6 - 8)) & 0xFFFFFFF0);
    v30 = v28 - 8;
    v31 = v28 - 8 - v27;
    v32 = v31 & 0xFFFFFFFFFFFFFFF0;
    v33 = v28 & 3;
    v34 = v30 - v33 - v27;
    while (1)
    {
      v36 = 0;
      v37 = 0;
      v38 = *v10;
      v39 = (*v10 + 16);
      v40 = v12 + 2;
      v41 = 8;
      do
      {
        v42 = v41;
        v43 = v36;
        v44 = v39;
        v45 = v40;
        v12[v37 / 8] = vqaddq_u16(v12[v37 / 8], *&v38[v37]);
        v37 += 8;
        v41 += 8;
        ++v36;
        v39 += 16;
        ++v40;
      }

      while (v37 <= v23);
      if (v37 >= a6)
      {
        goto LABEL_28;
      }

      if (v31 >= 4)
      {
        v47 = 16 * v43;
        v48 = v47 + 16;
        v49 = &v12[v47 / 0x10 + 1];
        v50 = v29 + v47;
        if (v49 >= (v38 + v50) || v38 + v48 >= v12->u16 + v50)
        {
          if (v31 < 0x10)
          {
            v51 = 0;
LABEL_43:
            v46 = v42 + v31 - v33;
            v54 = v34 - v51;
            v55 = v51 + v42;
            v56 = &v38[v55];
            v57 = &v12->i8[v55 * 2];
            do
            {
              v58 = *v56++;
              *v57 = vadd_s16(*v57, v58);
              ++v57;
              v54 -= 4;
            }

            while (v54);
            if (!v33)
            {
              goto LABEL_28;
            }

            goto LABEL_46;
          }

          v52 = v31 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v53 = vaddq_s16(*v45, *v44);
            v45[-1] = vaddq_s16(v45[-1], v44[-1]);
            *v45 = v53;
            v44 += 2;
            v45 += 2;
            v52 -= 16;
          }

          while (v52);
          if (v31 == v32)
          {
            goto LABEL_28;
          }

          v51 = v31 & 0xFFFFFFFFFFFFFFF0;
          if ((v31 & 0xC) != 0)
          {
            goto LABEL_43;
          }

          v46 = v42 + v32;
        }

        else
        {
          v46 = v42;
        }
      }

      else
      {
        v46 = v42;
      }

      do
      {
LABEL_46:
        v12->i16[v46] += v38[v46];
        ++v46;
      }

      while (v46 < a6);
LABEL_28:
      v35 = *(a1 + 24) + 1;
      *(a1 + 24) = v35;
      ++v10;
      if (v35 >= *(a1 + 8) - 1)
      {
        goto LABEL_52;
      }
    }
  }

  v24 = v21 + 1;
  if (a6 > 0)
  {
    v25 = v12->u16[0];
    do
    {
      v26 = *v10;
      v25 += **v10;
      v12->i16[0] = v25;
      if (a6 != 1)
      {
        v12->i16[1] += v26[1];
        if (a6 != 2)
        {
          v12->i16[2] += v26[2];
          if (a6 != 3)
          {
            v12->i16[3] += v26[3];
            if (a6 != 4)
            {
              v12->i16[4] += v26[4];
              if (a6 != 5)
              {
                v12->i16[5] += v26[5];
                if (a6 != 6)
                {
                  v12->i16[6] += v26[6];
                }
              }
            }
          }
        }
      }

      ++v21;
      ++v10;
    }

    while (v21 < v22);
    if (v22 > v24)
    {
      v24 = v22;
    }

    *(a1 + 24) = v24;
LABEL_52:
    if (!v7)
    {
      return;
    }

    goto LABEL_53;
  }

  if (v22 > v24)
  {
    v24 = *(a1 + 8) - 1;
  }

  v10 += (v24 + ~v21) + 1;
  *(a1 + 24) = v24;
  if (v7)
  {
LABEL_53:
    v59 = (v7 - 1);
    v60 = a4;
    if (v16 != 1.0)
    {
      v61 = 0;
      v62 = vdupq_n_s32(v14);
      v63 = vdupq_n_s16(v15);
      v64 = a6;
      v65 = &v12->i16[v64];
      v178 = a3 + a6;
      v66 = vdupq_n_s32(v15);
      while (1)
      {
        v67 = v59;
        v68 = *v10;
        v69 = v10[1 - *(a1 + 8)];
        if (a6 >= 16)
        {
          break;
        }

        v70 = 0;
        if (a6 > 0)
        {
          goto LABEL_62;
        }

LABEL_55:
        a3 += v60;
        ++v10;
        LODWORD(v59) = v67 - 1;
        ++v61;
        if (!v67)
        {
          return;
        }
      }

      v71 = 0;
      v72 = v69 + 1;
      v73 = v68 + 1;
      v74 = v12 + 1;
      do
      {
        v75 = vaddq_s16(v73[-1], v74[-1]);
        v76 = vaddq_s16(*v73, *v74);
        v77 = vqaddq_u16(v75, v63);
        v78 = vqaddq_u16(v76, v63);
        v79 = vsubq_s16(v75, v72[-1]);
        v80 = vsubq_s16(v76, *v72);
        *(a3 + v71) = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_u32(vmulq_s32(v62, vmovl_u16(*v77.i8)), 0x17uLL)), vshrq_n_u32(vmulq_s32(v62, vmovl_high_u16(v77)), 0x17uLL))), vqmovn_high_s32(vqmovn_s32(vshrq_n_u32(vmulq_s32(v62, vmovl_u16(*v78.i8)), 0x17uLL)), vshrq_n_u32(vmulq_s32(v62, vmovl_high_u16(v78)), 0x17uLL)));
        v71 += 16;
        v74[-1] = v79;
        *v74 = v80;
        v72 += 2;
        v74 += 2;
        v73 += 2;
      }

      while (v71 <= (a6 - 16));
      v70 = v71;
      if (v71 >= a6)
      {
        goto LABEL_55;
      }

LABEL_62:
      v81 = a6 - v70;
      if (v81 < 4)
      {
        v82 = v70;
        goto LABEL_64;
      }

      v84 = v178 + v61 * v60;
      v85 = a3 + v70;
      v86 = 2 * v70;
      v87 = &v12->i16[v70];
      v88 = &v68->i8[2 * v70];
      v89 = &v69->i8[2 * v70];
      v90 = &v69->i16[v64];
      v92 = a3 + v70 < v68->u64 + v64 * 2 && v88 < v84;
      v94 = v85 < v90 && v89 < v84;
      v96 = v87 < &v68->i16[v64] && v88 < v65;
      v98 = v87 < v90 && v89 < v65;
      if (v87 < v84 && v85 < v65)
      {
        v82 = v70;
        goto LABEL_64;
      }

      if (v92)
      {
        v82 = v70;
      }

      else if (v94)
      {
        v82 = v70;
      }

      else if (v96)
      {
        v82 = v70;
      }

      else if (v98)
      {
        v82 = v70;
      }

      else
      {
        if (v81 < 0x10)
        {
          v100 = 0;
          goto LABEL_106;
        }

        v100 = v81 & 0xFFFFFFFFFFFFFFF0;
        v101 = &v12->i8[v86];
        v102 = &v68->i8[v86];
        v103 = (v69 + v86);
        v104 = v70;
        v105 = v81 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v106 = v101[1];
          v107 = *v102;
          v108 = v102[1];
          v102 += 2;
          v109 = vaddl_u16(*v107.i8, *v101->i8);
          v110 = vaddl_u16(*v108.i8, *v106.i8);
          v111 = vaddl_high_u16(v108, v106);
          v112 = vaddl_high_u16(v107, *v101);
          v181.val[1] = vshrq_n_u32(vmulq_s32(vaddq_s32(v112, v66), v62), 0x17uLL);
          v181.val[3] = vshrq_n_u32(vmulq_s32(vaddq_s32(v111, v66), v62), 0x17uLL);
          v181.val[2] = vshrq_n_u32(vmulq_s32(vaddq_s32(v110, v66), v62), 0x17uLL);
          v181.val[0] = vshrq_n_u32(vmulq_s32(vaddq_s32(v109, v66), v62), 0x17uLL);
          *(a3 + v104) = vqtbl4q_s8(v181, xmmword_1003E36F0);
          v113 = *v103;
          v114 = v103[1];
          v103 += 2;
          *v101 = vsubq_s16(vuzp1q_s16(v109, v112), v113);
          v101[1] = vsubq_s16(vuzp1q_s16(v110, v111), v114);
          v101 += 2;
          v104 += 16;
          v105 -= 16;
        }

        while (v105);
        if (v81 == v100)
        {
          goto LABEL_55;
        }

        if ((v81 & 0xC) != 0)
        {
LABEL_106:
          v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + v70;
          v115 = v100 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
          v116 = v100 + v70;
          v117 = (v12 + 2 * v116);
          v118 = (v68 + 2 * v116);
          v119 = (v69 + 2 * v116);
          do
          {
            v120 = *v118++;
            v121 = vaddl_u16(v120, *v117);
            *(a3 + v116) = vuzp1_s8(vmovn_s32(vshrq_n_u32(vmulq_s32(vaddq_s32(v121, v66), v62), 0x17uLL)), *v62.i8).u32[0];
            v122 = *v119++;
            *v117++ = vsub_s16(vmovn_s32(v121), v122);
            v116 += 4;
            v115 += 4;
          }

          while (v115);
          if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }

        v82 = v100 + v70;
      }

      do
      {
LABEL_64:
        v83 = v68->u16[v82] + v12->u16[v82];
        *(a3 + v82) = ((v83 + v15) * v14) >> 23;
        v12->i16[v82] = v83 - v69->i16[v82];
        ++v82;
      }

      while (a6 != v82);
      goto LABEL_55;
    }

    if (a6 < 1)
    {
      return;
    }

    v123 = a3 + a4 * v59 + a6;
    v124 = a6;
    v125 = &v12->u16[v124];
    v127 = v12->u64 + v124 * 2 > a3 && v12 < v123;
    if (a6 < 4)
    {
      v128 = v10 + 1;
      v129 = (a3 + 2);
      do
      {
        v130 = *(v128 - 1);
        v131 = v128[-*(a1 + 8)];
        v132 = *v130 + v12->u16[0];
        if (v132 >= 0xFF)
        {
          v133 = -1;
        }

        else
        {
          v133 = *v130 + v12->i16[0];
        }

        *(v129 - 2) = v133;
        v12->i16[0] = v132 - *v131;
        if (a6 != 1)
        {
          v134 = v130[1] + v12->u16[1];
          v135 = v134 >= 0xFF ? -1 : v130[1] + v12->i16[1];
          *(v129 - 1) = v135;
          v12->i16[1] = v134 - v131[1];
          if (a6 != 2)
          {
            v136 = v130[2] + v12->u16[2];
            if (v136 >= 0xFF)
            {
              v137 = -1;
            }

            else
            {
              v137 = v136;
            }

            *v129 = v137;
            v12->i16[2] = v136 - v131[2];
          }
        }

        ++v128;
        v129 += a4;
        --v7;
      }

      while (v7);
      return;
    }

    v138 = a6 & 0x7FFFFFF0;
    v139 = a6 & 0x7FFFFFFC;
    v140.i64[0] = 0xFF000000FFLL;
    v140.i64[1] = 0xFF000000FFLL;
    v141 = a3;
    do
    {
      v142 = 0;
      v143 = *v10;
      v144 = v10[1 - *(a1 + 8)];
      v145 = &(*v10)[v124];
      v146 = &v144[v124];
      v149 = v145 > a3 && v143 < v123 || a4 < 0 || v127;
      v151 = v12 < v145 && v143 < v125;
      v153 = v12 < v146 && v144 < v125;
      v154 = v144 < v123 && v146 > a3;
      v155 = v59;
      if (v154 || (v149 & 1) != 0 || v151 || v153)
      {
        do
        {
LABEL_175:
          v176 = v143[v142] + v12->u16[v142];
          if (v176 >= 0xFF)
          {
            v177 = -1;
          }

          else
          {
            v177 = v143[v142] + v12->i16[v142];
          }

          *(v141 + v142) = v177;
          v12->i16[v142] = v176 - v144[v142];
          ++v142;
        }

        while (a6 != v142);
        goto LABEL_137;
      }

      if (a6 >= 0x10)
      {
        v157 = 0;
        v158 = v10[1 - *(a1 + 8)];
        v159 = *v10;
        v160 = v12;
        do
        {
          v161 = v160[1];
          v162 = *v159;
          v163 = v159[1];
          v159 += 2;
          v164 = vaddl_u16(*v162.i8, *v160->i8);
          v165 = vaddl_u16(*v163.i8, *v161.i8);
          v166 = vaddl_high_u16(v162, *v160);
          v167 = vaddl_high_u16(v163, v161);
          v180.val[3] = vminq_u32(v167, v140);
          v180.val[1] = vminq_u32(v166, v140);
          v180.val[2] = vminq_u32(v165, v140);
          v180.val[0] = vminq_u32(v164, v140);
          *(v141 + v157) = vqtbl4q_s8(v180, xmmword_1003E36F0);
          v168 = *v158;
          v169 = v158[1];
          v158 += 2;
          v157 += 16;
          *v160 = vsubq_s16(vuzp1q_s16(v164, v166), v168);
          v160[1] = vsubq_s16(vuzp1q_s16(v165, v167), v169);
          v160 += 2;
        }

        while (v138 != v157);
        if (v138 == a6)
        {
          goto LABEL_137;
        }

        v156 = a6 & 0x7FFFFFF0;
        v142 = v156;
        if ((a6 & 0xC) == 0)
        {
          goto LABEL_175;
        }
      }

      else
      {
        v156 = 0;
      }

      v170 = (v12 + 2 * v156);
      v171 = &v143[v156];
      v172 = &v144[v156];
      do
      {
        v173 = *v171++;
        v174 = vaddl_u16(v173, *v170);
        *(v141 + v156) = vuzp1_s8(vmovn_s32(vminq_u32(v174, v140)), *v140.i8).u32[0];
        v175 = *v172++;
        *v170++ = vsub_s16(vmovn_s32(v174), v175);
        v156 += 4;
      }

      while (v139 != v156);
      v142 = a6 & 0x7FFFFFFC;
      if (v139 != a6)
      {
        goto LABEL_175;
      }

LABEL_137:
      v141 += a4;
      ++v10;
      LODWORD(v59) = v155 - 1;
    }

    while (v155);
  }
}

void sub_1003690D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1003690F0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    bzero(v11, 2 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_100369250(void *a1)
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

void sub_1003692D4(void *a1)
{
  *a1 = off_10047B228;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_100369338(void *a1)
{
  *a1 = off_10047B228;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_1003693AC(uint64_t a1, double **a2, unint64_t a3, int a4, int a5, unsigned int a6)
{
  v8 = a2;
  v11 = (a1 + 32);
  v10 = *(a1 + 32);
  v282 = *(a1 + 16);
  v12 = (*(a1 + 40) - v10) >> 3;
  if (v12 != a6)
  {
    if (a6 <= v12)
    {
      if (a6 < v12)
      {
        *(a1 + 40) = &v10[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v12);
      v10 = *v11;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
LABEL_11:
    bzero(v10, 8 * a6);
    v16 = *(a1 + 8);
    v17 = v16 - 1;
    v18 = *(a1 + 24);
    if (v18 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v8 += (v16 - v18 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v17;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v19 = *v10;
      v20 = ~v18 + v16;
      do
      {
        v21 = *v8;
        v19 = **v8 + v19;
        *v10 = v19;
        if (a6 != 1)
        {
          v10[1] = v21[1] + v10[1];
          if (a6 != 2)
          {
            v10[2] = v21[2] + v10[2];
          }
        }

        ++v8;
        --v20;
      }

      while (v20);
      goto LABEL_20;
    }

    v261 = a6;
    while (1)
    {
      v262 = *v8;
      if (v10 >= &(*v8)[v261] || v262 >= &v10[v261])
      {
        v264 = v262 + 1;
        v265 = a6 & 0x7FFFFFFC;
        v266 = (v10 + 2);
        do
        {
          v267 = vaddq_f64(*v264, *v266);
          v266[-1] = vaddq_f64(v264[-1], v266[-1]);
          *v266 = v267;
          v264 += 2;
          v266 += 2;
          v265 -= 4;
        }

        while (v265);
        v268 = a6 & 0x7FFFFFFC;
        if (v268 == a6)
        {
          goto LABEL_225;
        }
      }

      else
      {
        v268 = 0;
      }

      v269 = &v262->f64[v268];
      v270 = &v10[v268];
      v271 = a6 - v268;
      do
      {
        v272 = *v269++;
        *v270 = v272 + *v270;
        ++v270;
        --v271;
      }

      while (v271);
LABEL_225:
      ++v18;
      ++v8;
      if (v18 == v17)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = *(a1 + 8);
  if (v13 != v14 - 1)
  {
    v283[0] = 0;
    v283[1] = 0;
    v15 = sub_1002A80E0(v283, 19);
    *(v15 + 15) = 825058682;
    *v15 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v283, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v8 = &a2[v14 - 1];
LABEL_21:
  if (a5)
  {
    v22 = (a5 - 1);
    v23 = a3;
    v24 = (a6 - 2);
    v279 = a6;
    v25 = &v10[v279];
    if (v24 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = (a6 - 2);
    }

    v27 = a3 + a4 * v22 + (v26 & 0x7FFFFFFE) + 2;
    v277 = ((8 * v26) & 0x3FFFFFFF0) + 16;
    v278 = v27;
    v28 = (v10 + v277);
    v29 = v26 >> 1;
    v276 = a3 + a6;
    v31 = v10 + v277 > a3 && v10 < v27;
    v275 = v31;
    v273 = v29 + 1;
    v274 = (v29 + 1) & 0x7FFFFFF0;
    v32 = 0;
    if (v282 != 1.0)
    {
      v33 = 0uLL;
      v34.i64[0] = 0xFF000000FFLL;
      v34.i64[1] = 0xFF000000FFLL;
      while (1)
      {
        v35 = v22;
        v36 = *v8;
        v37 = v8[1 - *(a1 + 8)];
        if (a6 < 2)
        {
          v38 = 0;
          if (a6 <= 0)
          {
            goto LABEL_33;
          }

          goto LABEL_71;
        }

        if (v24 < 0x1E)
        {
          goto LABEL_63;
        }

        v39 = v37 + v277;
        v41 = v36 + v277 > a3 && v36 < v278;
        if (v39 > a3 && v37 < v278)
        {
          v41 = 1;
        }

        v44 = v10 < (v36 + v277) && v36 < v28 || v41;
        if (v10 < v39 && v37 < v28)
        {
          v44 = 1;
        }

        if (a4 < 0)
        {
          v44 = 1;
        }

        if ((v44 | v275))
        {
LABEL_63:
          v46 = 0;
          v47 = v282;
        }

        else
        {
          v82 = v274;
          v83 = v8[1 - *(a1 + 8)];
          v84 = *v8;
          v85 = v10;
          v86 = v23;
          v47 = v282;
          v87.i64[0] = 0xFF000000FFLL;
          v87.i64[1] = 0xFF000000FFLL;
          do
          {
            v88 = vaddq_f64(v85[10], v84[10]);
            v89 = vaddq_f64(v85[11], v84[11]);
            v90 = vaddq_f64(v85[8], v84[8]);
            v91 = vaddq_f64(v85[9], v84[9]);
            v92 = vaddq_f64(v85[14], v84[14]);
            v93 = vaddq_f64(v85[15], v84[15]);
            v94 = vaddq_f64(v85[12], v84[12]);
            v95 = vaddq_f64(v85[13], v84[13]);
            v96 = vaddq_f64(v85[2], v84[2]);
            v97 = vaddq_f64(v85[3], v84[3]);
            v98 = vaddq_f64(v85[1], v84[1]);
            v99 = vaddq_f64(*v85, *v84);
            v100 = vaddq_f64(v85[6], v84[6]);
            v101 = vaddq_f64(v85[7], v84[7]);
            v102 = vaddq_f64(v85[4], v84[4]);
            v103 = vaddq_f64(v85[5], v84[5]);
            *v86 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v99, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v98, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v96, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v97, v282)))), 0), v87)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v102, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v103, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v100, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v101, v282)))), 0), v87)));
            v86[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v90, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v88, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v89, v282)))), 0), v87)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v94, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v95, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v282)))), 0), v87)));
            v86 += 2;
            v104 = v83[12];
            v105 = v83[13];
            v106 = v83[10];
            v107 = v83[11];
            v108 = v83[8];
            v109 = v83[9];
            v110 = v83[6];
            v111 = v83[7];
            v112 = v83[4];
            v113 = v83[5];
            v114 = v83[2];
            v115 = v83[3];
            v116 = vsubq_f64(v93, v83[15]);
            v117 = vsubq_f64(v92, v83[14]);
            v118 = *v83;
            v119 = v83[1];
            v83 += 16;
            v85[14] = v117;
            v85[15] = v116;
            v85[12] = vsubq_f64(v94, v104);
            v85[13] = vsubq_f64(v95, v105);
            v85[10] = vsubq_f64(v88, v106);
            v85[11] = vsubq_f64(v89, v107);
            v85[8] = vsubq_f64(v90, v108);
            v85[9] = vsubq_f64(v91, v109);
            v85[6] = vsubq_f64(v100, v110);
            v85[7] = vsubq_f64(v101, v111);
            v85[4] = vsubq_f64(v102, v112);
            v85[5] = vsubq_f64(v103, v113);
            v85[2] = vsubq_f64(v96, v114);
            v85[3] = vsubq_f64(v97, v115);
            *v85 = vsubq_f64(v99, v118);
            v85[1] = vsubq_f64(v98, v119);
            v85 += 16;
            v84 += 16;
            v82 -= 16;
          }

          while (v82);
          v46 = 2 * v274;
          v33 = 0uLL;
          v34.i64[0] = 0xFF000000FFLL;
          v34.i64[1] = 0xFF000000FFLL;
          if (v273 == v274)
          {
            goto LABEL_70;
          }
        }

        v48 = &v10[v46];
        v49 = &v36[v46];
        v50 = &v37[v46];
        do
        {
          v51 = (v23 + v46);
          v52 = *v49++;
          v53 = vaddq_f64(*v48, v52);
          v54 = rint(v47 * v53.f64[0]);
          v55 = v54 & ~(v54 >> 31);
          if (v55 >= 255)
          {
            LOBYTE(v55) = -1;
          }

          *v51 = v55;
          v56 = rint(vmuld_lane_f64(v47, v53, 1));
          v57 = v56 & ~(v56 >> 31);
          if (v57 >= 255)
          {
            LOBYTE(v57) = -1;
          }

          v51[1] = v57;
          v58 = *v50++;
          *v48++ = vsubq_f64(v53, v58);
          v46 += 2;
        }

        while (v46 <= v24);
LABEL_70:
        v38 = v46;
        if (v46 >= a6)
        {
          goto LABEL_33;
        }

LABEL_71:
        v59 = a6 - v38;
        if (v59 < 4 || ((v65 = v276 + v32 * a4, v66 = v23 + v38, v67 = v38, v68 = &v10[v38], v69 = &v36[v38], v70 = &v37[v38], v71 = &v37[v279], v23 + v38 < &v36[v279]) ? (v72 = v69 >= v65) : (v72 = 1), v72 ? (v73 = 0) : (v73 = 1), v66 < v71 ? (v74 = v70 >= v65) : (v74 = 1), v74 ? (v75 = 0) : (v75 = 1), v68 < &v36[v279] ? (v76 = v69 >= v25) : (v76 = 1), v76 ? (v77 = 0) : (v77 = 1), v68 < v71 ? (v78 = v70 >= v25) : (v78 = 1), v78 ? (v79 = 0) : (v79 = 1), v68 < v65 ? (v80 = v66 >= v25) : (v80 = 1), !v80 || (v73 & 1) != 0 || (v75 & 1) != 0 || (v77 & 1) != 0 || (v79 & 1) != 0))
        {
          v60 = v38;
LABEL_73:
          v61 = v282;
          do
          {
LABEL_74:
            v62 = v10[v60] + v36[v60];
            v63 = rint(v61 * v62);
            v64 = v63 & ~(v63 >> 31);
            if (v64 >= 255)
            {
              LOBYTE(v64) = -1;
            }

            *(v23 + v60) = v64;
            v10[v60] = v62 - v37[v60];
            ++v60;
          }

          while (a6 != v60);
          goto LABEL_33;
        }

        if (v59 >= 0x10)
        {
          v81 = v59 & 0xFFFFFFFFFFFFFFF0;
          v120 = &v10[v67];
          v121 = &v36[v67];
          v122 = &v37[v67];
          v123 = v38;
          v124 = v59 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v125 = vaddq_f64(v120[6], v121[6]);
            v126 = vaddq_f64(v120[7], v121[7]);
            v127 = vaddq_f64(v120[4], v121[4]);
            v128 = vaddq_f64(v120[5], v121[5]);
            v129 = vaddq_f64(v120[2], v121[2]);
            v130 = vaddq_f64(v120[3], v121[3]);
            v131 = vaddq_f64(v120[1], v121[1]);
            v132 = vaddq_f64(*v120, *v121);
            v285.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v132, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v131, v282)))), v33), v34);
            v285.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v129, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v130, v282)))), v33), v34);
            v285.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v127, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v128, v282)))), v33), v34);
            v285.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v125, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v126, v282)))), v33), v34);
            *(v23 + v123) = vqtbl4q_s8(v285, xmmword_1003E36F0);
            v133 = *(v122 + 12);
            v134 = *(v122 + 14);
            v135 = *(v122 + 8);
            v136 = *(v122 + 10);
            v285.val[0] = *(v122 + 2);
            v285.val[1] = *(v122 + 3);
            v285.val[2] = *v122;
            v285.val[3] = *(v122 + 1);
            v122 += 16;
            v120[6] = vsubq_f64(v125, v133);
            v120[7] = vsubq_f64(v126, v134);
            v120[4] = vsubq_f64(v127, v135);
            v120[5] = vsubq_f64(v128, v136);
            v120[2] = vsubq_f64(v129, v285.val[0]);
            v120[3] = vsubq_f64(v130, v285.val[1]);
            *v120 = vsubq_f64(v132, v285.val[2]);
            v120[1] = vsubq_f64(v131, v285.val[3]);
            v120 += 8;
            v121 += 8;
            v123 += 16;
            v124 -= 16;
          }

          while (v124);
          if (v59 == v81)
          {
            goto LABEL_33;
          }

          if ((v59 & 0xC) == 0)
          {
            v60 = v81 + v38;
            goto LABEL_73;
          }
        }

        else
        {
          v81 = 0;
        }

        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL) + v38;
        v137 = v81 - (v59 & 0xFFFFFFFFFFFFFFFCLL);
        v138 = v81 + v38;
        v139 = &v10[v138];
        v140 = &v36[v138];
        v141 = &v37[v138];
        v61 = v282;
        do
        {
          v142 = *v140;
          v143 = v140[1];
          v140 += 2;
          v144 = vaddq_f64(v139[1], v143);
          v145 = vaddq_f64(*v139, v142);
          *(v23 + v138) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v145, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v144, v282)))), v33), v34)), *&v282).u32[0];
          v146 = *v141;
          v147 = v141[1];
          v141 += 2;
          *v139 = vsubq_f64(v145, v146);
          v139[1] = vsubq_f64(v144, v147);
          v139 += 2;
          v138 += 4;
          v137 += 4;
        }

        while (v137);
        if (v59 != (v59 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_74;
        }

LABEL_33:
        v23 += a4;
        ++v8;
        LODWORD(v22) = v35 - 1;
        ++v32;
        if (!v35)
        {
          return;
        }
      }
    }

    v148.i64[0] = 0xFF000000FFLL;
    v148.i64[1] = 0xFF000000FFLL;
    v149 = xmmword_1003E36F0;
    v150 = a3;
    do
    {
      v151 = v22;
      v152 = *v8;
      v153 = v8[1 - *(a1 + 8)];
      if (a6 < 2)
      {
        v154 = 0;
        if (a6 <= 0)
        {
          goto LABEL_127;
        }

        goto LABEL_165;
      }

      if (v24 <= 0x1D)
      {
        goto LABEL_157;
      }

      v155 = v153 + v277;
      v157 = v152 + v277 > a3 && v152 < v278;
      if (v155 > a3 && v153 < v278)
      {
        v157 = 1;
      }

      v160 = v10 < (v152 + v277) && v152 < v28 || v157;
      if (v10 < v155 && v153 < v28)
      {
        v160 = 1;
      }

      if (a4 < 0)
      {
        v160 = 1;
      }

      if ((v160 | v275))
      {
LABEL_157:
        v162 = 0;
      }

      else
      {
        v196 = v274;
        v197 = v8[1 - *(a1 + 8)];
        v198 = *v8;
        v199 = v10;
        v200 = v150;
        do
        {
          v201 = vaddq_f64(v199[10], v198[10]);
          v202 = vaddq_f64(v199[11], v198[11]);
          v203 = vaddq_f64(v199[8], v198[8]);
          v204 = vaddq_f64(v199[9], v198[9]);
          v205 = vaddq_f64(v199[14], v198[14]);
          v206 = vaddq_f64(v199[15], v198[15]);
          v207 = vaddq_f64(v199[12], v198[12]);
          v208 = vaddq_f64(v199[13], v198[13]);
          v209 = vaddq_f64(v199[2], v198[2]);
          v210 = vaddq_f64(v199[3], v198[3]);
          v211 = vaddq_f64(*v199, *v198);
          v212 = vaddq_f64(v199[1], v198[1]);
          v213 = vaddq_f64(v199[6], v198[6]);
          v214 = vaddq_f64(v199[7], v198[7]);
          v215 = vaddq_f64(v199[4], v198[4]);
          v216 = vaddq_f64(v199[5], v198[5]);
          *v200 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v211)), vcvtq_s64_f64(vrndxq_f64(v212))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v209)), vcvtq_s64_f64(vrndxq_f64(v210))), 0), v148)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v215)), vcvtq_s64_f64(vrndxq_f64(v216))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v213)), vcvtq_s64_f64(vrndxq_f64(v214))), 0), v148)));
          v200[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v203)), vcvtq_s64_f64(vrndxq_f64(v204))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v201)), vcvtq_s64_f64(vrndxq_f64(v202))), 0), v148)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v207)), vcvtq_s64_f64(vrndxq_f64(v208))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v205)), vcvtq_s64_f64(vrndxq_f64(v206))), 0), v148)));
          v200 += 2;
          v217 = v197[12];
          v218 = v197[13];
          v219 = v197[10];
          v220 = v197[11];
          v221 = v197[8];
          v222 = v197[9];
          v223 = v197[6];
          v224 = v197[7];
          v225 = v197[4];
          v226 = v197[5];
          v227 = v197[2];
          v228 = v197[3];
          v229 = vsubq_f64(v206, v197[15]);
          v230 = vsubq_f64(v205, v197[14]);
          v231 = *v197;
          v232 = v197[1];
          v197 += 16;
          v199[14] = v230;
          v199[15] = v229;
          v199[12] = vsubq_f64(v207, v217);
          v199[13] = vsubq_f64(v208, v218);
          v199[10] = vsubq_f64(v201, v219);
          v199[11] = vsubq_f64(v202, v220);
          v199[8] = vsubq_f64(v203, v221);
          v199[9] = vsubq_f64(v204, v222);
          v199[6] = vsubq_f64(v213, v223);
          v199[7] = vsubq_f64(v214, v224);
          v199[4] = vsubq_f64(v215, v225);
          v199[5] = vsubq_f64(v216, v226);
          v199[2] = vsubq_f64(v209, v227);
          v199[3] = vsubq_f64(v210, v228);
          *v199 = vsubq_f64(v211, v231);
          v199[1] = vsubq_f64(v212, v232);
          v199 += 16;
          v198 += 16;
          v196 -= 16;
        }

        while (v196);
        v162 = 2 * v274;
        v149 = xmmword_1003E36F0;
        if (v273 == v274)
        {
          goto LABEL_164;
        }
      }

      v163 = &v153[v162];
      v164 = &v152[v162];
      v165 = &v10[v162];
      do
      {
        v166 = (v150 + v162);
        v167 = *v164++;
        v168 = vaddq_f64(*v165, v167);
        v169 = rint(v168.f64[0]);
        v170 = v169 & ~(v169 >> 31);
        if (v170 >= 255)
        {
          LOBYTE(v170) = -1;
        }

        *v166 = v170;
        v171 = rint(v168.f64[1]);
        v172 = v171 & ~(v171 >> 31);
        if (v172 >= 255)
        {
          LOBYTE(v172) = -1;
        }

        v166[1] = v172;
        v173 = *v163++;
        *v165++ = vsubq_f64(v168, v173);
        v162 += 2;
      }

      while (v162 <= v24);
LABEL_164:
      v154 = v162;
      if (v162 >= a6)
      {
        goto LABEL_127;
      }

LABEL_165:
      v174 = a6 - v154;
      if (v174 < 4)
      {
        v175 = v154;
        goto LABEL_167;
      }

      v179 = v276 + v32 * a4;
      v180 = v150 + v154;
      v181 = v154;
      v182 = &v10[v154];
      v183 = &v152[v154];
      v184 = &v153[v154];
      v185 = &v153[v279];
      v187 = v150 + v154 < &v152[v279] && v183 < v179;
      v189 = v180 < v185 && v184 < v179;
      v191 = v182 < &v152[v279] && v183 < v25;
      v193 = v182 < v185 && v184 < v25;
      if (v182 < v179 && v180 < v25)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v187)
      {
        v175 = v154;
        do
        {
LABEL_167:
          v176 = v10[v175] + v152[v175];
          v177 = rint(v176);
          v178 = v177 & ~(v177 >> 31);
          if (v178 >= 255)
          {
            LOBYTE(v178) = -1;
          }

          *(v150 + v175) = v178;
          v10[v175] = v176 - v153[v175];
          ++v175;
        }

        while (a6 != v175);
        goto LABEL_127;
      }

      if (v189)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v191)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v193)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v174 >= 0x10)
      {
        v195 = v174 & 0xFFFFFFFFFFFFFFF0;
        v233 = &v10[v181];
        v234 = &v152[v181];
        v235 = &v153[v181];
        v236 = v154;
        v237 = v174 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v238 = vaddq_f64(v233[6], v234[6]);
          v239 = vaddq_f64(v233[7], v234[7]);
          v240 = vaddq_f64(v233[4], v234[4]);
          v241 = vaddq_f64(v233[5], v234[5]);
          v242 = vaddq_f64(v233[2], v234[2]);
          v243 = vaddq_f64(v233[3], v234[3]);
          v244 = vaddq_f64(*v233, *v234);
          v245 = vaddq_f64(v233[1], v234[1]);
          v284.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v238)), vcvtq_s64_f64(vrndxq_f64(v239))), 0), v148);
          v284.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v240)), vcvtq_s64_f64(vrndxq_f64(v241))), 0), v148);
          v284.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v242)), vcvtq_s64_f64(vrndxq_f64(v243))), 0), v148);
          v284.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v244)), vcvtq_s64_f64(vrndxq_f64(v245))), 0), v148);
          *(v150 + v236) = vqtbl4q_s8(v284, v149);
          v246 = *(v235 + 12);
          v247 = *(v235 + 14);
          v248 = *(v235 + 8);
          v284.val[0] = *(v235 + 5);
          v284.val[1] = *(v235 + 2);
          v284.val[2] = *(v235 + 3);
          v284.val[3] = *v235;
          v249 = *(v235 + 2);
          v235 += 16;
          v233[6] = vsubq_f64(v238, v246);
          v233[7] = vsubq_f64(v239, v247);
          v233[4] = vsubq_f64(v240, v248);
          v233[5] = vsubq_f64(v241, v284.val[0]);
          v233[2] = vsubq_f64(v242, v284.val[1]);
          v233[3] = vsubq_f64(v243, v284.val[2]);
          *v233 = vsubq_f64(v244, v284.val[3]);
          v233[1] = vsubq_f64(v245, v249);
          v233 += 8;
          v234 += 8;
          v236 += 16;
          v237 -= 16;
        }

        while (v237);
        if (v174 == v195)
        {
          goto LABEL_127;
        }

        if ((v174 & 0xC) == 0)
        {
          v175 = v195 + v154;
          goto LABEL_167;
        }
      }

      else
      {
        v195 = 0;
      }

      v175 = (v174 & 0xFFFFFFFFFFFFFFFCLL) + v154;
      v250 = v195 - (v174 & 0xFFFFFFFFFFFFFFFCLL);
      v251 = v195 + v154;
      v252 = &v10[v251];
      v253 = &v152[v251];
      v254 = &v153[v251];
      do
      {
        v256 = *v253;
        v255 = v253[1];
        v253 += 2;
        v257 = vaddq_f64(*v252, v256);
        v258 = vaddq_f64(v252[1], v255);
        *(v150 + v251) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v257)), vcvtq_s64_f64(vrndxq_f64(v258))), 0), v148)), 0).u32[0];
        v259 = *v254;
        v260 = v254[1];
        v254 += 2;
        *v252 = vsubq_f64(v257, v259);
        v252[1] = vsubq_f64(v258, v260);
        v252 += 2;
        v251 += 4;
        v250 += 4;
      }

      while (v250);
      if (v174 != (v174 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_167;
      }

LABEL_127:
      v150 += a4;
      ++v8;
      LODWORD(v22) = v151 - 1;
      ++v32;
    }

    while (v151);
  }
}

void sub_10036A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036A3BC(void *a1)
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

void sub_10036A440(void *a1)
{
  *a1 = off_10047B2B0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036A4A4(void *a1)
{
  *a1 = off_10047B2B0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036A518(uint64_t a1, int32x4_t **a2, uint16x8_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, __n128 a14)
{
  v14 = a6;
  v18 = a2;
  v19 = a1;
  v21 = (a1 + 32);
  v20 = *(a1 + 32);
  v183 = *(a1 + 16);
  v22 = (*(a1 + 40) - v20) >> 2;
  if (v22 == a6)
  {
    v23 = *(a1 + 24);
    if (v23)
    {
      v24 = *(a1 + 8);
      if (v23 != v24 - 1)
      {
        v188[0] = 0;
        v188[1] = 0;
        v25 = sub_1002A80E0(v188, 19);
        *(v25 + 15) = 825058682;
        *v25 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v188, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 741);
      }

      v18 = &a2[v24 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v22)
    {
      if (a6 < v22)
      {
        *(a1 + 40) = v20 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v22);
      v20 = *v21;
    }

    *(v19 + 24) = 0;
  }

  bzero(v20, 4 * v14);
  v26 = *(v19 + 24);
  v27 = *(v19 + 8);
  if (v26 < v27 - 1)
  {
    v28 = (v14 - 4);
    if (v14 >= 4)
    {
      if (((v28 & 0x7FFFFFFC) + 5) <= v14)
      {
        v122 = v14;
      }

      else
      {
        v122 = (v28 & 0x7FFFFFFC) + 5;
      }

      v123 = 4 * v122 - ((4 * (v14 - 4)) & 0x1FFFFFFF0);
      v124 = v122 - (v28 & 0x7FFFFFFC) - 4;
      v125 = v124 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v127 = 0;
        v128 = 0;
        v129 = *v18;
        i64 = (*v18)[2].i64;
        v131 = v20 + 2;
        v132 = 4;
        do
        {
          v133 = v132;
          v134 = v127;
          v135 = i64;
          v136 = v131;
          v20[v128 / 4] = vaddq_s32(v129[v128 / 4], v20[v128 / 4]);
          v128 += 4;
          v132 += 4;
          ++v127;
          i64 += 16;
          ++v131;
        }

        while (v128 <= v28);
        if (v128 < v14)
        {
          if (v124 <= 7)
          {
            goto LABEL_107;
          }

          v137 = 16 * v134;
          v138 = v137 + 16;
          v139 = &v20[v137 / 0x10 + 1];
          v140 = v123 + v137;
          if (v139 < &v129->i8[v140] && &v129->i8[v138] < &v20->i8[v140])
          {
            goto LABEL_107;
          }

          v133 += v125;
          v141 = v124 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v142 = vaddq_s32(*v136, *v135);
            v136[-1] = vaddq_s32(v136[-1], v135[-1]);
            *v136 = v142;
            v135 += 2;
            v136 += 2;
            v141 -= 8;
          }

          while (v141);
          if (v124 != v125)
          {
LABEL_107:
            do
            {
              v20->i32[v133] += v129->i32[v133];
              ++v133;
            }

            while (v133 < v14);
          }
        }

        v126 = *(v19 + 24) + 1;
        *(v19 + 24) = v126;
        ++v18;
      }

      while (v126 < *(v19 + 8) - 1);
    }

    else if (v14 >= 1)
    {
      do
      {
        v85 = *v18;
        v20->i32[0] += (*v18)->i32[0];
        if (v14 != 1)
        {
          v20->i32[1] += v85->i32[1];
          if (v14 != 2)
          {
            v20->i32[2] += v85->i32[2];
          }
        }

        v84 = *(v19 + 24) + 1;
        *(v19 + 24) = v84;
        ++v18;
      }

      while (v84 < *(v19 + 8) - 1);
    }

    else
    {
      v18 += (v27 - v26 - 2) + 1;
      *(v19 + 24) = v27 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v29 = a5 - 1;
    v30 = (v14 - 8);
    a14.n128_f32[0] = v183;
    if (v183 != 1.0)
    {
      v31 = &v20->i32[1];
      v32 = v20 + 1;
      v33 = 0uLL;
      v34.i64[0] = 0xFFFF0000FFFFLL;
      v34.i64[1] = 0xFFFF0000FFFFLL;
      v35 = &off_1004B0000;
      v184 = v19;
      v185 = v14;
      while (1)
      {
        v36 = v29;
        v37 = *v18;
        v186 = v18;
        v187 = a3;
        v38 = v18[1 - *(v19 + 8)];
        v39 = 0;
        if (v14 >= 8)
        {
          break;
        }

LABEL_20:
        v14 = v185;
        if (v39 < v185)
        {
          v40 = ~v39 + v185;
          if (v40 <= 6 || ((v60 = 4 * v39, v61 = 4 * (v39 + v40), v62 = &v31[v61 / 4], v63 = v37->u64 + v61 + 4, &v20->i8[v60] < v38->i64 + v61 + 4) ? (v64 = &v38[v39 / 4] >= v62) : (v64 = 1), v64 ? (v65 = 0) : (v65 = 1), &v37[v39 / 4] < v62 ? (v66 = v20->u64 + v60 >= v63) : (v66 = 1), !v66 || (v65 & 1) != 0))
          {
            v41 = v39;
            v42 = v183;
            do
            {
LABEL_23:
              v43 = v37->i32[v41] + v20->i32[v41];
              v44 = rint(v42 * v43);
              v45 = v44 & ~(v44 >> 31);
              if (v45 >= 0xFFFF)
              {
                LOWORD(v45) = -1;
              }

              v187->i16[v41] = v45;
              v20->i32[v41] = v43 - v38->i32[v41];
              ++v41;
            }

            while (v41 < v185);
            goto LABEL_18;
          }

          v67 = v40 + 1;
          v68 = (v40 + 1) & 0x1FFFFFFF8;
          v41 = v68 + v39;
          v69 = (v20 + v60);
          v70 = (v37 + v60);
          v71 = 2 * v39;
          v72 = (v38 + v60);
          v73 = v68;
          v42 = v183;
          do
          {
            v74 = *v70;
            v75 = v70[1];
            v70 += 2;
            v76 = vaddq_s32(v75, v69[1]);
            v77 = vaddq_s32(v74, *v69);
            v78.i64[0] = v77.i32[2];
            v78.i64[1] = v77.i32[3];
            v79 = vcvtq_f64_s64(v78);
            v78.i64[0] = v77.i32[0];
            v78.i64[1] = v77.i32[1];
            v80 = vcvtq_f64_s64(v78);
            v78.i64[0] = v76.i32[2];
            v78.i64[1] = v76.i32[3];
            v81 = vcvtq_f64_s64(v78);
            v78.i64[0] = v76.i32[0];
            v78.i64[1] = v76.i32[1];
            *(v187 + v71) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v80, v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v79, v183)))), v33), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v78), v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v81, v183)))), v33), v34));
            v82 = *v72;
            v83 = v72[1];
            v72 += 2;
            *v69 = vsubq_s32(v77, v82);
            v69[1] = vsubq_s32(v76, v83);
            v69 += 2;
            v71 += 16;
            v73 -= 8;
          }

          while (v73);
          if (v67 != v68)
          {
            goto LABEL_23;
          }
        }

LABEL_18:
        a3 = (v187 + a4);
        v18 = v186 + 1;
        v29 = v36 - 1;
        v19 = v184;
        if (!v36)
        {
          return;
        }
      }

      v46 = v37 + 1;
      v47 = v38 + 1;
      v48 = v32;
      while (1)
      {
        v49 = v48[-1];
        v50 = *v48;
        v51 = v46[-1];
        v52 = *v46;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_30;
          }
        }

        else
        {
          v179 = v30;
          v175 = a14;
          v167 = v32;
          v171 = v31;
          v163 = v36;
          v155 = v50;
          v159 = v49;
          v147 = v52;
          v151 = v51;
          sub_1003C8EA4();
          v52 = v147;
          v51 = v151;
          v50 = v155;
          v49 = v159;
          v36 = v163;
          v35 = &off_1004B0000;
          v34.i64[0] = 0xFFFF0000FFFFLL;
          v34.i64[1] = 0xFFFF0000FFFFLL;
          v33 = 0uLL;
          v32 = v167;
          v31 = v171;
          a14 = v175;
          v30 = v179;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_30:
            v53 = v35[3];
            v54 = xmmword_1004B0010;
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_31;
            }

            goto LABEL_36;
          }
        }

        v180 = v30;
        v176 = a14;
        v168 = v32;
        v172 = v31;
        v164 = v36;
        v156 = v50;
        v160 = v49;
        v148 = v52;
        v152 = v51;
        sub_1003C8ED8();
        v52 = v148;
        v51 = v152;
        v50 = v156;
        v49 = v160;
        v36 = v164;
        v35 = &off_1004B0000;
        v34.i64[0] = 0xFFFF0000FFFFLL;
        v34.i64[1] = 0xFFFF0000FFFFLL;
        v33 = 0uLL;
        v32 = v168;
        v31 = v172;
        a14 = v176;
        v30 = v180;
        v53 = xmmword_1004B0030;
        v54 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_31:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }

LABEL_36:
        v181 = v30;
        v177 = a14;
        v169 = v32;
        v173 = v31;
        v165 = v36;
        v157 = v50;
        v161 = v49;
        v149 = v52;
        v153 = v51;
        v143 = v54;
        v145 = v53;
        sub_1003C8EA4();
        v54 = v143;
        v53 = v145;
        v52 = v149;
        v51 = v153;
        v50 = v157;
        v49 = v161;
        v36 = v165;
        v35 = &off_1004B0000;
        v34.i64[0] = 0xFFFF0000FFFFLL;
        v34.i64[1] = 0xFFFF0000FFFFLL;
        v33 = 0uLL;
        v32 = v169;
        v31 = v173;
        a14 = v177;
        v30 = v181;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_37:
          v182 = v30;
          v178 = a14;
          v170 = v32;
          v174 = v31;
          v166 = v36;
          v158 = v50;
          v162 = v49;
          v150 = v52;
          v154 = v51;
          v144 = v54;
          v146 = v53;
          sub_1003C8ED8();
          v54 = v144;
          v53 = v146;
          v52 = v150;
          v51 = v154;
          v50 = v158;
          v49 = v162;
          v36 = v166;
          v35 = &off_1004B0000;
          v34.i64[0] = 0xFFFF0000FFFFLL;
          v34.i64[1] = 0xFFFF0000FFFFLL;
          v33 = 0uLL;
          v32 = v170;
          v31 = v174;
          a14 = v178;
          v30 = v182;
        }

LABEL_32:
        v55 = vaddq_s32(v51, v49);
        v56 = vaddq_s32(v52, v50);
        v57 = vmulq_n_f32(vcvtq_f32_s32(v55), a14.n128_f32[0]);
        v58 = vmulq_n_f32(vcvtq_f32_s32(v56), a14.n128_f32[0]);
        *a3++ = vqmovn_high_u32(vqmovn_u32(vcvtq_s32_f32(vaddq_f32(v57, vorrq_s8(vandq_s8(v54, v57), v53)))), vcvtq_s32_f32(vaddq_f32(v58, vorrq_s8(vandq_s8(xmmword_1004B0010, v58), v35[3]))));
        v48[-1] = vsubq_s32(v55, v47[-1]);
        v59 = *v47;
        v47 += 2;
        *v48 = vsubq_s32(v56, v59);
        v48 += 2;
        v46 += 2;
        v39 += 8;
        if (v30 < v39)
        {
          goto LABEL_20;
        }
      }
    }

    v86 = v30;
    v87 = v14;
    v88 = v20->u64 + v87 * 4;
    v89.i64[0] = 0xFFFF0000FFFFLL;
    v89.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v90 = v29;
      v91 = *v18;
      v92 = v18[1 - *(v19 + 8)];
      if (v14 >= 8)
      {
        v94 = 0;
        v95 = v92 + 1;
        v96 = v91 + 1;
        v97 = v20 + 1;
        v98 = a3;
        do
        {
          v99 = vaddq_s32(v96[-1], v97[-1]);
          v100 = vaddq_s32(*v96, *v97);
          *v98++ = vqmovn_high_u32(vqmovn_u32(v99), v100);
          v97[-1] = vsubq_s32(v99, v95[-1]);
          v101 = *v95;
          v95 += 2;
          v94 += 8;
          *v97 = vsubq_s32(v100, v101);
          v97 += 2;
          v96 += 2;
        }

        while (v94 <= v86);
        v93 = v94;
        if (v94 >= v14)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v93 = 0;
        if (v14 <= 0)
        {
          goto LABEL_59;
        }
      }

      v102 = v14 - v93;
      if (v102 <= 7 || ((v106 = 4 * v93, v107 = &v20->i32[v93], v107 < &v92->i32[v87]) ? (v108 = v92 + 4 * v93 >= v88) : (v108 = 1), v108 ? (v109 = 0) : (v109 = 1), v91 + 4 * v93 < v88 ? (v110 = v107 >= &v91->i32[v87]) : (v110 = 1), !v110 || (v109 & 1) != 0))
      {
        v103 = v93;
        do
        {
LABEL_68:
          v104 = v91->i32[v103] + v20->i32[v103];
          v105 = v104 & ~(v104 >> 31);
          if (v105 >= 0xFFFF)
          {
            LOWORD(v105) = -1;
          }

          a3->i16[v103] = v105;
          v20->i32[v103] = v104 - v92->i32[v103];
          ++v103;
        }

        while (v14 != v103);
        goto LABEL_59;
      }

      v103 = (v102 & 0xFFFFFFFFFFFFFFF8) + v93;
      v111 = (v20 + v106);
      v112 = (v91 + v106);
      v113 = 2 * v93;
      v114 = (v92 + v106);
      v115 = v102 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v116 = *v112;
        v117 = v112[1];
        v112 += 2;
        v118 = vaddq_s32(v117, v111[1]);
        v119 = vaddq_s32(v116, *v111);
        *(a3 + v113) = vuzp1q_s16(vminq_s32(vmaxq_s32(v119, 0), v89), vminq_s32(vmaxq_s32(v118, 0), v89));
        v120 = *v114;
        v121 = v114[1];
        v114 += 2;
        *v111 = vsubq_s32(v119, v120);
        v111[1] = vsubq_s32(v118, v121);
        v111 += 2;
        v113 += 16;
        v115 -= 8;
      }

      while (v115);
      if (v102 != (v102 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_68;
      }

LABEL_59:
      a3 = (a3 + a4);
      ++v18;
      v29 = v90 - 1;
    }

    while (v90);
  }
}

uint64_t sub_10036AE60(void *a1)
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

void sub_10036AEE4(void *a1)
{
  *a1 = off_10047B338;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036AF48(void *a1)
{
  *a1 = off_10047B338;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036AFBC(uint64_t a1, double **a2, int16x8_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v175 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 3;
  if (v14 != a6)
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = &v12[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
LABEL_11:
    bzero(v12, 8 * a6);
    v16 = *(a1 + 8);
    v18 = v16 - 1;
    v19 = *(a1 + 24);
    if (v19 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v10 += (v16 - v19 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v18;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v20 = *v12;
      v21 = ~v19 + v16;
      do
      {
        v22 = *v10;
        v20 = **v10 + v20;
        *v12 = v20;
        if (a6 != 1)
        {
          v12[1] = v22[1] + v12[1];
          if (a6 != 2)
          {
            v12[2] = v22[2] + v12[2];
          }
        }

        ++v10;
        --v21;
      }

      while (v21);
      goto LABEL_20;
    }

    v163 = a6;
    while (1)
    {
      v164 = *v10;
      if (v12 >= &(*v10)[v163] || v164 >= &v12[v163])
      {
        v166 = v164 + 1;
        v167 = a6 & 0x7FFFFFFC;
        v168 = (v12 + 2);
        do
        {
          v169 = vaddq_f64(*v166, *v168);
          v168[-1] = vaddq_f64(v166[-1], v168[-1]);
          *v168 = v169;
          v166 += 2;
          v168 += 2;
          v167 -= 4;
        }

        while (v167);
        v170 = a6 & 0x7FFFFFFC;
        if (v170 == a6)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v170 = 0;
      }

      v171 = &v164->f64[v170];
      v172 = &v12[v170];
      v173 = a6 - v170;
      do
      {
        v174 = *v171++;
        *v172 = v174 + *v172;
        ++v172;
        --v173;
      }

      while (v173);
LABEL_133:
      ++v19;
      ++v10;
      if (v19 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v16 = *(a1 + 8);
  if (v15 != v16 - 1)
  {
    v176[0] = 0;
    v176[1] = 0;
    v17 = sub_1002A80E0(v176, 19);
    *(v17 + 15) = 825058682;
    *v17 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v176, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v10 = &a2[v16 - 1];
LABEL_21:
  if (a5)
  {
    v23 = a5 - 1;
    v24 = 1 - v16;
    v25 = a4;
    v26 = a6 - 2;
    v27 = a6;
    v28 = &v12[v27];
    if (v26 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = a6 - 2;
    }

    v30 = ((8 * v29) & 0x3FFFFFFF0) + 16;
    v31 = (v12 + v30);
    v32 = (v29 >> 1) + 1;
    v33 = v32 & 0x7FFFFFF8;
    if (v175 != 1.0)
    {
      v34.i64[0] = 0xFFFF0000FFFFLL;
      v34.i64[1] = 0xFFFF0000FFFFLL;
      while (1)
      {
        v35 = v23;
        v36 = *v10;
        v37 = v10[v24];
        if (a6 < 2)
        {
          v38 = 0;
          if (a6 <= 0)
          {
            goto LABEL_27;
          }

          goto LABEL_41;
        }

        if (v26 >= 0xE)
        {
          v39 = 0;
          v59 = v12 < (v37 + v30) && v37 < v31;
          if (v36 >= v31 || v12 >= (v36 + v30))
          {
            v40 = v175;
            if (!v59)
            {
              v61 = v32 & 0x7FFFFFF8;
              v62 = v10[v24];
              v63 = *v10;
              v64 = v12;
              v65 = a3;
              do
              {
                v66 = vaddq_f64(v64[6], v63[6]);
                v67 = vaddq_f64(v64[7], v63[7]);
                v68 = vaddq_f64(v64[4], v63[4]);
                v69 = vaddq_f64(v64[5], v63[5]);
                v70 = vaddq_f64(v64[2], v63[2]);
                v71 = vaddq_f64(v64[3], v63[3]);
                v72 = vaddq_f64(v64[1], v63[1]);
                v73 = vaddq_f64(*v64, *v63);
                *v65 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v73, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v72, v175)))), 0), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v70, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v71, v175)))), 0), v34));
                v65[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v68, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v69, v175)))), 0), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v66, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v67, v175)))), 0), v34));
                v65 += 2;
                v74 = v62[2];
                v75 = vsubq_f64(v71, v62[3]);
                v76 = vsubq_f64(v73, *v62);
                v77 = vsubq_f64(v72, v62[1]);
                v78 = vsubq_f64(v68, v62[4]);
                v79 = vsubq_f64(v69, v62[5]);
                v80 = vsubq_f64(v67, v62[7]);
                v64[6] = vsubq_f64(v66, v62[6]);
                v64[7] = v80;
                v64[4] = v78;
                v64[5] = v79;
                *v64 = v76;
                v64[1] = v77;
                v64[2] = vsubq_f64(v70, v74);
                v64[3] = v75;
                v64 += 8;
                v63 += 8;
                v62 += 8;
                v61 -= 8;
              }

              while (v61);
              v39 = 2 * (v32 & 0x7FFFFFF8);
              if (v32 == v33)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_34;
          }
        }

        else
        {
          v39 = 0;
        }

        v40 = v175;
LABEL_34:
        v41 = &v12[v39];
        v42 = &v36[v39];
        v43 = &a3->i16[v39];
        v44 = &v37[v39];
        do
        {
          v45 = *v42++;
          v46 = vaddq_f64(*v41, v45);
          v47 = rint(v40 * v46.f64[0]);
          v48 = v47 & ~(v47 >> 31);
          if (v48 >= 0xFFFF)
          {
            LOWORD(v48) = -1;
          }

          *v43 = v48;
          v49 = rint(vmuld_lane_f64(v40, v46, 1));
          v50 = v49 & ~(v49 >> 31);
          if (v50 >= 0xFFFF)
          {
            LOWORD(v50) = -1;
          }

          v43[1] = v50;
          v51 = *v44++;
          *v41++ = vsubq_f64(v46, v51);
          v39 += 2;
          v43 += 2;
        }

        while (v39 <= v26);
LABEL_40:
        v38 = v39;
        if (v39 >= a6)
        {
          goto LABEL_27;
        }

LABEL_41:
        v52 = a6 - v38;
        if (v52 <= 7 || ((v81 = v38, v82 = &v12[v38], v82 < &v37[v27]) ? (v83 = &v37[v38] >= v28) : (v83 = 1), v83 ? (v84 = 0) : (v84 = 1), &v36[v38] < v28 ? (v85 = v82 >= &v36[v27]) : (v85 = 1), !v85 || (v84 & 1) != 0))
        {
          v53 = v38;
          v54 = v175;
          do
          {
LABEL_43:
            v55 = v12[v53] + v36[v53];
            v56 = rint(v54 * v55);
            v57 = v56 & ~(v56 >> 31);
            if (v57 >= 0xFFFF)
            {
              LOWORD(v57) = -1;
            }

            a3->i16[v53] = v57;
            v12[v53] = v55 - v37[v53];
            ++v53;
          }

          while (a6 != v53);
          goto LABEL_27;
        }

        v53 = (v52 & 0xFFFFFFFFFFFFFFF8) + v38;
        v86 = &v12[v81];
        v87 = &v36[v81];
        v88 = 2 * v38;
        v89 = &v37[v81];
        v90 = v52 & 0xFFFFFFFFFFFFFFF8;
        v54 = v175;
        do
        {
          v91 = vaddq_f64(v86[2], v87[2]);
          v92 = vaddq_f64(v86[3], v87[3]);
          v93 = vaddq_f64(v86[1], v87[1]);
          v94 = vaddq_f64(*v86, *v87);
          *(a3 + v88) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v94, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v175)))), 0), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v175)))), 0), v34));
          v95 = v89[2];
          v96 = v89[3];
          v97 = *v89;
          v98 = v89[1];
          v89 += 4;
          v86[2] = vsubq_f64(v91, v95);
          v86[3] = vsubq_f64(v92, v96);
          *v86 = vsubq_f64(v94, v97);
          v86[1] = vsubq_f64(v93, v98);
          v86 += 4;
          v87 += 4;
          v88 += 16;
          v90 -= 8;
        }

        while (v90);
        if (v52 != (v52 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }

LABEL_27:
        a3 = (a3 + v25);
        ++v10;
        v23 = v35 - 1;
        if (!v35)
        {
          return;
        }
      }
    }

    v99 = &a3->i8[2];
    v100.i64[0] = 0xFFFF0000FFFFLL;
    v100.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v101 = v23;
      v102 = *v10;
      v103 = v10[v24];
      if (a6 < 2)
      {
        v104 = 0;
        if (a6 <= 0)
        {
          goto LABEL_80;
        }

        goto LABEL_93;
      }

      if (v26 > 0xD)
      {
        v105 = 0;
        v123 = v12 < (v103 + v30) && v103 < v31;
        if ((v102 >= v31 || v12 >= (v102 + v30)) && !v123)
        {
          v125 = v32 & 0x7FFFFFF8;
          v126 = v10[v24];
          v127 = *v10;
          v128 = v12;
          v129 = a3;
          do
          {
            v130 = vaddq_f64(v128[6], v127[6]);
            v131 = vaddq_f64(v128[7], v127[7]);
            v132 = vaddq_f64(v128[4], v127[4]);
            v133 = vaddq_f64(v128[5], v127[5]);
            v134 = vaddq_f64(v128[2], v127[2]);
            v135 = vaddq_f64(v128[3], v127[3]);
            v136 = vaddq_f64(*v128, *v127);
            v137 = vaddq_f64(v128[1], v127[1]);
            *v129 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v136)), vcvtq_s64_f64(vrndxq_f64(v137))), 0), v100), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v134)), vcvtq_s64_f64(vrndxq_f64(v135))), 0), v100));
            v129[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v132)), vcvtq_s64_f64(vrndxq_f64(v133))), 0), v100), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v130)), vcvtq_s64_f64(vrndxq_f64(v131))), 0), v100));
            v129 += 2;
            v138 = v126[2];
            v139 = vsubq_f64(v135, v126[3]);
            v140 = vsubq_f64(v136, *v126);
            v141 = vsubq_f64(v137, v126[1]);
            v142 = vsubq_f64(v132, v126[4]);
            v143 = vsubq_f64(v133, v126[5]);
            v144 = vsubq_f64(v131, v126[7]);
            v128[6] = vsubq_f64(v130, v126[6]);
            v128[7] = v144;
            v128[4] = v142;
            v128[5] = v143;
            *v128 = v140;
            v128[1] = v141;
            v128[2] = vsubq_f64(v134, v138);
            v128[3] = v139;
            v128 += 8;
            v127 += 8;
            v126 += 8;
            v125 -= 8;
          }

          while (v125);
          v105 = 2 * (v32 & 0x7FFFFFF8);
          if (v32 == v33)
          {
            goto LABEL_92;
          }
        }
      }

      else
      {
        v105 = 0;
      }

      v106 = &v103[v105];
      v107 = &v102[v105];
      v108 = &v12[v105];
      v109 = &v99[2 * v105];
      do
      {
        v110 = *v107++;
        v111 = vaddq_f64(*v108, v110);
        v112 = rint(v111.f64[0]);
        v113 = v112 & ~(v112 >> 31);
        if (v113 >= 0xFFFF)
        {
          LOWORD(v113) = -1;
        }

        *(v109 - 1) = v113;
        v114 = rint(v111.f64[1]);
        v115 = v114 & ~(v114 >> 31);
        if (v115 >= 0xFFFF)
        {
          LOWORD(v115) = -1;
        }

        *v109 = v115;
        v109 += 4;
        v116 = *v106++;
        *v108++ = vsubq_f64(v111, v116);
        v105 += 2;
      }

      while (v105 <= v26);
LABEL_92:
      v104 = v105;
      if (v105 >= a6)
      {
        goto LABEL_80;
      }

LABEL_93:
      v117 = a6 - v104;
      if (v117 <= 7 || ((v145 = v104, v146 = &v12[v104], v146 < &v103[v27]) ? (v147 = &v103[v104] >= v28) : (v147 = 1), v147 ? (v148 = 0) : (v148 = 1), &v102[v104] < v28 ? (v149 = v146 >= &v102[v27]) : (v149 = 1), !v149 || (v148 & 1) != 0))
      {
        v118 = v104;
        do
        {
LABEL_95:
          v119 = v12[v118] + v102[v118];
          v120 = rint(v119);
          v121 = v120 & ~(v120 >> 31);
          if (v121 >= 0xFFFF)
          {
            LOWORD(v121) = -1;
          }

          a3->i16[v118] = v121;
          v12[v118] = v119 - v103[v118];
          ++v118;
        }

        while (a6 != v118);
        goto LABEL_80;
      }

      v118 = (v117 & 0xFFFFFFFFFFFFFFF8) + v104;
      v150 = &v12[v145];
      v151 = &v102[v145];
      v152 = 2 * v104;
      v153 = &v103[v145];
      v154 = v117 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v155 = vaddq_f64(v150[2], v151[2]);
        v156 = vaddq_f64(v150[3], v151[3]);
        v157 = vaddq_f64(*v150, *v151);
        v158 = vaddq_f64(v150[1], v151[1]);
        *(a3 + v152) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v157)), vcvtq_s64_f64(vrndxq_f64(v158))), 0), v100), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v155)), vcvtq_s64_f64(vrndxq_f64(v156))), 0), v100));
        v159 = v153[2];
        v160 = v153[3];
        v161 = *v153;
        v162 = v153[1];
        v153 += 4;
        v150[2] = vsubq_f64(v155, v159);
        v150[3] = vsubq_f64(v156, v160);
        *v150 = vsubq_f64(v157, v161);
        v150[1] = vsubq_f64(v158, v162);
        v150 += 4;
        v151 += 4;
        v152 += 16;
        v154 -= 8;
      }

      while (v154);
      if (v117 != (v117 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_95;
      }

LABEL_80:
      a3 = (a3 + v25);
      ++v10;
      v23 = v101 - 1;
      v99 += v25;
    }

    while (v101);
  }
}

void sub_10036B9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036B9E4(void *a1)
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

void sub_10036BA68(void *a1)
{
  *a1 = off_10047B3C0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036BACC(void *a1)
{
  *a1 = off_10047B3C0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036BB40(uint64_t a1, void *a2, int16x8_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, __n128 a14)
{
  v14 = a6;
  v19 = a1;
  v21 = (a1 + 32);
  v20 = *(a1 + 32);
  v183 = *(a1 + 16);
  v22 = (*(a1 + 40) - v20) >> 2;
  if (v22 == a6)
  {
    v23 = *(a1 + 24);
    if (v23)
    {
      v24 = *(a1 + 8);
      if (v23 != v24 - 1)
      {
        v188[0] = 0;
        v188[1] = 0;
        v25 = sub_1002A80E0(v188, 19);
        *(v25 + 15) = 825058682;
        *v25 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v188, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 614);
      }

      v26 = &a2[v24 - 1];
      goto LABEL_16;
    }

    v26 = a2;
  }

  else
  {
    if (a6 <= v22)
    {
      if (a6 < v22)
      {
        *(a1 + 40) = v20 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v22);
      v20 = *v21;
    }

    v26 = a2;
    *(v19 + 24) = 0;
  }

  bzero(v20, 4 * v14);
  v27 = *(v19 + 24);
  v28 = *(v19 + 8);
  if (v27 < v28 - 1)
  {
    v29 = (v14 - 4);
    if (v14 >= 4)
    {
      if (((v29 & 0x7FFFFFFC) + 5) <= v14)
      {
        v122 = v14;
      }

      else
      {
        v122 = (v29 & 0x7FFFFFFC) + 5;
      }

      v123 = 4 * v122 - ((4 * (v14 - 4)) & 0x1FFFFFFF0);
      v124 = v122 - (v29 & 0x7FFFFFFC) - 4;
      v125 = v124 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v127 = 0;
        v128 = 0;
        v129 = *v26;
        v130 = *v26 + 32;
        v131 = v20 + 2;
        v132 = 4;
        do
        {
          v133 = v132;
          v134 = v127;
          v135 = v130;
          v136 = v131;
          v20[v128 / 4] = vaddq_s32(*&v129[v128], v20[v128 / 4]);
          v128 += 4;
          v132 += 4;
          ++v127;
          v130 += 16;
          ++v131;
        }

        while (v128 <= v29);
        if (v128 < v14)
        {
          if (v124 <= 7)
          {
            goto LABEL_115;
          }

          v137 = 16 * v134;
          v138 = v137 + 16;
          v139 = &v20[v137 / 0x10 + 1];
          v140 = v123 + v137;
          if (v139 < (v129 + v140) && v129 + v138 < v20->i32 + v140)
          {
            goto LABEL_115;
          }

          v133 += v125;
          v141 = v124 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v142 = vaddq_s32(*v136, *v135);
            v136[-1] = vaddq_s32(v136[-1], v135[-1]);
            *v136 = v142;
            v135 += 2;
            v136 += 2;
            v141 -= 8;
          }

          while (v141);
          if (v124 != v125)
          {
LABEL_115:
            do
            {
              v20->i32[v133] += v129[v133];
              ++v133;
            }

            while (v133 < v14);
          }
        }

        v126 = *(v19 + 24) + 1;
        *(v19 + 24) = v126;
        ++v26;
      }

      while (v126 < *(v19 + 8) - 1);
    }

    else if (v14 >= 1)
    {
      do
      {
        v86 = *v26;
        v20->i32[0] += **v26;
        if (v14 != 1)
        {
          v20->i32[1] += v86[1];
          if (v14 != 2)
          {
            v20->i32[2] += v86[2];
          }
        }

        v85 = *(v19 + 24) + 1;
        *(v19 + 24) = v85;
        ++v26;
      }

      while (v85 < *(v19 + 8) - 1);
    }

    else
    {
      v26 += (v28 - v27 - 2) + 1;
      *(v19 + 24) = v28 - 1;
    }
  }

LABEL_16:
  if (a5)
  {
    v30 = a5 - 1;
    v31 = (v14 - 8);
    a14.n128_f32[0] = v183;
    v32 = a4;
    if (v183 != 1.0)
    {
      v33 = &v20->i32[1];
      v34 = v20 + 1;
      v35 = &off_1004B0000;
      v184 = v19;
      v185 = v14;
      while (1)
      {
        v186 = v26;
        v187 = a3;
        v36 = v30;
        v37 = *v26;
        v38 = v26[1 - *(v19 + 8)];
        if (v14 >= 8)
        {
          break;
        }

        v39 = 0;
LABEL_22:
        v14 = v185;
        if (v39 >= v185)
        {
          goto LABEL_19;
        }

        v40 = ~v39 + v185;
        if (v40 <= 6)
        {
          v41 = v39;
          v42 = v183;
          goto LABEL_53;
        }

        v58 = v36;
        v59 = 4 * v39;
        v60 = 4 * (v39 + v40);
        v61 = &v33[v60 / 4];
        v62 = v37->u64 + v60 + 4;
        v64 = &v20->i8[v59] < v38->i64 + v60 + 4 && &v38[v39 / 4] < v61;
        v65 = &v37[v39 / 4] >= v61 || v20->u64 + v59 >= v62;
        if (!v65 || v64)
        {
          v41 = v39;
          v42 = v183;
          v36 = v58;
          do
          {
LABEL_53:
            v83 = v37->i32[v41] + v20->i32[v41];
            v84 = rint(v42 * v83);
            if (v84 <= -32768)
            {
              LODWORD(v84) = -32768;
            }

            if (v84 >= 0x7FFF)
            {
              LOWORD(v84) = 0x7FFF;
            }

            v187->i16[v41] = v84;
            v20->i32[v41] = v83 - v38->i32[v41];
            ++v41;
          }

          while (v41 < v185);
          goto LABEL_19;
        }

        v66 = v40 + 1;
        v67 = (v40 + 1) & 0x1FFFFFFF8;
        v41 = v67 + v39;
        v68 = (v20 + v59);
        v69 = (v37 + v59);
        v70 = 2 * v39;
        v71 = (v38 + v59);
        v72 = v67;
        v42 = v183;
        do
        {
          v73 = *v69;
          v74 = v69[1];
          v69 += 2;
          v75 = vaddq_s32(v74, v68[1]);
          v76 = vaddq_s32(v73, *v68);
          v77.i64[0] = v76.i32[2];
          v77.i64[1] = v76.i32[3];
          v78 = vcvtq_f64_s64(v77);
          v77.i64[0] = v76.i32[0];
          v77.i64[1] = v76.i32[1];
          v79 = vcvtq_f64_s64(v77);
          v77.i64[0] = v75.i32[2];
          v77.i64[1] = v75.i32[3];
          v80 = vcvtq_f64_s64(v77);
          v77.i64[0] = v75.i32[0];
          v77.i64[1] = v75.i32[1];
          *(v187 + v70) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v79, v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v78, v183))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v77), v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v80, v183)))));
          v81 = *v71;
          v82 = v71[1];
          v71 += 2;
          *v68 = vsubq_s32(v76, v81);
          v68[1] = vsubq_s32(v75, v82);
          v68 += 2;
          v70 += 16;
          v72 -= 8;
        }

        while (v72);
        v36 = v58;
        if (v66 != v67)
        {
          goto LABEL_53;
        }

LABEL_19:
        a3 = (v187 + v32);
        v26 = v186 + 1;
        v30 = v36 - 1;
        v19 = v184;
        if (!v36)
        {
          return;
        }
      }

      v39 = 0;
      v43 = v37 + 1;
      v44 = v38 + 1;
      v45 = v187;
      v46 = v34;
      while (1)
      {
        v47 = v46[-1];
        v48 = *v46;
        v49 = v43[-1];
        v50 = *v43;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_28;
          }
        }

        else
        {
          v179 = v31;
          v175 = a14;
          v167 = v34;
          v171 = v33;
          v163 = v36;
          v155 = v48;
          v159 = v47;
          v147 = v50;
          v151 = v49;
          sub_1003C8EA4();
          v50 = v147;
          v49 = v151;
          v48 = v155;
          v47 = v159;
          v36 = v163;
          v35 = &off_1004B0000;
          v34 = v167;
          v33 = v171;
          a14 = v175;
          v31 = v179;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_28:
            v51 = v35[3];
            v52 = xmmword_1004B0010;
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_29;
            }

            goto LABEL_34;
          }
        }

        v180 = v31;
        v176 = a14;
        v168 = v34;
        v172 = v33;
        v164 = v36;
        v156 = v48;
        v160 = v47;
        v148 = v50;
        v152 = v49;
        sub_1003C8ED8();
        v50 = v148;
        v49 = v152;
        v48 = v156;
        v47 = v160;
        v36 = v164;
        v35 = &off_1004B0000;
        v34 = v168;
        v33 = v172;
        a14 = v176;
        v31 = v180;
        v51 = xmmword_1004B0030;
        v52 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_29:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        }

LABEL_34:
        v181 = v31;
        v177 = a14;
        v169 = v34;
        v173 = v33;
        v165 = v36;
        v157 = v48;
        v161 = v47;
        v149 = v50;
        v153 = v49;
        v143 = v52;
        v145 = v51;
        sub_1003C8EA4();
        v52 = v143;
        v51 = v145;
        v50 = v149;
        v49 = v153;
        v48 = v157;
        v47 = v161;
        v36 = v165;
        v35 = &off_1004B0000;
        v34 = v169;
        v33 = v173;
        a14 = v177;
        v31 = v181;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_35:
          v182 = v31;
          v178 = a14;
          v170 = v34;
          v174 = v33;
          v166 = v36;
          v158 = v48;
          v162 = v47;
          v150 = v50;
          v154 = v49;
          v144 = v52;
          v146 = v51;
          sub_1003C8ED8();
          v52 = v144;
          v51 = v146;
          v50 = v150;
          v49 = v154;
          v48 = v158;
          v47 = v162;
          v36 = v166;
          v35 = &off_1004B0000;
          v34 = v170;
          v33 = v174;
          a14 = v178;
          v31 = v182;
        }

LABEL_30:
        v53 = vaddq_s32(v49, v47);
        v54 = vaddq_s32(v50, v48);
        v55 = vmulq_n_f32(vcvtq_f32_s32(v53), a14.n128_f32[0]);
        v56 = vmulq_n_f32(vcvtq_f32_s32(v54), a14.n128_f32[0]);
        *v45++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v55, vorrq_s8(vandq_s8(v52, v55), v51)))), vcvtq_s32_f32(vaddq_f32(v56, vorrq_s8(vandq_s8(xmmword_1004B0010, v56), v35[3]))));
        v46[-1] = vsubq_s32(v53, v44[-1]);
        v57 = *v44;
        v44 += 2;
        *v46 = vsubq_s32(v54, v57);
        v46 += 2;
        v43 += 2;
        v39 += 8;
        if (v31 < v39)
        {
          goto LABEL_22;
        }
      }
    }

    v87 = v31;
    v88 = v14;
    v89 = v20->u64 + v88 * 4;
    do
    {
      v90 = v30;
      v91 = *v26;
      v92 = v26[1 - *(v19 + 8)];
      if (v14 >= 8)
      {
        v94 = 0;
        v95 = v92 + 1;
        v96 = v91 + 1;
        v97 = v20 + 1;
        v98 = a3;
        do
        {
          v99 = vaddq_s32(v96[-1], v97[-1]);
          v100 = vaddq_s32(*v96, *v97);
          *v98++ = vqmovn_high_s32(vqmovn_s32(v99), v100);
          v97[-1] = vsubq_s32(v99, v95[-1]);
          v101 = *v95;
          v95 += 2;
          v94 += 8;
          *v97 = vsubq_s32(v100, v101);
          v97 += 2;
          v96 += 2;
        }

        while (v94 <= v87);
        v93 = v94;
        if (v94 >= v14)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v93 = 0;
        if (v14 <= 0)
        {
          goto LABEL_64;
        }
      }

      v102 = v14 - v93;
      if (v102 <= 7 || ((v106 = 4 * v93, v107 = &v20->i32[v93], v107 < &v92->i32[v88]) ? (v108 = v92 + 4 * v93 >= v89) : (v108 = 1), v108 ? (v109 = 0) : (v109 = 1), v91 + 4 * v93 < v89 ? (v110 = v107 >= &v91->i32[v88]) : (v110 = 1), !v110 || (v109 & 1) != 0))
      {
        v103 = v93;
        do
        {
LABEL_73:
          v104 = v91->i32[v103] + v20->i32[v103];
          if (v104 <= -32768)
          {
            v105 = -32768;
          }

          else
          {
            v105 = v91->i32[v103] + v20->i32[v103];
          }

          if (v105 >= 0x7FFF)
          {
            LOWORD(v105) = 0x7FFF;
          }

          a3->i16[v103] = v105;
          v20->i32[v103] = v104 - v92->i32[v103];
          ++v103;
        }

        while (v14 != v103);
        goto LABEL_64;
      }

      v103 = (v102 & 0xFFFFFFFFFFFFFFF8) + v93;
      v111 = (v20 + v106);
      v112 = (v91 + v106);
      v113 = 2 * v93;
      v114 = (v92 + v106);
      v115 = v102 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v116 = *v112;
        v117 = v112[1];
        v112 += 2;
        v118 = vaddq_s32(v117, v111[1]);
        v119 = vaddq_s32(v116, *v111);
        *(a3 + v113) = vqmovn_high_s32(vqmovn_s32(v119), v118);
        v120 = *v114;
        v121 = v114[1];
        v114 += 2;
        *v111 = vsubq_s32(v119, v120);
        v111[1] = vsubq_s32(v118, v121);
        v111 += 2;
        v113 += 16;
        v115 -= 8;
      }

      while (v115);
      if (v102 != (v102 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_73;
      }

LABEL_64:
      a3 = (a3 + a4);
      ++v26;
      v30 = v90 - 1;
    }

    while (v90);
  }
}

uint64_t sub_10036C48C(void *a1)
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

void sub_10036C510(void *a1)
{
  *a1 = off_10047B448;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036C574(void *a1)
{
  *a1 = off_10047B448;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036C5E8(uint64_t a1, double **a2, int16x8_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v171 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 3;
  if (v14 != a6)
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = &v12[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
LABEL_11:
    bzero(v12, 8 * a6);
    v16 = *(a1 + 8);
    v18 = v16 - 1;
    v19 = *(a1 + 24);
    if (v19 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v10 += (v16 - v19 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v18;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v20 = *v12;
      v21 = ~v19 + v16;
      do
      {
        v22 = *v10;
        v20 = **v10 + v20;
        *v12 = v20;
        if (a6 != 1)
        {
          v12[1] = v22[1] + v12[1];
          if (a6 != 2)
          {
            v12[2] = v22[2] + v12[2];
          }
        }

        ++v10;
        --v21;
      }

      while (v21);
      goto LABEL_20;
    }

    v159 = a6;
    while (1)
    {
      v160 = *v10;
      if (v12 >= &(*v10)[v159] || v160 >= &v12[v159])
      {
        v162 = v160 + 1;
        v163 = a6 & 0x7FFFFFFC;
        v164 = (v12 + 2);
        do
        {
          v165 = vaddq_f64(*v162, *v164);
          v164[-1] = vaddq_f64(v162[-1], v164[-1]);
          *v164 = v165;
          v162 += 2;
          v164 += 2;
          v163 -= 4;
        }

        while (v163);
        v166 = a6 & 0x7FFFFFFC;
        if (v166 == a6)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v166 = 0;
      }

      v167 = &v160->f64[v166];
      v168 = &v12[v166];
      v169 = a6 - v166;
      do
      {
        v170 = *v167++;
        *v168 = v170 + *v168;
        ++v168;
        --v169;
      }

      while (v169);
LABEL_145:
      ++v19;
      ++v10;
      if (v19 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v16 = *(a1 + 8);
  if (v15 != v16 - 1)
  {
    v172[0] = 0;
    v172[1] = 0;
    v17 = sub_1002A80E0(v172, 19);
    *(v17 + 15) = 825058682;
    *v17 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v172, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v10 = &a2[v16 - 1];
LABEL_21:
  if (a5)
  {
    v23 = a5 - 1;
    v24 = 1 - v16;
    v25 = a4;
    v26 = a6 - 2;
    v27 = a6;
    v28 = &v12[v27];
    if (v26 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = a6 - 2;
    }

    v30 = ((8 * v29) & 0x3FFFFFFF0) + 16;
    v31 = (v12 + v30);
    v32 = (v29 >> 1) + 1;
    v33 = v32 & 0x7FFFFFF8;
    if (v171 != 1.0)
    {
      while (1)
      {
        v34 = v23;
        v35 = *v10;
        v36 = v10[v24];
        if (a6 < 2)
        {
          v37 = 0;
          if (a6 <= 0)
          {
            goto LABEL_27;
          }

          goto LABEL_45;
        }

        if (v26 >= 0xE)
        {
          v38 = 0;
          v55 = v12 < (v36 + v30) && v36 < v31;
          if (v35 >= v31 || v12 >= (v35 + v30))
          {
            v39 = v171;
            if (!v55)
            {
              v57 = v32 & 0x7FFFFFF8;
              v58 = v10[v24];
              v59 = *v10;
              v60 = v12;
              v61 = a3;
              do
              {
                v62 = vaddq_f64(v60[4], v59[4]);
                v63 = vaddq_f64(v60[5], v59[5]);
                v64 = vaddq_f64(v60[6], v59[6]);
                v65 = vaddq_f64(v60[7], v59[7]);
                v66 = vaddq_f64(v60[1], v59[1]);
                v67 = vaddq_f64(*v60, *v59);
                v68 = vaddq_f64(v60[2], v59[2]);
                v69 = vaddq_f64(v60[3], v59[3]);
                *v61 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v67, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v66, v171))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v68, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v69, v171)))));
                v61[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v62, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v63, v171))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v64, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v65, v171)))));
                v61 += 2;
                v70 = v58[2];
                v71 = vsubq_f64(v69, v58[3]);
                v72 = vsubq_f64(v67, *v58);
                v73 = vsubq_f64(v66, v58[1]);
                v74 = vsubq_f64(v62, v58[4]);
                v75 = vsubq_f64(v63, v58[5]);
                v76 = vsubq_f64(v65, v58[7]);
                v60[6] = vsubq_f64(v64, v58[6]);
                v60[7] = v76;
                v60[4] = v74;
                v60[5] = v75;
                *v60 = v72;
                v60[1] = v73;
                v60[2] = vsubq_f64(v68, v70);
                v60[3] = v71;
                v60 += 8;
                v59 += 8;
                v58 += 8;
                v57 -= 8;
              }

              while (v57);
              v38 = 2 * (v32 & 0x7FFFFFF8);
              if (v32 == v33)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_34;
          }
        }

        else
        {
          v38 = 0;
        }

        v39 = v171;
LABEL_34:
        v40 = &v12[v38];
        v41 = &v35[v38];
        v42 = &a3->i16[v38];
        v43 = &v36[v38];
        do
        {
          v44 = *v41++;
          v45 = vaddq_f64(*v40, v44);
          v46 = rint(v39 * v45.f64[0]);
          if (v46 <= -32768)
          {
            LODWORD(v46) = -32768;
          }

          if (v46 >= 0x7FFF)
          {
            LOWORD(v46) = 0x7FFF;
          }

          *v42 = v46;
          v47 = rint(vmuld_lane_f64(v39, v45, 1));
          if (v47 <= -32768)
          {
            LODWORD(v47) = -32768;
          }

          if (v47 >= 0x7FFF)
          {
            LOWORD(v47) = 0x7FFF;
          }

          v42[1] = v47;
          v48 = *v43++;
          *v40++ = vsubq_f64(v45, v48);
          v38 += 2;
          v42 += 2;
        }

        while (v38 <= v26);
LABEL_44:
        v37 = v38;
        if (v38 >= a6)
        {
          goto LABEL_27;
        }

LABEL_45:
        v49 = a6 - v37;
        if (v49 <= 7 || ((v77 = v37, v78 = &v12[v37], v78 < &v36[v27]) ? (v79 = &v36[v37] >= v28) : (v79 = 1), v79 ? (v80 = 0) : (v80 = 1), &v35[v37] < v28 ? (v81 = v78 >= &v35[v27]) : (v81 = 1), !v81 || (v80 & 1) != 0))
        {
          v50 = v37;
          v51 = v171;
          do
          {
LABEL_47:
            v52 = v12[v50] + v35[v50];
            v53 = rint(v51 * v52);
            if (v53 <= -32768)
            {
              LODWORD(v53) = -32768;
            }

            if (v53 >= 0x7FFF)
            {
              LOWORD(v53) = 0x7FFF;
            }

            a3->i16[v50] = v53;
            v12[v50] = v52 - v36[v50];
            ++v50;
          }

          while (a6 != v50);
          goto LABEL_27;
        }

        v50 = (v49 & 0xFFFFFFFFFFFFFFF8) + v37;
        v82 = &v12[v77];
        v83 = &v35[v77];
        v84 = 2 * v37;
        v85 = &v36[v77];
        v86 = v49 & 0xFFFFFFFFFFFFFFF8;
        v51 = v171;
        do
        {
          v88 = v83[2];
          v87 = v83[3];
          v89 = *v83;
          v90 = v83[1];
          v83 += 4;
          v91 = vaddq_f64(v82[1], v90);
          v92 = vaddq_f64(*v82, v89);
          v93 = vaddq_f64(v82[2], v88);
          v94 = vaddq_f64(v82[3], v87);
          *(a3 + v84) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v171))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v94, v171)))));
          v95 = v85[2];
          v96 = v85[3];
          v97 = *v85;
          v98 = v85[1];
          v85 += 4;
          v82[2] = vsubq_f64(v93, v95);
          v82[3] = vsubq_f64(v94, v96);
          *v82 = vsubq_f64(v92, v97);
          v82[1] = vsubq_f64(v91, v98);
          v82 += 4;
          v84 += 16;
          v86 -= 8;
        }

        while (v86);
        if (v49 != (v49 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_47;
        }

LABEL_27:
        a3 = (a3 + v25);
        ++v10;
        v23 = v34 - 1;
        if (!v34)
        {
          return;
        }
      }
    }

    v99 = &a3->i8[2];
    do
    {
      v100 = v23;
      v101 = *v10;
      v102 = v10[v24];
      if (a6 < 2)
      {
        v103 = 0;
        if (a6 <= 0)
        {
          goto LABEL_86;
        }

        goto LABEL_103;
      }

      if (v26 > 0xD)
      {
        v104 = 0;
        v119 = v12 < (v102 + v30) && v102 < v31;
        if ((v101 >= v31 || v12 >= (v101 + v30)) && !v119)
        {
          v121 = v32 & 0x7FFFFFF8;
          v122 = v10[v24];
          v123 = *v10;
          v124 = v12;
          v125 = a3;
          do
          {
            v126 = vaddq_f64(v124[6], v123[6]);
            v127 = vaddq_f64(v124[7], v123[7]);
            v128 = vaddq_f64(v124[4], v123[4]);
            v129 = vaddq_f64(v124[5], v123[5]);
            v130 = vaddq_f64(v124[2], v123[2]);
            v131 = vaddq_f64(v124[3], v123[3]);
            v132 = vaddq_f64(*v124, *v123);
            v133 = vaddq_f64(v124[1], v123[1]);
            *v125 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v132)), vcvtq_s64_f64(vrndxq_f64(v133)))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v130)), vcvtq_s64_f64(vrndxq_f64(v131))));
            v125[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v128)), vcvtq_s64_f64(vrndxq_f64(v129)))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v126)), vcvtq_s64_f64(vrndxq_f64(v127))));
            v125 += 2;
            v134 = vsubq_f64(v131, v122[3]);
            v135 = vsubq_f64(v132, *v122);
            v136 = vsubq_f64(v133, v122[1]);
            v137 = vsubq_f64(v130, v122[2]);
            v138 = vsubq_f64(v128, v122[4]);
            v139 = vsubq_f64(v129, v122[5]);
            v140 = vsubq_f64(v127, v122[7]);
            v124[6] = vsubq_f64(v126, v122[6]);
            v124[7] = v140;
            v124[4] = v138;
            v124[5] = v139;
            *v124 = v135;
            v124[1] = v136;
            v124[2] = v137;
            v124[3] = v134;
            v124 += 8;
            v123 += 8;
            v122 += 8;
            v121 -= 8;
          }

          while (v121);
          v104 = 2 * (v32 & 0x7FFFFFF8);
          if (v32 == v33)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v104 = 0;
      }

      v105 = &v102[v104];
      v106 = &v101[v104];
      v107 = &v12[v104];
      v108 = &v99[2 * v104];
      do
      {
        v109 = *v106++;
        v110 = vaddq_f64(*v107, v109);
        v111 = rint(v110.f64[0]);
        if (v111 <= -32768)
        {
          LODWORD(v111) = -32768;
        }

        if (v111 >= 0x7FFF)
        {
          LOWORD(v111) = 0x7FFF;
        }

        *(v108 - 1) = v111;
        v112 = rint(v110.f64[1]);
        if (v112 <= -32768)
        {
          LODWORD(v112) = -32768;
        }

        if (v112 >= 0x7FFF)
        {
          LOWORD(v112) = 0x7FFF;
        }

        *v108 = v112;
        v108 += 4;
        v113 = *v105++;
        *v107++ = vsubq_f64(v110, v113);
        v104 += 2;
      }

      while (v104 <= v26);
LABEL_102:
      v103 = v104;
      if (v104 >= a6)
      {
        goto LABEL_86;
      }

LABEL_103:
      v114 = a6 - v103;
      if (v114 <= 7 || ((v141 = v103, v142 = &v12[v103], v142 < &v102[v27]) ? (v143 = &v102[v103] >= v28) : (v143 = 1), v143 ? (v144 = 0) : (v144 = 1), &v101[v103] < v28 ? (v145 = v142 >= &v101[v27]) : (v145 = 1), !v145 || (v144 & 1) != 0))
      {
        v115 = v103;
        do
        {
LABEL_105:
          v116 = v12[v115] + v101[v115];
          v117 = rint(v116);
          if (v117 <= -32768)
          {
            LODWORD(v117) = -32768;
          }

          if (v117 >= 0x7FFF)
          {
            LOWORD(v117) = 0x7FFF;
          }

          a3->i16[v115] = v117;
          v12[v115] = v116 - v102[v115];
          ++v115;
        }

        while (a6 != v115);
        goto LABEL_86;
      }

      v115 = (v114 & 0xFFFFFFFFFFFFFFF8) + v103;
      v146 = &v12[v141];
      v147 = &v101[v141];
      v148 = 2 * v103;
      v149 = &v102[v141];
      v150 = v114 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v151 = vaddq_f64(v146[2], v147[2]);
        v152 = vaddq_f64(v146[3], v147[3]);
        v153 = vaddq_f64(*v146, *v147);
        v154 = vaddq_f64(v146[1], v147[1]);
        *(a3 + v148) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v153)), vcvtq_s64_f64(vrndxq_f64(v154)))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v151)), vcvtq_s64_f64(vrndxq_f64(v152))));
        v155 = v149[2];
        v156 = v149[3];
        v157 = *v149;
        v158 = v149[1];
        v149 += 4;
        v146[2] = vsubq_f64(v151, v155);
        v146[3] = vsubq_f64(v152, v156);
        *v146 = vsubq_f64(v153, v157);
        v146[1] = vsubq_f64(v154, v158);
        v146 += 4;
        v147 += 4;
        v148 += 16;
        v150 -= 8;
      }

      while (v150);
      if (v114 != (v114 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_105;
      }

LABEL_86:
      a3 = (a3 + v25);
      ++v10;
      v23 = v100 - 1;
      v99 += v25;
    }

    while (v100);
  }
}

void sub_10036CF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036CFD4(void *a1)
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

void sub_10036D058(void *a1)
{
  *a1 = off_10047B4D0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036D0BC(void *a1)
{
  *a1 = off_10047B4D0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036D130(uint64_t a1, void *a2, int32x4_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, __n128 a11)
{
  v11 = a6;
  v15 = a2;
  v18 = (a1 + 32);
  v17 = *(a1 + 32);
  v170 = *(a1 + 16);
  v19 = (*(a1 + 40) - v17) >> 2;
  if (v19 == a6)
  {
    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = *(a1 + 8);
      if (v20 != v21 - 1)
      {
        v176[0] = 0;
        v176[1] = 0;
        v22 = sub_1002A80E0(v176, 19);
        *(v22 + 15) = 825058682;
        *v22 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v176, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 866);
      }

      v15 = &a2[v21 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v19)
    {
      if (a6 < v19)
      {
        *(a1 + 40) = v17 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v19);
      v17 = *v18;
    }

    *(a1 + 24) = 0;
  }

  bzero(v17, 4 * v11);
  v23 = *(a1 + 24);
  v24 = *(a1 + 8);
  if (v23 < v24 - 1)
  {
    v25 = (v11 - 4);
    if (v11 >= 4)
    {
      if (((v25 & 0x7FFFFFFC) + 5) <= v11)
      {
        v81 = v11;
      }

      else
      {
        v81 = (v25 & 0x7FFFFFFC) + 5;
      }

      v82 = 4 * v81 - ((4 * (v11 - 4)) & 0x1FFFFFFF0);
      v83 = v81 - (v25 & 0x7FFFFFFC) - 4;
      v84 = v83 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v86 = 0;
        v87 = 0;
        v88 = *v15;
        v89 = *v15 + 32;
        v90 = v17 + 2;
        v91 = 4;
        do
        {
          v92 = v91;
          v93 = v86;
          v94 = v89;
          v95 = v90;
          v17[v87 / 4] = vaddq_s32(*&v88[v87], v17[v87 / 4]);
          v87 += 4;
          v91 += 4;
          ++v86;
          v89 += 16;
          ++v90;
        }

        while (v87 <= v25);
        if (v87 < v11)
        {
          if (v83 <= 7)
          {
            goto LABEL_149;
          }

          v96 = 16 * v93;
          v97 = v96 + 16;
          v98 = &v17[v96 / 0x10 + 1];
          v99 = v82 + v96;
          if (v98 < (v88 + v99) && v88 + v97 < v17->i32 + v99)
          {
            goto LABEL_149;
          }

          v92 += v84;
          v100 = v83 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v101 = vaddq_s32(*v95, *v94);
            v95[-1] = vaddq_s32(v95[-1], v94[-1]);
            *v95 = v101;
            v94 += 2;
            v95 += 2;
            v100 -= 8;
          }

          while (v100);
          if (v83 != v84)
          {
LABEL_149:
            do
            {
              v17->i32[v92] += v88[v92];
              ++v92;
            }

            while (v92 < v11);
          }
        }

        v85 = *(a1 + 24) + 1;
        *(a1 + 24) = v85;
        ++v15;
      }

      while (v85 < *(a1 + 8) - 1);
    }

    else if (v11 >= 1)
    {
      do
      {
        v73 = *v15;
        v17->i32[0] += **v15;
        if (v11 != 1)
        {
          v17->i32[1] += v73[1];
          if (v11 != 2)
          {
            v17->i32[2] += v73[2];
          }
        }

        v72 = *(a1 + 24) + 1;
        *(a1 + 24) = v72;
        ++v15;
      }

      while (v72 < *(a1 + 8) - 1);
    }

    else
    {
      v15 += (v24 - v23 - 2) + 1;
      *(a1 + 24) = v24 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v26 = a5 - 1;
    v27 = (v11 - 4);
    a11.n128_f32[0] = v170;
    v28 = a4;
    v172 = v11;
    if (v170 != 1.0)
    {
      v29 = 0;
      v30 = &v17->i32[1];
      v31 = &a3->i8[4];
      while (1)
      {
        v32 = v26;
        v33 = v15;
        v34 = *v15;
        v174 = v33;
        v35 = v33[1 - *(a1 + 8)];
        if (v11 >= 4)
        {
          break;
        }

        v36 = 0;
LABEL_21:
        v11 = v172;
        if (v36 >= v172)
        {
          goto LABEL_18;
        }

        v37 = v36;
        v38 = (~v36 + v172);
        if (v38 > 6)
        {
          v45 = v32;
          v46 = 4 * v37;
          v47 = &a3->i8[4 * v37];
          v48 = v37 + v38;
          v49 = &v31[v29 * v28 + v48 * 4];
          v50 = &v17->i8[4 * v37];
          v51 = &v30[v48];
          v52 = &v34[v37];
          v53 = &v34[v48 + 1];
          v54 = v35 + 4 * v37;
          v55 = v35 + v48 * 4 + 4;
          v57 = v47 < v53 && v52 < v49;
          v59 = v47 < v55 && v54 < v49;
          v61 = v50 < v53 && v52 < v51;
          v63 = v50 < v55 && v54 < v51;
          v64 = v50 >= v49 || v47 >= v51;
          if (!v64 || v57 || v59 || v61 || v63)
          {
            v39 = v170;
            v32 = v45;
          }

          else
          {
            v65 = v38 + 1;
            v37 += v65 & 0x1FFFFFFFCLL;
            v66 = v65 & 0x1FFFFFFFCLL;
            v39 = v170;
            do
            {
              v67 = vaddq_s32(*&v34[v46 / 4], *(v17 + v46));
              v68.i64[0] = v67.i32[2];
              v68.i64[1] = v67.i32[3];
              v69 = vcvtq_f64_s64(v68);
              v68.i64[0] = v67.i32[0];
              v68.i64[1] = v67.i32[1];
              *(a3 + v46) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v68), v170))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v69, v170))));
              *(v17 + v46) = vsubq_s32(v67, *(v35 + v46));
              v46 += 16;
              v66 -= 4;
            }

            while (v66);
            v32 = v45;
            if (v65 == (v65 & 0x1FFFFFFFCLL))
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v39 = v170;
        }

        v70 = v37;
        do
        {
          v71 = v34[v70] + v17->i32[v70];
          a3->i32[v70] = rint(v39 * v71);
          v17->i32[v70] = v71 - *(v35 + v70 * 4);
          ++v70;
          LODWORD(v37) = v37 + 1;
        }

        while (v37 < v172);
LABEL_18:
        a3 = (a3 + v28);
        v15 = v174 + 1;
        v26 = v32 - 1;
        ++v29;
        if (!v32)
        {
          return;
        }
      }

      v36 = 0;
      v40 = 0;
      while (1)
      {
        v41 = v17[v40 / 0x10];
        v42 = *&v34[v40 / 4];
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v168 = v28;
          v166 = a11;
          v162 = v30;
          v164 = v29;
          v160 = v31;
          v158 = v32;
          v154 = v42;
          v156 = v41;
          sub_1003C8EA4();
          v42 = v154;
          v41 = v156;
          v32 = v158;
          v31 = v160;
          v30 = v162;
          v29 = v164;
          a11 = v166;
          v28 = v168;
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
LABEL_30:
            v169 = v28;
            v167 = a11;
            v163 = v30;
            v165 = v29;
            v161 = v31;
            v159 = v32;
            v155 = v42;
            v157 = v41;
            sub_1003C8ED8();
            v42 = v155;
            v41 = v157;
            v32 = v159;
            v31 = v161;
            v30 = v163;
            v29 = v165;
            a11 = v167;
            v28 = v169;
          }
        }

        v43 = vaddq_s32(v42, v41);
        v44 = vmulq_n_f32(vcvtq_f32_s32(v43), a11.n128_f32[0]);
        a3[v40 / 0x10] = vcvtq_s32_f32(vaddq_f32(v44, vorrq_s8(vandq_s8(xmmword_1004B0010, v44), xmmword_1004B0030)));
        v17[v40 / 0x10] = vsubq_s32(v43, *(v35 + v40));
        v40 += 16;
        v36 += 4;
        if (v27 < v36)
        {
          goto LABEL_21;
        }
      }
    }

    if (v11 >= 4)
    {
      v102 = 0;
      v103 = v11;
      if ((v27 & 0x7FFFFFFC) + 5 <= v11)
      {
        v104 = v11;
      }

      else
      {
        v104 = (v27 & 0x7FFFFFFC) + 5;
      }

      v175 = 4 * v104 - ((4 * (v11 - 4)) & 0x1FFFFFFF0);
      v105 = v104 - (v27 & 0x7FFFFFFC) - 4;
      v171 = v105 & 0xFFFFFFFFFFFFFFF8;
      v106 = a3 + 2;
      v107 = a3;
      do
      {
        v108 = 0;
        v109 = 0;
        v110 = v26;
        v111 = v28;
        v112 = v102 * v28;
        v113 = v15[1 - *(a1 + 8)];
        v114 = v15;
        v115 = *v15;
        v116 = *v15 + 32;
        v117 = v113 + 2;
        v118 = v106;
        v119 = v17 + 2;
        v120 = 4;
        do
        {
          v121 = v120;
          v122 = v108;
          v123 = v119;
          v124 = v116;
          v125 = 4 * v109;
          v126 = v118;
          v127 = vaddq_s32(*&v115[4 * v109], v17[v109 / 4]);
          *(v107 + v125) = v127;
          v128 = v117;
          *(v17 + v125) = vsubq_s32(v127, v113[v109 / 4]);
          v109 += 4;
          v120 += 4;
          ++v108;
          ++v119;
          v116 += 16;
          ++v118;
          ++v117;
        }

        while (v109 <= v27);
        if (v109 < v172)
        {
          if (v105 <= 0xB)
          {
            goto LABEL_150;
          }

          v130 = &a3[v122].i8[v112];
          v131 = v130 + 16;
          v132 = &v130[v175];
          v133 = 16 * v122 + 16;
          v134 = &v17->i8[v133];
          v135 = v175 + 16 * v122;
          v136 = &v17->i8[v135];
          v137 = &v115[v133];
          v138 = &v115[v135];
          v139 = v113->u64 + v133;
          v140 = v113->u64 + v135;
          v141 = v131 >= &v115[v135] || v137 >= v132;
          v142 = !v141;
          v143 = v131 >= v140 || v139 >= v132;
          v144 = !v143;
          v145 = v134 >= v138 || v137 >= v136;
          v146 = !v145;
          v147 = v134 >= v140 || v139 >= v136;
          v148 = !v147;
          if (v134 < v132 && v131 < v136)
          {
            goto LABEL_150;
          }

          if (v142)
          {
            goto LABEL_150;
          }

          if (v144)
          {
            goto LABEL_150;
          }

          if (v146)
          {
            goto LABEL_150;
          }

          if (v148)
          {
            goto LABEL_150;
          }

          v150 = v105 & 0xFFFFFFFFFFFFFFF8;
          v121 += v171;
          do
          {
            v151 = vaddq_s32(v124[-1], v123[-1]);
            v152 = vaddq_s32(*v124, *v123);
            v153 = vsubq_s32(v152, *v128);
            v123[-1] = vsubq_s32(v151, v128[-1]);
            *v123 = v153;
            v123 += 2;
            v126[-1] = v151;
            *v126 = v152;
            v124 += 2;
            v126 += 2;
            v128 += 2;
            v150 -= 8;
          }

          while (v150);
          if (v105 != v171)
          {
LABEL_150:
            do
            {
              v129 = *&v115[4 * v121] + v17->i32[v121];
              v107->i32[v121] = v129;
              v17->i32[v121] = v129 - v113->i32[v121];
              ++v121;
            }

            while (v121 < v103);
          }
        }

        v28 = v111;
        v107 = (v107 + v111);
        v15 = v114 + 1;
        v26 = v110 - 1;
        ++v102;
        v106 = (v106 + v111);
      }

      while (v110);
    }

    else if (v11 >= 1)
    {
      v74 = v15 + 1;
      v75 = &a3->i64[1];
      do
      {
        v76 = *(v74 - 1);
        v77 = v74[-*(a1 + 8)];
        v78 = *v76 + v17->i32[0];
        *(v75 - 2) = v78;
        v17->i32[0] = v78 - *v77;
        if (v11 != 1)
        {
          v79 = v76[1] + v17->i32[1];
          *(v75 - 1) = v79;
          v17->i32[1] = v79 - v77[1];
          if (v11 != 2)
          {
            v80 = v76[2] + v17->i32[2];
            *v75 = v80;
            v17->i32[2] = v80 - v77[2];
          }
        }

        ++v74;
        v75 = (v75 + a4);
        --a5;
      }

      while (a5);
    }
  }
}

uint64_t sub_10036DA4C(void *a1)
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

void sub_10036DAD0(void *a1)
{
  *a1 = off_10047B558;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036DB34(void *a1)
{
  *a1 = off_10047B558;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036DBA8(uint64_t a1, void *a2, float32x4_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v128 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 2;
  if (v14 == a6)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = *(a1 + 8);
      if (v15 != v16 - 1)
      {
        v130[0] = 0;
        v130[1] = 0;
        v17 = sub_1002A80E0(v130, 19);
        *(v17 + 15) = 825058682;
        *v17 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v130, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 986);
      }

      v10 = &a2[v16 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = v12 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
  }

  bzero(v12, 4 * a6);
  v18 = *(a1 + 24);
  v19 = *(a1 + 8);
  if (v18 < v19 - 1)
  {
    v20 = (a6 - 4);
    if (a6 >= 4)
    {
      if (((v20 & 0x7FFFFFFC) + 5) <= a6)
      {
        v65 = a6;
      }

      else
      {
        v65 = (v20 & 0x7FFFFFFC) + 5;
      }

      v66 = 4 * v65 - ((4 * (a6 - 4)) & 0x1FFFFFFF0);
      v67 = v65 - (v20 & 0x7FFFFFFC) - 4;
      v68 = v67 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v70 = 0;
        v71 = 0;
        v72 = *v10;
        v73 = *v10 + 32;
        v74 = v12 + 2;
        v75 = 4;
        do
        {
          v76 = v75;
          v77 = v70;
          v78 = v73;
          v79 = v74;
          v12[v71 / 4] = vaddq_s32(v72[v71 / 4], v12[v71 / 4]);
          v71 += 4;
          v75 += 4;
          ++v70;
          v73 += 16;
          ++v74;
        }

        while (v71 <= v20);
        if (v71 < a6)
        {
          if (v67 <= 7)
          {
            goto LABEL_104;
          }

          v80 = 16 * v77;
          v81 = v80 + 16;
          v82 = &v12[v80 / 0x10 + 1];
          v83 = v66 + v80;
          if (v82 < &v72->i8[v83] && &v72->i8[v81] < &v12->i8[v83])
          {
            goto LABEL_104;
          }

          v76 += v68;
          v84 = v67 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v85 = vaddq_s32(*v79, *v78);
            v79[-1] = vaddq_s32(v79[-1], v78[-1]);
            *v79 = v85;
            v78 += 2;
            v79 += 2;
            v84 -= 8;
          }

          while (v84);
          if (v67 != v68)
          {
LABEL_104:
            do
            {
              v12->i32[v76] += v72->i32[v76];
              ++v76;
            }

            while (v76 < a6);
          }
        }

        v69 = *(a1 + 24) + 1;
        *(a1 + 24) = v69;
        ++v10;
      }

      while (v69 < *(a1 + 8) - 1);
    }

    else if (a6 >= 1)
    {
      do
      {
        v53 = *v10;
        v12->i32[0] += **v10;
        if (a6 != 1)
        {
          v12->i32[1] += v53->i32[1];
          if (a6 != 2)
          {
            v12->i32[2] += v53->i32[2];
          }
        }

        v52 = *(a1 + 24) + 1;
        *(a1 + 24) = v52;
        ++v10;
      }

      while (v52 < *(a1 + 8) - 1);
    }

    else
    {
      v10 += (v19 - v18 - 2) + 1;
      *(a1 + 24) = v19 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v21 = a5 - 1;
    v22 = (a6 - 8);
    v23 = v128;
    v24 = a4;
    if (v128 != 1.0)
    {
      v25 = a6;
      v26 = v12->u64 + v25 * 4;
      v27 = a3 + 1;
      while (1)
      {
        v28 = v21;
        v29 = *v10;
        v30 = v10[1 - *(a1 + 8)];
        if (a6 >= 8)
        {
          v31 = 0;
          v32 = v29 + 1;
          v33 = v30 + 1;
          v34 = v27;
          v35 = v12 + 1;
          do
          {
            v36 = vaddq_s32(v32[-1], v35[-1]);
            v37 = vaddq_s32(*v32, *v35);
            v34[-1] = vmulq_n_f32(vcvtq_f32_s32(v36), v23);
            *v34 = vmulq_n_f32(vcvtq_f32_s32(v37), v23);
            v35[-1] = vsubq_s32(v36, v33[-1]);
            v38 = *v33;
            v33 += 2;
            v31 += 8;
            *v35 = vsubq_s32(v37, v38);
            v35 += 2;
            v32 += 2;
            v34 += 2;
          }

          while (v31 <= v22);
          v31 = v31;
          if (v31 >= a6)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v31 = 0;
          if (a6 <= 0)
          {
            goto LABEL_18;
          }
        }

        v39 = a6 - v31;
        if (v39 <= 3 || ((v43 = 4 * v31, v44 = &v12->i32[v31], v44 < &v30->i32[v25]) ? (v45 = v30 + 4 * v31 >= v26) : (v45 = 1), v45 ? (v46 = 0) : (v46 = 1), v29 + 4 * v31 < v26 ? (v47 = v44 >= &v29->i32[v25]) : (v47 = 1), !v47 || (v46 & 1) != 0))
        {
          v40 = v128;
        }

        else
        {
          v31 += v39 & 0xFFFFFFFFFFFFFFFCLL;
          v48 = v39 & 0xFFFFFFFFFFFFFFFCLL;
          v40 = v128;
          do
          {
            v49 = vaddq_s32(*(v29 + v43), *(v12 + v43));
            v50.i64[0] = v49.i32[0];
            v50.i64[1] = v49.i32[1];
            v51 = vcvtq_f64_s64(v50);
            v50.i64[0] = v49.i32[2];
            v50.i64[1] = v49.i32[3];
            *(a3 + v43) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v51, v128)), vmulq_n_f64(vcvtq_f64_s64(v50), v128));
            *(v12 + v43) = vsubq_s32(v49, *(v30 + v43));
            v43 += 16;
            v48 -= 4;
          }

          while (v48);
          if (v39 == (v39 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_18;
          }
        }

        do
        {
          v41 = v29->i32[v31] + v12->i32[v31];
          v42 = v40 * v41;
          a3->f32[v31] = v42;
          v12->i32[v31] = v41 - v30->i32[v31];
          ++v31;
        }

        while (a6 != v31);
LABEL_18:
        a3 = (a3 + a4);
        ++v10;
        v21 = v28 - 1;
        v27 = (v27 + a4);
        if (!v28)
        {
          return;
        }
      }
    }

    if (a6 >= 8)
    {
      if ((v22 & 0x7FFFFFF8) + 9 <= a6)
      {
        v86 = a6;
      }

      else
      {
        v86 = (v22 & 0x7FFFFFF8) + 9;
      }

      v129 = 4 * v86 - ((4 * (a6 - 8)) & 0x1FFFFFFE0);
      v87 = v86 - (v22 & 0x7FFFFFF8) - 8;
      v127 = v86 & 7;
      v88 = a3 + 3;
      do
      {
        v89 = 0;
        v90 = 0;
        v91 = v21;
        v92 = v10[1 - *(a1 + 8)];
        v93 = *v10;
        v94 = *v10 + 48;
        v95 = v92 + 3;
        v96 = v88;
        v97 = v12 + 3;
        v98 = 8;
        do
        {
          v99 = v98;
          v100 = v89;
          v101 = v97;
          v102 = v94;
          v103 = v96;
          v104 = v95;
          v105 = &v12[v90 / 4];
          v106 = &v93[v90 / 4];
          v107 = vaddq_s32(*v106, *v105);
          v108 = vaddq_s32(v106[1], v105[1]);
          v109 = &a3[v90 / 4];
          *v109 = vcvtq_f32_s32(v107);
          v109[1] = vcvtq_f32_s32(v108);
          v110 = &v92[v90 / 4];
          *v105 = vsubq_s32(v107, *v110);
          v111 = v110[1];
          v90 += 8;
          v98 = v99 + 8;
          v89 = v100 + 1;
          v97 += 2;
          v105[1] = vsubq_s32(v108, v111);
          v94 += 32;
          v96 = v103 + 2;
          v95 += 2;
        }

        while (v90 <= v22);
        if (v90 < a6)
        {
          if (v87 <= 7)
          {
            goto LABEL_105;
          }

          v112 = 32 * v100 + 32;
          v113 = &v12->i8[v112];
          v114 = v129 + 32 * v100;
          v115 = &v12->i8[v114];
          v116 = &v93->i8[v112];
          v117 = &v93->i8[v114];
          v118 = v92->u64 + v112;
          v119 = v113 >= &v92->i8[v114] || v118 >= v115;
          v120 = !v119;
          if (v116 < v115 && v113 < v117)
          {
            goto LABEL_105;
          }

          if (v120)
          {
            goto LABEL_105;
          }

          v99 += v87 - v127;
          v122 = v87 - v127;
          do
          {
            v123 = vaddq_s32(v102[-1], v101[-1]);
            v124 = vaddq_s32(*v102, *v101);
            v125 = vsubq_s32(v124, *v104);
            v101[-1] = vsubq_s32(v123, v104[-1]);
            *v101 = v125;
            v101 += 2;
            v103[-1] = vcvtq_f32_s32(v123);
            *v103 = vcvtq_f32_s32(v124);
            v102 += 2;
            v103 += 2;
            v104 += 2;
            v122 -= 8;
          }

          while (v122);
          if (v127)
          {
LABEL_105:
            do
            {
              v126 = v93->i32[v99] + v12->i32[v99];
              a3->f32[v99] = v126;
              v12->i32[v99] = v126 - v92->i32[v99];
              ++v99;
            }

            while (v99 < a6);
          }
        }

        a3 = (a3 + v24);
        ++v10;
        v21 = v91 - 1;
        v88 = (v88 + v24);
      }

      while (v91);
    }

    else if (a6 >= 1)
    {
      v54 = v10 + 1;
      v55 = &a3->f32[3];
      do
      {
        v56 = *(v54 - 1);
        v57 = *v56 + v12->i32[0];
        v58 = v54[-*(a1 + 8)];
        *(v55 - 3) = v57;
        v12->i32[0] = v57 - *v58;
        if (a6 != 1)
        {
          v59 = v56[1] + v12->i32[1];
          *(v55 - 2) = v59;
          v12->i32[1] = v59 - v58[1];
          if (a6 != 2)
          {
            v60 = v56[2] + v12->i32[2];
            *(v55 - 1) = v60;
            v12->i32[2] = v60 - v58[2];
            if (a6 != 3)
            {
              v61 = v56[3] + v12->i32[3];
              *v55 = v61;
              v12->i32[3] = v61 - v58[3];
              if (a6 != 4)
              {
                v62 = v56[4] + v12[1].i32[0];
                v55[1] = v62;
                v12[1].i32[0] = v62 - v58[4];
                if (a6 != 5)
                {
                  v63 = v56[5] + v12[1].i32[1];
                  v55[2] = v63;
                  v12[1].i32[1] = v63 - v58[5];
                  if (a6 != 6)
                  {
                    v64 = v56[6] + v12[1].i32[2];
                    v55[3] = v64;
                    v12[1].i32[2] = v64 - v58[6];
                  }
                }
              }
            }
          }
        }

        ++v54;
        v55 = (v55 + a4);
        --a5;
      }

      while (a5);
    }
  }
}

void sub_10036E3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036E408(void *a1)
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

void sub_10036E48C(void *a1)
{
  *a1 = off_10047B5E0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036E4F0(void *a1)
{
  *a1 = off_10047B5E0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036E564(uint64_t a1, double **a2, float *a3, int a4, int a5, unsigned int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v169 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 3;
  if (v14 != a6)
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = &v12[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
LABEL_11:
    bzero(v12, 8 * a6);
    v16 = *(a1 + 8);
    v18 = v16 - 1;
    v19 = *(a1 + 24);
    if (v19 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v10 += (v16 - v19 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v18;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v20 = *v12;
      v21 = ~v19 + v16;
      do
      {
        v22 = *v10;
        v20 = **v10 + v20;
        *v12 = v20;
        if (a6 != 1)
        {
          v12[1] = v22[1] + v12[1];
          if (a6 != 2)
          {
            v12[2] = v22[2] + v12[2];
          }
        }

        ++v10;
        --v21;
      }

      while (v21);
      goto LABEL_20;
    }

    v157 = a6;
    while (1)
    {
      v158 = *v10;
      if (v12 >= &(*v10)[v157] || v158 >= &v12[v157])
      {
        v160 = v158 + 1;
        v161 = a6 & 0x7FFFFFFC;
        v162 = (v12 + 2);
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
          goto LABEL_125;
        }
      }

      else
      {
        v164 = 0;
      }

      v165 = &v158->f64[v164];
      v166 = &v12[v164];
      v167 = a6 - v164;
      do
      {
        v168 = *v165++;
        *v166 = v168 + *v166;
        ++v166;
        --v167;
      }

      while (v167);
LABEL_125:
      ++v19;
      ++v10;
      if (v19 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v16 = *(a1 + 8);
  if (v15 != v16 - 1)
  {
    v170[0] = 0;
    v170[1] = 0;
    v17 = sub_1002A80E0(v170, 19);
    *(v17 + 15) = 825058682;
    *v17 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v170, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v10 = &a2[v16 - 1];
LABEL_21:
  if (!a5)
  {
    return;
  }

  v23 = a5 - 1;
  v24 = 1 - v16;
  v25 = a6 - 2;
  v26 = a4;
  if (v169 != 1.0)
  {
    v27 = a6;
    v28 = &v12[v27];
    if (v25 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v25;
    }

    v30 = ((8 * v29) & 0x3FFFFFFF0) + 16;
    v31 = (v12 + v30);
    v32 = (v29 >> 1) + 1;
    while (1)
    {
      v33 = v23;
      v34 = *v10;
      v35 = v10[v24];
      if (a6 < 2)
      {
        v36 = 0;
        if (a6 <= 0)
        {
          goto LABEL_27;
        }

        goto LABEL_37;
      }

      if (v25 < 6)
      {
        break;
      }

      v37 = 0;
      v52 = v12 < (v35 + v30) && v35 < v31;
      if (v34 < v31 && v12 < (v34 + v30))
      {
        goto LABEL_33;
      }

      v38 = v169;
      if (v52)
      {
        goto LABEL_34;
      }

      v54 = v32 & 0x7FFFFFFC;
      v55 = v10[v24];
      v56 = *v10;
      v57 = v12;
      v58 = a3;
      do
      {
        v59 = vaddq_f64(v57[3], v56[3]);
        v60 = vaddq_f64(v57[2], v56[2]);
        v61 = vaddq_f64(v57[1], v56[1]);
        v62 = vaddq_f64(*v57, *v56);
        v171.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vzip1q_s64(v62, v61), v169)), vmulq_n_f64(vzip1q_s64(v60, v59), v169));
        v171.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vzip2q_s64(v62, v61), v169)), vmulq_n_f64(vzip2q_s64(v60, v59), v169));
        vst2q_f32(v58, v171);
        v58 += 8;
        v63 = v55[2];
        v64 = v55[3];
        v65 = *v55;
        v66 = v55[1];
        v55 += 4;
        v57[2] = vsubq_f64(v60, v63);
        v57[3] = vsubq_f64(v59, v64);
        *v57 = vsubq_f64(v62, v65);
        v57[1] = vsubq_f64(v61, v66);
        v57 += 4;
        v56 += 4;
        v54 -= 4;
      }

      while (v54);
      v37 = 2 * (v32 & 0x7FFFFFFC);
      if (v32 != (v32 & 0x7FFFFFFC))
      {
        goto LABEL_34;
      }

LABEL_36:
      v36 = v37;
      if (v37 >= a6)
      {
        goto LABEL_27;
      }

LABEL_37:
      v46 = a6 - v36;
      if (v46 <= 3 || ((v67 = v36, v68 = &v12[v36], v68 < &v35[v27]) ? (v69 = &v35[v36] >= v28) : (v69 = 1), v69 ? (v70 = 0) : (v70 = 1), &v34[v36] < v28 ? (v71 = v68 >= &v34[v27]) : (v71 = 1), !v71 || (v70 & 1) != 0))
      {
        v47 = v36;
        v48 = v169;
      }

      else
      {
        v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + v36;
        v72 = &v12[v67];
        v73 = &v34[v67];
        v74 = v36;
        v75 = &v35[v67];
        v76 = v46 & 0xFFFFFFFFFFFFFFFCLL;
        v48 = v169;
        do
        {
          v78 = *v73;
          v77 = v73[1];
          v73 += 2;
          v79 = vaddq_f64(*v72, v78);
          v80 = vaddq_f64(v72[1], v77);
          *&a3[v74] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v79, v169)), vmulq_n_f64(v80, v169));
          v81 = *v75;
          v82 = v75[1];
          v75 += 2;
          *v72 = vsubq_f64(v79, v81);
          v72[1] = vsubq_f64(v80, v82);
          v72 += 2;
          v74 += 4;
          v76 -= 4;
        }

        while (v76);
        if (v46 == (v46 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_27;
        }
      }

      do
      {
        v49 = v12[v47] + v34[v47];
        v50 = v48 * v49;
        a3[v47] = v50;
        v12[v47] = v49 - v35[v47];
        ++v47;
      }

      while (a6 != v47);
LABEL_27:
      a3 = (a3 + v26);
      ++v10;
      v23 = v33 - 1;
      if (!v33)
      {
        return;
      }
    }

    v37 = 0;
LABEL_33:
    v38 = v169;
LABEL_34:
    v39 = &v12[v37];
    v40 = &v34[v37];
    v41 = v37;
    v42 = &v35[v37];
    do
    {
      v43 = *v40++;
      v44 = vaddq_f64(*v39, v43);
      *&a3[v41] = vcvt_f32_f64(vmulq_n_f64(v44, v38));
      v45 = *v42++;
      *v39++ = vsubq_f64(v44, v45);
      v37 += 2;
      v41 += 2;
    }

    while (v37 <= v25);
    goto LABEL_36;
  }

  if (a6 >= 2)
  {
    if ((v25 & 0x7FFFFFFE) + 3 <= a6)
    {
      v88 = a6;
    }

    else
    {
      v88 = (v25 & 0x7FFFFFFE) + 3;
    }

    v89 = (8 * (a6 - 2)) & 0x3FFFFFFF0;
    v90 = 8 * v88 - v89;
    v91 = v88 - (v25 & 0x7FFFFFFE) - 2;
    v92 = v89 + 16;
    v93 = (v12 + v89 + 16);
    v94 = (v25 >> 1) + 1;
    v95 = v91 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v96 = v23;
      v97 = *v10;
      v98 = v10[v24];
      if (v25 <= 5)
      {
        break;
      }

      v99 = 0;
      v115 = v12 < (v98 + v92) && v98 < v93;
      v101 = 2;
      if (v97 < v93 && v12 < (v97 + v92))
      {
        v100 = 0;
LABEL_85:
        v102 = v99 - 1;
        v103 = v101 - 2;
        v104 = &v98[v100];
        v105 = v100;
        v106 = &v97[v100];
        v107 = &v12[v100];
        do
        {
          v108 = *v106++;
          v109 = vaddq_f64(*v107, v108);
          *&a3[v105] = vcvt_f32_f64(v109);
          v110 = *v104++;
          *v107++ = vsubq_f64(v109, v110);
          v100 += 2;
          ++v102;
          v103 += 2;
          v105 += 2;
        }

        while (v100 <= v25);
        goto LABEL_87;
      }

      v100 = 0;
      if (v115)
      {
        goto LABEL_85;
      }

      v117 = v94 & 0x7FFFFFFC;
      v118 = v10[v24];
      v119 = *v10;
      v120 = v12;
      v121 = a3;
      do
      {
        v122 = v119[2];
        v123 = v119[3];
        v124 = *v119;
        v125 = v119[1];
        v119 += 4;
        v126 = vaddq_f64(v120[1], v125);
        v127 = vaddq_f64(*v120, v124);
        v128 = vaddq_f64(v120[3], v123);
        v129 = vaddq_f64(v120[2], v122);
        v172.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip1q_s64(v127, v126)), vzip1q_s64(v129, v128));
        v172.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip2q_s64(v127, v126)), vzip2q_s64(v129, v128));
        vst2q_f32(v121, v172);
        v121 += 8;
        v130 = v118[2];
        v131 = v118[3];
        v132 = *v118;
        v133 = v118[1];
        v118 += 4;
        v120[2] = vsubq_f64(v129, v130);
        v120[3] = vsubq_f64(v128, v131);
        *v120 = vsubq_f64(v127, v132);
        v120[1] = vsubq_f64(v126, v133);
        v120 += 4;
        v117 -= 4;
      }

      while (v117);
      v99 = v94 & 0x7FFFFFFC;
      v101 = (8 * ((v99 >> 2) & 0x1FFFFFFF)) | 2;
      v100 = 2 * v99;
      v102 = v99 - 1;
      v103 = v100;
      if (v94 != v99)
      {
        goto LABEL_85;
      }

LABEL_87:
      if (v100 < a6)
      {
        if (v91 <= 3 || ((v134 = 16 * v102, v135 = 16 * v102 + 16, v136 = v12 + v135, v137 = v90 + v134, v138 = v12 + v137, v139 = v97 + v135, v140 = v97 + v137, v141 = v98 + v135, v136 < v98 + v137) ? (v142 = v141 >= v138) : (v142 = 1), v142 ? (v143 = 0) : (v143 = 1), v139 < v138 ? (v144 = v136 >= v140) : (v144 = 1), !v144 || (v143 & 1) != 0))
        {
          v111 = v103;
        }

        else
        {
          v111 = v103 + v95;
          v145 = v103;
          v146 = &v12[v103];
          v147 = &v97[v103];
          v148 = v103;
          v149 = &v98[v145];
          v150 = v91 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v151 = *v147;
            v152 = v147[1];
            v147 += 2;
            v153 = vaddq_f64(v146[1], v152);
            v154 = vaddq_f64(*v146, v151);
            *&a3[v148] = vcvt_hight_f32_f64(vcvt_f32_f64(v154), v153);
            v155 = *v149;
            v156 = v149[1];
            v149 += 2;
            *v146 = vsubq_f64(v154, v155);
            v146[1] = vsubq_f64(v153, v156);
            v146 += 2;
            v148 += 4;
            v150 -= 4;
          }

          while (v150);
          if (v91 == v95)
          {
            goto LABEL_82;
          }
        }

        do
        {
          v112 = v12[v111] + v97[v111];
          v113 = v112;
          a3[v111] = v113;
          v12[v111] = v112 - v98[v111];
          ++v111;
        }

        while (v111 < a6);
      }

LABEL_82:
      a3 = (a3 + v26);
      ++v10;
      v23 = v96 - 1;
      if (!v96)
      {
        return;
      }
    }

    v99 = 0;
    v100 = 0;
    v101 = 2;
    goto LABEL_85;
  }

  if (a6 == 1)
  {
    v83 = *v12;
    do
    {
      v84 = *(v10 + 8 - 8 * v16);
      v85 = *v10++;
      v86 = v83 + *v85;
      v87 = v86;
      *a3 = v87;
      v83 = v86 - *v84;
      *v12 = v83;
      a3 = (a3 + a4);
      --a5;
    }

    while (a5);
  }
}

void sub_10036ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036EDB4(void *a1)
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

void sub_10036EE38(void *a1)
{
  *a1 = off_10047B668;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  nullsub_1();
}

void sub_10036EE9C(void *a1)
{
  *a1 = off_10047B668;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1();

  operator delete();
}

void sub_10036EF10(uint64_t a1, void *a2, double *a3, int a4, int a5, unsigned int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v170 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 2;
  if (v14 == a6)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = *(a1 + 8);
      if (v15 != v16 - 1)
      {
        v171[0] = 0;
        v171[1] = 0;
        v17 = sub_1002A80E0(v171, 19);
        *(v17 + 15) = 825058682;
        *v17 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v171, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
      }

      v10 = &a2[v16 - 1];
      goto LABEL_36;
    }
  }

  else
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = v12 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
  }

  bzero(v12, 4 * a6);
  v18 = *(a1 + 24);
  v19 = *(a1 + 8);
  if (v18 >= v19 - 1)
  {
    goto LABEL_36;
  }

  if (a6 < 1)
  {
    v10 += (v19 - v18 - 2) + 1;
    *(a1 + 24) = v19 - 1;
    goto LABEL_36;
  }

  if (a6 >= 8)
  {
    v20 = 4 * a6;
    while (1)
    {
      v24 = *v10;
      if (v12 >= *v10 + v20 || v24 >= &v12->i8[v20])
      {
        v26 = v24 + 1;
        v27 = a6 & 0x7FFFFFF8;
        v28 = v12 + 1;
        do
        {
          v29 = vaddq_s32(*v28, *v26);
          v28[-1] = vaddq_s32(v28[-1], v26[-1]);
          *v28 = v29;
          v26 += 2;
          v28 += 2;
          v27 -= 8;
        }

        while (v27);
        v30 = a6 & 0x7FFFFFF8;
        if (v30 == a6)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = &v24->i32[v30];
      v32 = &v12->i32[v30];
      v33 = a6 - v30;
      do
      {
        v34 = *v31++;
        *v32++ += v34;
        --v33;
      }

      while (v33);
LABEL_23:
      v23 = *(a1 + 24) + 1;
      *(a1 + 24) = v23;
      ++v10;
      if (v23 >= *(a1 + 8) - 1)
      {
        goto LABEL_36;
      }
    }
  }

  do
  {
    v22 = *v10;
    v12->i32[0] += **v10;
    if (a6 != 1)
    {
      v12->i32[1] += v22->i32[1];
      if (a6 != 2)
      {
        v12->i32[2] += v22->i32[2];
        if (a6 != 3)
        {
          v12->i32[3] += v22->i32[3];
          if (a6 != 4)
          {
            v12[1].i32[0] += v22[1].i32[0];
            if (a6 != 5)
            {
              v12[1].i32[1] += v22[1].i32[1];
              if (a6 != 6)
              {
                v12[1].i32[2] += v22[1].i32[2];
              }
            }
          }
        }
      }
    }

    v21 = *(a1 + 24) + 1;
    *(a1 + 24) = v21;
    ++v10;
  }

  while (v21 < *(a1 + 8) - 1);
LABEL_36:
  if (!a5)
  {
    return;
  }

  v35 = a5 - 1;
  v36 = a6 - 2;
  v37 = a4;
  if (v170 != 1.0)
  {
    v38 = 4 * a6;
    v39 = v12->u64 + v38;
    if (v36 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v36;
    }

    v41 = ((4 * v40) & 0x1FFFFFFF8) + 8;
    v42 = (v12 + v41);
    v43 = (v40 >> 1) + 1;
    while (1)
    {
      v44 = v35;
      v45 = *v10;
      v46 = v10[1 - *(a1 + 8)];
      if (a6 < 2)
      {
        v47 = 0;
        if (a6 <= 0)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      if (v36 < 6)
      {
        break;
      }

      v48 = 0;
      v63 = v12 < v46 + v41 && v46 < v42;
      if (v45 < v42 && v12 < &v45->i8[v41])
      {
        goto LABEL_48;
      }

      v49 = v170;
      if (v63)
      {
        goto LABEL_49;
      }

      v65 = v43 & 0x7FFFFFFC;
      v66 = v10[1 - *(a1 + 8)];
      v67 = *v10;
      v68 = v12;
      v69 = a3;
      do
      {
        v70 = *v67;
        v71 = v67[1];
        v67 += 2;
        v72 = vaddq_s32(v71, v68[1]);
        v73 = vaddq_s32(v70, *v68);
        v74 = vuzp1q_s32(v73, v72);
        v75 = vuzp2q_s32(v73, v72);
        v76.i64[0] = v74.i32[0];
        v76.i64[1] = v74.i32[1];
        v77 = vcvtq_f64_s64(v76);
        v76.i64[0] = v74.i32[2];
        v76.i64[1] = v74.i32[3];
        v78 = vcvtq_f64_s64(v76);
        v172.val[0] = vmulq_n_f64(v77, v170);
        v76.i64[0] = v75.i32[0];
        v76.i64[1] = v75.i32[1];
        v172.val[1] = vmulq_n_f64(vcvtq_f64_s64(v76), v170);
        v173.val[0] = vmulq_n_f64(v78, v170);
        v76.i64[0] = v75.i32[2];
        v76.i64[1] = v75.i32[3];
        v79 = v69 + 8;
        vst2q_f64(v69, v172);
        v80 = v69 + 4;
        v173.val[1] = vmulq_n_f64(vcvtq_f64_s64(v76), v170);
        vst2q_f64(v80, v173);
        v82 = *v66;
        v81 = v66[1];
        v66 += 2;
        *v68 = vsubq_s32(v73, v82);
        v68[1] = vsubq_s32(v72, v81);
        v68 += 2;
        v69 = v79;
        v65 -= 4;
      }

      while (v65);
      v48 = 2 * (v43 & 0x7FFFFFFC);
      if (v43 != (v43 & 0x7FFFFFFC))
      {
        goto LABEL_49;
      }

LABEL_51:
      v47 = v48;
      if (v48 >= a6)
      {
        goto LABEL_42;
      }

LABEL_52:
      v58 = a6 - v47;
      if (v58 <= 3 || ((v83 = 4 * v47, v84 = &v12->i32[v47], v84 < v46 + v38) ? (v85 = v46 + 4 * v47 >= v39) : (v85 = 1), v85 ? (v86 = 0) : (v86 = 1), v45 + 4 * v47 < v39 ? (v87 = v84 >= &v45->i32[v38 / 4]) : (v87 = 1), !v87 || (v86 & 1) != 0))
      {
        v59 = v47;
        v60 = v170;
      }

      else
      {
        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + v47;
        v88 = (v12 + v83);
        v89 = (v45 + v83);
        v90 = v47;
        v91 = (v46 + v83);
        v92 = v58 & 0xFFFFFFFFFFFFFFFCLL;
        v60 = v170;
        do
        {
          v93 = *v89++;
          v94 = vaddq_s32(v93, *v88);
          v95.i64[0] = v94.i32[2];
          v95.i64[1] = v94.i32[3];
          v96 = vcvtq_f64_s64(v95);
          v95.i64[0] = v94.i32[0];
          v95.i64[1] = v94.i32[1];
          v97 = &a3[v90];
          v98 = *v91++;
          *v97 = vmulq_n_f64(vcvtq_f64_s64(v95), v170);
          v97[1] = vmulq_n_f64(v96, v170);
          *v88++ = vsubq_s32(v94, v98);
          v90 += 4;
          v92 -= 4;
        }

        while (v92);
        if (v58 == (v58 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_42;
        }
      }

      do
      {
        v61 = v45->i32[v59] + v12->i32[v59];
        a3[v59] = v60 * v61;
        v12->i32[v59] = v61 - *(v46 + 4 * v59);
        ++v59;
      }

      while (a6 != v59);
LABEL_42:
      a3 = (a3 + v37);
      ++v10;
      v35 = v44 - 1;
      if (!v44)
      {
        return;
      }
    }

    v48 = 0;
LABEL_48:
    v49 = v170;
LABEL_49:
    v50 = (v12 + 4 * v48);
    v51 = (v45 + 4 * v48);
    v52 = v48;
    v53 = (v46 + 4 * v48);
    do
    {
      v54 = *v51++;
      v55 = vadd_s32(v54, *v50);
      v56.i64[0] = v55.i32[0];
      v56.i64[1] = v55.i32[1];
      *&a3[v52] = vmulq_n_f64(vcvtq_f64_s64(v56), v49);
      v57 = *v53++;
      *v50++ = vsub_s32(v55, v57);
      v48 += 2;
      v52 += 2;
    }

    while (v48 <= v36);
    goto LABEL_51;
  }

  if (a6 >= 2)
  {
    if ((v36 & 0x7FFFFFFE) + 3 <= a6)
    {
      v103 = a6;
    }

    else
    {
      v103 = (v36 & 0x7FFFFFFE) + 3;
    }

    v104 = (4 * (a6 - 2)) & 0x1FFFFFFF8;
    v105 = 4 * v103 - v104;
    v106 = v103 - (v36 & 0x7FFFFFFE) - 2;
    v107 = v104 + 8;
    v108 = (&v12->u64[1] + v104);
    v109 = (v36 >> 1) + 1;
    v110 = v106 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v111 = v35;
      v112 = *v10;
      v113 = v10[1 - *(a1 + 8)];
      if (v36 <= 5)
      {
        break;
      }

      v114 = 0;
      v130 = v12 < v113 + v107 && v113 < v108;
      v116 = 2;
      if (v112 < v108 && v12 < &v112->i8[v107])
      {
        v115 = 0;
LABEL_100:
        v117 = v114 - 1;
        v118 = v116 - 2;
        v119 = (v113 + 4 * v115);
        v120 = v115;
        v121 = (v112 + 4 * v115);
        v122 = (v12 + 4 * v115);
        do
        {
          v123 = *v121++;
          v124 = vadd_s32(v123, *v122);
          v125.i64[0] = v124.i32[0];
          v125.i64[1] = v124.i32[1];
          *&a3[v120] = vcvtq_f64_s64(v125);
          v126 = *v119++;
          *v122++ = vsub_s32(v124, v126);
          v115 += 2;
          ++v117;
          v118 += 2;
          v120 += 2;
        }

        while (v115 <= v36);
        goto LABEL_102;
      }

      v115 = 0;
      if (v130)
      {
        goto LABEL_100;
      }

      v132 = v109 & 0x7FFFFFFC;
      v133 = v10[1 - *(a1 + 8)];
      v134 = *v10;
      v135 = v12;
      v136 = a3;
      do
      {
        v137 = *v134;
        v138 = v134[1];
        v134 += 2;
        v139 = vaddq_s32(v138, v135[1]);
        v140 = vaddq_s32(v137, *v135);
        v141.i64[0] = v140.i32[0];
        v141.i64[1] = v140.i32[1];
        v142 = vcvtq_f64_s64(v141);
        v141.i64[0] = v139.i32[0];
        v141.i64[1] = v139.i32[1];
        v143 = vcvtq_f64_s64(v141);
        v141.i64[0] = v140.i32[2];
        v141.i64[1] = v140.i32[3];
        v144 = vcvtq_f64_s64(v141);
        v141.i64[0] = v139.i32[2];
        v141.i64[1] = v139.i32[3];
        *(v136 + 2) = v143;
        *(v136 + 3) = vcvtq_f64_s64(v141);
        *v136 = v142;
        *(v136 + 1) = v144;
        v136 += 8;
        v145 = *v133;
        v146 = v133[1];
        v133 += 2;
        *v135 = vsubq_s32(v140, v145);
        v135[1] = vsubq_s32(v139, v146);
        v135 += 2;
        v132 -= 4;
      }

      while (v132);
      v114 = v109 & 0x7FFFFFFC;
      v116 = (8 * ((v114 >> 2) & 0x1FFFFFFF)) | 2;
      v115 = 2 * v114;
      v117 = v114 - 1;
      v118 = v115;
      if (v109 != v114)
      {
        goto LABEL_100;
      }

LABEL_102:
      if (v115 < a6)
      {
        if (v106 <= 3 || ((v147 = 8 * v117, v148 = 8 * v117 + 8, v149 = &v12->i8[v148], v150 = v105 + v147, v151 = &v12->i8[v150], v152 = &v112->i8[v148], v153 = &v112->i8[v150], v154 = v113 + v148, v149 < v113 + v150) ? (v155 = v154 >= v151) : (v155 = 1), v155 ? (v156 = 0) : (v156 = 1), v152 < v151 ? (v157 = v149 >= v153) : (v157 = 1), !v157 || (v156 & 1) != 0))
        {
          v127 = v118;
        }

        else
        {
          v127 = v118 + v110;
          v158 = 4 * v118;
          v159 = (v12 + 4 * v118);
          v160 = (v112 + 4 * v118);
          v161 = v118;
          v162 = (v113 + v158);
          v163 = v106 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v164 = *v160++;
            v165 = vaddq_s32(v164, *v159);
            v166.i64[0] = v165.i32[0];
            v166.i64[1] = v165.i32[1];
            v167 = vcvtq_f64_s64(v166);
            v166.i64[0] = v165.i32[2];
            v166.i64[1] = v165.i32[3];
            v168 = &a3[v161];
            v169 = *v162++;
            *v168 = v167;
            *(v168 + 1) = vcvtq_f64_s64(v166);
            *v159++ = vsubq_s32(v165, v169);
            v161 += 4;
            v163 -= 4;
          }

          while (v163);
          if (v106 == v110)
          {
            goto LABEL_97;
          }
        }

        do
        {
          v128 = v112->i32[v127] + v12->i32[v127];
          a3[v127] = v128;
          v12->i32[v127] = v128 - *(v113 + 4 * v127);
          ++v127;
        }

        while (v127 < a6);
      }

LABEL_97:
      a3 = (a3 + v37);
      ++v10;
      v35 = v111 - 1;
      if (!v111)
      {
        return;
      }
    }

    v114 = 0;
    v115 = 0;
    v116 = 2;
    goto LABEL_100;
  }

  if (a6 == 1)
  {
    v99 = v12->i32[0];
    v100 = v10 + 1;
    do
    {
      v101 = v100[-*(a1 + 8)];
      v102 = **(v100 - 1) + v99;
      *a3 = v102;
      v99 = v102 - *v101;
      v12->i32[0] = v99;
      a3 = (a3 + a4);
      ++v100;
      --a5;
    }

    while (a5);
  }
}