void sub_F718E4(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 56 * a2;
      do
      {
        *v3 = 0x7FFFFFFFLL;
        *(v3 + 8) = xmmword_2291330;
        *(v3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        v3 += 56;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x492492492492492)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x249249249249249)
    {
      v8 = 0x492492492492492;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 56 * v5;
    v11 = 56 * v5 + 56 * a2;
    v12 = 56 * v5;
    do
    {
      *v12 = 0x7FFFFFFFLL;
      *(v12 + 8) = xmmword_2291330;
      *(v12 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      v12 += 56;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        v18 = *(v16 + 1);
        *v17 = *v16;
        *(v17 + 16) = v18;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 32) = 0;
        *(v17 + 32) = *(v16 + 2);
        *(v17 + 48) = v16[6];
        v16[4] = 0;
        v16[5] = 0;
        v16[6] = 0;
        v16 += 7;
        v17 += 56;
      }

      while (v16 != v14);
      do
      {
        v19 = v13[4];
        if (v19)
        {
          v13[5] = v19;
          operator delete(v19);
        }

        v13 += 7;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

BOOL sub_F71B0C(void **a1, int **a2)
{
  **a1 |= sub_F6D98C(a2, 1, 1);
  v3 = sub_3116D0(a2);
  v4 = sub_311544(a2 + 5);
  if (v3 == v4 || !sub_7E7E4(3u))
  {
    return v3 == v4;
  }

  sub_19594F8(&v16);
  v5 = sub_4A5C(&v16, "PathLeg inconsistency found on junction level, ", 47);
  v6 = sub_3116D0(a2);
  v7 = sub_2FF718(v5, __ROR8__(v6, 32));
  v8 = sub_4A5C(v7, " != ", 4);
  v9 = sub_311544(a2 + 5);
  sub_2FF718(v8, __ROR8__(v9, 32));
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v15 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  if ((v26 & 8) != 0)
  {
    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v15 = 0;
LABEL_14:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v3 == v4;
}

void sub_F71DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_F71E38(int **a1)
{
  if ((*(a1 + 42) & 0x38) == 0)
  {
    return 0;
  }

  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x4D)
    {
      return 0;
    }

    if (v2[38])
    {
      v4 = 0;
      if ((*&v1[v2[38]] & 8) != 0)
      {
        return v4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v3 < 0x4D)
    {
      return 0;
    }

    if (v2[38])
    {
      v4 = 0;
      if ((*&v1[v2[38]] & 4) != 0)
      {
        return v4;
      }

LABEL_10:
      if (v3 <= 0x9A)
      {
        return v4;
      }

      goto LABEL_13;
    }
  }

  if (v3 < 0x9B)
  {
    return 0;
  }

LABEL_13:
  v4 = v2[77];
  if (!v2[77])
  {
    return v4;
  }

  v6 = *&v1[v4];
  if ((v6 & 0x2000000) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  if (!v7 || (v8 = (v7 - *v7), *v8 < 0x11u) || (v9 = v8[8]) == 0)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v4 = 0;
  if ((*(v7 + v9) & 4) != 0 || (v6 & 0x10000) != 0)
  {
    return v4;
  }

LABEL_22:
  if ((v6 & 0x4000000) != 0)
  {
    return 0;
  }

  return !v2[23] || v1[v2[23]] == 32;
}

BOOL sub_F71F38(int **a1)
{
  if ((*(a1 + 42) & 0x3F) == 0)
  {
    return 0;
  }

  v1 = *a1;
  v2 = (*a1 - **a1);
  if (*v2 < 0x9Bu)
  {
    return 0;
  }

  if (!v2[77])
  {
    return 0;
  }

  v3 = *&v1[v2[77]];
  if ((v3 & 0x2000000) == 0 || v2[13] && v1[v2[13]] > 4u)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = (v4 - *v4);
  if (*v5 < 0x1Bu)
  {
    return 0;
  }

  v6 = v5[13];
  if (!v6 || *(v4 + v6) < 6u)
  {
    return 0;
  }

  v7 = v2[38];
  if (*(a1 + 38))
  {
    if (!v2[38])
    {
      goto LABEL_18;
    }

    if ((v1[v7] & 8) != 0)
    {
      return 0;
    }

    v8 = 2;
  }

  else
  {
    if (!v2[38])
    {
      goto LABEL_18;
    }

    if ((v1[v7] & 4) != 0)
    {
      return 0;
    }

    v8 = 1;
  }

  if ((*&v1[v7] & v8) != 0)
  {
    return 0;
  }

LABEL_18:
  v9 = a1[1];
  if (!v9 || (v10 = (v9 - *v9), *v10 < 0x11u) || (v11 = v10[8]) == 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      return 0;
    }

    goto LABEL_25;
  }

  result = 0;
  if ((*(v9 + v11) & 4) == 0 && (v3 & 0x10000) == 0)
  {
LABEL_25:
    if ((v3 & 0x4000000) == 0)
    {
      v13 = v2[23];
      return !v13 || v1[v13] == 32;
    }

    return 0;
  }

  return result;
}

BOOL sub_F72050(void **a1, int **a2)
{
  **a1 |= sub_F705AC(a2, 1, 1);
  v3 = sub_314B90(a2);
  v4 = sub_314A00(a2 + 5);
  if (v3 == v4 || !sub_7E7E4(3u))
  {
    return v3 == v4;
  }

  sub_19594F8(&v16);
  v5 = sub_4A5C(&v16, "PathLeg inconsistency found on junction level, ", 47);
  v6 = sub_314B90(a2);
  v7 = sub_2FF718(v5, __ROR8__(v6, 32));
  v8 = sub_4A5C(v7, " != ", 4);
  v9 = sub_314A00(a2 + 5);
  sub_2FF718(v8, __ROR8__(v9, 32));
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v15 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  if ((v26 & 8) != 0)
  {
    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v15 = 0;
LABEL_14:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v3 == v4;
}

void sub_F72330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F7237C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (((((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 84) >> 1) & 1) != ((((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 84) & 1))
  {
    v4 = result;
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_19:
      **v4 = 0;
      return result;
    }

    sub_19594F8(&v15);
    v6 = sub_4A5C(&v15, "PathLeg inconsistency found, head and subsequent tail node id do not match: ", 76);
    v7 = sub_421CD4(v6, (((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 84) >> 1) & 1);
    v8 = sub_4A5C(v7, " != ", 4);
    v9 = sub_421CD4(v8, (((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 84) & 1);
    sub_4A5C(v9, ".", 1);
    if ((v25 & 0x10) != 0)
    {
      v11 = v24;
      if (v24 < v21)
      {
        v24 = v21;
        v11 = v21;
      }

      v12 = v20;
      v10 = v11 - v20;
      if (v11 - v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v25 & 8) == 0)
      {
        v10 = 0;
        v14 = 0;
LABEL_14:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 3u);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        std::locale::~locale(&v17);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_19;
      }

      v12 = v18;
      v10 = v19 - v18;
      if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v14 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  return result;
}

void sub_F726C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F7270C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (((((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 88) >> 1) & 1) != ((((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 88) & 1))
  {
    v4 = result;
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_19:
      **v4 = 0;
      return result;
    }

    sub_19594F8(&v15);
    v6 = sub_4A5C(&v15, "PathLeg inconsistency found, head and subsequent tail node id do not match: ", 76);
    v7 = sub_421CD4(v6, (((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 88) >> 1) & 1);
    v8 = sub_4A5C(v7, " != ", 4);
    v9 = sub_421CD4(v8, (((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 88) & 1);
    sub_4A5C(v9, ".", 1);
    if ((v25 & 0x10) != 0)
    {
      v11 = v24;
      if (v24 < v21)
      {
        v24 = v21;
        v11 = v21;
      }

      v12 = v20;
      v10 = v11 - v20;
      if (v11 - v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v25 & 8) == 0)
      {
        v10 = 0;
        v14 = 0;
LABEL_14:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 3u);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        std::locale::~locale(&v17);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_19;
      }

      v12 = v18;
      v10 = v19 - v18;
      if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v14 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  return result;
}

void sub_F72A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_F72A9C(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = *v2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = 8 * ((v3 - *v2) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v15 = 40 * v8 + 40;
    v16 = 40 * v8 - (v3 - v7);
    memcpy((v13 - (v3 - v7)), v7, v3 - v7);
    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v2 + 8) = v3 + 40;
  }

  return result;
}

uint64_t sub_F72BF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 72);
  v6 = HIDWORD(v5) & 0x40000000;
  if (v5 < 0 && v6 == 0)
  {
    v8 = 0x40000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 32);
  if ((v9 & 0x4000000000000000) == 0 && v9 < 0)
  {
    v11 = 0x40000000;
  }

  else
  {
    v11 = 0;
  }

  if (v5 != v9 || ((*(a2 + 80) >> 26) & 0x80000000 | HIDWORD(v5) & 0xFFFFFFF | (v5 >> 33) & 0x10000000 | (v6 >> 1) | v8) != ((*(a3 + 80) >> 25) & 0x80000000 | HIDWORD(v9) & 0xFFFFFFF | (v9 >> 33) & 0x10000000 | ((HIDWORD(v9) & 0x40000000u) >> 1) | v11))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_44:
      **v4 = 0;
      return result;
    }

    sub_19594F8(&v30);
    v13 = sub_4A5C(&v30, "PathLeg inconsistency found, head and subsequent tail node id do not match: ", 76);
    v14 = *(a2 + 72);
    v15 = HIDWORD(v14) & 0x40000000;
    if (v14 < 0 && v15 == 0)
    {
      v17 = 0x40000000;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_444030(v13, *(a2 + 72) | (((*(a2 + 80) >> 26) & 0x80000000 | HIDWORD(v14) & 0xFFFFFFF | (v14 >> 33) & 0x10000000 | (v15 >> 1) | v17) << 32));
    v19 = sub_4A5C(v18, " != ", 4);
    v20 = *(a3 + 32);
    v21 = HIDWORD(v20) & 0x40000000;
    if (v20 < 0 && v21 == 0)
    {
      v23 = 0x40000000;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_444030(v19, *(a3 + 32) | (((*(a3 + 80) >> 25) & 0x80000000 | HIDWORD(v20) & 0xFFFFFFF | (v20 >> 33) & 0x10000000 | (v21 >> 1) | v23) << 32));
    sub_4A5C(v24, ".", 1);
    if ((v40 & 0x10) != 0)
    {
      v26 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v26 = v36;
      }

      v27 = v35;
      v25 = v26 - v35;
      if (v26 - v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v25 = 0;
        v29 = 0;
LABEL_39:
        *(&__p + v25) = 0;
        sub_7E854(&__p, 3u);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_44;
      }

      v27 = v33;
      v25 = v34 - v33;
      if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_46:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v29 = v25;
    if (v25)
    {
      memmove(&__p, v27, v25);
    }

    goto LABEL_39;
  }

  return result;
}

void sub_F72FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_F7300C()
{
  byte_27BF967 = 3;
  LODWORD(qword_27BF950) = 5136193;
  byte_27BF97F = 3;
  LODWORD(qword_27BF968) = 5136194;
  byte_27BF997 = 3;
  LODWORD(qword_27BF980) = 5136195;
  byte_27BF9AF = 15;
  strcpy(&qword_27BF998, "vehicle_mass_kg");
  byte_27BF9C7 = 21;
  strcpy(&xmmword_27BF9B0, "vehicle_cargo_mass_kg");
  byte_27BF9DF = 19;
  strcpy(&qword_27BF9C8, "vehicle_aux_power_w");
  byte_27BF9F7 = 15;
  strcpy(&qword_27BF9E0, "dcdc_efficiency");
  strcpy(&qword_27BF9F8, "drive_train_efficiency");
  HIBYTE(word_27BFA0E) = 22;
  operator new();
}

void sub_F731E8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFA0E) < 0)
  {
    sub_21E5728();
  }

  sub_21E5734();
  _Unwind_Resume(a1);
}

void *sub_F73208(void *a1, int a2)
{
  switch(a2)
  {
    case 0:
      v3 = "SOFT_CLOSURES";
      goto LABEL_15;
    case 1:
      v3 = "HARD_CLOSURES";
      goto LABEL_15;
    case 2:
      v3 = "AREA_INCIDENTS";
      v4 = 14;
      goto LABEL_27;
    case 3:
      v3 = "TIME_BASED_RESTRICTIONS";
      goto LABEL_22;
    case 4:
      v3 = "REGULAR_TOLLS";
LABEL_15:
      v4 = 13;
      goto LABEL_27;
    case 5:
      v3 = "HIGHWAYS";
      goto LABEL_25;
    case 6:
      v3 = "FERRIES";
      v4 = 7;
      goto LABEL_27;
    case 7:
      v3 = "FORDS";
      v4 = 5;
      goto LABEL_27;
    case 8:
      v3 = "BARRIERS";
LABEL_25:
      v4 = 8;
      goto LABEL_27;
    case 9:
      v3 = "TOLL_CONGESTION_ZONES";
      v4 = 21;
      goto LABEL_27;
    case 10:
      v3 = "ENVIRONMENTAL_CONGESTION_ZONES";
      v4 = 30;
      goto LABEL_27;
    case 11:
      v3 = "RESTRICTED_ZONE_VIOLATIONS";
      goto LABEL_6;
    case 12:
      v3 = "DANGEROUS_SEQUENCES";
      v4 = 19;
      goto LABEL_27;
    case 13:
      v3 = "DANGEROUS_TURNS";
      v4 = 15;
      goto LABEL_27;
    case 14:
      v3 = "LEG_ORIGIN_CLIPPED";
      v4 = 18;
      goto LABEL_27;
    case 15:
      v3 = "LEG_DESTINATION_CLIPPED";
      goto LABEL_22;
    case 16:
      v3 = "LEG_WALKING_PREFIX_CLIPPED";
LABEL_6:
      v4 = 26;
      goto LABEL_27;
    case 17:
      v3 = "LEG_STARTS_WITH_U_TURN_MANEUVER";
      v4 = 31;
      goto LABEL_27;
    case 18:
      v3 = "LEG_ORIGIN_WAYPOINT_GAP";
LABEL_22:
      v4 = 23;
      goto LABEL_27;
    case 19:
      v3 = "BIASED_TO_USER_ROUTE";
      v4 = 20;
      goto LABEL_27;
    case 20:
      v3 = "BIASED_TO_FAMILIAR_ROUTE";
      v4 = 24;
LABEL_27:
      sub_4A5C(a1, v3, v4);
      break;
    default:
      return a1;
  }

  return a1;
}

unint64_t sub_F73420(uint64_t *a1, __int128 *a2, int a3)
{
  result = sub_F69D6C(a2);
  if (result)
  {
    return result;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v11 = a1[1];
      v9 = a1 + 1;
      v8 = v11;
LABEL_19:
      if (v8 >= a1[2])
      {
        result = sub_F749F0(a1, a2);
        *v9 = result;
      }

      else
      {
        result = sub_49D2CC(v8, a2);
        *v9 = v8 + 552;
        *v9 = v8 + 552;
      }

      return result;
    }

    v7 = *a1;
    v9 = a1 + 1;
    v8 = a1[1];
    if (*a1 == v8)
    {
      goto LABEL_19;
    }

    while (1)
    {
      result = sub_F6BA98(v7, a2);
      if (result)
      {
        break;
      }

      v7 += 69;
      if (v7 == v8)
      {
LABEL_11:
        v7 = v8;
        break;
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    if (*a1 != v8)
    {
      while (1)
      {
        result = sub_117D6DC(a2, v7);
        if (result)
        {
          break;
        }

        v7 += 69;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v9 = a1 + 1;
  v8 = a1[1];
  if (v7 == v8)
  {
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    v10 = sub_F69D2C(a2);
    result = sub_F69D2C(v7);
    if (v10 < result)
    {

      return sub_DF4D5C(v7, a2);
    }
  }

  return result;
}

uint64_t *sub_F735B8(uint64_t *result, __int128 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = sub_F73420(v6, v3, a3);
      v3 = (v3 + 552);
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t sub_F7360C(uint64_t a1, __int128 *a2, int a3)
{
  result = sub_F69D6C(a2);
  if (result)
  {
    return result;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v11 = *(a1 + 8);
      v9 = (a1 + 8);
      v8 = v11;
LABEL_19:
      if (v8 >= *(a1 + 16))
      {
        result = sub_D1D838(a1, a2);
        *v9 = result;
      }

      else
      {
        result = sub_49EA74(v8, a2);
        *v9 = v8 + 552;
        *v9 = v8 + 552;
      }

      return result;
    }

    v7 = *a1;
    v9 = (a1 + 8);
    v8 = *(a1 + 8);
    if (*a1 == v8)
    {
      goto LABEL_19;
    }

    while (1)
    {
      result = sub_F6E668(v7, a2);
      if (result)
      {
        break;
      }

      v7 += 69;
      if (v7 == v8)
      {
LABEL_11:
        v7 = v8;
        break;
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    if (*a1 != v8)
    {
      while (1)
      {
        result = sub_117DC2C(a2, v7);
        if (result)
        {
          break;
        }

        v7 += 69;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (v7 == v8)
  {
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    v10 = sub_F6D024(a2);
    result = sub_F6D024(v7);
    if (v10 < result)
    {

      return sub_49C304(v7, a2);
    }
  }

  return result;
}

unint64_t sub_F73788(unint64_t result, __int128 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = sub_F7360C(v6, v3, a3);
      v3 = (v3 + 552);
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t sub_F737DC(char **a1, __int128 *a2, int a3)
{
  result = sub_F6FDC8(a2);
  if (result)
  {
    return result;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v11 = a1[1];
      v9 = a1 + 1;
      v8 = v11;
LABEL_19:
      if (v8 >= a1[2])
      {
        result = sub_D1DBCC(a1, a2);
        *v9 = result;
      }

      else
      {
        result = sub_49F780(v8, a2);
        *v9 = v8 + 552;
        *v9 = v8 + 552;
      }

      return result;
    }

    v7 = *a1;
    v9 = a1 + 1;
    v8 = a1[1];
    if (*a1 == v8)
    {
      goto LABEL_19;
    }

    while (1)
    {
      result = sub_F711D0(v7, a2);
      if (result)
      {
        break;
      }

      v7 += 552;
      if (v7 == v8)
      {
LABEL_11:
        v7 = v8;
        break;
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    if (*a1 != v8)
    {
      while (1)
      {
        result = sub_117E17C(a2, v7);
        if (result)
        {
          break;
        }

        v7 += 552;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v9 = a1 + 1;
  v8 = a1[1];
  if (v7 == v8)
  {
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    v10 = sub_F6FD88(a2);
    result = sub_F6FD88(v7);
    if (v10 < result)
    {

      return sub_49C304(v7, a2);
    }
  }

  return result;
}

char **sub_F73958(char **result, __int128 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = sub_F737DC(v6, v3, a3);
      v3 = (v3 + 552);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_F739AC(unint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v13 = a1[1];
      v8 = a1 + 1;
      v7 = v13;
LABEL_21:
      if (v7 >= a1[2])
      {
        *v8 = sub_F74E1C(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v14 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v14;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_21;
    }

    while (!sub_F654A4(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E644(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v9 = sub_F65630(a2);
    v10 = sub_F65630(v6);
    if (v6 != a2 && v9 < v10)
    {
      sub_DF4ABC(v6, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
      v11 = *(a2 + 47);
      if (*(v6 + 47) < 0)
      {
        if (v11 >= 0)
        {
          v15 = (a2 + 24);
        }

        else
        {
          v15 = *(a2 + 24);
        }

        if (v11 >= 0)
        {
          v16 = *(a2 + 47);
        }

        else
        {
          v16 = *(a2 + 32);
        }

        sub_13B38((v6 + 24), v15, v16);
      }

      else if ((*(a2 + 47) & 0x80) != 0)
      {
        v17 = *(a2 + 24);
        v18 = *(a2 + 32);

        sub_13A68((v6 + 24), v17, v18);
      }

      else
      {
        v12 = *(a2 + 24);
        *(v6 + 40) = *(a2 + 40);
        *(v6 + 24) = v12;
      }
    }
  }
}

void sub_F73C10(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F73C30(unint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v14 = a1[1];
      v8 = a1 + 1;
      v7 = v14;
LABEL_25:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75028(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v15 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v15;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_25;
    }

    while (!sub_F654A4(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E644(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  if (a3 == 3)
  {
    v9 = sub_F65630(a2);
    if (v9 < sub_F65630(v6))
    {
      v10 = *v6;
      if (*v6)
      {
        v11 = *(v6 + 8);
        v12 = *v6;
        if (v11 != v10)
        {
          do
          {
            v11 = sub_4547F0(v11 - 552);
          }

          while (v11 != v10);
          v12 = *v6;
        }

        *(v6 + 8) = v10;
        operator delete(v12);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
      }

      *v6 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(v6 + 47) < 0)
      {
        operator delete(*(v6 + 24));
      }

      v13 = *(a2 + 24);
      *(v6 + 40) = *(a2 + 40);
      *(v6 + 24) = v13;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }
}

void sub_F73E58(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void **sub_F73E94(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 == v6)
    {
      if (v6 != a2)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    do
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = v7[1];
        v11 = *v7;
        if (v10 != v9)
        {
          do
          {
            v10 = sub_4547F0(v10 - 552);
          }

          while (v10 != v9);
          v11 = *v7;
        }

        v7[1] = v9;
        operator delete(v11);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
      }

      *v7 = *v4;
      v7[2] = v4[2];
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      if (*(v7 + 47) < 0)
      {
        operator delete(v7[3]);
      }

      v8 = *(v4 + 3);
      v7[5] = v4[5];
      *(v7 + 3) = v8;
      *(v4 + 47) = 0;
      *(v4 + 24) = 0;
      v4 += 6;
      v7 += 6;
    }

    while (v4 != v6);
    v6 = *(a1 + 8);
    if (v6 == v7)
    {
LABEL_14:
      *(a1 + 8) = v7;
      return a2;
    }

    while (1)
    {
LABEL_18:
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
        v13 = v6 - 6;
        v14 = *(v6 - 6);
        if (v14)
        {
LABEL_22:
          v15 = *(v6 - 5);
          v16 = v14;
          if (v15 != v14)
          {
            do
            {
              v15 = sub_4547F0(v15 - 552);
            }

            while (v15 != v14);
            v16 = *v13;
          }

          *(v6 - 5) = v14;
          operator delete(v16);
        }
      }

      else
      {
        v13 = v6 - 6;
        v14 = *(v6 - 6);
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v6 = v13;
      if (v13 == v7)
      {
        goto LABEL_14;
      }
    }
  }

  return a2;
}

void sub_F74004(unint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v13 = a1[1];
      v8 = a1 + 1;
      v7 = v13;
LABEL_21:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75234(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v14 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v14;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_21;
    }

    while (!sub_F63CCC(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E6F8(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v9 = sub_F64018(a2);
    v10 = sub_F64018(v6);
    if (v6 != a2 && v9 < v10)
    {
      sub_DF7B18(v6, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
      v11 = *(a2 + 47);
      if (*(v6 + 47) < 0)
      {
        if (v11 >= 0)
        {
          v15 = (a2 + 24);
        }

        else
        {
          v15 = *(a2 + 24);
        }

        if (v11 >= 0)
        {
          v16 = *(a2 + 47);
        }

        else
        {
          v16 = *(a2 + 32);
        }

        sub_13B38((v6 + 24), v15, v16);
      }

      else if ((*(a2 + 47) & 0x80) != 0)
      {
        v17 = *(a2 + 24);
        v18 = *(a2 + 32);

        sub_13A68((v6 + 24), v17, v18);
      }

      else
      {
        v12 = *(a2 + 24);
        *(v6 + 40) = *(a2 + 40);
        *(v6 + 24) = v12;
      }
    }
  }
}

void sub_F74268(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F74288(unint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v14 = a1[1];
      v8 = a1 + 1;
      v7 = v14;
LABEL_25:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75440(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v15 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v15;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_25;
    }

    while (!sub_F63CCC(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E6F8(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  if (a3 == 3)
  {
    v9 = sub_F64018(a2);
    if (v9 < sub_F64018(v6))
    {
      v10 = *v6;
      if (*v6)
      {
        v11 = *(v6 + 8);
        v12 = *v6;
        if (v11 != v10)
        {
          do
          {
            v11 = sub_4547F0(v11 - 552);
          }

          while (v11 != v10);
          v12 = *v6;
        }

        *(v6 + 8) = v10;
        operator delete(v12);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
      }

      *v6 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(v6 + 47) < 0)
      {
        operator delete(*(v6 + 24));
      }

      v13 = *(a2 + 24);
      *(v6 + 40) = *(a2 + 40);
      *(v6 + 24) = v13;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }
}

void sub_F744B0(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F744D0(unint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F64B34(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v13 = a1[1];
      v8 = a1 + 1;
      v7 = v13;
LABEL_21:
      if (v7 >= a1[2])
      {
        *v8 = sub_F7564C(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v14 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v14;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_21;
    }

    while (!sub_F64AA8(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E7AC(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v9 = sub_F64C84(a2);
    v10 = sub_F64C84(v6);
    if (v6 != a2 && v9 < v10)
    {
      sub_DFA7E4(v6, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
      v11 = *(a2 + 47);
      if (*(v6 + 47) < 0)
      {
        if (v11 >= 0)
        {
          v15 = (a2 + 24);
        }

        else
        {
          v15 = *(a2 + 24);
        }

        if (v11 >= 0)
        {
          v16 = *(a2 + 47);
        }

        else
        {
          v16 = *(a2 + 32);
        }

        sub_13B38((v6 + 24), v15, v16);
      }

      else if ((*(a2 + 47) & 0x80) != 0)
      {
        v17 = *(a2 + 24);
        v18 = *(a2 + 32);

        sub_13A68((v6 + 24), v17, v18);
      }

      else
      {
        v12 = *(a2 + 24);
        *(v6 + 40) = *(a2 + 40);
        *(v6 + 24) = v12;
      }
    }
  }
}

void sub_F74734(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F74754(unint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F64B34(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v14 = a1[1];
      v8 = a1 + 1;
      v7 = v14;
LABEL_25:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75858(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v15 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v15;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_25;
    }

    while (!sub_F64AA8(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E7AC(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  if (a3 == 3)
  {
    v9 = sub_F64C84(a2);
    if (v9 < sub_F64C84(v6))
    {
      v10 = *v6;
      if (*v6)
      {
        v11 = *(v6 + 8);
        v12 = *v6;
        if (v11 != v10)
        {
          do
          {
            v11 = sub_4547F0(v11 - 552);
          }

          while (v11 != v10);
          v12 = *v6;
        }

        *(v6 + 8) = v10;
        operator delete(v12);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
      }

      *v6 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(v6 + 47) < 0)
      {
        operator delete(*(v6 + 24));
      }

      v13 = *(a2 + 24);
      *(v6 + 40) = *(a2 + 40);
      *(v6 + 24) = v13;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }
}

void sub_F7497C(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F7499C(unint64_t *a1, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      sub_F74754(a1, v3, a3);
      v3 += 48;
    }

    while (v3 != v4);
  }
}

uint64_t sub_F749F0(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49D2CC(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F74B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F74B54(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49EA74(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F74CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F74CB8(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49F780(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F74E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F74E1C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F74FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_487EC4(v3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75028(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_487EC4(v3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75234(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_487EC4(v3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F7542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75440(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F7561C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_487EC4(v3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F7564C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_487EC4(v3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75858(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_487EC4(v3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75A64()
{
  byte_27BFA6F = 3;
  LODWORD(qword_27BFA58) = 5136193;
  byte_27BFA87 = 3;
  LODWORD(qword_27BFA70) = 5136194;
  byte_27BFA9F = 3;
  LODWORD(qword_27BFA88) = 5136195;
  byte_27BFAB7 = 15;
  strcpy(&qword_27BFAA0, "vehicle_mass_kg");
  byte_27BFACF = 21;
  strcpy(&xmmword_27BFAB8, "vehicle_cargo_mass_kg");
  byte_27BFAE7 = 19;
  strcpy(&qword_27BFAD0, "vehicle_aux_power_w");
  byte_27BFAFF = 15;
  strcpy(&qword_27BFAE8, "dcdc_efficiency");
  strcpy(&qword_27BFB00, "drive_train_efficiency");
  HIBYTE(word_27BFB16) = 22;
  operator new();
}

void sub_F75C40(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFB16) < 0)
  {
    sub_21E5804();
  }

  sub_21E5810();
  _Unwind_Resume(a1);
}

void sub_F75C60(void *a1, uint64_t a2)
{
  v3 = a1[16];
  v4 = a1[17];
  if (v3 < v4)
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 64);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = v7;
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    v10 = *(a2 + 128);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 128) = v10;
    *(v3 + 80) = v8;
    *(v3 + 96) = v9;
    v11 = *(a2 + 144);
    v12 = *(a2 + 160);
    v13 = *(a2 + 176);
    *(v3 + 192) = *(a2 + 192);
    *(v3 + 160) = v12;
    *(v3 + 176) = v13;
    *(v3 + 144) = v11;
    v14 = v3 + 200;
LABEL_3:
    a1[16] = v14;
    return;
  }

  v15 = a1[15];
  v16 = 0x8F5C28F5C28F5C29 * ((v3 - v15) >> 3) + 1;
  if (v16 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  v17 = 0x8F5C28F5C28F5C29 * ((v4 - v15) >> 3);
  if (2 * v17 > v16)
  {
    v16 = 2 * v17;
  }

  if (v17 >= 0xA3D70A3D70A3D7)
  {
    v18 = 0x147AE147AE147AELL;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
    if (v18 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  v19 = *(a2 + 176);
  v20 = 8 * ((v3 - v15) >> 3);
  *(v20 + 160) = *(a2 + 160);
  *(v20 + 176) = v19;
  *(v20 + 192) = *(a2 + 192);
  v21 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v21;
  v22 = *(a2 + 144);
  *(v20 + 128) = *(a2 + 128);
  *(v20 + 144) = v22;
  v23 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v23;
  v24 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v24;
  v25 = *(a2 + 16);
  v14 = v20 + 200;
  v26 = (v20 - (v3 - v15));
  *v20 = *a2;
  *(v20 + 16) = v25;
  memcpy(v26, v15, v3 - v15);
  a1[15] = v26;
  a1[16] = v14;
  a1[17] = 0;
  if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  a1[16] = v14;
}

uint64_t sub_F75E5C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 128);
  *a2 = *(result + 120);
  a2[1] = v2;
  return result;
}

uint64_t sub_F75E68(uint64_t result)
{
  v1 = *(result + 120);
  v2 = *(result + 128);
  v3 = v1;
  v4 = v1;
  if (v2 - v1 >= 200)
  {
    if (v2 - v1 == 200)
    {
      v6 = *(result + 120);
    }

    else
    {
      v5 = 0x8F5C28F5C28F5C29 * ((v2 - v1) >> 3);
      v6 = *(result + 120);
      do
      {
        v7 = 200 * (v5 >> 2);
        _X15 = &v6[v7];
        __asm { PRFM            #0, [X15] }

        v13 = &v6[200 * (v5 >> 1)];
        _X14 = &v13[v7];
        __asm { PRFM            #0, [X14] }

        if (*v13 >= 2u)
        {
          v16 = 0;
        }

        else
        {
          v16 = v5 >> 1;
        }

        v6 += 200 * v16;
        v5 -= v5 >> 1;
      }

      while (v5 > 1);
    }

    v3 = &v6[200 * (*v6 < 2u)];
    v17 = v2 - v3;
    v4 = v3;
    _ZF = v2 - v3 == 200;
    if (v2 - v3 >= 200)
    {
      v19 = v3;
      if (!_ZF)
      {
        v20 = 0x8F5C28F5C28F5C29 * (v17 >> 3);
        v19 = v3;
        do
        {
          v21 = 200 * (v20 >> 2);
          _X15 = &v19[v21];
          __asm { PRFM            #0, [X15] }

          v24 = &v19[200 * (v20 >> 1)];
          _X14 = &v24[v21];
          __asm { PRFM            #0, [X14] }

          if (*v24 >= 3u)
          {
            v27 = 0;
          }

          else
          {
            v27 = v20 >> 1;
          }

          v19 += 200 * v27;
          v20 -= v20 >> 1;
        }

        while (v20 > 1);
      }

      v4 = &v19[200 * (*v19 < 3u)];
    }
  }

  *(result + 144) = -1030792151 * ((v3 - v1) >> 3);
  *(result + 148) = -1030792151 * ((v4 - v1) >> 3);
  return result;
}

BOOL sub_F75FAC(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = *(a1 + 148);
  return v2 != -1 && v1 <= v2 && 0x8F5C28F5C28F5C29 * ((*(a1 + 128) - *(a1 + 120)) >> 3) >= v2;
}

uint64_t sub_F75FFC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 120);
  v3 = v2 + 200 * *(result + 144);
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_F76020@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 120);
  v3 = v2 + 200 * *(result + 144);
  v4 = v2 + 200 * *(result + 148);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_F7603C(uint64_t a1)
{
  v1 = *(a1 + 144);
  LODWORD(v2) = *(a1 + 148);
  if (v1 <= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t sub_F76050@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 128);
  *a2 = *(result + 120) + 200 * *(result + 148);
  a2[1] = v2;
  return result;
}

void sub_F76068(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_F76178(a1, a2, a3, a5, a6);
  v8 = a1[15];
  if (0x8F5C28F5C28F5C29 * ((a1[16] - v8) >> 3) < a4 && 0x8F5C28F5C28F5C29 * ((a1[17] - v8) >> 3) < a4)
  {
    if (a4 < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_F76178(void *a1, unint64_t a2, unint64_t a3, int a4, int a5)
{
  v5 = a2 + 1;
  if (a5 && v5 > (a1[1] - *a1) >> 2 && v5 > (a1[2] - *a1) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    goto LABEL_24;
  }

  v6 = a1[6];
  if (v5 > (a1[7] - v6) >> 2 && v5 > (a1[8] - v6) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

LABEL_24:
    sub_1794();
  }

  if (a5)
  {
    v7 = a1[3];
    if (0xCCCCCCCCCCCCCCCDLL * ((a1[4] - v7) >> 4) < a3 && 0xCCCCCCCCCCCCCCCDLL * ((a1[5] - v7) >> 4) < a3)
    {
      if (a3 <= 0x333333333333333)
      {
        operator new();
      }

      goto LABEL_25;
    }
  }

  v8 = a1[9];
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[10] - v8) >> 4) < a3 && 0xCCCCCCCCCCCCCCCDLL * ((a1[11] - v8) >> 4) < a3)
  {
    if (a3 <= 0x333333333333333)
    {
      operator new();
    }

LABEL_25:
    sub_1794();
  }

  if (a4 && a2 > (a1[14] - a1[12]) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_F764A8(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_F765B8(a1, a2, a3, a5, a6);
  v8 = a1[15];
  if (0x8F5C28F5C28F5C29 * ((a1[16] - v8) >> 3) < a4 && 0x8F5C28F5C28F5C29 * ((a1[17] - v8) >> 3) < a4)
  {
    if (a4 < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_F765B8(void *a1, unint64_t a2, unint64_t a3, int a4, int a5)
{
  v5 = a2 + 1;
  if (a5 && v5 > (a1[1] - *a1) >> 2 && v5 > (a1[2] - *a1) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    goto LABEL_24;
  }

  v6 = a1[6];
  if (v5 > (a1[7] - v6) >> 2 && v5 > (a1[8] - v6) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

LABEL_24:
    sub_1794();
  }

  if (a5)
  {
    v7 = a1[3];
    if (0x6DB6DB6DB6DB6DB7 * ((a1[4] - v7) >> 3) < a3 && 0x6DB6DB6DB6DB6DB7 * ((a1[5] - v7) >> 3) < a3)
    {
      if (a3 <= 0x492492492492492)
      {
        operator new();
      }

      goto LABEL_25;
    }
  }

  v8 = a1[9];
  if (0x6DB6DB6DB6DB6DB7 * ((a1[10] - v8) >> 3) < a3 && 0x6DB6DB6DB6DB6DB7 * ((a1[11] - v8) >> 3) < a3)
  {
    if (a3 <= 0x492492492492492)
    {
      operator new();
    }

LABEL_25:
    sub_1794();
  }

  if (a4 && 0xAAAAAAAAAAAAAAABLL * ((a1[14] - a1[12]) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_F76918()
{
  byte_27BFB77 = 3;
  LODWORD(qword_27BFB60) = 5136193;
  byte_27BFB8F = 3;
  LODWORD(qword_27BFB78) = 5136194;
  byte_27BFBA7 = 3;
  LODWORD(qword_27BFB90) = 5136195;
  byte_27BFBBF = 15;
  strcpy(&qword_27BFBA8, "vehicle_mass_kg");
  byte_27BFBD7 = 21;
  strcpy(&xmmword_27BFBC0, "vehicle_cargo_mass_kg");
  byte_27BFBEF = 19;
  strcpy(&qword_27BFBD8, "vehicle_aux_power_w");
  byte_27BFC07 = 15;
  strcpy(&qword_27BFBF0, "dcdc_efficiency");
  strcpy(&qword_27BFC08, "drive_train_efficiency");
  HIBYTE(word_27BFC1E) = 22;
  operator new();
}

void sub_F76AF4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFC1E) < 0)
  {
    sub_21E58E0();
  }

  sub_21E58EC();
  _Unwind_Resume(a1);
}

uint64_t sub_F76B14(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_F76B2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = a3;
  sub_F8D28C(a1 + 48, a3);
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_F76B90(uint64_t a1@<X0>, void *a2@<X1>, int32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  sub_F775BC(a1, a2);
  *(a1 + 128) = *(a1 + 120);
  v7 = ((v4[13] - v4[12]) >> 2);
  LODWORD(__t[0].__d_.__rep_) = -1;
  if (v7)
  {
    sub_569AC(a1 + 120, v7, __t);
  }

  v8 = sub_F99138(v4);
  if (((v4[13] - v4[12]) >> 2))
  {
    operator new();
  }

  v9 = v4[15];
  for (i = v4[16]; v9 != i; ++*(2 * v11))
  {
    v11 = *v9;
    v9 += 26;
  }

  v74 = (a1 + 120);
  v76 = a1;
  v77 = v4;
  v12 = v4[13] - v4[12];
  if ((v12 & 0x3FFFFFFFCLL) != 0)
  {
    v13 = 0;
    v14 = (v12 >> 2);
    v75 = 0;
    do
    {
      v15 = *(v4[21] + 4 * v13);
      if (*(2 * v13))
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && v15 + *(2 * v13) >= 3)
      {
        v18 = v75;
        v19 = v75 >> 2;
        if (((v75 >> 2) + 1) >> 62)
        {
          sub_1794();
        }

        if (v75 >> 2 != -1)
        {
          if (!(((v75 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        *(4 * v19) = v13;
        v75 = 4 * v19 + 4;
        memcpy(0, 0, v18);
        v4 = v77;
        *(*v74 + 4 * v13) = v8++;
      }

      ++v13;
    }

    while (v14 != v13);
  }

  else
  {
    v75 = 0;
  }

  sub_F7C094(a4, 0);
  *(a4 + 136) = 0;
  *(a4 + 120) = 0u;
  *(a4 + 144) = -1;
  v20 = sub_F99138(v4);
  v21 = 2 * v8;
  sub_F76068(a4, v8, v21, v20, 1, *(v76 + 32));
  if (*(v76 + 32) == 1)
  {
    v22 = *(v76 + 192);
    *(v76 + 200) = v22;
    if (v21 > (*(v76 + 208) - v22) >> 2)
    {
      operator new();
    }

    v23 = *(v76 + 216);
    *(v76 + 224) = v23;
    v4 = v77;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(v76 + 232) - v23) >> 4) < v21)
    {
      operator new();
    }
  }

  v78 = a4;
  v25 = *(v76 + 168);
  v24 = *(v76 + 176);
  if (v25 != v24)
  {
    do
    {
      v26 = sub_F99124(v4, *v25);
      LOBYTE(__t[0].__d_.__rep_) = *v26;
      v27 = *(v26 + 4);
      if (v27 == -1)
      {
        v28 = 0;
      }

      else
      {
        v28 = sub_F98E1C(v4, v27);
      }

      __t[1].__d_.__rep_ = v28;
      v29 = *(v26 + 40);
      v30 = *(v26 + 56);
      v31 = *(v26 + 72);
      *&v87 = *(v26 + 88);
      v32 = *(v26 + 24);
      v82 = *(v26 + 8);
      v83 = v32;
      v85 = v30;
      v86 = v31;
      v84 = v29;
      v33 = *(v26 + 96);
      if (v33 == -1)
      {
        v34 = 0;
      }

      else
      {
        v34 = sub_F98E1C(v4, v33);
      }

      *(&v87 + 1) = v34;
      v35 = *(v26 + 120);
      v88 = *(v26 + 104);
      v89 = v35;
      v36 = *(v26 + 136);
      v37 = *(v26 + 152);
      v38 = *(v26 + 168);
      v93 = *(v26 + 184);
      v91 = v37;
      v92 = v38;
      v90 = v36;
      sub_F75C60(v78, __t);
      ++v25;
    }

    while (v25 != v24);
    v25 = *(v76 + 168);
    v24 = *(v76 + 176);
  }

  if (v25 != v24)
  {
    v39 = 0;
    do
    {
      v40 = *v25;
      v41 = sub_F99124(v4, *v25);
      v42 = v41[1];
      v43 = v41[24];
      v44 = *(v78 + 48);
      v45 = *(v78 + 56);
      v46 = v45 - v44;
      if (((v45 - v44) >> 2) - 1 <= v39)
      {
        v47 = v39 + 2;
        v48 = *(v78 + 8);
        v49 = (v48 - *v78) >> 2;
        if (v47 <= v49)
        {
          if (v47 < v49)
          {
            *(v78 + 8) = *v78 + 4 * v47;
          }
        }

        else
        {
          sub_569AC(v78, v47 - v49, (v48 - 4));
          v44 = *(v78 + 48);
          v45 = *(v78 + 56);
          v46 = v45 - v44;
        }

        v50 = v46 >> 2;
        if (v47 <= v50)
        {
          if (v47 < v50)
          {
            *(v78 + 56) = v44 + 4 * v47;
          }
        }

        else
        {
          sub_569AC(v78 + 48, v47 - v50, (v45 - 4));
        }
      }

      if (v42 == -1)
      {
        v51 = 0;
        if (v43 == -1)
        {
LABEL_55:
          v52 = 0;
          goto LABEL_56;
        }
      }

      else
      {
        v51 = sub_F98E1C(v77, v42);
        if (v43 == -1)
        {
          goto LABEL_55;
        }
      }

      v52 = sub_F98E1C(v77, v43);
LABEL_56:
      v53 = sub_5FC5C();
      sub_F8686C(&v79, v51, v52, v41, v53, *(v76 + 40));
      v4 = v77;
      v54 = *(v78 + 96);
      v55 = (*(v78 + 104) - v54) >> 3;
      if (v55 <= v39)
      {
        v56 = v39 + 1;
        __t[0].__d_.__rep_ = 0;
        if (v56 <= v55)
        {
          if (v56 < v55)
          {
            *(v78 + 104) = v54 + 8 * v56;
          }
        }

        else
        {
          sub_331250(v78 + 96, v56 - v55, __t);
          v54 = *(v78 + 96);
        }
      }

      *(v54 + 8 * v39) = v79;
      if (*sub_F99124(v77, v40) == 3)
      {
        sub_F77890(v76, v77, v40, v78);
      }

      else if (v43 != -1)
      {
        sub_F779E4(v76, v77, v43, v41[26], a3, v39, v78);
      }

      ++v39;
      ++v25;
    }

    while (v25 != v24);
  }

  if (v75)
  {
    for (j = 0; j != v75; ++j)
    {
      v58 = *j;
      v59 = *(*v74 + 4 * v58);
      v60 = *(v78 + 48);
      v61 = *(v78 + 56);
      v62 = v61 - v60;
      if (((v61 - v60) >> 2) - 1 <= v59)
      {
        v63 = (v59 + 2);
        v64 = *(v78 + 8);
        v65 = (v64 - *v78) >> 2;
        if (v63 <= v65)
        {
          if (v63 < v65)
          {
            *(v78 + 8) = *v78 + 4 * v63;
          }
        }

        else
        {
          sub_569AC(v78, v63 - v65, (v64 - 4));
          v60 = *(v78 + 48);
          v61 = *(v78 + 56);
          v62 = v61 - v60;
        }

        v66 = v62 >> 2;
        if (v63 <= v66)
        {
          if (v63 < v66)
          {
            *(v78 + 56) = v60 + 4 * v63;
          }
        }

        else
        {
          sub_569AC(v78 + 48, v63 - v66, (v61 - 4));
        }
      }

      v67 = sub_F98E1C(v77, v58);
      v68 = sub_5FC5C();
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v86 = 0u;
      v87 = 0u;
      *(&v84 + 1) = 1;
      v83 = 0u;
      *&__t[0].__d_.__rep_ = 0u;
      HIDWORD(__t[0].__d_.__rep_) = -1;
      v82 = 0uLL;
      *&v83 = 0;
      BYTE8(v83) = 0;
      *&v84 = 0x3FF0000000000000;
      v85 = 0uLL;
      *&v86 = 2359296000;
      *(&v86 + 7) = 0;
      LODWORD(v87) = -1;
      v88 = 0uLL;
      BYTE8(v89) = 0;
      *&v89 = 0;
      *&v90 = 0x3FF0000000000000;
      BYTE8(v90) = 1;
      v91 = 0uLL;
      LODWORD(v92) = -1935671296;
      *(&v92 + 7) = 0;
      DWORD1(v92) = 0;
      sub_F8686C(&v80, v67, v67, __t, v68, *(v76 + 40));
      v69 = *(v78 + 96);
      v70 = (*(v78 + 104) - v69) >> 3;
      if (v70 <= v59)
      {
        v71 = (v59 + 1);
        *&v79 = 0;
        if (v71 <= v70)
        {
          if (v71 < v70)
          {
            *(v78 + 104) = v69 + 8 * v71;
          }
        }

        else
        {
          sub_331250(v78 + 96, v71 - v70, &v79);
          v69 = *(v78 + 96);
        }
      }

      *(v69 + 8 * v59) = v80;
      sub_F779E4(v76, v77, v58, 0, a3, v59, v78);
    }
  }

  if (*(v76 + 33))
  {
    sub_F75E68(v78);
  }

  if (*(v76 + 32) == 1)
  {
    sub_F77CC8(v76, v78);
  }

  if (*(v76 + 34) == 1)
  {
    __t[0] = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(__t);
    *&v79 = *v76;
    DWORD2(v79) = *(v76 + 8);
    BYTE12(v79) = *(v76 + 12);
    if (*(v76 + 32) == 1)
    {
      v72 = *(v76 + 35);
    }

    else
    {
      v72 = 0;
    }

    BYTE13(v79) = v72 & 1;
    sub_F87220(__t, &v79, *(v76 + 40));
    sub_F8725C(__t, v77, a3, *(v76 + 24), v78);
  }

  sub_F81004(v78);
  sub_F81004((v78 + 48));
  sub_F810FC((v78 + 24));
  sub_F810FC((v78 + 72));
}

void sub_F77514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_3EE920(v17);
  if (v18)
  {
    operator delete(v18);
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_F775BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_F99138(a2);
  v6 = *(a1 + 168);
  v5 = *(a1 + 176);
  v7 = (v5 - v6) >> 1;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v5 = (v6 + 2 * v4);
      *(a1 + 176) = v5;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 168, v4 - v7);
    v6 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v6 != v5)
  {
    v8 = v5 - v6 - 2;
    if (v8 < 6)
    {
      LODWORD(v9) = 0;
      v10 = v6;
      goto LABEL_20;
    }

    v11 = (v8 >> 1) + 1;
    if (v8 >= 0x1E)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFF0;
      v14 = xmmword_22AEA30;
      v15 = v6 + 1;
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
      v17.i64[0] = 0x10001000100010;
      v17.i64[1] = 0x10001000100010;
      v18 = v11 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s16(v14, v16);
        v14 = vaddq_s16(v14, v17);
        v15 += 2;
        v18 -= 16;
      }

      while (v18);
      if (v11 == v12)
      {
        goto LABEL_21;
      }

      if ((v11 & 0xC) == 0)
      {
        v10 = (v6 + 2 * v12);
        LODWORD(v9) = v11 & 0xFFFFFFF0;
        do
        {
LABEL_20:
          v10->i16[0] = v9;
          v10 = (v10 + 2);
          LODWORD(v9) = v9 + 1;
        }

        while (v10 != v5);
        goto LABEL_21;
      }

      v13 = v11 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }

    v9 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 2 * (v11 & 0xFFFFFFFFFFFFFFFCLL));
    v19 = vadd_s16(vdup_n_s16(v12), 0x3000200010000);
    v20 = (v6 + 2 * v13);
    v21 = v13 - (v11 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v20++ = v19;
      v19 = vadd_s16(v19, 0x4000400040004);
      v21 += 4;
    }

    while (v21);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v22 = sub_F99138(a2);
  v24 = *(a1 + 144);
  v23 = *(a1 + 152);
  v25 = (v23 - v24) >> 1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v23 = (v24 + 2 * v22);
      *(a1 + 152) = v23;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 144, v22 - v25);
    v24 = *(a1 + 144);
    v23 = *(a1 + 152);
  }

  if (v24 != v23)
  {
    v26 = v23 - v24 - 2;
    if (v26 < 6)
    {
      LODWORD(v27) = 0;
      v28 = v24;
      goto LABEL_40;
    }

    v29 = (v26 >> 1) + 1;
    if (v26 >= 0x1E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFF0;
      v32 = xmmword_22AEA30;
      v33 = v24 + 1;
      v34.i64[0] = 0x8000800080008;
      v34.i64[1] = 0x8000800080008;
      v35.i64[0] = 0x10001000100010;
      v35.i64[1] = 0x10001000100010;
      v36 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v33[-1] = v32;
        *v33 = vaddq_s16(v32, v34);
        v32 = vaddq_s16(v32, v35);
        v33 += 2;
        v36 -= 16;
      }

      while (v36);
      if (v29 == v30)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        v28 = (v24 + 2 * v30);
        LODWORD(v27) = v29 & 0xFFFFFFF0;
        do
        {
LABEL_40:
          v28->i16[0] = v27;
          v28 = (v28 + 2);
          LODWORD(v27) = v27 + 1;
        }

        while (v28 != v23);
        goto LABEL_41;
      }

      v31 = v29 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v30) = 0;
      v31 = 0;
    }

    v27 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v24 + 2 * (v29 & 0xFFFFFFFFFFFFFFFCLL));
    v37 = vadd_s16(vdup_n_s16(v30), 0x3000200010000);
    v38 = (v24 + 2 * v31);
    v39 = v31 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v38++ = v37;
      v37 = vadd_s16(v37, 0x4000400040004);
      v39 += 4;
    }

    while (v39);
    if (v29 != v27)
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  if (*(a1 + 33) == 1)
  {
    v40 = *(a1 + 168);
    v41 = *(a1 + 176);
    v42 = 126 - 2 * __clz((v41 - v40) >> 1);
    v50 = a2;
    if (v41 == v40)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    sub_F81210(v40, v41, &v50, v43, 1);
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = 0;
      v48 = v46 >> 1;
      v49 = *(a1 + 168);
      do
      {
        *(v44 + 2 * *(v49 + 2 * v47)) = v47;
        ++v47;
      }

      while (v48 != v47);
    }
  }
}

void sub_F77890(uint64_t a1, void *a2, unsigned __int16 a3, void *a4)
{
  v6 = a3;
  v7 = sub_F99124(a2, a3);
  v8 = sub_F98E1C(a2, *(v7 + 4));
  v18 = v6;
  sub_F993B4(&v29);
  v10 = v29;
  for (i = v30; v10 != i; ++v10)
  {
    v11 = *v10;
    v12 = sub_F99124(a2, *v10);
    v13 = sub_F98E1C(a2, *(v12 + 96));
    sub_F85884(v28);
    sub_F85EB0(v28, v8, (v7 + 8), v13, (v12 + 104), a1 + 48);
    if (sub_F85894(v28))
    {
      v14 = *(a1 + 144);
      v15 = *(v14 + 2 * v18);
      LODWORD(v14) = *(v14 + 2 * v11);
      v21 = v28[0];
      v16 = *(v7 + 4);
      v17 = *(v12 + 96);
      v22 = v28[1];
      v23 = v28[2];
      v20 = v14;
      v24 = 0x7FFFFFFF;
      v25 = v16;
      v26 = v17;
      v27 = 0;
      sub_F78380(a4, v15, &v20);
    }
  }
}

uint64_t sub_F779E4(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, int32x2_t *a5, unsigned int a6, void *a7)
{
  sub_F85884(v42);
  v30 = a7;
  if (!sub_F75E1C(a7, a6) || (v14 = sub_F75E48(a7, a6), sub_F858F4(v42, v14, 0, a5, *(a1 + 16)), result = sub_F85894(v42), result))
  {
    v16 = a3;
    result = sub_F780D4(a1, a2, a3, a3, a4, a6, 0, a5, v42, a7);
    v17 = a2[12];
    if (a3 >= ((a2[13] - v17) >> 2))
    {
LABEL_24:
      exception = __cxa_allocate_exception(0x40uLL);
      v28 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v18 = *(v17 + 4 * a3);
    if (v18 != -1)
    {
      v29 = 1000000000 - a4;
      v19 = a3;
      do
      {
        v20 = (a2[15] + 104 * v18);
        v39 = v42[0];
        v40 = v42[1];
        v41 = v42[2];
        sub_F85CFC(&v39, v20, v29, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
        v21 = *v20;
        v22 = *(*(a1 + 120) + 4 * v21);
        if (sub_F85894(&v39))
        {
          while (v22 == -1)
          {
            sub_F780D4(a1, a2, v16, v21, 0, a6, v20, a5, &v39, v30);
            if (v21 == v19)
            {
              v22 = -1;
              LODWORD(v21) = v19;
              break;
            }

            v23 = a2[12];
            if (v21 >= (a2[13] - v23) >> 2)
            {
              goto LABEL_24;
            }

            v24 = *(v23 + 4 * v21);
            if (v24 == -1)
            {
              v22 = -1;
              result = sub_F85894(&v39);
              if (result)
              {
                goto LABEL_17;
              }

              goto LABEL_7;
            }

            v25 = (a2[15] + 104 * v24);
            sub_F85CFC(&v39, v25, 0x3B9ACA00u, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
            v21 = *v25;
            v22 = *(*(a1 + 120) + 4 * v21);
            if (!sub_F85894(&v39))
            {
              break;
            }
          }
        }

        result = sub_F85894(&v39);
        if (result)
        {
LABEL_17:
          if (v22 != -1 && v22 != a6)
          {
            v32 = v39;
            v33 = v40;
            v34 = v41;
            v31 = v22;
            v35 = 0x7FFFFFFF;
            v36 = v19;
            v37 = v21;
            v38 = v20;
            result = sub_F78380(v30, a6, &v31);
          }
        }

LABEL_7:
        v18 = *(a2[18] + 4 * v18);
      }

      while (v18 != -1);
    }
  }

  return result;
}

void sub_F77CC8(uint64_t a1, void *a2)
{
  v4 = a2[7] - a2[6];
  v26 = 0;
  v27 = 0;
  __p = 0;
  if ((v4 >> 2) != 1)
  {
    operator new();
  }

  v5 = ((v4 << 30) - 0x100000000) >> 32;
  if (v5)
  {
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      v15 = a2[6];
      if (v14 >= (a2[7] - v15) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v24 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v16 = v13;
      v17 = *(v15 + 4 * v13);
      v18 = *(v15 + 4 * v14);
      if (v17 != v18)
      {
        v19 = a2[9];
        v20 = (v19 + 80 * v18);
        v21 = (v19 + 80 * v17);
        do
        {
          sub_F77EBC(a1 + 192, v16, v21);
          v22 = *v21;
          v21 += 20;
          ++*(4 * v22);
        }

        while (v21 != v20);
      }

      v13 = v16 + 1;
    }

    while (v16 + 1 != v5);
  }

  v8 = *(a1 + 216);
  v7 = a1 + 216;
  v6 = v8;
  v9 = *(v7 - 24);
  v10 = *(v7 - 16);
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_F7C320(v9, v6, v10, *(v7 + 8), &v28, v12, 1);
  sub_F78598(a2, &__p, v7);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_F77E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    v10 = a1;
    operator delete(__p);
    a1 = v10;
  }

  _Unwind_Resume(a1);
}

void sub_F77EBC(uint64_t a1, int a2, int *a3)
{
  v6 = *a3;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_1794();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 62))
      {
        operator new();
      }

LABEL_28:
      sub_1808();
    }

    *(4 * v12) = v6;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (v16 < v17)
  {
    *v16 = *a3;
    v18 = *(a3 + 1);
    v19 = *(a3 + 2);
    v20 = *(a3 + 4);
    *(v16 + 3) = *(a3 + 3);
    *(v16 + 4) = v20;
    *(v16 + 1) = v18;
    *(v16 + 2) = v19;
    v21 = v16 + 80;
    goto LABEL_27;
  }

  v22 = *(a1 + 24);
  v23 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v22) >> 4) + 1;
  if (v23 > 0x333333333333333)
  {
    sub_1794();
  }

  v24 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v22) >> 4);
  if (2 * v24 > v23)
  {
    v23 = 2 * v24;
  }

  if (v24 >= 0x199999999999999)
  {
    v25 = 0x333333333333333;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 <= 0x333333333333333)
    {
      operator new();
    }

    goto LABEL_28;
  }

  v26 = (16 * ((v16 - v22) >> 4));
  v27 = *(a3 + 3);
  v26[2] = *(a3 + 2);
  v26[3] = v27;
  v26[4] = *(a3 + 4);
  v28 = *(a3 + 1);
  *v26 = *a3;
  v26[1] = v28;
  v21 = v26 + 5;
  v29 = v26 - (v16 - v22);
  memcpy(v29, v22, v16 - v22);
  *(a1 + 24) = v29;
  *(a1 + 32) = v21;
  *(a1 + 40) = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_27:
  *(a1 + 32) = v21;
  *(v21 - 20) = a2;
}

unint64_t sub_F780D4(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10)
{
  result = sub_F9903C(a2, a4);
  if (result)
  {
    v38 = a3;
    v39 = a7;
    v18 = sub_3AF6B4(**(a1 + 40));
    v19 = sub_F98E1C(a2, a4);
    v20 = HIDWORD(v19);
    v21 = HIDWORD(v19) & 0xFFFF0000FFFFFFFFLL | (WORD1(v19) << 32);
    v40 = ((HIDWORD(v19) & 0xFFFE0000FFFFFFFFLL | (WORD1(v19) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v19 >> 1) & 1) << 48)) ^ 0x1000000000000);
    v22 = sub_2B51D8(v18, v21);
    if (*(v18 + 7772) == 1)
    {
      v23 = v19 << 16;
      v24 = sub_30C50C(v18 + 3896, v20, 0);
      v25 = &v24[-*v24];
      if (*v25 < 5u)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v25 + 2);
        if (v26)
        {
          v26 += &v24[*&v24[v26]];
        }
      }

      v27 = (v26 + ((v23 >> 30) & 0x3FFFC) + 4 + *(v26 + ((v23 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v27 = 0;
    }

    v57[0] = v22;
    v57[1] = v27;
    v57[2] = sub_31D7E8(v18, v21, 1);
    v57[3] = v28;
    v57[4] = v40;
    sub_F99160(a2, a4, v55);
    result = sub_F992C4(a2, a4, &v54);
    v29 = v55[0];
    v30 = v56;
    if (v55[0] != v56)
    {
      v31 = v55[1];
      v32 = v54;
      do
      {
        v33 = *(*(a1 + 144) + 2 * *v32);
        if (a6 != v33)
        {
          v34 = *v31 + 192 * *v29;
          if (*(v34 + 4) == a4)
          {
            v35 = *(v34 + 8);
            if (v35 >= a5)
            {
              v36 = a9[1];
              v51 = *a9;
              v52 = v36;
              v53 = a9[2];
              sub_F85BC0(&v51, v57, v35 - a5, a8, *(a1 + 16), *(a1 + 12), *(a1 + 40));
              result = sub_F85894(&v51);
              if (result)
              {
                v37 = sub_F75E48(a10, v33);
                sub_F858F4(&v51, v37, 1, a8, *(a1 + 16));
                result = sub_F85894(&v51);
                if (result)
                {
                  v44 = v51;
                  v45 = v52;
                  v46 = v53;
                  v43 = v33;
                  v47 = 0x7FFFFFFF;
                  v48 = v38;
                  v49 = a4;
                  v50 = v39;
                  result = sub_F78380(a10, a6, &v43);
                }
              }
            }
          }
        }

        ++v29;
        ++v32;
      }

      while (v29 != v30);
    }
  }

  return result;
}

_OWORD *sub_F78380(void *a1, unsigned int a2, _OWORD *a3)
{
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1 + 6;
  v6 = a2 + 1;
  v7 = v4 - v3;
  v8 = ((v4 - v3) >> 2) - 1;
  if (a2 + 1 < v8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(exception, "outgoing arc cannot be inserted because vertices with higher index are already present in the graph", 0x63uLL);
  }

  if (v8 <= a2)
  {
    v11 = a2 + 2;
    v12 = a1[1];
    v13 = (v12 - *a1) >> 2;
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        a1[1] = *a1 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(a1, v11 - v13, (v12 - 4));
      v3 = a1[6];
      v4 = a1[7];
      v7 = v4 - v3;
    }

    v14 = v7 >> 2;
    if (v11 <= v14)
    {
      if (v11 < v14)
      {
        a1[7] = v3 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(v5, v11 - v14, (v4 - 4));
    }
  }

  v15 = a1[10];
  v16 = a1[11];
  if (v15 >= v16)
  {
    v21 = a1[9];
    v22 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v21) >> 4) + 1;
    if (v22 > 0x333333333333333)
    {
      sub_1794();
    }

    v23 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v21) >> 4);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x199999999999999)
    {
      v24 = 0x333333333333333;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v25 = (16 * ((v15 - v21) >> 4));
    v26 = a3[3];
    v25[2] = a3[2];
    v25[3] = v26;
    v25[4] = a3[4];
    v27 = a3[1];
    *v25 = *a3;
    v25[1] = v27;
    v20 = v25 + 5;
    v28 = v25 - (v15 - v21);
    memcpy(v28, v21, v15 - v21);
    a1[9] = v28;
    a1[10] = v20;
    a1[11] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v15 = *a3;
    v17 = a3[1];
    v18 = a3[2];
    v19 = a3[4];
    *(v15 + 3) = a3[3];
    *(v15 + 4) = v19;
    *(v15 + 1) = v17;
    *(v15 + 2) = v18;
    v20 = v15 + 80;
  }

  v29 = a1[6];
  v30 = *(v29 + 4 * v6);
  a1[10] = v20;
  *(v29 + 4 * v6) = v30 + 1;
  return v20 - 5;
}

void sub_F78598(uint64_t a1, char **a2, uint64_t a3)
{
  v7 = (a1 + 24);
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *(a1 + 24) = *a3;
  *(a1 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = *a2;
  v9 = a2[1];
  v10 = 0;
  v11 = v9 - v8;
  if (v11)
  {
    v12 = v11 >> 2;
    v13 = *a1;
    do
    {
      *v13++ = v10;
      v14 = *v8;
      v8 += 4;
      v10 += v14;
      --v12;
    }

    while (v12);
  }

  *(*(a1 + 8) - 4) = v10;
  sub_F81004(a1);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 4) != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v16 = sub_2D390(exception, "sum of in-degrees does not match the size of the incoming arc vector", 0x44uLL);
  }
}

uint64_t sub_F7868C(void *a1, unsigned int a2, __int128 *a3)
{
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1 + 6;
  v6 = a2 + 1;
  v7 = v4 - v3;
  v8 = ((v4 - v3) >> 2) - 1;
  if (a2 + 1 < v8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v32 = sub_2D390(exception, "outgoing arc cannot be inserted because vertices with higher index are already present in the graph", 0x63uLL);
  }

  if (v8 <= a2)
  {
    v11 = a2 + 2;
    v12 = a1[1];
    v13 = (v12 - *a1) >> 2;
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        a1[1] = *a1 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(a1, v11 - v13, (v12 - 4));
      v3 = a1[6];
      v4 = a1[7];
      v7 = v4 - v3;
    }

    v14 = v7 >> 2;
    if (v11 <= v14)
    {
      if (v11 < v14)
      {
        a1[7] = v3 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(v5, v11 - v14, (v4 - 4));
    }
  }

  v15 = a1[10];
  v16 = a1[11];
  if (v15 >= v16)
  {
    v21 = a1[9];
    v22 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v21) >> 3) + 1;
    if (v22 > 0x492492492492492)
    {
      sub_1794();
    }

    v23 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v21) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x249249249249249)
    {
      v24 = 0x492492492492492;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v25 = 8 * ((v15 - v21) >> 3);
    v26 = a3[1];
    *v25 = *a3;
    *(v25 + 16) = v26;
    *(v25 + 32) = a3[2];
    *(v25 + 48) = *(a3 + 6);
    v20 = v25 + 56;
    v27 = (v25 - (v15 - v21));
    memcpy(v27, v21, v15 - v21);
    a1[9] = v27;
    a1[10] = v20;
    a1[11] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = a3[2];
    *(v15 + 48) = *(a3 + 6);
    *(v15 + 16) = v18;
    *(v15 + 32) = v19;
    *v15 = v17;
    v20 = v15 + 56;
  }

  v28 = a1[6];
  v29 = *(v28 + 4 * v6);
  a1[10] = v20;
  *(v28 + 4 * v6) = v29 + 1;
  return v20 - 56;
}

void sub_F788BC(uint64_t a1, char **a2, uint64_t a3)
{
  v7 = (a1 + 24);
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *(a1 + 24) = *a3;
  *(a1 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = *a2;
  v9 = a2[1];
  v10 = 0;
  v11 = v9 - v8;
  if (v11)
  {
    v12 = v11 >> 2;
    v13 = *a1;
    do
    {
      *v13++ = v10;
      v14 = *v8;
      v8 += 4;
      v10 += v14;
      --v12;
    }

    while (v12);
  }

  *(*(a1 + 8) - 4) = v10;
  sub_F81004(a1);
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - *(a1 + 24)) >> 3) != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v16 = sub_2D390(exception, "sum of in-degrees does not match the size of the incoming arc vector", 0x44uLL);
  }
}

void sub_F789B8(uint64_t a1@<X0>, uint64_t *a2@<X1>, int32x2_t *a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  sub_F79798(a1, a2);
  *(a1 + 128) = *(a1 + 120);
  v7 = sub_F94B90(v4);
  LODWORD(__t[0].__d_.__rep_) = -1;
  v8 = (*(a1 + 128) - *(a1 + 120)) >> 2;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      *(a1 + 128) = *(a1 + 120) + 4 * v7;
    }
  }

  else
  {
    sub_569AC(a1 + 120, v7 - v8, __t);
  }

  v9 = sub_F94CB4(v4);
  if (sub_F94B90(v4))
  {
    operator new();
  }

  if (sub_F94B90(v4))
  {
    operator new();
  }

  v58 = a1;
  sub_F79A6C(v4, __t);
  if (v63[1] != v63[0])
  {
    if (((v63[1] - v63[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v60 = a4;
  if (v65 != *(&v64 + 1))
  {
    if (((v65 - *(&v64 + 1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v59 = v4;
  if (v67[1] != v67[0])
  {
    if (((v67[1] - v67[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v70 != v69)
  {
    if (((v70 - v69) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v69)
  {
    *&v70 = v69;
    operator delete(v69);
  }

  if (v67[0])
  {
    v67[1] = v67[0];
    operator delete(v67[0]);
  }

  if (*(&v64 + 1))
  {
    *&v65 = *(&v64 + 1);
    operator delete(*(&v64 + 1));
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  v10 = sub_F94B90(v4);
  if (v10)
  {
    v11 = 0;
    v12 = v10;
    do
    {
      v13 = *(2 * v11);
      v14 = sub_F94B2C(v4, v11);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15 && (v14 + v13) >= 3)
      {
        operator new();
      }

      v4 = v59;
      a4 = v60;
      ++v11;
    }

    while (v12 != v11);
  }

  sub_F7C094(a4, 0);
  a4[17] = 0;
  *(a4 + 15) = 0u;
  a4[18] = -1;
  v17 = sub_F94CB4(v4);
  v18 = 2 * v9;
  sub_F76068(a4, v9, v18, v17, 1, *(a1 + 32));
  if (*(a1 + 32) == 1)
  {
    v19 = *(a1 + 192);
    *(a1 + 200) = v19;
    if (v18 > (*(a1 + 208) - v19) >> 2)
    {
      operator new();
    }

    v20 = *(a1 + 216);
    *(a1 + 224) = v20;
    a4 = v60;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 232) - v20) >> 4) < v18)
    {
      operator new();
    }
  }

  v21 = *(a1 + 168);
  v22 = *(a1 + 176);
  if (v21 != v22)
  {
    do
    {
      v23 = sub_F94C54(v4, *v21);
      LOBYTE(__t[0].__d_.__rep_) = *v23;
      v24 = *(v23 + 4);
      if (v24 == -1)
      {
        v25 = 0;
      }

      else
      {
        v25 = sub_F94B9C(v4, v24);
      }

      __t[1].__d_.__rep_ = v25;
      v26 = *(v23 + 40);
      v27 = *(v23 + 56);
      v28 = *(v23 + 72);
      v68 = *(v23 + 88);
      v29 = *(v23 + 24);
      *v63 = *(v23 + 8);
      v64 = v29;
      v66 = v27;
      *v67 = v28;
      v65 = v26;
      v30 = *(v23 + 96);
      if (v30 == -1)
      {
        v31 = 0;
      }

      else
      {
        v31 = sub_F94B9C(v4, v30);
      }

      v69 = v31;
      v32 = *(v23 + 120);
      v70 = *(v23 + 104);
      v71 = v32;
      v33 = *(v23 + 136);
      v34 = *(v23 + 152);
      v35 = *(v23 + 168);
      v75 = *(v23 + 184);
      v73 = v34;
      v74 = v35;
      v72 = v33;
      sub_F75C60(a4, __t);
      ++v21;
    }

    while (v21 != v22);
    v21 = *(a1 + 168);
    v22 = *(a1 + 176);
  }

  if (v21 != v22)
  {
    v36 = 0;
    v56 = v22;
    do
    {
      v37 = *v21;
      v38 = sub_F94C54(v4, *v21);
      v39 = v38[1];
      v40 = v38[24];
      v41 = a4[6];
      v42 = a4[7];
      v43 = v42 - v41;
      if (((v42 - v41) >> 2) - 1 <= v36)
      {
        v44 = v36 + 2;
        v45 = v60[1];
        v46 = (v45 - *v60) >> 2;
        if (v44 <= v46)
        {
          if (v44 < v46)
          {
            v60[1] = *v60 + 4 * v44;
          }
        }

        else
        {
          sub_569AC(v60, v44 - v46, (v45 - 4));
          v41 = v60[6];
          v42 = v60[7];
          v43 = v42 - v41;
        }

        v47 = v43 >> 2;
        if (v44 <= v47)
        {
          if (v44 < v47)
          {
            v60[7] = v41 + 4 * v44;
          }
        }

        else
        {
          sub_569AC((v60 + 6), v44 - v47, (v42 - 4));
        }
      }

      if (v39 == -1)
      {
        v48 = 0;
        if (v40 == -1)
        {
LABEL_72:
          v49 = 0;
          goto LABEL_73;
        }
      }

      else
      {
        v48 = sub_F94B9C(v4, v39);
        if (v40 == -1)
        {
          goto LABEL_72;
        }
      }

      v49 = sub_F94B9C(v59, v40);
      v39 = v40;
LABEL_73:
      v50 = sub_F94A20(v59, v39);
      v51 = v49;
      a4 = v60;
      sub_F8686C(&v61, v48, v51, v38, v50, *(v58 + 40));
      v4 = v59;
      v52 = v60[12];
      v53 = (v60[13] - v52) >> 3;
      if (v53 <= v36)
      {
        v54 = v36 + 1;
        __t[0].__d_.__rep_ = 0;
        if (v54 <= v53)
        {
          if (v54 < v53)
          {
            v60[13] = v52 + 8 * v54;
          }
        }

        else
        {
          sub_331250((v60 + 12), v54 - v53, __t);
          v52 = v60[12];
        }
      }

      *(v52 + 8 * v36) = v61;
      if (*sub_F94C54(v59, v37) == 3)
      {
        sub_F79B1C(v58, v59, v37, v60);
      }

      else if (v40 != -1)
      {
        sub_F79C70(v58, v59, v40, v38[26], a3, v36, v60);
      }

      ++v36;
      ++v21;
    }

    while (v21 != v56);
  }

  if (*(v58 + 33))
  {
    sub_F75E68(v60);
  }

  if (*(v58 + 32) == 1)
  {
    sub_F79F84(v58, v60);
  }

  if (*(v58 + 34) == 1)
  {
    __t[0] = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(__t);
    *&v61 = *v58;
    DWORD2(v61) = *(v58 + 8);
    BYTE12(v61) = *(v58 + 12);
    if (*(v58 + 32) == 1)
    {
      v55 = *(v58 + 35);
    }

    else
    {
      v55 = 0;
    }

    BYTE13(v61) = v55 & 1;
    sub_F87220(__t, &v61, *(v58 + 40));
    sub_F88168(__t, v59, a3, *(v58 + 24), v60);
  }

  sub_F81004(v60);
  sub_F81004(v60 + 6);
  sub_F810FC(v60 + 3);
  sub_F810FC(v60 + 9);
}

void sub_F79684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3EE920(v20);
  if (v19)
  {
    operator delete(v19);
    if (!v21)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

void sub_F79798(uint64_t a1, uint64_t *a2)
{
  v4 = sub_F94CB4(a2);
  v6 = *(a1 + 168);
  v5 = *(a1 + 176);
  v7 = (v5 - v6) >> 1;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v5 = (v6 + 2 * v4);
      *(a1 + 176) = v5;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 168, v4 - v7);
    v6 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v6 != v5)
  {
    v8 = v5 - v6 - 2;
    if (v8 < 6)
    {
      LODWORD(v9) = 0;
      v10 = v6;
      goto LABEL_20;
    }

    v11 = (v8 >> 1) + 1;
    if (v8 >= 0x1E)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFF0;
      v14 = xmmword_22AEA30;
      v15 = v6 + 1;
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
      v17.i64[0] = 0x10001000100010;
      v17.i64[1] = 0x10001000100010;
      v18 = v11 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s16(v14, v16);
        v14 = vaddq_s16(v14, v17);
        v15 += 2;
        v18 -= 16;
      }

      while (v18);
      if (v11 == v12)
      {
        goto LABEL_21;
      }

      if ((v11 & 0xC) == 0)
      {
        v10 = (v6 + 2 * v12);
        LODWORD(v9) = v11 & 0xFFFFFFF0;
        do
        {
LABEL_20:
          v10->i16[0] = v9;
          v10 = (v10 + 2);
          LODWORD(v9) = v9 + 1;
        }

        while (v10 != v5);
        goto LABEL_21;
      }

      v13 = v11 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }

    v9 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 2 * (v11 & 0xFFFFFFFFFFFFFFFCLL));
    v19 = vadd_s16(vdup_n_s16(v12), 0x3000200010000);
    v20 = (v6 + 2 * v13);
    v21 = v13 - (v11 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v20++ = v19;
      v19 = vadd_s16(v19, 0x4000400040004);
      v21 += 4;
    }

    while (v21);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v22 = sub_F94CB4(a2);
  v24 = *(a1 + 144);
  v23 = *(a1 + 152);
  v25 = (v23 - v24) >> 1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v23 = (v24 + 2 * v22);
      *(a1 + 152) = v23;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 144, v22 - v25);
    v24 = *(a1 + 144);
    v23 = *(a1 + 152);
  }

  if (v24 != v23)
  {
    v26 = v23 - v24 - 2;
    if (v26 < 6)
    {
      LODWORD(v27) = 0;
      v28 = v24;
      goto LABEL_40;
    }

    v29 = (v26 >> 1) + 1;
    if (v26 >= 0x1E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFF0;
      v32 = xmmword_22AEA30;
      v33 = v24 + 1;
      v34.i64[0] = 0x8000800080008;
      v34.i64[1] = 0x8000800080008;
      v35.i64[0] = 0x10001000100010;
      v35.i64[1] = 0x10001000100010;
      v36 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v33[-1] = v32;
        *v33 = vaddq_s16(v32, v34);
        v32 = vaddq_s16(v32, v35);
        v33 += 2;
        v36 -= 16;
      }

      while (v36);
      if (v29 == v30)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        v28 = (v24 + 2 * v30);
        LODWORD(v27) = v29 & 0xFFFFFFF0;
        do
        {
LABEL_40:
          v28->i16[0] = v27;
          v28 = (v28 + 2);
          LODWORD(v27) = v27 + 1;
        }

        while (v28 != v23);
        goto LABEL_41;
      }

      v31 = v29 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v30) = 0;
      v31 = 0;
    }

    v27 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v24 + 2 * (v29 & 0xFFFFFFFFFFFFFFFCLL));
    v37 = vadd_s16(vdup_n_s16(v30), 0x3000200010000);
    v38 = (v24 + 2 * v31);
    v39 = v31 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v38++ = v37;
      v37 = vadd_s16(v37, 0x4000400040004);
      v39 += 4;
    }

    while (v39);
    if (v29 != v27)
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  if (*(a1 + 33) == 1)
  {
    v40 = *(a1 + 168);
    v41 = *(a1 + 176);
    v42 = 126 - 2 * __clz((v41 - v40) >> 1);
    v50 = a2;
    if (v41 == v40)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    sub_F82738(v40, v41, &v50, v43, 1);
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = 0;
      v48 = v46 >> 1;
      v49 = *(a1 + 168);
      do
      {
        *(v44 + 2 * *(v49 + 2 * v47)) = v47;
        ++v47;
      }

      while (v48 != v47);
    }
  }
}

void sub_F79A6C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F94438(a1, &v9);
  sub_F946F8(a1, &v4);
  sub_F7ED34(a2, &v9);
  sub_F7ED34(a2 + 64, &v4);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_F79B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_334D18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F79B1C(uint64_t a1, void *a2, unsigned __int16 a3, void *a4)
{
  v6 = a3;
  v7 = sub_F94C54(a2, a3);
  v8 = sub_F94B9C(a2, *(v7 + 4));
  v19 = v6;
  result = sub_F94EAC(a2, v6, &v30);
  v11 = v30;
  for (i = v31; v11 != i; ++v11)
  {
    v12 = *v11;
    v13 = sub_F94C54(a2, *v11);
    v14 = sub_F94B9C(a2, *(v13 + 96));
    sub_F85884(v29);
    sub_F85EB0(v29, v8, (v7 + 8), v14, (v13 + 104), a1 + 48);
    result = sub_F85894(v29);
    if (result)
    {
      v15 = *(a1 + 144);
      v16 = *(v15 + 2 * v19);
      LODWORD(v15) = *(v15 + 2 * v12);
      v22 = v29[0];
      v17 = *(v7 + 4);
      v18 = *(v13 + 96);
      v23 = v29[1];
      v24 = v29[2];
      v21 = v15;
      v25 = 0x7FFFFFFF;
      v26 = v17;
      v27 = v18;
      v28 = 0;
      result = sub_F78380(a4, v16, &v21);
    }
  }

  return result;
}

_OWORD *sub_F79C70(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, int32x2_t *a5, unsigned int a6, void *a7)
{
  sub_F85884(v43);
  if (!sub_F75E1C(a7, a6) || (v14 = sub_F75E48(a7, a6), sub_F858F4(v43, v14, 0, a5, *(a1 + 16)), result = sub_F85894(v43), result))
  {
    v28 = a7;
    sub_F7A178(a1, a2, a3, a3, a4, a6, 0, a5, v43, a7);
    sub_F9495C(a2, a3, v29);
    v27 = a3;
    result = sub_F94A68(a2, a3, &v41);
    v40 = *&v29[16];
    v39 = *v29;
    v16 = *&v29[16];
    v26 = v42;
    if (*&v29[16] != v42)
    {
      v25 = 1000000000 - a4;
      v23 = *(&v39 + 1);
      v24 = v39;
      v17 = a3;
      do
      {
        v18 = (*v24 + 104 * v16);
        v36 = v43[0];
        v37 = v43[1];
        v38 = v43[2];
        sub_F85CFC(&v36, v18, v25, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
        v19 = *v18;
        v20 = *(*(a1 + 120) + 4 * v19);
        if (sub_F85894(&v36))
        {
          while (v20 == -1)
          {
            sub_F7A178(a1, a2, v27, v19, 0, a6, v18, a5, &v36, v28);
            if (v19 == v17)
            {
              v20 = -1;
              LODWORD(v19) = v17;
              break;
            }

            sub_F9495C(a2, v19, &v44);
            sub_F94A68(a2, v19, &v30);
            *&v29[16] = v45;
            *v29 = v44;
            if (v45 == v31)
            {
              v20 = -1;
              result = sub_F85894(&v36);
              if (result)
              {
                goto LABEL_15;
              }

              goto LABEL_6;
            }

            v21 = (**v29 + 104 * v45);
            sub_F85CFC(&v36, v21, 0x3B9ACA00u, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
            v19 = *v21;
            v20 = *(*(a1 + 120) + 4 * v19);
            if (!sub_F85894(&v36))
            {
              break;
            }
          }
        }

        result = sub_F85894(&v36);
        if (result)
        {
LABEL_15:
          if (v20 != -1 && v20 != a6)
          {
            *&v29[8] = v36;
            v30 = v37;
            v31 = v38;
            *v29 = v20;
            v32 = 0x7FFFFFFF;
            v33 = v17;
            v34 = v19;
            v35 = v18;
            result = sub_F78380(v28, a6, v29);
          }
        }

LABEL_6:
        v16 = *(*v23 + 4 * v16);
      }

      while (v16 != v26);
    }
  }

  return result;
}

void sub_F79F84(uint64_t a1, void *a2)
{
  v4 = a2[7] - a2[6];
  v26 = 0;
  v27 = 0;
  __p = 0;
  if ((v4 >> 2) != 1)
  {
    operator new();
  }

  v5 = ((v4 << 30) - 0x100000000) >> 32;
  if (v5)
  {
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      v15 = a2[6];
      if (v14 >= (a2[7] - v15) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v24 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v16 = v13;
      v17 = *(v15 + 4 * v13);
      v18 = *(v15 + 4 * v14);
      if (v17 != v18)
      {
        v19 = a2[9];
        v20 = (v19 + 80 * v18);
        v21 = (v19 + 80 * v17);
        do
        {
          sub_F77EBC(a1 + 192, v16, v21);
          v22 = *v21;
          v21 += 20;
          ++*(4 * v22);
        }

        while (v21 != v20);
      }

      v13 = v16 + 1;
    }

    while (v16 + 1 != v5);
  }

  v8 = *(a1 + 216);
  v7 = a1 + 216;
  v6 = v8;
  v9 = *(v7 - 24);
  v10 = *(v7 - 16);
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_F7C320(v9, v6, v10, *(v7 + 8), &v28, v12, 1);
  sub_F78598(a2, &__p, v7);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_F7A150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    v10 = a1;
    operator delete(__p);
    a1 = v10;
  }

  _Unwind_Resume(a1);
}

void sub_F7A178(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10)
{
  if (sub_F94BF8(a2, a4))
  {
    v37 = a3;
    v38 = a7;
    v17 = sub_3AF6B4(**(a1 + 40));
    v18 = sub_F94B9C(a2, a4);
    v19 = HIDWORD(v18);
    v20 = HIDWORD(v18) & 0xFFFF0000FFFFFFFFLL | (WORD1(v18) << 32);
    v39 = ((HIDWORD(v18) & 0xFFFE0000FFFFFFFFLL | (WORD1(v18) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v18 >> 1) & 1) << 48)) ^ 0x1000000000000);
    v21 = sub_2B51D8(v17, v20);
    if (*(v17 + 7772) == 1)
    {
      v22 = v18 << 16;
      v23 = sub_30C50C(v17 + 3896, v19, 0);
      v24 = &v23[-*v23];
      if (*v24 < 5u)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v24 + 2);
        if (v25)
        {
          v25 += &v23[*&v23[v25]];
        }
      }

      v26 = (v25 + ((v22 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v22 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v26 = 0;
    }

    v56[0] = v21;
    v56[1] = v26;
    v56[2] = sub_31D7E8(v17, v20, 1);
    v56[3] = v27;
    v56[4] = v39;
    sub_F94D1C(a2, a4, v54);
    sub_F94D78(a2, a4, __p);
    v28 = __p[0];
    v29 = v54[0];
    v30 = v55;
    if (v54[0] != v55)
    {
      v31 = v54[1];
      do
      {
        v32 = *(*(a1 + 144) + 2 * *v28);
        if (a6 != v32)
        {
          v33 = *v31 + 192 * *v29;
          if (*(v33 + 4) == a4)
          {
            v34 = *(v33 + 8);
            if (v34 >= a5)
            {
              v35 = a9[1];
              v50 = *a9;
              v51 = v35;
              v52 = a9[2];
              sub_F85BC0(&v50, v56, v34 - a5, a8, *(a1 + 16), *(a1 + 12), *(a1 + 40));
              if (sub_F85894(&v50))
              {
                v36 = sub_F75E48(a10, v32);
                sub_F858F4(&v50, v36, 1, a8, *(a1 + 16));
                if (sub_F85894(&v50))
                {
                  v43 = v50;
                  v44 = v51;
                  v45 = v52;
                  v42 = v32;
                  v46 = 0x7FFFFFFF;
                  v47 = v37;
                  v48 = a4;
                  v49 = v38;
                  sub_F78380(a10, a6, &v42);
                }
              }
            }
          }
        }

        ++v29;
        ++v28;
      }

      while (v29 != v30);
      v28 = __p[0];
    }

    if (v28)
    {
      __p[1] = v28;
      operator delete(v28);
    }
  }
}

void sub_F7A438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F7A45C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  sub_F7B2BC(a1, a2);
  *(a1 + 128) = *(a1 + 120);
  v7 = sub_F94B90(v4);
  LODWORD(__t) = -1;
  v8 = (*(a1 + 128) - *(a1 + 120)) >> 2;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      *(a1 + 128) = *(a1 + 120) + 4 * v7;
    }
  }

  else
  {
    sub_569AC(a1 + 120, v7 - v8, &__t);
  }

  v9 = sub_F95F18(v4);
  if (sub_F94B90(v4))
  {
    operator new();
  }

  if (sub_F94B90(v4))
  {
    operator new();
  }

  v53 = a1;
  sub_F7B590(v4, &__t);
  if (*(&v57 + 1) != v57)
  {
    if (((*(&v57 + 1) - v57) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v55 = a4;
  if (v59 != *(&v58 + 1))
  {
    if (((v59 - *(&v58 + 1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = v4;
  if (*(&v61 + 1) != v61)
  {
    if (((*(&v61 + 1) - v61) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v64 != v63)
  {
    if (((v64 - v63) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v63)
  {
    *&v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    *(&v61 + 1) = v61;
    operator delete(v61);
  }

  if (*(&v58 + 1))
  {
    *&v59 = *(&v58 + 1);
    operator delete(*(&v58 + 1));
  }

  if (v57)
  {
    *(&v57 + 1) = v57;
    operator delete(v57);
  }

  v10 = sub_F94B90(v4);
  if (v10)
  {
    v11 = 0;
    v12 = v10;
    do
    {
      v13 = *(2 * v11);
      v14 = sub_F94B2C(v4, v11);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15 && (v14 + v13) >= 3)
      {
        operator new();
      }

      v4 = v54;
      a4 = v55;
      ++v11;
    }

    while (v12 != v11);
  }

  sub_F7EBF8(a4, 0);
  a4[17] = 0;
  *(a4 + 15) = 0u;
  a4[18] = -1;
  v17 = sub_F95F18(v4);
  v18 = 2 * v9;
  sub_F764A8(a4, v9, v18, v17, 1, *(a1 + 32));
  if (*(a1 + 32) == 1)
  {
    v20 = *(a1 + 192);
    *(a1 + 200) = v20;
    if (v18 > (*(a1 + 208) - v20) >> 2)
    {
      operator new();
    }

    v21 = *(a1 + 216);
    *(a1 + 224) = v21;
    a4 = v55;
    if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 232) - v21) >> 3) < v18)
    {
      operator new();
    }
  }

  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  if (v22 != v23)
  {
    do
    {
      v24 = sub_F95EB8(v4, *v22);
      LOBYTE(__t) = *(v24 + 16);
      v25 = *(v24 + 20);
      if (v25 == -1)
      {
        v26 = 0;
      }

      else
      {
        v26 = sub_F94B9C(v4, v25);
      }

      *(&__t + 1) = v26;
      v59 = *(v24 + 56);
      v60 = *(v24 + 72);
      v61 = *(v24 + 88);
      v62 = *(v24 + 104);
      v57 = *(v24 + 24);
      v58 = *(v24 + 40);
      v27 = *(v24 + 112);
      if (v27 == -1)
      {
        v28 = 0;
      }

      else
      {
        v28 = sub_F94B9C(v4, v27);
      }

      v63 = v28;
      v66 = *(v24 + 152);
      v67 = *(v24 + 168);
      v68 = *(v24 + 184);
      v69 = *(v24 + 200);
      v64 = *(v24 + 120);
      v65 = *(v24 + 136);
      sub_F75C60(a4, &__t);
      ++v22;
    }

    while (v22 != v23);
    v22 = *(a1 + 168);
    v23 = *(a1 + 176);
  }

  if (v22 != v23)
  {
    v29 = 0;
    v51 = v23;
    do
    {
      v30 = *v22;
      v31 = sub_F95EB8(v4, *v22);
      v32 = v31[5];
      v33 = v31[28];
      v34 = a4[6];
      v35 = a4[7];
      v36 = v35 - v34;
      if (((v35 - v34) >> 2) - 1 <= v29)
      {
        v37 = v29 + 2;
        v38 = v55[1];
        v39 = (v38 - *v55) >> 2;
        if (v37 <= v39)
        {
          if (v37 < v39)
          {
            v55[1] = *v55 + 4 * v37;
          }
        }

        else
        {
          sub_569AC(v55, v37 - v39, (v38 - 4));
          v34 = v55[6];
          v35 = v55[7];
          v36 = v35 - v34;
        }

        v40 = v36 >> 2;
        if (v37 <= v40)
        {
          if (v37 < v40)
          {
            v55[7] = v34 + 4 * v37;
          }
        }

        else
        {
          sub_569AC((v55 + 6), v37 - v40, (v35 - 4));
        }
      }

      if (v32 == -1)
      {
        v41 = 0;
        if (v33 == -1)
        {
LABEL_72:
          v42 = 0;
          goto LABEL_73;
        }
      }

      else
      {
        v41 = sub_F94B9C(v4, v32);
        if (v33 == -1)
        {
          goto LABEL_72;
        }
      }

      v42 = sub_F94B9C(v54, v33);
      v32 = v33;
LABEL_73:
      v43 = sub_F94A20(v54, v32);
      v44 = v42;
      a4 = v55;
      sub_F871D4(&v70, v41, v44, v31, v43);
      v4 = v54;
      v45 = v55[12];
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v55[13] - v45) >> 3);
      if (v46 <= v29)
      {
        v47 = v29 + 1;
        __t = 0xFFFFuLL;
        *&v57 = -COERCE_DOUBLE(0x8000000080000000);
        if (v47 <= v46)
        {
          if (v47 < v46)
          {
            v55[13] = v45 + 24 * v47;
          }
        }

        else
        {
          sub_F82474((v55 + 12), v47 - v46, &__t);
          v45 = v55[12];
        }
      }

      v48 = v70;
      v49 = v45 + 24 * v29;
      *(v49 + 16) = v71;
      *v49 = v48;
      if (*(sub_F95EB8(v54, v30) + 16) == 3)
      {
        sub_F7B640(v53, v54, v30, v55);
      }

      else if (v33 != -1)
      {
        sub_F7B740(v53, v54, v33, v31[30], a3, v29, v55);
      }

      ++v29;
      ++v22;
    }

    while (v22 != v51);
  }

  if (*(v53 + 33))
  {
    sub_F75E68(v55);
  }

  if (*(v53 + 32) == 1)
  {
    sub_F7B9D0(v53, v55, v19);
  }

  if (*(v53 + 34) == 1)
  {
    *&__t = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(&__t);
    *&v70 = *v53;
    DWORD2(v70) = *(v53 + 8);
    BYTE12(v70) = *(v53 + 12);
    if (*(v53 + 32) == 1)
    {
      v50 = *(v53 + 35);
    }

    else
    {
      v50 = 0;
    }

    BYTE13(v70) = v50 & 1;
    sub_F87220(&__t, &v70, *(v53 + 40));
    sub_F88E50(&__t, v54, a3, *(v53 + 24), v55);
  }

  sub_F81004(v55);
  sub_F81004(v55 + 6);
  sub_F82618(v55 + 3);
  sub_F82618(v55 + 9);
}

void sub_F7B1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3EE920(v20);
  if (v19)
  {
    operator delete(v19);
    if (!v21)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

void sub_F7B2BC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_F95F18(a2);
  v6 = *(a1 + 168);
  v5 = *(a1 + 176);
  v7 = (v5 - v6) >> 1;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v5 = (v6 + 2 * v4);
      *(a1 + 176) = v5;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 168, v4 - v7);
    v6 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v6 != v5)
  {
    v8 = v5 - v6 - 2;
    if (v8 < 6)
    {
      LODWORD(v9) = 0;
      v10 = v6;
      goto LABEL_20;
    }

    v11 = (v8 >> 1) + 1;
    if (v8 >= 0x1E)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFF0;
      v14 = xmmword_22AEA30;
      v15 = v6 + 1;
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
      v17.i64[0] = 0x10001000100010;
      v17.i64[1] = 0x10001000100010;
      v18 = v11 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s16(v14, v16);
        v14 = vaddq_s16(v14, v17);
        v15 += 2;
        v18 -= 16;
      }

      while (v18);
      if (v11 == v12)
      {
        goto LABEL_21;
      }

      if ((v11 & 0xC) == 0)
      {
        v10 = (v6 + 2 * v12);
        LODWORD(v9) = v11 & 0xFFFFFFF0;
        do
        {
LABEL_20:
          v10->i16[0] = v9;
          v10 = (v10 + 2);
          LODWORD(v9) = v9 + 1;
        }

        while (v10 != v5);
        goto LABEL_21;
      }

      v13 = v11 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }

    v9 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 2 * (v11 & 0xFFFFFFFFFFFFFFFCLL));
    v19 = vadd_s16(vdup_n_s16(v12), 0x3000200010000);
    v20 = (v6 + 2 * v13);
    v21 = v13 - (v11 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v20++ = v19;
      v19 = vadd_s16(v19, 0x4000400040004);
      v21 += 4;
    }

    while (v21);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v22 = sub_F95F18(a2);
  v24 = *(a1 + 144);
  v23 = *(a1 + 152);
  v25 = (v23 - v24) >> 1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v23 = (v24 + 2 * v22);
      *(a1 + 152) = v23;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 144, v22 - v25);
    v24 = *(a1 + 144);
    v23 = *(a1 + 152);
  }

  if (v24 != v23)
  {
    v26 = v23 - v24 - 2;
    if (v26 < 6)
    {
      LODWORD(v27) = 0;
      v28 = v24;
      goto LABEL_40;
    }

    v29 = (v26 >> 1) + 1;
    if (v26 >= 0x1E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFF0;
      v32 = xmmword_22AEA30;
      v33 = v24 + 1;
      v34.i64[0] = 0x8000800080008;
      v34.i64[1] = 0x8000800080008;
      v35.i64[0] = 0x10001000100010;
      v35.i64[1] = 0x10001000100010;
      v36 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v33[-1] = v32;
        *v33 = vaddq_s16(v32, v34);
        v32 = vaddq_s16(v32, v35);
        v33 += 2;
        v36 -= 16;
      }

      while (v36);
      if (v29 == v30)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        v28 = (v24 + 2 * v30);
        LODWORD(v27) = v29 & 0xFFFFFFF0;
        do
        {
LABEL_40:
          v28->i16[0] = v27;
          v28 = (v28 + 2);
          LODWORD(v27) = v27 + 1;
        }

        while (v28 != v23);
        goto LABEL_41;
      }

      v31 = v29 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v30) = 0;
      v31 = 0;
    }

    v27 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v24 + 2 * (v29 & 0xFFFFFFFFFFFFFFFCLL));
    v37 = vadd_s16(vdup_n_s16(v30), 0x3000200010000);
    v38 = (v24 + 2 * v31);
    v39 = v31 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v38++ = v37;
      v37 = vadd_s16(v37, 0x4000400040004);
      v39 += 4;
    }

    while (v39);
    if (v29 != v27)
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  if (*(a1 + 33) == 1)
  {
    v40 = *(a1 + 168);
    v41 = *(a1 + 176);
    v42 = 126 - 2 * __clz((v41 - v40) >> 1);
    v50 = a2;
    if (v41 == v40)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    sub_F8399C(v40, v41, &v50, v43, 1);
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = 0;
      v48 = v46 >> 1;
      v49 = *(a1 + 168);
      do
      {
        *(v44 + 2 * *(v49 + 2 * v47)) = v47;
        ++v47;
      }

      while (v48 != v47);
    }
  }
}

void sub_F7B590(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F95994(a1, &v9);
  sub_F95C54(a1, &v4);
  sub_F7ED34(a2, &v9);
  sub_F7ED34(a2 + 64, &v4);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_F7B628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_334D18(va);
  _Unwind_Resume(a1);
}

void *sub_F7B640(uint64_t a1, void *a2, unsigned __int16 a3, void *a4)
{
  v7 = a3;
  v8 = sub_F95EB8(a2, a3);
  sub_F94B9C(a2, *(v8 + 20));
  result = sub_F94EAC(a2, v7, &v23);
  v10 = v23;
  for (i = v24; v10 != i; result = sub_F7868C(a4, v15, v18))
  {
    v12 = *v10++;
    v13 = sub_F95EB8(a2, v12);
    sub_F94B9C(a2, *(v13 + 112));
    v14 = *(a1 + 144);
    v15 = *(v14 + 2 * v7);
    v16 = *(v8 + 20);
    v17 = *(v13 + 112);
    LODWORD(v18[0]) = *(v14 + 2 * v12);
    *(&v18[0] + 1) = 0;
    v18[1] = xmmword_22A85E0;
    v19 = 0x7FFFFFFF;
    v20 = v16;
    v21 = v17;
    v22 = 0;
  }

  return result;
}

void sub_F7B740(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7)
{
  v37 = 0;
  if (sub_F75E1C(a7, a6))
  {
    sub_F75E48(a7, a6);
  }

  v14 = a3;
  sub_F7BDF4(a1, a2, a3, a3, a4, a6, 0, a5, &v37, a7);
  sub_F9495C(a2, a3, &v26);
  sub_F94A68(a2, a3, &v35);
  v34 = v27;
  v33 = v26;
  v15 = v27;
  v25 = v36;
  if (v27 != v36)
  {
    v23 = *(&v33 + 1);
    v24 = v33;
    v22 = 1000000000 - a4;
    v16 = a3;
    do
    {
      v17 = (*v24 + 104 * v15);
      v32 = v37;
      sub_F86B2C(&v32, v17, v22, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
      v18 = *v17;
      v19 = *(*(a1 + 120) + 4 * v18);
      if (v19 == -1)
      {
        while (1)
        {
          sub_F7BDF4(a1, a2, v14, v18, 0, a6, v17, a5, &v32, a7);
          if (v18 == v16)
          {
            break;
          }

          sub_F9495C(a2, v18, &v38);
          sub_F94A68(a2, v18, &v27 + 8);
          *&v27 = v39;
          v26 = v38;
          if (v39 == v30)
          {
            break;
          }

          v20 = (*v26 + 104 * v39);
          sub_F86B2C(&v32, v20, 1000000000, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
          v18 = *v20;
          v19 = *(*(a1 + 120) + 4 * v18);
          if (v19 != -1)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if (v19 != a6)
        {
          LODWORD(v26) = v19;
          *(&v26 + 1) = v32;
          v27 = xmmword_22A85E0;
          v28 = 0x7FFFFFFF;
          v29 = v16;
          v30 = v18;
          v31 = v17;
          sub_F7868C(a7, a6, &v26);
        }
      }

      v15 = *(*v23 + 4 * v15);
    }

    while (v15 != v25);
  }
}

void sub_F7B9D0(uint64_t a1, void *a2, __n128 a3)
{
  v5 = a2[7] - a2[6];
  v27 = 0;
  v28 = 0;
  __p = 0;
  if ((v5 >> 2) != 1)
  {
    operator new();
  }

  v6 = ((v5 << 30) - 0x100000000) >> 32;
  if (v6)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
      v16 = a2[6];
      if (v15 >= (a2[7] - v16) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v25 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v17 = v14;
      v18 = *(v16 + 4 * v14);
      v19 = *(v16 + 4 * v15);
      if (v18 != v19)
      {
        v20 = a2[9];
        v21 = (v20 + 56 * v19);
        v22 = (v20 + 56 * v18);
        do
        {
          sub_F7BBC4(a1 + 192, v17, v22);
          v23 = *v22;
          v22 += 14;
          ++*(4 * v23);
        }

        while (v22 != v21);
      }

      v14 = v17 + 1;
    }

    while (v17 + 1 != v6);
  }

  v9 = *(a1 + 216);
  v8 = a1 + 216;
  v7 = v9;
  v10 = *(v8 - 24);
  v11 = *(v8 - 16);
  v12 = 126 - 2 * __clz(v11 - v10);
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_F7EE58(v10, v7, v11, *(v8 + 8), &v29, v13, 1, a3);
  sub_F788BC(a2, &__p, v8);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_F7BB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    v10 = a1;
    operator delete(__p);
    a1 = v10;
  }

  _Unwind_Resume(a1);
}

void sub_F7BBC4(uint64_t a1, int a2, int *a3)
{
  v6 = *a3;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_1794();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 62))
      {
        operator new();
      }

LABEL_28:
      sub_1808();
    }

    *(4 * v12) = v6;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (v16 < v17)
  {
    v18 = *a3;
    v19 = *(a3 + 1);
    v20 = *(a3 + 2);
    *(v16 + 48) = *(a3 + 6);
    *(v16 + 16) = v19;
    *(v16 + 32) = v20;
    *v16 = v18;
    v21 = v16 + 56;
    goto LABEL_27;
  }

  v22 = *(a1 + 24);
  v23 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v22) >> 3) + 1;
  if (v23 > 0x492492492492492)
  {
    sub_1794();
  }

  v24 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v22) >> 3);
  if (2 * v24 > v23)
  {
    v23 = 2 * v24;
  }

  if (v24 >= 0x249249249249249)
  {
    v25 = 0x492492492492492;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 <= 0x492492492492492)
    {
      operator new();
    }

    goto LABEL_28;
  }

  v26 = 8 * ((v16 - v22) >> 3);
  v27 = *(a3 + 1);
  *v26 = *a3;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a3 + 2);
  *(v26 + 48) = *(a3 + 6);
  v21 = v26 + 56;
  v28 = (v26 - (v16 - v22));
  memcpy(v28, v22, v16 - v22);
  *(a1 + 24) = v28;
  *(a1 + 32) = v21;
  *(a1 + 40) = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_27:
  *(a1 + 32) = v21;
  *(v21 - 56) = a2;
}

void sub_F7BDF4(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10)
{
  if (sub_F94BF8(a2, a4))
  {
    v15 = sub_3AF6B4(**(a1 + 40));
    v16 = sub_F94B9C(a2, a4);
    v17 = HIDWORD(v16);
    v18 = HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (WORD1(v16) << 32);
    v19 = ((HIDWORD(v16) & 0xFFFE0000FFFFFFFFLL | (WORD1(v16) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v16 >> 1) & 1) << 48)) ^ 0x1000000000000);
    v33 = sub_2B51D8(v15, v18);
    if (*(v15 + 7772) == 1)
    {
      v20 = v16 << 16;
      v21 = sub_30C50C(v15 + 3896, v17, 0);
      v22 = &v21[-*v21];
      if (*v22 < 5u)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v22 + 2);
        if (v23)
        {
          v23 += &v21[*&v21[v23]];
        }
      }

      v24 = (v23 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v23 + ((v20 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v24 = 0;
    }

    v47[0] = v33;
    v47[1] = v24;
    v47[2] = sub_31D7E8(v15, v18, 1);
    v47[3] = v25;
    v47[4] = v19;
    sub_F94D1C(a2, a4, v45);
    sub_F95F80(a2, a4, __p);
    v26 = __p[0];
    v27 = v45[0];
    v28 = v46;
    if (v45[0] != v46)
    {
      v29 = v45[1];
      do
      {
        v30 = *(*(a1 + 144) + 2 * *v26);
        if (a6 != v30)
        {
          v31 = *v29 + 208 * *v27;
          if (*(v31 + 20) == a4)
          {
            v32 = *(v31 + 24);
            if (v32 >= a5)
            {
              v43 = *a9;
              sub_F8696C(&v43, v47, v32 - a5, a8, *(a1 + 16), *(a1 + 12), *(a1 + 40));
              sub_F75E48(a10, v30);
              LODWORD(v38[0]) = v30;
              *(&v38[0] + 1) = v43;
              v38[1] = xmmword_22A85E0;
              v39 = 0x7FFFFFFF;
              v40 = a3;
              v41 = a4;
              v42 = a7;
              sub_F7868C(a10, a6, v38);
            }
          }
        }

        ++v27;
        ++v26;
      }

      while (v27 != v28);
      v26 = __p[0];
    }

    if (v26)
    {
      __p[1] = v26;
      operator delete(v26);
    }
  }
}

void sub_F7C070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F7C094(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 != -1)
  {
    operator new();
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_F7C170(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      v6 = *v1;
      if (!*v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v5;
  operator delete(v5);
  v6 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 8) = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_F7C1C0()
{
  if (!*v0)
  {
    JUMPOUT(0xF7C194);
  }

  JUMPOUT(0xF7C18CLL);
}

void sub_F7C1D0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      memset(*(a1 + 8), 255, 2 * a2);
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
      sub_1794();
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

      sub_1808();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    memset(v11, 255, 2 * a2);
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

double sub_F7C320(unsigned int *a1, __n128 *a2, unsigned int *a3, __int128 *a4, uint64_t a5, uint64_t a6, char a7)
{
LABEL_1:
  v11 = (a4 - 5);
  v253 = a4 - 15;
  v254 = a4 - 10;
  v12 = a1;
  v13 = a2;
LABEL_2:
  a1 = v12;
  a2 = v13;
  v14 = a3 - v12;
  v15 = v14 >= 2;
  if (v14 <= 2)
  {
LABEL_3:
    if (v15)
    {
      if (v14 != 2)
      {
        goto LABEL_10;
      }

      v205 = *(a3 - 1);
      v206 = *a1;
      if (v205 < *a1)
      {
        *a1 = v205;
        *(a3 - 1) = v206;
        v295 = *a2;
        v403 = a2[3];
        v439 = a2[4];
        v331 = a2[1];
        v367 = a2[2];
        v207 = *(a4 - 1);
        v209 = *(a4 - 4);
        v208 = *(a4 - 3);
        a2[3] = *(a4 - 2);
        a2[4] = v207;
        a2[1] = v209;
        a2[2] = v208;
        *a2 = *(a4 - 5);
        *(a4 - 4) = v331;
        *(a4 - 3) = v367;
        *(a4 - 2) = v403;
        *(a4 - 1) = v439;
        result = *&v295;
        *(a4 - 5) = v295;
      }
    }

    return result;
  }

  while (v14 != 3)
  {
    if (v14 == 4)
    {
      *&result = sub_F7DB4C(a1, a2, a1 + 1, a2 + 5, a1 + 2, a2 + 10, a3 - 1, v11).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {
      *&result = sub_F7DB4C(a1, a2, a1 + 1, a2 + 5, a1 + 2, a2 + 10, a1 + 3, a2 + 15).n128_u64[0];
      v188 = *(a3 - 1);
      v189 = a1[3];
      if (v188 >= v189)
      {
        return result;
      }

      a1[3] = v188;
      *(a3 - 1) = v189;
      v328 = a2[16];
      v364 = a2[17];
      v400 = a2[18];
      v436 = a2[19];
      v292 = a2[15];
      a2[15] = *(a4 - 5);
      v190 = *(a4 - 1);
      v192 = *(a4 - 4);
      v191 = *(a4 - 3);
      a2[18] = *(a4 - 2);
      a2[19] = v190;
      a2[16] = v192;
      a2[17] = v191;
      *(a4 - 5) = v292;
      *(a4 - 1) = v436;
      *(a4 - 2) = v400;
      *(a4 - 3) = v364;
      result = *&v328;
      *(a4 - 4) = v328;
      v194 = a1[2];
      v193 = a1[3];
      if (v193 >= v194)
      {
        return result;
      }

      a1[2] = v193;
      a1[3] = v194;
      v329 = a2[11];
      v365 = a2[12];
      v401 = a2[13];
      v437 = a2[14];
      v293 = a2[10];
      v195 = a2[17];
      v196 = a2[18];
      v197 = a2[19];
      v198 = a2[16];
      a2[10] = a2[15];
      a2[11] = v198;
      a2[13] = v196;
      a2[14] = v197;
      a2[12] = v195;
      a2[15] = v293;
      a2[19] = v437;
      a2[18] = v401;
      a2[17] = v365;
      result = *&v329;
      a2[16] = v329;
      v200 = a1[1];
      v199 = a1[2];
      if (v199 >= v200)
      {
        return result;
      }

      a1[1] = v199;
      a1[2] = v200;
      v330 = a2[6];
      v366 = a2[7];
      v402 = a2[8];
      v438 = a2[9];
      v294 = a2[5];
      v201 = a2[12];
      v202 = a2[13];
      v203 = a2[14];
      v204 = a2[11];
      a2[5] = a2[10];
      a2[6] = v204;
      a2[8] = v202;
      a2[9] = v203;
      a2[7] = v201;
      a2[10] = v294;
      a2[14] = v438;
      a2[13] = v402;
      a2[12] = v366;
      result = *&v330;
      a2[11] = v330;
      goto LABEL_135;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a7)
      {
        if (a1 != a3)
        {
          v210 = a1 + 1;
          if (a1 + 1 != a3)
          {
            v211 = 0;
            v212 = 0;
            v213 = a2;
            v214 = a1;
            do
            {
              v217 = v210;
              v213 += 5;
              v218 = v214[1];
              if (v218 < *v214)
              {
                v302 = *v213;
                v446 = v213[4];
                v410 = v213[3];
                v374 = v213[2];
                v338 = v213[1];
                v219 = *v214;
                v220 = v211;
                v221 = v212;
                do
                {
                  *(a1 + v221 + 4) = v219;
                  v222 = (a2->n128_u64 + v220);
                  v223 = *(&a2[3] + v220);
                  v222[7] = *(&a2[2] + v220);
                  v222[8] = v223;
                  v222[9] = *(&a2[4] + v220);
                  v224 = *(&a2[1] + v220);
                  v222[5] = *(a2 + v220);
                  v222[6] = v224;
                  if (!v221)
                  {
                    v215 = a1;
                    v216 = a2;
                    goto LABEL_122;
                  }

                  v219 = *(a1 + v221 - 4);
                  v221 -= 4;
                  v220 -= 80;
                }

                while (v218 < v219);
                v215 = (a1 + v221 + 4);
                v216 = (a2 + v220 + 80);
LABEL_122:
                *v215 = v218;
                *v216 = v302;
                result = v338.n128_f64[0];
                v216[3] = v410;
                v216[4] = v446;
                v216[1] = v338;
                v216[2] = v374;
              }

              v210 = v217 + 1;
              v212 += 4;
              v211 += 80;
              v214 = v217;
            }

            while (v217 + 1 != a3);
          }
        }
      }

      else if (a1 != a3)
      {
        v233 = a1 + 1;
        if (a1 + 1 != a3)
        {
          v234 = &a2[5];
          do
          {
            v235 = v233 - 1;
            v236 = *(v233 - 1);
            v237 = *v233;
            if (*v233 < v236)
            {
              v238 = v234 - 5;
              v339 = v234[1];
              v375 = v234[2];
              v411 = v234[3];
              v447 = v234[4];
              v303 = *v234;
              v239 = v233;
              v240 = v234;
              do
              {
                *v239 = v236;
                v239 = v235;
                *v240 = *v238;
                v241 = v238[1];
                v242 = v238[2];
                v243 = v238[4];
                v240[3] = v238[3];
                v240[4] = v243;
                v240[1] = v241;
                v240[2] = v242;
                v244 = *--v235;
                v236 = v244;
                v240 = v238;
                v238 -= 5;
              }

              while (v237 < v244);
              v235[1] = v237;
              v238[6] = v339;
              v238[7] = v375;
              v238[8] = v411;
              v238[9] = v447;
              result = *&v303;
              v238[5] = v303;
            }

            ++v233;
            v234 += 5;
          }

          while (v233 != a3);
        }
      }

      return result;
    }

    if (!a6)
    {
      if (a1 != a3)
      {

        sub_F7E5A8(a1, a2, a3, a4, a3);
      }

      return result;
    }

    v16 = v14 >> 1;
    v17 = 5 * (v14 >> 1);
    v18 = *(a3 - 1);
    v19 = v14 >> 1;
    if (v14 >= 0x81)
    {
      v20 = &a2[v17];
      v21 = a1[v19];
      v22 = *a1;
      if (v21 >= *a1)
      {
        if (v18 < v21)
        {
          a1[v19] = v18;
          *(a3 - 1) = v21;
          v306 = v20[1];
          v342 = v20[2];
          v378 = v20[3];
          v414 = v20[4];
          v270 = *v20;
          *v20 = *v11;
          v33 = *(a4 - 1);
          v35 = *(a4 - 4);
          v34 = *(a4 - 3);
          v20[3] = *(a4 - 2);
          v20[4] = v33;
          v20[1] = v35;
          v20[2] = v34;
          *v11 = v270;
          *(a4 - 1) = v414;
          *(a4 - 2) = v378;
          *(a4 - 3) = v342;
          *(a4 - 4) = v306;
          v36 = a1[v19];
          v37 = *a1;
          if (v36 < *a1)
          {
            *a1 = v36;
            a1[v19] = v37;
            v271 = *a2;
            v379 = a2[3];
            v415 = a2[4];
            v307 = a2[1];
            v343 = a2[2];
            v38 = v20[4];
            v40 = v20[1];
            v39 = v20[2];
            a2[3] = v20[3];
            a2[4] = v38;
            a2[1] = v40;
            a2[2] = v39;
            *a2 = *v20;
            v20[1] = v307;
            v20[2] = v343;
            v20[3] = v379;
            v20[4] = v415;
            *v20 = v271;
          }
        }
      }

      else if (v18 >= v21)
      {
        *a1 = v21;
        a1[v19] = v22;
        v274 = *a2;
        v382 = a2[3];
        v418 = a2[4];
        v310 = a2[1];
        v346 = a2[2];
        v48 = v20[4];
        v50 = v20[1];
        v49 = v20[2];
        a2[3] = v20[3];
        a2[4] = v48;
        a2[1] = v50;
        a2[2] = v49;
        *a2 = *v20;
        v20[1] = v310;
        v20[2] = v346;
        v20[3] = v382;
        v20[4] = v418;
        *v20 = v274;
        v51 = *(a3 - 1);
        v52 = a1[v19];
        if (v51 < v52)
        {
          a1[v19] = v51;
          *(a3 - 1) = v52;
          v311 = v20[1];
          v347 = v20[2];
          v383 = v20[3];
          v419 = v20[4];
          v275 = *v20;
          *v20 = *v11;
          v53 = *(a4 - 1);
          v55 = *(a4 - 4);
          v54 = *(a4 - 3);
          v20[3] = *(a4 - 2);
          v20[4] = v53;
          v20[1] = v55;
          v20[2] = v54;
          *v11 = v275;
          *(a4 - 1) = v419;
          *(a4 - 2) = v383;
          *(a4 - 3) = v347;
          *(a4 - 4) = v311;
        }
      }

      else
      {
        *a1 = v18;
        *(a3 - 1) = v22;
        v268 = *a2;
        v376 = a2[3];
        v412 = a2[4];
        v304 = a2[1];
        v340 = a2[2];
        v23 = *(a4 - 1);
        v25 = *(a4 - 4);
        v24 = *(a4 - 3);
        a2[3] = *(a4 - 2);
        a2[4] = v23;
        a2[1] = v25;
        a2[2] = v24;
        *a2 = *v11;
        *(a4 - 4) = v304;
        *(a4 - 3) = v340;
        *(a4 - 2) = v376;
        *(a4 - 1) = v412;
        *v11 = v268;
      }

      v56 = v16 - 1;
      v57 = &a2[5 * v16 - 5];
      v58 = a1[v56];
      v59 = a1[1];
      v60 = *(a3 - 2);
      if (v58 >= v59)
      {
        if (v60 < v58)
        {
          a1[v56] = v60;
          *(a3 - 2) = v58;
          v313 = v57[1];
          v349 = v57[2];
          v385 = v57[3];
          v421 = v57[4];
          v277 = *v57;
          *v57 = *v254;
          v65 = *(a4 - 6);
          v67 = *(a4 - 9);
          v66 = *(a4 - 8);
          v57[3] = *(a4 - 7);
          v57[4] = v65;
          v57[1] = v67;
          v57[2] = v66;
          *v254 = v277;
          *(a4 - 6) = v421;
          *(a4 - 7) = v385;
          *(a4 - 8) = v349;
          *(a4 - 9) = v313;
          v68 = a1[v56];
          v69 = a1[1];
          if (v68 < v69)
          {
            a1[1] = v68;
            a1[v56] = v69;
            v314 = a2[6];
            v350 = a2[7];
            v386 = a2[8];
            v422 = a2[9];
            v278 = a2[5];
            a2[5] = *v57;
            v70 = v57[4];
            v72 = v57[1];
            v71 = v57[2];
            a2[8] = v57[3];
            a2[9] = v70;
            a2[6] = v72;
            a2[7] = v71;
            *v57 = v278;
            v57[4] = v422;
            v57[3] = v386;
            v57[2] = v350;
            v57[1] = v314;
          }
        }
      }

      else
      {
        if (v60 < v58)
        {
          a1[1] = v60;
          *(a3 - 2) = v59;
          v312 = a2[6];
          v348 = a2[7];
          v384 = a2[8];
          v420 = a2[9];
          v276 = a2[5];
          v61 = a4 - 10;
          a2[5] = *v254;
          v62 = *(a4 - 6);
          v64 = *(a4 - 9);
          v63 = *(a4 - 8);
          a2[8] = *(a4 - 7);
          a2[9] = v62;
          a2[6] = v64;
          a2[7] = v63;
          goto LABEL_41;
        }

        a1[1] = v58;
        a1[v56] = v59;
        v317 = a2[6];
        v353 = a2[7];
        v389 = a2[8];
        v425 = a2[9];
        v281 = a2[5];
        a2[5] = *v57;
        v81 = v57[4];
        v83 = v57[1];
        v82 = v57[2];
        a2[8] = v57[3];
        a2[9] = v81;
        a2[6] = v83;
        a2[7] = v82;
        *v57 = v281;
        v57[4] = v425;
        v57[3] = v389;
        v57[2] = v353;
        v57[1] = v317;
        v84 = *(a3 - 2);
        v85 = a1[v56];
        if (v84 < v85)
        {
          a1[v56] = v84;
          *(a3 - 2) = v85;
          v312 = v57[1];
          v348 = v57[2];
          v384 = v57[3];
          v420 = v57[4];
          v276 = *v57;
          v61 = a4 - 10;
          *v57 = *v254;
          v86 = *(a4 - 6);
          v88 = *(a4 - 9);
          v87 = *(a4 - 8);
          v57[3] = *(a4 - 7);
          v57[4] = v86;
          v57[1] = v88;
          v57[2] = v87;
LABEL_41:
          *v61 = v276;
          v61[4] = v420;
          v61[3] = v384;
          v61[2] = v348;
          v61[1] = v312;
        }
      }

      v89 = v16 + 1;
      v90 = v89;
      v91 = &a2[5 * v89];
      v92 = a1[v90];
      v93 = a1[2];
      v94 = *(a3 - 3);
      if (v92 >= v93)
      {
        if (v94 < v92)
        {
          a1[v90] = v94;
          *(a3 - 3) = v92;
          v319 = v91[1];
          v355 = v91[2];
          v391 = v91[3];
          v427 = v91[4];
          v283 = *v91;
          *v91 = *v253;
          v99 = *(a4 - 11);
          v101 = *(a4 - 14);
          v100 = *(a4 - 13);
          v91[3] = *(a4 - 12);
          v91[4] = v99;
          v91[1] = v101;
          v91[2] = v100;
          *v253 = v283;
          *(a4 - 11) = v427;
          *(a4 - 12) = v391;
          *(a4 - 13) = v355;
          *(a4 - 14) = v319;
          v102 = a1[v90];
          v103 = a1[2];
          if (v102 < v103)
          {
            a1[2] = v102;
            a1[v90] = v103;
            v320 = a2[11];
            v356 = a2[12];
            v392 = a2[13];
            v428 = a2[14];
            v284 = a2[10];
            a2[10] = *v91;
            v104 = v91[4];
            v106 = v91[1];
            v105 = v91[2];
            a2[13] = v91[3];
            a2[14] = v104;
            a2[11] = v106;
            a2[12] = v105;
            *v91 = v284;
            v91[4] = v428;
            v91[3] = v392;
            v91[2] = v356;
            v91[1] = v320;
          }
        }
      }

      else
      {
        if (v94 < v92)
        {
          a1[2] = v94;
          *(a3 - 3) = v93;
          v318 = a2[11];
          v354 = a2[12];
          v390 = a2[13];
          v426 = a2[14];
          v282 = a2[10];
          v95 = a4 - 15;
          a2[10] = *v253;
          v96 = *(a4 - 11);
          v98 = *(a4 - 14);
          v97 = *(a4 - 13);
          a2[13] = *(a4 - 12);
          a2[14] = v96;
          a2[11] = v98;
          a2[12] = v97;
          goto LABEL_50;
        }

        a1[2] = v92;
        a1[v90] = v93;
        v321 = a2[11];
        v357 = a2[12];
        v393 = a2[13];
        v429 = a2[14];
        v285 = a2[10];
        a2[10] = *v91;
        v107 = v91[4];
        v109 = v91[1];
        v108 = v91[2];
        a2[13] = v91[3];
        a2[14] = v107;
        a2[11] = v109;
        a2[12] = v108;
        *v91 = v285;
        v91[4] = v429;
        v91[3] = v393;
        v91[2] = v357;
        v91[1] = v321;
        v110 = *(a3 - 3);
        v111 = a1[v90];
        if (v110 < v111)
        {
          a1[v90] = v110;
          *(a3 - 3) = v111;
          v318 = v91[1];
          v354 = v91[2];
          v390 = v91[3];
          v426 = v91[4];
          v282 = *v91;
          v95 = a4 - 15;
          *v91 = *v253;
          v112 = *(a4 - 11);
          v114 = *(a4 - 14);
          v113 = *(a4 - 13);
          v91[3] = *(a4 - 12);
          v91[4] = v112;
          v91[1] = v114;
          v91[2] = v113;
LABEL_50:
          *v95 = v282;
          v95[4] = v426;
          v95[3] = v390;
          v95[2] = v354;
          v95[1] = v318;
        }
      }

      v115 = a1[v19];
      v116 = a1[v56];
      v117 = a1[v90];
      if (v115 >= v116)
      {
        if (v117 < v115)
        {
          a1[v19] = v117;
          a1[v90] = v115;
          v323 = v20[1];
          v359 = v20[2];
          v395 = v20[3];
          v431 = v20[4];
          v287 = *v20;
          *v20 = *v91;
          v121 = v91[4];
          v123 = v91[1];
          v122 = v91[2];
          v20[3] = v91[3];
          v20[4] = v121;
          v20[1] = v123;
          v20[2] = v122;
          *v91 = v287;
          v91[4] = v431;
          v91[3] = v395;
          v91[2] = v359;
          v91[1] = v323;
          v124 = a1[v19];
          v125 = a1[v56];
          if (v124 < v125)
          {
            a1[v56] = v124;
            a1[v19] = v125;
            v324 = v57[1];
            v360 = v57[2];
            v396 = v57[3];
            v432 = v57[4];
            v288 = *v57;
            *v57 = *v20;
            v126 = v20[4];
            v128 = v20[1];
            v127 = v20[2];
            v57[3] = v20[3];
            v57[4] = v126;
            v57[1] = v128;
            v57[2] = v127;
            *v20 = v288;
            v20[4] = v432;
            v20[3] = v396;
            v20[2] = v360;
            v20[1] = v324;
          }
        }
      }

      else
      {
        if (v117 < v115)
        {
          a1[v56] = v117;
          a1[v90] = v116;
          v322 = v57[1];
          v358 = v57[2];
          v394 = v57[3];
          v430 = v57[4];
          v286 = *v57;
          *v57 = *v91;
          v118 = v91[4];
          v120 = v91[1];
          v119 = v91[2];
          v57[3] = v91[3];
          v57[4] = v118;
          v57[1] = v120;
          v57[2] = v119;
          goto LABEL_59;
        }

        a1[v56] = v115;
        a1[v19] = v116;
        v325 = v57[1];
        v361 = v57[2];
        v397 = v57[3];
        v433 = v57[4];
        v289 = *v57;
        *v57 = *v20;
        v129 = v20[4];
        v131 = v20[1];
        v130 = v20[2];
        v57[3] = v20[3];
        v57[4] = v129;
        v57[1] = v131;
        v57[2] = v130;
        *v20 = v289;
        v20[4] = v433;
        v20[3] = v397;
        v20[2] = v361;
        v20[1] = v325;
        v132 = a1[v90];
        v133 = a1[v19];
        if (v132 < v133)
        {
          a1[v19] = v132;
          a1[v90] = v133;
          v322 = v20[1];
          v358 = v20[2];
          v394 = v20[3];
          v430 = v20[4];
          v286 = *v20;
          *v20 = *v91;
          v134 = v91[4];
          v136 = v91[1];
          v135 = v91[2];
          v20[3] = v91[3];
          v20[4] = v134;
          v20[1] = v136;
          v20[2] = v135;
LABEL_59:
          *v91 = v286;
          v91[4] = v430;
          v91[3] = v394;
          v91[2] = v358;
          v91[1] = v322;
        }
      }

      v137 = *a1;
      *a1 = a1[v19];
      a1[v19] = v137;
      v290 = *a2;
      v398 = a2[3];
      v434 = a2[4];
      v326 = a2[1];
      v362 = a2[2];
      v138 = v20[4];
      v140 = v20[1];
      v139 = v20[2];
      a2[3] = v20[3];
      a2[4] = v138;
      a2[1] = v140;
      a2[2] = v139;
      *a2 = *v20;
      v20[1] = v326;
      v20[2] = v362;
      v20[3] = v398;
      v20[4] = v434;
      *v20 = v290;
      --a6;
      v32 = *a1;
      if (a7)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v26 = &a2[v17];
    v27 = *a1;
    v28 = a1[v19];
    if (*a1 >= v28)
    {
      if (v18 < v27)
      {
        *a1 = v18;
        *(a3 - 1) = v27;
        v272 = *a2;
        v380 = a2[3];
        v416 = a2[4];
        v308 = a2[1];
        v344 = a2[2];
        v41 = *(a4 - 1);
        v43 = *(a4 - 4);
        v42 = *(a4 - 3);
        a2[3] = *(a4 - 2);
        a2[4] = v41;
        a2[1] = v43;
        a2[2] = v42;
        *a2 = *v11;
        *(a4 - 4) = v308;
        *(a4 - 3) = v344;
        *(a4 - 2) = v380;
        *(a4 - 1) = v416;
        *v11 = v272;
        v44 = a1[v19];
        if (*a1 < v44)
        {
          a1[v19] = *a1;
          *a1 = v44;
          v309 = v26[1];
          v345 = v26[2];
          v381 = v26[3];
          v417 = v26[4];
          v273 = *v26;
          v46 = a2[1];
          v45 = a2[2];
          v47 = a2[4];
          v26[3] = a2[3];
          v26[4] = v47;
          v26[1] = v46;
          v26[2] = v45;
          *v26 = *a2;
          *a2 = v273;
          a2[3] = v381;
          a2[4] = v417;
          a2[1] = v309;
          a2[2] = v345;
          --a6;
          v32 = *a1;
          if (a7)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }
    }

    else
    {
      if (v18 < v27)
      {
        a1[v19] = v18;
        *(a3 - 1) = v28;
        v305 = v26[1];
        v341 = v26[2];
        v377 = v26[3];
        v413 = v26[4];
        v269 = *v26;
        *v26 = *v11;
        v29 = *(a4 - 1);
        v31 = *(a4 - 4);
        v30 = *(a4 - 3);
        v26[3] = *(a4 - 2);
        v26[4] = v29;
        v26[1] = v31;
        v26[2] = v30;
        *v11 = v269;
        *(a4 - 1) = v413;
        *(a4 - 2) = v377;
        *(a4 - 3) = v341;
        *(a4 - 4) = v305;
        --a6;
        v32 = *a1;
        if (a7)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      a1[v19] = v27;
      *a1 = v28;
      v315 = v26[1];
      v351 = v26[2];
      v387 = v26[3];
      v423 = v26[4];
      v279 = *v26;
      v74 = a2[1];
      v73 = a2[2];
      v75 = a2[4];
      v26[3] = a2[3];
      v26[4] = v75;
      v26[1] = v74;
      v26[2] = v73;
      *v26 = *a2;
      *a2 = v279;
      a2[3] = v387;
      a2[4] = v423;
      a2[1] = v315;
      a2[2] = v351;
      v76 = *(a3 - 1);
      v77 = *a1;
      if (v76 < *a1)
      {
        *a1 = v76;
        *(a3 - 1) = v77;
        v280 = *a2;
        v388 = a2[3];
        v424 = a2[4];
        v316 = a2[1];
        v352 = a2[2];
        v78 = *(a4 - 1);
        v80 = *(a4 - 4);
        v79 = *(a4 - 3);
        a2[3] = *(a4 - 2);
        a2[4] = v78;
        a2[1] = v80;
        a2[2] = v79;
        *a2 = *v11;
        *(a4 - 4) = v316;
        *(a4 - 3) = v352;
        *(a4 - 2) = v388;
        *(a4 - 1) = v424;
        *v11 = v280;
      }
    }

    --a6;
    v32 = *a1;
    if (a7)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(a1 - 1) >= v32)
    {
      v301 = *a2;
      v445 = a2[4];
      v409 = a2[3];
      v373 = a2[2];
      v337 = a2[1];
      if (v32 >= *(a3 - 1))
      {
        v165 = a1 + 1;
        v166 = &a2[5];
        do
        {
          v12 = v165;
          v13 = v166;
          if (v165 >= a3)
          {
            break;
          }

          ++v165;
          v166 += 5;
        }

        while (v32 >= *v12);
      }

      else
      {
        v12 = a1;
        v13 = a2;
        do
        {
          v164 = v12[1];
          ++v12;
          v13 += 5;
        }

        while (v32 >= v164);
      }

      v167 = a3;
      v168 = a4;
      if (v12 < a3)
      {
        v167 = a3;
        v168 = a4;
        do
        {
          v169 = *--v167;
          v168 -= 5;
        }

        while (v32 < v169);
      }

      if (v12 < v167)
      {
        v170 = *v12;
        v171 = *v167;
        do
        {
          *v12 = v171;
          *v167 = v170;
          v259 = *v13;
          v265 = v13[3];
          v267 = v13[4];
          v261 = v13[1];
          v263 = v13[2];
          v172 = v168[4];
          v174 = v168[1];
          v173 = v168[2];
          v13[3] = v168[3];
          v13[4] = v172;
          v13[1] = v174;
          v13[2] = v173;
          *v13 = *v168;
          v168[3] = v265;
          v168[4] = v267;
          v168[1] = v261;
          v168[2] = v263;
          *v168 = v259;
          do
          {
            v175 = v12[1];
            ++v12;
            v170 = v175;
            v13 += 5;
          }

          while (v32 >= v175);
          do
          {
            v176 = *--v167;
            v171 = v176;
            v168 -= 5;
          }

          while (v32 < v176);
        }

        while (v12 < v167);
      }

      v177 = v12 - 1;
      v178 = v13 - 5;
      if (v12 - 1 != a1)
      {
        *a1 = *v177;
        *a2 = *v178;
        v179 = *(v13 - 4);
        v180 = *(v13 - 3);
        v181 = *(v13 - 1);
        a2[3] = *(v13 - 2);
        a2[4] = v181;
        a2[1] = v179;
        a2[2] = v180;
      }

      a7 = 0;
      *v177 = v32;
      *(v13 - 4) = v337;
      *(v13 - 3) = v373;
      *(v13 - 2) = v409;
      *(v13 - 1) = v445;
      result = v301.n128_f64[0];
      *v178 = v301;
      goto LABEL_2;
    }

LABEL_62:
    v141 = 0;
    v300 = *a2;
    v444 = a2[4];
    v408 = a2[3];
    v372 = a2[2];
    v336 = a2[1];
    v142 = a2;
    do
    {
      v142 += 5;
      v143 = a1[++v141];
    }

    while (v143 < v32);
    v144 = &a1[v141];
    v145 = a3;
    v146 = a4;
    if (v141 == 1)
    {
      v145 = a3;
      v146 = a4;
      do
      {
        if (v144 >= v145)
        {
          break;
        }

        v147 = *--v145;
        v146 -= 5;
      }

      while (v147 >= v32);
    }

    else
    {
      do
      {
        v148 = *--v145;
        v146 -= 5;
      }

      while (v148 >= v32);
    }

    if (v144 >= v145)
    {
      v152 = v144 - 1;
      v158 = v142 - 5;
      if (v144 - 1 != a1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v149 = *v145;
      v150 = &a1[v141];
      v151 = v145;
      do
      {
        *v150 = v149;
        v152 = v150 - 1;
        *v151 = v143;
        v262 = v142[2];
        v264 = v142[3];
        v266 = v142[4];
        v258 = *v142;
        v260 = v142[1];
        v154 = v146[1];
        v153 = v146[2];
        v155 = v146[4];
        v142[3] = v146[3];
        v142[4] = v155;
        v142[1] = v154;
        v142[2] = v153;
        *v142 = *v146;
        *v146 = v258;
        v146[3] = v264;
        v146[4] = v266;
        v146[1] = v260;
        v146[2] = v262;
        do
        {
          v156 = v150[1];
          ++v150;
          v143 = v156;
          v142 += 5;
          ++v152;
        }

        while (v156 < v32);
        do
        {
          v157 = *--v151;
          v149 = v157;
          v146 -= 5;
        }

        while (v157 >= v32);
      }

      while (v150 < v151);
      v158 = v142 - 5;
      if (v152 != a1)
      {
LABEL_77:
        *a1 = *v152;
        *a2 = *v158;
        v159 = v158[1];
        v160 = v158[2];
        v161 = v158[4];
        a2[3] = v158[3];
        a2[4] = v161;
        a2[1] = v159;
        a2[2] = v160;
      }
    }

    *v152 = v32;
    v158[1] = v336;
    v158[2] = v372;
    v158[3] = v408;
    v158[4] = v444;
    *v158 = v300;
    if (v144 < v145)
    {
      goto LABEL_85;
    }

    v162 = sub_F7DE3C(a1, a2, v152, v158);
    if (sub_F7DE3C(v152 + 1, v142, a3, a4))
    {
      a3 = v152;
      a4 = v158;
      if (!v162)
      {
        goto LABEL_1;
      }

      return result;
    }

    if (!v162)
    {
LABEL_85:
      result = sub_F7C320(a1, a2, v152, v158, a5, a6, a7 & 1);
      a7 = 0;
      v12 = v152 + 1;
      v13 = v158 + 5;
      goto LABEL_2;
    }

    a1 = v152 + 1;
    a2 = (v158 + 5);
    v14 = a3 - (v152 + 1);
    v15 = v14 >= 2;
    if (v14 <= 2)
    {
      goto LABEL_3;
    }
  }

  v183 = *a1;
  v182 = a1[1];
  v184 = *(a3 - 1);
  if (v182 >= *a1)
  {
    if (v184 >= v182)
    {
      return result;
    }

    a1[1] = v184;
    *(a3 - 1) = v182;
    v332 = a2[6];
    v368 = a2[7];
    v404 = a2[8];
    v440 = a2[9];
    v296 = a2[5];
    a2[5] = *v11;
    v225 = *(a4 - 1);
    v227 = *(a4 - 4);
    v226 = *(a4 - 3);
    a2[8] = *(a4 - 2);
    a2[9] = v225;
    a2[6] = v227;
    a2[7] = v226;
    *v11 = v296;
    *(a4 - 1) = v440;
    *(a4 - 2) = v404;
    *(a4 - 3) = v368;
    result = *&v332;
    *(a4 - 4) = v332;
LABEL_135:
    v229 = *a1;
    v228 = a1[1];
    if (v228 < *a1)
    {
      *a1 = v228;
      a1[1] = v229;
      v297 = *a2;
      v405 = a2[3];
      v441 = a2[4];
      v333 = a2[1];
      v369 = a2[2];
      v230 = a2[7];
      v231 = a2[9];
      a2[3] = a2[8];
      a2[4] = v231;
      v232 = a2[5];
      a2[1] = a2[6];
      a2[2] = v230;
      *a2 = v232;
      a2[6] = v333;
      a2[7] = v369;
      a2[8] = v405;
      a2[9] = v441;
      result = *&v297;
      a2[5] = v297;
    }

    return result;
  }

  if (v184 >= v182)
  {
    *a1 = v182;
    a1[1] = v183;
    v298 = *a2;
    v406 = a2[3];
    v442 = a2[4];
    v334 = a2[1];
    v370 = a2[2];
    v245 = a2[7];
    v246 = a2[9];
    a2[3] = a2[8];
    a2[4] = v246;
    v247 = a2[5];
    a2[1] = a2[6];
    a2[2] = v245;
    *a2 = v247;
    a2[6] = v334;
    a2[7] = v370;
    a2[8] = v406;
    a2[9] = v442;
    result = *&v298;
    a2[5] = v298;
    v248 = *(a3 - 1);
    v249 = a1[1];
    if (v248 < v249)
    {
      a1[1] = v248;
      *(a3 - 1) = v249;
      v335 = a2[6];
      v371 = a2[7];
      v407 = a2[8];
      v443 = a2[9];
      v299 = a2[5];
      a2[5] = *v11;
      v250 = *(a4 - 1);
      v252 = *(a4 - 4);
      v251 = *(a4 - 3);
      a2[8] = *(a4 - 2);
      a2[9] = v250;
      a2[6] = v252;
      a2[7] = v251;
      *v11 = v299;
      *(a4 - 1) = v443;
      *(a4 - 2) = v407;
      *(a4 - 3) = v371;
      result = *&v335;
      *(a4 - 4) = v335;
    }
  }

  else
  {
    *a1 = v184;
    *(a3 - 1) = v183;
    v291 = *a2;
    v399 = a2[3];
    v435 = a2[4];
    v327 = a2[1];
    v363 = a2[2];
    v185 = *(a4 - 1);
    v187 = *(a4 - 4);
    v186 = *(a4 - 3);
    a2[3] = *(a4 - 2);
    a2[4] = v185;
    a2[1] = v187;
    a2[2] = v186;
    *a2 = *v11;
    *(a4 - 4) = v327;
    *(a4 - 3) = v363;
    *(a4 - 2) = v399;
    *(a4 - 1) = v435;
    result = v291.n128_f64[0];
    *v11 = v291;
  }

  return result;
}

__n128 sub_F7DB4C(unsigned int *a1, __n128 *a2, unsigned int *a3, __n128 *a4, unsigned int *a5, __n128 *a6, unsigned int *a7, __n128 *a8)
{
  v8 = *a3;
  v9 = *a1;
  v10 = *a5;
  if (*a3 >= *a1)
  {
    if (v10 < v8)
    {
      *a3 = v10;
      *a5 = v8;
      v56 = a4[2];
      v63 = a4[3];
      v70 = a4[4];
      v42 = *a4;
      v49 = a4[1];
      *a4 = *a6;
      v14 = a6[4];
      v16 = a6[1];
      v15 = a6[2];
      a4[3] = a6[3];
      a4[4] = v14;
      a4[1] = v16;
      a4[2] = v15;
      a6[3] = v63;
      a6[4] = v70;
      a6[1] = v49;
      a6[2] = v56;
      result = v42;
      *a6 = v42;
      v18 = *a1;
      if (*a3 < *a1)
      {
        *a1 = *a3;
        *a3 = v18;
        v57 = a2[2];
        v64 = a2[3];
        v71 = a2[4];
        v43 = *a2;
        v50 = a2[1];
        *a2 = *a4;
        v19 = a4[4];
        v21 = a4[1];
        v20 = a4[2];
        a2[3] = a4[3];
        a2[4] = v19;
        a2[1] = v21;
        a2[2] = v20;
        a4[3] = v64;
        a4[4] = v71;
        a4[1] = v50;
        a4[2] = v57;
        result = v43;
        *a4 = v43;
      }
    }
  }

  else
  {
    if (v10 < v8)
    {
      *a1 = v10;
      *a5 = v9;
      v55 = a2[2];
      v62 = a2[3];
      v69 = a2[4];
      v41 = *a2;
      v48 = a2[1];
      *a2 = *a6;
      v11 = a6[4];
      v13 = a6[1];
      v12 = a6[2];
      a2[3] = a6[3];
      a2[4] = v11;
      a2[1] = v13;
      a2[2] = v12;
LABEL_9:
      a6[3] = v62;
      a6[4] = v69;
      a6[1] = v48;
      a6[2] = v55;
      result = v41;
      *a6 = v41;
      goto LABEL_10;
    }

    *a1 = v8;
    *a3 = v9;
    v58 = a2[2];
    v65 = a2[3];
    v72 = a2[4];
    v44 = *a2;
    v51 = a2[1];
    *a2 = *a4;
    v22 = a4[4];
    v24 = a4[1];
    v23 = a4[2];
    a2[3] = a4[3];
    a2[4] = v22;
    a2[1] = v24;
    a2[2] = v23;
    a4[3] = v65;
    a4[4] = v72;
    a4[1] = v51;
    a4[2] = v58;
    result = v44;
    *a4 = v44;
    v25 = *a3;
    if (*a5 < *a3)
    {
      *a3 = *a5;
      *a5 = v25;
      v55 = a4[2];
      v62 = a4[3];
      v69 = a4[4];
      v41 = *a4;
      v48 = a4[1];
      *a4 = *a6;
      v26 = a6[4];
      v28 = a6[1];
      v27 = a6[2];
      a4[3] = a6[3];
      a4[4] = v26;
      a4[1] = v28;
      a4[2] = v27;
      goto LABEL_9;
    }
  }

LABEL_10:
  v29 = *a5;
  if (*a7 < *a5)
  {
    *a5 = *a7;
    *a7 = v29;
    v59 = a6[2];
    v66 = a6[3];
    v73 = a6[4];
    v45 = *a6;
    v52 = a6[1];
    *a6 = *a8;
    v30 = a8[4];
    v32 = a8[1];
    v31 = a8[2];
    a6[3] = a8[3];
    a6[4] = v30;
    a6[1] = v32;
    a6[2] = v31;
    a8[3] = v66;
    a8[4] = v73;
    a8[1] = v52;
    a8[2] = v59;
    result = v45;
    *a8 = v45;
    v33 = *a3;
    if (*a5 < *a3)
    {
      *a3 = *a5;
      *a5 = v33;
      v60 = a4[2];
      v67 = a4[3];
      v74 = a4[4];
      v46 = *a4;
      v53 = a4[1];
      *a4 = *a6;
      v34 = a6[4];
      v36 = a6[1];
      v35 = a6[2];
      a4[3] = a6[3];
      a4[4] = v34;
      a4[1] = v36;
      a4[2] = v35;
      a6[3] = v67;
      a6[4] = v74;
      a6[1] = v53;
      a6[2] = v60;
      result = v46;
      *a6 = v46;
      v37 = *a1;
      if (*a3 < *a1)
      {
        *a1 = *a3;
        *a3 = v37;
        v61 = a2[2];
        v68 = a2[3];
        v75 = a2[4];
        v47 = *a2;
        v54 = a2[1];
        *a2 = *a4;
        v38 = a4[4];
        v40 = a4[1];
        v39 = a4[2];
        a2[3] = a4[3];
        a2[4] = v38;
        a2[1] = v40;
        a2[2] = v39;
        a4[3] = v68;
        a4[4] = v75;
        a4[1] = v54;
        a4[2] = v61;
        result = v47;
        *a4 = v47;
      }
    }
  }

  return result;
}

BOOL sub_F7DE3C(unsigned int *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = a3 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v38 = (a4 - 80);
      v40 = *a1;
      v39 = a1[1];
      v41 = *(a3 - 1);
      if (v39 >= *a1)
      {
        if (v41 < v39)
        {
          a1[1] = v41;
          *(a3 - 1) = v39;
          v135 = *(a2 + 112);
          v149 = *(a2 + 128);
          v163 = *(a2 + 144);
          v107 = *(a2 + 80);
          v121 = *(a2 + 96);
          *(a2 + 80) = *v38;
          v53 = *(a4 - 16);
          v55 = *(a4 - 64);
          v54 = *(a4 - 48);
          *(a2 + 128) = *(a4 - 32);
          *(a2 + 144) = v53;
          *(a2 + 96) = v55;
          *(a2 + 112) = v54;
          *(a4 - 32) = v149;
          *(a4 - 16) = v163;
          *(a4 - 64) = v121;
          *(a4 - 48) = v135;
          *v38 = v107;
          v57 = *a1;
          v56 = a1[1];
          if (v56 < *a1)
          {
            *a1 = v56;
            a1[1] = v57;
            v136 = *(a2 + 32);
            v150 = *(a2 + 48);
            v164 = *(a2 + 64);
            v108 = *a2;
            v122 = *(a2 + 16);
            v58 = *(a2 + 128);
            v59 = *(a2 + 144);
            v61 = *(a2 + 96);
            v60 = *(a2 + 112);
            *a2 = *(a2 + 80);
            *(a2 + 16) = v61;
            *(a2 + 32) = v60;
            *(a2 + 48) = v58;
            *(a2 + 64) = v59;
            *(a2 + 80) = v108;
            *(a2 + 128) = v150;
            *(a2 + 144) = v164;
            result = 1;
            *(a2 + 96) = v122;
            *(a2 + 112) = v136;
            return result;
          }
        }

        return 1;
      }

      if (v41 >= v39)
      {
        *a1 = v39;
        a1[1] = v40;
        v139 = *(a2 + 32);
        v153 = *(a2 + 48);
        v167 = *(a2 + 64);
        v111 = *a2;
        v125 = *(a2 + 16);
        v71 = *(a2 + 128);
        v72 = *(a2 + 144);
        v74 = *(a2 + 96);
        v73 = *(a2 + 112);
        *a2 = *(a2 + 80);
        *(a2 + 16) = v74;
        *(a2 + 32) = v73;
        *(a2 + 48) = v71;
        *(a2 + 64) = v72;
        *(a2 + 80) = v111;
        *(a2 + 128) = v153;
        *(a2 + 144) = v167;
        *(a2 + 96) = v125;
        *(a2 + 112) = v139;
        v75 = *(a3 - 1);
        v76 = a1[1];
        if (v75 >= v76)
        {
          return 1;
        }

        a1[1] = v75;
        *(a3 - 1) = v76;
        v133 = *(a2 + 112);
        v147 = *(a2 + 128);
        v161 = *(a2 + 144);
        v105 = *(a2 + 80);
        v119 = *(a2 + 96);
        *(a2 + 80) = *v38;
        v77 = *(a4 - 16);
        v79 = *(a4 - 64);
        v78 = *(a4 - 48);
        *(a2 + 128) = *(a4 - 32);
        *(a2 + 144) = v77;
        *(a2 + 96) = v79;
        *(a2 + 112) = v78;
      }

      else
      {
        *a1 = v41;
        *(a3 - 1) = v40;
        v133 = *(a2 + 32);
        v147 = *(a2 + 48);
        v161 = *(a2 + 64);
        v105 = *a2;
        v119 = *(a2 + 16);
        *a2 = *v38;
        v42 = *(a4 - 16);
        v44 = *(a4 - 64);
        v43 = *(a4 - 48);
        *(a2 + 48) = *(a4 - 32);
        *(a2 + 64) = v42;
        *(a2 + 16) = v44;
        *(a2 + 32) = v43;
      }

      *(a4 - 32) = v147;
      *(a4 - 16) = v161;
      *(a4 - 64) = v119;
      *(a4 - 48) = v133;
      result = 1;
      *v38 = v105;
      return result;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_F7DB4C(a1, a2, a1 + 1, (a2 + 80), a1 + 2, (a2 + 160), a1 + 3, (a2 + 240));
        v15 = *(a3 - 1);
        v16 = a1[3];
        if (v15 < v16)
        {
          a1[3] = v15;
          *(a3 - 1) = v16;
          v129 = *(a2 + 272);
          v143 = *(a2 + 288);
          v157 = *(a2 + 304);
          v101 = *(a2 + 240);
          v115 = *(a2 + 256);
          *(a2 + 240) = *(a4 - 80);
          v17 = *(a4 - 16);
          v19 = *(a4 - 64);
          v18 = *(a4 - 48);
          *(a2 + 288) = *(a4 - 32);
          *(a2 + 304) = v17;
          *(a2 + 256) = v19;
          *(a2 + 272) = v18;
          *(a4 - 32) = v143;
          *(a4 - 16) = v157;
          *(a4 - 64) = v115;
          *(a4 - 48) = v129;
          *(a4 - 80) = v101;
          v21 = a1[2];
          v20 = a1[3];
          if (v20 < v21)
          {
            a1[2] = v20;
            a1[3] = v21;
            v130 = *(a2 + 192);
            v144 = *(a2 + 208);
            v158 = *(a2 + 224);
            v102 = *(a2 + 160);
            v116 = *(a2 + 176);
            v22 = *(a2 + 288);
            v23 = *(a2 + 304);
            v25 = *(a2 + 256);
            v24 = *(a2 + 272);
            *(a2 + 160) = *(a2 + 240);
            *(a2 + 176) = v25;
            *(a2 + 192) = v24;
            *(a2 + 208) = v22;
            *(a2 + 224) = v23;
            *(a2 + 240) = v102;
            *(a2 + 288) = v144;
            *(a2 + 304) = v158;
            *(a2 + 256) = v116;
            *(a2 + 272) = v130;
            v27 = a1[1];
            v26 = a1[2];
            if (v26 < v27)
            {
              a1[1] = v26;
              a1[2] = v27;
              v131 = *(a2 + 112);
              v145 = *(a2 + 128);
              v159 = *(a2 + 144);
              v103 = *(a2 + 80);
              v117 = *(a2 + 96);
              v28 = *(a2 + 208);
              v29 = *(a2 + 224);
              v31 = *(a2 + 176);
              v30 = *(a2 + 192);
              *(a2 + 80) = *(a2 + 160);
              *(a2 + 96) = v31;
              *(a2 + 112) = v30;
              *(a2 + 128) = v28;
              *(a2 + 144) = v29;
              *(a2 + 160) = v103;
              *(a2 + 208) = v145;
              *(a2 + 224) = v159;
              *(a2 + 176) = v117;
              *(a2 + 192) = v131;
              v33 = *a1;
              v32 = a1[1];
              if (v32 < *a1)
              {
                *a1 = v32;
                a1[1] = v33;
                v132 = *(a2 + 32);
                v146 = *(a2 + 48);
                v160 = *(a2 + 64);
                v104 = *a2;
                v118 = *(a2 + 16);
                v34 = *(a2 + 128);
                v35 = *(a2 + 144);
                v37 = *(a2 + 96);
                v36 = *(a2 + 112);
                *a2 = *(a2 + 80);
                *(a2 + 16) = v37;
                *(a2 + 32) = v36;
                *(a2 + 48) = v34;
                *(a2 + 64) = v35;
                *(a2 + 80) = v104;
                *(a2 + 128) = v146;
                *(a2 + 144) = v160;
                result = 1;
                *(a2 + 96) = v118;
                *(a2 + 112) = v132;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_F7DB4C(a1, a2, a1 + 1, (a2 + 80), a1 + 2, (a2 + 160), a3 - 1, (a4 - 80));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a3 - 1);
    v6 = *a1;
    if (v5 < *a1)
    {
      *a1 = v5;
      *(a3 - 1) = v6;
      v128 = *(a2 + 32);
      v142 = *(a2 + 48);
      v156 = *(a2 + 64);
      v100 = *a2;
      v114 = *(a2 + 16);
      *a2 = *(a4 - 80);
      v7 = *(a4 - 16);
      v9 = *(a4 - 64);
      v8 = *(a4 - 48);
      *(a2 + 48) = *(a4 - 32);
      *(a2 + 64) = v7;
      *(a2 + 16) = v9;
      *(a2 + 32) = v8;
      *(a4 - 32) = v142;
      *(a4 - 16) = v156;
      *(a4 - 64) = v114;
      *(a4 - 48) = v128;
      result = 1;
      *(a4 - 80) = v100;
      return result;
    }

    return 1;
  }

LABEL_17:
  v45 = a1 + 2;
  v46 = a1[2];
  v47 = (a2 + 160);
  v49 = *a1;
  v48 = a1[1];
  if (v48 >= *a1)
  {
    if (v46 < v48)
    {
      a1[1] = v46;
      a1[2] = v48;
      v137 = *(a2 + 112);
      v151 = *(a2 + 128);
      v165 = *(a2 + 144);
      v109 = *(a2 + 80);
      v123 = *(a2 + 96);
      *(a2 + 80) = *v47;
      v62 = *(a2 + 224);
      v64 = *(a2 + 176);
      v63 = *(a2 + 192);
      *(a2 + 128) = *(a2 + 208);
      *(a2 + 144) = v62;
      *(a2 + 96) = v64;
      *(a2 + 112) = v63;
      *(a2 + 208) = v151;
      *(a2 + 224) = v165;
      *(a2 + 176) = v123;
      *(a2 + 192) = v137;
      *v47 = v109;
      v66 = *a1;
      v65 = a1[1];
      if (v65 < *a1)
      {
        *a1 = v65;
        a1[1] = v66;
        v138 = *(a2 + 32);
        v152 = *(a2 + 48);
        v166 = *(a2 + 64);
        v110 = *a2;
        v124 = *(a2 + 16);
        v67 = *(a2 + 128);
        v68 = *(a2 + 144);
        v70 = *(a2 + 96);
        v69 = *(a2 + 112);
        *a2 = *(a2 + 80);
        *(a2 + 16) = v70;
        *(a2 + 32) = v69;
        *(a2 + 48) = v67;
        *(a2 + 64) = v68;
        *(a2 + 80) = v110;
        *(a2 + 128) = v152;
        *(a2 + 144) = v166;
        *(a2 + 96) = v124;
        *(a2 + 112) = v138;
      }
    }
  }

  else
  {
    if (v46 >= v48)
    {
      *a1 = v48;
      a1[1] = v49;
      v140 = *(a2 + 32);
      v154 = *(a2 + 48);
      v168 = *(a2 + 64);
      v112 = *a2;
      v126 = *(a2 + 16);
      v80 = *(a2 + 128);
      v81 = *(a2 + 144);
      v83 = *(a2 + 96);
      v82 = *(a2 + 112);
      *a2 = *(a2 + 80);
      *(a2 + 16) = v83;
      *(a2 + 32) = v82;
      *(a2 + 48) = v80;
      *(a2 + 64) = v81;
      *(a2 + 80) = v112;
      *(a2 + 128) = v154;
      *(a2 + 144) = v168;
      *(a2 + 96) = v126;
      *(a2 + 112) = v140;
      v85 = a1[1];
      v84 = a1[2];
      if (v84 >= v85)
      {
        goto LABEL_33;
      }

      a1[1] = v84;
      a1[2] = v85;
      v134 = *(a2 + 112);
      v148 = *(a2 + 128);
      v162 = *(a2 + 144);
      v106 = *(a2 + 80);
      v120 = *(a2 + 96);
      *(a2 + 80) = *v47;
      v86 = *(a2 + 224);
      v88 = *(a2 + 176);
      v87 = *(a2 + 192);
      *(a2 + 128) = *(a2 + 208);
      *(a2 + 144) = v86;
      *(a2 + 96) = v88;
      *(a2 + 112) = v87;
    }

    else
    {
      *a1 = v46;
      a1[2] = v49;
      v134 = *(a2 + 32);
      v148 = *(a2 + 48);
      v162 = *(a2 + 64);
      v106 = *a2;
      v120 = *(a2 + 16);
      *a2 = *v47;
      v50 = *(a2 + 224);
      v52 = *(a2 + 176);
      v51 = *(a2 + 192);
      *(a2 + 48) = *(a2 + 208);
      *(a2 + 64) = v50;
      *(a2 + 16) = v52;
      *(a2 + 32) = v51;
    }

    *(a2 + 208) = v148;
    *(a2 + 224) = v162;
    *(a2 + 176) = v120;
    *(a2 + 192) = v134;
    *v47 = v106;
  }

LABEL_33:
  v89 = a1 + 3;
  if (a1 + 3 == a3)
  {
    return 1;
  }

  v90 = 0;
  for (i = (a2 + 240); ; i += 5)
  {
    v92 = *v89;
    if (*v89 < *v45)
    {
      v113 = *i;
      v169 = i[4];
      v155 = i[3];
      v141 = i[2];
      v127 = i[1];
      v93 = *v45;
      v94 = v89;
      v95 = i;
      do
      {
        v96 = v95;
        v95 = v47;
        *v94 = v93;
        v94 = v45;
        *v96 = *v47;
        v97 = v47[1];
        v98 = v47[2];
        v99 = v47[4];
        v96[3] = v47[3];
        v96[4] = v99;
        v96[1] = v97;
        v96[2] = v98;
        if (v45 == a1)
        {
          break;
        }

        --v45;
        v93 = *(v94 - 1);
        v47 -= 5;
      }

      while (v92 < v93);
      *v94 = v92;
      *v95 = v113;
      v95[3] = v155;
      v95[4] = v169;
      v95[1] = v127;
      v95[2] = v141;
      if (++v90 == 8)
      {
        break;
      }
    }

    v45 = v89;
    v47 = i;
    if (++v89 == a3)
    {
      return 1;
    }
  }

  return v89 + 1 == a3;
}