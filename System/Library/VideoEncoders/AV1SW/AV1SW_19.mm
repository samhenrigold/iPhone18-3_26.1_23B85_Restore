uint64_t sub_277A3D9E4(uint64_t result, int a2, int a3, char *a4, char *a5, int *a6)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        v8 = 1;
        do
        {
          v9 = v8;
          LODWORD(v7) = v7 + byte_277BFC9D8[a4[v6] >> 3];
          v6 = 1;
          v8 = 0;
        }

        while ((v9 & 1) != 0);
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v11;
          v7 = byte_277BFC9D8[a5[v10] >> 3] + v7;
          v10 = 1;
          v11 = 0;
        }

        while ((v12 & 1) != 0);
        a6[1] = byte_277BFC9DB[v7 + 32];
        if (a3)
        {
          if ((0x3CFFF0uLL >> result))
          {
            v13 = 10;
          }

          else
          {
            v13 = 7;
          }

          v14 = *a4 == 0;
          v15 = *a5;
          goto LABEL_51;
        }

        if (result != 3)
        {
          v34 = a4[1] | *a4;
          LODWORD(v35) = v34 & 7;
          v36 = a5[1] | *a5;
          goto LABEL_84;
        }

        goto LABEL_82;
      }

      goto LABEL_26;
    }

    a6[1] = byte_277BFC9DB[byte_277BFC9D8[*a4 >> 3] + 32 + byte_277BFC9D8[*a5 >> 3]];
    if (!a3)
    {
      if (result)
      {
        if ((*a4 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = *a4 & 7;
        }

        v36 = *a5;
        goto LABEL_87;
      }

      goto LABEL_82;
    }

    if (result)
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
LABEL_51:
    if (!v14)
    {
      ++v13;
    }

    v19 = v15 == 0;
LABEL_54:
    if (v19)
    {
      v30 = v13;
    }

    else
    {
      v30 = v13 + 1;
    }

    goto LABEL_142;
  }

  if (a2 == 2)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    do
    {
      LODWORD(v28) = v28 + byte_277BFC9D8[a4[v27++] >> 3];
    }

    while (v27 != 4);
    for (i = 0; i != 4; ++i)
    {
      v28 = byte_277BFC9D8[a5[i] >> 3] + v28;
    }

    a6[1] = byte_277BFC9DB[v28 + 32];
    if (!a3)
    {
      if (result != 6)
      {
        v34 = a4[1] | *a4 | a4[2] | a4[3];
        LODWORD(v35) = v34 & 7;
        v36 = a5[1] | *a5 | a5[2] | a5[3];
LABEL_84:
        if ((v34 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = v35;
        }

LABEL_87:
        if ((v36 & 4) != 0)
        {
          v40 = 4;
        }

        else
        {
          v40 = v36 & 7;
        }

        v41 = v35 + 4 * v35;
LABEL_91:
        v30 = byte_277BFCA1C[v41 + v40];
        goto LABEL_142;
      }

LABEL_82:
      v30 = 0;
      goto LABEL_142;
    }

    if ((0x30FF80uLL >> result))
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
    goto LABEL_51;
  }

  if (a2 == 3)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    do
    {
      LODWORD(v17) = v17 + byte_277BFC9D8[a4[v16++] >> 3];
    }

    while (v16 != 8);
    for (j = 0; j != 8; ++j)
    {
      v17 = byte_277BFC9D8[a5[j] >> 3] + v17;
    }

    a6[1] = byte_277BFC9DB[v17 + 32];
    if (a3)
    {
      if (result - 10 >= 6)
      {
        v13 = 7;
      }

      else
      {
        v13 = 10;
      }

      if (*a4)
      {
        ++v13;
      }

      v19 = *a5 == 0;
      goto LABEL_54;
    }

    if (result == 9)
    {
      goto LABEL_82;
    }

    v37 = 0;
    v31 = 0;
    do
    {
      v31 |= a4[v37++];
    }

    while (v37 != 8);
    v38 = 0;
    LOBYTE(v22) = 0;
    do
    {
      LOBYTE(v22) = v22 | a5[v38++];
    }

    while (v38 != 8);
LABEL_69:
    if ((v31 & 4) != 0)
    {
      v39 = 4;
    }

    else
    {
      v39 = v31 & 7;
    }

    if ((v22 & 4) != 0)
    {
      v40 = 4;
    }

    else
    {
      v40 = v22 & 7;
    }

    v41 = v39 + 4 * v39;
    goto LABEL_91;
  }

LABEL_26:
  v20 = 0;
  LODWORD(v21) = 0;
  LODWORD(v22) = *&byte_277BFDBA0[4 * a2];
  v23 = *&byte_277BFDB54[4 * a2];
  if (v22 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v22;
  }

  do
  {
    LODWORD(v21) = v21 + byte_277BFC9D8[a4[v20++] >> 3];
  }

  while (v22 != v20);
  v24 = 0;
  if (v23 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23;
  }

  do
  {
    v21 = byte_277BFC9D8[a5[v24++] >> 3] + v21;
  }

  while (v25 != v24);
  a6[1] = byte_277BFC9DB[v21 + 32];
  if (!a3)
  {
    if (byte_277C393B1[a2] == result)
    {
      goto LABEL_82;
    }

    v31 = 0;
    do
    {
      v32 = *a4++;
      v31 |= v32;
      --v22;
    }

    while (v22);
    do
    {
      v33 = *a5++;
      LOBYTE(v22) = v22 | v33;
      --v25;
    }

    while (v25);
    goto LABEL_69;
  }

  switch(a2)
  {
    case 0:
      v26 = *a4;
      goto LABEL_120;
    case 1:
      v51 = *a4;
      goto LABEL_129;
    case 2:
      v47 = *a4;
      goto LABEL_118;
    case 3:
      v45 = *a4;
      goto LABEL_103;
    case 4:
      v43 = *(a4 + 1) | *a4;
      goto LABEL_96;
    case 5:
      v51 = *a4;
      goto LABEL_129;
    case 6:
      v26 = *a4;
      goto LABEL_120;
    case 7:
      v47 = *a4;
      goto LABEL_118;
    case 8:
      v51 = *a4;
LABEL_129:
      v42 = v51 == 0;
      goto LABEL_130;
    case 9:
      v46 = *a4;
      goto LABEL_101;
    case 10:
      v55 = *a4;
      goto LABEL_123;
    case 11:
      v43 = *a4;
LABEL_96:
      v44 = v43 == 0;
      goto LABEL_111;
    case 12:
      v45 = *(a4 + 1) | *a4;
LABEL_103:
      v48 = v45 == 0;
      goto LABEL_104;
    case 13:
      v47 = *a4;
LABEL_118:
      v53 = v47 == 0;
      goto LABEL_124;
    case 14:
      v26 = *a4;
LABEL_120:
      v49 = v26 != 0;
      v54 = *a5;
      goto LABEL_134;
    case 15:
      v46 = *a4;
LABEL_101:
      v48 = v46 == 0;
LABEL_104:
      v49 = !v48;
      v50 = *a5;
      goto LABEL_115;
    case 16:
      v42 = *a4 == 0;
LABEL_130:
      v49 = !v42;
      v54 = *a5;
      goto LABEL_134;
    case 17:
      v44 = *a4 == 0;
LABEL_111:
      v49 = !v44;
      v50 = *(a5 + 1) | *a5;
LABEL_115:
      v52 = v50 == 0;
      goto LABEL_135;
    case 18:
      v55 = *(a4 + 1) | *a4;
LABEL_123:
      v53 = v55 == 0;
LABEL_124:
      v49 = !v53;
      v54 = *a5;
LABEL_134:
      v52 = v54 == 0;
LABEL_135:
      v56 = !v52;
      break;
    default:
      v49 = 0;
      v56 = 0;
      break;
  }

  v57 = v56 + v49;
  if (byte_277C3BCB6[result] <= byte_277C3BCB6[byte_277C393B1[a2]])
  {
    v58 = 7;
  }

  else
  {
    v58 = 10;
  }

  v30 = v57 + v58;
LABEL_142:
  *a6 = v30;
  return result;
}

int32x4_t *sub_277A3DF98(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, __int16 *a6, uint64_t *a7, uint64_t *a8)
{
  v10 = a4;
  v13 = a1 + 136 * a2;
  if (a4 <= 0xC && ((1 << a4) & 0x1810) != 0)
  {
    v14 = 1024;
  }

  else if (a4 - 17 >= 2)
  {
    v14 = dword_277BFE7FC[a4];
  }

  else
  {
    v14 = 512;
  }

  v29 = 0;
  v15 = 16 * a3;
  result = (*(v13 + 24) + 4 * v15);
  v17 = (*(v13 + 8) + 4 * v15);
  if ((*(*(a1 + 8376) + 192) & 8) != 0)
  {
    result = sub_277AA3D70(result, v17, v14, &v29, *(a1 + 11072));
LABEL_13:
    v18 = result;
    goto LABEL_14;
  }

  if (!a5 || !*(a1 + 151032))
  {
    result = sub_277A86260(result, v17, v14, &v29);
    goto LABEL_13;
  }

  if (v14 < 1)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *a6++;
      v21 = *(a5 + v20);
      v23 = result->i32[0];
      result = (result + 4);
      v22 = v23;
      v24 = v17->i32[0];
      v17 = (v17 + 4);
      v18 += ((v22 - v24) * v21 * (v22 - v24) * v21 + 512) >> 10;
      v19 += (v22 * v21 * v22 * v21 + 512) >> 10;
      --v14;
    }

    while (v14);
  }

  v29 = v19;
LABEL_14:
  v25 = ((0x61E18uLL >> v10) & 1) + ((0x1810uLL >> v10) & 1);
  v26 = v18 >> (2 - 2 * (((0x61E18uLL >> v10) & 1) + ((0x1810uLL >> v10) & 1)));
  v27 = v18 << (2 * (((0x61E18uLL >> v10) & 1) + ((0x1810uLL >> v10) & 1)) - 2);
  if (v25 <= 1)
  {
    v27 = v26;
  }

  *a7 = v27;
  v28 = v29 >> (2 - 2 * v25);
  if (v25 > 1)
  {
    v28 = v29 << (2 * v25 - 2);
  }

  *a8 = v28;
  return result;
}

float64_t sub_277A3E12C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 272080) & 1) == 0 && ((0x61810uLL >> a8) & 1) != 0 || a5 > a4)
  {
    goto LABEL_9;
  }

  v26 = 1;
  v12 = a1 + 2608 * a6;
  v29 = 0;
  v24 = 0uLL;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21[0] = a2;
  v21[1] = a1;
  v27 = a5;
  v28 = a4;
  v25 = 0uLL;
  v13 = byte_277C36D60[a7];
  v14 = *(v12 + 552);
  memcpy(v22, *(v12 + 544), byte_277C3F990[a7]);
  memcpy(v23, v14, v13);
  sub_277A91330(a1 + 416, a7, a6, sub_277A3E2D4, v21);
  v15 = **(a1 + 8280);
  if ((*(v15 + 167) & 0x80) != 0)
  {
    if (HIDWORD(v28))
    {
LABEL_9:
      *a3 = 0x7FFFFFFFLL;
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v18 = vnegq_f64(v17);
      *(a3 + 8) = v18;
      *(a3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(a3 + 32) = 0;
      return v18.f64[0];
    }
  }

  else
  {
    if (*(v15 + 16) >= 1)
    {
      v16 = &v28 + 12;
    }

    else
    {
      v16 = &v28 + 8;
    }

    if (*v16)
    {
      goto LABEL_9;
    }
  }

  *&v18.f64[0] = v24;
  v19 = v25;
  *a3 = v24;
  *(a3 + 16) = v19;
  *(a3 + 32) = v26;
  return v18.f64[0];
}

float64x2_t sub_277A3E2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t *a7, double a8, double a9, double a10, double a11, double a12, uint16x8_t a13, int32x4_t a14, uint16x4_t a15)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(a7 + 34))
  {
    *(a7 + 35) = 1;
    return result;
  }

  v19 = a7[1];
  v52 = (v19 + 16904);
  v20 = **(v19 + 8280);
  v21 = a7 + a4;
  v22 = a7 + a3;
  if ((*(v20 + 167) & 0x80) != 0)
  {
    v27 = 0;
    v24 = *a7;
    v25 = v21 + 16;
    v26 = v22 + 48;
    v57 = 0u;
    v58 = 0u;
    v59 = 1;
    goto LABEL_7;
  }

  v23 = *(v20 + 16);
  v24 = *a7;
  v25 = v21 + 16;
  v26 = v22 + 48;
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  if (v23 > 0)
  {
    v27 = 0;
    goto LABEL_7;
  }

  __ba = v22 + 48;
  v42 = (v19 + 151040);
  sub_277A7BB6C(v24 + 245616, v19 + 416, a1, a4, a3, a6, 0.0, a9, a10, a11, a12, a13, a14, a15);
  sub_277A8E330(v19, a1, a5, a4, a3, a6);
  if (*(v19 + 151041) != 1)
  {
    v27 = 1;
    v26 = __ba;
    goto LABEL_7;
  }

  v26 = __ba;
  if (!*(v19 + 4 * (*(**(v19 + 8280) + 167) & 7) + 11108) && byte_277C393B1[a6] == a5 && a6 == 1 && *(v19 + 11072) == 8)
  {
    v61 = 0;
    memset(&v60[4], 0, 48);
    v43 = &v60[4 * sub_277A3E874((*v19 + 2 * (4 * a3 * byte_277C3CAFE[a5]) + 8 * a4), byte_277C3CAFE[a5], 8, 8, &v60[4]) + 4];
    *v43 = log1pf(*(v19 + 153152));
    if (*v52 >= 0xFF)
    {
      v44 = 255;
    }

    else
    {
      v44 = *v52;
    }

    if (*v52 < 0)
    {
      v44 = 0;
    }

    v45 = word_277BFDBFA[v44];
    v46 = log1pf(vcvts_n_f32_u32(v45 * v45, 8uLL));
    v47 = 0;
    v43[1] = v46;
    do
    {
      *&v60[v47 * 4 + 4] = (*&v60[v47 * 4 + 4] - *&dword_277BF4820[v47]) / *&dword_277BF4858[v47];
      ++v47;
    }

    while (v47 != 14);
    *v60 = 0;
    sub_2779D28B0(&v60[4], dword_27A71F648, v60);
    if (*v60 <= -0.40547)
    {
      v48 = 2;
      v26 = __ba;
    }

    else
    {
      v26 = __ba;
      if (*v60 <= 0.40547)
      {
        goto LABEL_51;
      }

      v48 = 1;
    }

    *v42 = v48;
  }

LABEL_51:
  v27 = 1;
  if (*v42 == 1)
  {
    a7[10] = 0x7FFFFFFFLL;
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    result = vnegq_f64(v49);
    *(a7 + 11) = result;
    a7[13] = 0x7FFFFFFFFFFFFFFFLL;
    *(a7 + 112) = 0;
    *(a7 + 34) = 1;
    return result;
  }

LABEL_7:
  v50 = v27;
  *&v60[4] = 0;
  __b = v26;
  sub_277A3D9E4(a5, a6, a1, v25, v26, &v60[4]);
  sub_277A3EA88(v24, v19, a1, a2, a3, a4, a5, a6, &v60[4], *(a7 + 144), *(a7 + 37), a7[16] - a7[15], &v57);
  if (!a1 && *(v19 + 15440))
  {
    sub_2779F15BC(v19 + 416, a3, a4, a6, a5);
  }

  v28 = *(*(v19 + 136 * a1 + 40) + a2);
  memset(v25, v28, *&byte_277BFDBA0[4 * a6]);
  memset(__b, v28, *&byte_277BFDB54[4 * a6]);
  v30 = (byte_277C3CAFE[a5] >> 2) * a3 + a4;
  v31 = v19 + 151049;
  if (a1)
  {
    v32 = *(v31 + v30) & ~(1 << a1);
  }

  else
  {
    LOBYTE(v32) = *(v31 + v30) & 0xFE;
    if (!*(*(v19 + 32) + 2 * a2))
    {
      LOBYTE(v32) = v32 + 1;
    }
  }

  *(v31 + v30) = v32;
  v33 = *(&v57 + 1);
  v34 = ((*(v19 + 16920) * v57 + 256) >> 9) + (*(&v57 + 1) << 7);
  if (v50)
  {
    v35 = 0;
  }

  else
  {
    if (v34 >= *(&v58 + 1) << 7)
    {
      v34 = *(&v58 + 1) << 7;
    }

    v35 = (*(*(v19 + 136 * a1 + 32) + 2 * a2) == 0) & v59;
  }

  v36 = *(a7 + 20);
  if (v36 == 0x7FFFFFFF || v57 == 0x7FFFFFFF)
  {
    a7[10] = 0x7FFFFFFFLL;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    result = vnegq_f64(v39);
    *(a7 + 11) = result;
    a7[13] = 0x7FFFFFFFFFFFFFFFLL;
    *(a7 + 112) = 0;
  }

  else
  {
    v37 = v57 + v36;
    if (v37 >= 0x7FFFFFFF)
    {
      LODWORD(v37) = 0x7FFFFFFF;
    }

    *(a7 + 20) = v37;
    if (!*(a7 + 21))
    {
      *(a7 + 21) = DWORD1(v57);
    }

    a7[11] += v33;
    v38 = a7[13];
    if (v38 != 0x7FFFFFFFFFFFFFFFLL && *(&v58 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      a7[13] = *(&v58 + 1) + v38;
    }

    *(a7 + 112) &= v35;
  }

  v40 = a7[16];
  v41 = a7[15] + v34;
  a7[15] = v41;
  if (v41 > v40)
  {
    *(a7 + 34) = 1;
  }

  return result;
}

uint64_t sub_277A3E874(int16x8_t *a1, unsigned int a2, int a3, int a4, float *a5)
{
  if (a4 < 1)
  {
    v11 = 0;
    v18 = 2;
    v17 = 0.0;
    v19 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (a4 >> (a4 >= a3));
    v13 = a3 >> (a3 >= a4);
    v14 = (v13 * v12);
    v15 = (v13 * v12);
    v41 = a4;
    v42 = 2 * v12 * a2;
    v43 = a4;
    v16 = 2 * v13;
    v17 = 0.0;
    v18 = 2;
    v19 = 0.0;
    v46 = a5;
    v47 = v13;
    do
    {
      if (a3 >= 1)
      {
        v44 = v8;
        v45 = a1;
        v20 = 0;
        v21 = v18;
        do
        {
          v49 = 0;
          v48 = 0;
          sub_2779F4F00(a1, a2, v13, v12, &v49, &v48);
          v9 += v49;
          v10 += v48;
          a5 = v46;
          v13 = v47;
          v22 = v49 / v14;
          v23 = v48 / v15;
          v24 = v23 - (v22 * v22);
          v25 = sqrtf(v24);
          if (v24 <= 0.0)
          {
            v26 = 0.0;
          }

          else
          {
            v26 = v25;
          }

          v27 = &v46[v21];
          v21 += 2;
          *v27 = v22;
          v27[1] = v26;
          v17 = v17 + (v22 * v22);
          v19 = v19 + v26;
          ++v11;
          v20 += v47;
          a1 = (a1 + v16);
        }

        while (v20 < a3);
        v18 = v21;
        v8 = v44;
        a1 = v45;
      }

      v8 += v12;
      a1 = (a1 + v42);
    }

    while (v8 < v43);
    v28 = v9;
    v29 = v10;
    a4 = v41;
  }

  v30 = v28 / (a4 * a3);
  v31 = v29 / (a4 * a3);
  v32 = v31 - (v30 * v30);
  v33 = sqrtf(v32);
  if (v32 <= 0.0)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v33;
  }

  *a5 = v30;
  a5[1] = v34;
  v35 = v17 / v11;
  v36 = v35 - (v30 * v30);
  v37 = sqrtf(v36);
  if (v36 <= 0.0)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v37;
  }

  v39 = &a5[v18];
  *v39 = v38;
  v39[1] = v19 / v11;
  return (v18 + 2);
}

uint64_t sub_277A3EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, uint64_t a8, int *a9, char a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v725 = *MEMORY[0x277D85DE8];
  v666 = **(a2 + 8280);
  v700 = 0;
  v689 = (a2 + 136 * a3);
  if (a3)
  {
    v648 = 0;
  }

  else
  {
    v648 = a6 + *(a2 + 8336) * a5;
  }

  v688 = (a1 + 396188);
  v667 = a1 + 271324;
  v665 = *(a2 + 153144);
  v18 = v689[1];
  *a13 = 0x7FFFFFFFLL;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  *(a13 + 8) = vnegq_f64(v19);
  *(a13 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a13 + 32) = 0;
  v20 = *(v666 + 167);
  v21 = (*(a1 + (v20 & 7) + 272256) & 0xFD) == 0;
  v703 = xmmword_277BEE488;
  v704 = unk_277BEE498;
  v705 = xmmword_277BEE4A8;
  v706 = unk_277BEE4B8;
  v22 = *(*(a2 + 8376) + 192);
  if ((v22 & 8) != 0)
  {
    v23 = *(a2 + 11072) - 5;
  }

  else
  {
    LOBYTE(v23) = 3;
  }

  v24 = v689[16];
  v25 = v24[1];
  v26 = a8;
  v699 = 0;
  v671 = (a2 + 150988);
  v672 = a8;
  v27 = *(a2 + 151028);
  v646 = a3;
  v644 = v18;
  v694 = v25;
  if (!v27 || ((0x3EFEFuLL >> a8) & 1) == 0 || ((0x5F7EFuLL >> a8) & 1) == 0)
  {
    v28 = a3;
    v29 = sub_277A3D03C(a2, a3, a5, a6, a7, byte_277C393B1[a8], &v699);
    v664 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v38 = v21;
  if ((v22 & 8) != 0)
  {
    v39 = *(a2 + 11072) - 5;
  }

  else
  {
    LOBYTE(v39) = 3;
  }

  v52 = v24[1];
  v53 = *v24;
  v54 = byte_277C393B1[a8];
  v55 = byte_277C3CAE8[v54];
  v56 = byte_277C3CAFE[v54];
  v57 = a2 + 2608 * a3 + 432;
  v58 = *(a2 + 8352);
  if (v58 < 0)
  {
    v59 = (v58 >> (*(a2 + 2608 * a3 + 440) + 3)) - 4 * a5 + byte_277C3CAE8[a7];
    if (v59 >= v55)
    {
      v60 = v55;
    }

    else
    {
      v60 = (v58 >> (*(a2 + 2608 * a3 + 440) + 3)) - 4 * a5 + byte_277C3CAE8[a7];
    }

    if (v59 >= 0)
    {
      v55 = v60;
    }

    else
    {
      v55 = 0;
    }
  }

  v61 = *(a2 + 8344);
  v62 = byte_277C3CAFE[a7];
  if (v61 < 0)
  {
    v63 = (v61 >> (*(v57 + 4) + 3)) + v62 - 4 * a6;
    if (v63 >= v56)
    {
      v64 = v56;
    }

    else
    {
      v64 = v63;
    }

    if (v63 >= 0)
    {
      v56 = v64;
    }

    else
    {
      v56 = 0;
    }
  }

  v65 = v52 >> v39;
  v66 = (*v689 + 8 * (a6 + v62 * a5));
  LODWORD(__dst) = 0;
  if (v56 == 4 && v55 == 4)
  {
    v67 = *(v66 + 2 * v62);
    v68 = *(v66 + 4 * v62);
    v69 = *(v66 + 6 * v62);
    v70 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v67, v67), *v66, *v66), v68, v68), v69, v69);
    LODWORD(__dst) = vaddvq_s32(vaddw_s16(vaddw_s16(vaddl_s16(v67, *v66), v68), v69));
    v29 = vaddlvq_u32(v70);
  }

  else
  {
    v687 = v53;
    if (v56 != 4 || (v55 & 3) != 0)
    {
      if (v55 & 3 | v56 & 7)
      {
        if (v55 < 1)
        {
          v29 = 0;
          v71 = -1;
          v72 = -1;
          v664 = 0x7FFFFFFFFFFFFFFFLL;
          v13 = a8;
          goto LABEL_75;
        }

        v636 = 0;
        v637 = 0;
        v29 = 0;
        do
        {
          if (v56 >= 1)
          {
            for (i = 0; i != v56; ++i)
            {
              v639 = v66->i16[i];
              v29 += (v639 * v639);
              v636 += v639;
            }
          }

          ++v637;
          v66 = (v66 + 2 * v62);
        }

        while (v637 != v55);
        LODWORD(__dst) = v636;
      }

      else
      {
        v29 = sub_277A07AAC(v66, v62, v56, v55, &__dst);
      }

      v13 = a8;
    }

    else
    {
      v29 = sub_277A07A1C(v66, v62, v55, &__dst);
    }

    v53 = v687;
  }

  v71 = -1;
  v72 = -1;
  v664 = 0x7FFFFFFFFFFFFFFFLL;
  if (v56 >= 1 && v55 >= 1)
  {
    v73 = 1.0 / (v56 * v55);
    if (__dst >= 0)
    {
      v74 = __dst;
    }

    else
    {
      v74 = -__dst;
    }

    v75 = (v73 * v74) << 7;
    v71 = (v73 * (v29 << 8));
    if (__dst >= 1)
    {
      v76 = v75;
    }

    else
    {
      v76 = -v75;
    }

    v664 = v76;
    v72 = v29 - (v73 * __dst * __dst);
  }

LABEL_75:
  v699 = v71;
  v77 = (v65 * 1.8 * v65);
  v16 = a4;
  v21 = v38;
  if ((v22 & 8) != 0)
  {
    v72 = (v72 + ((1 << (2 * *(a2 + 11072) - 16)) >> 1)) >> (2 * *(a2 + 11072) - 16);
  }

  v15 = a5;
  if (v72 >= v77)
  {
    v14 = a6;
    goto LABEL_87;
  }

  v78 = v664;
  if (v664 < 0)
  {
    v78 = -v664;
  }

  if (v78 * word_277BFC7E0[v672] < v53 >> 3 << 12)
  {
    *(a13 + 32) = 1;
    *(v689[4] + 2 * a4) = 0;
    v691 = v38;
    if ((v22 & 8) != 0)
    {
      v29 = (v29 + ((1 << (2 * *(a2 + 11072) - 16)) >> 1)) >> (2 * *(a2 + 11072) - 16);
    }

    v14 = a6;
    v680 = v29;
    *(a13 + 8) = 16 * v29;
    *(a13 + 24) = 16 * v29;
    v79 = byte_277C36D60[a7];
    v80 = *(v57 + 120);
    memcpy(&__dst, *(v57 + 112), byte_277C3F990[a7]);
    memcpy(v721, v80, v79);
    v26 = v672;
    v81 = (byte_277C3BE70[v672] + byte_277C3BE83[v672] + 1) >> 1;
    v719.i64[0] = 0;
    v13 = a8;
    result = sub_277A3D9E4(a7, a8, a3, &__dst, v721, &v719);
    v29 = v680;
    v16 = a4;
    v28 = a3;
    v83 = *(a2 + 7552 * v81 + 3776 * (a3 != 0) + 8 * v719.i32[0] + 47580);
    *a13 = v83;
    *(a13 + 16) = ((*(a2 + 16920) * v83 + 256) >> 9) + (v680 << 11);
    *(v689[5] + a4) = 0;
    v21 = v691;
    if (*(a13 + 32) == 1)
    {
      if (!a3)
      {
        *(*(a2 + 8328) + v648) = 0;
      }

      return result;
    }

    goto LABEL_11;
  }

  v14 = a6;
  if (v27 < 2)
  {
LABEL_87:
    v28 = a3;
    v26 = v672;
    goto LABEL_11;
  }

  v28 = a3;
  if (!a3)
  {
    v31 = 0;
    v30 = 1;
    v32 = 1;
    v33 = v671;
    LOBYTE(v26) = v672;
    goto LABEL_148;
  }

  v26 = v672;
  if (a3 >= 1 && ((v20 & 0x80) != 0 || *(v666 + 16) >= 1))
  {
    v31 = 0;
    v30 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v30 = v688[109];
  if (v30 != 1)
  {
    v34 = *(a2 + 8280);
    v35 = *v34;
    v36 = *(*v34 + 167);
    v37 = (v36 & 0x80) != 0 || v35[16] > 0;
    v40 = *(*a1 + *(a1 + 463456) + 400);
    v41 = (*a1 + 1216 * v40 + (v26 << 6) + 75804);
    v690 = v21;
    if (v37)
    {
      v42 = v671[1];
      if (v42 == 0x7FFFFFFF)
      {
        goto LABEL_35;
      }

      if (v42)
      {
        if (*v41 <= v42)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = (v26 << 6) + 1216 * v40 + *a1 + 75808;
          do
          {
            v47 = *(v46 + 4 * v43);
            v48 = v47 <= v45;
            if (v47 > v45)
            {
              v45 = *(v46 + 4 * v43);
            }

            ++v43;
            if (!v48)
            {
              v44 = v43;
            }
          }

          while (v43 != 15);
          if (v45 > v42 + 100)
          {
            goto LABEL_41;
          }

LABEL_35:
          if (*(a2 + 116284) == 1 && v28 == 0)
          {
            v44 = 0;
          }

          else
          {
            v44 = 16;
          }

          goto LABEL_41;
        }

LABEL_34:
        v44 = 0;
        goto LABEL_41;
      }
    }

    else if (!*v671)
    {
      goto LABEL_35;
    }

    if ((v36 & 0x80) == 0 && v35[16] <= 0)
    {
      v44 = 0;
      if (v13 <= 2 && !(*(a2 + 4 * (v36 & 7) + 11108) | *(a1 + 643736)))
      {
        v44 = byte_277BFC848[v35[2]];
      }

LABEL_41:
      v50 = 0x61810uLL >> v26;
      if ((0x61810uLL >> v26))
      {
        v51 = 0;
      }

      else if ((0x18608uLL >> v26))
      {
        v51 = v37;
      }

      else if (*(a1 + 246117))
      {
        if (v37)
        {
          v51 = 1;
        }

        else
        {
          v51 = 2;
        }
      }

      else
      {
        v51 = byte_277C3C219[2 * v37 + ((0x60604uLL >> v26) & 1)];
      }

      v84 = 0;
      if (v28)
      {
        if ((v50 & 1) == 0)
        {
          v44 = 0;
          v33 = v671;
          if (!*(a2 + 4 * (v36 & 7) + 11108))
          {
            if ((v36 & 0x80) != 0 || v35[16] > 0)
            {
              v85 = *(*(a2 + 8328) + (v14 << *(a2 + 3044)) + *(a2 + 8336) * (v15 << *(a2 + 3048)));
              v86 = (v36 & 0x80) != 0 || v35[16] > 0;
            }

            else
            {
              v86 = 0;
              v85 = byte_277BFC848[byte_277C32971[v35[3]]];
            }

            if (((0x18608uLL >> v26) & 1) == 0)
            {
              if (*(a1 + 246117))
              {
                if (v86)
                {
                  LOBYTE(v86) = 1;
                }

                else
                {
                  LOBYTE(v86) = 2;
                }
              }

              else
              {
                LOBYTE(v86) = byte_277C3C219[2 * v86 + ((0x60604uLL >> v26) & 1)];
              }
            }

            if (dword_277BFC858[16 * v86 + v85])
            {
              v84 = v85;
            }

            else
            {
              v84 = 0;
            }

            v44 = v84;
          }

LABEL_120:
          if (v35[91])
          {
            v87 = &unk_277C3C214 + v35[90];
          }

          else
          {
            v87 = v35 + 2;
          }

          v88 = *v87;
          v89 = *v688;
          v90 = v51 != 3 || v89 == 0;
          v91 = &unk_277BEE4C8 + 2 * v88;
          if (v90)
          {
            v91 = &unk_277BEE4E2 + 2 * v51;
          }

          v92 = *v91;
          if (v89 == 2)
          {
            v92 &= word_277BEE4EE[v88];
          }

          if ((v50 & 1) != 0 || *(a2 + 4 * (v36 & 7) + 11108) || v92 == 1)
          {
            goto LABEL_136;
          }

          if (v37)
          {
            if (*(v667 + 761))
            {
              goto LABEL_136;
            }
          }

          else if (*(v667 + 760) == 1)
          {
LABEL_136:
            v44 = 0;
            if (*(v667 + 757))
            {
              LOWORD(v93) = v92;
            }

            else
            {
              LOWORD(v93) = v92 & 0xF;
            }

LABEL_139:
            v94 = 1 << v44;
LABEL_140:
            LOWORD(v93) = v94 & v93;
LABEL_141:
            v31 = 1;
            if (v93)
            {
              v32 = v93;
            }

            else
            {
              v32 = 1 << v84;
            }

            if (v93)
            {
              v95 = v44;
            }

            else
            {
              v95 = v84;
            }

            v30 = v95 > 0xFu;
            v21 = v690;
            goto LABEL_148;
          }

          if (*(v667 + 757))
          {
            v93 = v92;
          }

          else
          {
            v93 = v92 & 0xF;
          }

          if (v44 <= 0xFu)
          {
            goto LABEL_139;
          }

          if (a10)
          {
            LOWORD(v93) = v93 & 0xC01;
            goto LABEL_141;
          }

          v161 = v688[4];
          if (v161)
          {
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v165 = dword_277BEE508[7 * v161 - 7 + v40];
            v166 = -1;
            do
            {
              v167 = v41[v162];
              if (((1 << v162) & v93) != 0)
              {
                v168 = v41[v162];
              }

              else
              {
                v168 = v166;
              }

              if (((1 << v162) & v93) != 0)
              {
                v169 = v162;
              }

              else
              {
                v169 = v163;
              }

              if (v167 > v166)
              {
                v166 = v168;
                v163 = v169;
              }

              if (v167 >= v165)
              {
                v170 = 0;
              }

              else
              {
                v170 = 1 << v162;
              }

              v164 |= v170;
              ++v162;
            }

            while (v162 != 16);
            if ((v164 & (1 << v163)) != 0)
            {
              v171 = ~(1 << v163);
            }

            else
            {
              v171 = -1;
            }

            v93 &= ~(v171 & v164);
          }

          v172 = xmmword_277BB7060;
          v173 = vdupq_n_s32(v93);
          v174 = 0uLL;
          v175 = 16;
          v176.i64[0] = 0x100000001;
          v176.i64[1] = 0x100000001;
          v177.i64[0] = 0x400000004;
          v177.i64[1] = 0x400000004;
          do
          {
            v174 = vaddq_s32(vandq_s8(vshlq_u32(v173, vnegq_s32(v172)), v176), v174);
            v172 = vaddq_s32(v172, v177);
            v175 -= 4;
          }

          while (v175);
          v178 = vaddvq_s32(v174);
          v682 = v29;
          v675 = v84;
          v677 = v93;
          if (v178 >= 3 && v688[5])
          {
            v685 = *(a1 + 246117);
            v679 = v23;
            v179 = v33[2];
            v669 = dword_277BEE540[v179];
            if (v178 > 7)
            {
              v662 = v178;
              v659 = dword_277BEE554[v179];
              v717 = xmmword_277BB7060;
              v718 = xmmword_277BB7060;
              v708[0] = 0;
              v708[1] = 0;
              v707[0] = 0;
              v707[1] = 0;
              memset(v721, 0, 40);
              v709 = 0uLL;
              *&v710 = 0;
              sub_277A91270(a1 + 245616, a2, v13, 0, &v709);
              v233 = 0;
              v234 = *v667;
              v721[0].i32[0] = ((0x61E18uLL >> v26) & 1) + ((0x1810uLL >> v26) & 1);
              v721[0].i8[4] = v13;
              v721[1].i32[2] = v234;
              *(&v721[1].i64[1] + 4) = 0x100000001;
              v721[1].i64[0] = 0;
              v721[0].i64[1] = 0;
              LOBYTE(v710) = 5;
              v702 = 0;
              v235 = &off_27A722620 + 32 * BYTE1(v709);
              do
              {
                LOBYTE(v709) = xmmword_277BEE5E8[v233];
                v236 = v709;
                v721[0].i64[1] = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v709);
                v721[1].i64[0] = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v236);
                sub_277A91078(a2, a3, a4, a5, a6, a7, &v709, v721);
                sub_277A3DF98(a2, a3, a4, a8, v721[0].i64[1], v235[2 * v236], &v702, &v701);
                v237 = sub_277B31E00(a2, a3, a4, a8, v236, a9, v685);
                v238 = ((*(a2 + 16920) * v237 + 256) >> 9) + (v702 << 7);
                *(&v713 + v233) = v238;
                if (v238 - (v238 >> 2) > a12)
                {
                  *(v707 + v233) = 1;
                }

                ++v233;
              }

              while (v233 != 4);
              v239 = &v717.i8[4];
              v240 = &v713 + 8;
              v241 = 1;
              v16 = a4;
              v13 = a8;
              v29 = v682;
              v84 = v675;
              v242 = v677;
              do
              {
                v243 = 0;
                v244 = *(&v713 + v241);
                while (*(&v713 + v243) <= v244)
                {
                  if (v241 == ++v243)
                  {
                    goto LABEL_361;
                  }
                }

                v245 = v717.i32[v241];
                v246 = v240;
                v247 = v239;
                v248 = v241;
                v249 = v240;
                v250 = v239;
                do
                {
                  --v248;
                  v251 = *--v249;
                  *v246 = v251;
                  LODWORD(v251) = *(v250 - 1);
                  v250 -= 4;
                  *v247 = v251;
                  v246 = v249;
                  v247 = v250;
                }

                while (v248 > v243);
                *(&v713 + v243) = v244;
                v717.i32[v243] = v245;
LABEL_361:
                ++v241;
                v239 += 4;
                v240 += 8;
              }

              while (v241 != 4);
              v252 = v713;
              v253 = v713 * 1.2;
              for (j = 1; j != 4; ++j)
              {
                if (v253 < *(&v713 + j))
                {
                  *(v707 + v717.i32[j]) = 1;
                }
              }

              if (*(v707 + v717.i32[0]))
              {
                LOWORD(v255) = 0;
                v33 = v671;
                LOBYTE(v26) = v672;
              }

              else
              {
                v663 = (v659 * v662 + 50) / 100;
                v719.i64[0] = v252;
                v258 = &xmmword_277BEE5E8[v717.i32[0]];
                for (k = 1; k != 4; ++k)
                {
                  v260 = v258[4 * *(&v718 + k)];
                  LOBYTE(v709) = v260;
                  v261 = v260;
                  v721[0].i64[1] = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v260);
                  v721[1].i64[0] = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v261);
                  sub_277A91078(a2, a3, a4, a5, a6, a7, &v709, v721);
                  sub_277A3DF98(a2, a3, a4, a8, v721[0].i64[1], v235[2 * v261], &v702, &v701);
                  v262 = sub_277B31E00(a2, a3, a4, a8, v261, a9, v685);
                  v263 = ((*(a2 + 16920) * v262 + 256) >> 9) + (v702 << 7);
                  v719.i64[k] = v263;
                  if (v263 - (v263 >> 2) > a12)
                  {
                    *(v708 + k) = 1;
                  }
                }

                v264 = &v718 + 4;
                v265 = &v719.i64[1];
                v266 = 1;
                v16 = a4;
                v33 = v671;
                LOBYTE(v26) = v672;
                v13 = a8;
                do
                {
                  v267 = 0;
                  v268 = v719.i64[v266];
                  while (v719.i64[v267] <= v268)
                  {
                    if (v266 == ++v267)
                    {
                      goto LABEL_391;
                    }
                  }

                  v269 = *(&v718 + v266);
                  v270 = v265;
                  v271 = v264;
                  v272 = v266;
                  v273 = v265;
                  v274 = v264;
                  do
                  {
                    --v272;
                    v275 = *--v273;
                    *v270 = v275;
                    LODWORD(v275) = *--v274;
                    *v271 = v275;
                    v270 = v273;
                    v271 = v274;
                  }

                  while (v272 > v267);
                  v719.i64[v267] = v268;
                  *(&v718 + v267) = v269;
LABEL_391:
                  ++v266;
                  v264 += 4;
                  ++v265;
                }

                while (v266 != 4);
                v276 = v719.i64[0] * 1.2;
                for (m = 1; m != 4; ++m)
                {
                  if (v276 < v719.i64[m])
                  {
                    *(v708 + *(&v718 + m)) = 1;
                  }
                }

                v278 = 0;
                v279 = 0;
                v280 = 15;
                do
                {
                  v281 = dword_277BEE568[v278];
                  v282 = dword_277BEE5A8[v278];
                  v283 = *(&v718 + v281);
                  v284 = v717.i32[v282];
                  v285 = xmmword_277BEE5E8[4 * v283 + v284];
                  if (((v677 >> v285) & 1) == 0 || *(v707 + v284) || *(v708 + v283))
                  {
                    *(&v703 + v280--) = v285;
                  }

                  else
                  {
                    *(&v703 + v279) = v285;
                    v286 = *(&v713 + v282) + v719.i64[v281];
                    if (v286 <= 1)
                    {
                      v286 = 1;
                    }

                    *(&__dst + v279++) = v286;
                  }

                  ++v278;
                }

                while (v278 != 16);
                v29 = v682;
                v84 = v675;
                v242 = v677;
                if (v279 >= 2)
                {
                  v287 = &v703 + 4;
                  v288 = &__dst + 8;
                  for (n = 1; n != v279; ++n)
                  {
                    v290 = 0;
                    v291 = *(&__dst + n);
                    while (*(&__dst + v290) <= v291)
                    {
                      if (n == ++v290)
                      {
                        goto LABEL_415;
                      }
                    }

                    v292 = *(&v703 + n);
                    v293 = v288;
                    v294 = v287;
                    v295 = n;
                    v296 = v288;
                    v297 = v287;
                    do
                    {
                      --v295;
                      v298 = *--v296;
                      *v293 = v298;
                      LODWORD(v298) = *--v297;
                      *v294 = v298;
                      v293 = v296;
                      v294 = v297;
                    }

                    while (v295 > v290);
                    *(&__dst + v290) = v291;
                    *(&v703 + v290) = v292;
                    v84 = v675;
                    v242 = v677;
LABEL_415:
                    v287 += 4;
                    v288 += 8;
                  }
                }

                v255 = 1 << v703;
                if (v279 >= v663)
                {
                  v299 = v663;
                }

                else
                {
                  v299 = v279;
                }

                if (v299 >= 2)
                {
                  v300 = ~v255;
                  v301 = v299 - 1;
                  v302 = &v703 + 1;
                  v303 = &__dst + 1;
                  do
                  {
                    v304 = *v303++;
                    if (1800 * (v304 - __dst) / __dst >= v669)
                    {
                      break;
                    }

                    v305 = *v302++;
                    v300 &= ~(1 << v305);
                    --v301;
                  }

                  while (v301);
                  LOWORD(v255) = ~v300;
                }
              }

              LOWORD(v93) = v255 & v242;
              goto LABEL_141;
            }

            v719 = 0uLL;
            v720 = 0;
            memset(v721, 0, 40);
            sub_277A91270(a1 + 245616, a2, v13, 0, &v719);
            v180 = 0;
            v181 = 0;
            v182 = *v667;
            v721[0].i32[0] = ((0x61E18uLL >> v26) & 1) + ((0x1810uLL >> v26) & 1);
            v721[0].i8[4] = v13;
            v721[1].i32[2] = v182;
            *(&v721[1].i64[1] + 4) = 0x100000001;
            v721[1].i64[0] = 0;
            v721[0].i64[1] = 0;
            v183 = (&off_27A722620 + 32 * v719.u8[1]);
            v184 = 15;
            v29 = v682;
            v84 = v675;
            v93 = v677;
            do
            {
              *&v713 = 0;
              if ((v93 >> v180))
              {
                v719.i8[0] = v180;
                v721[0].i64[1] = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v180);
                v721[1].i64[0] = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v180);
                sub_277A91078(a2, a3, v16, a5, a6, a7, &v719, v721);
                v185 = sub_277B31E00(a2, a3, v16, a8, v180, a9, v685);
                v13 = a8;
                sub_277A3DF98(a2, a3, a4, a8, v721[0].i64[1], *v183, &v713, &v709);
                v93 = v677;
                v84 = v675;
                v29 = v682;
                LOBYTE(v23) = v679;
                *(&v703 + v181) = v180;
                v186 = *(a2 + 16920) * v185;
                v16 = a4;
                v187 = ((v186 + 256) >> 9) + (v713 << 7);
                if (v187 <= 1)
                {
                  v187 = 1;
                }

                *(&__dst + v181++) = v187;
              }

              else
              {
                *(&v703 + v184--) = v180;
              }

              ++v180;
              v183 += 2;
            }

            while (v180 != 16);
            if (v181)
            {
              v33 = v671;
              LOBYTE(v26) = v672;
              if (v181 <= 1)
              {
                v94 = 1 << v703;
              }

              else
              {
                v188 = &v703 + 4;
                v189 = &__dst + 8;
                for (ii = 1; ii != v181; ++ii)
                {
                  v191 = 0;
                  v192 = *(&__dst + ii);
                  while (*(&__dst + v191) <= v192)
                  {
                    if (ii == ++v191)
                    {
                      goto LABEL_301;
                    }
                  }

                  v193 = *(&v703 + ii);
                  v194 = v189;
                  v195 = v188;
                  v196 = ii;
                  v197 = v189;
                  v198 = v188;
                  do
                  {
                    --v196;
                    v199 = *--v197;
                    *v194 = v199;
                    LODWORD(v199) = *--v198;
                    *v195 = v199;
                    v194 = v197;
                    v195 = v198;
                  }

                  while (v196 > v191);
                  *(&__dst + v191) = v192;
                  *(&v703 + v191) = v193;
                  LOWORD(v93) = v677;
LABEL_301:
                  v188 += 4;
                  v189 += 8;
                }

                v200 = ~(1 << v703);
                v201 = v181 - 1;
                v202 = &v703 + 1;
                v203 = &__dst + 1;
                do
                {
                  v204 = *v203++;
                  if (1000 * (v204 - __dst) / __dst >= v669)
                  {
                    break;
                  }

                  v205 = *v202++;
                  v200 &= ~(1 << v205);
                  --v201;
                }

                while (v201);
                LOWORD(v94) = ~v200;
              }
            }

            else
            {
              LOWORD(v94) = 0;
              v33 = v671;
              LOBYTE(v26) = v672;
            }

            goto LABEL_140;
          }

          if (!v37)
          {
            goto LABEL_141;
          }

          v213 = v33[2];
          if (v213 < 1)
          {
            goto LABEL_141;
          }

          v214 = v213 > 3 ? 1 : 5;
          if (v178 <= v214 || (v51 - 6) < 0xFEu || ((0x61E7uLL >> v26) & 1) == 0)
          {
            goto LABEL_141;
          }

          v655 = *(&off_27A71DA88 + v26);
          v656 = *(&off_27A71DB20 + v26);
          v658 = v33[2];
          v215 = dword_277C3BEE4[v26];
          v216 = dword_277C3BF30[v26];
          v653 = ((0xA0E3uLL >> v26) & 1) == 0;
          v650 = ((0x14163uLL >> v26) & 1) == 0;
          v217 = byte_277C3CAFE[a7];
          v661 = *a2 + 8 * v15 * v217 + 8 * a6;
          v218 = 0x75F1CuLL >> v26;
          v219 = (0x75F1CuLL >> v26) & 1;
          v220 = (0x6BE9CuLL >> v26) & 1;
          v221 = v215 >> v219;
          v686 = v216;
          v670 = v216 >> v220;
          v222 = ((v216 >> v220) * (v215 >> v219));
          __memset_chk();
          v224 = 0;
          if (v218)
          {
            v225 = v661;
            v306 = v661;
            v227 = v686;
            v228 = v217;
            do
            {
              v307 = 0;
              v308 = &__dst + (v224 >> v220) * v221;
              do
              {
                *v308++ += *(v306 + 2 * v307) * *(v306 + 2 * v307) + *(v306 + 2 * v307 + 2) * *(v306 + 2 * v307 + 2);
                v307 += 2;
              }

              while (v307 < v215);
              ++v224;
              v306 += 2 * v217;
            }

            while (v224 != v686);
          }

          else
          {
            v225 = v661;
            v226 = v661;
            v227 = v686;
            v228 = v217;
            do
            {
              v229 = &__dst + ((v224 >> v220) * v221);
              v230 = v226;
              v231 = v215;
              do
              {
                v232 = *v230++;
                *v229++ += v232 * v232;
                --v231;
              }

              while (v231);
              ++v224;
              v226 += v217;
            }

            while (v224 != v686);
          }

          v309 = v215 >> v653;
          v310 = v227 >> v650;
          v13 = a8;
          if (v222 < 1)
          {
            goto LABEL_452;
          }

          v311 = 0;
          p_dst = &__dst;
          do
          {
            v313 = *p_dst++;
            v311 += v313;
            --v222;
          }

          while (v222);
          if (v311)
          {
            v651 = v215 >> v653;
            v654 = v310;
            v314 = v311;
            v315 = (v221 - 1);
            __memset_chk();
            v316 = (v670 - 1);
            __memset_chk();
            v317 = 0;
            if (v670 >= 2)
            {
              v318 = 0;
              v319 = &__dst;
              do
              {
                v320 = v719.f32[v318];
                if (v221 < 2)
                {
                  v325 = 0;
                }

                else
                {
                  v321 = v721;
                  v322 = v319;
                  v323 = (v221 - 1);
                  do
                  {
                    v324 = *v322++;
                    v321->f32[0] = v321->f32[0] + v324;
                    v321 = (v321 + 4);
                    v320 = v320 + v324;
                    --v323;
                  }

                  while (v323);
                  v325 = (v221 - 1);
                }

                v719.f32[v318] = v320 + *(&__dst + v318 * v221 + v325);
                ++v318;
                v319 += v221;
              }

              while (v318 != v316);
              v317 = v670 - 1;
            }

            v326 = 1.0 / v314;
            v227 = v686;
            v225 = v661;
            v309 = v651;
            v310 = v654;
            if (v221 >= 2)
            {
              v327 = &__dst + v317 * v221;
              v328 = v721;
              v329 = (v221 - 1);
              do
              {
                v330 = *v327++;
                v328->f32[0] = v328->f32[0] + v330;
                v328 = (v328 + 4);
                --v329;
              }

              while (v329);
              v331 = v721;
              do
              {
                v331->f32[0] = v326 * v331->f32[0];
                v331 = (v331 + 4);
                --v315;
              }

              while (v315);
            }

            v13 = a8;
            v332 = v658;
            if (v670 >= 2)
            {
              v333 = &v719;
              do
              {
                v333->f32[0] = v326 * v333->f32[0];
                v333 = (v333 + 4);
                --v316;
              }

              while (v316);
            }
          }

          else
          {
LABEL_452:
            v223.i32[0] = 1.0;
            if (v221 > 1)
            {
              v334 = 1.0 / v221;
              v335 = (v221 + 2) & 0xFFFFFFFC;
              v336 = vdupq_n_s64((v221 - 1) - 1);
              v337 = xmmword_277BB7090;
              v338 = xmmword_277BB70A0;
              v339 = &v721[0].f32[2];
              v340 = vdupq_n_s64(4uLL);
              do
              {
                v341 = vmovn_s64(vcgeq_u64(v336, v338));
                if (vuzp1_s16(v341, v223).u8[0])
                {
                  *(v339 - 2) = v334;
                }

                if (vuzp1_s16(v341, v223).i8[2])
                {
                  *(v339 - 1) = v334;
                }

                if (vuzp1_s16(v223, vmovn_s64(vcgeq_u64(v336, *&v337))).i32[1])
                {
                  *v339 = v334;
                  v339[1] = v334;
                }

                v337 = vaddq_s64(v337, v340);
                v338 = vaddq_s64(v338, v340);
                v339 += 4;
                v335 -= 4;
              }

              while (v335);
            }

            v332 = v658;
            if (v670 >= 2)
            {
              *v223.i32 = 1.0 / v670;
              v342 = (v670 + 2) & 0xFFFFFFFC;
              v343 = vdupq_n_s64((v670 - 1) - 1);
              v344 = xmmword_277BB7090;
              v345 = xmmword_277BB70A0;
              v346 = &v719.i64[1];
              v347 = vdupq_n_s64(4uLL);
              do
              {
                v348 = vmovn_s64(vcgeq_u64(v343, v345));
                if (vuzp1_s16(v348, v223).u8[0])
                {
                  *(v346 - 2) = v223.i32[0];
                }

                if (vuzp1_s16(v348, v223).i8[2])
                {
                  *(v346 - 1) = v223.i32[0];
                }

                if (vuzp1_s16(v223, vmovn_s64(vcgeq_u64(v343, *&v344))).i32[1])
                {
                  *v346 = v223.i32[0];
                  *(v346 + 1) = v223.i32[0];
                }

                v344 = vaddq_s64(v344, v347);
                v345 = vaddq_s64(v345, v347);
                v346 += 2;
                v342 -= 4;
              }

              while (v342);
            }
          }

          sub_277998798(v225, v228, v215, v227, &v721[0].f32[v309 - 1], &v719.f32[v310 - 1]);
          sub_2779D28B0(v721, v655, &v718);
          sub_2779D28B0(&v719, v656, &v717);
          v726.val[0] = vmulq_n_f32(v717, *&v718);
          v726.val[1] = vmulq_n_f32(v717, *(&v718 + 1));
          v726.val[2] = vmulq_n_f32(v717, *(&v718 + 2));
          v726.val[3] = vmulq_n_f32(v717, *(&v718 + 3));
          v349 = &__dst;
          vst4q_f32(v349, v726);
          sub_2779C9400(&__dst, &__dst);
          if (v51 == 4)
          {
            v351 = &unk_277BF1238 + 8 * v332 - 4;
            v16 = a4;
            v33 = v671;
            v26 = v672;
            v29 = v682;
            v84 = v675;
            v350 = v677;
          }

          else
          {
            v16 = a4;
            v33 = v671;
            v26 = v672;
            v29 = v682;
            v84 = v675;
            v350 = v677;
            if (v51 != 5)
            {
              v352 = 0;
LABEL_476:
              v353 = 0;
              v354 = 0;
              v355 = 0;
              v356 = 0;
              v357 = *(*(&off_27A71EB20 + v26) + v352);
              v714 = unk_277BEE638;
              v715 = xmmword_277BEE648;
              v716 = unk_277BEE658;
              v709 = xmmword_277BEE668;
              v710 = unk_277BEE678;
              v711 = xmmword_277BEE688;
              v358 = 0.0;
              v712 = unk_277BEE698;
              v713 = xmmword_277BEE628;
              v359 = 0.0;
              do
              {
                v360 = xmmword_277BEE5E8[v353];
                if (((1 << v360) & v350) != 0)
                {
                  v361 = *(&__dst + v353);
                  if (v361 > v359)
                  {
                    v355 = v353;
                    v359 = *(&__dst + v353);
                  }

                  if (v361 >= v357)
                  {
                    v356 |= 1 << v360;
                    v358 = v358 + v361;
                    *(&v709 + v354) = v361;
                    *(&v713 + v354++) = v360;
                  }
                }

                ++v353;
              }

              while (v353 != 16);
              v362 = 1 << xmmword_277BEE5E8[v355];
              if ((v356 & v362) != 0)
              {
                v363 = *(&v709 + 1);
                if (*&v709 >= *(&v709 + 1))
                {
                  v364 = *&v709;
                }

                else
                {
                  v364 = *(&v709 + 1);
                }

                if (*&v709 < *(&v709 + 1))
                {
                  v363 = *&v709;
                }

                v365 = v713;
                if (*&v709 >= *(&v709 + 1))
                {
                  v366 = v713;
                }

                else
                {
                  v366 = DWORD1(v713);
                }

                if (*&v709 >= *(&v709 + 1))
                {
                  v365 = DWORD1(v713);
                }

                if (*(&v709 + 2) >= *(&v709 + 3))
                {
                  v367 = *(&v709 + 2);
                }

                else
                {
                  v367 = *(&v709 + 3);
                }

                if (*(&v709 + 2) >= *(&v709 + 3))
                {
                  v368 = *(&v709 + 3);
                }

                else
                {
                  v368 = *(&v709 + 2);
                }

                if (*(&v709 + 2) >= *(&v709 + 3))
                {
                  v369 = DWORD2(v713);
                }

                else
                {
                  v369 = HIDWORD(v713);
                }

                if (*(&v709 + 2) >= *(&v709 + 3))
                {
                  v370 = HIDWORD(v713);
                }

                else
                {
                  v370 = DWORD2(v713);
                }

                LODWORD(v371) = v710;
                if (*&v710 >= *(&v710 + 1))
                {
                  v372 = *&v710;
                }

                else
                {
                  v372 = *(&v710 + 1);
                }

                if (*&v710 >= *(&v710 + 1))
                {
                  v371 = *(&v710 + 1);
                }

                v373 = DWORD1(v714);
                if (*&v710 >= *(&v710 + 1))
                {
                  v374 = v714;
                }

                else
                {
                  v374 = DWORD1(v714);
                }

                if (*&v710 < *(&v710 + 1))
                {
                  v373 = v714;
                }

                v375 = *(&v710 + 2);
                if (*(&v710 + 2) >= *(&v710 + 3))
                {
                  v376 = *(&v710 + 2);
                }

                else
                {
                  v376 = *(&v710 + 3);
                }

                if (*(&v710 + 2) >= *(&v710 + 3))
                {
                  v375 = *(&v710 + 3);
                }

                v377 = HIDWORD(v714);
                if (*(&v710 + 2) >= *(&v710 + 3))
                {
                  v378 = DWORD2(v714);
                }

                else
                {
                  v378 = HIDWORD(v714);
                }

                if (*(&v710 + 2) < *(&v710 + 3))
                {
                  v377 = DWORD2(v714);
                }

                if (v354 > 8)
                {
                  v426 = *&v711;
                  if (*&v711 >= *(&v711 + 1))
                  {
                    v427 = *&v711;
                  }

                  else
                  {
                    v427 = *(&v711 + 1);
                  }

                  if (*&v711 >= *(&v711 + 1))
                  {
                    v426 = *(&v711 + 1);
                  }

                  v428 = DWORD1(v715);
                  if (*&v711 >= *(&v711 + 1))
                  {
                    v429 = v715;
                  }

                  else
                  {
                    v429 = DWORD1(v715);
                  }

                  if (*&v711 < *(&v711 + 1))
                  {
                    v428 = v715;
                  }

                  v430 = *(&v711 + 2);
                  if (*(&v711 + 2) >= *(&v711 + 3))
                  {
                    v431 = *(&v711 + 2);
                  }

                  else
                  {
                    v431 = *(&v711 + 3);
                  }

                  if (*(&v711 + 2) >= *(&v711 + 3))
                  {
                    v430 = *(&v711 + 3);
                  }

                  v432 = HIDWORD(v715);
                  if (*(&v711 + 2) >= *(&v711 + 3))
                  {
                    v433 = DWORD2(v715);
                  }

                  else
                  {
                    v433 = HIDWORD(v715);
                  }

                  if (*(&v711 + 2) < *(&v711 + 3))
                  {
                    v432 = DWORD2(v715);
                  }

                  v434 = *&v712;
                  if (*&v712 >= *(&v712 + 1))
                  {
                    v435 = *&v712;
                  }

                  else
                  {
                    v435 = *(&v712 + 1);
                  }

                  if (*&v712 >= *(&v712 + 1))
                  {
                    v434 = *(&v712 + 1);
                  }

                  v436 = DWORD1(v716);
                  if (*&v712 >= *(&v712 + 1))
                  {
                    v437 = v716;
                  }

                  else
                  {
                    v437 = DWORD1(v716);
                  }

                  if (*&v712 < *(&v712 + 1))
                  {
                    v436 = v716;
                  }

                  v438 = *(&v712 + 2);
                  if (*(&v712 + 2) >= *(&v712 + 3))
                  {
                    v439 = *(&v712 + 2);
                  }

                  else
                  {
                    v439 = *(&v712 + 3);
                  }

                  if (*(&v712 + 2) >= *(&v712 + 3))
                  {
                    v438 = *(&v712 + 3);
                  }

                  v440 = HIDWORD(v716);
                  if (*(&v712 + 2) >= *(&v712 + 3))
                  {
                    v441 = DWORD2(v716);
                  }

                  else
                  {
                    v441 = HIDWORD(v716);
                  }

                  if (*(&v712 + 2) < *(&v712 + 3))
                  {
                    v440 = DWORD2(v716);
                  }

                  v442 = v364 < v367;
                  if (v364 >= v367)
                  {
                    v443 = v364;
                  }

                  else
                  {
                    v443 = v367;
                  }

                  if (v364 < v367)
                  {
                    v444 = v369;
                  }

                  else
                  {
                    v364 = v367;
                    v444 = v366;
                  }

                  if (!v442)
                  {
                    v366 = v369;
                  }

                  v445 = v363 < v368;
                  if (v363 >= v368)
                  {
                    v446 = v363;
                  }

                  else
                  {
                    v446 = v368;
                  }

                  if (v363 < v368)
                  {
                    v447 = v370;
                  }

                  else
                  {
                    v363 = v368;
                    v447 = v365;
                  }

                  if (!v445)
                  {
                    v365 = v370;
                  }

                  v448 = v372 < v376;
                  if (v372 >= v376)
                  {
                    v449 = v372;
                  }

                  else
                  {
                    v449 = v376;
                  }

                  if (v372 < v376)
                  {
                    v450 = v378;
                  }

                  else
                  {
                    v372 = v376;
                    v450 = v374;
                  }

                  if (!v448)
                  {
                    v374 = v378;
                  }

                  v451 = v371 < v375;
                  if (v371 >= v375)
                  {
                    v452 = v371;
                  }

                  else
                  {
                    v452 = v375;
                  }

                  if (v371 < v375)
                  {
                    v453 = v377;
                  }

                  else
                  {
                    v371 = v375;
                    v453 = v373;
                  }

                  if (!v451)
                  {
                    v373 = v377;
                  }

                  v454 = v427 < v431;
                  if (v427 >= v431)
                  {
                    v455 = v427;
                  }

                  else
                  {
                    v455 = v431;
                  }

                  if (v427 < v431)
                  {
                    v456 = v433;
                  }

                  else
                  {
                    v427 = v431;
                    v456 = v429;
                  }

                  if (!v454)
                  {
                    v429 = v433;
                  }

                  v457 = v426 < v430;
                  if (v426 >= v430)
                  {
                    v458 = v426;
                  }

                  else
                  {
                    v458 = v430;
                  }

                  if (v426 < v430)
                  {
                    v459 = v432;
                  }

                  else
                  {
                    v426 = v430;
                    v459 = v428;
                  }

                  if (!v457)
                  {
                    v428 = v432;
                  }

                  v460 = v435 < v439;
                  if (v435 >= v439)
                  {
                    v461 = v435;
                  }

                  else
                  {
                    v461 = v439;
                  }

                  if (v435 < v439)
                  {
                    v462 = v441;
                  }

                  else
                  {
                    v435 = v439;
                    v462 = v437;
                  }

                  if (!v460)
                  {
                    v437 = v441;
                  }

                  v463 = v434 < v438;
                  if (v434 >= v438)
                  {
                    v464 = v434;
                  }

                  else
                  {
                    v464 = v438;
                  }

                  if (v434 < v438)
                  {
                    v465 = v440;
                  }

                  else
                  {
                    v434 = v438;
                    v465 = v436;
                  }

                  if (!v463)
                  {
                    v436 = v440;
                  }

                  v466 = v446 < v364;
                  if (v446 >= v364)
                  {
                    v467 = v446;
                  }

                  else
                  {
                    v467 = v364;
                  }

                  if (v446 >= v364)
                  {
                    v468 = v447;
                  }

                  else
                  {
                    v364 = v446;
                    v468 = v366;
                  }

                  if (v466)
                  {
                    v366 = v447;
                  }

                  v469 = v452 < v372;
                  if (v452 >= v372)
                  {
                    v470 = v452;
                  }

                  else
                  {
                    v470 = v372;
                  }

                  if (v452 < v372)
                  {
                    v471 = v374;
                  }

                  else
                  {
                    v452 = v372;
                    v471 = v453;
                  }

                  if (v469)
                  {
                    v472 = v453;
                  }

                  else
                  {
                    v472 = v374;
                  }

                  v473 = v443 < v449;
                  if (v443 >= v449)
                  {
                    v474 = v443;
                  }

                  else
                  {
                    v474 = v449;
                  }

                  if (v443 < v449)
                  {
                    v475 = v450;
                  }

                  else
                  {
                    v443 = v449;
                    v475 = v444;
                  }

                  if (v473)
                  {
                    v476 = v444;
                  }

                  else
                  {
                    v476 = v450;
                  }

                  v477 = v363 < v371;
                  if (v363 >= v371)
                  {
                    v478 = v363;
                  }

                  else
                  {
                    v478 = v371;
                  }

                  if (v363 >= v371)
                  {
                    v479 = v365;
                  }

                  else
                  {
                    v371 = v363;
                    v479 = v373;
                  }

                  if (v477)
                  {
                    v373 = v365;
                  }

                  if (v458 >= v427)
                  {
                    v480 = v458;
                  }

                  else
                  {
                    v480 = v427;
                  }

                  if (v458 >= v427)
                  {
                    v481 = v427;
                  }

                  else
                  {
                    v481 = v458;
                  }

                  if (v458 >= v427)
                  {
                    v482 = v459;
                  }

                  else
                  {
                    v482 = v429;
                  }

                  if (v458 >= v427)
                  {
                    v483 = v429;
                  }

                  else
                  {
                    v483 = v459;
                  }

                  if (v464 >= v435)
                  {
                    v484 = v464;
                  }

                  else
                  {
                    v484 = v435;
                  }

                  if (v464 >= v435)
                  {
                    v485 = v435;
                  }

                  else
                  {
                    v485 = v464;
                  }

                  if (v464 >= v435)
                  {
                    v486 = v465;
                  }

                  else
                  {
                    v486 = v437;
                  }

                  if (v464 >= v435)
                  {
                    v487 = v437;
                  }

                  else
                  {
                    v487 = v465;
                  }

                  v488 = v455 < v461;
                  if (v455 >= v461)
                  {
                    v489 = v455;
                  }

                  else
                  {
                    v489 = v461;
                  }

                  if (v455 < v461)
                  {
                    v490 = v462;
                  }

                  else
                  {
                    v455 = v461;
                    v490 = v456;
                  }

                  if (v488)
                  {
                    v462 = v456;
                  }

                  v491 = v426 < v434;
                  if (v426 >= v434)
                  {
                    v492 = v426;
                  }

                  else
                  {
                    v492 = v434;
                  }

                  if (v426 < v434)
                  {
                    v493 = v436;
                  }

                  else
                  {
                    v426 = v434;
                    v493 = v428;
                  }

                  if (!v491)
                  {
                    v428 = v436;
                  }

                  v494 = v467 < v470;
                  if (v467 >= v470)
                  {
                    v495 = v467;
                  }

                  else
                  {
                    v495 = v470;
                  }

                  if (v467 >= v470)
                  {
                    v496 = v468;
                  }

                  else
                  {
                    v470 = v467;
                    v496 = v471;
                  }

                  if (v494)
                  {
                    v497 = v468;
                  }

                  else
                  {
                    v497 = v471;
                  }

                  v498 = v364 < v452;
                  if (v364 >= v452)
                  {
                    v499 = v364;
                  }

                  else
                  {
                    v499 = v452;
                  }

                  if (v364 >= v452)
                  {
                    v500 = v366;
                  }

                  else
                  {
                    v452 = v364;
                    v500 = v472;
                  }

                  if (v498)
                  {
                    v501 = v366;
                  }

                  else
                  {
                    v501 = v472;
                  }

                  v502 = v480 < v484;
                  if (v480 >= v484)
                  {
                    v503 = v480;
                  }

                  else
                  {
                    v503 = v484;
                  }

                  if (v480 >= v484)
                  {
                    v504 = v482;
                  }

                  else
                  {
                    v484 = v480;
                    v504 = v486;
                  }

                  if (v502)
                  {
                    v505 = v482;
                  }

                  else
                  {
                    v505 = v486;
                  }

                  v506 = v481 < v485;
                  if (v481 >= v485)
                  {
                    v507 = v481;
                  }

                  else
                  {
                    v507 = v485;
                  }

                  if (v481 >= v485)
                  {
                    v508 = v483;
                  }

                  else
                  {
                    v485 = v481;
                    v508 = v487;
                  }

                  if (v506)
                  {
                    v487 = v483;
                  }

                  if (v474 >= v489)
                  {
                    v509 = v474;
                  }

                  else
                  {
                    v509 = v489;
                  }

                  if (v474 >= v489)
                  {
                    v510 = v489;
                  }

                  else
                  {
                    v510 = v474;
                  }

                  if (v474 >= v489)
                  {
                    v511 = v475;
                  }

                  else
                  {
                    v511 = v490;
                  }

                  if (v474 >= v489)
                  {
                    v512 = v490;
                  }

                  else
                  {
                    v512 = v475;
                  }

                  v33 = v671;
                  LOBYTE(v26) = v672;
                  v513 = v371 < v426;
                  if (v371 >= v426)
                  {
                    v514 = v371;
                  }

                  else
                  {
                    v514 = v426;
                  }

                  if (v371 < v426)
                  {
                    v515 = v428;
                  }

                  else
                  {
                    v371 = v426;
                    v515 = v373;
                  }

                  if (!v513)
                  {
                    v373 = v428;
                  }

                  v516 = v495 < v443;
                  if (v495 >= v443)
                  {
                    v517 = v495;
                  }

                  else
                  {
                    v517 = v443;
                  }

                  if (v495 < v443)
                  {
                    v518 = v476;
                  }

                  else
                  {
                    v495 = v443;
                    v518 = v496;
                  }

                  if (v516)
                  {
                    v476 = v496;
                  }

                  v519 = v478 < v452;
                  if (v478 >= v452)
                  {
                    v520 = v478;
                  }

                  else
                  {
                    v520 = v452;
                  }

                  if (v478 >= v452)
                  {
                    v521 = v479;
                  }

                  else
                  {
                    v452 = v478;
                    v521 = v501;
                  }

                  if (v519)
                  {
                    v522 = v479;
                  }

                  else
                  {
                    v522 = v501;
                  }

                  v523 = v503 < v455;
                  if (v503 >= v455)
                  {
                    v524 = v503;
                  }

                  else
                  {
                    v524 = v455;
                  }

                  if (v503 >= v455)
                  {
                    v525 = v504;
                  }

                  else
                  {
                    v455 = v503;
                    v525 = v462;
                  }

                  if (v523)
                  {
                    v462 = v504;
                  }

                  v526 = v492 < v485;
                  if (v492 >= v485)
                  {
                    v527 = v492;
                  }

                  else
                  {
                    v527 = v485;
                  }

                  if (v492 < v485)
                  {
                    v528 = v487;
                  }

                  else
                  {
                    v492 = v485;
                    v528 = v493;
                  }

                  if (v526)
                  {
                    v487 = v493;
                  }

                  v529 = v499 < v495;
                  if (v499 >= v495)
                  {
                    v530 = v499;
                  }

                  else
                  {
                    v530 = v495;
                  }

                  if (v499 >= v495)
                  {
                    v531 = v500;
                  }

                  else
                  {
                    v495 = v499;
                    v531 = v476;
                  }

                  if (!v529)
                  {
                    v500 = v476;
                  }

                  v532 = v520 < v470;
                  if (v520 >= v470)
                  {
                    v533 = v520;
                  }

                  else
                  {
                    v533 = v470;
                  }

                  if (v520 >= v470)
                  {
                    v534 = v521;
                  }

                  else
                  {
                    v470 = v520;
                    v534 = v497;
                  }

                  if (v532)
                  {
                    v497 = v521;
                  }

                  if (v507 >= v455)
                  {
                    v535 = v507;
                  }

                  else
                  {
                    v535 = v455;
                  }

                  if (v507 >= v455)
                  {
                    v536 = v455;
                  }

                  else
                  {
                    v536 = v507;
                  }

                  if (v507 >= v455)
                  {
                    v537 = v508;
                  }

                  else
                  {
                    v537 = v462;
                  }

                  if (v507 < v455)
                  {
                    v462 = v508;
                  }

                  v538 = v527 < v484;
                  if (v527 >= v484)
                  {
                    v539 = v527;
                  }

                  else
                  {
                    v539 = v484;
                  }

                  if (v527 >= v484)
                  {
                    v540 = v528;
                  }

                  else
                  {
                    v484 = v527;
                    v540 = v505;
                  }

                  if (v538)
                  {
                    v505 = v528;
                  }

                  if (v517 >= v524)
                  {
                    v541 = v517;
                  }

                  else
                  {
                    v541 = v524;
                  }

                  if (v517 >= v524)
                  {
                    v542 = v524;
                  }

                  else
                  {
                    v542 = v517;
                  }

                  if (v517 >= v524)
                  {
                    v543 = v518;
                  }

                  else
                  {
                    v543 = v525;
                  }

                  if (v517 >= v524)
                  {
                    v544 = v525;
                  }

                  else
                  {
                    v544 = v518;
                  }

                  v545 = v452 < v492;
                  if (v452 >= v492)
                  {
                    v546 = v452;
                  }

                  else
                  {
                    v546 = v492;
                  }

                  if (v452 < v492)
                  {
                    v547 = v487;
                  }

                  else
                  {
                    v452 = v492;
                    v547 = v522;
                  }

                  if (v545)
                  {
                    v548 = v522;
                  }

                  else
                  {
                    v548 = v487;
                  }

                  if (v533 >= v495)
                  {
                    v549 = v533;
                  }

                  else
                  {
                    v549 = v495;
                  }

                  if (v533 >= v495)
                  {
                    v550 = v495;
                  }

                  else
                  {
                    v550 = v533;
                  }

                  if (v533 >= v495)
                  {
                    v551 = v534;
                  }

                  else
                  {
                    v551 = v500;
                  }

                  if (v533 < v495)
                  {
                    v500 = v534;
                  }

                  if (v539 >= v536)
                  {
                    v552 = v539;
                  }

                  else
                  {
                    v552 = v536;
                  }

                  if (v539 >= v536)
                  {
                    v553 = v536;
                  }

                  else
                  {
                    v553 = v539;
                  }

                  if (v539 >= v536)
                  {
                    v554 = v540;
                  }

                  else
                  {
                    v554 = v462;
                  }

                  if (v539 < v536)
                  {
                    v462 = v540;
                  }

                  v555 = v541 < v510;
                  if (v541 >= v510)
                  {
                    v556 = v541;
                  }

                  else
                  {
                    v556 = v510;
                  }

                  if (v541 >= v510)
                  {
                    v557 = v543;
                  }

                  else
                  {
                    v510 = v541;
                    v557 = v512;
                  }

                  if (v555)
                  {
                    v512 = v543;
                  }

                  *&v709 = __PAIR64__(LODWORD(v556), LODWORD(v509));
                  *&v713 = __PAIR64__(v557, v511);
                  v558 = v530 < v535;
                  if (v530 >= v535)
                  {
                    v559 = v530;
                  }

                  else
                  {
                    v559 = v535;
                  }

                  if (v530 < v535)
                  {
                    v560 = v537;
                  }

                  else
                  {
                    v530 = v535;
                    v560 = v531;
                  }

                  if (v558)
                  {
                    v561 = v531;
                  }

                  else
                  {
                    v561 = v537;
                  }

                  v29 = v682;
                  v562 = v470 < v484;
                  if (v470 >= v484)
                  {
                    v563 = v470;
                  }

                  else
                  {
                    v563 = v484;
                  }

                  if (v470 < v484)
                  {
                    v564 = v505;
                  }

                  else
                  {
                    v470 = v484;
                    v564 = v497;
                  }

                  if (!v562)
                  {
                    v497 = v505;
                  }

                  v565 = v514 < v452;
                  if (v514 >= v452)
                  {
                    v566 = v514;
                  }

                  else
                  {
                    v566 = v452;
                  }

                  if (v514 < v452)
                  {
                    v567 = v548;
                  }

                  else
                  {
                    v514 = v452;
                    v567 = v515;
                  }

                  if (!v565)
                  {
                    v515 = v548;
                  }

                  *(&v712 + 1) = __PAIR64__(LODWORD(v371), LODWORD(v514));
                  *(&v716 + 1) = __PAIR64__(v373, v515);
                  if (v549 >= v552)
                  {
                    v568 = v549;
                  }

                  else
                  {
                    v568 = v552;
                  }

                  if (v549 >= v552)
                  {
                    v569 = v552;
                  }

                  else
                  {
                    v569 = v549;
                  }

                  if (v549 >= v552)
                  {
                    v570 = v551;
                  }

                  else
                  {
                    v570 = v554;
                  }

                  if (v549 >= v552)
                  {
                    v571 = v554;
                  }

                  else
                  {
                    v571 = v551;
                  }

                  v84 = v675;
                  v572 = v559 < v510;
                  if (v559 >= v510)
                  {
                    v573 = v559;
                  }

                  else
                  {
                    v573 = v510;
                  }

                  if (v559 < v510)
                  {
                    v574 = v512;
                  }

                  else
                  {
                    v559 = v510;
                    v574 = v560;
                  }

                  if (!v572)
                  {
                    v560 = v512;
                  }

                  if (v550 >= v553)
                  {
                    v575 = v550;
                  }

                  else
                  {
                    v575 = v553;
                  }

                  if (v550 >= v553)
                  {
                    v576 = v553;
                  }

                  else
                  {
                    v576 = v550;
                  }

                  if (v550 >= v553)
                  {
                    v577 = v500;
                  }

                  else
                  {
                    v577 = v462;
                  }

                  if (v550 >= v553)
                  {
                    v578 = v462;
                  }

                  else
                  {
                    v578 = v500;
                  }

                  v579 = v566 < v470;
                  if (v566 >= v470)
                  {
                    v580 = v566;
                  }

                  else
                  {
                    v580 = v470;
                  }

                  if (v566 >= v470)
                  {
                    v581 = v567;
                  }

                  else
                  {
                    v470 = v566;
                    v581 = v497;
                  }

                  if (v579)
                  {
                    v497 = v567;
                  }

                  v582 = v568 < v530;
                  if (v568 >= v530)
                  {
                    v583 = v568;
                  }

                  else
                  {
                    v583 = v530;
                  }

                  if (v568 < v530)
                  {
                    v584 = v561;
                  }

                  else
                  {
                    v568 = v530;
                    v584 = v570;
                  }

                  if (!v582)
                  {
                    v570 = v561;
                  }

                  v585 = v563 < v576;
                  if (v563 >= v576)
                  {
                    v586 = v563;
                  }

                  else
                  {
                    v586 = v576;
                  }

                  if (v563 >= v576)
                  {
                    v587 = v564;
                  }

                  else
                  {
                    v576 = v563;
                    v587 = v578;
                  }

                  if (v585)
                  {
                    v578 = v564;
                  }

                  v588 = v583 < v542;
                  if (v583 >= v542)
                  {
                    v589 = v583;
                  }

                  else
                  {
                    v589 = v542;
                  }

                  if (v583 >= v542)
                  {
                    v590 = v584;
                  }

                  else
                  {
                    v542 = v583;
                    v590 = v544;
                  }

                  if (v588)
                  {
                    v544 = v584;
                  }

                  v591 = v546 < v576;
                  if (v546 >= v576)
                  {
                    v592 = v546;
                  }

                  else
                  {
                    v592 = v576;
                  }

                  if (v546 < v576)
                  {
                    v593 = v578;
                  }

                  else
                  {
                    v546 = v576;
                    v593 = v547;
                  }

                  if (!v591)
                  {
                    v547 = v578;
                  }

                  v594 = v589 < v559;
                  if (v589 >= v559)
                  {
                    v595 = v589;
                  }

                  else
                  {
                    v595 = v559;
                  }

                  if (v589 >= v559)
                  {
                    v596 = v590;
                  }

                  else
                  {
                    v559 = v589;
                    v596 = v560;
                  }

                  if (v594)
                  {
                    v560 = v590;
                  }

                  *(&v709 + 1) = __PAIR64__(LODWORD(v595), LODWORD(v573));
                  *(&v713 + 1) = __PAIR64__(v596, v574);
                  v597 = v580 < v546;
                  if (v580 >= v546)
                  {
                    v598 = v580;
                  }

                  else
                  {
                    v598 = v546;
                  }

                  if (v580 >= v546)
                  {
                    v599 = v581;
                  }

                  else
                  {
                    v546 = v580;
                    v599 = v547;
                  }

                  if (v597)
                  {
                    v547 = v581;
                  }

                  *&v712 = __PAIR64__(LODWORD(v470), LODWORD(v546));
                  *&v716 = __PAIR64__(v497, v547);
                  v600 = v586 < v542;
                  if (v586 >= v542)
                  {
                    v601 = v586;
                  }

                  else
                  {
                    v601 = v542;
                  }

                  if (v586 >= v542)
                  {
                    v602 = v587;
                  }

                  else
                  {
                    v542 = v586;
                    v602 = v544;
                  }

                  if (v600)
                  {
                    v544 = v587;
                  }

                  v603 = v592 < v568;
                  if (v592 >= v568)
                  {
                    v604 = v592;
                  }

                  else
                  {
                    v604 = v568;
                  }

                  if (v592 >= v568)
                  {
                    v605 = v593;
                  }

                  else
                  {
                    v568 = v592;
                    v605 = v570;
                  }

                  if (!v603)
                  {
                    v593 = v570;
                  }

                  v606 = v575 < v559;
                  if (v575 >= v559)
                  {
                    v607 = v575;
                  }

                  else
                  {
                    v607 = v559;
                  }

                  if (v575 >= v559)
                  {
                    v608 = v577;
                  }

                  else
                  {
                    v559 = v575;
                    v608 = v560;
                  }

                  if (!v606)
                  {
                    v577 = v560;
                  }

                  v609 = v598 < v569;
                  if (v598 >= v569)
                  {
                    v610 = v598;
                  }

                  else
                  {
                    v610 = v569;
                  }

                  if (v598 >= v569)
                  {
                    v611 = v599;
                  }

                  else
                  {
                    v569 = v598;
                    v611 = v571;
                  }

                  if (v609)
                  {
                    v571 = v599;
                  }

                  v612 = v601 < v559;
                  if (v601 >= v559)
                  {
                    v613 = v601;
                  }

                  else
                  {
                    v613 = v559;
                  }

                  if (v601 < v559)
                  {
                    v614 = v577;
                  }

                  else
                  {
                    v601 = v559;
                    v614 = v602;
                  }

                  if (v612)
                  {
                    v577 = v602;
                  }

                  *&v710 = __PAIR64__(LODWORD(v613), LODWORD(v607));
                  *&v714 = __PAIR64__(v614, v608);
                  v615 = v610 < v568;
                  if (v610 >= v568)
                  {
                    v616 = v610;
                  }

                  else
                  {
                    v616 = v568;
                  }

                  if (v610 >= v568)
                  {
                    v617 = v611;
                  }

                  else
                  {
                    v568 = v610;
                    v617 = v593;
                  }

                  if (!v615)
                  {
                    v611 = v593;
                  }

                  *(&v711 + 1) = __PAIR64__(LODWORD(v569), LODWORD(v568));
                  *(&v715 + 1) = __PAIR64__(v571, v611);
                  if (v604 >= v601)
                  {
                    v618 = v604;
                  }

                  else
                  {
                    v618 = v601;
                  }

                  if (v604 >= v601)
                  {
                    v619 = v601;
                  }

                  else
                  {
                    v619 = v604;
                  }

                  if (v604 >= v601)
                  {
                    v620 = v605;
                  }

                  else
                  {
                    v620 = v577;
                  }

                  if (v604 < v601)
                  {
                    v577 = v605;
                  }

                  v621 = v616 < v542;
                  if (v616 >= v542)
                  {
                    v622 = v616;
                  }

                  else
                  {
                    v622 = v542;
                  }

                  if (v616 >= v542)
                  {
                    v623 = v617;
                  }

                  else
                  {
                    v542 = v616;
                    v623 = v544;
                  }

                  if (!v621)
                  {
                    v617 = v544;
                  }

                  if (v622 >= v619)
                  {
                    v624 = v622;
                  }

                  else
                  {
                    v624 = v619;
                  }

                  *(&v710 + 1) = __PAIR64__(LODWORD(v624), LODWORD(v618));
                  if (v622 >= v619)
                  {
                    v625 = v619;
                  }

                  else
                  {
                    v625 = v622;
                  }

                  *&v711 = __PAIR64__(LODWORD(v542), LODWORD(v625));
                  if (v622 >= v619)
                  {
                    v626 = v623;
                  }

                  else
                  {
                    v626 = v577;
                  }

                  *(&v714 + 1) = __PAIR64__(v626, v620);
                  if (v622 >= v619)
                  {
                    v627 = v577;
                  }

                  else
                  {
                    v627 = v623;
                  }

                  *&v715 = __PAIR64__(v617, v627);
                }

                else
                {
                  v379 = v364 < v367;
                  if (v364 >= v367)
                  {
                    v380 = v364;
                  }

                  else
                  {
                    v380 = v367;
                  }

                  if (v364 < v367)
                  {
                    v381 = v369;
                  }

                  else
                  {
                    v364 = v367;
                    v381 = v366;
                  }

                  if (!v379)
                  {
                    v366 = v369;
                  }

                  v382 = v363 < v368;
                  if (v363 >= v368)
                  {
                    v383 = v363;
                  }

                  else
                  {
                    v383 = v368;
                  }

                  if (v363 < v368)
                  {
                    v384 = v370;
                  }

                  else
                  {
                    v363 = v368;
                    v384 = v365;
                  }

                  if (!v382)
                  {
                    v365 = v370;
                  }

                  v385 = v372 < v376;
                  if (v372 >= v376)
                  {
                    v386 = v372;
                  }

                  else
                  {
                    v386 = v376;
                  }

                  if (v372 < v376)
                  {
                    v387 = v378;
                  }

                  else
                  {
                    v372 = v376;
                    v387 = v374;
                  }

                  if (!v385)
                  {
                    v374 = v378;
                  }

                  v388 = v371 < v375;
                  if (v371 >= v375)
                  {
                    v389 = v371;
                  }

                  else
                  {
                    v389 = v375;
                  }

                  if (v371 < v375)
                  {
                    v390 = v377;
                  }

                  else
                  {
                    v371 = v375;
                    v390 = v373;
                  }

                  if (!v388)
                  {
                    v373 = v377;
                  }

                  v391 = v383 < v364;
                  if (v383 >= v364)
                  {
                    v392 = v383;
                  }

                  else
                  {
                    v392 = v364;
                  }

                  if (v383 >= v364)
                  {
                    v393 = v384;
                  }

                  else
                  {
                    v364 = v383;
                    v393 = v366;
                  }

                  if (v391)
                  {
                    v366 = v384;
                  }

                  v394 = v389 < v372;
                  if (v389 >= v372)
                  {
                    v395 = v389;
                  }

                  else
                  {
                    v395 = v372;
                  }

                  if (v389 >= v372)
                  {
                    v396 = v390;
                  }

                  else
                  {
                    v372 = v389;
                    v396 = v374;
                  }

                  if (v394)
                  {
                    v374 = v390;
                  }

                  v397 = v380 < v386;
                  if (v380 >= v386)
                  {
                    v398 = v380;
                  }

                  else
                  {
                    v398 = v386;
                  }

                  if (v380 >= v386)
                  {
                    v399 = v381;
                  }

                  else
                  {
                    v386 = v380;
                    v399 = v387;
                  }

                  if (v397)
                  {
                    v387 = v381;
                  }

                  v400 = v363 < v371;
                  if (v363 >= v371)
                  {
                    v401 = v363;
                  }

                  else
                  {
                    v401 = v371;
                  }

                  if (v363 >= v371)
                  {
                    v402 = v365;
                  }

                  else
                  {
                    v371 = v363;
                    v402 = v373;
                  }

                  if (v400)
                  {
                    v373 = v365;
                  }

                  v403 = v392 < v395;
                  if (v392 >= v395)
                  {
                    v404 = v392;
                  }

                  else
                  {
                    v404 = v395;
                  }

                  if (v392 < v395)
                  {
                    v405 = v396;
                  }

                  else
                  {
                    v392 = v395;
                    v405 = v393;
                  }

                  if (!v403)
                  {
                    v393 = v396;
                  }

                  v406 = v364 < v372;
                  if (v364 >= v372)
                  {
                    v407 = v364;
                  }

                  else
                  {
                    v407 = v372;
                  }

                  if (v364 >= v372)
                  {
                    v408 = v366;
                  }

                  else
                  {
                    v372 = v364;
                    v408 = v374;
                  }

                  if (v406)
                  {
                    v374 = v366;
                  }

                  v409 = v404 < v386;
                  if (v404 >= v386)
                  {
                    v410 = v404;
                  }

                  else
                  {
                    v410 = v386;
                  }

                  if (v404 < v386)
                  {
                    v411 = v387;
                  }

                  else
                  {
                    v404 = v386;
                    v411 = v405;
                  }

                  if (!v409)
                  {
                    v405 = v387;
                  }

                  *&v709 = __PAIR64__(LODWORD(v410), LODWORD(v398));
                  *&v713 = __PAIR64__(v411, v399);
                  v412 = v401 < v372;
                  if (v401 >= v372)
                  {
                    v413 = v401;
                  }

                  else
                  {
                    v413 = v372;
                  }

                  if (v401 >= v372)
                  {
                    v414 = v402;
                  }

                  else
                  {
                    v372 = v401;
                    v414 = v374;
                  }

                  if (v412)
                  {
                    v374 = v402;
                  }

                  *(&v710 + 1) = __PAIR64__(LODWORD(v371), LODWORD(v372));
                  *(&v714 + 1) = __PAIR64__(v373, v374);
                  v415 = v407 < v404;
                  if (v407 >= v404)
                  {
                    v416 = v407;
                  }

                  else
                  {
                    v416 = v404;
                  }

                  if (v407 >= v404)
                  {
                    v417 = v408;
                  }

                  else
                  {
                    v404 = v407;
                    v417 = v405;
                  }

                  if (v415)
                  {
                    v405 = v408;
                  }

                  v418 = v413 < v392;
                  if (v413 >= v392)
                  {
                    v419 = v413;
                  }

                  else
                  {
                    v419 = v392;
                  }

                  if (v413 >= v392)
                  {
                    v420 = v414;
                  }

                  else
                  {
                    v392 = v413;
                    v420 = v393;
                  }

                  if (v418)
                  {
                    v393 = v414;
                  }

                  if (v419 >= v404)
                  {
                    v421 = v419;
                  }

                  else
                  {
                    v421 = v404;
                  }

                  *(&v709 + 1) = __PAIR64__(LODWORD(v421), LODWORD(v416));
                  if (v419 >= v404)
                  {
                    v422 = v404;
                  }

                  else
                  {
                    v422 = v419;
                  }

                  *&v710 = __PAIR64__(LODWORD(v392), LODWORD(v422));
                  if (v419 >= v404)
                  {
                    v423 = v420;
                  }

                  else
                  {
                    v423 = v405;
                  }

                  *(&v713 + 1) = __PAIR64__(v423, v417);
                  if (v419 >= v404)
                  {
                    v424 = v405;
                  }

                  else
                  {
                    v424 = v420;
                  }

                  *&v714 = __PAIR64__(v393, v424);
                }

                if ((v332 & 0xFC) == 0)
                {
                  goto LABEL_1212;
                }

                if (v354 < 1)
                {
                  LODWORD(v628) = 0;
                }

                else
                {
                  v628 = 0;
                  v629 = 0.0;
                  v630 = 0.0;
                  v631 = 100.0 / v358;
                  while (v629 <= 30.0 || v628 <= 1)
                  {
                    v630 = v630 + *(&v709 + v628);
                    v629 = v631 * v630;
                    if (v354 == ++v628)
                    {
                      goto LABEL_1212;
                    }
                  }
                }

                if (v628 < v354)
                {
                  v628 = v628;
                  v633 = v354;
                  do
                  {
                    v425 = &v713;
                    v356 &= ~(1 << *(&v713 + v628++));
                  }

                  while (v633 != v628);
                }

                else
                {
LABEL_1212:
                  v425 = &v713;
                }
              }

              else
              {
                LOWORD(v356) = v356 | v362;
                v425 = xmmword_277BEE5E8;
              }

              v634 = v425[1];
              v703 = *v425;
              v704 = v634;
              v635 = v425[3];
              v705 = v425[2];
              v706 = v635;
              LOWORD(v93) = v356;
              goto LABEL_141;
            }

            v351 = &unk_277BF1238 + 8 * v332 - 8;
          }

          v352 = *v351;
          goto LABEL_476;
        }

        v44 = 0;
      }

      v33 = v671;
      goto LABEL_120;
    }

    goto LABEL_34;
  }

  v31 = 1;
LABEL_13:
  v32 = 1;
  v33 = v671;
LABEL_148:
  v96 = v694 >> v23;
  v97 = v699;
  if ((*(*(a2 + 8376) + 192) & 8) != 0)
  {
    v98 = 1 << (2 * *(a2 + 11072) - 16);
    v29 = (v29 + (v98 >> 1)) >> (2 * *(a2 + 11072) - 16);
    v97 = (v699 + (v98 >> 1)) >> (2 * *(a2 + 11072) - 16);
    v699 = v97;
  }

  v99 = 16 * v29;
  v684 = v21 | a11 | (v96 * v96 * v33[3] < v97);
  v100 = v33[7];
  if (!v100 || v97 < v33[5] || ((0x61810uLL >> v26) & 1) != 0)
  {
    v641 = 0;
    v645 = 0;
  }

  else
  {
    v101 = v31 ^ 1;
    if (v100 != 1)
    {
      v101 = 1;
    }

    if (v101)
    {
      v641 = 0;
      v645 = v31;
    }

    else
    {
      if (*(a2 + 116284) == 1)
      {
        v641 = 0;
        v30 = 1;
      }

      else
      {
        if (v32 == 1)
        {
          v30 = 0;
        }

        v641 = v30;
      }

      v645 = v30;
    }
  }

  v657 = v96;
  v660 = v689[4];
  v719 = 0uLL;
  v720 = 0;
  v724 = 0;
  __dst = 0u;
  v723 = 0u;
  result = sub_277A91270(a1 + 245616, a2, v13, 0, &v719);
  v106 = 0;
  v668 = 0;
  v107 = 0;
  v647 = 0;
  v108 = *v667;
  LODWORD(__dst) = ((0x61E18uLL >> v672) & 1) + ((0x1810uLL >> v672) & 1);
  BYTE4(__dst) = v13;
  DWORD2(v723) = v108;
  HIDWORD(v723) = v684 == 0;
  LODWORD(v724) = v684 != 0;
  *&v723 = 0;
  *(&__dst + 1) = 0;
  v692 = v32;
  v681 = a2 + 136 * v646;
  v109 = 16 * v16;
  v110 = a2 + 11108;
  v643 = v719.u8[1] - 17;
  v649 = 1 - __dst;
  v652 = __dst - 1;
  v695 = 0x7FFFFFFFFFFFFFFFLL;
  v111.f64[0] = NAN;
  v111.f64[1] = NAN;
  v676 = vnegq_f64(v111);
  v678 = v719.u8[1];
  v640 = &off_27A722620 + 32 * v719.u8[1];
  v642 = (v13 - 17);
  while (1)
  {
    v112 = *(&v703 + 4 * v106);
    if (v112 == 255 || ((v692 >> v112) & 1) == 0)
    {
      goto LABEL_229;
    }

    v719.i8[0] = *(&v703 + 4 * v106);
    if (*(a1 + 264592) == 1 && !*(v110 + 4 * (*(v666 + 167) & 7)))
    {
      *(&__dst + 1) = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v112);
      v110 = a2 + 11108;
      LODWORD(v13) = a8;
      *&v723 = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v112);
    }

    if (!a3)
    {
      *(*(a2 + 8328) + v648) = v112;
    }

    *(v721 + 8) = v676;
    *(&v721[1] + 8) = xmmword_277BB7270;
    v721[0].i64[0] = 0x7FFFFFFFLL;
    if (v31)
    {
      sub_277ADCA70(*v689 + 2 * (4 * (a6 + byte_277C3CAFE[a7] * a5)), v689[3] + 4 * v109, byte_277C3CAFE[a7], &v719, v102, v103, v104, v105);
    }

    else
    {
      if (v678 <= 0xC && ((1 << v678) & 0x1810) != 0)
      {
        v113 = 4096;
      }

      else if (v643 >= 2)
      {
        v113 = 4 * dword_277BFE7FC[v678];
      }

      else
      {
        v113 = 2048;
      }

      v114 = (*(v681 + 24) + 4 * v109);
      bzero(v114, v113);
      *v114 = (v664 * word_277BFC7E0[v678]) >> 12;
      v16 = a4;
    }

    if (!v684)
    {
      v115 = v671[4];
      if (v115 != -1)
      {
        if (v13 <= 0xC && ((1 << v13) & 0x1810) != 0)
        {
          v116 = 1008;
        }

        else if (v642 >= 2)
        {
          v116 = dword_277BFE7FC[v672] - 16;
        }

        else
        {
          v116 = 496;
        }

        v117 = *(v681 + 24);
        v118 = (v117 + 4 * v109);
        if (v31)
        {
          v119 = vaddq_s32(vabsq_s32(v118[1]), vabsq_s32(*v118));
          v120 = vaddq_s32(vabsq_s32(v118[3]), vabsq_s32(v118[2]));
          if (v116)
          {
            v121 = (v117 + 4 * v109 + 112);
            do
            {
              v119 = vaddq_s32(vaddq_s32(vabsq_s32(v121[-3]), v119), vabsq_s32(v121[-1]));
              v120 = vaddq_s32(vaddq_s32(vabsq_s32(v121[-2]), v120), vabsq_s32(*v121));
              v121 += 4;
              v116 -= 16;
            }

            while (v116);
          }

          v122 = vaddvq_s32(vaddq_s32(v119, v120));
        }

        else
        {
          v122 = v118->i32[0];
          if (v118->i32[0] < 0)
          {
            v122 = -v122;
          }
        }

        v123 = *v667;
        v124 = v122 << v652;
        v125 = v122 >> v649;
        if (((0x61E18uLL >> v672) & 1) + ((0x1810uLL >> v672) & 1) > 1)
        {
          v125 = v124;
        }

        v126 = v125 >> (*(a2 + 11072) - 8);
        v127 = dword_277BF1260[v672];
        LODWORD(__dst) = ((0x61E18uLL >> v672) & 1) + ((0x1810uLL >> v672) & 1);
        v128 = v115 * v657 * v127;
        BYTE4(__dst) = v13;
        v129 = v128 >= v126;
        v130 = v128 < v126;
        v131 = v129;
        *(&v723 + 1) = __PAIR64__(v131, v123);
        LODWORD(v724) = v130;
        *(&__dst + 1) = 0;
        *&v723 = 0;
      }
    }

    sub_277A91114(a2, a3, v16, &v719, &__dst);
    v13 = a8;
    if (HIDWORD(v723))
    {
      result = sub_277A8E454(a1, a2, a3, v16, a8, v112, a9, &v700);
      v133 = v700;
    }

    else
    {
      result = sub_277B316E4(a2, a3, v16, a8, v112, a9, *(a1 + 246117), v132);
      v133 = result;
      v700 = result;
    }

    if (v695 < (*(a2 + 16920) * v133 + 256) >> 9)
    {
      v16 = a4;
      goto LABEL_229;
    }

    if (!*(v660 + 2 * a4))
    {
      v721[1].i64[1] = v99;
      v721[0].i64[1] = v99;
      result = v99;
      goto LABEL_222;
    }

    if ((v31 & 1) == 0)
    {
      v721[1].i64[1] = v99;
      result = sub_277A41C98(a1, a2, a3, a7, a4, a5, a6, a8);
      v721[0].i64[1] = result;
      goto LABEL_222;
    }

    if (v645)
    {
      sub_277A3DF98(a2, a3, a4, a8, *(&__dst + 1), v640[2 * v112], &v721[0].i64[1], &v721[1].i64[1]);
      result = v721[0].i64[1];
      goto LABEL_222;
    }

    v134 = dword_277BFE7FC[v672] << 14;
    if (a8 != 4 && v99 < v134)
    {
      v135 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_216;
    }

    sub_277A3DF98(a2, a3, a4, a8, *(&__dst + 1), v640[2 * v112], &v721[0].i64[1], &v721[1].i64[1]);
    if (a8 != 4 || v99 < v134)
    {
      v135 = v721[0].i64[1];
LABEL_216:
      result = sub_277A41C98(a1, a2, a3, a7, a4, a5, a6, a8);
      if (result <= v135)
      {
        v136 = v135;
      }

      else
      {
        v136 = result;
      }

      if (v99 >= v134)
      {
        result = v136;
      }

      goto LABEL_221;
    }

    v135 = v721[0].i64[1];
    if (v721[1].i64[1] > 2 * (v99 - v721[1].i64[1]))
    {
      goto LABEL_216;
    }

    result = v721[0].i64[1] + v99 - v721[1].i64[1];
LABEL_221:
    v110 = a2 + 11108;
    v721[0].i64[1] = result;
    v721[1].i64[1] = v99;
    v13 = a8;
LABEL_222:
    v137 = *(a2 + 16920);
    v721[0].i32[0] = v133;
    v138 = ((v137 * v133 + 256) >> 9) + (result << 7);
    if (v138 >= v695)
    {
      v16 = a4;
    }

    else
    {
      v139 = v721[1];
      *a13 = v721[0];
      *(a13 + 16) = v139;
      *(a13 + 32) = v721[2].i64[0];
      v16 = a4;
      v647 = *(v689[5] + a4);
      v668 = *(v689[4] + 2 * a4);
      v140 = v689[1];
      v689[1] = v665;
      v665 = v140;
      v107 = v112;
      v695 = v138;
    }

    v141 = v688[8];
    if (v141 && v695 - (v695 >> v141) > a12)
    {
      goto LABEL_230;
    }

    if (v688[3] && !v668)
    {
      break;
    }

LABEL_229:
    if (++v106 == 16)
    {
      goto LABEL_230;
    }
  }

  v668 = 0;
LABEL_230:
  *(a13 + 32) = v668 == 0;
  if (!a3)
  {
    v142 = *(a2 + 8336);
    *(*(a2 + 8328) + a6 + v142 * a5) = v107;
    v143 = *&byte_277BFDBA0[4 * v672];
    v144 = *&byte_277BFDB54[4 * v672];
    if ((0x41010uLL >> v672) & 1) != 0 || ((0x20810uLL >> v672))
    {
      v145 = 0;
      v146 = a6 + v142 * a5;
      v147 = 4 * v142;
      do
      {
        v148 = 0;
        do
        {
          *(*(a2 + 8328) + v146 + v148) = v107;
          v148 += 4;
        }

        while (v148 < v143);
        v145 += 4;
        v146 += v147;
      }

      while (v145 < v144);
    }
  }

  *(v689[5] + v16) = v647;
  *(v689[4] + 2 * v16) = v668;
  v689[1] = v665;
  v149 = v641;
  if (!v668)
  {
    v149 = 0;
  }

  if (v149 == 1)
  {
    result = sub_277A41C98(a1, a2, a3, a7, v16, a5, a6, v13);
    *(a13 + 8) = result;
    *(a13 + 24) = v99;
  }

  v150 = **(a2 + 8280);
  v151 = *(v150 + 167);
  if ((v151 & 0x80) != 0)
  {
    goto LABEL_252;
  }

  if (!v668)
  {
    goto LABEL_252;
  }

  if (v150[16] > 0)
  {
    goto LABEL_252;
  }

  v152 = *&byte_277BFDB54[4 * v672];
  if (v152 + a5 >= byte_277C36D60[a7] && *&byte_277BFDBA0[4 * v672] + a6 >= byte_277C3F990[a7])
  {
    goto LABEL_252;
  }

  v153 = v109;
  v154 = a2 + 136 * v646;
  v156 = *(v154 + 32);
  v155 = (v154 + 32);
  v157 = *(v156 + 2 * v16);
  if (!*(v156 + 2 * v16))
  {
    goto LABEL_251;
  }

  v158 = *(a1 + 246117);
  if (*(a2 + 11108 + 4 * (v151 & 7)))
  {
    LOBYTE(v159) = 0;
    goto LABEL_249;
  }

  if (!a3)
  {
    LOBYTE(v159) = v150[145];
    if (((0x61810uLL >> v159) & 1) == 0)
    {
      v160 = *(*(a2 + 8328) + a6 + *(a2 + 8336) * a5);
      goto LABEL_250;
    }

LABEL_249:
    v160 = 0;
    goto LABEL_250;
  }

  v159 = byte_277C3BD80[byte_277C3BCDE[4 * *v150 + 2 * *(a2 + 2608 * v646 + 436) + *(a2 + 2608 * v646 + 440)]];
  if (v159 > 0x10)
  {
    if (v159 == 17)
    {
      LOBYTE(v159) = 9;
    }

    else if (v159 == 18)
    {
      LOBYTE(v159) = 10;
    }
  }

  else if (v159 - 11 < 2 || v159 == 4)
  {
    LOBYTE(v159) = 3;
  }

  if ((0x61810uLL >> v159))
  {
    goto LABEL_249;
  }

  v256 = byte_277BFC848[byte_277C32971[v150[3]]];
  if ((0x18608uLL >> v159))
  {
    v257 = 0;
  }

  else if (v158)
  {
    v257 = 2;
  }

  else
  {
    v257 = byte_277C3C219[(0x60604uLL >> v159) & 1];
  }

  if (dword_277BFC858[16 * v257 + v256])
  {
    v160 = v256;
  }

  else
  {
    v160 = 0;
  }

LABEL_250:
  result = sub_277A4C8A0(a2 + 416, *(a2 + 136 * v646 + 8) + 4 * v153, v160, v159, *(a2 + 2608 * v646 + 448) + 4 * (a6 + *(a2 + 2608 * v646 + 472) * a5), *(a2 + 2608 * v646 + 472), v157, v158);
LABEL_251:
  if (!a3)
  {
    if (v107)
    {
      if (!*(*v155 + 2 * v16))
      {
        v206 = *(a2 + 8336);
        *(*(a2 + 8328) + a6 + v206 * a5) = 0;
        v207 = *&byte_277BFDBA0[4 * v672];
        if ((0x41010uLL >> v672) & 1) != 0 || ((0x20810uLL >> v672))
        {
          v208 = 0;
          v209 = a6 + v206 * a5;
          v210 = 4 * v206;
          do
          {
            v211 = 0;
            do
            {
              *(*(a2 + 8328) + v209 + v211) = 0;
              v211 += 4;
            }

            while (v211 < v207);
            v208 += 4;
            v209 += v210;
          }

          while (v208 < v152);
        }
      }
    }
  }

LABEL_252:
  v689[1] = v644;
  return result;
}

uint64_t sub_277A41C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v55 = v11;
  v13 = v12;
  v62 = v8;
  v65 = *MEMORY[0x277D85DE8];
  v15 = v12 + 136 * v14;
  v57 = *(*(v15 + 32) + 2 * v9);
  v17 = byte_277C393B1[v16];
  v61 = byte_277C3CAFE[v17];
  v18 = v61;
  v54 = v17;
  v19 = byte_277C3CAE8[v17];
  v59 = v16;
  v60 = v19;
  v20 = *(v15 + 72);
  v21 = v14;
  v56 = v12 + 432;
  v22 = v12 + 432 + 2608 * v14;
  v23 = *(v22 + 40);
  v25 = v24;
  v27 = v26;
  v58 = *(v15 + 48);
  v28 = (*(v22 + 16) + 4 * (v24 + v23 * v26));
  v29 = *(v15 + 8);
  if ((*(*(v13 + 8376) + 192) & 8) != 0)
  {
    v30 = v64 >> 1;
    sub_277BB3B5C(2 * v28, v23, v64, 64, v61, v19);
  }

  else
  {
    v30 = v64;
    sub_277BB3A8C(v28, v23, v64, 64, v61, v19);
  }

  v31 = **(v13 + 8280);
  v32 = *(v31 + 167);
  if (*(v13 + 4 * (v32 & 7) + 11108) || ((0x61810uLL >> v59) & 1) != 0)
  {
    v35 = 0;
  }

  else if (v21)
  {
    if ((v32 & 0x80) != 0 || *(v31 + 16) > 0)
    {
      v33 = *(*(v13 + 8328) + (v25 << *(v13 + 3044)) + *(v13 + 8336) * (v27 << *(v13 + 3048)));
      v34 = (v32 & 0x80) != 0 || *(v31 + 16) > 0;
    }

    else
    {
      v34 = 0;
      v33 = byte_277BFC848[byte_277C32971[*(v31 + 3)]];
    }

    if (((0x18608uLL >> v59) & 1) == 0)
    {
      if (*(v62 + 246117))
      {
        if (v34)
        {
          LOBYTE(v34) = 1;
        }

        else
        {
          LOBYTE(v34) = 2;
        }
      }

      else
      {
        LOBYTE(v34) = byte_277C3C219[2 * v34 + ((0x60604uLL >> v59) & 1)];
      }
    }

    if (dword_277BFC858[16 * v34 + v33])
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = *(*(v13 + 8328) + v25 + *(v13 + 8336) * v27);
  }

  sub_277A4C8A0(v13 + 416, v29 + 64 * v10, v35, v59, v30, 64, v57, *(v62 + 246117));
  v36 = v56 + 2608 * v21;
  v37 = *(v13 + 8352);
  if (v37 < 0)
  {
    v38 = (v37 >> (*(v36 + 8) + 3)) - 4 * v27 + byte_277C3CAE8[v55];
    if (v38 >= v19)
    {
      v39 = v19;
    }

    else
    {
      v39 = v38;
    }

    if (v38 >= 0)
    {
      v19 = v39;
    }

    else
    {
      v19 = 0;
    }
  }

  v40 = v58 + 4 * (v25 + v20 * v27);
  v41 = *(v13 + 8344);
  if (v41 < 0)
  {
    v42 = (v41 >> (*(v36 + 4) + 3)) - 4 * v25 + byte_277C3CAFE[v55];
    if (v42 >= v61)
    {
      v43 = v61;
    }

    else
    {
      v43 = v42;
    }

    if (v42 >= 0)
    {
      v18 = v43;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v19 == v60 && v18 == v61)
  {
    v63 = 0;
    (*(*v62 + (v54 << 7) + 51464))(v40, v20, v30, 64, &v63);
    LODWORD(v44) = v63;
  }

  else if ((*(*(v13 + 8376) + 192) & 8) != 0)
  {
    if (v19 < 1)
    {
      v49 = 0;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = 2 * v30;
      v51 = 2 * v40;
      do
      {
        if (v18 >= 1)
        {
          v52 = 0;
          do
          {
            v49 += (*(v51 + v52) - *(v50 + v52)) * (*(v51 + v52) - *(v50 + v52));
            v52 += 2;
          }

          while (2 * v18 != v52);
        }

        v50 += 128;
        ++v48;
        v51 += 2 * v20;
      }

      while (v48 != v19);
    }

    v44 = (v49 + ((1 << (2 * *(v13 + 11072) - 16)) >> 1)) >> (2 * *(v13 + 11072) - 16);
  }

  else if (v19 < 1)
  {
    LODWORD(v44) = 0;
  }

  else
  {
    LODWORD(v44) = 0;
    for (i = 0; i != v19; ++i)
    {
      if (v18 >= 1)
      {
        for (j = 0; j != v18; ++j)
        {
          v47 = *(v40 + j) - *(v30 + j);
          LODWORD(v44) = v44 + v47 * v47;
        }
      }

      v40 += v20;
      v30 += 64;
    }
  }

  return (16 * v44);
}

void sub_277A42130(uint64_t result, uint64_t a2, int *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, int32x4_t a13)
{
  v188[4] = *MEMORY[0x277D85DE8];
  v16 = (result + 396172);
  *a3 = 0x7FFFFFFFLL;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = vnegq_f64(v17);
  *(a3 + 2) = v18;
  v162 = a3 + 2;
  *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 32) = 0;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL || (v19 = *(result + 396224)) == 0)
  {
    v32 = a4;
    goto LABEL_33;
  }

  v163 = (result + 396172);
  v20 = *(a2 + 436);
  v21 = *(a2 + 440);
  v22 = byte_277C3BCDE[4 * a4 + 2 * v20 + v21];
  v172 = *(**(a2 + 8280) + 16);
  v23 = *(a2 + 8352);
  v24 = ((v23 >> (v21 + 3)) + byte_277C3CAE8[v22]) & ~(((v23 >> (v21 + 3)) + byte_277C3CAE8[v22]) >> 31);
  if (v23 < 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = byte_277C3CAE8[v22];
  }

  v26 = *(a2 + 8344);
  v27 = ((v26 >> (v20 + 3)) + byte_277C3CAFE[v22]) & ~(((v26 >> (v20 + 3)) + byte_277C3CAFE[v22]) >> 31);
  if (v26 < 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = byte_277C3CAFE[v22];
  }

  v29 = *(a2 + 11072);
  if ((*(*(a2 + 8376) + 192) & 8) != 0)
  {
    sub_277B2F1E0(*(a2 + 48), *(a2 + 72), *(a2 + 448), *(a2 + 472), v28, v25, v18.f64[0], a10, a11, a12, a13);
    v31 = 0;
  }

  else
  {
    v30 = off_280ABCBE0(*(a2 + 48), *(a2 + 72), *(a2 + 448), *(a2 + 472));
    v31 = (*(*(a2 + 8376) + 192) & 8) == 0;
  }

  v33 = a2 + 153176;
  v34 = (v30 + ((1 << (2 * v29 - 16)) >> 1)) >> (2 * v29 - 16);
  if (v31)
  {
    LOBYTE(v35) = 3;
    if (v34)
    {
      goto LABEL_15;
    }

LABEL_29:
    v45 = 0;
LABEL_32:
    v32 = a4;
    *(v33 + 4 * v172) = v45;
    v16 = v163;
    goto LABEL_33;
  }

  v35 = *(a2 + 11072) - 5;
  if (!v34)
  {
    goto LABEL_29;
  }

LABEL_15:
  v36 = *(*(a2 + 128) + 2) >> v35;
  if (v36 <= 1)
  {
    v36 = 1;
  }

  v37 = (v28 * v25);
  v38 = v34 / v37;
  v39 = log2(v38 / (v36 * v36));
  *&v178 = 0;
  v188[0] = 0.0;
  sub_277A8B128(v22, &v178, v188, v38, v39);
  v40 = 0.0;
  if (*&v178 * v37 >= 0.0)
  {
    v41 = *&v178 * v37;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = (v41 + 0.5);
  if (!v42)
  {
    goto LABEL_30;
  }

  if (v38 * v188[0] * v37 >= 0.0)
  {
    v40 = v38 * v188[0] * v37;
  }

  v43 = ((v40 + 0.5) << 7) + ((*(a2 + 16920) * v42 + 256) >> 9);
  if (v43 >= v34 << 11)
  {
LABEL_30:
    v45 = -1;
    if (v34 < 0xFFFFFFFFLL)
    {
      v45 = v34;
    }

    goto LABEL_32;
  }

  v44 = -1;
  if (v34 < 0xFFFFFFFFLL)
  {
    v44 = v34;
  }

  *(v33 + 4 * v172) = v44;
  v16 = v163;
  v32 = a4;
  if (a5 >= (v43 * *(&unk_277BEE360 + v19 - 1)) >> 3)
  {
LABEL_33:
    v46 = *(a2 + 416);
    if (v46 < *(a2 + 8256) || v46 + byte_277C36D60[v32] >= *(a2 + 8260) || (v47 = *(a2 + 420), v47 < *(a2 + 8264)) || v47 + byte_277C3F990[v32] >= *(a2 + 8268))
    {
      v53 = 0;
      v50 = 0;
      v161 = 0;
      v48 = 1 << (byte_277C3BCB6[v32] - 4);
    }

    else
    {
      v48 = 1 << (byte_277C3BCB6[v32] - 4);
      if (v16[21])
      {
        v49 = a4 + 32 * off_280AB5FE0(*(a2 + 153104) + 16968, *a2, 2 * byte_277C3CAE8[v32] * byte_277C3CAFE[v32]);
        v50 = *(a2 + 153104);
        v161 = v49;
        if (a5 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v51 = *(v50 + 16964);
          if (v51 >= 1)
          {
            v52 = *(v50 + 16960);
            v53 = 1;
            while (1)
            {
              v54 = v52 <= 0 ? -(-v52 & 7) : v52 & 7;
              if (*(v50 + 2120 * v54 + 2112) == v49)
              {
                break;
              }

              ++v52;
              if (!--v51)
              {
                goto LABEL_48;
              }
            }

            if (v54 != -1)
            {
              v115 = v50 + 2120 * v54;
              v116 = **(a2 + 8280);
              *(v116 + 145) = *v115;
              memcpy((a2 + 151049), (v115 + 17), v48);
              *(v116 + 146) = *(v115 + 1);
              memcpy(*(a2 + 8328), (v115 + 1041), v48);
              v117 = *(v115 + 2104);
              v118 = *(v115 + 2088);
              *a3 = *(v115 + 2072);
              *(a3 + 1) = v118;
              *(a3 + 4) = v117;
              return;
            }
          }
        }

        v53 = 1;
      }

      else
      {
        v53 = 0;
        v50 = 0;
        v161 = 0;
      }
    }

LABEL_48:
    v177 = 0;
    if (*(a2 + 151020) && sub_277A42FC8(a2, a4, &v177, *(result + 246117), a5, a6, a7, a8))
    {
      sub_277A4332C(a2, a3, a4, v177);
      if (!v53)
      {
        return;
      }

      v55 = *(v50 + 16964);
      v56 = *(v50 + 16960);
      if (v55 > 7)
      {
        v68 = (v56 + 1) & 7;
        if (v56 + 1 <= 0)
        {
          v68 = -(-(v56 + 1) & 7);
        }

        *(v50 + 16960) = v68;
      }

      else
      {
        v57 = v56 + v55;
        v58 = v57 & 7;
        v60 = -v57;
        v59 = v60 < 0;
        v61 = v60 & 7;
        if (v59)
        {
          v56 = v58;
        }

        else
        {
          v56 = -v61;
        }

        *(v50 + 16964) = v55 + 1;
      }

      v69 = v50 + 2120 * v56;
      v70 = **(a2 + 8280);
      *(v69 + 2112) = v161;
      *v69 = *(v70 + 145);
      v71 = v48;
      goto LABEL_71;
    }

    if (a5)
    {
      v153 = v48;
      v151 = v53;
      v62 = a5;
      if (a5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v62 = a5;
        if (*(a2 + 151012))
        {
          if ((a5 ^ 0x7FFFFFFFFFFFFFFFLL) <= a5 >> 3)
          {
            v63 = 0;
          }

          else
          {
            v63 = a5 >> 3;
          }

          v62 = v63 + a5;
        }
      }

      v168 = *(a2 + 151012) != 0;
      v64 = byte_277C3F990[v32];
      v160 = v32;
      v65 = byte_277C36D60[v32];
      v66 = *(a2 + 552);
      v159 = *(a2 + 151012);
      memcpy(__dst, *(a2 + 544), v64);
      memcpy(v183, v66, v65);
      __n = v64;
      __memcpy_chk();
      v155 = v65;
      __memcpy_chk();
      v67 = v159;
      if (v159 != 2)
      {
        if (a4 - 13 <= 2 && *v16)
        {
          v67 = 2;
        }

        else
        {
          v75 = 768;
          if (v65 == v64)
          {
            v75 = 764;
          }

          v67 = *(result + 395392 + v75);
        }
      }

      v167 = v67;
      v76 = v160;
      v173 = byte_277C3BD80[v160];
      v77 = *(a2 + 8304);
      v78 = *(a2 + 8296);
      if (v77)
      {
        v79 = *(v77 + 144);
      }

      else
      {
        v79 = 0;
      }

      v80 = *&byte_277BFDB54[4 * v173];
      v170 = *&byte_277BFDBA0[4 * v173];
      v154 = a5;
      v152 = v50;
      v150 = v50 + 0x4000;
      if (v78)
      {
        v81 = *(v78 + 144);
      }

      else
      {
        v81 = 0;
      }

      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = v170 * v80;
      v88 = (a2 + 35968 + 8 * (v81 + v79));
      v89 = *(a2 + 16920);
      v165 = *v88;
      v166 = v88[1];
      v90 = (v89 * v166 + 256) >> 9;
      v91 = (v89 * v165 + 256) >> 9;
      *a3 = 0;
      *v162 = 0;
      *(v162 + 1) = 0;
      *(a3 + 32) = 1;
      v92 = byte_277C3CAE8[v160];
      *(v162 + 2) = 0;
      v93.f64[0] = NAN;
      v93.f64[1] = NAN;
      v164 = vnegq_f64(v93);
      v157 = v92;
      v158 = v80;
LABEL_82:
      v94 = *(a2 + 8352);
      v95 = v92;
      if (v94 < 0)
      {
        v95 = (v94 >> (*(a2 + 440) + 3)) + v92;
      }

      if (v86 < v95 >> 2)
      {
        v96 = 0;
        v97 = byte_277C3CAFE[v76];
        while (1)
        {
          v98 = *(a2 + 8344);
          v99 = v97;
          if (v98 < 0)
          {
            v99 = (v98 >> (*(a2 + 436) + 3)) + v97;
          }

          if (v96 >= v99 >> 2)
          {
            v92 = v157;
            v86 += v158;
            v76 = v160;
            goto LABEL_82;
          }

          if (v90 >= v91)
          {
            v100 = v91;
          }

          else
          {
            v100 = v90;
          }

          v101 = v62 - v100;
          LODWORD(v188[0]) = 1;
          v180 = 0;
          if (v62 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v101 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v178 = 0u;
          v179 = 0u;
          sub_277A43538(result, a2, v86, v96, v85, v173, v167, a4, __dst, v183, v182, v181, &v178, 0x7FFFFFFFFFFFFFFFLL, v101, v188, v168);
          if (!LODWORD(v188[0]) || v178 == 0x7FFFFFFF)
          {
            break;
          }

          v102 = *a3;
          if (v102 == 0x7FFFFFFF)
          {
            *(a3 + 2) = v164;
            v82 = 0x7FFFFFFFFFFFFFFFLL;
            *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
            *(a3 + 32) = 0;
            a3[1] = 0;
            v84 = 0x7FFFFFFF;
            v83 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            if (v102 + v178 >= 0x7FFFFFFF)
            {
              v84 = 0x7FFFFFFF;
            }

            else
            {
              v84 = v102 + v178;
            }

            *a3 = v84;
            if (!a3[1])
            {
              a3[1] = DWORD1(v178);
            }

            v82 = *(a3 + 1) + *(&v178 + 1);
            *(a3 + 1) = v82;
            v103 = *(a3 + 3);
            v83 = 0x7FFFFFFFFFFFFFFFLL;
            if (v103 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v83 = *(a3 + 3);
              if (*(&v179 + 1) != 0x7FFFFFFFFFFFFFFFLL)
              {
                v83 = *(&v179 + 1) + v103;
                *(a3 + 3) = *(&v179 + 1) + v103;
              }
            }

            *(a3 + 32) &= v180;
          }

          v104 = *(a2 + 16920);
          v90 = ((v104 * v166 + 256) >> 9) + (v83 << 7);
          v91 = ((v104 * (v84 + v165) + 256) >> 9) + (v82 << 7);
          v85 = (v85 + v87);
          v96 = (v96 + v170);
        }

        *a3 = 0x7FFFFFFF;
LABEL_110:
        v105.f64[0] = NAN;
        v105.f64[1] = NAN;
        *(a3 + 2) = vnegq_f64(v105);
        *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
        *(a3 + 32) = 0;
        goto LABEL_111;
      }

      if (v84 == 0x7FFFFFFF)
      {
        goto LABEL_111;
      }

      v107 = v90 <= v91;
      *(a3 + 32) = v107;
      if (v159)
      {
        v109 = v152;
        v108 = v153;
        v110 = v161;
        v111 = v151;
        v112 = v150;
        if (v16[14])
        {
          if ((v154 & 0x8000000000000000) == 0)
          {
            *a3 = 0;
            *(v162 + 1) = 0;
            *(v162 + 2) = 0;
            *v162 = 0;
            *(a3 + 32) = 1;
            if (*(a2 + 4 * (*(**(a2 + 8280) + 167) & 7) + 11108))
            {
              v113 = 0;
            }

            else
            {
              v113 = v173;
            }

            v174 = *&byte_277BFDBA0[4 * v113];
            if (*(a2 + 151012) == 2 || a4 - 13 <= 2 && *v16)
            {
              v114 = 2;
            }

            else
            {
              v119 = 768;
              if (v65 == __n)
              {
                v119 = 764;
              }

              v114 = *(result + 395392 + v119);
            }

            v169 = *&byte_277BFDB54[4 * v113];
            v120 = *(a2 + 552);
            memcpy(v188, *(a2 + 544), __n);
            memcpy(v187, v120, v155);
            __memcpy_chk();
            __memcpy_chk();
            v121 = 0;
            v122 = 0;
            v123 = 0;
            v124.f64[0] = NAN;
            v124.f64[1] = NAN;
            v171 = vnegq_f64(v124);
LABEL_132:
            v125 = 0;
            while (1)
            {
              v178 = 0u;
              v179 = 0u;
              v180 = 1;
              sub_277A4483C(result, a2, v122, v125, v123, v113, a4, v114, v188, v187, v186, v185, v154 - v121, &v178);
              v126 = v178;
              if (v178 == 0x7FFFFFFF)
              {
                break;
              }

              v127 = *a3;
              if (v127 == 0x7FFFFFFF)
              {
                v107 = 0;
                *(a3 + 2) = v171;
                v82 = 0x7FFFFFFFFFFFFFFFLL;
                *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
                *(a3 + 32) = 0;
                a3[1] = 0;
                v84 = 0x7FFFFFFF;
                v83 = 0x7FFFFFFFFFFFFFFFLL;
                v128 = *(&v178 + 1);
              }

              else
              {
                v129 = v127 + v178;
                if (v129 >= 0x7FFFFFFF)
                {
                  v84 = 0x7FFFFFFF;
                }

                else
                {
                  v84 = v129;
                }

                *a3 = v84;
                if (!a3[1])
                {
                  a3[1] = DWORD1(v178);
                }

                v128 = *(&v178 + 1);
                v82 = *(a3 + 1) + *(&v178 + 1);
                *(a3 + 1) = v82;
                v130 = *(a3 + 3);
                v83 = 0x7FFFFFFFFFFFFFFFLL;
                if (v130 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v83 = *(a3 + 3);
                  if (*(&v179 + 1) != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v83 = *(&v179 + 1) + v130;
                    *(a3 + 3) = *(&v179 + 1) + v130;
                  }
                }

                v107 = a3[8] & v180;
                *(a3 + 32) = v107;
              }

              v131 = *(a2 + 16920);
              v132 = ((v126 * v131 + 256) >> 9) + (v128 << 7);
              if (v132 >= ((SDWORD1(v178) * v131 + 256) >> 9) + (*(&v179 + 1) << 7))
              {
                v132 = ((SDWORD1(v178) * v131 + 256) >> 9) + (*(&v179 + 1) << 7);
              }

              v121 += v132;
              v123 = (v123 + v174 * v169);
              v125 = (v125 + v174);
              if (v125 >= __n)
              {
                v122 += v169;
                if (v122 < v155)
                {
                  goto LABEL_132;
                }

                v133 = *(a2 + 8304);
                v134 = *(a2 + 8296);
                if (v133)
                {
                  v133 = *(v133 + 144);
                }

                if (v134)
                {
                  v134 = *(v134 + 144);
                }

                v135 = (a2 + 35968 + 8 * (v134 + v133));
                v136 = *v135;
                v137 = ((v135[1] * v131 + 256) >> 9) + (v83 << 7);
                v138 = (((v136 + v84) * v131 + 256) >> 9) + (v82 << 7);
                if (v137 < v138)
                {
                  v84 = 0;
                  *a3 = 0;
                  *(a3 + 1) = v83;
                  v107 = 1;
                  *(a3 + 32) = 1;
                  v82 = v83;
                  v138 = v137;
                }

                if (v138 <= v154)
                {
                  break;
                }

                goto LABEL_156;
              }
            }
          }

          *a3 = 0x7FFFFFFFLL;
          goto LABEL_110;
        }
      }

      else
      {
LABEL_156:
        v109 = v152;
        v108 = v153;
        v110 = v161;
        v111 = v151;
        v112 = v150;
      }

      if (v107)
      {
        v139 = ((*(a2 + 16920) * v166 + 256) >> 9) + (v83 << 7);
      }

      else
      {
        v140 = v84 + v165;
        v141 = *(a2 + 16920);
        v139 = ((v141 * v140 + 256) >> 9) + (v82 << 7);
        if (!*(a2 + 4 * (*(**(a2 + 8280) + 167) & 7) + 11108))
        {
          v142 = ((v141 * v166 + 256) >> 9) + (v83 << 7);
          if (v139 >= v142)
          {
            v139 = v142;
          }
        }
      }

      if (v139 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!v111)
        {
          return;
        }

        v143 = *(v112 + 580);
        v144 = *(v112 + 576);
        if (v143 > 7)
        {
          v149 = (v144 + 1) & 7;
          if (v144 + 1 <= 0)
          {
            v149 = -(-(v144 + 1) & 7);
          }

          *(v112 + 576) = v149;
        }

        else
        {
          v145 = v144 + v143;
          v146 = v145 & 7;
          v147 = -v145;
          v59 = v147 < 0;
          v148 = v147 & 7;
          if (v59)
          {
            v144 = v146;
          }

          else
          {
            v144 = -v148;
          }

          *(v112 + 580) = v143 + 1;
        }

        v69 = v109 + 2120 * v144;
        v70 = **(a2 + 8280);
        *(v69 + 2112) = v110;
        *v69 = *(v70 + 145);
        v71 = v108;
LABEL_71:
        v72 = v71;
        memcpy((v69 + 17), (a2 + 151049), v71);
        *(v69 + 1) = *(v70 + 146);
        memcpy((v69 + 1041), *(a2 + 8328), v72);
        v73 = *(a3 + 4);
        v74 = *(a3 + 1);
        *(v69 + 2072) = *a3;
        *(v69 + 2088) = v74;
        *(v69 + 2104) = v73;
        return;
      }
    }

LABEL_111:
    *a3 = 0x7FFFFFFFLL;
    v106.f64[0] = NAN;
    v106.f64[1] = NAN;
    *(a3 + 2) = vnegq_f64(v106);
    *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 32) = 0;
  }
}

BOOL sub_277A42FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v15 = v8;
  STACK[0x1058] = *MEMORY[0x277D85DE8];
  v16 = *(v8 + 16904);
  v17 = *(v8 + 11072);
  if (v16 >= 0xFF)
  {
    v18 = 255;
  }

  else
  {
    v18 = *(v8 + 16904);
  }

  if (v16 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  switch(v17)
  {
    case 8u:
      v20 = word_277BFDBFA;
      goto LABEL_13;
    case 0xCu:
      v20 = &unk_277BFDFFA;
      goto LABEL_13;
    case 0xAu:
      v20 = &unk_277BFDDFA;
LABEL_13:
      v21 = v20[v19];
      goto LABEL_15;
  }

  v21 = -1;
LABEL_15:
  v22 = byte_277C3CAFE[v9];
  v23 = byte_277C3CAE8[v9];
  v24 = sub_277A3D03C(v8, 0, 0, 0, v9, v9, 0);
  *v13 = v24;
  v29 = ((v21 >> 3) * (v21 >> 3)) >> 3;
  if (*(v15 + 151020) >= 2u)
  {
    return v24 <= v29;
  }

  if (v24 / v22 / v23 <= v29)
  {
    v31 = byte_277BEE368[v14];
    v32 = dword_277C3BF30[v31];
    v33 = dword_277C3BEE4[v31];
    v54 = 0;
    v55 = 0;
    v56 = 0;
    BYTE1(v54) = v31;
    v55 = __PAIR64__((*(*(v15 + 8376) + 192) >> 3) & 1, v17);
    v34 = **(v15 + 8280);
    v35 = (*(v34 + 167) & 0x80) != 0 || *(v34 + 16) > 0;
    if ((0x61810uLL >> v31))
    {
      LOBYTE(v35) = 0;
    }

    else if (((0x18608uLL >> v31) & 1) == 0)
    {
      if (v11)
      {
        if (v35)
        {
          LOBYTE(v35) = 1;
        }

        else
        {
          LOBYTE(v35) = 2;
        }
      }

      else
      {
        LOBYTE(v35) = byte_277C3C219[2 * v35 + ((0x60604uLL >> v31) & 1)];
      }
    }

    LOBYTE(v56) = v35;
    v36 = 1;
    if (v17 != 10)
    {
      v36 = 2;
    }

    v37 = *v15;
    v38 = (v33 * v32);
    if (v17 == 8)
    {
      v36 = 0;
    }

    v39 = dword_277BEE380[22 * v36 + v14];
    switch(v17)
    {
      case 8u:
        v40 = word_277BFE1FA;
        break;
      case 0xCu:
        v40 = &unk_277BFE5FA;
        break;
      case 0xAu:
        v40 = &unk_277BFE3FA;
        break;
      default:
        v41 = -1;
        goto LABEL_41;
    }

    v41 = v40[v19];
LABEL_41:
    v42 = 0;
    v43 = v39 * v21;
    v44 = v39 * v41;
    v52 = v32;
    v51 = v32 * v22;
LABEL_42:
    v53 = v42;
    v45 = 0;
    while (1)
    {
      sub_277ADCA70(v37 + 2 * v45, &v57, v22, &v54, v25, v26, v27, v28);
      v46 = v57;
      if (v57 < 0)
      {
        v46 = -v57;
      }

      if (v43 <= v46 << 7)
      {
        break;
      }

      v47 = v38 - 1;
      v48 = &v58;
      if (v38 >= 2)
      {
        do
        {
          v50 = *v48++;
          v49 = v50;
          if (v50 < 0)
          {
            v49 = -v49;
          }

          if (v44 <= v49 << 7)
          {
            return 0;
          }
        }

        while (--v47);
      }

      v45 += v33;
      if (v45 >= v22)
      {
        v37 += 2 * v51;
        v42 = v53 + v52;
        if (v53 + v52 < v23)
        {
          goto LABEL_42;
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_277A4332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = **(a1 + 8280);
  v9 = byte_277C3BCB6[a3] - 4;
  v10 = 1 << (byte_277C3BCB6[a3] - 4);
  v11 = byte_277C3BD80[a3];
  bzero(*(a1 + 8328), v10);
  *(v8 + 161) = v11;
  *(v8 + 153) = 0x101010101010101 * v11;
  *(v8 + 145) = 0x101010101010101 * v11;
  if (v9 != 31)
  {
    v12 = (a1 + 151049);
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    do
    {
      *v12++ |= 1u;
      --v13;
    }

    while (v13);
  }

  *(a2 + 32) = 1;
  if ((*(*(a1 + 8376) + 192) & 8) != 0)
  {
    a4 = (((1 << (2 * *(a1 + 11072) - 16)) >> 1) + a4) >> (2 * *(a1 + 11072) - 16);
  }

  *(a2 + 24) = 16 * a4;
  *(a2 + 8) = 16 * a4;
  v14 = byte_277C36D60[a3];
  v15 = *(a1 + 552);
  memcpy(__dst, *(a1 + 544), byte_277C3F990[a3]);
  memcpy(v18, v15, v14);
  LODWORD(v14) = (byte_277C3BE70[v11] + byte_277C3BE83[v11] + 1) >> 1;
  v17 = 0;
  result = sub_277A3D9E4(a3, v11, 0, __dst, v18, &v17);
  *a2 = (byte_277C3CAFE[a3] >> dword_277C31584[v11]) * *(a1 + 7552 * v14 + 8 * v17 + 47580) * (byte_277C3CAE8[a3] >> dword_277C3BE98[v11]);
  return result;
}

uint64_t sub_277A43538(uint64_t result, uint64_t a2, signed int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int *a13, uint64_t a14, uint64_t a15, _DWORD *a16, char a17)
{
  v18 = a15;
  v19 = a13;
  v242 = *MEMORY[0x277D85DE8];
  *a13 = 0;
  *(a13 + 1) = 0;
  *(a13 + 2) = 0;
  *(a13 + 3) = 0;
  *(a13 + 32) = 1;
  if (a15 < 0)
  {
    *a16 = 0;
    return result;
  }

  v20 = a6;
  v22 = a3;
  v23 = a2;
  v24 = (result + 396196);
  v25 = (a11 + a4);
  v26 = (a12 + a3);
  v27 = a6;
  v28 = dword_277C3BEE4[a6];
  *__c = dword_277C3BF30[a6];
  if (a6)
  {
    v29 = ***(a2 + 8280);
    v30 = byte_277C3CAFE[v29];
    v31 = byte_277C3CAE8[v29];
    if (v30 <= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    v33 = 63;
    if (v32 <= 31)
    {
      if (v32 == 8)
      {
        v35 = 0;
        v34 = 1;
        goto LABEL_17;
      }

      if (v32 == 16)
      {
        v34 = 2;
        v35 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v34 = 4;
      v35 = 1;
      if (v32 == 128 || v32 == 64)
      {
LABEL_17:
        if (byte_277C3BE83[a6] == v34)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        v33 = (3 * (v37 - 2 * v34) + 24);
        goto LABEL_21;
      }

      if (v32 == 32)
      {
        v34 = 3;
        goto LABEL_17;
      }
    }

LABEL_21:
    v36 = (*v26 < dword_277C3BF30[a6]) + (*v25 < v28) + v33;
    goto LABEL_22;
  }

  v36 = 0;
LABEL_22:
  v190 = v22;
  v38 = a4;
  v194 = a6;
  v205 = dword_277C3BEE4[a6];
  v206 = a8;
  v193 = **(a2 + 8280);
  __b = v26;
  v187 = v25;
  v207 = result;
  if (*(result + 272080) & 1) == 0 && ((0x61810uLL >> a6))
  {
    v39 = 0;
    if (a6)
    {
      v72 = a7 < 2;
    }

    else
    {
      v72 = 0;
    }

    v71 = v72;
    v41 = v71;
  }

  else
  {
    v39 = *(result + 272082) & 1 | (v28 == __c[0]);
    if (a6)
    {
      v40 = a7 < 2;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    if (v40 && *(result + 272082) & 1 | (v28 == __c[0]))
    {
      if (*(result + 396232) < 1)
      {
        goto LABEL_58;
      }

      v208 = a6;
      v209 = *(result + 396232);
      v210 = v36;
      v200 = v41;
      v203 = (result + 396196);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = byte_277C3CAFE[a8];
      v191 = v22;
      v47 = (*a2 + 2 * (4 * v22 * v46) + 8 * a4);
      v48 = (__c[0] >> (__c[0] >= v28));
      v49 = v28 >> (v28 >= __c[0]);
      v214 = 2 * byte_277C3CAFE[a8] * v48;
      v50 = 0.0;
      v51 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      do
      {
        v219 = v47;
        v222 = v42;
        v54 = 0;
        do
        {
          v55 = v45;
          v225.i32[0] = 0;
          v226.i64[0] = 0;
          sub_2779F4F00(v47, v46, v49, v48, &v225, &v226);
          v43 += v225.i32[0];
          v56 = v225.i32[0] / (v49 * v48);
          v57 = v226.i64[0] / (v49 * v48);
          v58 = v57 - (v56 * v56);
          v44 += v226.i64[0];
          v52 = v52 + v56;
          v53 = v53 + (v56 * v56);
          v51 = v51 + v58;
          v50 = v50 + (v58 * v58);
          v45 = v55 + 1;
          v54 += v49;
          v47 = (v47 + 2 * v49);
        }

        while (v205 > v54);
        v42 = v222 + v48;
        v47 = (v219 + v214);
      }

      while ((v222 + v48) < *__c);
      if (v55 <= 0)
      {
        v68 = 0.0;
        v70 = 0.0;
      }

      else
      {
        v59 = v43 / (__c[0] * v205);
        v60 = v44 / (__c[0] * v205);
        v61 = v60 - (v59 * v59);
        v62 = v50 + (v61 * v61);
        v63 = v51 + v61;
        v64 = v55 + 2;
        v65 = (v53 + (v59 * v59)) / (v55 + 2);
        v66 = v65 - (((v52 + v59) / 5.0) * ((v52 + v59) / 5.0));
        v67 = sqrtf(v66);
        v40 = v66 <= 0.0;
        v68 = 0.0;
        if (!v40)
        {
          v68 = v67;
        }

        v69 = v62 / v64;
        v70 = v69 - ((v63 / v64) * (v63 / v64));
      }

      v19 = a13;
      v23 = a2;
      v22 = v191;
      v27 = v194;
      v38 = a4;
      v18 = a15;
      v36 = v210;
      v20 = v208;
      v73 = *(a2 + 128);
      v74 = *v73 >> 3;
      v75 = v73[1] >> 3;
      v76 = dword_277BB7CC0[v209];
      a8 = v206;
      if (v68 <= v74)
      {
        v24 = v203;
        v41 = v200;
        if ((v70 * dword_277BB7CD0[v209]) <= (v75 * v75))
        {
          v41 = 0;
        }
      }

      else
      {
        v24 = v203;
        v41 = v200;
      }

      if (v68 <= (v76 * v74) || v70 <= (v75 * v75 * v76))
      {
LABEL_58:
        v71 = 1;
        v39 = 1;
      }

      else
      {
        v39 = 0;
        v71 = 1;
      }
    }

    else
    {
      v71 = v41;
    }
  }

  if (v24[92] && v41 && *(v23 + 153208))
  {
    v77 = 0;
    v78 = 0x7FFFFFFFFFFFFFFFLL;
    v79 = 16;
    v80 = 1;
    if (*(*(v23 + 32) + 2 * a5) || !v39)
    {
      goto LABEL_101;
    }
  }

  else if (!v39)
  {
    v77 = 0;
    v78 = 0x7FFFFFFFFFFFFFFFLL;
    v79 = 16;
    v80 = v41;
    goto LABEL_101;
  }

  v223 = v71;
  v201 = v41;
  v204 = v24;
  v211 = v36;
  v220 = byte_277C3F990[a8];
  v81 = byte_277C3BE70[v27] + byte_277C3BE83[v27] + 1;
  v82 = a8;
  v83 = v81 >> 1;
  v225.i64[0] = 0;
  v84 = v18;
  v85 = v23;
  sub_277A3D9E4(a8, v20, 0, (a9 + v38), (a10 + v190), &v225);
  v86 = v82;
  v87 = *(v85 + 7552 * v83 + 8 * v225.i32[0] + 47580);
  v19[1] = v87;
  *(v193 + (a4 >> byte_277BFC806[v86]) + (v22 >> byte_277BFC81C[v86] << byte_277BFC832[v86]) + 146) = v20;
  *&v228 = 0;
  v226 = 0u;
  v227 = 0u;
  v181 = v84;
  v88 = v84;
  v89 = v86;
  sub_277A3EA88(v207, v85, 0, a5, v22, a4, v86, v20, &v225, a17, 0, v181, &v226);
  v90 = *v19;
  if (v90 == 0x7FFFFFFF || v226.i32[0] == 0x7FFFFFFF)
  {
    v91 = 0x7FFFFFFF;
    *v19 = 0x7FFFFFFFLL;
    v92.f64[0] = NAN;
    v92.f64[1] = NAN;
    *(v19 + 2) = vnegq_f64(v92);
    v93 = 0x7FFFFFFFFFFFFFFFLL;
    *(v19 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(v19 + 32) = 0;
    v23 = a2;
    if (*(a2 + 4 * (*(v193 + 167) & 7) + 11108))
    {
      v94 = 0;
      v27 = v194;
      v38 = a4;
      v18 = v88;
      v36 = v211;
      v24 = v204;
      v95 = v223;
      a8 = v89;
      result = v220;
      goto LABEL_91;
    }

    v96 = -128;
    v38 = a4;
    v18 = v88;
    v36 = v211;
    v24 = v204;
    v95 = v223;
    a8 = v89;
    result = v220;
  }

  else
  {
    v97 = v226.i32[0] + v90;
    v91 = 0x7FFFFFFF;
    if (v97 < 0x7FFFFFFF)
    {
      v91 = v97;
    }

    *v19 = v91;
    if (!v19[1])
    {
      v19[1] = v226.i32[1];
    }

    v98 = *(v19 + 1) + v226.i64[1];
    *(v19 + 1) = v98;
    v99 = *(v19 + 3);
    v93 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = a2;
    v38 = a4;
    v18 = v88;
    v36 = v211;
    v95 = v223;
    a8 = v89;
    result = v220;
    if (v99 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v93 = *(v19 + 3);
      if (*(&v227 + 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v93 = *(&v227 + 1) + v99;
        *(v19 + 3) = *(&v227 + 1) + v99;
      }
    }

    v100 = (v19[8] & v228);
    *(v19 + 32) &= v228;
    v24 = v204;
    if (*(a2 + 4 * (*(v193 + 167) & 7) + 11108))
    {
      goto LABEL_82;
    }

    if (v100 == 1)
    {
      goto LABEL_84;
    }

    v96 = v98 << 7;
  }

  if (v96 + ((v91 * *(v23 + 16920) + 256) >> 9) < ((*(v23 + 16920) * v87 + 256) >> 9) + (v93 << 7))
  {
LABEL_82:
    v94 = 0;
    v27 = v194;
    goto LABEL_91;
  }

LABEL_84:
  *v19 = v87;
  *(v19 + 1) = v93;
  *(*(v23 + 32) + 2 * a5) = 0;
  v101 = *(v23 + 8336);
  *(*(v23 + 8328) + v38 + v101 * v22) = 0;
  v27 = v194;
  v102 = *&byte_277BFDBA0[4 * v194];
  v103 = *&byte_277BFDB54[4 * v194];
  if ((0x41010uLL >> v194) & 1) != 0 || ((0x20810uLL >> v194))
  {
    v104 = 0;
    v105 = v38 + v101 * v190;
    v106 = 4 * v101;
    do
    {
      v107 = 0;
      do
      {
        *(*(v23 + 8328) + v105 + v107) = 0;
        v107 += 4;
      }

      while (v107 < v102);
      v104 += 4;
      v105 += v106;
    }

    while (v104 < v103);
  }

  v94 = 1;
LABEL_91:
  *(v19 + 32) = v94;
  v108 = v23 + v38 + result * v22;
  *(v108 + 151049) = *(v108 + 151049) & 0xFE | v94;
  v109 = *v19;
  if (v95)
  {
    v109 += *(v23 + 8 * v36 + 36232);
    *v19 = v109;
  }

  v78 = ((*(v23 + 16920) * v109 + 256) >> 9) + (*(a13 + 1) << 7);
  v77 = *(*(v23 + 40) + a5);
  v79 = *(*(v23 + 8328) + v38 + *(v23 + 8336) * v22);
  v110 = v24[6];
  if (v110)
  {
    if (v78 - (v78 >> (v110 + 1)) > v18)
    {
LABEL_202:
      *a16 = 0;
      return result;
    }

    if (v78 - (v78 >> (v110 + 2)) <= a14)
    {
      v80 = v201;
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    v80 = v201;
  }

  if (v24[5] && !*(*(v23 + 32) + 2 * a5))
  {
    goto LABEL_115;
  }

LABEL_101:
  if (*(v23 + 11072) == 8 && v80)
  {
    if (v18 != 0x7FFFFFFFFFFFFFFFLL || v78 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v111 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        if (v20)
        {
          v112 = qword_27A71EBB8[v27];
          v113 = byte_277C3CAFE[a8];
          v114 = *v23;
          v240 = 0u;
          v241 = 0u;
          v238 = 0u;
          v239 = 0u;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v197 = v18;
          v184 = v77;
          v212 = v36;
          sub_277A3E874((v114 + 2 * (4 * v22 * v113) + 8 * v38), v113, v205, __c[0], v226.f32);
          v225.i32[0] = 0;
          sub_2779D28B0(&v226, v112, &v225);
          a8 = v206;
          v36 = v212;
          v77 = v184;
          v18 = v197;
          v38 = a4;
          v23 = a2;
          v115 = (v225.f32[0] * 10000.0);
          if (v115 >= 80000)
          {
            v115 = 80000;
          }

          if (v115 <= -80000)
          {
            v115 = -80000;
          }
        }

        else
        {
          v115 = -1;
        }

        if (v115 < -v111)
        {
LABEL_115:
          result = 0;
          v116 = 0;
          v224 = 0;
          v117 = 0;
          v118 = 0;
          *(v225.i32 + 3) = 0;
          v225.i32[0] = 0;
          goto LABEL_116;
        }
      }
    }

    *(v225.i32 + 3) = 0;
    v225.i32[0] = 0;
  }

  else
  {
    *(v225.i32 + 3) = 0;
    v225.i32[0] = 0;
    if (!v80)
    {
      result = 0;
      v116 = 0;
      v224 = 0;
      v117 = 0;
      v118 = 0;
LABEL_116:
      v119 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_155;
    }
  }

  if (v78 >= v18)
  {
    v120 = v18;
  }

  else
  {
    v120 = v78;
  }

  v121 = byte_277C3CAE8[a8];
  v122 = *(v23 + 8352);
  if (v122 < 0)
  {
    v121 += v122 >> (*(v23 + 440) + 3);
  }

  v188 = v78;
  v185 = v77;
  v189 = a5;
  v192 = v22;
  v123 = byte_277C3CAFE[a8];
  v124 = *(v23 + 8344);
  if (v124 < 0)
  {
    v123 += v124 >> (*(v23 + 436) + 3);
  }

  v125 = 0;
  v221 = 0;
  v119 = 0;
  v126 = 0;
  v213 = 0;
  v127 = (v121 >> 2);
  v128 = v123 >> 2;
  v129 = *&byte_277BFDBA0[4 * v27];
  v130 = byte_277C3295E[v27];
  v131 = *&byte_277BFDBA0[4 * v130];
  v202 = v130;
  LODWORD(v130) = *&byte_277BFDB54[4 * v130];
  v195 = v130 * v131;
  v196 = v131;
  result = *(v23 + 8 * v36 + 36236);
  v182 = v130;
  v183 = *&byte_277BFDB54[4 * v27];
  v132 = a5;
  v215 = 1;
  v199 = v78 / (v129 / v131 * (v183 / v130));
  v198 = v129;
  while (2)
  {
    if (v125 + v192 < v127)
    {
      v133 = 0;
      do
      {
        v134 = (a4 + v133);
        if (v134 < v128)
        {
          v135 = result;
          v136 = v127;
          v224 = v126;
          *&v228 = 0;
          v226 = 0u;
          v227 = 0u;
          v137 = v120;
          v225.i32[3] = 1;
          v138 = v132;
          sub_277A43538(v207, v23, v125 + v192, v134, v132, v202, a7 + 1, a8, a9, a10, a11, a12, &v226, v199, v120 - v119, &v225.i32[3], a17);
          if (!v225.i32[3])
          {
            v23 = a2;
            v38 = a4;
            LODWORD(a8) = v206;
            result = v135;
LABEL_153:
            v119 = 0x7FFFFFFFFFFFFFFFLL;
            v22 = v192;
            v27 = v194;
            goto LABEL_154;
          }

          a8 = v206;
          if (v135 == 0x7FFFFFFF)
          {
            v213 = 0;
            v215 = 0;
            v126 = 0x7FFFFFFFFFFFFFFFLL;
            result = 0x7FFFFFFFLL;
            v221 = 0x7FFFFFFFFFFFFFFFLL;
            v23 = a2;
            v120 = v137;
            v127 = v136;
            v131 = v196;
            v129 = v198;
            v139 = v138;
          }

          else
          {
            v23 = a2;
            v120 = v137;
            v139 = v138;
            if (v226.i32[0] == 0x7FFFFFFF)
            {
              v213 = 0;
              v215 = 0;
              v126 = 0x7FFFFFFFFFFFFFFFLL;
              result = 0x7FFFFFFFLL;
              v221 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              if (v226.i32[0] + v135 >= 0x7FFFFFFF)
              {
                result = 0x7FFFFFFFLL;
              }

              else
              {
                result = v226.i32[0] + v135;
              }

              v140 = v213;
              if (!v213)
              {
                v140 = v226.i32[1];
              }

              v213 = v140;
              v126 = v226.i64[1] + v224;
              if (*(&v227 + 1) == 0x7FFFFFFFFFFFFFFFLL)
              {
                v141 = 0;
              }

              else
              {
                v141 = *(&v227 + 1);
              }

              v142 = v221;
              v143 = v141 + v221;
              if (v221 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v142 = v143;
              }

              v221 = v142;
              v215 &= v228;
            }

            v127 = v136;
            v131 = v196;
            v129 = v198;
          }

          v119 = ((*(v23 + 16920) * result + 256) >> 9) + (v126 << 7);
          if (v119 > v120)
          {
            v224 = v126;
            v38 = a4;
            goto LABEL_153;
          }

          v132 = (v139 + v195);
        }

        v133 += v131;
      }

      while (v133 < v129);
      v125 += v182;
      v27 = v194;
      v38 = a4;
      if (v125 < v183)
      {
        continue;
      }
    }

    break;
  }

  v224 = v126;
  v22 = v192;
LABEL_154:
  LODWORD(a5) = v189;
  v77 = v185;
  v78 = v188;
  v116 = v213;
  v117 = v221;
  v118 = v215;
LABEL_155:
  if (v78 >= v119)
  {
    *a13 = result;
    a13[1] = v116;
    *(a13 + 1) = v224;
    *(a13 + 2) = v119;
    *(a13 + 3) = v117;
    *(a13 + 32) = v118;
    *(a13 + 33) = v225.i32[0];
    a13[9] = *(v225.i32 + 3);
    if (v119 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    goto LABEL_202;
  }

  *(*(v23 + 40) + a5) = v77;
  v144 = *&byte_277BFDBA0[4 * v27];
  v145 = *(*(v23 + 40) + a5);
  v146 = a8;
  memset((a9 + v38), v145, v144);
  v147 = *&byte_277BFDB54[4 * v27];
  memset((a10 + v190), v145, v147);
  v148 = byte_277C393B1[v27];
  v149 = v146;
  v150 = byte_277C3F990[v148];
  v151 = byte_277C36D60[v148];
  if (v151 <= 1)
  {
    v152 = 1;
  }

  else
  {
    v152 = v151;
  }

  memset(__b, __c[0], v152);
  if (v150 <= 1)
  {
    v153 = 1;
  }

  else
  {
    v153 = v150;
  }

  memset(v187, v205, v153);
  v154 = 0;
  v155 = v193 + 146;
  if (v144 <= 1)
  {
    v156 = 1;
  }

  else
  {
    v156 = v144;
  }

  v157 = byte_277BFC81C[v149];
  v158 = byte_277BFC832[v149];
  v159 = vdupq_n_s32(v156 - 1);
  if (v147 <= 1)
  {
    v160 = 1;
  }

  else
  {
    v160 = v147;
  }

  v161 = byte_277BFC806[v149];
  v162.i64[0] = 0x1000000010;
  v162.i64[1] = 0x1000000010;
  v163 = (v156 + 15) & 0xFFFFFFF0;
  result = a13;
  do
  {
    v164 = 0;
    v165 = (v154 + v22) >> v157 << v158;
    v166 = xmmword_277BB7060;
    v167 = xmmword_277BB74D0;
    v168 = xmmword_277BB7520;
    v169 = xmmword_277BB7510;
    do
    {
      v170 = vmovn_s32(vcgeq_u32(v159, v166));
      if (vuzp1_s8(v170, *v159.i8).u8[0])
      {
        *(v155 + ((a4 + v164) >> v161) + v165) = v20;
      }

      if (vuzp1_s8(v170, *&v159).i8[1])
      {
        *(v155 + ((a4 + v164 + 1) >> v161) + v165) = v20;
        *(v155 + ((a4 + v164 + 2) >> v161) + v165) = v20;
        *(v155 + ((a4 + v164 + 3) >> v161) + v165) = v20;
      }

      v171 = vmovn_s32(vcgeq_u32(v159, v167));
      if (vuzp1_s8(*&v159, v171).i32[1])
      {
        *(v155 + ((a4 + v164 + 4) >> v161) + v165) = v20;
      }

      if (vuzp1_s8(*&v159, v171).i8[5])
      {
        *(v155 + ((a4 + v164 + 5) >> v161) + v165) = v20;
      }

      if (vuzp1_s8(*&v159, v171).i8[6])
      {
        *(v155 + ((a4 + v164 + 6) >> v161) + v165) = v20;
        *(v155 + ((a4 + v164 + 7) >> v161) + v165) = v20;
      }

      v172 = vmovn_s32(vcgeq_u32(v159, v168));
      if (vuzp1_s8(v172, *v159.i8).u8[0])
      {
        *(v155 + ((a4 + v164 + 8) >> v161) + v165) = v20;
      }

      if (vuzp1_s8(v172, *&v159).i8[1])
      {
        *(v155 + ((a4 + v164 + 9) >> v161) + v165) = v20;
        *(v155 + ((a4 + v164 + 10) >> v161) + v165) = v20;
        *(v155 + ((a4 + v164 + 11) >> v161) + v165) = v20;
      }

      v173 = vmovn_s32(vcgeq_u32(v159, v169));
      if (vuzp1_s8(*&v159, v173).i32[1])
      {
        *(v155 + ((a4 + v164 + 12) >> v161) + v165) = v20;
      }

      if (vuzp1_s8(*&v159, v173).i8[5])
      {
        *(v155 + ((a4 + v164 + 13) >> v161) + v165) = v20;
      }

      if (vuzp1_s8(*&v159, v173).i8[6])
      {
        *(v155 + ((a4 + v164 + 14) >> v161) + v165) = v20;
        *(v155 + ((a4 + v164 + 15) >> v161) + v165) = v20;
      }

      v164 += 16;
      v166 = vaddq_s32(v166, v162);
      v167 = vaddq_s32(v167, v162);
      v168 = vaddq_s32(v168, v162);
      v169 = vaddq_s32(v169, v162);
    }

    while (v163 != v164);
    ++v154;
  }

  while (v154 != v160);
  *(v193 + 145) = v20;
  v174 = *(a2 + 8336);
  *(*(a2 + 8328) + a4 + v174 * v22) = v79;
  if ((0x41010uLL >> v194) & 1) != 0 || ((0x20810uLL >> v194))
  {
    v175 = 0;
    v176 = a4 + v174 * v190;
    v177 = 4 * v174;
    do
    {
      v178 = 0;
      do
      {
        *(*(a2 + 8328) + v176 + v178) = v79;
        v178 += 4;
      }

      while (v178 < v144);
      v175 += 4;
      v176 += v177;
    }

    while (v175 < v147);
  }

  v179 = a2 + a4 + byte_277C3F990[v149] * v22;
  v180 = *(v179 + 151049) & 0xFE;
  if (*(a13 + 32))
  {
    ++v180;
  }

  *(v179 + 151049) = v180;
  return result;
}

unsigned __int8 *sub_277A4483C(unsigned __int8 *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14)
{
  v110 = result;
  v17 = *(a2 + 8352);
  v18 = byte_277C3CAE8[a7];
  if (v17 < 0)
  {
    v18 += v17 >> (*(a2 + 440) + 3);
  }

  v19 = v18 >> 2;
  v20 = byte_277C3CAFE[a7];
  v21 = *(a2 + 8344);
  if (v21 < 0)
  {
    v20 += v21 >> (*(a2 + 436) + 3);
  }

  v22 = v20 >> 2;
  v23 = __OFSUB__(v19, a3);
  v24 = v19 - a3;
  if ((v24 < 0) ^ v23 | (v24 == 0))
  {
    v25 = 1;
  }

  else
  {
    v25 = v22 <= a4;
  }

  if (v25)
  {
    return result;
  }

  v26 = **(a2 + 8280);
  v27 = v26[(a4 >> byte_277BFC806[a7]) + 146 + (a3 >> byte_277BFC81C[a7] << byte_277BFC832[a7])];
  result = (a11 + a4);
  v28 = a6;
  v29 = LOBYTE(dword_277C3BEE4[v28]);
  v30 = LOBYTE(dword_277C3BF30[v28]);
  if (!a6)
  {
    v36 = 0;
    goto LABEL_28;
  }

  v31 = *v26;
  if (byte_277C3CAFE[v31] <= byte_277C3CAE8[v31])
  {
    v32 = byte_277C3CAE8[v31];
  }

  else
  {
    v32 = byte_277C3CAFE[v31];
  }

  v33 = 63;
  if (v32 <= 31)
  {
    if (v32 == 8)
    {
      v35 = 0;
      v34 = 1;
      goto LABEL_23;
    }

    if (v32 == 16)
    {
      v34 = 2;
      v35 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    v34 = 4;
    v35 = 1;
    if (v32 == 128 || v32 == 64)
    {
LABEL_23:
      if (byte_277C3BE83[a6] == v34)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35;
      }

      v33 = (3 * (v37 - 2 * v34) + 24);
      goto LABEL_27;
    }

    if (v32 == 32)
    {
      v34 = 3;
      goto LABEL_23;
    }
  }

LABEL_27:
  v36 = (v30 > *(a12 + a3)) + (v29 > *result) + v33;
LABEL_28:
  v38 = a13;
  v40 = a9;
  v39 = a10;
  *a14 = 0;
  *(a14 + 1) = 0;
  *(a14 + 2) = 0;
  *(a14 + 3) = 0;
  *(a14 + 32) = 1;
  v107 = a3;
  v106 = a7;
  v96 = v36;
  if (v27 == a6)
  {
    __c = v30;
    __b = (a12 + a3);
    v104 = v29;
    v108 = (a11 + a4);
    v41 = (byte_277C3BE70[a6] + byte_277C3BE83[a6] + 1) >> 1;
    v112 = 0;
    v42 = a4;
    v97 = a4;
    v99 = a3;
    v43 = a3;
    v44 = a7;
    sub_277A3D9E4(a7, a6, 0, (a9 + a4), (a10 + a3), &v112);
    v45 = *(a2 + 7552 * v41 + 8 * v112 + 47580);
    a14[1] = v45;
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    sub_277A3EA88(v110, a2, 0, a5, v43, v42, v44, a6, &v112, 0, 0, a13, &v113);
    v46 = *a14;
    if (v46 == 0x7FFFFFFF || v113 == 0x7FFFFFFF)
    {
      v47 = 0;
      v48.f64[0] = NAN;
      v48.f64[1] = NAN;
      *(a14 + 2) = vnegq_f64(v48);
      v49 = 0x7FFFFFFFFFFFFFFFLL;
      *(a14 + 3) = 0x7FFFFFFFFFFFFFFFLL;
      *a14 = 0x7FFFFFFFLL;
      v50 = -128;
      v51 = 0x7FFFFFFF;
      v52 = v107;
      v53 = v106;
      v54 = a9;
      v55 = a6;
      v56 = v99;
      v57 = v97;
    }

    else
    {
      v73 = v113 + v46;
      v74 = 0x7FFFFFFF;
      if (v73 < 0x7FFFFFFF)
      {
        v74 = v73;
      }

      *a14 = v74;
      if (!a14[1])
      {
        a14[1] = DWORD1(v113);
      }

      v75 = *(a14 + 1) + *(&v113 + 1);
      *(a14 + 1) = v75;
      v76 = *(a14 + 3);
      v49 = 0x7FFFFFFFFFFFFFFFLL;
      v52 = v107;
      v53 = v106;
      v54 = a9;
      v55 = a6;
      v56 = v99;
      v57 = v97;
      if (v76 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v49 = *(a14 + 3);
        if (*(&v114 + 1) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v49 = *(&v114 + 1) + v76;
          *(a14 + 3) = *(&v114 + 1) + v76;
        }
      }

      v51 = v74;
      v50 = v75 << 7;
      v47 = (a14[8] & v115) == 1;
    }

    v77 = byte_277C3F990[v53];
    if (v50 + ((v51 * *(a2 + 16920) + 256) >> 9) < ((*(a2 + 16920) * v45 + 256) >> 9) + (v49 << 7) && !v47)
    {
      *(a14 + 32) = 0;
      v87 = a2 + v57 + v77 * v52;
      *(v87 + 151049) &= ~1u;
    }

    else
    {
      *a14 = v45;
      *(a14 + 1) = v49;
      *(a14 + 32) = 1;
      v79 = a2 + v57 + v77 * v52;
      *(v79 + 151049) |= 1u;
      *(*(a2 + 32) + 2 * a5) = 0;
      *(*(a2 + 40) + a5) = 0;
      v80 = *(a2 + 8336);
      *(*(a2 + 8328) + v57 + v80 * v52) = 0;
      v81 = *&byte_277BFDBA0[4 * v55];
      v82 = *&byte_277BFDB54[4 * v55];
      if ((0x41010uLL >> v55) & 1) != 0 || ((0x20810uLL >> v55))
      {
        v83 = 0;
        v84 = v57 + v80 * v56;
        v85 = 4 * v80;
        do
        {
          v86 = 0;
          do
          {
            *(*(a2 + 8328) + v84 + v86) = 0;
            v86 += 4;
          }

          while (v86 < v81);
          v83 += 4;
          v84 += v85;
        }

        while (v83 < v82);
      }
    }

    if (a6 && a8 <= 1)
    {
      *a14 += *(a2 + 8 * v96 + 36232);
    }

    v88 = *(*(a2 + 40) + a5);
    memset((v54 + v57), v88, *&byte_277BFDBA0[4 * v55]);
    memset((a10 + v56), v88, *&byte_277BFDB54[4 * v55]);
    v89 = byte_277C393B1[v55];
    v90 = byte_277C3F990[v89];
    v91 = byte_277C36D60[v89];
    if (v91 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v91;
    }

    memset(__b, __c, v92);
    if (v90 <= 1)
    {
      v93 = 1;
    }

    else
    {
      v93 = v90;
    }

    return memset(v108, v104, v93);
  }

  else
  {
    v58 = byte_277C3295E[a6];
    v59 = *&byte_277BFDBA0[4 * v58];
    __ca = v58;
    v60 = *&byte_277BFDB54[4 * v58];
    if (*&byte_277BFDB54[4 * a6] < v24)
    {
      v24 = *&byte_277BFDB54[4 * a6];
    }

    v61 = v22 - a4;
    if (*&byte_277BFDBA0[4 * a6] < v61)
    {
      v61 = *&byte_277BFDBA0[4 * a6];
    }

    v105 = v61;
    v115 = 0;
    v95 = v24;
    if (v24 < 1)
    {
      LODWORD(v62) = 0;
LABEL_56:
      if (a6 && a8 <= 1)
      {
        *a14 = v62 + *(a2 + 8 * v96 + 36236);
      }
    }

    else
    {
      LODWORD(v62) = 0;
      v109 = 0;
      v63 = 0;
      v100 = v60 * v59;
      v64.f64[0] = NAN;
      v64.f64[1] = NAN;
      v98 = vnegq_f64(v64);
      v94 = v60;
      while (v105 < 1)
      {
LABEL_52:
        v109 += v94;
        if (v109 >= v95)
        {
          goto LABEL_56;
        }
      }

      v65 = 0;
      while (1)
      {
        v113 = 0uLL;
        v114 = 0uLL;
        v66 = v38;
        LOBYTE(v115) = 1;
        v67 = a4;
        result = sub_277A4483C(v110, a2, v109 + a3, (a4 + v65), a5, __ca, a7, a8 + 1, v40, v39, a11, a12, v38 - v63, &v113);
        v68 = v113;
        if (v113 == 0x7FFFFFFF)
        {
          break;
        }

        v69 = *a14;
        if (v69 == 0x7FFFFFFF)
        {
          *(a14 + 2) = v98;
          *(a14 + 3) = 0x7FFFFFFFFFFFFFFFLL;
          *(a14 + 32) = 0;
          a14[1] = 0;
          LODWORD(v62) = 0x7FFFFFFF;
          v70 = *(&v113 + 1);
          a3 = v107;
          a7 = v106;
          v40 = a9;
          v39 = a10;
          a4 = v67;
          v38 = v66;
        }

        else
        {
          v62 = v69 + v113;
          if (v62 >= 0x7FFFFFFF)
          {
            LODWORD(v62) = 0x7FFFFFFF;
          }

          *a14 = v62;
          if (!a14[1])
          {
            a14[1] = DWORD1(v113);
          }

          v70 = *(&v113 + 1);
          *(a14 + 1) += *(&v113 + 1);
          v71 = *(a14 + 3);
          a3 = v107;
          a7 = v106;
          v40 = a9;
          v39 = a10;
          a4 = v67;
          v38 = v66;
          if (v71 != 0x7FFFFFFFFFFFFFFFLL && *(&v114 + 1) != 0x7FFFFFFFFFFFFFFFLL)
          {
            *(a14 + 3) = *(&v114 + 1) + v71;
          }

          *(a14 + 32) &= v115;
        }

        v63 += (v70 << 7) + ((v68 * *(a2 + 16920) + 256) >> 9);
        a5 = (a5 + v100);
        v65 += v59;
        if (v65 >= v105)
        {
          goto LABEL_52;
        }
      }

      *a14 = 0x7FFFFFFFLL;
      v72.f64[0] = NAN;
      v72.f64[1] = NAN;
      *(a14 + 2) = vnegq_f64(v72);
      *(a14 + 3) = 0x7FFFFFFFFFFFFFFFLL;
      *(a14 + 32) = 0;
    }
  }

  return result;
}

float64x2_t sub_277A45044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v12 = a1;
  v135 = *MEMORY[0x277D85DE8];
  v13 = (a2 + 151012);
  v14 = a1 + 396172;
  v15 = **(a2 + 8280);
  v16 = 1;
  if ((*(v15 + 167) & 0x80) == 0)
  {
    v16 = *(v15 + 16) > 0;
  }

  v17 = *(a2 + 416);
  v18 = *(a2 + 420);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  v19 = 1 << (byte_277C3BCB6[a4] - 4);
  v124 = a4;
  v125 = a1 + 396172;
  if (v16)
  {
    if (*(a1 + 396256) && v17 >= *(a2 + 8256) && v17 + byte_277C36D60[a4] < *(a2 + 8260) && v18 >= *(a2 + 8264) && v18 + byte_277C3F990[a4] < *(a2 + 8268))
    {
      v21 = off_280AB5FE0(*(a2 + 153104) + 16968, *a2, 2 * byte_277C3CAE8[a4] * byte_277C3CAFE[a4]);
      v9 = v124;
      v22 = v124 + 32 * v21;
      v23 = *(a2 + 153104);
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = a1;
      }

      else
      {
        v107 = *(v23 + 16964);
        v12 = a1;
        if (v107 >= 1)
        {
          v108 = *(v23 + 16960);
          while (1)
          {
            v109 = v108 <= 0 ? -(-v108 & 7) : v108 & 7;
            if (*(v23 + 2120 * v109 + 2112) == v22)
            {
              break;
            }

            ++v108;
            if (!--v107)
            {
              goto LABEL_13;
            }
          }

          if (v109 != -1)
          {
            v110 = v23 + 2120 * v109;
            v111 = **(a2 + 8280);
            *(v111 + 145) = *v110;
            memcpy((a2 + 151049), (v110 + 17), v19);
            *(v111 + 146) = *(v110 + 1);
            memcpy(*(a2 + 8328), (v110 + 1041), v19);
            v112 = *(v110 + 2104);
            result = *(v110 + 2088);
            *a3 = *(v110 + 2072);
            *(a3 + 16) = result;
            *(a3 + 32) = v112;
            return result;
          }
        }
      }
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

LABEL_13:
    v127 = 0;
    if (*(a2 + 151020) && !*(a2 + 4 * (*(v15 + 167) & 7) + 11108))
    {
      v36 = v12;
      v37 = v9;
      if (sub_277A42FC8(a2, v9, &v127, *(v12 + 246117), a5, a6, v9, a8))
      {
        sub_277A4332C(a2, a3, v37, v127);
        if (!v23)
        {
          return result;
        }

        goto LABEL_51;
      }

      v9 = v37;
      v12 = v36;
      v14 = v125;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (*(a2 + 11108 + 4 * (*(v15 + 167) & 7)))
  {
    *(**(a2 + 8280) + 145) = 0;
    v24 = a2;
    v25 = a3;
    v26 = v8;
    v27 = 0;
    LOBYTE(v28) = 0;
    goto LABEL_50;
  }

  v29 = (v12 + 272080);
  if (*v13 == 2)
  {
    v30 = **(a2 + 8280);
    if (v9)
    {
      if (byte_277C3BE70[byte_277C3BD80[v9]] <= byte_277C393AE[*(a2 + 151024)])
      {
        v28 = byte_277C3BD80[v9];
      }

      else
      {
        v28 = byte_277C393AE[*(a2 + 151024)];
      }
    }

    else
    {
      v28 = 0;
    }

    *(v30 + 145) = v28;
    if (*v29)
    {
      if (*(v12 + 272082))
      {
LABEL_39:
        v40 = *(a2 + 8304);
        v41 = *(a2 + 8296);
        if (v40)
        {
          v40 = *(v40 + 144);
        }

        if (v41)
        {
          v41 = *(v41 + 144);
        }

        v42 = (a2 + 8 * (v41 + v40) + 35968);
        v43 = *v42;
        v44 = v42[1];
        if ((*(v30 + 167) & 0x80) != 0 || *(v30 + 16) > 0)
        {
          v45 = *(a2 + 16920);
          v46 = (v45 * v44 + 256) >> 9;
        }

        else
        {
          v45 = *(a2 + 16920);
          v46 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v47 = (v45 * v43 + 256) >> 9;
        if (v47 >= v46)
        {
          v27 = v46;
        }

        else
        {
          v27 = v47;
        }

        v24 = a2;
        v25 = a3;
        v26 = v8;
LABEL_50:
        result.f64[0] = sub_277A3E12C(v24, v12, v25, v26, v27, 0, v9, v28);
        if (!v23)
        {
          return result;
        }

        goto LABEL_51;
      }

      v39 = &byte_277C3BE70[v28];
    }

    else if (*(v12 + 272082))
    {
      v39 = &unk_277BF47F8 + v28;
    }

    else
    {
      v39 = &unk_277BF480B + v28;
    }

    LOBYTE(v28) = *v39;
    *(v30 + 145) = *v39;
    goto LABEL_39;
  }

  *a3 = 0x7FFFFFFFLL;
  result.f64[0] = NAN;
  result.f64[1] = NAN;
  *(a3 + 8) = vnegq_f64(result);
  *(a3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 32) = 0;
  v32 = **(a2 + 8280);
  v33 = byte_277C3BD80[v9];
  v34 = *(a2 + 151024);
  v116 = v23;
  v117 = v19;
  v115 = v22;
  v114 = v32;
  if (v34 != 2)
  {
    v38 = byte_277C393AE[v34];
    if (v9)
    {
      if (byte_277C3BE70[v33] <= v38)
      {
        v38 = byte_277C3BD80[v9];
      }
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_77;
  }

  v35 = (*(v32 + 167) & 0x80) == 0 && *(v32 + 16) < 1;
  if ((v9 - 13) <= 2 && *v14)
  {
    goto LABEL_73;
  }

  v59 = 776;
  if (byte_277C36D60[v9] == byte_277C3F990[v9])
  {
    v59 = 772;
  }

  v60 = 768;
  if (byte_277C36D60[v9] == byte_277C3F990[v9])
  {
    v60 = 764;
  }

  v61 = v35 ? v59 : v60;
  v62 = *(v12 + v61 + 395392);
  if (v62 == 2)
  {
LABEL_73:
    v123 = byte_277C3BD80[v9];
    if (*v29)
    {
      goto LABEL_78;
    }

    v123 = byte_277C3BD80[v9];
    if (((0x61810uLL >> v33) & 1) == 0)
    {
      goto LABEL_78;
    }

    v38 = byte_277C3295E[v33];
LABEL_77:
    v123 = v38;
LABEL_78:
    *(a2 + 116284) = 0;
    result.f64[0] = NAN;
    v131 = xmmword_277C31FA8;
    v132 = 0x7FFFFFFFFFFFFFFFLL;
    v62 = 2;
LABEL_79:
    v118 = (a2 + 8288);
    v63 = v62;
    v113 = v33;
    v121 = v62;
    v126 = 0x7FFFFFFFFFFFFFFFLL;
    v64 = v123;
    v119 = v33;
    v120 = v8;
    v122 = (v12 + 272080);
    while (1)
    {
      if ((*v29 & 1) == 0 && ((0x61810uLL >> v64) & 1) != 0 || (v29[2] & 1) == 0 && dword_277C3BEE4[v64] != dword_277C3BF30[v64])
      {
        v70 = v64;
        goto LABEL_168;
      }

      if (v13[28] == 2)
      {
        goto LABEL_169;
      }

      v65 = *(v14 + 64);
      if (v64 != v123)
      {
        v65 = 0;
      }

      v13[29] = v65;
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
      v66 = v126;
      if (v126 >= v8)
      {
        v66 = v8;
      }

      if (*(v14 + 65))
      {
        v67 = v66;
      }

      else
      {
        v67 = v8;
      }

      v68 = **(a2 + 8280);
      v69 = (v68[167] & 0x80) != 0 || v68[16] > 0;
      if (v13[12] != 2)
      {
        goto LABEL_111;
      }

      v71 = *v68;
      if (!*v68)
      {
        goto LABEL_111;
      }

      v72 = v64;
      v73 = LOBYTE(dword_277C3BF30[v72]);
      v74 = **(a2 + 8544);
      v75 = LOBYTE(dword_277C3BEE4[v72]) > v74;
      v76 = **(a2 + 8552);
      v77 = v73 > v76;
      if (v64)
      {
        break;
      }

      v82 = 0;
      if (v69)
      {
        goto LABEL_137;
      }

LABEL_108:
      if (v9)
      {
        LOBYTE(v83) = v113;
        if (v113 == v64)
        {
          v84 = 0;
        }

        else
        {
          v84 = 0;
          do
          {
            ++v84;
            v83 = byte_277C3295E[v83];
          }

          while (v83 != v64);
        }

        if (*v118 == 1)
        {
          v86 = *(a2 + 8304);
          if ((*(v86 + 167) & 0x80) != 0 || v86[16] >= 1)
          {
            v74 = byte_277C3CAFE[*v86];
          }
        }

        if (*(a2 + 8289))
        {
          v87 = *(a2 + 8296);
          if ((*(v87 + 167) & 0x80) != 0 || v87[16] >= 1)
          {
            v76 = byte_277C3CAE8[*v87];
          }
        }

        v88 = byte_277C3BD80[v71];
        v89 = dword_277C3BEE4[v88];
        if (dword_277C3BF30[v88] <= v76)
        {
          v90 = *(a2 + 8289);
        }

        else
        {
          v90 = 0;
        }

        if (v89 <= v74)
        {
          v91 = *v118;
        }

        else
        {
          v91 = 0;
        }

        v92 = (a2 + 35992 + 60 * (byte_277C32948[v9] - 1) + 20 * (v90 + v91) + 4 * v84);
        goto LABEL_138;
      }

LABEL_111:
      v85 = 0;
LABEL_139:
      v93 = *(a2 + 8304);
      v94 = *(a2 + 8296);
      if (v93)
      {
        v93 = *(v93 + 144);
      }

      if (v94)
      {
        v94 = *(v94 + 144);
      }

      v95 = (a2 + 35968 + 8 * (v94 + v93));
      v96 = *v95;
      v97 = v95[1];
      v98 = *(a2 + 16920);
      if (v69)
      {
        v99 = (v98 * v97 + 256) >> 9;
      }

      else
      {
        v99 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v100 = v96 + v85;
      v68[145] = v64;
      if ((v98 * (v96 + v85) + 256) >> 9 >= v99)
      {
        v101 = v99;
      }

      else
      {
        v101 = (v98 * v100 + 256) >> 9;
      }

      v102 = v12;
      result.f64[0] = sub_277A3E12C(a2, v12, &v128, v67, v101, 0, v9, v64);
      if (v128 == 0x7FFFFFFF)
      {
        v103 = 0x7FFFFFFFFFFFFFFFLL;
        *(&v131 + v63) = 0x7FFFFFFFFFFFFFFFLL;
        v9 = v124;
        v12 = v102;
        v14 = v125;
      }

      else
      {
        if (v69 && v130)
        {
          v103 = ((*(a2 + 16920) * v97 + 256) >> 9) + (*(&v129 + 1) << 7);
        }

        else
        {
          v104 = *(a2 + 16920);
          v103 = ((v104 * (v100 + v128) + 256) >> 9) + (*(&v128 + 1) << 7);
          LODWORD(v128) = v128 + v85;
          if (v69 && !v130 && !*(a2 + 11108 + 4 * (*(v68 + 167) & 7)))
          {
            v105 = ((v104 * v97 + 256) >> 9) + (*(&v129 + 1) << 7);
            if (v105 <= v103)
            {
              LODWORD(v128) = 0;
              *(&v128 + 1) = *(&v129 + 1);
              v103 = v105;
              LOBYTE(v130) = 1;
            }
          }
        }

        *(&v131 + v63) = v103;
        v14 = v125;
        if (v103 < v126)
        {
          __memcpy_chk();
          __memcpy_chk();
          *&result.f64[0] = v128;
          v106 = v129;
          *a3 = v128;
          *(a3 + 16) = v106;
          *(a3 + 32) = v130;
          v126 = v103;
          v119 = v64;
        }

        v9 = v124;
        v12 = v102;
      }

      v13 = (a2 + 151012);
      v29 = v122;
      if (!v64 || v63 > v121 && v63 != 2 && *(a2 + 153152) <= 0xFFu && v103 > *(&v131 + v63 - 1))
      {
        goto LABEL_169;
      }

      v70 = v64;
      v8 = v120;
LABEL_168:
      ++v63;
      v64 = byte_277C3295E[v70];
      if (v63 == 3)
      {
        goto LABEL_169;
      }
    }

    if (byte_277C3CAFE[v71] <= byte_277C3CAE8[v71])
    {
      v78 = byte_277C3CAE8[v71];
    }

    else
    {
      v78 = byte_277C3CAFE[v71];
    }

    if (v78 <= 31)
    {
      if (v78 == 8)
      {
        v80 = 0;
        v79 = 1;
      }

      else
      {
        v81 = 63;
        if (v78 != 16)
        {
          goto LABEL_136;
        }

        v79 = 2;
        v80 = 1;
      }
    }

    else
    {
      v79 = 4;
      v80 = 1;
      if (v78 != 128 && v78 != 64)
      {
        v81 = 63;
        if (v78 != 32)
        {
          goto LABEL_136;
        }

        v79 = 3;
      }
    }

    if (byte_277C3BE83[v64] == v79)
    {
      v80 = 0;
    }

    v81 = (3 * (v80 - 2 * v79) + 24);
LABEL_136:
    v82 = v77 + v75 + v81;
    if (v69)
    {
LABEL_137:
      v92 = (a2 + 36232 + 8 * v82);
LABEL_138:
      v85 = *v92;
      goto LABEL_139;
    }

    goto LABEL_108;
  }

  *(a2 + 116284) = 0;
  result.f64[0] = NAN;
  v131 = xmmword_277C31FA8;
  v132 = 0x7FFFFFFFFFFFFFFFLL;
  v123 = v33;
  if (v62 <= 2)
  {
    goto LABEL_79;
  }

  v119 = v33;
LABEL_169:
  v19 = v117;
  if (*a3 != 0x7FFFFFFF)
  {
    *(v114 + 145) = v119;
    memcpy(*(a2 + 8328), __src, v117);
    memcpy((a2 + 151049), v133, v117);
  }

  *(v13 + 14) = 0;
  v23 = v116;
  v22 = v115;
  if (v116)
  {
LABEL_51:
    v48 = *(v23 + 16964);
    v49 = *(v23 + 16960);
    if (v48 > 7)
    {
      v55 = (v49 + 1) & 7;
      if (v49 + 1 <= 0)
      {
        v55 = -(-(v49 + 1) & 7);
      }

      *(v23 + 16960) = v55;
    }

    else
    {
      v50 = v49 + v48;
      v51 = v50 & 7;
      v53 = -v50;
      v52 = v53 < 0;
      v54 = v53 & 7;
      if (v52)
      {
        v49 = v51;
      }

      else
      {
        v49 = -v54;
      }

      *(v23 + 16964) = v48 + 1;
    }

    v56 = v23 + 2120 * v49;
    v57 = **(a2 + 8280);
    *(v56 + 2112) = v22;
    *v56 = *(v57 + 145);
    memcpy((v56 + 17), (a2 + 151049), v19);
    *(v56 + 1) = *(v57 + 146);
    memcpy((v56 + 1041), *(a2 + 8328), v19);
    v58 = *(a3 + 32);
    result = *(a3 + 16);
    *(v56 + 2072) = *a3;
    *(v56 + 2088) = result;
    *(v56 + 2104) = v58;
  }

  return result;
}

uint64_t sub_277A45C8C(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t a5)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 32) = 1;
  if (a5 < 0)
  {
    return 0;
  }

  if (*(a2 + 428) != 1)
  {
    return 1;
  }

  v9 = **(a2 + 8280);
  v10 = *(v9 + 167);
  if ((v10 & 0x80) != 0)
  {
    v11 = (a2 + 3044);
    v12 = (a2 + 3048);
    v13 = byte_277C3BCDE[4 * a4 + 2 * *(a2 + 3044) + *(a2 + 3048)];
  }

  else
  {
    v11 = (a2 + 3044);
    v12 = (a2 + 3048);
    v13 = byte_277C3BCDE[4 * a4 + 2 * *(a2 + 3044) + *(a2 + 3048)];
    if (v9[16] < 1)
    {
      v14 = 0;
      goto LABEL_11;
    }
  }

  for (i = 1; i != 3; ++i)
  {
    sub_277A8E3DC(a2, v13, i);
  }

  v9 = **(a2 + 8280);
  v10 = *(v9 + 167);
  v14 = 1;
LABEL_11:
  if (*(a2 + 4 * (v10 & 7) + 11108))
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = byte_277C3BD80[byte_277C3BCDE[4 * *v9 + 2 * *v11 + *v12]];
    if (v17 > 0x10)
    {
      if (v17 == 17)
      {
        LOBYTE(v17) = 9;
      }

      else if (v17 == 18)
      {
        LOBYTE(v17) = 10;
      }
    }

    else if (v17 - 11 < 2 || v17 == 4)
    {
      LOBYTE(v17) = 3;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v36 = vnegq_f64(v23);
  while (1)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v25 = a5 != 0x7FFFFFFFFFFFFFFFLL && *(a1 + 395876) != 0;
    if (v20 < v21)
    {
      v21 = v20;
    }

    if ((v14 & v25) == 0)
    {
      v21 = 0;
    }

    sub_277A3E12C(a2, a1, &v37, a5 - v21, 0, v22, v13, v17);
    if (v37 == 0x7FFFFFFF)
    {
      break;
    }

    v26 = *a3;
    if (v26 == 0x7FFFFFFF)
    {
      *(a3 + 2) = v36;
      *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
      *(a3 + 32) = 0;
      v21 = -128;
      v27 = -128;
      v28 = 0x7FFFFFFF;
      a3[1] = 0;
    }

    else
    {
      v29 = v26 + v37;
      if (v29 >= 0x7FFFFFFF)
      {
        LODWORD(v29) = 0x7FFFFFFF;
      }

      *a3 = v29;
      if (!a3[1])
      {
        a3[1] = DWORD1(v37);
      }

      v30 = *(a3 + 1) + *(&v37 + 1);
      *(a3 + 1) = v30;
      v31 = *(a3 + 3);
      v32 = 0x7FFFFFFFFFFFFFFFLL;
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = *(a3 + 3);
        if (*(&v38 + 1) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = *(&v38 + 1) + v31;
          *(a3 + 3) = *(&v38 + 1) + v31;
        }
      }

      v28 = v29;
      *(a3 + 32) &= v39;
      v27 = v30 << 7;
      v21 = v32 << 7;
    }

    v20 = v27 + ((v28 * *(a2 + 16920) + 256) >> 9);
    if (v20 >= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v20;
    }

    v34 = v19 ^ 1;
    v22 = 2;
    v19 = 1;
    if (((v33 <= a5) & v34) == 0)
    {
      if (v33 <= a5)
      {
        return 1;
      }

      break;
    }
  }

  result = 0;
  *a3 = 0x7FFFFFFFLL;
  v35.f64[0] = NAN;
  v35.f64[1] = NAN;
  *(a3 + 2) = vnegq_f64(v35);
  *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_277A45FBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, int *a6, int a7, uint64_t a8)
{
  v13 = *(a2 + 8304);
  v14 = *(a2 + 8296);
  if (v13)
  {
    v13 = *(v13 + 144);
  }

  if (v14)
  {
    v14 = *(v14 + 144);
  }

  v15 = (a2 + 8 * (v14 + v13) + 35968);
  v16 = *v15;
  v17 = v15[1];
  if (*v15 >= v17)
  {
    v18 = v15[1];
  }

  else
  {
    v18 = *v15;
  }

  v19 = v18 + a7;
  v20 = *(a2 + 16920);
  if (a8 < (v20 * v19 + 256) >> 9)
  {
    result = 0;
    *a5 = 0x7FFFFFFFLL;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    *(a5 + 2) = vnegq_f64(v22);
    *(a5 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(a5 + 32) = 0;
    return result;
  }

  v72 = v16;
  v23 = (a2 + 151024);
  v24 = **(a2 + 8280);
  *(a4 + 1) = 0;
  v68 = a4 + 2;
  v25 = a8 - ((v20 * a7 + 256) >> 9);
  if (a8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = v25;
  }

  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(a4 + 32) = 1;
  a4[1] = 0;
  *a5 = 0;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  *(a5 + 32) = 1;
  *a4 = a7;
  sub_277A8E3DC(a2, a3, 0);
  v69 = a3;
  if (*v23 == 2 && !*(a2 + 4 * (*(v24 + 167) & 7) + 11108))
  {
    sub_277A42130(a1, a2, a5, a3, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    sub_277A45044(a1, a2, a5, a3, v26, v27, v28, v29);
    v35 = 0x101010101010101 * *(v24 + 145);
    *(v24 + 146) = v35;
    *(v24 + 154) = v35;
    v36 = *(a2 + 8724) * *(a2 + 8725);
    if (v36)
    {
      v37 = (a2 + 151049);
      do
      {
        v38 = *v37 & 0xFE;
        if (*(a5 + 32))
        {
          ++v38;
        }

        *v37++ = v38;
        --v36;
      }

      while (v36);
    }
  }

  v39 = *a5;
  if (v39 == 0x7FFFFFFF)
  {
    return 0;
  }

  v40 = *a4;
  if (v40 == 0x7FFFFFFF)
  {
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    *(a4 + 2) = vnegq_f64(v41);
    *(a4 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(a4 + 32) = 0;
    a4[1] = 0;
    LODWORD(v42) = 0x7FFFFFFF;
    v43 = -128;
    v44 = -128;
    v45 = a8;
    v46 = v72;
  }

  else
  {
    v42 = v40 + v39;
    if (v42 >= 0x7FFFFFFF)
    {
      LODWORD(v42) = 0x7FFFFFFF;
    }

    *a4 = v42;
    v45 = a8;
    v46 = v72;
    if (!a4[1])
    {
      a4[1] = a5[1];
    }

    v47 = *(a4 + 1) + *(a5 + 1);
    *(a4 + 1) = v47;
    v48 = *(a4 + 3);
    v49 = 0x7FFFFFFFFFFFFFFFLL;
    if (v48 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = *(a5 + 3);
      v49 = *(a4 + 3);
      if (v50 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v49 = v50 + v48;
        *(a4 + 3) = v50 + v48;
      }
    }

    *(a4 + 32) &= *(a5 + 32);
    v44 = v47 << 7;
    v43 = v49 << 7;
  }

  v51 = *(a2 + 16920);
  v52 = v44 + ((v51 * (v42 + v46) + 256) >> 9);
  v53 = v17 + a7;
  v54 = v43 + ((v51 * v53 + 256) >> 9);
  if (v52 >= v54)
  {
    v52 = v54;
  }

  if (v52 > v45)
  {
    return 0;
  }

  v55 = a6;
  *a6 = 0;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *(a6 + 3) = 0;
  *(a6 + 32) = 1;
  if (*(*(a1 + 270312) + 77))
  {
    v56 = *(a4 + 32);
    goto LABEL_40;
  }

  if (*(a1 + 395876))
  {
    v60 = v45 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v60 = 1;
  }

  if (v60)
  {
    v52 = 0;
  }

  result = sub_277A45C8C(a1, a2, a6, v69, v45 - v52);
  if (result)
  {
    v61 = *a4;
    v55 = a6;
    if (v61 == 0x7FFFFFFF || (v62 = *a6, v62 == 0x7FFFFFFF))
    {
      *a4 = 0x7FFFFFFFLL;
      v63.f64[0] = NAN;
      v63.f64[1] = NAN;
      *(a4 + 2) = vnegq_f64(v63);
      *(a4 + 3) = 0x7FFFFFFFFFFFFFFFLL;
      *(a4 + 32) = 0;
      v57 = v72;
      goto LABEL_55;
    }

    v64 = v62 + v61;
    if (v64 >= 0x7FFFFFFF)
    {
      LODWORD(v64) = 0x7FFFFFFF;
    }

    *a4 = v64;
    if (!a4[1])
    {
      a4[1] = a6[1];
    }

    *(a4 + 1) += *(a6 + 1);
    v65 = *(a4 + 3);
    if (v65 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v66 = *(a6 + 3);
      if (v66 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(a4 + 3) = v66 + v65;
      }
    }

    v67 = *(a4 + 32);
    v56 = (v67 & a6[8]);
    *(a4 + 32) = v67 & a6[8];
LABEL_40:
    v57 = v72;
    if (v56)
    {
      v58 = 0;
      v59 = *(a4 + 3);
      goto LABEL_42;
    }

LABEL_55:
    if (*(a2 + 4 * (*(v24 + 167) & 7) + 11108) || (v59 = *(a4 + 3), ((*(a2 + 16920) * (*a5 + v57 + *v55) + 256) >> 9) + (*(a4 + 1) << 7) < ((*(a2 + 16920) * v17 + 256) >> 9) + (v59 << 7)))
    {
      *a4 += v57;
      *(v24 + 144) = 0;
      return 1;
    }

    v58 = 1;
LABEL_42:
    *a5 = 0;
    *v55 = 0;
    *a4 = v53;
    *(a4 + 1) = v59;
    *(a5 + 1) = *(a5 + 3);
    *(v55 + 1) = *(v55 + 3);
    *(v24 + 144) = 1;
    return (v58 & 1) != 0 || ((*(a2 + 16920) * v53 + 256) >> 9) + (*v68 << 7) <= v45;
  }

  return result;
}

double sub_277A464B0(uint64_t a1)
{
  *(a1 + 9784) = xmmword_277BF4CD4;
  *(a1 + 9800) = unk_277BF4CE4;
  *(a1 + 9816) = xmmword_277BF4CF4;
  *(a1 + 9720) = xmmword_277BF4C94;
  *(a1 + 9736) = unk_277BF4CA4;
  *(a1 + 9752) = xmmword_277BF4CB4;
  *(a1 + 9768) = unk_277BF4CC4;
  *(a1 + 9832) = xmmword_277BF4D04;
  *(a1 + 9848) = unk_277BF4D14;
  *(a1 + 9912) = xmmword_277BF4D54;
  *(a1 + 9928) = unk_277BF4D64;
  *(a1 + 9880) = unk_277BF4D34;
  *(a1 + 9896) = xmmword_277BF4D44;
  *(a1 + 9864) = xmmword_277BF4D24;
  memcpy((a1 + 9944), &unk_277BF6028, 0x276uLL);
  memcpy((a1 + 10574), &unk_277BF629E, 0x276uLL);
  memcpy((a1 + 14186), &unk_277BF4D74, 0x2BCuLL);
  *(a1 + 14950) = xmmword_277BF5070;
  *(a1 + 14966) = unk_277BF5080;
  *(a1 + 14982) = xmmword_277BF5090;
  *(a1 + 14998) = unk_277BF50A0;
  *(a1 + 14886) = xmmword_277BF5030;
  *(a1 + 14902) = unk_277BF5040;
  *(a1 + 14918) = xmmword_277BF5050;
  *(a1 + 14934) = unk_277BF5060;
  *(a1 + 11356) = *(&xmmword_277BF50B0 + 14);
  *(a1 + 11342) = xmmword_277BF50B0;
  *(a1 + 11480) = xmmword_277BF50CE;
  *(a1 + 11494) = *(&xmmword_277BF50CE + 14);
  *(a1 + 11556) = 397017088;
  *(a1 + 11510) = xmmword_277BF50EC;
  *(a1 + 11526) = unk_277BF50FC;
  *(a1 + 11542) = xmmword_277BF510C;
  *(a1 + 11314) = unk_277BF5190;
  *(a1 + 11284) = xmmword_277BF5172;
  *(a1 + 11300) = unk_277BF5182;
  *(a1 + 11252) = xmmword_277BF5152;
  *(a1 + 11268) = unk_277BF5162;
  *(a1 + 11220) = xmmword_277BF5132;
  *(a1 + 11236) = unk_277BF5142;
  *(a1 + 11204) = xmmword_277BF5122;
  *(a1 + 11338) = 0;
  *(a1 + 11330) = 0x2C10000000000133;
  *(a1 + 11610) = 342360064;
  *(a1 + 11580) = unk_277BF51BC;
  *(a1 + 11596) = xmmword_277BF51CC;
  *(a1 + 11564) = xmmword_277BF51AC;
  *(a1 + 11650) = 0;
  *(a1 + 11618) = xmmword_277BF51E2;
  *(a1 + 11634) = *algn_277BF51F2;
  *(a1 + 11372) = xmmword_277BF5206;
  *(a1 + 11388) = *algn_277BF5216;
  *(a1 + 11464) = unk_277BF5262;
  *(a1 + 11436) = xmmword_277BF5246;
  *(a1 + 11452) = unk_277BF5256;
  *(a1 + 11404) = xmmword_277BF5226;
  *(a1 + 11420) = unk_277BF5236;
  *(a1 + 11686) = xmmword_277BF5292;
  *(a1 + 11702) = unk_277BF52A2;
  *(a1 + 11654) = xmmword_277BF5272;
  *(a1 + 11670) = *algn_277BF5282;
  *(a1 + 11764) = *(&xmmword_277BF52D2 + 14);
  *(a1 + 11734) = unk_277BF52C2;
  *(a1 + 11750) = xmmword_277BF52D2;
  *(a1 + 11718) = xmmword_277BF52B2;
  *(a1 + 11812) = 0;
  *(a1 + 11780) = xmmword_277BF52F0;
  *(a1 + 11796) = unk_277BF5300;
  *(a1 + 11848) = 0;
  *(a1 + 11816) = xmmword_277BF5314;
  *(a1 + 11832) = unk_277BF5324;
  *(a1 + 8122) = 0;
  *(a1 + 8090) = xmmword_277BF5338;
  *(a1 + 8106) = unk_277BF5348;
  *(a1 + 8134) = 0;
  *(a1 + 8126) = 0x7BE2000000007781;
  *(a1 + 8170) = 0;
  *(a1 + 8138) = xmmword_277BF5368;
  *(a1 + 8154) = unk_277BF5378;
  *(a1 + 8174) = xmmword_277BF538C;
  *(a1 + 8190) = 0;
  *(a1 + 9412) = xmmword_277BF539E;
  *(a1 + 9428) = unk_277BF53AE;
  *(a1 + 9476) = xmmword_277BF53DE;
  *(a1 + 9492) = unk_277BF53EE;
  *(a1 + 9444) = xmmword_277BF53BE;
  *(a1 + 9460) = unk_277BF53CE;
  *(a1 + 9556) = xmmword_277BF542E;
  *(a1 + 9572) = unk_277BF543E;
  *(a1 + 9524) = unk_277BF540E;
  *(a1 + 9540) = xmmword_277BF541E;
  *(a1 + 9508) = xmmword_277BF53FE;
  *(a1 + 9716) = 0;
  *(a1 + 9652) = xmmword_277BF548E;
  *(a1 + 9668) = unk_277BF549E;
  *(a1 + 9684) = xmmword_277BF54AE;
  *(a1 + 9700) = unk_277BF54BE;
  *(a1 + 9588) = xmmword_277BF544E;
  *(a1 + 9604) = *algn_277BF545E;
  *(a1 + 9620) = xmmword_277BF546E;
  *(a1 + 9636) = unk_277BF547E;
  *(a1 + 0x2000) = xmmword_277BF54D2;
  *(a1 + 8256) = xmmword_277BF5512;
  *(a1 + 8240) = unk_277BF5502;
  *(a1 + 8224) = xmmword_277BF54F2;
  *(a1 + 8208) = *algn_277BF54E2;
  *(a1 + 8320) = unk_277BF5552;
  *(a1 + 8304) = xmmword_277BF5542;
  *(a1 + 8288) = xmmword_277BF5532;
  *(a1 + 8272) = unk_277BF5522;
  *(a1 + 8464) = 0;
  *(a1 + 8400) = xmmword_277BF55A2;
  *(a1 + 8416) = unk_277BF55B2;
  *(a1 + 8432) = xmmword_277BF55C2;
  *(a1 + 8448) = unk_277BF55D2;
  *(a1 + 8336) = xmmword_277BF5562;
  *(a1 + 8352) = *algn_277BF5572;
  *(a1 + 8368) = xmmword_277BF5582;
  *(a1 + 8384) = unk_277BF5592;
  memcpy((a1 + 8468), &unk_277BF55E6, 0x2ECuLL);
  *(a1 + 9232) = 165871616;
  *(a1 + 9216) = xmmword_277BF58D2;
  *(a1 + 9368) = 0;
  *(a1 + 9304) = xmmword_277BF592A;
  *(a1 + 9320) = unk_277BF593A;
  *(a1 + 9336) = xmmword_277BF594A;
  *(a1 + 9352) = unk_277BF595A;
  *(a1 + 9240) = xmmword_277BF58EA;
  *(a1 + 9256) = *algn_277BF58FA;
  *(a1 + 9272) = xmmword_277BF590A;
  *(a1 + 9288) = unk_277BF591A;
  *(a1 + 9404) = 448418543;
  *(a1 + 9372) = xmmword_277BF596E;
  *(a1 + 9388) = unk_277BF597E;
  *(a1 + 12506) = 0;
  *(a1 + 12490) = xmmword_277BF5996;
  *(a1 + 12690) = 0;
  *(a1 + 12626) = xmmword_277BF59E8;
  *(a1 + 12642) = unk_277BF59F8;
  *(a1 + 12658) = xmmword_277BF5A08;
  *(a1 + 12674) = unk_277BF5A18;
  *(a1 + 12562) = xmmword_277BF59A8;
  *(a1 + 12578) = unk_277BF59B8;
  *(a1 + 12594) = xmmword_277BF59C8;
  *(a1 + 12610) = unk_277BF59D8;
  *(a1 + 12706) = 667638587;
  *(a1 + 12702) = 0;
  *(a1 + 12694) = 0xC8A3CC54E185D0BLL;
  *(a1 + 12714) = 21198;
  *(a1 + 12718) = 0;
  *(a1 + 12720) = 15913;
  *(a1 + 12724) = 0;
  *(a1 + 12790) = xmmword_277BF5A84;
  *(a1 + 12806) = unk_277BF5A94;
  *(a1 + 12822) = xmmword_277BF5AA4;
  *(a1 + 12726) = xmmword_277BF5A44;
  *(a1 + 12742) = unk_277BF5A54;
  *(a1 + 12758) = xmmword_277BF5A64;
  *(a1 + 12774) = unk_277BF5A74;
  memcpy((a1 + 12838), &unk_277BF5AB4, 0x30CuLL);
  *(a1 + 14122) = xmmword_277BF5E00;
  *(a1 + 14138) = unk_277BF5E10;
  *(a1 + 14154) = xmmword_277BF5E20;
  *(a1 + 14170) = unk_277BF5E30;
  *(a1 + 14058) = xmmword_277BF5DC0;
  *(a1 + 14074) = unk_277BF5DD0;
  *(a1 + 14090) = xmmword_277BF5DE0;
  *(a1 + 14106) = unk_277BF5DF0;
  memcpy((a1 + 13618), &unk_277BF6514, 0x1B8uLL);
  memcpy((a1 + 15170), &unk_277BF66CC, 0x14B8uLL);
  memcpy((a1 + 20474), &unk_277BF7B84, 0x220uLL);
  v2 = 0;
  *(a1 + 11868) = 0;
  *(a1 + 11852) = xmmword_277BF5E40;
  *(a1 + 11886) = 0;
  *(a1 + 11870) = xmmword_277BF5E52;
  *(a1 + 11904) = 408289280;
  *(a1 + 11888) = xmmword_277BF5E64;
  do
  {
    v3 = a1 + 12508 + v2;
    *v3 = *(&unk_277BF5E7C + v2);
    *(v3 + 16) = *(&unk_277BF5E7C + v2 + 16);
    v2 += 18;
  }

  while (v2 != 54);
  *(a1 + 15046) = xmmword_277BF5ED2;
  *(a1 + 15062) = unk_277BF5EE2;
  *(a1 + 15078) = xmmword_277BF5EF2;
  *(a1 + 15094) = *"ji-S";
  *(a1 + 15014) = xmmword_277BF5EB2;
  *(a1 + 15030) = unk_277BF5EC2;
  *(a1 + 15110) = 0x5B02881200;
  *(a1 + 15118) = 0;
  *(a1 + 15160) = 0x5B02881200;
  *(a1 + 15168) = 0;
  *(a1 + 15152) = 5964424;
  *(a1 + 15136) = *algn_277BF5F2C;
  *(a1 + 15120) = xmmword_277BF5F1C;
  *(a1 + 21034) = 0;
  *(a1 + 21018) = xmmword_277BF5F44;
  *(a1 + 21196) = xmmword_277BF5FF6;
  *(a1 + 21212) = unk_277BF6006;
  *(a1 + 21224) = unk_277BF6012;
  *(a1 + 21132) = xmmword_277BF5FB6;
  *(a1 + 21148) = unk_277BF5FC6;
  *(a1 + 21164) = xmmword_277BF5FD6;
  *(a1 + 21180) = unk_277BF5FE6;
  *(a1 + 21068) = xmmword_277BF5F76;
  *(a1 + 21084) = unk_277BF5F86;
  *(a1 + 21100) = xmmword_277BF5F96;
  *(a1 + 21116) = unk_277BF5FA6;
  result = 1.33509524e-307;
  *(a1 + 21036) = xmmword_277BF5F56;
  *(a1 + 21052) = *dbl_277BF5F66;
  *(a1 + 12488) = 0;
  *(a1 + 12484) = 2237;
  return result;
}

void *sub_277A46C04(uint64_t a1)
{
  result = memcpy(*(a1 + 24712), *(a1 + 24704), 0x52FCuLL);
  if (*(a1 + 25300))
  {
    for (i = 0; i != 28; i += 4)
    {
      v4 = *(a1 + 240 + i);
      if (v4 != -1)
      {
        v5 = *(a1 + 416 + 8 * v4);
        if (v5)
        {
          result = memcpy((v5 + 1496), *(a1 + 24704), 0x52FCuLL);
        }
      }
    }

    v6 = *(a1 + 25312);
    if (*(v6 + 96))
    {
      v7 = 0;
      v8 = 1496;
      do
      {
        result = memcpy((*(v6 + 88) + v8), *(a1 + 24704), 0x52FCuLL);
        ++v7;
        v6 = *(a1 + 25312);
        v8 += 22744;
      }

      while (v7 < *(v6 + 96));
    }
  }

  return result;
}

void *sub_277A46CC8(uint64_t a1)
{
  v2 = a1 + 20480;
  *(a1 + 19124) = 0u;
  *(a1 + 19140) = 0u;
  *(a1 + 19092) = 0u;
  *(a1 + 19108) = 0u;
  *(a1 + 19060) = 0u;
  *(a1 + 19076) = 0u;
  *(a1 + 19028) = 0u;
  *(a1 + 19044) = 0u;
  *(a1 + 18996) = 0u;
  *(a1 + 19012) = 0u;
  v3 = *(a1 + 232);
  v4 = *(v3 + 80);
  if (v4)
  {
    bzero(v4, *(v3 + 264) * *(v3 + 260));
    v3 = *(a1 + 232);
  }

  *(v3 + 1484) = 0xFFFF00FF00000001;
  *(*(a1 + 232) + 1492) = 0;
  *(v2 + 2564) = 0xFF000000010101;
  *(v2 + 2572) = 0xFFFF;
  sub_27798F98C(a1);
  sub_277A464B0(*(a1 + 24704));
  memcpy((*(a1 + 24704) + 11912), &unk_277BC0A3E, 0x11EuLL);
  memcpy((*(a1 + 24704) + 12198), &unk_277BC0A3E, 0x11EuLL);
  *(*(a1 + 24704) + 21240) = 1;

  return sub_277A46C04(a1);
}

uint64_t sub_277A46DC8(uint64_t result, int a2)
{
  v2 = 0;
  v3 = a2 > 4;
  if (a2 > 0)
  {
    ++v3;
  }

  v4 = (result + 16);
  v5 = 4;
  do
  {
    v6 = v2 >> v3;
    if ((v2 >> v3) >= 9 - a2)
    {
      v7 = 9 - a2;
    }

    else
    {
      v7 = v2 >> v3;
    }

    if (a2 > 0)
    {
      v6 = v7;
    }

    if (v6 <= 1)
    {
      LOBYTE(v6) = 1;
    }

    v8 = 0x101010101010101 * v6;
    *v4 = v8;
    v4[1] = v8;
    v9 = 0x101010101010101 * (v6 + v5);
    *(v4 - 2) = v9;
    *(v4 - 1) = v9;
    ++v2;
    v4 += 6;
    v5 += 2;
  }

  while (v2 != 64);
  return result;
}

int *sub_277A46E40(uint64_t a1, int a2, int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a1 + 18992;
  result = sub_277A46DC8(a1 + 19184, *(a1 + 23040));
  v8 = *(v6 + 4032);
  v39 = v8;
  v9 = *(a1 + 23032);
  v40 = v9;
  v10 = *(v6 + 4036);
  v37 = v10;
  v38 = v9;
  if (a2 < a3)
  {
    v11 = (v6 + 4054);
    v12 = a2;
    result = &v37;
    do
    {
      if (!v12 && !v8 && !v10)
      {
        break;
      }

      v14 = v12 != 2 || HIDWORD(v9) != 0;
      if (v9)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == 1;
      }

      if (!v15 && v14)
      {
        for (i = 0; i != 8; ++i)
        {
          v17 = 0;
          v18 = 1;
          v19 = a1 + 22256 + (v12 << 8) + 32 * i;
          do
          {
            v20 = v18;
            if (v18)
            {
              v21 = &v39;
            }

            else
            {
              v21 = &v37;
            }

            v22 = v21[v12];
            if (*v6 && ((*(a1 + 19124 + 4 * i) >> byte_277BF7DA4[2 * v12 + v17]) & 1) != 0)
            {
              v23 = v22 + *(a1 + 18996 + 16 * i + 2 * byte_277BF7DA4[2 * v12 + v17]);
              if (v23 >= 0x3F)
              {
                v24 = 63;
              }

              else
              {
                v24 = v23;
              }

              if (v23 >= 0)
              {
                v22 = v24;
              }

              else
              {
                v22 = 0;
              }
            }

            if (*(v6 + 4052))
            {
              v25 = (*v11 << (v22 >> 5)) + v22;
              if (v25 >= 0x3F)
              {
                v26 = 63;
              }

              else
              {
                v26 = (*v11 << (v22 >> 5)) + v22;
              }

              if (v25 >= 0)
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              *(v19 + 16 * v17) = v27;
              for (j = 1; j != 8; ++j)
              {
                v29 = 0;
                v30 = 1;
                do
                {
                  v31 = v30;
                  v32 = ((v11[j] + *(a1 + 23054 + v29)) << (v22 >> 5)) + v22;
                  if (v32 >= 0x3F)
                  {
                    v33 = 63;
                  }

                  else
                  {
                    v33 = ((v11[j] + *(a1 + 23054 + v29)) << (v22 >> 5)) + v22;
                  }

                  if (v32 >= 0)
                  {
                    v34 = v33;
                  }

                  else
                  {
                    v34 = 0;
                  }

                  *(v19 + 16 * v17 + 2 * j + v29) = v34;
                  v29 = 1;
                  v30 = 0;
                }

                while ((v31 & 1) != 0);
              }
            }

            else
            {
              v35 = (v19 + 16 * v17);
              v36 = 0x101010101010101 * v22;
              *v35 = v36;
              v35[1] = v36;
            }

            v18 = 0;
            v17 = 1;
          }

          while ((v20 & 1) != 0);
        }
      }

      ++v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t sub_277A4708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, _DWORD *a9)
{
  *a1 = 0;
  if (a9[8] <= a6 || a9[9] <= a7)
  {
    return 0;
  }

  v10 = a9[1];
  v11 = a9[2];
  v12 = v11 | (a7 << v11 >> 2);
  v13 = v10 | (a6 << v10 >> 2);
  v14 = (*(a3 + 568) + 8 * (v12 * *(a3 + 580)) + 8 * v13);
  v15 = *v14;
  if (!*v14)
  {
    return 255;
  }

  v16 = a8;
  v17 = a5;
  v21 = v10;
  if (a4 && *(a4 + 4 * (*(v15 + 167) & 7) + 10692))
  {
    v22 = 0;
  }

  else if (a8)
  {
    v22 = byte_277C3BD80[byte_277C3BCDE[4 * *v15 + 2 * v10 + v11]];
    if (v22 > 0x10)
    {
      if (v22 == 17)
      {
        v22 = 9;
      }

      else if (v22 == 18)
      {
        v22 = 10;
      }
    }

    else if ((v22 - 11) < 2 || v22 == 4)
    {
      v22 = 3;
    }
  }

  else
  {
    v22 = v15[145];
    if (((*(v15 + 167) & 0x80) != 0 || v15[16] >= 1) && !v15[144])
    {
      v25 = *v15;
      v22 = v15[(((byte_277C3F990[v25] - 1) & v13) >> byte_277BFC806[v25]) + 146 + (((byte_277C36D60[v25] - 1) & v12) >> byte_277BFC81C[v25] << byte_277BFC832[v25])];
    }
  }

  v26 = dword_277C3BF30;
  if (a5)
  {
    v27 = a7;
  }

  else
  {
    v27 = a6;
  }

  if (!a5)
  {
    v26 = dword_277C3BEE4;
  }

  if (((v26[v22] - 1) & v27) == 0)
  {
    v52 = v27;
    v49 = v11 | (a7 << v11 >> 2);
    v53 = v21;
    v50 = a3 + 19184;
    v51 = v11;
    v28 = sub_277A47B90(a3, a3 + 19184, a5, a8, v15);
    if (v15[144])
    {
      v29 = (*(v15 + 167) & 0x80) != 0 || v15[16] > 0;
    }

    else
    {
      v29 = 0;
    }

    if (v52)
    {
      v30 = v14[-a2];
      if (v30)
      {
        v48 = v29;
        v31 = -1 << v51;
        if (!v17)
        {
          v31 = 0;
        }

        v32 = -1 << v53;
        if (v17)
        {
          v32 = 0;
        }

        if (a4 && *(a4 + 4 * (*(v30 + 167) & 7) + 10692))
        {
          v33 = v28;
          v34 = 0;
          v35 = v50;
        }

        else
        {
          v35 = v50;
          v33 = v28;
          if (v16)
          {
            v34 = sub_277A47D0C(*v30, v53, v51);
          }

          else
          {
            v34 = v30[145];
            if (((*(v30 + 167) & 0x80) != 0 || v30[16] >= 1) && !v30[144])
            {
              v36 = *v30;
              v34 = v30[(((byte_277C3F990[v36] - 1) & (v13 + v32)) >> byte_277BFC806[v36]) + 146 + (((byte_277C36D60[v36] - 1) & (v49 + v31)) >> byte_277BFC81C[v36] << byte_277BFC832[v36])];
            }
          }
        }

        v37 = v34;
        v38 = sub_277A47B90(a3, v35, v17, v16, v30);
        v39 = v30[144];
        if (v30[144])
        {
          v40 = v51;
          v39 = (*(v30 + 167) & 0x80) != 0 || v30[16] > 0;
          v41 = v53;
        }

        else
        {
          v41 = v53;
          v40 = v51;
        }

        if (v33 | v38)
        {
          v42 = byte_277C3CAE8;
          if (!v17)
          {
            v42 = byte_277C3CAFE;
          }

          if ((v39 & v48) != 1 || ((v42[byte_277C3BCDE[4 * *v15 + 2 * v41 + v40]] - 1) & v52) == 0)
          {
            v43 = &unk_277BF7DF8;
            if (!v17)
            {
              v43 = &unk_277BF7DAC;
            }

            v44 = v43[v22];
            v45 = v43[v37];
            if (v44 < v45)
            {
              v45 = v44;
            }

            if (v16)
            {
              if (v45)
              {
                LOBYTE(v46) = 6;
              }

              else
              {
                LOBYTE(v46) = 4;
              }
            }

            else
            {
              v46 = dword_277BF7E44[v45];
            }

            *a1 = v46;
            if (v46)
            {
              if (v33)
              {
                v47 = v33;
              }

              else
              {
                v47 = v38;
              }

              *(a1 + 8) = v35 + 48 * v47;
            }
          }
        }

        return v22;
      }

      return 255;
    }
  }

  return v22;
}