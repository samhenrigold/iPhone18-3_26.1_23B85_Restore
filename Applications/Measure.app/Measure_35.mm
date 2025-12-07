void sub_10026935C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100269498(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    if (atomic_fetch_add((v1 + 20), 0xFFFFFFFF) == 1)
    {
      v2 = *(result + 56);
      if (v2)
      {
        *(result + 56) = 0;
        v3 = *(v2 + 8);
        if (!v3)
        {
          v3 = *(result + 48);
          if (!v3)
          {
            v4 = result;
            v5 = v2;
            v6 = sub_100268CC8();
            v2 = v5;
            v3 = v6;
            result = v4;
          }
        }

        v7 = result;
        (*(*v3 + 48))(v3, v2);
        result = v7;
      }
    }
  }

  *(result + 56) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  if (*(result + 4) >= 1)
  {
    v8 = 0;
    v9 = *(result + 64);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(result + 4));
  }

  return result;
}

void sub_100269568(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 >= 0x21)
  {
    v32 = 0;
    v33 = 0;
    qmemcpy(sub_1002A80E0(&v32, 25), "0 <= _dims && _dims <= 32", 25);
    sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 284);
  }

  if (*(a1 + 4) != a2)
  {
    v10 = *(a1 + 72);
    if (v10 != (a1 + 80))
    {
      j__free(v10);
      *(a1 + 64) = a1 + 8;
      *(a1 + 72) = a1 + 80;
    }

    if (a2 >= 3)
    {
      v11 = 8 * a2;
      v12 = sub_1001D8FE8(v11 + 4 * (a2 + 1));
      *(a1 + 72) = v12;
      *&v12[v11] = a2;
      *(a1 + 64) = &v12[v11 + 4];
      *(a1 + 8) = -1;
    }
  }

  *(a1 + 4) = a2;
  if (a3)
  {
    v13 = a2 - 1;
    if (a2 >= 1)
    {
      v30 = a2;
      v14 = *a1 & 7;
      v31 = (((*a1 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * v14)) & 3);
      if (a4)
      {
        v15 = *(a3 + 4 * v13);
        if (v15 < 0)
        {
          v32 = 0;
          v33 = 0;
          v16 = sub_1002A80E0(&v32, 6);
          *v16 = 1027481715;
          *(v16 + 4) = 12320;
          sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
        }

        v17 = (0x88442211uLL >> (4 * v14)) & 0xF;
        *(*(a1 + 64) + 4 * v13) = v15;
        if (*(a4 + 8 * v13) % v17)
        {
          v32 = 0;
          v33 = 0;
          qmemcpy(sub_1002A80E0(&v32, 31), "Step must be a multiple of esz1", 31);
          sub_1002A8980(-13, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 317);
        }

        *(*(a1 + 72) + 8 * v13) = v31;
        if (v13)
        {
          v18 = a4 - 8;
          v19 = v13;
          do
          {
            v21 = *(a3 - 4 + 4 * v19);
            if (v21 < 0)
            {
              v32 = 0;
              v33 = 0;
              v22 = sub_1002A80E0(&v32, 6);
              *v22 = 1027481715;
              *(v22 + 4) = 12320;
              sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
            }

            *(*(a1 + 64) + 4 * v19 - 4) = v21;
            if (*(v18 + 8 * v19) % v17)
            {
              v32 = 0;
              v33 = 0;
              qmemcpy(sub_1002A80E0(&v32, 31), "Step must be a multiple of esz1", 31);
              sub_1002A8980(-13, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 317);
            }

            v23 = v31;
            if (v19 <= v13)
            {
              v23 = *(v18 + 8 * v19);
            }

            v20 = *(a1 + 72) + 8 * v19--;
            *(v20 - 8) = v23;
          }

          while (v19 + 1 > 1);
        }
      }

      else if (a5)
      {
        v24 = (((*a1 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * v14)) & 3);
        do
        {
          v26 = *(a3 + 4 * v13);
          if (v26 < 0)
          {
            v32 = 0;
            v33 = 0;
            v27 = sub_1002A80E0(&v32, 6);
            *v27 = 1027481715;
            *(v27 + 4) = 12320;
            sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
          }

          *(*(a1 + 64) + 4 * v13) = v26;
          *(*(a1 + 72) + 8 * v13) = v24;
          v24 *= v26;
          v25 = v13-- <= 0;
        }

        while (!v25);
      }

      else
      {
        do
        {
          v28 = *(a3 + 4 * v13);
          if (v28 < 0)
          {
            v32 = 0;
            v33 = 0;
            v29 = sub_1002A80E0(&v32, 6);
            *v29 = 1027481715;
            *(v29 + 4) = 12320;
            sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
          }

          *(*(a1 + 64) + 4 * v13) = v28;
          v25 = v13-- <= 0;
        }

        while (!v25);
      }

      if (v30 == 1)
      {
        *(a1 + 4) = 2;
        *(a1 + 12) = 1;
        *(*(a1 + 72) + 8) = v31;
      }
    }
  }
}

void sub_1002699B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100269A18(uint64_t result)
{
  v1 = *(result + 4);
  v2 = *(result + 64);
  if (v1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    while (v2[v3] <= 1)
    {
      if (v1 == ++v3)
      {
        LODWORD(v3) = *(result + 4);
        break;
      }
    }

    v4 = v3;
  }

  v5 = *(result + 72);
  v6 = v1 - 1;
  v7 = &v5[v1 - 1];
  while (v6 > v4)
  {
    v8 = *v7 * v2[v6];
    v9 = *--v7;
    --v6;
    if (v8 < v9)
    {
      *result &= ~0x4000u;
      if (v1 < 3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  *result = *result & 0xFFFFBFFF | 0x4000;
  if (v1 < 3)
  {
    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = -1;
LABEL_15:
  v10 = *(result + 56);
  if (v10)
  {
    v11 = *(v10 + 24);
    *(result + 16) = v11;
    *(result + 24) = v11;
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_22:
    *(result + 32) = 0;
    *(result + 40) = 0;
    return result;
  }

  v11 = *(result + 16);
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_17:
  v12 = *v2;
  v13 = *(result + 24) + *v5 * v12;
  *(result + 40) = v13;
  if (v12 < 1)
  {
    *(result + 32) = v13;
  }

  else
  {
    v14 = (v1 - 1);
    v15 = v11 + v5[v14] * v2[v14];
    *(result + 32) = v15;
    if (v1 >= 2)
    {
      do
      {
        v16 = *v2++;
        v17 = v16 - 1;
        v18 = *v5++;
        v15 += v18 * v17;
        --v14;
      }

      while (v14);
      *(result + 32) = v15;
    }
  }

  return result;
}

void sub_100269B58(uint64_t a1, uint64_t a2)
{
  sub_100269568(a1, *(a2 + 4), 0, 0, 0);
  if (*(a1 + 4) >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 64);
    v6 = *(a2 + 72);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    do
    {
      *(v7 + 4 * v4) = *(v5 + 4 * v4);
      *(v8 + 8 * v4) = *(v6 + 8 * v4);
      ++v4;
    }

    while (v4 < *(a1 + 4));
  }
}

uint64_t sub_100269BC8(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    v2 = result;
    *(result + 56) = 0;
    v3 = *(v1 + 8);
    if (!v3)
    {
      v3 = *(v2 + 48);
      if (!v3)
      {
        v3 = sub_100268CC8();
      }
    }

    v4 = *(*v3 + 48);

    return v4();
  }

  return result;
}

uint64_t sub_100269C44(uint64_t a1, _DWORD *a2, int *a3, uint64_t *a4)
{
  *a1 = 1124007936;
  *(a1 + 4) = 0u;
  v8 = (a1 + 4);
  v9 = (a1 + 8);
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  v10 = a2[1];
  if (v10 < 2)
  {
    v44 = 0;
    v45 = 0;
    v11 = sub_1002A80E0(&v44, 11);
    *(v11 + 7) = 840973630;
    *v11 = *"m.dims >= 2";
    sub_1002A8980(-215, &v44, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 474);
  }

  if (v10 > 2)
  {
    bzero(v46, 0x440uLL);
    v44 = v46;
    v45 = v10;
    if (v10 > 0x88)
    {
      operator new[]();
    }

    v18 = *a4;
    v46[0] = *a3;
    v46[1] = v18;
    v19 = 2;
    do
    {
      v44[v19++] = 0x7FFFFFFF80000000;
    }

    while (v19 < a2[1]);
    sub_10026A400(v38, a2, v44);
    v21.n128_f64[0] = sub_10025DAEC(a1, v38, v20);
    if (v40)
    {
      if (atomic_fetch_add((v40 + 20), 0xFFFFFFFF) == 1)
      {
        v22 = v40;
        if (v40)
        {
          v40 = 0;
          v23 = *(v22 + 8);
          if (!v23)
          {
            v23 = v39;
            if (!v39)
            {
              v23 = sub_100268CC8();
            }
          }

          (*(*v23 + 48))(v23, v22, v21);
        }
      }
    }

    v40 = 0;
    memset(&v38[1], 0, 32);
    if (SDWORD1(v38[0]) >= 1)
    {
      v24 = 0;
      v25 = v41;
      do
      {
        *(v25 + 4 * v24++) = 0;
      }

      while (v24 < SDWORD1(v38[0]));
    }

    if (v42 != &v43)
    {
      j__free(v42);
    }

    if (v44 != v46 && v44 != 0)
    {
      operator delete[]();
    }

    return a1;
  }

  v12 = sub_10026A244(a1, a2);
  v13 = *a3;
  v14 = a3[1];
  if (*a3 != 0x7FFFFFFF80000000 && (v13 || v14 != *v9))
  {
    if (v13 < 0 || v13 > v14 || v14 > a2[2])
    {
      v44 = 0;
      v45 = 0;
      qmemcpy(sub_1002A80E0(&v44, 83), "0 <= _rowRange.start && _rowRange.start <= _rowRange.end && _rowRange.end <= m.rows", 83);
      sub_1002A8980(-215, &v44, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 492);
    }

    *(a1 + 8) = v14 - v13;
    *(a1 + 16) += *(a1 + 80) * v13;
    *a1 |= 0x8000u;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  if (*a4 == 0x80000000 && v16 == 0x7FFFFFFF || !v15 && v16 == *(a1 + 12))
  {
    v17 = *v9 < 1;
    if (*v9 == 1)
    {
LABEL_19:
      *a1 |= 0x4000u;
      goto LABEL_51;
    }
  }

  else
  {
    if (v15 < 0 || v15 > v16 || v16 > a2[3])
    {
      v44 = 0;
      v45 = 0;
      qmemcpy(sub_1002A80E0(&v44, 83), "0 <= _colRange.start && _colRange.start <= _colRange.end && _colRange.end <= m.cols", 83);
      sub_1002A8980(-215, &v44, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 501);
    }

    v27 = v16 - v15;
    *(a1 + 12) = v27;
    v28 = *(a1 + 4);
    if (v28 < 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*(a1 + 72) + 8 * v28 - 8);
    }

    *(a1 + 16) += v29 * v15;
    if (v27 >= a2[3])
    {
      v30 = -32769;
    }

    else
    {
      v30 = -49153;
    }

    *a1 = v30 & *a1 | 0x8000;
    v17 = *v9 < 1;
    if (*v9 == 1)
    {
      goto LABEL_19;
    }
  }

  if (!v17)
  {
LABEL_51:
    if (*(a1 + 12) > 0)
    {
      return a1;
    }
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    if (atomic_fetch_add((v31 + 20), 0xFFFFFFFF) == 1)
    {
      v32 = *(a1 + 56);
      if (v32)
      {
        *(a1 + 56) = 0;
        v33 = *(v32 + 8);
        if (!v33)
        {
          v33 = *(a1 + 48);
          if (!v33)
          {
            v34 = v32;
            v33 = sub_100268CC8();
            v32 = v34;
          }
        }

        (*(*v33 + 48))(v33, v32, v12);
      }
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v35 = 0;
    v36 = *(a1 + 64);
    do
    {
      *(v36 + 4 * v35++) = 0;
    }

    while (v35 < *v8);
  }

  *v9 = 0;
  return a1;
}

void sub_10026A18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002A8124(va);
  __cxa_begin_catch(a1);
  sub_100269498(v20);
  __cxa_rethrow();
}

__n128 sub_10026A244(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 56);
    if (v3)
    {
      atomic_fetch_add((v3 + 20), 1u);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      if (atomic_fetch_add((v4 + 20), 0xFFFFFFFF) == 1)
      {
        v5 = *(a1 + 56);
        if (v5)
        {
          *(a1 + 56) = 0;
          v6 = *(v5 + 8);
          if (!v6)
          {
            v6 = *(a1 + 48);
            if (!v6)
            {
              v7 = a1;
              v8 = v5;
              v9 = sub_100268CC8();
              v5 = v8;
              v6 = v9;
              a1 = v7;
            }
          }

          v10 = a1;
          (*(*v6 + 48))(v6, v5);
          a1 = v10;
        }
      }
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) <= 0)
    {
      *a1 = *a2;
    }

    else
    {
      v11 = 0;
      v12 = *(a1 + 64);
      do
      {
        *(v12 + 4 * v11++) = 0;
        v13 = *(a1 + 4);
      }

      while (v11 < v13);
      *a1 = *a2;
      if (v13 >= 3)
      {
        v14 = *(a2 + 4);
        goto LABEL_19;
      }
    }

    v14 = *(a2 + 4);
    if (v14 <= 2)
    {
      *(a1 + 4) = v14;
      *(a1 + 8) = *(a2 + 8);
      v15 = *(a2 + 72);
      v16 = *(a1 + 72);
      *v16 = *v15;
      v16[1] = v15[1];
LABEL_22:
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      result = *(a2 + 48);
      *(a1 + 48) = result;
      return result;
    }

LABEL_19:
    v17 = a1;
    sub_100269568(a1, v14, 0, 0, 0);
    a1 = v17;
    if (*(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = *(a2 + 64);
      v20 = *(a2 + 72);
      v21 = *(v17 + 64);
      v22 = *(v17 + 72);
      do
      {
        *(v21 + 4 * v18) = *(v19 + 4 * v18);
        *(v22 + 8 * v18) = *(v20 + 8 * v18);
        ++v18;
      }

      while (v18 < *(v17 + 4));
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10026A400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1124007936;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  v5 = *(a2 + 4);
  if (!a3)
  {
    v26 = 0;
    v27 = 0;
    v6 = sub_1002A80E0(&v26, 6);
    *v6 = 1735287154;
    *(v6 + 4) = 29541;
    sub_1002A8980(-215, &v26, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 582);
  }

  if (v5 <= 0)
  {
    sub_10026A244(a1, a2);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = *(a3 + 8 * i);
      v9 = v8 == 0x80000000 && HIDWORD(v8) == 0x7FFFFFFF;
      if (!v9 && ((v8 & 0x80000000) != 0 || v8 >= SHIDWORD(v8) || *(*(a2 + 64) + 4 * i) < SHIDWORD(v8)))
      {
        v26 = 0;
        v27 = 0;
        qmemcpy(sub_1002A80E0(&v26, 76), "r == Range::all() || (0 <= r.start && r.start < r.end && r.end <= m.size[i])", 76);
        sub_1002A8980(-215, &v26, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 586);
      }
    }

    sub_10026A244(a1, a2);
    for (j = 0; j != v5; ++j)
    {
      v11 = *(a3 + 8 * j);
      if (v11 != 0x80000000 || HIDWORD(v11) != 0x7FFFFFFF)
      {
        v13 = *(a1 + 64);
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v13 + 4 * j) == HIDWORD(v11);
        }

        if (!v14)
        {
          *(v13 + 4 * j) = HIDWORD(v11) - v11;
          *(a1 + 16) += *(*(a1 + 72) + 8 * j) * v11;
          *a1 |= 0x8000u;
        }
      }
    }
  }

  v15 = *(a1 + 4);
  v16 = v15;
  v17 = *(a1 + 64);
  if (v15 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    while (*(v17 + 4 * v18) <= 1)
    {
      if (v15 == ++v18)
      {
        LODWORD(v18) = *(a1 + 4);
        break;
      }
    }

    v19 = v18;
  }

  v20 = (*(a1 + 72) + 8 * v16 - 8);
  v21 = v16 - 1;
  while (v21 > v19)
  {
    v22 = *v20 * *(v17 + 4 * v21);
    v23 = *--v20;
    --v21;
    if (v22 < v23)
    {
      v24 = 0;
      goto LABEL_38;
    }
  }

  v24 = 0x4000;
LABEL_38:
  *a1 = *a1 & 0xFFFFBFFF | v24;
  return a1;
}

void sub_10026A6E4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 4);
  if (v6 >= 3)
  {
    v25[0] = 0;
    v25[1] = 0;
    v7 = sub_1002A80E0(v25, 9);
    *(v7 + 8) = 50;
    *v7 = *"dims <= 2";
    sub_1002A8980(-215, v25, "diag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 750);
  }

  *a3 = *a1;
  *(a3 + 4) = v6;
  *(a3 + 8) = *(a1 + 8);
  v8 = *(a1 + 32);
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 32) = v8;
  v9 = *(a1 + 56);
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 56) = v9;
  *(a3 + 80) = 0;
  *(a3 + 64) = a3 + 8;
  *(a3 + 72) = a3 + 80;
  *(a3 + 88) = 0;
  if (v9)
  {
    atomic_fetch_add((v9 + 20), 1u);
    v6 = *(a1 + 4);
  }

  if (v6 > 2)
  {
    *(a3 + 4) = 0;
    sub_100269568(a3, v6, 0, 0, 0);
    if (*(a3 + 4) >= 1)
    {
      v12 = 0;
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v15 = *(a3 + 64);
      v16 = *(a3 + 72);
      do
      {
        *(v15 + 4 * v12) = *(v13 + 4 * v12);
        *(v16 + 8 * v12) = *(v14 + 8 * v12);
        ++v12;
      }

      while (v12 < *(a3 + 4));
    }
  }

  else
  {
    v10 = *(a1 + 72);
    v11 = *(a3 + 72);
    *v11 = *v10;
    v11[1] = v10[1];
  }

  v17 = *(a1 + 4);
  if (v17 < 1)
  {
    v18 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(*(a1 + 72) + 8 * v17 - 8);
    if ((a2 & 0x80000000) == 0)
    {
LABEL_12:
      v19 = *(a1 + 12) - a2;
      if (*(a1 + 8) < v19)
      {
        v19 = *(a1 + 8);
      }

      v20 = *(a3 + 16) + v18 * a2;
      goto LABEL_19;
    }
  }

  v19 = *(a1 + 8) + a2;
  if (*(a1 + 12) < v19)
  {
    v19 = *(a1 + 12);
  }

  v20 = *(a3 + 16) - **(a1 + 72) * a2;
LABEL_19:
  *(a3 + 8) = v19;
  v21 = *(a3 + 64);
  v22 = *(a3 + 72);
  *v21 = v19;
  *(a3 + 12) = 1;
  v21[1] = 1;
  *(a3 + 16) = v20;
  if (v19 <= 1)
  {
    v18 = 0;
  }

  *v22 += v18;
  v23 = *a3 & 0xFFFFBFFF | ((*(a3 + 8) < 2) << 14);
  *a3 = v23;
  v24 = *(a1 + 64);
  if (v24[1] != 1 || *v24 != 1)
  {
    *a3 = v23 | 0x8000;
  }
}

void sub_10026A93C(int *a1, unint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    *v39 = 0uLL;
    *sub_1002A80E0(v39, 16) = *"(int)nelems >= 0";
    sub_1002A8980(-215, v39, "reserve", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 821);
  }

  if ((*(a1 + 1) & 0x80) != 0 || *(a1 + 2) + **(a1 + 9) * a2 > *(a1 + 5))
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    if (*v4 < a2)
    {
      if (a2 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = a2;
      }

      *v4 = v6;
      v7 = a1[1];
      if (v7 >= 3)
      {
        v9 = v4 + 1;
        v10 = 1;
        v11 = v7 & 0x7FFFFFFE;
        v12 = 1;
        do
        {
          v10 *= *(v9 - 1);
          v12 *= *v9;
          v9 += 2;
          v11 -= 2;
        }

        while (v11);
        v8 = v12 * v10;
        v13 = v7 - (v7 & 0x7FFFFFFE);
        if (v13)
        {
          v14 = &v4[(v7 >> 1) & 0x3FFFFFFF];
          do
          {
            v15 = *v14;
            v14 = (v14 + 4);
            v8 *= v15;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        v8 = a1[3] * a1[2];
      }

      if (v7 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(*(a1 + 9) + 8 * v7 - 8) * v8;
        if (v16 > 0x3F)
        {
LABEL_19:
          v17 = *a1;
          *v39 = 1124007936;
          memset(&v39[4], 0, 60);
          v40 = &v39[8];
          v41 = v42;
          v42[0] = 0;
          v42[1] = 0;
          sub_100268ED0(v39, v7, v4, v17 & 0xFFF);
          **(a1 + 8) = v5;
          if (v5 >= 1)
          {
            v27[0] = 0;
            v27[1] = v5;
            v43 = 0x7FFFFFFF80000000;
            sub_100269C44(v30, v39, v27, &v43);
            v27[0] = 33619968;
            v28 = v30;
            v29 = 0;
            sub_10022B754(a1, v27);
            if (v35)
            {
              if (atomic_fetch_add((v35 + 20), 0xFFFFFFFF) == 1)
              {
                v18 = v35;
                if (v35)
                {
                  v35 = 0;
                  v19 = *(v18 + 8);
                  if (!v19)
                  {
                    v19 = v34;
                    if (!v34)
                    {
                      v19 = sub_100268CC8();
                    }
                  }

                  (*(*v19 + 48))(v19, v18);
                }
              }
            }

            v35 = 0;
            v32 = 0u;
            v33 = 0u;
            if (v31 >= 1)
            {
              v20 = 0;
              v21 = v36;
              do
              {
                *(v21 + 4 * v20++) = 0;
              }

              while (v20 < v31);
            }

            if (v37 != &v38)
            {
              j__free(v37);
            }
          }

          v22 = sub_10026A244(a1, v39);
          **(a1 + 8) = v5;
          *(a1 + 4) = *(a1 + 2) + **(a1 + 9) * v5;
          if (*&v39[56])
          {
            if (atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
            {
              v23 = *&v39[56];
              if (*&v39[56])
              {
                *&v39[56] = 0;
                v24 = *(v23 + 8);
                if (!v24)
                {
                  v24 = *&v39[48];
                  if (!*&v39[48])
                  {
                    v24 = sub_100268CC8();
                  }
                }

                (*(*v24 + 48))(v24, v23, v22);
              }
            }
          }

          *&v39[56] = 0;
          memset(&v39[16], 0, 32);
          if (*&v39[4] >= 1)
          {
            v25 = 0;
            v26 = v40;
            do
            {
              *&v26[4 * v25++] = 0;
            }

            while (v25 < *&v39[4]);
          }

          if (v41 != v42)
          {
            j__free(v41);
          }

          return;
        }
      }

      *v4 = (v16 + 63) * a2 / v16;
      v7 = a1[1];
      goto LABEL_19;
    }
  }
}

void sub_10026ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_10026AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_1002A8124(va);
  JUMPOUT(0x10026AD00);
}

void sub_10026AD20(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X4>, __int128 *a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_48;
  }

  v8 = *a1;
  v9 = *a1 & 0xFFFF0000;
  if (v9 != 1111687168)
  {
    if (v9 == 1111621632)
    {
      v10 = *(a1 + 36);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = *(a1 + 32);
        if ((v11 & 0x80000000) == 0)
        {
          *a5 = 1124007936;
          *(a5 + 4) = 0u;
          *(a5 + 20) = 0u;
          *(a5 + 36) = 0u;
          a5[3] = 0u;
          *(a5 + 10) = 0;
          *(a5 + 8) = a5 + 8;
          *(a5 + 9) = a5 + 5;
          *(a5 + 11) = 0;
          if (a2)
          {
            *(a5 + 2) = 0;
            *(a5 + 3) = 0;
            *(a5 + 4) = 0;
            sub_10000A690(&__src, v11, v10, v8, *(a1 + 24), *(a1 + 4));
            LODWORD(v128) = 33619968;
            v129 = a5;
            v130 = 0;
            sub_10022B754(&__src, &v128);
            if (v124)
            {
              if (atomic_fetch_add((v124 + 20), 0xFFFFFFFF) == 1)
              {
                v12 = v124;
                if (v124)
                {
                  v124 = 0;
                  v13 = *(v12 + 8);
                  if (!v13)
                  {
                    v13 = v123;
                    if (!v123)
                    {
                      v13 = sub_100268CC8();
                    }
                  }

                  (*(*v13 + 48))(v13, v12);
                }
              }
            }

            v124 = 0;
            v121 = 0u;
            v122 = 0u;
            if (SHIDWORD(__src) >= 1)
            {
              v14 = 0;
              v15 = v125;
              do
              {
                *(v15 + v14++) = 0;
              }

              while (v14 < SHIDWORD(__src));
            }

            if (v126 != v127)
            {
              j__free(v126);
            }
          }

          else
          {
            *a5 = v8 & 0x4FFF | 0x42FF0000;
            *(a5 + 1) = 2;
            *(a5 + 2) = v11;
            *(a5 + 3) = v10;
            v35 = *(a1 + 24);
            *(a5 + 2) = v35;
            *(a5 + 3) = v35;
            v36 = (((v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3);
            v37 = v10 * v36;
            if (*(a1 + 4))
            {
              v37 = *(a1 + 4);
            }

            v38 = v35 + v37 * v11;
            *(a5 + 4) = v38 - v37 + v10 * v36;
            *(a5 + 5) = v38;
            *(a5 + 10) = v37;
            *(a5 + 11) = v36;
          }

          return;
        }
      }

LABEL_47:
      __src = 0;
      v120 = 0;
      v34 = sub_1002A80E0(&__src, 18);
      *(v34 + 16) = 25968;
      *v34 = *"Unknown array type";
      sub_1002A8980(-5, &__src, "cvarrToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 985);
    }

    if (v8 == 144)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_47;
      }

      if (!a3)
      {
        v64 = *(a1 + 48);
        if (v64)
        {
          if (*v64 >= 1)
          {
            sub_1001FA81C(&__src, "COI is not supported by the function");
            sub_1002A8980(-24, &__src, "cvarrToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 961);
          }
        }
      }

      *a5 = 0x242FF0000;
      *(a5 + 24) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 8) = 0u;
      *(a5 + 7) = 0;
      *(a5 + 8) = a5 + 8;
      v20 = *(a1 + 96);
      *(a5 + 10) = v20;
      v21 = (a5 + 5);
      *(a5 + 9) = a5 + 5;
      *(a5 + 11) = 0;
      v22 = (0x43160520u >> (((*(a1 + 16) >> 2) & 0x3C) + ((*(a1 + 16) >> 31) & 0x14))) & 7;
      v23 = *(a1 + 48);
      v24 = *(a1 + 28);
      if (!v23)
      {
        if (v24)
        {
          __src = 0;
          v120 = 0;
          v65 = sub_1002A80E0(&__src, 19);
          *(v65 + 15) = 807419197;
          *v65 = *"img->dataOrder == 0";
          sub_1002A8980(-215, &__src, "iplImageToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 706);
        }

        v66 = 8 * *(a1 + 8) - 8;
        v59 = (v66 | v22) + 1124007936;
        v61 = *(a1 + 40);
        v60 = *(a1 + 44);
        *(a5 + 2) = v60;
        *(a5 + 3) = v61;
        v67 = *(a1 + 88);
        *(a5 + 2) = v67;
        *(a5 + 3) = v67;
        v62 = (((v66 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * v22)) & 3);
        goto LABEL_99;
      }

      if (v24)
      {
        v25 = *v23;
        if (!*v23)
        {
          __src = 0;
          v120 = 0;
          qmemcpy(sub_1002A80E0(&__src, 41), "img->dataOrder == 0 || img->roi->coi != 0", 41);
          sub_1002A8980(-215, &__src, "iplImageToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 715);
        }
      }

      else
      {
        v25 = *v23;
        if (!*v23)
        {
          goto LABEL_62;
        }

        v24 = *(a1 + 28);
      }

      if (v24 == 1)
      {
        v26 = 0;
        v27 = 1;
LABEL_63:
        v58 = v26 + v22;
        v59 = v26 + v22 + 1124007936;
        v60 = v23[4];
        *(a5 + 2) = v60;
        v61 = v23[3];
        *(a5 + 3) = v61;
        v62 = (((v58 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v58 & 7))) & 3);
        if (v27)
        {
          v63 = *v21 * (v25 - 1) * *(a1 + 44);
        }

        else
        {
          v63 = 0;
        }

        v82 = *(a1 + 88) + v63;
        v21 = *(a5 + 9);
        v20 = *v21;
        v67 = v82 + *v21 * v23[2] + v23[1] * v62;
        *(a5 + 2) = v67;
        *(a5 + 3) = v67;
LABEL_99:
        v83 = v67 + v20 * v60;
        v84 = v67 + v20 * (v60 - 1) + v62 * v61;
        *(a5 + 4) = v84;
        *(a5 + 5) = v83;
        if (v60 == 1 || v62 * v61 == v20)
        {
          v86 = 0x4000;
        }

        else
        {
          v86 = 0;
        }

        v87 = v86 | v59;
        *a5 = v87;
        v21[1] = v62;
        if (a2)
        {
          v88 = *(a5 + 1);
          __src = __PAIR64__(v88, v87);
          v120 = __PAIR64__(v61, v60);
          *&v121 = v67;
          *(&v121 + 1) = v67;
          *&v122 = v84;
          *(&v122 + 1) = v83;
          v89 = *(a5 + 7);
          v123 = *(a5 + 6);
          v124 = v89;
          v125 = &v120;
          v126 = v127;
          v127[0] = 0;
          v127[1] = 0;
          if (v89)
          {
            atomic_fetch_add((v89 + 20), 1u);
            v88 = *(a5 + 1);
          }

          if (v88 > 2)
          {
            HIDWORD(__src) = 0;
            sub_100269568(&__src, v88, 0, 0, 0);
            if (SHIDWORD(__src) >= 1)
            {
              v92 = 0;
              v93 = *(a5 + 8);
              v94 = *(a5 + 9);
              v95 = v125;
              v96 = v126;
              do
              {
                *(v95 + v92) = *(v93 + 4 * v92);
                v96[v92] = *(v94 + 8 * v92);
                ++v92;
              }

              while (v92 < SHIDWORD(__src));
            }
          }

          else
          {
            v90 = *(a5 + 9);
            v91 = v126;
            *v126 = *v90;
            v91[1] = v90[1];
          }

          v97 = *(a5 + 7);
          if (v97)
          {
            if (atomic_fetch_add((v97 + 20), 0xFFFFFFFF) == 1)
            {
              v98 = *(a5 + 7);
              if (v98)
              {
                *(a5 + 7) = 0;
                v99 = *(v98 + 8);
                if (!v99)
                {
                  v99 = *(a5 + 6);
                  if (!v99)
                  {
                    v99 = sub_100268CC8();
                  }
                }

                (*(*v99 + 48))(v99, v98);
              }
            }
          }

          *(a5 + 7) = 0;
          a5[1] = 0u;
          a5[2] = 0u;
          if (*(a5 + 1) >= 1)
          {
            v100 = 0;
            v101 = *(a5 + 8);
            do
            {
              *(v101 + 4 * v100++) = 0;
            }

            while (v100 < *(a5 + 1));
          }

          v102 = *(a1 + 48);
          if (v102 && (v103 = *v102) != 0 && *(a1 + 28) != 1)
          {
            *&v111 = (v103 - 1);
            v128 = v120;
            sub_100268ED0(a5, 2, &v128, __src & 0xFFF);
            sub_1002001E0(&__src, 1uLL, a5, 1uLL, &v111, 1uLL);
          }

          else
          {
            LODWORD(v128) = 33619968;
            v129 = a5;
            v130 = 0;
            sub_10022B754(&__src, &v128);
          }

          if (v124)
          {
            if (atomic_fetch_add((v124 + 20), 0xFFFFFFFF) == 1)
            {
              v104 = v124;
              if (v124)
              {
                v124 = 0;
                v105 = *(v104 + 8);
                if (!v105)
                {
                  v105 = v123;
                  if (!v123)
                  {
                    v105 = sub_100268CC8();
                  }
                }

                (*(*v105 + 48))(v105, v104);
              }
            }
          }

          v124 = 0;
          v121 = 0u;
          v122 = 0u;
          if (SHIDWORD(__src) >= 1)
          {
            v106 = 0;
            v107 = v125;
            do
            {
              *(v107 + v106++) = 0;
            }

            while (v106 < SHIDWORD(__src));
          }

          if (v126 != v127)
          {
            j__free(v126);
          }
        }

        return;
      }

LABEL_62:
      v27 = 0;
      v26 = 8 * *(a1 + 8) - 8;
      goto LABEL_63;
    }

    if (v9 != 1117323264)
    {
      goto LABEL_47;
    }

    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = *(a1 + 44);
      if (v28 < 1 || (((v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3) != v29)
      {
        __src = 0;
        v120 = 0;
        qmemcpy(sub_1002A80E0(&__src, 152), "total > 0 && (((((seq->flags) & ((512 - 1) << 3)) >> 3) + 1) << ((((sizeof(size_t)/4+1)*16384|0x3a50) >> ((seq->flags) & ((1 << 3) - 1))*2) & 3)) == esz", 152);
        sub_1002A8980(-215, &__src, "cvarrToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 970);
      }

      if ((a2 & 1) == 0 && (v30 = *(a1 + 88), *(v30 + 8) == v30))
      {
        sub_10000A690(a5, *(a1 + 40), 1, *a1 & 0xFFF, *(v30 + 24), 0);
      }

      else if (a4)
      {
        v31 = v29 * v28 + 7;
        v32 = v31 >> 3;
        if (*(a4 + 8) >= v31 >> 3)
        {
          *(a4 + 8) = v32;
          v33 = *a4;
        }

        else
        {
          v33 = (a4 + 16);
          if (*a4 == a4 + 16)
          {
            v33 = *a4;
          }

          else
          {
            if (*a4)
            {
              operator delete[]();
            }

            *a4 = v33;
          }

          *(a4 + 8) = v32;
          if (v31 >= 0x448)
          {
            operator new[]();
          }
        }

        sub_1002323E4(a1, v33, 0x3FFFFFFF00000000);
        sub_10000A690(a5, v28, 1, v8 & 0xFFF, v33, 0);
      }

      else
      {
        *a5 = 1124007936;
        *(a5 + 4) = 0u;
        *(a5 + 20) = 0u;
        *(a5 + 36) = 0u;
        a5[3] = 0u;
        *(a5 + 10) = 0;
        *(a5 + 8) = a5 + 8;
        *(a5 + 9) = a5 + 5;
        *(a5 + 11) = 0;
        __src = v28 | 0x100000000;
        sub_100268ED0(a5, 2, &__src, v8 & 0xFFF);
        sub_1002323E4(a1, *(a5 + 2), 0x3FFFFFFF00000000);
      }

      return;
    }

LABEL_48:
    *a5 = 1124007936;
    *(a5 + 4) = 0u;
    *(a5 + 20) = 0u;
    *(a5 + 36) = 0u;
    a5[3] = 0u;
    *(a5 + 10) = 0;
    *(a5 + 8) = a5 + 8;
    *(a5 + 9) = a5 + 5;
    *(a5 + 11) = 0;
    return;
  }

  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_47;
  }

  *(a5 + 4) = 0u;
  v17 = a5 + 1;
  *(a5 + 20) = 0u;
  a5[3] = 0u;
  *(a5 + 36) = 0u;
  *(a5 + 10) = 0;
  *(a5 + 8) = a5 + 8;
  *(a5 + 9) = a5 + 5;
  *(a5 + 11) = 0;
  *(a5 + 2) = v16;
  *(a5 + 3) = v16;
  *a5 = v8 & 0xFFF | 0x42FF0000;
  v18 = *(a1 + 4);
  if (v18 >= 1)
  {
    if (v18 <= 7)
    {
      v19 = 0;
LABEL_56:
      v46 = v18 - v19;
      v47 = 8 * v19;
      v48 = &__src + v19;
      v49 = &v128 + v19;
      v50 = (v47 + a1 + 36);
      do
      {
        v51 = *v50;
        *v49++ = *(v50 - 1);
        *v48++ = v51;
        v50 += 2;
        --v46;
      }

      while (v46);
      goto LABEL_58;
    }

    v19 = v18 & 0x7FFFFFF8;
    v39 = (a1 + 64);
    v40 = &v130;
    v41 = &v122;
    v42 = v19;
    do
    {
      v43 = v39 - 8;
      v131 = vld2q_f32(v43);
      v132 = vld2q_f32(v39);
      v40[-1] = v131.val[0];
      *v40 = v132.val[0];
      v44.i64[0] = v131.val[1].i32[0];
      v44.i64[1] = v131.val[1].i32[1];
      v45 = v44;
      v44.i64[0] = v131.val[1].i32[2];
      v44.i64[1] = v131.val[1].i32[3];
      v131.val[0] = v44;
      v44.i64[0] = v132.val[1].i32[0];
      v44.i64[1] = v132.val[1].i32[1];
      v131.val[1] = v44;
      v44.i64[0] = v132.val[1].i32[2];
      v44.i64[1] = v132.val[1].i32[3];
      *(v41 - 2) = v45;
      *(v41 - 1) = v131;
      v41[1] = v44;
      v41 += 4;
      v39 += 16;
      v40 += 2;
      v42 -= 8;
    }

    while (v42);
    if (v19 != v18)
    {
      goto LABEL_56;
    }
  }

LABEL_58:
  sub_100269568(a5, v18, &v128, &__src, 0);
  sub_100269A18(a5);
  if (!a2)
  {
    return;
  }

  v52 = *a5;
  v53 = a5[1];
  v111 = *a5;
  v112 = v53;
  v113 = a5[2];
  v54 = *(a5 + 7);
  v114 = *(a5 + 6);
  v115 = v54;
  v116 = &v111 + 8;
  v117 = v118;
  v118[0] = 0;
  v118[1] = 0;
  if (!v54)
  {
    v55 = DWORD1(v52);
    if (SDWORD1(v52) <= 2)
    {
      goto LABEL_61;
    }

LABEL_72:
    DWORD1(v111) = 0;
    sub_100269568(&v111, v55, 0, 0, 0);
    if (SDWORD1(v111) >= 1)
    {
      v68 = 0;
      v69 = *(a5 + 8);
      v70 = *(a5 + 9);
      v71 = v116;
      v72 = v117;
      do
      {
        *&v71[4 * v68] = *(v69 + 4 * v68);
        v72[v68] = *(v70 + 8 * v68);
        ++v68;
      }

      while (v68 < SDWORD1(v111));
    }

    goto LABEL_75;
  }

  atomic_fetch_add((v54 + 20), 1u);
  v55 = *v17;
  if (*v17 > 2)
  {
    goto LABEL_72;
  }

LABEL_61:
  v56 = *(a5 + 9);
  v57 = v117;
  *v117 = *v56;
  v57[1] = v56[1];
LABEL_75:
  v73 = *(a5 + 7);
  if (v73)
  {
    if (atomic_fetch_add((v73 + 20), 0xFFFFFFFF) == 1)
    {
      v74 = *(a5 + 7);
      if (v74)
      {
        *(a5 + 7) = 0;
        v75 = *(v74 + 8);
        if (!v75)
        {
          v75 = *(a5 + 6);
          if (!v75)
          {
            v75 = sub_100268CC8();
          }
        }

        (*(*v75 + 48))(v75, v74);
      }
    }
  }

  *(a5 + 7) = 0;
  a5[1] = 0u;
  a5[2] = 0u;
  if (*(a5 + 1) >= 1)
  {
    v76 = 0;
    v77 = *(a5 + 8);
    do
    {
      *(v77 + 4 * v76++) = 0;
    }

    while (v76 < *v17);
  }

  v108 = 33619968;
  v109 = a5;
  v110 = 0;
  sub_10022B754(&v111, &v108);
  if (v115)
  {
    if (atomic_fetch_add((v115 + 20), 0xFFFFFFFF) == 1)
    {
      v78 = v115;
      if (v115)
      {
        v115 = 0;
        v79 = *(v78 + 8);
        if (!v79)
        {
          v79 = v114;
          if (!v114)
          {
            v79 = sub_100268CC8();
          }
        }

        (*(*v79 + 48))(v79, v78);
      }
    }
  }

  v115 = 0;
  v112 = 0u;
  v113 = 0u;
  if (SDWORD1(v111) >= 1)
  {
    v80 = 0;
    v81 = v116;
    do
    {
      *&v81[4 * v80++] = 0;
    }

    while (v80 < SDWORD1(v111));
  }

  if (v117 != v118)
  {
    j__free(v117);
  }
}

void sub_10026BA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_100006D14(va);
  sub_100006D14(v25);
  _Unwind_Resume(a1);
}

void sub_10026BB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10026BB90(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026BBAC(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 4);
  if (v3 > 2 || !**(result + 72))
  {
    v17[0] = 0;
    v17[1] = 0;
    qmemcpy(sub_1002A80E0(v17, 24), "dims <= 2 && step[0] > 0", 24);
    sub_1002A8980(-215, v17, "locateROI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 991);
  }

  if (v3 < 1)
  {
    v4 = 0;
    v11 = *(result + 16);
    v6 = *(result + 24);
    v7 = *(result + 32);
    v8 = v11 - v6;
    if (v11 != v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *(*(result + 72) + 8 * v3 - 8);
    v5 = *(result + 16);
    v6 = *(result + 24);
    v7 = *(result + 32);
    v8 = v5 - v6;
    if (v5 != v6)
    {
LABEL_5:
      v9 = **(result + 72);
      v10 = v8 / v9;
      v8 = (v8 - (v8 / v9) * v9) / v4;
      goto LABEL_9;
    }
  }

  LODWORD(v10) = 0;
  v9 = **(result + 72);
LABEL_9:
  *a3 = v8;
  a3[1] = v10;
  v12 = v7 - v6;
  v13 = *(result + 12) + v8;
  v14 = (v12 - v4 * v13) / v9;
  v15 = *(result + 8) + v10;
  if (v14 + 1 > v15)
  {
    v15 = v14 + 1;
  }

  v16 = (v12 - *(result + 80) * (v15 - 1)) / v4;
  if (v13 > v16)
  {
    LODWORD(v16) = *(result + 12) + v8;
  }

  *a2 = v16;
  a2[1] = v15;
  return result;
}

uint64_t sub_10026BD20(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = *(a1 + 4);
  if (v10 > 2 || !**(a1 + 72))
  {
    v23[0] = 0;
    v23[1] = 0;
    qmemcpy(sub_1002A80E0(v23, 24), "dims <= 2 && step[0] > 0", 24);
    sub_1002A8980(-215, v23, "adjustROI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1012);
  }

  v22 = 0;
  v23[0] = 0;
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(*(a1 + 72) + 8 * v10 - 8);
  }

  sub_10026BBAC(a1, v23, &v22);
  v12 = vrev64_s32(v22);
  v13 = vrev64_s32(v23[0]);
  v14 = vmin_s32(v13, vmax_s32(vsub_s32(v12, __PAIR64__(a4, a2)), 0));
  v15 = vmax_s32(vmin_s32(v13, vadd_s32(vadd_s32(v12, *(a1 + 8)), __PAIR64__(a5, a3))), 0);
  v16 = vsub_s32(vmin_s32(v14, v15), v12);
  *(a1 + 16) += *(a1 + 80) * v16.i32[0] + v11 * v16.i32[1];
  v17 = vabd_s32(v14, v15);
  *(a1 + 8) = v17;
  v18 = *(a1 + 64);
  *v18 = v17.i32[0];
  v19 = *(a1 + 12);
  v18[1] = v19;
  if (v11 * v19 == **(a1 + 72) || *(a1 + 8) == 1)
  {
    v20 = *a1 | 0x4000;
  }

  else
  {
    v20 = *a1 & 0xFFFFBFFF;
  }

  *a1 = v20;
  return a1;
}

void sub_10026BED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10026BEEC(char *result, uint64_t a2, int *__src, unsigned __int16 a4, signed int a5, int a6, unsigned int a7)
{
  v12 = *result;
  v13 = *result & 0x1F0000;
  v14 = a4 & 0xFFF;
  if (v13 >= 0xA0000)
  {
    if (v13 == 655360)
    {
      if ((a5 & 0x80000000) == 0)
      {
        v120 = 0;
        v121 = 0;
        v34 = sub_1002A80E0(&v120, 5);
        *v34 = 540811369;
        *(v34 + 4) = 48;
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2506);
      }

      v35 = *(result + 1);
      if (a6)
      {
        if ((*(v35 + 1) & 0x40) == 0)
        {
          if (*result >> 30)
          {
            v120 = 0;
            v121 = 0;
            qmemcpy(sub_1002A80E0(&v120, 28), "!fixedType() && !fixedSize()", 28);
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2512);
          }

          v36 = *(v35 + 32);
          if (v36 && atomic_fetch_add((v36 + 16), 0xFFFFFFFF) == 1)
          {
            sub_1002B086C(v35);
          }

          if (*(v35 + 4) >= 1)
          {
            v37 = 0;
            v38 = *(v35 + 48);
            do
            {
              *(v38 + 4 * v37++) = 0;
            }

            while (v37 < *(v35 + 4));
          }

          *(v35 + 32) = 0;
        }

        if (a2 == 2 && *(v35 + 4) == 2)
        {
          if (*(v35 + 32))
          {
            v40 = *(v35 + 8);
            v39 = *(v35 + 12);
            if (v39 * v40)
            {
              if ((*v35 & 0xFFF) == v14 && v40 == __src[1] && v39 == *__src)
              {
                return;
              }
            }
          }
        }
      }

      v41 = *result;
      if ((*result & 0x80000000) != 0)
      {
        if (((*v35 ^ a4) & 0xFF8) != 0 || ((a7 >> v41) & 1) == 0)
        {
          if (v14 != (*v35 & 0xFFF))
          {
            v120 = 0;
            v121 = 0;
            qmemcpy(sub_1002A80E0(&v120, 42), "((mtype) & ((1 << 3)*512 - 1)) == m.type()", 42);
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2526);
          }
        }

        else
        {
          LOWORD(v14) = *v35 & 0xFFF;
        }
      }

      if ((v41 & 0x40000000) != 0)
      {
        if (*(v35 + 4) != a2)
        {
          v120 = 0;
          v121 = 0;
          v42 = sub_1002A80E0(&v120, 11);
          *(v42 + 7) = 1679834429;
          *v42 = *"m.dims == d";
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2530);
        }

        if (a2 >= 1)
        {
          v43 = 0;
          do
          {
            if (*(*(v35 + 48) + v43 * 4) != __src[v43])
            {
              v120 = 0;
              v121 = 0;
              qmemcpy(sub_1002A80E0(&v120, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2532);
            }

            ++v43;
          }

          while (a2 != v43);
        }
      }

      goto LABEL_186;
    }

    if (v13 == 917504)
    {
      if (v14 != (*result & 0xFFF) && ((a4 & 0xFF8) != 0 || ((a7 >> *result) & 1) == 0))
      {
        v120 = 0;
        v121 = 0;
        qmemcpy(sub_1002A80E0(&v120, 106), "mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == 1 && ((1 << type0) & fixedDepthMask) != 0)", 106);
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2551);
      }

      if (a2 != 2 || *(result + 5) * *(result + 4) != __src[1] * *__src)
      {
        v120 = 0;
        v121 = 0;
        qmemcpy(sub_1002A80E0(&v120, 40), "d == 2 && sz.area() == sizes[0]*sizes[1]", 40);
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2552);
      }

      return;
    }
  }

  else
  {
    if (v13 == 0x10000)
    {
      if ((a5 & 0x80000000) == 0)
      {
        v120 = 0;
        v121 = 0;
        v23 = sub_1002A80E0(&v120, 5);
        *v23 = 540811369;
        *(v23 + 4) = 48;
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2472);
      }

      v24 = *(result + 1);
      if (a6)
      {
        if ((*(v24 + 1) & 0x40) == 0)
        {
          if (*result >> 30)
          {
            v120 = 0;
            v121 = 0;
            qmemcpy(sub_1002A80E0(&v120, 28), "!fixedType() && !fixedSize()", 28);
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2478);
          }

          v25 = *(v24 + 56);
          if (v25)
          {
            if (atomic_fetch_add((v25 + 20), 0xFFFFFFFF) == 1)
            {
              v26 = *(v24 + 56);
              if (v26)
              {
                *(v24 + 56) = 0;
                v27 = *(v26 + 8);
                if (!v27)
                {
                  v27 = *(v24 + 48);
                  if (!v27)
                  {
                    v28 = v26;
                    v27 = sub_100268CC8();
                    v26 = v28;
                  }
                }

                (*(*v27 + 48))(v27, v26);
              }
            }
          }

          *(v24 + 56) = 0;
          *(v24 + 16) = 0u;
          *(v24 + 32) = 0u;
          if (*(v24 + 4) >= 1)
          {
            v29 = 0;
            v30 = *(v24 + 64);
            do
            {
              *(v30 + 4 * v29++) = 0;
            }

            while (v29 < *(v24 + 4));
          }
        }

        if (a2 == 2 && *(v24 + 4) == 2 && *(v24 + 16) && (*v24 & 0xFFF) == v14 && *(v24 + 8) == __src[1] && *(v24 + 12) == *__src)
        {
          return;
        }
      }

      v31 = *result;
      if ((*result & 0x80000000) != 0)
      {
        if (((*v24 ^ a4) & 0xFF8) != 0 || ((a7 >> v31) & 1) == 0)
        {
          if (v14 != (*v24 & 0xFFF))
          {
            v120 = 0;
            v121 = 0;
            qmemcpy(sub_1002A80E0(&v120, 42), "((mtype) & ((1 << 3)*512 - 1)) == m.type()", 42);
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2492);
          }
        }

        else
        {
          LOWORD(v14) = *v24 & 0xFFF;
        }
      }

      if ((v31 & 0x40000000) != 0)
      {
        if (*(v24 + 4) != a2)
        {
          v120 = 0;
          v121 = 0;
          v32 = sub_1002A80E0(&v120, 11);
          *(v32 + 7) = 1679834429;
          *v32 = *"m.dims == d";
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2496);
        }

        if (a2 >= 1)
        {
          v33 = 0;
          do
          {
            if (*(*(v24 + 64) + v33 * 4) != __src[v33])
            {
              v120 = 0;
              v121 = 0;
              qmemcpy(sub_1002A80E0(&v120, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2498);
            }

            ++v33;
          }

          while (a2 != v33);
        }
      }

      goto LABEL_159;
    }

    if (v13 == 0x20000)
    {
      if ((a5 & 0x80000000) == 0)
      {
        v120 = 0;
        v121 = 0;
        v15 = sub_1002A80E0(&v120, 5);
        *v15 = 540811369;
        *(v15 + 4) = 48;
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2540);
      }

      if (v14 != (*result & 0xFFF) && ((a4 & 0xFF8) != 0 || ((a7 >> *result) & 1) == 0))
      {
        v120 = 0;
        v121 = 0;
        qmemcpy(sub_1002A80E0(&v120, 106), "mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == 1 && ((1 << type0) & fixedDepthMask) != 0)", 106);
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2542);
      }

      if (a2 != 2 || __PAIR64__(*__src, __src[1]) != *(result + 2) && (!a6 || *__src != *(result + 4) || __src[1] != *(result + 5)))
      {
        v120 = 0;
        v121 = 0;
        qmemcpy(sub_1002A80E0(&v120, 129), "d == 2 && ((sizes[0] == sz.height && sizes[1] == sz.width) || (allowTransposed && sizes[0] == sz.width && sizes[1] == sz.height))", 129);
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2544);
      }

      return;
    }
  }

  if ((*result & 0x1F0000u) >= 0x50000)
  {
    if (v13 == 327680)
    {
      v47 = *(result + 1);
      if (a5 < 0)
      {
        if (a2 != 2 || (v57 = *__src, *__src != 1) && (v58 = __src[1], v58 != 1) && v58 * v57)
        {
          sub_1001FA81C(&v120, "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2650);
        }

        v59 = __src[1];
        v60 = v59 * v57;
        v61 = v57 + v59 - 1;
        if (v60 <= 0)
        {
          v61 = 0;
        }

        v62 = v61;
        v63 = 0xAAAAAAAAAAAAAAABLL * ((v47[1] - *v47) >> 5);
        if ((v12 & 0x40000000) != 0 && v63 != v61)
        {
          sub_1001FA81C(&v120, "!fixedSize() || len == len0");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2653);
        }

        sub_1002732E4(*(result + 1), v61);
        if ((*result & 0x80000000) != 0 && v63 < v62)
        {
          v64 = *result & 0xFFF;
          v65 = *v47;
          do
          {
            v66 = v65 + 96 * v63;
            if ((*v66 & 0xFFF) != v64)
            {
              if (*(v66 + 16))
              {
                v67 = *(v66 + 4);
                if (v67 >= 3)
                {
                  v69 = *(v66 + 64);
                  v70 = (v69 + 4);
                  v71 = v67 & 0x7FFFFFFE;
                  v72 = 1;
                  v73 = 1;
                  do
                  {
                    v72 *= *(v70 - 1);
                    v73 *= *v70;
                    v70 += 2;
                    v71 -= 2;
                  }

                  while (v71);
                  v68 = v73 * v72;
                  v74 = v67 - (v67 & 0x7FFFFFFE);
                  if (v74)
                  {
                    v75 = (v69 + 8 * ((v67 >> 1) & 0x3FFFFFFF));
                    do
                    {
                      v76 = *v75++;
                      v68 *= v76;
                      --v74;
                    }

                    while (v74);
                  }
                }

                else
                {
                  v68 = *(v66 + 12) * *(v66 + 8);
                }

                if (v67 && v68)
                {
                  v120 = 0;
                  v121 = 0;
                  v77 = sub_1002A80E0(&v120, 12);
                  *(v77 + 8) = 690518388;
                  *v77 = *"v[j].empty()";
                  sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2662);
                }
              }

              *(v65 + 96 * v63) = *(v65 + 96 * v63) & 0xFFFFF000 | v64;
            }

            ++v63;
          }

          while (v63 != v62);
        }

        return;
      }

      if ((-1431655765 * ((v47[1] - *v47) >> 5)) <= a5)
      {
        sub_1001FA81C(&v120, "i < (int)v.size()");
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2669);
      }

      v24 = *v47 + 96 * a5;
      if (a6)
      {
        if ((*(v24 + 1) & 0x40) == 0)
        {
          if (*result >> 30)
          {
            sub_1001FA81C(&v120, "!fixedType() && !fixedSize()");
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2676);
          }

          sub_100269498(v24);
        }

        if (a2 == 2)
        {
          v48 = *(v24 + 4) != 2 || *(v24 + 16) == 0;
          if (!v48 && (*v24 & 0xFFF) == v14 && *(v24 + 8) == __src[1] && *(v24 + 12) == *__src)
          {
            return;
          }
        }
      }

      v49 = *result;
      if ((*result & 0x80000000) != 0)
      {
        if (((*v24 ^ a4) & 0xFF8) != 0 || ((a7 >> v49) & 1) == 0)
        {
          if (v14 != (*v24 & 0xFFF))
          {
            sub_1001FA81C(&v120, "((mtype) & ((1 << 3)*512 - 1)) == m.type()");
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2690);
          }
        }

        else
        {
          LOWORD(v14) = *v24 & 0xFFF;
        }
      }

      if ((v49 & 0x40000000) != 0)
      {
        if (*(v24 + 4) != a2)
        {
          sub_1001FA81C(&v120, "m.dims == d");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2694);
        }

        if (a2 >= 1)
        {
          v50 = 0;
          do
          {
            if (*(*(v24 + 64) + v50 * 4) != __src[v50])
            {
              v120 = 0;
              v121 = 0;
              qmemcpy(sub_1002A80E0(&v120, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2696);
            }

            ++v50;
          }

          while (a2 != v50);
        }
      }

      goto LABEL_159;
    }

    if (v13 != 720896)
    {
      if (v13 != 983040)
      {
        goto LABEL_160;
      }

      v44 = *(result + 1);
      if (a5 < 0)
      {
        if (a2 != 2 || (v78 = *__src, *__src != 1) && (v79 = __src[1], v79 != 1) && v79 * v78)
        {
          sub_1001FA81C(&v120, "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2709);
        }

        v80 = __src[1];
        v81 = v80 * v78;
        v82 = v78 + v80 - 1;
        if (v81 <= 0)
        {
          v83 = 0;
        }

        else
        {
          v83 = v82;
        }

        v84 = *(result + 5);
        if (v83 != v84)
        {
          sub_1001FA81C(&v120, "len == len0");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2712);
        }

        if ((*result & 0x80000000) != 0 && v84 < v83)
        {
          v85 = *result & 0xFFF;
          do
          {
            v86 = v44 + 96 * v84;
            if ((*v86 & 0xFFF) != v85)
            {
              if (*(v86 + 16))
              {
                v87 = *(v86 + 4);
                if (v87 >= 3)
                {
                  v89 = *(v86 + 64);
                  v90 = (v89 + 4);
                  v91 = v87 & 0x7FFFFFFE;
                  v92 = 1;
                  v93 = 1;
                  do
                  {
                    v92 *= *(v90 - 1);
                    v93 *= *v90;
                    v90 += 2;
                    v91 -= 2;
                  }

                  while (v91);
                  v88 = v93 * v92;
                  v94 = v87 - (v87 & 0x7FFFFFFE);
                  if (v94)
                  {
                    v95 = (v89 + 8 * ((v87 >> 1) & 0x3FFFFFFF));
                    do
                    {
                      v96 = *v95++;
                      v88 *= v96;
                      --v94;
                    }

                    while (v94);
                  }
                }

                else
                {
                  v88 = *(v86 + 12) * *(v86 + 8);
                }

                if (v87 && v88)
                {
                  v120 = 0;
                  v121 = 0;
                  v97 = sub_1002A80E0(&v120, 12);
                  *(v97 + 8) = 690518388;
                  *v97 = *"v[j].empty()";
                  sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2720);
                }
              }

              *v86 = *v86 & 0xFFFFF000 | v85;
            }

            ++v84;
          }

          while (v84 < v83);
        }

        return;
      }

      if (*(result + 5) <= a5)
      {
        sub_1001FA81C(&v120, "i < sz.height");
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2727);
      }

      v24 = v44 + 96 * a5;
      if (a6)
      {
        if ((*(v24 + 1) & 0x40) == 0)
        {
          if (*result >> 30)
          {
            sub_1001FA81C(&v120, "!fixedType() && !fixedSize()");
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2734);
          }

          sub_100269498(v24);
        }

        if (a2 == 2 && *(v24 + 4) == 2 && *(v24 + 16) && (*v24 & 0xFFF) == v14 && *(v24 + 8) == __src[1] && *(v24 + 12) == *__src)
        {
          return;
        }
      }

      v45 = *result;
      if ((*result & 0x80000000) != 0)
      {
        if (((*v24 ^ a4) & 0xFF8) != 0 || ((a7 >> v45) & 1) == 0)
        {
          if (v14 != (*v24 & 0xFFF))
          {
            sub_1001FA81C(&v120, "((mtype) & ((1 << 3)*512 - 1)) == m.type()");
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2748);
          }
        }

        else
        {
          LOWORD(v14) = *v24 & 0xFFF;
        }
      }

      if ((v45 & 0x40000000) != 0)
      {
        if (*(v24 + 4) != a2)
        {
          sub_1001FA81C(&v120, "m.dims == d");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2753);
        }

        if (a2 >= 1)
        {
          v46 = 0;
          do
          {
            if (*(*(v24 + 64) + v46 * 4) != __src[v46])
            {
              v120 = 0;
              v121 = 0;
              qmemcpy(sub_1002A80E0(&v120, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2755);
            }

            ++v46;
          }

          while (a2 != v46);
        }
      }

LABEL_159:
      sub_100268ED0(v24, a2, __src, v14);
      return;
    }

    v51 = *(result + 1);
    if (a5 < 0)
    {
      if (a2 != 2 || (v98 = *__src, *__src != 1) && (v99 = __src[1], v99 != 1) && v99 * v98)
      {
        sub_1001FA81C(&v120, "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2768);
      }

      v100 = __src[1];
      v101 = v100 * v98;
      v102 = v98 + v100 - 1;
      if (v101 <= 0)
      {
        v102 = 0;
      }

      v103 = v102;
      v104 = 0xCCCCCCCCCCCCCCCDLL * ((v51[1] - *v51) >> 4);
      if ((v12 & 0x40000000) != 0 && v104 != v102)
      {
        sub_1001FA81C(&v120, "!fixedSize() || len == len0");
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2771);
      }

      sub_100273384(*(result + 1), v102);
      if ((*result & 0x80000000) != 0 && v104 < v103)
      {
        v105 = *result & 0xFFF;
        v106 = *v51;
        do
        {
          v107 = v106 + 80 * v104;
          if ((*v107 & 0xFFF) != v105)
          {
            if (*(v107 + 32))
            {
              v108 = *(v107 + 4);
              if (v108 >= 3)
              {
                v110 = *(v107 + 48);
                v111 = (v110 + 4);
                v112 = v108 & 0x7FFFFFFE;
                v113 = 1;
                v114 = 1;
                do
                {
                  v113 *= *(v111 - 1);
                  v114 *= *v111;
                  v111 += 2;
                  v112 -= 2;
                }

                while (v112);
                v109 = v114 * v113;
                v115 = v108 - (v108 & 0x7FFFFFFE);
                if (v115)
                {
                  v116 = (v110 + 8 * ((v108 >> 1) & 0x3FFFFFFF));
                  do
                  {
                    v117 = *v116++;
                    v109 *= v117;
                    --v115;
                  }

                  while (v115);
                }
              }

              else
              {
                v109 = *(v107 + 12) * *(v107 + 8);
              }

              if (v108 && v109)
              {
                v120 = 0;
                v121 = 0;
                v118 = sub_1002A80E0(&v120, 12);
                *(v118 + 8) = 690518388;
                *v118 = *"v[j].empty()";
                sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2780);
              }
            }

            *(v106 + 80 * v104) = *(v106 + 80 * v104) & 0xFFFFF000 | v105;
          }

          ++v104;
        }

        while (v104 != v103);
      }

      return;
    }

    if ((-858993459 * ((v51[1] - *v51) >> 4)) <= a5)
    {
      sub_1001FA81C(&v120, "i < (int)v.size()");
      sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2787);
    }

    v35 = *v51 + 80 * a5;
    if (a6)
    {
      if ((*(v35 + 1) & 0x40) == 0)
      {
        if (*result >> 30)
        {
          sub_1001FA81C(&v120, "!fixedType() && !fixedSize()");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2794);
        }

        sub_100276174(v35);
      }

      if (a2 == 2)
      {
        v52 = *(v35 + 4) != 2 || *(v35 + 32) == 0;
        if (!v52 && (*v35 & 0xFFF) == v14 && *(v35 + 8) == __src[1] && *(v35 + 12) == *__src)
        {
          return;
        }
      }
    }

    v53 = *result;
    if ((*result & 0x80000000) != 0)
    {
      if (((*v35 ^ a4) & 0xFF8) != 0 || ((a7 >> v53) & 1) == 0)
      {
        if (v14 != (*v35 & 0xFFF))
        {
          sub_1001FA81C(&v120, "((mtype) & ((1 << 3)*512 - 1)) == m.type()");
          sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2808);
        }
      }

      else
      {
        LOWORD(v14) = *v35 & 0xFFF;
      }
    }

    if ((v53 & 0x40000000) != 0)
    {
      if (*(v35 + 4) != a2)
      {
        sub_1001FA81C(&v120, "m.dims == d");
        sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2812);
      }

      if (a2 >= 1)
      {
        v54 = 0;
        do
        {
          if (*(*(v35 + 48) + v54 * 4) != __src[v54])
          {
            v120 = 0;
            v121 = 0;
            qmemcpy(sub_1002A80E0(&v120, 21), "m.size[j] == sizes[j]", 21);
            sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2814);
          }

          ++v54;
        }

        while (a2 != v54);
      }
    }

LABEL_186:
    sub_1002B018C(v35, a2, __src, v14, 0);
    return;
  }

  if (!v13)
  {
    v120 = 0;
    v121 = 0;
    qmemcpy(sub_1002A80E0(&v120, 44), "create() called for the missing output array", 44);
    sub_1002A8980(-27, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2640);
  }

  if (v13 != 196608 && v13 != 0x40000)
  {
LABEL_160:
    v120 = 0;
    v121 = 0;
    qmemcpy(sub_1002A80E0(&v120, 30), "Unknown/unsupported array type", 30);
    sub_1002A8980(-213, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2821);
  }

  if (a2 != 2 || (v16 = *__src, *__src != 1) && (v17 = __src[1], v17 != 1) && v17 * v16)
  {
    v120 = 0;
    v121 = 0;
    qmemcpy(sub_1002A80E0(&v120, 68), "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)", 68);
    sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2558);
  }

  v18 = __src[1];
  v19 = v18 * v16;
  v20 = v16 + v18 - 1;
  if (v19 <= 0)
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = *(result + 1);
  if (v13 != 0x40000)
  {
    if ((a5 & 0x80000000) == 0)
    {
      sub_1001FA81C(&v120, "i < 0");
      sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2575);
    }

    goto LABEL_190;
  }

  if ((a5 & 0x80000000) == 0)
  {
    if ((-1431655765 * ((v22[1] - *v22) >> 3)) <= a5)
    {
      sub_1001FA81C(&v120, "i < (int)vv.size()");
      sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2571);
    }

    v22 = (*v22 + 24 * a5);
LABEL_190:
    v55 = *result;
    if (v14 == (*result & 0xFFF))
    {
      v56 = *result;
    }

    else if (((v55 ^ a4) & 0xFF8) != 0 || (v56 = *result, ((a7 >> *result) & 1) == 0))
    {
      sub_1001FA81C(&v120, "mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == ((((type0) & ((512 - 1) << 3)) >> 3) + 1) && ((1 << type0) & fixedDepthMask) != 0)");
      sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2578);
    }

    v119 = (((v55 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v55 & 7))) & 3);
    if ((v56 & 0x40000000) != 0 && (v22[1] - *v22) / v119 != v21)
    {
      sub_1001FA81C(&v120, "!fixedSize() || len == ((std::vector<uchar>*)v)->size() / esz");
      sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2581);
    }

    switch(v119)
    {
      case 1:
        sub_100276294(v22, v21);
        return;
      case 2:
        sub_1002763DC(v22, v21);
        return;
      case 3:
        sub_100276408(v22, v21);
        return;
      case 4:
        sub_100276440(v22, v21);
        return;
      case 5:
      case 7:
      case 9:
      case 10:
      case 11:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 33:
      case 34:
      case 35:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
        goto LABEL_301;
      case 6:
        sub_10027646C(v22, v21);
        return;
      case 8:
        sub_1002764A8(v22, v21);
        return;
      case 12:
        sub_1002764D4(v22, v21);
        return;
      case 16:
        sub_100276510(v22, v21);
        return;
      case 24:
        sub_10027653C(v22, v21);
        return;
      case 32:
        sub_100276578(v22, v21);
        return;
      case 36:
        sub_1002765A4(v22, v21);
        return;
      case 48:
        sub_1002765E8(v22, v21);
        return;
      case 64:
        sub_100276624(v22, v21);
        return;
      case 128:
        sub_100276650(v22, v21);
        return;
      default:
        if (v119 == 256)
        {
          sub_10027667C(v22, v21);
        }

        else
        {
          if (v119 != 512)
          {
LABEL_301:
            sub_1002A8688(&v120, "Vectors with element size %d are not supported. Please, modify OutputArray::create()\n", v119);
            sub_1002A8980(-5, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2633);
          }

          sub_1002766A8(v22, v21);
        }

        break;
    }

    return;
  }

  if ((result[3] & 0x40) != 0 && 0xAAAAAAAAAAAAAAABLL * ((v22[1] - *v22) >> 3) != v20)
  {
    sub_1001FA81C(&v120, "!fixedSize() || len == vv.size()");
    sub_1002A8980(-215, &v120, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2567);
  }

  sub_1002761E4(*(result + 1), v20);
}

void sub_10026DA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10026E0C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x80000000) != 0 && (*a1 & 0x1F0000) == 0x10000)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v6;
    *(a3 + 32) = v4[2];
    v7 = *(v4 + 7);
    *(a3 + 48) = *(v4 + 6);
    *(a3 + 56) = v7;
    *(a3 + 80) = 0;
    *(a3 + 64) = a3 + 8;
    *(a3 + 72) = a3 + 80;
    *(a3 + 88) = 0;
    if (v7)
    {
      atomic_fetch_add((v7 + 20), 1u);
      if (*(v4 + 1) <= 2)
      {
LABEL_5:
        v8 = *(v4 + 9);
        v9 = *(a3 + 72);
        *v9 = *v8;
        v9[1] = v8[1];
        return;
      }
    }

    else if (SDWORD1(v5) <= 2)
    {
      goto LABEL_5;
    }

    *(a3 + 4) = 0;
    sub_100269568(a3, *(v4 + 1), 0, 0, 0);
    if (*(a3 + 4) >= 1)
    {
      v11 = 0;
      v12 = *(v4 + 8);
      v13 = *(v4 + 9);
      v14 = *(a3 + 64);
      v15 = *(a3 + 72);
      do
      {
        *(v14 + 4 * v11) = *(v12 + 4 * v11);
        *(v15 + 8 * v11) = *(v13 + 8 * v11);
        ++v11;
      }

      while (v11 < *(a3 + 4));
    }
  }

  else
  {

    sub_1002703C0(a1, a2, a3);
  }
}

void sub_10026E1E0(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  *v54 = *a1;
  *&v54[16] = v8;
  *&v54[32] = a1[2];
  v10 = *(a1 + 7);
  *&v54[48] = *(a1 + 6);
  *&v54[56] = v10;
  v55 = &v54[8];
  v56 = v57;
  v57[0] = 0;
  v57[1] = 0;
  if (v10)
  {
    atomic_fetch_add((v10 + 20), 1u);
    v11 = *(a1 + 1);
    if (v11 <= 2)
    {
LABEL_3:
      v12 = *(a1 + 9);
      v13 = v56;
      *v56 = *v12;
      v13[1] = v12[1];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = DWORD1(v9);
    if (SDWORD1(v9) <= 2)
    {
      goto LABEL_3;
    }
  }

  v53 = v9;
  *&v54[4] = 0;
  sub_100269568(v54, v11, 0, 0, 0);
  LODWORD(v9) = v53;
  if (*&v54[4] >= 1)
  {
    v14 = 0;
    v15 = *(a1 + 8);
    v16 = *(a1 + 9);
    v17 = v55;
    v18 = v56;
    do
    {
      *&v17[4 * v14] = *(v15 + 4 * v14);
      v18[v14] = *(v16 + 8 * v14);
      ++v14;
    }

    while (v14 < *&v54[4]);
  }

LABEL_8:
  v19 = ((v9 >> 3) & 0x1FF) + 1;
  v20 = *(a1 + 1);
  if (v20 < 3)
  {
    if (!a2)
    {
      LODWORD(a2) = ((v9 >> 3) & 0x1FF) + 1;
    }

    v45 = *(a1 + 3) * v19;
    if (a2 <= v45)
    {
      if (a3 || !(v45 % a2))
      {
LABEL_41:
        if (!a3)
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }
    }

    else if (a3)
    {
LABEL_42:
      v46 = *(a1 + 2);
      if (a3 != v46)
      {
        if ((*(a1 + 1) & 0x40) == 0)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 72), "The matrix is not continuous, thus its number of rows can not be changed", 72);
          sub_1002A8980(-13, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1102);
        }

        v47 = v46 * v45;
        if (a3 > v47)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 22), "Bad new number of rows", 22);
          sub_1002A8980(-211, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1105);
        }

        v45 = v47 / a3;
        if (v47 / a3 * a3 != v47)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 78), "The total number of matrix elements is not divisible by the new number of rows", 78);
          sub_1002A8980(-5, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1111);
        }

        *&v54[8] = a3;
        *v56 = ((0x88442211uLL >> (4 * (*a1 & 7u))) & 0xF) * v45;
      }

LABEL_50:
      if (v45 / a2 * a2 != v45)
      {
        v58 = 0;
        v59 = 0;
        qmemcpy(sub_1002A80E0(&v58, 62), "The total width is not divisible by the new number of channels", 62);
        sub_1002A8980(-15, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1121);
      }

      *&v54[12] = v45 / a2;
      v48 = *v54;
      v49 = 8 * a2 - 8;
      v25 = v56;
      *(v56 + 1) = (((v49 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v54[0] & 7))) & 3);
      *a4 = v48 & 0xFFFFF007 | v49;
      v50 = *&v54[4];
      *(a4 + 4) = *&v54[4];
      *(a4 + 12) = v45 / a2;
      v51 = *&v54[32];
      *(a4 + 16) = *&v54[16];
      *(a4 + 32) = v51;
      v52 = *&v54[48];
      *(a4 + 80) = 0;
      *(a4 + 48) = v52;
      *(a4 + 64) = a4 + 8;
      *(a4 + 72) = a4 + 80;
      *(a4 + 88) = 0;
      if (v50 > 2)
      {
        *(a4 + 64) = v55;
        *(a4 + 72) = v25;
        goto LABEL_55;
      }

LABEL_53:
      *(a4 + 80) = *v25;
      *(a4 + 88) = v25[1];
      goto LABEL_56;
    }

    a3 = *(a1 + 2) * v45 / a2;
    goto LABEL_41;
  }

  if (a2 && !a3)
  {
    v21 = v20 - 1;
    if (!((*(*(a1 + 8) + 4 * (v20 - 1)) * v19) % a2))
    {
      v22 = v54[0];
      v23 = 8 * a2 - 8;
      *v54 = *v54 & 0xFFFFF007 | v23;
      v24 = (((v23 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v22 & 7))) & 3);
      v25 = v56;
      *(v56 + v21) = v24;
      v26 = v55;
      *&v55[4 * v21] = (*&v55[4 * v21] * v19) / a2;
      v27 = *&v54[4];
      v28 = *&v54[16];
      *a4 = *v54;
      *(a4 + 16) = v28;
      v29 = *&v54[48];
      *(a4 + 32) = *&v54[32];
      *(a4 + 48) = v29;
      *(a4 + 80) = 0;
      *(a4 + 64) = a4 + 8;
      *(a4 + 72) = a4 + 80;
      *(a4 + 88) = 0;
      if (v27 > 2)
      {
        *(a4 + 64) = v26;
        *(a4 + 72) = v25;
LABEL_55:
        v55 = &v54[8];
        v56 = v57;
LABEL_56:
        *v54 = 1124007936;
        memset(&v54[4], 0, 60);
        v43 = v56;
        if (v56 == v57)
        {
          return;
        }

        goto LABEL_57;
      }

      goto LABEL_53;
    }

LABEL_32:
    v58 = 0;
    v59 = 0;
    v44 = sub_1002A80E0(&v58, 9);
    *(v44 + 8) = 50;
    *v44 = *"dims <= 2";
    sub_1002A8980(-215, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1087);
  }

  if (a3 < 1)
  {
    goto LABEL_32;
  }

  LODWORD(v58) = a3;
  v30 = *(a1 + 8);
  v31 = (v30 + 4);
  v32 = 1;
  v33 = v20 & 0x7FFFFFFE;
  v34 = 1;
  do
  {
    v32 *= *(v31 - 1);
    v34 *= *v31;
    v31 += 2;
    v33 -= 2;
  }

  while (v33);
  v35 = v34 * v32;
  v36 = v20 - (v20 & 0x7FFFFFFE);
  if (v36)
  {
    v37 = (v30 + 8 * ((v20 >> 1) & 0x3FFFFFFF));
    do
    {
      v38 = *v37++;
      v35 *= v38;
      --v36;
    }

    while (v36);
  }

  HIDWORD(v58) = v35 / a3;
  sub_10026E8FC(a1, a2, 2u, &v58, a4);
  if (*&v54[56])
  {
    if (atomic_fetch_add((*&v54[56] + 20), 0xFFFFFFFF) == 1)
    {
      v39 = *&v54[56];
      if (*&v54[56])
      {
        *&v54[56] = 0;
        v40 = *(v39 + 8);
        if (!v40)
        {
          v40 = *&v54[48];
          if (!*&v54[48])
          {
            v40 = sub_100268CC8();
          }
        }

        (*(*v40 + 48))(v40, v39);
      }
    }
  }

  *&v54[56] = 0;
  memset(&v54[16], 0, 32);
  if (*&v54[4] >= 1)
  {
    v41 = 0;
    v42 = v55;
    do
    {
      *&v42[4 * v41++] = 0;
    }

    while (v41 < *&v54[4]);
  }

  v43 = v56;
  if (v56 != v57)
  {
LABEL_57:
    j__free(v43);
  }
}

void sub_10026E840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100008E3C(exception_object);
}

void sub_10026E8FC(__int128 *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  if (*(a1 + 1) == a3)
  {
    if (!a4)
    {
      v8 = 0;
      goto LABEL_17;
    }

    if (a3 == 2)
    {
      v8 = *a4;
LABEL_17:

      sub_10026E1E0(a1, a2, v8, a5);
      return;
    }
  }

  if ((*(a1 + 1) & 0x40) == 0)
  {
    v39 = 0;
    v40 = 0;
    qmemcpy(sub_1002A80E0(&v39, 71), "Reshaping of n-dimensional non-continuous matrices is not supported yet", 71);
    sub_1002A8980(-213, &v39, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4767);
  }

  if (!a4 || (a2 & 0x80000000) != 0 || a3 - 1 >= 0x20)
  {
    v39 = 0;
    v40 = 0;
    qmemcpy(sub_1002A80E0(&v39, 54), "_cn >= 0 && _newndims > 0 && _newndims <= 32 && _newsz", 54);
    sub_1002A8980(-215, &v39, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4731);
  }

  if (a2)
  {
    if (a2 >= 513)
    {
      v39 = 0;
      v40 = 0;
      v9 = sub_1002A80E0(&v39, 10);
      *(v9 + 8) = 12849;
      *v9 = *"_cn <= 512";
      sub_1002A8980(-215, &v39, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4736);
    }

    v10 = *(a1 + 1);
    if (v10 < 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = ((*a1 >> 3) & 0x1FF) + 1;
    v10 = *(a1 + 1);
    if (v10 < 3)
    {
LABEL_15:
      v11 = *(a1 + 3) * *(a1 + 2);
      goto LABEL_26;
    }
  }

  v12 = *(a1 + 8);
  v13 = (v12 + 4);
  v14 = 1;
  v15 = v10 & 0x7FFFFFFE;
  v16 = 1;
  do
  {
    v14 *= *(v13 - 1);
    v16 *= *v13;
    v13 += 2;
    v15 -= 2;
  }

  while (v15);
  v11 = v16 * v14;
  v17 = v10 - (v10 & 0x7FFFFFFE);
  if (v17)
  {
    v18 = (v12 + 8 * ((v10 >> 1) & 0x3FFFFFFF));
    do
    {
      v19 = *v18++;
      v11 *= v19;
      --v17;
    }

    while (v17);
  }

LABEL_26:
  v35 = *a1;
  v20 = v5;
  v39 = v41;
  v40 = a3;
  if (a3 >= 5)
  {
    operator new[]();
  }

  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v22 = a4[i];
      if (v22 < 0)
      {
        v37 = 0;
        v38 = 0;
        qmemcpy(sub_1002A80E0(&v37, 14), "_newsz[i] >= 0", 14);
        sub_1002A8980(-215, &v37, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4745);
      }

      if (v22 < 1)
      {
        if (i >= *(a1 + 1))
        {
          v37 = 0;
          v38 = 0;
          qmemcpy(sub_1002A80E0(&v37, 68), "Copy dimension (which has zero size) is not present in source matrix", 68);
          sub_1002A8980(-211, &v37, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4752);
        }

        v22 = *(*(a1 + 8) + 4 * i);
      }

      *&v39[4 * i] = v22;
      v20 *= v22;
    }
  }

  if (v20 != v11 + v11 * ((v35 >> 3) & 0x1FF))
  {
    v37 = 0;
    v38 = 0;
    qmemcpy(sub_1002A80E0(&v37, 62), "Requested and source matrices have different count of elements", 62);
    sub_1002A8980(-209, &v37, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4758);
  }

  v23 = *a1;
  v24 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v24;
  *(a5 + 32) = a1[2];
  v25 = *(a1 + 7);
  *(a5 + 48) = *(a1 + 6);
  *(a5 + 56) = v25;
  *(a5 + 80) = 0;
  *(a5 + 64) = a5 + 8;
  *(a5 + 72) = a5 + 80;
  *(a5 + 88) = 0;
  if (!v25)
  {
    v26 = DWORD1(v23);
    if (SDWORD1(v23) <= 2)
    {
      goto LABEL_42;
    }

LABEL_44:
    *(a5 + 4) = 0;
    sub_100269568(a5, v26, 0, 0, 0);
    if (*(a5 + 4) >= 1)
    {
      v29 = 0;
      v30 = *(a1 + 8);
      v31 = *(a1 + 9);
      v32 = *(a5 + 64);
      v33 = *(a5 + 72);
      do
      {
        *(v32 + 4 * v29) = *(v30 + 4 * v29);
        *(v33 + 8 * v29) = *(v31 + 8 * v29);
        ++v29;
      }

      while (v29 < *(a5 + 4));
    }

    goto LABEL_47;
  }

  atomic_fetch_add((v25 + 20), 1u);
  v26 = *(a1 + 1);
  if (v26 > 2)
  {
    goto LABEL_44;
  }

LABEL_42:
  v27 = *(a1 + 9);
  v28 = *(a5 + 72);
  *v28 = *v27;
  v28[1] = v27[1];
LABEL_47:
  *a5 = *a5 & 0xFFFFF007 | (8 * v5 - 8);
  sub_100269568(a5, a3, v39, 0, 1);
  if (v39 != v41 && v39 != 0)
  {
    operator delete[]();
  }
}

void sub_10026EEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10026EF8C(int *a1, int *a2)
{
  sub_1002ACE7C(v50, &off_100474DD8);
  v4 = sub_100271A88(a1, -1);
  v5 = (((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3);
  if (sub_10027377C(a1, -1) > 2 || v5 >= 0x21)
  {
    v41 = 0;
    v42 = 0;
    qmemcpy(sub_1002A80E0(&v41, 29), "_src.dims() <= 2 && esz <= 32", 29);
    sub_1002A8980(-215, &v41, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3591);
  }

  sub_10026E0C8(a1, 0xFFFFFFFFLL, &v41);
  if (!v43)
  {
    goto LABEL_19;
  }

  if (SHIDWORD(v41) >= 3)
  {
    v7 = v47 + 1;
    v8 = 1;
    v9 = HIDWORD(v41) & 0x7FFFFFFE;
    v10 = 1;
    do
    {
      v8 *= *(v7 - 1);
      v10 *= *v7;
      v7 += 2;
      v9 -= 2;
    }

    while (v9);
    v6 = v10 * v8;
    v11 = HIDWORD(v41) - (HIDWORD(v41) & 0x7FFFFFFE);
    if (v11)
    {
      v12 = &v47[(HIDWORD(v41) >> 1) & 0x3FFFFFFF];
      do
      {
        v13 = v12->i32[0];
        v12 = (v12 + 4);
        v6 *= v13;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v6 = SHIDWORD(v42) * v42;
  }

  if (HIDWORD(v41) && v6)
  {
    sub_100275A84(a2, HIDWORD(v42), v42, v41 & 0xFFF, -1, 0, 0);
    sub_10026E0C8(a2, 0xFFFFFFFFLL, v31);
    if (__PAIR64__(v42, HIDWORD(v42)) == v33)
    {
      v14 = 0xFEFEEEA1uLL >> v5;
      if (v34 == v43)
      {
        if (v14)
        {
          v28 = 0;
          v29 = 0;
          v26 = sub_1002A80E0(&v28, 9);
          *(v26 + 8) = 48;
          *v26 = *"func != 0";
          sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3619);
        }

        if (v42 != HIDWORD(v42))
        {
          v28 = 0;
          v29 = 0;
          v27 = sub_1002A80E0(&v28, 20);
          *(v27 + 16) = 1937207154;
          *v27 = *"dst.cols == dst.rows";
          sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3620);
        }

        qword_100474DF8[v5](v34, v40);
      }

      else
      {
        v15 = qword_100474F00[v5];
        if (v14)
        {
          v28 = 0;
          v29 = 0;
          v16 = sub_1002A80E0(&v28, 9);
          *(v16 + 8) = 48;
          *v16 = *"func != 0";
          sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3626);
        }

        v28 = vrev64_s32(*v47);
        v15();
      }
    }

    else
    {
      v17 = v47->i32[1] == v38[1] && v47->i32[0] == *v38;
      if (!v17 || v42 != 1 && HIDWORD(v42) != 1)
      {
        v28 = 0;
        v29 = 0;
        qmemcpy(sub_1002A80E0(&v28, 60), "src.size() == dst.size() && (src.cols == 1 || src.rows == 1)", 60);
        sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3609);
      }

      v28.i32[0] = 33619968;
      v29 = v31;
      v30 = 0;
      sub_10022B754(&v41, &v28);
    }

    if (v37)
    {
      if (atomic_fetch_add((v37 + 20), 0xFFFFFFFF) == 1)
      {
        v18 = v37;
        if (v37)
        {
          v37 = 0;
          v19 = *(v18 + 8);
          if (!v19)
          {
            v19 = v36;
            if (!v36)
            {
              v19 = sub_100268CC8();
            }
          }

          (*(*v19 + 48))(v19, v18);
        }
      }
    }

    v37 = 0;
    v34 = 0u;
    v35 = 0u;
    if (v32 >= 1)
    {
      v20 = 0;
      v21 = v38;
      do
      {
        v21[v20++] = 0;
      }

      while (v20 < v32);
    }

    if (v39 != &v40)
    {
      j__free(v39);
    }
  }

  else
  {
LABEL_19:
    sub_100274CEC(a2);
  }

  if (v46)
  {
    if (atomic_fetch_add((v46 + 20), 0xFFFFFFFF) == 1)
    {
      v22 = v46;
      if (v46)
      {
        v46 = 0;
        v23 = *(v22 + 8);
        if (!v23)
        {
          v23 = v45;
          if (!v45)
          {
            v23 = sub_100268CC8();
          }
        }

        (*(*v23 + 48))(v23, v22);
      }
    }
  }

  v46 = 0;
  v43 = 0u;
  v44 = 0u;
  if (SHIDWORD(v41) >= 1)
  {
    v24 = 0;
    v25 = v47;
    do
    {
      v25->i32[v24++] = 0;
    }

    while (v24 < SHIDWORD(v41));
  }

  if (v48 != &v49)
  {
    j__free(v48);
  }

  if (v50[2])
  {
    sub_1002ACC1C(v50);
  }
}

void sub_10026F4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_1002A8124(va);
  sub_100006D14(va1);
  sub_100006D14(va2);
  sub_1001D8BF4(v3 - 64);
  _Unwind_Resume(a1);
}

void sub_10026F590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_100006D14(va);
  sub_1001D8BF4(v24 - 64);
  _Unwind_Resume(a1);
}

unint64_t sub_10026F620(unsigned int *a1, signed int a2, int a3, char a4)
{
  if (!*(a1 + 2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  if (a3 >= 1 && (*a1 & 7) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 & 0x4000) == 0 && (a4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[1];
  if (v5 == 3)
  {
    if ((v4 & 0xFF8) == 0)
    {
      v11 = *(a1 + 8);
      if (v11[2] == a2 && (*v11 == 1 || v11[1] == 1) && ((v4 & 0x4000) != 0 || *(*(a1 + 9) + 8) == *(*(a1 + 9) + 16) * a2))
      {
        v10 = *v11 * v11[1] * v11[2];
        return (v10 + v10 * ((v4 >> 3) & 0x1FF)) / a2;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1[2];
  if ((v6 == 1 || (v7 = a1[3], v7 == 1)) && (v7 = a1[3], ((v4 >> 3) & 0x1FF) + 1 == a2) || (result = 0xFFFFFFFFLL, (v4 & 0xFF8) == 0) && (v9 = v7 == a2, v7 = a2, v9))
  {
    v10 = v6 * v7;
    return (v10 + v10 * ((v4 >> 3) & 0x1FF)) / a2;
  }

  return result;
}

void sub_10026F720(unint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  sub_1002ACE7C(v127, &off_100474D98);
  v8 = (a3 >> 3) & 0x1FF;
  if (v8 >= 4)
  {
    v125 = 0;
    v126 = 0;
    v9 = sub_1002A80E0(&v125, 7);
    *(v9 + 3) = 874528060;
    *v9 = 1008758371;
    sub_1002A8980(-215, &v125, "scalarToRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1168);
  }

  v10 = a3 & 7;
  v11 = v8 + 1;
  if (v10 > 3)
  {
    if ((a3 & 7) > 5)
    {
      if (v10 != 6)
      {
        v125 = 0;
        v126 = 0;
        sub_1002A8980(-210, &v125, "scalarToRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1193);
      }

      v22 = 0;
      v23 = v11;
      if (v8 < 3)
      {
        goto LABEL_28;
      }

      if (a2 - a1 <= 0x1F)
      {
        goto LABEL_28;
      }

      v22 = v11 & 0x3FC;
      v24 = (a1 + 16);
      v25 = (a2 + 16);
      v26 = v22;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if (v22 != v11)
      {
LABEL_28:
        v28 = ((a3 >> 3) & 0x1FF) - v22 + 1;
        v29 = 8 * v22;
        v30 = (a2 + 8 * v22);
        v31 = (a1 + v29);
        do
        {
          v32 = *v31++;
          *v30++ = v32;
          --v28;
        }

        while (v28);
      }

      if (v11 < a4)
      {
        v33 = a4 + ~v8;
        if (v33 < 6 || (a3 & 0xFF8) <= 0x17)
        {
          goto LABEL_39;
        }

        v23 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + v11;
        v35 = (a2 + 8 * ((a3 >> 3) & 0x1FF) + 24);
        v36 = (a2 + 16);
        v37 = v33 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v38 = *v36;
          *(v35 - 1) = *(v36 - 1);
          *v35 = v38;
          v35 += 2;
          v36 += 2;
          v37 -= 4;
        }

        while (v37);
        if (v33 != (v33 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_39:
          v39 = a4 - v23;
          v40 = (a2 + 8 * v23);
          do
          {
            *v40 = *(v40 + ((8 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF000));
            ++v40;
            --v39;
          }

          while (v39);
        }
      }

      goto LABEL_134;
    }

    if (v10 != 4)
    {
      v47 = v11;
      v73 = ((a3 >> 3) & 0x1FF) + 1;
      v74 = a2;
      v75 = a1;
      do
      {
        v76 = *v75++;
        v77 = v76;
        *v74++ = v77;
        --v73;
      }

      while (v73);
      if (v11 < a4)
      {
        v78 = a4 + ~v8;
        if (v78 < 8)
        {
          goto LABEL_86;
        }

        if ((a3 & 0xFF8) <= 0x37)
        {
          goto LABEL_86;
        }

        v47 = (v78 & 0xFFFFFFFFFFFFFFF8) + v11;
        v79 = (a2 + 4 * ((a3 >> 3) & 0x1FF) + 20);
        v80 = (a2 + 16);
        v81 = v78 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v82 = *v80;
          *(v79 - 1) = *(v80 - 1);
          *v79 = v82;
          v79 += 2;
          v80 += 2;
          v81 -= 8;
        }

        while (v81);
        if (v78 != (v78 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_86:
          v83 = a4 - v47;
          v84 = (a2 + 4 * v47);
          do
          {
            *v84 = *(v84 + ((4 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF800));
            ++v84;
            --v83;
          }

          while (v83);
        }
      }

      goto LABEL_134;
    }

    v19 = v11;
    if (v8 > 2)
    {
      v20 = v11 & 0x3FC;
      v49 = v20;
      v50 = a2;
      v51 = a1;
      do
      {
        v52 = *v51;
        v53 = v51[1];
        v51 += 2;
        *v50++ = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v52)), vcvtq_s64_f64(vrndxq_f64(v53)));
        v49 -= 4;
      }

      while (v49);
      if (v20 == v11)
      {
LABEL_62:
        if (v11 < a4)
        {
          v58 = a4 + ~v8;
          if (v58 < 8)
          {
            goto LABEL_68;
          }

          if ((a3 & 0xFF8) <= 0x37)
          {
            goto LABEL_68;
          }

          v19 = (v58 & 0xFFFFFFFFFFFFFFF8) + v11;
          v59 = (a2 + 4 * ((a3 >> 3) & 0x1FF) + 20);
          v60 = (a2 + 16);
          v61 = v58 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v62 = *v60;
            *(v59 - 1) = *(v60 - 1);
            *v59 = v62;
            v59 += 2;
            v60 += 2;
            v61 -= 8;
          }

          while (v61);
          if (v58 != (v58 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_68:
            v63 = a4 - v19;
            v64 = (a2 + 4 * v19);
            do
            {
              *v64 = *(v64 + ((4 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF800));
              ++v64;
              --v63;
            }

            while (v63);
          }
        }

        goto LABEL_134;
      }
    }

    else
    {
      v20 = 0;
    }

    v54 = ((a3 >> 3) & 0x1FF) - v20 + 1;
    v55 = (a2 + 4 * v20);
    v56 = (a1 + 8 * v20);
    do
    {
      v57 = *v56++;
      *v55++ = rint(v57);
      --v54;
    }

    while (v54);
    goto LABEL_62;
  }

  if ((a3 & 7) <= 1)
  {
    if ((a3 & 7) == 0)
    {
      if (v8 >= 3 && (a1 + (a3 & 0xFF8) + 8 <= a2 || a2 + v11 <= a1))
      {
        v12 = v11 & 0x3FC;
        v92 = a1;
        v93 = a2;
        v94 = -v12;
        v95.i64[0] = 0xFF000000FFLL;
        v95.i64[1] = 0xFF000000FFLL;
        do
        {
          v96 = *v92;
          v97 = v92[1];
          v92 += 2;
          *v93++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v96)), vcvtq_s64_f64(vrndxq_f64(v97))), 0), v95)), 0).u32[0];
          v94 += 4;
        }

        while (v94);
        if (v12 == v11)
        {
LABEL_14:
          if (v11 < a4)
          {
            v117 = a4 - (v8 + 1);
            v118 = (a2 + v8 + 1);
            do
            {
              *v118 = v118[~(a3 >> 3) | 0xFFFFFFFFFFFFFE00];
              ++v118;
              --v117;
            }

            while (v117);
          }

          goto LABEL_134;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = ((a3 >> 3) & 0x1FF) - v12 + 1;
      v14 = (a2 + v12);
      v15 = (a1 + 8 * v12);
      do
      {
        v16 = *v15++;
        v17 = rint(v16);
        v18 = v17 & ~(v17 >> 31);
        if (v18 >= 255)
        {
          LOBYTE(v18) = -1;
        }

        *v14++ = v18;
        --v13;
      }

      while (v13);
      goto LABEL_14;
    }

    if (v8 >= 3 && (a1 + (a3 & 0xFF8) + 8 <= a2 || a2 + v11 <= a1))
    {
      v41 = v11 & 0x3FC;
      v98 = a1;
      v99 = a2;
      v100 = -v41;
      v101.i64[0] = 0x7F0000007FLL;
      v101.i64[1] = 0x7F0000007FLL;
      v102.i64[0] = 0x7F0000007FLL;
      v102.i64[1] = 0x7F0000007FLL;
      do
      {
        v103 = *v98;
        v104 = v98[1];
        v98 += 2;
        *v99++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v103)), vcvtq_s64_f64(vrndxq_f64(v104))), v101), v102)), *v101.i8).u32[0];
        v100 += 4;
      }

      while (v100);
      if (v41 == v11)
      {
LABEL_52:
        if (v11 < a4)
        {
          v119 = a4 - (v8 + 1);
          v120 = (a2 + v8 + 1);
          do
          {
            *v120 = v120[~(a3 >> 3) | 0xFFFFFFFFFFFFFE00];
            ++v120;
            --v119;
          }

          while (v119);
        }

        goto LABEL_134;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = ((a3 >> 3) & 0x1FF) - v41 + 1;
    v43 = (a2 + v41);
    v44 = (a1 + 8 * v41);
    do
    {
      v45 = *v44++;
      v46 = rint(v45);
      if (v46 <= -128)
      {
        LODWORD(v46) = -128;
      }

      if (v46 >= 127)
      {
        LOBYTE(v46) = 127;
      }

      *v43++ = v46;
      --v42;
    }

    while (v42);
    goto LABEL_52;
  }

  if (v10 != 2)
  {
    v48 = v11;
    v85 = ((a3 >> 3) & 0x1FF) + 1;
    v86 = a2;
    v87 = a1;
    do
    {
      v88 = *v87++;
      v89 = rint(v88);
      if (v89 <= -32768)
      {
        LODWORD(v89) = -32768;
      }

      if (v89 >= 0x7FFF)
      {
        LOWORD(v89) = 0x7FFF;
      }

      *v86++ = v89;
      --v85;
    }

    while (v85);
    if (v11 >= a4)
    {
      goto LABEL_134;
    }

    v90 = a4 + ~v8;
    if (v90 >= 4 && (a3 & 0xFF8) >= 0x78)
    {
      if (v90 < 0x10)
      {
        v91 = 0;
        goto LABEL_119;
      }

      v91 = v90 & 0xFFFFFFFFFFFFFFF0;
      v111 = (a2 + 2 * ((a3 >> 3) & 0x1FF) + 18);
      v112 = (a2 + 16);
      v113 = v90 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v114 = *v112;
        *(v111 - 1) = *(v112 - 1);
        *v111 = v114;
        v111 += 2;
        v112 += 2;
        v113 -= 16;
      }

      while (v113);
      if (v90 == v91)
      {
        goto LABEL_134;
      }

      if ((v90 & 0xC) != 0)
      {
LABEL_119:
        v48 = (v90 & 0xFFFFFFFFFFFFFFFCLL) + v11;
        v115 = (a2 + 2 * v91);
        v116 = v91 - (v90 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          *(v115 + 2 * ((a3 >> 3) & 0x1FF) + 2) = *v115;
          ++v115;
          v116 += 4;
        }

        while (v116);
        if (v90 == (v90 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_134;
        }

        goto LABEL_132;
      }

      v48 = v91 + v11;
    }

LABEL_132:
    v123 = a4 - v48;
    v124 = (a2 + 2 * v48);
    do
    {
      *v124 = *(v124 + ((2 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFFC00));
      ++v124;
      --v123;
    }

    while (v123);
    goto LABEL_134;
  }

  v21 = v11;
  v65 = ((a3 >> 3) & 0x1FF) + 1;
  v66 = a2;
  v67 = a1;
  do
  {
    v68 = *v67++;
    v69 = rint(v68);
    v70 = v69 & ~(v69 >> 31);
    if (v70 >= 0xFFFF)
    {
      LOWORD(v70) = -1;
    }

    *v66++ = v70;
    --v65;
  }

  while (v65);
  if (v11 < a4)
  {
    v71 = a4 + ~v8;
    if (v71 >= 4 && (a3 & 0xFF8) >= 0x78)
    {
      if (v71 < 0x10)
      {
        v72 = 0;
        goto LABEL_111;
      }

      v72 = v71 & 0xFFFFFFFFFFFFFFF0;
      v105 = (a2 + 2 * ((a3 >> 3) & 0x1FF) + 18);
      v106 = (a2 + 16);
      v107 = v71 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v108 = *v106;
        *(v105 - 1) = *(v106 - 1);
        *v105 = v108;
        v105 += 2;
        v106 += 2;
        v107 -= 16;
      }

      while (v107);
      if (v71 == v72)
      {
        goto LABEL_134;
      }

      if ((v71 & 0xC) != 0)
      {
LABEL_111:
        v21 = (v71 & 0xFFFFFFFFFFFFFFFCLL) + v11;
        v109 = (a2 + 2 * v72);
        v110 = v72 - (v71 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          *(v109 + 2 * ((a3 >> 3) & 0x1FF) + 2) = *v109;
          ++v109;
          v110 += 4;
        }

        while (v110);
        if (v71 == (v71 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_134;
        }

        goto LABEL_128;
      }

      v21 = v72 + v11;
    }

LABEL_128:
    v121 = a4 - v21;
    v122 = (a2 + 2 * v21);
    do
    {
      *v122 = *(v122 + ((2 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFFC00));
      ++v122;
      --v121;
    }

    while (v121);
  }

LABEL_134:
  if (v127[2])
  {
    sub_1002ACC1C(v127);
  }
}

void sub_10027037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002A8124(&a9);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002703C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2;
  switch(HIWORD(*a1) & 0x1F)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v27 = *(a1 + 8);
      if ((v5 & 0x80000000) == 0)
      {
        __src.i32[0] = v5;
        __src.i32[1] = v5 + 1;
        v60 = 0x7FFFFFFF80000000;
        sub_100269C44(a3, v27, &__src, &v60);
        return;
      }

      v38 = *v27;
      *a3 = *v27;
      *(a3 + 16) = v27[1];
      *(a3 + 32) = v27[2];
      *(a3 + 48) = *(v27 + 6);
      v39 = *(v27 + 7);
      *(a3 + 56) = v39;
      *(a3 + 64) = a3 + 8;
      *(a3 + 80) = 0;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v39)
      {
        atomic_fetch_add((v39 + 20), 1u);
        v40 = *(v27 + 1);
      }

      else
      {
        v40 = DWORD1(v38);
      }

      if (v40 <= 2)
      {
        v46 = *(v27 + 9);
        goto LABEL_78;
      }

      *(a3 + 4) = 0;
      v53 = v27;
      sub_100269568(a3, *(v27 + 1), 0, 0, 0);
      if (*(a3 + 4) >= 1)
      {
        v54 = 0;
        v55 = *(v53 + 8);
        v56 = *(v53 + 9);
        v57 = *(a3 + 64);
        v58 = *(a3 + 72);
        do
        {
          *(v57 + 4 * v54) = *(v55 + 4 * v54);
          *(v58 + 8 * v54) = *(v56 + 8 * v54);
          ++v54;
        }

        while (v54 < *(a3 + 4));
      }

      return;
    case 2:
    case 0xE:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v7 = sub_1002A80E0(&__src, 5);
        *(v7 + 4) = 48;
        *v7 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1231);
      }

      __src = *(a1 + 16);
      sub_10024255C(a3, &__src, v4, *(a1 + 8), 0);
      return;
    case 3:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v32 = sub_1002A80E0(&__src, 5);
        *(v32 + 4) = 48;
        *v32 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1237);
      }

      v33 = *(a1 + 8);
      if (*v33 == v33[1])
      {
        goto LABEL_65;
      }

      v34 = *a1;
      sub_100271154(a1, -1, &__src);
      sub_10024255C(a3, &__src, v34 & 0xFFF, *v33, 0);
      return;
    case 4:
      v15 = sub_100271A88(a1, a2);
      v16 = *(a1 + 8);
      if (v5 < 0 || (-1431655765 * ((v16[1] - *v16) >> 3)) <= v5)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 28), "0 <= i && i < (int)vv.size()", 28);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1266);
      }

      v17 = (*v16 + 24 * v5);
      if (*v17 == v17[1])
      {
LABEL_65:
        *a3 = 1124007936;
        *(a3 + 4) = 0u;
        *(a3 + 20) = 0u;
        *(a3 + 36) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 80) = 0;
        *(a3 + 64) = a3 + 8;
        *(a3 + 72) = a3 + 80;
        *(a3 + 88) = 0;
      }

      else
      {
        sub_100271154(a1, v5, &__src);
        sub_10024255C(a3, &__src, v15, *v17, 0);
      }

      return;
    case 5:
      v23 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0 || (-1431655765 * ((v23[1] - *v23) >> 5)) <= a2)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 27), "0 <= i && i < (int)v.size()", 27);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1275);
      }

      v24 = *v23 + 96 * a2;
      v25 = *v24;
      *a3 = *v24;
      *(a3 + 16) = *(v24 + 16);
      *(a3 + 32) = *(v24 + 32);
      *(a3 + 48) = *(v24 + 48);
      v26 = *(v24 + 56);
      *(a3 + 56) = v26;
      *(a3 + 64) = a3 + 8;
      *(a3 + 80) = 0;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v26)
      {
        atomic_fetch_add((v26 + 20), 1u);
        if (*(v24 + 4) <= 2)
        {
          goto LABEL_77;
        }
      }

      else if (SDWORD1(v25) <= 2)
      {
        goto LABEL_77;
      }

      *(a3 + 4) = 0;
      sub_100269568(a3, *(v24 + 4), 0, 0, 0);
      if (*(a3 + 4) >= 1)
      {
        v41 = 0;
        v42 = *(v24 + 64);
        v43 = *(v24 + 72);
        v44 = *(a3 + 64);
        v45 = *(a3 + 72);
        do
        {
          *(v44 + 4 * v41) = *(v42 + 4 * v41);
          *(v45 + 8 * v41) = *(v43 + 8 * v41);
          ++v41;
        }

        while (v41 < *(a3 + 4));
      }

      return;
    case 6:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v28 = sub_1002A80E0(&__src, 5);
        *(v28 + 4) = 48;
        *v28 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1225);
      }

      v29 = *(a1 + 8);
      *a3 = 1124007936;
      *(a3 + 48) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 4) = 0u;
      *(a3 + 80) = 0;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      (*(**v29 + 24))(*v29, v29, a3, 0xFFFFFFFFLL);
      return;
    case 7:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v37 = sub_1002A80E0(&__src, 5);
        *(v37 + 4) = 48;
        *v37 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1298);
      }

      __src = 0;
      v62 = 0;
      qmemcpy(sub_1002A80E0(&__src, 75), "You should explicitly call mapHost/unmapHost methods for ogl::Buffer object", 75);
      sub_1002A8980(-213, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1299);
    case 8:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v35 = sub_1002A80E0(&__src, 5);
        *(v35 + 4) = 48;
        *v35 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1312);
      }

      v36 = *(a1 + 8);
      __src = vrev64_s32(*(v36 + 4));
      sub_10024255C(a3, &__src, *v36 & 0xFFF, *(v36 + 24), *(v36 + 16));
      return;
    case 9:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v13 = sub_1002A80E0(&__src, 5);
        *(v13 + 4) = 48;
        *v13 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1305);
      }

      __src = 0;
      v62 = 0;
      qmemcpy(sub_1002A80E0(&__src, 66), "You should explicitly call download method for cuda::GpuMat object", 66);
      sub_1002A8980(-213, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1306);
    case 0xA:
      v18 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0)
      {

        sub_1002B1E74(v18, v4 & 0x3000000, a3);
      }

      else
      {
        sub_1002B1E74(v18, v4 & 0x3000000, &__src);
        LODWORD(v60) = v5;
        HIDWORD(v60) = v5 + 1;
        v59 = 0x7FFFFFFF80000000;
        sub_100269C44(a3, &__src, &v60, &v59);
        if (v66)
        {
          if (atomic_fetch_add((v66 + 20), 0xFFFFFFFF) == 1)
          {
            v19 = v66;
            if (v66)
            {
              v66 = 0;
              v20 = *(v19 + 8);
              if (!v20)
              {
                v20 = v65;
                if (!v65)
                {
                  v20 = sub_100268CC8();
                }
              }

              (*(*v20 + 48))(v20, v19);
            }
          }
        }

        v66 = 0;
        v63 = 0u;
        v64 = 0u;
        if (__src.i32[1] >= 1)
        {
          v21 = 0;
          v22 = v67;
          do
          {
            *(v22 + 4 * v21++) = 0;
          }

          while (v21 < __src.i32[1]);
        }

        if (v68 != &v69)
        {
          j__free(v68);
        }
      }

      return;
    case 0xB:
      v14 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0 || (-858993459 * ((v14[1] - *v14) >> 4)) <= a2)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 27), "0 <= i && i < (int)v.size()", 27);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1291);
      }

      sub_1002B1E74(*v14 + 80 * a2, v4 & 0x3000000, a3);
      return;
    case 0xC:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v8 = sub_1002A80E0(&__src, 5);
        *(v8 + 4) = 48;
        *v8 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1246);
      }

      v9 = *(a1 + 8);
      v10 = v9[1];
      *a3 = 1124007936;
      *(a3 + 4) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 80) = 0;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v10)
      {
        __src.i32[0] = 1;
        __src.i32[1] = v10;
        sub_100268ED0(a3, 2, &__src, 0);
        if (v10 >= 1)
        {
          v11 = 0;
          v12 = *(a3 + 16);
          do
          {
            *(v12 + v11) = (*(*v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1;
            ++v11;
          }

          while ((v10 & 0x7FFFFFFF) != v11);
        }
      }

      return;
    case 0xF:
      if ((a2 & 0x80000000) != 0 || *(a1 + 20) <= a2)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 23), "0 <= i && i < sz.height", 23);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1283);
      }

      v24 = *(a1 + 8) + 96 * a2;
      v30 = *v24;
      *a3 = *v24;
      *(a3 + 16) = *(v24 + 16);
      *(a3 + 32) = *(v24 + 32);
      *(a3 + 48) = *(v24 + 48);
      v31 = *(v24 + 56);
      *(a3 + 56) = v31;
      *(a3 + 64) = a3 + 8;
      *(a3 + 80) = 0;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v31)
      {
        atomic_fetch_add((v31 + 20), 1u);
        if (*(v24 + 4) > 2)
        {
LABEL_79:
          *(a3 + 4) = 0;
          sub_100269568(a3, *(v24 + 4), 0, 0, 0);
          if (*(a3 + 4) >= 1)
          {
            v48 = 0;
            v49 = *(v24 + 64);
            v50 = *(v24 + 72);
            v51 = *(a3 + 64);
            v52 = *(a3 + 72);
            do
            {
              *(v51 + 4 * v48) = *(v49 + 4 * v48);
              *(v52 + 8 * v48) = *(v50 + 8 * v48);
              ++v48;
            }

            while (v48 < *(a3 + 4));
          }

          return;
        }
      }

      else if (SDWORD1(v30) > 2)
      {
        goto LABEL_79;
      }

LABEL_77:
      v46 = *(v24 + 72);
LABEL_78:
      v47 = *(a3 + 72);
      *v47 = *v46;
      v47[1] = v46[1];
      return;
    default:
      __src = 0;
      v62 = 0;
      qmemcpy(sub_1002A80E0(&__src, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1319);
  }
}

void sub_100270F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100271154@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  switch(*(result + 2) & 0x1F)
  {
    case 0:
      goto LABEL_54;
    case 1:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v15 = sub_1002A80E0(&v29, 5);
        *v15 = 540811369;
        *(v15 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1592);
      }

      v14 = *(result + 8);
      goto LABEL_44;
    case 2:
    case 0xE:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v4 = sub_1002A80E0(&v29, 5);
        *v4 = 540811369;
        *(v4 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1610);
      }

      *a3 = *(result + 16);
      return result;
    case 3:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v9 = sub_1002A80E0(&v29, 5);
        *v9 = 540811369;
        *(v9 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1616);
      }

      v10 = *(*(result + 8) + 8) - **(result + 8);
      if (v10 != v10 >> 2)
      {
        v10 /= ((((*result >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*result & 7))) & 3));
      }

      goto LABEL_69;
    case 4:
      v17 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if ((-1431655765 * ((v17[1] - *v17) >> 3)) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1638);
        }

        v18 = *(*v17 + 24 * a2 + 8) - *(*v17 + 24 * a2);
        if (v18 == v18 >> 2)
        {
          *a3 = v18;
          *(a3 + 4) = 1;
          return result;
        }

        v10 = v18 / ((((*result >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*result & 7))) & 3));
        goto LABEL_69;
      }

      v27 = v17[1];
      if (*v17 == v27)
      {
        goto LABEL_54;
      }

      v25 = (v27 - *v17) >> 3;
      goto LABEL_65;
    case 5:
      v20 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if ((-1431655765 * ((v20[1] - *v20) >> 5)) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1650);
        }

        v14 = *v20 + 96 * a2;
        goto LABEL_44;
      }

      v28 = v20[1];
      if (*v20 == v28)
      {
        goto LABEL_54;
      }

      v25 = (v28 - *v20) >> 5;
LABEL_65:
      v26 = -1431655765;
      goto LABEL_66;
    case 6:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v16 = sub_1002A80E0(&v29, 5);
        *v16 = 540811369;
        *(v16 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1598);
      }

      return sub_1002633C8(*(result + 8), a3);
    case 7:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v22 = sub_1002A80E0(&v29, 5);
        *v22 = 540811369;
        *(v22 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1686);
      }

      v6 = *(*(result + 8) + 16);
      goto LABEL_52;
    case 8:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v12 = sub_1002A80E0(&v29, 5);
        *v12 = 540811369;
        *(v12 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1700);
      }

      goto LABEL_48;
    case 9:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v21 = sub_1002A80E0(&v29, 5);
        *v21 = 540811369;
        *(v21 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1693);
      }

LABEL_48:
      v6 = *(*(result + 8) + 4);
      goto LABEL_52;
    case 0xA:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v7 = sub_1002A80E0(&v29, 5);
        *v7 = 540811369;
        *(v7 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1604);
      }

      v8 = *(*(result + 8) + 48);
      goto LABEL_45;
    case 0xB:
      v11 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if ((-858993459 * ((v11[1] - *v11) >> 4)) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1679);
        }

        v8 = *(*v11 + 80 * a2 + 48);
        goto LABEL_45;
      }

      v24 = v11[1];
      if (*v11 == v24)
      {
        goto LABEL_54;
      }

      v25 = (v24 - *v11) >> 4;
      v26 = -858993459;
LABEL_66:
      v13 = v25 * v26;
      goto LABEL_67;
    case 0xC:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v19 = sub_1002A80E0(&v29, 5);
        *v19 = 540811369;
        *(v19 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1625);
      }

      v10 = *(*(result + 8) + 8);
      goto LABEL_69;
    case 0xD:
      v5 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if (((v5[1] - *v5) >> 6) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1670);
        }

        v6 = *(*v5 + (a2 << 6) + 4);
        goto LABEL_52;
      }

      v23 = v5[1];
      if (*v5 == v23)
      {
        goto LABEL_54;
      }

      v10 = (v23 - *v5) >> 6;
LABEL_69:
      *a3 = v10;
      *(a3 + 4) = 1;
      break;
    case 0xF:
      v13 = *(result + 20);
      if (a2 < 0)
      {
        if (v13)
        {
LABEL_67:
          *a3 = v13;
          *(a3 + 4) = 1;
        }

        else
        {
LABEL_54:
          *a3 = 0;
        }
      }

      else
      {
        if (v13 <= a2)
        {
          sub_1001FA81C(&v29, "i < sz.height");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1660);
        }

        v14 = *(result + 8) + 96 * a2;
LABEL_44:
        v8 = *(v14 + 64);
LABEL_45:
        v6 = *v8;
LABEL_52:
        *a3 = vrev64_s32(v6);
      }

      break;
    default:
      v29 = 0;
      v30 = 0;
      qmemcpy(sub_1002A80E0(&v29, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1705);
  }

  return result;
}

uint64_t sub_100271A88(int *a1, int a2)
{
  v2 = *a1;
  v3 = *a1 & 0x1F0000;
  switch(v3)
  {
    case 0xA0000u:
      return **(a1 + 1) & 0xFFF;
    case 0x60000u:
      v5 = *(a1 + 1);

      return sub_100263504(v5);
    case 0x10000u:
      return **(a1 + 1) & 0xFFF;
  }

  if ((v2 & 0x170000) == 0x40000 || (v2 & 0x1E0000) == 0x20000 || v3 == 917504)
  {
    return v2 & 0xFFF;
  }

  v6 = HIWORD(v3);
  if (v6 > 8)
  {
    if (v6 <= 12)
    {
      if (v6 == 9)
      {
        return **(a1 + 1) & 0xFFF;
      }

      if (v6 == 11)
      {
        v12 = *(a1 + 1);
        v8 = *v12;
        v13 = v12[1];
        if (*v12 != v13)
        {
          if ((-858993459 * ((v13 - v8) >> 4)) <= a2)
          {
            sub_1001FA81C(v18, "i < (int)vv.size()");
            sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1985);
          }

          v10 = a2 & ~(a2 >> 31);
          v11 = 80;
          goto LABEL_26;
        }

        if ((v2 & 0x80000000) == 0)
        {
          sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1982);
        }

        return v2 & 0xFFF;
      }

      goto LABEL_42;
    }

    if (v6 == 13)
    {
      v16 = *(a1 + 1);
      v8 = *v16;
      v17 = v16[1];
      if (*v16 != v17)
      {
        if (((v17 - v8) >> 6) <= a2)
        {
          sub_1001FA81C(v18, "i < (int)vv.size()");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2021);
        }

        v14 = (a2 & ~(a2 >> 31)) << 6;
        return *(v8 + v14) & 0xFFF;
      }

      if ((v2 & 0x80000000) == 0)
      {
        sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
        sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2018);
      }
    }

    else
    {
      if (v6 != 15)
      {
        goto LABEL_42;
      }

      v15 = a1[5];
      if (v15)
      {
        if (v15 <= a2)
        {
          sub_1001FA81C(v18, "i < sz.height");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2009);
        }

        return *(*(a1 + 1) + 96 * (a2 & ~(a2 >> 31))) & 0xFFF;
      }

      if ((v2 & 0x80000000) == 0)
      {
        sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
        sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2006);
      }
    }

    return v2 & 0xFFF;
  }

  if (v6 <= 6)
  {
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v6 == 5)
    {
      v7 = *(a1 + 1);
      v8 = *v7;
      v9 = v7[1];
      if (*v7 != v9)
      {
        if ((-1431655765 * ((v9 - v8) >> 5)) <= a2)
        {
          sub_1001FA81C(v18, "i < (int)vv.size()");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1997);
        }

        v10 = a2 & ~(a2 >> 31);
        v11 = 96;
LABEL_26:
        v14 = v10 * v11;
        return *(v8 + v14) & 0xFFF;
      }

      if ((v2 & 0x80000000) == 0)
      {
        sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
        sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1994);
      }

      return v2 & 0xFFF;
    }

LABEL_42:
    sub_1001FA81C(v18, "Unknown/unsupported array type");
    sub_1002A8980(-213, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2034);
  }

  if (v6 != 7)
  {
    return **(a1 + 1) & 0xFFF;
  }

  return *(*(a1 + 1) + 24);
}

void sub_100271FE8(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  v6 = *a1 & 0x1F0000;
  if (v6 == 0x10000)
  {
    v10 = *(a1 + 1);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = *(a1 + 1);

      sub_1002AF980(v20, v5 & 0x3000000, 0, a3);
      return;
    }

    LODWORD(v33) = a2;
    HIDWORD(v33) = a2 + 1;
    v32 = 0x7FFFFFFF80000000;
    sub_100269C44(v24, v10, &v33, &v32);
    sub_1002AF980(v24, v5 & 0x3000000, 0, a3);
    if (v28)
    {
      if (atomic_fetch_add((v28 + 20), 0xFFFFFFFF) == 1)
      {
        v11 = v28;
        if (v28)
        {
          v28 = 0;
          v12 = *(v11 + 8);
          if (!v12)
          {
            v12 = v27;
            if (!v27)
            {
              v12 = sub_100268CC8();
            }
          }

          (*(*v12 + 48))(v12, v11);
        }
      }
    }

    v28 = 0;
    v25 = 0u;
    v26 = 0u;
    if (SHIDWORD(v24[0]) >= 1)
    {
      v13 = 0;
      v14 = v29;
      do
      {
        *(v14 + 4 * v13++) = 0;
      }

      while (v13 < SHIDWORD(v24[0]));
    }

    v15 = v30;
    if (v30 == v31)
    {
      return;
    }

LABEL_26:
    j__free(v15);
    return;
  }

  if (v6 == 720896)
  {
    v8 = *(a1 + 1);
    if ((a2 & 0x80000000) != 0 || (-858993459 * ((v8[1] - *v8) >> 4)) <= a2)
    {
      v24[0] = 0;
      v24[1] = 0;
      qmemcpy(sub_1002A80E0(v24, 27), "0 <= i && i < (int)v.size()", 27);
      sub_1002A8980(-215, v24, "getUMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1339);
    }

    v7 = *v8 + 80 * a2;
    *a3 = *v7;
    *(a3 + 16) = *(v7 + 16);
    *(a3 + 24) = *(v7 + 24);
    v9 = *(v7 + 32);
    *(a3 + 32) = v9;
    *(a3 + 40) = *(v7 + 40);
    *(a3 + 48) = a3 + 8;
    *(a3 + 64) = 0;
    *(a3 + 56) = a3 + 64;
    *(a3 + 72) = 0;
    if (v9)
    {
      atomic_fetch_add((v9 + 16), 1u);
    }

    if (*(v7 + 4) > 2)
    {
      *(a3 + 4) = 0;
      sub_1002B07FC(a3, v7);
      return;
    }

    goto LABEL_45;
  }

  if (v6 != 655360)
  {
    sub_10026E0C8(a1, a2, v24);
    sub_1002AF980(v24, v5 & 0x3000000, 0, a3);
    if (v28)
    {
      if (atomic_fetch_add((v28 + 20), 0xFFFFFFFF) == 1)
      {
        v16 = v28;
        if (v28)
        {
          v28 = 0;
          v17 = *(v16 + 8);
          if (!v17)
          {
            v17 = v27;
            if (!v27)
            {
              v17 = sub_100268CC8();
            }
          }

          (*(*v17 + 48))(v17, v16);
        }
      }
    }

    v28 = 0;
    v25 = 0u;
    v26 = 0u;
    if (SHIDWORD(v24[0]) >= 1)
    {
      v18 = 0;
      v19 = v29;
      do
      {
        *(v19 + 4 * v18++) = 0;
      }

      while (v18 < SHIDWORD(v24[0]));
    }

    v15 = v30;
    if (v30 == v31)
    {
      return;
    }

    goto LABEL_26;
  }

  v7 = *(a1 + 1);
  if ((v3 & 0x80000000) == 0)
  {
    LODWORD(v24[0]) = v3;
    HIDWORD(v24[0]) = v3 + 1;
    v33 = 0x7FFFFFFF80000000;
    sub_1002B10E8(a3, v7, v24, &v33);
    return;
  }

  *a3 = *v7;
  *(a3 + 16) = *(v7 + 16);
  *(a3 + 24) = *(v7 + 24);
  v21 = *(v7 + 32);
  *(a3 + 32) = v21;
  *(a3 + 40) = *(v7 + 40);
  *(a3 + 48) = a3 + 8;
  *(a3 + 64) = 0;
  *(a3 + 56) = a3 + 64;
  *(a3 + 72) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 16), 1u);
  }

  if (*(v7 + 4) <= 2)
  {
LABEL_45:
    v22 = *(v7 + 56);
    v23 = *(a3 + 56);
    *v23 = *v22;
    v23[1] = v22[1];
    return;
  }

  *(a3 + 4) = 0;

  sub_1002B07FC(a3, v7);
}

void sub_100272444(int *a1, char **a2)
{
  v4 = *a1;
  v5 = HIWORD(*a1) & 0x1F;
  if (v5 > 4)
  {
    if ((HIWORD(*a1) & 0x1F) <= 0xAu)
    {
      if (v5 == 5)
      {
        v27 = *(a1 + 1);
        v29 = *v27;
        v28 = v27[1];
        v30 = v28 - *v27;
        v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 5);
        v32 = *a2;
        v33 = a2[1];
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a2) >> 5);
        if (v31 <= v34)
        {
          if (v31 < v34)
          {
            v85 = &v32[v30];
            while (v33 != v85)
            {
              v33 -= 96;
              sub_10027BD1C(a2, v33);
            }

            a2[1] = v85;
          }
        }

        else
        {
          sub_10027B954(a2, v31 - v34);
        }

        if (v28 != v29)
        {
          v86 = 0;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          do
          {
            sub_10026A244(&(*a2)[v86], *v27 + v86);
            v86 += 96;
            --v31;
          }

          while (v31);
        }
      }

      else
      {
        if (v5 != 6)
        {
          goto LABEL_51;
        }

        v18 = *(a1 + 1);
        *v138 = 1124007936;
        memset(&v138[4], 0, 60);
        v139 = &v138[8];
        v140 = &v141;
        v141 = 0;
        v142 = 0;
        (*(**v18 + 24))(*v18, v18, v138, 0xFFFFFFFFLL);
        v19 = *v139;
        v20 = a2[1];
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 5);
        if (v19 <= v21)
        {
          if (v19 < v21)
          {
            v119 = &(*a2)[96 * v19];
            while (v20 != v119)
            {
              v20 -= 96;
              sub_10027BD1C(a2, v20);
            }

            a2[1] = v119;
          }
        }

        else
        {
          sub_10027B954(a2, v19 - v21);
        }

        if (v19 >= 1)
        {
          v120 = 0;
          do
          {
            v121 = v120 + 1;
            v144[0] = v120;
            v144[1] = v120 + 1;
            v143 = 0x7FFFFFFF80000000;
            sub_100269C44(v132, v138, v144, &v143);
            v123.n128_f64[0] = sub_10025DAEC(&(*a2)[96 * v120], v132, v122);
            if (v134)
            {
              if (atomic_fetch_add((v134 + 20), 0xFFFFFFFF) == 1)
              {
                v124 = v134;
                if (v134)
                {
                  v134 = 0;
                  v125 = *(v124 + 8);
                  if (!v125)
                  {
                    v125 = v133;
                    if (!v133)
                    {
                      v125 = sub_100268CC8();
                    }
                  }

                  (*(*v125 + 48))(v125, v124, v123);
                }
              }
            }

            v134 = 0;
            memset(&v132[1], 0, 32);
            if (SDWORD1(v132[0]) >= 1)
            {
              v126 = 0;
              v127 = v135;
              do
              {
                *(v127 + 4 * v126++) = 0;
              }

              while (v126 < SDWORD1(v132[0]));
            }

            if (v136 != &v137)
            {
              j__free(v136);
            }

            v120 = v121;
          }

          while (v121 != v19);
        }

        if (*&v138[56])
        {
          if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
          {
            v128 = *&v138[56];
            if (*&v138[56])
            {
              *&v138[56] = 0;
              v129 = *(v128 + 8);
              if (!v129)
              {
                v129 = *&v138[48];
                if (!*&v138[48])
                {
                  v129 = sub_100268CC8();
                }
              }

              (*(*v129 + 48))(v129, v128);
            }
          }
        }

        *&v138[56] = 0;
        memset(&v138[16], 0, 32);
        if (*&v138[4] >= 1)
        {
          v130 = 0;
          v131 = v139;
          do
          {
            v131[v130++] = 0;
          }

          while (v130 < *&v138[4]);
        }

        if (v140 != &v141)
        {
          j__free(v140);
        }
      }

      return;
    }

    if (v5 == 11)
    {
      v35 = *(a1 + 1);
      v37 = *v35;
      v36 = v35[1];
      v38 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - *v35) >> 4);
      v39 = a2[1];
      v40 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *a2) >> 5);
      if (v38 <= v40)
      {
        if (v38 < v40)
        {
          v87 = &(*a2)[0xCCCCCCCCCCCCCCE0 * ((v36 - *v35) >> 4)];
          while (v39 != v87)
          {
            v39 -= 96;
            sub_10027BD1C(a2, v39);
          }

          a2[1] = v87;
        }
      }

      else
      {
        sub_10027B954(a2, v38 - v40);
      }

      if (v36 != v37)
      {
        v88 = 0;
        if (v38 <= 1)
        {
          v38 = 1;
        }

        do
        {
          sub_1002B1E74(*v35 + 80 * v88, v4 & 0x3000000, v138);
          v90.n128_f64[0] = sub_10025DAEC(&(*a2)[96 * v88], v138, v89);
          if (*&v138[56])
          {
            if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
            {
              v91 = *&v138[56];
              if (*&v138[56])
              {
                *&v138[56] = 0;
                v92 = *(v91 + 8);
                if (!v92)
                {
                  v92 = *&v138[48];
                  if (!*&v138[48])
                  {
                    v92 = sub_100268CC8();
                  }
                }

                (*(*v92 + 48))(v92, v91, v90);
              }
            }
          }

          *&v138[56] = 0;
          memset(&v138[16], 0, 32);
          if (*&v138[4] >= 1)
          {
            v93 = 0;
            v94 = v139;
            do
            {
              v94[v93++] = 0;
            }

            while (v93 < *&v138[4]);
          }

          if (v140 != &v141)
          {
            j__free(v140);
          }

          ++v88;
        }

        while (v88 != v38);
      }

      return;
    }

    if (v5 != 14)
    {
      if (v5 != 15)
      {
        goto LABEL_51;
      }

      v10 = *(a1 + 1);
      v11 = a1[5];
      v12 = a2[1];
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a2) >> 5);
      if (v11 <= v13)
      {
        if (v11 < v13)
        {
          v105 = &(*a2)[96 * v11];
          while (v12 != v105)
          {
            v12 -= 96;
            sub_10027BD1C(a2, v12);
          }

          a2[1] = v105;
        }
      }

      else
      {
        sub_10027B954(a2, v11 - v13);
      }

      if (v11)
      {
        v106 = 0;
        do
        {
          sub_10026A244(&(*a2)[v106], v10);
          v10 += 96;
          v106 += 96;
          --v11;
        }

        while (v11);
      }

      return;
    }

LABEL_21:
    v22 = a1[5];
    v23 = a2[1];
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a2) >> 5);
    if (v22 <= v24)
    {
      if (v22 < v24)
      {
        v41 = &(*a2)[96 * v22];
        while (v23 != v41)
        {
          v23 -= 96;
          sub_10027BD1C(a2, v23);
        }

        a2[1] = v41;
      }
    }

    else
    {
      sub_10027B954(a2, v22 - v24);
    }

    if (v22)
    {
      v42 = 0;
      v43 = (((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3);
      do
      {
        sub_10000A690(v138, 1, a1[4], *a1 & 0xFFF, *(a1 + 1) + v42 * v43 * a1[4], 0);
        v45.n128_f64[0] = sub_10025DAEC(&(*a2)[96 * v42], v138, v44);
        if (*&v138[56])
        {
          if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
          {
            v46 = *&v138[56];
            if (*&v138[56])
            {
              *&v138[56] = 0;
              v47 = *(v46 + 8);
              if (!v47)
              {
                v47 = *&v138[48];
                if (!*&v138[48])
                {
                  v47 = sub_100268CC8();
                }
              }

              (*(*v47 + 48))(v47, v46, v45);
            }
          }
        }

        *&v138[56] = 0;
        memset(&v138[16], 0, 32);
        if (*&v138[4] >= 1)
        {
          v48 = 0;
          v49 = v139;
          do
          {
            v49[v48++] = 0;
          }

          while (v48 < *&v138[4]);
        }

        if (v140 != &v141)
        {
          j__free(v140);
        }

        ++v42;
      }

      while (v42 != v22);
    }

    return;
  }

  if ((HIWORD(*a1) & 0x1F) <= 1u)
  {
    if (!v5)
    {
      v26 = *a2;
      v25 = a2[1];
      if (v25 != *a2)
      {
        do
        {
          v25 -= 96;
          sub_10027BD1C(a2, v25);
        }

        while (v25 != v26);
      }

      a2[1] = v26;
      return;
    }

    v14 = *(a1 + 1);
    v15 = **(v14 + 8);
    v16 = a2[1];
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a2) >> 5);
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        v55 = &(*a2)[96 * v15];
        while (v16 != v55)
        {
          v16 -= 96;
          sub_10027BD1C(a2, v16);
        }

        a2[1] = v55;
      }
    }

    else
    {
      sub_10027B954(a2, v15 - v17);
    }

    if (v15 < 1)
    {
      return;
    }

    v56 = 0;
    while (1)
    {
      v57 = v14[1];
      if (v57 == 2)
      {
        sub_10000A690(v138, 1, v14[3], *v14 & 0xFFF, *(v14 + 2) + **(v14 + 9) * v56, 0);
      }

      else
      {
        v59 = v57 - 1;
        v60 = *v14;
        v62 = *(v14 + 8);
        v61 = *(v14 + 9);
        v63 = *(v14 + 2) + *v61 * v56;
        memset(&v138[20], 0, 44);
        *&v138[4] = 0u;
        v139 = &v138[8];
        v140 = &v141;
        v141 = 0;
        v142 = 0;
        *v138 = v60 & 0xFFF | 0x42FF0000;
        *&v138[16] = v63;
        *&v138[24] = v63;
        sub_100269568(v138, v59, v62 + 4, (v61 + 1), 1);
        v64 = v139;
        if (*&v138[4] < 1)
        {
          v66 = 0;
        }

        else
        {
          v65 = 0;
          while (v139[v65] <= 1)
          {
            if (*&v138[4] == ++v65)
            {
              LODWORD(v65) = *&v138[4];
              break;
            }
          }

          v66 = v65;
        }

        v67 = v140;
        v68 = *&v138[4] - 1;
        v69 = v140 + 8 * *&v138[4] - 8;
        while (v68 > v66)
        {
          v70 = *v69 * v139[v68];
          v71 = *--v69;
          --v68;
          if (v70 < v71)
          {
            *v138 &= ~0x4000u;
            if (*&v138[4] < 3)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }
        }

        *v138 = *v138 & 0xFFFFBFFF | 0x4000;
        if (*&v138[4] < 3)
        {
          goto LABEL_75;
        }

LABEL_74:
        v58 = NAN;
        *&v138[8] = -1;
LABEL_75:
        if (*&v138[56])
        {
          v72 = *(*&v138[56] + 24);
          *&v138[16] = v72;
          *&v138[24] = v72;
          if (v72)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v72 = *&v138[16];
          if (*&v138[16])
          {
LABEL_77:
            v73 = *v139;
            v74 = *&v138[24] + *v140 * v73;
            *&v138[40] = v74;
            if (v73 < 1)
            {
              *&v138[32] = v74;
            }

            else
            {
              v75 = (*&v138[4] - 1);
              v76 = v72 + *(v140 + v75) * v139[v75];
              *&v138[32] = v76;
              if (*&v138[4] >= 2)
              {
                do
                {
                  v77 = *v64++;
                  v78 = v77 - 1;
                  v79 = *v67++;
                  v76 += v79 * v78;
                  --v75;
                }

                while (v75);
                *&v138[32] = v76;
              }
            }

            goto LABEL_84;
          }
        }

        *&v138[32] = 0;
        *&v138[40] = 0;
      }

LABEL_84:
      v80.n128_f64[0] = sub_10025DAEC(&(*a2)[96 * v56], v138, v58);
      if (*&v138[56])
      {
        if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
        {
          v81 = *&v138[56];
          if (*&v138[56])
          {
            *&v138[56] = 0;
            v82 = *(v81 + 8);
            if (!v82)
            {
              v82 = *&v138[48];
              if (!*&v138[48])
              {
                v82 = sub_100268CC8();
              }
            }

            (*(*v82 + 48))(v82, v81, v80);
          }
        }
      }

      *&v138[56] = 0;
      memset(&v138[16], 0, 32);
      if (*&v138[4] >= 1)
      {
        v83 = 0;
        v84 = v139;
        do
        {
          v84[v83++] = 0;
        }

        while (v83 < *&v138[4]);
      }

      if (v140 != &v141)
      {
        j__free(v140);
      }

      if (++v56 == v15)
      {
        return;
      }
    }
  }

  if (v5 == 2)
  {
    goto LABEL_21;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      v6 = *(a1 + 1);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3);
      v8 = a2[1];
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 5);
      if (v7 <= v9)
      {
        if (v7 < v9)
        {
          v95 = &(*a2)[96 * v7];
          while (v8 != v95)
          {
            v8 -= 96;
            sub_10027BD1C(a2, v8);
          }

          a2[1] = v95;
        }
      }

      else
      {
        sub_10027B954(a2, v7 - v9);
      }

      if (v7 >= 1)
      {
        v96 = 0;
        v97 = v7 & 0x7FFFFFFF;
        do
        {
          v98 = *v6;
          sub_100271154(a1, v96, v132);
          sub_10024255C(v138, v132, v4 & 0xFFF, *(v98 + 24 * v96), 0);
          v100.n128_f64[0] = sub_10025DAEC(&(*a2)[96 * v96], v138, v99);
          if (*&v138[56])
          {
            if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
            {
              v101 = *&v138[56];
              if (*&v138[56])
              {
                *&v138[56] = 0;
                v102 = *(v101 + 8);
                if (!v102)
                {
                  v102 = *&v138[48];
                  if (!*&v138[48])
                  {
                    v102 = sub_100268CC8();
                  }
                }

                (*(*v102 + 48))(v102, v101, v100);
              }
            }
          }

          *&v138[56] = 0;
          memset(&v138[16], 0, 32);
          if (*&v138[4] >= 1)
          {
            v103 = 0;
            v104 = v139;
            do
            {
              v104[v103++] = 0;
            }

            while (v103 < *&v138[4]);
          }

          if (v140 != &v141)
          {
            j__free(v140);
          }

          ++v96;
        }

        while (v96 != v97);
      }

      return;
    }

LABEL_51:
    *v138 = 0;
    *&v138[8] = 0;
    qmemcpy(sub_1002A80E0(v138, 30), "Unknown/unsupported array type", 30);
    sub_1002A8980(-213, v138, "getMatVector", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1460);
  }

  v50 = *(a1 + 1);
  sub_100271154(a1, -1, v138);
  v51 = *v138;
  v52 = *a1;
  v53 = a2[1];
  v54 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a2) >> 5);
  if (*v138 <= v54)
  {
    if (*v138 < v54)
    {
      v107 = &(*a2)[96 * *v138];
      while (v53 != v107)
      {
        v53 -= 96;
        sub_10027BD1C(a2, v53);
      }

      a2[1] = v107;
    }
  }

  else
  {
    sub_10027B954(a2, *v138 - v54);
  }

  if (v51)
  {
    v108 = 0;
    v109 = v52 & 7;
    v110 = 0xFA50u >> (2 * (v52 & 7));
    v111 = ((v52 >> 3) & 0x1FF) + 1;
    v112 = (v111 << (v110 & 3));
    do
    {
      sub_10000A690(v138, 1, v111, v109, *v50 + v108 * v112, 0);
      v114.n128_f64[0] = sub_10025DAEC(&(*a2)[96 * v108], v138, v113);
      if (*&v138[56])
      {
        if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
        {
          v115 = *&v138[56];
          if (*&v138[56])
          {
            *&v138[56] = 0;
            v116 = *(v115 + 8);
            if (!v116)
            {
              v116 = *&v138[48];
              if (!*&v138[48])
              {
                v116 = sub_100268CC8();
              }
            }

            (*(*v116 + 48))(v116, v115, v114);
          }
        }
      }

      *&v138[56] = 0;
      memset(&v138[16], 0, 32);
      if (*&v138[4] >= 1)
      {
        v117 = 0;
        v118 = v139;
        do
        {
          v118[v117++] = 0;
        }

        while (v117 < *&v138[4]);
      }

      if (v140 != &v141)
      {
        j__free(v140);
      }

      ++v108;
    }

    while (v108 != v51);
  }
}

void sub_100273270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_1002732E4(char **result, unint64_t a2)
{
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 5);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10027B954(result, v6);
  }

  else if (!v5)
  {
    v7 = &(*result)[96 * a2];
    while (v3 != v7)
    {
      v3 -= 96;
      sub_10027BD1C(result, v3);
    }

    result[1] = v7;
  }
}

void sub_100273384(unint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    sub_10027BDEC(a1, v7);
  }

  else if (!v6)
  {
    v8 = a1;
      ;
    }

    v8[1] = i;
  }
}

BOOL sub_100273410(uint64_t a1, uint64_t a2)
{
  v3 = *a1 & 0x1F0000;
  v4 = *a2 & 0x1F0000;
  if (v3 == 655360)
  {
    v10 = *(a1 + 8);
    if (v4 == 655360)
    {
      v6 = *(v10 + 48);
      v15 = *(v6 - 1);
      v8 = *(*(a2 + 8) + 48);
      if (v15 != *(v8 - 1))
      {
        return 0;
      }

      if (v15 == 2)
      {
        if (*v6 == *v8)
        {
          return v6[1] == v8[1];
        }

        return 0;
      }

      if (v15 < 1)
      {
        return 1;
      }

      v38 = v15 - 1;
      do
      {
        v40 = *v6++;
        v39 = v40;
        v42 = *v8++;
        v41 = v42;
        v24 = v38-- != 0;
        v43 = v24;
        result = v39 == v41;
      }

      while (v39 == v41 && (v43 & 1) != 0);
    }

    else
    {
      if (v4 != 0x10000)
      {
        if (*(v10 + 4) > 2)
        {
          return 0;
        }

        v17 = *(v10 + 48);
        v13 = *v17;
        v12 = v17[1];
        if (sub_10027377C(a2, -1) <= 2)
        {
          goto LABEL_33;
        }

        return 0;
      }

      v6 = *(v10 + 48);
      v11 = *(v6 - 1);
      v8 = *(*(a2 + 8) + 64);
      if (v11 != *(v8 - 1))
      {
        return 0;
      }

      if (v11 == 2)
      {
        if (*v6 != *v8)
        {
          return 0;
        }

        return v6[1] == v8[1];
      }

      if (v11 < 1)
      {
        return 1;
      }

      v26 = v11 - 1;
      do
      {
        v28 = *v6++;
        v27 = v28;
        v30 = *v8++;
        v29 = v30;
        v24 = v26-- != 0;
        v31 = v24;
        result = v27 == v29;
      }

      while (v27 == v29 && (v31 & 1) != 0);
    }
  }

  else
  {
    if (v3 != 0x10000)
    {
      sub_100271154(a1, -1, &v44);
      v12 = v44;
      v13 = v45;
      if (sub_10027377C(a2, -1) <= 2)
      {
        goto LABEL_33;
      }

      return 0;
    }

    v5 = *(a1 + 8);
    if (v4 != 655360)
    {
      if (v4 == 0x10000)
      {
        v6 = *(v5 + 64);
        v7 = *(v6 - 1);
        v8 = *(*(a2 + 8) + 64);
        if (v7 == *(v8 - 1))
        {
          if (v7 == 2)
          {
            if (*v6 != *v8)
            {
              return 0;
            }

            return v6[1] == v8[1];
          }

          if (v7 >= 1)
          {
            v19 = v7 - 1;
            do
            {
              v21 = *v6++;
              v20 = v21;
              v23 = *v8++;
              v22 = v23;
              v24 = v19-- != 0;
              v25 = v24;
              result = v20 == v22;
            }

            while (v20 == v22 && (v25 & 1) != 0);
            return result;
          }

          return 1;
        }

        return 0;
      }

      if (*(v5 + 4) > 2)
      {
        return 0;
      }

      v16 = *(v5 + 64);
      v13 = *v16;
      v12 = v16[1];
      if (sub_10027377C(a2, -1) <= 2)
      {
LABEL_33:
        sub_100271154(a2, -1, &v44);
        return v12 == v44 && v13 == v45;
      }

      return 0;
    }

    v6 = *(v5 + 64);
    v14 = *(v6 - 1);
    v8 = *(*(a2 + 8) + 48);
    if (v14 != *(v8 - 1))
    {
      return 0;
    }

    if (v14 == 2)
    {
      if (*v6 != *v8)
      {
        return 0;
      }

      return v6[1] == v8[1];
    }

    if (v14 < 1)
    {
      return 1;
    }

    v32 = v14 - 1;
    do
    {
      v34 = *v6++;
      v33 = v34;
      v36 = *v8++;
      v35 = v36;
      v24 = v32-- != 0;
      v37 = v24;
      result = v33 == v35;
    }

    while (v33 == v35 && (v37 & 1) != 0);
  }

  return result;
}

uint64_t sub_10027377C(uint64_t a1, signed int a2)
{
  result = *(a1 + 2) & 0x1F;
  switch(result)
  {
    case 0:
      return result;
    case 1:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v12 = sub_1002A80E0(&v16, 5);
        *v12 = 540811369;
        *(v12 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1817);
      }

      return *(*(a1 + 8) + 4);
    case 2:
    case 14:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v4 = sub_1002A80E0(&v16, 5);
        *v4 = 540811369;
        *(v4 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1835);
      }

      return 2;
    case 3:
    case 12:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v5 = sub_1002A80E0(&v16, 5);
        *v5 = 540811369;
        *(v5 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1841);
      }

      return 2;
    case 4:
      if (a2 < 0)
      {
        goto LABEL_32;
      }

      if ((-1431655765 * ((*(*(a1 + 8) + 8) - **(a1 + 8)) >> 3)) <= a2)
      {
        sub_1001FA81C(&v16, "i < (int)vv.size()");
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1853);
      }

      return 2;
    case 5:
      if (a2 < 0)
      {
        goto LABEL_32;
      }

      v13 = *(a1 + 8);
      v7 = *v13;
      if ((-1431655765 * ((v13[1] - *v13) >> 5)) <= a2)
      {
        sub_1001FA81C(&v16, "i < (int)vv.size()");
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1862);
      }

      v8 = 96;
      goto LABEL_27;
    case 6:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v15 = sub_1002A80E0(&v16, 5);
        *v15 = 540811369;
        *(v15 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1823);
      }

      return *(*(a1 + 8) + 20);
    case 7:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v14 = sub_1002A80E0(&v16, 5);
        *v14 = 540811369;
        *(v14 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1889);
      }

      return 2;
    case 8:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v9 = sub_1002A80E0(&v16, 5);
        *v9 = 540811369;
        *(v9 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1901);
      }

      return 2;
    case 9:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v11 = sub_1002A80E0(&v16, 5);
        *v11 = 540811369;
        *(v11 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1895);
      }

      return 2;
    case 10:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v10 = sub_1002A80E0(&v16, 5);
        *v10 = 540811369;
        *(v10 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1829);
      }

      return *(*(a1 + 8) + 4);
    case 11:
      if (a2 < 0)
      {
        goto LABEL_32;
      }

      v6 = *(a1 + 8);
      v7 = *v6;
      if ((-858993459 * ((v6[1] - *v6) >> 4)) <= a2)
      {
        sub_1001FA81C(&v16, "i < (int)vv.size()");
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1882);
      }

      v8 = 80;
LABEL_27:
      result = *(v7 + a2 * v8 + 4);
      break;
    case 15:
      if (a2 < 0)
      {
LABEL_32:
        result = 1;
      }

      else
      {
        if (*(a1 + 20) <= a2)
        {
          sub_1001FA81C(&v16, "i < sz.height");
          sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1872);
        }

        result = *(*(a1 + 8) + 96 * a2 + 4);
      }

      break;
    default:
      v16 = 0;
      v17 = 0;
      qmemcpy(sub_1002A80E0(&v16, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1905);
  }

  return result;
}

uint64_t sub_100273E70(uint64_t a1, int a2)
{
  v3 = *a1 & 0x1F0000;
  if (v3 < 0xA0000)
  {
    if (v3 == 0x10000)
    {
      if ((a2 & 0x80000000) == 0)
      {
        v58 = 0;
        v59 = 0;
        v48 = sub_1002A80E0(&v58, 5);
        *v48 = 540811369;
        *(v48 + 4) = 48;
        sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1915);
      }

      v6 = *(a1 + 8);
      v49 = *(v6 + 4);
      if (v49 < 3)
      {
        return *(v6 + 12) * *(v6 + 8);
      }

      v50 = *(v6 + 64);
      v51 = (v50 + 4);
      v52 = 1;
      v53 = v49 & 0x7FFFFFFE;
      v54 = 1;
      do
      {
        v52 *= *(v51 - 1);
        v54 *= *v51;
        v51 += 2;
        v53 -= 2;
      }

      while (v53);
      result = v54 * v52;
      v55 = v49 - (v49 & 0x7FFFFFFE);
      if (v55)
      {
        v56 = (v50 + 8 * ((v49 >> 1) & 0x3FFFFFFF));
        do
        {
          v57 = *v56++;
          result *= v57;
          --v55;
        }

        while (v55);
      }
    }

    else
    {
      if (v3 != 327680)
      {
        goto LABEL_50;
      }

      v16 = *(a1 + 8);
      result = 0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 5);
      if (a2 < 0)
      {
        return result;
      }

      if (result <= a2)
      {
        v58 = 0;
        v59 = 0;
        v17 = sub_1002A80E0(&v58, 18);
        *(v17 + 16) = 10536;
        *v17 = *"i < (int)vv.size()";
        sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1931);
      }

      v6 = *v16 + 96 * a2;
      v18 = *(v6 + 4);
      if (v18 < 3)
      {
        return *(v6 + 12) * *(v6 + 8);
      }

      v19 = *(v6 + 64);
      v20 = (v19 + 4);
      v21 = 1;
      v22 = v18 & 0x7FFFFFFE;
      v23 = 1;
      do
      {
        v21 *= *(v20 - 1);
        v23 *= *v20;
        v20 += 2;
        v22 -= 2;
      }

      while (v22);
      result = v23 * v21;
      v24 = v18 - (v18 & 0x7FFFFFFE);
      if (v24)
      {
        v25 = (v19 + 8 * ((v18 >> 1) & 0x3FFFFFFF));
        do
        {
          v26 = *v25++;
          result *= v26;
          --v24;
        }

        while (v24);
      }
    }
  }

  else
  {
    switch(v3)
    {
      case 0xA0000u:
        if ((a2 & 0x80000000) == 0)
        {
          v58 = 0;
          v59 = 0;
          v27 = sub_1002A80E0(&v58, 5);
          *v27 = 540811369;
          *(v27 + 4) = 48;
          sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1921);
        }

        v6 = *(a1 + 8);
        v28 = *(v6 + 4);
        if (v28 < 3)
        {
          return *(v6 + 12) * *(v6 + 8);
        }

        v29 = *(v6 + 48);
        v30 = (v29 + 4);
        v31 = 1;
        v32 = v28 & 0x7FFFFFFE;
        v33 = 1;
        do
        {
          v31 *= *(v30 - 1);
          v33 *= *v30;
          v30 += 2;
          v32 -= 2;
        }

        while (v32);
        result = v33 * v31;
        v34 = v28 - (v28 & 0x7FFFFFFE);
        if (v34)
        {
          v35 = (v29 + 8 * ((v28 >> 1) & 0x3FFFFFFF));
          do
          {
            v36 = *v35++;
            result *= v36;
            --v34;
          }

          while (v34);
        }

        break;
      case 0xB0000u:
        v37 = *(a1 + 8);
        result = 0xCCCCCCCCCCCCCCCDLL * ((v37[1] - *v37) >> 4);
        if (a2 < 0)
        {
          return result;
        }

        if (result <= a2)
        {
          v58 = 0;
          v59 = 0;
          v38 = sub_1002A80E0(&v58, 18);
          *(v38 + 16) = 10536;
          *v38 = *"i < (int)vv.size()";
          sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1951);
        }

        v6 = *v37 + 80 * a2;
        v39 = *(v6 + 4);
        if (v39 < 3)
        {
          return *(v6 + 12) * *(v6 + 8);
        }

        v40 = *(v6 + 48);
        v41 = (v40 + 4);
        v42 = 1;
        v43 = v39 & 0x7FFFFFFE;
        v44 = 1;
        do
        {
          v42 *= *(v41 - 1);
          v44 *= *v41;
          v41 += 2;
          v43 -= 2;
        }

        while (v43);
        result = v44 * v42;
        v45 = v39 - (v39 & 0x7FFFFFFE);
        if (v45)
        {
          v46 = (v40 + 8 * ((v39 >> 1) & 0x3FFFFFFF));
          do
          {
            v47 = *v46++;
            result *= v47;
            --v45;
          }

          while (v45);
        }

        break;
      case 0xF0000u:
        result = *(a1 + 20);
        if (a2 < 0)
        {
          return result;
        }

        v5 = *(a1 + 8);
        if (result <= a2)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 13), "i < sz.height", 13);
          sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1941);
        }

        v6 = v5 + 96 * a2;
        v7 = *(v6 + 4);
        if (v7 >= 3)
        {
          v8 = *(v6 + 64);
          v9 = (v8 + 4);
          v10 = 1;
          v11 = v7 & 0x7FFFFFFE;
          v12 = 1;
          do
          {
            v10 *= *(v9 - 1);
            v12 *= *v9;
            v9 += 2;
            v11 -= 2;
          }

          while (v11);
          result = v12 * v10;
          v13 = v7 - (v7 & 0x7FFFFFFE);
          if (v13)
          {
            v14 = (v8 + 8 * ((v7 >> 1) & 0x3FFFFFFF));
            do
            {
              v15 = *v14++;
              result *= v15;
              --v13;
            }

            while (v13);
          }

          return result;
        }

        return *(v6 + 12) * *(v6 + 8);
      default:
LABEL_50:
        sub_100271154(a1, a2, &v58);
        return SHIDWORD(v58) * v58;
    }
  }

  return result;
}

BOOL sub_1002743D4(uint64_t a1)
{
  v1 = *(a1 + 2) & 0x1F;
  v2 = a1;
  result = 0;
  switch(v1)
  {
    case 0:
      return 1;
    case 1:
      v6 = *(v2 + 8);
      if (!*(v6 + 16))
      {
        return 1;
      }

      v7 = *(v6 + 4);
      if (v7 < 3)
      {
        goto LABEL_16;
      }

      v17 = *(v6 + 64);
      v18 = (v17 + 4);
      v19 = 1;
      v20 = v7 & 0x7FFFFFFE;
      v21 = 1;
      do
      {
        v19 *= *(v18 - 1);
        v21 *= *v18;
        v18 += 2;
        v20 -= 2;
      }

      while (v20);
      v13 = v21 * v19;
      v22 = v7 - (v7 & 0x7FFFFFFE);
      if (v22)
      {
        v23 = (v17 + 8 * ((v7 >> 1) & 0x3FFFFFFF));
        do
        {
          v24 = *v23++;
          v13 *= v24;
          --v22;
        }

        while (v22);
      }

      return !v7 || v13 == 0;
    case 2:
    case 6:
    case 14:
      return result;
    case 3:
    case 4:
    case 5:
    case 11:
    case 13:
      return **(v2 + 8) == *(*(v2 + 8) + 8);
    case 7:
      v2 = *(v2 + 8);
      if (*(v2 + 16))
      {
        return *(v2 + 20) == 0;
      }

      return 1;
    case 8:
    case 9:
      v5 = *(*(v2 + 8) + 24);
      return v5 == 0;
    case 10:
      v6 = *(v2 + 8);
      if (!*(v6 + 32))
      {
        return 1;
      }

      v7 = *(v6 + 4);
      if (v7 < 3)
      {
LABEL_16:
        v13 = *(v6 + 12) * *(v6 + 8);
      }

      else
      {
        v8 = *(v6 + 48);
        v9 = (v8 + 4);
        v10 = 1;
        v11 = v7 & 0x7FFFFFFE;
        v12 = 1;
        do
        {
          v10 *= *(v9 - 1);
          v12 *= *v9;
          v9 += 2;
          v11 -= 2;
        }

        while (v11);
        v13 = v12 * v10;
        v14 = v7 - (v7 & 0x7FFFFFFE);
        if (v14)
        {
          v15 = (v8 + 8 * ((v7 >> 1) & 0x3FFFFFFF));
          do
          {
            v16 = *v15++;
            v13 *= v16;
            --v14;
          }

          while (v14);
        }
      }

      return !v7 || v13 == 0;
    case 12:
      v5 = *(*(v2 + 8) + 8);
      return v5 == 0;
    case 15:
      return *(v2 + 20) == 0;
    default:
      v25[0] = 0;
      v25[1] = 0;
      qmemcpy(sub_1002A80E0(v25, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, v25, "empty", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2117);
  }
}

uint64_t sub_100274628(uint64_t a1, int a2)
{
  v2 = *a1 & 0x1F0000;
  if (v2 == 655360)
  {
    if ((a2 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (v2 != 0x10000)
  {
    v4 = *a1 & 0x1B0000;
    v5 = v2 == 786432 || v4 == 0;
    if (v5 || v2 == 917504 || v4 == 0x20000 || v2 == 196608)
    {
      return 1;
    }

    HIDWORD(v7) = v2 - 327680;
    LODWORD(v7) = v2 - 327680;
    v6 = v7 >> 17;
    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 5)
        {
          if (a2 < 1 || *(a1 + 20) <= a2)
          {
            v13 = 0;
            v14 = 0;
            qmemcpy(sub_1002A80E0(&v13, 22), "i > 0 && i < sz.height", 22);
            sub_1002A8980(-215, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2145);
          }

          v8 = *(a1 + 8) + 96 * a2;
          return (*(v8 + 1) >> 6) & 1;
        }

        goto LABEL_26;
      }

      v12 = *(a1 + 8);
      v10 = *v12;
      if (0xCCCCCCCCCCCCCCCDLL * ((v12[1] - *v12) >> 4) <= a2)
      {
        sub_1001FA81C(&v13, "(size_t)i < vv.size()");
        sub_1002A8980(-215, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2152);
      }

      v11 = 80;
    }

    else
    {
      if (v6)
      {
        if (v6 == 2)
        {
          if ((a2 & 0x80000000) == 0)
          {
            return 1;
          }

          goto LABEL_19;
        }

LABEL_26:
        v13 = 0;
        v14 = 0;
        qmemcpy(sub_1002A80E0(&v13, 30), "Unknown/unsupported array type", 30);
        sub_1002A8980(-213, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2159);
      }

      v9 = *(a1 + 8);
      v10 = *v9;
      if (0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 5) <= a2)
      {
        sub_1001FA81C(&v13, "(size_t)i < vv.size()");
        sub_1002A8980(-215, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2138);
      }

      v11 = 96;
    }

    v8 = v10 + a2 * v11;
    return (*(v8 + 1) >> 6) & 1;
  }

  if ((a2 & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_19:
  v8 = *(a1 + 8);
  return (*(v8 + 1) >> 6) & 1;
}

void sub_100274944(uint64_t a1, unsigned int *a2)
{
  v2 = *a1 & 0x1F0000;
  if (v2 == 0x20000)
  {
    goto LABEL_8;
  }

  if (!v2)
  {

    sub_100274CEC(a2);
    return;
  }

  v3 = *a1 & 0x1D0000;
  if (v3 == 786432 || v3 == 0x10000)
  {
LABEL_8:
    sub_10026E0C8(a1, 0xFFFFFFFFLL, v18);
    sub_10022B754(v18, a2);
    if (*&v18[56])
    {
      if (atomic_fetch_add((*&v18[56] + 20), 0xFFFFFFFF) == 1)
      {
        v5 = *&v18[56];
        if (*&v18[56])
        {
          *&v18[56] = 0;
          v6 = *(v5 + 8);
          if (!v6)
          {
            v6 = *&v18[48];
            if (!*&v18[48])
            {
              v6 = sub_100268CC8();
            }
          }

          (*(*v6 + 48))(v6, v5);
        }
      }
    }

    *&v18[56] = 0;
    memset(&v18[16], 0, 32);
    if (*&v18[4] >= 1)
    {
      v7 = 0;
      v8 = v19;
      do
      {
        *&v8[4 * v7++] = 0;
      }

      while (v7 < *&v18[4]);
    }

    v9 = v20;
    if (v20 != v21)
    {
LABEL_19:
      j__free(v9);
    }
  }

  else if (v2 == 655360)
  {
    v12 = *(a1 + 8);

    sub_1002B16DC(v12, a2);
  }

  else
  {
    if (v2 != 393216)
    {
      *v18 = 0;
      *&v18[8] = 0;
      sub_1002A8980(-213, v18, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2350);
    }

    v10 = *(a1 + 8);
    if ((*a2 & 0x1F0000) == 0x10000)
    {
      sub_1002750F0(a2, -1);
      v11 = *(**v10 + 24);

      v11();
    }

    else
    {
      *v18 = 1124007936;
      memset(&v18[4], 0, 60);
      v19 = &v18[8];
      v20 = v21;
      v21[0] = 0;
      v21[1] = 0;
      (*(**v10 + 24))(*v10, v10, v18, 0xFFFFFFFFLL);
      sub_10022B754(v18, a2);
      if (*&v18[56])
      {
        if (atomic_fetch_add((*&v18[56] + 20), 0xFFFFFFFF) == 1)
        {
          v14 = *&v18[56];
          if (*&v18[56])
          {
            *&v18[56] = 0;
            v15 = *(v14 + 8);
            if (!v15)
            {
              v15 = *&v18[48];
              if (!*&v18[48])
              {
                v15 = sub_100268CC8();
              }
            }

            (*(*v15 + 48))(v15, v14);
          }
        }
      }

      *&v18[56] = 0;
      memset(&v18[16], 0, 32);
      if (*&v18[4] >= 1)
      {
        v16 = 0;
        v17 = v19;
        do
        {
          *&v17[4 * v16++] = 0;
        }

        while (v16 < *&v18[4]);
      }

      v9 = v20;
      if (v20 != v21)
      {
        goto LABEL_19;
      }
    }
  }
}

void sub_100274CEC(unsigned int *a1)
{
  v1 = *a1;
  if ((*a1 & 0x40000000) != 0)
  {
    v28 = 0;
    v29 = 0;
    v2 = sub_1002A80E0(&v28, 12);
    *(v2 + 8) = 690513274;
    *v2 = *"!fixedSize()";
    sub_1002A8980(-215, &v28, "release", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2832);
  }

  v3 = HIWORD(v1) & 0x1F;
  if (v3 > 6)
  {
    if ((HIWORD(v1) & 0x1F) <= 9u)
    {
      if (v3 == 7 || v3 == 8 || v3 == 9)
      {
        nullsub_1();
        return;
      }

LABEL_53:
      v28 = 0;
      v29 = 0;
      qmemcpy(sub_1002A80E0(&v28, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &v28, "release", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2897);
    }

    if (v3 == 10)
    {
      v24 = *(a1 + 1);
      v25 = *(v24 + 32);
      if (v25 && atomic_fetch_add((v25 + 16), 0xFFFFFFFF) == 1)
      {
        sub_1002B086C(v24);
      }

      if (*(v24 + 4) >= 1)
      {
        v26 = 0;
        v27 = *(v24 + 48);
        do
        {
          *(v27 + 4 * v26++) = 0;
        }

        while (v26 < *(v24 + 4));
      }

      *(v24 + 32) = 0;
      return;
    }

    if (v3 != 11)
    {
      if (v3 != 13)
      {
        goto LABEL_53;
      }

      v7 = *(a1 + 1);
      v9 = *v7;
      for (i = v7[1]; i != v9; i -= 64)
      {
        nullsub_1();
      }

      v7[1] = v9;
      return;
    }

    v17 = *(a1 + 1);
    v19 = *v17;
    v23 = v17[1];
    if (v23 != *v17)
    {
      do
      {
        v23 = sub_1002B00D8(v23 - 80);
      }

      while (v23 != v19);
    }

LABEL_43:
    v17[1] = v19;
    return;
  }

  if ((HIWORD(v1) & 0x1F) > 2u)
  {
    if (v3 == 3)
    {
      v28 = 0;
      sub_100275370(a1, &v28, v1 & 0xFFF, -1, 0, 0);
      return;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_53;
      }

      v4 = *(a1 + 1);
      v6 = *v4;
      v5 = v4[1];
      if (v5 != *v4)
      {
        do
        {
          v5 -= 96;
          sub_10027BD1C(v4, v5);
        }

        while (v5 != v6);
      }

      v4[1] = v6;
      return;
    }

    v17 = *(a1 + 1);
    v19 = *v17;
    v18 = v17[1];
    if (v18 != *v17)
    {
      v20 = v17[1];
      do
      {
        v22 = *(v20 - 24);
        v20 -= 24;
        v21 = v22;
        if (v22)
        {
          *(v18 - 16) = v21;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v19);
    }

    goto LABEL_43;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_53;
    }

    v10 = *(a1 + 1);
    v11 = *(v10 + 56);
    if (v11)
    {
      if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
      {
        v12 = *(v10 + 56);
        if (v12)
        {
          *(v10 + 56) = 0;
          v13 = *(v12 + 8);
          if (!v13)
          {
            v13 = *(v10 + 48);
            if (!v13)
            {
              v14 = v12;
              v13 = sub_100268CC8();
              v12 = v14;
            }
          }

          (*(*v13 + 48))(v13, v12);
        }
      }
    }

    *(v10 + 56) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    if (*(v10 + 4) >= 1)
    {
      v15 = 0;
      v16 = *(v10 + 64);
      do
      {
        *(v16 + 4 * v15++) = 0;
      }

      while (v15 < *(v10 + 4));
    }
  }
}

uint64_t sub_1002750F0(uint64_t a1, signed int a2)
{
  v2 = *a1 & 0x1F0000;
  if (a2 < 0)
  {
    if (v2 != 0x10000)
    {
      v6 = 0;
      v7 = 0;
      *sub_1002A80E0(&v6, 8) = 0x54414D203D3D206BLL;
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2924);
    }

    return *(a1 + 8);
  }

  else if (v2 == 327680)
  {
    v3 = *(a1 + 8);
    if ((-1431655765 * ((v3[1] - *v3) >> 5)) <= a2)
    {
      v6 = 0;
      v7 = 0;
      v4 = sub_1002A80E0(&v6, 17);
      *(v4 + 16) = 41;
      *v4 = *"i < (int)v.size()";
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2933);
    }

    return *v3 + 96 * a2;
  }

  else
  {
    if (v2 != 983040)
    {
      v6 = 0;
      v7 = 0;
      qmemcpy(sub_1002A80E0(&v6, 41), "k == STD_VECTOR_MAT || k == STD_ARRAY_MAT", 41);
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2928);
    }

    if (*(a1 + 20) <= a2)
    {
      v6 = 0;
      v7 = 0;
      qmemcpy(sub_1002A80E0(&v6, 23), "0 <= i && i < sz.height", 23);
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2939);
    }

    return *(a1 + 8) + 96 * a2;
  }
}

void sub_100275370(int *a1, int32x2_t *a2, uint64_t a3, signed int a4, char a5, unsigned int a6)
{
  v6 = *a1;
  v7 = *a1 & 0x1F0000;
  if (a6)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  if ((v8 & 1) == 0 && a4 < 0 && v7 == 0x10000)
  {
    if ((v6 & 0x40000000) != 0 && (*(*(*(a1 + 1) + 64) + 4) != a2->i32[0] || **(*(a1 + 1) + 64) != a2->i32[1]))
    {
      __src = 0;
      v28 = 0;
      qmemcpy(sub_1002A80E0(&__src, 53), "!fixedSize() || ((Mat*)obj)->size.operator()() == _sz", 53);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2385);
    }

    if (v6 < 0 && (**(a1 + 1) & 0xFFF) != a3)
    {
      __src = 0;
      v28 = 0;
      qmemcpy(sub_1002A80E0(&__src, 44), "!fixedType() || ((Mat*)obj)->type() == mtype", 44);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2386);
    }

    v10 = *(a1 + 1);
    v11 = a2->i32[0];
    v12 = a3 & 0xFFF;
    if (*(v10 + 4) > 2 || *(v10 + 8) != a2->i32[1] || *(v10 + 12) != v11 || (*v10 & 0xFFF) != v12 || !*(v10 + 16))
    {
      __src.i32[0] = a2->i32[1];
      __src.i32[1] = v11;
      sub_100268ED0(v10, 2, &__src, v12);
    }
  }

  else
  {
    if (a4 < 0 && v7 == 655360)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (a4 < 0 && v7 == 589824)
      {
        v16 = v8;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        if ((v6 & 0x40000000) != 0 && (*(*(a1 + 1) + 8) != a2->i32[0] || *(*(a1 + 1) + 4) != a2->i32[1]))
        {
          __src = 0;
          v28 = 0;
          qmemcpy(sub_1002A80E0(&__src, 51), "!fixedSize() || ((cuda::GpuMat*)obj)->size() == _sz", 51);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2399);
        }

        if (v6 < 0 && (**(a1 + 1) & 0xFFF) != a3)
        {
          __src = 0;
          v28 = 0;
          qmemcpy(sub_1002A80E0(&__src, 53), "!fixedType() || ((cuda::GpuMat*)obj)->type() == mtype", 53);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2400);
        }

        sub_1002312E0();
      }

      if (a4 < 0 && v7 == 458752)
      {
        v18 = v8;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        if ((v6 & 0x40000000) != 0 && (*(*(a1 + 1) + 20) != a2->i32[0] || *(*(a1 + 1) + 16) != a2->i32[1]))
        {
          sub_1001FA81C(&__src, "!fixedSize() || ((ogl::Buffer*)obj)->size() == _sz");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2406);
        }

        if (v6 < 0 && *(*(a1 + 1) + 24) != a3)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((ogl::Buffer*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2407);
        }

        sub_100282938();
      }

      if (a4 < 0 && v7 == 0x80000)
      {
        v20 = v8;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        if ((v6 & 0x40000000) != 0 && *(*(a1 + 1) + 4) != __PAIR64__(a2->i32[0], a2->i32[1]))
        {
          sub_1001FA81C(&__src, "!fixedSize() || ((cuda::HostMem*)obj)->size() == _sz");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2413);
        }

        if (v6 < 0 && (**(a1 + 1) & 0xFFF) != a3)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((cuda::HostMem*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2414);
        }

        sub_100231408();
      }

      __src = vrev64_s32(*a2);
      sub_10026BEEC(a1, 2, &__src, a3, a4, a5, a6);
    }

    else
    {
      if ((v6 & 0x40000000) != 0 && (*(*(*(a1 + 1) + 48) + 4) != a2->i32[0] || **(*(a1 + 1) + 48) != a2->i32[1]))
      {
        __src = 0;
        v28 = 0;
        qmemcpy(sub_1002A80E0(&__src, 54), "!fixedSize() || ((UMat*)obj)->size.operator()() == _sz", 54);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2392);
      }

      if (v6 < 0 && (**(a1 + 1) & 0xFFF) != a3)
      {
        __src = 0;
        v28 = 0;
        qmemcpy(sub_1002A80E0(&__src, 45), "!fixedType() || ((UMat*)obj)->type() == mtype", 45);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2393);
      }

      v22 = *(a1 + 1);
      v23 = a2->i32[0];
      v24 = a3 & 0xFFF;
      if (*(v22 + 4) > 2 || *(v22 + 8) != a2->i32[1] || *(v22 + 12) != v23 || (*v22 & 0xFFF) != v24 || !*(v22 + 32))
      {
        __src.i32[0] = a2->i32[1];
        __src.i32[1] = v23;
        sub_1002B018C(v22, 2u, &__src, v24, 0);
      }
    }
  }
}

void sub_10027597C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100275A84(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, signed int a5, char a6, unsigned int a7)
{
  v7 = *a1;
  v8 = *a1 & 0x1F0000;
  if (a7)
  {
    v9 = 1;
  }

  else
  {
    v9 = a6;
  }

  if ((v9 & 1) == 0 && a5 < 0 && v8 == 0x10000)
  {
    if ((v7 & 0x40000000) != 0 && (*(*(*(a1 + 1) + 64) + 4) != a3 || **(*(a1 + 1) + 64) != a2))
    {
      __src = 0;
      v27 = 0;
      qmemcpy(sub_1002A80E0(&__src, 68), "!fixedSize() || ((Mat*)obj)->size.operator()() == Size(_cols, _rows)", 68);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2427);
    }

    if (v7 < 0 && (**(a1 + 1) & 0xFFF) != a4)
    {
      __src = 0;
      v27 = 0;
      qmemcpy(sub_1002A80E0(&__src, 44), "!fixedType() || ((Mat*)obj)->type() == mtype", 44);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2428);
    }

    v11 = *(a1 + 1);
    v12 = a4 & 0xFFF;
    if (*(v11 + 4) > 2 || *(v11 + 8) != __PAIR64__(a3, a2) || (*v11 & 0xFFF) != v12 || !*(v11 + 16))
    {
      __src = __PAIR64__(a3, a2);
      sub_100268ED0(v11, 2, &__src, v12);
    }
  }

  else
  {
    if (a5 < 0 && v8 == 655360)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (a5 < 0 && v8 == 589824)
      {
        v16 = v9;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        if ((v7 & 0x40000000) != 0 && (*(*(a1 + 1) + 8) != a3 || *(*(a1 + 1) + 4) != a2))
        {
          __src = 0;
          v27 = 0;
          qmemcpy(sub_1002A80E0(&__src, 66), "!fixedSize() || ((cuda::GpuMat*)obj)->size() == Size(_cols, _rows)", 66);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2441);
        }

        if (v7 < 0 && (**(a1 + 1) & 0xFFF) != a4)
        {
          __src = 0;
          v27 = 0;
          qmemcpy(sub_1002A80E0(&__src, 53), "!fixedType() || ((cuda::GpuMat*)obj)->type() == mtype", 53);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2442);
        }

        sub_1002312E0();
      }

      if (a5 < 0 && v8 == 458752)
      {
        v18 = v9;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        if ((v7 & 0x40000000) != 0 && (*(*(a1 + 1) + 20) != a3 || *(*(a1 + 1) + 16) != a2))
        {
          sub_1001FA81C(&__src, "!fixedSize() || ((ogl::Buffer*)obj)->size() == Size(_cols, _rows)");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2448);
        }

        if (v7 < 0 && *(*(a1 + 1) + 24) != a4)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((ogl::Buffer*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2449);
        }

        sub_100282938();
      }

      if (a5 < 0 && v8 == 0x80000)
      {
        v20 = v9;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        if ((v7 & 0x40000000) != 0 && *(*(a1 + 1) + 4) != __PAIR64__(a3, a2))
        {
          sub_1001FA81C(&__src, "!fixedSize() || ((cuda::HostMem*)obj)->size() == Size(_cols, _rows)");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2455);
        }

        if (v7 < 0 && (**(a1 + 1) & 0xFFF) != a4)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((cuda::HostMem*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2456);
        }

        sub_100231408();
      }

      __src = __PAIR64__(a3, a2);
      sub_10026BEEC(a1, 2, &__src, a4, a5, a6, a7);
    }

    else
    {
      if ((v7 & 0x40000000) != 0 && (*(*(*(a1 + 1) + 48) + 4) != a3 || **(*(a1 + 1) + 48) != a2))
      {
        __src = 0;
        v27 = 0;
        qmemcpy(sub_1002A80E0(&__src, 69), "!fixedSize() || ((UMat*)obj)->size.operator()() == Size(_cols, _rows)", 69);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2434);
      }

      if (v7 < 0 && (**(a1 + 1) & 0xFFF) != a4)
      {
        __src = 0;
        v27 = 0;
        qmemcpy(sub_1002A80E0(&__src, 45), "!fixedType() || ((UMat*)obj)->type() == mtype", 45);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2435);
      }

      v22 = *(a1 + 1);
      v23 = a4 & 0xFFF;
      if (*(v22 + 4) > 2 || *(v22 + 8) != __PAIR64__(a3, a2) || (*v22 & 0xFFF) != v23 || !*(v22 + 32))
      {
        __src = __PAIR64__(a3, a2);
        sub_1002B018C(v22, 2u, &__src, v23, 0);
      }
    }
  }
}

void sub_10027606C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100276174(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && atomic_fetch_add((v1 + 16), 0xFFFFFFFF) == 1)
  {
    v2 = result;
    sub_1002B086C(result);
    result = v2;
  }

  if (*(result + 4) >= 1)
  {
    v3 = 0;
    v4 = *(result + 48);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(result + 4));
  }

  *(result + 32) = 0;
  return result;
}

void sub_1002761E4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10027C134(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_100276294(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = &v3[-*a1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + a2;
    }
  }

  else
  {
    v6 = a1[2];
    if (v6 - v3 < v5)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000918C();
    }

    v7 = &v3[v5];
    bzero(v3, a2 - v4);
    a1[1] = v7;
  }
}

void sub_1002763DC(void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027C2E0(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 2 * a2;
  }
}

void sub_100276408(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (result[1] - *result);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027C544(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 3 * a2;
  }
}

void sub_100276440(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1002374D8(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 4 * a2;
  }
}

void sub_10027646C(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 1);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027C854(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 6 * a2;
  }
}

void sub_1002764A8(void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027CB6C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 8 * a2;
  }
}

void sub_1002764D4(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027CD80(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void sub_100276510(void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D01C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 16 * a2;
  }
}

void sub_10027653C(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D254(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void sub_100276578(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 5;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D440(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 32 * a2;
  }
}

void sub_1002765A4(void *result, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D5E4(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 36 * a2;
  }
}

void sub_1002765E8(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D80C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 48 * a2;
  }
}

void sub_100276624(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 6;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027DA28(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + (a2 << 6);
  }
}

void sub_100276650(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 7;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027DC0C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + (a2 << 7);
  }
}

void sub_10027667C(char **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 8;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027DE9C(result, v4);
  }

  else if (!v3)
  {
    result[1] = &(*result)[256 * a2];
  }
}

void sub_1002766A8(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 9;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027E20C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + (a2 << 9);
  }
}

void sub_1002766D4(char *a1, int *a2, unsigned __int16 a3)
{
  v6 = *a2;
  v7 = *a2 & 0x1F0000;
  if ((v6 & 0x1F0000) != 0)
  {
    if (v7 == 655360)
    {
      v20 = *(a2 + 1);
      v7 = *(v20 + 4);
      if (v7 >= 1)
      {
        v21 = 0;
        v22 = *(v20 + 48);
        if (v7 < 8)
        {
          goto LABEL_19;
        }

        if (__src - v22 < 0x20)
        {
          goto LABEL_19;
        }

        v21 = v7 & 0x7FFFFFF8;
        v23 = (v22 + 16);
        v24 = v34;
        v25 = v21;
        do
        {
          v26 = *v23;
          *(v24 - 1) = *(v23 - 1);
          *v24 = v26;
          v23 += 2;
          v24 += 2;
          v25 -= 8;
        }

        while (v25);
        if (v21 != v7)
        {
LABEL_19:
          v27 = v7 - v21;
          v28 = 4 * v21;
          v29 = __src + v21;
          v30 = (v22 + v28);
          do
          {
            v31 = *v30++;
            *v29++ = v31;
            --v27;
          }

          while (v27);
        }
      }
    }

    else if (v7 == 0x10000)
    {
      v8 = *(a2 + 1);
      v7 = *(v8 + 4);
      if (v7 >= 1)
      {
        v9 = 0;
        v10 = *(v8 + 64);
        if (v7 < 8)
        {
          goto LABEL_10;
        }

        if (__src - v10 < 0x20)
        {
          goto LABEL_10;
        }

        v9 = v7 & 0x7FFFFFF8;
        v11 = (v10 + 16);
        v12 = v34;
        v13 = v9;
        do
        {
          v14 = *v11;
          *(v12 - 1) = *(v11 - 1);
          *v12 = v14;
          v11 += 2;
          v12 += 2;
          v13 -= 8;
        }

        while (v13);
        if (v9 != v7)
        {
LABEL_10:
          v15 = v7 - v9;
          v16 = 4 * v9;
          v17 = __src + v9;
          v18 = (v10 + v16);
          do
          {
            v19 = *v18++;
            *v17++ = v19;
            --v15;
          }

          while (v15);
        }
      }
    }

    else
    {
      sub_100271154(a2, -1, &v32);
      __src[0] = vrev64_s32(v32);
      v7 = 2;
    }
  }

  sub_10026BEEC(a1, v7, __src, a3, -1, 0, 0);
}

void sub_10027689C(uint64_t a1)
{
  if ((*a1 & 0x1F0000) == 0x10000)
  {
    if ((*a1 & 0x40000000) != 0)
    {
      v6[0] = 0;
      v6[1] = 0;
      v1 = sub_1002A80E0(v6, 12);
      *(v1 + 8) = 690513274;
      *v1 = *"!fixedSize()";
      sub_1002A8980(-215, v6, "clear", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2906);
    }

    v2 = *(a1 + 8);
    v3 = *(v2 + 64);
    v4 = *v3;
    if (v4)
    {
      if ((*(v2 + 1) & 0x80) != 0 || *(v2 + 16) > *(v2 + 40))
      {
        sub_10026A93C(v2, 0);
        v3 = *(v2 + 64);
      }

      v5 = **(v2 + 72);
      *v3 = 0;
      *(v2 + 32) -= v4 * v5;
    }
  }

  else
  {

    sub_100274CEC(a1);
  }
}

void sub_1002769D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1 & 0x1F0000;
  if (!v3)
  {
    return;
  }

  if ((*a1 & 0x1D0000) == 0x10000)
  {
    goto LABEL_3;
  }

  if ((*a1 & 0x1F0000u) < 0xA0000)
  {
    if (v3 != 0x20000)
    {
      if (v3 == 589824)
      {
        sub_10026E0C8(a2, 0xFFFFFFFFLL, v19);
        v11 = sub_100271A88(a1, -1);
        if (SHIDWORD(v19[0]) <= 2 && (v19[0] & 0x4000) != 0)
        {
          v12 = *v24;
          v13 = v24[1];
          if (v13 == 1 || v12 == 1)
          {
            v16 = (v11 >> 3) & 0x1FF;
            v17 = v13 == v16 + 1;
            if (v12 != 1)
            {
              v17 = 0;
            }

            v18 = v12 == v16 + 1 || v12 == 1;
            if (v13 != 1)
            {
              v18 = 0;
            }

            if (v18 || v17 || v13 == 1 && v12 == 4 && v16 <= 3 && (v19[0] & 0xFFF) == 6)
            {
              v14 = *(v20 + 16);
              v27[0] = *v20;
              v27[1] = v14;
              sub_1002315B4();
            }
          }
        }

        v27[0] = 0uLL;
        qmemcpy(sub_1002A80E0(v27, 65), "checkScalar(value, type(), arr.kind(), _InputArray::CUDA_GPU_MAT)", 65);
        sub_1002A8980(-215, v27, "setTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3004);
      }

LABEL_27:
      v19[0] = 0;
      v19[1] = 0;
      sub_1002A8980(-213, v19, "setTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3008);
    }

LABEL_3:
    sub_10026E0C8(a1, 0xFFFFFFFFLL, v19);
    sub_10022CDA0(v19, a2, a3);
    if (v23)
    {
      if (atomic_fetch_add((v23 + 20), 0xFFFFFFFF) == 1)
      {
        v7 = v23;
        if (v23)
        {
          v23 = 0;
          v8 = *(v7 + 8);
          if (!v8)
          {
            v8 = v22;
            if (!v22)
            {
              v8 = sub_100268CC8();
            }
          }

          (*(*v8 + 48))(v8, v7);
        }
      }
    }

    v23 = 0;
    v20 = 0u;
    v21 = 0u;
    if (SHIDWORD(v19[0]) >= 1)
    {
      v9 = 0;
      v10 = v24;
      do
      {
        v10[v9++] = 0;
      }

      while (v9 < SHIDWORD(v19[0]));
    }

    if (v25 != &v26)
    {
      j__free(v25);
    }

    return;
  }

  if (v3 != 655360)
  {
    if (v3 != 917504)
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  v15 = *(a1 + 8);

  sub_1002B24D4(v15, a2, a3);
}

void sub_100276D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124((v9 - 48));
  sub_100006D14(&a9);
  _Unwind_Resume(a1);
}

void sub_100276DB0(uint64_t a1, int64x2_t *a2)
{
  sub_1002ACE7C(v66, &off_100474DB8);
  if (sub_10027377C(a1, -1) >= 3)
  {
    v57 = 0;
    v58 = 0;
    qmemcpy(sub_1002A80E0(&v57, 14), "_m.dims() <= 2", 14);
    sub_1002A8980(-215, &v57, "setIdentity", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3277);
  }

  sub_10026E0C8(a1, 0xFFFFFFFFLL, &v57);
  v4 = v58;
  v5 = HIDWORD(v58);
  v6 = v57 & 0xFFF;
  if (v6 == 6)
  {
    if (v58 >= 1 && SHIDWORD(v58) >= 1)
    {
      v12 = *a2->i64;
      v13 = v59[0];
      v14 = v65 >> 3;
      if (HIDWORD(v58) > 3)
      {
        v28 = vdupq_lane_s64(*&v12, 0);
        if ((HIDWORD(v58) & 0x7FFFFFFC) == HIDWORD(v58))
        {
          v29 = 0;
          v30 = (v59[0] + 16);
          v31 = 8 * v14;
          v32 = vdupq_n_s64(2uLL);
          v33 = vdupq_n_s64(4uLL);
          do
          {
            v34 = vdupq_n_s64(v29);
            v35 = v30;
            v36 = v5 & 0x7FFFFFFC;
            v37 = xmmword_1003E0C50;
            do
            {
              v35[-1] = vandq_s8(v28, vceqq_s64(v37, v34));
              *v35 = vandq_s8(v28, vceqq_s64(vaddq_s64(v37, v32), v34));
              v37 = vaddq_s64(v37, v33);
              v35 += 2;
              v36 -= 4;
            }

            while (v36);
            ++v29;
            v30 = (v30 + v31);
          }

          while (v29 != v4);
        }

        else
        {
          v38 = 0;
          v39 = (v59[0] + 16);
          v40 = 8 * v14;
          v41 = vdupq_n_s64(2uLL);
          v42 = vdupq_n_s64(4uLL);
          do
          {
            v43 = vdupq_n_s64(v38);
            v44 = v5 & 0x7FFFFFFC;
            v45 = v39;
            v46 = xmmword_1003E0C50;
            do
            {
              v45[-1] = vandq_s8(v28, vceqq_s64(v46, v43));
              *v45 = vandq_s8(v28, vceqq_s64(vaddq_s64(v46, v41), v43));
              v46 = vaddq_s64(v46, v42);
              v45 += 2;
              v44 -= 4;
            }

            while (v44);
            v47 = v5 & 0x7FFFFFFC;
            do
            {
              if (v38 == v47)
              {
                v48 = v12;
              }

              else
              {
                v48 = 0.0;
              }

              v13[v47++] = v48;
            }

            while (v5 != v47);
            ++v38;
            v39 = (v39 + v40);
            v13 = (v13 + v40);
          }

          while (v38 != v4);
        }
      }

      else
      {
        *v59[0] = v12;
        if (v5 != 1)
        {
          v13[1] = 0.0;
          if (v5 != 2)
          {
            v13[2] = 0.0;
          }
        }

        if (v4 != 1)
        {
          v15 = &v13[v14];
          *v15 = 0.0;
          if (v5 != 1)
          {
            v15[1] = v12;
            if (v5 != 2)
            {
              v15[2] = 0.0;
            }
          }

          if (v4 != 2)
          {
            v16 = &v15[v14];
            *v16 = 0;
            if (v5 != 1)
            {
              *(v16 + 1) = 0;
              if (v5 != 2)
              {
                *(v16 + 2) = v12;
              }
            }

            if (v4 != 3)
            {
              v17 = v4 - 3;
              v18 = &v13[3 * v14 + 2];
              v19 = 8 * v14;
              do
              {
                *(v18 - 2) = 0.0;
                if (v5 != 1)
                {
                  *(v18 - 1) = 0.0;
                  if (v5 != 2)
                  {
                    *v18 = 0.0;
                  }
                }

                v18 = (v18 + v19);
                --v17;
              }

              while (v17);
            }
          }
        }
      }
    }
  }

  else if (v6 == 5)
  {
    if (v58 >= 1 && SHIDWORD(v58) >= 1)
    {
      v7 = 0;
      v8 = *a2->i64;
      v9 = v59[0];
      v10 = 4 * (v65 >> 2);
      v11 = v59[0];
      do
      {
        bzero(v9, 4 * v5);
        if (v7 < v5)
        {
          *v11 = v8;
        }

        ++v7;
        v11 = (v11 + v10 + 4);
        v9 += v10;
      }

      while (v4 != v7);
    }
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    sub_10022CAFC(&v57, &v49);
    sub_10026A6E4(&v57, 0, &v49);
    sub_10022CAFC(&v49, a2);
    if (v53)
    {
      if (atomic_fetch_add((v53 + 20), 0xFFFFFFFF) == 1)
      {
        v20 = v53;
        if (v53)
        {
          v53 = 0;
          v21 = *(v20 + 8);
          if (!v21)
          {
            v21 = v52;
            if (!v52)
            {
              v21 = sub_100268CC8();
            }
          }

          (*(*v21 + 48))(v21, v20);
        }
      }
    }

    v53 = 0;
    v50 = 0u;
    v51 = 0u;
    if (v49.i32[1] >= 1)
    {
      v22 = 0;
      v23 = v54;
      do
      {
        *(v23 + 4 * v22++) = 0;
      }

      while (v22 < v49.i32[1]);
    }

    if (v55 != &v56)
    {
      j__free(v55);
    }
  }

  if (v62)
  {
    if (atomic_fetch_add((v62 + 20), 0xFFFFFFFF) == 1)
    {
      v24 = v62;
      if (v62)
      {
        v62 = 0;
        v25 = *(v24 + 8);
        if (!v25)
        {
          v25 = v61;
          if (!v61)
          {
            v25 = sub_100268CC8();
          }
        }

        (*(*v25 + 48))(v25, v24);
      }
    }
  }

  v62 = 0;
  *v59 = 0u;
  v60 = 0u;
  if (SHIDWORD(v57) >= 1)
  {
    v26 = 0;
    v27 = v63;
    do
    {
      *(v27 + 4 * v26++) = 0;
    }

    while (v26 < SHIDWORD(v57));
  }

  if (v64 != &v65)
  {
    j__free(v64);
  }

  if (v67)
  {
    sub_1002ACC1C(v66);
  }
}

void sub_1002772A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 112);
  _Unwind_Resume(a1);
}

void sub_1002772DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002A8124(va);
  sub_1001D8BF4(v20 - 112);
  _Unwind_Resume(a1);
}

void sub_100277334(uint64_t a1, char a2)
{
  sub_1002ACE7C(v37, &off_100475008);
  sub_10026E0C8(a1, 0xFFFFFFFFLL, v26);
  v4 = v36;
  if (v27 < 1)
  {
    v5 = 0;
    LODWORD(v6) = v28;
    if (v28 == v29)
    {
      goto LABEL_4;
    }

LABEL_7:
    v25[0] = 0;
    v25[1] = 0;
    qmemcpy(sub_1002A80E0(v25, 31), "m.dims <= 2 && m.rows == m.cols", 31);
    sub_1002A8980(-215, v25, "completeSymm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3640);
  }

  v5 = *(v35 + v27 - 1);
  if (v27 > 2)
  {
    goto LABEL_7;
  }

  LODWORD(v6) = v28;
  if (v28 != v29)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = __src;
    v6 = v6;
    v24 = v6;
    if (a2)
    {
      v8 = 0;
      v9 = (__src + v36);
      v10 = v5 + v36;
      v11 = v6 - 1;
      do
      {
        ++v8;
        v12 = v11;
        v13 = v7;
        v14 = v9;
        if (v8 < v6)
        {
          do
          {
            v13 += v5;
            memcpy(v13, v14, v5);
            v14 += v4;
            --v12;
          }

          while (v12);
        }

        v9 += v10;
        v7 += v10;
        --v11;
        v6 = v24;
      }

      while (v8 != v24);
    }

    else
    {
      v15 = 0;
      v16 = __src;
      do
      {
        if (v15)
        {
          v17 = v15;
          v18 = v7;
          v19 = v16;
          do
          {
            memcpy(v18, v19, v5);
            v19 += v4;
            v18 += v5;
            --v17;
          }

          while (v17);
        }

        ++v15;
        v16 += v5;
        v7 += v4;
      }

      while (v15 != v24);
    }
  }

  if (v33)
  {
    if (atomic_fetch_add((v33 + 20), 0xFFFFFFFF) == 1)
    {
      v20 = v33;
      if (v33)
      {
        v33 = 0;
        v21 = *(v20 + 8);
        if (!v21)
        {
          v21 = v32;
          if (!v32)
          {
            v21 = sub_100268CC8();
          }
        }

        (*(*v21 + 48))(v21, v20);
      }
    }
  }

  v33 = 0;
  __src = 0u;
  v31 = 0u;
  if (v27 >= 1)
  {
    v22 = 0;
    v23 = v34;
    do
    {
      *(v23 + 4 * v22++) = 0;
    }

    while (v22 < v27);
  }

  if (v35 != &v36)
  {
    j__free(v35);
  }

  if (v38)
  {
    sub_1002ACC1C(v37);
  }
}

void sub_1002775E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_100006D14(va1);
  sub_1001D8BF4(v5 - 96);
  _Unwind_Resume(a1);
}

void sub_10027762C(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  LODWORD(v5) = a5;
  v6 = a2;
  if (!a2 || !(a3 | a4))
  {
    *v67 = 0;
    *&v67[8] = 0;
    qmemcpy(sub_1002A80E0(v67, 29), "_arrays && (_ptrs || _planes)", 29);
    sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4803);
  }

  a1[1] = a3;
  a1[2] = a4;
  *a1 = a2;
  *(a1 + 6) = a5;
  a1[4] = 0;
  a1[5] = 0;
  if (a5 < 0)
  {
    v5 = -1;
    do
    {
      v8 = *v6++;
      ++v5;
    }

    while (v8);
    *(a1 + 6) = v5;
    if (v5 > 0x3E8)
    {
      *v67 = 0;
      *&v67[8] = 0;
      qmemcpy(sub_1002A80E0(v67, 15), "narrays <= 1000", 15);
      sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4818);
    }
  }

  *(a1 + 12) = 0;
  if (v5 < 1)
  {
    v35 = 0;
LABEL_65:
    *(a1 + 12) = 0;
    a1[7] = 0;
    if (a1[1])
    {
      v46 = !v35;
    }

    else
    {
      v46 = 1;
    }

    if (!v46)
    {
      goto LABEL_85;
    }

    return;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  v11 = -1;
  v12 = 0xFFFFFFFFLL;
  while (2)
  {
    v16 = *a1;
    v17 = (*a1)[v9];
    if (!v17)
    {
      *v67 = 0;
      *&v67[8] = 0;
      qmemcpy(sub_1002A80E0(v67, 14), "arrays[i] != 0", 14);
      sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4825);
    }

    v18 = a1[2];
    v19 = *(v17 + 16);
    if (v18)
    {
      v18[v9] = v19;
    }

    if (!v19)
    {
      goto LABEL_15;
    }

    if ((v12 & 0x80000000) == 0)
    {
      v20 = *(v16 + 8 * v12);
      v21 = *(v17 + 64);
      v22 = *(v21 - 1);
      v23 = *(v20 + 64);
      if (v22 != *(v23 - 1))
      {
        goto LABEL_25;
      }

      if (v22 == 2)
      {
        if (*v21 != *v23 || v21[1] != v23[1])
        {
          goto LABEL_25;
        }
      }

      else if (v22 >= 1)
      {
        while (1)
        {
          v26 = *v21++;
          v25 = v26;
          v27 = *v23++;
          if (v25 != v27)
          {
            break;
          }

          if (!--v22)
          {
            goto LABEL_38;
          }
        }

LABEL_25:
        *v67 = 0;
        *&v67[8] = 0;
        qmemcpy(sub_1002A80E0(v67, 26), "A.size == arrays[i0]->size", 26);
        sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4845);
      }

LABEL_38:
      if ((*(v17 + 1) & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    }

    v10 = *(v17 + 4);
    v12 = v9;
    if (v10 <= 0)
    {
      v11 = *(v17 + 4);
      LODWORD(v10) = 0;
      goto LABEL_38;
    }

    for (i = 0; i != v10; ++i)
    {
      if (*(*(v17 + 64) + 4 * i) > 1)
      {
        v11 = *(v17 + 4);
        LODWORD(v10) = i;
        if ((*(v17 + 1) & 0x40) != 0)
        {
          goto LABEL_15;
        }

LABEL_39:
        v28 = *(v17 + 72);
        v29 = *(v17 + 4);
        if (v29 < 1)
        {
          v30 = v11 - 1;
          if (!*(v28 + 8 * (v11 - 1)))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v30 = v11 - 1;
          if (*(v28 + 8 * (v11 - 1)) == *(v28 + 8 * v29 - 8))
          {
LABEL_44:
            v31 = v30;
            if (v10 >= v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = v10;
            }

            v13 = v11;
            while (v31 > v10)
            {
              v33 = *(*(v17 + 72) + 8 * v31 - 8);
              v34 = *(*(v17 + 72) + 8 * v31) * *(*(v17 + 64) + 4 * v31);
              --v31;
              --v13;
              if (v34 < v33)
              {
                goto LABEL_12;
              }
            }

            v13 = v32;
LABEL_12:
            v14 = *(a1 + 12);
            if (v14 <= v13)
            {
              v14 = v13;
            }

            *(a1 + 12) = v14;
            goto LABEL_15;
          }
        }

        *v67 = 0;
        *&v67[8] = 0;
        qmemcpy(sub_1002A80E0(v67, 27), "A.step[d-1] == A.elemSize()", 27);
        sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4849);
      }
    }

    v11 = *(v17 + 4);
    if ((*(v17 + 1) & 0x40) == 0)
    {
      goto LABEL_39;
    }

LABEL_15:
    ++v9;
    v15 = *(a1 + 6);
    if (v9 < v15)
    {
      continue;
    }

    break;
  }

  v35 = v15 > 0;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_65;
  }

  LODWORD(v36) = v11 - 1;
  v37 = *((*a1)[v12] + 64);
  v38 = (v11 - 1);
  v39 = *(v37 + 4 * v38);
  v40 = *(a1 + 12);
  if (v40 < (v11 - 1))
  {
    LODWORD(v36) = *(a1 + 12);
  }

  while (1)
  {
    v41 = v39;
    if (v38 <= v40)
    {
      break;
    }

    v42 = *(v37 - 4 + 4 * v38--);
    v39 = (v41 * v42);
    --v11;
    if (v39 != v39)
    {
      a1[5] = v41;
      if (v11 == v10)
      {
        v36 = 0;
      }

      else
      {
        v36 = v11;
      }

      *(a1 + 12) = v36;
      if (v36 >= 1)
      {
        goto LABEL_62;
      }

LABEL_74:
      v45 = 1;
      v43 = a1 + 4;
      goto LABEL_79;
    }
  }

  a1[5] = v39;
  if (v36 == v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = v36;
  }

  *(a1 + 12) = v36;
  if (v36 < 1)
  {
    goto LABEL_74;
  }

LABEL_62:
  v43 = a1 + 4;
  if (v36 == 1)
  {
    v44 = 1;
    v45 = 1;
    goto LABEL_78;
  }

  v44 = v36 & 1;
  v47 = (v37 + 4 * v36 - 4);
  v48 = 1;
  v49 = v36 & 0x7FFFFFFE;
  v50 = 1;
  do
  {
    v48 *= *v47;
    v50 *= *(v47 - 1);
    v47 -= 2;
    v49 -= 2;
  }

  while (v49);
  v45 = v50 * v48;
  if ((v36 & 0x7FFFFFFE) != v36)
  {
LABEL_78:
    v45 *= *(v37 + 4 * v44 - 4);
  }

LABEL_79:
  *v43 = v45;
  a1[7] = 0;
  if (a1[1])
  {
    v51 = !v35;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
LABEL_85:
    for (j = 0; j < *(a1 + 6); ++j)
    {
      v53 = (*a1)[j];
      if (!v53)
      {
        *v67 = 0;
        *&v67[8] = 0;
        qmemcpy(sub_1002A80E0(v67, 14), "arrays[i] != 0", 14);
        sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4886);
      }

      v54 = *(v53 + 16);
      if (v54)
      {
        sub_10000A690(v67, 1, *(a1 + 10), *v53 & 0xFFF, v54, 0);
        v56.n128_f64[0] = sub_10025DAEC(&a1[1][12 * j], v67, v55);
        if (*&v67[56])
        {
          if (atomic_fetch_add((*&v67[56] + 20), 0xFFFFFFFF) == 1)
          {
            v57 = *&v67[56];
            if (*&v67[56])
            {
              *&v67[56] = 0;
              v58 = *(v57 + 8);
              if (!v58)
              {
                v58 = *&v67[48];
                if (!*&v67[48])
                {
                  v58 = sub_100268CC8();
                }
              }

              (*(*v58 + 48))(v58, v57, v56);
            }
          }
        }

        *&v67[56] = 0;
        memset(&v67[16], 0, 32);
        if (*&v67[4] >= 1)
        {
          v59 = 0;
          v60 = v68;
          do
          {
            *&v60[4 * v59++] = 0;
          }

          while (v59 < *&v67[4]);
        }

        v61 = v69;
        if (v69 == v70)
        {
          continue;
        }
      }

      else
      {
        *v67 = 1124007936;
        memset(&v67[4], 0, 60);
        v68 = &v67[8];
        v69 = v70;
        v70[0] = 0;
        v70[1] = 0;
        v62.n128_f64[0] = sub_10025DAEC(&a1[1][12 * j], v67, 0.0);
        if (*&v67[56])
        {
          if (atomic_fetch_add((*&v67[56] + 20), 0xFFFFFFFF) == 1)
          {
            v63 = *&v67[56];
            if (*&v67[56])
            {
              *&v67[56] = 0;
              v64 = *(v63 + 8);
              if (!v64)
              {
                v64 = *&v67[48];
                if (!*&v67[48])
                {
                  v64 = sub_100268CC8();
                }
              }

              (*(*v64 + 48))(v64, v63, v62);
            }
          }
        }

        *&v67[56] = 0;
        memset(&v67[16], 0, 32);
        if (*&v67[4] >= 1)
        {
          v65 = 0;
          v66 = v68;
          do
          {
            *&v66[4 * v65++] = 0;
          }

          while (v65 < *&v67[4]);
        }

        v61 = v69;
        if (v69 == v70)
        {
          continue;
        }
      }

      j__free(v61);
    }
  }
}