uint64_t EvaOneRulePiece(unsigned __int8 **a1, uint64_t *a2, _BYTE *a3, BOOL a4, uint64_t a5, unsigned __int8 *a6, _WORD *a7, uint64_t a8, uint64_t a9)
{
  v13 = 0;
  v34 = -1;
  v36 = *a1;
  *a3 = 0;
  v33 = 0;
  v31 = 0;
  v14 = 1;
  v15 = 1;
  while (1)
  {
    v16 = v36;
    if (!*a2)
    {
      goto LABEL_41;
    }

    v17 = *v36;
    if ((v17 & 0x20) == 0)
    {
      if ((a5 == 0) == **a2 < *(*(a8 + 16) + 14))
      {
        LOBYTE(v15) = 0;
        return v15;
      }

      if ((v17 & 0x40) != 0)
      {
        v18 = EvaMacRulePiece(&v36, a2, a4, a6, &v32, a5, a3, &v31, a7, 0, a8, a9);
      }

      else
      {
        v18 = EvaWordRulePiece(&v36, a2, a4, &v33, a6, a7, a3, a8, a9);
      }

      if (v18 != 1 || (v17 & 0x40) != 0 || v33 != 30)
      {
        goto LABEL_27;
      }

      if (a4)
      {
        if (!a4)
        {
LABEL_27:
          if (++v34 <= 5)
          {
            v35[v34] = v18;
          }

          v21 = v13;
          goto LABEL_36;
        }

        v22 = (*a2 + 80);
        v23 = 168;
      }

      else
      {
        v22 = a2;
        v23 = 152;
      }

      *a2 = *(*v22 + v23);
      goto LABEL_27;
    }

    if ((v17 & 0x40) != 0)
    {
      break;
    }

    v31 = 0;
    if ((v17 & 0x80) != 0)
    {
      v31 = v36[1] & 3;
    }

    v19 = (v17 >> 2) & 1;
    v20 = (v17 >> 1) & 1;
    if (v20 | v17 & 1 | v19)
    {
      v21 = v13;
    }

    else
    {
      a4 = (v17 & 8) != 0;
      v21 = (v17 >> 4) & 1;
    }

    if (!v14)
    {
      if ((v17 & 7) != 0)
      {
        EvaLogInGlueByte(v35, &v34, v19, v20, v17 & 1);
      }

      else if (v34)
      {
        v15 = 0;
        v24 = *(a8 + 32);
        *v24 = 0xDC000000AALL;
        *(v24 + 8) = 650;
      }

      else
      {
        v34 = -1;
        if (v35[0] | v13)
        {
          LOBYTE(v15) = 1;
LABEL_41:
          *a1 = v36;
          return v15;
        }

        v15 = 0;
      }
    }

    v14 = 0;
    if ((v17 & 0x80) != 0)
    {
      v25 = v16 + 2;
    }

    else
    {
      v25 = v16 + 1;
    }

    v36 = v25;
LABEL_36:
    v13 = v21;
    if (!v15)
    {
      return v15;
    }
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  LOBYTE(v15) = v35[v34];
  if (v15)
  {
    goto LABEL_41;
  }

  return v15;
}

uint64_t PRmisrul(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(v5 + 72);
  if (!v6)
  {
    goto LABEL_6;
  }

  LOWORD(v7) = 0;
  *v24 = 0;
  do
  {
    v7 = (v7 + (*(v6 + 4) >= 0));
    v6 = *(v6 + 80);
  }

  while (v6);
  if (v7 > *(*(a3 + 24) + 6) && !PRliveRule(a1, a2, 0, 175, 1, 1, *(v5 + 14) == 0))
  {
    if (PRmkErr(a1, a2, v24, 0, 0, 175, 1))
    {
      result = *(*(a1 + 32) + 4);
      if (result == 220 || result == 230)
      {
        return result;
      }
    }

    else
    {
      v18 = *(v5 + 64);
      v19 = *(v18 + 8);
      v20 = *v24;
      **v24 = v19;
      *(v20 + 2) = *(*(v5 + 80) + 8) - v19 + *(*(v5 + 80) + 32);
      v21 = *(v18 + 160);
      if (v21)
      {
        *(v20 + 40) = v21;
      }

      *(v18 + 160) = v20;
      result = 210;
      **(a1 + 16) = 210;
    }
  }

  else
  {
LABEL_6:
    result = 0;
  }

  if (*(a2 + 20) != 6)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 72);
    if (!v10)
    {
      v10 = *(v9 + 56);
    }

    *v24 = 0;
    v11 = *(a2 + 8);
    if ((*(v11 + 4 * **(v10 + 24)) & 0x20000000) != 0 && !PRliveRule(a1, a2, 0, 3, 6, 1, *(v9 + 14) == 0))
    {
      if (PRmkErr(a1, a2, v24, 0, 0, 3, 6))
      {
        return *(*(a1 + 32) + 4);
      }

      v12 = *(v10 + 8);
      v13 = *v24;
      **v24 = v12;
      v14 = *(v10 + 32);
      v13[1] = v14;
      v13[2] = v12;
      v13[3] = v14;
      v15 = *(v10 + 24);
      v16 = *v15;
      if ((*(v11 + 4 * v16) & 0x20000000) != 0)
      {
        LOBYTE(v16) = v16 - 32;
      }

      *v15 = v16;
      v17 = PRaddAlts(a1, *v24, *(v10 + 24), 0, 1uLL, 1);
      **(v10 + 24) += (*(v11 + 4 * **(v10 + 24)) >> 25) & 0x20;
      if (v17 || PRaddRefs(a1, *v24, *(v10 + 24), 1u, 1))
      {
        return *(*(a1 + 32) + 4);
      }

      else
      {
        v22 = *(v10 + 160);
        v23 = *v24;
        if (v22)
        {
          *(*v24 + 40) = v22;
        }

        *(v10 + 160) = v23;
        result = 210;
        **(a1 + 16) = 210;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PRmkErr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v9 = a5;
  v18 = 0;
  v14 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040107DC39EuLL);
  if (v14)
  {
    v15 = v14;
    v14[15] = v9;
    v14[12] = a6;
    v14[13] = v7;
    if (a6)
    {
      result = PRgetSeverity(a1, a2, &v18, v9, a6, v7);
      if (result)
      {
        return result;
      }

      v15[14] = v18;
      ++*(a1 + 24);
    }

    if (a4)
    {
      *(v15 + 5) = *(a4 + 160);
      *(a4 + 160) = v15;
    }

    result = 0;
    *a3 = v15;
  }

  else
  {
    v17 = *(a1 + 32);
    *v17 = 0xDC00000078;
    *(v17 + 8) = 160;
    return 220;
  }

  return result;
}

uint64_t PRfreeErr(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    PRfreeList(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    if (*v3)
    {
      PRfreeList(*v3);
      v3 = a1[9];
    }

    if (v3[1])
    {
      PRfreeList(v3[1]);
      v3 = a1[9];
    }

    free(v3);
  }

  free(a1);
  return 0;
}

void PRfreeList(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

uint64_t PRaddAlts(uint64_t a1, uint64_t a2, char *__s, void *__src, size_t __n, int a6)
{
  v6 = __n;
  if (a6)
  {
    v11 = a6 - 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = (a2 + 24);
  v12 = *(a2 + 24);
  if (!v12)
  {
    result = PRmkList(a1, (a2 + 24), 3);
    if (result)
    {
      return result;
    }

    v12 = *v13;
  }

  v14 = *(v12 + 16);
  if (v14 <= v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v14 - v11;
    v17 = (*(v12 + 8) + 2 * v11);
    do
    {
      v18 = *v17++;
      if (v18 == -1)
      {
        ++v15;
      }

      --v16;
    }

    while (v16);
  }

  if (v6 > v15)
  {
    v19 = 161;
    v20 = 130;
LABEL_18:
    v22 = *(a1 + 32);
    result = 220;
    *v22 = v20;
    *(v22 + 4) = 220;
    *(v22 + 8) = v19;
    return result;
  }

  if (__src)
  {
    memcpy((a2 + *(v12 + 18) + 32), __src, v6);
    v12 = *(a2 + 24);
  }

  result = PRaddList(v12, __s, v6, v11);
  if (result)
  {
    v19 = 162;
    v20 = 120;
    goto LABEL_18;
  }

  return result;
}

uint64_t PRmkList(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040E1788B1AuLL);
  *a2 = v6;
  if (v6 && (v7 = malloc_type_calloc(a3, 2uLL, 0x1000040BDFB0063uLL), (*(*a2 + 8) = v7) != 0))
  {
    v8 = *a2;
    if (a3 >= 1)
    {
      memset(*(v8 + 8), 255, 2 * (a3 & 0x7FFF));
    }

    result = 0;
    *(v8 + 16) = a3;
  }

  else
  {
    v10 = *(a1 + 32);
    *v10 = 0xDC00000078;
    *(v10 + 8) = 560;
    return 220;
  }

  return result;
}

uint64_t PRaddList(char **a1, char *__s, int a3, unsigned int a4)
{
  v4 = a3;
  v7 = *(a1 + 12);
  v8 = a1[1];
  if (*&v8[2 * a4] != -1)
  {
    while (1)
    {
      LOWORD(a4) = a4 + 1;
      if (*(a1 + 8) <= a4)
      {
        break;
      }

      if (*&v8[2 * a4] == -1)
      {
        goto LABEL_6;
      }
    }

    LOWORD(a4) = -1;
  }

LABEL_6:
  v9 = *(a1 + 12);
  if (a3)
  {
    v9 = *(a1 + 12);
    v10 = a4;
    v11 = __s;
    do
    {
      *&v8[2 * v10] = v9;
      ++*(a1 + 9);
      v12 = strlen(v11);
      v9 = *(a1 + 12) + v12 + 1;
      *(a1 + 12) = v9;
      v11 += (v12 + 1);
      --v4;
      while (*(a1 + 8) > ++v10)
      {
        if (*&v8[2 * v10] == -1)
        {
          goto LABEL_13;
        }
      }

      v10 = -1;
LABEL_13:
      ;
    }

    while (v4);
  }

  v13 = *a1;
  if (*(a1 + 11) >= v9)
  {
    v15 = *a1;
    goto LABEL_19;
  }

  *(a1 + 11) = (v9 & 0xFFC0) + 64;
  v14 = malloc_type_malloc(((v9 & 0xFFC0) + 64) & 0xFFC0, 0x100004077774924uLL);
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      memcpy(v14, *a1, v7);
      free(*a1);
      *a1 = v15;
LABEL_19:
      memcpy(&v15[v7], __s, (v9 - v7));
      return 0;
    }
  }

  else
  {
    *a1 = v14;
    if (v14)
    {
      goto LABEL_19;
    }
  }

  return 220;
}

uint64_t PRaddFils(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5)
{
  if (a5)
  {
    v9 = a5 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 72);
  if (!v10)
  {
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    *(a2 + 72) = v10;
    if (!v10)
    {
      v17 = 163;
LABEL_21:
      v18 = 120;
      goto LABEL_22;
    }
  }

  v11 = *v10;
  if (!*v10)
  {
    result = PRmkList(a1, v10, 6);
    if (result)
    {
      return result;
    }

    v11 = **(a2 + 72);
  }

  v12 = *(v11 + 16);
  if (v12 <= v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v12 - v9;
    v15 = (*(v11 + 8) + 2 * v9);
    do
    {
      v16 = *v15++;
      if (v16 == -1)
      {
        ++v13;
      }

      --v14;
    }

    while (v14);
  }

  if (a4 <= v13)
  {
    result = PRaddList(v11, __s, a4, v9);
    if (!result)
    {
      return result;
    }

    v17 = 164;
    goto LABEL_21;
  }

  v17 = 163;
  v18 = 130;
LABEL_22:
  v20 = *(a1 + 32);
  result = 220;
  *v20 = v18;
  *(v20 + 4) = 220;
  *(v20 + 8) = v17;
  return result;
}

uint64_t PRaddRefs(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5)
{
  if (a5)
  {
    v9 = a5 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 72);
  if (!v10)
  {
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    *(a2 + 72) = v10;
    if (!v10)
    {
      v19 = 165;
LABEL_21:
      v20 = 120;
      goto LABEL_22;
    }
  }

  v13 = v10[1];
  v12 = v10 + 1;
  v11 = v13;
  if (!v13)
  {
    result = PRmkList(a1, v12, 3);
    if (result)
    {
      return result;
    }

    v11 = *(*(a2 + 72) + 8);
  }

  v14 = *(v11 + 16);
  if (v14 <= v9)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v14 - v9;
    v17 = (*(v11 + 8) + 2 * v9);
    do
    {
      v18 = *v17++;
      if (v18 == -1)
      {
        ++v15;
      }

      --v16;
    }

    while (v16);
  }

  if (a4 <= v15)
  {
    result = PRaddList(v11, __s, a4, v9);
    if (!result)
    {
      return result;
    }

    v19 = 166;
    goto LABEL_21;
  }

  v19 = 165;
  v20 = 130;
LABEL_22:
  v22 = *(a1 + 32);
  result = 220;
  *v22 = v20;
  *(v22 + 4) = 220;
  *(v22 + 8) = v19;
  return result;
}

uint64_t PRpd(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 230;
  }

  v3 = a3;
  *(a1 + 5) = 0;
  v6 = a1 + 20;
  *(a1 + 6) = 0;
  *(a1 + 14) = 0;
  v7 = PRGetAppElem(*a1);
  v21 = v7;
  if (!v7)
  {
    v10 = 0xE6FFFFFF93;
    goto LABEL_20;
  }

  v8 = v7;
  *(v7 + 32) = v6;
  if (a2 != 1)
  {
    v11 = *(v7 + 56 + 8 * a1[1]);
    if (v11)
    {
      if (a2 != 2)
      {
        LODWORD(result) = -107;
        goto LABEL_22;
      }

      LODWORD(result) = -108;
      if (v3 > 0x20 || ((1 << v3) & 0x100010001) == 0)
      {
        goto LABEL_22;
      }

      v12 = *(v11 + 97);
      *(v12 + 4) = *v11;
      *(v12 + 2) = *(v8 + 88);
      *(v12 + 774) = *(v11 + 769);
      if (v3 == 32 || v3 == 16)
      {
        __strcpy_chk();
        __strcpy_chk();
        if (v3 == 16)
        {
          v13 = 11;
        }

        else
        {
          v13 = 12;
        }
      }

      else
      {
        v13 = 14;
      }

      *v12 = v13;
      v14 = ICpd(0, v12);
      v15 = v14;
      v16 = v14 != 8;
      if (v14 == 8)
      {
        v17 = *(v8 + 32);
        *v17 = 0xE6000002C8;
        *(v17 + 8) = 700;
      }

      if (v3 == 32 || v3 == 16)
      {
        if (v14 == 8)
        {
          *v12 = 14;
          v15 = ICpd(0, v12);
          if (v15 == 8)
          {
            v18 = 712;
            goto LABEL_35;
          }
        }

        else
        {
          *v12 = 13;
          if (ICpd(0, v12) == 8)
          {
            v18 = 711;
LABEL_35:
            v19 = *(v8 + 32);
            *v19 = v18;
            *(v19 + 4) = 230;
            *(v19 + 8) = 700;
LABEL_37:
            free(v12);
            free(v11);
            *(v8 + 56 + 8 * a1[1]) = 0;
            --*(v8 + 90);
            if (v15 == 8 || v16)
            {
              return 8;
            }

            else
            {
              return 0;
            }
          }
        }
      }

      v16 = 0;
      goto LABEL_37;
    }

    v10 = 0xE6000002C2;
LABEL_20:
    *(a1 + 20) = v10;
    *(a1 + 14) = 700;
    return 230;
  }

  result = PRInitOrLoad(a1, 1, v3, &v21);
  if (result && result != 220 && result != 230)
  {
    v6 = *(v8 + 32);
LABEL_22:
    *v6 = result;
    *(v6 + 1) = 230;
    *(v6 + 4) = 700;
    return 230;
  }

  return result;
}

uint64_t PRInitOrLoad(uint64_t a1, int a2, unsigned int a3, uint64_t *a4)
{
  v4 = *a4;
  if (!*(*a4 + 9))
  {
LABEL_41:
    v5 = *(v4 + 32);
    v6 = 0xE6000002C0;
    goto LABEL_42;
  }

  if (*(v4 + 90) == 4)
  {
    v5 = *(v4 + 32);
    v6 = 0xE6000002C3;
LABEL_42:
    *v5 = v6;
    *(v5 + 8) = 700;
    return 230;
  }

  v10 = malloc_type_calloc(1uLL, 0x318uLL, 0x10200408531879CuLL);
  if (!v10)
  {
LABEL_26:
    v15 = *(v4 + 32);
    v16 = 0xDC00000078;
LABEL_27:
    *v15 = v16;
    *(v15 + 8) = 700;
    return 220;
  }

  v11 = v10;
  v10[771] = *(a1 + 18);
  *(v10 + 769) = *(a1 + 16);
  v12 = *(a1 + 8);
  if (v12)
  {
    if (**v12)
    {
      __strcpy_chk();
      v12 = *(a1 + 8);
    }

    if (*(v12 + 8))
    {
      __strcpy_chk();
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = v4 + 8 * v13;
    if (!*(v14 + 56))
    {
      break;
    }

    if (++v13 == 4)
    {
      v15 = *(v4 + 32);
      v16 = 0xDC0000007BLL;
      goto LABEL_27;
    }
  }

  result = 4294967188;
  if (a2 == 1 && a3 <= 1)
  {
    v18 = malloc_type_calloc(1uLL, 0x898uLL, 0x1090040C1876833uLL);
    if (v18)
    {
      v19 = v18;
      v18[387] = *(v11 + 769);
      *(v18 + 2058) = v11[771];
      v18[1] = *(v4 + 88);
      v20 = v11[2];
      *(v11 + 97) = v18;
      if (v20)
      {
        __strcpy_chk();
      }

      if (v11[258])
      {
        __strcpy_chk();
      }

      v21 = *(v4 + 8);
      if (*(v4 + 8))
      {
        v22 = *v4;
        v23 = *(v4 + 8);
        while (!*v22)
        {
          ++v22;
          if (!--v23)
          {
            v24 = 0;
            goto LABEL_31;
          }
        }

        v24 = *(*v22 + 128);
        if (!v24)
        {
          goto LABEL_41;
        }

LABEL_31:
        v25 = *(a1 + 18);
        if (*(a1 + 18))
        {
          v26 = *v4;
          do
          {
            v27 = *v26;
            if (*v26)
            {
              if (*(v27 + 20) == v25)
              {
                v19[2059] = *(v27 + 26);
              }
            }

            ++v26;
            --v21;
          }

          while (v21);
          goto LABEL_39;
        }
      }

      else
      {
        v24 = 0;
        if (*(a1 + 18))
        {
LABEL_39:
          *v19 = 10;
          if (ICpd(v24, v19) != 8)
          {
            result = 0;
            *v11 = *(v19 + 2);
            *(v11 + 769) = *(v19 + 387);
            v11[771] = v19[2058];
            *(v14 + 56) = v11;
            ++*(v4 + 90);
            *(a1 + 1) = v13;
            return result;
          }

          free(v19);
          free(v11);
          goto LABEL_41;
        }
      }

      v19[2059] = -83;
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  return result;
}

double PRPostAgree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v45 = 0;
  v3 = *(a3 + 112);
  v4 = *v3;
  v44 = v3[1];
  v5 = v3[2];
  v6 = *(v3 + 1);
  __dst = *(v3 + 2);
  v7 = *(a1 + 64);
  if (v7 || (v7 = *(a1 + 56)) != 0)
  {
    v42 = v6 + v3[3];
    v38 = v5 >> 1;
    v39 = v3[2];
    do
    {
      if ((~*(v7 + 4) & 0x10000004) == 0 || (*(v7 + 93) & 0x820) != 0)
      {
        v8 = *(v7 + 32);
        if (v8 >= 1)
        {
          LOWORD(v9) = v8 - 1;
          if (v8 != 1)
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v37 = v7;
            v43 = *(v7 + 16);
            do
            {
              v13 = 0;
              v14 = ((v12 & 0x7F) << 8) + 19 * (v12 >> 7) + *(v43 + v9);
              v15 = v14 - 32749;
              if (v14 <= 0x7FECu)
              {
                v15 = ((v12 & 0x7F) << 8) + 19 * (v12 >> 7) + *(v43 + v9);
              }

              v16 = v15;
              v40 = v15;
              v41 = v15 & 0x7FFF ^ v11;
              v17 = v15 & v5;
              v18 = v41 % v4;
              v19 = v38 - v17;
              v20 = 2 * v17;
              do
              {
                v21 = (v6 + 4 * (v18 & 0x3FFF));
                v22 = *v21;
                if ((v21[1] | ((v22 & 0x7F) << 8)) == v16)
                {
                  v23 = (v42 + (*(v6 + 4 * (v18 & 0x3FFF) + 3) | (*(v6 + 4 * (v18 & 0x3FFF) + 2) << 8)));
                  if (!SLstrcmp((v43 + v9), v23 + 2))
                  {
                    v10 = v23;
                  }

                  if (v10 && *v10 >= 0)
                  {
                    LOWORD(v9) = -1;
                  }
                }

                else
                {
                  if ((v22 & 0x80000000) == 0)
                  {
                    break;
                  }

                  v19 += v20;
                  v25 = v18 + v19;
                  do
                  {
                    v18 = v25;
                    v25 -= v4;
                  }

                  while (v4 <= v18);
                }

                ++v13;
              }

              while (v44 >= v13 && v9 > 0);
              v9 = (v9 - 1);
              v5 = v39;
              v12 = v40;
              v11 = v41;
            }

            while (v9 > 0);
            if (v10)
            {
              v26 = *v10;
              v7 = v37;
              if (PRliveRule(a2, a3, 0, 10, *v10 & 0x7F, 0, 0))
              {
                return result;
              }

              if (PRmkErr(a2, a3, v45, v37, 0, 10, v26 & 0x7F))
              {
                v33 = *(a2 + 32);
                *&result = 0xDC00000078;
                *v33 = 0xDC00000078;
                *(v33 + 8) = 0;
                return result;
              }

              v27 = *v45;
              **v45 = *(v37 + 8);
              *(v27 + 2) = *(v37 + 32);
              if (PRaddRefs(a2, v27, *(v37 + 24), 1u, 1))
              {
                return result;
              }

              v28 = v10[1];
              v29 = *(v37 + 32) - v28 + 1;
              v30 = &v10[v28];
              memcpy(__dst, *(v37 + 24), v29);
              v31 = strlen(v30 + 2);
              memcpy(&__dst[v29], v30 + 2, v31 + 1);
              v32 = PRaddAlts(a2, *v45, __dst, 0, 1uLL, 1);
            }

            else
            {
              v32 = 0;
              v7 = v37;
            }

            if (v32)
            {
              return result;
            }
          }
        }
      }

      v7 = *(v7 + 80);
    }

    while (v7);
  }

  return result;
}

uint64_t PRinitProfile(uint64_t a1, uint64_t a2, int a3, const char *a4, const char *a5)
{
  v29 = 0;
  if (a3)
  {
    v6 = *(a1 + 32);
    *v6 = 0xE6FFFFFF8FLL;
    *(v6 + 8) = 720;
    return 230;
  }

  v10 = *(a2 + 48);
  *(v10 + 324) = 0;
  v11 = *(v10 + 38);
  if (!a5 || !*a5)
  {
    v14 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v13 = malloc_type_calloc(1uLL, 0x210uLL, 0x1010040F03745F4uLL);
  *(v10 + 39) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = malloc_type_calloc(1uLL, *(v10 + 61), 0x1059C67FuLL);
    *v14 = v15;
    if (v15)
    {
      v16 = v15;
      v17 = strlen(a5);
      v18 = malloc_type_malloc(v17 + 1, 0x100004077774924uLL);
      *(v14 + 8) = v18;
      if (v18)
      {
        SLpthcpy((v14 + 16), a4);
        strncpy(*(v14 + 8), a5, v17 + 1);
        v19 = &v29;
        if (!SLOpen(a4, a5, &v29, 0))
        {
          return loadProfile(a1, a2, v10, v14, v16, v11, v19, 2, 0);
        }

        *v30 = 0;
        if (SLOpen(v14 + 16, *(v14 + 8), v30, 0x602u))
        {
          v20 = 117;
LABEL_24:
          v26 = *(a1 + 32);
          result = 220;
          *v26 = v20;
          *(v26 + 4) = 220;
          *(v26 + 8) = 721;
          return result;
        }

        v23 = 3 * *(v10 + 61) + 16;
        v24 = malloc_type_malloc(v23, 0x100004077774924uLL);
        if (!v24)
        {
          v20 = 120;
          goto LABEL_24;
        }

        v25 = v24;
        qmemcpy(v24, "PRMDBPRF0000001", 15);
        v24[15] = *(a2 + 20);
        if (SLSeek(*v10, v10[1] + v10[80], 0))
        {
          v20 = 111;
LABEL_22:
          free(v25);
          goto LABEL_24;
        }

        v20 = 112;
        if (SLFRead(*v10, v23 - 16, v25 + 16, &v30[1]) || v23 - 16 != v30[1])
        {
          goto LABEL_22;
        }

        v27 = SLFWrite(v30[0], v23, v25, &v30[1]);
        v28 = v30[1];
        free(v25);
        v20 = 113;
        if (v27 || v28 != v23)
        {
          goto LABEL_24;
        }

        if (SLClose(v30[0]))
        {
          v20 = 114;
          goto LABEL_24;
        }

LABEL_12:
        v19 = 0;
        return loadProfile(a1, a2, v10, v14, v16, v11, v19, 2, 0);
      }

      v21 = *(a1 + 32);
      *v21 = 0xDC00000078;
      v22 = 721;
    }

    else
    {
      free(*(v10 + 39));
      v21 = *(a1 + 32);
      *v21 = 0xDC00000078;
      v22 = 724;
    }
  }

  else
  {
    v21 = *(a1 + 32);
    *v21 = 0xDC00000078;
    v22 = 723;
  }

  *(v21 + 8) = v22;
  return 220;
}

uint64_t loadProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int *a7, int a8, char a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = 0;
  if ((*(a3 + 324) & 0x40) != 0)
  {
    v20 = *(a1 + 32);
    *v20 = 0xE6FFFFFF8FLL;
    *(v20 + 8) = 722;
    return 230;
  }

  if (a5)
  {
    v14 = a9;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = *(a3 + 4);
    v32 = *a3;
    v16 = v15 + *(a3 + 320);
    goto LABEL_7;
  }

  if (a7)
  {
    v23 = *a7;
    v32 = *a7;
  }

  else
  {
    if (SLOpen(a4 + 16, *(a4 + 8), &v32, 0))
    {
      v18 = *(a1 + 32);
      v19 = 0xDC0000006ELL;
      goto LABEL_37;
    }

    v23 = v32;
  }

  v33 = 0;
  if (SLSeek(v23, 0, 0))
  {
    v24 = 111;
LABEL_18:
    v25 = *(a1 + 32);
    result = 220;
    *v25 = v24;
    *(v25 + 4) = 220;
    *(v25 + 8) = 724;
    return result;
  }

  v29 = SLFRead(v23, 16, __dst, &v33);
  v24 = 112;
  if (v29 || v33 != 16)
  {
    goto LABEL_18;
  }

  v30 = *__dst == 0x46525042444D5250 && *&__dst[7] == 0x3130303030303046;
  if (!v30 || v35 != *(a2 + 20))
  {
    v24 = 116;
    goto LABEL_18;
  }

  v16 = 16;
LABEL_7:
  v17 = *(a3 + 122);
  if (a8 != 2)
  {
    if (a8 != 3)
    {
      goto LABEL_11;
    }

    v16 += v17;
  }

  v16 += v17;
LABEL_11:
  if (SLSeek(v32, v16, 0))
  {
    v18 = *(a1 + 32);
    v19 = 0xDC0000006FLL;
LABEL_37:
    *v18 = v19;
    *(v18 + 8) = 722;
    return 220;
  }

  if (a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = a6;
  }

  if (SLFRead(v32, v17, v26, &v31) || v31 != v17)
  {
    v18 = *(a1 + 32);
    v19 = 0xDC00000070;
    goto LABEL_37;
  }

  if (a5 && a6)
  {
    memcpy(a6, a5, v17);
  }

  if (v14)
  {
    v27 = a5 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(a3 + 324) | a8;
  if (!v27)
  {
    v28 |= 0x80u;
  }

  *(a3 + 324) = v28;
  if (v28 & 0x40 | v14)
  {
    return 0;
  }

  result = SLClose(v32);
  if (result)
  {
    v18 = *(a1 + 32);
    v19 = 0xDC00000072;
    goto LABEL_37;
  }

  return result;
}

uint64_t PRloadProfile(uint64_t a1, uint64_t a2, int a3, int a4, char a5)
{
  if (a3)
  {
    v6 = *(a1 + 32);
    *v6 = 0xE6FFFFFF8FLL;
    *(v6 + 8) = 721;
    return 230;
  }

  v9 = *(a2 + 48);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 304);
  if (!v10)
  {
    return 0;
  }

  v13 = *(v9 + 312);
  if (!v13)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v14 = *v13;
  *v20 = 0;
  if ((*(v9 + 324) & 0x40) != 0)
  {
    v15 = -113;
    result = 230;
LABEL_28:
    v19 = *(a1 + 32);
    *v19 = v15;
    *(v19 + 4) = result;
    *(v19 + 8) = 723;
    return result;
  }

  if ((*(v9 + 324) & 0x80) != 0)
  {
    v16 = *(v9 + 122);
    if (SLOpen((v13 + 2), v13[1], v20, 2u))
    {
      v15 = 110;
LABEL_27:
      result = 220;
      goto LABEL_28;
    }

    v17 = *(v9 + 324) & 3;
    v18 = 16;
    if (v17 != 2)
    {
      if (v17 != 3)
      {
        goto LABEL_21;
      }

      v18 = v16 + 16;
    }

    v18 += v16;
LABEL_21:
    if (SLSeek(v20[0], v18, 0))
    {
      v15 = 111;
    }

    else if (SLFWrite(v20[0], v16, v14, &v20[1]))
    {
      v15 = 113;
    }

    else
    {
      *(v9 + 324) &= 0x7Cu;
      if (!SLClose(v20[0]))
      {
        goto LABEL_10;
      }

      v15 = 114;
    }

    goto LABEL_27;
  }

  *(v9 + 324) &= 0x3Cu;
LABEL_10:
  if (!a4)
  {
    return 0;
  }

  result = loadProfile(a1, a2, v9, v13, v14, v10, 0, a4, a5);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t PRprune(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 56);
  v5 = *(PRGetDbElem(*(a1 + 8), *(a1 + 9)) + 48);
  if (*(v5 + 240))
  {
    ProcessSupTab(*(v5 + 232), *(v5 + 240), v4, 0);
  }

  v6 = PRGetAppElem(*(a1 + 8));
  if (!v6)
  {
    *(a1 + 64) = 0xE6FFFFFF93;
    *(a1 + 72) = 480;
    return 230;
  }

  v49 = a1;
  if (*(v6 + 48))
  {
    ProcessSupTab(*(v6 + 40), 6 * *(v6 + 48), v4, 1);
  }

  if (v4)
  {
    while (1)
    {
      v7 = *(v4 + 160);
      if (v7)
      {
        break;
      }

LABEL_36:
      v4 = *(v4 + 176);
      if (!v4)
      {
        goto LABEL_37;
      }
    }

    v8 = *(v4 + 160);
    while (1)
    {
      *(v7 + 66) = *v4;
      v9 = *(v7 + 24);
      if (!v9)
      {
        goto LABEL_24;
      }

      v10 = *(v7 + 2);
      if (v10 > 127)
      {
        goto LABEL_24;
      }

      __s[0] = 0;
      if (v10 >= 1)
      {
        v11 = v4;
        do
        {
          strlen(__s);
          __strncat_chk();
          v10 -= *(v11 + 32);
          if (!v10)
          {
            break;
          }

          if (*(v11 + 48))
          {
            strlen(__s);
            __strncat_chk();
            v10 -= *(v11 + 48);
          }

          v11 = *(v11 + 80);
          if (!v11)
          {
            break;
          }
        }

        while (v10 > 0);
      }

      if (*(v9 + 9))
      {
        break;
      }

LABEL_22:
      v15 = *(v7 + 40);
      if (v8 == v7)
      {
        PRfreeErr(v7);
        *(v4 + 160) = v15;
        v7 = v15;
      }

      else
      {
        *(v8 + 40) = v15;
        PRfreeErr(v7);
        v15 = *(v8 + 40);
        v7 = v8;
      }

LABEL_33:
      v8 = v7;
      v7 = v15;
      if (!v15)
      {
        goto LABEL_36;
      }
    }

    v12 = 0;
    v13 = *v9;
    v14 = v9[1];
    while (!SLstrcmp((v13 + *(v14 + 2 * v12)), __s))
    {
      if (++v12 >= *(v9 + 9))
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v16 = *(v7 + 40);
    if (v16)
    {
      v17 = v7;
      do
      {
        v18 = v17;
        v17 = v16;
        while (*(v7 + 12) == *(v17 + 12) && *(v7 + 13) == *(v17 + 13))
        {
          *(v18 + 40) = *(v17 + 40);
          PRfreeErr(v17);
          v17 = *(v18 + 40);
          if (!v17)
          {
            goto LABEL_32;
          }
        }

        v16 = *(v17 + 40);
      }

      while (v16);
    }

LABEL_32:
    v15 = *(v7 + 40);
    goto LABEL_33;
  }

LABEL_37:
  v19 = a1;
  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if (*(a2 + 14))
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    if ((*(a2 + 2) & 0xFE) != 2 || v21 == 0)
    {
      v28 = 0;
      goto LABEL_99;
    }

    v50 = 0;
    v51 = 0;
    v32 = 0;
    v33 = 0;
    v28 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v52 = 0;
    v37 = 0;
    while (1)
    {
      v38 = *(v21 + 160);
      if (!v38)
      {
        goto LABEL_88;
      }

      do
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v39 = v38;
                ConvertAlts(*(v38 + 3), 0, v20);
                v38 = *(v39 + 5);
                *(v39 + 5) = 0;
                v40 = *(v39 + 12);
                if (v40 != 1)
                {
                  break;
                }

                if (*(v39 + 13) != 1)
                {
                  goto LABEL_79;
                }

                v41 = v51;
                v51 = v39;
                if (v50)
                {
                  goto LABEL_84;
                }

                v50 = v39;
                v51 = v39;
                if (!v38)
                {
                  goto LABEL_87;
                }
              }

              if (v40 != 58)
              {
                break;
              }

              v41 = v36;
              v36 = v39;
              if (v35)
              {
                goto LABEL_84;
              }

              v35 = v39;
              v36 = v39;
              if (!v38)
              {
                goto LABEL_87;
              }
            }

            if (v40 != 3 || *(v39 + 13) - 2 > 2)
            {
              break;
            }

            v41 = v52;
            v52 = v39;
            if (v28)
            {
LABEL_84:
              *(v41 + 5) = v39;
              if (!v38)
              {
                goto LABEL_87;
              }
            }

            else
            {
              v28 = v39;
              v52 = v39;
              if (!v38)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_79:
          if (*(v39 + 14) != 1)
          {
            break;
          }

          v41 = v37;
          v37 = v39;
          if (v34)
          {
            goto LABEL_84;
          }

          v34 = v39;
          v37 = v39;
          if (!v38)
          {
            goto LABEL_87;
          }
        }

        v41 = v33;
        v33 = v39;
        if (v32)
        {
          goto LABEL_84;
        }

        v32 = v39;
        v33 = v39;
      }

      while (v38);
LABEL_87:
      *(v21 + 160) = 0;
LABEL_88:
      v21 = *(v21 + 176);
      if (!v21)
      {
        if (!v35)
        {
          goto LABEL_92;
        }

        if (v33)
        {
          *(v33 + 5) = v35;
LABEL_92:
          if (v32)
          {
            if (v37)
            {
              goto LABEL_94;
            }

LABEL_117:
            v34 = v32;
            v19 = v49;
LABEL_118:
            if (v51)
            {
              *(v51 + 5) = v34;
              goto LABEL_120;
            }

            v50 = v34;
LABEL_123:
            if (v52)
            {
              *(v52 + 5) = v50;
            }

            else
            {
              v28 = v50;
            }

            goto LABEL_99;
          }
        }

        else
        {
          v32 = v35;
          if (!v37)
          {
            goto LABEL_117;
          }

LABEL_94:
          *(v37 + 5) = v32;
        }

        v19 = v49;
        if (v34)
        {
          goto LABEL_118;
        }

LABEL_120:
        if (!v50)
        {
          goto LABEL_99;
        }

        goto LABEL_123;
      }
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  do
  {
    v29 = *(v21 + 160);
    if (!v29)
    {
      goto LABEL_60;
    }

    do
    {
      while (1)
      {
        v30 = v29;
        ConvertAlts(*(v29 + 3), 0, v20);
        v29 = *(v30 + 5);
        *(v30 + 5) = 0;
        if (*(v30 + 12) != 1 || *(v30 + 13) != 1)
        {
          break;
        }

        v31 = v26;
        v26 = v30;
        if (v28)
        {
LABEL_56:
          *(v31 + 5) = v30;
          if (!v29)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v28 = v30;
          v26 = v30;
          if (!v29)
          {
            goto LABEL_59;
          }
        }
      }

      v31 = v25;
      v25 = v30;
      if (v27)
      {
        goto LABEL_56;
      }

      v27 = v30;
      v25 = v30;
    }

    while (v29);
LABEL_59:
    *(v21 + 160) = 0;
LABEL_60:
    v21 = *(v21 + 176);
  }

  while (v21);
  if (v27)
  {
    if (v26)
    {
      *(v26 + 5) = v27;
    }

    else
    {
      v28 = v27;
    }
  }

  v19 = v49;
LABEL_99:
  if ((*(v19 + 10) & 0x40) != 0)
  {
    v42 = v28;
  }

  else
  {
    v42 = 0;
    if (v28)
    {
      do
      {
        v43 = 0;
        if (v42)
        {
          v44 = *v28;
          v45 = v42;
          while (1)
          {
            v46 = v43;
            v43 = v45;
            v45 = *(v45 + 5);
            v47 = *v43;
            if (!v45)
            {
              break;
            }

            if (v44 < v47)
            {
              goto LABEL_107;
            }
          }

          if (v44 >= v47)
          {
            v46 = v43;
            v43 = 0;
            goto LABEL_111;
          }

LABEL_107:
          if (!v46)
          {
            v43 = v42;
            goto LABEL_109;
          }

LABEL_111:
          *(v46 + 5) = v28;
        }

        else
        {
LABEL_109:
          v42 = v28;
        }

        v48 = *(v28 + 5);
        *(v28 + 5) = v43;
        v28 = v48;
      }

      while (v48);
    }
  }

  result = 0;
  *(v19 + 40) = v42;
  return result;
}

uint64_t ProcessSupTab(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v6 = a2;
    v7 = result;
    v8 = a3;
    do
    {
      v9 = *(v8 + 160);
      if (v9)
      {
        do
        {
          v10 = *(v9 + 12);
          v11 = *(v9 + 13);
          v18 = *(v9 + 40);
          v12 = v7;
          v13 = v6;
          if (a4 == 1)
          {
            v14 = a3;
            v15 = v10;
            v16 = 0;
            v17 = 1;
          }

          else
          {
            Search(v7, v6, v8, v10, 0, 0, &v18);
            v12 = v7;
            v13 = v6;
            v14 = v8;
            v15 = v10;
            v16 = v11;
            v17 = 0;
          }

          result = Search(v12, v13, v14, v15, v16, v17, &v18);
          v9 = v18;
        }

        while (v18);
      }

      v8 = *(v8 + 176);
    }

    while (v8);
  }

  return result;
}

uint64_t Search(uint64_t result, unsigned int a2, uint64_t a3, int a4, int a5, int a6, uint64_t *a7)
{
  v8 = a4;
  v9 = a3;
  v10 = result;
  v11 = 0;
  v34 = a2;
  v40 = 0;
  v39 = a2;
  v12 = a5 | (a4 << 8);
  while (1)
  {
LABEL_2:
    if (v11)
    {
LABEL_3:
      if (v11 == 0xFFFF)
      {
        return result;
      }
    }

    else
    {
      result = BinarySearch(v10, v34, 6, v12, 2, &v40);
      if (!result)
      {
        return result;
      }

      v11 = v40;
      if (v40)
      {
        do
        {
          if (v12 != bswap32(*(v10 + 6 * v11 - 6)) >> 16)
          {
            goto LABEL_3;
          }

          --v11;
        }

        while (v11);
        v11 = 0;
      }
    }

    if (6 * v11 >= v39)
    {
      return result;
    }

    v13 = (v10 + 6 * v11);
    if (*v13 != v8)
    {
      return result;
    }

    if (v13[1] != a5)
    {
      return result;
    }

    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    v17 = v13[5];
    v40 = ++v11;
    if (v11 == 0xFFFF)
    {
      return result;
    }

    if (a6)
    {
      v18 = (v17 + v16) & ~((v17 + v16) >> 31);
      if (v17 >= 0)
      {
        v18 = v16;
      }

      v19 = v17 < 1;
      if (v17 >= 1)
      {
        v17 += v16;
      }

      else
      {
        v17 = v16;
      }

      if (v19)
      {
        v16 = v18;
      }
    }

    v20 = v9;
    if (v16)
    {
      v21 = v9;
      if ((v16 & 0x80) != 0)
      {
        do
        {
          v20 = v21;
          v21 = *(v21 + 72);
          v24 = v16++;
          if (v21)
          {
            v25 = v24 == 0;
          }

          else
          {
            v25 = 1;
          }
        }

        while (!v25);
      }

      else
      {
        do
        {
          v20 = v21;
          v21 = *(v21 + 80);
          v22 = v16--;
          if (v21)
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 1;
          }
        }

        while (!v23);
      }
    }

    v26 = v9;
    if (v17)
    {
      v27 = v9;
      if ((v17 & 0x80) != 0)
      {
        do
        {
          v26 = v27;
          v27 = *(v27 + 72);
          v30 = v17++;
          if (v27)
          {
            v31 = v30 == 0;
          }

          else
          {
            v31 = 1;
          }
        }

        while (!v31);
      }

      else
      {
        do
        {
          v26 = v27;
          v27 = *(v27 + 80);
          v28 = v17--;
          if (v27)
          {
            v29 = v28 == 0;
          }

          else
          {
            v29 = 1;
          }
        }

        while (!v29);
      }
    }

    if (v20)
    {
      while (1)
      {
        result = *(v20 + 160);
        if (result)
        {
          break;
        }

LABEL_56:
        if (v20 != v26)
        {
          v20 = *(v20 + 176);
          if (v20)
          {
            continue;
          }
        }

        v11 = v40;
        v8 = a4;
        v9 = a3;
        goto LABEL_2;
      }

      v32 = 0;
      while (2)
      {
        if (*(result + 12) == v14 && (!v15 || *(result + 13) == v15))
        {
          v33 = *(result + 40);
          if (result == *a7)
          {
            *a7 = v33;
            if (!v32)
            {
              goto LABEL_55;
            }

LABEL_50:
            *(v32 + 40) = v33;
            PRfreeErr(result);
            v33 = *(v32 + 40);
            result = v32;
          }

          else
          {
            if (v32)
            {
              goto LABEL_50;
            }

LABEL_55:
            PRfreeErr(result);
            result = 0;
            *(v20 + 160) = v33;
          }
        }

        else
        {
          v33 = *(result + 40);
        }

        v32 = result;
        result = v33;
        if (!v33)
        {
          goto LABEL_56;
        }

        continue;
      }
    }
  }
}

uint64_t PRPunct(uint64_t a1, uint64_t a2)
{
  v150[3] = *MEMORY[0x1E69E9840];
  v140 = 0;
  v139 = 0;
  v138 = 0;
  result = 220;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    v122 = *(a1 + 32);
    *v122 = 0xE6FFFFFF89;
    *(v122 + 8) = 200;
    return 230;
  }

  v7 = 0;
  v136 = *(v5 + 14);
  v146 = 0u;
  v147 = 0u;
  while (1)
  {
    while ((*(v6 + 4) & 0x80000000) == 0)
    {
      v6 = *(v6 + 80);
      if (!v6)
      {
        goto LABEL_205;
      }
    }

    v8 = (v6 + 4);
    v9 = *(v6 + 4);
    if (v9 < 0)
    {
      v10 = 0;
      do
      {
        v7 = v6;
        if (v10 <= 3u)
        {
          *(&v146 + v10) = v6;
        }

        if ((v9 & 0xC01FFF00) >= 0xC0000001)
        {
          v11 = 0;
          if ((v9 & 0x100) != 0)
          {
            goto LABEL_20;
          }

          v12 = 256;
          do
          {
            v13 = v11++;
            if (v12 > 0x80000)
            {
              break;
            }

            v14 = v9 & (2 * v12);
            v12 *= 2;
          }

          while (!v14);
          if (v13 <= 0xB)
          {
LABEL_20:
            *v8 = (((lpQuoTab[v11] >> (2 * *(a2 + 20) - 2)) & 3) << 24) | v9;
          }
        }

        ++v10;
        v6 = *(v6 + 80);
        if (!v6)
        {
          break;
        }

        v8 = (v6 + 4);
        v9 = *(v6 + 4);
      }

      while (v9 < 0);
    }

    else
    {
      v10 = 0;
    }

    if (v10 < 5u)
    {
      break;
    }

    v6 = v146;
    if (v10 > 7u)
    {
      if (!v146)
      {
        goto LABEL_204;
      }
    }

    else if (!PRliveRule(a1, a2, 0, 52, 99, 1, *v146 >= v136))
    {
      result = PRmkErr(a1, a2, &v139, v6, 0, 52, 99);
      if (result)
      {
        return result;
      }

      v15 = *(v6 + 8);
      v16 = v139;
      v139[2] = v15;
      v17 = *(v7 + 8) - v15 + *(v7 + 32);
      v16[3] = v17;
      *v16 = v15;
      v16[1] = v17;
    }

    v49 = *(v7 + 80);
    do
    {
      if (v6 == v49)
      {
        break;
      }

      *(v6 + 4) = 1024;
      v6 = *(v6 + 80);
    }

    while (v6);
LABEL_204:
    v146 = 0u;
    v147 = 0u;
    if (!v6)
    {
LABEL_205:
      if (!v138)
      {
        v114 = v140;
        if (v140)
        {
          *__s = 0;
          v115 = &v145;
          do
          {
            v116 = *(v115 + 1);
            if (v116)
            {
              if (**(v116 + 16) == 39)
              {
                *(v116 + 4) = -1056962560;
              }

              else
              {
                *(v116 + 4) = -1056956416;
              }
            }

            else
            {
              v117 = *(v115 - 1);
              v118 = pClsMissed[*v115 + pMissedOffset[*(a2 + 20)]];
              if (!PRliveRule(a1, a2, 0, 52, pClsMissed[*v115 + pMissedOffset[*(a2 + 20)]], 1, *v117 >= v136))
              {
                result = PRmkErr(a1, a2, __s, v117, 0, 52, v118);
                if (result)
                {
                  return result;
                }

                v119 = v117[4];
                v120 = *__s;
                *(*__s + 4) = v119;
                v121 = v117[16];
                v120[3] = v121;
                *v120 = v119;
                v120[1] = v121;
              }
            }

            v115 += 24;
            --v114;
          }

          while (v114);
        }
      }

      return 0;
    }
  }

  v131 = v7;
  if (!v10)
  {
    v134 = -1;
    goto LABEL_124;
  }

  v18 = 0;
  v19 = 0;
  v20 = *(a1 + 16);
  v21 = *(v20 + 56);
  v22 = *(v20 + 80);
  do
  {
    v23 = *(&v146 + v18);
    v24 = *(v23 + 4);
    v25 = (v24 & 0xC01FFF00) >= 0xC0000001 && (v24 & 0x3000000) == 50331648;
    if (!v25)
    {
      goto LABEL_88;
    }

    if (v23 == v21 || (v26 = *(v23 + 72)) == 0)
    {
LABEL_52:
      v29 = 1;
      goto LABEL_53;
    }

    while (1)
    {
      if (*(v26 + 40))
      {
        goto LABEL_52;
      }

      v27 = *(v26 + 4);
      if ((v27 & 0xC01FFF00) >= 0xC0000001)
      {
        v28 = HIBYTE(v27) & 3;
        if (v28 > 1)
        {
          if (v28 != 3)
          {
            goto LABEL_52;
          }
        }

        else if (v28)
        {
          v39 = 0;
LABEL_92:
          v29 = v39;
          goto LABEL_53;
        }

        goto LABEL_48;
      }

      v29 = 0;
      if (v27 <= -2147483393)
      {
        if (v27 != -2147483644)
        {
          goto LABEL_53;
        }

        goto LABEL_48;
      }

      if (v27 != -2147483392)
      {
        break;
      }

LABEL_48:
      v29 = 1;
      if (*(v26 + 72))
      {
        v25 = v26 == v21;
        v26 = *(v26 + 72);
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

    v39 = 1;
    if (v27 == -1073741820 || v27 == -1073741823)
    {
      goto LABEL_92;
    }

LABEL_53:
    LOBYTE(v30) = 1;
    v31 = *(&v146 + v18);
    while (1)
    {
      v32 = v19;
      if ((v30 & 1) == 0)
      {
        break;
      }

      v33 = *(v31 + 80);
      if (v33)
      {
        v34 = v31 == v22;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        v32 = 1;
        goto LABEL_83;
      }

      LOBYTE(v30) = 0;
      v19 = 1;
      if (!*(v31 + 40))
      {
        v31 = *(v31 + 80);
        v35 = *(v33 + 4);
        if ((v35 & 0xC01FFF00) < 0xC0000001)
        {
          v30 = 1;
          if (v35 > -2147483393)
          {
            if ((v35 + 0x1FFFFFFF) > 0x1F || ((1 << (v35 - 1)) & 0x80008009) == 0)
            {
              v19 = v32;
              if (v35 == -2147483392)
              {
                continue;
              }

LABEL_77:
              v30 = 0;
            }
          }

          else if (v35 != -2147483646)
          {
            v19 = v32;
            if (v35 == -2147483644)
            {
              continue;
            }

            if (v35 != -2147483632)
            {
              goto LABEL_77;
            }
          }

          v19 = v30;
          LOBYTE(v30) = 0;
          continue;
        }

        v36 = HIBYTE(v35) & 3;
        if (v36 > 1)
        {
          LOBYTE(v30) = 0;
          v19 = 0;
          if (v36 == 2)
          {
            continue;
          }
        }

        else if (v36)
        {
          LOBYTE(v30) = 0;
          v19 = 1;
          continue;
        }

        LOBYTE(v30) = 1;
        v19 = v32;
      }
    }

    if (v29 && !v19)
    {
      v38 = -16777217;
LABEL_86:
      *(v23 + 4) = v38 & v24;
      goto LABEL_87;
    }

LABEL_83:
    if (!v29 && v32)
    {
      v38 = -33554433;
      goto LABEL_86;
    }

LABEL_87:
    v19 = v32;
LABEL_88:
    ++v18;
  }

  while (v18 != v10);
  for (i = 0; i != v10; ++i)
  {
    if (!v138)
    {
      v41 = *(&v146 + i);
      v42 = *(v41 + 4);
      if (v42 == -2147483647)
      {
        if (*(v41 + 48) || (v45 = *(v41 + 80)) == 0 || *(v45 + 32) != 2 || (v46 = *(v45 + 16), *v46 - 48 > 9) || v46[1] - 48 >= 0xA)
        {
          if (v140 && (v144[24 * v140 - 16] | 4) == 4)
          {
            *&v142[24 * v140] = v41;
          }
        }
      }

      else
      {
        v43 = *(a2 + 80);
        if (*(v43 + 1096))
        {
          v44 = 0;
          while (*(*(v43 + 1104) + 4 * v44) != v42)
          {
            if (*(v43 + 1096) == ++v44)
            {
              goto LABEL_94;
            }
          }

          v47 = *(*(v43 + 1112) + v44);
          if (v47 == 2)
          {
            PRclsScope(a1, a2, v144, &v140, v41, *(*(v43 + 1120) + v44), v136, &v138);
          }

          else if (v47 == 1)
          {
            PRopnScope(a1, a2, v144, &v140, v41, *(*(v43 + 1120) + v44), v136, &v138);
          }

          else
          {
            v48 = *(a1 + 32);
            *v48 = 0xDC0000007BLL;
            *(v48 + 8) = 580;
          }
        }
      }
    }

LABEL_94:
    ;
  }

  v134 = v10 - 1;
  if (v10 == 1)
  {
LABEL_203:
    v7 = v131;
    goto LABEL_204;
  }

LABEL_124:
  v50 = 0;
  v51 = v10;
  v135 = v10 - 2;
  while (1)
  {
    *v141 = 0;
    if (v135 < v50)
    {
      break;
    }

    v137 = *(a2 + 80);
    v52 = &v146 + v50;
    v53 = *(a2 + 20);
    v54 = PRDblIdx(*(*v52 + 4), v53);
    if (v54 <= 0x16)
    {
      v55 = v54;
      v56 = PRDblIdx(*(v52[1] + 4), v53);
      if (v56 <= 0x16)
      {
        v57 = v137 + 46 * v55;
        v58 = *&v57[2 * v56];
        if (*&v57[2 * v56])
        {
          v59 = v50;
          v60 = *&v57[2 * v56];
          if (v58 < 0)
          {
            if (v135 == v50)
            {
              v61 = 23;
            }

            else
            {
              v62 = v53;
              v63 = *&v57[2 * v56];
              v64 = PRDblIdx(*(v52[2] + 4), v62);
              v58 = v63;
              v61 = v64;
              v59 = v50;
            }

            v60 = *(v137[133] + 48 * ((v58 & 0x7FFF) - 1) + 2 * v61);
            if (!v60)
            {
              goto LABEL_142;
            }
          }

          v65 = 0;
          v66 = (v137[134] + 6 * ((v60 & 0x7FFF) - 1));
          v67 = *v66;
          v68 = v66[1];
          v69 = v68 & 7;
          v70 = (v68 >> 3) & 7;
          v143[0] = (v66[1] >> 6) & 7;
          v143[1] = (v68 >> 9) & 7;
          v143[2] = (v68 >> 12) & 7;
          v71 = v66[2];
          v72 = v137[135];
          v132 = *(v72 + (v71 + 1));
          v133 = *(v72 + v71);
          v73 = v71 + 2;
          while (((v69 << v65) & 4) == 0)
          {
            if (++v65 == 3)
            {
              v123 = 123;
              goto LABEL_219;
            }
          }

          v125 = v70;
          v129 = v59;
          v130 = v58;
          v74 = *(&v146 + v50 + v65);
          v128 = v67 >> 8;
          v126 = v67;
          if (!PRliveRule(a1, a2, 0, v67 >> 8, v67, 1, *v74 >= v136))
          {
            v75 = v126;
            v127 = v74;
            result = PRmkErr(a1, a2, v141, v74, 0, v128, v75);
            if (result)
            {
              return result;
            }

            v76 = 0;
            memset(v150, 0, 24);
            memset(v149, 0, sizeof(v149));
            do
            {
              v77 = v143[v76];
              if (!v143[v76])
              {
                break;
              }

              for (j = 0; j != 3; ++j)
              {
                if (((v77 << j) & 4) != 0)
                {
                  break;
                }
              }

              v79 = *(&v146 + (j + v129));
              v80 = 2;
              v81 = v50 + 2;
              do
              {
                if (((v77 << v80) & 4) != 0 && v51 > v81 && *(&v146 + v81))
                {
                  break;
                }

                --v80;
                --v81;
              }

              while (v80 != -1);
              v82 = *(&v146 + v80 + v129);
              v150[v76] = v79;
              v149[v76++] = v82;
            }

            while (v76 != 3);
            v83 = 0;
            LOWORD(v84) = 0;
            __s[0] = 0;
            while (1)
            {
              v85 = v150[v83];
              if (!v85)
              {
                break;
              }

              v86 = v149[v83];
              do
              {
                if (*v85 > *v86)
                {
                  break;
                }

                v87 = *(v85 + 3);
                v88 = *v87;
                if (*v87 && v84 <= 0x3Eu)
                {
                  v84 = v84;
                  v89 = v87 + 1;
                  do
                  {
                    v90 = v84;
                    __s[v84++] = v88;
                    if (v90 > 0x3D)
                    {
                      break;
                    }

                    v91 = *v89++;
                    v88 = v91;
                  }

                  while (v91);
                }

                if (v85 != v86)
                {
                  v92 = *(v85 + 5);
                  if (v92)
                  {
                    v93 = *v92;
                    if (*v92)
                    {
                      if (v84 <= 0x3Eu)
                      {
                        v84 = v84;
                        v94 = v92 + 1;
                        do
                        {
                          v95 = v84;
                          __s[v84++] = v93;
                          if (v95 > 0x3D)
                          {
                            break;
                          }

                          v96 = *v94++;
                          v93 = v96;
                        }

                        while (v96);
                      }
                    }
                  }
                }

                v85 = *(v85 + 10);
              }

              while (v85);
              __s[v84] = 0;
              LOWORD(v84) = v84 + 1;
              if (++v83 == 3)
              {
                goto LABEL_175;
              }
            }

            if (!v83)
            {
              goto LABEL_176;
            }

LABEL_175:
            result = PRaddRefs(a1, *v141, __s, v83, 0);
            if (result)
            {
              return result;
            }

LABEL_176:
            if (v133)
            {
              v97 = 0;
              v98 = v137[135];
              do
              {
                PRInsRefs(*v141, (v98 + v73), __s);
                result = PRaddAlts(a1, *v141, __s, 0, 1uLL, 0);
                if (result)
                {
                  return result;
                }

                v98 = v137[135];
                  ;
                }
              }

              while (v133 > ++v97);
            }

            if (v132)
            {
              v100 = 0;
              v101 = v137[135];
              do
              {
                PRInsRefs(*v141, (v101 + v73), __s);
                result = PRaddFils(a1, *v141, __s, 1u, 0);
                if (result)
                {
                  return result;
                }

                v101 = v137[135];
                  ;
                }
              }

              while (v132 > ++v100);
            }

            v103 = 2;
            v104 = v50 + 2;
            v105 = v104;
            do
            {
              if (((v69 << v103) & 4) != 0 && v51 > v105 && *(&v146 + v105))
              {
                break;
              }

              --v103;
              --v105;
            }

            while (v103 != -1);
            v106 = *(&v146 + v103 + v129);
            v107 = v127[4];
            v108 = *v141;
            *(*v141 + 4) = v107;
            LOWORD(v106) = *(v106 + 8) - v107 + *(v106 + 32);
            v108[3] = v106;
            *v108 = v107;
            v108[1] = v106;
            if (v125)
            {
              for (k = 0; k != 3; ++k)
              {
                if (((v125 << k) & 4) != 0)
                {
                  break;
                }
              }

              v110 = *(&v146 + (k + v129));
              for (m = 2; m != -1; --m)
              {
                if (((v125 << m) & 4) != 0 && v51 > v104 && *(&v146 + v104))
                {
                  break;
                }

                --v104;
              }

              v112 = *(&v146 + m + v129);
              v113 = *(v110 + 8);
              v108[4] = v113;
              v108[5] = *(v112 + 8) - v113 + *(v112 + 32);
            }
          }

          if (v130 < 0)
          {
LABEL_142:
            ++v50;
          }
        }
      }
    }

    if (++v50 >= v134)
    {
      goto LABEL_203;
    }
  }

  v123 = 104;
LABEL_219:
  v124 = *(a1 + 32);
  result = 220;
  *v124 = v123;
  *(v124 + 4) = 220;
  *(v124 + 8) = 200;
  return result;
}

uint64_t PRDblIdx(int a1, int a2)
{
  v2 = a1 & 0xF0FFFFFF;
  if ((a1 & 0xF0FFFFFF) > -1073741313)
  {
    if (v2 > -1073479681)
    {
      if (v2 <= -536870909)
      {
        if (v2 > -1072693249)
        {
          if (v2 != -1072693248)
          {
            if (v2 == -536870911)
            {
              return 15;
            }

            if (v2 != -536870910)
            {
              return 23;
            }

            v3 = a2 == 6;
            v4 = 23;
            v5 = 17;
LABEL_79:
            if (v3)
            {
              return v5;
            }

            else
            {
              return v4;
            }
          }

          goto LABEL_60;
        }

        if (v2 != -1073479680)
        {
          v7 = -1073217536;
LABEL_59:
          if (v2 != v7)
          {
            return 23;
          }

          goto LABEL_60;
        }

        goto LABEL_60;
      }

      if (v2 <= -536870897)
      {
        if (v2 != -536870908 && v2 != -536870904)
        {
          return 23;
        }

        return 16;
      }

      if (v2 == -536870896)
      {
        return 5;
      }

      if (v2 == -536870880)
      {
        return 6;
      }

      if (v2 != -536870848)
      {
        return 23;
      }

LABEL_73:
      v3 = a2 == 6;
      v4 = 22;
      v5 = 18;
      goto LABEL_79;
    }

    if (v2 <= -1073733633)
    {
      if (v2 > -1073739777)
      {
        if (v2 == -1073739776)
        {
          goto LABEL_55;
        }

        v8 = 4096;
      }

      else
      {
        if (v2 == -1073741312)
        {
          goto LABEL_73;
        }

        v8 = 1024;
      }
    }

    else
    {
      if (v2 > -1073709057)
      {
        if (v2 != -1073709056)
        {
          if (v2 != -1073676288)
          {
            v7 = -1073610752;
            goto LABEL_59;
          }

LABEL_60:
          v9 = a1 & 0x3000000;
          v10 = 14;
          v11 = (a1 & 0x1000000) == 0;
          v12 = 18;
          goto LABEL_61;
        }

LABEL_55:
        v9 = a1 & 0x3000000;
        v10 = 13;
        v11 = (a1 & 0x1000000) == 0;
        v12 = 17;
LABEL_61:
        if (v11)
        {
          v12 = 23;
        }

        if (v9 == 0x2000000)
        {
          return v10;
        }

        else
        {
          return v12;
        }
      }

      if (v2 == -1073733632)
      {
        goto LABEL_55;
      }

      v8 = 0x4000;
    }

    if (v2 != (v8 | 0xC0000000))
    {
      return 23;
    }

    goto LABEL_55;
  }

  if (v2 > -2147482625)
  {
    if (v2 > -1073741817)
    {
      if (v2 > -1073741793)
      {
        if (v2 == -1073741792)
        {
          return 20;
        }

        if (v2 != -1073741760 && v2 != -1073741568)
        {
          return 23;
        }

        v3 = a2 == 6;
        v4 = 21;
        v5 = 14;
        goto LABEL_79;
      }

      if (v2 == -1073741816)
      {
        return 12;
      }

      if (v2 == -1073741808)
      {
        return 19;
      }
    }

    else if (v2 > -1073741824)
    {
      if (v2 == -1073741823)
      {
        return 11;
      }

      if (v2 != -1073741822)
      {
        if (v2 != -1073741820)
        {
          return 23;
        }

        return 12;
      }

      v3 = a2 == 6;
      v4 = 23;
      v5 = 13;
      goto LABEL_79;
    }

    return 23;
  }

  if (v2 <= -2147483617)
  {
    if (v2 > -2147483641)
    {
      if (v2 != -2147483640)
      {
        if (v2 == -2147483632)
        {
          return 4;
        }

        return 23;
      }
    }

    else
    {
      if (v2 == -2147483646)
      {
        return 1;
      }

      if (v2 != -2147483644)
      {
        return 23;
      }
    }

    return 7;
  }

  if (v2 <= -2147483521)
  {
    if (v2 != -2147483616)
    {
      if (v2 == -2147483584)
      {
        return 3;
      }

      return 23;
    }

    return 0;
  }

  else
  {
    switch(v2)
    {
      case -2147483520:
        return 2;
      case -2147483392:
        return 8;
      case -2147483136:
        return 9;
      default:
        return 23;
    }
  }
}

uint64_t PRInsRefs(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *(result + 72);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = *(v6 + 18);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_6:
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2;
    do
    {
      result = SLstrncmp(v10, "REF", 3);
      if (result)
      {
        *(a3 + v8++) = *v10;
        ++v9;
      }

      else
      {
        v11 = v10[3];
        v12 = v11 >= 0x31;
        v13 = v11 - 49;
        if (!v12 || v7 <= v13)
        {
          *(a3 + v8) = *v10;
          ++v9;
          ++v8;
        }

        else
        {
          v9 += 4;
          v15 = *(*(v6 + 8) + 2 * v13);
          for (i = *(*v6 + v15); i; i = *(*v6 + v15))
          {
            *(a3 + v8) = i;
            LODWORD(v15) = v15 + 1;
            ++v8;
          }
        }
      }

      v10 = &a2[v9];
    }

    while (*v10);
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  *(a3 + v17) = 0;
  return result;
}

uint64_t PRopnScope(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, char **a5, unsigned int a6, unsigned int a7, _BYTE *a8)
{
  v42 = *MEMORY[0x1E69E9840];
  *v40 = 0;
  v11 = *(a2 + 80);
  v12 = *a4;
  if (!*a4)
  {
    v13 = *(v11[136] + 2 * a6);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_10:
      v18 = (v13 - 1);
      v19 = (v11[134] + 6 * (v13 - 1));
      v20 = *v19;
      v21 = v19[2];
      *a8 = 1;
      if (!PRliveRule(a1, a2, 0, v20 >> 8, v20, 1, *a5 >= a7))
      {
        v22 = v11[135];
        v23 = *(v22 + v21);
        v24 = *(v22 + (v21 + 1));
        result = PRmkErr(a1, a2, v40, a5, 0, v20 >> 8, v20);
        if (!result)
        {
          result = PRaddRefs(a1, *v40, a5[2], 1u, 0);
          if (!result)
          {
            v25 = v21 + 2;
            if (v23)
            {
              v26 = 0;
              v27 = v11[135];
              while (1)
              {
                PRInsRefs(*v40, (v27 + v25), __s);
                result = PRaddAlts(a1, *v40, __s, 0, 1uLL, 0);
                if (result)
                {
                  break;
                }

                v27 = v11[135];
                  ;
                }

                if (v23 <= ++v26)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
LABEL_19:
              if (!v24)
              {
LABEL_25:
                v32 = *(a5 + 4);
                v33 = *v40;
                *(*v40 + 4) = v32;
                v34 = *(a5 + 16);
                v33[3] = v34;
                *v33 = v32;
                v33[1] = v34;
                if ((*(v11[134] + 6 * v18 + 2) & 0x38) != 0)
                {
                  v33[4] = v32;
                  v33[5] = v34;
                }

                return 0;
              }

              v29 = 0;
              v30 = v11[135];
              while (1)
              {
                PRInsRefs(*v40, (v30 + v25), __s);
                result = PRaddFils(a1, *v40, __s, 1u, 0);
                if (result)
                {
                  break;
                }

                v30 = v11[135];
                  ;
                }

                if (v24 <= ++v29)
                {
                  goto LABEL_25;
                }
              }
            }
          }
        }

        return result;
      }

      return 0;
    }

    v12 = 0;
LABEL_32:
    *(a3 + 24 * v12 + 10) = v13 & 0x7FFF;
    v38 = *a4;
    v39 = a3 + 24 * *a4;
    *(v39 + 8) = a6;
    *v39 = a5;
    *(v39 + 16) = 0;
    *a4 = v38 + 1;
    return 0;
  }

  v13 = *(v11[136] + 20 * *(a3 + 24 * (v12 - 1) + 10) + 2 * a6);
  if (v13 < 0)
  {
    if (v12 == 4)
    {
      *a8 = 1;
      if (!PRliveRule(a1, a2, 0, 52, 98, 1, *a5 >= a7))
      {
        result = PRmkErr(a1, a2, v40, a5, 0, 52, 98);
        if (result)
        {
          return result;
        }

        v35 = *(a5 + 4);
        v36 = *v40;
        *(*v40 + 4) = v35;
        v37 = *(a5 + 16);
        v36[3] = v37;
        *v36 = v35;
        v36[1] = v37;
      }

      return 0;
    }

    goto LABEL_32;
  }

  if (!*(a3 + 24 * (v12 - 1) + 16))
  {
    goto LABEL_10;
  }

  v14 = v12 - 1;
  *a4 = v14;
  v15 = *(a3 + 24 * v14 + 16);
  if (**(v15 + 16) == 39)
  {
    v16 = -1056962560;
  }

  else
  {
    v16 = -1056956416;
  }

  *(v15 + 4) = v16;
  result = PRopnScope(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t PRclsScope(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, _BYTE *a8)
{
  v8 = a5;
  *v33 = 0;
  v11 = *(a2 + 80);
  v12 = *a4;
  if (!*a4)
  {
    v15 = a5 + 2;
    v16 = *(a5 + 1);
    if ((~v16 & 0x3000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v13 = v12 - 1;
  if (*(a3 + 24 * (v12 - 1) + 8) == a6)
  {
    *a4 = v12 - 1;
    v14 = *(a5 + 1);
    if ((~v14 & 0x3000000) == 0)
    {
      *(a5 + 1) = v14 & 0xFDFFFFFF;
    }

    return 0;
  }

  v15 = a5 + 2;
  v16 = *(a5 + 1);
  if ((~v16 & 0x3000000) == 0)
  {
LABEL_17:
    *v15 = v16 & 0xFEFFFFFF;
    if (!*(v11 + 1096))
    {
      return 0;
    }

    v25 = 0;
    while (*(*(v11 + 1104) + 4 * v25) != (v16 & 0xFEFFFFFF))
    {
      if (*(v11 + 1096) == ++v25)
      {
        return 0;
      }
    }

    result = PRopnScope(a1, a2, a3, a4, a5, *(*(v11 + 1120) + v25), a7, a8);
    if (!result)
    {
      return 0;
    }

    return result;
  }

  if (*(a3 + 24 * v13 + 16))
  {
    v26 = v12 - 1;
    *a4 = v26;
    v27 = *(a3 + 24 * v26 + 16);
    if (**(v27 + 16) == 39)
    {
      v28 = -1056962560;
    }

    else
    {
      v28 = -1056956416;
    }

    *(v27 + 4) = v28;
    result = PRclsScope(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return 0;
    }

    return result;
  }

  if (v12 == 1)
  {
    goto LABEL_6;
  }

  if (*(a3 + 24 * *a4 - 40) == a6)
  {
    v17 = *(a3 + 24 * v13);
    v29 = *(a2 + 20);
    if (v29 > 7)
    {
      switch(v29)
      {
        case 8u:
          v20 = 52;
          v19 = -118;
          goto LABEL_70;
        case 9u:
          v20 = 52;
          v19 = 118;
          goto LABEL_70;
        case 0xCu:
          v20 = 52;
          v19 = -90;
          goto LABEL_70;
      }
    }

    else
    {
      switch(v29)
      {
        case 5u:
          v20 = 52;
          v19 = 122;
          goto LABEL_70;
        case 6u:
          v20 = 52;
          v19 = 119;
          goto LABEL_70;
        case 7u:
          v20 = 52;
          v19 = 125;
LABEL_70:
          v18 = a5;
          goto LABEL_9;
      }
    }

    v20 = 52;
    v19 = 117;
    goto LABEL_70;
  }

  if (v12 < 3)
  {
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v19 = 0;
  v20 = 0;
  v17 = 0;
  for (i = 3; i <= v12; ++i)
  {
    if (*(a3 + 24 * (v12 - i) + 8) == a6)
    {
      v31 = *(a2 + 20);
      if (v31 > 7)
      {
        switch(v31)
        {
          case 8u:
            v19 = -117;
            goto LABEL_56;
          case 9u:
            v19 = 119;
            goto LABEL_56;
          case 0xCu:
            v19 = -89;
            goto LABEL_56;
        }
      }

      else
      {
        switch(v31)
        {
          case 5u:
            v19 = 123;
            goto LABEL_56;
          case 6u:
            v19 = 120;
            goto LABEL_56;
          case 7u:
            v19 = 126;
LABEL_56:
            v20 = 52;
            v32 = a5;
            v17 = a5;
            goto LABEL_57;
        }
      }

      v19 = 118;
      goto LABEL_56;
    }

    v32 = 0;
LABEL_57:
    if (v32)
    {
      break;
    }
  }

  if (v32)
  {
    v18 = 0;
    v8 = v32;
    goto LABEL_9;
  }

LABEL_7:
  if (!a5)
  {
    return 0;
  }

  v18 = 0;
  v19 = pOpnMissed[pMissedOffset[*(a2 + 20)] + a6];
  v20 = 52;
LABEL_9:
  *a8 = 1;
  if (PRliveRule(a1, a2, 0, v20, v19, 1, *v8 >= a7))
  {
    return 0;
  }

  result = PRmkErr(a1, a2, v33, v8, 0, v20, v19);
  if (!result)
  {
    v22 = v8[4];
    v23 = *v33;
    *(*v33 + 4) = v22;
    v24 = v8[16];
    v23[3] = v24;
    *v23 = v22;
    v23[1] = v24;
    if (!v17 || (result = PRaddRefs(a1, v23, *(v17 + 2), 1u, 0), !result))
    {
      if (!v18)
      {
        return 0;
      }

      result = PRaddRefs(a1, *v33, *(v18 + 2), 1u, 0);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t toLower(uint64_t result)
{
  if ((result - 65) < 0x1A || (result - 192) < 0x17)
  {
    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return (result + 32);
    }

LABEL_13:
    if (result == 159)
    {
      return 255;
    }

    else
    {
      return (result + 16);
    }
  }

  if ((result - 216) < 7)
  {
    return (result + 32);
  }

  if ((result - 138) <= 0x15 && ((1 << (result + 118)) & 0x200015) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t isVowelTurkish(int a1)
{
  result = 1;
  if ((a1 - 65) > 0x34 || ((1 << (a1 - 65)) & 0x10411100104111) == 0)
  {
    v3 = a1 - 214;
    if (v3 > 0x27 || ((1 << v3) & 0xC1000000C1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t simpleTokenRangeAfterIndex(UniChar *buffer, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + a3;
  if (a2 + a3 <= a4)
  {
    return 0;
  }

  v5 = a4;
  Predefined = 0;
  theSet = 0;
  v7 = -a4;
  v8 = a4 + 64;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v11 = v10;
    if (v5 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v5;
    }

    if (v5 < 0 || (v13 = *(buffer + 20), v13 <= v5))
    {
      LOWORD(v16) = 0;
      goto LABEL_12;
    }

    v14 = *(buffer + 17);
    if (v14)
    {
      v15 = (v14 + 2 * *(buffer + 19));
LABEL_10:
      v16 = v15[v5];
      goto LABEL_20;
    }

    v18 = *(buffer + 18);
    if (!v18)
    {
      if (*(buffer + 22) <= v5 || (v21 = *(buffer + 21), v21 > v5))
      {
        v22 = -v12;
        v23 = v12 + v7;
        v24 = v8 - v12;
        v25 = v5 + v22;
        v26 = v25 + 64;
        if (v25 + 64 >= v13)
        {
          v26 = *(buffer + 20);
        }

        *(buffer + 21) = v25;
        *(buffer + 22) = v26;
        if (v13 >= v24)
        {
          v13 = v24;
        }

        v30.location = v25 + *(buffer + 19);
        v30.length = v13 + v23;
        CFStringGetCharacters(*(buffer + 16), v30, buffer);
        v21 = *(buffer + 21);
      }

      v15 = &buffer[-v21];
      goto LABEL_10;
    }

    v16 = *(v18 + *(buffer + 19) + v5);
LABEL_20:
    if (v16 >= 0x100u)
    {
      v19 = vdup_n_s16(v16);
      if ((vmaxv_u16(vcgt_u16(0x35003600760082, vadd_s16(v19, 0xF5FBF6FCFB76FC00))) & 1) != 0 || (v16 - 3077) < 0x39u || ((v16 + 21504) >> 2) < 0xAE9u || (v16 & 0xFF00) == 0x1100 || (v16 - 12592) < 0x60u)
      {
        goto LABEL_51;
      }

      v20 = v16 - 8204;
      if (v20 <= 0x1B && ((1 << v20) & 0x9003003) != 0)
      {
LABEL_28:
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v11;
        }

        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v5;
        }

LABEL_32:
        v10 = v11;
        goto LABEL_54;
      }

      if ((vmaxv_u16(vcgt_u16(0x16000300160007, vadd_s16(v19, 0xF5C4F5FFF6C6FB7DLL))) & 1) != 0 || (v16 - 3072) < 5u || (v16 - 3134) < 0x19u || (v16 & 0xFFFC) == 0x900)
      {
        goto LABEL_32;
      }

      if ((v16 >> 3) <= 0x404u)
      {
        if (!theSet)
        {
          theSet = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
        }

        if (!Predefined)
        {
          Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNonBase);
        }

        if (CFCharacterSetIsCharacterMember(theSet, v16))
        {
          goto LABEL_51;
        }

        if (CFCharacterSetIsCharacterMember(Predefined, v16))
        {
          goto LABEL_32;
        }
      }

      goto LABEL_15;
    }

LABEL_12:
    v17 = simpleTokenCategories[v16];
    if (v17 == 50)
    {
      goto LABEL_28;
    }

    if (v17 == 49)
    {
LABEL_51:
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v5;
      }

      else
      {
        v10 = v11;
      }

      goto LABEL_54;
    }

    if (v17 != 48)
    {
      goto LABEL_32;
    }

LABEL_15:
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v11;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v11;
    }

LABEL_54:
    ++v5;
    --v7;
    ++v8;
  }

  while (v4 != v5);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return v10;
}

uint64_t toUpper(uint64_t result)
{
  if (result <= 247 && (result - 97) >= 0x1A && (result - 223) >= 0x18)
  {
    if ((result - 154) > 4 || ((1 << (result + 102)) & 0x15) == 0)
    {
      return result;
    }

    return (result - 16);
  }

  if ((result - 154) <= 4 && ((1 << (result + 102)) & 0x15) != 0)
  {
    return (result - 16);
  }

  if (result == 255)
  {
    v1 = 159;
  }

  else
  {
    v1 = result - 32;
  }

  if (result == 223)
  {
    return 223;
  }

  else
  {
    return v1;
  }
}

uint64_t PRrule(unsigned __int8 *a1, int a2, unsigned __int16 a3)
{
  if (!a1)
  {
    return 230;
  }

  v6 = a1 + 20;
  v7 = PRGetAppElem(*a1);
  if (!v7)
  {
    v10 = 0xE6FFFFFF93;
LABEL_19:
    *(a1 + 20) = v10;
    v12 = 520;
LABEL_34:
    *(a1 + 14) = v12;
    return 230;
  }

  v8 = v7;
  v9 = a3;
  *(v7 + 32) = v6;
  if (a2 > 1023)
  {
    if (a2 <= 1535)
    {
      if (a2 != 1024)
      {
        if (a2 != 1280)
        {
LABEL_32:
          v11 = 0xE6FFFFFF95;
          goto LABEL_33;
        }

        if (a3 - 3 >= 3)
        {
          v11 = 0xE6FFFFFF94;
LABEL_33:
          *(a1 + 20) = v11;
          v12 = 522;
          goto LABEL_34;
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

    if (a2 != 1536 && a2 != 1792)
    {
      goto LABEL_32;
    }
  }

  else if (a2 > 511)
  {
    if (a2 == 512)
    {
      goto LABEL_17;
    }

    if (a2 != 768)
    {
      goto LABEL_32;
    }
  }

  else if (a2 != 17)
  {
    if (a2 != 256)
    {
      goto LABEL_32;
    }

LABEL_17:
    if (a3 - 1 >= 2)
    {
      v10 = 0xE6FFFFFF94;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (a3)
  {
    *(a1 + 20) = 0xE6FFFFFF94;
    v12 = 521;
    goto LABEL_34;
  }

LABEL_24:
  if (a2 <= 511)
  {
    if (a2 == 17)
    {
      release(a1);
      return 0;
    }
  }

  else
  {
    if (a2 == 512)
    {
      v15 = a1[6];
      if ((~v15 & 0xC) == 0 || !a1[6] || (v15 & 3) == 3)
      {
        *(a1 + 20) = 0xE6FFFFFF85;
        v12 = 524;
        goto LABEL_34;
      }

      goto LABEL_43;
    }

    if (a2 != 768 && a2 != 1024)
    {
      goto LABEL_43;
    }
  }

  if (*(a1 + 1))
  {
    v11 = 0xE6FFFFFF85;
    goto LABEL_33;
  }

  a1[16] = 0;
  if (a2 == 1024 && !a1[7])
  {
    *(a1 + 20) = 0xE6FFFFFF85;
    v12 = 523;
    goto LABEL_34;
  }

LABEL_43:
  v16 = PRGetDbElem(*a1, a1[1]);
  if (!v16)
  {
    v26 = *(v8 + 32);
    *v26 = 0xE6FFFFFF92;
    *(v26 + 8) = 524;
    return 230;
  }

  v17 = v16;
  v13 = 0;
  HIDWORD(v19) = a2 - 256;
  LODWORD(v19) = a2 - 256;
  v18 = v19 >> 8;
  if (v18 <= 2)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        LongTypeDescription = setStatus(v8, v16, a1, v9 != 1);
        goto LABEL_71;
      }

      if (v18 != 2)
      {
        goto LABEL_72;
      }

      LongTypeDescription = getLongTypeDescription(v8, v16, a1);
    }

    else
    {
      LongTypeDescription = getRuleStatus(v8, v16, a1, v9 != 1);
    }

LABEL_71:
    v13 = LongTypeDescription;
    goto LABEL_72;
  }

  if (v18 <= 4)
  {
    if (v18 == 3)
    {
      if (v9 == 1)
      {
        LongTypeDescription = getTypeDescriptions(v8, v16, a1);
      }

      else
      {
        LongTypeDescription = getRuleDescriptions(v8, v16, a1);
      }

      goto LABEL_71;
    }

    v20 = 0x30201000000uLL >> (8 * v9);
    if (v9 >= 6)
    {
      LOBYTE(v20) = 0;
    }

    v21 = a1[2];
    v22 = v20 & 3;
    v23 = v8;
    v24 = v17;
    v25 = 0;
    goto LABEL_66;
  }

  if (v18 == 5)
  {
    v21 = a1[2];
    v22 = *(*(v16 + 48) + 324) & 3;
    v23 = v8;
    v24 = v17;
    v25 = 1;
LABEL_66:
    LongTypeDescription = PRloadProfile(v23, v24, v21, v22, v25);
    goto LABEL_71;
  }

  if (v18 == 6)
  {
    if ((*(*(v16 + 48) + 324) & 3u) > 1)
    {
      v13 = 0;
      if ((*(*(v16 + 48) + 324) & 3) == 2)
      {
        v28 = 4;
      }

      else
      {
        v28 = 5;
      }
    }

    else
    {
      v13 = 0;
      if ((*(*(v16 + 48) + 324) & 3) == 0)
      {
        *(a1 + 9) = 0;
        goto LABEL_72;
      }

      v28 = 3;
    }

    *(a1 + 9) = v28;
  }

LABEL_72:
  if (a2 != 1280 && a2 != 1536)
  {
    if (a1[2])
    {
      v29 = *(v8 + 32);
      *v29 = 0xE6FFFFFF8FLL;
      *(v29 + 8) = 536;
    }

    else
    {
      v30 = *(v17 + 136);
      if (v30)
      {
        free(v30);
        *(v17 + 136) = 0;
      }
    }
  }

  return v13;
}

void release(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 16);
      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t getLongTypeDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 2))
  {
    v4 = *(a1 + 32);
    *v4 = 0xE6FFFFFF8ELL;
    v5 = 744;
LABEL_8:
    *(v4 + 8) = v5;
    return 230;
  }

  v8 = *(a2 + 48);
  *(a2 + 136) = 0;
  v9 = *(v8 + 32);
  v10 = *(v8 + 312);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v8 + 200);
  v13 = *(v8 + 224);
  v22 = 0;
  v14 = *(v8 + 304);
  if (getTypeIndex(v9, &v22, *(v8 + 26), *(a3 + 3), 0))
  {
    v4 = *(a1 + 32);
    *v4 = 0xE6FFFFFF8ELL;
    v5 = 536;
    goto LABEL_8;
  }

  v16 = bswap32(*(v13 + 4 * v22));
  if (v16 == -1)
  {
    return 4;
  }

  v23 = 0;
  v21 = 0;
  v20 = 0;
  result = getOneDesc(a1, a2, a3, v8, &v23, &v20, &v21, *(v8 + 4) + 4 * v16, 1);
  if (!result)
  {
    v24 = 0;
    if (newListNode(a3, &v24))
    {
      v17 = v24;
      *v24 = v23;
      *(v17 + 4) = v21;
      *(v17 + 10) = *(a3 + 3);
      *(v17 + 12) = v20;
      OneStatus = getOneStatus(v11, v14, v12, v22, 0);
      result = 0;
      *(v17 + 11) = OneStatus;
    }

    else
    {
      free(v23);
      v19 = *(a1 + 32);
      *v19 = 0xDC00000078;
      *(v19 + 8) = 536;
      return 220;
    }
  }

  return result;
}

uint64_t getTypeDescriptions(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[2])
  {
    v4 = *(a1 + 32);
    *v4 = 0xE6FFFFFF8ELL;
    *(v4 + 8) = 744;
    return 230;
  }

  else
  {
    v8 = *(a2 + 48);
    *(a2 + 136) = 0;
    v9 = *(v8 + 32);
    v10 = *(v8 + 312);
    if (v10)
    {
      v23 = *v10;
    }

    else
    {
      v23 = 0;
    }

    v11 = *(v8 + 200);
    v12 = *(v8 + 208);
    v26 = 0;
    v13 = *(v8 + 304);
    if (getTypeIndex(v9, &v26, *(v8 + 26), a3[3], 1))
    {
      return 4;
    }

    else
    {
      if ((v26 + a3[7]) >= *(v8 + 26))
      {
        v14 = *(v8 + 26);
      }

      else
      {
        v14 = (v26 + a3[7]);
      }

      if (v26 >= v14)
      {
        return 0;
      }

      else
      {
        v21 = v13;
        v22 = v11;
        v27 = 0;
        v28 = 0;
        v25 = 0;
        v15 = 4 * v26;
        v24 = 0;
        while (1)
        {
          OneDesc = getOneDesc(a1, a2, a3, v8, &v27, &v24, &v25, bswap32(*(v12 + v15)) + *(v8 + 4), 0);
          if (OneDesc)
          {
            v5 = OneDesc;
            goto LABEL_20;
          }

          if (!newListNode(a3, &v28))
          {
            break;
          }

          v17 = v28;
          *v28 = v27;
          *(v17 + 4) = v25;
          v18 = v26;
          *(v17 + 10) = *(v9 + v26);
          *(v17 + 12) = v24;
          v5 = 0;
          *(v17 + 11) = getOneStatus(v23, v21, v22, v18, 0);
          v15 += 4;
          if (v14 <= ++v26)
          {
            return v5;
          }
        }

        free(v27);
        v19 = *(a1 + 32);
        *v19 = 0xDC00000078;
        *(v19 + 8) = 537;
        v5 = 220;
LABEL_20:
        release(a3);
      }
    }
  }

  return v5;
}

uint64_t getRuleDescriptions(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[2])
  {
    v4 = *(a1 + 32);
    *v4 = 0xE6FFFFFF8ELL;
    v5 = 744;
LABEL_8:
    *(v4 + 8) = v5;
    return 230;
  }

  v8 = *(a2 + 48);
  *(a2 + 136) = 0;
  v9 = *(v8 + 32);
  v10 = *(v8 + 312);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v8 + 40);
  v13 = *(v8 + 200);
  v14 = *(v8 + 216);
  v42 = 0;
  v15 = *(v8 + 304);
  if (getTypeIndex(v9, &v42, *(v8 + 26), a3[3], 0))
  {
    v4 = *(a1 + 32);
    *v4 = 0xE6FFFFFF8ELL;
    v5 = 537;
    goto LABEL_8;
  }

  v35 = v15;
  v36 = v14;
  v18 = (2 * v42) | 1;
  v19 = *(v12 + v18) | (*(v12 + 2 * v42) << 8);
  v20 = (v13 + 2 * v42);
  v21 = *(v13 + v18) | (*v20 << 8);
  v34 = a2;
  if (v42)
  {
    v21 -= bswap32(*(v20 - 1)) >> 16;
  }

  v38 = v21 + v19;
  v22 = a3[4];
  v23 = v19 + v22 + 0xFFFF;
  v37 = a3;
  v39 = a3[7];
  v24 = (v21 + v19) <= (v19 + v22 - 1) || a3[7] == 0;
  v26 = v35;
  v25 = v36;
  if (v24)
  {
    return 4 * (v37[16] == 0);
  }

  v43 = 0;
  v44 = 0;
  v41 = 0;
  v27 = 4 * (v19 + v22 - 1);
  v40 = 0;
  while (1)
  {
    OneStatus = getOneStatus(v11, v26, v13, v42, v22);
    if (OneStatus < 8)
    {
      goto LABEL_22;
    }

    v29 = bswap32(*(v25 + v27));
    if (v29 == -1)
    {
      goto LABEL_22;
    }

    v30 = OneStatus;
    OneDesc = getOneDesc(a1, v34, v37, v8, &v43, &v40, &v41, *(v8 + 4) + v29, 0);
    if (OneDesc)
    {
      v16 = OneDesc;
      goto LABEL_27;
    }

    if (!newListNode(v37, &v44))
    {
      break;
    }

    --v39;
    v32 = v44;
    *v44 = v43;
    *(v32 + 4) = v41;
    *(v32 + 10) = v22;
    *(v32 + 12) = v40;
    *(v32 + 11) = v30;
    v26 = v35;
    v25 = v36;
LABEL_22:
    if (++v23 < v38)
    {
      v27 += 4;
      LOWORD(v22) = v22 + 1;
      if (v39 > 0)
      {
        continue;
      }
    }

    return 4 * (v37[16] == 0);
  }

  free(v43);
  v33 = *(a1 + 32);
  *v33 = 0xDC00000078;
  *(v33 + 8) = 538;
  v16 = 220;
LABEL_27:
  release(v37);
  return v16;
}

uint64_t getRuleStatus(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v28 = 0;
  v27 = 0;
  if (a3[2])
  {
    v5 = *(a1 + 32);
    *v5 = 0xE6FFFFFF8ELL;
    v6 = 744;
LABEL_11:
    *(v5 + 8) = v6;
    return 230;
  }

  v8 = *(a2 + 48);
  *(a2 + 136) = 0;
  v9 = *(v8 + 32);
  v10 = *(v8 + 200);
  v11 = *(v8 + 312);
  if (v11)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 216);
  v14 = *(v8 + 40);
  v15 = *(v8 + 304);
  v16 = a3[3];
  v17 = a3[4];
  if (a4)
  {
    v18 = a3[4];
  }

  else
  {
    v18 = 0;
  }

  v26 = 0;
  if (getPosition(&v26, &v28 + 1, &v28, &v27, v9, v10, *(v8 + 26), v16, v17))
  {
    v5 = *(a1 + 32);
    *v5 = 0xE6FFFFFF8ELL;
    v6 = 538;
    goto LABEL_11;
  }

  if (v18 && (!v28 || bswap32(*(v13 + ((4 * ((*(v14 + 2 * v26 + 1) | (*(v14 + 2 * v26) << 8)) + v18) - 4) & 0x3FFFC))) == -1))
  {
    return 4;
  }

  v29 = 0;
  if (newListNode(a3, &v29))
  {
    if (v12)
    {
      if (getMapVal(v12, v28, 1))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      *(v29 + 11) |= v20;
    }

    MapVal = getMapVal(v15, v28, 1);
    result = 0;
    v22 = v29;
    if (MapVal)
    {
      v23 = 8;
    }

    else
    {
      v23 = 4;
    }

    *(v29 + 11) |= v23;
    *v22 = 0;
    *(v22 + 8) = 0;
    if (v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = v16;
    }

    *(v22 + 10) = v24;
    *(v22 + 12) = 0;
  }

  else
  {
    v25 = *(a1 + 32);
    *v25 = 0xDC00000078;
    *(v25 + 8) = 539;
    return 220;
  }

  return result;
}

uint64_t setStatus(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v23 = 0;
  if (a3[2])
  {
    v5 = *(a1 + 32);
    *v5 = 0xE6FFFFFF8ELL;
    v6 = 744;
LABEL_15:
    *(v5 + 8) = v6;
    return 230;
  }

  v8 = *(a2 + 48);
  *(a2 + 136) = 0;
  v9 = *(v8 + 312);
  if (v9)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  if ((a3[6] & 3) != 0 && v10 == 0)
  {
    v5 = *(a1 + 32);
    v17 = 0xE6FFFFFF85;
    goto LABEL_14;
  }

  v12 = *(v8 + 32);
  v13 = *(v8 + 200);
  v14 = *(v8 + 304);
  v15 = *(v8 + 26);
  v16 = a3[3];
  if (a4)
  {
    if (getPosition(0, 0, &v23, 0, v12, v13, v15, v16, a3[4]))
    {
      v5 = *(a1 + 32);
      v17 = 0xE6FFFFFF8ELL;
LABEL_14:
      *v5 = v17;
      v6 = 740;
      goto LABEL_15;
    }

    if (!v23)
    {
      v5 = *(a1 + 32);
      *v5 = 0xE6FFFFFF8ELL;
      v6 = 741;
      goto LABEL_15;
    }
  }

  else if (getPosition(0, &v23, 0, 0, v12, v13, v15, v16, 0))
  {
    v5 = *(a1 + 32);
    *v5 = 0xE6FFFFFF8ELL;
    v6 = 742;
    goto LABEL_15;
  }

  if (v10)
  {
    if (a3[6])
    {
      v19 = v23 >> 3;
      v20 = *(v10 + v19) & (-129 >> (v23 & 7));
    }

    else
    {
      if ((a3[6] & 2) == 0)
      {
        goto LABEL_26;
      }

      v19 = v23 >> 3;
      v20 = *(v10 + v19) | (0x80u >> (v23 & 7));
    }

    *(v10 + v19) = v20;
    *(v8 + 324) |= 0x80u;
  }

LABEL_26:
  if ((a3[6] & 4) != 0)
  {
    result = 0;
    v21 = v23 >> 3;
    v22 = *(v14 + v21) & (-129 >> (v23 & 7));
    goto LABEL_30;
  }

  result = 0;
  if ((a3[6] & 8) != 0)
  {
    v21 = v23 >> 3;
    v22 = *(v14 + v21) | (0x80u >> (v23 & 7));
LABEL_30:
    *(v14 + v21) = v22;
  }

  return result;
}

uint64_t PRsleepRuleData(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    *v3 = 0xE6FFFFFF8FLL;
    *(v3 + 8) = 536;
    return 230;
  }

  else
  {
    result = *(a2 + 136);
    if (result)
    {
      free(result);
      result = 0;
      *(a2 + 136) = 0;
    }
  }

  return result;
}

uint64_t PRwakeRuleData(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, char a14)
{
  if (a14)
  {
    v14 = *(a1 + 32);
    *v14 = 0xE6FFFFFF8ELL;
    *(v14 + 8) = 744;
    return 230;
  }

  else
  {
    v16 = *(a2 + 48);
    *(a2 + 136) = 0;
    if (a3)
    {
      *a3 = v16;
    }

    if (a4)
    {
      *a4 = v16[4];
    }

    if (a5)
    {
      *a5 = v16[5];
    }

    if (a6)
    {
      *a6 = v16[25];
    }

    if (a7)
    {
      *a7 = v16[26];
    }

    if (a8)
    {
      *a8 = v16[27];
    }

    if (a9)
    {
      *a9 = v16[28];
    }

    if (a10)
    {
      *a10 = v16[32];
    }

    if (a11)
    {
      *a11 = v16[34];
    }

    if (a12)
    {
      v17 = v16[39];
      if (v17)
      {
        v17 = *v17;
      }

      *a12 = v17;
    }

    result = 0;
    if (a13)
    {
      *a13 = v16[38];
    }
  }

  return result;
}

uint64_t getOneDesc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, char **a5, _BYTE *a6, _WORD *a7, uint64_t a8, char a9)
{
  v9 = a8;
  v17 = *(a2 + 136);
  if (v17)
  {
    v18 = *(a2 + 144);
  }

  else
  {
    v19 = malloc_type_malloc(0x400uLL, 0xA283D099uLL);
    *(a2 + 136) = v19;
    if (!v19)
    {
      v49 = *(a1 + 32);
      *v49 = 0xDC00000078;
      v50 = 742;
      goto LABEL_57;
    }

    v17 = v19;
    v18 = 0;
    *(a2 + 144) = 0;
  }

  v59 = v18;
  v20 = *a4;
  v21 = v18 + 1024;
  if (v18 > v9 || v21 <= v9)
  {
    result = loadCache(a1, v17, &v59, v9, 1024, v20);
    if (result)
    {
      return result;
    }

    v18 = v59;
    v21 = v59 + 1024;
  }

  v57 = a5;
  if (a9)
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  if (a9)
  {
    v25 = 4;
  }

  else
  {
    v25 = 3;
  }

  v26 = v17[v9 - v18];
  v27 = v9 + 1;
  v28 = v27 + v26 * v25;
  if (v18 > v28 || v28 >= v21)
  {
    result = loadCache(a1, v17, &v59, v27, 1024, v20);
    if (result)
    {
      return result;
    }

    v18 = v59;
  }

  v30 = v27 - v18;
  if (v26)
  {
    v31 = 0;
    v32 = v26;
    do
    {
      --v32;
      v31 += v24 + (v17[v30 + v31] >> 7);
    }

    while (v32);
    v27 += v31;
    while (1)
    {
      v33 = &v17[v30];
      v34 = *v33;
      v35 = v34 & 0x7F;
      if ((v34 & 0x80000000) == 0)
      {
        break;
      }

      v37 = v33[1] != 0;
      v36 = 2;
      if (v35 != 127)
      {
        goto LABEL_34;
      }

      if (v33[1])
      {
        v36 = 2;
        goto LABEL_41;
      }

LABEL_36:
      v38 = &v33[v36];
      v39 = v33[v36];
      if (a9)
      {
        v39 = v38[1] | (v39 << 8);
      }

      --v26;
      v27 += v39;
      v30 += v24 + (v34 >> 7);
      if (!v26)
      {
        goto LABEL_41;
      }
    }

    v36 = 1;
    v37 = 1;
    if (v35 == 127)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (v35 == *(a3 + 5) && v37)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v36 = 0;
LABEL_41:
  v40 = &v17[v30];
  v41 = &v40[v36];
  v42 = *v41;
  if (a9)
  {
    v42 = v41[1] | (v42 << 8);
  }

  v58 = v42;
  if (*v40 == 127)
  {
    v43 = (a2 + 20);
  }

  else
  {
    v43 = (a3 + 5);
  }

  v44 = *v43;
  *a7 = v42 + 1;
  v45 = malloc_type_calloc((v42 + 1), 1uLL, 0x100004077774924uLL);
  v60 = v45;
  if (!v45)
  {
    v49 = *(a1 + 32);
    *v49 = 0xDC00000078;
    v50 = 743;
LABEL_57:
    *(v49 + 8) = v50;
    return 220;
  }

  v46 = v45;
  v47 = v59;
  if (v59 <= v27 + v42 && v27 + v42 < v59 + 1024)
  {
LABEL_60:
    memcpy(v46, &v17[(v27 - v47)], v42);
    goto LABEL_61;
  }

  if (!a9)
  {
    result = loadCache(a1, v17, &v59, v27, 1024, v20);
    if (result)
    {
      return result;
    }

    v47 = v59;
    goto LABEL_60;
  }

  result = loadCache(a1, v45, 0, v27, v42, v20);
  if (result)
  {
    return result;
  }

LABEL_61:
  SLcrypt(v46, v42, &ruleKey, 7);
  v51 = SLLngToA(v44);
  if (v44 <= 7)
  {
    if (v44 != 5)
    {
      if (v44 == 6 && *(a2 + 16) == 64)
      {
        OneToMultiChrCnv(&v60, &v58, 223, a1);
      }

      goto LABEL_76;
    }

    v52 = *(a2 + 18);
    if ((v52 & 0x10) != 0)
    {
      OneToMultiChrCnv(&v60, &v58, 247, a1);
      OneToMultiChrCnv(&v60, &v58, 230, a1);
      v52 = *(a2 + 18);
    }

    if ((v52 & 0x40) == 0)
    {
      goto LABEL_76;
    }

    v53 = v60;
    v54 = v58;
    v55 = 5;
    goto LABEL_75;
  }

  if (v44 != 8)
  {
    if (v44 == 16)
    {
      ConvertString(v46, a2);
    }

    goto LABEL_76;
  }

  if ((*(a2 + 18) & 0x40) != 0)
  {
    v54 = v42;
    v53 = v46;
    v55 = 8;
LABEL_75:
    ToUpUnaccentedCnv(v53, v54, v55, v51);
  }

LABEL_76:
  v56 = v60;
  if (*(a1 + 28))
  {
    SLchcnv(v60, v58, v60, 0, v44);
    v56 = v60;
  }

  result = 0;
  *(a2 + 144) = v59;
  *v57 = v56;
  *a6 = v44;
  return result;
}

uint64_t newListNode(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040DD0DA86DuLL);
  if (result)
  {
    if (*(a1 + 8))
    {
      *(*a2 + 16) = result;
      v5 = *(a1 + 16) + 1;
    }

    else
    {
      *(a1 + 8) = result;
      v5 = 1;
    }

    *(a1 + 16) = v5;
    *a2 = result;
    return 1;
  }

  return result;
}

uint64_t getOneStatus(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  if (a4)
  {
    v5 = a5 + a4 + (bswap32(*(a3 + (2 * a4) - 2)) >> 16);
  }

  if (a1)
  {
    if (getMapVal(a1, v5, 1))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (getMapVal(a2, v5, 1))
  {
    v8 = 8;
  }

  else
  {
    v8 = 4;
  }

  return (v8 | v7);
}

uint64_t loadCache(uint64_t a1, void *a2, int *a3, int a4, int a5, uint64_t a6)
{
  v6 = a6;
  v15 = 0;
  if (SLSeek(a6, a4, 0))
  {
    v12 = *(a1 + 32);
    v13 = 0xDC0000006FLL;
LABEL_5:
    *v12 = v13;
    *(v12 + 8) = 743;
    return 220;
  }

  if (SLFRead(v6, a5, a2, &v15))
  {
    v12 = *(a1 + 32);
    v13 = 0xDC00000070;
    goto LABEL_5;
  }

  result = 0;
  if (a3)
  {
    *a3 = a4;
  }

  return result;
}

uint64_t PRSfxGet(const char *a1, int a2, _BYTE *a3, _BYTE *a4, _WORD *a5, uint64_t a6)
{
  *a3 = 0;
  *a4 = 0;
  v7 = *(a6 + 56);
  if (!v7)
  {
    v22 = 0;
LABEL_28:
    result = 0;
    *a5 = v22;
    return result;
  }

  v12 = *(v7 + 1);
  v13 = *v7;
  v14 = *(v7 + 1);
  v15 = v7[1];
  v16 = strlen(a1);
  if (!a2)
  {
    v20 = 0;
    v23 = v16;
    if (v16 <= 1)
    {
      v23 = 1;
    }

    v17 = (v23 - 1);
    v18 = 128;
    v21 = 1;
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = v16;
    if (v16 <= 1)
    {
      v19 = 1;
    }

    v20 = v19 - 1;
    v21 = -1;
LABEL_11:
    if (v17 == v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = 0;
        v25 = ((v25 & 0x7F) << 8) + 19 * (v25 >> 7) + a1[v20];
        if (v25 > 0x7FECu)
        {
          v25 -= 32749;
        }

        v24 ^= v25 & 0x7FFF;
        v28 = v24 % v13;
        v29 = v13 + (v14 >> 1) + (v14 & v25);
        while (1)
        {
          v30 = (v12 + 3 * v28);
          v31 = __rev16(*v30);
          if (v31 == v25)
          {
            v32 = *(v30 + 2);
            if (v18 == (v32 & 0x80))
            {
              break;
            }
          }

          v28 += v29;
          do
          {
            v28 -= v13;
          }

          while (v28 >= v13);
          if (v15 >= v27)
          {
            ++v27;
            v29 += 2 * (v14 & v25);
            if (v31)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

        a3[v22] = v26;
        a4[v22++] = v32 | 4;
LABEL_25:
        v20 += v21;
        if (v17 == v20)
        {
          break;
        }

        ++v26;
      }

      while (v22 < 6);
    }

    a3[v22] = 0;
    goto LABEL_28;
  }

  return 8;
}

uint64_t PRspace(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v21 = -109;
    v8 = 230;
    v22 = 32;
LABEL_40:
    v23 = *v22;
    *v23 = v21;
    *(v23 + 4) = v8;
    *(v23 + 8) = 680;
    return v8;
  }

  v5 = *(a2 + 16);
  v6 = *(*(a1 + 32) + 2);
  if (*(a3 + 27))
  {
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  *(a3 + 27) = 1;
  if (!v5)
  {
LABEL_39:
    v22 = a2 + 32;
    v21 = -119;
    v8 = 220;
    goto LABEL_40;
  }

LABEL_4:
  v7 = *(v5 + 64);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(v5 + 64);
  do
  {
    if (v9 == v7)
    {
      v14 = *(v5 + 24);
      if (v14)
      {
        v15 = strlen(*(v5 + 24));
        v16 = v15;
        v17 = v6 && v15 >= v6;
        v18 = !v17;
        if (v15 != *(a3 + 27) && v18)
        {
          if (v15)
          {
            v20 = v15;
            while (*v14 == 32)
            {
              ++v14;
              if (!--v20)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
LABEL_35:
            if (!PRliveRule(a2, a3, 0, 52, 82, 0, 1))
            {
              v8 = Makerr(a2, a3, v9, 82, *(v9 + 8) - v16, v16, a3 + 22);
            }
          }
        }
      }
    }

    if (v9 != *(v5 + 80))
    {
      v10 = *(v9 + 48);
      if ((v10 & 0xFFFE) == 2)
      {
        v11 = *(v9 + 40);
        v12 = *(v9 + 48);
        while (*v11 == 32)
        {
          ++v11;
          if (!--v12)
          {
            v13 = *(*(v9 + 24) + (strlen(*(v9 + 24)) - 1));
            if (v13 != 33 && v13 != 63 && (v13 != 46 || (*(v9 + 4) & 0x10000001) != 0) && !PRliveRule(a2, a3, 0, 52, 81, 0, 1))
            {
              v8 = Makerr(a2, a3, v9, 81, *(v9 + 32) + *(v9 + 8), v10, a3 + 22);
            }

            break;
          }
        }
      }
    }

    v9 = *(v9 + 80);
  }

  while (v9);
  return v8;
}

uint64_t Makerr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned int a6, uint64_t a7)
{
  v10 = a4;
  *v22 = 0;
  v13 = PRmkErr(a1, a2, v22, a3, 0, 52, a4);
  if (!v13)
  {
    v14 = *v22;
    **v22 = a5;
    v14[1] = a6;
    if (v10 == 81)
    {
      v13 = 0;
      v14[4] = a5;
      v15 = a6 - 1;
LABEL_4:
      v14[5] = v15;
      return v13;
    }

    v16 = *(a7 + 5);
    if (*(a2 + 20) != 16 && a6 > v16)
    {
      v13 = 0;
      v14[4] = a5;
      v15 = a6 - v16;
      goto LABEL_4;
    }

    v18 = malloc_type_calloc(v16 + 1, 1uLL, 0x100004077774924uLL);
    if (v18)
    {
      v19 = v18;
      memset(v18, 32, *(a7 + 5));
      v19[*(a7 + 5)] = 0;
      v13 = PRaddAlts(a1, *v22, v19, 0, 1uLL, 0);
      free(v19);
    }

    else
    {
      v20 = *(a1 + 32);
      *v20 = 0xDC00000078;
      *(v20 + 8) = 680;
      return 220;
    }
  }

  return v13;
}

uint64_t PRss(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v272 = *MEMORY[0x1E69E9840];
  memset(v265, 0, sizeof(v265));
  v263 = 0u;
  *v264 = 0u;
  v262 = 0u;
  v8 = *(a3 + 16);
  if (!v8)
  {
    v9 = -1004;
    goto LABEL_5;
  }

  if (*(v8 + 56))
  {
    v9 = -1005;
LABEL_5:
    result = 220;
LABEL_6:
    v11 = *(a3 + 32);
    *v11 = v9;
    *(v11 + 4) = result;
    *(v11 + 8) = 1000;
    return result;
  }

  if (!*a1)
  {
    v9 = -101;
    result = 230;
    goto LABEL_6;
  }

  if (!a6)
  {
    *(v8 + 3) = *(v8 + 2);
    *(v8 + 5) = *(v8 + 4);
    *(v8 + 7) = *(v8 + 6);
    *(v8 + 9) = *(v8 + 8);
    *(v8 + 11) = *(v8 + 10);
  }

  *&v263 = 0;
  v264[0] = 0;
  WORD4(v263) = 0;
  result = PRgrowWkBuf(&v263, v264, &v263 + 4, a3, a4);
  if (result)
  {
    return result;
  }

  v264[1] = 0;
  LOWORD(v265[0]) = 0;
  result = PRgrowRaw(a3, &v262);
  if (result)
  {
    return result;
  }

  DWORD2(v265[0]) = 0;
  WORD1(v265[0]) = 0;
  WORD5(v263) = 0;
  *&v262 = a1;
  WORD4(v262) = a2;
  *(&v265[1] + 1) = a5;
  *(v265 + 13) = *(v8 + 7);
  BYTE12(v265[0]) = *(v8 + 11);
  BYTE4(v265[0]) = a7;
  v268 = 0;
  v267 = 0;
  memset(v266, 0, sizeof(v266));
  v17 = SLLngToC(1, *(a4 + 20));
  v18 = 0;
  v19 = 0;
  v246 = 0;
  v220 = 0;
  v221 = 0;
  v20 = 0;
  v223 = 0;
  v228 = 0;
  v229 = 0;
  v224 = 0;
  v225 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  BYTE2(v266[0]) = 0;
  LOWORD(v266[0]) = 256;
  LOWORD(v267) = 0;
  BYTE11(v265[0]) = 0;
  v30 = a3;
  v261 = a3;
  v227 = v17;
  while (2)
  {
    if (v27 > 0xCu)
    {
      v32 = v29;
      if (!v21)
      {
        goto LABEL_130;
      }

LABEL_19:
      v33 = 0;
      goto LABEL_133;
    }

    if (!v21 && v27)
    {
      v23 = 0;
      v24 = v22;
      v31 = v28;
      v32 = v29;
      goto LABEL_131;
    }

    v247 = v20;
    v238 = v19;
    v236 = v22;
    v34 = 0;
    v35 = *(v30 + 28);
    v36 = *(a4 + 64);
    v37 = v262;
    do
    {
      if (*(v30 + 28) && (v38 = *(v262 + a2), v38 < 0))
      {
        v39 = (v17 + (v38 & 0x7F));
      }

      else
      {
        v39 = (v262 + a2);
      }

      v40 = *v39;
      v41 = *(v36 + 16 + 4 * *v39);
      if ((v41 & 0x800) != 0)
      {
        if (v40 == *(a4 + 23))
        {
          v34 = 1;
        }

        else if (v40 == *(a4 + 24))
        {
          v34 = 0;
        }
      }

      else if (!v34)
      {
        break;
      }

      ++a2;
    }

    while (*v39);
    v232 = v27;
    v252 = v28;
    v255 = v21;
    v244 = v18;
    v258 = v29;
    if ((v41 & 0x1000) == 0)
    {
      goto LABEL_34;
    }

    v44 = a2 + 1;
    v32 = (v29 + 1);
    if (*v39 > 0x3Bu)
    {
      if (v40 != 62 && v40 != 60)
      {
        goto LABEL_34;
      }
    }

    else if (v40 != 45)
    {
      if (v40 != 46)
      {
        goto LABEL_34;
      }

      v45 = 0;
      LODWORD(v46) = 1;
      LODWORD(v47) = v29 + 1;
      v222 = a2 + 1;
      v28 = 1;
      v48 = 1;
      while (1)
      {
        v49 = 0;
        v50 = v36 + 16;
        do
        {
          if (v35 && *(v37 + v44) < 0)
          {
            v51 = (v17 + (*(v37 + v44) & 0x7F));
          }

          else
          {
            v51 = (v37 + v44);
          }

          v52 = *v51;
          if ((*(v50 + 4 * v52) & 0x800) != 0)
          {
            if (v52 == *(a4 + 23))
            {
              v49 = 1;
            }

            else if (v52 == *(a4 + 24))
            {
              v49 = 0;
            }
          }

          v53 = *(v50 + 4 * v52) & 0x800 | v49;
          v55 = v53 == 0;
          v54 = v53 != 0;
          if (v55)
          {
            v44 = v44;
          }

          else
          {
            v44 = v44 + 1;
          }
        }

        while (v52 && v54);
        if (v45 && v52 != 32)
        {
          v44 = v222;
          goto LABEL_371;
        }

        v55 = v46 != 1 && v45 == 0;
        v56 = !v55;
        if (v52 == 32 && v56 != 0)
        {
          v58 = v47;
          if (v47 >= WORD4(v263))
          {
            v230 = v48;
            v59 = v47;
            v60 = PRgrowWkBuf(&v263, v264, &v263 + 4, v30, a4);
            v48 = v230;
            LODWORD(v47) = v59;
            v17 = v227;
            v30 = v261;
            if (v60)
            {
              return 220;
            }
          }

          if ((v58 & 0xF) == 0 && *(*(a4 + 64) + 1040))
          {
            *(v264[0] + (v58 >> 4)) = v44;
          }

          v61 = 0;
          *(v263 + v47) = 32;
          LOWORD(v44) = v44 + 1;
          do
          {
            if (*(v30 + 28) && *(v262 + v44) < 0)
            {
              v62 = (v17 + (*(v262 + v44) & 0x7F));
            }

            else
            {
              v62 = (v262 + v44);
            }

            v52 = *v62;
            if ((*(*(a4 + 64) + 16 + 4 * v52) & 0x800) != 0)
            {
              if (v52 == *(a4 + 23))
              {
                v61 = 1;
              }

              else if (v52 == *(a4 + 24))
              {
                v61 = 0;
              }
            }

            v63 = *(*(a4 + 64) + 16 + 4 * v52) & 0x800 | v61;
            v55 = v63 == 0;
            v64 = v63 != 0;
            if (v55)
            {
              v44 = v44;
            }

            else
            {
              v44 = v44 + 1;
            }
          }

          while (v52 && v64);
          LODWORD(v46) = v46 + 1;
          LODWORD(v47) = v47 + 1;
          v45 = 1;
        }

        if (v52 != 46)
        {
          break;
        }

        v65 = v47;
        if (v47 >= WORD4(v263))
        {
          v226 = v28;
          v231 = v48;
          v66 = v45;
          v67 = v47;
          v68 = PRgrowWkBuf(&v263, v264, &v263 + 4, v30, a4);
          v45 = v66;
          v48 = v231;
          v28 = v226;
          LODWORD(v47) = v67;
          v17 = v227;
          v30 = v261;
          if (v68)
          {
            return 220;
          }
        }

        if ((v65 & 0xF) == 0 && *(*(a4 + 64) + 1040))
        {
          *(v264[0] + (v65 >> 4)) = v44;
        }

        *(v263 + v47) = 46;
        v46 = (v46 + 1);
        ++v44;
        v47 = (v47 + 1);
        if (v48 == 3)
        {
          LOWORD(v29) = v258;
        }

        else
        {
          LOWORD(v29) = v258;
          if (v48 != 1 || *(a4 + 20) == 10 && !v45)
          {
            v222 = v44;
            v32 = v47;
            v28 = v46;
          }
        }

        ++v48;
        v35 = *(v30 + 28);
        v36 = *(a4 + 64);
        v37 = v262;
      }

      v44 = v222;
      goto LABEL_370;
    }

    v28 = 1;
    while (1)
    {
      v79 = 0;
      v80 = v36 + 16;
      LOWORD(v81) = v44;
      do
      {
        if (v35 && *(v37 + v81) < 0)
        {
          v82 = (v17 + (*(v37 + v81) & 0x7F));
        }

        else
        {
          v82 = (v37 + v81);
        }

        v83 = *v82;
        if ((*(v80 + 4 * v83) & 0x800) != 0)
        {
          if (v83 == *(a4 + 23))
          {
            v79 = 1;
          }

          else if (v83 == *(a4 + 24))
          {
            v79 = 0;
          }
        }

        v84 = *(v80 + 4 * v83) & 0x800 | v79;
        v55 = v84 == 0;
        v85 = v84 != 0;
        if (v55)
        {
          v81 = v81;
        }

        else
        {
          v81 = v81 + 1;
        }
      }

      while (v83 && v85);
      if (v83 != v40)
      {
        break;
      }

      if (v32 >= WORD4(v263))
      {
        v86 = PRgrowWkBuf(&v263, v264, &v263 + 4, v30, a4);
        v30 = v261;
        if (v86)
        {
          return 220;
        }
      }

      if ((v32 & 0xF) == 0 && *(*(a4 + 64) + 1040))
      {
        *(v264[0] + (v32 >> 4)) = v81;
      }

      *(v263 + v32) = v40;
      v28 = (v28 + 1);
      v44 = v81 + 1;
      v32 = (v32 + 1);
      v35 = *(v30 + 28);
      v36 = *(a4 + 64);
      v37 = v262;
    }

    if (v40 == 45)
    {
      LOWORD(v29) = v258;
      if (*(a4 + 20) == 6 && v28 == 2)
      {
        goto LABEL_34;
      }

      goto LABEL_371;
    }

LABEL_370:
    LOWORD(v29) = v258;
LABEL_371:
    if (v28 >= 2u)
    {
      if (WORD4(v263) <= v29)
      {
        v179 = PRgrowWkBuf(&v263, v264, &v263 + 4, v30, a4);
        v30 = v261;
        if (v179)
        {
          return 220;
        }
      }

      v43 = v258;
      if ((v258 & 0xF) == 0 && *(*(a4 + 64) + 1040))
      {
        *(v264[0] + (v258 >> 4)) = a2;
      }

      *(v263 + v258) = v40;
      goto LABEL_40;
    }

LABEL_34:
    if (WORD4(v263) <= v29)
    {
      v42 = PRgrowWkBuf(&v263, v264, &v263 + 4, v30, a4);
      v30 = v261;
      if (v42)
      {
        return 220;
      }
    }

    v43 = v258;
    if ((v258 & 0xF) == 0 && *(*(a4 + 64) + 1040))
    {
      *(v264[0] + (v258 >> 4)) = a2;
    }

    *(v263 + v258) = v40;
    v32 = (v258 + 1);
    v44 = a2 + 1;
    v28 = 1;
LABEL_40:
    v20 = v247;
    if ((v41 & 0x400) == 0)
    {
      a2 = v44;
      v26 = v43;
      v25 = v252;
      v23 = v255;
      v24 = v236;
      v22 = v41;
      v21 = v40;
      v19 = v238;
      v18 = v244;
      goto LABEL_129;
    }

    v69 = 0;
    do
    {
      while (1)
      {
        a2 = v44;
        if (*(v30 + 28) && (v70 = *(v262 + v44), v70 < 0))
        {
          v71 = (v17 + (v70 & 0x7F));
        }

        else
        {
          v71 = (v262 + v44);
        }

        v72 = *v71;
        v73 = *(*(a4 + 64) + 16 + 4 * v72);
        if ((v73 & 0x800) != 0)
        {
          break;
        }

        if (v69)
        {
          goto LABEL_126;
        }

        v69 = 0;
        v74 = v73 & 0x2000000;
        ++v44;
        if (v72)
        {
          v75 = v74 == 0;
        }

        else
        {
          v75 = 1;
        }

        if (v75)
        {
          goto LABEL_128;
        }
      }

      if (v72 == *(a4 + 23))
      {
        v69 = 1;
      }

      else if (v72 == *(a4 + 24))
      {
        v69 = 0;
      }

LABEL_126:
      ++v44;
    }

    while (v72);
    ++a2;
LABEL_128:
    v26 = v43;
    v25 = v252;
    v23 = v255;
    v24 = v236;
    v22 = v41;
    v21 = v40;
    v19 = v238;
    v18 = v244;
    v20 = v247;
LABEL_129:
    v27 = v232;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_130:
    v31 = v25;
    v29 = v26;
LABEL_131:
    if (!BYTE4(v265[0]))
    {
      goto LABEL_507;
    }

    v21 = 0;
    v33 = 1;
    BYTE11(v265[0]) = 1;
    v25 = v31;
    v26 = v29;
LABEL_133:
    v29 = v32;
    v76 = 0x10000;
    v77 = v20;
    switch(v27)
    {
      case 0:
        if ((v22 & 0x2000000) == 0)
        {
          goto LABEL_461;
        }

        WORD3(v265[0]) = v32 - 1;
        goto LABEL_248;
      case 1:
        if ((v22 & 0x2000000) == 0)
        {
          WORD4(v265[0]) = v32 + ~WORD3(v265[0]);
LABEL_461:
          v27 = 23;
LABEL_462:
          v77 = v20;
LABEL_463:
          v20 = v77;
          if (v268)
          {
            goto LABEL_511;
          }

          continue;
        }

        if (!v33)
        {
LABEL_248:
          v27 = 1;
          goto LABEL_462;
        }

        WORD4(v265[0]) = v32 + ~WORD3(v265[0]);
LABEL_511:
        v219 = v30;
        result = PRnormalize(v30, a4, &v262);
        if (!result)
        {
          result = PRssPost(v219, a4, &v262);
          if (!result)
          {
            PRssTidyUp(&v262);
            return 0;
          }
        }

        return result;
      case 2:
        v95 = *(v18 + 9);
        if (v95 > 7)
        {
          *(v18 + 5) = 0x10000000;
          v96 = v18 + 2;
        }

        else
        {
          *(v18 + 9) = v95 + 1;
          v96 = &v18[2 * v95 + 2];
        }

        *v96 += v25;
        if ((v22 & 4) != 0)
        {
          goto LABEL_281;
        }

        if ((v22 & 0x1000000) != 0)
        {
          v137 = *(v18 + 5) & 0xBFFFFFFF;
          goto LABEL_339;
        }

        if ((v22 & 0x2000000) != 0)
        {
          goto LABEL_284;
        }

        if ((v22 & 0x40000000) != 0)
        {
          *(v18 + 5) |= 0x8000u;
        }

        if ((v24 & 0x8000) != 0)
        {
          v128 = *(v18 + 5) | 0x8000000;
        }

        else
        {
          if ((v24 & 1) == 0)
          {
            goto LABEL_392;
          }

          v128 = *(v18 + 5) | 0x4000000;
        }

        goto LABEL_391;
      case 3:
        v103 = *(v18 + 9);
        if (v103 > 7)
        {
          *(v18 + 5) = 0x10000000;
          v104 = v18 + 2;
        }

        else
        {
          *(v18 + 9) = v103 + 1;
          v104 = &v18[2 * v103 + 2];
        }

        *v104 += v25;
        if ((v24 & 0x800000) != 0)
        {
          *(v18 + 5) |= 0x4000u;
          BYTE4(v266[1]) = v23;
          WORD3(v266[1]) = v26 - v25;
          WORD4(v266[1]) = v25;
          HIDWORD(v266[1]) = v24;
        }

        if ((v22 & 0x1000000) != 0)
        {
          v136 = *(v18 + 5);
          *(v18 + 5) = v136 & 0xBFFFFFFF;
          if ((v22 & 2) != 0)
          {
            goto LABEL_340;
          }

          v137 = v136 & 0xBFFFBFFF;
          goto LABEL_339;
        }

        if ((v22 & 0x2000000) != 0)
        {
LABEL_284:
          v27 = 12;
          goto LABEL_462;
        }

        if ((v24 & 0x8000) != 0)
        {
          v135 = 0x8000000;
        }

        else
        {
          v135 = (v24 & 1) << 26;
        }

        v128 = *(v18 + 5) & 0xFFFFBFFF | v135;
        goto LABEL_391;
      case 4:
        if (HIDWORD(v224))
        {
          goto LABEL_188;
        }

        v77 = v225;
        if (v225)
        {
          v20 = 0;
          v246 = 0;
          *(v18 + 7) = v24;
          LOWORD(v224) = 1;
LABEL_188:
          v105 = v22;
          if ((v22 & 0x10000000) != 0)
          {
            LOWORD(v224) = v224 + 1;
            if (v225)
            {
              *(v18 + 7) |= v22;
              HIDWORD(v224) = 1;
              v225 = 1;
              goto LABEL_392;
            }

            v180 = *(v18 + 6);
            v77 = v20;
            goto LABEL_388;
          }

          LODWORD(v106) = *(v18 + 9);
          v77 = v20;
        }

        else
        {
          v106 = *(v18 + 9);
          *(v18 + 6) = v24;
          v105 = v22;
          if ((v22 & 0x10000000) != 0)
          {
            LOWORD(v224) = 2;
            v180 = v24;
            v246 = v225;
            v19 = v106;
LABEL_388:
            v225 = 0;
            *(v18 + 6) = v180 | v22;
            goto LABEL_389;
          }

          LOWORD(v224) = 1;
          v19 = v106;
          v246 = v225;
        }

        if (v106 > 7)
        {
          *(v18 + 5) = 0x10000000;
          v107 = v18 + 2;
        }

        else
        {
          *(v18 + 9) = v106 + 1;
          v107 = &v18[2 * v106 + 2];
        }

        *v107 += v224;
        if ((*&v105 & 0x800000) != 0)
        {
          v151 = 5;
        }

        else
        {
          v151 = 7;
        }

        if ((v105 & 0x2000000) != 0)
        {
          v27 = 8;
        }

        else
        {
          v27 = v151;
        }

        HIDWORD(v224) = 0;
        v152 = HIDWORD(v221);
        if ((v105 & 0x2000000) == 0)
        {
          v152 = v21;
        }

        HIDWORD(v221) = v152;
        if ((v105 & 0x2000000) != 0)
        {
          v153 = v220;
        }

        else
        {
          v153 = v32 - v28;
        }

        v220 = v153;
        v154 = v229;
        if ((v105 & 0x2000000) == 0)
        {
          v154 = v28;
        }

        v229 = v154;
        v55 = (v105 & 0x2000000) == 0;
        v155 = v223;
        if (v55)
        {
          v155 = v22;
        }

        v223 = v155;
        goto LABEL_463;
      case 5:
        v97 = *(v18 + 9);
        if (v97 > 7)
        {
          *(v18 + 5) = 0x10000000;
          v98 = v18 + 2;
        }

        else
        {
          *(v18 + 9) = v97 + 1;
          v98 = &v18[2 * v97 + 2];
        }

        *v98 += v25;
        ++v246;
        if ((v22 & 0x800000) != 0)
        {
          v27 = 5;
          goto LABEL_462;
        }

        BYTE4(v266[1]) = v23;
        WORD3(v266[1]) = v26 - v25;
        WORD4(v266[1]) = v25;
        HIDWORD(v266[1]) = v24;
        v77 = v24 | v20;
        if ((v22 & 0x2000000) != 0)
        {
          v129 = 9;
        }

        else
        {
          v129 = 25;
        }

        if ((v22 & 0x1000000) != 0)
        {
          v129 = 7;
        }

        v130 = (v22 & 2) == 0;
        v131 = 6;
LABEL_264:
        if (v130)
        {
          v27 = v129;
        }

        else
        {
          v27 = v131;
        }

        goto LABEL_463;
      case 6:
        v99 = *(v18 + 9);
        if (v99 > 7)
        {
          *(v18 + 5) = 0x10000000;
          v100 = v18 + 2;
        }

        else
        {
          *(v18 + 9) = v99 + 1;
          v100 = &v18[2 * v99 + 2];
        }

        *v100 += v25;
        ++v246;
        v77 = v24 | v20;
        v132 = v22;
        if ((v22 & 0x2000000) != 0)
        {
          v129 = 10;
        }

        else
        {
          v129 = 25;
        }

        if ((v22 & 0x1000000) != 0)
        {
          v129 = 7;
        }

        v133 = (v22 & 2) == 0;
        v134 = 6;
        goto LABEL_261;
      case 7:
        v101 = *(v18 + 9);
        if (v101 > 7)
        {
          *(v18 + 5) = 0x10000000;
          v102 = v18 + 2;
        }

        else
        {
          *(v18 + 9) = v101 + 1;
          v102 = &v18[2 * v101 + 2];
        }

        *v102 += v25;
        ++v246;
        v77 = v24 | v20;
        v132 = v22;
        if ((v22 & 0x2000000) != 0)
        {
          v129 = 11;
        }

        else
        {
          v129 = 25;
        }

        v133 = (v22 & 0x1000000) == 0;
        v134 = 7;
LABEL_261:
        if (!v133)
        {
          v129 = v134;
        }

        v130 = (v132 & 0x800000) == 0;
        v131 = 5;
        goto LABEL_264;
      case 8:
        goto LABEL_289;
      case 9:
      case 10:
      case 11:
        if (v229 != 1)
        {
          goto LABEL_287;
        }

        if (v223)
        {
          v78 = 0x800000;
        }

        else if ((v223 & 0x8000) != 0)
        {
          v78 = 0x1000000;
        }

        else
        {
          if (HIDWORD(v221) != 46)
          {
            goto LABEL_287;
          }

          v78 = 0x400000;
        }

        *(v18 + 5) |= v78;
LABEL_287:
        v76 = *&PRnormalize_PairPunTab[4 * v27 - 28];
LABEL_288:
        *(v18 + 5) |= v76;
LABEL_289:
        if (v33)
        {
          LOBYTE(v265[1]) = 1;
          LODWORD(v27) = 24;
        }

        if (!*(a4 + 22))
        {
          if (v23 > 12)
          {
            v139 = v228;
            if (v23 != 13)
            {
              if (v23 == 32)
              {
                ++LOWORD(v266[1]);
              }

              goto LABEL_305;
            }

            ++HIWORD(v266[0]);
            LODWORD(v266[1]) = 0;
          }

          else
          {
            v139 = v228;
            if (v23 == 9)
            {
              ++WORD1(v266[1]);
              goto LABEL_305;
            }

            if (v23 != 10)
            {
LABEL_305:
              if (v23 != 13)
              {
                v139 = 0;
              }

              v228 = v139;
              goto LABEL_308;
            }

            if (!v228)
            {
              v139 = 0;
              ++HIWORD(v266[0]);
              LODWORD(v266[1]) = 0;
              goto LABEL_305;
            }
          }

          v139 = 1;
          goto LABEL_305;
        }

        if (v23 == *(a4 + 22))
        {
          LOBYTE(v265[1]) = 1;
          goto LABEL_309;
        }

LABEL_308:
        if (!v23)
        {
          goto LABEL_310;
        }

LABEL_309:
        ++*(v18 + 18);
LABEL_310:
        if ((v22 & 0x2000000) != 0)
        {
          v27 = v27;
        }

        else
        {
          v27 = 24;
        }

        goto LABEL_462;
      case 12:
        goto LABEL_288;
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
        goto LABEL_463;
      case 23:
        v87 = WORD1(v265[0]);
        if (WORD1(v265[0]) < LOWORD(v265[0]))
        {
          goto LABEL_167;
        }

        v253 = v28;
        v256 = v21;
        v239 = v19;
        v88 = v22;
        v89 = v25;
        v90 = v26;
        v91 = v23;
        v92 = v24;
        v93 = v20;
        v94 = v29;
        result = PRgrowRaw(v30, &v262);
        if (result)
        {
          goto LABEL_506;
        }

        v87 = WORD1(v265[0]);
        v30 = v261;
        v29 = v94;
        v20 = v93;
        v24 = v92;
        v23 = v91;
        v26 = v90;
        v25 = v89;
        v22 = v88;
        v19 = v239;
        v28 = v253;
        v21 = v256;
LABEL_167:
        WORD1(v265[0]) = v87 + 1;
        v18 = v264[1] + 40 * v87;
        *v18 = v29 - v28;
        WORD1(v266[1]) = 0;
        *(v266 + 14) = 0;
        *(v265 + 15) = 0;
        BYTE4(v266[1]) = 0;
        *(&v266[1] + 6) = 0;
        HIDWORD(v266[1]) = 0;
        if ((v22 & 4) != 0)
        {
          v225 = 0;
          v228 = 0;
          *(v18 + 5) |= 0xC0000000;
LABEL_281:
          v27 = 2;
        }

        else if ((v22 & 0x1000000) != 0)
        {
          v225 = 0;
          v228 = 0;
          v137 = *(v18 + 5) | 0x80000000;
LABEL_339:
          *(v18 + 5) = v137;
LABEL_340:
          v27 = 3;
        }

        else
        {
          if ((v22 & 0x40000000) != 0)
          {
            v225 = 0;
            v228 = 0;
            v128 = *(v18 + 5) | 0x8000;
LABEL_391:
            *(v18 + 5) = v128;
          }

          else
          {
            v225 = 0;
            v228 = 0;
          }

LABEL_392:
          v27 = 4;
        }

        goto LABEL_462;
      case 24:
        v108 = *(v18 + 9);
        if (*(v18 + 6))
        {
          v109 = v19;
        }

        else
        {
          v109 = *(v18 + 9);
        }

        *(v18 + 16) = v109;
        v110 = v108 - v246;
        if (v108 < v246)
        {
          v110 = 0;
        }

        *(v18 + 17) = v110;
        v111 = HIWORD(v266[0]);
        if (!HIWORD(v266[0]))
        {
          goto LABEL_199;
        }

        *(v18 + 5) |= 0x1000u;
        if (*(a4 + 22) || !*(*(&v265[1] + 1) + 1))
        {
          goto LABEL_199;
        }

        if (v111 > *(*(&v265[1] + 1) + 1))
        {
          goto LABEL_343;
        }

        v181 = *(*(&v265[1] + 1) + 2);
        if (v181 | *(*(&v265[1] + 1) + 4))
        {
          v182 = *(*(&v265[1] + 1) + 4);
        }

        else if (*(*(&v265[1] + 1) + 3))
        {
          v182 = 0;
        }

        else
        {
          if (!*(*(&v265[1] + 1) + 5))
          {
            goto LABEL_199;
          }

          v182 = 0;
        }

        if (v182 + v181 <= LOWORD(v266[1]) && *(*(&v265[1] + 1) + 5) + *(*(&v265[1] + 1) + 3) <= WORD1(v266[1]))
        {
LABEL_343:
          LOBYTE(v265[1]) = 1;
        }

LABEL_199:
        v254 = v28;
        v257 = v21;
        v245 = v18;
        v269 = 0;
        v112 = v264[1] + 40 * WORD1(v265[0]);
        v113 = *(a4 + 8);
        v259 = *(a4 + 64);
        v114 = *(v112 - 5);
        if ((v114 & 0x400000) == 0 && ((*(v112 - 5) & 0x9000000) == 0 || *(v112 - 3)) && ((v114 & 0x8000) == 0 || *(a4 + 20) != 6 || !BYTE2(v266[0])))
        {
          goto LABEL_359;
        }

        v115 = *(v112 - 20);
        LOWORD(v116) = *(v112 - 20);
        if (*(v112 - 4))
        {
          if (*(v112 - 4) >= 8u)
          {
            v117 = 8;
          }

          else
          {
            v117 = *(v112 - 4);
          }

          v118 = v112 - 38;
          v116 = *(v112 - 20);
          do
          {
            v119 = *v118;
            v118 += 2;
            v116 += v119;
            --v117;
          }

          while (v117);
        }

        if (*(v112 - 3))
        {
          v120 = v32;
          if (*(v112 - 3) >= 8u)
          {
            v121 = 8;
          }

          else
          {
            v121 = *(v112 - 3);
          }

          v122 = v112 - 38;
          do
          {
            v123 = *v122;
            v122 += 2;
            v115 += v123;
            --v121;
          }

          while (v121);
        }

        else
        {
          v120 = v32;
        }

        if ((v115 - v116) <= 15)
        {
          v248 = v20;
          v140 = v263;
          v233 = v26;
          if (v115 <= v116)
          {
            v144 = v264[1] + 40 * WORD1(v265[0]);
            v145 = v19;
            v146 = v22;
            v147 = v25;
            v148 = v23;
            v149 = v24;
            v150 = 0;
          }

          else
          {
            v141 = v116;
            v142 = v271;
            v143 = v115 - v116;
            do
            {
              *v142 = ((*(v113 + 4 * *(v140 + v141)) >> 25) & 0x20) + *(v140 + v141);
              v142 = (v142 + 1);
              ++v141;
              --v143;
            }

            while (v143);
            v144 = v112;
            v145 = v19;
            v146 = v22;
            v147 = v25;
            v148 = v23;
            v149 = v24;
            v150 = (v115 - v116);
          }

          *(v271 + v150) = 0;
          v160 = SLcap(v140, v116, (v115 - 1), &v270, v113);
          result = PRSSWdGet(v271, v160, v144 - 2, a4);
          v112 = v144;
          v30 = v261;
          v20 = v248;
          v24 = v149;
          v23 = v148;
          v25 = v147;
          v22 = v146;
          v19 = v145;
          v26 = v233;
          if (result)
          {
            goto LABEL_506;
          }
        }

        v29 = v120;
LABEL_359:
        v161 = (v112 - 40);
        if (BYTE12(v265[0]))
        {
          if (BYTE13(v265[0]))
          {
LABEL_361:
            v162 = 0;
            v163 = 0;
            BYTE12(v265[0]) = 0;
            goto LABEL_400;
          }

          v241 = v24;
          v234 = v26;
          v250 = v23;
          v172 = v29;
          v173 = v20;
          v174 = v25;
          v175 = v22;
          v176 = v19;
          v177 = v112;
          v178 = (v112 - 40);
          PRisListEnum(v112 - 20, &v262, &v269);
          v161 = v178;
          v112 = v177;
          v19 = v176;
          v22 = v175;
          v25 = v174;
          v23 = v250;
          v26 = v234;
          v24 = v241;
          v20 = v173;
          v29 = v172;
          v30 = v261;
          v162 = 0;
          BYTE13(v265[0]) = v269;
          v170 = v269;
          v171 = 1;
          v163 = v269;
        }

        else
        {
          if (!BYTE13(v265[0]))
          {
            BYTE12(v265[0]) = 0;
LABEL_409:
            v184 = BYTE2(v266[0]);
            goto LABEL_413;
          }

          BYTE14(v265[0]) = 1;
          if (!LOBYTE(v266[0]))
          {
            goto LABEL_361;
          }

          v249 = v112;
          v240 = v19;
          v237 = v22;
          v164 = v25;
          v165 = v23;
          v166 = v24;
          v167 = v20;
          v168 = v29;
          v169 = (v112 - 40);
          PRisListEnum(v112 - 20, &v262, &v269);
          v170 = BYTE13(v265[0]);
          v163 = v269;
          if (BYTE13(v265[0]) == v269)
          {
            --WORD1(v265[0]);
            v162 = 1;
            v268 = 1;
            v171 = 0;
            if (BYTE2(v266[0]))
            {
              HIBYTE(v265[0]) = 1;
            }

            v163 = BYTE13(v265[0]);
          }

          else
          {
            v162 = 0;
            LOWORD(v266[0]) = 0;
            v171 = 1;
          }

          v30 = v261;
          v29 = v168;
          v20 = v167;
          v24 = v166;
          v23 = v165;
          v25 = v164;
          v22 = v237;
          v19 = v240;
          v112 = v249;
          v161 = v169;
        }

        BYTE12(v265[0]) = 0;
        if (!v170)
        {
          if (!v171)
          {
            goto LABEL_442;
          }

          goto LABEL_409;
        }

LABEL_400:
        v183 = *(v112 - 5);
        if ((v183 & 0x1000) != 0)
        {
          LOBYTE(v266[0]) = 1;
          if ((v183 & 0x4000) != 0)
          {
            BYTE2(v266[0]) = 1;
            BYTE8(v266[0]) = BYTE4(v266[1]);
            DWORD1(v266[0]) = *(&v266[1] + 6);
            WORD6(v266[0]) = WORD1(v265[0]);
            WORD5(v266[0]) = WORD1(v265[0]);
          }
        }

        v184 = BYTE2(v266[0]);
        if (BYTE2(v266[0]) && WORD5(v266[0]) != WORD1(v265[0]) && BYTE8(v266[0]) == 58)
        {
          if (v163)
          {
            WORD1(v265[0]) = WORD5(v266[0]);
            BYTE12(v265[0]) = 1;
            v268 = 1;
            goto LABEL_442;
          }

          v184 = 0;
          BYTE2(v266[0]) = 0;
        }

        if (v162 || BYTE1(v266[0]))
        {
          goto LABEL_442;
        }

LABEL_413:
        if (!v184 || WORD5(v266[0]) == WORD1(v265[0]))
        {
          goto LABEL_437;
        }

        v185 = *(v112 - 5);
        v186 = *(a4 + 20);
        if ((v185 & 0x8000) != 0)
        {
          if (v186 == 6)
          {
            v235 = v26;
            v189 = v112;
            v190 = v19;
            v191 = v22;
            v192 = v25;
            v193 = v23;
            v194 = v24;
            v195 = v20;
            v260 = v29;
            result = PRgermScan(v30, a4, &v262, v266, &v268);
            if (result)
            {
              goto LABEL_506;
            }

            v196 = v268;
            v20 = v195;
            v24 = v194;
            v23 = v193;
            v25 = v192;
            v22 = v191;
            v19 = v190;
            v112 = v189;
            v26 = v235;
LABEL_426:
            v29 = v260;
            v30 = v261;
            if (v196)
            {
LABEL_441:
              HIBYTE(v265[0]) = 1;
              BYTE13(v265[0]) = 0;
              goto LABEL_442;
            }

            goto LABEL_437;
          }

          if (BYTE8(v266[0]) == 46 && WORD3(v266[0]) == 1)
          {
            if (*(v264[1] + 40 * WORD5(v266[0]) - 2) < 0)
            {
LABEL_502:
              BYTE2(v266[0]) = 0;
              goto LABEL_437;
            }

            v197 = v20;
            if (WORD2(v266[0]) < 2uLL || (v198 = *(v263 + WORD2(v266[0]) - 1), (*(v259 + 16 + 4 * v198) & 0x40000000) != 0) && (*(v259 + 16 + 4 * *(v263 + WORD2(v266[0]) - 2)) & 0x3000000) != 0)
            {
              BYTE2(v266[0]) = 0;
              goto LABEL_437;
            }

            v218 = *(v263 + WORD2(v266[0]) - 2);
            if (v218 == 83)
            {
              v30 = v261;
              v20 = v197;
              v17 = v227;
              if (v198 != 116)
              {
                goto LABEL_503;
              }
            }

            else
            {
              v55 = v218 == 68;
              v30 = v261;
              v20 = v197;
              v17 = v227;
              if (!v55 || *(v263 + WORD2(v266[0]) - 1) != 114)
              {
                goto LABEL_503;
              }
            }

            if (WORD5(v266[0]) < 3u || (*(v264[1] + 40 * WORD5(v266[0]) - 59) & 0x80) == 0)
            {
              goto LABEL_502;
            }
          }

LABEL_503:
          WORD1(v265[0]) = WORD6(v266[0]);
          goto LABEL_440;
        }

        v260 = v29;
        if (v186 != 11)
        {
          if (v186 != 5 || *(v112 - 11) != 1)
          {
            goto LABEL_436;
          }

          v187 = *(v112 - 19);
          if (v187 == 1)
          {
            v188 = *(v263 + *v161);
            if ((v188 | 0x10) != 0xBB)
            {
LABEL_436:
              BYTE2(v266[0]) = 0;
              v29 = v260;
              goto LABEL_437;
            }
          }

          else
          {
            if (v187 != 2)
            {
              goto LABEL_436;
            }

            v188 = *(v263 + *v161);
            if ((v188 | 2) != 0x3E)
            {
              goto LABEL_436;
            }
          }

          if (v188 == 187 || v188 == 62)
          {
            WORD6(v266[0]) = WORD1(v265[0]);
          }

LABEL_437:
          v199 = *(v112 - 5);
          if ((v199 & 0x4000) == 0)
          {
            goto LABEL_442;
          }

          if (LOBYTE(v265[1]))
          {
            BYTE12(v265[0]) = 1;
LABEL_440:
            v268 = 1;
            goto LABEL_441;
          }

          v202 = **(&v265[1] + 1);
          if (v202 >= 2 && (!HIWORD(v266[0]) && LOWORD(v266[1]) >= v202 || *(*(&v265[1] + 1) + 2) + v202 <= LOWORD(v266[1])))
          {
            goto LABEL_440;
          }

          if (BYTE4(v266[1]) == 46)
          {
            v203 = WORD4(v266[1]);
            if (WORD4(v266[1]) > 5u)
            {
              goto LABEL_440;
            }

            v204 = WORD3(v266[1]);
            if (WORD4(v266[1]) == 5)
            {
              if (*(v263 + WORD3(v266[1]) + 1) == 46)
              {
                goto LABEL_440;
              }

              v203 = 5;
            }
          }

          else
          {
            if (BYTE4(v266[1]) == 58)
            {
              if ((v199 & 0x1000) != 0 && (*(v112 - 11) - *(v112 - 3)) <= 1)
              {
                BYTE2(v266[0]) = 1;
                BYTE8(v266[0]) = 58;
                DWORD1(v266[0]) = *(&v266[1] + 6);
                WORD6(v266[0]) = WORD1(v265[0]);
                WORD5(v266[0]) = WORD1(v265[0]);
                BYTE12(v265[0]) = 1;
              }

LABEL_442:
              v18 = v245;
              v28 = v254;
              v21 = v257;
              if (LOBYTE(v265[1]))
              {
                if (WORD1(v265[0]) == WORD6(v266[0]) && BYTE2(v266[0]))
                {
                  HIBYTE(v265[0]) = 1;
                }

                if (BYTE13(v265[0]))
                {
                  BYTE13(v265[0]) = 0;
                  if ((*(v112 - 19) & 0x40) != 0)
                  {
                    HIBYTE(v265[0]) = 1;
                  }
                }

                BYTE12(v265[0]) = 1;
                v268 = 1;
              }

              v200 = *(v112 - 11) + v267;
              v201 = *(a4 + 28);
              if (v201 > v200)
              {
                goto LABEL_460;
              }

              if (v201 < (*(v112 - 11) + v267) && v264[1] + 40 * WORD1(v265[0]) == v112)
              {
                HIBYTE(v265[0]) = 0;
                BYTE13(v265[0]) = 0;
                --WORD1(v265[0]);
              }

              else if (HIBYTE(v265[0]))
              {
LABEL_457:
                if (!v268)
                {
                  BYTE13(v265[0]) = 0;
                }

                v268 = 1;
LABEL_460:
                LOWORD(v267) = v200;
                goto LABEL_461;
              }

              BYTE10(v265[0]) = 1;
              goto LABEL_457;
            }

            v203 = WORD4(v266[1]);
            v204 = WORD3(v266[1]);
          }

          BYTE2(v266[0]) = 1;
          BYTE8(v266[0]) = BYTE4(v266[1]);
          WORD3(v266[0]) = v203;
          WORD2(v266[0]) = v204;
          WORD6(v266[0]) = WORD1(v265[0]);
          WORD5(v266[0]) = WORD1(v265[0]);
          goto LABEL_442;
        }

        if ((v185 & 0x8000000) == 0)
        {
          goto LABEL_436;
        }

        if ((*(v112 - 2) & 0x10) == 0)
        {
          if (*(v112 - 11) >= 4u)
          {
            v242 = v24;
            v205 = v26;
            v206 = v23;
            v207 = v20;
            v208 = v25;
            v209 = v22;
            v210 = v19;
            v211 = v112;
            v212 = PRisDutchOpenCompound(*(a4 + 64), &v262, v161);
            v112 = v211;
            v19 = v210;
            v22 = v209;
            v25 = v208;
            v23 = v206;
            v26 = v205;
            v24 = v242;
            v20 = v207;
            v30 = v261;
            if (v212)
            {
              WORD1(v265[0]) = WORD6(v266[0]);
              v29 = v260;
              goto LABEL_440;
            }
          }

          goto LABEL_436;
        }

        v213 = v112;
        v243 = v25;
        v251 = v23;
        v214 = v24;
        v215 = v20;
        v216 = v19;
        v217 = v22;
        v271[0] = 0;
        result = PRpendTermIsDot(v30, a4, &v262, *(v264[1] + 20 * WORD5(v266[0]) - 20), WORD2(v266[0]), 0, 1, v271, &v270);
        if (!result)
        {
          v196 = v271[0];
          if (v271[0])
          {
            WORD1(v265[0]) = WORD6(v266[0]);
            v196 = 1;
            v268 = 1;
          }

          v22 = v217;
          v19 = v216;
          v20 = v215;
          v24 = v214;
          v23 = v251;
          v25 = v243;
          v112 = v213;
          v17 = v227;
          goto LABEL_426;
        }

LABEL_506:
        if (result == 200)
        {
LABEL_507:
          if (v264[0])
          {
            free(v264[0]);
          }

          PRssTidyUp(&v262);
          return 200;
        }

        return result;
      case 25:
        if (v246 == 1 && v229 == 1)
        {
          if ((v24 & 0xC000) != 0 || HIDWORD(v221) <= 0x3A && ((1 << SBYTE4(v221)) & 0x400D00000000000) != 0 && (v22 & 0x8000000) != 0 && (*(*(a4 + 64) + 4 * *(v263 + v220 - 1) + 16) & 0x8000000) != 0)
          {
            v77 = 0;
            v246 = 0;
            v124 = 24;
            if (v225)
            {
              v124 = 28;
            }

            *&v18[v124] |= v20 | v22;
            v125 = *(v18 + 9) - 2;
            *(v18 + 9) = v125;
            v126 = &v18[2 * v125 + 2];
            v127 = *v126 + *(v126 + 1) + 1;
            *v126 = 0;
            *&v18[2 * *(v18 + 9) + 4] = 0;
            LOWORD(v224) = v127;
            HIDWORD(v224) = 1;
            v27 = 4;
            v229 = 1;
            goto LABEL_463;
          }
        }

        else if (v246 != 1)
        {
          v138 = *(v18 + 5);
          goto LABEL_350;
        }

        v138 = *(v18 + 5);
        if ((v138 & 0x20000000) == 0)
        {
          v77 = 0;
          v246 = 0;
          *(v18 + 5) = v138 | 0x22000000;
          v225 = 1;
          v27 = 4;
          LODWORD(v221) = v20;
          goto LABEL_463;
        }

LABEL_350:
        *(v18 + 6) |= *(v18 + 7) | v221 | v20;
        *(v18 + 7) = 0;
        if (*(v18 + 9) <= v19)
        {
          v159 = 1;
        }

        else
        {
          v156 = 0;
          v157 = v18 + 2;
          v158 = v19;
          do
          {
            v156 += *&v157[2 * v158];
            *&v157[2 * v158++] = 0;
          }

          while (v158 < *(v18 + 9));
          v159 = v156 + 1;
        }

        LOWORD(v224) = v159;
        v225 = 0;
        v77 = 0;
        LODWORD(v221) = 0;
        v246 = 0;
        *(v18 + 9) = v19;
        *(v18 + 5) = v138 & 0xDDFFFFFF | 0x20000000;
LABEL_389:
        HIDWORD(v224) = 1;
        v27 = 4;
        goto LABEL_463;
      default:
        goto LABEL_462;
    }
  }
}

uint64_t PRgrowWkBuf(void **a1, void **a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(*a3 + 1024, 0x100004077774924uLL);
  if (!v10)
  {
LABEL_6:
    v17 = *(a4 + 32);
    *v17 = 0xDC00000078;
    *(v17 + 8) = 940;
    return 220;
  }

  v11 = v10;
  if (*(*(a5 + 64) + 1040))
  {
    v12 = *a3;
    v14 = v12 + 1024;
    v13 = v12 < -1024;
    v15 = v12 + 1039;
    if (!v13)
    {
      v15 = v14;
    }

    v16 = malloc_type_calloc((v15 >> 4) + 1, 2uLL, 0x1000040BDFB0063uLL);
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = *a1;
  if (*a1)
  {
    if (*a3)
    {
      v20 = 0;
      do
      {
        v11[v20] = *(*a1 + v20);
        ++v20;
      }

      while (v20 < *a3);
      v19 = *a1;
    }

    free(v19);
  }

  if (a2 && *(*(a5 + 64) + 1040))
  {
    v21 = *a2;
    if (*a2)
    {
      if (*a3)
      {
        v22 = 0;
        do
        {
          v16[v22] = v21[v22];
          ++v22;
        }

        while (16 * (v22 & 0xFFFu) < *a3);
      }

      free(v21);
    }

    *a2 = v16;
  }

  result = 0;
  *a3 += 1024;
  *a1 = v11;
  return result;
}

uint64_t PRgrowRaw(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(*(a2 + 48) + 32, 0x28uLL, 0x1000040F24650D8uLL);
  if (v4)
  {
    v5 = v4;
    v6 = *(a2 + 40);
    if (v6)
    {
      memcpy(v4, v6, 40 * *(a2 + 48));
      free(*(a2 + 40));
    }

    result = 0;
    *(a2 + 48) += 32;
    *(a2 + 40) = v5;
  }

  else
  {
    v8 = *(a1 + 32);
    *v8 = 0xDC00000078;
    *(v8 + 8) = 960;
    return 220;
  }

  return result;
}

void PRssTidyUp(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    free(v3);
  }
}

uint64_t PRnormalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v171 = *MEMORY[0x1E69E9840];
  v168 = 0;
  v3 = *(a3 + 50);
  if (*(a3 + 50))
  {
    v4 = a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 64);
    if (*(a3 + 62))
    {
      v7 = *(a3 + 40);
      *(v7 + 24) |= *(v7 + 28);
      *(v7 + 28) = 0;
      if (*(v7 + 18) >= 2u)
      {
        v8 = *(v7 + 2);
        v9 = (v7 + 4);
        v10 = 1;
        do
        {
          v8 += *v9;
          *v9++ = 0;
          ++v10;
        }

        while (v10 < *(v7 + 18));
        *(v7 + 2) = v8;
        v3 = *(a3 + 50);
      }

      *(v7 + 32) = 65537;
      v11 = 1;
      *(v7 + 18) = 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < v3)
    {
      v12 = 0;
      v13 = v11;
      v14 = (8 * v11) | (32 * v11);
      v15 = v14 | 2;
      v16 = v14 | 4;
      v166 = v6 + 16;
      v167 = v14 | 6;
      v162 = a3;
      v163 = v5;
      v164 = v6;
      while (1)
      {
        v17 = *(a3 + 40);
        v18 = (v17 + 40 * v13);
        if ((*(v18 + 5) & 0xFC00000) != 0)
        {
          break;
        }

LABEL_224:
        ++v13;
        v15 += 40;
        v16 += 40;
        v167 += 40;
        if (v13 >= *(a3 + 50))
        {
          return 0;
        }
      }

      if ((*(v18 + 5) & 0x8000000) == 0)
      {
        goto LABEL_43;
      }

      if (*(v18 + 7))
      {
        v12 = *v18;
        v19 = v18[16];
        if (v18[16])
        {
          if (v19 >= 8)
          {
            v20 = 8;
          }

          else
          {
            v20 = v18[16];
          }

          v21 = (v17 + v15);
          do
          {
            v22 = *v21++;
            v12 += v22;
            --v20;
          }

          while (v20);
        }

        v23 = v18[v19 + 1];
        if (v23 <= 15)
        {
          v24 = (v23 + v12);
          v25 = *(a3 + 16);
          if (v24 <= v12)
          {
            v29 = *(a3 + 40);
            v30 = 0;
          }

          else
          {
            v26 = v12;
            v27 = v170;
            v28 = v24 - v12;
            do
            {
              *v27 = ((*(v5 + 4 * *(v25 + v26)) >> 25) & 0x20) + *(v25 + v26);
              v27 = (v27 + 1);
              ++v26;
              --v28;
            }

            while (v28);
            v29 = v17;
            v30 = (v24 - v12);
          }

          *(v170 + v30) = 0;
          v31 = SLcap(v25, v12, (v24 - 1), &v169, v5);
          result = PRSSWdGet(v170, v31, &v168, v4);
          a3 = v162;
          v6 = v164;
          v17 = v29;
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        v168 = *(v18 + 38);
      }

      v33 = v18[16];
      v34 = v18[v33 + 1];
      if (v34 >= 2 && (*(v18 + 27) & 8) != 0 && (v168 & 0x10) == 0)
      {
        v12 = *v18;
        if (v18[16])
        {
          if (v33 >= 8)
          {
            v35 = 8;
          }

          else
          {
            v35 = v18[16];
          }

          v36 = v17;
          do
          {
            v12 += *(v36 + v15);
            v36 += 2;
            --v35;
          }

          while (v35);
        }

        v37 = (*(a3 + 16) + v12);
        if ((*(v5 + 4 * *v37) & 0x8000000) != 0 && (*(v5 + 4 * v37[1]) & 0x8000000) != 0 && (v34 == 2 || (*(v5 + 4 * v37[2]) & 0x8000000) == 0))
        {
          v168 |= 0x10u;
        }
      }

      if ((v168 & 0x10) != 0)
      {
        *(v18 + 6) |= *(v6 + 172);
        if (*(v4 + 20) == 11 && *(v18 + 7))
        {
          v55 = v17;
          v56 = a3;
          if (SLstrncmp("'s-", (*(a3 + 16) + v12 - 1), 3))
          {
            v40 = 0;
            v39 = 0;
            v38 = 1;
            a3 = v56;
            v6 = v164;
            v17 = v55;
          }

          else
          {
            a3 = v56;
            v17 = v55;
            v40 = 0;
            if ((*(v5 + 4 * *(*(v56 + 16) + v12 + 2)) & 0x40000000) != 0)
            {
              *(v18 + 5) &= ~0x2000000u;
              v38 = 1;
              v39 = 1;
            }

            else
            {
              v39 = 0;
              v38 = 1;
            }

            v6 = v164;
          }
        }

        else
        {
          v40 = 0;
          v39 = 0;
          v38 = 1;
        }
      }

      else
      {
LABEL_43:
        v38 = 0;
        v39 = 0;
        v40 = 1;
      }

      if ((*(v18 + 23) & 1) == 0)
      {
        goto LABEL_70;
      }

      if (*(v18 + 7))
      {
        v12 = *v18;
        if (v18[16] != 0xFFFE)
        {
          v41 = (v18[16] + 2) - 1;
          if (v41 >= 7)
          {
            v41 = 7;
          }

          v42 = ~v41;
          v43 = v17;
          do
          {
            v12 += *(v43 + v15);
            v43 += 2;
            v44 = __CFADD__(v42++, 1);
          }

          while (!v44);
        }

        v45 = v18[v18[16] + 3];
        if (v45 <= 15)
        {
          v46 = (v45 + v12);
          v47 = *(a3 + 16);
          v161 = v16;
          if (v46 <= v12)
          {
            v51 = v39;
            v52 = v38;
            v53 = v17;
            v54 = 0;
          }

          else
          {
            v48 = v12;
            v49 = v170;
            v50 = v46 - v12;
            do
            {
              *v49 = ((*(v5 + 4 * *(v47 + v48)) >> 25) & 0x20) + *(v47 + v48);
              v49 = (v49 + 1);
              ++v48;
              --v50;
            }

            while (v50);
            v51 = v39;
            v52 = v38;
            v53 = v17;
            v54 = (v46 - v12);
          }

          *(v170 + v54) = 0;
          v60 = SLcap(v47, v12, (v46 - 1), &v169, v5);
          result = PRSSWdGet(v170, v60, &v168, v4);
          v6 = v164;
          v17 = v53;
          v38 = v52;
          v39 = v51;
          v16 = v161;
          a3 = v162;
          if (result)
          {
            return result;
          }
        }

        if ((v168 & 8) == 0)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v168 = *(v18 + 38);
        if ((v168 & 8) == 0)
        {
LABEL_70:
          v59 = 0;
          goto LABEL_71;
        }
      }

      v57 = *(v18 + 7);
      v58 = *(v6 + 172);
      if (v57)
      {
        *(v18 + 7) = v58 | v57;
      }

      else
      {
        *(v18 + 6) |= v58;
      }

      v59 = 1;
LABEL_71:
      v61 = *(v18 + 5);
      if ((v61 & 0x400000) == 0)
      {
        goto LABEL_152;
      }

      v62 = *(v18 + 38);
      if (v62 < 0)
      {
        v68 = v61 | 0x80000;
        *(v18 + 5) = v61 | 0x80000;
        if ((v61 & 0x2000000) != 0)
        {
          v61 = v61 & 0xFDF7FFFF | 0x80000;
          *(v18 + 5) = v68 & 0xFDFFFFFF;
          v39 = 1;
        }

        else
        {
          v61 |= 0x80000u;
        }
      }

      else
      {
        v63 = *(v4 + 20);
        if ((v62 & 0x20) != 0 && v63 != 6)
        {
          v64 = v61 | 0x100000;
          *(v18 + 5) = v61 | 0x100000;
          v65 = *(a3 + 50);
          if (v65 - 1 != v13)
          {
            if (v63 != 5 || v65 - 2 != v13 || (v66 = (*(a3 + 40) + 40 * v13), v66[29] != 1) || v66[21] > 2u || (v67 = *(*(a3 + 16) + v66[20]), v67 != 62) && v67 != 187)
            {
              v59 = 1;
            }
          }

          if ((v61 & 0x2000000) != 0)
          {
            v61 = v61 & 0xFDEFFFFF | 0x100000;
            *(v18 + 5) = v64 & 0xFDFFFFFF;
            v39 = 1;
          }

          else
          {
            v61 |= 0x100000u;
          }

          goto LABEL_147;
        }

        if (*(v18 + 7))
        {
          LODWORD(v69) = v18[16];
          goto LABEL_101;
        }

        v69 = v18[16];
        if (v18[v69 + 1] != 1 || (*(v18 + 27) & 0x60) == 0)
        {
LABEL_101:
          v170[0] = 0;
          LOBYTE(v169) = 0;
          v72 = *v18;
          v12 = *v18;
          if (v69)
          {
            if (v69 >= 8)
            {
              v73 = 8;
            }

            else
            {
              v73 = v69;
            }

            v74 = v17;
            v12 = *v18;
            do
            {
              v12 += *(v74 + v15);
              v74 += 2;
              --v73;
            }

            while (v73);
          }

          if (v18[17])
          {
            if (v18[17] >= 8u)
            {
              v75 = 8;
            }

            else
            {
              v75 = v18[17];
            }

            v76 = v17;
            do
            {
              v72 += *(v76 + v15);
              v76 += 2;
              --v75;
            }

            while (v75);
          }

          if (v72 && (*(v166 + 4 * *(*(a3 + 16) + v72 - 1)) & 0x8000000) != 0)
          {
            v59 = 0;
            goto LABEL_147;
          }

          if (v12 > v72)
          {
            goto LABEL_147;
          }

          v155 = v38;
          v77 = v4;
          v78 = v39;
          v158 = v59;
          v79 = v17;
          result = PRpendTermIsDot(a1, v77, a3, v12, v72, 1, 0, v170, &v169);
          if (result)
          {
            return result;
          }

          v80 = *(v18 + 5);
          if (v170[0])
          {
            a3 = v162;
            if ((v80 & 0x2000000) != 0)
            {
              v80 &= ~0x2000000u;
              *(v18 + 5) = v80;
              v39 = 1;
            }

            else
            {
              v39 = v78;
            }

            v6 = v164;
            v4 = a2;
            v17 = v79;
            v38 = v155;
            v59 = v158;
            if (v169)
            {
              if (*(a2 + 20) == 6 && (v18[19] & 0x20) != 0)
              {
                v61 = v80 | 0x100000;
                *(v18 + 5) = v80 | 0x100000;
                if (*(v162 + 50) - 1 != v13)
                {
                  v59 = 1;
                }
              }

              else
              {
                v61 = v80 | 0x80000;
                *(v18 + 5) = v80 | 0x80000;
                v59 = 1;
              }
            }

            else
            {
              v61 = v80 | 0x200000;
              *(v18 + 5) = v80 | 0x200000;
            }

LABEL_147:
            if (!v59)
            {
              goto LABEL_152;
            }

            goto LABEL_148;
          }

          v61 = v80 | 0x100000;
          *(v18 + 5) = v80 | 0x100000;
          a3 = v162;
          v81 = *(v162 + 50);
          v39 = v78;
          if (v81 - 1 == v13)
          {
            v6 = v164;
            v4 = a2;
            v17 = v79;
            v38 = v155;
LABEL_125:
            v59 = v158;
            goto LABEL_147;
          }

          v6 = v164;
          v82 = *(a2 + 20);
          v17 = v79;
          v38 = v155;
          if (v82 == 5 && v81 - 2 == v13)
          {
            v83 = (*(v162 + 40) + 40 * v13);
            if (v83[29] != 1 || v83[21] > 2u || (v84 = *(*(v162 + 16) + v83[20]), v84 != 62) && v84 != 187)
            {
LABEL_146:
              v59 = 1;
              v4 = a2;
              goto LABEL_147;
            }
          }

          else
          {
            if (v82 != 6)
            {
              goto LABEL_146;
            }

            v85 = PRisRoman((*(v162 + 16) + v12));
            v38 = v155;
            v39 = v78;
            v17 = v79;
            v6 = v164;
            a3 = v162;
            if (!v85)
            {
              goto LABEL_146;
            }
          }

          v4 = a2;
          goto LABEL_125;
        }

        v70 = *(*(a3 + 16) + *v18);
        if ((v70 - 108) < 2 || v70 == 103)
        {
          goto LABEL_147;
        }

        if (v70 == 97 && v63 == 5)
        {
          goto LABEL_147;
        }
      }

LABEL_148:
      v86 = *(v18 + 7);
      v87 = *(v6 + 200);
      if (v86)
      {
        *(v18 + 7) = v87 | v86;
      }

      else
      {
        *(v18 + 6) |= v87;
      }

      v59 = 1;
LABEL_152:
      if (v61 & 0x4000000) != 0 && ((v61 & 0x2000000) != 0 || (v18[12]))
      {
        v12 = *v18;
        v95 = v18[16];
        LOWORD(v96) = *v18;
        if (v95 != 1)
        {
          if (((v95 - 1) & 0xFFF8) != 0)
          {
            v97 = 8;
          }

          else
          {
            v97 = (v95 - 1);
          }

          v98 = v17;
          v96 = *v18;
          do
          {
            v96 += *(v98 + v15);
            v98 += 2;
            --v97;
          }

          while (v97);
        }

        v99 = *(a3 + 16);
        v100 = *(v99 + v96);
        v101 = 4;
        v102 = "}[]()<>";
        while (*(v102 - 1) != v100)
        {
          v102 += 2;
          if (!--v101)
          {
            v12 = v96;
            if ((v61 & 0x800000) != 0)
            {
              goto LABEL_154;
            }

            goto LABEL_178;
          }
        }

        if ((v61 & 0x2000000) != 0)
        {
          LODWORD(v95) = v95 + 1;
          if ((v95 & 0x10000) == 0)
          {
            if ((v95 & 0xFFF8) != 0)
            {
              v95 = 8;
            }

            else
            {
              v95 = v95;
            }

            v140 = v17;
            do
            {
              v12 += *(v140 + v15);
              v140 += 2;
              --v95;
            }

            while (v95);
          }

          if (*(v99 + v12) == *v102)
          {
            v61 &= ~0x2000000u;
            *(v18 + 5) = v61;
            *(v18 + 6) |= *(v166 + 4 * v100);
            v38 = 1;
            v39 = 1;
          }

          goto LABEL_153;
        }

        if (v18[16])
        {
          if (v95 >= 8)
          {
            v133 = 8;
          }

          else
          {
            v133 = v18[16];
          }

          v134 = v17;
          do
          {
            v12 += *(v134 + v15);
            v134 += 2;
            --v133;
          }

          while (v133);
        }

        v135 = v18[v95 + 1] + v12;
        v136 = v40 ^ 1;
        if (v12 >= v135)
        {
          v136 = 1;
        }

        if (v136)
        {
          goto LABEL_153;
        }

        v137 = *v102;
        v138 = v12;
        while (*(v99 + v138) != v137)
        {
          if (++v138 >= v135)
          {
            v38 = 0;
            if ((v61 & 0x800000) != 0)
            {
              goto LABEL_154;
            }

            goto LABEL_178;
          }
        }

        *(v18 + 6) |= *(v166 + 4 * v100);
        v38 = 1;
        if ((v61 & 0x800000) != 0)
        {
          goto LABEL_154;
        }

        goto LABEL_178;
      }

LABEL_153:
      if ((v61 & 0x800000) == 0)
      {
        goto LABEL_178;
      }

LABEL_154:
      if ((v61 & 0x2000000) == 0 && (v18[12] & 1) == 0)
      {
LABEL_178:
        if ((v61 & 0x2000000) == 0)
        {
LABEL_204:
          if (v38)
          {
            v115 = &v18[v18[16]];
            *v115 += v115[1];
            v116 = v18[16];
            v117 = v18[9] - 1;
            if (v116 < v117)
            {
              do
              {
                *(v17 + v15 + 2 * v116) = *(v17 + v16 + 2 * v116);
                ++v116;
                v117 = v18[9] - 1;
              }

              while (v116 < v117);
              LOWORD(v116) = v18[16];
            }

            v18[9] = v117;
            v18[16] = v116 - 1;
            --v18[17];
          }

          if (v39)
          {
            v12 = *v18;
            v118 = v18[16];
            if (v118 != 0xFFFF)
            {
              v119 = (v118 + 1) - 1;
              if (v119 >= 7)
              {
                v119 = 7;
              }

              v120 = ~v119;
              v121 = v17;
              do
              {
                v12 += *(v121 + v15);
                v121 += 2;
                v44 = __CFADD__(v120++, 1);
              }

              while (!v44);
            }

            v18[v18[16] + 1] += v18[v18[16] + 3] + v18[v118 + 2];
            v122 = v18[9] - 2;
            if ((v18[16] + 1) < v122)
            {
              v123 = (v18[16] + 1);
              do
              {
                *(v17 + v15 + 2 * v123) = *(v17 + v167 + 2 * v123);
                ++v123;
                v122 = v18[9] - 2;
              }

              while (v123 < v122);
            }

            v18[17] -= 2;
            v18[9] = v122;
            *(v18 + 3) = *(v166 + 4 * *(*(a3 + 16) + v12)) | (*(v18 + 7) | *(v18 + 6));
          }

          if (v59)
          {
            v124 = &v18[v18[17]];
            *v124 += v124[1];
            v125 = v18[17];
            v126 = v18[9] - 1;
            if (v125 < v126)
            {
              do
              {
                *(v17 + v15 + 2 * v125) = *(v17 + v16 + 2 * v125);
                ++v125;
                v126 = v18[9] - 1;
              }

              while (v125 < v126);
            }

            v18[9] = v126;
          }

          goto LABEL_224;
        }

LABEL_179:
        v170[0] = 0;
        v12 = *v18;
        v103 = v18[16];
        if (v18[16])
        {
          if (v103 >= 8)
          {
            v104 = 8;
          }

          else
          {
            v104 = v18[16];
          }

          v105 = v17;
          do
          {
            v12 += *(v105 + v15);
            v105 += 2;
            --v104;
          }

          while (v104);
        }

        v106 = v18 + 1;
        v107 = &v18[v103 + 1];
        v108 = *v107;
        v109 = v108 + v12;
        v110 = *(a3 + 16);
        v111 = (v110 + (v108 + v12));
        v112 = *v111;
        if (v107[1] < 2u)
        {
          if (v112 != 151 && v112 != 133)
          {
            if (v112 == 46)
            {
              v113 = *(v18 + 6);
              if ((v113 & 0x60000000) != 0)
              {
                v114 = 1;
                if (v108 != 1 || (*(v18 + 7) & 0x60000000) == 0)
                {
                  goto LABEL_275;
                }

                if (v107[2] == 1 && v18[9] >= 4u && *(v110 + v12 + 3) == 46)
                {
                  if (v59)
                  {
                    v59 = 1;
                    v4 = a2;
                    v5 = v163;
                  }

                  else
                  {
                    v4 = a2;
                    v5 = v163;
                    if ((v61 & 0x400000) != 0)
                    {
                      *(v18 + 6) = *(v6 + 200) | v113;
                      v59 = 1;
                    }

                    else
                    {
                      v59 = 0;
                    }
                  }

                  *(v18 + 5) = v61 & 0xFFE7FFFF | 0x80000;
                  goto LABEL_310;
                }
              }

              v114 = 1;
LABEL_275:
              if ((*(v18 + 27) & 0x60) != 0)
              {
                if (v108 >= 2)
                {
                  v159 = v59;
                  v141 = v38;
                  v142 = v17;
                  result = PRpendTermIsDot(a1, a2, a3, v12, (v108 + v12), 0, 0, v170, &v169);
                  if (result)
                  {
                    return result;
                  }

                  a3 = v162;
                  v6 = v164;
                  v17 = v142;
                  v38 = v141;
                  v59 = v159;
                  if (!v170[0])
                  {
                    goto LABEL_289;
                  }
                }
              }

              else if (v107[2] == 1)
              {
                v143 = (*(v18 + 31) & 0x60) != 0 ? v114 : 0;
                if (v143 & 1) != 0 || (v111[1] == 186 ? (v144 = v114) : (v144 = 0), (v144))
                {
LABEL_289:
                  v39 = 1;
                  goto LABEL_202;
                }
              }

              if ((*(v18 + 31) & 0x60) != 0 && (v145 = &v106[v18[16]], v146 = v145[2], v146 >= 2))
              {
                v160 = v59;
                v156 = v38;
                v147 = v17;
                v12 = v145[1] + v109;
                v4 = a2;
                result = PRpendTermIsDot(a1, a2, a3, v12, (v12 + v146), 0, 0, v170, &v169);
                v39 = v170[0] == 0;
                if (result)
                {
                  return result;
                }

                a3 = v162;
                v6 = v164;
                v17 = v147;
                v38 = v156;
                v59 = v160;
                if (!v170[0])
                {
                  goto LABEL_203;
                }
              }

              else
              {
                v39 = 0;
                v4 = a2;
              }

              if (*(v4 + 20) != 7 || (v39 = 0, (*(v18 + 27) & 0x60) != 0) || v112 != 58)
              {
LABEL_203:
                v5 = v163;
                goto LABEL_204;
              }

              v148 = v18[16];
              if (v106[v148 + 2] != 1)
              {
                v39 = 0;
                goto LABEL_203;
              }

              v12 = *v18;
              LOWORD(v148) = v148 + 2;
              v5 = v163;
              if (v148)
              {
                if ((v148 & 0xFFF8) != 0)
                {
                  v148 = 8;
                }

                else
                {
                  v148 = v148;
                }

                v149 = v17;
                do
                {
                  v12 += *(v149 + v15);
                  v149 += 2;
                  --v148;
                }

                while (v148);
              }

              v150 = *(*(a3 + 16) + v12) - 65;
              v151 = ((v150 >> 2) | (v150 << 6));
              v152 = v151 > 9;
              v153 = (1 << v151) & 0x303;
              if (v152 || v153 == 0)
              {
                v39 = 0;
                goto LABEL_204;
              }

LABEL_310:
              v39 = 1;
              goto LABEL_204;
            }

LABEL_254:
            v114 = 0;
            goto LABEL_275;
          }
        }

        else if ((v112 - 45) >= 2 && v112 != 133 && v112 != 151)
        {
          goto LABEL_254;
        }

        v39 = 0;
LABEL_202:
        v4 = a2;
        goto LABEL_203;
      }

      v88 = *v18;
      v12 = *v18;
      if (v18[17])
      {
        if (v18[17] >= 8u)
        {
          v89 = 8;
        }

        else
        {
          v89 = v18[17];
        }

        v90 = v17;
        v12 = *v18;
        do
        {
          v12 += *(v90 + v15);
          v90 += 2;
          --v89;
        }

        while (v89);
      }

      v91 = *(a3 + 16);
      v92 = *(v91 + v12);
      v93 = 4;
      v94 = "{}[]()<>";
      while (*(v94 + 1) != v92)
      {
        v94 += 2;
        if (!--v93)
        {
          goto LABEL_178;
        }
      }

      v127 = v18[16];
      if ((v61 & 0x2000000) != 0)
      {
        LODWORD(v127) = v127 + 1;
        if ((v127 & 0x10000) == 0)
        {
          if ((v127 & 0xFFF8) != 0)
          {
            v127 = 8;
          }

          else
          {
            v127 = v127;
          }

          v139 = v17;
          do
          {
            v88 += *(v139 + v15);
            v139 += 2;
            --v127;
          }

          while (v127);
        }

        if (*(v91 + v88) == *v94)
        {
          v61 &= ~0x2000000u;
          *(v18 + 5) = v61;
          v39 = 1;
LABEL_263:
          *(v18 + 6) |= *(v166 + 4 * v92);
          v59 = 1;
        }
      }

      else
      {
        if (v18[16])
        {
          if (v127 >= 8)
          {
            v128 = 8;
          }

          else
          {
            v128 = v18[16];
          }

          v129 = v17;
          do
          {
            v88 += *(v129 + v15);
            v129 += 2;
            --v128;
          }

          while (v128);
        }

        if ((v59 & 1) == 0)
        {
          v130 = v18[v127 + 1] + v88;
          if (v88 < v130)
          {
            v131 = *v94;
            v132 = v88;
            while (*(v91 + v132) != v131)
            {
              if (++v132 >= v130)
              {
                v59 = 0;
                goto LABEL_264;
              }
            }

            goto LABEL_263;
          }
        }
      }

LABEL_264:
      v12 = v88;
      if ((v61 & 0x2000000) == 0)
      {
        goto LABEL_204;
      }

      goto LABEL_179;
    }
  }

  return 0;
}

uint64_t PRssPost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 56);
  if (v5 < 0x40)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 65;
  }

  if (*(a3 + 56))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 50);
  if (*(a3 + 50))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 40);
    v12 = (v11 + 2);
    do
    {
      v13 = v11 + 40 * v9;
      v14 = *(v13 + 18);
      if (*(v13 + 18))
      {
        v15 = *(v13 + 18);
        v16 = v12;
        do
        {
          v17 = *v16++;
          v18 = 2 * v17;
          if (v17 >= 0x40)
          {
            v19 = 128;
          }

          else
          {
            v19 = v18;
          }

          v7 += v19;
          --v15;
        }

        while (v15);
      }

      v20 = v7 + 2 * v14;
      v21 = *(v13 + 36);
      if (v21 < 0x40)
      {
        v22 = v21 + 1;
      }

      else
      {
        v22 = 65;
      }

      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v7 = v20 + v23;
      v10 += v14;
      ++v9;
      v12 += 20;
    }

    while (v9 != v8);
  }

  else
  {
    v10 = 0;
  }

  v24 = *(a2 + 64);
  v25 = *(a2 + 8);
  v26 = *(a1 + 16);
  if (v7)
  {
    v27 = malloc_type_malloc(v7, 0x100004077774924uLL);
    if (!v27)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v27 = 0;
  }

  if (v10)
  {
    v28 = malloc_type_calloc(v10, 0xB8uLL, 0x10B00409DE433CAuLL);
    if (!v28)
    {
LABEL_37:
      v37 = *(a1 + 32);
      *v37 = 0xDC00000078;
      *(v37 + 8) = 980;
      return 220;
    }

    v29 = v28;
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = &v28[v30];
      *&v28[v30] = v31;
      if (v30)
      {
        *(v32 + 21) = v32 - 184;
        *(v32 + 9) = v32 - 184;
      }

      if (v31 < (v10 - 1))
      {
        v33 = &v28[v30];
        v34 = &v28[v30 + 184];
        *(v33 + 22) = v34;
        *(v33 + 10) = v34;
      }

      *&v28[v30 + 152] = v32;
      v30 += 184;
      ++v31;
    }

    while (184 * v10 != v30);
    LOWORD(v35) = 0;
    *(v26 + 72) = 0;
    v36 = (v26 + 72);
    *(v26 + 56) = v28;
    *(v26 + 64) = v28;
    *(v26 + 80) = &v28[184 * v10 - 184];
  }

  else
  {
    v29 = 0;
    LOWORD(v35) = *(v3 + 56);
    *(v26 + 72) = 0;
    v36 = (v26 + 72);
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
  }

  v39 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v40 = *(v3 + 16);
    *(v26 + 24) = v27;
    if (v39 >= 0x41)
    {
      *(v26 + 32) = v39 - 64;
      v39 = 64;
    }

    ++v27;
    do
    {
      v41 = *v40++;
      *(v27 - 1) = v41;
      --v39;
      ++v27;
    }

    while (v39);
    *(v27 - 1) = 0;
  }

  v42 = *(v3 + 50);
  if (*(v3 + 50))
  {
    v78 = v26;
    v79 = v10;
    v43 = 0;
    v81 = v24 + 16;
    v44 = v29;
    v84 = v36;
    v85 = v29;
    v83 = v3;
    while (1)
    {
      v45 = (*(v3 + 40) + 40 * v43);
      v35 = *v45;
      if (!v45[9])
      {
        goto LABEL_124;
      }

      v80 = v43;
      v46 = 0;
      v47 = 0;
      v48 = (*(v3 + 16) + v35);
      v49 = v45 + 1;
      do
      {
        *(v44 + 8) = v35;
        v50 = v49[v46];
        if (v50 >= 0x40)
        {
          v51 = 64;
        }

        else
        {
          v51 = v49[v46];
        }

        *(v44 + 32) = v51;
        v52 = v49[v46];
        v53 = v52 - 64;
        if (v52 < 64)
        {
          v53 = 0;
        }

        *(v44 + 34) = v53;
        v54 = &v27[v51 + 1];
        *(v44 + 16) = v27;
        *(v44 + 24) = v54;
        if (v50)
        {
          v55 = 0;
          do
          {
            v56 = v48[v55];
            *(*(v44 + 24) + v55) = v56;
            *(*(v44 + 16) + v55++) = ((*(v25 + 4 * v56) >> 25) & 0x20) + v56;
          }

          while (v51 != v55);
          v54 = *(v44 + 24);
          v48 += v55;
        }

        *(v54 + v51) = 0;
        *(*(v44 + 16) + v51) = 0;
        v57 = *(v44 + 34);
        if (!*v36 && v46 == v45[16])
        {
          *v36 = v44;
        }

        LODWORD(v35) = v52 + v35;
        v48 += v57;
        if (v45[9] - 1 == v47 && (v58 = v45[18], v45[18]))
        {
          v59 = 0;
          *(v44 + 40) = &v27[(2 * v51 + 2) & 0xFFFE];
          LODWORD(v35) = v58 + v35;
          v61 = v58 - 64;
          v60 = v58 < 64;
          if (v58 >= 0x40)
          {
            LOWORD(v58) = 64;
          }

          *(v44 + 48) = v58;
          if (v60)
          {
            v62 = 0;
          }

          else
          {
            v62 = v61;
          }

          *(v44 + 36) = v62;
          v27 += 2 * v51 + 3;
          do
          {
            v63 = *v48++;
            *(v27 - 1) = v63;
            ++v59;
            ++v27;
          }

          while (v59 < *(v44 + 48));
          *(v27 - 1) = 0;
        }

        else
        {
          v27 += (2 * v51 + 2) & 0xFFFE;
        }

        if (v44 == v29 && *(v83 + 62))
        {
          *(v44 + 4) = 16;
          *v36 = 0;
          v68 = 5;
LABEL_116:
          *(v44 + 51) = v68;
          goto LABEL_117;
        }

        v64 = v45[16];
        if (v45[19] < 0 && v46 == v64 && v49[v46] != 2)
        {
          *(v44 + 4) = 268435457;
          v67 = 268435457;
        }

        else if (v46 == v64 && (v65 = *(v45 + 6), (v65 & 0x1000000) != 0) && (*(v45 + 6) & 0x68000000) != 0 || v64 + 2 == v47 && (*(v45 + 7) & 0x1000000) != 0 && (v65 = *(v45 + 7), (v65 & 0x68000000) != 0))
        {
          if ((v65 & 0x60000000) == 0)
          {
            v67 = 8;
LABEL_108:
            *(v44 + 4) = v67;
            goto LABEL_109;
          }

          v66 = *(v44 + 32);
          if (v66 == 2)
          {
            if (*(*(v44 + 16) + 1) == 46)
            {
              v67 = 0x10000;
            }

            else
            {
              v67 = 256;
            }

            goto LABEL_108;
          }

          v67 = 256;
          *(v44 + 4) = 256;
          if (v66 >= 4)
          {
            v70 = *(v44 + 16);
            v71 = *v70;
            if (*v70)
            {
              v72 = (v66 - 1);
              v73 = *(v44 + 16);
              while ((*(v81 + 4 * v71) & 0x20000000) != 0 && *(v73 + 1) == 46)
              {
                v74 = 2;
                if (*(v73 + 2) == 45 && v72 > (v73 + 2 - v70))
                {
                  v74 = 3;
                }

                v71 = *(v73 + v74);
                if (*(v73 + 2) == 45 && v72 > (v73 + 2 - v70))
                {
                  v73 += 3;
                }

                else
                {
                  v73 += 2;
                }

                if (!v71)
                {
                  goto LABEL_105;
                }
              }
            }

            else
            {
LABEL_105:
              *(v44 + 92) = 8;
            }

            v67 = 256;
          }
        }

        else
        {
          if (*(v44 + 40))
          {
            v69 = 0;
          }

          else
          {
            v69 = *v48;
          }

          v67 = PRtoktyp(*(a2 + 20), v44, 0, *(a2 + 26), v69);
          *(v44 + 4) = v67;
          v36 = v84;
          v29 = v85;
        }

LABEL_109:
        v68 = 5;
        if (v67 < 0 || v67 == 16)
        {
          goto LABEL_116;
        }

        v75 = v45[16];
        if (v46 == v75 && (*(v45 + 27) & 0x40) != 0 || v75 + 2 == v47 && (*(v45 + 31) & 0x40) != 0)
        {
          v76 = SLcap(*(v44 + 24), 0, (v51 - 1), (v44 + 52), v25);
          v36 = v84;
          v29 = v85;
          v68 = v76;
          goto LABEL_116;
        }

LABEL_117:
        if ((*(v45 + 25) & 0x40) != 0 && v46 == v45[16] || (*(v45 + 29) & 0x40) != 0 && v45[16] + 2 == v47)
        {
          *(v44 + 50) = 1;
        }

        v44 = *(v44 + 80);
        v47 = ++v46;
      }

      while (v46 < v45[9]);
      v3 = v83;
      v42 = *(v83 + 50);
      v43 = v80;
LABEL_124:
      if (++v43 >= v42)
      {
        v26 = v78;
        v10 = v79;
        goto LABEL_127;
      }
    }
  }

  v42 = 0;
LABEL_127:
  *(v26 + 18) = v10;
  if (!*(v3 + 59))
  {
    LOWORD(v35) = v35 - *(*(v3 + 40) + 40 * v42 - 4);
  }

  *(v26 + 20) = v35;
  *(v26 + 4) = *(v3 + 64);
  *(v26 + 6) = *(v3 + 61);
  v77 = *(v3 + 58);
  *(v26 + 8) = v77;
  *(v26 + 10) = *(v3 + 60);
  if (!*(v3 + 63) || v77 || *(v26 + 9))
  {
    *(v26 + 2) = 1;
    *(v26 + 14) = v10;
    *(v26 + 16) = v35;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0;
  }

  else
  {
    *(v26 + 2) = 2;
    *(v26 + 14) = 0;
  }

  result = 0;
  *(v26 + 40) = *(v3 + 32);
  return result;
}