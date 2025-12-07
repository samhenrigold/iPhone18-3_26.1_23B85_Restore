_BYTE *sub_1002C7A50(_BYTE *a1, unint64_t *a2, int a3, int a4, int *a5, int a6, int a7, unint64_t a8)
{
  v10 = a8;
  v11 = a8 >> 8;
  v12 = a8 >> 16;
  v68 = v12;
  v66 = v12;
  v67 = v10;
  v69 = v10;
  v13 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v12;
  v17 = -a4;
  v65 = v10;
  v63 = v12;
  v64 = v10;
  v18 = a3;
  v41 = v10;
  v19 = v12;
  v45 = v12;
  v43 = v12;
  v44 = v10;
  v42 = v12;
  v52 = a1;
  v20 = *a2;
  v21 = v11;
  v22 = a1;
  v46 = v18;
  v61 = v12;
  v62 = v10;
  v60 = v10;
  v58 = v10;
  v59 = v12;
  v70 = v10;
  v71 = v12;
  v57 = v10;
  v55 = v10;
  v56 = v12;
  v54 = v12;
  v23 = v10;
  v24 = v10;
  v26 = v12;
  v25 = v10;
  do
  {
    v53 = a7;
    v27 = &v52[a7];
    if (v27 <= v20)
    {
      v28 = v27;
    }

    else
    {
      v28 = v20;
    }

    if (v52 < v28)
    {
      v29 = v52 + 3;
      if (v28 > (v52 + 3))
      {
        v29 = v28;
      }

      v30 = v29 - 3 - v52;
      v31 = 1;
      if (v30)
      {
        v31 = 2;
      }

      v32 = v31 + (v30 - (v30 != 0)) / 3;
      v22 = v52;
      if (v32 < 0x20)
      {
        goto LABEL_22;
      }

      v48 = v32;
      v33 = v32 & 0x7FFFFFFFFFFFFFE0;
      v34 = 3 * (v32 & 0x7FFFFFFFFFFFFFE0);
      v35 = v52;
      v22 = &v52[v34];
      v47 = v33;
      do
      {
        LOBYTE(v36) = v65;
        BYTE1(v36) = v11;
        BYTE2(v36) = v16;
        BYTE3(v36) = v15;
        BYTE4(v36) = v11;
        BYTE5(v36) = v14;
        BYTE6(v36) = v57;
        LOBYTE(v37) = v21;
        BYTE1(v37) = v42;
        BYTE7(v36) = v11;
        BYTE2(v37) = v62;
        BYTE3(v37) = v11;
        BYTE8(v36) = v13;
        BYTE4(v37) = v43;
        BYTE5(v37) = v44;
        BYTE9(v36) = v69;
        BYTE6(v37) = v11;
        BYTE7(v37) = v26;
        BYTE10(v36) = v11;
        BYTE8(v37) = v25;
        BYTE9(v37) = v11;
        BYTE11(v36) = v66;
        BYTE10(v37) = v61;
        BYTE11(v37) = v24;
        BYTE12(v36) = v67;
        LOBYTE(v38) = v54;
        BYTE1(v38) = v58;
        BYTE12(v37) = v11;
        BYTE2(v38) = v11;
        BYTE3(v38) = v59;
        BYTE13(v36) = v11;
        BYTE4(v38) = v60;
        BYTE5(v38) = v11;
        BYTE13(v37) = v45;
        BYTE6(v38) = v19;
        BYTE7(v38) = v41;
        BYTE14(v36) = v68;
        v21 = v11;
        BYTE8(v38) = v11;
        BYTE9(v38) = v56;
        BYTE14(v37) = v23;
        BYTE10(v38) = v55;
        BYTE11(v38) = v11;
        HIBYTE(v36) = v70;
        BYTE12(v38) = v63;
        BYTE13(v38) = v64;
        HIBYTE(v37) = v11;
        BYTE14(v38) = v11;
        HIBYTE(v38) = v71;
        *v35 = v36;
        v35[1] = v37;
        v35[2] = v38;
        v35[3] = v36;
        v35[4] = v37;
        v35[5] = v38;
        v35 += 6;
        v33 -= 32;
      }

      while (v33);
      v17 = -a4;
      v18 = v46;
      v10 = v70;
      LOBYTE(v12) = v71;
      if (v48 != v47)
      {
LABEL_22:
        do
        {
          *v22 = v10;
          v22[1] = v11;
          v22[2] = v12;
          v22 += 3;
        }

        while (v22 < v28);
      }

      v20 = *a2;
    }

    if (v22 >= v20)
    {
      v20 += v18;
      *a2 = v20;
      v22 = (v20 + v17);
      v39 = *a5 + 1;
      *a5 = v39;
      v21 = v11;
      if (v39 >= a6)
      {
        break;
      }
    }

    a7 = v53 + v52 - v28;
    v52 = v22;
  }

  while (a7 > 0);
  return v22;
}

void *sub_1002C7F14(void *__b, unint64_t *a2, int a3, int a4, int *a5, int a6, int a7, int __c)
{
  v13 = __b;
  v14 = *a2;
  v15 = a3;
  v16 = -a4;
  do
  {
    if (v13 + a7 <= v14)
    {
      v17 = v13 + a7;
    }

    else
    {
      v17 = v14;
    }

    if (v13 < v17)
    {
      memset(v13, __c, v17 - v13);
      v14 = *a2;
      __b = v17;
    }

    if (__b >= v14)
    {
      v14 += v15;
      *a2 = v14;
      __b = (v14 + v16);
      v18 = *a5 + 1;
      *a5 = v18;
      if (v18 >= a6)
      {
        break;
      }
    }

    a7 += v13 - v17;
    v13 = __b;
  }

  while (a7 > 0);
  return __b;
}

uint64_t sub_1002C7FE4(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a1 + 3 * a3;
    do
    {
      v5 = a1;
      v6 = *a2++;
      a1 += 3;
      *v5 = *(a4 + 4 * v6);
    }

    while (v5 + 6 < v4);
  }

  v7 = (a4 + 4 * *a2);
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 2);
  *a1 = v8;
  *(a1 + 2) = v7;
  return a1 + 3;
}

_BYTE *sub_1002C8034(_BYTE *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    v5 = a1;
    do
    {
      v6 = *a2++;
      *v5++ = *(a4 + v6);
      --v4;
    }

    while (v4);
  }

  return &a1[a3];
}

unint64_t sub_1002C8060(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  v4 = a1;
  result = a1 + 3 * a3;
  if (a3 >= 3)
  {
    do
    {
      v6 = *a2++;
      *v4 = *(a4 + ((v6 >> 2) & 0x3C));
      *(v4 + 3) = *(a4 + 4 * (v6 & 0xF));
      v7 = v4 + 12;
      v4 += 6;
    }

    while (v7 < result);
  }

  v8 = *a2;
  v9 = (a4 + ((v8 >> 2) & 0x3C));
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 2);
  *v4 = v10;
  *(v4 + 2) = v9;
  if (v4 + 6 == result)
  {
    v11 = (a4 + 4 * (v8 & 0xF));
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 2);
    *(v4 + 3) = v12;
    *(v4 + 5) = v11;
  }

  return result;
}

_BYTE *sub_1002C80F0(_BYTE *a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  v4 = a1;
  result = &a1[a3];
  if (a3 >= 3)
  {
    do
    {
      v6 = *a2++;
      *v4 = *(a4 + (v6 >> 4));
      v4[1] = *(a4 + (v6 & 0xF));
      v7 = (v4 + 4);
      v4 += 2;
    }

    while (v7 < result);
  }

  v8 = *a2;
  *v4 = *(a4 + (v8 >> 4));
  if (v4 + 2 == result)
  {
    v4[1] = *(a4 + (v8 & 0xF));
  }

  return result;
}

int *sub_1002C815C(int *a1, char *a2, int a3, uint64_t a4)
{
  v4 = (a1 + 3 * a3);
  v5 = *a4;
  v6 = *(a4 + 4);
  v7 = *(a4 + 5);
  v8 = *(a4 + 6);
  if (a3 < 9)
  {
    v20 = a1;
    if (a1 >= v4)
    {
      return v20;
    }

    goto LABEL_31;
  }

  v9 = v6 | (v7 << 8) | (v8 << 16) | (*(a4 + 7) << 24);
  do
  {
    v11 = *a2++;
    v10 = v11;
    if (v11 >= 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = v9;
    }

    *a1 = v12;
    if ((v10 & 0x40) != 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v5;
    }

    *(a1 + 3) = v13;
    if ((v10 & 0x20) != 0)
    {
      v14 = v9;
    }

    else
    {
      v14 = v5;
    }

    *(a1 + 6) = v14;
    if ((v10 & 0x10) != 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = v5;
    }

    *(a1 + 9) = v15;
    if ((v10 & 8) != 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v5;
    }

    a1[3] = v16;
    if ((v10 & 4) != 0)
    {
      v17 = v9;
    }

    else
    {
      v17 = v5;
    }

    *(a1 + 15) = v17;
    if ((v10 & 2) != 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v5;
    }

    *(a1 + 18) = v18;
    if (v10)
    {
      v19 = v9;
    }

    else
    {
      v19 = v5;
    }

    *(a1 + 21) = v19;
    v20 = a1 + 6;
    v21 = a1 + 12;
    a1 += 6;
  }

  while (v21 < v4);
  if (v20 < v4)
  {
LABEL_31:
    v22 = *a2;
    do
    {
      if (v22 < 0)
      {
        v23 = v6;
      }

      else
      {
        v23 = v5;
      }

      if (v22 < 0)
      {
        v24 = v7;
      }

      else
      {
        v24 = BYTE1(v5);
      }

      if (v22 < 0)
      {
        v25 = v8;
      }

      else
      {
        v25 = BYTE2(v5);
      }

      *v20 = v23;
      *(v20 + 1) = v24;
      *(v20 + 2) = v25;
      v20 = (v20 + 3);
      v22 *= 2;
    }

    while (v20 < v4);
  }

  return v20;
}

_BYTE *sub_1002C8260(_BYTE *a1, char *a2, int a3, unsigned __int8 *a4)
{
  v4 = &a1[a3];
  v5 = *a4;
  v6 = a4[1];
  if (a3 < 9)
  {
    v9 = a1;
    v18 = a1;
    if (a1 >= v4)
    {
      return v18;
    }
  }

  else
  {
    v7 = vdup_n_s16(v5);
    v8 = vdup_n_s16(v6);
    v9 = a1;
    v10 = a1;
    do
    {
      v12 = *a2++;
      v11 = v12;
      v13 = v12;
      if (v12 >= 0)
      {
        v14 = v5;
      }

      else
      {
        v14 = v6;
      }

      *v10 = v14;
      *(v10 + 1) = vuzp1_s8(vbsl_s8(vmovn_s32(vceqzq_s32(vandq_s8(vdupq_n_s32(v13), xmmword_1003E6760))), v7, v8), v7).u32[0];
      if ((v11 & 4) != 0)
      {
        v15 = v6;
      }

      else
      {
        v15 = v5;
      }

      v10[5] = v15;
      if ((v11 & 2) != 0)
      {
        v16 = v6;
      }

      else
      {
        v16 = v5;
      }

      v10[6] = v16;
      if (v11)
      {
        v17 = v6;
      }

      else
      {
        v17 = v5;
      }

      v10[7] = v17;
      v18 = v10 + 8;
      v9 += 8;
      v19 = v10 + 16;
      v10 += 8;
    }

    while (v19 < v4);
    if (v18 >= v4)
    {
      return v18;
    }
  }

  v21 = *a2;
  v22 = (&a1[a3] - v9);
  v23 = &v22[v18];
  do
  {
    if (v21 < 0)
    {
      v24 = v6;
    }

    else
    {
      v24 = v5;
    }

    *v18++ = v24;
    v21 *= 2;
    --v22;
  }

  while (v22);
  return v23;
}

uint64_t sub_1002C8350(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 40);
  *&v137 = 0;
  v139 = 0;
  *&v140[12] = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v135 = &v137;
  v136 = v6 + 8;
  if ((v6 + 8) >= 0x33)
  {
    is_mul_ok(v6 + 8, 0x18uLL);
    operator new[]();
  }

  v133[0] = 0;
  v7 = *(a1 + 40);
  v131 = 0;
  v8 = *(a1 + 96);
  if ((*a1 & 0x3000) != 0x1000 || (*a1 & 0x4000) == 0 || *(a1 + 44) != 1)
  {
    v121 = 0;
    v122 = 0;
    qmemcpy(sub_1002A80E0(&v121, 129), "((((chain)->flags & (((1 << 2) - 1)<<12)) == (1 << 12) && (chain)->elem_size == 1) && (((chain)->flags & (1 << (2 + 12))) != 0))", 129);
    sub_1002A8980(-215, &v121, "icvApproximateChainTC89", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/approx.cpp", 74);
  }

  if (a2 <= 127)
  {
    v121 = 0;
    v122 = 0;
    qmemcpy(sub_1002A80E0(&v121, 37), "header_size >= (int)sizeof(CvContour)", 37);
    sub_1002A8980(-215, &v121, "icvApproximateChainTC89", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/approx.cpp", 75);
  }

  sub_100232BC0(*a1 & 0xFFFFF000 | 0xC, a2, 8, a3, v123);
  if (!*(a1 + 40))
  {
    v22 = v124;
    if (v124 >= v125)
    {
      sub_100232E70(v123);
      v22 = v124;
    }

    *v22 = v8;
    ++v124;
    goto LABEL_32;
  }

  v130 = 0;
  sub_1002EBEB8(a1, v126);
  v134 = 0;
  if (v7 >= 1)
  {
    v9 = v133;
    v10 = v7;
    v11 = &v137;
    while (1)
    {
      v12 = v127;
      v13 = *v129;
      v129 = v127;
      v14 = v131;
      if (v127)
      {
        v15 = *v127;
        v130 = *v127++;
        if ((v12 + 1) >= v128)
        {
          sub_10023323C(v126, 1);
          v15 = v130;
          v17 = v131;
          LODWORD(v16) = HIDWORD(v131);
        }

        else
        {
          v16 = HIDWORD(v131);
          v17 = v131;
        }

        v18 = v15;
        v20 = &v132[v15];
        LODWORD(v131) = v17 + *v20;
        HIDWORD(v131) = v16 + v20[1];
        if (a4 > 2)
        {
LABEL_18:
          v19 = dword_1003E6780[v18 - v13 + 7];
          if (v15 != v13)
          {
            *(v9 + 2) = v11;
            v9 = v11;
          }

          *(v11 + 3) = v19;
          *v11 = v14;
          goto LABEL_13;
        }
      }

      else
      {
        v18 = v130;
        v15 = v130;
        if (a4 > 2)
        {
          goto LABEL_18;
        }
      }

      if (a4 == 1 || v15 != v13)
      {
        v21 = v124;
        if (v124 >= v125)
        {
          sub_100232E70(v123);
          v21 = v124;
        }

        *v21 = v14;
        ++v124;
      }

LABEL_13:
      v11 = (v11 + 24);
      if (!--v10)
      {
        goto LABEL_31;
      }
    }
  }

  LODWORD(v7) = 0;
  v9 = v133;
LABEL_31:
  if (a4 >= 3)
  {
    *(v9 + 2) = 0;
    v25 = v134;
    v26 = v134;
    do
    {
      v27 = 0;
      v28 = 0;
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v26 - &v137) >> 3);
      v30 = &v137 + 6 * v29;
      v31 = *v30;
      v32 = v30[1];
      if (v29 <= 0)
      {
        v33 = v7;
      }

      else
      {
        v33 = 0;
      }

      v36 = &v137 + 6 * v29 + 6 * v33 - 6;
      v34 = *v36;
      v35 = v36[1];
      v37 = v35 - v32;
      if (v29 + 1 >= v7)
      {
        v38 = v7;
      }

      else
      {
        v38 = 0;
      }

      v39 = &v137 + 6 * (v29 + 1 - v38);
      v40 = *v39 - v34;
      v41 = v39[1] - v35;
      v42 = v41 * (v31 - v34) + v37 * v40;
      v43 = v40 * v40 + v41 * v41;
      v44 = &v137 + 24 * v29 + 52;
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v26 - &v137) >> 3);
      v46 = 2;
      while (1)
      {
        v47 = v29 + v46 >= v7 ? v7 : 0;
        v48 = &v44[-24 * v47];
        v49 = &v137 + 6 * v29 + 6 * v28 + 6 * (v7 & ((v29 - 2 + v28) >> 31)) - 12;
        v50 = *v49;
        v51 = v49[1];
        v52 = *(v48 - 1) - *v49;
        v53 = *v48 - v51;
        v54 = v52 * v52 + v53 * v53;
        if (v43 >= v54)
        {
          break;
        }

        v55 = v53 * (v31 - v50) + (v51 - v32) * v52;
        v56 = v42 * v54 - v55 * v43;
        if (v42 >= 1 && SLODWORD(v56) < 1)
        {
          break;
        }

        if (v42 < 0 && (LODWORD(v56) & 0x80000000) == 0)
        {
          break;
        }

        v44 += 24;
        --v28;
        ++v46;
        LODWORD(v45) = v45 + 1;
        --v27;
        v43 = v52 * v52 + v53 * v53;
        v42 = v55;
      }

      v57 = 1 - v28;
      *(v26 + 2) = 1 - v28;
      if (a4 == 4)
      {
        v58 = 0.0;
        if (v29 - v28 + 1 >= v7)
        {
          v59 = v7;
        }

        else
        {
          v59 = 0;
        }

        v60 = v29 - v59 - v28 + 1;
        v61 = &v137 + 6 * (v29 + v28 - 1 + (v7 & ((v29 + v28 - 1) >> 31)));
        v62 = v61[1];
        v63 = *v61 - v31;
        v64 = v62 - v32;
        v65 = &v137 + 6 * v60;
        v66 = v65[1];
        v67 = *v65 - v31;
        v68 = v66 - v32;
        v69 = (v66 - v32) | v67;
        if (v64 | v63)
        {
          v70 = v69 == 0;
        }

        else
        {
          v70 = 1;
        }

        if (!v70)
        {
          v71 = (v67 * v63 + v68 * v64) / sqrt((v64 * v64 + v63 * v63) * (v68 * v68 + v67 * v67));
          v72 = v71 + 1.1;
          v58 = v72;
          if ((2 - v28) >= 3)
          {
            v73 = -v28;
            v74 = &v137 + 24 * v45;
            do
            {
              if (v29 + v73 >= v7)
              {
                v76 = v7;
              }

              else
              {
                v76 = 0;
              }

              v77 = &v137 + 6 * (v29 + v27 + (v7 & ((v29 + v27) >> 31)));
              v78 = v77[1];
              v79 = *v77 - v31;
              v80 = &v74[-24 * v76];
              v81 = *(v80 + 1);
              v82 = *v80 - v31;
              if ((v78 - v32) | v79)
              {
                v83 = ((v81 - v32) | v82) == 0;
              }

              else
              {
                v83 = 1;
              }

              if (v83)
              {
                break;
              }

              v84 = (v82 * v79 + (v81 - v32) * (v78 - v32)) / sqrt(((v78 - v32) * (v78 - v32) + v79 * v79) * ((v81 - v32) * (v81 - v32) + v82 * v82));
              v85 = v84 + 1.1;
              if (v73 < v57 && SLODWORD(v58) >= SLODWORD(v85))
              {
                break;
              }

              v74 -= 24;
              ++v27;
              v58 = v85;
            }

            while (v73-- >= 2);
          }
        }

        *(v26 + 3) = v58;
      }

      v26 = *(v26 + 2);
    }

    while (v26);
    v86 = v133;
    do
    {
      v88 = v25[2] >> 1;
      v87 = v25;
      if (v88 >= 1)
      {
        v89 = v25[3];
        v90 = -1431655765 * ((v25 - &v137) >> 3);
        v91 = v90 + 1;
        v92 = v90 - 1;
        do
        {
          if (*(&v137 + 6 * v92 + 6 * (v7 & (v92 >> 31)) + 3) > v89 || (v91 >= v7 ? (v93 = v7) : (v93 = 0), *(&v137 + 6 * (v91 - v93) + 3) > v89))
          {
            *(v86 + 2) = *(v25 + 2);
            v25[3] = 0;
            v87 = v86;
            goto LABEL_80;
          }

          ++v91;
          --v92;
          --v88;
        }

        while (v88);
        v87 = v25;
      }

LABEL_80:
      v25 = *(v25 + 2);
      v86 = v87;
    }

    while (v25);
    v94 = v133;
    v95 = v134;
    do
    {
      v96 = v95;
      if (*(v95 + 2) == 1)
      {
        v97 = *(v95 + 3);
        v98 = -1431655765 * ((v95 - &v137) >> 3);
        v99 = v98 <= 0 ? v7 : 0;
        if (v97 <= *(&v137 + 6 * v98 + 6 * v99 - 3) || ((v100 = v98 + 1, v100 >= v7) ? (v101 = v7) : (v101 = 0), v96 = v95, v97 <= *(&v137 + 6 * (v100 - v101) + 3)))
        {
          v94[2] = *(v95 + 2);
          *(v95 + 3) = 0;
          v96 = v94;
        }
      }

      v95 = *(v95 + 2);
      v94 = v96;
    }

    while (v95);
    if (a4 == 4)
    {
      goto LABEL_104;
    }

    if (HIDWORD(v137))
    {
      v104 = &v137 + 24 * v7;
      if (*(v104 - 3))
      {
        if (v7 < 2)
        {
          LODWORD(v106) = 1;
        }

        else
        {
          v105 = v140;
          v106 = 1;
          v107 = v140;
          while (1)
          {
            v108 = *v107;
            v107 += 6;
            if (!v108)
            {
              break;
            }

            *(v105 - 6) = 0;
            ++v106;
            v105 = v107;
            if (v7 == v106)
            {
              goto LABEL_104;
            }
          }
        }

        if (v106 == v7)
        {
LABEL_104:
          v102 = v134;
          v103 = v124;
          do
          {
            if (v103 >= v125)
            {
              sub_100232E70(v123);
              v103 = v124;
            }

            *v103 = *v102;
            v103 = ++v124;
            v102 = v102[2];
          }

          while (v102);
          goto LABEL_32;
        }

        v109 = v106 - 1;
        if (v7 < 3)
        {
          v110 = v7 - 2;
        }

        else
        {
          v110 = v7 - 2;
          do
          {
            v111 = &v137 + 24 * v110;
            if (!*(v111 + 3))
            {
              goto LABEL_123;
            }

            *(v111 + 2) = 0;
            *(v111 + 9) = 0;
            v112 = v110-- != 0;
          }

          while (v110 != 0 && v112);
          v110 = 0;
        }

LABEL_123:
        if (!v109)
        {
          if (v110 == v7 - 2)
          {
            v109 = -1431655765 * ((v138 - &v137) >> 3);
            *v104 = v137;
            *(v104 + 2) = 0;
            *(v104 - 1) = v104;
          }

          else
          {
            v109 = 0;
          }
        }

        v134 = &v137 + 24 * v109;
      }
    }

    v113 = v133;
    v114 = 1;
    v115 = v134;
    v116 = v133;
    while (1)
    {
      while (1)
      {
        v117 = *(v115 + 2);
        if (!v117 || v117 - v115 != 24)
        {
          break;
        }

        ++v114;
        v113 = v115;
        v115 = *(v115 + 2);
        if (!v115)
        {
          goto LABEL_104;
        }
      }

      if (v114 < 2)
      {
        goto LABEL_140;
      }

      if (v114 != 2)
      {
        break;
      }

      v119 = *(v113 + 3);
      v120 = *(v115 + 3);
      if (v119 <= v120 && (v119 != v120 || *(v113 + 2) > *(v115 + 2)))
      {
        goto LABEL_139;
      }

      v113[2] = v117;
LABEL_140:
      v114 = 1;
      v116 = v115;
      v113 = v115;
      v115 = *(v115 + 2);
      if (!v115)
      {
        goto LABEL_104;
      }
    }

    v116 = v116[2];
LABEL_139:
    v116[2] = v115;
    goto LABEL_140;
  }

LABEL_32:
  result = sub_100232D30(v123);
  if (v135 != &v137 && v135 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_1002C8E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1002A8124(&a11);
  if (a34 != a10 && a34 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

void sub_1002C8EA4(uint64_t a1, uint64_t a2, int a3, unsigned int a4, double a5, double a6)
{
  sub_1002ACE7C(&v55, &off_100476D40);
  if (sub_100274398(a1, -1))
  {
    v46 = 0uLL;
    v12 = sub_1002A80E0(&v46, 17);
    *(v12 + 16) = 48;
    *v12 = *"_src.depth() == 0";
    sub_1002A8980(-215, &v46, "Canny", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/canny.cpp", 930);
  }

  sub_100271154(a1, -1, &v54);
  if (*(a2 + 8) == *(a1 + 8) && sub_100271A88(a1, -1))
  {
    v46 = 0uLL;
    qmemcpy(sub_1002A80E0(&v46, 134), "(_dst.getObj() != _src.getObj() || _src.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))) && Inplace parameters are not supported", 134);
    sub_1002A8980(-215, &v46, "Canny", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/canny.cpp", 935);
  }

  *&v46 = v54;
  sub_100275370(a2, &v46, 0, -1, 0, 0);
  if (a3 < 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  if (!a4)
  {
    a3 &= ~0x80000000;
  }

  if ((a3 & 1) == 0 || (a3 - 3) >= 5 && a3 != -1)
  {
    v46 = 0uLL;
    qmemcpy(sub_1002A80E0(&v46, 43), "Aperture size should be odd between 3 and 7", 43);
    sub_1002A8980(-206, &v46, "Canny", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/canny.cpp", 947);
  }

  if (a5 <= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = a5;
  }

  if (a5 <= a6)
  {
    a6 = a5;
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v15 = *(a1 + 8);
    v16 = *v15;
    v17 = *(v15 + 16);
    v46 = *v15;
    v47 = v17;
    v48 = *(v15 + 32);
    v18 = *(v15 + 56);
    v49 = *(v15 + 48);
    v50 = v18;
    v51 = &v46 + 1;
    v52 = v53;
    v53[0] = 0;
    v53[1] = 0;
    if (v18)
    {
      atomic_fetch_add((v18 + 20), 1u);
      if (*(v15 + 4) <= 2)
      {
LABEL_22:
        v19 = *(v15 + 72);
        v20 = v52;
        *v52 = *v19;
        v20[1] = v19[1];
        goto LABEL_26;
      }
    }

    else if (SDWORD1(v16) <= 2)
    {
      goto LABEL_22;
    }

    DWORD1(v46) = 0;
    sub_100269B58(&v46, v15);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v46);
  }

LABEL_26:
  if (sub_100271148(a2) == 0x10000)
  {
    v21 = *(a2 + 8);
    v22 = *v21;
    v23 = *(v21 + 16);
    v40[0] = *v21;
    v40[1] = v23;
    v40[2] = *(v21 + 32);
    v24 = *(v21 + 56);
    v41 = *(v21 + 48);
    v42 = v24;
    v43 = v40 + 8;
    v44 = v45;
    v45[0] = 0;
    v45[1] = 0;
    if (v24)
    {
      atomic_fetch_add((v24 + 20), 1u);
      if (*(v21 + 4) <= 2)
      {
LABEL_29:
        v25 = *(v21 + 72);
        v26 = v44;
        *v44 = *v25;
        v26[1] = v25[1];
        goto LABEL_33;
      }
    }

    else if (SDWORD1(v22) <= 2)
    {
      goto LABEL_29;
    }

    DWORD1(v40[0]) = 0;
    sub_100269B58(v40, v21);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, v40);
  }

LABEL_33:
  *v33 = vrev64_s32(*v51);
  sub_10024255C(v39, v33, v46 & 0xFFF, v47, v53[0]);
  if (v13)
  {
    v27 = fmin(a6, 32767.0);
    v14 = fmin(v14, 32767.0);
    v28 = 1.0;
    if (v27 > 0.0)
    {
      v28 = v27;
    }

    a6 = v27 * v28;
    if (v14 > 0.0)
    {
      v14 = v14 * v14;
    }
  }

  sub_100282D00();
  sub_100282DCC();
  *v33 = 1124007936;
  *&v33[4] = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v36 = &v33[8];
  v37 = v38;
  v38[0] = 0;
  v38[1] = 0;
  v31 = 0u;
  v32 = 0u;
  *__p = 0u;
  sub_1002C9D08(&v29, v39, v33, __p, a6 - (a6 < a6), v14 - (v14 < v14), a3, v13);
}

void sub_1002C9B1C(_Unwind_Exception *a1)
{
  sub_1002A8124((v1 - 256));
  sub_1001D8BF4(v1 - 144);
  _Unwind_Resume(a1);
}

void sub_1002C9CB0(uint64_t a1)
{
  *a1 = off_100476DB0;
  sub_1002A9380((a1 + 72));

  nullsub_1();
}

void sub_1002C9D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8)
{
  *a1 = off_100476DB0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  *(a1 + 48) = a7;
  *(a1 + 52) = a8;
  sub_1002A8270((a1 + 72));
}

void sub_1002CA0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CA134(uint64_t a1)
{
  *a1 = off_100476DB0;
  sub_1002A9380((a1 + 72));
  nullsub_1();

  operator delete();
}

void sub_1002CA19C(uint64_t a1, unsigned int *a2)
{
  sub_1002ACE7C(v388, &off_100476DE0);
  memset(&v384[4], 0, 60);
  v385 = &v384[8];
  v386 = v387;
  v387[0] = 0;
  v387[1] = 0;
  memset(&v380[4], 0, 60);
  v381 = &v380[8];
  v382 = v383;
  v383[1] = 0;
  v383[0] = 0;
  v377 = v379;
  v378 = 0;
  v374 = v376;
  v375 = 0;
  v373 = 0u;
  v372 = 0u;
  *v371 = 0u;
  v370 = 0u;
  v369 = 0u;
  *__p = 0u;
  v4 = a2[1];
  if (*a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *a2;
  }

  v6 = *(*(a1 + 8) + 8);
  *v384 = 1124007936;
  if (v4 + 1 < v6)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  *v380 = 1124007936;
  sub_1002ACE7C(v367, &off_100476E00);
  v341 = v5;
  v8 = v5 - 1;
  if (*(a1 + 53) == 1)
  {
    v9 = *(a1 + 8);
    LODWORD(v360) = v5 - 1;
    HIDWORD(v360) = v7;
    v389[0] = 0x7FFFFFFF80000000;
    sub_10026A3FC(v356, v9, &v360, v389);
    v366 = 0;
    v363 = 16842752;
    v365 = v356;
    LODWORD(v360) = 33619968;
    v362 = 0;
    v361 = v384;
    sub_1002FBA48(&v363, &v360, 3u, 1, 0, *(a1 + 48), 1, 1.0, 0.0);
  }

  v10 = *(a1 + 8);
  v11 = (v5 - 1);
  v363 = v8;
  v364 = v7;
  v360 = 0x7FFFFFFF80000000;
  sub_10026A3FC(v356, v10, &v363, &v360);
  if (*&v384[56] && atomic_fetch_add((*&v384[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v384);
  }

  if (*&v384[4] >= 1)
  {
    v12 = 0;
    v13 = v385;
    do
    {
      *&v13[4 * v12++] = 0;
    }

    while (v12 < *&v384[4]);
  }

  *v384 = v356[0];
  *&v384[16] = v356[1];
  *&v384[32] = v356[2];
  *&v384[48] = v356[3];
  v14 = v386;
  if (v386 == v387)
  {
    v15 = v358;
    if (SDWORD1(v356[0]) <= 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    j__free(v386);
    v14 = v387;
    v385 = &v384[8];
    v386 = v387;
    v15 = v358;
    if (SDWORD1(v356[0]) <= 2)
    {
LABEL_17:
      *v14 = *v15;
      v14[1] = v15[1];
      goto LABEL_20;
    }
  }

  v385 = v357;
  v386 = v15;
  v357 = v356 + 8;
  v358 = v359;
LABEL_20:
  LODWORD(v356[0]) = 1124007936;
  memset(v356 + 4, 0, 60);
  if (v358 != v359)
  {
    j__free(v358);
  }

  v16 = *(a1 + 16);
  v363 = v11;
  v364 = v7;
  v360 = 0x7FFFFFFF80000000;
  sub_10026A3FC(v356, v16, &v363, &v360);
  if (*&v380[56] && atomic_fetch_add((*&v380[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v380);
  }

  if (*&v380[4] >= 1)
  {
    v17 = 0;
    v18 = v381;
    do
    {
      *&v18[4 * v17++] = 0;
    }

    while (v17 < *&v380[4]);
  }

  *v380 = v356[0];
  *&v380[16] = v356[1];
  *&v380[32] = v356[2];
  *&v380[48] = v356[3];
  v19 = v382;
  if (v382 == v383)
  {
    v20 = v358;
    if (SDWORD1(v356[0]) <= 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    j__free(v382);
    v382 = v383;
    v381 = &v380[8];
    v19 = v383;
    v20 = v358;
    if (SDWORD1(v356[0]) <= 2)
    {
LABEL_30:
      *v19 = *v20;
      v19[1] = v20[1];
      goto LABEL_33;
    }
  }

  v382 = v20;
  v381 = v357;
  v357 = v356 + 8;
  v358 = v359;
LABEL_33:
  LODWORD(v356[0]) = 1124007936;
  memset(v356 + 4, 0, 60);
  if (v358 != v359)
  {
    j__free(v358);
  }

  sub_1002ACE7C(&v363, &off_100476E20);
  v21 = *(a1 + 64);
  if (v21 < 2)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    v24 = 0;
    goto LABEL_54;
  }

  if (v378 >= 2 * *&v384[12])
  {
    v378 = 2 * *&v384[12];
    v22 = 2 * *&v380[12];
    if (v375 < v22)
    {
LABEL_44:
      v23 = v374;
      if (v374 != v376)
      {
        if (v374)
        {
          operator delete[]();
        }

        v374 = v376;
        v23 = v376;
      }

      v375 = v22;
      if (v22 >= 0x209)
      {
        operator new[]();
      }

      goto LABEL_53;
    }
  }

  else
  {
    if (v377 != v379)
    {
      if (v377)
      {
        operator delete[]();
      }

      v377 = v379;
    }

    v378 = 2 * *&v384[12];
    if ((2 * *&v384[12]) >= 0x209)
    {
      operator new[]();
    }

    v22 = 2 * *&v380[12];
    if (v375 < v22)
    {
      goto LABEL_44;
    }
  }

  v375 = v22;
  v23 = v374;
LABEL_53:
  v24 = v377;
  v350 = v23;
  v348 = &v377[2 * *&v384[12]];
  v349 = &v23[2 * *&v380[12]];
  v21 = *(a1 + 64);
LABEL_54:
  v25 = *(a1 + 56);
  *&v356[0] = &v356[1];
  *(&v356[0] + 1) = 3 * v25 * v21 + 48;
  v339 = v7;
  if (*(&v356[0] + 1) >= 0x109uLL)
  {
    operator new[]();
  }

  v26 = &v356[2];
  v27 = 4 * v25 * v21;
  v28 = (&v356[2] + v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = (v28 + v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v24;
  if (v11 == *a2)
  {
    bzero((v29 - 4), 4 * v25);
    v31 = *(a1 + 8);
  }

  else
  {
    *(v29 - 4) = 0;
    v31 = *(a1 + 8);
    *(v29 + 4 * *(v31 + 12)) = 0;
  }

  HIDWORD(v356[1]) = 0;
  *(&v356[2] + *(v31 + 12)) = 0;
  *(v28 - 4) = 0;
  *(v28 + 4 * *(v31 + 12)) = 0;
  LODWORD(v31) = a2[1];
  if (v11 <= v31)
  {
    v340 = v11;
    v32 = v341 - 1 - v11;
    v355 = a1;
    v33 = v350;
    v34 = v28;
    v35 = v341 - 1;
    v343 = a2;
    while (1)
    {
      v36 = v29;
      v29 = v26;
      if (v35 >= v339)
      {
        bzero(&v26[-1].u64[1] + 4, 4 * *(a1 + 56));
        v51 = *(a1 + 64);
        v52 = v51 < 2;
        if (v51 >= 2)
        {
          v53 = v33;
        }

        else
        {
          v53 = v349;
        }

        if (v52)
        {
          v54 = v348;
        }

        else
        {
          v54 = v30;
        }

        if (!v52)
        {
          v33 = v349;
          v30 = v348;
        }

        v348 = v54;
        v349 = v53;
        goto LABEL_133;
      }

      v37 = *&v384[16];
      v38 = *v386;
      v39 = *&v380[16];
      v40 = *v382;
      v41 = (*(a1 + 64) * *(*(a1 + 8) + 12));
      v42 = *(a1 + 68);
      if (v41 <= 7)
      {
        v42 = 0;
      }

      if (*(a1 + 52) == 1)
      {
        if (v42)
        {
          v43 = 0;
          v44 = v26 + 1;
          v45 = (*&v380[16] + v40 * v32);
          v46 = (*&v384[16] + v38 * v32);
          do
          {
            v47 = *v46++;
            v48 = v47;
            v49 = *v45++;
            v44[-1] = vmlal_s16(vmull_s16(*v49.i8, *v49.i8), *v48.i8, *v48.i8);
            *v44 = vmlal_high_s16(vmull_high_s16(v49, v49), v48, v48);
            v43 += 8;
            v44 += 2;
          }

          while (v43 <= (v41 - 8));
          v50 = v43;
          if (v43 >= v41)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v50 = 0;
          if (v41 <= 0)
          {
            goto LABEL_121;
          }
        }

        v65 = v41 - v50;
        if ((v41 - v50) < 4)
        {
          v66 = v50;
          goto LABEL_115;
        }

        if (v65 >= 0x10)
        {
          v69 = v65 & 0xFFFFFFFFFFFFFFF0;
          v71 = (v26 + 4 * v50 + 32);
          v72 = (v37 + 2 * v50 + v38 * v32 + 16);
          v73 = (v39 + 2 * v50 + v40 * v32 + 16);
          v74 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v75 = v72[-1];
            v76 = *v72;
            v77 = v73[-1];
            v78 = *v73;
            v71[-2] = vmlal_s16(vmull_s16(*v77.i8, *v77.i8), *v75.i8, *v75.i8);
            v71[-1] = vmlal_high_s16(vmull_high_s16(v77, v77), v75, v75);
            *v71 = vmlal_s16(vmull_s16(*v78.i8, *v78.i8), *v76.i8, *v76.i8);
            v71[1] = vmlal_high_s16(vmull_high_s16(v78, v78), v76, v76);
            v71 += 4;
            v72 += 2;
            v73 += 2;
            v74 -= 16;
          }

          while (v74);
          if (v65 == v69)
          {
            goto LABEL_121;
          }

          if ((v65 & 0xC) == 0)
          {
            v66 = v69 + v50;
LABEL_115:
            v105 = &v26->i32[v66];
            v106 = (v39 + 2 * v66 + v40 * v32);
            v107 = (v37 + 2 * v66 + v38 * v32);
            v108 = v41 - v66;
            do
            {
              v109 = *v107++;
              v110 = v109 * v109;
              v111 = *v106++;
              *v105++ = v110 + v111 * v111;
              --v108;
            }

            while (v108);
            goto LABEL_121;
          }
        }

        else
        {
          v69 = 0;
        }

        v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + v50;
        v79 = v69 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        v80 = v69 + v50;
        v81 = 2 * (v69 + v50);
        v82 = (v37 + v81 + v38 * v32);
        v83 = (v39 + v81 + v40 * v32);
        v84 = (v26 + 4 * v80);
        do
        {
          v85 = *v82++;
          v86 = v85;
          v87 = *v83++;
          *v84++ = vmlal_s16(vmull_s16(v87, v87), v86, v86);
          v79 += 4;
        }

        while (v79);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v42)
        {
          v55 = 0;
          v56 = v26 + 1;
          v57 = (*&v380[16] + v40 * v32);
          v58 = (*&v384[16] + v38 * v32);
          do
          {
            v59 = *v58++;
            v60 = v59;
            v61 = *v57++;
            v62 = vabsq_s16(v60);
            v63 = vabsq_s16(v61);
            v56[-1] = vaddl_s16(*v63.i8, *v62.i8);
            *v56 = vaddl_high_s16(v63, v62);
            v55 += 8;
            v56 += 2;
          }

          while (v55 <= (v41 - 8));
          v64 = v55;
          if (v55 >= v41)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v64 = 0;
          if (v41 <= 0)
          {
            goto LABEL_121;
          }
        }

        v67 = v41 - v64;
        if ((v41 - v64) < 4)
        {
          v68 = v64;
          goto LABEL_119;
        }

        if (v67 >= 0x10)
        {
          v70 = v67 & 0xFFFFFFFFFFFFFFF0;
          v88 = (&v26[2] + 4 * v64);
          v89 = (v37 + 2 * v64 + v38 * v32 + 16);
          v90 = (v39 + 2 * v64 + v40 * v32 + 16);
          v91 = v67 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v92 = vabsq_s16(v89[-1]);
            v93 = vabsq_s16(*v89);
            v94 = vabsq_s16(v90[-1]);
            v95 = vabsq_s16(*v90);
            v88[-2] = vaddl_u16(*v94.i8, *v92.i8);
            v88[-1] = vaddl_high_u16(v94, v92);
            *v88 = vaddl_u16(*v95.i8, *v93.i8);
            v88[1] = vaddl_high_u16(v95, v93);
            v88 += 4;
            v89 += 2;
            v90 += 2;
            v91 -= 16;
          }

          while (v91);
          if (v67 == v70)
          {
            goto LABEL_121;
          }

          if ((v67 & 0xC) == 0)
          {
            v68 = v70 + v64;
LABEL_119:
            v112 = &v26->i32[v68];
            v113 = (v39 + 2 * v68 + v40 * v32);
            v114 = (v37 + 2 * v68 + v38 * v32);
            v115 = v41 - v68;
            do
            {
              v117 = *v114++;
              v116 = v117;
              v118 = *v113++;
              v119 = vabs_s32(vshr_n_s32(vshl_n_s32(__PAIR64__(v116, v118), 0x10uLL), 0x10uLL));
              *v112++ = v119.i32[0] + v119.i32[1];
              --v115;
            }

            while (v115);
            goto LABEL_121;
          }
        }

        else
        {
          v70 = 0;
        }

        v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL) + v64;
        v96 = v70 - (v67 & 0xFFFFFFFFFFFFFFFCLL);
        v97 = v70 + v64;
        v98 = 2 * (v70 + v64);
        v99 = (v37 + v98 + v38 * v32);
        v100 = (v39 + v98 + v40 * v32);
        v101 = (v26 + 4 * v97);
        do
        {
          v102 = *v99++;
          v103 = v102;
          v104 = *v100++;
          *v101++ = vaddl_u16(vabs_s16(v104), vabs_s16(v103));
          v96 += 4;
        }

        while (v96);
        if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_119;
        }
      }

LABEL_121:
      v120 = *(a1 + 64);
      if (v120 >= 2)
      {
        v121 = *(a1 + 8);
        v122 = *(v121 + 12);
        if (v122 >= 1)
        {
          v123 = 0;
          v124 = 0;
          v125 = v37 + v38 * (v35 - v340);
          v126 = v39 + v40 * (v35 - v340);
          do
          {
            v127 = v124;
            if (v120 >= 2)
            {
              v128 = v120;
              v129 = v124 + 1;
              v130 = &v26->i32[v124 + 1];
              v131 = v128 - 1;
              v127 = v124;
              do
              {
                v132 = *v130++;
                if (v132 > v26->i32[v127])
                {
                  v127 = v129;
                }

                ++v129;
                --v131;
              }

              while (v131);
            }

            v26->i32[v123] = v26->i32[v127];
            *&v30[2 * v123] = *(v125 + 2 * v127);
            *&v33[2 * v123++] = *(v126 + 2 * v127);
            v120 = *(a1 + 64);
            v124 += v120;
            v122 = *(v121 + 12);
          }

          while (v123 < v122);
        }

        v26->i32[v122] = 0;
        v133 = v33;
        v134 = v30;
        v30 = v348;
        v33 = v349;
        v348 = v134;
        v349 = v133;
      }

      if (v35 <= *a2)
      {
        goto LABEL_63;
      }

LABEL_133:
      v135 = *(a1 + 24);
      v346 = *(v135 + 16);
      v347 = v32;
      v345 = **(v135 + 72);
      v136 = 16;
      if (!*(a1 + 68))
      {
        v136 = 1;
      }

      v344 = v136;
      v137 = v346 + v345 * v35 + v136;
      *(v137 - 1) = 1;
      *(v137 + *(*(a1 + 8) + 12)) = 1;
      v351 = v33;
      v138 = v30;
      if (*(a1 + 64) == 1)
      {
        v138 = *&v384[16] + *v386 * (v35 - v341);
        v33 = (*&v380[16] + *v382 * (v35 - v341));
      }

      v139 = *(a1 + 8);
      v354 = v34;
      v352 = v35;
      if (*(a1 + 68) == 1)
      {
        v140 = (a1 + 40);
        v141 = vld1q_dup_f32(v140);
        v353 = v141;
        v142 = *(v139 + 12);
        v342 = v30;
        if (v142 < 32)
        {
          LODWORD(v143) = 0;
          if (v142 - 16 >= 0)
          {
            goto LABEL_183;
          }

          goto LABEL_222;
        }

        v143 = 0;
        do
        {
          v145 = (v36 + 4 * v143);
          v146 = vcgtq_s32(*v145, v353);
          v147 = vcgtq_s32(v145[1], v353);
          v148 = vcgtq_s32(v145[2], v353);
          v149 = vcgtq_s32(v145[3], v353);
          v150 = v145[4];
          v151 = v145[5];
          v152 = v145[6];
          v153 = v145[7];
          v154 = (v137 + v143);
          v155 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vshlq_u8(vshrq_n_u8(vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(v146), v147)), vqmovn_high_s32(vqmovn_s32(v148), v149)), 7uLL), xmmword_1003E67D0))));
          v156 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vshlq_u8(vshrq_n_u8(vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcgtq_s32(v150, v353)), vcgtq_s32(v151, v353))), vqmovn_high_s32(vqmovn_s32(vcgtq_s32(v152, v353)), vcgtq_s32(v153, v353))), 7uLL), xmmword_1003E67D0))));
          v157 = v156.i32[0] << 16;
          *v156.i8 = vshl_u32(vzip1_s32(*&vextq_s8(v156, v156, 8uLL), *&vextq_s8(v155, v155, 8uLL)), 0x800000018);
          *v155.i8 = vdup_lane_s32(*v155.i8, 0);
          v155.i32[0] = v157;
          *v155.i8 = vadd_s32(*v156.i8, *v155.i8);
          v158 = vorr_s8(*v155.i8, vdup_lane_s32(*v155.i8, 1)).u32[0];
          v155.i64[0] = 0x101010101010101;
          v155.i64[1] = 0x101010101010101;
          *v154 = v155;
          v154[1] = v155;
          if (v158)
          {
            v159 = v143;
            do
            {
              v161 = __clz(__rbit32(v158));
              v162 = (v161 + v159);
              v163 = (v36 + 4 * v162);
              v164 = *v163;
              v165 = *(v138 + 2 * v162);
              v166 = *&v33[2 * v162];
              if (v165 >= 0)
              {
                v167 = *(v138 + 2 * v162);
              }

              else
              {
                v167 = -v165;
              }

              if (v166 >= 0)
              {
                v168 = *&v33[2 * v162];
              }

              else
              {
                v168 = -v166;
              }

              v169 = v168 << 15;
              if (v169 >= (13573 * v167))
              {
                if (v169 <= 79109 * v167)
                {
                  v176 = ((v166 ^ v165) >> 31) | 1;
                  if (v164 <= v34->i32[v162 - v176] || v164 <= *(v29 + 4 * (v176 + v162)))
                  {
                    goto LABEL_148;
                  }

                  v170 = (v137 + v162);
                  if (v164 > *(v355 + 44))
                  {
                    *v170 = 2;
                    v171 = v371[1];
                    if (v372 == v371[1])
                    {
                      v177 = 0;
                    }

                    else
                    {
                      v177 = ((v372 - v371[1]) << 6) - 1;
                    }

                    v173 = *(&v373 + 1);
                    v174 = *(&v373 + 1) + v373;
                    if (v177 != *(&v373 + 1) + v373)
                    {
                      goto LABEL_181;
                    }

LABEL_180:
                    sub_1002CC5B0(v371);
                    v173 = *(&v373 + 1);
                    v171 = v371[1];
                    v174 = v373 + *(&v373 + 1);
                    goto LABEL_181;
                  }
                }

                else
                {
                  if (v164 <= v34->i32[v162] || v164 < *(v29 + 4 * v162))
                  {
                    goto LABEL_148;
                  }

                  v170 = (v137 + v162);
                  if (v164 > *(v355 + 44))
                  {
                    *v170 = 2;
                    v171 = v371[1];
                    if (v372 == v371[1])
                    {
                      v175 = 0;
                    }

                    else
                    {
                      v175 = ((v372 - v371[1]) << 6) - 1;
                    }

                    v173 = *(&v373 + 1);
                    v174 = *(&v373 + 1) + v373;
                    if (v175 != *(&v373 + 1) + v373)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_180;
                  }
                }
              }

              else
              {
                if (v164 <= *(v163 - 1) || v164 < v163[1])
                {
                  goto LABEL_148;
                }

                v170 = (v137 + v162);
                if (v164 > *(v355 + 44))
                {
                  *v170 = 2;
                  v171 = v371[1];
                  if (v372 == v371[1])
                  {
                    v172 = 0;
                  }

                  else
                  {
                    v172 = ((v372 - v371[1]) << 6) - 1;
                  }

                  v173 = *(&v373 + 1);
                  v174 = *(&v373 + 1) + v373;
                  if (v172 == *(&v373 + 1) + v373)
                  {
                    goto LABEL_180;
                  }

LABEL_181:
                  *(*&v171[(v174 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v174 & 0x1FF)) = v170;
                  *(&v373 + 1) = v173 + 1;
                  goto LABEL_147;
                }
              }

              *v170 = 0;
LABEL_147:
              v34 = v354;
LABEL_148:
              v160 = v158 >> v161;
              v159 = v162 + 1;
              v158 = v158 >> v161 >> 1;
            }

            while (v160 > 1);
          }

          v143 += 32;
          a1 = v355;
          v139 = *(v355 + 8);
          v144 = *(v139 + 12);
        }

        while (v143 <= v144 - 32);
        v30 = v342;
        if (v143 <= v144 - 16)
        {
LABEL_183:
          v178 = (v36 + 4 * v143);
          v179 = *v178;
          v180 = v178[1];
          v181 = v178[2];
          v182 = v178[3];
          *&v183 = 0x101010101010101;
          *(&v183 + 1) = 0x101010101010101;
          *(v137 + v143) = v183;
          v184 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vshlq_u8(vshrq_n_u8(vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcgtq_s32(v179, v353)), vcgtq_s32(v180, v353))), vqmovn_high_s32(vqmovn_s32(vcgtq_s32(v181, v353)), vcgtq_s32(v182, v353))), 7uLL), xmmword_1003E67D0))));
          v185 = v184.i32[0] + (v184.i32[2] << 8);
          if (v185)
          {
            v186 = v143;
            do
            {
              v188 = __clz(__rbit32(v185));
              v189 = (v188 + v186);
              v190 = (v36 + 4 * v189);
              v191 = *v190;
              v192 = *(v138 + 2 * v189);
              v193 = *&v33[2 * v189];
              if (v192 >= 0)
              {
                v194 = *(v138 + 2 * v189);
              }

              else
              {
                v194 = -v192;
              }

              if (v193 >= 0)
              {
                v195 = *&v33[2 * v189];
              }

              else
              {
                v195 = -v193;
              }

              v196 = v195 << 15;
              if (v196 >= (13573 * v194))
              {
                if (v196 <= 79109 * v194)
                {
                  v203 = ((v193 ^ v192) >> 31) | 1;
                  if (v191 <= v34->i32[v189 - v203] || v191 <= *(v29 + 4 * (v203 + v189)))
                  {
                    goto LABEL_187;
                  }

                  v197 = (v137 + v189);
                  if (v191 > *(v355 + 44))
                  {
                    *v197 = 2;
                    v198 = v371[1];
                    if (v372 == v371[1])
                    {
                      v204 = 0;
                    }

                    else
                    {
                      v204 = ((v372 - v371[1]) << 6) - 1;
                    }

                    v200 = *(&v373 + 1);
                    v201 = *(&v373 + 1) + v373;
                    if (v204 != *(&v373 + 1) + v373)
                    {
                      goto LABEL_220;
                    }

LABEL_219:
                    sub_1002CC5B0(v371);
                    v200 = *(&v373 + 1);
                    v198 = v371[1];
                    v201 = v373 + *(&v373 + 1);
                    goto LABEL_220;
                  }
                }

                else
                {
                  if (v191 <= v34->i32[v189] || v191 < *(v29 + 4 * v189))
                  {
                    goto LABEL_187;
                  }

                  v197 = (v137 + v189);
                  if (v191 > *(v355 + 44))
                  {
                    *v197 = 2;
                    v198 = v371[1];
                    if (v372 == v371[1])
                    {
                      v202 = 0;
                    }

                    else
                    {
                      v202 = ((v372 - v371[1]) << 6) - 1;
                    }

                    v200 = *(&v373 + 1);
                    v201 = *(&v373 + 1) + v373;
                    if (v202 != *(&v373 + 1) + v373)
                    {
                      goto LABEL_220;
                    }

                    goto LABEL_219;
                  }
                }
              }

              else
              {
                if (v191 <= *(v190 - 1) || v191 < v190[1])
                {
                  goto LABEL_187;
                }

                v197 = (v137 + v189);
                if (v191 > *(v355 + 44))
                {
                  *v197 = 2;
                  v198 = v371[1];
                  if (v372 == v371[1])
                  {
                    v199 = 0;
                  }

                  else
                  {
                    v199 = ((v372 - v371[1]) << 6) - 1;
                  }

                  v200 = *(&v373 + 1);
                  v201 = *(&v373 + 1) + v373;
                  if (v199 == *(&v373 + 1) + v373)
                  {
                    goto LABEL_219;
                  }

LABEL_220:
                  *(*&v198[(v201 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v201 & 0x1FF)) = v197;
                  *(&v373 + 1) = v200 + 1;
                  goto LABEL_186;
                }
              }

              *v197 = 0;
LABEL_186:
              v34 = v354;
LABEL_187:
              v187 = v185 >> v188;
              v186 = v189 + 1;
              v185 = v185 >> v188 >> 1;
            }

            while (v187 > 1);
          }

          LODWORD(v143) = v143 | 0x10;
          a1 = v355;
          v139 = *(v355 + 8);
          v30 = v342;
        }
      }

      else
      {
        LODWORD(v143) = 0;
      }

LABEL_222:
      if (v143 >= *(v139 + 12))
      {
        a2 = v343;
        v33 = v351;
        goto LABEL_62;
      }

      v205 = v30;
      v206 = v143;
      v207 = (v36 + 4 * v143);
      v208 = v346 + v344 + v345 * v352;
      do
      {
        v209 = *v207;
        if (*v207 <= *(a1 + 40))
        {
LABEL_224:
          *(v208 + v206) = 1;
          goto LABEL_225;
        }

        v210 = *(v138 + 2 * v206);
        v211 = *&v33[2 * v206];
        if (v210 >= 0)
        {
          v212 = *(v138 + 2 * v206);
        }

        else
        {
          v212 = -v210;
        }

        if (v211 >= 0)
        {
          v213 = *&v33[2 * v206];
        }

        else
        {
          v213 = -v211;
        }

        v214 = v213 << 15;
        if (v214 >= (13573 * v212))
        {
          if (v214 <= 79109 * v212)
          {
            v221 = (v211 ^ v210) < 0;
            v222 = 1;
            if (v221)
            {
              v222 = -1;
            }

            if (v209 <= v34->i32[v206 - v222] || v209 <= *(v29 + 4 * (v222 + v206)))
            {
              goto LABEL_224;
            }

            v215 = (v208 + v206);
            if (v209 > *(a1 + 44))
            {
              *v215 = 2;
              v216 = v371[1];
              if (v372 == v371[1])
              {
                v223 = 0;
              }

              else
              {
                v223 = ((v372 - v371[1]) << 6) - 1;
              }

              v218 = *(&v373 + 1);
              v219 = *(&v373 + 1) + v373;
              if (v223 == *(&v373 + 1) + v373)
              {
LABEL_260:
                sub_1002CC5B0(v371);
                v218 = *(&v373 + 1);
                v216 = v371[1];
                v219 = v373 + *(&v373 + 1);
              }

LABEL_261:
              *(*&v216[(v219 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v219 & 0x1FF)) = v215;
              *(&v373 + 1) = v218 + 1;
              v34 = v354;
              goto LABEL_225;
            }
          }

          else
          {
            if (v209 <= v34->i32[v206] || v209 < *(v29 + 4 * v206))
            {
              goto LABEL_224;
            }

            v215 = (v208 + v206);
            if (v209 > *(a1 + 44))
            {
              *v215 = 2;
              v216 = v371[1];
              if (v372 == v371[1])
              {
                v220 = 0;
              }

              else
              {
                v220 = ((v372 - v371[1]) << 6) - 1;
              }

              v218 = *(&v373 + 1);
              v219 = *(&v373 + 1) + v373;
              if (v220 == *(&v373 + 1) + v373)
              {
                goto LABEL_260;
              }

              goto LABEL_261;
            }
          }
        }

        else
        {
          if (v209 <= *(v207 - 1) || v209 < v207[1])
          {
            goto LABEL_224;
          }

          v215 = (v208 + v206);
          if (v209 > *(a1 + 44))
          {
            *v215 = 2;
            v216 = v371[1];
            if (v372 == v371[1])
            {
              v217 = 0;
            }

            else
            {
              v217 = ((v372 - v371[1]) << 6) - 1;
            }

            v218 = *(&v373 + 1);
            v219 = *(&v373 + 1) + v373;
            if (v217 == *(&v373 + 1) + v373)
            {
              goto LABEL_260;
            }

            goto LABEL_261;
          }
        }

        *v215 = 0;
        v34 = v354;
LABEL_225:
        ++v206;
        ++v207;
      }

      while (v206 < *(*(a1 + 8) + 12));
      a2 = v343;
      v33 = v351;
      v30 = v205;
LABEL_62:
      v35 = v352;
      v32 = v347;
LABEL_63:
      v31 = a2[1];
      ++v32;
      v26 = v34;
      v34 = v36;
      v52 = v35++ < v31;
      if (!v52)
      {
        LODWORD(v11) = v340;
        break;
      }
    }
  }

  v224 = *(a1 + 24);
  v225 = *(v224 + 16);
  if (v11)
  {
    v226 = v225 + *(a1 + 56) * (*a2 + 2);
  }

  else
  {
    v226 = *(v224 + 16);
  }

  if (v339 == *(*(a1 + 8) + 8))
  {
    v227 = *(v224 + 40);
  }

  else
  {
    v227 = v225 + *(a1 + 56) * v31;
  }

  sub_1002ACE7C(&v360, &off_100476E40);
  v228 = *(&v373 + 1);
  if (*(&v373 + 1))
  {
    v229 = v227 - v226;
    do
    {
      while (1)
      {
        v232 = *(*(v371[1] + (((v373 + v228 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v373 + v228 - 1) & 0x1FF));
        if (v372 == v371[1])
        {
          v233 = 0;
        }

        else
        {
          v233 = ((v372 - v371[1]) << 6) - 1;
        }

        *(&v373 + 1) = v228 - 1;
        if (v233 - (v228 + v373) + 1 >= 0x400)
        {
          operator delete(*(v372 - 8));
          *&v372 = v372 - 8;
        }

        if (v232 - v226 >= v229)
        {
          break;
        }

        v234 = *(a1 + 56);
        if (*(v232 + ~v234))
        {
          if (*(v232 - v234))
          {
            goto LABEL_282;
          }

LABEL_338:
          *(v232 - v234) = 2;
          v276 = v371[1];
          v277 = *(a1 + 56);
          if (v372 == v371[1])
          {
            v278 = 0;
          }

          else
          {
            v278 = ((v372 - v371[1]) << 6) - 1;
          }

          v279 = *(&v373 + 1);
          v280 = *(&v373 + 1) + v373;
          if (v278 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v279 = *(&v373 + 1);
            v276 = v371[1];
            v280 = v373 + *(&v373 + 1);
          }

          v281 = *(a1 + 56);
          *(*&v276[(v280 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v280 & 0x1FF)) = v232 - v277;
          *(&v373 + 1) = v279 + 1;
          v235 = v232 - v281;
          if (!*(v235 + 1))
          {
            goto LABEL_344;
          }

LABEL_283:
          v236 = (v232 - 1);
          if (*(v232 - 1))
          {
            goto LABEL_284;
          }

LABEL_350:
          *v236 = 2;
          v287 = v371[1];
          if (v372 == v371[1])
          {
            v288 = 0;
          }

          else
          {
            v288 = ((v372 - v371[1]) << 6) - 1;
          }

          v289 = *(&v373 + 1);
          v290 = *(&v373 + 1) + v373;
          if (v288 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v289 = *(&v373 + 1);
            v287 = v371[1];
            v290 = v373 + *(&v373 + 1);
          }

          *(*&v287[(v290 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v290 & 0x1FF)) = v236;
          *(&v373 + 1) = v289 + 1;
          v237 = (v232 + 1);
          if (!*(v232 + 1))
          {
            goto LABEL_356;
          }

LABEL_285:
          v238 = *(a1 + 56);
          v239 = v232 + v238;
          if (*(v232 + v238 - 1))
          {
            goto LABEL_286;
          }

LABEL_362:
          *(v239 - 1) = 2;
          v295 = v371[1];
          v296 = *(a1 + 56);
          if (v372 == v371[1])
          {
            v297 = 0;
          }

          else
          {
            v297 = ((v372 - v371[1]) << 6) - 1;
          }

          v298 = *(&v373 + 1);
          v299 = *(&v373 + 1) + v373;
          if (v297 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v298 = *(&v373 + 1);
            v295 = v371[1];
            v299 = v373 + *(&v373 + 1);
          }

          v238 = *(a1 + 56);
          *(*&v295[(v299 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v299 & 0x1FF)) = v232 + v296 - 1;
          *(&v373 + 1) = v298 + 1;
          if (!*(v232 + v238))
          {
            goto LABEL_368;
          }

LABEL_287:
          v240 = v232 + v238;
          if (*(v240 + 1))
          {
            goto LABEL_273;
          }

LABEL_374:
          *(v240 + 1) = 2;
          v306 = v371[1];
          v307 = *(a1 + 56);
          if (v372 == v371[1])
          {
            v308 = 0;
          }

          else
          {
            v308 = ((v372 - v371[1]) << 6) - 1;
          }

          v309 = *(&v373 + 1);
          v310 = *(&v373 + 1) + v373;
          if (v308 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v309 = *(&v373 + 1);
            v306 = v371[1];
            v310 = v373 + *(&v373 + 1);
          }

          *(*&v306[(v310 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v310 & 0x1FF)) = v232 + v307 + 1;
          v228 = v309 + 1;
          *(&v373 + 1) = v309 + 1;
          if (v309 == -1)
          {
            goto LABEL_380;
          }
        }

        else
        {
          *(~v234 + v232) = 2;
          v255 = v371[1];
          v256 = *(a1 + 56);
          if (v372 == v371[1])
          {
            v257 = 0;
          }

          else
          {
            v257 = ((v372 - v371[1]) << 6) - 1;
          }

          v258 = *(&v373 + 1);
          v259 = *(&v373 + 1) + v373;
          if (v257 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v258 = *(&v373 + 1);
            v255 = v371[1];
            v259 = v373 + *(&v373 + 1);
          }

          v234 = *(a1 + 56);
          *(*&v255[(v259 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v259 & 0x1FF)) = ~v256 + v232;
          *(&v373 + 1) = v258 + 1;
          if (!*(v232 - v234))
          {
            goto LABEL_338;
          }

LABEL_282:
          v235 = v232 - v234;
          if (*(v235 + 1))
          {
            goto LABEL_283;
          }

LABEL_344:
          *(v235 + 1) = 2;
          v282 = v371[1];
          v283 = *(a1 + 56);
          if (v372 == v371[1])
          {
            v284 = 0;
          }

          else
          {
            v284 = ((v372 - v371[1]) << 6) - 1;
          }

          v285 = *(&v373 + 1);
          v286 = *(&v373 + 1) + v373;
          if (v284 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v285 = *(&v373 + 1);
            v282 = v371[1];
            v286 = v373 + *(&v373 + 1);
          }

          *(*&v282[(v286 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v286 & 0x1FF)) = v232 - v283 + 1;
          *(&v373 + 1) = v285 + 1;
          v236 = (v232 - 1);
          if (!*(v232 - 1))
          {
            goto LABEL_350;
          }

LABEL_284:
          v237 = (v232 + 1);
          if (*(v232 + 1))
          {
            goto LABEL_285;
          }

LABEL_356:
          *v237 = 2;
          v291 = v371[1];
          if (v372 == v371[1])
          {
            v292 = 0;
          }

          else
          {
            v292 = ((v372 - v371[1]) << 6) - 1;
          }

          v293 = *(&v373 + 1);
          v294 = *(&v373 + 1) + v373;
          if (v292 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v293 = *(&v373 + 1);
            v291 = v371[1];
            v294 = v373 + *(&v373 + 1);
          }

          *(*&v291[(v294 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v294 & 0x1FF)) = v237;
          *(&v373 + 1) = v293 + 1;
          v238 = *(a1 + 56);
          v239 = v232 + v238;
          if (!*(v232 + v238 - 1))
          {
            goto LABEL_362;
          }

LABEL_286:
          if (*(v232 + v238))
          {
            goto LABEL_287;
          }

LABEL_368:
          *(v232 + v238) = 2;
          v300 = v371[1];
          v301 = *(a1 + 56);
          if (v372 == v371[1])
          {
            v302 = 0;
          }

          else
          {
            v302 = ((v372 - v371[1]) << 6) - 1;
          }

          v303 = *(&v373 + 1);
          v304 = *(&v373 + 1) + v373;
          if (v302 == *(&v373 + 1) + v373)
          {
            sub_1002CC5B0(v371);
            v303 = *(&v373 + 1);
            v300 = v371[1];
            v304 = v373 + *(&v373 + 1);
          }

          v305 = *(a1 + 56);
          *(*&v300[(v304 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v304 & 0x1FF)) = v232 + v301;
          *(&v373 + 1) = v303 + 1;
          v240 = v232 + v305;
          if (!*(v240 + 1))
          {
            goto LABEL_374;
          }

LABEL_273:
          v228 = *(&v373 + 1);
          if (!*(&v373 + 1))
          {
            goto LABEL_380;
          }
        }
      }

      v241 = __p[1];
      if (v369 == __p[1])
      {
        v242 = 0;
      }

      else
      {
        v242 = ((v369 - __p[1]) << 6) - 1;
      }

      v243 = *(&v370 + 1);
      v244 = *(&v370 + 1) + v370;
      if (v242 == *(&v370 + 1) + v370)
      {
        sub_1002CC5B0(__p);
        v243 = *(&v370 + 1);
        v241 = __p[1];
        v244 = v370 + *(&v370 + 1);
      }

      *(*&v241[(v244 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v244 & 0x1FF)) = v232;
      *(&v370 + 1) = v243 + 1;
      if (v232 < v226)
      {
        v245 = *(a1 + 56);
      }

      else
      {
        v245 = -*(a1 + 56);
      }

      v246 = (v232 - 1);
      if (*(v232 - 1))
      {
        v247 = (v232 + 1);
        if (*(v232 + 1))
        {
          goto LABEL_299;
        }
      }

      else
      {
        *v246 = 2;
        v260 = v371[1];
        if (v372 == v371[1])
        {
          v261 = 0;
        }

        else
        {
          v261 = ((v372 - v371[1]) << 6) - 1;
        }

        v262 = *(&v373 + 1);
        v263 = *(&v373 + 1) + v373;
        if (v261 == *(&v373 + 1) + v373)
        {
          sub_1002CC5B0(v371);
          v262 = *(&v373 + 1);
          v260 = v371[1];
          v263 = v373 + *(&v373 + 1);
        }

        *(*&v260[(v263 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v263 & 0x1FF)) = v246;
        *(&v373 + 1) = v262 + 1;
        v247 = (v232 + 1);
        if (*(v232 + 1))
        {
LABEL_299:
          v248 = (v232 + v245);
          v249 = v248 - 1;
          if (*(v248 - 1))
          {
            goto LABEL_300;
          }

          goto LABEL_326;
        }
      }

      *v247 = 2;
      v264 = v371[1];
      if (v372 == v371[1])
      {
        v265 = 0;
      }

      else
      {
        v265 = ((v372 - v371[1]) << 6) - 1;
      }

      v266 = *(&v373 + 1);
      v267 = *(&v373 + 1) + v373;
      if (v265 == *(&v373 + 1) + v373)
      {
        sub_1002CC5B0(v371);
        v266 = *(&v373 + 1);
        v264 = v371[1];
        v267 = v373 + *(&v373 + 1);
      }

      *(*&v264[(v267 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v267 & 0x1FF)) = v247;
      *(&v373 + 1) = v266 + 1;
      v248 = (v232 + v245);
      v249 = v248 - 1;
      if (*(v248 - 1))
      {
LABEL_300:
        if (!*v248)
        {
          goto LABEL_332;
        }

        goto LABEL_301;
      }

LABEL_326:
      *v249 = 2;
      v268 = v371[1];
      if (v372 == v371[1])
      {
        v269 = 0;
      }

      else
      {
        v269 = ((v372 - v371[1]) << 6) - 1;
      }

      v270 = *(&v373 + 1);
      v271 = *(&v373 + 1) + v373;
      if (v269 == *(&v373 + 1) + v373)
      {
        sub_1002CC5B0(v371);
        v270 = *(&v373 + 1);
        v268 = v371[1];
        v271 = v373 + *(&v373 + 1);
      }

      *(*&v268[(v271 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v271 & 0x1FF)) = v249;
      *(&v373 + 1) = v270 + 1;
      if (!*v248)
      {
LABEL_332:
        *v248 = 2;
        v272 = v371[1];
        if (v372 == v371[1])
        {
          v273 = 0;
        }

        else
        {
          v273 = ((v372 - v371[1]) << 6) - 1;
        }

        v274 = *(&v373 + 1);
        v275 = *(&v373 + 1) + v373;
        if (v273 == *(&v373 + 1) + v373)
        {
          sub_1002CC5B0(v371);
          v274 = *(&v373 + 1);
          v272 = v371[1];
          v275 = v373 + *(&v373 + 1);
        }

        *(*&v272[(v275 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v275 & 0x1FF)) = v248;
        *(&v373 + 1) = v274 + 1;
        v231 = v248[1];
        v230 = v248 + 1;
        if (v231)
        {
          goto LABEL_273;
        }

        goto LABEL_302;
      }

LABEL_301:
      v250 = v248[1];
      v230 = v248 + 1;
      if (v250)
      {
        goto LABEL_273;
      }

LABEL_302:
      *v230 = 2;
      v251 = v371[1];
      if (v372 == v371[1])
      {
        v252 = 0;
      }

      else
      {
        v252 = ((v372 - v371[1]) << 6) - 1;
      }

      v253 = *(&v373 + 1);
      v254 = *(&v373 + 1) + v373;
      if (v252 == *(&v373 + 1) + v373)
      {
        sub_1002CC5B0(v371);
        v253 = *(&v373 + 1);
        v251 = v371[1];
        v254 = v373 + *(&v373 + 1);
      }

      *(*&v251[(v254 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v254 & 0x1FF)) = v230;
      v228 = v253 + 1;
      *(&v373 + 1) = v253 + 1;
    }

    while (v253 != -1);
  }

LABEL_380:
  if (*(&v370 + 1))
  {
    sub_1002A93EC((a1 + 72));
    v311 = *(a1 + 32);
    v312 = *(v311 + 32) + *(v311 + 40);
    v313 = *(v311 + 8);
    v314 = (v313 + 8 * (v312 >> 9));
    if (*(v311 + 16) == v313)
    {
      v315 = 0;
    }

    else
    {
      v315 = *v314 + 8 * (v312 & 0x1FF);
    }

    v316 = (v370 >> 6) & 0x3FFFFFFFFFFFFF8;
    if (v369 == __p[1])
    {
      v322 = 0;
      v323 = 0;
      v324 = 0;
      v318 = __p[1] + 8 * ((*(&v370 + 1) + v370) >> 9);
    }

    else
    {
      v317 = ((*(&v370 + 1) + v370) >> 6) & 0x3FFFFFFFFFFFFF8;
      v318 = __p[1] + v317;
      v319 = (*(&v370 + 1) + v370) & 0x1FF;
      v320 = *(__p[1] + v317) + 8 * v319;
      v321 = (v319 | ((v317 - v316) << 6)) - (v370 & 0x1FF);
      v322 = v320;
      v323 = (*(__p[1] + v316) + 8 * (v370 & 0x1FF));
      if (v320 == v323)
      {
        v324 = 0;
      }

      else
      {
        v324 = v321;
      }
    }

    sub_1002CCC9C(v311, v314, v315, (__p[1] + v316), v323, v318, v322, v324);
    sub_1002A93F4((a1 + 72));
  }

  if (v361)
  {
    sub_1002ACC1C(&v360);
  }

  if (*&v356[0] != &v356[1] && *&v356[0])
  {
    operator delete[]();
  }

  if (v365)
  {
    sub_1002ACC1C(&v363);
  }

  if (v367[2])
  {
    sub_1002ACC1C(v367);
  }

  v325 = __p[1];
  v326 = v369;
  *(&v370 + 1) = 0;
  v327 = (v369 - __p[1]) >> 3;
  if (v327 >= 3)
  {
    do
    {
      operator delete(*v325);
      v326 = v369;
      v325 = (__p[1] + 8);
      __p[1] = v325;
      v327 = (v369 - v325) >> 3;
    }

    while (v327 > 2);
  }

  if (v327 == 1)
  {
    v328 = 256;
    goto LABEL_405;
  }

  if (v327 == 2)
  {
    v328 = 512;
LABEL_405:
    *&v370 = v328;
  }

  if (v325 != v326)
  {
    do
    {
      v329 = *v325++;
      operator delete(v329);
    }

    while (v325 != v326);
    if (v369 != __p[1])
    {
      *&v369 = v369 + ((__p[1] - v369 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v330 = v371[1];
  v331 = v372;
  *(&v373 + 1) = 0;
  v332 = (v372 - v371[1]) >> 3;
  if (v332 >= 3)
  {
    do
    {
      operator delete(*v330);
      v331 = v372;
      v330 = (v371[1] + 8);
      v371[1] = v330;
      v332 = (v372 - v330) >> 3;
    }

    while (v332 > 2);
  }

  if (v332 == 1)
  {
    v333 = 256;
    goto LABEL_418;
  }

  if (v332 == 2)
  {
    v333 = 512;
LABEL_418:
    *&v373 = v333;
  }

  if (v330 != v331)
  {
    do
    {
      v334 = *v330++;
      operator delete(v334);
    }

    while (v330 != v331);
    if (v372 != v371[1])
    {
      *&v372 = v372 + ((v371[1] - v372 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v371[0])
  {
    operator delete(v371[0]);
  }

  if (v374 != v376 && v374)
  {
    operator delete[]();
  }

  if (v377 != v379 && v377)
  {
    operator delete[]();
  }

  if (*&v380[56] && atomic_fetch_add((*&v380[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v380);
  }

  *&v380[56] = 0;
  memset(&v380[16], 0, 32);
  if (*&v380[4] >= 1)
  {
    v335 = 0;
    v336 = v381;
    do
    {
      *&v336[4 * v335++] = 0;
    }

    while (v335 < *&v380[4]);
  }

  if (v382 != v383)
  {
    j__free(v382);
  }

  if (*&v384[56] && atomic_fetch_add((*&v384[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v384);
  }

  *&v384[56] = 0;
  memset(&v384[16], 0, 32);
  if (*&v384[4] >= 1)
  {
    v337 = 0;
    v338 = v385;
    do
    {
      *&v338[4 * v337++] = 0;
    }

    while (v337 < *&v384[4]);
  }

  if (v386 != v387)
  {
    j__free(v386);
  }

  if (v388[2])
  {
    sub_1002ACC1C(v388);
  }
}

void sub_1002CC3F0(_Unwind_Exception *a1)
{
  sub_1001D8BF4(&STACK[0x518]);
  sub_1001D8BF4(&STACK[0x530]);
  sub_1002CE854(&STACK[0x540]);
  sub_1002CE854(&STACK[0x570]);
  if (STACK[0x5A0] != v2 && STACK[0x5A0])
  {
    operator delete[]();
  }

  if (STACK[0x9C0] != v1)
  {
    if (STACK[0x9C0])
    {
      operator delete[]();
    }
  }

  sub_100006D14(&STACK[0xDE0]);
  sub_100006D14(v3 - 240);
  sub_1001D8BF4(v3 - 136);
  _Unwind_Resume(a1);
}

void sub_1002CC5B0(void **a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  sub_1002CC978(a1, &v10);
}

void sub_1002CC920(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1002CC978(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_1002CCB04(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

char *sub_1002CCC9C(const void **a1, char *a2, uint64_t a3, const void **a4, char *__len, void *a6, char *a7, unint64_t a8)
{
  v8 = a8;
  v14 = a1[4];
  v15 = v14 >> 9;
  v16 = a1[1];
  v17 = a1[2];
  v18 = &v16[8 * (v14 >> 9)];
  if (v17 == v16)
  {
    v19 = 0;
    if (!a3)
    {
LABEL_3:
      v20 = 0;
      v21 = a1[5];
      if (!v21)
      {
        goto LABEL_4;
      }

LABEL_16:
      if (a8 > v14)
      {
        sub_1002CD3FC(a1, a8 - v14);
        v14 = a1[4];
        v16 = a1[1];
        v17 = a1[2];
        v15 = v14 >> 9;
      }

      v30 = &v16[8 * v15];
      if (v17 == v16)
      {
        v31 = 0;
        v32 = v8 - v20;
        if (v8 > v20)
        {
LABEL_20:
          if (v20 < v8 >> 1)
          {
            if (v20)
            {
              v33 = (&a7[-*a6] >> 3) - v20;
              if (v33 >= 1)
              {
                a4 = &a6[v33 >> 9];
LABEL_36:
                v39 = *a4 + 8 * (v33 & 0x1FF);
                if (v39 == __len)
                {
                  goto LABEL_42;
                }

                goto LABEL_76;
              }

              v62 = 511 - v33;
              a4 = &a6[-(v62 >> 9)];
              v39 = *a4 + 8 * (~v62 & 0x1FF);
              if (v39 == __len)
              {
                goto LABEL_42;
              }
            }

            else
            {
              a4 = a6;
              v39 = a7;
              if (a7 == __len)
              {
                goto LABEL_42;
              }
            }

LABEL_76:
            v63 = a1[5];
            v64 = *v30;
            v65 = a4;
            v66 = v39;
            v37 = v30;
            v36 = v31;
            while (1)
            {
              if (v36 == v64)
              {
                v68 = *--v37;
                v64 = v68;
                v36 = v68 + 512;
                if (v66 == *v65)
                {
LABEL_82:
                  v69 = *--v65;
                  v66 = (v69 + 4096);
                }
              }

              else if (v66 == *v65)
              {
                goto LABEL_82;
              }

              v67 = *(v66 - 1);
              v66 -= 8;
              *--v36 = v67;
              --v14;
              ++v63;
              if (v66 == __len)
              {
                a1[4] = v14;
                a1[5] = v63;
                __len = v39;
                v8 = v20;
                if (!v20)
                {
                  goto LABEL_102;
                }

                goto LABEL_84;
              }
            }
          }

          v33 = v32 + ((__len - *a4) >> 3);
          if (v33 < 1)
          {
            v41 = 511 - v33;
            a4 -= v41 >> 9;
            v39 = *a4 + 8 * (~v41 & 0x1FF);
            if (v39 == __len)
            {
LABEL_42:
              v36 = v31;
              v37 = v30;
              __len = v39;
              v8 = v20;
              if (!v20)
              {
                goto LABEL_102;
              }

              goto LABEL_84;
            }

            goto LABEL_76;
          }

          a4 += v33 >> 9;
          goto LABEL_36;
        }
      }

      else
      {
        v31 = &(*v30)[v14 & 0x1FF];
        v32 = v8 - v20;
        if (v8 > v20)
        {
          goto LABEL_20;
        }
      }

      v36 = v31;
      v37 = v30;
      if (!v8)
      {
        goto LABEL_102;
      }

LABEL_84:
      v70 = (v31 - *v30) >> 3;
      v71 = v70 + v8;
      if ((v70 + v8) < 1)
      {
        v72 = &v30[-((511 - v71) >> 9)];
        v73 = *v72;
        v74 = *v72 + 8 * (~(511 - v71) & 0x1FF);
        if (v74 == v31)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v72 = &v30[v71 >> 9];
        v73 = *v72;
        v74 = *v72 + 8 * (v71 & 0x1FF);
        if (v74 == v31)
        {
LABEL_96:
          if (v8 < v20)
          {
            v82 = v70 + v20;
            if ((v70 + v20) < 1)
            {
              v85 = 511 - v82;
              v83 = &v30[-(v85 >> 9)];
              v84 = *v83 + 8 * (~v85 & 0x1FF);
            }

            else
            {
              v83 = &v30[v82 >> 9];
              v84 = *v83 + 8 * (v82 & 0x1FF);
            }

            v90 = v30;
            v91 = v31;
            sub_1002CE20C(v72, v74, v83, v84, &v90);
            v30 = v90;
            v31 = v91;
          }

          v90 = v30;
          v91 = v31;
          sub_1002CE20C(a4, __len, a6, a7, &v90);
          goto LABEL_102;
        }
      }

      v75 = a1[5];
      v76 = *v37;
      v77 = v72;
      v78 = v74;
      while (1)
      {
        if (v36 == v76)
        {
          v80 = *--v37;
          v76 = v80;
          v36 = v80 + 512;
          if (v78 == v73)
          {
LABEL_94:
            v81 = *--v77;
            v73 = v81;
            v78 = v81 + 4096;
          }
        }

        else if (v78 == v73)
        {
          goto LABEL_94;
        }

        v79 = *(v78 - 1);
        v78 -= 8;
        *--v36 = v79;
        --v14;
        ++v75;
        if (v78 == v31)
        {
          a1[4] = v14;
          a1[5] = v75;
          goto LABEL_96;
        }
      }
    }
  }

  else
  {
    v19 = *v18 + 8 * (a1[4] & 0x1FF);
    if (a3 == v19)
    {
      goto LABEL_3;
    }
  }

  v20 = ((a3 - *a2) >> 3) + ((a2 - v18) << 6) - ((v19 - *v18) >> 3);
  v21 = a1[5];
  if (v20 < &v21[-v20])
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = ((v17 - v16) << 6) - 1;
  if (v17 == v16)
  {
    v22 = 0;
  }

  v23 = &v21[v14];
  v24 = v22 - v23;
  if (a8 > v24)
  {
    sub_1002CDB10(a1, a8 - v24);
    v21 = a1[5];
    v16 = a1[1];
    v17 = a1[2];
    v23 = &v21[a1[4]];
  }

  v25 = &v16[8 * (v23 >> 9)];
  if (v17 != v16)
  {
    v26 = *v25 + 8 * (v23 & 0x1FF);
    v27 = &v21[-v20];
    v28 = &v21[-v20 - v8];
    if (&v21[-v20] < v8)
    {
      goto LABEL_10;
    }

LABEL_25:
    v34 = v26;
    v35 = v25;
    if (v8)
    {
      goto LABEL_57;
    }

    goto LABEL_102;
  }

  v26 = 0;
  v27 = &v21[-v20];
  v28 = &v21[-v20 - v8];
  if (&v21[-v20] >= v8)
  {
    goto LABEL_25;
  }

LABEL_10:
  if (v27 < v8 >> 1)
  {
    if (v27)
    {
      v29 = v27 + ((__len - *a4) >> 3);
      if (v29 >= 1)
      {
        a6 = &a4[v29 >> 9];
        goto LABEL_32;
      }

      v42 = 511 - v29;
      a6 = &a4[-(v42 >> 9)];
      v38 = (*a6 + 8 * (~v42 & 0x1FF));
      if (v38 == a7)
      {
        goto LABEL_39;
      }
    }

    else
    {
      a6 = a4;
      v38 = __len;
      if (__len == a7)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_49;
  }

  v29 = v28 + (&a7[-*a6] >> 3);
  if (v29 >= 1)
  {
    a6 += v29 >> 9;
LABEL_32:
    v38 = (*a6 + 8 * (v29 & 0x1FF));
    if (v38 == a7)
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

  v40 = 511 - v29;
  a6 -= v40 >> 9;
  v38 = (*a6 + 8 * (~v40 & 0x1FF));
  if (v38 != a7)
  {
LABEL_49:
    v43 = *v25;
    v44 = a6;
    v45 = v38;
    v35 = v25;
    v34 = v26;
    while (1)
    {
      *v34 = *v45;
      v34 += 8;
      if (v34 - v43 == 4096)
      {
        v46 = v35[1];
        ++v35;
        v43 = v46;
        v34 = v46;
        v45 += 8;
        if (&v45[-*v44] == 4096)
        {
LABEL_55:
          v47 = v44[1];
          ++v44;
          v45 = v47;
        }
      }

      else
      {
        v45 += 8;
        if (&v45[-*v44] == 4096)
        {
          goto LABEL_55;
        }
      }

      ++v21;
      if (v45 == a7)
      {
        a1[5] = v21;
        a7 = v38;
        v8 = v27;
        if (!v27)
        {
          goto LABEL_102;
        }

LABEL_57:
        v48 = (v26 - *v25) >> 3;
        v49 = v48 - v8;
        if ((v48 - v8) < 1)
        {
          v50 = &v25[-((511 - v49) >> 9)];
          v51 = *v50;
          v52 = &(*v50)[~(511 - v49) & 0x1FF];
          if (v52 == v26)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v50 = &v25[v49 >> 9];
          v51 = *v50;
          v52 = &(*v50)[v49 & 0x1FF];
          if (v52 == v26)
          {
LABEL_69:
            if (v8 < v27)
            {
              v58 = v48 - v27;
              if (v58 < 1)
              {
                v61 = 511 - v58;
                v59 = &v25[-(v61 >> 9)];
                v60 = &(*v59)[~v61 & 0x1FF];
              }

              else
              {
                v59 = &v25[v58 >> 9];
                v60 = &(*v59)[v58 & 0x1FF];
              }

              sub_1002CE4BC(v59, v60, v50, v52, v25, v26, &v90);
              v25 = v92;
              v26 = v93;
            }

            sub_1002CE4BC(a4, __len, a6, a7, v25, v26, &v90);
            goto LABEL_102;
          }
        }

        v53 = *v35;
        v54 = v50;
        v55 = v52;
        while (2)
        {
          *v34 = *v55;
          v34 += 8;
          if (v34 - v53 == 4096)
          {
            v56 = v35[1];
            ++v35;
            v53 = v56;
            v34 = v56;
            v55 += 8;
            if (v55 - v51 == 4096)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v55 += 8;
            if (v55 - v51 == 4096)
            {
LABEL_67:
              v57 = v54[1];
              ++v54;
              v51 = v57;
              v55 = v57;
            }
          }

          ++v21;
          if (v55 == v26)
          {
            a1[5] = v21;
            goto LABEL_69;
          }

          continue;
        }
      }
    }
  }

LABEL_39:
  v34 = v26;
  v35 = v25;
  a7 = v38;
  v8 = v27;
  if (v27)
  {
    goto LABEL_57;
  }

LABEL_102:
  v86 = a1[1];
  result = &v86[8 * (a1[4] >> 9)];
  if (a1[2] == v86)
  {
    v88 = 0;
    if (!v20)
    {
      return result;
    }
  }

  else
  {
    v88 = *result + 8 * (a1[4] & 0x1FF);
    if (!v20)
    {
      return result;
    }
  }

  v89 = v20 + ((v88 - *result) >> 3);
  if (v89 < 1)
  {
    result -= 8 * ((511 - v89) >> 9);
  }

  else
  {
    result += 8 * (v89 >> 9);
  }

  return result;
}

void sub_1002CD3FC(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 == v3)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = a2;
  }

  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v3) << 6) - 1;
  }

  if ((v5 & 0x1FF) != 0)
  {
    v7 = (v5 >> 9) + 1;
  }

  else
  {
    v7 = v5 >> 9;
  }

  v8 = a1[4];
  v9 = v6 - (a1[5] + v8);
  if (v7 >= v9 >> 9)
  {
    v10 = v9 >> 9;
  }

  else
  {
    v10 = v7;
  }

  if (v7 <= v9 >> 9)
  {
    for (a1[4] = (v8 + (v10 << 9)); v10; --v10)
    {
      v15 = a1[2];
      v17 = *(v15 - 8);
      a1[2] = (v15 - 8);
      sub_1002CCB04(a1, &v17);
    }
  }

  else
  {
    v11 = v7 - v10;
    v12 = a1[3] - *a1;
    v13 = (v4 - v3) >> 3;
    if (v7 - v10 > (v12 >> 3) - v13)
    {
      if (v12 >> 2 <= v11 + v13)
      {
        v14 = v11 + v13;
      }

      else
      {
        v14 = v12 >> 2;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        sub_10000927C();
      }

      operator new();
    }

    if (v11)
    {
      if (v3 != *a1)
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] = (v8 + (v10 << 9)); v10; --v10)
    {
      v16 = a1[2];
      v17 = *(v16 - 8);
      a1[2] = (v16 - 8);
      sub_1002CCB04(a1, &v17);
    }
  }
}

void sub_1002CDAA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CDB10(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = a1[1];
      v14 = *v12;
      a1[1] = (v12 + 1);
      sub_1002CC978(a1, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_10000927C();
      }

      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 9; v7; --v7)
    {
      v13 = a1[1];
      v14 = *v13;
      a1[1] = (v13 + 1);
      sub_1002CC978(a1, &v14);
    }
  }
}

void sub_1002CE1A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1002CE20C(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = (v10 - v8 + 4096) >> 3;
        if ((a4 - v7) >> 3 < v12)
        {
          v12 = (a4 - v7) >> 3;
        }

        v13 = 8 * v12;
        if (v12)
        {
          result = memmove(v8, v7, 8 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v16 = result;
  v17 = *result + 4096;
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 == __len)
  {
    goto LABEL_20;
  }

  v20 = *v18++;
  v19 = v20;
  while (1)
  {
    v21 = (v19 - v8 + 4096) >> 3;
    if ((v17 - v7) >> 3 < v21)
    {
      v21 = (v17 - v7) >> 3;
    }

    v22 = 8 * v21;
    if (v21)
    {
      result = memmove(v8, v7, 8 * v21);
    }

    v7 += v22;
    if (v7 == v17)
    {
      break;
    }

    v23 = *v18++;
    v19 = v23;
    v8 = v23;
  }

  v8 += v22;
  if (*(v18 - 1) + 4096 != v8)
  {
    --v18;
LABEL_20:
    *a5 = v18;
    *(a5 + 8) = v8;
    for (i = v16 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v25 = 0;
        v26 = *i;
        v28 = *v18++;
        v27 = v28;
        while (1)
        {
          v29 = (v27 - v8 + 4096) >> 3;
          if ((4096 - v25) >> 3 < v29)
          {
            v29 = (4096 - v25) >> 3;
          }

          v30 = 8 * v29;
          if (v29)
          {
            result = memmove(v8, &v26[v25], 8 * v29);
          }

          v25 += v30;
          if (v25 == 4096)
          {
            break;
          }

          v31 = *v18++;
          v27 = v31;
          v8 = v31;
        }

        v8 += v30;
        v32 = v18 - 1;
        if (*(v18 - 1) + 4096 != v8)
        {
          break;
        }

        v8 = *v18;
        *a5 = v18;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v18;
      *a5 = v32;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v18;
  *a5 = v18;
  *(a5 + 8) = v8;
  i = v16 + 1;
  if (i != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v33 = *i;
  if (*i != a4)
  {
    v35 = *v18++;
    v34 = v35;
    while (1)
    {
      v36 = (v34 - v8 + 4096) >> 3;
      if ((a4 - v33) >> 3 < v36)
      {
        v36 = (a4 - v33) >> 3;
      }

      v37 = 8 * v36;
      if (v36)
      {
        result = memmove(v8, v33, 8 * v36);
      }

      v33 += v37;
      if (v33 == a4)
      {
        break;
      }

      v38 = *v18++;
      v34 = v38;
      v8 = v38;
    }

    v8 += v37;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

void *sub_1002CE4BC@<X0>(const void ***a1@<X1>, const void **a2@<X2>, const void ***a3@<X3>, const void **a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ****a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_42;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = (a6 - v13) >> 3;
      if (v14 - a2 < v15)
      {
        v15 = v14 - a2;
      }

      v14 -= v15;
      a6 -= 8 * v15;
      if (v15)
      {
        result = memmove(a6, v14, 8 * v15);
      }

      if (v14 == a2)
      {
        break;
      }

      v17 = *--v8;
      v13 = v17;
      a6 = v17 + 4096;
    }

    goto LABEL_40;
  }

  v19 = *a3;
  if (*a3 != a4)
  {
    v20 = *a5;
    v21 = a4;
    while (1)
    {
      v22 = (a6 - v20) >> 3;
      if (v21 - v19 < v22)
      {
        v22 = v21 - v19;
      }

      v21 -= v22;
      a6 -= 8 * v22;
      if (v22)
      {
        result = memmove(a6, v21, 8 * v22);
      }

      if (v21 == v19)
      {
        break;
      }

      v23 = *--v8;
      v20 = v23;
      a6 = v23 + 4096;
    }

    if (*v8 + 4096 == a6)
    {
      v24 = v8[1];
      ++v8;
      a6 = v24;
    }
  }

  v25 = (a3 - 1);
  if (a3 - 1 != a1)
  {
    v26 = *v8;
    do
    {
      while (1)
      {
        v27 = *v25;
        v28 = *v25 + 4096;
        while (1)
        {
          v29 = (a6 - v26) >> 3;
          if ((v28 - v27) >> 3 < v29)
          {
            v29 = (v28 - v27) >> 3;
          }

          v28 -= 8 * v29;
          a6 -= 8 * v29;
          if (v29)
          {
            result = memmove(a6, v28, 8 * v29);
          }

          if (v28 == v27)
          {
            break;
          }

          v30 = *--v8;
          v26 = v30;
          a6 = v30 + 4096;
        }

        v26 = *v8;
        if (*v8 + 4096 == a6)
        {
          break;
        }

        if (--v25 == a1)
        {
          goto LABEL_32;
        }
      }

      v31 = v8[1];
      ++v8;
      v26 = v31;
      a6 = v31;
      --v25;
    }

    while (v25 != a1);
  }

LABEL_32:
  v32 = (*v25 + 4096);
  if (v32 != a2)
  {
    v33 = *v8;
    while (1)
    {
      v34 = (a6 - v33) >> 3;
      if (v32 - a2 < v34)
      {
        v34 = v32 - a2;
      }

      v32 -= v34;
      a6 -= 8 * v34;
      if (v34)
      {
        result = memmove(a6, v32, 8 * v34);
      }

      if (v32 == a2)
      {
        break;
      }

      v35 = *--v8;
      v33 = v35;
      a6 = v35 + 4096;
    }

LABEL_40:
    if (*v8 + 4096 == a6)
    {
      v36 = v8[1];
      ++v8;
      a6 = v36;
    }
  }

LABEL_42:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

void sub_1002CE6F0()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002CE728(uint64_t result, int *a2)
{
  v2 = *a2;
  if (v2 < a2[1])
  {
    v3 = *(result + 16);
    v4 = v2 + 1;
    v5.i64[0] = 0x202020202020202;
    v5.i64[1] = 0x202020202020202;
    do
    {
      v6 = *(v3 + 16) + **(v3 + 72) * v2;
      v7 = *(result + 8);
      ++v2;
      v8 = *(v7 + 16);
      v9 = **(v7 + 72);
      if (*(result + 24))
      {
        v10 = 16;
      }

      else
      {
        v10 = 1;
      }

      if (*(result + 24))
      {
        v11 = *(v3 + 12);
        if (v11 >= 16)
        {
          v12 = 0;
          do
          {
            *(v6 + v12) = vceqq_s8(*(v8 + v10 + v9 * v4 + v12), v5);
            v12 += 16;
            v3 = *(result + 16);
            v13 = *(v3 + 12);
          }

          while (v12 <= v13 - 16);
          v12 = v12;
          if (v12 > v13 - 8)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v12 = 0;
          if (v11 - 8 < 0)
          {
            goto LABEL_16;
          }
        }

        *(v6 + v12) = vceq_s8(*(v8 + v9 * v2 + v10 + v12), 0x202020202020202);
        v12 |= 8uLL;
        v3 = *(result + 16);
      }

      else
      {
        v12 = 0;
      }

LABEL_16:
      if (v12 < *(v3 + 12))
      {
        v14 = v8 + v10 + v9 * v4;
        do
        {
          *(v6 + v12) = -(*(v14 + v12) >> 1);
          ++v12;
          v3 = *(result + 16);
        }

        while (v12 < *(v3 + 12));
      }

      ++v4;
    }

    while (v2 < a2[1]);
  }

  return result;
}

uint64_t sub_1002CE854(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002CE920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, char a10)
{
  sub_1002ACE7C(v19, &off_100476EA0);
  if (a10)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (a7 == 2)
  {
    v29 = a8;
    v30 = a9;
    v31 = v18;
    v27 = 0;
    v28 = a6;
    v20 = &off_100477230;
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = &v29;
    sub_1002829C8(&v27, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v29 = a8;
    v30 = a9;
    v31 = v18;
    if (a7)
    {
      v27 = 0;
      v28 = a6;
      v20 = &off_100477290;
      v21 = a1;
      v22 = a2;
      v23 = a3;
      v24 = a4;
      v25 = a5;
      v26 = &v29;
      sub_1002829C8(&v27, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      v32 = -1;
      v33 = -1;
      v34 = -1;
      v27 = 0;
      v28 = a6;
      v20 = &off_1004771D0;
      v21 = a1;
      v22 = a2;
      v23 = a3;
      v24 = a4;
      v25 = a5;
      v26 = &v29;
      sub_1002829C8(&v27, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }
  }

  nullsub_1();
  if (v19[2])
  {
    sub_1002ACC1C(v19);
  }
}

void sub_1002CEB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002CEB24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CEB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  sub_1002ACE7C(v25, &off_100476EC0);
  if (a8)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v19[0] = a7;
  v19[1] = v17;
  v19[2] = a9;
  v20 = 0xFCFCFCFCFCFCFCFCLL;
  v21 = 0xF8F8F8F8F8F8F8F8;
  *&v18 = 0x8000800080008000;
  *(&v18 + 1) = 0x8000800080008000;
  v22 = v18;
  v23 = 0u;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v24 = v18;
  v29[0] = 0;
  v29[1] = a6;
  v26[0] = &off_1004772F0;
  v26[1] = a1;
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = a4;
  v27 = a5;
  v28 = v19;
  sub_1002829C8(v29, v26, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v25[2])
  {
    sub_1002ACC1C(v25);
  }
}

void sub_1002CEC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  sub_1002ACE7C(v26, &off_100476EE0);
  if (a8)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v20[0] = a7;
  v20[1] = v17;
  v20[2] = a9;
  *&v18 = 0x3000300030003;
  *(&v18 + 1) = 0x3000300030003;
  *&v19 = 0x7000700070007;
  *(&v19 + 1) = 0x7000700070007;
  v21 = v18;
  v22 = v19;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v24 = v18;
  v25 = 0u;
  *&v19 = 0x8000800080008000;
  *(&v19 + 1) = 0x8000800080008000;
  v23 = v19;
  v30[0] = 0;
  v30[1] = a6;
  v27[0] = &off_100477350;
  v27[1] = a1;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v28 = a5;
  v29 = v20;
  sub_1002829C8(v30, v27, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v26[2])
  {
    sub_1002ACC1C(v26);
  }
}

void sub_1002CED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CEDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9)
{
  sub_1002ACE7C(v41, &off_100476F00);
  if (a7 == 2)
  {
    v37 = a8;
    *v38 = 0x259100001323;
    v34 = 1868;
    *&v38[8] = 1868;
    v35 = 4899;
    if ((a9 & 1) == 0)
    {
      *v38 = 1868;
      *&v38[8] = 4899;
      v35 = 1868;
      v34 = 4899;
    }

    *&v38[12] = vdup_n_s16(v35);
    *&v38[20] = vdup_n_s16(0x2591u);
    *v39.i8 = vdup_n_s16(v34);
    v36.i64[0] = 0x200000002000;
    v36.i64[1] = 0x200000002000;
    v40 = v36;
    v49 = 0;
    v50 = a6;
    v42 = &off_100477410;
    v43 = a1;
    v44 = a2;
    v45 = a3;
    v46 = a4;
    v47 = a5;
    v48 = &v37;
    sub_1002829C8(&v49, &v42, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v37 = a8;
    *&v38[8] = 1038710997;
    *v38 = 0x3F1645A23E991687;
    if (a9)
    {
      v18.i32[0] = 1050220167;
      v17.i32[0] = 1038710997;
    }

    else
    {
      *v38 = 1038710997;
      *&v38[8] = 1050220167;
      v18.i32[0] = 1038710997;
      v17.i32[0] = 1050220167;
    }

    *&v38[12] = vdupq_lane_s32(v18, 0);
    v39 = vdupq_lane_s32(*&v38[4], 0);
    v40 = vdupq_lane_s32(v17, 0);
    v49 = 0;
    v50 = a6;
    v42 = &off_100477470;
    v43 = a1;
    v44 = a2;
    v45 = a3;
    v46 = a4;
    v47 = a5;
    v48 = &v37;
    sub_1002829C8(&v49, &v42, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    if (a9)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    v20 = dword_1003E6958[v19];
    v21 = dword_1003E6958[v19 ^ 2];
    v37 = a8;
    v22 = vdupq_n_s32(4 * v21);
    v23 = vmulq_s32(vdupq_n_s32(v21), xmmword_1003E3950);
    v24.i64[0] = 0x200000002000;
    v24.i64[1] = 0x200000002000;
    v25 = vmlaq_s32(v24, vdupq_n_s32(v20), xmmword_1003E3950);
    v26 = vdupq_n_s32(4 * v20);
    v27 = xmmword_1003E6810;
    v28 = 1028;
    v29 = vdupq_n_s32(0x9644u);
    v30 = vdupq_n_s32(0x12C88u);
    do
    {
      v31 = vaddq_s32(v23, v22);
      v32 = &v38[v28 - 4];
      *&v38[v28 - 1028] = v23;
      *&v38[v28 - 1012] = v31;
      v33 = vaddq_s32(v25, v26);
      *v32 = v27;
      v32[1] = vaddq_s32(v27, v29);
      v32[64] = v25;
      v32[65] = v33;
      v23 = vaddq_s32(v31, v22);
      v27 = vaddq_s32(v27, v30);
      v25 = vaddq_s32(v33, v26);
      v28 += 32;
    }

    while (v28 != 2052);
    v49 = 0;
    v50 = a6;
    v42 = &off_1004773B0;
    v43 = a1;
    v44 = a2;
    v45 = a3;
    v46 = a4;
    v47 = a5;
    v48 = &v37;
    sub_1002829C8(&v49, &v42, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1();
  if (v41[2])
  {
    sub_1002ACC1C(v41);
  }
}

void sub_1002CF090(_Unwind_Exception *a1)
{
  nullsub_1();
  sub_1001D8BF4(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1002CF0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  sub_1002ACE7C(v17, &off_100476F20);
  if (a7 == 2)
  {
    v16 = a8;
    v25 = 0;
    v26 = a6;
    v18 = &off_100477530;
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = &v16;
    sub_1002829C8(&v25, &v18, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v16 = a8;
    v25 = 0;
    v26 = a6;
    if (a7)
    {
      v18 = &off_100477590;
      v19 = a1;
      v20 = a2;
      v21 = a3;
      v22 = a4;
      v23 = a5;
      v24 = &v16;
      sub_1002829C8(&v25, &v18, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      v18 = &off_1004774D0;
      v19 = a1;
      v20 = a2;
      v21 = a3;
      v22 = a4;
      v23 = a5;
      v24 = &v16;
      sub_1002829C8(&v25, &v18, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }
  }

  nullsub_1();
  if (v17[2])
  {
    sub_1002ACC1C(v17);
  }
}

void sub_1002CF240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CF268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  sub_1002ACE7C(v23, &off_100476F40);
  v16 = a7;
  v17 = vdup_n_s16(0x74Cu);
  v18 = vdup_n_s16(0x2591u);
  v19 = vdup_n_s16(0x1323u);
  *&v14 = 0x200000002000;
  *(&v14 + 1) = 0x200000002000;
  *&v15 = 0xF800F800F800F8;
  *(&v15 + 1) = 0xF800F800F800F8;
  v20 = v14;
  v21 = v15;
  *&v14 = 0xFC00FC00FC00FCLL;
  *(&v14 + 1) = 0xFC00FC00FC00FCLL;
  v22 = v14;
  v27[0] = 0;
  v27[1] = a6;
  v24[0] = &off_1004775F0;
  v24[1] = a1;
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v25 = a5;
  v26 = &v16;
  sub_1002829C8(v27, v24, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v23[2])
  {
    sub_1002ACC1C(v23);
  }
}

void sub_1002CF370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CF38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  sub_1002ACE7C(v17, &off_100476F60);
  v14 = a7;
  v15 = 0xF8F8F8F8F8F8F8F8;
  v16 = 0xFCFCFCFCFCFCFCFCLL;
  v21[0] = 0;
  v21[1] = a6;
  v18[0] = &off_100477650;
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v19 = a5;
  v20 = &v14;
  sub_1002829C8(v21, v18, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v17[2])
  {
    sub_1002ACC1C(v17);
  }
}

void sub_1002CF46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CF488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9, char a10)
{
  sub_1002ACE7C(v52, &off_100476F80);
  if (a9)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  if (a7 == 2)
  {
    v43 = a8;
    v44 = v19;
    v45[20] = a10;
    v23 = &unk_1003E69AC;
    if (a10)
    {
      v23 = &unk_1003E6998;
    }

    *v45 = *v23;
    *&v45[16] = v23[4];
    if (a9)
    {
      v24 = *v45;
      v25 = *&v45[8];
    }

    else
    {
      v25 = *v45;
      v24 = *&v45[8];
      *v45 = *&v45[8];
      *&v45[8] = v25;
    }

    v35 = (&v43 | 0xC);
    v36 = vld1q_dup_f32(v35);
    *&v45[24] = vdupq_n_s32(v24);
    v46 = v36;
    v37 = vdupq_n_s32(v25);
    v38 = &v45[12];
    v39 = vld1q_dup_f32(v38);
    v47 = v37;
    v48 = v39;
    v40 = &v45[16];
    v41 = vld1q_dup_f32(v40);
    v39.i64[0] = 0x2000000020000000;
    v39.i64[1] = 0x2000000020000000;
    v49 = v41;
    v50 = v39;
    v41.i64[0] = 0x200000002000;
    v41.i64[1] = 0x200000002000;
    v51 = v41;
    v60 = 0;
    v61 = a6;
    v53 = &off_100477710;
    v54 = a1;
    v55 = a2;
    v56 = a3;
    v57 = a4;
    v58 = a5;
    v59 = &v43;
    sub_1002829C8(&v60, &v53, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v43 = a8;
    v44 = v19;
    v45[0] = a10;
    v26 = &unk_1003E69D4;
    if (a10)
    {
      v26 = &unk_1003E69C0;
    }

    v27 = *v26;
    *&v45[4] = *v26;
    *&v45[20] = v26[4];
    v28 = *&v45[4];
    v18.i32[0] = *&v45[12];
    if (a9)
    {
      LODWORD(v27) = *&v45[12];
      v18.i32[0] = *&v45[4];
    }

    else
    {
      *&v45[4] = *&v45[12];
      *&v45[12] = v28;
      LODWORD(v27) = v28;
    }

    *&v45[24] = vdupq_lane_s32(v18, 0);
    v46 = vdupq_lane_s32(*&v45[8], 0);
    v47 = vdupq_lane_s32(*&v27, 0);
    v48 = vdupq_lane_s32(*&v45[16], 0);
    v42.i64[0] = 0x3F0000003F000000;
    v42.i64[1] = 0x3F0000003F000000;
    v49 = vdupq_lane_s32(*&v45[20], 0);
    v50 = v42;
    v60 = 0;
    v61 = a6;
    v53 = &off_100477770;
    v54 = a1;
    v55 = a2;
    v56 = a3;
    v57 = a4;
    v58 = a5;
    v59 = &v43;
    sub_1002829C8(&v60, &v53, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v43 = a8;
    v44 = v19;
    v45[20] = a10;
    v20 = &unk_1003E6984;
    if (a10)
    {
      v20 = &unk_1003E6970;
    }

    *v45 = *v20;
    *&v45[16] = v20[4];
    if (a9)
    {
      v21 = *v45;
      v22 = *&v45[8];
    }

    else
    {
      v22 = *v45;
      v21 = *&v45[8];
      *v45 = *&v45[8];
      *&v45[8] = v22;
    }

    v29 = (&v43 | 0xC);
    v30 = vld1_dup_s16(v29);
    *&v45[24] = vdup_n_s16(v21);
    *&v45[32] = v30;
    *v46.i8 = vdup_n_s16(v22);
    v31 = &v45[12];
    v32 = vld1q_dup_f32(v31);
    v33 = &v45[16];
    v34 = vld1q_dup_f32(v33);
    v47 = v32;
    v48 = v34;
    v32.i64[0] = 0x20000000200000;
    v32.i64[1] = 0x20000000200000;
    v34.i64[0] = 0x200000002000;
    v34.i64[1] = 0x200000002000;
    v49 = v32;
    v50 = v34;
    v60 = 0;
    v61 = a6;
    v53 = &off_1004776B0;
    v54 = a1;
    v55 = a2;
    v56 = a3;
    v57 = a4;
    v58 = a5;
    v59 = &v43;
    sub_1002829C8(&v60, &v53, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1();
  if (v52[2])
  {
    sub_1002ACC1C(v52);
  }
}

void sub_1002CF7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CF7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9, char a10)
{
  sub_1002ACE7C(v45, &off_100476FA0);
  if (a9)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (a7 == 2)
  {
    v55 = a8;
    v56 = v18;
    v57 = a10;
    if (a10)
    {
      v30 = &unk_1003E6A08;
    }

    else
    {
      v30 = &unk_1003E6A18;
    }

    *v58 = *v30;
    v29 = (&v55 | 0xC);
    v31 = vld1q_dup_f32(v29);
    v32 = &v58[4];
    v33 = vld1q_dup_f32(v32);
    v59 = v31;
    v60 = v33;
    v34 = &v58[8];
    v35 = vld1q_dup_f32(v34);
    v36 = &v58[12];
    v37 = vld1q_dup_f32(v36);
    v61 = v35;
    v62 = v37;
    v35.i64[0] = 0x800000008000;
    v35.i64[1] = 0x800000008000;
    v37.i64[0] = 0x200000002000;
    v37.i64[1] = 0x200000002000;
    v63 = v37;
    v64 = v35;
    v65 = -1;
    v66 = -1;
    v67 = -1;
    v53 = 0;
    v54 = a6;
    v46 = &off_100477830;
    v47 = a1;
    v48 = a2;
    v49 = a3;
    v50 = a4;
    v51 = a5;
    v52 = &v55;
    sub_1002829C8(&v53, &v46, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v55 = a8;
    v56 = v18;
    v57 = a10;
    if (a10)
    {
      v38 = &unk_1003E6A28;
    }

    else
    {
      v38 = &unk_1003E6A38;
    }

    *v58 = *v38;
    v59 = vdupq_lane_s32(*v58, 0);
    v60 = vdupq_lane_s32(*&v58[4], 0);
    v61 = vdupq_lane_s32(*&v58[8], 0);
    v62 = vdupq_lane_s32(*&v58[12], 0);
    v39.i64[0] = 0x3F0000003F000000;
    v39.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V1.4S, #1.0 }

    v63 = _Q1;
    v64 = v39;
    v53 = 0;
    v54 = a6;
    v46 = &off_100477890;
    v47 = a1;
    v48 = a2;
    v49 = a3;
    v50 = a4;
    v51 = a5;
    v52 = &v55;
    sub_1002829C8(&v53, &v46, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v19 = &unk_1003E69F8;
    if (a10)
    {
      v19 = &unk_1003E69E8;
    }

    v20 = *v19;
    v21 = (&v55 | 0xC);
    *v58 = v20;
    v22 = vld1q_dup_f32(v21);
    v55 = a8;
    v56 = v18;
    v23 = &v58[4];
    v24 = vld1q_dup_f32(v23);
    v59 = v22;
    v60 = v24;
    v25 = &v58[8];
    v26 = vld1q_dup_f32(v25);
    v27 = &v58[12];
    v28 = vld1q_dup_f32(v27);
    v57 = a10;
    v61 = v26;
    v62 = v28;
    v28.i64[0] = 0x200000002000;
    v28.i64[1] = 0x200000002000;
    v63 = v28;
    v64.i64[0] = 0x80008000800080;
    v64.i64[1] = -1;
    v53 = 0;
    v54 = a6;
    v46 = &off_1004777D0;
    v47 = a1;
    v48 = a2;
    v49 = a3;
    v50 = a4;
    v51 = a5;
    v52 = &v55;
    sub_1002829C8(&v53, &v46, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1();
  if (v45[2])
  {
    sub_1002ACC1C(v45);
  }
}

void sub_1002CFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002CFAEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CFB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9)
{
  sub_1002ACE7C(v56, &off_100476FC0);
  if (a7 == 2)
  {
    v42 = a8;
    v43 = xmmword_1003E6820;
    v44 = xmmword_1003E6830;
    v27 = 3892;
    v45 = 3892;
    v28 = 739;
    v29 = 79;
    if (a9)
    {
      v30 = 1689;
      v31 = 871;
      v32 = 296;
    }

    else
    {
      LODWORD(v43) = 739;
      *(&v43 + 1) = 0x12800000699;
      v30 = 739;
      v28 = 1689;
      *(&v44 + 4) = 0xF3400000367;
      v45 = 79;
      v31 = 296;
      v32 = 871;
      v29 = 3892;
      v27 = 79;
    }

    v46 = vdup_n_s16(v30);
    *v47.i8 = vdup_n_s16(0x5B9u);
    v47.u64[1] = vdup_n_s16(v28);
    *v48.i8 = vdup_n_s16(v31);
    v48.u64[1] = vdup_n_s16(0xB71u);
    *v49.i8 = vdup_n_s16(v32);
    v49.u64[1] = vdup_n_s16(v29);
    *v50.i8 = vdup_n_s16(0x1E8u);
    v50.u64[1] = vdup_n_s16(v27);
    v41.i64[0] = 0x80000000800;
    v41.i64[1] = 0x80000000800;
    v51 = v41;
    v64 = 0;
    v65 = a6;
    v57 = &off_100477950;
    v58 = a1;
    v59 = a2;
    v60 = a3;
    v61 = a4;
    v62 = a5;
    v63 = &v42;
    sub_1002829C8(&v64, &v57, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v42 = a8;
    v33 = vcvt_f32_f64(*&qword_1004D3FB0);
    v34 = vcvt_f32_f64(xmmword_1004D3FA0);
    v35 = vcvt_hight_f32_f64(v34, *&qword_1004D3FB0);
    v43 = v35;
    v36 = vcvt_f32_f64(*&qword_1004D3FD0).u32[0];
    v37 = vcvt_f32_f64(xmmword_1004D3FC0);
    v17.i32[0] = v37.i32[1];
    v38 = vcvt_hight_f32_f64(v37, *&qword_1004D3FD0);
    v44 = v38;
    v39.i32[1] = HIDWORD(qword_1004D3FE0);
    *v39.i32 = *&qword_1004D3FE0;
    v45 = v39.i32[0];
    if (a9)
    {
      *v18.i32 = *&qword_1004D3FE0;
      v39.i32[0] = v36;
      v19.i32[0] = v17.i32[0];
      v17.i32[0] = v33.i32[1];
      v20.i32[0] = v33.i32[0];
      v33.i32[0] = v34.i32[0];
    }

    else
    {
      LODWORD(v43) = v33.i32[0];
      *(&v43 + 1) = __PAIR64__(v17.u32[0], v34.u32[0]);
      DWORD1(v44) = v33.i32[1];
      *(&v44 + 2) = *&qword_1004D3FE0;
      v18.i32[0] = v36;
      v19.i32[0] = v33.i32[1];
      v20.i32[0] = v34.i32[0];
      v45 = v36;
    }

    v47 = vdupq_lane_s32(v33, 0);
    v48 = vdupq_lane_s32(*v35.f32, 1);
    v49 = vdupq_lane_s32(v20, 0);
    v50 = vdupq_lane_s32(v17, 0);
    v51 = vdupq_lane_s32(*v38.i8, 0);
    v52 = vdupq_lane_s32(v19, 0);
    v53 = vdupq_lane_s32(v39, 0);
    v54 = vdupq_laneq_s32(v38, 3);
    v55 = vdupq_lane_s32(v18, 0);
    v64 = 0;
    v65 = a6;
    v57 = &off_1004779B0;
    v58 = a1;
    v59 = a2;
    v60 = a3;
    v61 = a4;
    v62 = a5;
    v63 = &v42;
    sub_1002829C8(&v64, &v57, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v42 = a8;
    v43 = xmmword_1003E6820;
    v44 = xmmword_1003E6830;
    v21 = 3892;
    v45 = 3892;
    v22 = 739;
    v23 = 79;
    if (a9)
    {
      v24 = 1689;
      v25 = 871;
      v26 = 296;
    }

    else
    {
      LODWORD(v43) = 739;
      *(&v43 + 1) = 0x12800000699;
      v24 = 739;
      v22 = 1689;
      *(&v44 + 4) = 0xF3400000367;
      v45 = 79;
      v25 = 296;
      v26 = 871;
      v23 = 3892;
      v21 = 79;
    }

    v46 = vdup_n_s16(v24);
    *v47.i8 = vdup_n_s16(0x5B9u);
    v47.u64[1] = vdup_n_s16(v22);
    *v48.i8 = vdup_n_s16(v25);
    v48.u64[1] = vdup_n_s16(0xB71u);
    *v49.i8 = vdup_n_s16(v26);
    v49.u64[1] = vdup_n_s16(v23);
    *v50.i8 = vdup_n_s16(0x1E8u);
    v50.u64[1] = vdup_n_s16(v21);
    v40.i64[0] = 0x80000000800;
    v40.i64[1] = 0x80000000800;
    v51 = v40;
    v64 = 0;
    v65 = a6;
    v57 = &off_1004778F0;
    v58 = a1;
    v59 = a2;
    v60 = a3;
    v61 = a4;
    v62 = a5;
    v63 = &v42;
    sub_1002829C8(&v64, &v57, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1();
  if (v56[2])
  {
    sub_1002ACC1C(v56);
  }
}

void sub_1002CFED8(_Unwind_Exception *a1)
{
  nullsub_1();
  sub_1001D8BF4(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1002CFF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8, char a9)
{
  sub_1002ACE7C(&v53, &off_100476FE0);
  if (a9)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  if (a7 == 2)
  {
    v37 = __PAIR64__(v17, a8);
    v38 = xmmword_1003E6840;
    v39 = xmmword_1003E6850;
    v24 = 4331;
    v40 = 4331;
    v25 = -2042;
    if (a9)
    {
      v26 = 13273;
      v27 = -6296;
      v28 = 228;
      v29 = -836;
    }

    else
    {
      *&v38 = 0xFFFFFCBC000000E4;
      *(&v39 + 1) = 0xFFFFE768000033D9;
      v26 = 228;
      v27 = -836;
      DWORD2(v38) = 4331;
      v40 = -2042;
      v25 = 4331;
      v28 = 13273;
      v29 = -6296;
      v24 = -2042;
    }

    v41 = vdupq_n_s32(v26);
    v42 = vdupq_n_s32(v27);
    v43 = vdupq_n_s32(v25);
    v44 = vdupq_n_s32(0xFFFFF07E);
    *&v35 = 0xAA000000AALL;
    *(&v35 + 1) = 0xAA000000AALL;
    v45 = vdupq_n_s32(0x1E04u);
    v46 = v35;
    v47 = vdupq_n_s32(v28);
    v48 = vdupq_n_s32(v29);
    *&v36 = 0x80000000800;
    *(&v36 + 1) = 0x80000000800;
    v49 = vdupq_n_s32(v24);
    v50 = v36;
    *&v36 = -1;
    *(&v36 + 1) = -1;
    v52 = v36;
    v51 = -1;
    v61 = 0;
    v62 = a6;
    v55 = &off_100477A70;
    v56 = a1;
    v57.i64[0] = a2;
    v57.i64[1] = a3;
    v58 = a4;
    v59 = a5;
    v60 = &v37;
    sub_1002829C8(&v61, &v55, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
LABEL_18:
    nullsub_1();
    if (!v54)
    {
      return;
    }

    goto LABEL_19;
  }

  if (!a7)
  {
    v37 = __PAIR64__(v17, a8);
    v38 = xmmword_1003E6840;
    v39 = xmmword_1003E6850;
    v18 = 4331;
    v40 = 4331;
    if (a9)
    {
      v19 = 13273;
      v20 = 59240;
      v21 = 63494;
      v22 = 228;
      v23 = 64700;
    }

    else
    {
      *&v38 = 0xFFFFFCBC000000E4;
      *(&v39 + 1) = 0xFFFFE768000033D9;
      v19 = 228;
      v20 = 64700;
      DWORD2(v38) = 4331;
      v40 = -2042;
      v21 = 4331;
      v22 = 13273;
      v23 = 59240;
      v18 = 63494;
    }

    *v41.i8 = vdup_n_s16(v19);
    v41.u64[1] = vdup_n_s16(v20);
    *v42.i8 = vdup_n_s16(v21);
    v42.u64[1] = vdup_n_s16(0xF07Eu);
    *v43.i8 = vdup_n_s16(0x1E04u);
    v43.i64[1] = 0xAA00AA00AA00AALL;
    *v44.i8 = vdup_n_s16(v22);
    v44.u64[1] = vdup_n_s16(v23);
    *&v34 = 0x80000000800;
    *(&v34 + 1) = 0x80000000800;
    v46 = v34;
    *v45.i8 = vdup_n_s16(v18);
    v45.i64[1] = -1;
    v61 = 0;
    v62 = a6;
    v55 = &off_100477A10;
    v56 = a1;
    v57.i64[0] = a2;
    v57.i64[1] = a3;
    v58 = a4;
    v59 = a5;
    v60 = &v37;
    sub_1002829C8(&v61, &v55, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_18;
  }

  v55 = __PAIR64__(v17, a8);
  v30 = vcvt_f32_f64(xmmword_1004D3FF0);
  v56 = v30;
  v31 = vcvt_hight_f32_f64(vcvt_f32_f64(*&qword_1004D4000), xmmword_1004D4010);
  v57 = v31;
  v32 = vcvt_f32_f64(*&qword_1004D4020);
  v58 = v32;
  *&v33 = *&qword_1004D4030;
  v59 = v33;
  if ((a9 & 1) == 0)
  {
    v56 = v32;
    v58 = v30;
    v57.f32[0] = *&qword_1004D4030;
    v59 = v31.i32[0];
  }

  v61 = 0;
  v62 = a6;
  v37 = &off_100477AD0;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  v40 = a5;
  v41.i64[0] = &v55;
  sub_1002829C8(&v61, &v37, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v54)
  {
LABEL_19:
    sub_1002ACC1C(&v53);
  }
}

void sub_1002D0284(_Unwind_Exception *a1)
{
  nullsub_1();
  sub_1001D8BF4(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1002D02A0(_Unwind_Exception *a1)
{
  nullsub_1();
  sub_1001D8BF4(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1002D02C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, int a6, int a7, unsigned int a8, char a9, char a10, char a11)
{
  sub_1002ACE7C(&v22, &off_100477000);
  if (a10)
  {
    v19 = 256;
  }

  else
  {
    v19 = 180;
  }

  if (a7 == 5)
  {
    v20 = 360;
  }

  else
  {
    v20 = v19;
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v24 = __PAIR64__(v21, a8);
    if (a7)
    {
      *&v25 = v20;
      v31 = 0;
      v32 = a6;
      v33 = &off_100477B90;
      v34 = a1;
      v35.i64[0] = a2;
      v35.i64[1] = a3;
      v36.i64[0] = a4;
      v36.i32[2] = a5;
      v37 = &v24;
      sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      LODWORD(v25) = v19;
      v31 = 0;
      v32 = a6;
      v33 = &off_100477B30;
      v34 = a1;
      v35.i64[0] = a2;
      v35.i64[1] = a3;
      v36.i64[0] = a4;
      v36.i32[2] = a5;
      v37 = &v24;
      sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

LABEL_16:
    nullsub_1();
    if (!v23)
    {
      return;
    }

    goto LABEL_17;
  }

  if (a7)
  {
    v24 = __PAIR64__(v21, a8);
    *&v25 = v20 / 360.0;
    v31 = 0;
    v32 = a6;
    v33 = &off_100477C50;
    v34 = a1;
    v35.i64[0] = a2;
    v35.i64[1] = a3;
    v36.i64[0] = a4;
    v36.i32[2] = a5;
    v37 = &v24;
    sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_16;
  }

  v33 = (a8 | 0x300000000);
  LODWORD(v34) = v21;
  *(&v34 + 1) = v19 / 360.0;
  v35 = vdupq_n_s32(0x437F0000u);
  v36 = vdupq_n_s32(0x3B808081u);
  v37 = -1;
  v31 = 0;
  v32 = a6;
  v24 = &off_100477BF0;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = &v33;
  sub_1002829C8(&v31, &v24, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (!v23)
  {
    return;
  }

LABEL_17:
  sub_1002ACC1C(&v22);
}

void sub_1002D056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D0588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D05AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, int a6, int a7, unsigned int a8, char a9, char a10, char a11)
{
  sub_1002ACE7C(&v22, &off_100477020);
  if (a10)
  {
    v19 = 255;
  }

  else
  {
    v19 = 180;
  }

  if (a7 == 5)
  {
    v20 = 360;
  }

  else
  {
    v20 = v19;
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    if (a7)
    {
      v24 = __PAIR64__(v21, a8);
      *&v25 = 6.0 / v20;
      v31 = 0;
      v32 = a6;
      v33 = &off_100477D10;
      v34 = a1;
      v35.i64[0] = a2;
      v35.i64[1] = a3;
      v36.i64[0] = a4;
      v36.i32[2] = a5;
      v37 = &v24;
      sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
      goto LABEL_15;
    }

    v33 = (a8 | 0x300000000);
    LODWORD(v34) = v21;
    *(&v34 + 1) = 6.0 / v19;
    v35 = vdupq_n_s32(0x437F0000u);
    v36 = vdupq_n_s32(0x3B808081u);
    v37 = -1;
    v31 = 0;
    v32 = a6;
    v24 = &off_100477CB0;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = &v33;
    sub_1002829C8(&v31, &v24, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
LABEL_19:
    nullsub_1();
    if (!v23)
    {
      return;
    }

    goto LABEL_20;
  }

  if (!a7)
  {
    v33 = (a8 | 0x300000000);
    LODWORD(v34) = v21;
    *(&v34 + 1) = 6.0 / v19;
    v35 = vdupq_n_s32(0x437F0000u);
    v36 = vdupq_n_s32(0x3B808081u);
    v37 = -1;
    v31 = 0;
    v32 = a6;
    v24 = &off_100477D70;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = &v33;
    sub_1002829C8(&v31, &v24, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_19;
  }

  v24 = __PAIR64__(v21, a8);
  *&v25 = 6.0 / v20;
  v31 = 0;
  v32 = a6;
  v33 = &off_100477DD0;
  v34 = a1;
  v35.i64[0] = a2;
  v35.i64[1] = a3;
  v36.i64[0] = a4;
  v36.i32[2] = a5;
  v37 = &v24;
  sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
LABEL_15:
  nullsub_1();
  if (v23)
  {
LABEL_20:
    sub_1002ACC1C(&v22);
  }
}

void sub_1002D08A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D08C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D08E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D0900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, char a9, char a10, unsigned __int8 a11)
{
  v11 = a8;
  sub_1002ACE7C(&v26, &off_100477040);
  if (a9)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (a10)
  {
    if (a7)
    {
      sub_1002D8D4C(v28, v11, v18, 0, 0, a11);
      v31 = 0;
      v32 = a6;
      v20.i64[0] = &off_100477E90;
      v20.i64[1] = a1;
      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v25 = v28;
      sub_1002829C8(&v31, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      sub_1002D620C(v28, v11, v18, 0, 0, a11);
      v31 = 0;
      v32 = a6;
      v20.i64[0] = &off_100477E30;
      v20.i64[1] = a1;
      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v25 = v28;
      sub_1002829C8(&v31, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

LABEL_10:
    nullsub_1();
    if (!v27)
    {
      return;
    }

    goto LABEL_11;
  }

  if (a7)
  {
    sub_1002D923C(v28, v11, v18, 0, 0, a11);
    HIDWORD(v30) = v11;
    v31 = 0;
    v32 = a6;
    v20.i64[0] = &off_100477F50;
    v20.i64[1] = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = v28;
    sub_1002829C8(&v31, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_10;
  }

  sub_1002D90D8(&v20, v11, v18, 0, 0, a11);
  v31 = 0;
  v32 = a6;
  v28[0] = &off_100477EF0;
  v28[1] = a1;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v29 = a5;
  v30 = &v20;
  sub_1002829C8(&v31, v28, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (!v27)
  {
    return;
  }

LABEL_11:
  sub_1002ACC1C(&v26);
}

void sub_1002D0B70(_Unwind_Exception *a1)
{
  nullsub_1();
  sub_1001D8BF4(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_1002D0B8C(_Unwind_Exception *a1)
{
  nullsub_1();
  sub_1001D8BF4(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_1002D0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, char a9, char a10, unsigned __int8 a11)
{
  v11 = a8;
  sub_1002ACE7C(&v23, &off_100477060);
  if (a9)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  if (a10)
  {
    if (a7)
    {
      sub_1002D9798(v34, v11, v19, 0, 0, a11);
      v37[0] = v11;
      v32 = 0;
      v33 = a6;
      v25 = &off_100478010;
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = a4;
      v30 = a5;
      v31 = v34;
      sub_1002829C8(&v32, &v25, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      v20 = v19;
      sub_1002D9798(v34, 3, v19, 0, 0, a11);
      sub_1002D9AD0(v37, v11, v20, 0, 0, a11);
      v43 = v11;
      v39 = vdupq_n_s32(0x437F0000u);
      v40 = vdupq_n_s32(0x3EC8C8C9u);
      v42 = -1;
      *&v21 = 0x4300000043000000;
      *(&v21 + 1) = 0x4300000043000000;
      v41 = v21;
      v32 = 0;
      v33 = a6;
      v25 = &off_100477FB0;
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = a4;
      v30 = a5;
      v31 = v34;
      sub_1002829C8(&v32, &v25, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

LABEL_12:
    nullsub_1();
    if (!v24)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!a7)
  {
    LODWORD(v34[0]) = v11;
    v22 = v19;
    sub_1002D9ED8(v34 + 4, v11, v19, 0, 0, a11);
    sub_1002DA2A8(v37, v11, v22, 0, 0, a11);
    v38 = 1;
    v32 = 0;
    v33 = a6;
    v25 = &off_100478070;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = v34;
    sub_1002829C8(&v32, &v25, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_12;
  }

  sub_1002D9ED8(&v25, v11, v19, 0, 0, a11);
  HIDWORD(v31) = v11;
  v32 = 0;
  v33 = a6;
  v34[0] = &off_1004780D0;
  v34[1] = a1;
  v34[2] = a2;
  v34[3] = a3;
  v34[4] = a4;
  v35 = a5;
  v36 = &v25;
  sub_1002829C8(&v32, v34, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v24)
  {
LABEL_13:
    sub_1002ACC1C(&v23);
  }
}

void sub_1002D0F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D0F9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, int a10)
{
  sub_1002ACE7C(v20, &off_1004770A0);
  if (a9)
  {
    v18 = 20;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 + 100 * a8 + a10;
  if (v19 <= 399)
  {
    if (v19 > 319)
    {
      if (v19 == 320)
      {
        v23 = &off_1004781B0;
        v24 = a4;
        v25 = a5;
        v26 = a6;
        v27 = a1;
        v28 = a2;
        v29 = a3;
        v21 = 0;
        v22 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E83B4(&v23, &v21);
        goto LABEL_40;
      }

      if (v19 == 321)
      {
        v23 = &off_1004781F0;
        v24 = a4;
        v25 = a5;
        v26 = a6;
        v27 = a1;
        v28 = a2;
        v29 = a3;
        v21 = 0;
        v22 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E8694(&v23, &v21);
        goto LABEL_40;
      }
    }

    else
    {
      if (v19 == 300)
      {
        v23 = &off_100478130;
        v24 = a4;
        v25 = a5;
        v26 = a6;
        v27 = a1;
        v28 = a2;
        v29 = a3;
        v21 = 0;
        v22 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E7E08(&v23, &v21);
        goto LABEL_40;
      }

      if (v19 == 301)
      {
        v23 = &off_100478170;
        v24 = a4;
        v25 = a5;
        v26 = a6;
        v27 = a1;
        v28 = a2;
        v29 = a3;
        v21 = 0;
        v22 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E80E8(&v23, &v21);
        goto LABEL_40;
      }
    }

LABEL_31:
    v23 = 0;
    v24 = 0;
    qmemcpy(sub_1002A80E0(&v23, 41), "Unknown/unsupported color conversion code", 41);
    sub_1002A8980(-206, &v23, "cvtTwoPlaneYUVtoBGR", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 10858);
  }

  if (v19 <= 419)
  {
    if (v19 == 400)
    {
      v23 = &off_100478230;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = a1;
      v28 = a2;
      v29 = a3;
      v21 = 0;
      v22 = a7 / 2;
      if (a7 * a6 > 76799)
      {
        goto LABEL_30;
      }

      sub_1002E8960(&v23, &v21);
      goto LABEL_40;
    }

    if (v19 == 401)
    {
      v23 = &off_100478270;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = a1;
      v28 = a2;
      v29 = a3;
      v21 = 0;
      v22 = a7 / 2;
      if (a7 * a6 > 76799)
      {
        goto LABEL_30;
      }

      sub_1002E8C40(&v23, &v21);
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if (v19 != 420)
  {
    if (v19 == 421)
    {
      v23 = &off_1004782F0;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = a1;
      v28 = a2;
      v29 = a3;
      v21 = 0;
      v22 = a7 / 2;
      if (a7 * a6 > 76799)
      {
        goto LABEL_30;
      }

      sub_1002E91FC(&v23, &v21);
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v23 = &off_1004782B0;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v21 = 0;
  v22 = a7 / 2;
  if (a7 * a6 > 76799)
  {
LABEL_30:
    sub_1002829C8(&v21, &v23, -1.0);
    goto LABEL_40;
  }

  sub_1002E8F1C(&v23, &v21);
LABEL_40:
  nullsub_1();
  if (v20[2])
  {
    sub_1002ACC1C(v20);
  }
}

void sub_1002D14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D1530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1002A8124(va);
  JUMPOUT(0x1002D151CLL);
}

void sub_1002D155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  sub_1002ACE7C(v26, &off_1004770C0);
  v18 = a6 - (v17 & 0xFFFFFFFC);
  v19 = a1 + (a6 + a6 / 4) * a2 + a5 / 2 * ((v18 + ((v18 & 0x80) >> 7)) << 24 >> 25);
  v20 = v18 == 2;
  if (a9 == 1)
  {
    v21 = a1 + (a6 + a6 / 4) * a2 + a5 / 2 * ((v18 + ((v18 & 0x80) >> 7)) << 24 >> 25);
  }

  else
  {
    v21 = a1 + a6 * a2;
  }

  if (a9 == 1)
  {
    v19 = a1 + a6 * a2;
    v22 = v18 == 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = a9 != 1 && v20;
  if (a8)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + 10 * a7 - 30) >> 1;
  if (v25 <= 4)
  {
    if (!v25)
    {
      v29 = &off_100478330;
      v30 = a3;
      v31 = a4;
      v32 = a5;
      v33 = a1;
      v34 = v21;
      v35 = v19;
      v36 = a2;
      v37 = v22;
      v38 = v23;
      v27 = 0;
      v28 = a6 / 2;
      if (a6 * a5 > 76799)
      {
        goto LABEL_26;
      }

      sub_1002E94D8(&v29, &v27);
      goto LABEL_31;
    }

    if (v25 == 1)
    {
      v29 = &off_100478370;
      v30 = a3;
      v31 = a4;
      v32 = a5;
      v33 = a1;
      v34 = v21;
      v35 = v19;
      v36 = a2;
      v37 = v22;
      v38 = v23;
      v27 = 0;
      v28 = a6 / 2;
      if (a6 * a5 > 76799)
      {
        goto LABEL_26;
      }

      sub_1002E985C(&v29, &v27);
      goto LABEL_31;
    }

LABEL_22:
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 41), "Unknown/unsupported color conversion code", 41);
    sub_1002A8980(-206, &v29, "cvtThreePlaneYUVtoBGR", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 10885);
  }

  if (v25 != 5)
  {
    if (v25 == 6)
    {
      v29 = &off_1004783F0;
      v30 = a3;
      v31 = a4;
      v32 = a5;
      v33 = a1;
      v34 = v21;
      v35 = v19;
      v36 = a2;
      v37 = v22;
      v38 = v23;
      v27 = 0;
      v28 = a6 / 2;
      if (a6 * a5 > 76799)
      {
        goto LABEL_26;
      }

      sub_1002E9F7C(&v29, &v27);
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v29 = &off_1004783B0;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a1;
  v34 = v21;
  v35 = v19;
  v36 = a2;
  v37 = v22;
  v38 = v23;
  v27 = 0;
  v28 = a6 / 2;
  if (a6 * a5 > 76799)
  {
LABEL_26:
    sub_1002829C8(&v27, &v29, -1.0);
    goto LABEL_31;
  }

  sub_1002E9BE0(&v29, &v27);
LABEL_31:
  nullsub_1();
  if (v26[2])
  {
    sub_1002ACC1C(v26);
  }
}

void sub_1002D18D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1();
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D1910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1002A8124(va);
  JUMPOUT(0x1002D18FCLL);
}

void sub_1002D193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8, int a9)
{
  sub_1002ACE7C(v24, &off_1004770E0);
  v17[0] = &off_100477190;
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a3 + a6 * a4;
  v17[5] = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9 == 2;
  v23 = 0;
  v25[0] = 0;
  v25[1] = a6 / 2;
  if (a6 * a5 < 76800)
  {
    sub_1002DA6FC(v17, v25);
  }

  else
  {
    sub_1002829C8(v25, v17, -1.0);
  }

  nullsub_1();
  if (v24[2])
  {
    sub_1002ACC1C(v24);
  }
}

void sub_1002D1A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D1A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  sub_1002ACE7C(v20, &off_100477100);
  if (a8)
  {
    v18 = 200;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 + 1000 * a7 + 10 * a9 + a10;
  if (v19 <= 3999)
  {
    if (v19 > 3199)
    {
      switch(v19)
      {
        case 3200:
          v23 = &off_1004784F0;
          v24 = a3;
          v25 = a4;
          v26 = a1;
          v27 = a2;
          v28 = a5;
          v21 = 0;
          v22 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA878(&v23, &v21);
          goto LABEL_56;
        case 3201:
          v23 = &off_100478530;
          v24 = a3;
          v25 = a4;
          v26 = a1;
          v27 = a2;
          v28 = a5;
          v21 = 0;
          v22 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EAA3C(&v23, &v21);
          goto LABEL_56;
        case 3210:
          v23 = &off_100478570;
          v24 = a3;
          v25 = a4;
          v26 = a1;
          v27 = a2;
          v28 = a5;
          v21 = 0;
          v22 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EABFC(&v23, &v21);
          goto LABEL_56;
      }
    }

    else
    {
      switch(v19)
      {
        case 3000:
          v23 = &off_100478430;
          v24 = a3;
          v25 = a4;
          v26 = a1;
          v27 = a2;
          v28 = a5;
          v21 = 0;
          v22 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA318(&v23, &v21);
          goto LABEL_56;
        case 3001:
          v23 = &off_100478470;
          v24 = a3;
          v25 = a4;
          v26 = a1;
          v27 = a2;
          v28 = a5;
          v21 = 0;
          v22 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA4E4(&v23, &v21);
          goto LABEL_56;
        case 3010:
          v23 = &off_1004784B0;
          v24 = a3;
          v25 = a4;
          v26 = a1;
          v27 = a2;
          v28 = a5;
          v21 = 0;
          v22 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA6AC(&v23, &v21);
          goto LABEL_56;
      }
    }

LABEL_43:
    v23 = 0;
    v24 = 0;
    qmemcpy(sub_1002A80E0(&v23, 41), "Unknown/unsupported color conversion code", 41);
    sub_1002A8980(-206, &v23, "cvtOnePlaneYUVtoBGR", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 10935);
  }

  if (v19 <= 4199)
  {
    switch(v19)
    {
      case 4000:
        v23 = &off_1004785B0;
        v24 = a3;
        v25 = a4;
        v26 = a1;
        v27 = a2;
        v28 = a5;
        v21 = 0;
        v22 = a6;
        if (a6 * a5 > 76799)
        {
          goto LABEL_42;
        }

        sub_1002EADC0(&v23, &v21);
        goto LABEL_56;
      case 4001:
        v23 = &off_1004785F0;
        v24 = a3;
        v25 = a4;
        v26 = a1;
        v27 = a2;
        v28 = a5;
        v21 = 0;
        v22 = a6;
        if (a6 * a5 > 76799)
        {
          goto LABEL_42;
        }

        sub_1002EAF94(&v23, &v21);
        goto LABEL_56;
      case 4010:
        v23 = &off_100478630;
        v24 = a3;
        v25 = a4;
        v26 = a1;
        v27 = a2;
        v28 = a5;
        v21 = 0;
        v22 = a6;
        if (a6 * a5 > 76799)
        {
          goto LABEL_42;
        }

        sub_1002EB164(&v23, &v21);
        goto LABEL_56;
    }

    goto LABEL_43;
  }

  if (v19 == 4200)
  {
    v23 = &off_100478670;
    v24 = a3;
    v25 = a4;
    v26 = a1;
    v27 = a2;
    v28 = a5;
    v21 = 0;
    v22 = a6;
    if (a6 * a5 > 76799)
    {
      goto LABEL_42;
    }

    sub_1002EB338(&v23, &v21);
    goto LABEL_56;
  }

  if (v19 != 4201)
  {
    if (v19 == 4210)
    {
      v23 = &off_1004786F0;
      v24 = a3;
      v25 = a4;
      v26 = a1;
      v27 = a2;
      v28 = a5;
      v21 = 0;
      v22 = a6;
      if (a6 * a5 > 76799)
      {
        goto LABEL_42;
      }

      sub_1002EB6CC(&v23, &v21);
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  v23 = &off_1004786B0;
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  v28 = a5;
  v21 = 0;
  v22 = a6;
  if (a6 * a5 > 76799)
  {
LABEL_42:
    sub_1002829C8(&v21, &v23, -1.0);
    goto LABEL_56;
  }

  sub_1002EB504(&v23, &v21);
LABEL_56:
  nullsub_1();
  if (v20[2])
  {
    sub_1002ACC1C(v20);
  }
}

void sub_1002D2120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1002A8124(va);
  JUMPOUT(0x1002D2188);
}

void sub_1002D21B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D21C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  sub_1002ACE7C(v13, &off_100477120);
  v17[0] = 0;
  v17[1] = a6;
  v14[0] = &off_100478730;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v15 = a5;
  v16 = &v12;
  sub_1002829C8(v17, v14, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v13[2])
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002D228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  sub_1002ACE7C(v13, &off_100477140);
  v17[0] = 0;
  v17[1] = a6;
  v14[0] = &off_100478790;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v15 = a5;
  v16 = &v12;
  sub_1002829C8(v17, v14, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1();
  if (v13[2])
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002D236C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_1();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v4) = a4;
  sub_1002ACE7C(v357, &off_100477160);
  v8 = sub_100271A88(a1, -1);
  *v353 = 1124007936;
  memset(&v353[4], 0, 60);
  v354 = &v353[8];
  v355 = v356;
  v356[0] = 0;
  v356[1] = 0;
  *v349 = 1124007936;
  memset(&v349[4], 0, 60);
  v350 = &v349[8];
  v351 = v352;
  v352[0] = 0;
  v352[1] = 0;
  if (*(a1 + 8) != *(a2 + 8))
  {
    if (sub_100271148(a1) != 0x10000)
    {
      sub_1002703C0(a1, 0xFFFFFFFFLL, v344);
      goto LABEL_10;
    }

    v9 = *(a1 + 8);
    v10 = *v9;
    v11 = *(v9 + 16);
    *v344 = *v9;
    *&v344[16] = v11;
    *&v344[32] = *(v9 + 32);
    v12 = *(v9 + 56);
    *&v344[48] = *(v9 + 48);
    *&v344[56] = v12;
    v345 = &v344[8];
    v346 = &v347;
    v347 = 0;
    v348 = 0;
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      if (*(v9 + 4) <= 2)
      {
LABEL_5:
        v13 = *(v9 + 72);
        v14 = v346;
        *v346 = *v13;
        v14[1] = v13[1];
LABEL_10:
        if (*&v353[56] && atomic_fetch_add((*&v353[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v353);
        }

        if (*&v353[4] >= 1)
        {
          v15 = 0;
          v16 = v354;
          do
          {
            v16[v15++] = 0;
          }

          while (v15 < *&v353[4]);
        }

        *v353 = *v344;
        *&v353[16] = *&v344[16];
        *&v353[32] = *&v344[32];
        *&v353[48] = *&v344[48];
        v17 = v355;
        if (v355 == v356)
        {
          v18 = v346;
          if (*&v344[4] <= 2)
          {
            goto LABEL_18;
          }
        }

        else
        {
          j__free(v355);
          v354 = &v353[8];
          v355 = v356;
          v17 = v356;
          v18 = v346;
          if (*&v344[4] <= 2)
          {
LABEL_18:
            *v17 = *v18;
            v17[1] = v18[1];
            goto LABEL_21;
          }
        }

        v354 = v345;
        v355 = v18;
        v345 = &v344[8];
        v346 = &v347;
LABEL_21:
        *v344 = 1124007936;
        memset(&v344[4], 0, 60);
        if (v346 != &v347)
        {
          j__free(v346);
        }

        goto LABEL_23;
      }
    }

    else if (SDWORD1(v10) <= 2)
    {
      goto LABEL_5;
    }

    *&v344[4] = 0;
    sub_100269B58(v344, v9);
    goto LABEL_10;
  }

  *v344 = 33619968;
  *&v344[8] = v353;
  *&v344[16] = 0;
  sub_100274944(a1, v344);
LABEL_23:
  v19 = v8 & 7;
  v20 = *v354;
  v21 = v354[1];
  if (v19 > 5 || ((1 << v19) & 0x25) == 0)
  {
    *v344 = 0uLL;
    qmemcpy(sub_1002A80E0(v344, 38), "depth == 0 || depth == 2 || depth == 5", 38);
    sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11073);
  }

  v22 = (v8 >> 3) & 0x1FF;
  v23 = (v22 + 1);
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      if ((v8 & 0xFF0) != 0x10)
      {
        *v344 = 0uLL;
        v46 = sub_1002A80E0(v344, 20);
        *(v46 + 16) = 874528061;
        *v46 = *"scn == 3 || scn == 4";
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11079);
      }

      if ((a3 & 0xFFFFFFFD) == 0 || a3 == 5)
      {
        v48 = 4;
      }

      else
      {
        v48 = 3;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v48)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v49 = *(a2 + 8);
        v50 = *v49;
        v51 = *(v49 + 16);
        *v344 = *v49;
        *&v344[16] = v51;
        *&v344[32] = *(v49 + 32);
        v52 = *(v49 + 56);
        *&v344[48] = *(v49 + 48);
        *&v344[56] = v52;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v52)
        {
          atomic_fetch_add((v52 + 20), 1u);
          v53 = *(v49 + 4);
        }

        else
        {
          v53 = DWORD1(v50);
        }

        if (v53 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v49);
        }

        else
        {
          v255 = *(v49 + 72);
          v256 = v346;
          *v346 = *v255;
          v256[1] = v255[1];
        }
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v257 = 0;
        v258 = v350;
        do
        {
          *&v258[4 * v257++] = 0;
        }

        while (v257 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v259 = v351;
      if (v351 == v352)
      {
        v260 = v346;
        v342 = v23;
        if (*&v344[4] <= 2)
        {
          goto LABEL_413;
        }
      }

      else
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v259 = v352;
        v260 = v346;
        v342 = v23;
        if (*&v344[4] <= 2)
        {
LABEL_413:
          *v259 = *v260;
          v259[1] = v260[1];
          goto LABEL_416;
        }
      }

      v350 = v345;
      v351 = v260;
      v345 = &v344[8];
      v346 = &v347;
LABEL_416:
      v261 = v48;
      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v262 = *&v353[16];
      v263 = v356[0];
      v264 = *&v349[16];
      v265 = v352[0];
      v267 = *&v353[8];
      v266 = *&v353[12];
      v268 = sub_1002D5FB0();
      sub_1002CE920(v262, v263, v264, v265, v266, v267, v19, v342, v261, v268);
      goto LABEL_535;
    case 6:
    case 7:
    case 10:
    case 11:
      if ((v8 & 0xFF0) != 0x10)
      {
        sub_1001FA81C(v344, "scn == 3 || scn == 4");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11111);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v8 & 7, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v59 = *(a2 + 8);
        v60 = *v59;
        v61 = *(v59 + 16);
        *v344 = *v59;
        *&v344[16] = v61;
        *&v344[32] = *(v59 + 32);
        v62 = *(v59 + 56);
        *&v344[48] = *(v59 + 48);
        *&v344[56] = v62;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v62)
        {
          atomic_fetch_add((v62 + 20), 1u);
          v63 = *(v59 + 4);
        }

        else
        {
          v63 = DWORD1(v60);
        }

        if (v63 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v59);
        }

        else
        {
          v309 = *(v59 + 72);
          v310 = v346;
          *v346 = *v309;
          v310[1] = v309[1];
        }
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v311 = 0;
        v312 = v350;
        do
        {
          *&v312[4 * v311++] = 0;
        }

        while (v311 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v313 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v313 = v352;
      }

      v314 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v313 = *v346;
        v313[1] = v314[1];
      }

      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v315 = *&v353[16];
      v316 = v356[0];
      v317 = *&v349[16];
      v318 = v352[0];
      v320 = *&v353[8];
      v319 = *&v353[12];
      v321 = sub_1002D5FB0();
      sub_1002CEDA0(v315, v316, v317, v318, v319, v320, v19, v23, v321);
      goto LABEL_535;
    case 8:
    case 9:
      if (a3 == 9)
      {
        v116 = 4;
      }

      else
      {
        v116 = 3;
      }

      if (v4 >= 1)
      {
        v117 = v4;
      }

      else
      {
        v117 = v116;
      }

      if (v22 || (v117 - 3) >= 2)
      {
        sub_1001FA81C(v344, "scn == 1 && (dcn == 3 || dcn == 4)");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11128);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v117)) - 8, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v118);
      sub_100006D14(v344);
      sub_1002CF0B8(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8], v8 & 7, v117);
      goto LABEL_535;
    case 12:
    case 13:
    case 16:
    case 17:
    case 22:
    case 23:
    case 26:
    case 27:
      if ((v8 & 0xFF7) != 0x10)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 36), "(scn == 3 || scn == 4) && depth == 0", 36);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11089);
      }

      if (a3 <= 0x10 && ((1 << a3) & 0x13000) != 0)
      {
        v29 = 6;
      }

      else if (a3 == 17)
      {
        v29 = 6;
      }

      else
      {
        v29 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v127 = *(a2 + 8);
        v128 = *v127;
        v129 = *(v127 + 16);
        *v344 = *v127;
        *&v344[16] = v129;
        *&v344[32] = *(v127 + 32);
        v130 = *(v127 + 56);
        *&v344[48] = *(v127 + 48);
        *&v344[56] = v130;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v130)
        {
          atomic_fetch_add((v130 + 20), 1u);
          v131 = *(v127 + 4);
        }

        else
        {
          v131 = DWORD1(v128);
        }

        if (v131 <= 2)
        {
          v149 = *(v127 + 72);
          v150 = v346;
          *v346 = *v149;
          v150[1] = v149[1];
          v132 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_269;
          }

LABEL_267:
          if (atomic_fetch_add((v132 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_269:
          if (*&v349[4] >= 1)
          {
            v151 = 0;
            v152 = v350;
            do
            {
              *&v152[4 * v151++] = 0;
            }

            while (v151 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v153 = v351;
          if (v351 == v352)
          {
            v154 = v346;
            v341 = v23;
            if (*&v344[4] <= 2)
            {
              goto LABEL_274;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v153 = v352;
            v154 = v346;
            v341 = v23;
            if (*&v344[4] <= 2)
            {
LABEL_274:
              *v153 = *v154;
              v153[1] = v154[1];
LABEL_277:
              v155 = v29;
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v156 = *&v353[16];
              v157 = v356[0];
              v158 = *&v349[16];
              v159 = v352[0];
              v161 = *&v353[8];
              v160 = *&v353[12];
              v162 = sub_1002D5FB0();
              sub_1002CEB40(v156, v157, v158, v159, v160, v161, v341, v162, v155);
              goto LABEL_535;
            }
          }

          v350 = v345;
          v351 = v154;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_277;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v127);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v132 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_269;
      }

      goto LABEL_267;
    case 14:
    case 15:
    case 18:
    case 19:
    case 24:
    case 25:
    case 28:
    case 29:
      if (v4 <= 0)
      {
        if (a3 <= 0x1C && ((1 << a3) & 0x100C0000) != 0)
        {
          LODWORD(v4) = 4;
        }

        else if (a3 == 29)
        {
          LODWORD(v4) = 4;
        }

        else
        {
          LODWORD(v4) = 3;
        }
      }

      if ((v8 & 7) != 0 || (v4 - 3) > 1 || v22 != 1)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 48), "(dcn == 3 || dcn == 4) && scn == 2 && depth == 0", 48);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11101);
      }

      if (a3 <= 0x12 && ((1 << a3) & 0x4C000) != 0)
      {
        v275 = 6;
      }

      else if (a3 == 19)
      {
        v275 = 6;
      }

      else
      {
        v275 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (8 * v4 - 8), -1, 0, 0);
      if (sub_100271148(a2) != 0x10000)
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
        goto LABEL_462;
      }

      v276 = *(a2 + 8);
      v277 = *v276;
      v278 = *(v276 + 16);
      *v344 = *v276;
      *&v344[16] = v278;
      *&v344[32] = *(v276 + 32);
      v279 = *(v276 + 56);
      *&v344[48] = *(v276 + 48);
      *&v344[56] = v279;
      v345 = &v344[8];
      v346 = &v347;
      v347 = 0;
      v348 = 0;
      if (v279)
      {
        atomic_fetch_add((v279 + 20), 1u);
        v280 = *(v276 + 4);
      }

      else
      {
        v280 = DWORD1(v277);
      }

      if (v280 > 2)
      {
        *&v344[4] = 0;
        sub_100269B58(v344, v276);
LABEL_462:
        v281 = *&v349[56];
        if (!*&v349[56])
        {
          goto LABEL_469;
        }

        goto LABEL_467;
      }

      v282 = *(v276 + 72);
      v283 = v346;
      *v346 = *v282;
      v283[1] = v282[1];
      v281 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_469;
      }

LABEL_467:
      if (atomic_fetch_add((v281 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

LABEL_469:
      if (*&v349[4] >= 1)
      {
        v284 = 0;
        v285 = v350;
        do
        {
          *&v285[4 * v284++] = 0;
        }

        while (v284 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v286 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v286 = v352;
      }

      v287 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v286 = *v346;
        v286[1] = v287[1];
      }

      v288 = v275;
      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v289 = *&v353[16];
      v290 = v356[0];
      v291 = *&v349[16];
      v292 = v352[0];
      v294 = *&v353[8];
      v293 = *&v353[12];
      v295 = sub_1002D5FB0();
      sub_1002CEC70(v289, v290, v291, v292, v293, v294, v4, v295, v288);
LABEL_535:
      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      *&v349[56] = 0;
      memset(&v349[16], 0, 32);
      if (*&v349[4] >= 1)
      {
        v335 = 0;
        v336 = v350;
        do
        {
          *&v336[4 * v335++] = 0;
        }

        while (v335 < *&v349[4]);
      }

      if (v351 != v352)
      {
        j__free(v351);
      }

      if (*&v353[56] && atomic_fetch_add((*&v353[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v353);
      }

      *&v353[56] = 0;
      memset(&v353[16], 0, 32);
      if (*&v353[4] >= 1)
      {
        v337 = 0;
        v338 = v354;
        do
        {
          v338[v337++] = 0;
        }

        while (v337 < *&v353[4]);
      }

      if (v355 != v356)
      {
        j__free(v355);
      }

      if (v357[2])
      {
        sub_1002ACC1C(v357);
      }

      return;
    case 20:
    case 30:
      if (v22 | v19)
      {
        sub_1001FA81C(v344, "scn == 1 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11135);
      }

      if (a3 == 20)
      {
        v112 = 6;
      }

      else
      {
        v112 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 8, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v113);
      sub_100006D14(v344);
      sub_1002CF38C(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8], v112);
      goto LABEL_535;
    case 21:
    case 31:
      if ((v8 & 7) != 0 || v22 != 1)
      {
        sub_1001FA81C(v344, "scn == 2 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11119);
      }

      if (a3 == 21)
      {
        v114 = 6;
      }

      else
      {
        v114 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 0, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v115);
      sub_100006D14(v344);
      sub_1002CF268(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8], v114);
      goto LABEL_535;
    case 32:
    case 33:
      if ((v8 & 0xFF0) != 0x10)
      {
        sub_1001FA81C(v344, "scn == 3 || scn == 4");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11162);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v119);
      sub_100006D14(v344);
      v120 = *&v353[16];
      v121 = v356[0];
      v122 = *&v349[16];
      v123 = v352[0];
      v125 = *&v353[8];
      v124 = *&v353[12];
      v126 = sub_1002D5FB0();
      sub_1002CFB08(v120, v121, v122, v123, v124, v125, v19, v23, v126);
      goto LABEL_535;
    case 34:
    case 35:
      if (v4 < 1)
      {
        LODWORD(v4) = 3;
      }

      if (v22 != 2 || (v4 - 3) >= 2)
      {
        sub_1001FA81C(v344, "scn == 3 && (dcn == 3 || dcn == 4)");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11170);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v4)) - 8, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v104);
      sub_100006D14(v344);
      v105 = *&v353[16];
      v106 = v356[0];
      v107 = *&v349[16];
      v108 = v352[0];
      v110 = *&v353[8];
      v109 = *&v353[12];
      v111 = sub_1002D5FB0();
      sub_1002CFF00(v105, v106, v107, v108, v109, v110, v19, v4, v111);
      goto LABEL_535;
    case 36:
    case 37:
    case 82:
    case 83:
      if ((v8 & 0xFF0) != 0x10)
      {
        sub_1001FA81C(v344, "scn == 3 || scn == 4");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11144);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v54 = *(a2 + 8);
        v55 = *v54;
        v56 = *(v54 + 16);
        *v344 = *v54;
        *&v344[16] = v56;
        *&v344[32] = *(v54 + 32);
        v57 = *(v54 + 56);
        *&v344[48] = *(v54 + 48);
        *&v344[56] = v57;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v57)
        {
          atomic_fetch_add((v57 + 20), 1u);
          v58 = *(v54 + 4);
        }

        else
        {
          v58 = DWORD1(v55);
        }

        if (v58 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v54);
        }

        else
        {
          v296 = *(v54 + 72);
          v297 = v346;
          *v346 = *v296;
          v297[1] = v296[1];
        }
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v298 = 0;
        v299 = v350;
        do
        {
          *&v299[4 * v298++] = 0;
        }

        while (v298 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v300 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v300 = v352;
      }

      v301 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v300 = *v346;
        v300[1] = v301[1];
      }

      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v302 = *&v353[16];
      v303 = v356[0];
      v304 = *&v349[16];
      v305 = v352[0];
      v307 = *&v353[8];
      v306 = *&v353[12];
      v308 = sub_1002D5FB0();
      sub_1002CF488(v302, v303, v304, v305, v306, v307, v19, v23, v308, (a3 & 0xFFFFFFFE) == 36);
      goto LABEL_535;
    case 38:
    case 39:
    case 84:
    case 85:
      if (v4 < 1)
      {
        LODWORD(v4) = 3;
      }

      if (v22 != 2 || (v4 - 3) >= 2)
      {
        sub_1001FA81C(v344, "scn == 3 && (dcn == 3 || dcn == 4)");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11154);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v64 = *(a2 + 8);
        v65 = *v64;
        v66 = *(v64 + 16);
        *v344 = *v64;
        *&v344[16] = v66;
        *&v344[32] = *(v64 + 32);
        v67 = *(v64 + 56);
        *&v344[48] = *(v64 + 48);
        *&v344[56] = v67;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v67)
        {
          atomic_fetch_add((v67 + 20), 1u);
          v68 = *(v64 + 4);
        }

        else
        {
          v68 = DWORD1(v65);
        }

        if (v68 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v64);
        }

        else
        {
          v322 = *(v64 + 72);
          v323 = v346;
          *v346 = *v322;
          v323[1] = v322[1];
        }
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v324 = 0;
        v325 = v350;
        do
        {
          *&v325[4 * v324++] = 0;
        }

        while (v324 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v326 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v326 = v352;
      }

      v327 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v326 = *v346;
        v326[1] = v327[1];
      }

      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v328 = *&v353[16];
      v329 = v356[0];
      v330 = *&v349[16];
      v331 = v352[0];
      v333 = *&v353[8];
      v332 = *&v353[12];
      v334 = sub_1002D5FB0();
      sub_1002CF7DC(v328, v329, v330, v331, v332, v333, v19, v4, v334, (a3 & 0xFFFFFFFE) == 38);
      goto LABEL_535;
    case 40:
    case 41:
    case 52:
    case 53:
    case 66:
    case 67:
    case 68:
    case 69:
      if ((v8 & 0xFF0) != 0x10 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 52), "(scn == 3 || scn == 4) && (depth == 0 || depth == 5)", 52);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11178);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v35 = *(a2 + 8);
        v36 = *v35;
        v37 = *(v35 + 16);
        *v344 = *v35;
        *&v344[16] = v37;
        *&v344[32] = *(v35 + 32);
        v38 = *(v35 + 56);
        *&v344[48] = *(v35 + 48);
        *&v344[56] = v38;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v38)
        {
          atomic_fetch_add((v38 + 20), 1u);
          v39 = *(v35 + 4);
        }

        else
        {
          v39 = DWORD1(v36);
        }

        if (v39 <= 2)
        {
          v189 = *(v35 + 72);
          v190 = v346;
          *v346 = *v189;
          v190[1] = v189[1];
          v71 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_320;
          }

LABEL_318:
          if (atomic_fetch_add((v71 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_320:
          if (*&v349[4] >= 1)
          {
            v191 = 0;
            v192 = v350;
            do
            {
              *&v192[4 * v191++] = 0;
            }

            while (v191 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v193 = v351;
          if (v351 == v352)
          {
            v194 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_325;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v193 = v352;
            v194 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_325:
              *v193 = *v194;
              v193[1] = v194[1];
LABEL_328:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v195 = *&v353[16];
              v196 = v356[0];
              v197 = *&v349[16];
              v198 = v352[0];
              v200 = *&v353[8];
              v199 = *&v353[12];
              v201 = sub_1002D5FB0();
              sub_1002D02C4(v195, v196, v197, v198, v199, v200, v19, v23, v201, (a3 - 66) < 8, ((a3 - 40) < 0x20) & (0xCC00C003 >> (a3 - 40)));
              goto LABEL_535;
            }
          }

          v350 = v345;
          v351 = v194;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_328;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v35);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v71 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_320;
      }

      goto LABEL_318;
    case 44:
    case 45:
    case 50:
    case 51:
    case 74:
    case 75:
    case 76:
    case 77:
      if ((v8 & 0xFF0) != 0x10 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 52), "(scn == 3 || scn == 4) && (depth == 0 || depth == 5)", 52);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11197);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v40 = *(a2 + 8);
        v41 = *v40;
        v42 = *(v40 + 16);
        *v344 = *v40;
        *&v344[16] = v42;
        *&v344[32] = *(v40 + 32);
        v43 = *(v40 + 56);
        *&v344[48] = *(v40 + 48);
        *&v344[56] = v43;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v43)
        {
          atomic_fetch_add((v43 + 20), 1u);
          v44 = *(v40 + 4);
        }

        else
        {
          v44 = DWORD1(v41);
        }

        if (v44 <= 2)
        {
          v202 = *(v40 + 72);
          v203 = v346;
          *v346 = *v202;
          v203[1] = v202[1];
          v72 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_337;
          }

LABEL_335:
          if (atomic_fetch_add((v72 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_337:
          if (*&v349[4] >= 1)
          {
            v204 = 0;
            v205 = v350;
            do
            {
              *&v205[4 * v204++] = 0;
            }

            while (v204 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v206 = v351;
          if (v351 == v352)
          {
            v207 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_342;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v206 = v352;
            v207 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_342:
              *v206 = *v207;
              v206[1] = v207[1];
LABEL_345:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v208 = *&v353[16];
              v209 = v356[0];
              v210 = *&v349[16];
              v211 = v352[0];
              v213 = *&v353[8];
              v212 = *&v353[12];
              v214 = sub_1002D5FB0();
              sub_1002D0900(v208, v209, v210, v211, v212, v213, v19, v23, v214, ((a3 - 44) < 0x24) & (0xCC0003003uLL >> (a3 - 44)), (a3 < 0x3C) & (0xF0C300000000000uLL >> a3));
              goto LABEL_535;
            }
          }

          v350 = v345;
          v351 = v207;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_345;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v40);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v72 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_337;
      }

      goto LABEL_335;
    case 46:
    case 47:
    case 48:
    case 49:
    case 62:
    case 63:
    case 64:
    case 65:
    case 86:
    case 87:
    case 88:
    case 89:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
      *v344 = 16842752;
      *&v344[8] = v353;
      *&v344[16] = 0;
      sub_1002F3120(v344, a2, a3, v4);
      goto LABEL_535;
    case 54:
    case 55:
    case 60:
    case 61:
    case 70:
    case 71:
    case 72:
    case 73:
      if (v4 < 1)
      {
        LODWORD(v4) = 3;
      }

      if (v22 != 2 || (v4 - 3) > 1 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 64), "scn == 3 && (dcn == 3 || dcn == 4) && (depth == 0 || depth == 5)", 64);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11188);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v30 = *(a2 + 8);
        v31 = *v30;
        v32 = *(v30 + 16);
        *v344 = *v30;
        *&v344[16] = v32;
        *&v344[32] = *(v30 + 32);
        v33 = *(v30 + 56);
        *&v344[48] = *(v30 + 48);
        *&v344[56] = v33;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v33)
        {
          atomic_fetch_add((v33 + 20), 1u);
          v34 = *(v30 + 4);
        }

        else
        {
          v34 = DWORD1(v31);
        }

        if (v34 <= 2)
        {
          v176 = *(v30 + 72);
          v177 = v346;
          *v346 = *v176;
          v177[1] = v176[1];
          v70 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_303;
          }

LABEL_301:
          if (atomic_fetch_add((v70 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_303:
          if (*&v349[4] >= 1)
          {
            v178 = 0;
            v179 = v350;
            do
            {
              *&v179[4 * v178++] = 0;
            }

            while (v178 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v180 = v351;
          if (v351 == v352)
          {
            v181 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_308;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v180 = v352;
            v181 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_308:
              *v180 = *v181;
              v180[1] = v181[1];
LABEL_311:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v182 = *&v353[16];
              v183 = v356[0];
              v184 = *&v349[16];
              v185 = v352[0];
              v187 = *&v353[8];
              v186 = *&v353[12];
              v188 = sub_1002D5FB0();
              sub_1002D05C8(v182, v183, v184, v185, v186, v187, v19, v4, v188, (a3 - 66) < 8, ((a3 - 40) < 0x20) & (0xCC00C003 >> (a3 - 40)));
              goto LABEL_535;
            }
          }

          v350 = v345;
          v351 = v181;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_311;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v30);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v70 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_303;
      }

      goto LABEL_301;
    case 56:
    case 57:
    case 58:
    case 59:
    case 78:
    case 79:
    case 80:
    case 81:
      if (v4 >= 1)
      {
        v4 = v4;
      }

      else
      {
        v4 = 3;
      }

      if (v22 != 2 || (v4 - 3) > 1 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 64), "scn == 3 && (dcn == 3 || dcn == 4) && (depth == 0 || depth == 5)", 64);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11207);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v24 = *(a2 + 8);
        v25 = *v24;
        v26 = *(v24 + 16);
        *v344 = *v24;
        *&v344[16] = v26;
        *&v344[32] = *(v24 + 32);
        v27 = *(v24 + 56);
        *&v344[48] = *(v24 + 48);
        *&v344[56] = v27;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v27)
        {
          atomic_fetch_add((v27 + 20), 1u);
          v28 = *(v24 + 4);
        }

        else
        {
          v28 = DWORD1(v25);
        }

        if (v28 <= 2)
        {
          v163 = *(v24 + 72);
          v164 = v346;
          *v346 = *v163;
          v164[1] = v163[1];
          v69 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_286;
          }

LABEL_284:
          if (atomic_fetch_add((v69 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_286:
          if (*&v349[4] >= 1)
          {
            v165 = 0;
            v166 = v350;
            do
            {
              *&v166[4 * v165++] = 0;
            }

            while (v165 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v167 = v351;
          if (v351 == v352)
          {
            v168 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_291;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v167 = v352;
            v168 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_291:
              *v167 = *v168;
              v167[1] = v168[1];
LABEL_294:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v169 = *&v353[16];
              v170 = v356[0];
              v171 = *&v349[16];
              v172 = v352[0];
              v174 = *&v353[8];
              v173 = *&v353[12];
              v175 = sub_1002D5FB0();
              sub_1002D0C04(v169, v170, v171, v172, v173, v174, v19, v4, v175, ((a3 - 44) < 0x24) & (0xCC0003003uLL >> (a3 - 44)), (a3 < 0x3C) & (0xF0C300000000000uLL >> a3));
              goto LABEL_535;
            }
          }

          v350 = v345;
          v351 = v168;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_294;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v24);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v69 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_286;
      }

      goto LABEL_284;
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
      if (v4 <= 0)
      {
        if ((a3 - 95) >= 3)
        {
          if (a3 == 94)
          {
            LODWORD(v4) = 4;
          }

          else
          {
            LODWORD(v4) = 3;
          }
        }

        else
        {
          LODWORD(v4) = 4;
        }
      }

      if ((a3 - 92) <= 5 && (v141 = 1, ((1 << (a3 - 92)) & 0x23) != 0))
      {
        if ((v4 - 3) >= 2)
        {
          goto LABEL_253;
        }
      }

      else
      {
        v141 = a3 == 96;
        if ((v4 - 3) >= 2)
        {
LABEL_253:
          *v344 = 0uLL;
          v142 = sub_1002A80E0(v344, 20);
          *(v142 + 16) = 874528061;
          *v142 = *"dcn == 3 || dcn == 4";
          sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11228);
        }
      }

      if ((v21 & 1) != 0 || (v20 % 3) | v19)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 53), "sz.width % 2 == 0 && sz.height % 3 == 0 && depth == 0", 53);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11229);
      }

      v340 = v141;
      *v344 = v354[1];
      *&v344[4] = 2 * v20 / 3;
      sub_100275370(a2, v344, (v19 | (8 * v4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v143 = *(a2 + 8);
        v144 = *v143;
        v145 = *(v143 + 16);
        *v344 = *v143;
        *&v344[16] = v145;
        *&v344[32] = *(v143 + 32);
        v146 = *(v143 + 56);
        *&v344[48] = *(v143 + 48);
        *&v344[56] = v146;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v146)
        {
          atomic_fetch_add((v146 + 20), 1u);
          v147 = *(v143 + 4);
        }

        else
        {
          v147 = DWORD1(v144);
        }

        if (v147 <= 2)
        {
          v229 = *(v143 + 72);
          v230 = v346;
          *v346 = *v229;
          v230[1] = v229[1];
          v148 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_371;
          }

LABEL_369:
          if (atomic_fetch_add((v148 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_371:
          if (*&v349[4] >= 1)
          {
            v231 = 0;
            v232 = v350;
            do
            {
              *&v232[4 * v231++] = 0;
            }

            while (v231 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v233 = v351;
          if (v351 == v352)
          {
            v234 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_376;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v233 = v352;
            v234 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_376:
              *v233 = *v234;
              v233[1] = v234[1];
LABEL_379:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v235 = *&v353[16];
              v236 = v356[0];
              v237 = *&v349[16];
              v238 = v352[0];
              v239 = *&v349[12];
              v240 = *&v349[8];
              sub_1002ACE7C(v344, &off_100477080);
              v241 = sub_1002D5FB0();
              sub_1002D0FB8(v235, v235 + v236 * v240, v236, v237, v238, v239, v240, v4, v241, v340);
              if (*&v344[8])
              {
                sub_1002ACC1C(v344);
              }

              goto LABEL_535;
            }
          }

          v350 = v345;
          v351 = v234;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_379;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v143);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v148 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_371;
      }

      goto LABEL_369;
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
      if (v4 <= 0)
      {
        if ((a3 - 102) >= 3)
        {
          if (a3 == 105)
          {
            LODWORD(v4) = 4;
          }

          else
          {
            LODWORD(v4) = 3;
          }
        }

        else
        {
          LODWORD(v4) = 4;
        }
      }

      if ((a3 - 98) <= 5 && (v133 = 1, ((1 << (a3 - 98)) & 0x23) != 0))
      {
        if ((v4 - 3) >= 2)
        {
          goto LABEL_236;
        }
      }

      else
      {
        v133 = a3 == 102;
        if ((v4 - 3) >= 2)
        {
LABEL_236:
          *v344 = 0uLL;
          v134 = sub_1002A80E0(v344, 20);
          *(v134 + 16) = 874528061;
          *v134 = *"dcn == 3 || dcn == 4";
          sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11241);
        }
      }

      if ((v21 & 1) != 0 || (v20 % 3) | v19)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 53), "sz.width % 2 == 0 && sz.height % 3 == 0 && depth == 0", 53);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11242);
      }

      *v344 = v354[1];
      *&v344[4] = 2 * v20 / 3;
      sub_100275370(a2, v344, (v19 | (8 * v4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v135 = *(a2 + 8);
        v136 = *v135;
        v137 = *(v135 + 16);
        *v344 = *v135;
        *&v344[16] = v137;
        *&v344[32] = *(v135 + 32);
        v138 = *(v135 + 56);
        *&v344[48] = *(v135 + 48);
        *&v344[56] = v138;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v138)
        {
          atomic_fetch_add((v138 + 20), 1u);
          v139 = *(v135 + 4);
        }

        else
        {
          v139 = DWORD1(v136);
        }

        if (v139 <= 2)
        {
          v215 = *(v135 + 72);
          v216 = v346;
          *v346 = *v215;
          v216[1] = v215[1];
          v140 = *&v349[56];
          if (*&v349[56])
          {
LABEL_352:
            if (atomic_fetch_add((v140 + 20), 0xFFFFFFFF) == 1)
            {
              sub_100269BC8(v349);
            }
          }

LABEL_354:
          if (*&v349[4] >= 1)
          {
            v217 = 0;
            v218 = v350;
            do
            {
              *&v218[4 * v217++] = 0;
            }

            while (v217 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v219 = v351;
          if (v351 != v352)
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v219 = v352;
          }

          v220 = v346;
          if (*&v344[4] > 2)
          {
            v350 = v345;
            v351 = v346;
            v345 = &v344[8];
            v346 = &v347;
          }

          else
          {
            *v219 = *v346;
            v219[1] = v220[1];
          }

          v221 = v133;
          *v344 = 1124007936;
          memset(&v344[4], 0, 60);
          if (v346 != &v347)
          {
            j__free(v346);
          }

          v222 = *&v353[16];
          v223 = v356[0];
          v224 = *&v349[16];
          v225 = v352[0];
          v227 = *&v349[8];
          v226 = *&v349[12];
          v228 = sub_1002D5FB0();
          sub_1002D155C(v222, v223, v224, v225, v226, v227, v4, v228, v221);
          goto LABEL_535;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v135);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v140 = *&v349[56];
      if (*&v349[56])
      {
        goto LABEL_352;
      }

      goto LABEL_354;
    case 106:
      if (v4 <= 1)
      {
        v269 = 1;
      }

      else
      {
        v269 = v4;
      }

      if (v4 >= 2)
      {
        sub_1001FA81C(v344, "dcn == 1");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11253);
      }

      if ((v21 & 1) != 0 || (v20 % 3) | v19)
      {
        sub_1001FA81C(v344, "sz.width % 2 == 0 && sz.height % 3 == 0 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11254);
      }

      *v344 = v354[1];
      *&v344[4] = 2 * v20 / 3;
      sub_100275370(a2, v344, (v19 | (8 * v269)) - 8, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v270);
      sub_100006D14(v344);
      v343[0] = (2 * v20 / 3) << 32;
      v358[0] = 0x7FFFFFFF80000000;
      sub_10026A3FC(v344, v353, v343, v358);
      LODWORD(v343[0]) = 33619968;
      v343[1] = v349;
      v343[2] = 0;
      sub_10022B754(v344, v343);
      sub_100006D14(v344);
      goto LABEL_535;
    case 107:
    case 108:
    case 111:
    case 112:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
      if (v4 <= 0)
      {
        if (a3 - 111) < 0xB && ((0x703u >> (a3 - 111)))
        {
          LODWORD(v4) = 4;
        }

        else if (a3 == 122)
        {
          LODWORD(v4) = 4;
        }

        else
        {
          LODWORD(v4) = 3;
        }
      }

      if ((a3 - 107) <= 4 && (v73 = 1, ((1 << (a3 - 107)) & 0x13) != 0))
      {
        v74 = a3 - 117;
        if ((a3 - 117) > 4)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v73 = a3 == 112;
        v74 = a3 - 117;
        if ((a3 - 117) > 4)
        {
          goto LABEL_140;
        }
      }

      v75 = 1;
      if (((1 << v74) & 0x13) != 0)
      {
        if ((v4 - 3) >= 2)
        {
          goto LABEL_138;
        }

        goto LABEL_141;
      }

LABEL_140:
      v75 = a3 == 122;
      if ((v4 - 3) >= 2)
      {
LABEL_138:
        *v344 = 0uLL;
        v76 = sub_1002A80E0(v344, 20);
        *(v76 + 16) = 874528061;
        *v76 = *"dcn == 3 || dcn == 4";
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11290);
      }

LABEL_141:
      if (v19 || v23 != 2)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 22), "scn == 2 && depth == 0", 22);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11291);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (8 * v4 - 8), -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v77 = *(a2 + 8);
        v78 = *v77;
        v79 = *(v77 + 16);
        *v344 = *v77;
        *&v344[16] = v79;
        *&v344[32] = *(v77 + 32);
        v80 = *(v77 + 56);
        *&v344[48] = *(v77 + 48);
        *&v344[56] = v80;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v80)
        {
          atomic_fetch_add((v80 + 20), 1u);
          if (*(v77 + 4) <= 2)
          {
LABEL_147:
            v81 = *(v77 + 72);
            v82 = v346;
            *v346 = *v81;
            v82[1] = v81[1];
            goto LABEL_152;
          }
        }

        else if (SDWORD1(v78) <= 2)
        {
          goto LABEL_147;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v77);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

LABEL_152:
      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v83 = 0;
        v84 = v350;
        do
        {
          *&v84[4 * v83++] = 0;
        }

        while (v83 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v85 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v85 = v352;
      }

      v86 = v346;
      v87 = v4;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v85 = *v346;
        v85[1] = v86[1];
      }

      v88 = v75;
      v89 = v73;
      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v90 = *&v353[16];
      v91 = v356[0];
      v92 = *&v349[16];
      v93 = v352[0];
      v95 = *&v353[8];
      v94 = *&v353[12];
      v96 = sub_1002D5FB0();
      sub_1002D1A80(v90, v91, v92, v93, v94, v95, v87, v96, v88, v89);
      goto LABEL_535;
    case 123:
    case 124:
      if (v4 >= 2)
      {
        sub_1001FA81C(v344, "dcn == 1");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11301);
      }

      if ((v8 & 7) != 0 || v22 != 1)
      {
        sub_1001FA81C(v344, "scn == 2 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11302);
      }

      sub_100269498(v353);
      sub_100200C20(a1, a2, a3 == 123);
      goto LABEL_535;
    case 125:
      if (v4 >= 1)
      {
        v271 = v4;
      }

      else
      {
        v271 = 4;
      }

      if ((v8 & 7) != 0 || v271 != 4 || v22 != 3)
      {
        sub_1001FA81C(v344, "scn == 4 && dcn == 4 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11310);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 24, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v272);
      sub_100006D14(v344);
      sub_1002D21C8(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8]);
      goto LABEL_535;
    case 126:
      if (v4 >= 1)
      {
        v273 = v4;
      }

      else
      {
        v273 = 4;
      }

      if ((v8 & 7) != 0 || v273 != 4 || v22 != 3)
      {
        sub_1001FA81C(v344, "scn == 4 && dcn == 4 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11317);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 24, -1, 0, 0);
      sub_10026E0C8(a2, 0xFFFFFFFFLL, v344);
      sub_10025DAEC(v349, v344, v274);
      sub_100006D14(v344);
      sub_1002D22A8(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8]);
      goto LABEL_535;
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
      if (v4 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v4;
      }

      v339 = 1;
      if ((a3 - 127) > 3 || a3 == 129)
      {
        if (a3 == 129)
        {
          v97 = 1;
        }

        else
        {
          v97 = 2;
        }

        v339 = v97;
        if ((v8 & 0xFF7) != 0x10)
        {
LABEL_88:
          *v344 = 0uLL;
          qmemcpy(sub_1002A80E0(v344, 36), "(scn == 3 || scn == 4) && depth == 0", 36);
          sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11273);
        }
      }

      else if ((v8 & 0xFF7) != 0x10)
      {
        goto LABEL_88;
      }

      if (v4 >= 2)
      {
        *v344 = 0uLL;
        *sub_1002A80E0(v344, 8) = 0x31203D3D206E6364;
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11274);
      }

      if ((v21 | v20))
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 39), "sz.width % 2 == 0 && sz.height % 2 == 0", 39);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11275);
      }

      *v344 = v354[1];
      *&v344[4] = ((v20 + (v20 >> 31)) & 0xFFFFFFFE) + v20 / 2;
      sub_100275370(a2, v344, (v19 | (8 * v45)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v98 = *(a2 + 8);
        v99 = *v98;
        v100 = *(v98 + 16);
        *v344 = *v98;
        *&v344[16] = v100;
        *&v344[32] = *(v98 + 32);
        v101 = *(v98 + 56);
        *&v344[48] = *(v98 + 48);
        *&v344[56] = v101;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v101)
        {
          atomic_fetch_add((v101 + 20), 1u);
          v102 = *(v98 + 4);
        }

        else
        {
          v102 = DWORD1(v99);
        }

        if (v102 <= 2)
        {
          v242 = *(v98 + 72);
          v243 = v346;
          *v346 = *v242;
          v243[1] = v242[1];
          v103 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_389;
          }

LABEL_387:
          if (atomic_fetch_add((v103 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_389:
          if (*&v349[4] >= 1)
          {
            v244 = 0;
            v245 = v350;
            do
            {
              *&v245[4 * v244++] = 0;
            }

            while (v244 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v246 = v351;
          if (v351 == v352)
          {
            v247 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_394;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v246 = v352;
            v247 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_394:
              *v246 = *v247;
              v246[1] = v247[1];
LABEL_397:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v248 = *&v353[16];
              v249 = v356[0];
              v250 = *&v349[16];
              v251 = v352[0];
              v253 = *&v353[8];
              v252 = *&v353[12];
              v254 = sub_1002D5FB0();
              sub_1002D193C(v248, v249, v250, v251, v252, v253, v23, v254, v339);
              goto LABEL_535;
            }
          }

          v350 = v345;
          v351 = v247;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_397;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v98);
      }

      else
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v344);
      }

      v103 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_389;
      }

      goto LABEL_387;
    default:
      sub_1001FA81C(v344, "Unknown/unsupported color conversion code");
      sub_1002A8980(-206, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11323);
  }
}