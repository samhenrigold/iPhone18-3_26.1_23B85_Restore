void sub_F47620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    sub_F42954((v20 - 208));
    _Unwind_Resume(a1);
  }

  sub_F42954((v20 - 208));
  _Unwind_Resume(a1);
}

void sub_F47700(uint64_t a1, uint64_t *a2)
{
  v3 = sub_73ECC(a1);
  v5 = *v3;
  v6 = 0;
  v7 = v3[1] - *v3;
  if (v7)
  {
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
    v10 = INFINITY;
    v11 = 16;
    do
    {
      sub_6D5084(*v3 + v11, a2, 0, 0, &v25, v4);
      v4 = v25;
      if (*&v25 < v10)
      {
        v6 = v8;
        v10 = *&v25;
      }

      ++v8;
      v11 += 80;
    }

    while (v9 != v8);
    v5 = *v3;
  }

  v12 = v5 + 80 * v6;
  v13 = *(v5 + 16);
  v27 = *v5;
  v14 = *(v5 + 32);
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  v15 = *(v5 + 56);
  v25 = *(v5 + 40);
  v26[0] = v15;
  *(v26 + 15) = *(v5 + 71);
  v16 = *(v12 + 16);
  *v5 = *v12;
  *(v5 + 16) = v16;
  *(v5 + 32) = *(v12 + 32);
  v17 = *(v12 + 40);
  v18 = *(v12 + 56);
  *(v5 + 71) = *(v12 + 71);
  *(v5 + 56) = v18;
  *(v5 + 40) = v17;
  *v12 = v27;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  v19 = v25;
  v20 = v26[0];
  *(v12 + 71) = *(v26 + 15);
  *(v12 + 56) = v20;
  *(v12 + 40) = v19;
  v21 = v3[1];
  v22 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *v3) >> 4);
  if (v21 == *v3)
  {
    sub_F49BC4(v3, 1 - v22);
  }

  else if (v22 >= 2)
  {
    v23 = *v3 + 80;
    while (v21 != v23)
    {
      v24 = *(v21 - 64);
      if (v24)
      {
        *(v21 - 56) = v24;
        operator delete(v24);
      }

      v21 -= 80;
    }

    v3[1] = v23;
  }
}

int *sub_F478D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int64x2_t *a4@<X8>)
{
  result = sub_319180(a1, a2, 1);
  if (!result || (v8 = (result - *result), *v8 < 5u) || (v9 = v8[2]) == 0 || (v10 = (result + v9), v11 = *v10, *(v10 + v11) <= HIDWORD(a2)) || (result = sub_3195D8((v10 + v11), a2)) == 0)
  {
    a4->i64[0] = 0;
    a4->i64[1] = 0;
    a4[1].i64[0] = 0;
    return result;
  }

  v12 = (result - *result);
  v13 = *v12;
  if (a3)
  {
    if (v13 < 0xF)
    {
      goto LABEL_15;
    }

    v14 = v12[7];
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v13 < 0xD)
    {
      goto LABEL_15;
    }

    v14 = v12[6];
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  if (*(result + v14 + *(result + v14)))
  {
    operator new();
  }

LABEL_15:
  *a4 = 0u;
  a4[1].i64[0] = 0;
  return result;
}

void sub_F47A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F47A68(uint64_t a1, unint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v6 = sub_F47CE4(a1, a2);
  v7 = v6;
  LODWORD(v8) = *a4;
  LODWORD(v9) = a4[1];
  v10 = v8;
  v11 = v9;
  LODWORD(v8) = *a3;
  LODWORD(v9) = a3[1];
  v12 = v8;
  v13 = v9;
  v14 = v6;
  v15 = HIDWORD(v6);
  v16 = HIDWORD(v6);
  v17 = v10 - v8;
  v18 = v11 - v13;
  v19 = v17 * v17 + v18 * v18;
  if (v19 == 0.0)
  {
    goto LABEL_5;
  }

  v20 = -v19;
  if (v19 > 0.0)
  {
    v20 = v17 * v17 + v18 * v18;
  }

  if (v20 < 2.22044605e-16)
  {
LABEL_5:
    v21 = 0.0;
  }

  else
  {
    v21 = (v17 * (v14 - v12) + v18 * (v16 - v13)) / v19;
  }

  v22 = sub_6EFC0(a3, a4, v21);
  v23 = exp(((v22 >> 33) + (v15 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
  v24 = atan((v23 + -1.0 / v23) * 0.5);
  v25 = sqrt(((v15 - HIDWORD(v22)) * (v15 - HIDWORD(v22)) + (v7 - v22) * (v7 - v22))) / 100.0 * 100.0 * (cos(v24 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) * 100.0;
  if (v25 >= 0.0)
  {
    v26 = v25;
    if (v25 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v27 = (v25 + v25) + 1;
  }

  else
  {
    v26 = v25;
    if (v25 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
  }

  v26 = (v27 >> 1);
LABEL_12:
  if (v26 >= 9.22337204e18)
  {
    v29 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_21;
  }

  if (v25 >= 0.0)
  {
    if (v25 < 4.50359963e15)
    {
      v28 = (v25 + v25) + 1;
      goto LABEL_19;
    }
  }

  else if (v25 > -4.50359963e15)
  {
    v28 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
LABEL_19:
    v25 = (v28 >> 1);
  }

  v29 = v25;
LABEL_21:
  if ((v14 - v10) * (v13 - v11) - (v12 - v10) * (v16 - v11) > 0.0)
  {
    return v29;
  }

  else
  {
    return -v29;
  }
}

uint64_t sub_F47CE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_319180(a1, a2, 1);
  if (!v3)
  {
    return -1;
  }

  v4 = &v3[-*v3];
  if (*v4 < 5u)
  {
    return -1;
  }

  v5 = *(v4 + 2);
  if (!v5)
  {
    return -1;
  }

  v6 = &v3[v5];
  v7 = *v6;
  if (*&v6[v7] <= HIDWORD(a2))
  {
    return -1;
  }

  v8 = sub_3195D8(&v6[v7], a2);
  if (!v8)
  {
    return -1;
  }

  v9 = v8 + *(v8 - *v8 + 8);
  v10 = *v9;
  LODWORD(v9) = *(v9 + 4);
  if (v9 >= 0xFFFFFFFE)
  {
    v9 = 4294967294;
  }

  else
  {
    v9 = v9;
  }

  return (v9 << 32) | v10;
}

double sub_F47DA0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *(&v17 + 1) = 0;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  v10 = *(a2 + 56);
  *&stru_20.segname[104 * v2 + 16] = v10;
  v11 = *(a2 + 64);
  *(v6 + 64) = v11;
  *(v6 + 72) = *(a2 + 72);
  if (v11)
  {
    v12 = *(v10 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v12 >= v9)
      {
        v12 %= v9;
      }
    }

    else
    {
      v12 &= v9 - 1;
    }

    *(v8 + 8 * v12) = 104 * v2 + 56;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  *(&stru_20.filesize + 13 * v2) = *(a2 + 80);
  *(&stru_20.nsects + 13 * v2) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *&v17 = v6 + 104;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  sub_F4804C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  result = *&v17;
  *(a1 + 1) = v17;
  if (v15)
  {
    operator delete(v15);
    return *&v17;
  }

  return result;
}

void sub_F47F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_F48014(va);
  _Unwind_Resume(a1);
}

__n128 sub_F47F74(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *(a2 + 32) = *(a3 + 8);
  *a2 = v3;
  *(a2 + 16) = v4;
  v5 = *(a3 + 7);
  *(a2 + 56) = v5;
  v6 = *(a3 + 5);
  *(a2 + 48) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a2 + 40) = v6;
  *(a3 + 6) = 0;
  v7 = *(a3 + 8);
  *(a2 + 64) = v7;
  *(a2 + 72) = *(a3 + 18);
  if (v7)
  {
    v8 = *(v5 + 8);
    v9 = *(a2 + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v6 + 8 * v8) = a2 + 56;
    *(a3 + 56) = 0uLL;
  }

  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  result = a3[5];
  *(a2 + 80) = result;
  *(a2 + 96) = *(a3 + 12);
  a3[5] = 0uLL;
  *(a3 + 12) = 0;
  return result;
}

uint64_t sub_F48014(uint64_t a1)
{
  sub_F481BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_F4804C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = &a2[v6];
      v9 = a4 + v6 * 8;
      v10 = *&a2[v6];
      v11 = *&a2[v6 + 2];
      *(v9 + 32) = a2[v6 + 4];
      *v9 = v10;
      *(v9 + 16) = v11;
      v12 = &a2[v6 + 7];
      v13 = *v12;
      v14 = a2[v6 + 5];
      v15 = a2[v6 + 6];
      *(v12 - 2) = 0;
      *(v9 + 40) = v14;
      *(v9 + 48) = v15;
      *(v12 - 1) = 0;
      *(a4 + v6 * 8 + 56) = v13;
      v16 = a2[v6 + 8];
      *(v9 + 64) = v16;
      *(v9 + 72) = a2[v6 + 9];
      if (v16)
      {
        v7 = *(v13 + 8);
        v17 = *(v9 + 48);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v7 >= v17)
          {
            v7 %= v17;
          }
        }

        else
        {
          v7 &= v17 - 1;
        }

        *(v14 + 8 * v7) = a4 + v6 * 8 + 56;
        *v12 = 0;
        a2[v6 + 8] = 0;
      }

      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 80) = *(v8 + 5);
      *(v9 + 96) = v8[12];
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      v6 += 13;
    }

    while (&a2[v6] != a3);
    while (v5 != a3)
    {
      v18 = v5[10];
      if (v18)
      {
        v19 = v5[11];
        v20 = v5[10];
        if (v19 != v18)
        {
          do
          {
            v21 = *(v19 - 64);
            if (v21)
            {
              *(v19 - 56) = v21;
              operator delete(v21);
            }

            v19 -= 96;
          }

          while (v19 != v18);
          v20 = v5[10];
        }

        v5[11] = v18;
        operator delete(v20);
      }

      v22 = v5[7];
      if (v22)
      {
        do
        {
          v23 = *v22;
          operator delete(v22);
          v22 = v23;
        }

        while (v23);
      }

      v24 = v5[5];
      v5[5] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      v5 += 13;
    }
  }
}

void sub_F481BC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 96;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_F48288(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 96;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  *(a1 + 8) = a2;
}

void sub_F4834C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 40 * a2;
      v10 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = -1;
        *(v3 + 24) = v10;
        v3 += 40;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 40 * v5;
    v12 = 40 * v5 + 40 * a2;
    v13 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v14 = 40 * v5;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = -1;
      *(v14 + 24) = v13;
      v14 += 40;
    }

    while (v14 != v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_F484F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, void **a6@<X8>, unint64_t a7@<D2>, unint64_t a8@<D4>)
{
  v9 = 0;
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v10 = *a1;
  v11 = a1[1] - *a1;
  if (!v11)
  {
    goto LABEL_79;
  }

  v12 = a2;
  v13 = a2 / 100.0;
  if (v13 <= 0.0)
  {
    goto LABEL_79;
  }

  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2);
  v17 = 0.0;
  v18 = -1;
  v19 = 1;
  while (1)
  {
    v23 = v16 + v18;
    if (a3)
    {
      v23 = v19 - 1;
    }

    v24 = (v10 + 12 * v23);
    v25 = *a6;
    if (*a6 == v15)
    {
      v30 = a6[2];
      if (v15 >= v30)
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v15) >> 2);
        v38 = 2 * v37;
        if (2 * v37 <= 1)
        {
          v38 = 1;
        }

        if (v37 >= 0xAAAAAAAAAAAAAAALL)
        {
          v39 = 0x1555555555555555;
        }

        else
        {
          v39 = v38;
        }

        if (v39 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v31 = *v24;
      *(v15 + 2) = v24[2];
      *v15 = v31;
      v9 = (v15 + 12);
      a6[1] = v15 + 12;
      goto LABEL_6;
    }

    v26 = *(v15 - 12);
    v74 = *(v15 - 1);
    v73 = v26;
    if (!a4)
    {
      sub_314EC(&v73, v24, v12);
      v29 = v17 + v12;
      if (v17 + v12 > v13)
      {
        break;
      }

      goto LABEL_24;
    }

    if (!a5 || v74 == 0x7FFFFFFF || (v27 = v24[2], v27 == 0x7FFFFFFF))
    {
      v28 = 0;
    }

    else
    {
      v28 = fabs((v74 - v27));
    }

    v12 = sqrt(((v73 - *v24) * (v73 - *v24) + (HIDWORD(v73) - v24[1]) * (HIDWORD(v73) - v24[1]) + v28 * v28)) / 100.0;
    v29 = v17 + v12;
    if (v17 + v12 > v13)
    {
      break;
    }

LABEL_24:
    v32 = a6[2];
    if (v15 < v32)
    {
      v20 = *v24;
      *(v15 + 2) = v24[2];
      *v15 = v20;
      v9 = (v15 + 12);
    }

    else
    {
      v33 = v15 - v25;
      v34 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 2) + 1;
      if (v34 > 0x1555555555555555)
      {
        sub_1794();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v25) >> 2);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0xAAAAAAAAAAAAAAALL)
      {
        v36 = 0x1555555555555555;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (v36 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v40 = 4 * (v33 >> 2);
      v41 = *v24;
      *(v40 + 8) = v24[2];
      *v40 = v41;
      v9 = v40 + 12;
      v42 = v40 - v33;
      memcpy((v40 - v33), v25, v33);
      *a6 = v42;
      a6[1] = v9;
      a6[2] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    a6[1] = v9;
    v17 = v29;
LABEL_6:
    v10 = *a1;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
    v21 = v19++ >= v16;
    --v18;
    v22 = !v21 && v17 < v13;
    v15 = v9;
    if (!v22)
    {
      goto LABEL_79;
    }
  }

  v43 = 0.0;
  if (v12 > 0.0)
  {
    v43 = (v13 - v17) / v12;
  }

  LODWORD(v12) = *v24;
  LODWORD(a7) = v24[1];
  *&v44 = *&v12;
  v45 = v43 * *&v44;
  LODWORD(a8) = HIDWORD(v73);
  LODWORD(v44) = v73;
  v46 = v44;
  v47 = 1.0 - v43;
  v48 = (v45 + (1.0 - v43) * v46 + 0.5);
  LODWORD(v49) = (v43 * a7 + (1.0 - v43) * a8 + 0.5);
  v50 = 0x7FFFFFFF;
  if (v74 != 0x7FFFFFFF)
  {
    v51 = v24[2];
    if (v51 != 0x7FFFFFFF)
    {
      v52 = v43 * v51;
      if (v52 >= 0.0)
      {
        if (v52 < 4.50359963e15)
        {
          v53 = (v52 + v52) + 1;
LABEL_54:
          v52 = (v53 >> 1);
        }
      }

      else if (v52 > -4.50359963e15)
      {
        v53 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
        goto LABEL_54;
      }

      v54 = v47 * v74;
      if (v54 >= 0.0)
      {
        if (v54 < 4.50359963e15)
        {
          v55 = (v54 + v54) + 1;
LABEL_60:
          v54 = (v55 >> 1);
        }
      }

      else if (v54 > -4.50359963e15)
      {
        v55 = (v54 + v54) - 1 + (((v54 + v54) - 1) >> 63);
        goto LABEL_60;
      }

      v50 = v54 + v52;
    }
  }

  if (v49 >= 0xFFFFFFFE)
  {
    v49 = 4294967294;
  }

  else
  {
    v49 = v49;
  }

  v56 = v48 | (v49 << 32);
  v57 = a6[2];
  if (v15 >= v57)
  {
    v58 = v15 - v25;
    v59 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v25) >> 2) + 1;
    if (v59 > 0x1555555555555555)
    {
      sub_1794();
    }

    v60 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v25) >> 2);
    if (2 * v60 > v59)
    {
      v59 = 2 * v60;
    }

    if (v60 >= 0xAAAAAAAAAAAAAAALL)
    {
      v61 = 0x1555555555555555;
    }

    else
    {
      v61 = v59;
    }

    if (v61)
    {
      if (v61 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v62 = 4 * ((v15 - v25) >> 2);
    *v62 = v56;
    *(v62 + 8) = v50;
    v9 = v62 + 12;
    v63 = v62 - v58;
    memcpy((v62 - v58), v25, v15 - v25);
    *a6 = v63;
    a6[1] = v9;
    a6[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = v56;
    *(v15 + 2) = v50;
    v9 = (v15 + 12);
  }

  a6[1] = v9;
LABEL_79:
  if ((a3 & 1) == 0)
  {
    v64 = *a6;
    if (*a6 != v9)
    {
      v65 = v9 - 12;
      if (v9 - 12 > v64)
      {
        v66 = v64 + 12;
        do
        {
          v73 = *(v66 - 12);
          v67 = v73;
          v74 = *(v66 - 4);
          v68 = v74;
          v69 = *(v65 + 8);
          *(v66 - 12) = *v65;
          *(v66 - 4) = v69;
          *(v65 + 8) = v68;
          *v65 = v67;
          v65 -= 12;
          v21 = v66 >= v65;
          v66 += 12;
        }

        while (!v21);
      }
    }
  }
}

void sub_F48B24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_F48B50(unint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 96 * a2;
      do
      {
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 4) = -1;
        *(v3 + 12) = -1;
        *(v3 + 20) = -1;
        *(v3 + 28) = -1;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = 0;
        *(v3 + 72) = 0;
        *(v3 + 80) = 0;
        *(v3 + 87) = 0;
        v3 += 96;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v6 = v5 + a2;
    if (v5 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x155555555555555)
    {
      v8 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 96 * v5;
    v11 = 96 * v5 + 96 * a2;
    v12 = 96 * v5;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 4) = -1;
      *(v12 + 12) = -1;
      *(v12 + 20) = -1;
      *(v12 + 28) = -1;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 87) = 0;
      v12 += 96;
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
        v19 = *(v16 + 7);
        v20 = *(v16 + 9);
        *(v17 + 87) = *(v16 + 87);
        *(v17 + 72) = v20;
        *(v17 + 56) = v19;
        v16 += 12;
        v17 += 96;
      }

      while (v16 != v14);
      do
      {
        v21 = v13[4];
        if (v21)
        {
          v13[5] = v21;
          operator delete(v21);
        }

        v13 += 12;
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

uint64_t sub_F48DB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 64);
      if (v5)
      {
        *(v3 - 56) = v5;
        operator delete(v5);
      }

      v3 -= 96;
    }
  }

  return a1;
}

double sub_F48E14(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *(&v17 + 1) = 0;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  v10 = *(a2 + 56);
  *&stru_20.segname[104 * v2 + 16] = v10;
  v11 = *(a2 + 64);
  *(v6 + 64) = v11;
  *(v6 + 72) = *(a2 + 72);
  if (v11)
  {
    v12 = *(v10 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v12 >= v9)
      {
        v12 %= v9;
      }
    }

    else
    {
      v12 &= v9 - 1;
    }

    *(v8 + 8 * v12) = 104 * v2 + 56;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  *(&stru_20.filesize + 13 * v2) = *(a2 + 80);
  *(&stru_20.nsects + 13 * v2) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *&v17 = v6 + 104;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  sub_F48FE8(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  result = *&v17;
  *(a1 + 1) = v17;
  if (v15)
  {
    operator delete(v15);
    return *&v17;
  }

  return result;
}

void sub_F48FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_F49158(va);
  _Unwind_Resume(a1);
}

void sub_F48FE8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = &a2[v6];
      v9 = a4 + v6 * 8;
      v10 = *&a2[v6];
      v11 = *&a2[v6 + 2];
      *(v9 + 32) = a2[v6 + 4];
      *v9 = v10;
      *(v9 + 16) = v11;
      v12 = &a2[v6 + 7];
      v13 = *v12;
      v14 = a2[v6 + 5];
      v15 = a2[v6 + 6];
      *(v12 - 2) = 0;
      *(v9 + 40) = v14;
      *(v9 + 48) = v15;
      *(v12 - 1) = 0;
      *(a4 + v6 * 8 + 56) = v13;
      v16 = a2[v6 + 8];
      *(v9 + 64) = v16;
      *(v9 + 72) = a2[v6 + 9];
      if (v16)
      {
        v7 = *(v13 + 8);
        v17 = *(v9 + 48);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v7 >= v17)
          {
            v7 %= v17;
          }
        }

        else
        {
          v7 &= v17 - 1;
        }

        *(v14 + 8 * v7) = a4 + v6 * 8 + 56;
        *v12 = 0;
        a2[v6 + 8] = 0;
      }

      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 80) = *(v8 + 5);
      *(v9 + 96) = v8[12];
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      v6 += 13;
    }

    while (&a2[v6] != a3);
    while (v5 != a3)
    {
      v18 = v5[10];
      if (v18)
      {
        v19 = v5[11];
        v20 = v5[10];
        if (v19 != v18)
        {
          do
          {
            v21 = *(v19 - 64);
            if (v21)
            {
              *(v19 - 56) = v21;
              operator delete(v21);
            }

            v19 -= 80;
          }

          while (v19 != v18);
          v20 = v5[10];
        }

        v5[11] = v18;
        operator delete(v20);
      }

      v22 = v5[7];
      if (v22)
      {
        do
        {
          v23 = *v22;
          operator delete(v22);
          v22 = v23;
        }

        while (v23);
      }

      v24 = v5[5];
      v5[5] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      v5 += 13;
    }
  }
}

uint64_t sub_F49158(uint64_t a1)
{
  sub_F49190(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_F49190(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 80;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_F4925C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 80;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_F49320(uint64_t a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  sub_F49474(v11, a2);
  v6 = 104 * v2 + 104;
  v7 = *(a1 + 8);
  v8 = v11 + *a1 - v7;
  sub_F4804C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_F49460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F48014(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F49474(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 40) = 0u;
  v6 = (a1 + 40);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 18);
  prime = *(a2 + 6);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v6, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 6));
    v8 = *(a1 + 48);
    v9 = prime >= *&v8;
    if (prime > *&v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v9)
  {
    v10 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v8)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 7); i; i = *i)
  {
    sub_F496B0(v6, i + 2, i + 1);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v15 = *(a2 + 10);
  v14 = *(a2 + 11);
  if (v14 != v15)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F4964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 88) = v11;
  sub_F49B40(&a9);
  sub_11BD8(v9);
  _Unwind_Resume(a1);
}

void sub_F49680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_F49B40(&a9);
  sub_11BD8(v9);
  _Unwind_Resume(a1);
}

void *sub_F496B0(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

uint64_t sub_F499E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v8 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v8;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v10 = *(v5 + 32);
      v9 = *(v5 + 40);
      if (v9 != v10)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v6 = *(v5 + 56);
      v7 = *(v5 + 72);
      *(a4 + 87) = *(v5 + 87);
      *(a4 + 72) = v7;
      *(a4 + 56) = v6;
      v5 += 96;
      a4 += 96;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_F49B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  sub_F48DB0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_F49B40(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            *(v4 - 7) = v6;
            operator delete(v6);
          }

          v4 -= 96;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_F49BC4(unint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 80 * a2;
      do
      {
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 4) = -1;
        *(v3 + 12) = -1;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = 0;
        *(v3 + 71) = 0;
        v3 += 80;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 80 * v5;
    v11 = 80 * v5 + 80 * a2;
    v12 = 80 * v5;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 4) = -1;
      *(v12 + 12) = -1;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 71) = 0;
      v12 += 80;
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
        *v17 = *v16;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(v17 + 16) = 0;
        *(v17 + 16) = *(v16 + 1);
        *(v17 + 32) = v16[4];
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = 0;
        v18 = *(v16 + 5);
        v19 = *(v16 + 7);
        *(v17 + 71) = *(v16 + 71);
        *(v17 + 56) = v19;
        *(v17 + 40) = v18;
        v16 += 10;
        v17 += 80;
      }

      while (v16 != v14);
      do
      {
        v20 = v13[2];
        if (v20)
        {
          v13[3] = v20;
          operator delete(v20);
        }

        v13 += 10;
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

void sub_F49E14(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  sub_31BF20(a1, __p);
  sub_31214(__p, a3, &v14, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9 = a2 == 0;
  if (a2)
  {
    v10 = v14;
  }

  else
  {
    v10 = v16;
  }

  v11 = &v17;
  if (!v9)
  {
    v11 = &v15;
  }

  v12 = *v11;
  if (v12 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_F49F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_F49F68(unint64_t **a1, unint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 && *a1 != (*a2 - 12))
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    operator new();
  }
}

void sub_F4A254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_F4A280(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  if (a1 != a2)
  {
LABEL_22:
    if (*(v3 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(v3 + 3) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(v3 + 10);
      v19 = *(v3 + 11);
      if (v18 != v19)
      {
        while (*(v18 + 32) != *(v18 + 40))
        {
          v18 += 96;
          if (v18 == v19)
          {
            v3 = (v3 + 104);
            v5 = a2;
            if (v3 != a2)
            {
              goto LABEL_22;
            }

            return v5;
          }
        }
      }
    }
  }

  if (v3 == a2)
  {
    return v3;
  }

  v4 = (v3 + 104);
  if ((v3 + 104) == a2)
  {
    return v3;
  }

  v5 = v3;
  do
  {
    v7 = v3;
    v3 = v4;
    if (*(v7 + 14) != 0x7FFFFFFFFFFFFFFFLL && *(v7 + 16) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = *(v7 + 23);
      v10 = *(v7 + 24);
      if (v9 != v10)
      {
        while (*(v9 + 32) != *(v9 + 40))
        {
          v9 += 96;
          if (v9 == v10)
          {
            v11 = *v3;
            v12 = v3[1];
            *(v5 + 8) = *(v3 + 8);
            *v5 = v11;
            v5[1] = v12;
            sub_6BE5B4(v5 + 40, v7 + 18);
            v13 = (v5 + 5);
            v14 = *(v5 + 10);
            if (v14)
            {
              v15 = *(v5 + 11);
              v6 = *(v5 + 10);
              if (v15 != v14)
              {
                do
                {
                  v16 = *(v15 - 64);
                  if (v16)
                  {
                    *(v15 - 56) = v16;
                    operator delete(v16);
                  }

                  v15 -= 96;
                }

                while (v15 != v14);
                v6 = *v13;
              }

              *(v5 + 11) = v14;
              operator delete(v6);
              *v13 = 0;
              *(v5 + 11) = 0;
              *(v5 + 12) = 0;
            }

            v5[5] = *(v7 + 184);
            *(v5 + 12) = *(v7 + 25);
            *(v7 + 23) = 0;
            *(v7 + 24) = 0;
            *(v7 + 25) = 0;
            v5 = (v5 + 104);
            break;
          }
        }
      }
    }

    v4 = (v3 + 104);
  }

  while ((v3 + 104) != a2);
  return v5;
}

unsigned int *sub_F4A420@<X0>(unsigned int *result@<X0>, int64x2_t *a2@<X8>)
{
  if (result && *result)
  {
    operator new();
  }

  *a2 = 0uLL;
  a2[1].i64[0] = 0;
  return result;
}

void sub_F4A548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F4A564(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = v3 - *v2;
    v8 = v7 >> 5;
    v9 = (v7 >> 5) + 1;
    if (v9 >> 59)
    {
      sub_1794();
    }

    v10 = v4 - v6;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = (32 * v8);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v15 = 32 * v8 + 32;
    memcpy(0, v6, v7);
    *v2 = 0;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    *(v2 + 8) = v3 + 2;
  }

  return result;
}

void sub_F4A690(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = sub_3175DC(*a1, *a2, *a3);
  if (v7 > 0xFFFFFFFEFFFFFFFFLL || v7 == 0)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_35:
      **(a1 + 8) = 0;
      return;
    }

    sub_19594F8(__p);
    v9 = sub_4A5C(__p, "Invalid checkpoint connection ", 30);
    v10 = sub_2FF718(v9, __ROR8__(*a2, 32));
    v11 = sub_4A5C(v10, " --> ", 5);
    v12 = sub_2FF718(v11, __ROR8__(*a3, 32));
    sub_4A5C(v12, ".", 1);
    if ((v38 & 0x10) != 0)
    {
      v25 = v37;
      if (v37 < v34)
      {
        v37 = v34;
        v25 = v34;
      }

      v26 = v33;
      v13 = v25 - v33;
      if (v25 - v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v38 & 8) == 0)
      {
        v13 = 0;
        v28 = 0;
LABEL_30:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v28 < 0)
        {
          operator delete(__dst);
        }

        if (v36 < 0)
        {
          operator delete(v35);
        }

        std::locale::~locale(&v30);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_35;
      }

      v26 = v31;
      v13 = v32 - v31;
      if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v26, v13);
    }

    goto LABEL_30;
  }

  v14 = v7;
  v15 = sub_3187E8(v6, v7, 1);
  if (v15 && (v16 = &v15[-*v15], *v16 >= 9u) && (v17 = *(v16 + 4)) != 0 && (v18 = &v15[v17], v19 = *v18, *&v18[v19] > HIDWORD(v14)) && (v20 = sub_318690(&v18[v19], v14)) != 0)
  {
    v21 = (v20 - *v20);
    if (*v21 >= 9u && (v22 = v21[4]) != 0)
    {
      v23 = (v20 + v22 + *(v20 + v22));
    }

    else
    {
      v23 = 0;
    }

    sub_31859C(v23, __p);
    v24 = *__p;
  }

  else
  {
    v30.__locale_ = 0;
    v24 = 0uLL;
    *__p = 0u;
  }

  sub_3790B0(*(a1 + 16), *(*(a1 + 16) + 8), v24, *(&v24 + 1), (*(&v24 + 1) - v24) >> 3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_F4AA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

unint64_t sub_F4AAA0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v9 = result;
  if (result != a2)
  {
    if (a3)
    {
      if (a5)
      {
        do
        {
          v14 = sub_4D1DC0(a3);
          result = sub_4D1DC0(a5);
          if (a4 >= v14 || a6 >= result)
          {
            if (a4 < v14 == a6 < result)
            {
              break;
            }
          }

          else
          {
            v15 = sub_4D1F50(a3, a4);
            result = sub_4D1F50(a5, a6);
            if (v15 == result)
            {
              break;
            }
          }

          result = sub_4D1F50(a3, a4);
          v16 = *(result + 32);
          if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v16), v16))
          {
            break;
          }

          if (*(v9 + 6) != BYTE6(v16))
          {
            break;
          }

          v9 += 8;
          ++a4;
        }

        while (v9 != a2);
      }

      else
      {
        do
        {
          result = sub_4D1DC0(a3);
          if (a4 >= result)
          {
            break;
          }

          result = sub_4D1F50(a3, a4);
          v17 = *(result + 32);
          if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v17), v17))
          {
            break;
          }

          if (*(v9 + 6) != BYTE6(v17))
          {
            break;
          }

          v9 += 8;
          ++a4;
        }

        while (v9 != a2);
      }
    }

    else if (a5)
    {
      do
      {
        result = sub_4D1DC0(a5);
        if (a6 >= result)
        {
          break;
        }

        result = sub_4D1F50(0, a4);
        v18 = *(result + 32);
        if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v18), v18))
        {
          break;
        }

        if (*(v9 + 6) != BYTE6(v18))
        {
          break;
        }

        v9 += 8;
        ++a4;
      }

      while (v9 != a2);
    }
  }

  *a7 = v9;
  a7[1] = a3;
  a7[2] = a4;
  return result;
}

__int128 *sub_F4AC7C(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  if (a1 != a2)
  {
LABEL_22:
    if (*(v3 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(v3 + 3) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(v3 + 10);
      v19 = *(v3 + 11);
      if (v18 != v19)
      {
        while (*(v18 + 16) != *(v18 + 24))
        {
          v18 += 80;
          if (v18 == v19)
          {
            v3 = (v3 + 104);
            v5 = a2;
            if (v3 != a2)
            {
              goto LABEL_22;
            }

            return v5;
          }
        }
      }
    }
  }

  if (v3 == a2)
  {
    return v3;
  }

  v4 = (v3 + 104);
  if ((v3 + 104) == a2)
  {
    return v3;
  }

  v5 = v3;
  do
  {
    v7 = v3;
    v3 = v4;
    if (*(v7 + 14) != 0x7FFFFFFFFFFFFFFFLL && *(v7 + 16) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = *(v7 + 23);
      v10 = *(v7 + 24);
      if (v9 != v10)
      {
        while (*(v9 + 16) != *(v9 + 24))
        {
          v9 += 80;
          if (v9 == v10)
          {
            v11 = *v3;
            v12 = v3[1];
            *(v5 + 8) = *(v3 + 8);
            *v5 = v11;
            v5[1] = v12;
            sub_6BE5B4(v5 + 40, v7 + 18);
            v13 = (v5 + 5);
            v14 = *(v5 + 10);
            if (v14)
            {
              v15 = *(v5 + 11);
              v6 = *(v5 + 10);
              if (v15 != v14)
              {
                do
                {
                  v16 = *(v15 - 64);
                  if (v16)
                  {
                    *(v15 - 56) = v16;
                    operator delete(v16);
                  }

                  v15 -= 80;
                }

                while (v15 != v14);
                v6 = *v13;
              }

              *(v5 + 11) = v14;
              operator delete(v6);
              *v13 = 0;
              *(v5 + 11) = 0;
              *(v5 + 12) = 0;
            }

            v5[5] = *(v7 + 184);
            *(v5 + 12) = *(v7 + 25);
            *(v7 + 23) = 0;
            *(v7 + 24) = 0;
            *(v7 + 25) = 0;
            v5 = (v5 + 104);
            break;
          }
        }
      }
    }

    v4 = (v3 + 104);
  }

  while ((v3 + 104) != a2);
  return v5;
}

uint64_t sub_F4AE1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = sub_3AF6B4(a2);
  sub_527724(a1 + 8, a3);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_67A1F8(a1 + 1584, a2, 0, 0, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_F35688(a1 + 4152, a2, a3, a1 + 4632);
  sub_F4D69C(a1 + 4456, a2);
  sub_F56A40(a1 + 4592, a2);
  *(a1 + 4624) = a4;
  *(a1 + 4632) = 0u;
  *(a1 + 4648) = 0u;
  *(a1 + 4664) = 0u;
  *(a1 + 4680) = 0u;
  *(a1 + 4692) = 0u;
  return a1;
}

void sub_F4AF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_F4AF44(uint64_t a1)
{
  if (*(a1 + 3959) < 0)
  {
    operator delete(*(a1 + 3936));
    sub_528AB4(a1 + 8);
  }

  else
  {
    sub_528AB4(a1 + 8);
  }

  return a1;
}

void sub_F4AF98(void **a1, uint64_t a2, void ***a3)
{
  v6 = sub_4C35B0(a2);
  v7 = a3[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a3) >> 4);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
        ;
      }

      a3[1] = i;
    }
  }

  else
  {
    sub_D3DFD8(a3, v6 - v8);
  }

  v10 = sub_58BBC(a2);
  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v11 >> 3);
    do
    {
      v14 = sub_4C49C0(a2, v12);
      v15 = sub_D3DDA4(a3, v12);
      sub_F4B0A0(a1, v14, v15);
      ++v12;
    }

    while (v13 != v12);
  }
}

void sub_F4B0A0(void **a1, void *a2, int8x8_t *a3)
{
  a3[13].i8[0] = sub_F4B468(a1, a2);
  if (!sub_7E7E4(1u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v18);
  sub_4A5C(&v18, "GeometryProcessor running. Springfield? ", 40);
  std::ostream::operator<<();
  if ((v28 & 0x10) != 0)
  {
    v7 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v7 = v24;
    }

    v8 = v23;
    v6 = v7 - v23;
    if (v7 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_31:
      sub_3244();
    }

LABEL_8:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v17 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_13;
  }

  if ((v28 & 8) != 0)
  {
    v8 = v21;
    v6 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v17 = 0;
LABEL_13:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  if (a1[578] & 1) == 0 && sub_4C2C84((a1 + 519)) && (a3[13].i8[0])
  {
    ++*(a1 + 1168);
    sub_F4B77C(a1, a2, a3);
  }

  ++*(a1 + 1169);
  sub_4E5950(*a1, a2, a3);
  v9 = sub_4D27A4(a2);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*v9 != v11)
  {
    do
    {
      v12 = v10[5] - v10[4];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_F54E4C((*a3 + 40 * *v10 + v13), v10[4] + v14);
          v14 += 24;
          v13 += 40;
          --v15;
        }

        while (v15);
      }

      ++*(a1 + 1176);
      v10 += 8;
    }

    while (v10 != v11);
  }
}

void sub_F4B410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_F4B468(_BYTE *a1, void *a2)
{
  if (a1[1433] != 1)
  {
    return 0;
  }

  v36 = v2;
  v37 = v3;
  if (a1[1434] != 1)
  {
    return 0;
  }

  sub_4D1DDC(a2, v33);
  v5 = v33[0];
  v6 = v33[1];
  v7 = v34;
  v8 = v35;
  if (!v33[0])
  {
    if (!v34 || v8 >= sub_4D1DC0(v34))
    {
      return 0;
    }

    while (1)
    {
      v20 = *(sub_4D1F50(0, v6) + 8);
      v21 = (v20 - *v20);
      if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
      {
        v23 = *(v20 + v22);
        v24 = a1[1575];
        v25 = a1[4081];
        if (v24)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v23 = 0;
        v24 = a1[1575];
        v25 = a1[4081];
        if (v24)
        {
          goto LABEL_41;
        }
      }

      if ((v25 & 1) == 0)
      {
        if ((v23 & 0x40) != 0)
        {
          return 1;
        }

        goto LABEL_34;
      }

LABEL_41:
      if ((v24 & 1) != 0 || !v25)
      {
        if (!v24 || (v25 & 1) != 0)
        {
          if ((v23 & 0x60C0) != 0)
          {
            return 1;
          }
        }

        else if ((v23 & 0x2040) != 0)
        {
          return 1;
        }
      }

      else if ((v23 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_34:
      v6 = (v6 + 1);
      v19 = sub_4D1DC0(v7);
      result = 0;
      if (v8 >= v19)
      {
        return result;
      }
    }
  }

  if (v34)
  {
    while (1)
    {
      v9 = sub_4D1DC0(v5);
      v10 = sub_4D1DC0(v7);
      if (v6 >= v9 || v8 >= v10)
      {
        if (v6 < v9 == v8 < v10)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_4D1F50(v5, v6);
        if (v11 == sub_4D1F50(v7, v8))
        {
          return 0;
        }
      }

      v12 = *(sub_4D1F50(v5, v6) + 8);
      v13 = (v12 - *v12);
      if (*v13 >= 0x11u && (v14 = v13[8]) != 0)
      {
        v15 = *(v12 + v14);
        v16 = a1[1575];
        v17 = a1[4081];
        if (v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v15 = 0;
        v16 = a1[1575];
        v17 = a1[4081];
        if (v16)
        {
          goto LABEL_19;
        }
      }

      if ((v17 & 1) == 0)
      {
        if ((v15 & 0x40) != 0)
        {
          return 1;
        }

        goto LABEL_7;
      }

LABEL_19:
      if ((v16 & 1) != 0 || !v17)
      {
        if (!v16 || (v17 & 1) != 0)
        {
          if ((v15 & 0x60C0) != 0)
          {
            return 1;
          }
        }

        else if ((v15 & 0x2040) != 0)
        {
          return 1;
        }
      }

      else if ((v15 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_7:
      v6 = (v6 + 1);
    }
  }

  if (v6 < sub_4D1DC0(v33[0]))
  {
    while (1)
    {
      v27 = *(sub_4D1F50(v5, v6) + 8);
      v28 = (v27 - *v27);
      if (*v28 >= 0x11u && (v29 = v28[8]) != 0)
      {
        v30 = *(v27 + v29);
        v31 = a1[1575];
        v32 = a1[4081];
        if (v31)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v30 = 0;
        v31 = a1[1575];
        v32 = a1[4081];
        if (v31)
        {
          goto LABEL_62;
        }
      }

      if ((v32 & 1) == 0)
      {
        if ((v30 & 0x40) != 0)
        {
          return 1;
        }

        goto LABEL_55;
      }

LABEL_62:
      if ((v31 & 1) != 0 || !v32)
      {
        if (!v31 || (v32 & 1) != 0)
        {
          if ((v30 & 0x60C0) != 0)
          {
            return 1;
          }
        }

        else if ((v30 & 0x2040) != 0)
        {
          return 1;
        }
      }

      else if ((v30 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_55:
      v6 = (v6 + 1);
      v26 = sub_4D1DC0(v5);
      result = 0;
      if (v6 >= v26)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_F4B77C(uint64_t a1, void *a2, int8x8_t *a3)
{
  sub_F3568C((a1 + 4152), a2, &v8);
  sub_F4BAF8(a1, &v8, a3);
  sub_F4B9B0(&v8, &v7);
  sub_F51C64(a1 + 4456, a2, a3, &v7);
  sub_F539E8(&v7, &__p);
  sub_F56A44((a1 + 4592), a2, &__p, a3, a1 + 4632);
}

void sub_F4B93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    operator delete(__p);
    sub_F4BA70(&a13);
    sub_F4CC58(va);
    _Unwind_Resume(a1);
  }

  sub_F4BA70(&a13);
  sub_F4CC58(va);
  _Unwind_Resume(a1);
}

void sub_F4B988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_F4CC58(va);
  _Unwind_Resume(a1);
}

void sub_F4B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_F4CC58(va);
  _Unwind_Resume(a1);
}

void sub_F4B9B0(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      sub_F53778(v5, v2);
      sub_F5395C(a2, v5);
      if (__p)
      {
        v7 = __p;
        operator delete(__p);
      }

      if (v5[0])
      {
        v5[1] = v5[0];
        operator delete(v5[0]);
      }

      v2 += 13;
    }

    while (v2 != v3);
  }
}

void sub_F4BA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F4C8D8(va);
  sub_F4BA70(v3);
  _Unwind_Resume(a1);
}

char **sub_F4BA70(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 136;
        v7 = *(v3 - 17);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 136;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_F4BAF8(uint64_t a1, int8x8_t **a2, int8x8_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  while (2)
  {
    v6 = sub_45AC50(v3);
    v7 = sub_588E0(v3);
    if (v6 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (v6 >= v7)
    {
      goto LABEL_3;
    }

    while (2)
    {
      v9 = sub_681D38(v3);
      v19 = v6;
      v20 = &v19;
      *(sub_F4CECC(&a3[3], &v19, &unk_229EB70, &v20) + 6) = v9;
      if (!sub_F533D4(v3, v6))
      {
        goto LABEL_10;
      }

      v10 = sub_F533D4(v3, v6);
      v11 = a3[9];
      if (!*&v11)
      {
        goto LABEL_9;
      }

      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      if (v12.u32[0] > 1uLL)
      {
        v13 = v6;
        if (*&v11 <= v6)
        {
          v13 = v6 % *&v11;
        }
      }

      else
      {
        v13 = (*&v11 - 1) & v6;
      }

      v14 = *(*&a3[8] + 8 * v13);
      if (!v14 || (v15 = *v14) == 0)
      {
LABEL_9:
        v20 = v6;
        v21 = v10;
        sub_F4C91C(&a3[8], &v20, &v20);
        goto LABEL_10;
      }

      if (v12.u32[0] < 2uLL)
      {
        v16 = *&v11 - 1;
        while (1)
        {
          v17 = v15[1];
          if (v17 == v6)
          {
            if (v15[2] == v6)
            {
              goto LABEL_33;
            }
          }

          else if ((v17 & v16) != v13)
          {
            goto LABEL_9;
          }

          v15 = *v15;
          if (!v15)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
        v18 = v15[1];
        if (v18 == v6)
        {
          break;
        }

        if (v18 >= *&v11)
        {
          v18 %= *&v11;
        }

        if (v18 != v13)
        {
          goto LABEL_9;
        }

LABEL_27:
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      if (v15[2] != v6)
      {
        goto LABEL_27;
      }

LABEL_33:
      *(v15 + 6) |= v10;
LABEL_10:
      if (++v6 != v8)
      {
        continue;
      }

      break;
    }

LABEL_3:
    v3 += 13;
    if (v3 != v4)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_F4BCD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = sub_3AF6B4(a2);
  sub_527724(a1 + 8, a3);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_67A1F8(a1 + 1584, a2, 2u, 0, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_F40E98(a1 + 4152, a2, a3, a1 + 4632);
  sub_F510B8(a1 + 4456, a2);
  sub_F5BB08(a1 + 4592, a2);
  *(a1 + 4624) = a4;
  *(a1 + 4632) = 0u;
  *(a1 + 4648) = 0u;
  *(a1 + 4664) = 0u;
  *(a1 + 4680) = 0u;
  *(a1 + 4692) = 0u;
  return a1;
}

void sub_F4BDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4(v15);
  _Unwind_Resume(a1);
}

void sub_F4BDFC(uint64_t a1, uint64_t a2, void ***a3)
{
  v6 = sub_4C35B0(a2);
  v7 = a3[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a3) >> 4);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
        ;
      }

      a3[1] = i;
    }
  }

  else
  {
    sub_D3DFD8(a3, v6 - v8);
  }

  v10 = sub_58BBC(a2);
  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v11 >> 3);
    do
    {
      while (1)
      {
        v14 = sub_4C49C0(a2, v12);
        v15 = sub_D3DDA4(a3, v12);
        if ((*(a1 + 4084) & 1) == 0)
        {
          break;
        }

        sub_F4BF28(a1, v14, v15);
        if (v13 == ++v12)
        {
          return;
        }
      }

      sub_4E57A8(*a1, v14, v15);
      ++v12;
    }

    while (v13 != v12);
  }
}

void sub_F4BF28(uint64_t a1, void *a2, int8x8_t *a3)
{
  a3[13].i8[0] = sub_F4C2E4(a1);
  if (!sub_7E7E4(1u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v18);
  sub_4A5C(&v18, "GeometryProcessor running. Springfield? ", 40);
  std::ostream::operator<<();
  if ((v28 & 0x10) != 0)
  {
    v7 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v7 = v24;
    }

    v8 = v23;
    v6 = v7 - v23;
    if (v7 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_31:
      sub_3244();
    }

LABEL_8:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v17 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_13;
  }

  if ((v28 & 8) != 0)
  {
    v8 = v21;
    v6 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v17 = 0;
LABEL_13:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  if (*(a1 + 4624) & 1) == 0 && sub_4C2C84(a1 + 4152) && (a3[13].i8[0])
  {
    ++*(a1 + 4672);
    sub_F4C55C(a1, a2, a3);
  }

  ++*(a1 + 4676);
  sub_4E57A8(*a1, a2, a3);
  v9 = sub_4D27A4(a2);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*v9 != v11)
  {
    do
    {
      v12 = v10[5] - v10[4];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_F54E4C((*a3 + 40 * *v10 + v13), v10[4] + v14);
          v14 += 24;
          v13 += 40;
          --v15;
        }

        while (v15);
      }

      ++*(a1 + 4704);
      v10 += 8;
    }

    while (v10 != v11);
  }
}

void sub_F4C298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_F4C2E4(uint64_t a1)
{
  if (*(a1 + 1433) != 1)
  {
    return 0;
  }

  sub_4D0560();
  v3 = v2;
  v5 = v4;
  sub_4D0568();
  v8 = v6;
  v9 = v7;
  if (!v3)
  {
    if (!v6 || v7 >= sub_4D1DC0(v6))
    {
      return 0;
    }

    while (1)
    {
      v24 = *(sub_4D1F50(0, v5) + 8);
      v25 = (v24 - *v24);
      if (*v25 >= 0x11u && (v26 = v25[8]) != 0)
      {
        v27 = *(v24 + v26);
        if ((*(a1 + 4081) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        LOBYTE(v27) = 0;
        if ((*(a1 + 4081) & 1) == 0)
        {
LABEL_34:
          if ((v27 & 0x40) != 0)
          {
            return 1;
          }

          goto LABEL_35;
        }
      }

      if ((v27 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_35:
      ++v5;
      v23 = sub_4D1DC0(v8);
      result = 0;
      if (v9 >= v23)
      {
        return result;
      }
    }
  }

  if (v6)
  {
    while (1)
    {
      v11 = sub_4D1DC0(v3);
      v12 = sub_4D1DC0(v8);
      if (v5 >= v11 || v9 >= v12)
      {
        if (v5 < v11 == v9 < v12)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_4D1F50(v3, v5);
        if (v13 == sub_4D1F50(v8, v9))
        {
          return 0;
        }
      }

      v14 = *(sub_4D1F50(v3, v5) + 8);
      v15 = (v14 - *v14);
      if (*v15 >= 0x11u && (v16 = v15[8]) != 0)
      {
        v17 = *(v14 + v16);
        if ((*(a1 + 4081) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        LOBYTE(v17) = 0;
        if ((*(a1 + 4081) & 1) == 0)
        {
LABEL_7:
          if ((v17 & 0x40) != 0)
          {
            return 1;
          }

          goto LABEL_8;
        }
      }

      if ((v17 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_8:
      ++v5;
    }
  }

  if (v5 < sub_4D1DC0(v3))
  {
    while (1)
    {
      v19 = *(sub_4D1F50(v3, v5) + 8);
      v20 = (v19 - *v19);
      if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
      {
        v22 = *(v19 + v21);
        if ((*(a1 + 4081) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        LOBYTE(v22) = 0;
        if ((*(a1 + 4081) & 1) == 0)
        {
LABEL_22:
          if ((v22 & 0x40) != 0)
          {
            return 1;
          }

          goto LABEL_23;
        }
      }

      if ((v22 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_23:
      ++v5;
      v18 = sub_4D1DC0(v3);
      result = 0;
      if (v5 >= v18)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_F4C55C(uint64_t a1, void *a2, int8x8_t *a3)
{
  sub_F40E9C((a1 + 4152), a2, &v8);
  sub_F4BAF8(a1, &v8, a3);
  sub_F4C790(&v8, &v7);
  sub_F5243C(a1 + 4456, a2, a3, &v7);
  sub_F540E4(&v7, &__p);
  sub_F5BB0C((a1 + 4592), a2, &__p, a3, a1 + 4632);
}

void sub_F4C71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    operator delete(__p);
    sub_F4C850(&a13);
    sub_F4CDB4(va);
    _Unwind_Resume(a1);
  }

  sub_F4C850(&a13);
  sub_F4CDB4(va);
  _Unwind_Resume(a1);
}

void sub_F4C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_F4CDB4(va);
  _Unwind_Resume(a1);
}

void sub_F4C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_F4CDB4(va);
  _Unwind_Resume(a1);
}

void sub_F4C790(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      sub_F5387C(v5, v2);
      sub_F54058(a2, v5);
      if (__p)
      {
        v7 = __p;
        operator delete(__p);
      }

      if (v5[0])
      {
        v5[1] = v5[0];
        operator delete(v5[0]);
      }

      v2 += 13;
    }

    while (v2 != v3);
  }
}

void sub_F4C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F4CD70(va);
  sub_F4C850(v3);
  _Unwind_Resume(a1);
}

char **sub_F4C850(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 120;
        v7 = *(v3 - 15);
        if (v7)
        {
          *(v3 - 14) = v7;
          operator delete(v7);
        }

        v3 -= 120;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_F4C8D8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_F4C91C(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

char **sub_F4CC58(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_F4CCBC(a1, i))
    {
      i -= 13;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_F4CCBC(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    v4 = a2[11];
    v5 = a2[10];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 64);
        if (v6)
        {
          *(v4 - 56) = v6;
          operator delete(v6);
        }

        v4 -= 96;
      }

      while (v4 != v3);
      v5 = a2[10];
    }

    a2[11] = v3;
    operator delete(v5);
  }

  v7 = a2[7];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a2[5];
  a2[5] = 0;
  if (v9)
  {

    operator delete(v9);
  }
}

uint64_t sub_F4CD70(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

char **sub_F4CDB4(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_F4CE18(a1, i))
    {
      i -= 13;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_F4CE18(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    v4 = a2[11];
    v5 = a2[10];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 64);
        if (v6)
        {
          *(v4 - 56) = v6;
          operator delete(v6);
        }

        v4 -= 80;
      }

      while (v4 != v3);
      v5 = a2[10];
    }

    a2[11] = v3;
    operator delete(v5);
  }

  v7 = a2[7];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a2[5];
  a2[5] = 0;
  if (v9)
  {

    operator delete(v9);
  }
}

void *sub_F4CECC(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (v9[2] == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_F4D208()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BF638 = 0u;
  unk_27BF648 = 0u;
  dword_27BF658 = 1065353216;
  sub_3A9A34(&xmmword_27BF638, v0, v0);
  sub_3A9A34(&xmmword_27BF638, v3, v3);
  sub_3A9A34(&xmmword_27BF638, __p, __p);
  sub_3A9A34(&xmmword_27BF638, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BF610 = 0;
    qword_27BF618 = 0;
    qword_27BF608 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F4D450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF620)
  {
    qword_27BF628 = qword_27BF620;
    operator delete(qword_27BF620);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4D678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F4DE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4DE94(double *a1, int a2, void *a3, double a4)
{
  if (sub_F53860(a3) >= 2)
  {
    if (!sub_F54EF8(a3))
    {
      sub_F54EA8(a3, *(a1 + 7), *(a1 + 8));
    }

    v8 = a1[2];
    v9 = sub_F53860(a3);
    nullsub_1();
    v11 = *(a1 + 10) / 100.0;
    v12 = a1[4];

    sub_732584(a2, v9, v10, a4, v8, v11, v12);
  }
}

void sub_F4DF64(uint64_t *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_F4E174(a2, v22);
  v6 = __p;
  if (__p)
  {
    v7 = 0;
    do
    {
      v21 = v6[2];
      if (sub_F4E2A4(a1, a2, &v21, v22))
      {
        v8 = sub_3177A0(*a1, v21);
        v10 = a3[2];
        if (v7 < v10)
        {
          *v7 = v8;
          *(v7 + 2) = v9;
          v7 += 12;
        }

        else
        {
          v11 = *a3;
          v12 = v7 - *a3;
          v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2) + 1;
          if (v13 > 0x1555555555555555)
          {
            sub_1794();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 2);
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            if (v15 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v16 = 4 * (v12 >> 2);
          *v16 = v8;
          *(v16 + 8) = v9;
          v7 = (v16 + 12);
          v17 = (v16 - v12);
          memcpy((v16 - v12), v11, v12);
          *a3 = v17;
          a3[1] = v7;
          a3[2] = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        a3[1] = v7;
      }

      v6 = *v6;
    }

    while (v6);
    v18 = __p;
    if (__p)
    {
      do
      {
        v19 = *v18;
        operator delete(v18);
        v18 = v19;
      }

      while (v19);
    }
  }

  v20 = v22[0];
  v22[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }
}

void sub_F4E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_F4E174@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  result = sub_4D1DC0(a1);
  if (result != 1)
  {
    v4 = sub_4D1F50(a1, 0);
    sub_3116D0(v4);
    operator new();
  }

  return result;
}

void sub_F4E288(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_11BD8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_F4E2A4(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_3A8760(a4, a3);
  if (result)
  {
    v6 = result;
    do
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }
    }

    while (*(v6 + 4) == *a3 && *(v6 + 5) == *(a3 + 4));
    if (result != v6)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void sub_F4E4F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4E514(uint64_t *a1, void *a2, void *a3)
{
  sub_F4E174(a2, &v37);
  sub_F4E838(a1, a2, a3, a1[5], &v35);
  __p = 0;
  v33 = 0;
  v34 = 0;
  v6 = v35;
  v7 = v36;
  if (v35 != v36)
  {
    v8 = 0;
    do
    {
      v11 = *(v6 + 4);
      v12 = *(v6 + 5);
      if (sub_F539BC(a3) > v11)
      {
        v13 = sub_F539D8(a3, v11);
        if (v12 == sub_F53860(v13))
        {
          do
          {
            if (++v11 >= sub_F539BC(a3))
            {
              break;
            }

            v14 = sub_F539D8(a3, v11);
          }

          while (!sub_F53860(v14));
          v12 = 0;
        }
      }

      v15 = sub_F539D8(a3, v11);
      v16 = sub_F53284(v15, v12);
      v17 = *(v6 + 6);
      *(v16 + 8) = *(v6 + 14);
      *v16 = v17;
      if (v8 < v34)
      {
        v9 = *v6;
        *(v8 + 16) = *(v6 + 2);
        *v8 = v9;
        v10 = *(v6 + 24);
        *(v8 + 40) = *(v6 + 5);
        *(v8 + 24) = v10;
        v8 += 48;
      }

      else
      {
        v18 = __p;
        v19 = v8 - __p;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 4) + 1;
        if (v20 > 0x555555555555555)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v34 - __p) >> 4) > v20)
        {
          v20 = 0x5555555555555556 * ((v34 - __p) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v34 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v21 = 0x555555555555555;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          if (v21 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v22 = 16 * ((v8 - __p) >> 4);
        v23 = *v6;
        *(v22 + 16) = *(v6 + 2);
        *v22 = v23;
        v24 = *(v6 + 24);
        *(v22 + 40) = *(v6 + 5);
        *(v22 + 24) = v24;
        if (v18 != v8)
        {
          v25 = v18;
          v26 = (v22 - v19);
          do
          {
            v27 = *v25;
            v28 = v25[2];
            v26[1] = v25[1];
            v26[2] = v28;
            *v26 = v27;
            v26 += 3;
            v25 += 3;
          }

          while (v25 != v8);
        }

        v8 = v22 + 48;
        __p = (v22 - v19);
        v33 = v22 + 48;
        v34 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      v33 = v8;
      v6 += 64;
    }

    while (v6 != v7);
  }

  sub_F53D0C(a3, &__p);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v29 = v38;
  if (v38)
  {
    do
    {
      v30 = *v29;
      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v31 = v37;
  v37 = 0;
  if (v31)
  {
    operator delete(v31);
  }
}

void sub_F4E7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    operator delete(__p);
    v16 = a13;
    if (!a13)
    {
LABEL_3:
      sub_11BD8(va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v16 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_F4E838(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_F4DF64(a1, a2, &__p);
  sub_F4F260(a3, &v100);
  v6 = 0;
  v7 = 0;
  v90 = a3;
  while (1)
  {
    sub_F4F2F4(a3, v99);
    v10 = v101;
    if (v101 == *&v99[8])
    {
      v11 = v102;
      if (v102 == *&v99[16])
      {
        break;
      }
    }

    else
    {
      v11 = v102;
    }

    v12 = v100;
    if (v10 < sub_F539BC(v100))
    {
      v13 = sub_F539D8(v12, v10);
      v14 = sub_F53860(v13);
      v15 = v11 + 1;
      if (v11 + 1 < v14)
      {
        goto LABEL_23;
      }

      ++v10;
      if (v11 - v14 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v15 = v11 - v14 + 1;
        do
        {
          if (v10 >= sub_F539BC(v12))
          {
            break;
          }

          v16 = sub_F539D8(v12, v10);
          v17 = sub_F53860(v16);
          v18 = v15 - v17;
          if (v15 < v17)
          {
            goto LABEL_23;
          }

          ++v10;
          v15 -= v17;
        }

        while (v18 > 0);
      }

      v11 = 0;
    }

    if (v10 < sub_F539BC(v12) && (v19 = sub_F539D8(v12, v10), v11 == sub_F53860(v19)))
    {
      do
      {
        if (++v10 >= sub_F539BC(v12))
        {
          break;
        }

        v20 = sub_F539D8(v12, v10);
      }

      while (!sub_F53860(v20));
      v15 = 0;
    }

    else
    {
      v15 = v11;
    }

LABEL_23:
    sub_F4F2F4(a3, v99);
    if (v10 == *&v99[8] && v15 == *&v99[16])
    {
      break;
    }

    v93 = v15;
    v94 = v10;
    if (a4 < 1)
    {
      goto LABEL_103;
    }

    v21 = 0;
    do
    {
LABEL_28:
      v22 = v10;
      v23 = v15;
      if (v10 >= sub_F539BC(v12))
      {
        goto LABEL_36;
      }

      v24 = sub_F539D8(v12, v10);
      v25 = sub_F53860(v24);
      v22 = v10;
      v23 = v15 + 1;
      if (v15 + 1 >= v25)
      {
        v22 = v10 + 1;
        if (v15 - v25 <= 0x7FFFFFFFFFFFFFFELL)
        {
          v23 = v15 - v25 + 1;
          do
          {
            if (v22 >= sub_F539BC(v12))
            {
              break;
            }

            v26 = sub_F539D8(v12, v22);
            v27 = sub_F53860(v26);
            v28 = v23 - v27;
            if (v23 < v27)
            {
              goto LABEL_41;
            }

            ++v22;
            v23 -= v27;
          }

          while (v28 > 0);
        }

        v23 = 0;
LABEL_36:
        if (v22 < sub_F539BC(v12))
        {
          v29 = sub_F539D8(v12, v22);
          if (v23 == sub_F53860(v29))
          {
            do
            {
              if (++v22 >= sub_F539BC(v12))
              {
                break;
              }

              v30 = sub_F539D8(v12, v22);
            }

            while (!sub_F53860(v30));
            v23 = 0;
          }
        }
      }

LABEL_41:
      v31 = sub_F539BC(a3);
      if (sub_F539BC(a3) > v31)
      {
        v32 = sub_F539D8(a3, v31);
        if (!sub_F53860(v32))
        {
          do
          {
            if (++v31 >= sub_F539BC(a3))
            {
              break;
            }

            v57 = sub_F539D8(a3, v31);
          }

          while (!sub_F53860(v57));
        }
      }

      if (v22 == v31 && !v23)
      {
        break;
      }

      v95 = v15;
      v96 = v10;
      *v99 = -1;
      *&v99[8] = 0x7FFFFFFF;
      v33 = sub_F539D8(v100, v101);
      v34 = sub_F53284(v33, v102);
      v35 = sub_F539D8(v12, v94);
      v36 = sub_F53284(v35, v93);
      v37 = sub_F539D8(v12, v10);
      v38 = sub_F53284(v37, v15);
      v39 = sub_F539D8(v12, v22);
      v40 = sub_F53284(v39, v23);
      if (!sub_F4F36C(v34, v36, v38, v40, v99))
      {
        goto LABEL_65;
      }

      v87 = v21;
      v88 = v6;
      v89 = v7;
      v41 = __p;
      v42 = v104;
      if (__p == v104)
      {
LABEL_66:
        v55 = v88;
        v7 = v89;
        v54 = v95;
        if (v89 != v88 && *(v88 - 7) == v94 && *(v88 - 6) == v93)
        {
          v55 = (v88 - 64);
          a5[1] = v88 - 64;
        }

        v97 = *v99;
        v98 = *&v99[8];
        v56 = a5[2];
        if (v55 >= v56)
        {
          v58 = (v55 - v89) >> 6;
          v59 = v58 + 1;
          if ((v58 + 1) >> 58)
          {
            *a5 = v89;
            sub_1794();
          }

          v60 = v56 - v89;
          if (v60 >> 5 > v59)
          {
            v59 = v60 >> 5;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFC0)
          {
            v61 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v59;
          }

          if (v61)
          {
            if (!(v61 >> 58))
            {
              operator new();
            }

            *a5 = v89;
            sub_1808();
          }

          v62 = v58 << 6;
          *v62 = v12;
          *(v62 + 8) = v94;
          *(v62 + 16) = v93;
          *(v62 + 24) = v12;
          *(v62 + 32) = v96;
          *(v62 + 40) = v95;
          *(v62 + 48) = v97;
          *(v62 + 56) = v98;
          if (v89 != v55)
          {
            v63 = v89;
            v64 = 0;
            do
            {
              v65 = *v63;
              v66 = *(v63 + 1);
              v67 = *(v63 + 3);
              v64[2] = *(v63 + 2);
              v64[3] = v67;
              *v64 = v65;
              v64[1] = v66;
              v64 += 4;
              v63 += 64;
            }

            while (v63 != v55);
          }

          v6 = (v62 + 64);
          a5[1] = (v62 + 64);
          a5[2] = 0;
          v7 = 0;
        }

        else
        {
          *v55 = v12;
          *(v55 + 8) = v94;
          *(v55 + 16) = v93;
          *(v55 + 24) = v12;
          *(v55 + 32) = v96;
          *(v55 + 40) = v95;
          *(v55 + 48) = v97;
          *(v55 + 56) = v98;
          v6 = (v55 + 64);
        }

        v21 = v87;
        a5[1] = v6;
        goto LABEL_89;
      }

      v43 = *v99;
      v44 = *&v99[4];
      v45 = *&v99[4] >> 1;
      v46 = a1[16];
      while (1)
      {
        v47 = v41[1];
        v48 = exp((v45 + (v47 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
        v49 = atan((v48 + -1.0 / v48) * 0.5);
        v50 = sqrt(((v47 - v44) * (v47 - v44) + (*v41 - v43) * (*v41 - v43))) / 100.0 * 100.0 * (cos(v49 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) * 100.0;
        if (v50 >= 0.0)
        {
          v51 = v50;
          if (v50 >= 4.50359963e15)
          {
            goto LABEL_56;
          }

          v52 = (v50 + v50) + 1;
        }

        else
        {
          v51 = v50;
          if (v50 <= -4.50359963e15)
          {
            goto LABEL_56;
          }

          v52 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
        }

        v51 = (v52 >> 1);
LABEL_56:
        if (v51 < 9.22337204e18)
        {
          break;
        }

        if (v46 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_64;
        }

LABEL_49:
        v41 += 3;
        if (v41 == v42)
        {
          goto LABEL_66;
        }
      }

      if (v50 >= 0.0)
      {
        if (v50 < 4.50359963e15)
        {
          v53 = (v50 + v50) + 1;
LABEL_62:
          v50 = (v53 >> 1);
        }
      }

      else if (v50 > -4.50359963e15)
      {
        v53 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
        goto LABEL_62;
      }

      if (v50 >= v46)
      {
        goto LABEL_49;
      }

LABEL_64:
      v6 = v88;
      v7 = v89;
      v21 = v87;
LABEL_65:
      v54 = v95;
LABEL_89:
      v68 = sub_F539D8(v12, v96);
      v69 = sub_F53284(v68, v54);
      v70 = sub_F539D8(v12, v22);
      v71 = sub_F53284(v70, v23);
      v72 = v21;
      v73 = v6;
      v74 = v69[1];
      v75 = v71[1];
      v76 = exp(((v75 >> 1) + (v74 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
      v77 = atan((v76 + -1.0 / v76) * 0.5);
      v78 = cos(v77 * 57.2957795 / 180.0 * 3.14159265);
      v79 = *v69 - *v71;
      v80 = sqrt(((v74 - v75) * (v74 - v75) + v79 * v79)) / 100.0 * 100.0 * (v78 * 0.00932288077) * 100.0;
      if (v80 >= 0.0)
      {
        v81 = v80;
        a3 = v90;
        v82 = v72;
        if (v80 < 4.50359963e15)
        {
          v83 = (v80 + v80) + 1;
LABEL_94:
          v81 = (v83 >> 1);
        }
      }

      else
      {
        v81 = v80;
        a3 = v90;
        v82 = v72;
        if (v80 > -4.50359963e15)
        {
          v83 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
          goto LABEL_94;
        }
      }

      v6 = v73;
      if (v81 >= 9.22337204e18)
      {
        v21 = v82 + 0x7FFFFFFFFFFFFFFELL;
        v15 = v23;
        v10 = v22;
        if (v21 >= a4)
        {
          break;
        }

        goto LABEL_28;
      }

      if (v80 >= 0.0)
      {
        if (v80 < 4.50359963e15)
        {
          v84 = (v80 + v80) + 1;
LABEL_101:
          v80 = (v84 >> 1);
        }
      }

      else if (v80 > -4.50359963e15)
      {
        v84 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
        goto LABEL_101;
      }

      v21 = v80 + v82;
      v15 = v23;
      v10 = v22;
    }

    while (v21 < a4);
LABEL_103:
    *a5 = v7;
    if (v7 == v6)
    {
      v9 = v93;
      v8 = v94;
    }

    else
    {
      v9 = v93;
      v8 = v94;
      if (*(v6 - 7) == v94 && *(v6 - 6) == v93)
      {
        v85 = *(v6 - 40);
        *&v99[16] = *(v6 - 3);
        *v99 = v85;
        sub_F52444(v99, 1);
        v8 = *&v99[8];
        v9 = *&v99[16];
      }
    }

    v101 = v8;
    v102 = v9;
  }

  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }
}

void sub_F4F1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F4F260@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a1;
  result = sub_F539BC(a1);
  if (result)
  {
    v5 = sub_F539D8(a1, 0);
    result = sub_F53860(v5);
    v6 = 0;
    if (!result)
    {
      result = sub_F539BC(a1);
      v6 = 1;
      if (result >= 2)
      {
        do
        {
          v7 = sub_F539D8(a1, v6);
          result = sub_F53860(v7);
          if (result)
          {
            break;
          }

          ++v6;
          result = sub_F539BC(a1);
        }

        while (v6 < result);
      }
    }

    a2[1] = v6;
    a2[2] = 0;
  }

  return result;
}

unint64_t sub_F4F2F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_F539BC(a1);
  *a2 = a1;
  a2[1] = v4;
  a2[2] = 0;
  result = sub_F539BC(a1);
  if (result > v4)
  {
    do
    {
      v6 = sub_F539D8(a1, v4);
      result = sub_F53860(v6);
      if (result)
      {
        break;
      }

      ++v4;
      result = sub_F539BC(a1);
    }

    while (v4 < result);
    a2[1] = v4;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_F4F36C(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_3B988(a1, a2, a3, a4, a5);
  if (result)
  {
    if (*a2 != *a3 || ((v9 = a2[1], v9 == a3[1]) ? (v10 = *a2 == *a5) : (v10 = 0), v10 ? (v11 = v9 == a5[1]) : (v11 = 0), !v11))
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void sub_F4F7BC(uint64_t a1, char *a2)
{
  if (*(a1 + 88) > 0.0)
  {
    sub_F539E8(a2, &v28);
    v4 = v28;
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 2);
    if (v5 >= 2)
    {
      v6 = *(a1 + 88);
      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_41DB4(&v28, v5, 1, 1, &__p, &v26, v6);
      if (__p)
      {
        operator delete(__p);
      }

      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_F4F260(a2, v22);
      sub_F4F260(a2, v21);
      v7 = v27;
      if (v27 >= 2)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          sub_F52444(v21, 1);
          v11 = *(v26 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v9);
          if ((*(v26 + (((v9 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 1)))
          {
            if (!v11)
            {
              *&v22[8] = *&v21[8];
            }
          }

          else if (v11)
          {
            if (v8 < v25)
            {
              v10 = *v22;
              *(v8 + 16) = *&v22[16];
              *v8 = v10;
              *(v8 + 24) = *v21;
              *(v8 + 40) = *&v21[16];
              v8 += 48;
            }

            else
            {
              v12 = __p;
              v13 = v8 - __p;
              v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 4) + 1;
              if (v14 > 0x555555555555555)
              {
                sub_1794();
              }

              if (0x5555555555555556 * ((v25 - __p) >> 4) > v14)
              {
                v14 = 0x5555555555555556 * ((v25 - __p) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v25 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v15 = 0x555555555555555;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                if (v15 <= 0x555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v16 = 16 * ((v8 - __p) >> 4);
              *v16 = *v22;
              *(v16 + 16) = *&v22[16];
              *(v16 + 24) = *v21;
              *(v16 + 40) = *&v21[16];
              if (v12 != v8)
              {
                v17 = v12;
                v18 = (v16 - v13);
                do
                {
                  v19 = *v17;
                  v20 = v17[2];
                  v18[1] = v17[1];
                  v18[2] = v20;
                  *v18 = v19;
                  v18 += 3;
                  v17 += 3;
                }

                while (v17 != v8);
              }

              v8 = v16 + 48;
              __p = (v16 - v13);
              v24 = v16 + 48;
              v25 = 0;
              if (v12)
              {
                operator delete(v12);
              }
            }

            v24 = v8;
          }

          ++v9;
        }

        while (v7 != v9);
      }

      sub_F53D0C(a2, &__p);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        operator delete(v26);
      }

      v4 = v28;
    }

    if (v4)
    {
      v29 = v4;
      operator delete(v4);
    }
  }
}

void sub_F4FA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4FADC(uint64_t a1, int8x8_t *a2, void *a3)
{
  v6 = sub_F539BC(a3);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v78 = v6;
    do
    {
      v9 = sub_F539D8(a3, v8);
      v10 = sub_F53274(v9);
      if (v10 == 3)
      {
        goto LABEL_3;
      }

      v11 = v10;
      if (v8)
      {
        v12 = sub_F539D8(a3, v8 - 1);
        v13 = sub_F53274(v12);
        if (v11 != 1 || v13 == 1)
        {
          v14 = v11 == 4 && v13 == 4;
          v15 = sub_F539BC(a3);
          v16 = 0;
          if (v11 != 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v14 = 1;
          v15 = sub_F539BC(a3);
          v16 = 0;
        }
      }

      else
      {
        v14 = 0;
        v15 = sub_F539BC(a3);
        v16 = 0;
        if (v11 != 1)
        {
          goto LABEL_20;
        }
      }

      if (v8 != v15 - 1)
      {
        v18 = sub_F539D8(a3, v8 + 1);
        v16 = sub_F53274(v18) != 1;
      }

LABEL_20:
      if (!v14 && !v16)
      {
        goto LABEL_3;
      }

      v19 = *(a1 + 104) / 100.0;
      v20 = v19 / (sub_5FC64(v9) / 100.0);
      nullsub_1();
      if (v20 <= 0.25)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0.25;
      }

      if (!v14)
      {
        v22 = 0.0;
      }

      v23 = 1.0 - v20;
      if (1.0 - v20 < 0.75)
      {
        v23 = 0.75;
      }

      if (!v16)
      {
        v23 = 1.0;
      }

      sub_2F4C8(v21, 0, v88, v22, v23);
      sub_F54F0C(v9);
      sub_F54E4C(v9, v88);
      v24 = sub_5FC64(v9);
      if (!v16 || !v14)
      {
LABEL_45:
        v7 = v78;
        if (!v16)
        {
          goto LABEL_107;
        }

        sub_F50674(*(a1 + 112), 0, v9, &v86);
        v40 = *(a1 + 112);
        v41 = sub_F539D8(a3, v8 + 1);
        sub_F50674(v40, 1, v41, &v84);
        sub_318AE8(&v86, v87, v84, v85, 0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 2));
        sub_45324(&v86, (*(a1 + 112) / 100.0), &__p, *(a1 + 120), 0.1);
        nullsub_1();
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v43 = v42[1];
        if (v43 != *v42)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v43 - *v42) >> 2) <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        sub_318AE8(&v79, 0, __p, __dst, 0xAAAAAAAAAAAAAAABLL * ((__dst - __p) >> 2));
        v7 = v78;
        sub_F54F0C(v9);
        sub_F54E4C(v9, &v79);
        v52 = sub_9B6E08(v9);
        v53 = sub_F5327C(v9);
        if (v52 <= v53)
        {
          v54 = v53;
        }

        else
        {
          v54 = v52;
        }

        if (v52 >= v53)
        {
          goto LABEL_99;
        }

LABEL_78:
        while (2)
        {
          v55 = a2[9];
          if (!*&v55)
          {
            goto LABEL_98;
          }

          v56 = vcnt_s8(v55);
          v56.i16[0] = vaddlv_u8(v56);
          if (v56.u32[0] > 1uLL)
          {
            v57 = v52;
            if (*&v55 <= v52)
            {
              v57 = v52 % *&v55;
            }
          }

          else
          {
            v57 = (*&v55 - 1) & v52;
          }

          v58 = *(*&a2[8] + 8 * v57);
          if (!v58 || (v59 = *v58) == 0)
          {
LABEL_98:
            v89 = v52;
            v90 = 2;
            sub_F4C91C(&a2[8], &v89, &v89);
            if (++v52 != v54)
            {
              continue;
            }

            goto LABEL_99;
          }

          break;
        }

        if (v56.u32[0] < 2uLL)
        {
          v60 = *&v55 - 1;
          while (1)
          {
            v61 = v59[1];
            if (v61 == v52)
            {
              if (v59[2] == v52)
              {
                goto LABEL_77;
              }
            }

            else if ((v61 & v60) != v57)
            {
              goto LABEL_98;
            }

            v59 = *v59;
            if (!v59)
            {
              goto LABEL_98;
            }
          }
        }

        while (1)
        {
          v62 = v59[1];
          if (v62 == v52)
          {
            if (v59[2] == v52)
            {
LABEL_77:
              *(v59 + 6) |= 2u;
              if (++v52 != v54)
              {
                goto LABEL_78;
              }

LABEL_99:
              if (v79)
              {
                v80 = v79;
                operator delete(v79);
              }

              if (__p)
              {
                __dst = __p;
                operator delete(__p);
              }

              if (v84)
              {
                v85 = v84;
                operator delete(v84);
              }

              if (v86)
              {
                v87 = v86;
                operator delete(v86);
              }

LABEL_107:
              if (!v14)
              {
                goto LABEL_144;
              }

              v63 = *(a1 + 112);
              v64 = sub_F539D8(a3, v8 - 1);
              sub_F50674(v63, 0, v64, &v86);
              sub_F50674(*(a1 + 112), 1, v9, &v84);
              sub_318AE8(&v86, v87, v84, v85, 0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 2));
              sub_45324(&v86, (*(a1 + 112) / 100.0), &__p, *(a1 + 120), 0.1);
              nullsub_1();
              v66 = v65[1];
              if (v66 != *v65)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((v66 - *v65) >> 2) <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_1794();
              }

              sub_4798C(&__p, __dst, 0, 0, 0);
              sub_F54F0C(v9);
              sub_F54E4C(v9, &__p);
              v67 = sub_9B6E08(v9);
              v68 = sub_F5327C(v9);
              if (v67 <= v68)
              {
                v69 = v68;
              }

              else
              {
                v69 = v67;
              }

              if (v67 >= v68)
              {
                goto LABEL_138;
              }

LABEL_117:
              while (2)
              {
                v70 = a2[9];
                if (v70)
                {
                  v71 = vcnt_s8(v70);
                  v71.i16[0] = vaddlv_u8(v71);
                  if (v71.u32[0] > 1uLL)
                  {
                    v72 = v67;
                    if (*&v70 <= v67)
                    {
                      v72 = v67 % *&v70;
                    }
                  }

                  else
                  {
                    v72 = (*&v70 - 1) & v67;
                  }

                  v73 = *(*&a2[8] + 8 * v72);
                  if (v73)
                  {
                    v74 = *v73;
                    if (v74)
                    {
                      if (v71.u32[0] < 2uLL)
                      {
                        v75 = *&v70 - 1;
                        while (1)
                        {
                          v77 = v74[1];
                          if (v77 == v67)
                          {
                            if (v74[2] == v67)
                            {
                              goto LABEL_116;
                            }
                          }

                          else if ((v77 & v75) != v72)
                          {
                            goto LABEL_137;
                          }

                          v74 = *v74;
                          if (!v74)
                          {
                            goto LABEL_137;
                          }
                        }
                      }

                      do
                      {
                        v76 = v74[1];
                        if (v76 == v67)
                        {
                          if (v74[2] == v67)
                          {
LABEL_116:
                            *(v74 + 6) |= 2u;
                            if (++v67 != v69)
                            {
                              goto LABEL_117;
                            }

LABEL_138:
                            v7 = v78;
                            if (__p)
                            {
                              __dst = __p;
                              operator delete(__p);
                            }

                            goto LABEL_140;
                          }
                        }

                        else
                        {
                          if (v76 >= *&v70)
                          {
                            v76 %= *&v70;
                          }

                          if (v76 != v72)
                          {
                            break;
                          }
                        }

                        v74 = *v74;
                      }

                      while (v74);
                    }
                  }
                }

LABEL_137:
                v79 = v67;
                LODWORD(v80) = 2;
                sub_F4C91C(&a2[8], &v79, &v79);
                if (++v67 != v69)
                {
                  continue;
                }

                goto LABEL_138;
              }
            }
          }

          else
          {
            if (v62 >= *&v55)
            {
              v62 %= *&v55;
            }

            if (v62 != v57)
            {
              goto LABEL_98;
            }
          }

          v59 = *v59;
          if (!v59)
          {
            goto LABEL_98;
          }
        }
      }

      v25 = v24;
      v26 = sub_5FC64(v9);
      v27 = *(a1 + 112);
      v28 = v27 * 3.0;
      if (v28 >= 0.0)
      {
        if (v28 < 4.50359963e15)
        {
          v29 = (v28 + v28) + 1;
          goto LABEL_36;
        }
      }

      else if (v28 > -4.50359963e15)
      {
        v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_36:
        v28 = (v29 >> 1);
      }

      if (v26 >= v28)
      {
        goto LABEL_45;
      }

      v30 = sub_F539D8(a3, v8 - 1);
      sub_F50674(v27, 0, v30, &v86);
      v31 = v87;
      nullsub_1();
      v33 = *v32;
      nullsub_1();
      sub_4798C(&v86, v31, v33, *(v34 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v34 + 8) - v33) >> 2));
      v35 = *(a1 + 112);
      v36 = sub_F539D8(a3, v8 + 1);
      sub_F50674(v35, 1, v36, &v84);
      sub_318AE8(&v86, v87, v84, v85, 0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 2));
      v7 = v78;
      sub_F54F0C(v9);
      sub_45324(&v86, (v25 / 100.0 + *(a1 + 112) / 100.0), &__p, *(a1 + 120), 0.1);
      sub_F54E4C(v9, &__p);
      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }

      v37 = sub_9B6E08(v9);
      v38 = sub_F5327C(v9);
      if (v37 <= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = v37;
      }

      if (v37 >= v38)
      {
        goto LABEL_140;
      }

      while (2)
      {
        while (2)
        {
          v44 = a2[9];
          if (!*&v44)
          {
            goto LABEL_70;
          }

          v45 = vcnt_s8(v44);
          v45.i16[0] = vaddlv_u8(v45);
          if (v45.u32[0] > 1uLL)
          {
            v46 = v37;
            if (*&v44 <= v37)
            {
              v46 = v37 % *&v44;
            }
          }

          else
          {
            v46 = (*&v44 - 1) & v37;
          }

          v47 = *(*&a2[8] + 8 * v46);
          if (!v47 || (v48 = *v47) == 0)
          {
LABEL_70:
            __p = v37;
            LODWORD(__dst) = 2;
            sub_F4C91C(&a2[8], &__p, &__p);
            if (++v37 != v39)
            {
              continue;
            }

            goto LABEL_140;
          }

          break;
        }

        if (v45.u32[0] < 2uLL)
        {
          v49 = *&v44 - 1;
          while (1)
          {
            v51 = v48[1];
            if (v51 == v37)
            {
              if (v48[2] == v37)
              {
                goto LABEL_49;
              }
            }

            else if ((v51 & v49) != v46)
            {
              goto LABEL_70;
            }

            v48 = *v48;
            if (!v48)
            {
              goto LABEL_70;
            }
          }
        }

        while (1)
        {
          v50 = v48[1];
          if (v50 == v37)
          {
            break;
          }

          if (v50 >= *&v44)
          {
            v50 %= *&v44;
          }

          if (v50 != v46)
          {
            goto LABEL_70;
          }

LABEL_60:
          v48 = *v48;
          if (!v48)
          {
            goto LABEL_70;
          }
        }

        if (v48[2] != v37)
        {
          goto LABEL_60;
        }

LABEL_49:
        *(v48 + 6) |= 2u;
        if (++v37 != v39)
        {
          continue;
        }

        break;
      }

LABEL_140:
      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }

LABEL_144:
      if (v88[0])
      {
        v88[1] = v88[0];
        operator delete(v88[0]);
      }

LABEL_3:
      ++v8;
    }

    while (v8 != v7);
  }
}

void sub_F5051C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
    v25 = a17;
    if (!a17)
    {
LABEL_5:
      v26 = a20;
      if (!a20)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v25 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  operator delete(v25);
  v26 = a20;
  if (!a20)
  {
LABEL_6:
    v27 = a23;
    if (!a23)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v26);
  v27 = a23;
  if (!a23)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(v27);
  _Unwind_Resume(exception_object);
}

void sub_F50674(uint64_t a1@<X1>, int a2@<W2>, char **a3@<X3>, void *a4@<X8>)
{
  nullsub_1();
  v9 = v8;
  v10 = fmin(a1 / 100.0 / (sub_5FC64(a3) / 100.0), 0.5);
  if (a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0 - v10;
  }

  LOBYTE(v89) = 0;
  v12 = *v9;
  v13 = v9[1];
  v65 = v11;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - *v9) >> 2) > 1)
  {
    v78 = 0;
    *v81 = 0u;
    *__p = 0u;
    v83 = 0u;
    v92 = 0;
    v14 = v12 + 3;
    v15 = v12 == v13 || v14 == v13;
    v16 = v15;
    v17 = 0.0;
    if (!v15)
    {
      v72 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v68 = vdupq_n_s64(0xC066800000000000);
      v70 = vdupq_n_s64(0x4076800000000000uLL);
      v66 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      HIDWORD(v18) = 1096306543;
      do
      {
        LODWORD(v18) = *(v14 - 2);
        v19 = exp(3.14159265 - *&v18 * 6.28318531 / 4294967300.0);
        *&v20 = atan((v19 - 1.0 / v19) * 0.5) * 57.2957795;
        LODWORD(v21) = *(v14 - 3);
        HIDWORD(v21) = *v14;
        v74 = v21;
        v22 = *&v20 * 0.0174532925;
        LODWORD(v20) = v14[1];
        v23 = exp(3.14159265 - v20 * 6.28318531 / 4294967300.0);
        v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795 * 0.0174532925;
        v25.i64[0] = v74;
        v25.i64[1] = HIDWORD(v74);
        v26 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v25), v70), v72), v68), v66);
        v75 = vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0];
        v27 = sin((v22 - v24) * 0.5);
        v28 = v27 * v27;
        v29 = cos(v22);
        v30 = v29 * cos(v24);
        v31 = sin(0.5 * v75);
        v32 = atan2(sqrt(v31 * v31 * v30 + v28), sqrt(1.0 - (v31 * v31 * v30 + v28)));
        v18 = (v32 + v32) * 6372797.56;
        v17 = v17 + v18;
        v14 += 3;
      }

      while (v14 != v13);
    }

    v33 = v65 * v17;
    v91 = v65 * v17;
    v84 = &v92;
    v85 = v81;
    v86 = &v89;
    v87 = &v78;
    v88 = &v91;
    if ((v16 & 1) == 0)
    {
      do
      {
        sub_316F0(&v84, v12, v12 + 3, v33);
        v34 = v12 + 6;
        v12 += 3;
      }

      while (v34 != v13);
    }
  }

  else
  {
    sub_313A4(v81, v9, v9);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2)
  {
    v35 = v81[0];
  }

  else
  {
    v35 = __p[1];
  }

  v36 = &v83;
  if (a2)
  {
    v36 = &v81[1];
  }

  v37 = *v36;
  if (v37 != v35)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v37 - v35) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  if (__p[1])
  {
    *&v83 = __p[1];
    operator delete(__p[1]);
  }

  if (v81[0])
  {
    v81[1] = v81[0];
    operator delete(v81[0]);
  }

  v92 = 0;
  v38 = *v9;
  v39 = v9[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v39 - *v9) >> 2) > 1)
  {
    v91 = 0.0;
    *v81 = 0u;
    *__p = 0u;
    v83 = 0u;
    v90 = 0;
    v40 = v38 + 3;
    v41 = v38 == v39 || v40 == v39;
    v42 = v41;
    v43 = 0.0;
    if (!v41)
    {
      v73 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v69 = vdupq_n_s64(0xC066800000000000);
      v71 = vdupq_n_s64(0x4076800000000000uLL);
      v67 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      HIDWORD(v44) = 1096306543;
      do
      {
        LODWORD(v44) = *(v40 - 2);
        v45 = exp(3.14159265 - *&v44 * 6.28318531 / 4294967300.0);
        *&v46 = atan((v45 - 1.0 / v45) * 0.5) * 57.2957795;
        LODWORD(v47) = *(v40 - 3);
        HIDWORD(v47) = *v40;
        v76 = v47;
        v48 = *&v46 * 0.0174532925;
        LODWORD(v46) = v40[1];
        v49 = exp(3.14159265 - v46 * 6.28318531 / 4294967300.0);
        v50 = atan((v49 - 1.0 / v49) * 0.5) * 57.2957795 * 0.0174532925;
        v51.i64[0] = v76;
        v51.i64[1] = HIDWORD(v76);
        v52 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v51), v71), v73), v69), v67);
        v77 = vsubq_f64(v52, vdupq_laneq_s64(v52, 1)).f64[0];
        v53 = sin((v48 - v50) * 0.5);
        v54 = v53 * v53;
        v55 = cos(v48);
        v56 = v55 * cos(v50);
        v57 = sin(0.5 * v77);
        v58 = atan2(sqrt(v57 * v57 * v56 + v54), sqrt(1.0 - (v57 * v57 * v56 + v54)));
        v44 = (v58 + v58) * 6372797.56;
        v43 = v43 + v44;
        v40 += 3;
      }

      while (v40 != v39);
    }

    v59 = v65 * v43;
    v89 = v65 * v43;
    v84 = &v90;
    v85 = v81;
    v86 = &v92;
    v87 = &v91;
    v88 = &v89;
    if ((v42 & 1) == 0)
    {
      do
      {
        sub_316F0(&v84, v38, v38 + 3, v59);
        v60 = v38 + 6;
        v38 += 3;
      }

      while (v60 != v39);
    }
  }

  else
  {
    sub_313A4(v81, v9, v9);
  }

  v79 = 0;
  v80 = 0;
  v78 = 0;
  v61 = a2 == 0;
  if (a2)
  {
    v62 = __p[1];
  }

  else
  {
    v62 = v81[0];
  }

  v63 = &v83;
  if (v61)
  {
    v63 = &v81[1];
  }

  v64 = *v63;
  if (v64 != v62)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v64 - v62) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  if (__p[1])
  {
    *&v83 = __p[1];
    operator delete(__p[1]);
  }

  if (v81[0])
  {
    v81[1] = v81[0];
    operator delete(v81[0]);
  }

  sub_F54F0C(a3);
  sub_F54E4C(a3, &v78);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }
}

void sub_F50DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  if (v34)
  {
    *(v33 + 8) = v34;
    operator delete(v34);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F50E00(void *result, unint64_t a2, int a3)
{
  v3 = result[6];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(result[5] + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    v11 = a2;
    v12 = a3;
    return sub_F4C91C(result + 5, &v11, &v11);
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v3 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == a2)
      {
        if (v7[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_21;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v7[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }

    if (v10 != v5)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *(v7 + 6) |= a3;
  return result;
}

void sub_F51094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F51858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F518B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a1;
  result = sub_F540B8(a1);
  if (result)
  {
    v5 = sub_F540D4(a1, 0);
    result = sub_F53860(v5);
    v6 = 0;
    if (!result)
    {
      result = sub_F540B8(a1);
      v6 = 1;
      if (result >= 2)
      {
        do
        {
          v7 = sub_F540D4(a1, v6);
          result = sub_F53860(v7);
          if (result)
          {
            break;
          }

          ++v6;
          result = sub_F540B8(a1);
        }

        while (v6 < result);
      }
    }

    a2[1] = v6;
    a2[2] = 0;
  }

  return result;
}

void sub_F51944(uint64_t a1, char *a2)
{
  if (*(a1 + 88) > 0.0)
  {
    sub_F540E4(a2, &v28);
    v4 = v28;
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 2);
    if (v5 >= 2)
    {
      v6 = *(a1 + 88);
      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_41DB4(&v28, v5, 1, 1, &__p, &v26, v6);
      if (__p)
      {
        operator delete(__p);
      }

      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_F518B0(a2, v22);
      sub_F518B0(a2, v21);
      v7 = v27;
      if (v27 >= 2)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          sub_F52570(v21, 1);
          v11 = *(v26 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v9);
          if ((*(v26 + (((v9 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 1)))
          {
            if (!v11)
            {
              *&v22[8] = *&v21[8];
            }
          }

          else if (v11)
          {
            if (v8 < v25)
            {
              v10 = *v22;
              *(v8 + 16) = *&v22[16];
              *v8 = v10;
              *(v8 + 24) = *v21;
              *(v8 + 40) = *&v21[16];
              v8 += 48;
            }

            else
            {
              v12 = __p;
              v13 = v8 - __p;
              v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 4) + 1;
              if (v14 > 0x555555555555555)
              {
                sub_1794();
              }

              if (0x5555555555555556 * ((v25 - __p) >> 4) > v14)
              {
                v14 = 0x5555555555555556 * ((v25 - __p) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v25 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v15 = 0x555555555555555;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                if (v15 <= 0x555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v16 = 16 * ((v8 - __p) >> 4);
              *v16 = *v22;
              *(v16 + 16) = *&v22[16];
              *(v16 + 24) = *v21;
              *(v16 + 40) = *&v21[16];
              if (v12 != v8)
              {
                v17 = v12;
                v18 = (v16 - v13);
                do
                {
                  v19 = *v17;
                  v20 = v17[2];
                  v18[1] = v17[1];
                  v18[2] = v20;
                  *v18 = v19;
                  v18 += 3;
                  v17 += 3;
                }

                while (v17 != v8);
              }

              v8 = v16 + 48;
              __p = (v16 - v13);
              v24 = v16 + 48;
              v25 = 0;
              if (v12)
              {
                operator delete(v12);
              }
            }

            v24 = v8;
          }

          ++v9;
        }

        while (v7 != v9);
      }

      sub_F54264(a2, &__p);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        operator delete(v26);
      }

      v4 = v28;
    }

    if (v4)
    {
      v29 = v4;
      operator delete(v4);
    }
  }
}

void sub_F51C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_F51C64(uint64_t a1, void *a2, int8x8_t *a3, char *a4)
{
  if (*(a1 + 8) == 1)
  {
    sub_F4F260(a4, &v67);
    sub_F4F2F4(a4, &v65);
    if (v68 != v66)
    {
      v61 = sub_F539BC(a4);
      if (v61 >= 2)
      {
        v17 = 1;
        v18 = -6.28318531;
        v19 = 1.0;
        do
        {
          v20 = sub_F539D8(a4, v17 - 1);
          if (sub_F53860(v20) >= 2)
          {
            sub_F539D8(a4, v17);
            nullsub_1();
            v22 = v21;
            v23 = v21[1];
            v24 = -2 - 0x5555555555555555 * ((v23 - *v21) >> 2);
            for (i = sub_41224(v21, v24); v24; i = sub_41224(v22, v24--))
            {
              v26 = *(v23 - 8) - i[1];
              if (sqrt(((*(v23 - 12) - *i) * (*(v23 - 12) - *i) + v26 * v26)) / 100.0 >= *(a1 + 80) / 100.0)
              {
                break;
              }
            }

            nullsub_1();
            v28 = sub_41224(v27, v24);
            v57 = v28[1];
            v58 = *v28;
            nullsub_1();
            v30 = *(v29 + 8);
            v64 = *(v30 - 12);
            v63 = *(v30 - 8);
            v59 = *(v30 - 4);
            nullsub_1();
            v62 = **v31;
            v32 = (*v31)[2];
            v60 = (*v31)[1];
            nullsub_1();
            v34 = v33;
            v35 = *v33;
            v36 = sub_41224(v33, 1uLL);
            v37 = 1;
            if ((-3 - 0x5555555555555555 * ((v34[1] - *v34) >> 2)) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v37 = 1;
              do
              {
                v38 = v35[1] - v36[1];
                if (sqrt(((*v35 - *v36) * (*v35 - *v36) + v38 * v38)) / 100.0 >= *(a1 + 80) / 100.0)
                {
                  break;
                }

                v36 = sub_41224(v34, v37++);
              }

              while (v37 < -1 - 0x5555555555555555 * ((v34[1] - *v34) >> 2));
            }

            nullsub_1();
            v40 = sub_41224(v39, v37);
            v42 = *v40;
            v41 = v40[1];
            if (v64 != v62 || v63 != v60 || v59 != v32)
            {
              v43 = ((v57 - v63) * (v62 - v64) - (v58 - v64) * (v60 - v63)) / sqrt((v58 - v64) * (v58 - v64) + (v57 - v63) * (v57 - v63));
              v44 = v60 >= 0xFFFFFFFE ? -2 : v60;
              v45 = exp(v44 * v18 / 4294967300.0 + 3.14159265);
              v46 = atan((v45 - v19 / v45) * 0.5);
              v47 = fabs(v43 * (0.00932288077 / (v19 / cos(v46 * 57.2957795 / 180.0 * 3.14159265))));
              if (v47 >= *(a1 + 48) && sqrt(((v64 - v62) * (v64 - v62) + (v63 - v60) * (v63 - v60))) / 100.0 - v47 < *(a1 + 72) / 100.0)
              {
                v48 = v18;
                if (v64 != v58 || (j = 0.0, v57 != v63))
                {
                  v50 = -(v58 - v64);
                  if (v64 - v58 < v58 - v64)
                  {
                    v50 = (v64 - v58);
                  }

                    ;
                  }

                  while (j < -180.0)
                  {
                    j = j + 360.0;
                  }
                }

                if (v42 != v62 || (k = 0.0, v60 != v41))
                {
                  v52 = -(v62 - v42);
                  if (v42 - v62 < (v62 - v42))
                  {
                    v52 = (v42 - v62);
                  }

                    ;
                  }

                  while (k < -180.0)
                  {
                    k = k + 360.0;
                  }
                }

                sub_455D0(j, k);
                v18 = v48;
                v19 = 1.0;
                if (v53 < *(a1 + 32))
                {
                  sub_F539D8(a4, v17 - 1);
                  nullsub_1();
                  v55 = v54[1];
                  if (v55 != *v54)
                  {
                    if (0xAAAAAAAAAAAAAAABLL * ((v55 - *v54) >> 2) < 0x1555555555555556)
                    {
                      operator new();
                    }

                    sub_1794();
                  }
                }
              }
            }
          }

          ++v17;
        }

        while (v61 != v17);
      }

      if (*(a1 + 96))
      {
        sub_F4FADC(a1, a3, a4);
      }

      v7 = sub_F539BC(a4);
      if (v7)
      {
        v8 = v7;
        for (m = 0; m != v8; ++m)
        {
          v10 = sub_F539D8(a4, m);
          v11 = sub_9B6E08(v10);
          v12 = sub_F539D8(a4, m);
          v13 = sub_F5327C(v12);
          if (v11 <= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = v11;
          }

          if (v11 < v13)
          {
            do
            {
              v15 = sub_F539D8(a4, m);
              v16 = sub_F53274(v15);
              v65 = v11;
              v67 = &v65;
              *(sub_F5269C(&a3[3], &v65, &unk_229EB70, &v67) + 6) = v16;
              ++v11;
            }

            while (v14 != v11);
          }
        }
      }

      if (*(a1 + 24))
      {
        sub_F4E514(a1, a2, a4);
      }

      sub_F4F7BC(a1, a4);
    }
  }
}

void sub_F5241C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F52444(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v14 = -a2;
    v15 = a1[2];
    while (v15 < v14)
    {
      v14 -= v15;
      v16 = *a1;
      v17 = a1[1] - 1;
      a1[1] = v17;
      v18 = sub_F539D8(v16, v17);
      v15 = sub_F53860(v18);
      a1[2] = v15;
      if (v14 <= 0)
      {
        return a1;
      }
    }

    a1[2] = v15 - v14;
    return a1;
  }

  else
  {
    if (a2)
    {
      v4 = a1[1];
      while (v4 < sub_F539BC(*a1))
      {
        v5 = sub_F539D8(*a1, a1[1]);
        v6 = sub_F53860(v5);
        v7 = a1[2];
        if (v7 + v2 < v6)
        {
          a1[2] = v7 + v2;
          return a1;
        }

        v4 = a1[1] + 1;
        v2 = v2 - v6 + v7;
        a1[1] = v4;
        a1[2] = 0;
        if (v2 <= 0)
        {
          break;
        }
      }
    }

    v8 = a1[1];
    if (v8 < sub_F539BC(*a1))
    {
      do
      {
        v9 = a1[2];
        v10 = sub_F539D8(*a1, a1[1]);
        if (v9 != sub_F53860(v10))
        {
          break;
        }

        v11 = *a1;
        v12 = a1[1] + 1;
        a1[1] = v12;
        a1[2] = 0;
      }

      while (v12 < sub_F539BC(v11));
    }

    return a1;
  }
}

void *sub_F52570(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v14 = -a2;
    v15 = a1[2];
    while (v15 < v14)
    {
      v14 -= v15;
      v16 = *a1;
      v17 = a1[1] - 1;
      a1[1] = v17;
      v18 = sub_F540D4(v16, v17);
      v15 = sub_F53860(v18);
      a1[2] = v15;
      if (v14 <= 0)
      {
        return a1;
      }
    }

    a1[2] = v15 - v14;
    return a1;
  }

  else
  {
    if (a2)
    {
      v4 = a1[1];
      while (v4 < sub_F540B8(*a1))
      {
        v5 = sub_F540D4(*a1, a1[1]);
        v6 = sub_F53860(v5);
        v7 = a1[2];
        if (v7 + v2 < v6)
        {
          a1[2] = v7 + v2;
          return a1;
        }

        v4 = a1[1] + 1;
        v2 = v2 - v6 + v7;
        a1[1] = v4;
        a1[2] = 0;
        if (v2 <= 0)
        {
          break;
        }
      }
    }

    v8 = a1[1];
    if (v8 < sub_F540B8(*a1))
    {
      do
      {
        v9 = a1[2];
        v10 = sub_F540D4(*a1, a1[1]);
        if (v9 != sub_F53860(v10))
        {
          break;
        }

        v11 = *a1;
        v12 = a1[1] + 1;
        a1[1] = v12;
        a1[2] = 0;
      }

      while (v12 < sub_F540B8(v11));
    }

    return a1;
  }
}

void *sub_F5269C(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (v9[2] == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

uint64_t *sub_F529D8(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 2;
  v5 = __ROR8__(a2[2], 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  *(v4 - 1) = v7;
  v8 = sub_F52B34(a1, v7, v4);
  v9 = a1[1];
  v10 = *(v4 - 1);
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  if (v10 >= *&v9)
  {
    v12 = v10 % *&v9;
  }

  else
  {
    v12 = *(v4 - 1);
  }

  v13 = *&v9 - 1;
  v14 = (*&v9 - 1) & v10;
  if (v11.u32[0] > 1uLL)
  {
    v14 = v12;
  }

  if (v8)
  {
    *a2 = *v8;
    *v8 = a2;
    if (*a2)
    {
      v15 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= v13;
      }

      if (v15 != v14)
      {
        v18 = (*a1 + 8 * v15);
LABEL_20:
        *v18 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v16 = *a1;
    *(*a1 + 8 * v14) = a1 + 2;
    if (*a2)
    {
      v17 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v17 >= *&v9)
        {
          v17 %= *&v9;
        }
      }

      else
      {
        v17 &= v13;
      }

      v18 = (v16 + 8 * v17);
      goto LABEL_20;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_F52B34(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v18 = 1;
  if (v6 >= 3)
  {
    v18 = (v6 & (v6 - 1)) != 0;
  }

  v19 = v18 | (2 * v6);
  v20 = vcvtps_u32_f32(v7 / v8);
  if (v19 <= v20)
  {
    prime = v20;
  }

  else
  {
    prime = v19;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_27;
  }

  if (prime < v6)
  {
    v22 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v23 = vcnt_s8(v6), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v25 = prime;
      v26 = std::__next_prime(v22);
      if (v25 <= v26)
      {
        prime = v26;
      }

      else
      {
        prime = v25;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

LABEL_27:
    sub_F52DBC(a1, prime);
  }

LABEL_43:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v17 = *(v10 + 8);
      if ((v17 & v9) != (v9 & a2))
      {
        break;
      }

      if (v17 == a2)
      {
        v12 = *(v10 + 16) == *a3 && *(v10 + 20) == a3[1];
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 != (v11 & 1);
      v15 = v11 & v14;
      v11 |= v14;
    }

    while ((v15 & 1) == 0);
    return result;
  }

LABEL_44:
  v27 = a2;
  if (v6 <= a2)
  {
    v27 = a2 % v6;
  }

  v28 = *(*a1 + 8 * v27);
  if (!v28)
  {
    return 0;
  }

  v29 = 0;
  do
  {
    result = v28;
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v34 = *(v28 + 8);
    v35 = v34;
    if (v34 >= v6)
    {
      v35 = v34 % v6;
    }

    if (v35 != v27)
    {
      break;
    }

    if (v34 == a2)
    {
      v30 = *(v28 + 16) == *a3 && *(v28 + 20) == a3[1];
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 != (v29 & 1);
    v33 = v29 & v32;
    v29 |= v32;
  }

  while (v33 != 1);
  return result;
}

void sub_F52DBC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_F52F80()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BF690 = 0u;
  unk_27BF6A0 = 0u;
  dword_27BF6B0 = 1065353216;
  sub_3A9A34(&xmmword_27BF690, v0, v0);
  sub_3A9A34(&xmmword_27BF690, v3, v3);
  sub_3A9A34(&xmmword_27BF690, __p, __p);
  sub_3A9A34(&xmmword_27BF690, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BF668 = 0;
    qword_27BF670 = 0;
    qword_27BF660 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F531C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF678)
  {
    qword_27BF680 = qword_27BF678;
    operator delete(qword_27BF678);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F532B4(void *result, unint64_t a2, int a3)
{
  v3 = result[6];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(result[5] + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    v11 = a2;
    v12 = a3;
    return sub_F55F28(result + 5, &v11, &v11);
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v3 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == a2)
      {
        if (v7[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_21;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v7[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }

    if (v10 != v5)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *(v7 + 6) |= a3;
  return result;
}

uint64_t sub_F533D4(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[6];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*&a1[5] + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = *&v2 - 1;
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (v6[2] == a2)
        {
          return *(v6 + 6);
        }
      }

      else if ((v8 & v7) != v4)
      {
        return 0;
      }

      v6 = *v6;
      if (!v6)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v9 = v6[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }

    if (v9 != v4)
    {
      return 0;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_16;
  }

  return *(v6 + 6);
}

uint64_t sub_F534B0(unint64_t *a1, __int128 *a2)
{
  v3 = a1[11];
  if (v3 >= a1[12])
  {
    result = sub_F54F1C(a1 + 10, a2);
    a1[11] = result;
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    *(v3 + 32) = 0;
    *v3 = v4;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    v7 = *(a2 + 4);
    v6 = *(a2 + 5);
    if (v6 != v7)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v8 = *(a2 + 56);
    v9 = *(a2 + 72);
    *(v3 + 87) = *(a2 + 87);
    *(v3 + 72) = v9;
    *(v3 + 56) = v8;
    result = v3 + 96;
    a1[11] = v3 + 96;
    a1[11] = v3 + 96;
  }

  return result;
}

void sub_F535B8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  *(v1 + 88) = v2;
  _Unwind_Resume(exception_object);
}

void sub_F535D8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) > a2)
  {
    v5 = v2 + 96 * a2;
    while (v3 != v5)
    {
      v6 = *(v3 - 64);
      if (v6)
      {
        *(v3 - 56) = v6;
        operator delete(v6);
      }

      v3 -= 96;
    }

    *(a1 + 88) = v5;
  }
}

unint64_t sub_F53650(unint64_t *a1, __int128 *a2)
{
  v3 = a1[11];
  if (v3 >= a1[12])
  {
    result = sub_F551E0(a1 + 10, a2);
    a1[11] = result;
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = 0;
    *v3 = v4;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v6 = *(a2 + 2);
    v5 = *(a2 + 3);
    if (v5 != v6)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    *(v3 + 71) = *(a2 + 71);
    *(v3 + 56) = v8;
    *(v3 + 40) = v7;
    result = v3 + 80;
    a1[11] = v3 + 80;
    a1[11] = v3 + 80;
  }

  return result;
}

void sub_F53758(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  *(v1 + 88) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_F53778(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = a2[2];
  v7 = a2[10];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 + 32 != a1)
  {
    sub_35354C(a1, *(v7 + 32), *(v7 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 40) - *(v7 + 32)) >> 2));
  }

  sub_F545B0(a1);
  *(a1 + 40) = v4;
  *&v8 = 0xFFFFFFFF00000000;
  *(&v8 + 1) = 0xFFFFFFFF00000000;
  *(a1 + 44) = v8;
  *(a1 + 60) = v8;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 96) = a2[1];
  *(a1 + 104) = a2[3];
  v9 = a2[10];
  v10 = *v9;
  *(a1 + 60) = v9[1];
  *(a1 + 44) = v10;
  return a1;
}

void sub_F53844(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F5387C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = a2[2];
  v7 = a2[10];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 + 16 != a1)
  {
    sub_35354C(a1, *(v7 + 16), *(v7 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 24) - *(v7 + 16)) >> 2));
  }

  sub_F545B0(a1);
  *(a1 + 40) = v4;
  *&v8 = 0xFFFFFFFF00000000;
  *(&v8 + 1) = 0xFFFFFFFF00000000;
  *(a1 + 44) = v8;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = a2[1];
  *(a1 + 88) = a2[3];
  *(a1 + 44) = *a2[10];
  return a1;
}

void sub_F53940(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F5395C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_F554A4(a1, a2);
    a1[1] = result;
  }

  else
  {
    sub_F55608(a1[1], a2);
    result = v3 + 136;
    a1[1] = v3 + 136;
    a1[1] = v3 + 136;
  }

  return result;
}

char *sub_F539E8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *result;
  v4 = *(result + 1);
  if (*result == v4)
  {
    goto LABEL_11;
  }

  v5 = v4 - v3 - 136;
  if (v5 < 0x88)
  {
    v6 = 0;
    v7 = *result;
    do
    {
LABEL_7:
      v17 = *v7;
      v16 = *(v7 + 1);
      v7 += 136;
      v6 -= 1431655765 * ((v16 - v17) >> 2);
    }

    while (v7 != v4);
    goto LABEL_8;
  }

  v8 = 0;
  v9 = 0;
  v10 = v5 / 0x88 + 1;
  v7 = &v3[136 * (v10 & 0x3FFFFFFFFFFFFFELL)];
  v11 = (v3 + 136);
  v12 = v10 & 0x3FFFFFFFFFFFFFELL;
  do
  {
    v14 = *(v11 - 17);
    v13 = *(v11 - 16);
    v15 = *v11;
    result = v11[1];
    v11 += 34;
    v8 -= 1431655765 * ((v13 - v14) >> 2);
    v9 -= 1431655765 * (&result[-v15] >> 2);
    v12 -= 2;
  }

  while (v12);
  v6 = v9 + v8;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFELL))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_11:
  while (v3 != v4)
  {
    result = sub_318AE8(a2, *(a2 + 8), *v3, *(v3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 1) - *v3) >> 2));
    v3 += 136;
  }

  return result;
}

void sub_F53B48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F53B64(void *a1, void *a2)
{
  memset(__p, 0, 24);
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p[5] = __p;
}

void sub_F53CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F53D0C(void *a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v4 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_F56264(&v36, v4, &__p);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    v5 = *a2;
    v33 = a2[1];
    if (*a2 != v33)
    {
      while (1)
      {
        v6 = v5[1];
        v7 = v5[4];
        v8 = v6 <= v7 + 1 ? v7 + 1 : v5[1];
        if (v6 < v7 + 1)
        {
          break;
        }

LABEL_6:
        v5 += 6;
        if (v5 == v33)
        {
          goto LABEL_34;
        }
      }

      v9 = 136 * v6;
      v10 = 24 * v6;
      v34 = v8;
      v35 = v5;
      while (1)
      {
        if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3))
        {
          goto LABEL_14;
        }

        if (v6 == v5[1])
        {
          v12 = v5[2];
          if (v6 != v5[4])
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
          if (v6 != v5[4])
          {
LABEL_18:
            v13 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + v9 + 8) - *(*a1 + v9)) >> 2);
            v14 = v36 + v10;
            v16 = *(v36 + v10 + 8);
            v15 = *(v36 + v10 + 16);
            if (v16 >= v15)
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        v13 = v5[5];
        v14 = v36 + v10;
        v16 = *(v36 + v10 + 8);
        v15 = *(v36 + v10 + 16);
        if (v16 >= v15)
        {
LABEL_22:
          v17 = *v14;
          v18 = v16 - *v14;
          v19 = v18 >> 4;
          v20 = (v18 >> 4) + 1;
          if (v20 >> 60)
          {
            sub_1794();
          }

          v21 = v15 - v17;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            if (!(v22 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v23 = (16 * v19);
          *v23 = v12;
          v23[1] = v13;
          v11 = 16 * v19 + 16;
          memcpy(0, v17, v18);
          *v14 = 0;
          *(v14 + 1) = v11;
          *(v14 + 2) = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v8 = v34;
          v5 = v35;
          goto LABEL_13;
        }

LABEL_12:
        *v16 = v12;
        v16[1] = v13;
        v11 = (v16 + 2);
LABEL_13:
        *(v14 + 1) = v11;
LABEL_14:
        ++v6;
        v9 += 136;
        v10 += 24;
        if (v8 == v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_34:
    v24 = v36;
    if (v37 != v36)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3);
      do
      {
        sub_F53B64((*a1 + v26), v36 + v25);
        v26 += 136;
        v25 += 24;
        --v27;
      }

      while (v27);
      v24 = v36;
    }

    if (v24)
    {
      v28 = v37;
      v29 = v24;
      if (v37 != v24)
      {
        v30 = v37;
        do
        {
          v32 = *(v30 - 3);
          v30 -= 24;
          v31 = v32;
          if (v32)
          {
            *(v28 - 2) = v31;
            operator delete(v31);
          }

          v28 = v30;
        }

        while (v30 != v24);
        v29 = v36;
      }

      v37 = v24;
      operator delete(v29);
    }
  }
}

void sub_F54000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F54030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F54044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F54058(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_F55954(a1, a2);
    a1[1] = result;
  }

  else
  {
    sub_F55AB8(a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
    a1[1] = v3 + 120;
  }

  return result;
}

char *sub_F540E4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *result;
  v4 = *(result + 1);
  if (*result == v4)
  {
    goto LABEL_11;
  }

  v5 = v4 - v3 - 120;
  if (v5 < 0x78)
  {
    v6 = 0;
    v7 = *result;
    do
    {
LABEL_7:
      v14 = *v7;
      v13 = *(v7 + 1);
      v7 += 120;
      v6 -= 1431655765 * ((v13 - v14) >> 2);
    }

    while (v7 != v4);
    goto LABEL_8;
  }

  v8 = 0;
  v9 = 0;
  v10 = v5 / 0x78 + 1;
  v7 = &v3[120 * (v10 & 0x7FFFFFFFFFFFFFELL)];
  v11 = (v3 + 128);
  v12 = v10 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    result = *v11;
    v8 -= 1431655765 * ((*(v11 - 15) - *(v11 - 16)) >> 2);
    v9 -= 1431655765 * ((*v11 - *(v11 - 1)) >> 2);
    v11 += 30;
    v12 -= 2;
  }

  while (v12);
  v6 = v9 + v8;
  if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_11:
  while (v3 != v4)
  {
    result = sub_318AE8(a2, *(a2 + 8), *v3, *(v3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 1) - *v3) >> 2));
    v3 += 120;
  }

  return result;
}

void sub_F54248(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F54264(void *a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v4 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_F56264(&v36, v4, &__p);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    v5 = *a2;
    v33 = a2[1];
    if (*a2 != v33)
    {
      while (1)
      {
        v6 = v5[1];
        v7 = v5[4];
        v8 = v6 <= v7 + 1 ? v7 + 1 : v5[1];
        if (v6 < v7 + 1)
        {
          break;
        }

LABEL_6:
        v5 += 6;
        if (v5 == v33)
        {
          goto LABEL_34;
        }
      }

      v9 = 120 * v6;
      v10 = 24 * v6;
      v34 = v8;
      v35 = v5;
      while (1)
      {
        if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3))
        {
          goto LABEL_14;
        }

        if (v6 == v5[1])
        {
          v12 = v5[2];
          if (v6 != v5[4])
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
          if (v6 != v5[4])
          {
LABEL_18:
            v13 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + v9 + 8) - *(*a1 + v9)) >> 2);
            v14 = v36 + v10;
            v16 = *(v36 + v10 + 8);
            v15 = *(v36 + v10 + 16);
            if (v16 >= v15)
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        v13 = v5[5];
        v14 = v36 + v10;
        v16 = *(v36 + v10 + 8);
        v15 = *(v36 + v10 + 16);
        if (v16 >= v15)
        {
LABEL_22:
          v17 = *v14;
          v18 = v16 - *v14;
          v19 = v18 >> 4;
          v20 = (v18 >> 4) + 1;
          if (v20 >> 60)
          {
            sub_1794();
          }

          v21 = v15 - v17;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            if (!(v22 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v23 = (16 * v19);
          *v23 = v12;
          v23[1] = v13;
          v11 = 16 * v19 + 16;
          memcpy(0, v17, v18);
          *v14 = 0;
          *(v14 + 1) = v11;
          *(v14 + 2) = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v8 = v34;
          v5 = v35;
          goto LABEL_13;
        }

LABEL_12:
        *v16 = v12;
        v16[1] = v13;
        v11 = (v16 + 2);
LABEL_13:
        *(v14 + 1) = v11;
LABEL_14:
        ++v6;
        v9 += 120;
        v10 += 24;
        if (v8 == v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_34:
    v24 = v36;
    if (v37 != v36)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3);
      do
      {
        sub_F53B64((*a1 + v26), v36 + v25);
        v26 += 120;
        v25 += 24;
        --v27;
      }

      while (v27);
      v24 = v36;
    }

    if (v24)
    {
      v28 = v37;
      v29 = v24;
      if (v37 != v24)
      {
        v30 = v37;
        do
        {
          v32 = *(v30 - 3);
          v30 -= 24;
          v31 = v32;
          if (v32)
          {
            *(v28 - 2) = v31;
            operator delete(v31);
          }

          v28 = v30;
        }

        while (v30 != v24);
        v29 = v36;
      }

      v37 = v24;
      operator delete(v29);
    }
  }
}

void sub_F54558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F54574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F54588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F5459C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F545B0(void *a1)
{
  v2 = a1[1];
  v3 = (*a1 + 12);
  v4 = 0;
  if (*a1 != v2 && v3 != v2)
  {
    v31 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v32 = vdupq_n_s64(0x4076800000000000uLL);
    v29 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v30 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v8 = *(v3 - 3);
      v7 = *(v3 - 2);
      v9 = v8 == -1 && v7 == -1;
      if (v9 || ((v11 = *v3, v10 = v3[1], *v3 == -1) ? (v12 = v10 == -1) : (v12 = 0), v12))
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_8;
      }

      v13 = exp(3.14159265 - v7 * 6.28318531 / 4294967300.0);
      v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
      v15.i64[0] = v8;
      v15.i64[1] = v11;
      v16 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
      v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795 * 0.0174532925;
      v18 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v15), v32), v31), v30), v29);
      v33 = vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
      v19 = sin((v14 - v17) * 0.5);
      v20 = v19 * v19;
      v21 = cos(v14);
      v22 = v21 * cos(v17);
      v23 = sin(0.5 * v33);
      v24 = atan2(sqrt(v23 * v23 * v22 + v20), sqrt(1.0 - (v23 * v23 * v22 + v20)));
      v25 = (v24 + v24) * 6372797.56 * 100.0;
      if (v25 >= 0.0)
      {
        v26 = v25;
        if (v25 < 4.50359963e15)
        {
          v27 = (v25 + v25) + 1;
          goto LABEL_22;
        }
      }

      else
      {
        v26 = v25;
        if (v25 > -4.50359963e15)
        {
          v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
LABEL_22:
          v26 = (v27 >> 1);
        }
      }

      if (v26 < 9.22337204e18)
      {
        if (v25 >= 0.0)
        {
          if (v25 < 4.50359963e15)
          {
            v28 = (v25 + v25) + 1;
LABEL_30:
            v25 = (v28 >> 1);
          }
        }

        else if (v25 > -4.50359963e15)
        {
          v28 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
          goto LABEL_30;
        }

        v6 = v25;
        goto LABEL_8;
      }

      v6 = 0x7FFFFFFFFFFFFFFELL;
LABEL_8:
      v4 += v6;
      v3 += 3;
    }

    while (v3 != v2);
  }

  a1[3] = v4;
}

uint64_t sub_F548B4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != a2)
  {
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_F54924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char **sub_F54940(char **result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result;
    sub_35354C(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
    result = v2;
    v2[3] = *(a2 + 24);
    v2[4] = *(a2 + 32);
  }

  return result;
}

void sub_F549A4(uint64_t a1, unsigned int *a2, int a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 == v6)
  {
    v28 = *(a1 + 16);
    if (v5 >= v28)
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v5) >> 2);
      v30 = 2 * v29;
      if (2 * v29 <= 1)
      {
        v30 = 1;
      }

      if (v29 >= 0xAAAAAAAAAAAAAAALL)
      {
        v31 = 0x1555555555555555;
      }

      else
      {
        v31 = v30;
      }

      if (v31 <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_52:
      sub_1808();
    }

    goto LABEL_25;
  }

  v7 = *a2;
  v9 = *(v6 - 12);
  v8 = *(v6 - 8);
  if (v9 != *a2 || !a3 || v8 != a2[1])
  {
    v10 = v9 == -1 && v8 == -1;
    if (v10 || ((v11 = a2[1], v7 == -1) ? (v12 = v11 == -1) : (v12 = 0), v12))
    {
      v32 = *(a1 + 16);
      *(a1 + 24) += 0x7FFFFFFFFFFFFFFFLL;
      if (v6 >= v32)
      {
LABEL_39:
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) + 1;
        if (v36 > 0x1555555555555555)
        {
          sub_1794();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v5) >> 2);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0xAAAAAAAAAAAAAAALL)
        {
          v38 = 0x1555555555555555;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          if (v38 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_52;
        }

        v39 = 4 * ((v6 - v5) >> 2);
        *v39 = *a2;
        *(v39 + 8) = a2[2];
        v34 = v39 + 12;
        v40 = (v39 - (v6 - v5));
        memcpy(v40, v5, v6 - v5);
        *a1 = v40;
        *(a1 + 8) = v34;
        *(a1 + 16) = 0;
        if (v5)
        {
          operator delete(v5);
        }

        goto LABEL_50;
      }

LABEL_25:
      v33 = *a2;
      *(v6 + 8) = a2[2];
      *v6 = v33;
      v34 = v6 + 12;
LABEL_50:
      *(a1 + 8) = v34;
      return;
    }

    v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
    v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
    v15.i64[0] = v9;
    v15.i64[1] = v7;
    v16 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
    v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795 * 0.0174532925;
    v18 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v15), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v41 = vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
    v19 = sin((v14 - v17) * 0.5);
    v20 = v19 * v19;
    v21 = cos(v14);
    v22 = v21 * cos(v17);
    v23 = sin(0.5 * v41);
    v24 = atan2(sqrt(v23 * v23 * v22 + v20), sqrt(1.0 - (v23 * v23 * v22 + v20)));
    v25 = (v24 + v24) * 6372797.56 * 100.0;
    if (v25 >= 0.0)
    {
      v26 = v25;
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_29;
      }

      v27 = (v25 + v25) + 1;
    }

    else
    {
      v26 = v25;
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_29;
      }

      v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v26 = (v27 >> 1);
LABEL_29:
    if (v26 >= 9.22337204e18)
    {
      v32 = *(a1 + 16);
      *(a1 + 24) += 0x7FFFFFFFFFFFFFFELL;
      if (v6 >= v32)
      {
        goto LABEL_39;
      }

      goto LABEL_25;
    }

    if (v25 >= 0.0)
    {
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_38;
      }

      v35 = (v25 + v25) + 1;
    }

    else
    {
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_38;
      }

      v35 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v25 = (v35 >> 1);
LABEL_38:
    v32 = *(a1 + 16);
    *(a1 + 24) += v25;
    if (v6 >= v32)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }
}

void sub_F54E4C(char **a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
    a1 = v3;
  }

  sub_F545B0(a1);
}

void sub_F54EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || v3 > a3)
  {
    sub_45884(a2, a3, a1);
    *(a1 + 32) = a3;
  }
}

void *sub_F54F0C(void *result)
{
  result[1] = *result;
  result[3] = 0;
  return result;
}

uint64_t sub_F54F1C(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) + 1;
  if (v2 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v4 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 32 * ((a1[1] - *a1) >> 5);
  v6 = *a2;
  v7 = a2[1];
  *(&stru_20.cmd + v5) = 0;
  *v5 = v6;
  *(v5 + 16) = v7;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v9 = *(a2 + 4);
  v8 = *(a2 + 5);
  if (v8 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(v5 + 56) = *(a2 + 56);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 87) = *(a2 + 87);
  v10 = *a1;
  v11 = a1[1];
  v12 = v5 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v5 + *a1 - v11;
    do
    {
      v15 = *(v13 + 1);
      *v14 = *v13;
      *(v14 + 16) = v15;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 32) = 0;
      *(v14 + 32) = *(v13 + 2);
      *(v14 + 48) = v13[6];
      v13[4] = 0;
      v13[5] = 0;
      v13[6] = 0;
      v16 = *(v13 + 7);
      v17 = *(v13 + 9);
      *(v14 + 87) = *(v13 + 87);
      *(v14 + 72) = v17;
      *(v14 + 56) = v16;
      v13 += 12;
      v14 += 96;
    }

    while (v13 != v11);
    do
    {
      v18 = v10[4];
      if (v18)
      {
        v10[5] = v18;
        operator delete(v18);
      }

      v10 += 12;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v5 + 96;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v5 + 96;
}

void sub_F5514C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 40) = v6;
    operator delete(v6);
  }

  sub_F55170(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55170(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 96;
        *(a1 + 16) = v2 - 96;
        v5 = *(v2 - 64);
        if (!v5)
        {
          break;
        }

        *(v2 - 56) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 96;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_F551E0(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v4 = 0x333333333333333;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  v6 = *a2;
  *&dword_10[v5 / 4] = 0;
  *v5 = v6;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (v7 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(v5 + 40) = *(a2 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 71) = *(a2 + 71);
  v9 = *a1;
  v10 = a1[1];
  v11 = v5 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v5 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 0;
      *(v13 + 16) = *(v12 + 1);
      *(v13 + 32) = v12[4];
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v14 = *(v12 + 5);
      v15 = *(v12 + 7);
      *(v13 + 71) = *(v12 + 71);
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      v12 += 10;
      v13 += 80;
    }

    while (v12 != v10);
    do
    {
      v16 = v9[2];
      if (v16)
      {
        v9[3] = v16;
        operator delete(v16);
      }

      v9 += 10;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v5 + 80;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v5 + 80;
}

void sub_F55410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 24) = v6;
    operator delete(v6);
  }

  sub_F55434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55434(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 80;
        *(a1 + 16) = v2 - 80;
        v5 = *(v2 - 64);
        if (!v5)
        {
          break;
        }

        *(v2 - 56) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 80;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_F554A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v5 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 136 * v2;
  v16 = 0;
  sub_F55608(136 * v2, a2);
  v15 = 136 * v2 + 136;
  sub_F55748(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 136);
    v15 -= 136;
    v10 = *(v8 - 24);
    if (v10)
    {
      *(v8 - 16) = v10;
      operator delete(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 128) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F555F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F558DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55608(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != a2)
  {
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 40);
  *(a1 + 112) = 0;
  *(a1 + 40) = v8;
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v10 = *(a2 + 112);
  v9 = *(a2 + 120);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}