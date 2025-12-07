int *sub_1952F6134(int *result, int a2)
{
  v2 = result + 9;
  v3 = *result;
  if (v3 <= a2)
  {
    *v2 = 0;
    v7 = 1;
  }

  else
  {
    v4 = v3 - a2;
    if (v4 >= 50)
    {
      v5 = v4;
      v6 = v4;
    }

    else
    {
      v5 = byte_19548BF08[v4];
      v6 = byte_19548BF08[v4];
    }

    v8 = &v2[v5 - 1];
    v9 = v4 - v6 + 1;
    if (v9 != 1)
    {
      *v8 = *v8 % dword_19548BEE0[v9];
    }

    v7 = v8 - v2 + 1;
    v10 = &v2[v7];
    while (--v10 >= v2)
    {
      if (*v10 || v7 == 1)
      {
        break;
      }

      --v7;
    }
  }

  *result = v7;
  return result;
}

uint64_t uprv_decNumberSquareRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v74 = 0uLL;
  v76 = 0;
  v75 = 0;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  memset(v82, 0, 48);
  memset(v81, 0, 60);
  memset(v80, 0, 60);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  if ((*(a2 + 8) & 0x70) != 0)
  {
    if ((*(a2 + 8) & 0x40) == 0)
    {
      sub_1952F3D64(a1, a2, 0, a3, &v70);
      goto LABEL_70;
    }

    if ((*(a2 + 8) & 0x80) == 0)
    {
      uprv_decNumberCopy(a1, a2);
      goto LABEL_70;
    }

    goto LABEL_21;
  }

  v6 = *(a2 + 4) >> 1;
  if (!*(a2 + 9) && *a2 == 1)
  {
    v7 = uprv_decNumberCopy(a1, a2);
    *(a1 + 4) = v6;
    sub_1952F0618(v7, a3, &v70 + 1, &v70);
    goto LABEL_70;
  }

  if ((*(a2 + 8) & 0x80) != 0)
  {
LABEL_21:
    v14 = 128;
    goto LABEL_71;
  }

  v8 = *a2;
  if (*a3 + 1 > *a2)
  {
    v9 = *a3 + 1;
  }

  else
  {
    v9 = *a2;
  }

  if (v9 <= 7)
  {
    v10 = 7;
  }

  else
  {
    v10 = v9;
  }

  if (v8 <= 49)
  {
    v8 = byte_19548BF08[v8];
  }

  v11 = (v8 + 11);
  if (v11 <= 48)
  {
    v12 = 0;
    v13 = v82;
  }

  else
  {
    v12 = malloc_type_malloc(v11, 0x1000040CBA68D63uLL);
    v13 = v12;
    if (!v12)
    {
      v14 = 16;
LABEL_71:
      sub_1952F0784(a1, v14, a3);
      return a1;
    }
  }

  v65 = v10;
  v15 = v10 + 2;
  v16 = v15;
  if (v9 < 48)
  {
    v16 = byte_19548BF08[v15];
  }

  memset(v73, 0, 28);
  v67 = 0;
  v68 = 0;
  v17 = (v16 + 11);
  if (v17 < 61)
  {
    v62 = v6;
    v20 = 0;
    v63 = 0;
    v24 = v80;
    v23 = v81;
  }

  else
  {
    v18 = malloc_type_malloc((v16 + 11), 0x1000040CBA68D63uLL);
    v19 = v17;
    v20 = v18;
    v21 = malloc_type_malloc(v19, 0x1000040CBA68D63uLL);
    v22 = v21;
    if (!v20 || !v21)
    {
      LODWORD(v70) = 16;
      goto LABEL_64;
    }

    v62 = v6;
    v23 = v20;
    v63 = v21;
    v24 = v21;
  }

  uprv_decNumberCopy(v13, a2);
  v25 = *v13 + v13[1];
  v13[1] = -*v13;
  uprv_decContextDefault(&v74, 64);
  *(&v74 + 4) = 0xC46536013B9AC9FFLL;
  LODWORD(v74) = v65;
  LOBYTE(v78) = 0;
  LODWORD(v77) = 3;
  *(v23 + 8) = 0;
  *v23 = 3;
  if (v25)
  {
    ++v25;
    v26 = 2;
    v27 = 5;
    --v13[1];
    v28 = 8;
    v29 = 1;
    v31 = -2;
    v30 = -4;
  }

  else
  {
    v26 = 8;
    v27 = 1;
    v28 = 2;
    v29 = 5;
    v30 = -3;
    v31 = -3;
  }

  HIDWORD(v77) = v30;
  v23[1] = v31;
  BYTE1(v78) = 9;
  BYTE2(v78) = v29;
  BYTE3(v78) = v28;
  *(v23 + 9) = 9;
  v64 = v23 + 9;
  *(v23 + 10) = v27;
  *(v23 + 11) = v26;
  v32 = sub_1952F2D24(v23, v23, v13, &v74, &v69);
  sub_1952F0830(v32, v23, &v77, &v74, 0, &v69);
  LOWORD(v72) = 0;
  v71 = 1;
  LOWORD(v78) = 1280;
  v77 = 0xFFFFFFFF00000001;
  v33 = 3;
  do
  {
    v34 = 2 * v33 - 2;
    if (v34 >= v15)
    {
      v34 = v15;
    }

    LODWORD(v74) = v34;
    v35 = sub_1952F17CC(v24, v13, v23, &v74, 128, &v69);
    sub_1952F0830(v35, v24, v23, &v74, 0, &v69);
    sub_1952F2D24(v23, v24, &v77, &v74, &v69);
    v33 = v74;
  }

  while (v74 < v15);
  v73[0] = *a3;
  *(v73 + 12) = *(a3 + 12);
  HIDWORD(v73[0]) = 3;
  v36 = v25 + (v25 >> 31);
  v37 = *v23;
  v38 = v23[1] + v25 / 2;
  v68 = 0;
  HIDWORD(v70) = 0;
  v23[1] = v38;
  sub_1952F03A4(v23, v73, v64, v37, &v70 + 1, &v68);
  sub_1952F0618(v23, v73, &v70 + 1, &v68);
  v39 = v68;
  if ((v68 & 0x200) == 0)
  {
    v60 = v20;
    v61 = v12;
    v40 = v36 >> 1;
    v41 = v68 & 0xFFFFF5DF;
    LODWORD(v70) = v68 & 0xFFFFF5DF;
    v42 = *v23;
    v23[1] -= v40;
    LODWORD(v74) = v74 - 1;
    HIDWORD(v77) = ~v42;
    v43 = 0x80;
    v44 = sub_1952F0830(v24, v23, &v77, &v74, 128, &v69);
    HIDWORD(v74) = 1;
    v45 = sub_1952F2D24(v44, v24, v24, &v74, &v69);
    sub_1952F1150(v45, v13, v24, &v74, 1, &v69);
    if ((v24[2] & 0x80000000) == 0)
    {
      v46 = sub_1952F0830(v24, v23, &v77, &v74, 0, &v69);
      HIDWORD(v74) = 5;
      v47 = sub_1952F2D24(v46, v24, v24, &v74, &v69);
      sub_1952F1150(v47, v24, v13, &v74, 1, &v69);
      if ((v24[2] & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      v43 = 0;
    }

    ++HIDWORD(v77);
    BYTE1(v78) = 1;
    v48 = sub_1952F0830(v23, v23, &v77, &v74, v43, &v69);
    *(v73 + 4) = vsub_s32(*(v73 + 4), vdup_n_s32(v40));
    sub_1952F0830(v48, &v71, v23, v73, 0, &v69);
LABEL_42:
    v23[1] += v40;
    v49 = uprv_decNumberCopy(v24, v23);
    sub_1952F583C(v49, a3, 1, 1, &v67);
    if ((2 * *v24 - 1) <= v65)
    {
      v66 = 0;
      sub_1952F2D24(v24, v24, v24, &v74, &v66);
      v20 = v60;
      if ((v66 & 0x200) != 0)
      {
        v41 = v39 | 0x820;
        LODWORD(v70) = v39 | 0x820;
        v12 = v61;
      }

      else
      {
        sub_1952F1150(&v77, v24, a2, &v74, 1, &v66);
        v12 = v61;
        if (BYTE1(v78) || v77 != 1 || (v78 & 0x70) != 0)
        {
          v41 = v39 | 0x820;
        }

        else
        {
          v55 = v23[1];
          v56 = v62 - v55;
          if ((v62 - v55) >= 0)
          {
            v57 = *(a3 + 4) - (v55 + *a3) + 1;
            if (v56 > v57 && *(a3 + 24))
            {
              v41 |= 0x400u;
              LODWORD(v70) = v41;
              v56 = v57;
            }

            if (v67 < v56)
            {
              v41 |= 0x400u;
              LODWORD(v70) = v41;
              v56 = v67;
            }

            if (v56 >= 1)
            {
              v58 = *v23;
              if (v58 <= 49)
              {
                v58 = byte_19548BF08[v58];
              }

              sub_1952F5D20(v64, v58, v56);
              v59 = v23[1] + v56;
              *v23 -= v56;
              v23[1] = v59;
              v41 = v70;
            }

            goto LABEL_53;
          }

          v41 |= 0x800u;
        }

        LODWORD(v70) = v41;
      }
    }

    else
    {
      v41 = v39 | 0x820;
      LODWORD(v70) = v39 | 0x820;
      v20 = v60;
      v12 = v61;
    }

LABEL_53:
    v22 = v63;
    if ((v41 & 0x2000) != 0)
    {
      v50 = *a2 + *(a2 + 4);
      v51 = *(a3 + 8);
      v52 = v50 <= 2 * v51;
      v53 = v50 <= 2 * v51 ? v41 : v41 & 0xFFFFCFFF;
      if (!v52 || (v53 & 0x20) == 0)
      {
        if ((v53 & 0x20) == 0)
        {
          v53 &= 0xFFFFDFDF;
        }

        LODWORD(v70) = v53;
      }
    }

    uprv_decNumberCopy(a1, v23);
    goto LABEL_64;
  }

  LODWORD(v70) = v68;
  uprv_decNumberCopy(a1, v23);
  v22 = v63;
LABEL_64:
  if (v12)
  {
    free(v12);
  }

  if (v20)
  {
    free(v20);
  }

  if (v22)
  {
    free(v22);
  }

LABEL_70:
  v14 = v70;
  if (v70)
  {
    goto LABEL_71;
  }

  return a1;
}

unsigned int *uprv_decNumberSubtract(unsigned int *a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  v7 = 0;
  sub_1952F0830(a1, a2, a3, a4, 128, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

unsigned int *uprv_decNumberToIntegralExact(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v9 = 0;
  memset(v8, 0, 28);
  v7 = 0;
  if ((*(a2 + 8) & 0x70) != 0)
  {
    if ((*(a2 + 8) & 0x40) == 0)
    {
      sub_1952F3D64(a1, a2, 0, a3, &v7);
      v5 = v7;
      if (!v7)
      {
        return a1;
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ((*(a2 + 4) & 0x80000000) == 0)
  {
LABEL_6:
    uprv_decNumberCopy(a1, a2);
    return a1;
  }

  v8[0] = *a3;
  *(v8 + 12) = *(a3 + 12);
  LODWORD(v8[0]) = *a2;
  LODWORD(v8[1]) = 0;
  LOWORD(v10) = 0;
  v9 = 1;
  uprv_decNumberQuantize(a1, a2, &v9, v8);
  v5 = DWORD1(v8[1]);
  if (DWORD1(v8[1]))
  {
LABEL_8:
    sub_1952F0784(a1, v5, a3);
  }

  return a1;
}

unsigned int *uprv_decNumberToIntegralValue(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  *&v5[12] = *(a3 + 12);
  *v5 = *a3;
  *&v5[16] = 0;
  result = uprv_decNumberToIntegralExact(a1, a2, v5);
  *(a3 + 20) |= v5[20] & 0x80;
  return result;
}

uint64_t uprv_decNumberXor(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a2 + 4) || *(a2 + 8) > 0xFu || *(a3 + 4) || *(a3 + 8) >= 0x10u)
  {
LABEL_25:
    *a1 = 1;
    *(a1 + 8) = 32;
    uprv_decContextSetStatus(a4, 128);
    return a1;
  }

  v7 = *a2;
  v5 = (a2 + 9);
  v6 = v7;
  if (v7 <= 49)
  {
    v6 = byte_19548BF08[v6];
  }

  v8 = a1 + 9;
  v9 = *a3;
  if (*a3 <= 49)
  {
    v9 = byte_19548BF08[v9];
  }

  v10 = *a4;
  if (v10 >= 50)
  {
LABEL_12:
    v11 = (a3 + 9);
    v12 = &v5[v6 - 1];
    v13 = a3 + 9 + v9 - 1;
    v14 = a1 + v10 + 8;
    v15 = (a1 + 9);
    while (1)
    {
      v16 = v5 <= v12 ? *v5 : 0;
      v17 = v11 <= v13 ? *v11 : 0;
      *v15 = 0;
      if (v17 | v16)
      {
        if ((v17 ^ v16))
        {
          *v15 = 1;
        }

        if (((v17 - 10 * ((429496730 * v17) >> 32)) | (v16 - 10 * ((429496730 * v16) >> 32))) >= 2)
        {
          goto LABEL_25;
        }
      }

      ++v5;
      ++v11;
      if (++v15 > v14)
      {
        goto LABEL_28;
      }
    }
  }

  if (v10)
  {
    v10 = byte_19548BF08[v10];
    goto LABEL_12;
  }

  LODWORD(v15) = a1 + 9;
LABEL_28:
  v19 = v15 - v8;
  v20 = (v8 + v15 - v8 - 1);
  if (v20 >= v8)
  {
    v21 = v15 - a1 - 10;
    do
    {
      if (*v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 == 0;
      }

      if (v22)
      {
        break;
      }

      --v20;
      --v21;
    }

    while (v20 >= v8);
    v19 = v21 + 1;
  }

  *a1 = v19;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

const char *uprv_decNumberClassToString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Invalid";
  }

  else
  {
    return off_1E740D1B0[a1];
  }
}

uint64_t uprv_decNumberCopyNegate(uint64_t a1, unsigned int *a2)
{
  result = uprv_decNumberCopy(a1, a2);
  *(result + 8) ^= 0x80u;
  return result;
}

unint64_t uprv_decNumberGetBCD(int *a1, unint64_t a2)
{
  v2 = (a2 + *a1 - 1);
  if (v2 >= a2)
  {
    v3 = a1 + 9;
    do
    {
      v4 = *v3++;
      *v2-- = v4;
    }

    while (v2 >= a2);
  }

  return a2;
}

unsigned int *uprv_decNumberSetBCD(unsigned int *result, char *a2, unsigned int a3)
{
  v3 = *result;
  if (*result <= 49)
  {
    v3 = byte_19548BF08[v3];
  }

  if (a3)
  {
    v4 = &a2[a3];
    v5 = result + v3 + 8;
    do
    {
      v6 = *a2++;
      *v5-- = v6;
    }

    while (a2 < v4);
  }

  *result = a3;
  return result;
}

BOOL uprv_decNumberIsSubnormal(int *a1, uint64_t a2)
{
  if ((a1[2] & 0x70) != 0)
  {
    return 0;
  }

  v2 = *a1;
  return (*(a1 + 9) || v2 != 1) && v2 + a1[1] <= *(a2 + 8);
}

unsigned int *uprv_decNumberTrim(unsigned int *a1)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  uprv_decContextDefault(v3, 0);
  return sub_1952F583C(a1, v3, 0, 1, &v5);
}

uint64_t sub_1952F6E20(char *a1, int a2, unsigned __int8 *a3, int a4, int a5, char *a6, int a7)
{
  v7 = &a6[a2];
  v8 = &a6[a4];
  if (!a5)
  {
    goto LABEL_12;
  }

  v8 += a5;
  if (a5 <= a2 && a1 == a6)
  {
    v9 = &a1[a5];
    v10 = &a6[a5];
    goto LABEL_13;
  }

  if (a5 >= 1)
  {
    v9 = a1;
    v10 = a6;
    do
    {
      if (v9 >= &a1[a2])
      {
        v11 = 0;
      }

      else
      {
        v11 = *v9;
      }

      *v10++ = v11;
      ++v9;
    }

    while (v10 < &a6[a5]);
  }

  else
  {
LABEL_12:
    v10 = a6;
    v9 = a1;
  }

LABEL_13:
  if (v8 <= v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = &a6[a2];
  }

  if (v8 > v7)
  {
    v7 = v8;
  }

  if (v10 < v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = *v9++;
      v15 = v13 + v14;
      v16 = *a3++;
      v17 = v15 + v16 * a7;
      if (v17 > 9)
      {
        if ((v17 & 0x80000000) != 0)
        {
          v18 = v17 + 100;
          v19 = (26215 * ((v17 + 100) >> 1)) >> 17;
          *v10 = v18 - 10 * v19;
          v13 = v19 - 10;
          goto LABEL_25;
        }

        v13 = (26215 * (v17 >> 1)) >> 17;
        LOBYTE(v17) = v17 - 10 * v13;
      }

      else
      {
        v13 = 0;
      }

      *v10 = v17;
LABEL_25:
      if (++v10 >= v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  while (v10 < v7)
  {
    if (v9 >= &a1[a2])
    {
      v22 = *a3++;
      v20 = v22 * a7;
    }

    else
    {
      v21 = *v9++;
      v20 = v21;
    }

    v23 = v20 + v13;
    if (v23 > 9)
    {
      if ((v23 & 0x80000000) != 0)
      {
        v24 = v23 + 100;
        v25 = (26215 * ((v23 + 100) >> 1)) >> 17;
        *v10 = v24 - 10 * v25;
        v13 = v25 - 10;
        goto LABEL_38;
      }

      v13 = (26215 * (v23 >> 1)) >> 17;
      LOBYTE(v23) = v23 - 10 * v13;
    }

    else
    {
      v13 = 0;
    }

    *v10 = v23;
LABEL_38:
    ++v10;
  }

  if (v13)
  {
    if (v13 <= 0)
    {
      v26 = 1;
      for (i = a6; i < v7; ++i)
      {
        v28 = v26 - *i;
        v29 = v28 + 9;
        v30 = v28 < 0;
        v26 = v28 + 9 > 9;
        if (!(v30 ^ __OFSUB__(v29, 9) | (v29 == 9)))
        {
          LOBYTE(v29) = 0;
        }

        *i = v29;
      }

      v31 = v26 + ~v13;
      if (v31)
      {
        *i = v31;
        LODWORD(i) = i + 1;
      }

      LODWORD(v10) = a6;
      LODWORD(a6) = i;
    }

    else
    {
      *v10 = v13;
      LODWORD(v10) = v10 + 1;
    }
  }

  return (v10 - a6);
}

uint64_t sub_1952F7018(char *a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a5 > 49)
    {
      v10 = a5 + a4;
    }

    else
    {
      v10 = byte_19548BF08[a5] + a4;
    }

    if (v10 < a2)
    {
      return 1;
    }

    if (a2 + 1 < v10)
    {
      return 0xFFFFFFFFLL;
    }

    if (v10 < 0x48)
    {
      v18 = 0;
      v17 = v23;
    }

    else
    {
      v17 = malloc_type_malloc((v10 + 2), 0x100004077774924uLL);
      v18 = v17;
      if (!v17)
      {
        return 0x80000000;
      }
    }

    memset(v23, 0, 73);
    v16 = 0xFFFFFFFFLL;
    v19 = sub_1952F6E20(a1, a2, a3, a4, a5, v17, -1);
    if ((v19 & 0x80000000) == 0)
    {
      v20 = &v17[v19 - 1];
      if (v17 < v20)
      {
        v21 = v19 - 1;
        while (!*v17)
        {
          ++v17;
          if (!--v21)
          {
            v17 = v20;
            break;
          }
        }
      }

      v16 = *v17 != 0;
    }

    if (v18)
    {
      free(v18);
    }
  }

  else
  {
    if (a2 > a4)
    {
      return 1;
    }

    if (a2 < a4)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = a2 - 1;
    v12 = &a1[v11];
    v13 = &a3[v11];
    while (v12 >= a1)
    {
      v14 = *v12;
      v15 = *v13;
      if (v14 > v15)
      {
        return 1;
      }

      --v12;
      --v13;
      if (v14 < v15)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  return v16;
}

void sub_1952F71EC(uint64_t a1, unsigned int *a2, int a3, int *a4)
{
  if (!a3)
  {
    return;
  }

  v7 = a2[3];
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (a3 <= 4)
        {
          return;
        }
      }

      else if (a3 <= 5 && (a3 != 5 || (*(a1 + 9) & 1) == 0))
      {
        return;
      }

      goto LABEL_28;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_23;
    }

    if ((*(a1 + 8) & 0x80000000) == 0)
    {
LABEL_23:
      if (a3 <= 0)
      {
        return;
      }

LABEL_28:
      v9 = (a1 + 9);
      v10 = *a1;
      if (*a1 >= 2u)
      {
        v11 = (v10 - 2) + 10;
        v13 = (a1 + v11);
        v14 = v10 - 1;
        v15 = (a1 + 9);
        while (1)
        {
          v16 = *v15++;
          if (v16 != 9)
          {
            break;
          }

          if (!--v14)
          {
            v12 = 1;
            goto LABEL_34;
          }
        }
      }

      else
      {
        v11 = 9;
        v12 = *a1;
        v13 = (a1 + 9);
LABEL_34:
        if (dword_19548BEE0[v12] - 1 == *v13)
        {
          *v13 = dword_19548BEE0[v12 - 1];
          if (v11 >= 10)
          {
            bzero(v9, v11 - 9);
          }

          v17 = *(a1 + 4) + 1;
          *(a1 + 4) = v17;
          if (v10 + v17 > (a2[1] + 1))
          {

            sub_1952F7534(a1, a2, a4);
          }

          return;
        }
      }

      v18 = 1;
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      if (a3 <= 5)
      {
        return;
      }

      goto LABEL_28;
    }

LABEL_43:
    if ((a3 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_44;
  }

  if (v7 == 6)
  {
    if (*(a1 + 8) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

  if (v7 != 7)
  {
LABEL_46:
    v23 = *a4 | 0x40;
LABEL_47:
    *a4 = v23;
    return;
  }

  v8 = *(a1 + 9) % 5u;
  if ((a3 & 0x80000000) == 0 || v8 == 1)
  {
    if (a3 < 1 || v8)
    {
      return;
    }

    goto LABEL_28;
  }

LABEL_44:
  v19 = (a1 + 9);
  v10 = *a1;
  if (*a1 >= 2u)
  {
    v20 = (v10 - 2) + 10;
    v22 = (a1 + v20);
    v24 = v10 - 1;
    v25 = (a1 + 9);
    while (!*v25++)
    {
      if (!--v24)
      {
        v21 = 1;
        goto LABEL_53;
      }
    }

    goto LABEL_60;
  }

  v20 = 9;
  v21 = *a1;
  v22 = (a1 + 9);
LABEL_53:
  v27 = *v22;
  if (dword_19548BEE0[v21 - 1] != v27)
  {
LABEL_60:
    v18 = -1;
LABEL_61:
    if (v10 <= 49)
    {
      v10 = byte_19548BF08[v10];
    }

    sub_1952F6E20((a1 + 9), v10, &unk_19548C004, 1, 0, (a1 + 9), v18);
    return;
  }

  *v22 = LOBYTE(dword_19548BEE0[v21]) - 1;
  if (v20 >= 10)
  {
    memset(v19, 9, v20 - 9);
  }

  v28 = *(a1 + 4);
  *(a1 + 4) = v28 - 1;
  if (v28 == a2[2] - *a2 + 1)
  {
    if (v21 && v10 == 1)
    {
      *v22 = 0;
    }

    else
    {
      *v22 = v27 - 1;
      *a1 = v10 - 1;
    }

    *(a1 + 4) = v28;
    v23 = *a4 | 0x3820;
    goto LABEL_47;
  }
}

_BYTE *sub_1952F7534(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v7 = *(a1 + 9);
  result = (a1 + 9);
  v8 = *(result - 1);
  if (v7 || (*a1 == 1 ? (v9 = (v8 & 0x70) == 0) : (v9 = 0), !v9))
  {
    v10 = v8 & 0x80;
    *a1 = 1;
    *(a1 + 9) = 0;
    v11 = a2[3];
    if (v11 > 5)
    {
      if (v11 == 6)
      {
        if (v10)
        {
          goto LABEL_9;
        }
      }

      else if (v11 != 7)
      {
        goto LABEL_9;
      }
    }

    else if (v11)
    {
      if (v11 != 5)
      {
LABEL_9:
        LOBYTE(v10) = v10 | 0x40;
LABEL_15:
        *(a1 + 8) = v10;
        v13 = 2592;
LABEL_16:
        *a3 |= v13;
        return result;
      }
    }

    else if (!v10)
    {
      goto LABEL_9;
    }

    v12 = *a2;
    *a1 = v12;
    if (v12 >= 2)
    {
      memset(result, 9, (v12 - 1));
      result = (a1 + v12 + 8);
      LODWORD(v12) = 1;
    }

    *result = dword_19548BEE0[v12] - 1;
    *(a1 + 4) = a2[1] - *a2 + 1;
    goto LABEL_15;
  }

  v14 = a2[1];
  if (*(a2 + 24))
  {
    v14 = v14 - *a2 + 1;
  }

  if (*(a1 + 4) > v14)
  {
    *(a1 + 4) = v14;
    v13 = 1024;
    goto LABEL_16;
  }

  return result;
}

void sub_1952F7670(unsigned int *a1, uint64_t a2, int *a3, int *a4)
{
  v7 = *(a2 + 8) - *a2 + 1;
  v8 = a1 + 9;
  if (!*(a1 + 9) && *a1 == 1 && (a1[2] & 0x70) == 0)
  {
    if (a1[1] >= v7)
    {
      return;
    }

    a1[1] = v7;
    goto LABEL_17;
  }

  v9 = *a4;
  *a4 |= 0x1000u;
  v10 = a1[1];
  v11 = __OFSUB__(v7, v10);
  v12 = v7 - v10;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    if ((v9 & 0x20) == 0)
    {
      return;
    }

    v16 = v9 | 0x3000;
    goto LABEL_18;
  }

  *v17 = *a2;
  *&v17[3] = *(a2 + 12);
  v13 = *a1;
  v17[0] = *a1 - v12;
  v17[2] -= v12;
  sub_1952F03A4(a1, v17, a1 + 9, v13, a3, a4);
  sub_1952F71EC(a1, v17, *a3, a4);
  if ((*a4 & 0x20) != 0)
  {
    *a4 |= 0x2000u;
  }

  if (a1[1] > v7)
  {
    v14 = sub_1952F527C(v8, *a1, 1u);
    v15 = a1[1] - 1;
    *a1 = v14;
    a1[1] = v15;
  }

  if (!*v8 && *a1 == 1 && (a1[2] & 0x70) == 0)
  {
LABEL_17:
    v16 = *a4 | 0x400;
LABEL_18:
    *a4 = v16;
  }
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *this, UErrorCode *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = icu::DecimalFormat::DecimalFormat(this, 0, a2);
  if (*a2 <= 0)
  {
    v5 = *(icu::Locale::getDefault(v4) + 5);
    Instance = icu::NumberingSystem::createInstance(a2, v6);
    memset(v14, 0, 64);
    icu::Locale::Locale(v13, v5, 0, 0, 0);
    Name = icu::NumberingSystem::getName(Instance);
    v12 = sub_19537B84C(v13, Name, 0, a2);
    sub_1951F3478(v14, &v12);
    icu::Locale::~Locale(v9, v13);
    if (*a2 <= 0)
    {
      icu::number::impl::PatternParser::parseToExistingProperties(v14, (*(this + 45) + 8), 1, a2);
    }

    icu::DecimalFormat::touch(this, a2);
    icu::UnicodeString::~UnicodeString(v10, v14);
    if (Instance)
    {
      (*(*Instance + 8))(Instance);
    }
  }

  return this;
}

{
  v15 = *MEMORY[0x1E69E9840];
  v4 = icu::DecimalFormat::DecimalFormat(this, 0, a2);
  if (*a2 <= 0)
  {
    v5 = *(icu::Locale::getDefault(v4) + 5);
    Instance = icu::NumberingSystem::createInstance(a2, v6);
    memset(v14, 0, 64);
    icu::Locale::Locale(v13, v5, 0, 0, 0);
    Name = icu::NumberingSystem::getName(Instance);
    v12 = sub_19537B84C(v13, Name, 0, a2);
    sub_1951F3478(v14, &v12);
    icu::Locale::~Locale(v9, v13);
    if (*a2 <= 0)
    {
      icu::number::impl::PatternParser::parseToExistingProperties(v14, (*(this + 45) + 8), 1, a2);
    }

    icu::DecimalFormat::touch(this, a2);
    icu::UnicodeString::~UnicodeString(v10, v14);
    if (Instance)
    {
      (*(*Instance + 8))(Instance);
    }
  }

  return this;
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *this, const icu::DecimalFormatSymbols *a2, UErrorCode *a3)
{
  v6 = icu::NumberFormat::NumberFormat(this);
  *v7 = &unk_1F0939E60;
  v7[45] = 0;
  if (*a3 <= 0)
  {
    operator new();
  }

  if (a2)
  {
    (*(*a2 + 8))(a2, v6);
  }

  return this;
}

void icu::DecimalFormat::setPropertiesFromPattern(uint64_t this, const icu::UnicodeString *a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    icu::number::impl::PatternParser::parseToExistingProperties(a2, (*(this + 360) + 8), a3, a4);
  }
}

void icu::DecimalFormat::touch(icu::DecimalFormat *this, UErrorCode *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    if (*(this + 45))
    {
      v4 = (*(*this + 320))(this);
      memset(v5, 0, sizeof(v5));
      icu::Locale::Locale(v5, v4 + 1936);
      sub_19536A580(*(this + 45) + 8, v4, *(this + 45) + 1288, *(this + 45) + 3768, a2);
    }

    *a2 = U_MEMORY_ALLOCATION_ERROR;
  }
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  icu::DecimalFormat::DecimalFormat(this, 0, a3);
  if (*a3 <= 0)
  {
    icu::number::impl::PatternParser::parseToExistingProperties(a2, (*(this + 45) + 8), 1, a3);
    icu::DecimalFormat::touch(this, a3);
  }

  return this;
}

{
  icu::DecimalFormat::DecimalFormat(this, 0, a3);
  if (*a3 <= 0)
  {
    icu::number::impl::PatternParser::parseToExistingProperties(a2, (*(this + 45) + 8), 1, a3);
    icu::DecimalFormat::touch(this, a3);
  }

  return this;
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *this, const icu::UnicodeString *a2, icu::DecimalFormatSymbols *a3, UErrorCode *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(this, a3, a4);
  if (*a4 <= 0)
  {
    icu::Locale::Locale(v10, a3 + 1936);
    icu::DecimalFormat::setPropertiesFromPattern(this, a2, 1, v10, a4);
    icu::Locale::~Locale(v8, v10);
    icu::DecimalFormat::touch(this, a4);
  }

  return this;
}

{
  v11 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(this, a3, a4);
  if (*a4 <= 0)
  {
    icu::Locale::Locale(v10, a3 + 1936);
    icu::DecimalFormat::setPropertiesFromPattern(this, a2, 1, v10, a4);
    icu::Locale::~Locale(v8, v10);
    icu::DecimalFormat::touch(this, a4);
  }

  return this;
}

void icu::DecimalFormat::setPropertiesFromPattern(uint64_t this, const icu::UnicodeString *a2, uint64_t a3, const icu::Locale *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    icu::number::impl::PatternParser::parseToExistingProperties(a2, (*(this + 360) + 8), a3, a5);
    if (*a5 <= 0)
    {
      *(*(this + 360) + 116) = sub_19537BBA8(a4);
    }
  }
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *a1, const icu::UnicodeString *a2, icu::DecimalFormatSymbols *a3, unsigned int a4, UErrorCode *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(a1, a3, a5);
  if (*a5 <= 0)
  {
    if (a4 <= 0x10 && ((1 << a4) & 0x13C04) != 0)
    {
      icu::Locale::Locale(v13, a3 + 1936);
      icu::DecimalFormat::setPropertiesFromPattern(a1, a2, 2, v13, a5);
      icu::Locale::~Locale(v10, v13);
      if (a4 == 11)
      {
        operator new();
      }
    }

    else
    {
      icu::Locale::Locale(v13, a3 + 1936);
      icu::DecimalFormat::setPropertiesFromPattern(a1, a2, 1, v13, a5);
      icu::Locale::~Locale(v11, v13);
    }

    icu::DecimalFormat::touch(a1, a5);
  }

  return a1;
}

{
  v14 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(a1, a3, a5);
  if (*a5 <= 0)
  {
    if (a4 <= 0x10 && ((1 << a4) & 0x13C04) != 0)
    {
      icu::Locale::Locale(v13, a3 + 1936);
      icu::DecimalFormat::setPropertiesFromPattern(a1, a2, 2, v13, a5);
      icu::Locale::~Locale(v10, v13);
      if (a4 == 11)
      {
        operator new();
      }
    }

    else
    {
      icu::Locale::Locale(v13, a3 + 1936);
      icu::DecimalFormat::setPropertiesFromPattern(a1, a2, 1, v13, a5);
      icu::Locale::~Locale(v11, v13);
    }

    icu::DecimalFormat::touch(a1, a5);
  }

  return a1;
}

uint64_t icu::DecimalFormat::setParseAllInput(uint64_t result, int a2)
{
  v2 = *(result + 360);
  if (v2)
  {
    if (*(v2 + 480) != a2)
    {
      *(v2 + 480) = a2;
    }
  }

  return result;
}

icu::DecimalFormat *icu::DecimalFormat::setAttribute(icu::DecimalFormat *this, int a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return this;
  }

  v6 = *(this + 45);
  if (!v6)
  {
    v8 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_8;
  }

  if (a2 > 4095)
  {
    if (a2 <= 4097)
    {
      if (a2 == 4096)
      {
        icu::DecimalFormat::setFormatFailIfMoreThanMaxDigits(this, a3);
      }

      else
      {
        icu::DecimalFormat::setParseNoExponent(this, a3);
      }

      return this;
    }

    switch(a2)
    {
      case 4098:
        (*(*this + 544))(this, a3);
        return this;
      case 4099:
        icu::DecimalFormat::setParseCaseSensitive(this, a3);
        return this;
      case 4100:
        icu::DecimalFormat::setSignAlwaysShown(this, a3);
        return this;
    }

LABEL_44:
    v8 = U_UNSUPPORTED_ERROR;
LABEL_8:
    *a4 = v8;
    return this;
  }

  switch(a2)
  {
    case 0:
      (*(*this + 184))(this, a3 != 0);
      return this;
    case 1:
      (*(*this + 208))(this, a3 != 0);
      return this;
    case 2:
      (*(*this + 536))(this, a3 != 0);
      return this;
    case 3:
      goto LABEL_25;
    case 4:
      (*(*this + 224))(this, a3);
      return this;
    case 5:
      (*(*this + 224))(this, a3);
LABEL_25:
      (*(*this + 216))(this, a3);
      return this;
    case 6:
      goto LABEL_29;
    case 7:
      (*(*this + 240))(this, a3);
      return this;
    case 8:
      (*(*this + 240))(this, a3);
LABEL_29:
      (*(*this + 232))(this, a3);
      break;
    case 9:
      (*(*this + 400))(this, a3);
      break;
    case 10:
      (*(*this + 520))(this, a3);
      break;
    case 11:
      (*(*this + 280))(this, a3);
      break;
    case 13:
      (*(*this + 432))(this, a3);
      break;
    case 14:
      (*(*this + 464))(this, a3);
      break;
    case 15:
      (*(*this + 528))(this, a3);
      break;
    case 16:
      icu::DecimalFormat::setSignificantDigitsUsed(this, a3 != 0);
      break;
    case 17:
      icu::DecimalFormat::setMinimumSignificantDigits(this, a3);
      break;
    case 18:
      icu::DecimalFormat::setMaximumSignificantDigits(this, a3);
      break;
    case 19:
      (*(*this + 192))(this, a3 != 0);
      break;
    case 20:
      if (*(v6 + 480) != a3)
      {
        *(v6 + 480) = a3;
      }

      break;
    case 21:
      icu::DecimalFormat::setMultiplierScale(this, a3);
      break;
    case 22:
      icu::DecimalFormat::setMinimumGroupingDigits(this, a3);
      break;
    case 23:
      icu::DecimalFormat::setCurrencyUsage(this, a3, a4);
      break;
    case 48:
      v9 = a3 != 0;
      if (*(v6 + 765) != v9)
      {
        *(v6 + 765) = v9;
        v10 = U_ZERO_ERROR;
        icu::DecimalFormat::touch(this, &v10);
      }

      break;
    default:
      goto LABEL_44;
  }

  return this;
}

void icu::DecimalFormat::setSignificantDigitsUsed(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    v5 = *(v4 + 124);
    if (a2)
    {
      if (v5 == -1 && *(v4 + 104) == -1)
      {
        v7 = 1;
        v6 = 6;
        goto LABEL_10;
      }
    }

    else if (v5 != -1 || *(v4 + 104) != -1)
    {
      v6 = -1;
      v7 = -1;
LABEL_10:
      v9 = v2;
      v10 = v3;
      *(v4 + 124) = v7;
      *(v4 + 104) = v6;
      v8 = 0;
      icu::DecimalFormat::touch(this, &v8);
    }
  }
}

void icu::DecimalFormat::setMaximumSignificantDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4 && *(v4 + 104) != a2)
  {
    v5 = *(v4 + 124);
    if ((v5 & 0x80000000) == 0 && v5 > a2)
    {
      *(v4 + 124) = a2;
    }

    v7 = v2;
    v8 = v3;
    *(v4 + 104) = a2;
    v6 = 0;
    icu::DecimalFormat::touch(this, &v6);
  }
}

void icu::DecimalFormat::setMinimumSignificantDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4 && *(v4 + 124) != a2)
  {
    v5 = *(v4 + 104);
    if ((v5 & 0x80000000) == 0 && v5 < a2)
    {
      *(v4 + 104) = a2;
    }

    v7 = v2;
    v8 = v3;
    *(v4 + 124) = a2;
    v6 = 0;
    icu::DecimalFormat::touch(this, &v6);
  }
}

void icu::DecimalFormat::setMultiplierScale(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 132) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 132) = a2;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setParseNoExponent(icu::DecimalFormat *this, unsigned __int8 a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 476) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 476) = a2 != 0;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setCurrencyUsage(icu::DecimalFormat *a1, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = *(a1 + 45);
    if (v3)
    {
      if ((*(v3 + 64) & 1) != 0 || *(v3 + 68) != a2)
      {
        *(v3 + 68) = a2;
        *(v3 + 64) = 0;
        icu::DecimalFormat::touch(a1, a3);
      }
    }

    else
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
    }
  }
}

void icu::DecimalFormat::setMinimumGroupingDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 116) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 116) = a2;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setParseCaseSensitive(icu::DecimalFormat *this, unsigned __int8 a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 464) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 464) = a2 != 0;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setSignAlwaysShown(icu::DecimalFormat *this, unsigned __int8 a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 764) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 764) = a2 != 0;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setFormatFailIfMoreThanMaxDigits(icu::DecimalFormat *this, unsigned __int8 a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 76) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 76) = a2 != 0;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

uint64_t icu::DecimalFormat::getAttribute(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 360);
  if (!v4)
  {
    v5 = 7;
    goto LABEL_11;
  }

  if (a2 > 4095)
  {
    if (a2 <= 4097)
    {
      if (a2 == 4096)
      {
        return *(v4 + 76);
      }

      else
      {
        return *(v4 + 476);
      }
    }

    switch(a2)
    {
      case 4098:
        return *(v4 + 72);
      case 4099:
        return *(v4 + 464);
      case 4100:
        return *(v4 + 764);
    }

LABEL_59:
    v5 = 16;
LABEL_11:
    *a3 = v5;
    return 0xFFFFFFFFLL;
  }

  switch(a2)
  {
    case 0:
      return *(a1 + 340);
    case 1:
      return icu::NumberFormat::isGroupingUsed(a1);
    case 2:
      return *(v4 + 73);
    case 3:

      return icu::NumberFormat::getMaximumIntegerDigits(a1);
    case 4:
    case 5:

      return icu::NumberFormat::getMinimumIntegerDigits(a1);
    case 6:

      return icu::NumberFormat::getMaximumFractionDigits(a1);
    case 7:
    case 8:

      return icu::NumberFormat::getMinimumFractionDigits(a1);
    case 9:

      return icu::DecimalFormat::getMultiplier(a1);
    case 10:
      v6 = *(v4 + 84);
      goto LABEL_33;
    case 11:
      v7 = *(*a1 + 272);

      goto LABEL_53;
    case 13:
      v7 = *(*a1 + 424);

      goto LABEL_53;
    case 14:
      v7 = *(*a1 + 456);

LABEL_53:
      result = v7();
      break;
    case 15:
      v6 = *(v4 + 760);
LABEL_33:
      result = v6 & ~(v6 >> 31);
      break;
    case 16:
      result = *(v4 + 124) != -1 || *(v4 + 104) != -1;
      break;
    case 17:
      result = *(v4 + 3884);
      break;
    case 18:
      result = *(v4 + 3864);
      break;
    case 19:
      result = (*(*a1 + 200))(a1);
      break;
    case 21:
      result = *(v4 + 132);
      break;
    case 22:
      result = *(v4 + 116);
      break;
    case 23:
      if (*(v4 + 64))
      {
        result = 0;
      }

      else
      {
        result = *(v4 + 68);
      }

      break;
    case 48:
      result = *(v4 + 765);
      break;
    default:
      goto LABEL_59;
  }

  return result;
}

uint64_t icu::DecimalFormat::isDecimalSeparatorAlwaysShown(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 73);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 65;
  }

  return *v2;
}

BOOL icu::DecimalFormat::areSignificantDigitsUsed(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    Default = (v1 + 8);
  }

  else
  {
    Default = icu::number::impl::DecimalFormatProperties::getDefault(this);
  }

  return Default[29] != -1 || Default[24] != -1;
}

uint64_t icu::DecimalFormat::getMaximumSignificantDigits(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 3864);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 96);
  }

  return *v2;
}

uint64_t icu::DecimalFormat::getMinimumSignificantDigits(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 3884);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 116);
  }

  return *v2;
}

uint64_t icu::DecimalFormat::getMultiplier(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    Default = (v1 + 8);
  }

  else
  {
    Default = icu::number::impl::DecimalFormatProperties::getDefault(this);
  }

  v3 = Default[30];
  if (v3 == 1)
  {
    v4 = Default[21];
    if (v4)
    {
      return uprv_pow10(v4);
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t icu::DecimalFormat::getMultiplierScale(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 132);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 124);
  }

  return *v2;
}

uint64_t icu::DecimalFormat::getGroupingSize(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 84);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 76);
  }

  return *v2 & ~(*v2 >> 31);
}

uint64_t icu::DecimalFormat::getSecondaryGroupingSize(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 760);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 752);
  }

  return *v2 & ~(*v2 >> 31);
}

uint64_t icu::DecimalFormat::isParseNoExponent(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 476);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 468;
  }

  return *v2;
}

uint64_t icu::DecimalFormat::isDecimalPatternMatchRequired(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 72);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 64;
  }

  return *v2;
}

uint64_t icu::DecimalFormat::getCurrencyUsage(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1 && (*(v1 + 64) & 1) == 0)
  {
    return *(v1 + 68);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::DecimalFormat::getMinimumGroupingDigits(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 116);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 108);
  }

  return *v2;
}

uint64_t icu::DecimalFormat::isParseCaseSensitive(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 464);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 456;
  }

  return *v2;
}

uint64_t icu::DecimalFormat::isSignAlwaysShown(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 764);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 756;
  }

  return *v2;
}

uint64_t icu::DecimalFormat::isFormatFailIfMoreThanMaxDigits(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 76);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 68;
  }

  return *v2;
}

void icu::DecimalFormat::setGroupingUsed(icu::DecimalFormat *this, int a2)
{
  v2 = *(this + 45);
  if (v2 && *(v2 + 88) != a2)
  {
    icu::NumberFormat::setGroupingUsed(this, a2);
    v5 = *(this + 45);
    *(v5 + 88) = a2 != 0;
    if (*(v5 + 84) <= 0)
    {
      *(v5 + 84) = 3;
    }

    v6 = U_ZERO_ERROR;
    icu::DecimalFormat::touch(this, &v6);
  }
}

void icu::DecimalFormat::setParseIntegerOnly(icu::DecimalFormat *this, int a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    if (*(v2 + 465) != a2)
    {
      icu::NumberFormat::setParseIntegerOnly(this, a2);
      *(*(this + 45) + 465) = a2 != 0;
      v5 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setLenient(icu::DecimalFormat *this, int a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    v4 = a2 == 0;
    if ((*(v2 + 468) & 1) != 0 || *(v2 + 472) != v4)
    {
      icu::NumberFormat::setLenient(this, a2);
      v5 = *(this + 45);
      *(v5 + 472) = v4;
      *(v5 + 468) = 0;
      v6 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v6);
    }
  }
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *this, const icu::UnicodeString *a2, icu::DecimalFormatSymbols *a3, UParseError *a4, UErrorCode *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(this, a3, a5);
  if (*a5 <= 0)
  {
    icu::Locale::Locale(v11, a3 + 1936);
    icu::DecimalFormat::setPropertiesFromPattern(this, a2, 1, v11, a5);
    icu::Locale::~Locale(v9, v11);
    icu::DecimalFormat::touch(this, a5);
  }

  return this;
}

{
  v12 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(this, a3, a5);
  if (*a5 <= 0)
  {
    icu::Locale::Locale(v11, a3 + 1936);
    icu::DecimalFormat::setPropertiesFromPattern(this, a2, 1, v11, a5);
    icu::Locale::~Locale(v9, v11);
    icu::DecimalFormat::touch(this, a5);
  }

  return this;
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *this, const icu::UnicodeString *a2, const icu::DecimalFormatSymbols *a3, UErrorCode *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(this, 0, a4);
  if (*a4 <= 0)
  {
    operator new();
  }

  return this;
}

{
  v7 = *MEMORY[0x1E69E9840];
  icu::DecimalFormat::DecimalFormat(this, 0, a4);
  if (*a4 <= 0)
  {
    operator new();
  }

  return this;
}

icu::DecimalFormat *icu::DecimalFormat::DecimalFormat(icu::DecimalFormat *this, const icu::DecimalFormat *a2)
{
  v4 = icu::NumberFormat::NumberFormat(this, a2);
  *v4 = &unk_1F0939E60;
  v4[45] = 0;
  if (*(a2 + 45))
  {
    operator new();
  }

  return this;
}

icu::DecimalFormat *icu::DecimalFormat::operator=(icu::DecimalFormat *a1, icu::DecimalFormat *a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    v3 = *(a1 + 45);
    if (v3)
    {
      v4 = *(a2 + 45);
      if (v4)
      {
        sub_1952F9FB0(v3 + 8, (v4 + 8));
        icu::number::impl::DecimalFormatProperties::clear((*(v2 + 45) + 3768));
        operator new();
      }
    }
  }

  return a1;
}

uint64_t sub_1952F9FB0(uint64_t a1, char *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 1) == 0)
  {
    *(a1 + 4) = *(a2 + 1);
  }

  v5 = a2[8];
  *(a1 + 8) = v5;
  if ((v5 & 1) == 0)
  {
    icu::CurrencyUnit::operator=(a1 + 16, (a2 + 16));
  }

  sub_1952FDF1C((a1 + 48), a2 + 6);
  v6 = a2[56];
  *(a1 + 56) = v6;
  if ((v6 & 1) == 0)
  {
    *(a1 + 60) = *(a2 + 15);
  }

  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 7);
  *(a1 + 96) = *(a2 + 6);
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  icu::UnicodeString::operator=((a1 + 128), a2 + 16);
  icu::UnicodeString::operator=((a1 + 192), a2 + 24);
  icu::UnicodeString::operator=((a1 + 256), a2 + 32);
  icu::UnicodeString::operator=((a1 + 320), a2 + 40);
  v10 = a2[384];
  *(a1 + 384) = v10;
  if ((v10 & 1) == 0)
  {
    *(a1 + 388) = *(a2 + 97);
  }

  icu::UnicodeString::operator=((a1 + 392), a2 + 49);
  *(a1 + 456) = *(a2 + 228);
  v11 = a2[460];
  *(a1 + 460) = v11;
  if ((v11 & 1) == 0)
  {
    *(a1 + 464) = *(a2 + 116);
  }

  *(a1 + 468) = *(a2 + 468);
  icu::UnicodeString::operator=((a1 + 480), a2 + 60);
  icu::UnicodeString::operator=((a1 + 544), a2 + 68);
  icu::UnicodeString::operator=((a1 + 608), a2 + 76);
  icu::UnicodeString::operator=((a1 + 672), a2 + 84);
  *(a1 + 736) = *(a2 + 92);
  v12 = a2[744];
  *(a1 + 744) = v12;
  if ((v12 & 1) == 0)
  {
    *(a1 + 748) = *(a2 + 187);
  }

  v13 = *(a2 + 188);
  *(a1 + 756) = *(a2 + 378);
  *(a1 + 752) = v13;
  return a1;
}

void icu::DecimalFormat::~DecimalFormat(icu::DecimalFormat *this)
{
  *this = &unk_1F0939E60;
  v2 = *(this + 45);
  if (v2)
  {
    v3 = atomic_exchange((v2 + 1272), 0);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = (*(this + 45) + 1280);
    v5 = atomic_exchange(v4, 0);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 45);
    if (v6)
    {
      sub_1952FE0A4(v6 + 471, v4);
      v7 = v6[470];
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      sub_1952FDC0C(v6 + 162);
      icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter((v6 + 97));
      v9 = v6[96];
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      sub_1952FE0A4(v6 + 1, v8);
      MEMORY[0x19A8B2600](v6, 0x10F2C40A2AA8287);
    }
  }

  icu::NumberFormat::~NumberFormat(this);
}

{
  icu::DecimalFormat::~DecimalFormat(this);

  JUMPOUT(0x19A8B2600);
}

icu::DecimalFormat *icu::DecimalFormat::clone(icu::DecimalFormat *this)
{
  if (*(this + 45))
  {
    operator new();
  }

  return 0;
}

BOOL icu::DecimalFormat::operator==(void *a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = a1[45];
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v3[45];
  if (!v6 || !icu::number::impl::DecimalFormatProperties::_equals((v4 + 8), (v6 + 8), 0))
  {
    return 0;
  }

  v7 = (*(*a1 + 320))(a1);
  v8 = (*(*v5 + 320))(v5);

  return icu::DecimalFormatSymbols::operator==(v7, v8);
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPosition *a4)
{
  v17[13] = *MEMORY[0x1E69E9840];
  if (*(this + 45))
  {
    if (*(a4 + 2) != -1 || (icu::DecimalFormat::fastFormatDouble(this, a2, a3) & 1) == 0)
    {
      v15 = U_ZERO_ERROR;
      memset(v17, 0, 104);
      memset(v16, 0, sizeof(v16));
      sub_1952FDFB0(v16);
      icu::number::impl::DecimalQuantity::setToDouble(v17, a2);
      icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v16, &v15);
      v9 = *(a3 + 4);
      v10 = v9;
      v11 = v9 >> 5;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(a3 + 3);
      }

      icu::DecimalFormat::fieldPositionHelper(v16, a4, v12, &v15, v8);
      v14[0] = &unk_1F0935D68;
      v14[1] = a3;
      icu::FormattedValueStringBuilderImpl::appendTo(v16, v14, &v15);
      icu::UnicodeStringAppendable::~UnicodeStringAppendable(v14);
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v16);
    }
  }

  else
  {
    icu::UnicodeString::setToBogus(a3);
  }

  return a3;
}

uint64_t icu::DecimalFormat::fastFormatDouble(icu::DecimalFormat *this, double a2, icu::UnicodeString *a3)
{
  result = 0;
  if (*(*(this + 45) + 4528))
  {
    v7 = uprv_trunc(a2);
    if (a2 <= 2147483650.0 && a2 > -2147483650.0 && v7 == a2)
    {
      icu::DecimalFormat::doFastFormatInt32(this, a2, *&a2 >> 63, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void icu::DecimalFormat::fieldPositionHelper(icu::FormattedValueStringBuilderImpl *this, const icu::number::impl::UFormattedNumberData *a2, icu::FieldPosition *a3, UErrorCode *a4, UErrorCode *a5)
{
  if (*a4 <= 0)
  {
    v11 = v5;
    v12 = v6;
    v7 = a3;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    FieldPosition = icu::FormattedValueStringBuilderImpl::nextFieldPosition(this, a2, a4);
    if (v7)
    {
      if (FieldPosition)
      {
        memset(v10, 0, sizeof(v10));
        sub_195325204(v10, a2);
        sub_195325288(v10, v7);
        nullsub_30();
      }
    }
  }
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (*(this + 45))
    {
      if (*(a4 + 2) != -1 || (icu::DecimalFormat::fastFormatDouble(this, a2, a3) & 1) == 0)
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        memset(v17, 0, sizeof(v17));
        sub_1952FDFB0(v17);
        icu::number::impl::DecimalQuantity::setToDouble(v18, a2);
        icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v17, a5);
        v11 = *(a3 + 4);
        v12 = v11;
        v13 = v11 >> 5;
        if (v12 >= 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = *(a3 + 3);
        }

        icu::DecimalFormat::fieldPositionHelper(v17, a4, v14, a5, v10);
        v16[0] = &unk_1F0935D68;
        v16[1] = a3;
        icu::FormattedValueStringBuilderImpl::appendTo(v17, v16, a5);
        icu::UnicodeStringAppendable::~UnicodeStringAppendable(v16);
        icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v17);
      }
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
      icu::UnicodeString::setToBogus(a3);
    }
  }

  return a3;
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (*(this + 45))
    {
      if (a4 || (icu::DecimalFormat::fastFormatDouble(this, a2, a3) & 1) == 0)
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        memset(v17, 0, sizeof(v17));
        sub_1952FDFB0(v17);
        icu::number::impl::DecimalQuantity::setToDouble(v18, a2);
        icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v17, a5);
        v11 = *(a3 + 4);
        v12 = v11;
        v13 = v11 >> 5;
        if (v12 >= 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = *(a3 + 3);
        }

        icu::DecimalFormat::fieldPositionIteratorHelper(v17, a4, v14, a5, v10);
        v16[0] = &unk_1F0935D68;
        v16[1] = a3;
        icu::FormattedValueStringBuilderImpl::appendTo(v17, v16, a5);
        icu::UnicodeStringAppendable::~UnicodeStringAppendable(v16);
        icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v17);
      }
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
      icu::UnicodeString::setToBogus(a3);
    }
  }

  return a3;
}

void icu::DecimalFormat::fieldPositionIteratorHelper(icu::DecimalFormat *this, const icu::number::impl::UFormattedNumberData *a2, icu::FieldPositionIterator *a3, UErrorCode *a4, UErrorCode *a5)
{
  if (a2)
  {
    if (*a4 <= 0)
    {
      v6 = a3;
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      icu::FieldPositionIteratorHandler::FieldPositionIteratorHandler(v8, a2, a4);
      icu::FieldPositionHandler::setShift(v8, v6);
      icu::FormattedValueStringBuilderImpl::getAllFieldPositions(this, v8, a4);
      icu::FieldPositionIteratorHandler::~FieldPositionIteratorHandler(v8);
    }
  }
}

uint64_t icu::DecimalFormat::format(uint64_t a1, int a2)
{
  return (*(*a1 + 112))(a1, a2);
}

{
  return (*(*a1 + 120))(a1, a2);
}

{
  return (*(*a1 + 128))(a1, a2);
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, unint64_t __x, icu::UnicodeString *a3, icu::FieldPosition *a4)
{
  v18[13] = *MEMORY[0x1E69E9840];
  v5 = *(this + 45);
  if (v5)
  {
    if (*(a4 + 2) == -1 && __x + 0x7FFFFFFF <= 0xFFFFFFFE && (*(v5 + 4528) & 1) != 0)
    {
      icu::DecimalFormat::doFastFormatInt32(this, __x, __x >> 63, a3);
    }

    else
    {
      v16 = U_ZERO_ERROR;
      memset(v18, 0, 104);
      memset(v17, 0, sizeof(v17));
      sub_1952FDFB0(v17);
      icu::number::impl::DecimalQuantity::setToLong(v18, __x);
      icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v17, &v16);
      v10 = *(a3 + 4);
      v11 = v10;
      v12 = v10 >> 5;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(a3 + 3);
      }

      icu::DecimalFormat::fieldPositionHelper(v17, a4, v13, &v16, v9);
      v15[0] = &unk_1F0935D68;
      v15[1] = a3;
      icu::FormattedValueStringBuilderImpl::appendTo(v17, v15, &v16);
      icu::UnicodeStringAppendable::~UnicodeStringAppendable(v15);
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v17);
    }
  }

  else
  {
    icu::UnicodeString::setToBogus(a3);
  }

  return a3;
}

uint64_t icu::DecimalFormat::fastFormatInt64(icu::DecimalFormat *this, unint64_t a2, icu::UnicodeString *a3)
{
  v3 = (a2 + 0x7FFFFFFF < 0xFFFFFFFF) & *(*(this + 45) + 4528);
  if (v3 == 1)
  {
    icu::DecimalFormat::doFastFormatInt32(this, a2, a2 >> 63, a3);
  }

  return v3;
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, unint64_t __x, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v8 = *(this + 45);
    if (v8)
    {
      if (*(a4 + 2) == -1 && __x + 0x7FFFFFFF <= 0xFFFFFFFE && (*(v8 + 4528) & 1) != 0)
      {
        icu::DecimalFormat::doFastFormatInt32(this, __x, __x >> 63, a3);
      }

      else
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        memset(v18, 0, sizeof(v18));
        sub_1952FDFB0(v18);
        icu::number::impl::DecimalQuantity::setToLong(v19, __x);
        icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v18, a5);
        v12 = *(a3 + 4);
        v13 = v12;
        v14 = v12 >> 5;
        if (v13 >= 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = *(a3 + 3);
        }

        icu::DecimalFormat::fieldPositionHelper(v18, a4, v15, a5, v11);
        v17[0] = &unk_1F0935D68;
        v17[1] = a3;
        icu::FormattedValueStringBuilderImpl::appendTo(v18, v17, a5);
        icu::UnicodeStringAppendable::~UnicodeStringAppendable(v17);
        icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v18);
      }
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
      icu::UnicodeString::setToBogus(a3);
    }
  }

  return a3;
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, unint64_t __x, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v8 = *(this + 45);
    if (v8)
    {
      if (a4 || __x + 0x7FFFFFFF > 0xFFFFFFFE || (*(v8 + 4528) & 1) == 0)
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        memset(v18, 0, sizeof(v18));
        sub_1952FDFB0(v18);
        icu::number::impl::DecimalQuantity::setToLong(v19, __x);
        icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v18, a5);
        v12 = *(a3 + 4);
        v13 = v12;
        v14 = v12 >> 5;
        if (v13 >= 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = *(a3 + 3);
        }

        icu::DecimalFormat::fieldPositionIteratorHelper(v18, a4, v15, a5, v11);
        v17[0] = &unk_1F0935D68;
        v17[1] = a3;
        icu::FormattedValueStringBuilderImpl::appendTo(v18, v17, a5);
        icu::UnicodeStringAppendable::~UnicodeStringAppendable(v17);
        icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v18);
      }

      else
      {
        icu::DecimalFormat::doFastFormatInt32(this, __x, __x >> 63, a3);
      }
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
      icu::UnicodeString::setToBogus(a3);
    }
  }

  return a3;
}

uint64_t icu::DecimalFormat::format(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, const icu::number::impl::UFormattedNumberData *a5, UErrorCode *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (*(a1 + 360))
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      memset(v19, 0, sizeof(v19));
      sub_1952FDFB0(v19);
      icu::number::impl::DecimalQuantity::setToDecNumber(v20, a2, a3, a6);
      icu::number::LocalizedNumberFormatter::formatImpl((*(a1 + 360) + 776), v19, a6);
      v13 = *(a4 + 8);
      v14 = v13;
      v15 = v13 >> 5;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *(a4 + 12);
      }

      icu::DecimalFormat::fieldPositionIteratorHelper(v19, a5, v16, a6, v12);
      v18[0] = &unk_1F0935D68;
      v18[1] = a4;
      icu::FormattedValueStringBuilderImpl::appendTo(v19, v18, a6);
      icu::UnicodeStringAppendable::~UnicodeStringAppendable(v18);
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v19);
    }

    else
    {
      *a6 = U_MEMORY_ALLOCATION_ERROR;
      icu::UnicodeString::setToBogus(a4);
    }
  }

  return a4;
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, const icu::number::impl::DecimalQuantity *a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (*(this + 45))
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      memset(v17, 0, sizeof(v17));
      sub_1952FDFB0(v17);
      icu::number::impl::DecimalQuantity::operator=(v18, a2);
      icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v17, a5);
      v11 = *(a3 + 4);
      v12 = v11;
      v13 = v11 >> 5;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(a3 + 3);
      }

      icu::DecimalFormat::fieldPositionIteratorHelper(v17, a4, v14, a5, v10);
      v16[0] = &unk_1F0935D68;
      v16[1] = a3;
      icu::FormattedValueStringBuilderImpl::appendTo(v17, v16, a5);
      icu::UnicodeStringAppendable::~UnicodeStringAppendable(v16);
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v17);
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
      icu::UnicodeString::setToBogus(a3);
    }
  }

  return a3;
}

icu::UnicodeString *icu::DecimalFormat::format(icu::DecimalFormat *this, const icu::number::impl::DecimalQuantity *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (*(this + 45))
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      memset(v17, 0, sizeof(v17));
      sub_1952FDFB0(v17);
      icu::number::impl::DecimalQuantity::operator=(v18, a2);
      icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v17, a5);
      v11 = *(a3 + 4);
      v12 = v11;
      v13 = v11 >> 5;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(a3 + 3);
      }

      icu::DecimalFormat::fieldPositionHelper(v17, a4, v14, a5, v10);
      v16[0] = &unk_1F0935D68;
      v16[1] = a3;
      icu::FormattedValueStringBuilderImpl::appendTo(v17, v16, a5);
      icu::UnicodeStringAppendable::~UnicodeStringAppendable(v16);
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v17);
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
      icu::UnicodeString::setToBogus(a3);
    }
  }

  return a3;
}

void icu::DecimalFormat::parse(icu::DecimalFormat *this, const icu::UnicodeString *a2, icu::Formattable *a3, icu::ParsePosition *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(this + 45))
  {
    return;
  }

  v6 = *(a4 + 2);
  v7 = *(a2 + 4);
  if (v6 < 0)
  {
    v9 = *(a2 + 3);
    v8 = v7 >> 5;
  }

  else
  {
    v8 = v7 >> 5;
    v9 = *(a2 + 3);
    if ((v7 & 0x8000u) == 0)
    {
      v10 = v7 >> 5;
    }

    else
    {
      v10 = *(a2 + 3);
    }

    if (v6 < v10)
    {
      v20 = &unk_1F0931CC0;
      v21 = 0;
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      memset(v24, 0, sizeof(v24));
      v23 = 0u;
      memset(v22, 0, sizeof(v22));
      icu::numparse::impl::ParsedNumber::ParsedNumber(v22);
      v13 = *(a4 + 2);
      Parser = icu::DecimalFormat::getParser(this, &v21);
      v15 = v21;
      if (v21 <= 0)
      {
        v16 = Parser;
        icu::numparse::impl::NumberParserImpl::parse(Parser, a2, v13, 1, v22, &v21);
        v15 = v21;
        if (v21 <= 0)
        {
          if (icu::numparse::impl::ParsedNumber::success(v22))
          {
            *(a4 + 2) = DWORD2(v23);
            ParseFlags = icu::numparse::impl::NumberParserImpl::getParseFlags(v16);
            icu::numparse::impl::ParsedNumber::populateFormattable(v22, a3, ParseFlags);
          }

          else
          {
            v15 = (DWORD2(v23) + v13);
            *(a4 + 3) = v15;
          }
        }
      }

      icu::UnicodeString::~UnicodeString(v15, v25);
      icu::UnicodeString::~UnicodeString(v19, v24);
      icu::number::impl::DecimalQuantity::~DecimalQuantity(v22);
      icu::ErrorCode::~ErrorCode(&v20);
      return;
    }
  }

  if ((v7 & 0x8000u) == 0)
  {
    v18 = v8;
  }

  else
  {
    v18 = v9;
  }

  if (v6 == v18)
  {
    *(a4 + 3) = v6;
  }
}

unint64_t icu::DecimalFormat::getParser(icu::DecimalFormat *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = atomic_load((*(this + 45) + 1272));
  if (!result)
  {
    v5 = *(this + 45);
    v6 = (*(*this + 320))(this);
    result = icu::numparse::impl::NumberParserImpl::createParserFromProperties((v5 + 8), v6, 0, a2, v7);
    if (*a2 <= 0)
    {
      if (result)
      {
        v8 = 0;
        atomic_compare_exchange_strong((*(this + 45) + 1272), &v8, result);
        if (v8)
        {
          (*(*result + 8))(result);
          return v8;
        }
      }

      else
      {
        *a2 = U_MEMORY_ALLOCATION_ERROR;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

icu::Measure *icu::DecimalFormat::parseCurrency(icu::DecimalFormat *this, const icu::UnicodeString *a2, icu::ParsePosition *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(this + 45))
  {
    v4 = *(a3 + 2);
    if ((v4 & 0x80000000) == 0)
    {
      v6 = *(a2 + 4);
      v7 = v6;
      v8 = v6 >> 5;
      if (v7 < 0)
      {
        v8 = *(a2 + 3);
      }

      if (v4 < v8)
      {
        v17 = &unk_1F0931CC0;
        v18 = 0;
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        memset(v22, 0, sizeof(v22));
        v21 = 0u;
        memset(v20, 0, sizeof(v20));
        icu::numparse::impl::ParsedNumber::ParsedNumber(v20);
        v10 = *(a3 + 2);
        icu::DecimalFormat::getCurrencyParser(this, &v18);
        v12 = v18;
        if (v18 <= 0)
        {
          v13 = v11;
          icu::numparse::impl::NumberParserImpl::parse(v11, a2, v10, 1, v20, &v18);
          v12 = v18;
          if (v18 <= 0)
          {
            if (icu::numparse::impl::ParsedNumber::success(v20))
            {
              *(a3 + 2) = DWORD2(v21);
              memset(v19, 0, sizeof(v19));
              icu::Formattable::Formattable(v19);
              ParseFlags = icu::numparse::impl::NumberParserImpl::getParseFlags(v13);
              icu::numparse::impl::ParsedNumber::populateFormattable(v20, v19, ParseFlags);
              operator new();
            }

            v12 = (DWORD2(v21) + v10);
            *(a3 + 3) = v12;
          }
        }

        icu::UnicodeString::~UnicodeString(v12, v23);
        icu::UnicodeString::~UnicodeString(v14, v22);
        icu::number::impl::DecimalQuantity::~DecimalQuantity(v20);
        icu::ErrorCode::~ErrorCode(&v17);
      }
    }
  }

  return 0;
}

void icu::DecimalFormat::getCurrencyParser(icu::DecimalFormat *this, UErrorCode *a2)
{
  if (*a2 <= 0 && !atomic_load((*(this + 45) + 1280)))
  {
    v5 = *(this + 45);
    v6 = (*(*this + 320))(this);
    ParserFromProperties = icu::numparse::impl::NumberParserImpl::createParserFromProperties((v5 + 8), v6, 1, a2, v7);
    if (ParserFromProperties)
    {
      v9 = 0;
      atomic_compare_exchange_strong((*(this + 45) + 1280), &v9, ParserFromProperties);
      if (v9)
      {
        (*(*ParserFromProperties + 8))(ParserFromProperties);
      }
    }

    else
    {
      *a2 = U_MEMORY_ALLOCATION_ERROR;
      atomic_compare_exchange_strong((*(this + 45) + 1280), &ParserFromProperties, 0);
    }
  }
}

uint64_t icu::DecimalFormat::getDecimalFormatSymbols(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 768);
  if (!result)
  {
    return icu::number::LocalizedNumberFormatter::getDecimalFormatSymbols((v1 + 776));
  }

  return result;
}

void icu::DecimalFormat::adoptDecimalFormatSymbols(icu::DecimalFormat *this, icu::DecimalFormatSymbols *a2)
{
  if (a2)
  {
    v4 = *(this + 45);
    if (v4)
    {
      v5 = *(v4 + 768);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      *(v4 + 768) = a2;
      v7 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v7);
    }

    else
    {
      v6 = *(*a2 + 8);

      v6(a2);
    }
  }
}

void icu::DecimalFormat::setDecimalFormatSymbols(icu::DecimalFormat *this, const icu::DecimalFormatSymbols *a2)
{
  if (*(this + 45))
  {
    operator new();
  }
}

uint64_t icu::DecimalFormat::getCurrencyPluralInfo(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0;
  }
}

void icu::DecimalFormat::adoptCurrencyPluralInfo(icu::DecimalFormat *this, icu::CurrencyPluralInfo *a2)
{
  v3 = *(this + 45);
  if (v3)
  {
    v5 = *(v3 + 56);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(v3 + 56) = a2;
    v7 = U_ZERO_ERROR;
    icu::DecimalFormat::touch(this, &v7);
  }

  else if (a2)
  {
    v6 = *(*a2 + 8);

    v6(a2);
  }
}

void icu::DecimalFormat::setCurrencyPluralInfo(icu::DecimalFormat *this, const icu::CurrencyPluralInfo *a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    v4 = *(v2 + 56);
    if (!v4)
    {
      icu::CurrencyPluralInfo::clone(a2);
    }

    icu::CurrencyPluralInfo::operator=(v4, a2);
    v5 = U_ZERO_ERROR;
    icu::DecimalFormat::touch(this, &v5);
  }
}

icu::UnicodeString *icu::DecimalFormat::getPositivePrefix(icu::DecimalFormat *this, icu::UnicodeString *a2)
{
  v3 = *(this + 45);
  if (!v3 || (v5 = U_ZERO_ERROR, icu::number::LocalizedNumberFormatter::getAffixImpl((v3 + 776), 1, 0, a2, &v5), v5 >= U_ILLEGAL_ARGUMENT_ERROR))
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

void icu::DecimalFormat::setPositivePrefix(icu::DecimalFormat *this, const icu::UnicodeString *a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      if (*(v2 + 496))
      {
        return;
      }

      goto LABEL_17;
    }

    v6 = v5;
    v7 = v5 >> 5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a2 + 3);
    }

    v9 = *(v2 + 496);
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(v2 + 500);
    }

    if ((v9 & 1) != 0 || v8 != v10)
    {
LABEL_17:
      icu::UnicodeString::operator=((v2 + 488), a2);
      v14 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v14);
      return;
    }

    v11 = (v2 + 498);
    v12 = *(v2 + 512);
    if ((v9 & 2) != 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    if (!icu::UnicodeString::doEquals(a2, v13, v8))
    {
      v2 = *(this + 45);
      goto LABEL_17;
    }
  }
}

icu::UnicodeString *icu::DecimalFormat::getNegativePrefix(icu::DecimalFormat *this, icu::UnicodeString *a2)
{
  v3 = *(this + 45);
  if (!v3 || (v5 = U_ZERO_ERROR, icu::number::LocalizedNumberFormatter::getAffixImpl((v3 + 776), 1, 1, a2, &v5), v5 >= U_ILLEGAL_ARGUMENT_ERROR))
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

void icu::DecimalFormat::setNegativePrefix(icu::DecimalFormat *this, const icu::UnicodeString *a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      if (*(v2 + 144))
      {
        return;
      }

      goto LABEL_17;
    }

    v6 = v5;
    v7 = v5 >> 5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a2 + 3);
    }

    v9 = *(v2 + 144);
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(v2 + 148);
    }

    if ((v9 & 1) != 0 || v8 != v10)
    {
LABEL_17:
      icu::UnicodeString::operator=((v2 + 136), a2);
      v14 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v14);
      return;
    }

    v11 = (v2 + 146);
    v12 = *(v2 + 160);
    if ((v9 & 2) != 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    if (!icu::UnicodeString::doEquals(a2, v13, v8))
    {
      v2 = *(this + 45);
      goto LABEL_17;
    }
  }
}

icu::UnicodeString *icu::DecimalFormat::getPositiveSuffix(icu::DecimalFormat *this, icu::UnicodeString *a2)
{
  v3 = *(this + 45);
  if (!v3 || (v5 = U_ZERO_ERROR, icu::number::LocalizedNumberFormatter::getAffixImpl((v3 + 776), 0, 0, a2, &v5), v5 >= U_ILLEGAL_ARGUMENT_ERROR))
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

void icu::DecimalFormat::setPositiveSuffix(icu::DecimalFormat *this, const icu::UnicodeString *a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      if (*(v2 + 624))
      {
        return;
      }

      goto LABEL_17;
    }

    v6 = v5;
    v7 = v5 >> 5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a2 + 3);
    }

    v9 = *(v2 + 624);
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(v2 + 628);
    }

    if ((v9 & 1) != 0 || v8 != v10)
    {
LABEL_17:
      icu::UnicodeString::operator=((v2 + 616), a2);
      v14 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v14);
      return;
    }

    v11 = (v2 + 626);
    v12 = *(v2 + 640);
    if ((v9 & 2) != 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    if (!icu::UnicodeString::doEquals(a2, v13, v8))
    {
      v2 = *(this + 45);
      goto LABEL_17;
    }
  }
}

icu::UnicodeString *icu::DecimalFormat::getNegativeSuffix(icu::DecimalFormat *this, icu::UnicodeString *a2)
{
  v3 = *(this + 45);
  if (!v3 || (v5 = U_ZERO_ERROR, icu::number::LocalizedNumberFormatter::getAffixImpl((v3 + 776), 0, 1, a2, &v5), v5 >= U_ILLEGAL_ARGUMENT_ERROR))
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

void icu::DecimalFormat::setNegativeSuffix(icu::DecimalFormat *this, const icu::UnicodeString *a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      if (*(v2 + 272))
      {
        return;
      }

      goto LABEL_17;
    }

    v6 = v5;
    v7 = v5 >> 5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a2 + 3);
    }

    v9 = *(v2 + 272);
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(v2 + 276);
    }

    if ((v9 & 1) != 0 || v8 != v10)
    {
LABEL_17:
      icu::UnicodeString::operator=((v2 + 264), a2);
      v14 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v14);
      return;
    }

    v11 = (v2 + 274);
    v12 = *(v2 + 288);
    if ((v9 & 2) != 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    if (!icu::UnicodeString::doEquals(a2, v13, v8))
    {
      v2 = *(this + 45);
      goto LABEL_17;
    }
  }
}

void icu::DecimalFormat::setMultiplier(icu::DecimalFormat *this, unsigned int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    v5 = 0;
    if (a2 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a2;
    }

    v7 = v6;
    while (v7 != 1)
    {
      ++v5;
      v8 = 10 * (v7 / 10) == v7;
      v7 /= 10;
      if (!v8)
      {
        v5 = 0;
        goto LABEL_10;
      }
    }

    v6 = 1;
LABEL_10:
    v10 = v2;
    v11 = v3;
    *(v4 + 92) = v5;
    *(v4 + 128) = v6;
    v9 = 0;
    icu::DecimalFormat::touch(this, &v9);
  }
}

double icu::DecimalFormat::getRoundingIncrement(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 4504);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 736;
  }

  return *v2;
}

void icu::DecimalFormat::setRoundingIncrement(icu::DecimalFormat *this, double a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 744) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 744) = a2;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

uint64_t icu::DecimalFormat::getRoundingMode(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 4516);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 748);
  }

  return *v2;
}

void icu::DecimalFormat::setRoundingMode(icu::NumberFormat *this, uint64_t a2)
{
  v2 = *(this + 45);
  if (v2)
  {
    v3 = a2;
    if ((*(v2 + 752) & 1) != 0 || *(v2 + 756) != a2)
    {
      icu::NumberFormat::setMaximumIntegerDigits(this, a2);
      v5 = *(this + 45);
      *(v5 + 756) = v3;
      *(v5 + 752) = 0;
      v6 = U_ZERO_ERROR;
      icu::DecimalFormat::touch(this, &v6);
    }
  }
}

uint64_t icu::DecimalFormat::getFormatWidth(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 80);
  }

  else
  {
    v2 = (icu::number::impl::DecimalFormatProperties::getDefault(this) + 72);
  }

  return *v2;
}

void icu::DecimalFormat::setFormatWidth(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 80) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 80) = a2;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

UChar **icu::DecimalFormat::getPadCharacterString@<X0>(icu::DecimalFormat *this@<X0>, icu::UnicodeString *a2@<X8>)
{
  v6 = *(this + 45);
  if (!v6 || (*(v6 + 408) & 1) != 0)
  {
    v8[1] = v2;
    v8[2] = v3;
    v8[0] = " ";
    return icu::UnicodeString::UnicodeString(a2, 1, v8, -1);
  }

  else
  {

    return icu::UnicodeString::UnicodeString(a2, (v6 + 400));
  }
}

void icu::DecimalFormat::setPadCharacter(icu::DecimalFormat *this, const icu::UnicodeString *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(this + 45);
  if (!v2)
  {
    return;
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (*(v2 + 408))
    {
      return;
    }
  }

  else
  {
    if ((v5 & 0x8000u) == 0)
    {
      v6 = v5 >> 5;
    }

    else
    {
      v6 = *(a2 + 3);
    }

    v7 = *(v2 + 408);
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(v2 + 412);
    }

    if ((v7 & 1) == 0 && v6 == v8)
    {
      v9 = (v2 + 410);
      v10 = *(v2 + 424);
      if ((v7 & 2) != 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      if (icu::UnicodeString::doEquals(a2, v11, v6))
      {
        return;
      }

      v5 = *(a2 + 4);
    }
  }

  v12 = v5;
  v13 = v5 >> 5;
  if (v12 < 0)
  {
    v13 = *(a2 + 3);
  }

  if (v13 < 1)
  {
    icu::UnicodeString::setToBogus((*(this + 45) + 400));
  }

  else
  {
    v14 = icu::UnicodeString::char32At(a2, 0);
    icu::UnicodeString::UnicodeString(v16, v14);
    icu::UnicodeString::operator=((*(this + 45) + 400), v16);
    icu::UnicodeString::~UnicodeString(v15, v16);
  }

  v16[0] = U_ZERO_ERROR;
  icu::DecimalFormat::touch(this, v16);
}

uint64_t icu::DecimalFormat::getPadPosition(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1 && (*(v1 + 392) & 1) == 0)
  {
    return *(v1 + 396);
  }

  else
  {
    return 0;
  }
}

void icu::DecimalFormat::setPadPosition(icu::DecimalFormat *a1, int a2)
{
  v4 = *(a1 + 45);
  if (v4 && ((*(v4 + 392) & 1) != 0 || *(v4 + 396) != a2))
  {
    v6 = v2;
    v7 = v3;
    *(v4 + 396) = a2;
    *(v4 + 392) = 0;
    v5 = 0;
    icu::DecimalFormat::touch(a1, &v5);
  }
}

BOOL icu::DecimalFormat::isScientificNotation(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 108);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 100;
  }

  return *v2 != -1;
}

void icu::DecimalFormat::setScientificNotation(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (a2)
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }

    if (*(v4 + 108) != v5)
    {
      v7 = v2;
      v8 = v3;
      *(v4 + 108) = v5;
      v6 = 0;
      icu::DecimalFormat::touch(this, &v6);
    }
  }
}

uint64_t icu::DecimalFormat::getMinimumExponentDigits(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 108);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 100;
  }

  return *v2;
}

void icu::DecimalFormat::setMinimumExponentDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 108) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 108) = a2;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

uint64_t icu::DecimalFormat::isExponentSignAlwaysShown(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 74);
  }

  else
  {
    v2 = icu::number::impl::DecimalFormatProperties::getDefault(this) + 66;
  }

  return *v2;
}

void icu::DecimalFormat::setExponentSignAlwaysShown(icu::DecimalFormat *this, unsigned __int8 a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 74) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 74) = a2 != 0;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setGroupingSize(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 84) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 84) = a2;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setSecondaryGroupingSize(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 760) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 760) = a2;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setDecimalSeparatorAlwaysShown(icu::DecimalFormat *this, unsigned __int8 a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 73) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 73) = a2 != 0;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

void icu::DecimalFormat::setDecimalPatternMatchRequired(icu::DecimalFormat *this, unsigned __int8 a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    if (*(v4 + 72) != a2)
    {
      v6 = v2;
      v7 = v3;
      *(v4 + 72) = a2 != 0;
      v5 = 0;
      icu::DecimalFormat::touch(this, &v5);
    }
  }
}

icu::UnicodeString *icu::DecimalFormat::toPattern(icu::DecimalFormat *this, icu::UnicodeString *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(this + 45);
  if (v3)
  {
    v19 = &unk_1F0931CC0;
    v20 = 0;
    bzero(v23, 0x2F0uLL);
    v22 = *(v3 + 8);
    v23[0] = *(v3 + 16);
    icu::CurrencyUnit::CurrencyUnit(&v24, (v3 + 24));
    sub_1952FE014(&v25, (v3 + 56));
    v5 = *(v3 + 80);
    v6 = *(v3 + 96);
    v7 = *(v3 + 112);
    v30 = *(v3 + 128);
    v26 = *(v3 + 64);
    v29 = v7;
    v28 = v6;
    v27 = v5;
    icu::UnicodeString::UnicodeString(&v31, (v3 + 136));
    icu::UnicodeString::UnicodeString(v32, (v3 + 200));
    icu::UnicodeString::UnicodeString(&v33, (v3 + 264));
    icu::UnicodeString::UnicodeString(v34, (v3 + 328));
    v34[8] = *(v3 + 392);
    icu::UnicodeString::UnicodeString(v35, (v3 + 400));
    v8 = *(v3 + 480);
    v35[4] = *(v3 + 464);
    v36 = v8;
    icu::UnicodeString::UnicodeString(&v37, (v3 + 488));
    icu::UnicodeString::UnicodeString(v38, (v3 + 552));
    icu::UnicodeString::UnicodeString(&v39, (v3 + 616));
    icu::UnicodeString::UnicodeString(v40, (v3 + 680));
    v10 = *(v3 + 744);
    *&v41[14] = *(v3 + 758);
    *v41 = v10;
    if (v23[0] != 1 || v25 || v26 != 1 || (BYTE11(v26) & 1) != 0 || icu::number::impl::AffixUtils::hasCurrencySymbols(v38, &v20, v9) || icu::number::impl::AffixUtils::hasCurrencySymbols(v40, &v20, v11) || icu::number::impl::AffixUtils::hasCurrencySymbols(v32, &v20, v12) || icu::number::impl::AffixUtils::hasCurrencySymbols(v34, &v20, v13))
    {
      v14 = *(this + 45);
      v15 = *(v14 + 3856);
      LODWORD(v29) = *(v14 + 3872);
      LODWORD(v28) = v15;
      *v41 = *(v14 + 4504);
    }

    icu::number::impl::PatternStringUtils::propertiesToPatternString(v21, &v22, &v20);
    icu::UnicodeString::operator=(a2, v21);
    icu::UnicodeString::~UnicodeString(v16, v21);
    sub_1952FE0A4(&v22, v17);
    icu::ErrorCode::~ErrorCode(&v19);
  }

  else
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

UChar **icu::DecimalFormat::toLocalizedPattern(icu::DecimalFormat *this, UChar **a2)
{
  v10[8] = *MEMORY[0x1E69E9840];
  if (*(this + 45))
  {
    v8 = &unk_1F0931CC0;
    v9 = 0;
    v4 = (*(*this + 552))(this, a2);
    icu::UnicodeString::operator=(a2, v4);
    v5 = (*(*this + 320))(this);
    icu::number::impl::PatternStringUtils::convertLocalized(v10, a2, v5, 1, &v9);
    icu::UnicodeString::operator=(a2, v10);
    icu::UnicodeString::~UnicodeString(v6, v10);
    icu::ErrorCode::~ErrorCode(&v8);
  }

  else
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

void icu::DecimalFormat::applyPattern(icu::DecimalFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = *(this + 45);
    if (v5)
    {
      icu::number::impl::PatternParser::parseToExistingProperties(a2, (v5 + 8), 0, a3);

      icu::DecimalFormat::touch(this, a3);
    }

    else
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
    }
  }
}

void *icu::DecimalFormat::applyLocalizedPattern(void *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v4 = this;
    if (this[45])
    {
      memset(v8, 0, sizeof(v8));
      v6 = (*(*this + 320))(this);
      icu::number::impl::PatternStringUtils::convertLocalized(v8, a2, v6, 0, a3);
      (*(*v4 + 576))(v4, v8, a3);
      return icu::UnicodeString::~UnicodeString(v7, v8);
    }

    else
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

void icu::DecimalFormat::setMaximumIntegerDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4 && *(v4 + 100) != a2)
  {
    v5 = *(v4 + 120);
    if ((v5 & 0x80000000) == 0 && v5 > a2)
    {
      *(v4 + 120) = a2;
    }

    v7 = v2;
    v8 = v3;
    *(v4 + 100) = a2;
    v6 = 0;
    icu::DecimalFormat::touch(this, &v6);
  }
}

void icu::DecimalFormat::setMinimumIntegerDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4 && *(v4 + 120) != a2)
  {
    v5 = *(v4 + 100);
    if ((v5 & 0x80000000) == 0 && v5 < a2)
    {
      *(v4 + 100) = a2;
    }

    v7 = v2;
    v8 = v3;
    *(v4 + 120) = a2;
    v6 = 0;
    icu::DecimalFormat::touch(this, &v6);
  }
}

void icu::DecimalFormat::setMaximumFractionDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4 && *(v4 + 96) != a2)
  {
    if (a2 >= 340)
    {
      v5 = 340;
    }

    else
    {
      v5 = a2;
    }

    v6 = *(v4 + 112);
    if ((v6 & 0x80000000) == 0 && v6 > v5)
    {
      *(v4 + 112) = v5;
    }

    v8 = v2;
    v9 = v3;
    *(v4 + 96) = v5;
    v7 = 0;
    icu::DecimalFormat::touch(this, &v7);
  }
}

void icu::DecimalFormat::setMinimumFractionDigits(icu::DecimalFormat *this, int a2)
{
  v4 = *(this + 45);
  if (v4 && *(v4 + 112) != a2)
  {
    v5 = *(v4 + 96);
    if ((v5 & 0x80000000) == 0 && v5 < a2)
    {
      *(v4 + 96) = a2;
    }

    v7 = v2;
    v8 = v3;
    *(v4 + 112) = a2;
    v6 = 0;
    icu::DecimalFormat::touch(this, &v6);
  }
}

void icu::DecimalFormat::setDateSettings(icu::DecimalFormat *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    if (*(v1 + 88) == 1)
    {
      icu::NumberFormat::setGroupingUsed(this, 0);
      v1 = *(this + 45);
      *(v1 + 88) = 0;
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    if (*(v1 + 73) == 1)
    {
      *(v1 + 73) = 0;
      v3 = 1;
    }

    if (*(v1 + 465) == 1)
    {
      v5 = *(v1 + 112);
      v4 = v1 + 112;
      if (!v5)
      {
        if (!v3)
        {
          return;
        }

LABEL_13:
        v8 = U_ZERO_ERROR;
        icu::DecimalFormat::touch(this, &v8);
        return;
      }
    }

    else
    {
      icu::NumberFormat::setParseIntegerOnly(this, 1);
      v6 = *(this + 45);
      v7 = *(v6 + 112);
      v4 = v6 + 112;
      *(v4 + 353) = 1;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    *v4 = 0;
    goto LABEL_13;
  }
}

void icu::DecimalFormat::setCurrency(icu::DecimalFormat *a1, _WORD *a2, int *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    if (*(a1 + 45))
    {
      v5 = a2;
      v16[0] = 0;
      if (!a2 || !*a2)
      {
        v12[0] = U_ZERO_ERROR;
        v6 = (*(*a1 + 320))(a1);
        icu::Locale::Locale(v14, v6 + 1936);
        v7 = ucurr_forLocale(v15, v16, 4, v12);
        icu::Locale::~Locale(v8, v14);
        if (v12[0] <= U_ZERO_ERROR && v7 == 3)
        {
          HIWORD(v16[0]) = 0;
          v5 = v16;
        }
      }

      memset(v14, 0, sizeof(v14));
      v13 = v5;
      icu::CurrencyUnit::CurrencyUnit(v14, &v13, a3);
      if (*a3 <= 0)
      {
        v9 = *(a1 + 45);
        if ((*(v9 + 16) & 1) != 0 || (icu::CurrencyUnit::CurrencyUnit(v12, (v9 + 24)), v10 = icu::MeasureUnit::operator==(v12, v14), icu::CurrencyUnit::~CurrencyUnit(v12), !v10))
        {
          icu::NumberFormat::setCurrency(a1, v5, a3);
          v11 = *(a1 + 45);
          icu::CurrencyUnit::operator=(v11 + 24, v14);
          *(v11 + 16) = 0;
          operator new();
        }
      }

      icu::CurrencyUnit::~CurrencyUnit(v14);
    }

    else
    {
      *a3 = 7;
    }
  }
}

void icu::DecimalFormat::setCurrency(uint64_t a1, uint64_t a2)
{
  v2 = &unk_1F0931CC0;
  v3 = 0;
  (*(*a1 + 248))(a1, a2, &v3);
  icu::ErrorCode::~ErrorCode(&v2);
}

void icu::DecimalFormat::formatToDecimalQuantity(icu::DecimalFormat *this, double a2, icu::number::impl::DecimalQuantity *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v8[5] = v4;
    v8[6] = v5;
    if (*(this + 45))
    {
      icu::number::LocalizedNumberFormatter::formatDouble(v8, a4);
      icu::number::FormattedNumber::getDecimalQuantity(v8, a3, a4);
      icu::number::FormattedNumber::~FormattedNumber(v8);
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }
  }
}

void icu::DecimalFormat::formatToDecimalQuantity(icu::DecimalFormat *this, const icu::Formattable *a2, icu::number::impl::DecimalQuantity *a3, UErrorCode *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (*(this + 45))
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      memset(v8, 0, sizeof(v8));
      sub_1952FDFB0(v8);
      icu::Formattable::populateDecimalQuantity(a2, v9, a4);
      icu::number::LocalizedNumberFormatter::formatImpl((*(this + 45) + 776), v8, a4);
      icu::number::impl::DecimalQuantity::operator=(a3, v9);
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v8);
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }
  }
}

uint64_t icu::DecimalFormat::toNumberFormatter(icu::DecimalFormat *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(this + 45);
  if (v3)
  {
    return v3 + 776;
  }

  result = 0;
  *a2 = U_MEMORY_ALLOCATION_ERROR;
  return result;
}

uint64_t icu::DecimalFormat::setupFastFormat(icu::DecimalFormat *this)
{
  result = icu::number::impl::DecimalFormatProperties::equalsDefaultExceptFastFormat((*(this + 45) + 8));
  v3 = *(this + 45);
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

  v4 = *(v3 + 208);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    if ((*(v3 + 208) & 0x8000) != 0)
    {
      if (*(v3 + 212) != 1)
      {
LABEL_28:
        *(v3 + 4528) = 0;
        return result;
      }
    }

    else if ((v4 & 0x7FE0) != 0x20)
    {
      goto LABEL_28;
    }

    if ((v4 & 2) != 0)
    {
      v6 = (v3 + 210);
    }

    else
    {
      v6 = *(v3 + 224);
    }

    v5 = *v6 == 45;
  }

  v8 = *(v3 + 560) > 0x1Fu || *(v3 + 688) > 0x1Fu || !v5;
  if (v8 || *(v3 + 336) >= 0x20u)
  {
    goto LABEL_28;
  }

  result = (*(*this + 320))(this);
  v9 = *(this + 45);
  v10 = v9 + 4096;
  v11 = *(v9 + 88);
  v12 = *(v9 + 84);
  if ((v11 != 1 || (v12 >= 1 ? (v13 = v12 == 3) : (v13 = 1), v13 && (*(result + 80) < 0 ? (v14 = *(result + 84)) : (v14 = *(result + 80) >> 5), v14 == 1))) && (v15 = *(v9 + 3880), v15 < 11) && *(v9 + 3872) < 1 && (*(result + 400) < 0 ? (v16 = *(result + 404)) : (v16 = *(result + 400) >> 5), v16 == 1 && (v17 = *(result + 1928), v17 < 0x10000)))
  {
    v18 = 0;
    v19 = *(v9 + 3860);
    *(v9 + 4528) = 1;
    *(v9 + 4530) = v17;
    if (v11 && v12 == 3)
    {
      v20 = *(result + 80);
      if (*(result + 80) < 0)
      {
        v21 = *(result + 84);
      }

      else
      {
        v21 = v20 >> 5;
      }

      if (v21)
      {
        if ((v20 & 2) != 0)
        {
          v22 = (result + 82);
        }

        else
        {
          v22 = *(result + 96);
        }

        v18 = *v22;
      }

      else
      {
        v18 = -1;
      }
    }

    *(v9 + 4532) = v18;
    v23 = *(result + 400);
    if (*(result + 400) < 0)
    {
      v24 = *(result + 404);
    }

    else
    {
      v24 = v23 >> 5;
    }

    if (v24)
    {
      if ((v23 & 2) != 0)
      {
        v25 = (result + 402);
      }

      else
      {
        v25 = *(result + 416);
      }

      v26 = *v25;
    }

    else
    {
      v26 = -1;
    }

    *(v9 + 4534) = v26;
    *(v9 + 4536) = v15 & ~(v15 >> 31);
    if (v19 >= 0x7F)
    {
      v27 = 127;
    }

    else
    {
      v27 = v19;
    }

    *(v10 + 441) = v27;
  }

  else
  {
    *(v9 + 4528) = 0;
  }

  return result;
}

uint64_t icu::DecimalFormat::doFastFormatInt32(icu::DecimalFormat *this, uint64_t __x, int a3, icu::UnicodeString *a4)
{
  *&v17[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    LOWORD(v15[0]) = *(*(this + 45) + 4534);
    icu::UnicodeString::doAppend(a4, v15, 0, 1);
    __x = -__x;
  }

  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v7 = v17;
  v8 = *(this + 45);
  v9 = *(v8 + 4536);
  if (v9 <= 1)
  {
    LOBYTE(v9) = 1;
  }

  v10 = *(v8 + 4537);
  if (v10 >= 1)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    v13 = v9;
    do
    {
      if (!__x && v13 <= v11)
      {
        break;
      }

      if (v12 == 3)
      {
        if (*(v8 + 4532))
        {
          *(v7 - 1) = *(v8 + 4532);
          v7 -= 2;
          v12 = 1;
        }

        else
        {
          v12 = 4;
        }
      }

      else
      {
        ++v12;
      }

      __x = div(__x, 10).quot;
      *(v7 - 1) = *(v8 + 4530) + WORD2(__x);
      v7 -= 2;
      v11 = (v11 + 1);
    }

    while (v11 < v10);
  }

  return icu::UnicodeString::doAppend(a4, v7, 0, 13 - ((v7 - v15) >> 1));
}

uint64_t sub_1952FD92C(uint64_t a1)
{
  icu::number::impl::DecimalFormatProperties::DecimalFormatProperties((a1 + 8));
  *(a1 + 768) = 0;
  sub_1952FDA48(a1 + 776);
  *(a1 + 1272) = 0u;
  *(a1 + 1296) = &unk_1F093F170;
  *(a1 + 1304) = &unk_1F0935D00;
  *(a1 + 1312) = 2;
  *(a1 + 1368) = &unk_1F0935D00;
  *(a1 + 1376) = 2;
  *(a1 + 1432) = &unk_1F0935D00;
  *(a1 + 1440) = 2;
  *(a1 + 1496) = &unk_1F0935D00;
  *(a1 + 1504) = 2;
  *(a1 + 1562) = 1;
  sub_1952FDB18(a1 + 1568);
  *(a1 + 3760) = 0;
  icu::number::impl::DecimalFormatProperties::DecimalFormatProperties((a1 + 3768));
  *(a1 + 4528) = 0;
  return a1;
}

uint64_t sub_1952FDA48(uint64_t a1)
{
  *(a1 + 4) = 2;
  *(a1 + 8) = 0;
  icu::MeasureUnit::MeasureUnit(a1 + 16);
  icu::MeasureUnit::MeasureUnit(a1 + 40);
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 4;
  *(a1 + 100) = -3;
  *(a1 + 112) = -2;
  *(a1 + 132) = 0;
  *(a1 + 124) = -1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x900000007;
  *(a1 + 160) = 0;
  *(a1 + 164) = 2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 228) = 0;
  *(a1 + 220) = 0;
  *(a1 + 236) = 0x300000000;
  *(a1 + 244) = 0;
  icu::Locale::Locale((a1 + 248));
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  return a1;
}

uint64_t sub_1952FDB18(uint64_t result)
{
  *result = &unk_1F093F218;
  v1 = -2176;
  do
  {
    v2 = result + v1;
    *(v2 + 2184) = &unk_1F093F170;
    *(v2 + 2192) = &unk_1F0935D00;
    *(v2 + 2200) = 2;
    *(v2 + 2256) = &unk_1F0935D00;
    *(v2 + 2264) = 2;
    *(v2 + 2320) = &unk_1F0935D00;
    *(v2 + 2328) = 2;
    *(v2 + 2384) = &unk_1F0935D00;
    *(v2 + 2392) = 2;
    *(v2 + 2450) = 1;
    v1 += 272;
  }

  while (v1);
  *(result + 2184) = 1;
  return result;
}

void sub_1952FDC0C(void *a1)
{
  v2 = 0;
  v3 = (a1 + 34);
  a1[34] = &unk_1F093F218;
  v4 = a1 + 273;
  do
  {
    a1[v2 + 273] = &unk_1F093F170;
    icu::UnicodeString::~UnicodeString(&v4[v2], &a1[v2 + 298]);
    icu::UnicodeString::~UnicodeString(v5, &a1[v2 + 290]);
    icu::UnicodeString::~UnicodeString(v6, &a1[v2 + 282]);
    icu::UnicodeString::~UnicodeString(v7, &a1[v2 + 274]);
    icu::number::impl::AffixPatternProvider::~AffixPatternProvider(&a1[v2 + 273]);
    v2 -= 34;
  }

  while (v2 != -272);
  icu::number::impl::AffixPatternProvider::~AffixPatternProvider(v3);
  *a1 = &unk_1F093F170;
  icu::UnicodeString::~UnicodeString(v8, (a1 + 25));
  icu::UnicodeString::~UnicodeString(v9, (a1 + 17));
  icu::UnicodeString::~UnicodeString(v10, (a1 + 9));
  icu::UnicodeString::~UnicodeString(v11, (a1 + 1));

  icu::number::impl::AffixPatternProvider::~AffixPatternProvider(a1);
}

uint64_t sub_1952FDD18(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *a2;
  *(a1 + 16) = *(a2 + 8);
  icu::CurrencyUnit::CurrencyUnit((a1 + 24), (a2 + 16));
  sub_1952FE014((a1 + 56), (a2 + 48));
  *(a1 + 64) = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 128) = *(a2 + 120);
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  *(a1 + 80) = v4;
  icu::UnicodeString::UnicodeString((a1 + 136), (a2 + 128));
  icu::UnicodeString::UnicodeString((a1 + 200), (a2 + 192));
  icu::UnicodeString::UnicodeString((a1 + 264), (a2 + 256));
  icu::UnicodeString::UnicodeString((a1 + 328), (a2 + 320));
  *(a1 + 392) = *(a2 + 384);
  icu::UnicodeString::UnicodeString((a1 + 400), (a2 + 392));
  v7 = *(a2 + 456);
  *(a1 + 480) = *(a2 + 472);
  *(a1 + 464) = v7;
  icu::UnicodeString::UnicodeString((a1 + 488), (a2 + 480));
  icu::UnicodeString::UnicodeString((a1 + 552), (a2 + 544));
  icu::UnicodeString::UnicodeString((a1 + 616), (a2 + 608));
  icu::UnicodeString::UnicodeString((a1 + 680), (a2 + 672));
  v8 = *(a2 + 736);
  *(a1 + 758) = *(a2 + 750);
  *(a1 + 744) = v8;
  *(a1 + 768) = 0;
  sub_1952FDA48(a1 + 776);
  *(a1 + 1272) = 0u;
  *(a1 + 1296) = &unk_1F093F170;
  *(a1 + 1304) = &unk_1F0935D00;
  *(a1 + 1312) = 2;
  *(a1 + 1368) = &unk_1F0935D00;
  *(a1 + 1376) = 2;
  *(a1 + 1432) = &unk_1F0935D00;
  *(a1 + 1440) = 2;
  *(a1 + 1496) = &unk_1F0935D00;
  *(a1 + 1504) = 2;
  *(a1 + 1562) = 1;
  sub_1952FDB18(a1 + 1568);
  *(a1 + 3760) = 0;
  icu::number::impl::DecimalFormatProperties::DecimalFormatProperties((a1 + 3768));
  *(a1 + 4528) = 0;
  return a1;
}

uint64_t *sub_1952FDF1C(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    if (*a2)
    {
      operator new();
    }
  }

  return a1;
}

uint64_t sub_1952FDFB0(uint64_t a1)
{
  v2 = icu::FormattedValueStringBuilderImpl::FormattedValueStringBuilderImpl(a1, 0);
  *v2 = &unk_1F093F680;
  icu::number::impl::DecimalQuantity::DecimalQuantity((v2 + 38));
  icu::MeasureUnit::MeasureUnit(a1 + 376);
  *(a1 + 400) = "";
  return a1;
}

uint64_t *sub_1952FE014(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  if (*a2)
  {
    operator new();
  }

  return a1;
}

void *sub_1952FE0A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  icu::UnicodeString::~UnicodeString(a2, (a1 + 84));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 76));
  icu::UnicodeString::~UnicodeString(v4, (a1 + 68));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 60));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 49));
  icu::UnicodeString::~UnicodeString(v7, (a1 + 40));
  icu::UnicodeString::~UnicodeString(v8, (a1 + 32));
  icu::UnicodeString::~UnicodeString(v9, (a1 + 24));
  icu::UnicodeString::~UnicodeString(v10, (a1 + 16));
  v11 = a1[6];
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  icu::CurrencyUnit::~CurrencyUnit((a1 + 2));
  return a1;
}

void icu::DisplayOptions::builder(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t icu::DisplayOptions::Builder::Builder(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

double icu::DisplayOptions::copyToBuilder@<D0>(icu::DisplayOptions *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *this;
  result = *(this + 2);
  *(a2 + 16) = result;
  *(a2 + 24) = *(this + 6);
  return result;
}

double icu::DisplayOptions::Builder::Builder(icu::DisplayOptions::Builder *this, const icu::DisplayOptions *a2)
{
  *this = *a2;
  result = *(a2 + 2);
  *(this + 2) = result;
  *(this + 6) = *(a2 + 6);
  return result;
}

{
  *this = *a2;
  result = *(a2 + 2);
  *(this + 2) = result;
  *(this + 6) = *(a2 + 6);
  return result;
}

double icu::DisplayOptions::DisplayOptions(icu::DisplayOptions *this, const icu::DisplayOptions::Builder *a2)
{
  *this = *a2;
  result = *(a2 + 2);
  *(this + 2) = result;
  *(this + 6) = *(a2 + 6);
  return result;
}

{
  *this = *a2;
  result = *(a2 + 2);
  *(this + 2) = result;
  *(this + 6) = *(a2 + 6);
  return result;
}

const char *udispopt_getGrammaticalCaseIdentifier(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "undefined";
  }

  else
  {
    return off_1E740D200[a1];
  }
}

uint64_t udispopt_fromGrammaticalCaseIdentifier(char *__s1)
{
  v2 = 0;
  while (strcmp(__s1, off_1E740D200[v2]))
  {
    if (++v2 == 15)
    {
      return 0;
    }
  }

  return v2;
}

const char *udispopt_getPluralCategoryIdentifier(unsigned int a1)
{
  if (a1 > 6)
  {
    return "undefined";
  }

  else
  {
    return off_1E740D278[a1];
  }
}

uint64_t udispopt_fromPluralCategoryIdentifier(char *__s1)
{
  v2 = 0;
  while (strcmp(__s1, off_1E740D278[v2]))
  {
    if (++v2 == 7)
    {
      return 0;
    }
  }

  return v2;
}

const char *udispopt_getNounClassIdentifier(unsigned int a1)
{
  if (a1 > 8)
  {
    return "undefined";
  }

  else
  {
    return off_1E740D2B0[a1];
  }
}

uint64_t udispopt_fromNounClassIdentifier(char *__s1)
{
  v2 = 0;
  while (strcmp(__s1, off_1E740D2B0[v2]))
  {
    if (++v2 == 9)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1952FE374(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, int *a5, int *a6, double a7)
{
  v10 = a2;
  v11 = result;
  v12 = a7;
  v13 = ((*&a7 >> 52) & 0x7FF) - 1075;
  v14 = *&a7 & 0xFFFFFFFFFFFFFLL;
  if ((*&a7 & 0x7FF0000000000000) != 0)
  {
    v14 = *&a7 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v13 = -1074;
  }

  v15 = (*&a7 & 0x7FE0000000000000) != 0 && (*&a7 & 0xFFFFFFFFFFFFFLL) == 0;
  v16 = (LODWORD(v12) >> 23) - 150;
  LODWORD(v17) = LODWORD(v12) & 0x7FFFFF;
  if ((LODWORD(v12) & 0x7F800000) != 0)
  {
    v17 = LODWORD(v12) & 0x7FFFFF | 0x800000u;
  }

  else
  {
    v17 = v17;
  }

  if ((LODWORD(v12) & 0x7F800000) == 0)
  {
    v16 = -149;
  }

  v18 = (LODWORD(v12) & 0x7F000000) != 0 && (LODWORD(v12) & 0x7FFFFF) == 0;
  if (result == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  if (result == 1)
  {
    v20 = v16;
  }

  else
  {
    v20 = v13;
  }

  if (result == 1)
  {
    v21 = v17;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 - __clz(v21 & 0xFFFFFFFFFFFFFLL) + 11;
  if ((v21 & 0x10000000000000) != 0)
  {
    v22 = v20;
  }

  v23 = vcvtpd_s64_f64((v22 + 52) * 0.301029996 + -1.0e-10);
  if (result == 2 && ~v23 > a2)
  {
    *a3 = 0;
    *a5 = 0;
    *a6 = -a2;
    return result;
  }

  v24 = v21 & 1;
  bzero(v49, 0x204uLL);
  bzero(v48, 0x204uLL);
  bzero(v47, 0x204uLL);
  bzero(v46, 0x204uLL);
  if ((v20 & 0x80000000) == 0)
  {
    sub_1952FEA1C(v49, v21);
    sub_1952FEFF0(v49, v20);
    sub_1952FF368(v48, 0xAu, v23);
    if (v11 > 1)
    {
      goto LABEL_44;
    }

    sub_1952FEFF0(v48, 1);
    sub_1952FEFF0(v49, 1);
    sub_1952FEA04(v46, 1);
    sub_1952FEFF0(v46, v20);
    sub_1952FEA04(v47, 1);
    v25 = v47;
    v26 = v20;
    goto LABEL_39;
  }

  if (v23 < 0)
  {
    sub_1952FF368(v49, 0xAu, -v23);
    if (v11 > 1)
    {
      sub_1952FF144(v49, v21);
      sub_1952FEA04(v48, 1);
      v27 = -v20;
    }

    else
    {
      sub_1952FEA4C(v46, v49);
      sub_1952FEA4C(v47, v49);
      sub_1952FF144(v49, v21);
      v27 = 1;
      sub_1952FEA04(v48, 1);
      sub_1952FEFF0(v48, -v20);
      sub_1952FEFF0(v49, 1);
    }

    v25 = v48;
    v26 = v27;
LABEL_39:
    sub_1952FEFF0(v25, v26);
    goto LABEL_40;
  }

  sub_1952FEA1C(v49, v21);
  sub_1952FF368(v48, 0xAu, v23);
  sub_1952FEFF0(v48, -v20);
  if (v11 > 1)
  {
    goto LABEL_44;
  }

  sub_1952FEFF0(v48, 1);
  sub_1952FEFF0(v49, 1);
  sub_1952FEA04(v46, 1);
  sub_1952FEA04(v47, 1);
LABEL_40:
  v28 = !v19;
  if (v11 > 1)
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    sub_1952FEFF0(v48, 1);
    sub_1952FEFF0(v49, 1);
    sub_1952FEFF0(v46, 1);
  }

LABEL_44:
  result = sub_1952FF878(v49, v46, v48);
  if (!v24)
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    *a6 = v23 + 1;
    goto LABEL_50;
  }

  if (result >= 1)
  {
    goto LABEL_49;
  }

LABEL_46:
  *a6 = v23;
  sub_1952FF0B0(v49, 0xAu);
  v29 = sub_1952FF7D4(v47, v46);
  sub_1952FF0B0(v47, 0xAu);
  if (v29)
  {
    result = sub_1952FF0B0(v46, 0xAu);
  }

  else
  {
    result = sub_1952FEA4C(v46, v47);
  }

LABEL_50:
  if (v11 < 2)
  {
    v31 = v47;
    v32 = sub_1952FF7D4(v47, v46);
    if (v32)
    {
      v31 = v46;
    }

    *a5 = 0;
    v33 = v24 ^ 1;
    if (v24)
    {
      v34 = 0;
    }

    else
    {
      v34 = -1;
    }

    while (1)
    {
      v35 = sub_1952FF4F0(v49, v48);
      v36 = *a5;
      *a5 = v36 + 1;
      a3[v36] = v35 + 48;
      v37 = sub_1952FF7D4(v49, v47);
      result = sub_1952FF878(v49, v31, v48);
      if (v37 < v33 || result > v34)
      {
        break;
      }

      sub_1952FF0B0(v49, 0xAu);
      sub_1952FF0B0(v47, 0xAu);
      if (v32)
      {
        sub_1952FF0B0(v46, 0xAu);
      }
    }

    if (v37 >= v33 || result <= v34)
    {
      if (v37 < v33)
      {
        goto LABEL_81;
      }

      v42 = &a3[*a5];
      v43 = *(v42 - 1);
      v39 = v42 - 1;
      v40 = v43;
    }

    else
    {
      result = sub_1952FF878(v49, v49, v48);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_81;
      }

      v38 = &a3[*a5];
      v41 = *(v38 - 1);
      v39 = v38 - 1;
      v40 = v41;
      if (!result && (v40 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    *v39 = v40 + 1;
    goto LABEL_81;
  }

  if (v11 != 2)
  {
    if (v11 != 3)
    {
      abort();
    }

    v30 = v10;
    goto LABEL_54;
  }

  v44 = -*a6;
  if (v44 > v10)
  {
    *a6 = -v10;
LABEL_75:
    *a5 = 0;
    goto LABEL_81;
  }

  if (v44 == v10)
  {
    sub_1952FF0B0(v48, 0xAu);
    result = sub_1952FF878(v49, v49, v48);
    if ((result & 0x80000000) == 0)
    {
      *a3 = 49;
      *a5 = 1;
      ++*a6;
      goto LABEL_81;
    }

    goto LABEL_75;
  }

  v30 = *a6 + v10;
LABEL_54:
  result = sub_1952FE8B0(v30, a6, v49, v48, a3, a4, a5);
LABEL_81:
  a3[*a5] = 0;
  return result;
}

uint64_t sub_1952FE8B0(int a1, _DWORD *a2, __int16 *a3, __int16 *a4, _BYTE *a5, uint64_t a6, int *a7)
{
  v13 = (a1 - 1);
  v14 = (a1 - 2);
  if (a1 < 2)
  {
    v23 = sub_1952FF4F0(a3, a4);
    result = sub_1952FF878(a3, a3, a4);
    a5[v13] = v23 + (result >= 0) + 48;
  }

  else
  {
    v15 = (a1 - 1);
    v16 = a5;
    do
    {
      *v16++ = sub_1952FF4F0(a3, a4) + 48;
      sub_1952FF0B0(a3, 0xAu);
      --v15;
    }

    while (v15);
    v17 = sub_1952FF4F0(a3, a4);
    result = sub_1952FF878(a3, a3, a4);
    a5[v13] = v17 + (result >= 0) + 48;
    v19 = &a5[v13];
    v20 = a5[v13];
    v21 = &a5[v14];
    v22 = a1;
    do
    {
      if (v20 != 58)
      {
        break;
      }

      *v19-- = 48;
      v20 = *v21 + 1;
      *v21-- = v20;
      --v22;
    }

    while (v22 > 1);
  }

  if (*a5 == 58)
  {
    *a5 = 49;
    ++*a2;
  }

  *a7 = a1;
  return result;
}

_DWORD *sub_1952FEA04(_DWORD *result, int a2)
{
  *result = 0;
  if (a2)
  {
    result[1] = a2;
    *result = 1;
  }

  return result;
}

_DWORD *sub_1952FEA1C(_DWORD *result, unint64_t a2)
{
  *result = 0;
  if (a2)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      result[v3] = a2 & 0xFFFFFFF;
      a2 >>= 28;
      ++v2;
      ++v3;
    }

    while (a2);
    *result = v2;
  }

  return result;
}

_WORD *sub_1952FEA4C(_WORD *result, __int16 *a2)
{
  result[1] = a2[1];
  v2 = *a2;
  if (v2 >= 1)
  {
    v3 = a2 + 2;
    v4 = result + 2;
    v5 = *a2;
    do
    {
      v6 = *v3;
      v3 += 2;
      *v4++ = v6;
      --v5;
    }

    while (v5);
  }

  *result = v2;
  return result;
}

void sub_1952FEA84(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = 0;
  if (a3 < 19)
  {
    v6 = 0;
    v10 = a3;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v9 = *(v7 + v8++) + 10 * v9 - 48;
      }

      while (v8 != 19);
      v6 += 19;
      v10 = (v3 - 19);
      sub_1952FEBC8(a1, 19);
      sub_1952FECBC(a1, v9);
      v7 += 19;
      v11 = v3 <= 37;
      v3 -= 19;
    }

    while (!v11);
  }

  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = v6;
    do
    {
      v12 = *(a2 + v13++) + 10 * v12 - 48;
    }

    while (v13 < v10 + v6);
  }

  sub_1952FEBC8(a1, v10);
  sub_1952FECBC(a1, v12);
  v14 = *a1;
  if (v14 < 1)
  {
    if (!*a1)
    {
LABEL_19:
      a1[1] = 0;
    }
  }

  else
  {
    while (!*&a1[2 * v14])
    {
      v15 = v14;
      LOWORD(v14) = v14 - 1;
      *a1 = v14;
      if (v15 <= 1)
      {
        goto LABEL_19;
      }
    }
  }
}

__int16 *sub_1952FEBC8(__int16 *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (*result)
    {
      v3 = a2;
      v4 = a2;
      if (a2 >= 27)
      {
        v5 = a2;
        do
        {
          sub_1952FF144(v2, 0x6765C793FA10079DuLL);
          v4 = v5 - 27;
          v6 = v5 > 0x35;
          v5 -= 27;
        }

        while (v6);
      }

      if (v4 < 13)
      {
        v7 = v4;
      }

      else
      {
        do
        {
          sub_1952FF0B0(v2, 0x48C27395u);
          v7 = v4 - 13;
          v6 = v4 > 0x19;
          v4 -= 13;
        }

        while (v6);
      }

      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (v9 < 0 == v8)
      {
        sub_1952FF0B0(v2, dword_19548C050[v9]);
      }

      return sub_1952FEFF0(v2, v3);
    }
  }

  return result;
}

void sub_1952FECBC(__int16 *result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    bzero(v5, 0x204uLL);
    v4 = 0;
    do
    {
      v5[v4 + 1] = v2 & 0xFFFFFFF;
      v2 >>= 28;
      ++v4;
    }

    while (v2);
    LOWORD(v5[0]) = v4;
    sub_1952FED34(result, v5);
  }
}

void sub_1952FED34(__int16 *a1, __int16 *a2)
{
  sub_1952FEE60(a1, a2);
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 + v4;
  v7 = *a2;
  v8 = a2[1];
  if (v5 + v4 <= v8 + v7)
  {
    v6 = v8 + v7;
  }

  if (v6 - v5 >= 128)
  {
    abort();
  }

  v9 = v8 - v5;
  if (v8 - v5 > v4)
  {
    bzero(&a1[2 * *a1 + 2], 4 * (~v5 + v8 - *a1) + 4);
  }

  if (v7 >= 1)
  {
    v10 = 0;
    v11 = a1 + 2;
    v12 = a2 + 2;
    v13 = v9;
    do
    {
      if (v13 >= v4)
      {
        v14 = 0;
      }

      else
      {
        v14 = *&v11[2 * v13];
      }

      v15 = *v12;
      v12 += 2;
      v16 = v14 + v10 + v15;
      *&v11[2 * v13] = v16 & 0xFFFFFFF;
      v10 = v16 >> 28;
      ++v13;
      --v7;
    }

    while (v7);
    for (; v10; ++v13)
    {
      if (v13 >= v4)
      {
        v17 = 0;
      }

      else
      {
        v17 = *&v11[2 * v13];
      }

      v18 = v17 + v10;
      *&v11[2 * v13] = v18 & 0xFFFFFFF;
      v10 = v18 >> 28;
    }

    v9 = v13;
  }

  if (v9 <= v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = v9;
  }

  *a1 = v19;
}

void sub_1952FEE60(__int16 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 2);
  v4 = v2 - v3;
  if (v2 > v3)
  {
    v6 = *a1;
    if (v4 + v6 > 128)
    {
      abort();
    }

    v7 = *a1;
    if (v6 >= 1)
    {
      v8 = *a1 + 1;
      v9 = &a1[2 * v7];
      v10 = &a1[2 * v7 + 2 * a1[1] + -2 * *(a2 + 2)];
      do
      {
        v11 = *v9;
        v9 -= 2;
        *v10 = v11;
        v10 -= 2;
        --v8;
      }

      while (v8 > 1);
    }

    if (v4 >= 1)
    {
      bzero(a1 + 2, 4 * (~v3 + v2) + 4);
    }

    *a1 = v7 + v4;
    a1[1] = v2 - v4;
  }
}

void sub_1952FEF10(__int16 *a1, __int16 *a2)
{
  sub_1952FEE60(a1, a2);
  v4 = *a2;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a2[1];
    v7 = a1[1];
    v8 = a2 + 2;
    v9 = &a1[2 * v6 + 2 + -2 * v7];
    v10 = *a2;
    do
    {
      v11 = *v8;
      v8 += 2;
      v12 = *v9 + v5 - v11;
      *v9 = v12 & 0xFFFFFFF;
      v9 += 2;
      v5 = v12 >> 31;
      --v10;
    }

    while (v10);
    if (v12 < 0)
    {
      v13 = &a1[2 * (v6 + v4 - v7) + 2];
      do
      {
        v14 = *v13 - 1 < 0;
        *v13 = (*v13 - 1) & 0xFFFFFFF;
        v13 += 2;
      }

      while (v14);
    }
  }

  v15 = *a1;
  if (v15 < 1)
  {
    if (!*a1)
    {
LABEL_12:
      a1[1] = 0;
    }
  }

  else
  {
    while (!*&a1[2 * v15])
    {
      v16 = v15;
      LOWORD(v15) = v15 - 1;
      *a1 = v15;
      if (v16 <= 1)
      {
        goto LABEL_12;
      }
    }
  }
}

__int16 *sub_1952FEFF0(__int16 *result, int a2)
{
  v3 = *result;
  if (*result)
  {
    result[1] += a2 / 28;
    if (v3 >= 128)
    {
      abort();
    }

    v4 = a2 % 28;

    return sub_1952FF054(result, v4);
  }

  return result;
}

__int16 *sub_1952FF054(__int16 *result, char a2)
{
  v2 = *result;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 2;
    v5 = *result;
    do
    {
      v6 = *&result[v4];
      v7 = (v6 << a2) + v3;
      v3 = v6 >> (28 - a2);
      *&result[v4] = v7 & 0xFFFFFFF;
      v4 += 2;
      --v5;
    }

    while (v5);
    if (v3)
    {
      *&result[2 * v2 + 2] = v3;
      *result = v2 + 1;
    }
  }

  return result;
}

_WORD *sub_1952FF0B0(_WORD *result, unsigned int a2)
{
  if (a2 != 1)
  {
    if (a2)
    {
      if (*result >= 1)
      {
        v2 = 0;
        v3 = *result;
        v4 = 2;
        v5 = v3;
        do
        {
          v6 = v2 + *&result[v4] * a2;
          *&result[v4] = v6 & 0xFFFFFFF;
          v2 = v6 >> 28;
          v4 += 2;
          --v5;
        }

        while (v5);
        for (; v2; v2 >>= 28)
        {
          if (v3 >= 128)
          {
            abort();
          }

          *&result[2 * v3++ + 2] = v2 & 0xFFFFFFF;
          *result = v3;
        }
      }
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

_WORD *sub_1952FF144(_WORD *result, unint64_t a2)
{
  if (a2 != 1)
  {
    if (a2)
    {
      v2 = *result;
      if (*result)
      {
        v3 = v2 < 1;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        v4 = 0;
        v5 = 2;
        v6 = *result;
        do
        {
          v7 = *&result[v5];
          v8 = (v4 & 0xFFFFFFF) + a2 * v7;
          *&result[v5] = v8 & 0xFFFFFFF;
          v4 = ((a2 >> 28) & 0xFFFFFFFF0) * v7 + (v4 >> 28) + (v8 >> 28);
          v5 += 2;
          --v6;
        }

        while (v6);
        for (; v4; v4 >>= 28)
        {
          if (v2 >= 128)
          {
            abort();
          }

          *&result[2 * v2++ + 2] = v4 & 0xFFFFFFF;
          *result = v2;
        }
      }
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

__int16 *sub_1952FF1F0(__int16 *result)
{
  v1 = *result;
  if (v1 > 64)
  {
    abort();
  }

  v2 = 2 * *result;
  if (v1 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 4 * *result;
    v5 = result + 2;
    do
    {
      *&v5[v4 / 2] = *v5;
      v5 += 2;
      v3 += 4;
    }

    while (v4 != v3);
    v6 = 0;
    v7 = 0;
    v8 = 4;
    do
    {
      v9 = v8;
      v10 = &result[2 * v1 + 2];
      do
      {
        v11 = *v10;
        v10 += 2;
        v7 += v11 * *(&result[2 * v1] + v9);
        v9 -= 4;
      }

      while (v9);
      *&result[2 * v6 + 2] = v7 & 0xFFFFFFF;
      v7 >>= 28;
      ++v6;
      v8 += 4;
    }

    while (v6 != v1);
  }

  if (v2 > v1)
  {
    v12 = v1;
    v13 = 2 * v1 - 1;
    v14 = &result[2 * v1 + 4];
    v15 = v1 - 1;
    v16 = &result[4 * v1];
    do
    {
      if (v12 < v13)
      {
        v17 = v15;
        v18 = v14;
        v19 = v16;
        do
        {
          v21 = *v19;
          v19 -= 2;
          v20 = v21;
          v22 = *v18;
          v18 += 2;
          v7 += v22 * v20;
          --v17;
        }

        while (v17);
      }

      *&result[2 * v12 + 2] = v7 & 0xFFFFFFF;
      v7 >>= 28;
      ++v12;
      v14 += 2;
      --v15;
    }

    while (v12 != v2);
  }

  *result = v2;
  result[1] *= 2;
  if (v2 < 1)
  {
    if (!v2)
    {
LABEL_22:
      result[1] = 0;
    }
  }

  else
  {
    while (!*&result[2 * v2])
    {
      v23 = v2;
      LOWORD(v2) = v2 - 1;
      *result = v2;
      if (v23 <= 1)
      {
        goto LABEL_22;
      }
    }
  }

  return result;
}

__int16 *sub_1952FF368(__int16 *result, unsigned int a2, int a3)
{
  v3 = result;
  if (a3)
  {
    v5 = a2;
    *result = 0;
    v6 = 0;
    if ((a2 & 1) == 0)
    {
      do
      {
        v7 = v5 >> 1;
        v5 = v5 >> 1;
        ++v6;
      }

      while ((v7 & 1) == 0);
    }

    v8 = __clz(v5);
    if (((32 - v8) * a3) > 3555)
    {
      abort();
    }

    v9 = 1;
    do
    {
      v10 = v9;
      v9 *= 2;
    }

    while (v10 <= a3);
    v11 = v10 >> 2;
    if (v10 >= 4)
    {
      v12 = 0;
      v14 = v8 | 0x20;
      v13 = v5;
      v15 = v11;
      do
      {
        v13 *= v13;
        if ((v15 & a3) != 0)
        {
          v16 = v13 >> v14 != 0;
          if (v13 >> v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = v5;
          }

          v13 *= v17;
          v12 |= v16;
        }

        v11 = v15 >> 1;
        if (v15 < 2)
        {
          break;
        }

        v15 >>= 1;
      }

      while (!HIDWORD(v13));
    }

    else
    {
      v12 = 0;
      v13 = v5;
    }

    if (v13)
    {
      v18 = 0;
      do
      {
        *&result[2 * v18 + 2] = v13 & 0xFFFFFFF;
        v13 >>= 28;
        ++v18;
      }

      while (v13);
      *result = v18;
    }

    if (v12)
    {
      sub_1952FF0B0(result, v5);
    }

    if (v11)
    {
      do
      {
        sub_1952FF1F0(v3);
        if ((v11 & a3) != 0)
        {
          sub_1952FF0B0(v3, v5);
        }

        v19 = v11 > 1;
        v11 >>= 1;
      }

      while (v19);
    }

    return sub_1952FEFF0(v3, v6 * a3);
  }

  else
  {
    *result = 0x100000001;
  }

  return result;
}

uint64_t sub_1952FF4F0(__int16 *a1, __int16 *a2)
{
  if (a1[1] + *a1 >= a2[1] + *a2)
  {
    sub_1952FEE60(a1, a2);
    v6 = *a1;
    v7 = *a2;
    if (a1[1] + v6 <= a2[1] + v7)
    {
      v2 = 0;
    }

    else
    {
      v2 = 0;
      do
      {
        v8 = *&a1[2 * v6];
        v2 += v8;
        sub_1952FF690(a1, a2, v8);
        v6 = *a1;
        v7 = *a2;
      }

      while (a1[1] + v6 > a2[1] + v7);
    }

    v9 = v6;
    v10 = v6 - 1;
    v11 = a1 + 2;
    v12 = *&a1[2 * v10 + 2];
    v13 = *&a2[2 * v7];
    if (v7 == 1)
    {
      *&v11[2 * v10] = v12 % v13;
      v2 += v12 / v13;
      if (v9 < 1)
      {
        if (!v9)
        {
LABEL_19:
          a1[1] = 0;
        }
      }

      else
      {
        while (!*&v11[2 * v9 - 2])
        {
          v14 = v9;
          LOWORD(v9) = v9 - 1;
          *a1 = v9;
          if (v14 <= 1)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v15 = v12 / (v13 + 1);
      LOWORD(v2) = v2 + v15;
      sub_1952FF690(a1, a2, v15);
      if (v13 + v13 * v15 <= v12 && sub_1952FF7D4(a2, a1) <= 0)
      {
        do
        {
          sub_1952FEF10(a1, a2);
          LOWORD(v2) = v2 + 1;
        }

        while (sub_1952FF7D4(a2, a1) < 1);
      }
    }
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

void sub_1952FF690(__int16 *a1, __int16 *a2, int a3)
{
  v3 = a3;
  if (a3 > 2)
  {
    v6 = a2[1] - a1[1];
    v7 = *a2;
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = a2 + 2;
      v10 = &a1[2 * a2[1] + 2 + -2 * a1[1]];
      v11 = *a2;
      do
      {
        v12 = *v9;
        v9 += 2;
        v13 = v12 * a3 + v8;
        v14 = *v10 - (v13 & 0xFFFFFFF);
        *v10 = v14 & 0xFFFFFFF;
        v10 += 2;
        v8 = (v13 >> 28) + (v14 >> 31);
        --v11;
      }

      while (v11);
    }

    LODWORD(v15) = v6 + v7;
    v16 = *a1;
    if (v15 >= v16)
    {
LABEL_14:
      if (v16 < 1)
      {
        if (!v16)
        {
LABEL_19:
          a1[1] = 0;
        }
      }

      else
      {
        while (!*&a1[2 * v16])
        {
          v19 = v16;
          LOWORD(v16) = v16 - 1;
          *a1 = v16;
          if (v19 <= 1)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v17 = a1 + 2;
      v15 = v15;
      while (v8)
      {
        v18 = *&v17[2 * v15] - v8;
        *&v17[2 * v15] = v18 & 0xFFFFFFF;
        v8 = v18 >> 31;
        if (++v15 >= v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else if (a3 >= 1)
  {
    do
    {
      sub_1952FEF10(a1, a2);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1952FF7D4(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 + v2;
  v5 = a2[1];
  v6 = v5 + *a2;
  if (v3 + v2 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 + v2 > v6)
  {
    return 1;
  }

  if (v5 >= v3)
  {
    v8 = a1[1];
  }

  else
  {
    v8 = a2[1];
  }

  v9 = v2 + v3;
  v10 = &a1[2 * v2];
  while (v9 > v8)
  {
    v11 = 0;
    if (v9 > v3 && v9 <= v4)
    {
      v11 = *v10;
    }

    v12 = 0;
    if (v9 > v5 && v9 <= v6)
    {
      v12 = *&a2[2 * v9 + -2 * v5];
    }

    if (v11 < v12)
    {
      return 0xFFFFFFFFLL;
    }

    v10 -= 2;
    --v9;
    if (v11 > v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1952FF878(__int16 *a1, __int16 *a2, __int16 *a3)
{
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a2;
    a2 = a1;
    v6 = v4;
    v7 = v4 + v3;
    v3 = *v5;
    v8 = v5[1];
    v4 = v5[1];
    v9 = v8 + *v5;
    a1 = v5;
  }

  while (v7 < v9);
  v10 = *a3;
  v11 = a3[1];
  v12 = v11 + v10;
  if (v7 + 1 < v11 + v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 > v12)
  {
    return 1;
  }

  if (v9 <= v6 && v7 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = a2[1];
  if (v8 < v6)
  {
    v14 = v5[1];
  }

  if (v11 >= v14)
  {
    LODWORD(v15) = v14;
  }

  else
  {
    LODWORD(v15) = a3[1];
  }

  if (v12 > v15)
  {
    v16 = 0;
    v17 = v6;
    v18 = v10 + v11;
    v15 = v15;
    v19 = &a3[2 * v10];
    v20 = &v5[-2 * v5[1]];
    v21 = &a2[-2 * v6];
    while (1)
    {
      v22 = 0;
      if (v18 > v17 && v18 <= v7)
      {
        v22 = *&v21[2 * v18];
      }

      v23 = 0;
      if (v18 > v8 && v18 <= v9)
      {
        v23 = *&v20[2 * v18];
      }

      v24 = 0;
      if (v18 > v11 && v18 <= v12)
      {
        v24 = *v19;
      }

      v25 = v23 + v22;
      v26 = v24 + v16;
      v27 = v24 + v16 - v25;
      if (v26 < v25)
      {
        break;
      }

      if (v27 > 1)
      {
        return 0xFFFFFFFFLL;
      }

      --v18;
      v16 = v27 << 28;
      v19 -= 2;
      if (v18 <= v15)
      {
        if (v26 == v25)
        {
          return 0;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1952FF9C0(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = vcvtpd_s64_f64((result + 63) * 0.301029996);
  v6 = v4 + 347;
  v5 = v4 < -347;
  v7 = v4 + 354;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = &unk_19548C080 + 16 * (v7 >> 3);
  v9 = *(v8 + 2);
  v10 = *(v8 + 12);
  *a4 = *(v8 + 13);
  *a3 = v9;
  *(a3 + 8) = v10;
  return result;
}

uint64_t sub_1952FFA10(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = result + 348;
  if (result < -348)
  {
    v3 = result + 355;
  }

  v4 = &unk_19548C080 + 16 * (v3 >> 3);
  v5 = *v4;
  v6 = *(v4 + 4);
  LODWORD(v4) = *(v4 + 5);
  *a2 = v5;
  *(a2 + 8) = v6;
  *a3 = v4;
  return result;
}

uint64_t icu::double_conversion::DoubleToStringConverter::DoubleToAscii(uint64_t result, uint64_t a2, _BYTE *a3, unsigned int a4, BOOL *a5, int *a6, int *a7, double a8)
{
  *a5 = a8 < 0.0;
  if (result != 3 || a2)
  {
    if (a8 == 0.0)
    {
      *a3 = 48;
      *a6 = 1;
      *a7 = 1;
    }

    else
    {
      if (result)
      {
        abort();
      }

      v12 = a4;
      v13 = fabs(a8);
      result = sub_1952FFB28(0, 0, a3, a4, a6, a7, v13);
      if ((result & 1) == 0)
      {
        result = sub_1952FE374(0, a2, a3, v12, a6, a7, v13);
        a3[*a6] = 0;
      }
    }
  }

  else
  {
    *a3 = 0;
    *a6 = 0;
  }

  return result;
}

BOOL sub_1952FFB28(unsigned int a1, int a2, _BYTE *a3, uint64_t a4, int *a5, _DWORD *a6, double a7)
{
  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      abort();
    }

    v60 = a7;
    v18 = sub_195300048(&v60);
    v20 = v19;
    v60 = 0.0;
    v61 = 0;
    LODWORD(v59[0]) = 0;
    sub_1952FF9C0((-124 - v19), (-96 - v19), &v60, v59);
    v21 = ((LODWORD(v60) * HIDWORD(v18)) >> 32) + HIDWORD(v60) * HIDWORD(v18) + ((HIDWORD(v60) * v18) >> 32) + ((((LODWORD(v60) * v18) >> 32) + (LODWORD(v60) * HIDWORD(v18)) + (HIDWORD(v60) * v18) + 0x80000000) >> 32);
    v22 = -64 - (v20 + v61);
    v23 = -(v20 + v61);
    v24 = v21 >> -(v20 + v61);
    v25 = 1233 * (v20 + v61 + 64) + 80145;
    v26 = v25 >> 12;
    v27 = (v25 >> 12) + 1;
    if (dword_19548C5F0[v27] > v24)
    {
      LODWORD(v27) = v26;
    }

    v28 = dword_19548C5F0[v27];
    v29 = 1 << v23;
    v30 = (1 << v23) - 1;
    v31 = v21 & v30;
    LODWORD(v57) = v27;
    *a5 = 0;
    if (v27 < 1)
    {
      v32 = 0;
      if (a2)
      {
LABEL_30:
        if (a2 < 1 || v31 < 2)
        {
          return 0;
        }

        v52 = 1;
        do
        {
          v53 = a2;
          v52 *= 10;
          a3[v32] = ((10 * v31) >> v22) + 48;
          v32 = *a5 + 1;
          *a5 = v32;
          --a2;
          v31 = v30 & (10 * v31);
          LODWORD(v27) = v27 - 1;
        }

        while (v53 >= 2 && v31 > v52);
        LODWORD(v57) = v27;
        if (a2)
        {
          return 0;
        }

        v54 = a3;
        v55 = a4;
LABEL_39:
        if (sub_1953002A0(v54, v55, v32, v31, v29, v52, &v57))
        {
          v51 = LODWORD(v57) - LODWORD(v59[0]);
          goto LABEL_41;
        }

        return 0;
      }
    }

    else
    {
      v32 = 0;
      while (1)
      {
        a3[v32] = v24 / v28 + 48;
        v32 = *a5 + 1;
        *a5 = v32;
        LODWORD(v24) = v24 % v28;
        LODWORD(v27) = v27 - 1;
        if (!--a2)
        {
          break;
        }

        v28 /= 0xAu;
        if ((v27 + 1) <= 1)
        {
          LODWORD(v57) = v27;
          goto LABEL_30;
        }
      }

      LODWORD(v57) = v27;
    }

    v29 = v28 << v22;
    v31 += v24 << v22;
    v54 = a3;
    v55 = a4;
    v52 = 1;
    goto LABEL_39;
  }

  v60 = a7;
  v13 = sub_195300048(&v60);
  v15 = v14;
  v60 = 0.0;
  v61 = 0;
  v59[0] = 0;
  v59[1] = 0;
  if (a1)
  {
    v16 = a7;
    *&v57 = v16;
    sub_19530013C(&v57, &v60, v59);
  }

  else
  {
    v57 = a7;
    sub_19530009C(&v57, &v60, v59);
  }

  v57 = 0.0;
  v58 = 0;
  v56 = 0;
  sub_1952FF9C0((-124 - v15), (-96 - v15), &v57, &v56);
  v33 = ((LODWORD(v57) * HIDWORD(v13)) >> 32) + HIDWORD(v57) * HIDWORD(v13) + ((HIDWORD(v57) * v13) >> 32) + ((((LODWORD(v57) * v13) >> 32) + (LODWORD(v57) * HIDWORD(v13)) + (HIDWORD(v57) * v13) + 0x80000000) >> 32);
  v34 = ((HIDWORD(v59[0]) * LODWORD(v57)) >> 32) + HIDWORD(v59[0]) * HIDWORD(v57) + ((LODWORD(v59[0]) * HIDWORD(v57)) >> 32) + ((((LODWORD(v59[0]) * LODWORD(v57)) >> 32) + (HIDWORD(v59[0]) * LODWORD(v57)) + (LODWORD(v59[0]) * HIDWORD(v57)) + 0x80000000) >> 32);
  v35 = v34 + 1;
  v36 = v34 - (((HIDWORD(v60) * LODWORD(v57)) >> 32) + HIDWORD(v60) * HIDWORD(v57) + ((LODWORD(v60) * HIDWORD(v57)) >> 32) + ((((LODWORD(v60) * LODWORD(v57)) >> 32) + (HIDWORD(v60) * LODWORD(v57)) + (LODWORD(v60) * HIDWORD(v57)) + 0x80000000) >> 32)) + 2;
  v37 = -64 - (v15 + v58);
  v38 = 1 << -(v15 + v58);
  v39 = v35 >> -(v15 + v58);
  v40 = v35 & (v38 - 1);
  v41 = 1233 * (v15 + v58 + 64) + 80145;
  v42 = v41 >> 12;
  v43 = (v41 >> 12) + 1;
  if (dword_19548C5F0[v43] <= v39)
  {
    v44 = v43;
  }

  else
  {
    v44 = v42;
  }

  v45 = dword_19548C5F0[v44];
  *a5 = 0;
  if (v44 >= 1)
  {
    v46 = 0;
    v47 = v44 + 1;
    while (1)
    {
      a3[v46] = v39 / v45 + 48;
      v46 = *a5 + 1;
      *a5 = v46;
      v39 = v39 % v45;
      if ((v39 << v37) + v40 < v36)
      {
        break;
      }

      v45 /= 0xAu;
      if (--v47 <= 1)
      {
        v44 = 0;
        goto LABEL_23;
      }
    }

    if (sub_1953001DC(a3, a4, v46, v35 - v33, v36, (v39 << v37) + v40, v45 << v37, 1))
    {
      v51 = v47 - v56 - 2;
      goto LABEL_41;
    }

    return 0;
  }

  v46 = 0;
LABEL_23:
  v48 = 1;
  do
  {
    v48 *= 10;
    v49 = 5 * v36;
    v36 *= 10;
    a3[v46] = ((10 * v40) >> v37) + 48;
    v46 = *a5 + 1;
    *a5 = v46;
    v40 = (v38 - 1) & (10 * v40);
    --v44;
  }

  while (v40 >= 2 * v49);
  result = sub_1953001DC(a3, a4, v46, v48 * (v35 - v33), v36, v40, v38, v48);
  if (result)
  {
    v51 = v44 - v56;
LABEL_41:
    *a6 = *a5 + v51;
    a3[*a5] = 0;
    return 1;
  }

  return result;
}

uint64_t sub_195300048(void *a1)
{
  v1 = (*a1 & 0xFFFFFFFFFFFFFLL) << (52 - (__clz(*a1 & 0xFFFFFFFFFFFFFLL) ^ 0x3Fu));
  if ((*a1 & 0x7FF0000000000000) != 0)
  {
    v1 = *a1 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  return v1 << 11;
}

void *sub_19530009C(void *result, uint64_t a2, uint64_t a3)
{
  if ((*result & 0x7FF0000000000000) != 0)
  {
    v3 = *result & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v3 = *result & 0xFFFFFFFFFFFFFLL;
  }

  if ((*result & 0x7FF0000000000000) != 0)
  {
    v4 = ((*result >> 52) & 0x7FF) - 1075;
  }

  else
  {
    v4 = -1074;
  }

  v5 = 2 * v3;
  v6 = (2 * (v3 & 0x1FFFFFFFFFFFFFLL)) | 1;
  v7 = v4 - 1;
  v8 = v4 - 1;
  do
  {
    v9 = v6 >> 44;
    v6 <<= 10;
    v8 -= 10;
  }

  while (!v9);
  for (; (v6 & 0x8000000000000000) == 0; --v8)
  {
    v6 *= 2;
  }

  v10 = (*result & 0xFFFFFFFFFFFFFLL) == 0;
  v11 = (*result & 0x7FE0000000000000) != 0;
  v12 = 4 * v3;
  v13 = v4 - 2;
  v14 = !v10 || !v11;
  if (v10 && v11)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  if (v14)
  {
    v16 = v5;
  }

  else
  {
    v16 = v12;
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *a2 = (v16 - 1) << (v15 - v8);
  *(a2 + 8) = v8;
  return result;
}

unsigned int *sub_19530013C(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *result & 0x7FFFFF;
  LODWORD(v5) = v4 | 0x800000;
  if ((*result & 0x7F800000) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 0x7F800000) != 0)
  {
    v6 = (*result >> 23) - 150;
  }

  else
  {
    v6 = -149;
  }

  v7 = 2 * v5;
  v8 = (2 * (v5 & 0xFFFFFF)) | 1;
  v9 = v6 - 1;
  v10 = v6 - 1;
  do
  {
    v11 = v8 >> 44;
    v8 <<= 10;
    v10 -= 10;
  }

  while (!v11);
  for (; (v8 & 0x8000000000000000) == 0; --v10)
  {
    v8 *= 2;
  }

  v12 = v4 == 0;
  v13 = (v3 & 0x7F000000) != 0;
  v14 = 4 * v5;
  v15 = v6 - 2;
  v16 = !v12 || !v13;
  if (v12 && v13)
  {
    v17 = v15;
  }

  else
  {
    v17 = v9;
  }

  if (v16)
  {
    v18 = v7;
  }

  else
  {
    v18 = v14;
  }

  *a3 = v8;
  *(a3 + 8) = v10;
  *a2 = (v18 - 1) << (v17 - v10);
  *(a2 + 8) = v10;
  return result;
}

BOOL sub_1953001DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a4 - a8;
  v9 = a8 + a4;
  v10 = a5 - a6 < a7;
  v11 = a4 - a8 - a6;
  if (a4 - a8 > a6 && a5 - a6 >= a7)
  {
    v12 = a5 - (a7 + a6);
    while (1)
    {
      v13 = a6 + a7;
      v14 = a6 + a7 < v8 || v11 >= a8 - a4 + a7 + a6;
      if (!v14)
      {
        break;
      }

      --*(a1 - 1 + a3);
      v10 = v12 < a7;
      if (v13 < v8)
      {
        v11 -= a7;
        a6 += a7;
        v14 = v12 >= a7;
        v12 -= a7;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

  v13 = a6;
LABEL_13:
  v15 = v9 - v13;
  if (v9 > v13 && !v10)
  {
    v14 = v13 + a7 >= v9;
    v16 = v13 + a7 - v9;
    if (!v14 || v15 > v16)
    {
      return 0;
    }
  }

  return v13 >= 2 * a8 && v13 <= a5 - 4 * a8;
}

uint64_t sub_1953002A0(_BYTE *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, _DWORD *a7)
{
  v7 = 0;
  if (a5 > a6 && a5 - a6 > a6)
  {
    if (a5 - a4 <= a4 || a5 - 2 * a4 < 2 * a6)
    {
      if (a4 <= a6 || a5 - (a4 - a6) > a4 - a6)
      {
        return 0;
      }

      v8 = a3 - 1;
      ++a1[v8];
      if (a3 >= 2)
      {
        v9 = &a1[v8];
        v10 = *v9;
        v11 = &a1[a3 - 2];
        do
        {
          if (v10 != 58)
          {
            break;
          }

          *v9-- = 48;
          v10 = *v11 + 1;
          *v11-- = v10;
          --a3;
        }

        while (a3 > 1);
      }

      if (*a1 == 58)
      {
        *a1 = 49;
        ++*a7;
      }
    }

    return 1;
  }

  return v7;
}

double sub_195300374(double *a1, unsigned __int8 *a2, int a3, uint64_t a4, _DWORD *a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = &a2[a3];
  v82 = v6;
  *v83 = a2;
  *a5 = 0;
  if (!a3)
  {
    return a1[1];
  }

  v8 = a4;
  v10 = *a1;
  v11 = (*a1 >> 4) & 1;
  v12 = a2;
  if ((*a1 & 8) == 0)
  {
    v12 = a2;
    if (!v11)
    {
      v13 = *a2;
      v12 = a2;
      goto LABEL_5;
    }
  }

LABEL_15:
  v18 = 0;
  v13 = *v12;
  do
  {
    if (byte_19548C61C[v18] == v13)
    {
      if (++v12 == v6)
      {
        *a5 = a3;
        return a1[1];
      }

      goto LABEL_15;
    }

    ++v18;
  }

  while (v18 != 6);
  *v83 = v12;
  if ((v10 & 8) == 0 && v12 != a2)
  {
    return a1[2];
  }

LABEL_5:
  v14 = a3;
  if (v13 == 45 || v13 == 43)
  {
    v15 = v13 == 45;
    *v83 = v12 + 1;
    if (v12 + 1 == v6)
    {
      return a1[2];
    }

    v16 = 1;
LABEL_9:
    for (i = 0; i != 6; ++i)
    {
      if (byte_19548C61C[i] == v12[v16])
      {
        if (++v16 == &a2[a3] - v12)
        {
          return a1[2];
        }

        goto LABEL_9;
      }
    }

    if ((v10 & 0x20) == 0 && v16 != 1)
    {
      return a1[2];
    }

    v12 += v16;
    *v83 = v12;
  }

  else
  {
    v15 = 0;
  }

  v20 = *(a1 + 3);
  if (!v20)
  {
    v24 = *(a1 + 4);
    if (!v24)
    {
      v21 = *v12;
      goto LABEL_58;
    }

    if ((v10 & 0x40) == 0)
    {
      v21 = *v12;
      goto LABEL_46;
    }

LABEL_203:
    abort();
  }

  if ((v10 & 0x40) != 0)
  {
    goto LABEL_203;
  }

  v21 = *v12;
  if (*v20 == v21)
  {
    if (!sub_19530168C(v83, v6, v20, 0))
    {
      return a1[2];
    }

    v22 = *v83;
    if ((v11 | ((v10 & 4) >> 2)))
    {
      if ((v10 & 4) != 0 || *v83 == v6)
      {
        LODWORD(v6) = *v83;
      }

      else
      {
        do
        {
          v23 = 0;
          while (byte_19548C61C[v23] != *v22)
          {
            if (++v23 == 6)
            {
              return a1[2];
            }
          }

          ++v22;
        }

        while (v22 != v6);
        LODWORD(v6) = a2 + v14;
      }
    }

    else if (*v83 != v6)
    {
      return a1[2];
    }

    *a5 = v6 - a2;
    v42 = !v15;
    v43 = INFINITY;
    v44 = 0xFFF0000000000000;
LABEL_116:
    v45 = *&v44;
    goto LABEL_200;
  }

  v24 = *(a1 + 4);
  if (v24)
  {
LABEL_46:
    if (*v24 == v21)
    {
      if (!sub_19530168C(v83, v6, v24, 0))
      {
        return a1[2];
      }

      v25 = *v83;
      if ((v11 | ((v10 & 4) >> 2)))
      {
        if ((v10 & 4) != 0 || *v83 == v6)
        {
          LODWORD(v6) = *v83;
        }

        else
        {
          do
          {
            v26 = 0;
            while (byte_19548C61C[v26] != *v25)
            {
              if (++v26 == 6)
              {
                return a1[2];
              }
            }

            ++v25;
          }

          while (v25 != v6);
          LODWORD(v6) = a2 + v14;
        }
      }

      else if (*v83 != v6)
      {
        return a1[2];
      }

      *a5 = v6 - a2;
      v42 = !v15;
      v43 = NAN;
      v44 = 0xFFF8000000000000;
      goto LABEL_116;
    }
  }

LABEL_58:
  v76 = v14;
  v77 = v21;
  if (v21 != 48)
  {
    v72 = v11;
    v73 = a4;
    v74 = v15;
    v75 = a5;
    LOBYTE(v29) = 0;
LABEL_65:
    v30 = 0;
    v79 = 0;
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = *v83;
      v34 = **v83;
      if ((v34 - 48) > 9)
      {
        v29 = (v32 != 0) & v29;
        if (v34 != 46)
        {
          v35 = 0;
          goto LABEL_97;
        }

        if (v29 && (v10 & 4) == 0)
        {
          return a1[2];
        }

        if ((v29 & 1) == 0)
        {
          v71 = *(a1 + 20);
          if (sub_19530170C(v83, v71, 10, &v82))
          {
            v35 = 0;
            if (v77 == 48 || v32)
            {
              goto LABEL_189;
            }

            return a1[2];
          }

          if (v32 || **v83 != 48)
          {
            v35 = 0;
            goto LABEL_143;
          }

          v35 = 0;
          do
          {
            if (sub_19530170C(v83, v71, 10, &v82))
            {
              *v75 = *v83 - a2;
              v28 = v74 == 0;
              goto LABEL_61;
            }

            --v35;
          }

          while (**v83 == 48);
LABEL_143:
          while (1)
          {
            v33 = *v83;
            v34 = **v83;
            if ((v34 - 48) > 9)
            {
              break;
            }

            if (v32 > 771)
            {
              v79 |= v34 != 48;
            }

            else
            {
              v84[v30++] = v34;
              ++v32;
              --v35;
            }

            if (sub_19530170C(v83, v71, 10, &v82))
            {
              goto LABEL_189;
            }
          }

LABEL_97:
          if (v77 != 48 && !v35 && !v32)
          {
            return a1[2];
          }

          if ((v34 | 0x20) != 0x65)
          {
            goto LABEL_166;
          }

          if (v29 && (v10 & 4) == 0)
          {
            return a1[2];
          }

          if ((v29 & 1) == 0)
          {
            v39 = (v33 + 1);
            *v83 = v33 + 1;
            if (v33 + 1 == v6)
            {
              goto LABEL_152;
            }

            v40 = *v39;
            if (v40 == 45 || v40 == 43)
            {
              v39 = (v33 + 2);
              *v83 = v33 + 2;
              if (v33 + 2 == v6)
              {
                goto LABEL_152;
              }
            }

            else
            {
              v40 = 43;
            }

            if (v39 == v6 || (v53 = *v39, v53 - 58 < 0xFFFFFFF6))
            {
LABEL_152:
              if ((v10 & 4) == 0)
              {
                return a1[2];
              }

              *v83 = v33;
LABEL_189:
              v64 = v35 + v31;
              if (v79)
              {
                v84[v30++] = 49;
                --v64;
              }

              v84[v30] = 0;
              v65 = v30;
              while (v65 >= 1)
              {
                v66 = v65 - 1;
                v67 = *(&v83[4] + v65-- + 1);
                if (v67 != 48)
                {
                  v68 = (v66 + 1) & 0x7FFFFFFF;
                  goto LABEL_196;
                }
              }

              v68 = 0;
LABEL_196:
              v69 = v30 - v68 + v64;
              if (v73)
              {
                v43 = sub_195302C08(v84, v68, v69);
              }

              else
              {
                sub_195303210(v84, v68, v69);
                v43 = v70;
              }

              *v75 = *v83 - a2;
              v45 = -v43;
              v42 = v74 == 0;
LABEL_200:
              if (v42)
              {
                return v43;
              }

              else
              {
                return v45;
              }
            }

            v54 = 0;
            v33 = &a2[v76];
            v55 = v39 + 1;
            while (1)
            {
              if (v54 <= 107374181 || (v56 = 0x3FFFFFFF, v54 == 107374182) && v53 <= 0x33)
              {
                v56 = v53 + 10 * v54 - 48;
              }

              if (v55 == v6)
              {
                break;
              }

              v57 = *v55++;
              v53 = v57;
              v54 = v56;
              if (v57 - 48 >= 0xA)
              {
                v33 = (v55 - 1);
                break;
              }
            }

            *v83 = v33;
            if (v40 == 45)
            {
              v58 = -v56;
            }

            else
            {
              v58 = v56;
            }

            v35 += v58;
LABEL_166:
            if (((v72 | ((v10 & 4) >> 2)) & 1) == 0)
            {
              if (v33 != v6)
              {
                return a1[2];
              }

              goto LABEL_188;
            }

            if ((v10 & 4) != 0 || v33 == v6)
            {
              v59 = v33;
            }

            else
            {
              v78 = v35;
              if (!sub_1953021D0(*v33))
              {
                return a1[2];
              }

              v59 = &a2[v76];
              v60 = (v33 + 1);
              while (v60 != v6)
              {
                v61 = *v60++;
                if (!sub_1953021D0(v61))
                {
                  return a1[2];
                }
              }

              *v83 = &a2[v76];
              v35 = v78;
            }

            if ((v10 & 0x10) == 0 || v59 == v6)
            {
LABEL_74:
              if (!v29)
              {
                goto LABEL_189;
              }
            }

            else
            {
              if (sub_1953021D0(*v59))
              {
                v62 = (v59 + 1);
                while (v62 != v6)
                {
                  v63 = *v62++;
                  if (!sub_1953021D0(v63))
                  {
                    v59 = (v62 - 1);
                    goto LABEL_187;
                  }
                }

                v59 = &a2[v76];
              }

LABEL_187:
              *v83 = v59;
LABEL_188:
              if ((v29 & 1) == 0)
              {
                goto LABEL_189;
              }
            }

            LODWORD(v33) = *v83;
          }
        }

        v80 = v84;
        v19 = sub_195301F04(&v80, &v84[v30], v74, *(a1 + 20), (v10 & 4) != 0, v73, &v81, a1[2]);
        *v75 = v33 - a2;
        return v19;
      }

      if (v32 > 771)
      {
        ++v31;
        v79 |= v34 != 48;
        if (v29)
        {
LABEL_71:
          v29 = *v33 < 56;
          goto LABEL_72;
        }
      }

      else
      {
        v84[v30++] = v34;
        ++v32;
        if (v29)
        {
          goto LABEL_71;
        }
      }

      v29 = 0;
LABEL_72:
      if (sub_19530170C(v83, *(a1 + 20), 10, &v82))
      {
        v35 = 0;
        goto LABEL_74;
      }
    }
  }

  v27 = *(a1 + 20);
  if (sub_19530170C(v83, v27, 10, &v82))
  {
LABEL_60:
    *a5 = *v83 - a2;
    v28 = !v15;
LABEL_61:
    if (v28)
    {
      return 0.0;
    }

    else
    {
      return -0.0;
    }
  }

  if ((v10 & 0x81) == 0 || (v36 = *v83, (**v83 | 0x20) != 0x78))
  {
    while (**v83 == 48)
    {
      if (sub_19530170C(v83, v27, 10, &v82))
      {
        goto LABEL_60;
      }
    }

    v72 = v11;
    v73 = v8;
    v74 = v15;
    v75 = a5;
    v29 = (v10 >> 1) & 1;
    goto LABEL_65;
  }

  v37 = ++*v83;
  if ((v36 + 1) == v6)
  {
    return a1[2];
  }

  if (v10 & 0x80) != 0 && (sub_1953017E0((v36 + 1), v6, v27, (v10 & 4) != 0))
  {
    v38 = 1;
  }

  else
  {
    v46 = *v37;
    if ((v46 - 48) >= 0xA || v46 >= 64)
    {
      v52 = v46 - 65;
      if (v52 >= 0x26 || ((0x3F0000003FuLL >> v52) & 1) == 0)
      {
        return a1[2];
      }
    }

    v38 = 0;
  }

  v84[0] = 0;
  v19 = sub_195301A84(v83, v6, v15, v27, v38, (v10 & 4) != 0, v8, v84, a1[2]);
  if ((v84[0] & 1) == 0)
  {
    v48 = *v83;
    if ((v10 & 0x10) != 0 && *v83 != v6 && sub_1953021D0(**v83))
    {
      v49 = a2 + v76;
      v50 = (v48 + 1);
      while (v50 != v6)
      {
        v51 = *v50++;
        if (!sub_1953021D0(v51))
        {
          v49 = v50 - 1;
          break;
        }
      }

      LODWORD(v48) = v49;
    }

    *a5 = v48 - a2;
  }

  return v19;
}

double sub_195300CA0(double *a1, char *a2, int a3, uint64_t a4, _DWORD *a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = &a2[2 * a3];
  v84 = v6;
  *v85 = a2;
  *a5 = 0;
  if (!a3)
  {
    return a1[1];
  }

  v8 = a4;
  v10 = *a1;
  v11 = (*a1 >> 4) & 1;
  v12 = a2;
  if ((*a1 & 8) != 0 || (v12 = a2, v11))
  {
    while (1)
    {
      v13 = *v12;
      if (v13 >= 0x80)
      {
        break;
      }

      v18 = 0;
      while (byte_19548C61C[v18] != v13)
      {
        if (++v18 == 6)
        {
          goto LABEL_32;
        }
      }

LABEL_29:
      v12 += 2;
      if (v12 == v6)
      {
        *a5 = a3;
        return a1[1];
      }
    }

    for (i = 0; i != 20; ++i)
    {
      if (word_19548C622[i] == v13)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    *v85 = v12;
    if ((v10 & 8) == 0 && v12 != a2)
    {
      return a1[2];
    }
  }

  else
  {
    v13 = *a2;
    v12 = a2;
  }

  v80 = v11;
  if (v13 == 45 || v13 == 43)
  {
    v14 = v13 == 45;
    if (v12 + 2 == v6)
    {
      return a1[2];
    }

    v15 = 2;
    while (1)
    {
      v13 = *&v12[v15];
      if (v13 >= 0x80)
      {
        break;
      }

      v16 = 0;
      while (byte_19548C61C[v16] != v13)
      {
        if (++v16 == 6)
        {
          goto LABEL_35;
        }
      }

LABEL_18:
      v15 += 2;
      if (&v12[v15] == v6)
      {
        return a1[2];
      }
    }

    for (j = 0; j != 20; ++j)
    {
      if (word_19548C622[j] == v13)
      {
        goto LABEL_18;
      }
    }

LABEL_35:
    if ((v10 & 0x20) == 0 && v15 != 2)
    {
      return a1[2];
    }

    *v85 = &v12[v15];
  }

  else
  {
    v14 = 0;
  }

  v21 = *(a1 + 3);
  if (v21)
  {
    if ((v10 & 0x40) == 0)
    {
      if (*v21 == v13)
      {
        if (sub_195302370(v85, v6, v21, 0))
        {
          v22 = *v85;
          if ((v80 | ((v10 & 4) >> 2)))
          {
            if ((v10 & 4) != 0 || *v85 == v6)
            {
              v6 = *v85;
            }

            else
            {
              do
              {
                v23 = *v22;
                if (v23 >= 0x80)
                {
                  v25 = 0;
                  while (word_19548C622[v25] != v23)
                  {
                    if (++v25 == 20)
                    {
                      return a1[2];
                    }
                  }
                }

                else
                {
                  v24 = 0;
                  while (byte_19548C61C[v24] != v23)
                  {
                    if (++v24 == 6)
                    {
                      return a1[2];
                    }
                  }
                }

                ++v22;
              }

              while (v22 != v6);
            }

            goto LABEL_130;
          }

          if (*v85 == v6)
          {
LABEL_130:
            *a5 = (v6 - a2) >> 1;
            v47 = !v14;
            v48 = INFINITY;
            v49 = 0xFFF0000000000000;
LABEL_133:
            v50 = *&v49;
            goto LABEL_220;
          }
        }

        return a1[2];
      }

      v26 = *(a1 + 4);
      if (!v26)
      {
        goto LABEL_77;
      }

      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v26 = *(a1 + 4);
  if (v26)
  {
    if ((v10 & 0x40) == 0)
    {
LABEL_61:
      if (*v26 == v13)
      {
        if (sub_195302370(v85, v6, v26, 0))
        {
          v27 = *v85;
          if ((v80 | ((v10 & 4) >> 2)))
          {
            if ((v10 & 4) != 0 || *v85 == v6)
            {
              v6 = *v85;
            }

            else
            {
              do
              {
                v28 = *v27;
                if (v28 >= 0x80)
                {
                  v30 = 0;
                  while (word_19548C622[v30] != v28)
                  {
                    if (++v30 == 20)
                    {
                      return a1[2];
                    }
                  }
                }

                else
                {
                  v29 = 0;
                  while (byte_19548C61C[v29] != v28)
                  {
                    if (++v29 == 6)
                    {
                      return a1[2];
                    }
                  }
                }

                ++v27;
              }

              while (v27 != v6);
            }
          }

          else if (*v85 != v6)
          {
            return a1[2];
          }

          *a5 = (v6 - a2) >> 1;
          v47 = !v14;
          v48 = NAN;
          v49 = 0xFFF8000000000000;
          goto LABEL_133;
        }

        return a1[2];
      }

      goto LABEL_77;
    }

LABEL_59:
    abort();
  }

LABEL_77:
  v79 = v14;
  if (v13 == 48)
  {
    v31 = *(a1 + 20);
    if (sub_1953023F0(v85, v31, 10, &v84))
    {
LABEL_79:
      *a5 = (*v85 - a2) >> 1;
LABEL_80:
      if (v79)
      {
        return -0.0;
      }

      else
      {
        return 0.0;
      }
    }

    if ((v10 & 0x81) != 0)
    {
      v39 = *v85;
      if ((**v85 | 0x20) == 0x78)
      {
        v40 = v8;
        v41 = (*v85 + 2);
        *v85 += 2;
        if ((v39 + 2) == v6)
        {
          return a1[2];
        }

        if (v10 & 0x80) != 0 && (sub_1953024C4((v39 + 2), v6, v31, (v10 & 4) != 0))
        {
          v42 = 1;
        }

        else
        {
          v51 = *v41;
          if (v51 - 48 >= 0xA || v51 >= 0x40)
          {
            v60 = v51 - 65;
            if (v60 >= 0x26 || ((0x3F0000003FuLL >> v60) & 1) == 0)
            {
              return a1[2];
            }

            v53 = v40;
            v42 = 0;
LABEL_140:
            v86[0] = 0;
            v20 = sub_195302734(v85, v6, v79, v31, v42, (v10 & 4) != 0, v53, v86, a1[2]);
            if ((v86[0] & 1) == 0)
            {
              v54 = *v85;
              if ((v10 & 0x10) != 0 && *v85 != v6 && sub_1953021D0(**v85))
              {
                v55 = (v54 + 2);
                do
                {
                  v54 = v55;
                  if (v55 == v6)
                  {
                    break;
                  }

                  ++v55;
                }

                while (sub_1953021D0(*v54));
              }

              *a5 = (v54 - a2) >> 1;
            }

            return v20;
          }

          v42 = 0;
        }

        v53 = v40;
        goto LABEL_140;
      }
    }

    while (**v85 == 48)
    {
      if (sub_1953023F0(v85, v31, 10, &v84))
      {
        goto LABEL_79;
      }
    }

    v78 = v8;
    v77 = a5;
    v32 = (v10 >> 1) & 1;
  }

  else
  {
    v78 = a4;
    v77 = a5;
    LOBYTE(v32) = 0;
  }

  v33 = 0;
  v81 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v85;
    v36 = **v85;
    if ((v36 - 48) > 9)
    {
      break;
    }

    if (v34 > 771)
    {
      LODWORD(v81) = v81 + 1;
      BYTE4(v81) |= v36 != 48;
      if (v32)
      {
LABEL_90:
        v32 = *v35 < 0x38u;
        goto LABEL_91;
      }
    }

    else
    {
      v86[v33++] = v36;
      ++v34;
      if (v32)
      {
        goto LABEL_90;
      }
    }

    v32 = 0;
LABEL_91:
    if (sub_1953023F0(v85, *(a1 + 20), 10, &v84))
    {
      v37 = 0;
      v38 = v79;
      goto LABEL_93;
    }
  }

  v32 = (v34 != 0) & v32;
  if (v36 != 46)
  {
    v37 = 0;
    goto LABEL_113;
  }

  if (v32 && (v10 & 4) == 0)
  {
    return a1[2];
  }

  if (v32)
  {
    v38 = v79;
    goto LABEL_95;
  }

  v76 = *(a1 + 20);
  if (!sub_1953023F0(v85, v76, 10, &v84))
  {
    if (v34 || **v85 != 48)
    {
      v56 = 0;
      goto LABEL_171;
    }

    v56 = 0;
    do
    {
      if (sub_1953023F0(v85, v76, 10, &v84))
      {
        *v77 = (*v85 - a2) >> 1;
        goto LABEL_80;
      }

      --v56;
    }

    while (**v85 == 48);
LABEL_171:
    while (1)
    {
      v35 = *v85;
      v36 = **v85;
      if ((v36 - 48) > 9)
      {
        break;
      }

      if (v34 > 771)
      {
        BYTE4(v81) |= v36 != 48;
      }

      else
      {
        v86[v33++] = v36;
        ++v34;
        --v56;
      }

      v57 = v78;
      if (sub_1953023F0(v85, v76, 10, &v84))
      {
        goto LABEL_176;
      }
    }

    v37 = v56;
LABEL_113:
    if (v13 != 48 && !v37 && !v34)
    {
      return a1[2];
    }

    if ((v36 | 0x20) == 0x65)
    {
      v38 = v79;
      v43 = v80;
      if (v32 && (v10 & 4) == 0)
      {
        return a1[2];
      }

      if (v32)
      {
        goto LABEL_95;
      }

      v44 = v35 + 1;
      if (v35 + 1 == v6)
      {
        goto LABEL_124;
      }

      v45 = *v44;
      if (v45 == 45 || v45 == 43)
      {
        v44 = v35 + 2;
        if (v35 + 2 == v6)
        {
LABEL_124:
          if ((v10 & 4) == 0)
          {
            return a1[2];
          }

          *v85 = v35;
          goto LABEL_207;
        }
      }

      else
      {
        LOBYTE(v45) = 43;
      }

      if (v44 == v6 || (v62 = *v44, v62 - 58 < 0xFFFFFFF6))
      {
        if ((v10 & 4) == 0)
        {
          return a1[2];
        }

        *v85 = v35;
        v61 = v37 + v81;
LABEL_208:
        v57 = v78;
        goto LABEL_209;
      }

      v63 = 0;
      v64 = v44 + 1;
      do
      {
        v35 = v64;
        if (v63 > 107374181)
        {
          v65 = 0x3FFFFFFF;
          if (v63 != 107374182 || v62 > 0x33)
          {
            goto LABEL_190;
          }
        }

        v65 = v62 + 10 * v63 - 48;
LABEL_190:
        if (v64 == v6)
        {
          break;
        }

        ++v64;
        v62 = *v35;
        v63 = v65;
      }

      while (v62 - 48 < 0xA);
      *v85 = v35;
      if (v45 == 45)
      {
        v66 = -v65;
      }

      else
      {
        v66 = v65;
      }

      v37 += v66;
    }

    else
    {
      v38 = v79;
      v43 = v80;
    }

    if ((v43 | ((v10 & 4) >> 2)))
    {
      if ((v10 & 4) == 0 && v35 != v6)
      {
        v58 = v37;
        if (!sub_1953021D0(*v35))
        {
          return a1[2];
        }

        for (++v35; v35 != v6; ++v35)
        {
          v59 = *v35;
          if (!sub_1953021D0(v59))
          {
            return a1[2];
          }
        }

        *v85 = v35;
        v37 = v58;
      }

      if ((v10 & 0x10) == 0 || v35 == v6)
      {
LABEL_93:
        if (!v32)
        {
LABEL_207:
          v61 = v37 + v81;
          goto LABEL_208;
        }

LABEL_94:
        v35 = *v85;
LABEL_95:
        v82 = v86;
        v20 = sub_195301F04(&v82, &v86[v33], v38, *(a1 + 20), (v10 & 4) != 0, v78, &v83, a1[2]);
        *v77 = (v35 - a2) >> 1;
        return v20;
      }

      v67 = v37;
      if (sub_1953021D0(*v35))
      {
        v68 = v35 + 1;
        v37 = v67;
        do
        {
          v35 = v68;
          if (v68 == v6)
          {
            break;
          }

          ++v68;
          v69 = sub_1953021D0(*v35);
          v37 = v67;
        }

        while (v69);
      }

      else
      {
        v37 = v67;
      }

      *v85 = v35;
    }

    else if (v35 != v6)
    {
      return a1[2];
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_94;
  }

  v56 = 0;
  v57 = v78;
  if (v13 != 48 && !v34)
  {
    return a1[2];
  }

LABEL_176:
  v61 = v56 + v81;
  v38 = v79;
LABEL_209:
  if ((v81 & 0x100000000) != 0)
  {
    v86[v33++] = 49;
    --v61;
  }

  v86[v33] = 0;
  v70 = v33;
  while (v70 >= 1)
  {
    v71 = v70 - 1;
    v72 = *(&v85[4] + v70-- + 1);
    if (v72 != 48)
    {
      v73 = (v71 + 1) & 0x7FFFFFFF;
      goto LABEL_216;
    }
  }

  v73 = 0;
LABEL_216:
  v74 = v33 - v73 + v61;
  if (v57)
  {
    v48 = sub_195302C08(v86, v73, v74);
  }

  else
  {
    sub_195303210(v86, v73, v74);
    v48 = v75;
  }

  *v77 = (*v85 - a2) >> 1;
  v50 = -v48;
  v47 = v38 == 0;
LABEL_220:
  if (v47)
  {
    return v48;
  }

  else
  {
    return v50;
  }
}

BOOL sub_19530168C(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = *(a3 + 1);
    v5 = *a1 + 1;
    *a1 = v5;
    if (v4)
    {
      if (v5 != a2)
      {
        abort();
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = *a1 + 1;
    v8 = (a3 + 1);
    do
    {
      v9 = *v8 == 0;
      v6 = *v8 == 0;
      *a1 = v7;
      v9 = v9 || v7 == a2;
      if (v9)
      {
        break;
      }

      v11 = *v7++;
      v10 = v11;
      v12 = *v8++;
    }

    while (v10 == v12);
  }

  return v6;
}

uint64_t sub_19530170C(char **a1, int a2, uint64_t a3, char **a4)
{
  v6 = *a1;
  if (!a2)
  {
    *a1 = v6 + 1;
    return v6 + 1 == *a4;
  }

  v7 = a3;
  v9 = v6 + 1;
  LODWORD(result) = sub_195301A28(*v6, a3);
  v11 = result;
  *a1 = v6 + 1;
  v12 = *a4;
  if (v6 + 1 == *a4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  if (v11)
  {
    v13 = v9 == v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = v6 + 2;
    if (v14 == v12)
    {
      return 0;
    }

    if (*v9 == a2 && sub_195301A28(*v14, v7))
    {
      *a1 = v14;
      v12 = *a4;
      v9 = v14;
    }

    return v9 == v12;
  }

  return result;
}

uint64_t sub_1953017E0(char *a1, char *a2, int a3, char a4)
{
  v7 = 0;
  v21 = a1;
  v22 = a2;
  while (1)
  {
    v8 = *v21;
    if ((v8 - 48) >= 0xA || v8 >= 64)
    {
      if (*v21 - 46 > 0x38)
      {
        goto LABEL_25;
      }

      if (((1 << (v8 - 46)) & 0x1F8000001F80000) == 0)
      {
        break;
      }
    }

    v7 = 1;
    if (sub_19530170C(&v21, a3, 16, &v22))
    {
      return 0;
    }
  }

  if (*v21 == 46)
  {
    if (sub_19530170C(&v21, a3, 16, &v22))
    {
      return 0;
    }

    while (1)
    {
      v8 = *v21;
      v11 = v8 >= 64 || (v8 - 48) >= 0xA;
      v12 = !v11;
      if ((v8 - 97) >= 6 && !v12 && (v8 <= 64 || v8 > 0x46))
      {
        break;
      }

      v13 = sub_19530170C(&v21, a3, 16, &v22);
      result = 0;
      v7 = 1;
      if (v13)
      {
        return result;
      }
    }
  }

LABEL_25:
  if (v7 & 1) == 0 || (v8 | 0x20) != 0x70 || (sub_19530170C(&v21, a3, 16, &v22))
  {
    return 0;
  }

  v14 = *v21;
  if (v14 != 45 && v14 != 43)
  {
    goto LABEL_32;
  }

  if (sub_19530170C(&v21, a3, 16, &v22))
  {
    return 0;
  }

  LOBYTE(v14) = *v21;
LABEL_32:
  if (v14 > 57 || (v14 - 48) > 9)
  {
    return 0;
  }

  if (sub_19530170C(&v21, a3, 16, &v22))
  {
    return 1;
  }

  while (1)
  {
    v16 = v21;
    v17 = *v21;
    if (v17 > 57 || (v17 - 48) > 9)
    {
      break;
    }

    v19 = sub_19530170C(&v21, a3, 16, &v22);
    result = 1;
    if (v19)
    {
      return result;
    }
  }

  result = 1;
  if (v21 != a2 && (a4 & 1) == 0)
  {
    do
    {
      v20 = 0;
      while (byte_19548C61C[v20] != *v16)
      {
        result = 0;
        if (++v20 == 6)
        {
          return result;
        }
      }

      ++v16;
      result = 1;
    }

    while (v16 != a2);
  }

  return result;
}

BOOL sub_195301A28(int a1, int a2)
{
  if ((a1 - 48) <= 9 && a2 + 48 > a1 || a1 >= 97 && a2 >= 11 && a2 + 87 > a1)
  {
    return 1;
  }

  v3 = a2 + 55 > a1;
  if (a2 < 11)
  {
    v3 = 0;
  }

  return a1 >= 65 && v3;
}

double sub_195301A84(char **a1, char *a2, int a3, int a4, int a5, char a6, int a7, _BYTE *a8, double a9)
{
  v53 = a2;
  *a8 = 1;
  while (1)
  {
    v18 = *a1;
    v19 = **a1;
    if (v19 != 48)
    {
      break;
    }

    if (sub_19530170C(a1, a4, 16, &v53))
    {
      *a8 = 0;
      if (a3)
      {
        return -0.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  v52 = a6;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a7)
  {
    v23 = 53;
  }

  else
  {
    v23 = 24;
  }

  while (1)
  {
    v24 = v19 - 48;
    if (v24 < 0xA)
    {
      goto LABEL_15;
    }

    if ((v19 - 97) <= 5)
    {
      v24 = v19 - 87;
      goto LABEL_15;
    }

    if ((v19 - 65) > 5)
    {
      break;
    }

    v24 = v19 - 55;
LABEL_15:
    if (v20)
    {
      v21 -= 4;
    }

    v22 = 16 * v22 + v24;
    v25 = v22 >> v23;
    if ((v22 >> v23))
    {
      v50 = a3;
      v26 = 1;
      if (v25 >= 2)
      {
        do
        {
          ++v26;
          v31 = v25 > 3;
          LODWORD(v25) = v25 >> 1;
        }

        while (v31);
      }

      v51 = a2;
      v27 = v26 + v21;
      if (sub_19530170C(a1, a4, 16, &v53))
      {
        v28 = 1;
LABEL_43:
        if ((a5 & 1) == 0 && (v52 & 1) == 0)
        {
          for (i = *a1; i != v51; *a1 = i)
          {
            v34 = 0;
            while (byte_19548C61C[v34] != *i)
            {
              if (++v34 == 6)
              {
                return a9;
              }
            }

            ++i;
          }
        }

        v35 = v22 & ~(-1 << v26);
        v36 = 1 << (v26 - 1);
        v37 = (v22 >> v26) + ((v22 >> v26) & 1u | ((v28 & 1) == 0));
        if (v35 != v36)
        {
          v37 = v22 >> v26;
        }

        if (v35 > v36)
        {
          v38 = (v22 >> v26) + 1;
        }

        else
        {
          v38 = v37;
        }

        v21 = v27 + ((v38 >> v23) & 1);
        v22 = v38 >> ((v38 >> v23) & 1);
        a3 = v50;
        goto LABEL_57;
      }

      v28 = 1;
      while (2)
      {
        v29 = *a1;
        if (a5)
        {
          v30 = *v29;
          if (v30 == 46)
          {
            sub_19530170C(a1, a4, 16, &v53);
            v29 = *a1;
            v20 = 1;
            goto LABEL_31;
          }
        }

        else
        {
LABEL_31:
          v30 = *v29;
        }

        v31 = (v30 - 48) < 0xA && v30 < 64;
        if (!v31 && ((v30 - 65) > 0x25 || ((1 << (v30 - 65)) & 0x3F0000003FLL) == 0))
        {
          goto LABEL_43;
        }

        v28 &= v30 == 48;
        if ((v20 & 1) == 0)
        {
          v27 += 4;
        }

        if (sub_19530170C(a1, a4, 16, &v53))
        {
          goto LABEL_43;
        }

        continue;
      }
    }

    if (sub_19530170C(a1, a4, 16, &v53))
    {
      goto LABEL_57;
    }

LABEL_19:
    v18 = *a1;
    LOBYTE(v19) = **a1;
  }

  if (!a5)
  {
    goto LABEL_91;
  }

  if (v19 == 46)
  {
    sub_19530170C(a1, a4, 16, &v53);
    v20 = 1;
    goto LABEL_19;
  }

  if (v19 != 80 && v19 != 112)
  {
LABEL_91:
    if (v18 != a2 && (v52 & 1) == 0)
    {
      do
      {
        v49 = 0;
        while (byte_19548C61C[v49] != *v18)
        {
          if (++v49 == 6)
          {
            return a9;
          }
        }

        *a1 = ++v18;
      }

      while (v18 != a2);
    }

LABEL_57:
    *a8 = 0;
    if (a5)
    {
      goto LABEL_62;
    }

    goto LABEL_78;
  }

  *a8 = 0;
LABEL_62:
  sub_19530170C(a1, a4, 16, &v53);
  v39 = 0;
  v40 = **a1;
  if (v40 == 43)
  {
LABEL_65:
    sub_19530170C(a1, a4, 16, &v53);
  }

  else if (v40 == 45)
  {
    v39 = 1;
    goto LABEL_65;
  }

  v41 = 0;
  do
  {
    v42 = **a1;
    if ((v42 - 48) > 9)
    {
      break;
    }

    if (v41 >= 0)
    {
      v43 = v41;
    }

    else
    {
      v43 = -v41;
    }

    v44 = v42 + 10 * v41 - 48;
    if (v43 < 0x17BB1)
    {
      v41 = v44;
    }
  }

  while (!sub_19530170C(a1, a4, 16, &v53));
  if (v39)
  {
    v45 = -v41;
  }

  else
  {
    v45 = v41;
  }

  v21 += v45;
LABEL_78:
  if (v21)
  {
    v46 = v22 == 0;
  }

  else
  {
    v46 = 1;
  }

  if (v46)
  {
    if (a3)
    {
      if (!v22)
      {
        return -0.0;
      }

      return -v22;
    }

    return v22;
  }

  else
  {
    v47 = COERCE_DOUBLE(sub_195302234(v22, v21));
    if (a3)
    {
      return -v47;
    }

    else
    {
      return v47;
    }
  }
}

double sub_195301F04(char **a1, char *a2, int a3, uint64_t a4, char a5, int a6, _BYTE *a7, double a8)
{
  v12 = a4;
  v39 = a2;
  *a7 = 1;
  while (**a1 == 48)
  {
    if (sub_1953022CC(a1, v12, &v39))
    {
      *a7 = 0;
      if (a3)
      {
        return -0.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  v16 = 0;
  if (a6)
  {
    v17 = 53;
  }

  else
  {
    v17 = 24;
  }

  while (1)
  {
    v18 = *a1;
    v19 = **a1;
    if (v19 > 55 || (v19 - 48) >= 0xA)
    {
      if (v18 != a2 && (a5 & 1) == 0)
      {
        do
        {
          v22 = 0;
          while (byte_19548C61C[v22] != *v18)
          {
            if (++v22 == 6)
            {
              return a8;
            }
          }

          *a1 = ++v18;
        }

        while (v18 != a2);
      }

LABEL_24:
      *a7 = 0;
      v23 = v16 == 0;
      goto LABEL_25;
    }

    v16 = **a1 + 8 * v16 - 48;
    v21 = v16 >> v17;
    if ((v16 >> v17))
    {
      break;
    }

    if (sub_1953022CC(a1, v12, &v39))
    {
      goto LABEL_24;
    }
  }

  v24 = 1;
  if (v21 >= 2)
  {
    do
    {
      ++v24;
      v28 = v21 > 3;
      LODWORD(v21) = v21 >> 1;
    }

    while (v28);
  }

  v38 = a3;
  v25 = 1;
  for (i = v24; !sub_1953022CC(a1, v12, &v39); i += 3)
  {
    v27 = **a1;
    v28 = v27 > 55 || (v27 - 48) > 9;
    if (v28)
    {
      break;
    }

    v25 &= v27 == 48;
  }

  if ((a5 & 1) == 0)
  {
    for (j = *a1; j != a2; *a1 = j)
    {
      v30 = 0;
      while (byte_19548C61C[v30] != *j)
      {
        if (++v30 == 6)
        {
          return a8;
        }
      }

      ++j;
    }
  }

  v31 = v16 & ~(-1 << v24);
  v32 = 1 << (v24 - 1);
  v33 = (v16 >> v24) + ((v16 >> v24) & 1u | ((v25 & 1) == 0));
  if (v31 != v32)
  {
    v33 = v16 >> v24;
  }

  if (v31 > v32)
  {
    v34 = (v16 >> v24) + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = (v34 >> v17) & 1;
  v16 = v34 >> ((v34 >> v17) & 1);
  *a7 = 0;
  v23 = v16 == 0;
  a3 = v38;
  if (i + v35 && v16)
  {
    v36 = COERCE_DOUBLE(sub_195302234(v16, i + v35));
    if (v38)
    {
      return -v36;
    }

    else
    {
      return v36;
    }
  }

LABEL_25:
  if (a3)
  {
    if (v23)
    {
      return -0.0;
    }

    return -v16;
  }

  return v16;
}

BOOL sub_1953021D0(int a1)
{
  if (a1 >= 128)
  {
    v4 = 0;
    do
    {
      v2 = word_19548C622[v4] == a1;
      if (word_19548C622[v4] == a1)
      {
        break;
      }

      v3 = v4++ == 19;
    }

    while (!v3);
  }

  else
  {
    v1 = 0;
    do
    {
      v2 = byte_19548C61C[v1] == a1;
      v3 = byte_19548C61C[v1] == a1 || v1 == 5;
      ++v1;
    }

    while (!v3);
  }

  return v2;
}

unint64_t sub_195302234(unint64_t a1, int a2)
{
  if (a1 >> 53)
  {
    do
    {
      v2 = a1 >> 1;
      ++a2;
      v3 = a1 >> 54;
      a1 >>= 1;
    }

    while (v3);
  }

  else
  {
    v2 = a1;
  }

  if (a2 > 971)
  {
    return 0x7FF0000000000000;
  }

  if (a2 < -1074)
  {
    return 0;
  }

  v5 = (v2 & 0x10000000000000) == 0;
  if (a2 != -1074 && (v2 & 0x10000000000000) == 0)
  {
    do
    {
      v6 = a2;
      v8 = v2 & 0x8000000000000;
      v7 = (v2 & 0x8000000000000) == 0;
      v2 *= 2;
      --a2;
      v5 = v7;
    }

    while (v6 >= -1072 && !v8);
  }

  if (a2 == -1074 && v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = (a2 + 1075) << 52;
  }

  return v9 & 0xFFF0000000000000 | v2 & 0xFFFFFFFFFFFFFLL;
}

BOOL sub_1953022CC(char **a1, int a2, char **a3)
{
  v3 = *a1;
  if (!a2)
  {
    *a1 = v3 + 1;
    return v3 + 1 == *a3;
  }

  v5 = v3 + 1;
  v4 = *v3;
  v7 = v4 > 55 || (v4 - 58) < 0xFFFFFFF6;
  *a1 = v5;
  v8 = *a3;
  LODWORD(v9) = !v7;
  if (v5 == *a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v9;
  }

  if (!v7 && v5 != v8)
  {
    v10 = v3 + 2;
    if (v3 + 2 == v8)
    {
      return 0;
    }

    if (*v5 == a2)
    {
      v11 = *v10;
      if (v11 <= 55 && (v11 - 48) <= 9)
      {
        *a1 = v10;
        v8 = *a3;
        v5 = v10;
      }
    }

    return v5 == v8;
  }

  return v9;
}

BOOL sub_195302370(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = *(a3 + 1);
    v5 = *a1 + 2;
    *a1 = v5;
    if (v4)
    {
      if (v5 != a2)
      {
        abort();
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = *a1 + 2;
    v8 = (a3 + 1);
    do
    {
      v9 = *v8 == 0;
      v6 = *v8 == 0;
      *a1 = v7;
      v9 = v9 || v7 == a2;
      if (v9)
      {
        break;
      }

      v11 = *v7;
      v7 += 2;
      v10 = v11;
      v12 = *v8++;
    }

    while (v12 == v10);
  }

  return v6;
}

uint64_t sub_1953023F0(unsigned __int16 **a1, int a2, int a3, unsigned __int16 **a4)
{
  v6 = *a1;
  if (!a2)
  {
    *a1 = v6 + 1;
    return v6 + 1 == *a4;
  }

  v9 = v6 + 1;
  LODWORD(result) = sub_195301A28(*v6, a3);
  v11 = result;
  *a1 = v6 + 1;
  v12 = *a4;
  if (v6 + 1 == *a4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  if (v11)
  {
    v13 = v9 == v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = v6 + 2;
    if (v14 == v12)
    {
      return 0;
    }

    if (*v9 == a2 && sub_195301A28(*v14, a3))
    {
      *a1 = v14;
      v12 = *a4;
      v9 = v14;
    }

    return v9 == v12;
  }

  return result;
}

uint64_t sub_1953024C4(unsigned __int16 *a1, unsigned __int16 *a2, int a3, char a4)
{
  v7 = 0;
  v23 = a1;
  v24 = a2;
  while (1)
  {
    v8 = *v23;
    if (v8 - 48 >= 0xA || v8 >= 0x40)
    {
      if (v8 - 46 > 0x38)
      {
        goto LABEL_26;
      }

      if (((1 << (v8 - 46)) & 0x1F8000001F80000) == 0)
      {
        break;
      }
    }

    v7 = 1;
    if (sub_1953023F0(&v23, a3, 16, &v24))
    {
      return 0;
    }
  }

  if (v8 == 46)
  {
    if (sub_1953023F0(&v23, a3, 16, &v24))
    {
      return 0;
    }

    while (1)
    {
      v8 = *v23;
      v11 = v8 >= 0x40 || v8 - 48 >= 0xA;
      v12 = !v11;
      if (v8 - 97 >= 6 && !v12 && (v8 <= 0x40 || v8 > 0x46))
      {
        break;
      }

      v13 = sub_1953023F0(&v23, a3, 16, &v24);
      result = 0;
      v7 = 1;
      if (v13)
      {
        return result;
      }
    }
  }

LABEL_26:
  if (v7 & 1) == 0 || (v8 | 0x20) != 0x70 || (sub_1953023F0(&v23, a3, 16, &v24))
  {
    return 0;
  }

  v14 = *v23;
  if (v14 != 45 && v14 != 43)
  {
    goto LABEL_33;
  }

  if (sub_1953023F0(&v23, a3, 16, &v24))
  {
    return 0;
  }

  v14 = *v23;
LABEL_33:
  if (v14 > 0x39 || v14 - 48 > 9)
  {
    return 0;
  }

  if (sub_1953023F0(&v23, a3, 16, &v24))
  {
    return 1;
  }

  while (1)
  {
    v16 = v23;
    v17 = *v23;
    if (v17 > 0x39 || v17 - 48 > 9)
    {
      break;
    }

    v19 = sub_1953023F0(&v23, a3, 16, &v24);
    result = 1;
    if (v19)
    {
      return result;
    }
  }

  result = 1;
  if (v23 != a2 && (a4 & 1) == 0)
  {
    do
    {
      v20 = *v16;
      if (v20 >= 0x80)
      {
        v22 = 0;
        while (word_19548C622[v22] != v20)
        {
          result = 0;
          if (++v22 == 20)
          {
            return result;
          }
        }
      }

      else
      {
        v21 = 0;
        while (byte_19548C61C[v21] != v20)
        {
          result = 0;
          if (++v21 == 6)
          {
            return result;
          }
        }
      }

      ++v16;
      result = 1;
    }

    while (v16 != a2);
  }

  return result;
}