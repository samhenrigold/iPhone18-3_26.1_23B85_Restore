uint64_t *sub_2623307A4(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a2 << 32 >> 30;
  v8 = *(a5 + v7);
  v9 = *result << 32 >> 30;
  v10 = *(a5 + v9);
  v11 = *a3;
  v12 = *(a5 + (*a3 << 32 >> 30));
  if (v8 <= v10)
  {
    if (v12 <= v8)
    {
      v9 = *a3 << 32 >> 30;
      v5 = *a3;
    }

    else
    {
      *a2 = v11;
      *a3 = v5;
      v13 = *result;
      v9 = v7;
      if (*(a5 + (*a2 << 32 >> 30)) > *(a5 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v13;
        v5 = *a3;
        v9 = *a3 << 32 >> 30;
      }
    }
  }

  else
  {
    if (v12 <= v8)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(a5 + (*a3 << 32 >> 30)) <= v10)
      {
        v9 = *a3 << 32 >> 30;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v11;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (*(a5 + (*a4 << 32 >> 30)) > *(a5 + v9))
  {
    *a3 = *a4;
    *a4 = v5;
    v14 = *a2;
    if (*(a5 + (*a3 << 32 >> 30)) > *(a5 + (*a2 << 32 >> 30)))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if (*(a5 + (*a2 << 32 >> 30)) > *(a5 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  return result;
}

BOOL sub_2623308D8(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v11 = **a3;
        v18 = *(v11 + 4 * v17);
        v19 = *(v11 + (*a1 << 32 >> 30));
        v20 = *(a2 - 1);
        v21 = *(v11 + 4 * v20);
        if (v18 > v19)
        {
          if (v21 > v18)
          {
            *a1 = v20;
            goto LABEL_41;
          }

          *a1 = v17;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if (*(v11 + 4 * v41) > v19)
          {
            a1[1] = v41;
            goto LABEL_41;
          }

          return 1;
        }

        if (v21 <= v18)
        {
          return 1;
        }

        a1[1] = v20;
        *(a2 - 1) = v17;
        v16 = *a1;
        v12 = a1[1];
        v14 = *(v11 + 4 * v12);
        break;
      case 4:
        sub_2623307A4(a1, a1 + 1, a1 + 2, a2 - 1, **a3);
        return 1;
      case 5:
        sub_2623307A4(a1, a1 + 1, a1 + 2, a1 + 3, **a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = **a3;
        if (*(v11 + 4 * v9) <= *(v11 + 4 * v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *(v11 + 4 * v12);
        if (v14 <= *(v11 + 4 * v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v15 = a1[1];
        if (v14 <= *(v11 + 4 * v15))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v15;
        v16 = *a1;
        break;
      default:
        goto LABEL_16;
    }

    if (v14 > *(v11 + 4 * v16))
    {
      *a1 = v12;
      a1[1] = v16;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (*(**a3 + 4 * v7) > *(**a3 + (*a1 << 32 >> 30)))
    {
      *a1 = v7;
LABEL_41:
      *(a2 - 1) = v8;
      return 1;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = a1[1];
  v25 = *a1;
  v26 = **a3;
  v27 = *(v26 + 4 * v24);
  v28 = *(v26 + (*a1 << 32 >> 30));
  v29 = *(v26 + 4 * v22);
  if (v27 > v28)
  {
    v30 = a1;
    v31 = a1 + 2;
    if (v29 <= v27)
    {
      *a1 = v24;
      a1[1] = v25;
      v30 = a1 + 1;
      v31 = a1 + 2;
      if (v29 <= v28)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v30 = v22;
    *v31 = v25;
    goto LABEL_28;
  }

  if (v29 > v27)
  {
    a1[1] = v22;
    *v23 = v24;
    v30 = a1;
    v31 = a1 + 1;
    if (v29 > v28)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v23;
    v37 = *(v26 + (*v32 << 32 >> 30));
    if (v37 > *(v26 + 4 * v36))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v36;
        v39 = v38 - 8;
        if (v38 == 8)
        {
          break;
        }

        v36 = *(a1 + v38 - 16);
        v38 -= 8;
        if (v37 <= *(v26 + 4 * v36))
        {
          v40 = (a1 + v39);
          goto LABEL_36;
        }
      }

      v40 = a1;
LABEL_36:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v23 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

float sub_262330BE4(float32x4_t *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0x300000001;
  v24 = 4;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_2621DD5D0(&v20, &v23, &v25, 3uLL);
  if (v21 != v20)
  {
    LODWORD(v4) = HIDWORD(*a2);
    v5 = COERCE_FLOAT(*(a2 + 8));
    v6 = sqrt(v5 * v5 + COERCE_FLOAT(*a2) * COERCE_FLOAT(*a2) + v4 * v4);
    v7 = COERCE_FLOAT(*a2) / v6;
    v8 = v4 / v6;
    v9 = v5 / v6;
    v10 = v21 - v20;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 0.0;
    v12 = -1.0;
    v13 = v20;
    do
    {
      v14 = *v13++;
      v15 = vsubq_f32(*a1, a1[v14]);
      v16 = vcvtq_f64_f32(*v15.f32);
      v17 = sqrt(v15.f32[2] * v15.f32[2] + vaddvq_f64(vmulq_f64(v16, v16)));
      v18 = fabsf(((v8 * (v15.f32[1] / v17)) + ((v15.f32[0] / v17) * v7)) + ((v15.f32[2] / v17) * v9));
      if (v18 > v12)
      {
        v11 = v17;
        v12 = v18;
      }

      --v10;
    }

    while (v10);
    goto LABEL_10;
  }

  v11 = 0.0;
  if (v21)
  {
LABEL_10:
    operator delete(v20);
  }

  return v11;
}

void sub_262330D5C(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v13 = (v5 + 24 * a2);
      if (v4 != v13)
      {
        v14 = a1[1];
        do
        {
          v16 = *(v14 - 3);
          v14 -= 3;
          v15 = v16;
          if (v16)
          {
            *(v4 - 2) = v15;
            operator delete(v15);
          }

          v4 = v14;
        }

        while (v14 != v13);
      }

      a1[1] = v13;
    }
  }

  else
  {
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v5) >> 3);
        v11 = 0x5555555555555556 * ((v9 - v5) >> 3);
        if (v11 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        sub_2621E1EE4(v12);
      }

      sub_2621CBEB0();
    }

    v17 = &v4[3 * v7];
    v18 = 24 * a2 - 8 * ((v4 - *a1) >> 3);
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2621C8E70(v4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      v4 += 3;
      v18 -= 24;
    }

    while (v18);
    a1[1] = v17;
  }
}

void sub_262330F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

void **sub_262330F4C(void **a1)
{
  v3 = a1 + 6;
  sub_2621E1D40(&v3);
  v3 = a1 + 3;
  sub_2621E1D40(&v3);
  v3 = a1;
  sub_2621E1D40(&v3);
  return a1;
}

_OWORD *sub_262330FA4(_OWORD *result, _OWORD *a2, float32x2_t **a3, float32x4_t a4)
{
  v4 = 0;
  v5 = a2[5];
  v25[4] = a2[4];
  v25[5] = v5;
  v6 = a2[7];
  v25[6] = a2[6];
  v25[7] = v6;
  v7 = a2[1];
  v25[0] = *a2;
  v25[1] = v7;
  v8 = a2[3];
  v25[2] = a2[2];
  v25[3] = v8;
  do
  {
    v9 = vsubq_f32(v25[v4], a4);
    DWORD2(v25[v4]) = v9.i32[2];
    *&v25[v4++] = v9.i64[0];
  }

  while (v4 != 8);
  v10 = 0;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  v11 = **a3;
  v12 = a3[6];
  v13 = *a3[3];
  v14 = *v12;
  _S6 = v12[1].i32[0];
  do
  {
    _Q7 = v25[v10];
    v17 = &result[v10];
    __asm { FMLA            S17, S6, V7.S[2] }

    v17[1].i32[0] = _S17;
    *v17 = vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(v13, *_Q7.f32, 1), v11, _Q7.f32[0]), v14, _Q7, 2);
    ++v10;
  }

  while (v10 != 8);
  for (i = 0; i != 8; ++i)
  {
    v24 = vaddq_f32(result[i], a4);
    DWORD2(result[i]) = v24.i32[2];
    *&result[i] = v24.i64[0];
  }

  return result;
}

void sub_262331098(uint64_t *a1, float a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __sincosf_stret(a2);
  v8[0] = LODWORD(v3.__cosval);
  v8[1] = LODWORD(v3.__sinval);
  v8[2] = 0;
  memset(v9, 0, sizeof(v9));
  sub_2621DC430(v9, v8, v9, 3uLL);
  *v7 = -v3.__sinval;
  v7[1] = LODWORD(v3.__cosval);
  v7[2] = 0;
  memset(v10, 0, sizeof(v10));
  sub_2621DC430(v10, v7, v8, 3uLL);
  v4 = 0;
  v5 = 1065353216;
  memset(v11, 0, sizeof(v11));
  sub_2621DC430(v11, &v4, &v6, 3uLL);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2622180B8(a1, v9, &v12, 3uLL);
}

void sub_2623311DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = &a22;
  v24 = -72;
  while (1)
  {
    v25 = *(v23 - 1);
    if (v25)
    {
      *v23 = v25;
      operator delete(v25);
    }

    v23 -= 3;
    v24 += 24;
    if (!v24)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_262331248(void *a1, uint64_t *a2, int *a3, int *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  if (a3 != a4)
  {
    v7 = a3;
    do
    {
      sub_2621C729C(v13, *v7, v7);
      ++v7;
    }

    while (v7 != a4);
  }

  v8 = *a2;
  v9 = a2[1];
  if (v9 != *a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (!sub_2621C719C(v13, v11))
      {
        sub_262236B50(a1, (v8 + v10));
        v8 = *a2;
        v9 = a2[1];
      }

      ++v11;
      v10 += 192;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 6) > v11);
  }

  return sub_2621C74C4(v13);
}

void sub_262331330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2621C74C4(&a9);
  sub_2621EAAB0(&a9);
  _Unwind_Resume(a1);
}

void sub_262331354(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = a1[1];
    do
    {
      v7 = *a1 + 24 * *(v2 + 4 * v5);
      if (v7 + 24 == v6)
      {
        v11 = v6;
        v6 = *a1 + 24 * *(v2 + 4 * v5);
      }

      else
      {
        do
        {
          v8 = *v7;
          if (*v7)
          {
            *(v7 + 8) = v8;
            operator delete(v8);
            *(v7 + 16) = 0;
          }

          v9 = v7 + 24;
          *v7 = *(v7 + 24);
          *(v7 + 16) = *(v7 + 40);
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          *(v7 + 24) = 0;
          v10 = v7 + 48;
          v7 += 24;
        }

        while (v10 != v6);
        v11 = a1[1];
        v6 = v9;
      }

      if (v11 != v6)
      {
        v12 = v11;
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v11 - 16) = v13;
            operator delete(v13);
          }

          v11 = v12;
        }

        while (v12 != v6);
      }

      a1[1] = v6;
      ++v5;
      v2 = *a2;
      v15 = a2[1];
    }

    while (v5 < (v15 - *a2) >> 2);
    if (v15 != v2)
    {
      v16 = 0;
      v17 = *a1;
      v18 = v6;
      do
      {
        if (v18 == v17)
        {
          v18 = v17;
        }

        else
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = v17 + v19;
            v22 = *(v17 + v19 + 8);
            v23 = *(v17 + v19) + 4 * *(*a2 + 4 * v16);
            v24 = v22 - (v23 + 4);
            if (v22 != v23 + 4)
            {
              memmove((*(v17 + v19) + 4 * *(*a2 + 4 * v16)), (v23 + 4), v22 - (v23 + 4));
              v17 = *a1;
              v6 = a1[1];
            }

            *(v21 + 8) = v23 + v24;
            ++v20;
            v19 += 24;
          }

          while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v6 - v17) >> 3));
          v2 = *a2;
          v15 = a2[1];
          v18 = v6;
        }

        ++v16;
      }

      while (v16 < (v15 - v2) >> 2);
    }
  }
}

uint64_t *sub_262331500(uint64_t *a1, float32x4_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = vsubq_f32(*a2, a2[1]);
  v3 = vsubq_f32(*a2, a2[3]);
  v4 = vsubq_f32(*a2, a2[4]);
  v5 = *&v4.i32[1] * *&v4.i32[1];
  v6.i32[0] = vextq_s8(v4, v4, 8uLL).u32[0];
  v6.i32[1] = v4.i32[0];
  v7 = vcvtq_f64_f32(v6);
  v8 = vmulq_f64(v7, v7);
  v8.f64[0] = sqrt(v8.f64[0] + v8.f64[1] + v5);
  v9 = vcvtq_f64_f32(vzip1_s32(*v2.i8, *v3.i8));
  v10 = vcvtq_f64_f32(vzip2_s32(*v2.i8, *v3.i8));
  v11 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v3, v3, 8uLL)));
  v13 = vcvt_f32_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v11, v11), vaddq_f64(vmulq_f64(v9, v9), vmulq_f64(v10, v10)))));
  *v8.f64 = v8.f64[0];
  v14 = LODWORD(v8.f64[0]);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_2621DC430(a1, &v13, &v15, 3uLL);
}

uint64_t *sub_2623315EC(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) < *(**a3 + 4 * *result))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_262331838(result, v24, a3, v25, a5);
        v26 = &v22[v23];
        result = sub_262331838(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * *v29);
          v32 = *(*v28 + 4 * *v22);
          if (v31 >= v32)
          {
            v30 = *v22;
          }

          v22 += v31 >= v32;
          v29 += v31 < v32;
          *v8++ = v30;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8++ = v34;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22++;
          *v8++ = v33;
        }
      }

      else
      {
        sub_2623315EC(result, v24, a3, v25, a5, a6);
        sub_2623315EC(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v22, a6);

        return sub_262331A30(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 < *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 8) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 8);
              v19 -= 8;
              if (v18 >= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 8);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 8;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_262331838(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 >= v13)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 >= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = &result[a4 >> 1];
      sub_2623315EC(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_2623315EC(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 4 * *v26);
        v29 = *(*v25 + 4 * *v7);
        if (v28 >= v29)
        {
          v27 = *v7;
        }

        v26 += v28 < v29;
        v7 += v28 >= v29;
        *v5++ = v27;
        if (v7 == v24)
        {
          while (v26 != a2)
          {
            v31 = *v26++;
            *v5++ = v31;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v30 = *v7++;
        *v5++ = v30;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*(v16 + 4 * *v14) >= *(v16 + 4 * v20))
          {
            *v18 = *v14;
          }

          else
          {
            v17[1] = v19;
            v21 = a5;
            if (v17 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (a5 + v22);
                v23 = *(a5 + v22 - 8);
                if (*(v16 + 4 * *v14) >= *(v16 + 4 * v23))
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          ++v14;
          v15 += 8;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_262331A30(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    v11 = result;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = **a4;
      while (1)
      {
        v13 = *v11;
        if (*(v12 + 4 * *a2) < *(v12 + 4 * *v11))
        {
          break;
        }

        ++v11;
        if (!--a5)
        {
          return result;
        }
      }

      if (a5 >= v8)
      {
        if (a5 == 1)
        {
          *v11 = *a2;
          *a2 = v13;
          return result;
        }

        v22 = a5 / 2;
        v16 = &v11[a5 / 2];
        v15 = a2;
        if (a2 != a3)
        {
          v23 = a3 - a2;
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[v23 >> 1];
            v27 = *v25;
            v26 = v25 + 1;
            v23 += ~(v23 >> 1);
            if (*(v12 + 4 * v27) < *(v12 + 4 * *v16))
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = v15 - a2;
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[v8 / 2];
        v16 = a2;
        if (a2 != v11)
        {
          v17 = a2 - v11;
          v16 = v11;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[v17 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v17 += ~(v17 >> 1);
            if (*(v12 + 4 * *v15) < *(v12 + 4 * v21))
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = v16 - v11;
      }

      v28 = v15;
      v29 = a2 - v16;
      if (a2 != v16)
      {
        v28 = v16;
        v30 = v15 - a2;
        if (v15 != a2)
        {
          if (v16 + 1 == a2)
          {
            v80 = *v16;
            v82 = v22;
            v31 = v15 - a2;
            v84 = a7;
            v32 = a3;
            v33 = a4;
            v34 = a8;
            v35 = v14;
            memmove(v16, a2, v15 - a2);
            v14 = v35;
            v22 = v82;
            a7 = v84;
            a8 = v34;
            a4 = v33;
            a3 = v32;
            v28 = (v16 + v31);
            *v28 = v80;
          }

          else if (a2 + 1 == v15)
          {
            v36 = *(v15 - 1);
            v28 = v16 + 1;
            if (v15 - 1 != v16)
            {
              v83 = v22;
              v85 = a7;
              v37 = a3;
              v38 = a4;
              v39 = a8;
              v40 = v14;
              v81 = *(v15 - 1);
              memmove(v16 + 1, v16, (v15 - 1) - v16);
              v14 = v40;
              v36 = v81;
              v22 = v83;
              a8 = v39;
              a4 = v38;
              a3 = v37;
              a7 = v85;
            }

            *v16 = v36;
          }

          else
          {
            v41 = v29 >> 3;
            if (v29 >> 3 == v30 >> 3)
            {
              v42 = v16 + 1;
              v43 = a2 + 1;
              do
              {
                v44 = *(v42 - 1);
                *(v42 - 1) = *(v43 - 1);
                *(v43 - 1) = v44;
                if (v42 == a2)
                {
                  break;
                }

                ++v42;
              }

              while (v43++ != v15);
              v28 = a2;
            }

            else
            {
              v46 = v30 >> 3;
              v47 = v29 >> 3;
              do
              {
                v48 = v47;
                v47 = v46;
                v46 = v48 % v46;
              }

              while (v46);
              v49 = &v16[v47];
              do
              {
                v51 = *--v49;
                v50 = v51;
                v52 = (v49 + v29);
                v53 = v49;
                do
                {
                  v54 = v52;
                  *v53 = *v52;
                  v55 = &v52[v41];
                  v56 = __OFSUB__(v41, v15 - v52);
                  v58 = v41 - (v15 - v52);
                  v57 = (v58 < 0) ^ v56;
                  v52 = &v16[v58];
                  if (v57)
                  {
                    v52 = v55;
                  }

                  v53 = v54;
                }

                while (v52 != v49);
                *v54 = v50;
              }

              while (v49 != v16);
              v28 = (v16 + v30);
            }
          }
        }
      }

      a5 -= v22;
      v8 -= v14;
      v59 = a4;
      if (v22 + v14 >= a5 + v8)
      {
        v64 = a5;
        v65 = v14;
        v61 = a7;
        v62 = a8;
        result = sub_262331A30(v28, v15, a3, a4, v64, v8, a7, a8);
        v15 = v16;
        v8 = v65;
        a5 = v22;
        a3 = v28;
      }

      else
      {
        v60 = v22;
        v61 = a7;
        v62 = a8;
        v63 = a3;
        result = sub_262331A30(v11, v16, v28, a4, v60, v14, a7, a8);
        a3 = v63;
        v11 = v28;
      }

      a2 = v15;
      a7 = v61;
      a4 = v59;
      a8 = v62;
      if (!v8)
      {
        return result;
      }
    }

    if (a5 <= v8)
    {
      if (a2 != v11)
      {
        v71 = a7;
        v72 = v11;
        do
        {
          v73 = *v72++;
          *v71 = v73;
          v71 += 8;
        }

        while (v72 != a2);
        v74 = *a4;
        while (a2 != a3)
        {
          v75 = *a2;
          v76 = *(*v74 + 4 * *a2);
          v77 = *(*v74 + 4 * *a7);
          if (v76 >= v77)
          {
            v75 = *a7;
          }

          a2 += v76 < v77;
          a7 += 8 * (v76 >= v77);
          *v11++ = v75;
          if (a7 == v71)
          {
            return result;
          }
        }

        return memmove(v11, a7, v71 - a7);
      }
    }

    else if (a2 != a3)
    {
      v66 = a7;
      v67 = a2;
      do
      {
        v68 = *v67++;
        *v66 = v68;
        v66 += 8;
      }

      while (v67 != a3);
      v69 = *a4;
      while (a2 != v11)
      {
        v70 = *(v66 - 1);
        if (*(*v69 + 4 * v70) >= *(*v69 + 4 * *(a2 - 1)))
        {
          v66 -= 8;
        }

        else
        {
          v70 = *--a2;
        }

        *--a3 = v70;
        if (v66 == a7)
        {
          return result;
        }
      }

      if (v66 != a7)
      {
        v78 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v79 = *(v66 - 1);
          v66 -= 8;
          a3[v78--] = v79;
        }

        while (v66 != a7);
      }
    }
  }

  return result;
}

uint64_t *sub_262331F00(uint64_t *a1, void *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
      if (v7 == a3)
      {
        sub_2621C8EEC(a1, v4);
      }
    }
  }

  return a1;
}

void sub_262331FDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262331FF8(uint64_t *a1, void *a2, int a3, void *a4, char **a5, uint64_t *a6, int a7)
{
  v7 = a7;
  v9 = a3;
  v11 = 0;
  v12 = (*a1 + 192 * a3);
  v13 = v12[5];
  v320[4] = v12[4];
  v320[5] = v13;
  v285 = a3;
  v14 = v12[7];
  v320[6] = v12[6];
  v320[7] = v14;
  v15 = v12[1];
  v320[0] = *v12;
  v320[1] = v15;
  v16 = v12[3];
  v320[2] = v12[2];
  v320[3] = v16;
  do
  {
    v290 = v11 + 1;
    v296 = v320[(v11 + 1) & 3];
    v299 = v320[v11];
    v17 = vsubq_f32(v320[v11 ^ 2], v296);
    v18 = vcvtq_f64_f32(*v17.f32);
    v18.f64[0] = sqrt(v17.f32[2] * v17.f32[2] + vaddvq_f64(vmulq_f64(v18, v18)));
    *v18.f64 = v18.f64[0];
    v303 = v17.f32[2] / *v18.f64;
    *__src = vdivq_f32(v17, vdupq_lane_s32(*&v18.f64[0], 0));
    v317 = 0;
    v318 = 0;
    v319 = 0;
    LODWORD(v330) = 0;
    v20 = *a1;
    v19 = a1[1];
    if (v19 != *a1)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (*(*a2 + 4 * v22) == v9)
        {
          v23 = vsubq_f32(v20[v21 + 1], v20[v21]);
          v24 = vcvtq_f64_f32(*v23.f32);
          *v24.f64 = sqrt(v23.f32[2] * v23.f32[2] + vaddvq_f64(vmulq_f64(v24, v24)));
          if ((((*(__src + 1) * (v23.f32[1] / *v24.f64)) + ((v23.f32[0] / *v24.f64) * *__src)) + ((v23.f32[2] / *v24.f64) * v303)) > 0.95)
          {
            sub_2621C7CD0(&v317, &v330);
            v20 = *a1;
            v19 = a1[1];
          }
        }

        LODWORD(v330) = ++v22;
        v21 += 12;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 6) > v22);
    }

    v25 = v296;
    v26 = vsubq_f32(v296, v299);
    v27 = vcvtq_f64_f32(*v26.f32);
    v27.f64[0] = sqrt(v26.f32[2] * v26.f32[2] + vaddvq_f64(vmulq_f64(v27, v27)));
    *v27.f64 = v27.f64[0];
    v25.f32[0] = v26.f32[2] / *v27.f64;
    v289 = v26;
    v28 = vdivq_f32(v26, vdupq_lane_s32(*&v27.f64[0], 0));
    v292 = *v28.f32;
    v294 = v25;
    v28.i32[2] = v25.i32[0];
    v297 = v28;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v43 = *__src;
        *(&v43 + 2) = v303;
        *v304 = v43;
        v326 = v43;
        v330 = 0;
        v331 = 0;
        v332 = 0;
        v44 = *a5;
        v45 = a5[1];
        v329 = 0;
        v328 = 0uLL;
        v46 = v45 - v44;
        if (v45 != v44)
        {
          if (!((v46 >> 2) >> 62))
          {
            sub_2621C7F54(v46 >> 2);
          }

          sub_2621CBEB0();
        }

        v48 = *a6;
        v47 = a6[1];
        if (v47 != *a6)
        {
          v49 = 0;
          do
          {
            v50 = v328.i64[0];
            v51 = (v48 + 4 * v49);
            if (v328.i64[0] != v328.i64[1])
            {
              while (*v50 != *v51)
              {
                if (++v50 == v328.i64[1])
                {
                  goto LABEL_42;
                }
              }
            }

            if (v50 == v328.i64[1])
            {
LABEL_42:
              sub_2621C7CD0(&v328, v51);
              v48 = *a6;
              v47 = a6[1];
            }

            ++v49;
          }

          while (v49 < (v47 - v48) >> 2);
        }

        v52 = v317;
        if (v318 == v317)
        {
          v58 = 0;
        }

        else
        {
          v53 = 0;
          v54 = v328;
          v55 = (v318 - v317) >> 2;
          do
          {
            v56 = &v52[4 * v53];
            v57 = v54.i64[0];
            if (v54.i64[0] != v54.i64[1])
            {
              v57 = v54.i64[0];
              while (*v57 != *v56)
              {
                if (++v57 == v54.i64[1])
                {
                  goto LABEL_52;
                }
              }
            }

            if (v57 == v54.i64[1])
            {
LABEL_52:
              sub_2621C7CD0(&v330, v56);
            }

            ++v53;
          }

          while (v55 > v53);
          v58 = v330;
          if (v331 == v330)
          {
            v7 = a7;
          }

          else
          {
            v59 = 0;
            if (((v331 - v330) >> 2) <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = (v331 - v330) >> 2;
            }

            v7 = a7;
            do
            {
              v61 = 0;
              v62 = (*a1 + 192 * *&v58[4 * v59]);
              v63 = 0;
              do
              {
                v63 = vadd_f32(v63, *v62[v61++].f32);
              }

              while (v61 != 8);
              v64 = sub_262330BE4(v62, &v326);
              v65 = 0;
              *v66.f32 = vmul_f32(v63, 0x3E0000003E000000);
              v66.i64[0] = vsubq_f32(v66, v299).u64[0];
              v67 = ((vmuls_lane_f32(*(__src + 1), *v66.f32, 1) + (v66.f32[0] * *__src)) + 0.0) + v64 * 0.5 * -0.300000012;
              v68 = vmulq_n_f32(*v304, v67);
              do
              {
                v69 = *a1 + 192 * *&v58[4 * v59];
                *(v69 + v65) = vsubq_f32(*(v69 + v65), v68);
                v65 += 16;
              }

              while (v65 != 128);
              ++v59;
            }

            while (v59 != v60);
          }
        }

        if (v328.i64[0])
        {
          operator delete(v328.i64[0]);
        }

        if (!v58)
        {
          goto LABEL_202;
        }

        v181 = v58;
        goto LABEL_201;
      }

      if (v7 == 4)
      {
        v325 = v28;
        v330 = 0;
        v331 = 0;
        v332 = 0;
        v29 = v317;
        v30 = v318 - v317;
        if (v318 == v317)
        {
          v36 = 0;
        }

        else
        {
          v31 = 0;
          v32 = v30 >> 2;
          do
          {
            v33 = *a5;
            v34 = a5[1];
            v35 = &v29[4 * v31];
            if (*a5 != v34)
            {
              while (*v33 != *v35)
              {
                v33 += 4;
                if (v33 == v34)
                {
                  goto LABEL_18;
                }
              }
            }

            if (v33 == v34)
            {
LABEL_18:
              sub_2621C7CD0(&v330, v35);
            }

            ++v31;
          }

          while (v32 > v31);
          v36 = v330;
          v30 = v331;
        }

        if ((v30 - v36) <= 4)
        {
          v314 = 0;
          v315 = 0;
          v316 = 0;
          if (v36)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v328 = 0uLL;
          v329 = 0;
          v119 = sub_262330BE4((*a1 + 192 * *v36), &v325);
          v121 = *a1;
          v120 = a1[1];
          if (v120 == *a1)
          {
            v137 = 0;
            v138 = 0;
            v141 = 0;
            v133 = 0;
            v326 = 0uLL;
            v327 = 0;
          }

          else
          {
            v122 = 0;
            v123 = 0;
            v124 = 0;
            do
            {
              v125 = v330;
              if (v330 != v331)
              {
                while (v124 != *v125)
                {
                  v125 += 4;
                  if (v125 == v331)
                  {
                    goto LABEL_122;
                  }
                }
              }

              if (v125 != v331)
              {
                v126 = 0;
                v127 = &v121[v122];
                v128 = 0;
                v129 = 0.0;
                do
                {
                  v128 = vadd_f32(v128, *&v127[v126]);
                  v129 = v129 + COERCE_FLOAT(*(&v127[v126++] + 1));
                }

                while (v126 != 8);
                *&v118 = vmul_f32(v128, 0x3E0000003E000000);
                v130 = v123;
                v131 = (v123 >> 4) + 1;
                if (v131 >> 60)
                {
                  sub_2621CBEB0();
                }

                if (v123 >> 4 != -1)
                {
                  sub_2621CBF10(v131);
                }

                v132 = (16 * (v123 >> 4));
                *(&v118 + 2) = v129 * 0.125;
                *v132 = v118;
                v123 = (v132 + 1);
                memcpy(0, 0, v130);
                v121 = *a1;
                v120 = a1[1];
              }

LABEL_122:
              ++v124;
              v122 += 12;
            }

            while (0xAAAAAAAAAAAAAAABLL * ((v120 - v121) >> 6) > v124);
            v326 = 0uLL;
            v327 = 0;
            v133 = v123;
            if (v123)
            {
              v134 = v325.i64[0];
              if ((v123 >> 4) <= 1)
              {
                v135 = 1;
              }

              else
              {
                v135 = v123 >> 4;
              }

              v136 = 0;
              do
              {
                __p.f32[0] = ((COERCE_FLOAT(HIDWORD(*v136)) - v299.f32[1]) * *(&v134 + 1)) + ((COERCE_FLOAT(*v136) - v299.f32[0]) * *&v134);
                sub_2621C8F2C(&v326, &__p);
                ++v136;
                --v135;
              }

              while (v135);
              v138 = *(&v326 + 1);
              v137 = v326;
              v139 = (v326 + 4);
              _ZF = v326 == *(&v326 + 1) || v139 == *(&v326 + 1);
              v9 = a3;
              if (_ZF)
              {
                v141 = v326;
                v133 = v326;
              }

              else
              {
                v208 = *v326;
                v133 = v326;
                v209 = (v326 + 4);
                do
                {
                  v210 = *v209++;
                  v211 = v210;
                  if (v210 < v208)
                  {
                    v208 = v211;
                    v133 = v139;
                  }

                  v139 = v209;
                }

                while (v209 != *(&v326 + 1));
                v141 = v326;
              }
            }

            else
            {
              v137 = 0;
              v138 = 0;
              v141 = 0;
              v9 = a3;
            }
          }

          v212 = v133 - v141;
          v213 = v330;
          sub_2621C7CD0(&v328, &v330[(v133 - v141) << 30 >> 30]);
          if (v137 == v138)
          {
            v215 = v137;
          }

          else
          {
            v214 = v137 + 1;
            v215 = v137;
            if (v137 + 1 != v138)
            {
              v216 = *v137;
              v215 = v137;
              v217 = v137 + 1;
              do
              {
                v218 = *v217++;
                v219 = v218;
                if (v216 < v218)
                {
                  v216 = v219;
                  v215 = v214;
                }

                v214 = v217;
              }

              while (v217 != v138);
            }
          }

          v220 = v215 - v137;
          sub_2621C7CD0(&v328, &v213[(v215 - v137) << 30 >> 30]);
          v221 = v137[(v220 >> 2)] - v137[(v212 >> 2)];
          v222 = vcvtms_s32_f32(v221 / v119);
          v315 = 0;
          v316 = 0;
          v314 = 0;
          v223 = (v222 - 1);
          if (v222 > 1)
          {
            v293 = v222;
            __p = 0uLL;
            v324 = 0;
            v321 = 0uLL;
            v322 = 0;
            v306 = v213;
            v301 = v331;
            v295 = (v331 - v213) >> 2;
            sub_2621CA9DC(&v321, v213, v331, v295);
            v231 = v328.i64[0];
            v232 = v321.i64[1];
            v233 = v321.i64[0];
            if (v328.i64[1] != v328.i64[0])
            {
              v234 = 0;
              v235 = (v328.i64[1] - v328.i64[0]) >> 2;
              do
              {
                if (v233 == v232)
                {
                  v236 = v233;
                }

                else
                {
                  v236 = v233;
                  while (*v236 != v231[v234])
                  {
                    v236 += 4;
                    if (v236 == v232)
                    {
                      v236 = v232;
                      break;
                    }
                  }
                }

                if (v232 != v236)
                {
                  v237 = v232 - (v236 + 4);
                  if (v232 != v236 + 4)
                  {
                    memmove(v236, v236 + 4, v232 - (v236 + 4));
                  }

                  v232 = &v236[v237];
                }

                ++v234;
              }

              while (v235 > v234);
              v321.i64[1] = v232;
            }

            v238 = 0;
            v239 = (v232 - v233) >> 2;
            v240 = v233;
            do
            {
              if (v239 > v238)
              {
                sub_2621C7CD0(&__p, v240);
              }

              ++v238;
              ++v240;
            }

            while (v223 != v238);
            v241 = __p.i64[0];
            if (__p.i64[1] != __p.i64[0])
            {
              if (((__p.i64[1] - __p.i64[0]) >> 2) <= 1)
              {
                v242 = 1;
              }

              else
              {
                v242 = (__p.i64[1] - __p.i64[0]) >> 2;
              }

              do
              {
                sub_2621C7CD0(&v328, v241++);
                --v242;
              }

              while (v242);
              v231 = v328.i64[0];
            }

            v243 = 0;
            v244 = *a1 + 192 * *v231;
            v245 = 0;
            v246 = 0.0;
            do
            {
              v245 = vadd_f32(v245, *(v244 + v243));
              v246 = v246 + COERCE_FLOAT(*(v244 + v243 + 8));
              v243 += 16;
            }

            while (v243 != 128);
            v247 = v328.i64[1];
            if (v328.i64[1] - v231 > 8uLL)
            {
              *v229.f32 = vmul_f32(v245, 0x3E0000003E000000);
              v248 = v325;
              _S3 = v325.i32[2];
              v250 = (v328.i64[1] - v231) >> 2;
              if (v250 <= 3)
              {
                v250 = 3;
              }

              for (i = 2; i != v250; ++i)
              {
                v252 = 0;
                v253 = *a1 + 192 * v231[i];
                v230.i64[0] = 0;
                v254 = 0.0;
                do
                {
                  *v230.f32 = vadd_f32(*v230.f32, *(v253 + v252));
                  v254 = v254 + COERCE_FLOAT(*(v253 + v252 + 8));
                  v252 += 16;
                }

                while (v252 != 128);
                v255 = 0;
                *v230.f32 = vmul_f32(*v230.f32, 0x3E0000003E000000);
                v230.f32[2] = v254 * 0.125;
                v229.f32[2] = v246 * 0.125;
                _Q4 = vsubq_f32(vmlaq_n_f32(v229, v297, (v221 / v293) * (i - 1)), v230);
                __asm { FMLA            S5, S3, V4.S[2] }

                v258 = vmulq_n_f32(v248, _S5);
                do
                {
                  v259 = *a1 + 192 * v231[i];
                  v230 = vaddq_f32(v258, *(v259 + v255));
                  *(v259 + v255) = v230;
                  v255 += 16;
                }

                while (v255 != 128);
              }
            }

            sub_2621CA9DC(&v314, v306, v301, v295);
            if (v247 != v231)
            {
              v260 = 0;
              v262 = v314;
              v261 = v315;
              v307 = v328.i64[1];
              v302 = v328.i64[0];
              do
              {
                if (v262 == v261)
                {
                  v263 = v262;
                }

                else
                {
                  v263 = v262;
                  while (*v263 != v231[v260])
                  {
                    v263 += 4;
                    if (v263 == v261)
                    {
                      v263 = v261;
                      break;
                    }
                  }
                }

                if (v261 != v263)
                {
                  v264 = v261 - (v263 + 4);
                  if (v261 != v263 + 4)
                  {
                    memmove(v263, v263 + 4, v261 - (v263 + 4));
                    v231 = v302;
                    v247 = v307;
                  }

                  v261 = &v263[v264];
                }

                ++v260;
              }

              while (v260 < v247 - v231);
              v315 = v261;
              v233 = v321.i64[0];
            }

            if (v233)
            {
              operator delete(v233);
            }

            v7 = a7;
            v9 = a3;
            if (__p.i64[0])
            {
              operator delete(__p.i64[0]);
            }
          }

          else
          {
            __p = 0uLL;
            v324 = 0;
            if (v222 < 0)
            {
              v226 = v213;
              v227 = 0;
              v228 = 0;
            }

            else
            {
              v224 = (v222 + 1);
              v225 = v328.i64[0];
              do
              {
                sub_2621C7CD0(&__p, v225++);
                --v224;
              }

              while (v224);
              v226 = v213;
              v227 = __p.i64[1];
              v228 = __p.i64[0];
            }

            sub_2621CA9DC(&v328, v228, v227, (v227 - v228) >> 2);
            sub_2621CA9DC(&v314, v226, v331, (v331 - v226) >> 2);
            v266 = v328.i64[1];
            v265 = v328.i64[0];
            if (v328.i64[1] != v328.i64[0])
            {
              v267 = 0;
              v269 = v314;
              v268 = v315;
              v270 = v328;
              do
              {
                if (v269 == v268)
                {
                  v271 = v269;
                }

                else
                {
                  v271 = v269;
                  while (*v271 != *(v265 + 4 * v267))
                  {
                    v271 += 4;
                    if (v271 == v268)
                    {
                      v271 = v268;
                      break;
                    }
                  }
                }

                if (v268 != v271)
                {
                  v272 = v268 - (v271 + 4);
                  if (v268 != v271 + 4)
                  {
                    memmove(v271, v271 + 4, v268 - (v271 + 4));
                    v266 = v270.i64[1];
                    v265 = v270.i64[0];
                  }

                  v268 = &v271[v272];
                }

                ++v267;
              }

              while (v267 < (v266 - v265) >> 2);
              v315 = v268;
              v228 = __p.i64[0];
              v9 = a3;
            }

            if (v228)
            {
              __p.i64[1] = v228;
              operator delete(v228);
            }

            v7 = a7;
          }

          if (v326)
          {
            operator delete(v326);
          }

          if (v328.i64[0])
          {
            operator delete(v328.i64[0]);
          }

          v36 = v330;
          if (!v330)
          {
            goto LABEL_137;
          }

LABEL_136:
          v331 = v36;
          operator delete(v36);
        }

LABEL_137:
        v40 = v314;
        if (v315 != v314)
        {
          v142 = 0;
          v143 = (v315 - v314) >> 2;
          do
          {
            v144 = *a5;
            v145 = a5[1];
            v146 = &v40[4 * v142];
            if (*a5 != v145)
            {
              while (*v144 != *v146)
              {
                v144 += 4;
                if (v144 == v145)
                {
                  goto LABEL_144;
                }
              }
            }

            if (v144 == v145)
            {
LABEL_144:
              sub_2621C7CD0(a5, v146);
            }

            ++v142;
          }

          while (v143 > v142);
        }

        if (!v40)
        {
          goto LABEL_202;
        }

        v315 = v40;
        goto LABEL_190;
      }

      v321 = v28;
      v331 = 0;
      v332 = 0;
      v330 = &v331;
      v70 = v317;
      if (v318 == v317)
      {
        v77 = &v331;
      }

      else
      {
        v71 = 0;
        v72 = (v318 - v317) >> 2;
        do
        {
          v73 = *a5;
          v74 = a5[1];
          v75 = &v70[4 * v71];
          if (*a5 != v74)
          {
            v76 = *v75;
            while (*v73 != v76)
            {
              v73 += 4;
              if (v73 == v74)
              {
                goto LABEL_74;
              }
            }
          }

          if (v73 == v74)
          {
            v76 = *v75;
LABEL_74:
            sub_2621C8094(&v330, v76, v75);
          }

          ++v71;
        }

        while (v72 > v71);
        v77 = v330;
      }

      sub_262331F00(&v328, v77, &v331);
      v147 = v328.i64[0];
      if (v328.i64[1] == v328.i64[0])
      {
        __p = 0uLL;
        v324 = 0;
        if (!v328.i64[0])
        {
          goto LABEL_179;
        }

        goto LABEL_178;
      }

      v326 = 0uLL;
      v327 = 0;
      sub_2621C8B60(&v326, v328.i64[0], v328.i64[1], (v328.i64[1] - v328.i64[0]) >> 2);
      v148 = sub_262330BE4((*a1 + 192 * *v328.i64[0]), &v321);
      v149.i32[0] = vextq_s8(v289, v289, 8uLL).u32[0];
      v149.i32[1] = v289.i32[0];
      v150 = vcvtq_f64_f32(v149);
      v151 = vmulq_f64(v150, v150);
      v152 = sqrt(v151.f64[0] + v151.f64[1] + *&v289.i32[1] * *&v289.i32[1]);
      v154 = *(&v326 + 1);
      v153 = v326;
      v155 = (*(&v326 + 1) - v326) >> 2;
      v156 = fmin(vcvtms_s32_f32(v152 / v148), v155);
      v157 = (__PAIR64__(v156, v152 - (v156 * v148)) - COERCE_UNSIGNED_INT(0.08)) >> 32;
      if (v157 < 1)
      {
        __p = v328;
        v324 = v329;
        v329 = 0;
        v328 = 0uLL;
        if (v326)
        {
LABEL_176:
          *(&v326 + 1) = v153;
          operator delete(v153);
        }
      }

      else
      {
        if (v155 > v157)
        {
          sub_2621C7F54((__PAIR64__(v156, v152 - (v156 * v148)) - COERCE_UNSIGNED_INT(0.08)) >> 32);
        }

        if (*(&v326 + 1) != v326)
        {
          v158 = 0;
          v159 = v152 / v157;
          v160.i64[0] = 0x3F0000003F000000;
          v160.i64[1] = 0x3F0000003F000000;
          v300 = vmlaq_f32(v299, v160, vmulq_n_f32(v297, v159));
          v161 = (*(&v326 + 1) - v326) >> 2;
          if (v161 <= 1)
          {
            v161 = 1;
          }

          do
          {
            v162 = 0;
            v163 = *a1 + 192 * v153[v158];
            v160.i64[0] = 0;
            v164 = 0.0;
            do
            {
              *v160.f32 = vadd_f32(*v160.f32, *(v163 + v162));
              v164 = v164 + COERCE_FLOAT(*(v163 + v162 + 8));
              v162 += 16;
            }

            while (v162 != 128);
            v165 = 0;
            *v160.f32 = vmul_f32(*v160.f32, 0x3E0000003E000000);
            v160.f32[2] = v164 * 0.125;
            _Q1 = vsubq_f32(vmlaq_n_f32(v300, v297, v159 * v158), v160);
            _S3 = v294.i32[0];
            __asm { FMLA            S2, S3, V1.S[2] }

            v169 = vmulq_n_f32(v297, _S2);
            do
            {
              v170 = *a1 + 192 * v153[v158];
              v160 = vaddq_f32(v169, *(v170 + v165));
              *(v170 + v165) = v160;
              v165 += 16;
            }

            while (v165 != 128);
            ++v158;
          }

          while (v158 != v161);
        }

        __p = 0uLL;
        v324 = 0;
        sub_2621C8B60(&__p, v328.i64[0], v328.i64[1], (v328.i64[1] - v328.i64[0]) >> 2);
        if (v154 != v153)
        {
          v171 = 0;
          v172 = __p.i64[1];
          v173 = __p.i64[0];
          __srca = *(&v326 + 1);
          v305 = v326;
          do
          {
            if (v173 == v172)
            {
              v174 = v173;
            }

            else
            {
              v174 = v173;
              while (*v174 != v153[v171])
              {
                v174 += 4;
                if (v174 == v172)
                {
                  v174 = v172;
                  break;
                }
              }
            }

            if (v172 != v174)
            {
              v175 = v172 - (v174 + 4);
              if (v172 != v174 + 4)
              {
                memmove(v174, v174 + 4, v172 - (v174 + 4));
                v153 = v305;
                v154 = __srca;
              }

              v172 = &v174[v175];
            }

            ++v171;
          }

          while (v171 < v154 - v153);
          __p.i64[1] = v172;
          v7 = a7;
        }

        v9 = a3;
        if (v153)
        {
          goto LABEL_176;
        }
      }

      v147 = v328.i64[0];
      if (!v328.i64[0])
      {
LABEL_179:
        sub_2621C6C04(v331);
        v40 = __p.i64[0];
        if (__p.i64[1] != __p.i64[0])
        {
          v176 = 0;
          v177 = (__p.i64[1] - __p.i64[0]) >> 2;
          do
          {
            v178 = *a5;
            v179 = a5[1];
            v180 = &v40[4 * v176];
            if (*a5 != v179)
            {
              while (*v178 != *v180)
              {
                v178 += 4;
                if (v178 == v179)
                {
                  goto LABEL_186;
                }
              }
            }

            if (v178 == v179)
            {
LABEL_186:
              sub_2621C7CD0(a5, v180);
            }

            ++v176;
          }

          while (v177 > v176);
        }

        if (!v40)
        {
          goto LABEL_202;
        }

        __p.i64[1] = v40;
        goto LABEL_190;
      }

LABEL_178:
      v328.i64[1] = v147;
      operator delete(v147);
      goto LABEL_179;
    }

    if (v7 == 1)
    {
      v312 = 0;
      v313 = 0;
      v311 = 0;
      sub_2621C8B60(&v311, v317, v318, (v318 - v317) >> 2);
      v37 = v311;
      v38 = v312;
      v39 = v312 - v311;
      if ((v312 - v311) > 4)
      {
        v298 = v311;
        v108 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
        v328.i32[0] = 0;
        sub_2621CD1D8(&v330, v108, &v328);
        if (a1[1] != *a1)
        {
          sub_26220F71C(*a1);
        }

        v314 = 0;
        v315 = 0;
        v316 = 0;
        v109 = v39 >> 2;
        LODWORD(v326) = 0;
        sub_2621CD1D8(&v328, v109, &v326);
        if (v38 == v298)
        {
          v113 = v328.i64[0];
        }

        else
        {
          v111 = 0;
          v112 = *a1;
          v113 = v328.i64[0];
          if (v109 <= 1)
          {
            v114 = 1;
          }

          else
          {
            v114 = v109;
          }

          do
          {
            v115 = 0;
            _Q2.i64[0] = 0;
            do
            {
              *_Q2.f32 = vadd_f32(*_Q2.f32, *&v112[12 * *(v298 + 4 * v111) + v115++]);
            }

            while (v115 != 8);
            *_Q2.f32 = vmul_f32(*_Q2.f32, 0x3E0000003E000000);
            _Q2.i32[2] = v299.i32[2];
            _Q2 = vsubq_f32(_Q2, v299);
            _S4 = v303;
            __asm { FMLA            S3, S4, V2.S[2] }

            *(v113 + 4 * v111++) = _S3;
          }

          while (v111 != v114);
        }

        __p.i32[0] = 0;
        sub_2621CD1D8(&v326, (v328.i64[1] - v113) >> 2, &__p);
        v182 = v328.i64[0];
        if (v328.i64[1] != v328.i64[0])
        {
          v183 = (v328.i64[1] - v328.i64[0]) >> 2;
          v184 = v326;
          if (v183 <= 1)
          {
            v183 = 1;
          }

          do
          {
            v185 = *v182++;
            *v184++ = -v185;
            --v183;
          }

          while (v183);
        }

        sub_2621CD160(&__p, (*(&v326 + 1) - v326) >> 2);
        v186 = __p;
        if (__p.i64[0] != __p.i64[1])
        {
          v187 = 0;
          v188 = (__p.i64[1] - __p.i64[0] - 8) >> 3;
          v189 = vdupq_n_s64(v188);
          v190 = xmmword_2623A7620;
          do
          {
            v191 = vmovn_s64(vcgeq_u64(v189, v190));
            if (v191.i8[0])
            {
              *(v186.i64[0] + 8 * v187) = v187;
            }

            if (v191.i8[4])
            {
              *(v186.i64[0] + 8 * v187 + 8) = v187 + 1;
            }

            v187 += 2;
            v190 = vaddq_s64(v190, vdupq_n_s64(2uLL));
          }

          while (((v188 + 2) & 0x3FFFFFFFFFFFFFFELL) != v187);
        }

        v321.i64[0] = &v326;
        v192 = (v186.i64[1] - v186.i64[0]) >> 3;
        if (v192 < 129)
        {
          v195 = 0;
LABEL_226:
          sub_2623315EC(v186.i64[0], v186.i64[1], &v321, v192, 0, v195);
        }

        else
        {
          v193 = (v186.i64[1] - v186.i64[0]) >> 3;
          while (1)
          {
            v194 = operator new(8 * v193, MEMORY[0x277D826F0]);
            if (v194)
            {
              break;
            }

            v195 = v193 >> 1;
            v196 = v193 > 1;
            v193 >>= 1;
            if (!v196)
            {
              goto LABEL_226;
            }
          }

          v198 = v194;
          sub_2623315EC(v186.i64[0], v186.i64[1], &v321, v192, v194, v193);
          operator delete(v198);
        }

        v199 = __p.i64[0];
        v200 = v298;
        v201 = *(v298 + 4 * *__p.i64[0]);
        v9 = a3;
        v7 = a7;
        if ((*(*(*a4 + 24 * v201) + 4 * v285) / *&v330[4 * v201]) <= 0.7)
        {
          goto LABEL_353;
        }

        v202 = *(v328.i64[0] + 4 * *__p.i64[0]);
        if (v202 <= 0.2 || (v202 - *(v328.i64[0] + 4 * *(__p.i64[0] + 8))) <= 0.1)
        {
          goto LABEL_353;
        }

        v321 = 0uLL;
        v322 = 0;
        v204 = *a1;
        v203 = a1[1];
        if (v203 == *a1)
        {
          v207 = 0;
        }

        else
        {
          v205 = 0;
          do
          {
            if (v38 != v200)
            {
              v206 = v200;
              while (v205 != *v206)
              {
                if (++v206 == v38)
                {
                  goto LABEL_240;
                }
              }

              if (v206 != v38)
              {
                sub_262236B50(&v321, &v204[12 * v205]);
                v204 = *a1;
                v203 = a1[1];
                v200 = v298;
              }
            }

LABEL_240:
            ++v205;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v203 - v204) >> 6) > v205);
          v199 = __p.i64[0];
          v207 = v321.i64[0];
        }

        v273 = 0;
        v274 = *v199;
        v275 = 0;
        do
        {
          v275 = vadd_f32(v275, *(v207 + 192 * *v199 + v273));
          v273 += 16;
        }

        while (v273 != 128);
        if (v321.i64[1] != v207)
        {
          v276 = 0;
          *v197.f32 = vmul_f32(v275, 0x3E0000003E000000);
          v197.i32[2] = v299.i32[2];
          _Q3 = vsubq_f32(v197, v299);
          _Q4 = v294;
          __asm { FMLA            S2, S4, V3.S[2] }

          v280 = 0xAAAAAAAAAAAAAAABLL * ((v321.i64[1] - v207) >> 6);
          if (v280 <= 1)
          {
            v280 = 1;
          }

          v281 = 999.0;
          do
          {
            if (v276 != v274)
            {
              v282 = 0;
              _Q4.i64[0] = 0;
              do
              {
                *_Q4.f32 = vadd_f32(*_Q4.f32, *(v207 + v282));
                v282 += 16;
              }

              while (v282 != 128);
              *_Q4.f32 = vmul_f32(*_Q4.f32, 0x3E0000003E000000);
              _Q4.i32[2] = v299.i32[2];
              _Q4 = vsubq_f32(_Q4, v299);
              _S6 = v294.i32[0];
              __asm { FMLA            S5, S6, V4.S[2] }

              _Q4.f32[0] = vabds_f32(_S2, _S5);
              if (_Q4.f32[0] < v281)
              {
                v281 = _Q4.f32[0];
              }
            }

            ++v276;
            v207 += 192;
          }

          while (v276 != v280);
          if (v281 < 0.4)
          {
            sub_2621C7CD0(&v314, (v298 + 4 * v274));
          }
        }

        v325.i64[0] = &v321;
        sub_2621EAAB0(&v325);
        v199 = __p.i64[0];
        if (__p.i64[0])
        {
LABEL_353:
          __p.i64[1] = v199;
          operator delete(v199);
        }

        if (v326)
        {
          *(&v326 + 1) = v326;
          operator delete(v326);
        }

        if (v328.i64[0])
        {
          v328.i64[1] = v328.i64[0];
          operator delete(v328.i64[0]);
        }

        if (v330)
        {
          v331 = v330;
          operator delete(v330);
        }

        v37 = v298;
        if (!v298)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v314 = 0;
        v315 = 0;
        v316 = 0;
        if (!v311)
        {
          goto LABEL_25;
        }
      }

      v312 = v37;
      operator delete(v37);
LABEL_25:
      v40 = v314;
      if (v315 != v314)
      {
        if (((v315 - v314) >> 2) <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = (v315 - v314) >> 2;
        }

        v42 = v314;
        do
        {
          sub_2621C7CD0(a5, v42++);
          --v41;
        }

        while (v41);
      }

      goto LABEL_95;
    }

    v78 = v317;
    if (v318 == v317)
    {
      goto LABEL_203;
    }

    v79 = 0;
    v330 = 0;
    v331 = 0;
    v80 = (v318 - v317) >> 2;
    v332 = 0;
    do
    {
      v81 = *a5;
      v82 = a5[1];
      v83 = &v78[4 * v79];
      if (*a5 != v82)
      {
        while (*v81 != *v83)
        {
          v81 += 4;
          if (v81 == v82)
          {
            goto LABEL_84;
          }
        }
      }

      if (v81 == v82)
      {
LABEL_84:
        sub_2621C7CD0(&v330, v83);
      }

      ++v79;
    }

    while (v80 > v79);
    v40 = v330;
    if (v331 - v330 != 8)
    {
      goto LABEL_95;
    }

    v84 = *(v330 + 1);
    if (*(*(*a4 + 24 * *v330) + 4 * v84) > 0.0)
    {
      v85 = *a1;
      v86 = (*a1 + 192 * *v330);
      v328 = v297;
      v87 = sub_262330BE4(v86, &v328);
      v88 = &v85[12 * v84];
      v89.f32[0] = sub_262330BE4(v88, &v328);
      v90 = 0;
      v91.i64[0] = 0;
      _Q1.i32[0] = 0;
      do
      {
        *v91.f32 = vadd_f32(*v91.f32, *v86[v90].f32);
        _Q1.f32[0] = _Q1.f32[0] + COERCE_FLOAT(v86[v90++].i64[1]);
      }

      while (v90 != 8);
      v93 = 0;
      *v91.f32 = vmul_f32(*v91.f32, 0x3E0000003E000000);
      v94 = 0;
      v95 = 0.0;
      do
      {
        v94 = vadd_f32(v94, *v88[v93].f32);
        v95 = v95 + COERCE_FLOAT(v88[v93++].i64[1]);
      }

      while (v93 != 8);
      v91.f32[2] = _Q1.f32[0] * 0.125;
      *_Q1.f32 = vmul_f32(v94, 0x3E0000003E000000);
      _Q1.f32[2] = v95 * 0.125;
      _Q2 = vsubq_f32(_Q1, v91);
      _Q3 = vcvtq_f64_f32(v292);
      *_Q3.f64 = sqrt(v294.f32[0] * v294.f32[0] + vaddvq_f64(vmulq_f64(_Q3, _Q3)));
      *_Q3.f64 = v294.f32[0] / *_Q3.f64;
      __asm { FMLA            S1, S3, V2.S[2] }

      v101 = (fabsf(_Q1.f32[0]) + -0.03);
      *&v101 = v87 * 0.5 + v89.f32[0] * 0.5 - v101;
      if (*&v101 >= 0.0)
      {
        v102 = 0;
        v89.i64[0] = 0;
        v103 = vdupq_lane_s32(*&vcgtq_f32(_Q1, v89), 0);
        v104 = vnegq_f32(v297);
        v105 = vbslq_s8(v103, v297, v104);
        *v104.i32 = *&v101 * -0.5;
        *&v101 = *&v101 * 0.5;
        v106 = vdupq_lane_s32(*v104.i8, 0);
        v107 = vdupq_lane_s32(*&v101, 0);
        do
        {
          v86[v102] = vmlaq_f32(v86[v102], v105, v106);
          v88[v102] = vmlaq_f32(v88[v102], v105, v107);
          ++v102;
        }

        while (v102 != 8);
      }

LABEL_95:
      if (!v40)
      {
        goto LABEL_202;
      }
    }

LABEL_190:
    v181 = v40;
LABEL_201:
    operator delete(v181);
LABEL_202:
    v78 = v317;
LABEL_203:
    if (v78)
    {
      operator delete(v78);
    }

    v11 = v290;
  }

  while (v290 != 4);
}

void sub_2623338C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  *(v64 - 256) = &a59;
  sub_2621EAAB0((v64 - 256));
  if (__p)
  {
    a64 = __p;
    operator delete(__p);
  }

  v66 = *(v64 - 240);
  if (v66)
  {
    *(v64 - 232) = v66;
    operator delete(v66);
  }

  v67 = *(v64 - 208);
  if (v67)
  {
    *(v64 - 200) = v67;
    operator delete(v67);
  }

  if (a37)
  {
    operator delete(a37);
  }

  v68 = *(v64 - 184);
  if (v68)
  {
    *(v64 - 176) = v68;
    operator delete(v68);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a40)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

void sub_262333B04(uint64_t a1, __int128 **a2, _DWORD *a3)
{
  v430 = *MEMORY[0x277D85DE8];
  v358 = 0uLL;
  v359 = 0;
  v356 = 0;
  v355 = 0;
  v357 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    goto LABEL_102;
  }

  v5 = 0;
  do
  {
    if ((objc_msgSend_isEqualToString_(*(v3 + 128), a2, @"Chair") & 1) != 0 || (objc_msgSend_isEqualToString_(*(v3 + 128), v6, @"Table") & 1) != 0 || objc_msgSend_isEqualToString_(*(v3 + 128), v7, @"Storage"))
    {
      sub_262236B50(&v358, v3);
    }

    v5 += objc_msgSend_isEqualToString_(*(v3 + 128), v8, @"Chair");
    v3 += 192;
  }

  while (v3 != v4);
  if (!v5 || (v9 = v358, v358 == *(&v358 + 1)))
  {
LABEL_102:
    v54 = *a2;
    v55 = a2[1];
    while (v54 != v55)
    {
      sub_262236B50(&v355, v54);
      v54 += 12;
    }

    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v56 = qword_27FF0C058;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2621C3000, v56, OS_LOG_TYPE_DEBUG, "Skip Chair Beautification since there is no chair.", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    *v416 = 0;
    sub_2622395E8(buf, v355, v356, 0xAAAAAAAAAAAAAAABLL * ((v356 - v355) >> 6));
    *&v416[16] = 0;
    *a1 = *buf;
    v57 = *v416;
    *v416 = 0uLL;
    memset(buf, 0, sizeof(buf));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v57;
    v391[0] = buf;
    sub_2621EAAB0(v391);
    goto LABEL_110;
  }

  v410 = 0uLL;
  v411 = 0;
  memset(buf, 0, sizeof(buf));
  *v416 = 0;
  v391[1] = 0;
  v391[0] = 0;
  *&v392 = 0;
  v368[1] = 0;
  v368[0] = 0;
  v10 = v358;
  *&v369 = 0;
  do
  {
    v11 = *(v9 + 128);
    if (objc_msgSend_isEqualToString_(v11, v12, @"Chair"))
    {
      LODWORD(v360[0]) = -1431655765 * ((v10 - v358) >> 6);
      sub_2621C7CD0(buf, v360);
    }

    else if (objc_msgSend_isEqualToString_(v11, v13, @"Table"))
    {
      LODWORD(v360[0]) = -1431655765 * ((v10 - v358) >> 6);
      sub_2621C7CD0(v391, v360);
    }

    else if (objc_msgSend_isEqualToString_(v11, v14, @"Storage"))
    {
      LODWORD(v360[0]) = -1431655765 * ((v10 - v358) >> 6);
      sub_2621C7CD0(v368, v360);
    }

    v9 += 192;
    v10 += 192;
  }

  while (v9 != *(&v358 + 1));
  v15 = *buf;
  v360[1] = 0;
  v360[0] = 0;
  v361.i64[0] = 0;
  v380[1] = 0;
  v380[0] = 0;
  *&v381 = 0;
  v350[1] = 0;
  v350[0] = 0;
  *&v351 = 0;
  if (*&buf[8] != *buf)
  {
    if (((*&buf[8] - *buf) >> 2) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = (*&buf[8] - *buf) >> 2;
    }

    v17 = *buf;
    do
    {
      sub_262329E20(v380, (v358 + 192 * *v17));
      sub_2621C8F2C(v350, (v358 + 192 * *v17++ + 136));
      --v16;
    }

    while (v16);
  }

  sub_26232F8A4(@"Chair", v380, v350, v360);
  v18 = v360[0];
  v19 = v360[1];
  if (v360[0] != v360[1])
  {
    v20 = v360[0];
    do
    {
      sub_262236B50(&v410, (v358 + 192 * v15[*v20++]));
    }

    while (v20 != v19);
  }

  v380[1] = v380[0];
  v350[1] = v350[0];
  v360[1] = v18;
  v21 = v391[0];
  if (v391[1] != v391[0])
  {
    if (((v391[1] - v391[0]) >> 2) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v391[1] - v391[0]) >> 2;
    }

    v23 = v391[0];
    do
    {
      sub_262329E20(v380, (v358 + 192 * *v23));
      sub_2621C8F2C(v350, (v358 + 192 * *v23++ + 136));
      --v22;
    }

    while (v22);
  }

  sub_26232F8A4(@"Table", v380, v350, v360);
  v24 = v360[0];
  v25 = v360[1];
  if (v360[0] != v360[1])
  {
    v26 = v360[0];
    do
    {
      sub_262236B50(&v410, (v358 + 192 * v21[*v26++]));
    }

    while (v26 != v25);
  }

  v380[1] = v380[0];
  v350[1] = v350[0];
  v360[1] = v24;
  v27 = v368[0];
  if (v368[1] != v368[0])
  {
    if (((v368[1] - v368[0]) >> 2) <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v368[1] - v368[0]) >> 2;
    }

    v29 = v368[0];
    do
    {
      sub_262329E20(v380, (v358 + 192 * *v29));
      sub_26220F644(&__p, (v358 + 192 * *v29));
      *&v407 = (*(__p + 3) * *(__p + 4)) * *(__p + 5);
      sub_2621C8F2C(v350, &v407);
      if (*&__p != 0.0)
      {
        v413 = __p;
        operator delete(__p);
      }

      ++v29;
      --v28;
    }

    while (v28);
  }

  sub_26232F8A4(@"Storage", v380, v350, v360);
  v30 = v360[0];
  v31 = v360[1];
  if (v360[0] != v360[1])
  {
    v32 = v360[0];
    do
    {
      sub_262236B50(&v410, (v358 + 192 * v27[*v32++]));
    }

    while (v32 != v31);
  }

  if (v350[0])
  {
    v350[1] = v350[0];
    operator delete(v350[0]);
  }

  if (v380[0])
  {
    operator delete(v380[0]);
  }

  if (v30)
  {
    operator delete(v30);
  }

  if (v27)
  {
    operator delete(v27);
  }

  if (v21)
  {
    operator delete(v21);
  }

  if (v15)
  {
    operator delete(v15);
  }

  sub_2621EADF4(&v358);
  v358 = v410;
  v359 = v411;
  v411 = 0;
  v410 = 0uLL;
  *buf = &v410;
  sub_2621EAAB0(buf);
  v354 = 0;
  v352 = 0u;
  v353 = 0u;
  *v350 = 0u;
  v351 = 0u;
  v33 = *(&v358 + 1);
  v34 = v358;
  v35 = 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6);
  LODWORD(v391[0]) = 0;
  sub_2621CD1D8(buf, v35, v391);
  sub_262330D5C(&v351 + 1, v35, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  LODWORD(v391[0]) = 0;
  sub_2621CD1D8(buf, v35, v391);
  sub_262330D5C(v350, v35, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  LODWORD(v391[0]) = 0;
  sub_2621CD1D8(buf, v35, v391);
  sub_262330D5C(&v353, v35, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v33 != v34)
  {
    v36 = 0;
    if (v35 <= 1)
    {
      v35 = 1;
    }

    do
    {
      v37 = 0;
      for (i = 0; i != v35; ++i)
      {
        memset(buf, 0, sizeof(buf));
        *v416 = 0;
        sub_26220FA14(buf, (v358 + 192 * v36), (v358 + v37));
        *(*(v350[0] + 3 * v36) + 4 * i) = *buf;
        *(*(*(&v351 + 1) + 24 * v36) + 4 * i) = *&buf[4];
        *(*(v353 + 24 * v36) + 4 * i) = *&buf[8];
        v37 += 192;
      }

      ++v36;
    }

    while (v36 != v35);
  }

  v348 = 0;
  v347 = 0;
  v349 = 0;
  LODWORD(v391[0]) = 0;
  sub_2621CD1D8(buf, 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6), v391);
  LODWORD(v368[0]) = 0;
  sub_2621CD1D8(v391, 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6), v368);
  if (*(&v358 + 1) != v358)
  {
    sub_26220F71C(v358);
  }

  LODWORD(v368[0]) = 0;
  if (v391[0])
  {
    v391[1] = v391[0];
    operator delete(v391[0]);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  memset(v346, 0, sizeof(v346));
  sub_26220A888(v346, v350[0], v350[1], 0xAAAAAAAAAAAAAAABLL * ((v350[1] - v350[0]) >> 3));
  memset(v345, 0, sizeof(v345));
  sub_26220A888(v345, *(&v351 + 1), v352, 0xAAAAAAAAAAAAAAABLL * ((v352 - *(&v351 + 1)) >> 3));
  memset(v344, 0, sizeof(v344));
  sub_26220A888(v344, v353, *(&v353 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v353 + 1) - v353) >> 3));
  if (v347 != v348)
  {
    sub_262331248(buf, &v358, v347, v348);
    sub_2621EADF4(&v358);
    v358 = *buf;
    v359 = *v416;
    *v416 = 0;
    memset(buf, 0, sizeof(buf));
    v391[0] = buf;
    sub_2621EAAB0(v391);
    sub_262331354(v346, &v347);
    sub_262331354(v345, &v347);
    sub_262331354(v344, &v347);
  }

  *buf = 0;
  sub_2621DE86C(&v342, 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6), buf);
  *buf = 0;
  sub_2621DE86C(v391, 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6), buf);
  v41 = *(&v358 + 1);
  v42 = v358;
  if (*(&v358 + 1) != v358)
  {
    v43 = 0;
    do
    {
      if ((objc_msgSend_isEqualToString_(*(v42 + 192 * v43 + 128), v39, @"Chair") & 1) == 0 || (v44 = v358, *(&v358 + 1) == v358))
      {
        v48 = -1;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = (v358 + 192 * v43);
        v48 = -1;
        v49 = 0.0;
        do
        {
          isEqualToString = objc_msgSend_isEqualToString_(*(v44 + v45 + 128), v39, @"Table");
          v44 = v358;
          if ((isEqualToString & 1) != 0 || (v52 = objc_msgSend_isEqualToString_(*(v358 + v45 + 128), v51, @"Storage"), v44 = v358, v52) && (v40.f32[0] = *(v358 + v45 + 72) - *(v358 + v45 + 8), v40.f32[0] < 1.3))
          {
            memset(buf, 0, sizeof(buf));
            *v416 = 0;
            sub_26220FA14(buf, v47, (v44 + v45));
            v40.i32[0] = *buf;
            if (*buf > v49)
            {
              v48 = v46;
              v49 = *buf;
            }

            v44 = v358;
          }

          ++v46;
          v45 += 192;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v44) >> 6) > v46);
        if ((v48 & 0x80000000) == 0)
        {
          sub_26220F644(buf, (v44 + 192 * v48));
          sub_26220F644(v368, (v358 + 192 * v43));
          v53 = v368[0];
          if ((*(*buf + 12) * *(*buf + 16)) >= ((*(v368[0] + 3) * *(v368[0] + 4)) + (*(v368[0] + 3) * *(v368[0] + 4))) && vabds_f32(*(v358 + 192 * v43 + 8), *(v358 + 192 * v48 + 8)) <= 0.3)
          {
            ++*(v391[0] + v48);
          }

          else
          {
            v48 = -1;
          }

          v368[1] = v53;
          operator delete(v53);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }
      }

      if (v43 >= (v343 - v342) >> 2)
      {
        sub_262333AEC();
      }

      *(v342 + v43++) = v48;
      v41 = *(&v358 + 1);
      v42 = v358;
    }

    while (v43 < 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6));
  }

  if (v41 != v42)
  {
    v58 = 0;
    v59 = 0;
    do
    {
      if (objc_msgSend_isEqualToString_(*(v42 + v58 + 128), v39, @"Chair", *&v40))
      {
        if (v59 >= (v343 - v342) >> 2)
        {
          sub_262333AEC();
        }

        v60 = *(v342 + v59);
        if ((v60 & 0x80000000) == 0 && *(v391[0] + v60) == 1 && ((objc_msgSend_isEqualToString_(*(v358 + 192 * v60 + 128), v39, @"Cabinet") & 1) != 0 || objc_msgSend_isEqualToString_(*(v358 + 192 * v60 + 128), v39, @"Storage")))
        {
          v40 = vmul_f32(vsub_f32(*(v358 + v58 + 16), *(v358 + v58)), vsub_f32(vmul_f32(vadd_f32(*(v358 + 192 * v60), *(v358 + 192 * v60 + 32)), 0x3F0000003F000000), vmul_f32(vadd_f32(*(v358 + v58), *(v358 + v58 + 32)), 0x3F0000003F000000)));
          v40.f32[0] = vaddv_f32(v40);
          if (v40.f32[0] < 0.0)
          {
            if (v59 >= (v343 - v342) >> 2)
            {
              sub_262333AEC();
            }

            *(v342 + v59) = -1;
          }
        }
      }

      ++v59;
      v42 = v358;
      v58 += 192;
    }

    while (v59 < 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6));
  }

  if (v391[0])
  {
    v391[1] = v391[0];
    operator delete(v391[0]);
  }

  v61 = v342;
  v62 = v343;
  v341[1] = 0;
  v341[0] = 0;
  v340 = v341;
  if (v342 == v343)
  {
    v338 = 0;
    v337 = 0;
    v339 = 0;
  }

  else
  {
    do
    {
      sub_2621CB3E4(&v340, v341, *v61, v61);
      ++v61;
    }

    while (v61 != v62);
    v63 = v340;
    v338 = 0;
    v337 = 0;
    v339 = 0;
    if (v340 != v341)
    {
      do
      {
        if ((*(v63 + 7) & 0x80000000) == 0)
        {
          sub_2621C7CD0(&v337, v63 + 7);
        }

        v64 = v63[1];
        if (v64)
        {
          do
          {
            v65 = v64;
            v64 = *v64;
          }

          while (v64);
        }

        else
        {
          do
          {
            v65 = v63[2];
            _ZF = *v65 == v63;
            v63 = v65;
          }

          while (!_ZF);
        }

        v63 = v65;
      }

      while (v65 != v341);
    }
  }

  v298 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (*(&v358 + 1) != v358)
  {
    v66 = 0;
    v67 = 0;
    do
    {
      v68 = *(v342 + v67);
      if ((v68 & 0x80000000) == 0)
      {
        v69 = 0;
        v70 = (v358 + 192 * v67);
        v71 = *v70;
        v72 = v70[1];
        v73 = v70[2];
        v417 = v70[3];
        *&v416[16] = v73;
        *v416 = v72;
        *buf = v71;
        v74 = v70[4];
        v75 = v70[5];
        v76 = v70[6];
        v421 = v70[7];
        v420 = v76;
        v419 = v75;
        v418 = v74;
        v77 = v358 + v66;
        v78 = 0;
        v79 = 0.0;
        do
        {
          v78 = vadd_f32(v78, *(v77 + v69));
          v79 = v79 + COERCE_FLOAT(*(v77 + v69 + 8));
          v69 += 16;
        }

        while (v69 != 128);
        v80 = (v358 + 192 * v68);
        v307 = v70[1];
        *objb = *v70;
        *v312 = v80[1];
        *v303 = v80[2];
        v305 = *v80;
        LODWORD(v391[0]) = 0;
        sub_2621CD1D8(v360, 2uLL, v391);
        v81 = v360[0];
        v82 = vsub_f32(*&v307, objb[0]);
        v83 = vcvtq_f64_f32(v82);
        v83.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v83, v83)));
        *v83.f64 = v83.f64[0];
        *v360[0] = vdiv_f32(v82, vdup_lane_s32(*&v83.f64[0], 0));
        v414 = 0;
        *&__p = 0.0;
        v413 = 0;
        sub_2621C8E70(&__p, v81, v360[1], (v360[1] - v81) >> 2);
        LODWORD(v391[0]) = 0;
        sub_2621CD1D8(v380, 2uLL, v391);
        LODWORD(v368[0]) = 0;
        sub_2621CD1D8(v391, 2uLL, v368);
        v84 = vsub_f32(v312[0], *&v305);
        v85 = vcvtq_f64_f32(v84);
        v85.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v85, v85)));
        *v85.f64 = v85.f64[0];
        *v391[0] = vdiv_f32(v84, vdup_lane_s32(*&v85.f64[0], 0));
        LODWORD(v407) = 0;
        sub_2621CD1D8(v368, 2uLL, &v407);
        v86 = vsub_f32(v303[0], v312[0]);
        v87 = vcvtq_f64_f32(v86);
        v87.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v87, v87)));
        *v87.f64 = v87.f64[0];
        v88 = v368[0];
        v89 = vdiv_f32(v86, vdup_lane_s32(*&v87.f64[0], 0));
        *v368[0] = v89;
        v90 = __p;
        *&v87.f64[0] = vdup_lane_s32(v89, 0);
        v89.i32[0] = *(v391[0] + 1);
        LODWORD(v87.f64[0]) = *v391[0];
        v91 = vabs_f32(vmla_n_f32(vmul_n_f32(v89, *(__p + 1)), *&v87.f64[0], *__p));
        v92 = vcgt_f32(v91, vdup_lane_s32(v91, 1)).u8[0];
        if (v92)
        {
          v93 = v391[0];
        }

        else
        {
          v93 = v88;
        }

        v94 = &v391[1];
        if ((v92 & 1) == 0)
        {
          v94 = &v368[1];
        }

        sub_2621CA9DC(v380, v93, *v94, (*v94 - v93) >> 2);
        if ((vmuls_lane_f32(v90[1], *v380[0], 1) + (*v90 * COERCE_FLOAT(*v380[0]))) < 0.0)
        {
          *v380[0] = vneg_f32(*v380[0]);
        }

        if (v368[0])
        {
          v368[1] = v368[0];
          operator delete(v368[0]);
        }

        if (v391[0])
        {
          v391[1] = v391[0];
          operator delete(v391[0]);
        }

        operator delete(v90);
        v96 = *v360[0];
        v95 = *(v360[0] + 1);
        v98 = *v380[0];
        v97 = *(v380[0] + 1);
        v380[1] = v380[0];
        operator delete(v380[0]);
        if (v360[0])
        {
          v360[1] = v360[0];
          operator delete(v360[0]);
        }

        v99 = fmin(fmax(((v95 * v97) + (v96 * v98)), -1.0), 1.0);
        v100 = acosf(v99);
        if (((v96 * v97) - (v95 * v98)) < 0.0)
        {
          v100 = -v100;
        }

        sub_262331098(v368, v100);
      }

      ++v67;
      v66 += 192;
    }

    while (v67 < 0xAAAAAAAAAAAAAAABLL * ((*(&v358 + 1) - v358) >> 6));
  }

  v335 = 0;
  v334 = 0;
  v336 = 0;
  v304 = v337;
  if (v338 == v337)
  {
    v235 = 0;
    v234 = 0;
    goto LABEL_291;
  }

  v101 = 0;
  v102 = v337;
  do
  {
    memset(v333, 0, sizeof(v333));
    memset(v332, 0, sizeof(v332));
    v103 = v102;
    sub_262331FF8(&v358, &v342, v102[v101], v345, &v334, v333, 1);
    v104 = v103[v101];
    *buf = 0;
    *&buf[8] = 0;
    v361.i64[0] = 0;
    v360[0] = 0;
    v360[1] = 0;
    sub_2621DC430(v360, buf, &buf[12], 3uLL);
    v301 = v101;
    v105 = *(&v358 + 1);
    v106 = v358;
    if (*(&v358 + 1) != v358)
    {
      v107 = 0;
      v108 = 0;
      v109 = v334;
      v110 = v335;
      v111 = 0.0;
      v112 = 0.0;
      v113 = 0.0;
      v114 = v360[0];
      v115 = 0.0;
      v116 = 0.0;
      v117 = 0.0;
      do
      {
        if (*(v342 + v107) == v104)
        {
          v118 = v109;
          if (v109 != v110)
          {
            v118 = v109;
            while (v107 != *v118)
            {
              if (++v118 == v110)
              {
                goto LABEL_171;
              }
            }
          }

          if (v118 == v110)
          {
LABEL_171:
            sub_262331500(buf, (v106 + 192 * v107));
            if (v114)
            {
              v360[1] = v114;
              operator delete(v114);
            }

            v114 = *buf;
            v360[0] = *buf;
            v361.i64[0] = *v416;
            v119 = *(*buf + 4);
            v113 = v113 + **buf;
            v112 = v112 + v119;
            v120 = *(*buf + 8);
            v111 = v111 + v120;
            if (**buf > v117)
            {
              v117 = **buf;
            }

            if (v119 > v116)
            {
              v116 = *(*buf + 4);
            }

            if (v120 > v115)
            {
              v115 = *(*buf + 8);
            }

            v360[1] = *buf;
            ++v108;
            v105 = *(&v358 + 1);
            v106 = v358;
          }
        }

        ++v107;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v105 - v106) >> 6) > v107);
    }

    if (v105 == v106)
    {
      v105 = v106;
    }

    else
    {
      v121 = 0;
      v122 = 0;
      do
      {
        if (*(v342 + v122) == v104)
        {
          v123 = v334;
          if (v334 != v335)
          {
            v123 = v334;
            while (v122 != *v123)
            {
              if (++v123 == v335)
              {
                goto LABEL_190;
              }
            }
          }

          if (v123 == v335)
          {
LABEL_190:
            v124 = 0;
            v125 = (v106 + 192 * v122);
            v126 = v106 + v121;
            v127 = 0;
            v128 = 0.0;
            do
            {
              v127 = vadd_f32(v127, *(v126 + v124));
              v128 = v128 + COERCE_FLOAT(*(v126 + v124 + 8));
              v124 += 16;
            }

            while (v124 != 128);
            v129 = v125[2];
            v130 = v125[3];
            v131 = *v125;
            v392 = v125[1];
            *v391 = v131;
            v394 = v130;
            v132 = v125[6];
            v133 = v125[7];
            v134 = v125[5];
            v395 = v125[4];
            v393 = v129;
            v398 = v133;
            v397 = v132;
            v396 = v134;
            __asm { FMOV            V13.2S, #-1.0 }

            v380[0] = _D13;
            LODWORD(v380[1]) = -1082130432;
            *v416 = 0;
            memset(buf, 0, sizeof(buf));
            sub_2621DC430(buf, v380, &v380[1] + 1, 3uLL);
            __asm { FMOV            V12.2S, #1.0 }

            *&__p = -*&_D12;
            LODWORD(v413) = -1082130432;
            memset(&v416[8], 0, 24);
            sub_2621DC430(&v416[8], &__p, &v413 + 1, 3uLL);
            *&v410 = _D12;
            DWORD2(v410) = -1082130432;
            *&v418 = 0;
            v417 = 0uLL;
            sub_2621DC430(&v417, &v410, &v410 + 3, 3uLL);
            v407 = -*&_D13;
            v408 = -1082130432;
            v419 = 0uLL;
            *(&v418 + 1) = 0;
            sub_2621DC430(&v418 + 1, &v407, v409, 3uLL);
            v389 = _D13;
            LODWORD(v390) = 1065353216;
            *&v421 = 0;
            v420 = 0uLL;
            sub_2621DC430(&v420, &v389, &v390 + 1, 3uLL);
            *&v387 = -*&_D12;
            LODWORD(v388) = 1065353216;
            v422 = 0;
            v423 = 0;
            *(&v421 + 1) = 0;
            sub_2621DC430(&v421 + 1, &v387, &v388 + 1, 3uLL);
            v385[0] = _D12;
            LODWORD(v385[1]) = 1065353216;
            v425 = 0;
            v426 = 0;
            v424 = 0;
            sub_2621DC430(&v424, v385, &v385[1] + 1, 3uLL);
            v382 = -*&_D13;
            v383 = 1065353216;
            v428 = 0;
            v429 = 0;
            v427 = 0;
            sub_2621DC430(&v427, &v382, v384, 3uLL);
            v368[1] = 0;
            v368[0] = 0;
            *&v369 = 0;
            sub_2622180B8(v368, buf, &v430, 8uLL);
          }
        }

        ++v122;
        v121 += 192;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v105 - v106) >> 6) > v122);
    }

    if (v360[0])
    {
      operator delete(v360[0]);
      v105 = *(&v358 + 1);
      v106 = v358;
    }

    v304 = v337;
    v140 = v301;
    v141 = v337[v301];
    if (v105 != v106)
    {
      v142 = 0;
      v143 = 0;
      v144 = v106 + 8;
      v145 = 0.0;
      v146 = 10000.0;
      do
      {
        if (*(v342 + v142) == v141)
        {
          v147 = v334;
          if (v334 != v335)
          {
            v147 = v334;
            while (v142 != *v147)
            {
              if (++v147 == v335)
              {
                goto LABEL_207;
              }
            }
          }

          if (v147 == v335)
          {
LABEL_207:
            v148 = 0;
            v149 = 0.0;
            do
            {
              v149 = v149 + *(v144 + v148);
              v148 += 16;
            }

            while (v148 != 128);
            v150 = v149 * 0.125;
            ++v143;
            v145 = v145 + v150;
            if (v150 < v146)
            {
              v146 = v150;
            }
          }
        }

        ++v142;
        v144 += 192;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v105 - v106) >> 6) > v142);
      if (v105 != v106)
      {
        v151 = 0;
        v152 = ((v145 / v143) + v146) * 0.5;
        v153 = v334;
        v154 = v335;
        v155 = 8;
        do
        {
          if (*(v342 + v151) == v141)
          {
            v156 = v153;
            if (v153 != v154)
            {
              v156 = v153;
              while (v151 != *v156)
              {
                if (++v156 == v154)
                {
                  goto LABEL_221;
                }
              }
            }

            if (v156 == v154)
            {
LABEL_221:
              v157 = 0;
              v158 = v106 + v155;
              v159 = 0.0;
              do
              {
                v159 = v159 + *(v158 + v157);
                v157 += 16;
              }

              while (v157 != 128);
              v160 = 0;
              v161 = (v159 * 0.125) - v152;
              do
              {
                *(v358 + v155 + v160) = *(v358 + v155 + v160) - v161;
                v160 += 16;
              }

              while (v160 != 128);
              v105 = *(&v358 + 1);
              v106 = v358;
            }
          }

          ++v151;
          v155 += 192;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v105 - v106) >> 6) > v151);
        v141 = v304[v301];
      }
    }

    sub_262331FF8(&v358, &v342, v141, v345, &v334, v333, 2);
    if ((*a3 - 1) <= 1)
    {
      v163 = v304[v301];
      v164 = (v358 + 192 * v163);
      v165 = v164[2];
      v167 = *v164;
      v166 = v164[1];
      v417 = v164[3];
      *&v416[16] = v165;
      *buf = v167;
      *v416 = v166;
      v168 = v164[6];
      v170 = v164[4];
      v169 = v164[5];
      v421 = v164[7];
      v420 = v168;
      v418 = v170;
      v419 = v169;
      v422 = *(v164 + 16);
      LODWORD(v423) = *(v164 + 34);
      v424 = *(v164 + 18);
      v426 = 0;
      v427 = 0;
      v425 = 0;
      sub_2621C8E70(&v425, *(v164 + 19), *(v164 + 20), (*(v164 + 20) - *(v164 + 19)) >> 2);
      v171 = *(v164 + 22);
      v428 = v171;
      LOWORD(v429) = *(v164 + 92);
      v372 = v418;
      v373 = v419;
      v374 = v420;
      v375 = v421;
      *v368 = *buf;
      v369 = *v416;
      v370 = *&v416[16];
      v371 = v417;
      v413 = 0;
      *&__p = 0.0;
      v414 = 0;
      LODWORD(v391[0]) = 0;
      v172 = v343;
      v173 = v342;
      if (v343 == v342)
      {
        v176 = 0;
        v175 = 0;
        v177 = 0;
        v178 = 0;
      }

      else
      {
        v174 = 0;
        do
        {
          if (v173[v174] == v163)
          {
            sub_2621C7CD0(&__p, v391);
            v172 = v343;
            v173 = v342;
          }

          LODWORD(v391[0]) = ++v174;
        }

        while (v174 < v172 - v173);
        v175 = v413;
        v176 = __p;
        v177 = __p;
        v178 = v413;
      }

      LODWORD(v360[0]) = 0;
      sub_2621CD1D8(v391, 4uLL, v360);
      sub_2621E1B50(&v410, (v178 - v177) >> 2, v391);
      if (v391[0])
      {
        v391[1] = v391[0];
        operator delete(v391[0]);
      }

      LODWORD(v360[0]) = 0;
      sub_2621CD1D8(v391, 4uLL, v360);
      v302 = v175 - v176;
      sub_2621E1B50(&v407, v302, v391);
      v296 = v171;
      if (v391[0])
      {
        v391[1] = v391[0];
        operator delete(v391[0]);
      }

      v297 = v175;
      if (v175 != v176)
      {
        v179 = 0;
        v180 = v302;
        if (v302 <= 1)
        {
          v180 = 1;
        }

        v306 = v180;
        do
        {
          v181 = v176;
          v182 = v358 + 192 * v176[v179];
          v395 = *(v182 + 64);
          v396 = *(v182 + 80);
          v397 = *(v182 + 96);
          v398 = *(v182 + 112);
          *v391 = *v182;
          v392 = *(v182 + 16);
          v393 = *(v182 + 32);
          v394 = *(v182 + 48);
          v399 = *(v182 + 128);
          v400 = *(v182 + 136);
          v401 = *(v182 + 144);
          v403 = 0;
          v404 = 0;
          v402 = 0;
          sub_2621C8E70(&v402, *(v182 + 152), *(v182 + 160), (*(v182 + 160) - *(v182 + 152)) >> 2);
          v183 = *(v182 + 176);
          v184 = 0;
          v405 = v183;
          v406 = *(v182 + 184);
          v185 = *(v410 + 24 * v179);
          v186 = *(*&v407 + 24 * v179);
          v187 = vsubq_f32(v392, *v391);
          v188 = vcvtq_f64_f32(*v187.f32);
          v189 = vmulq_f64(v188, v188);
          v190 = sqrt(v187.f32[2] * v187.f32[2] + vaddvq_f64(v189));
          *&v190 = v190;
          *&v189.f64[0] = vdiv_f32(*v187.f32, vdup_lane_s32(*&v190, 0));
          v191 = v189;
          v191.f32[2] = v187.f32[2] / *&v190;
          v308 = v191;
          obj = LODWORD(v189.f64[0]);
          do
          {
            v192 = 0;
            v187.i64[0] = 0;
            do
            {
              *v187.f32 = vadd_f32(*v187.f32, v391[v192]);
              v192 += 2;
            }

            while (v192 != 16);
            v193 = v184 + 1;
            *v187.f32 = vmul_f32(*v187.f32, 0x3E0000003E000000);
            v194 = vsubq_f32(*&v368[2 * (v184 ^ 2)], *&v368[2 * ((v184 + 1) & 3)]);
            v195 = vcvtq_f64_f32(*v194.f32);
            v196 = vmulq_f64(v195, v195);
            v197 = sqrt(v194.f32[2] * v194.f32[2] + vaddvq_f64(v196));
            *&v197 = v197;
            *&v196.f64[0] = vdiv_f32(*v194.f32, vdup_lane_s32(*&v197, 0));
            v315 = HIDWORD(v196.f64[0]);
            v198 = v196;
            v198.f32[2] = v194.f32[2] / *&v197;
            v199 = vsubq_f32(v187, *&v368[2 * v184]).u64[0];
            *(v185 + 4 * v184) = fabsf((vmuls_lane_f32(*(&v199 + 1), *&v196.f64[0], 1) + (*&v199 * *v196.f64)) + 0.0);
            v200 = vmulq_f32(v198, v308);
            v187.f32[0] = acos(fmin(fmax((v200.f32[2] + vaddv_f32(*v200.f32)), -1.0), 1.0));
            _S2 = obj;
            _V3.S[1] = v315;
            __asm { FMLA            S1, S2, V3.S[1] }

            if (_S1 < 0.0)
            {
              v187.f32[0] = -v187.f32[0];
            }

            *(v186 + 4 * v184++) = v187.i32[0];
          }

          while (v193 != 4);

          v176 = v181;
          if (v402)
          {
            operator delete(v402);
          }

          ++v179;
        }

        while (v179 != v306);
      }

      LODWORD(v391[0]) = 0;
      v204 = v302;
      sub_2621DE86C(&v389, v302, v391);
      LODWORD(v391[0]) = 0;
      sub_2621CD1D8(&v387, v302, v391);
      if (v297 != v176)
      {
        v205 = 0;
        v206 = v410;
        v207 = v389;
        v208 = v407;
        v209 = v387;
        if (v302 <= 1)
        {
          v204 = 1;
        }

        while (1)
        {
          v210 = (v206 + 24 * v205);
          v211 = *v210;
          v212 = v210[1];
          v213 = v211 + 1;
          _ZF = v211 == v212 || v213 == v212;
          v215 = v211;
          if (!_ZF)
          {
            v216 = *v211;
            v215 = v211;
            v217 = v211 + 1;
            do
            {
              v218 = *v217++;
              v219 = v218;
              if (v218 < v216)
              {
                v216 = v219;
                v215 = v213;
              }

              v213 = v217;
            }

            while (v217 != v212);
          }

          v220 = v215 - v211;
          v207[v205] = v220 >> 2;
          v209[v205] = *(*(*&v208 + 24 * v205) + ((v220 << 30) >> 30));
          if (++v205 == v204)
          {
            v391[0] = 0;
            LODWORD(v391[1]) = 0;
            v386 = 0;
            v385[0] = 0;
            v385[1] = 0;
            sub_2621DC430(v385, v391, &v391[1] + 1, 3uLL);
            sub_262331500(v391, (v358 + 192 * *v176));
            if (v385[0])
            {
              operator delete(v385[0]);
            }

            *v385 = *v391;
            sub_2621C8F2C(v332, v387);
            v221 = (v358 + 192 * *v176);
            v222 = v221[2];
            v224 = *v221;
            v223 = v221[1];
            v394 = v221[3];
            v393 = v222;
            *v391 = v224;
            v392 = v223;
            v225 = v221[6];
            v227 = v221[4];
            v226 = v221[5];
            v398 = v221[7];
            v397 = v225;
            v395 = v227;
            v396 = v226;
            v399 = *(v221 + 16);
            v400 = *(v221 + 34);
            v401 = *(v221 + 18);
            v403 = 0;
            v404 = 0;
            v402 = 0;
            sub_2621C8E70(&v402, *(v221 + 19), *(v221 + 20), (*(v221 + 20) - *(v221 + 19)) >> 2);
            v228 = *(v221 + 22);
            v229 = 0;
            v405 = v228;
            v230 = *(v221 + 92);
            v364 = v395;
            v365 = v396;
            v366 = v397;
            v367 = v398;
            *v360 = *v391;
            v361 = v392;
            v362 = v393;
            v363 = v394;
            v231 = 0;
            v232 = 0.0;
            v406 = v230;
            do
            {
              v231 = vadd_f32(v231, v360[v229]);
              v232 = v232 + COERCE_FLOAT(v360[v229 + 1]);
              v229 += 2;
            }

            while (v229 != 16);
            sub_262331098(&v382, *v387);
          }
        }
      }

      if (*&v387 != 0.0)
      {
        v388 = v387;
        operator delete(v387);
      }

      if (v389)
      {
        v390 = v389;
        operator delete(v389);
      }

      v391[0] = &v407;
      sub_2621E1D40(v391);
      v391[0] = &v410;
      sub_2621E1D40(v391);
      if (v176)
      {
        operator delete(v176);
      }

      if (v425)
      {
        v426 = v425;
        operator delete(v425);
      }

      v140 = v301;
      sub_262331FF8(&v358, &v342, v304[v301], v345, &v334, v333, 3);
      if (*a3 == 1)
      {
        v233 = 4;
      }

      else
      {
        if (*a3 != 2)
        {
          goto LABEL_283;
        }

        v233 = 5;
      }

      sub_262331FF8(&v358, &v342, v304[v301], v345, &v334, v333, v233);
    }

LABEL_283:
    if (v332[0])
    {
      operator delete(v332[0]);
    }

    v101 = v140 + 1;
    v102 = v304;
  }

  while (v101 < (v338 - v304) >> 2);
  v234 = v334;
  v235 = v335;
  if (v334 != v335)
  {
    v236 = v334;
    do
    {
      objc_msgSend_addObject_(0, v162, *(v358 + 192 * *v236++ + 144));
    }

    while (v236 != v235);
  }

LABEL_291:
  sub_262331248(buf, &v358, v234, v235);
  sub_2621EADF4(&v358);
  v358 = *buf;
  v359 = *v416;
  *v416 = 0;
  memset(buf, 0, sizeof(buf));
  v391[0] = buf;
  sub_2621EAAB0(v391);
  for (j = *a2; j != a2[1]; j += 192)
  {
    v240 = *(j + 128);
    if ((objc_msgSend_isEqualToString_(v240, v241, @"Chair") & 1) == 0 && (objc_msgSend_isEqualToString_(v240, v242, @"Table") & 1) == 0 && (objc_msgSend_isEqualToString_(v240, v243, @"Storage") & 1) == 0)
    {
      sub_262236B50(&v358, j);
    }
  }

  v330 = 0u;
  v331 = 0u;
  v328 = 0u;
  v329 = 0u;
  v244 = objc_msgSend_allValues(v298, v237, v238);
  obja = v244;
  v246 = objc_msgSend_countByEnumeratingWithState_objects_count_(v244, v245, &v328, v379, 16);
  if (v246)
  {
    v247 = 0;
    v313 = *v329;
    do
    {
      for (k = 0; k != v246; ++k)
      {
        if (*v329 != v313)
        {
          objc_enumerationMutation(obja);
        }

        v249 = *(*(&v328 + 1) + 8 * k);
        v324 = 0u;
        v325 = 0u;
        v326 = 0u;
        v327 = 0u;
        v250 = v249;
        v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v251, &v324, v378, 16);
        if (v252)
        {
          v253 = 0;
          v254 = *v325;
          do
          {
            for (m = 0; m != v252; ++m)
            {
              if (*v325 != v254)
              {
                objc_enumerationMutation(v250);
              }

              v256 = *(*(&v324 + 1) + 8 * m);
              if ((objc_msgSend_containsObject_(0, v257, v256) & 1) == 0)
              {
                v259 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v258, v247);
                objc_msgSend_setObject_forKeyedSubscript_(0, v260, v259, v256);

                v253 = 1;
              }
            }

            v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v261, &v324, v378, 16);
          }

          while (v252);
          v262 = v253 & 1;
        }

        else
        {
          v262 = 0;
        }

        v247 = (v247 + v262);
      }

      v244 = obja;
      v246 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v263, &v328, v379, 16);
    }

    while (v246);
  }

  v265 = *(&v358 + 1);
  for (n = v358; n != v265; n += 192)
  {
    sub_262236B50(&v355, n);
    if (objc_msgSend_isEqualToString_(*(n + 128), v266, @"Chair"))
    {
      v268 = objc_msgSend_objectForKeyedSubscript_(0, v267, *(n + 144));
      v269 = v268 == 0;

      if (!v269)
      {
        objc_storeStrong(v356 - 2, @"ChairGroup");
        v271 = objc_msgSend_objectForKeyedSubscript_(0, v270, *(n + 144));
        v274 = objc_msgSend_intValue(v271, v272, v273);
        *(v356 - 4) = v274;
      }
    }
  }

  v275 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v314 = v298;
  v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v314, v276, &v320, v377, 16);
  if (v278)
  {
    v279 = *v321;
    do
    {
      for (ii = 0; ii != v278; ++ii)
      {
        if (*v321 != v279)
        {
          objc_enumerationMutation(v314);
        }

        v281 = *(*(&v320 + 1) + 8 * ii);
        v282 = objc_msgSend_objectForKey_(v314, v277, v281);
        v318 = 0u;
        v319 = 0u;
        v316 = 0u;
        v317 = 0u;
        v283 = v282;
        v285 = objc_msgSend_countByEnumeratingWithState_objects_count_(v283, v284, &v316, v376, 16);
        if (v285)
        {
          v286 = *v317;
          do
          {
            for (jj = 0; jj != v285; ++jj)
            {
              if (*v317 != v286)
              {
                objc_enumerationMutation(v283);
              }

              v288 = *(*(&v316 + 1) + 8 * jj);
              if ((objc_msgSend_containsObject_(0, v289, v288) & 1) == 0)
              {
                objc_msgSend_setObject_forKeyedSubscript_(v275, v290, v281, v288);
              }
            }

            v285 = objc_msgSend_countByEnumeratingWithState_objects_count_(v283, v291, &v316, v376, 16);
          }

          while (v285);
        }
      }

      v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v314, v277, &v320, v377, 16);
    }

    while (v278);
  }

  memset(buf, 0, sizeof(buf));
  *v416 = 0;
  sub_2622395E8(buf, v355, v356, 0xAAAAAAAAAAAAAAABLL * ((v356 - v355) >> 6));
  v292 = v275;
  *&v416[8] = v292;
  v293 = v314;
  *&v416[16] = v293;
  *a1 = *buf;
  *(a1 + 16) = *v416;
  memset(buf, 0, sizeof(buf));
  v294 = *&v416[8];
  memset(v416, 0, 24);
  *(a1 + 24) = v294;
  v391[0] = buf;
  sub_2621EAAB0(v391);

  if (v334)
  {
    v335 = v334;
    operator delete(v334);
  }

  if (v304)
  {
    operator delete(v304);
  }

  sub_2621C6C04(v341[0]);
  if (v342)
  {
    v343 = v342;
    operator delete(v342);
  }

  *buf = v344;
  sub_2621E1D40(buf);
  *buf = v345;
  sub_2621E1D40(buf);
  *buf = v346;
  sub_2621E1D40(buf);
  if (v347)
  {
    operator delete(v347);
  }

  *buf = &v353;
  sub_2621E1D40(buf);
  *buf = &v351 + 8;
  sub_2621E1D40(buf);
  *buf = v350;
  sub_2621E1D40(buf);
LABEL_110:
  *buf = &v355;
  sub_2621EAAB0(buf);
  *buf = &v358;
  sub_2621EAAB0(buf);
}

void sub_262336498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (STACK[0x210])
  {
    operator delete(STACK[0x210]);
  }

  if (STACK[0x228])
  {
    operator delete(STACK[0x228]);
  }

  sub_2621C6C04(STACK[0x248]);
  v17 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v17;
    operator delete(v17);
  }

  STACK[0x820] = &STACK[0x270];
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = &STACK[0x288];
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = &STACK[0x2A0];
  sub_2621E1D40(&STACK[0x820]);
  if (STACK[0x2B8])
  {
    operator delete(STACK[0x2B8]);
  }

  STACK[0x820] = a10;
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = a11;
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = &STACK[0x2D0];
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x2D0] = &STACK[0x318];
  sub_2621EAAB0(&STACK[0x2D0]);
  STACK[0x2D0] = &STACK[0x330];
  sub_2621EAAB0(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

uint64_t *sub_262336AC0(uint64_t **a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 16);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_262336BAC(uint64_t **a1, unsigned int a2, unsigned int a3)
{
  v22 = a2;
  v21 = a3;
  v4 = &v22;
  if (a2 < a3)
  {
    v4 = &v21;
  }

  v23 = v4;
  v5 = sub_262336AC0(a1, *v4, &v23) + 5;
  do
  {
    v6 = v5;
    v5 = v5[1];
  }

  while (v5);
  v7 = *v6;
  if (v21 >= v22)
  {
    v8 = v22;
  }

  else
  {
    v8 = v21;
  }

  v9 = &v22;
  if (v21 < v22)
  {
    v9 = &v21;
  }

  v23 = v9;
  result = sub_262336AC0(a1, v8, &v23);
  v11 = result + 5;
  do
  {
    v12 = v11;
    v11 = v11[1];
  }

  while (v11);
  if (v7 != *v12)
  {
    if (v21 >= v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21;
    }

    v14 = &v22;
    if (v21 < v22)
    {
      v14 = &v21;
    }

    v23 = v14;
    v15 = sub_262336AC0(a1, v13, &v23) + 5;
    do
    {
      v16 = v15;
      v15 = v15[1];
    }

    while (v15);
    if (v22 <= v21)
    {
      v17 = v21;
    }

    else
    {
      v17 = v22;
    }

    v18 = &v22;
    if (v22 < v21)
    {
      v18 = &v21;
    }

    v23 = v18;
    v19 = sub_262336AC0(a1, v17, &v23) + 5;
    do
    {
      v20 = v19;
      v19 = v19[1];
    }

    while (v19);
    v23 = v20;
    result = sub_262336AC0(a1, *v20, &v23);
    result[6] = v16;
  }

  return result;
}

uint64_t *sub_262336CE8(uint64_t **a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 16);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_262336DD0(uint64_t **a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 16);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_262336EC0(uint64_t a1)
{
  free(*(a1 + 32));
  sub_2621C6C04(*(a1 + 88));
  sub_2621C6C04(*(a1 + 64));
  return a1;
}

void sub_262336EFC(uint64_t **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v32 = 0;
  }

  else
  {
    v36 = 1;
    do
    {
      if (*(v3 + 2) == -1)
      {
        v4 = *v3;
        sub_262337200(&v39, a1, *v3);
        v6 = v39;
        v5 = v40;
        v34 = v40 - v39;
        v35 = v3;
        v33 = *(a1 + 7);
        if (v34 >= v33)
        {
          if (v39 == v40)
          {
            v15 = 0;
          }

          else
          {
            v7 = 0;
            v8 = 0;
            v9 = *a1;
            v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
            v11 = v39;
            do
            {
              v12 = *v11;
              if (v10 <= v12 || (*&v9[12 * v12 + 8] = v36, v13 = *v11, v10 <= v13))
              {
                sub_262333AEC();
              }

              v14 = &v9[12 * v13];
              if (*v14 == *&v4 && v14[1] == *(&v4 + 1))
              {
                v8 = v7;
              }

              ++v7;
              ++v11;
            }

            while (v11 != v5);
            v15 = 4 * v8;
          }

          v16 = &v6[v15];
          v17 = &v6[v15 + 4];
          v18 = v5 - v17;
          if (v5 != v17)
          {
            memmove(&v6[v15], v17, v5 - v17);
          }

          v40 = (v16 + v18);
          if ((v16 + v18) != v6)
          {
            v19 = 0;
            v20 = (v16 + v18 - v6) >> 2;
            while (1)
            {
              v21 = *&v6[4 * v19];
              if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) <= v21)
              {
                sub_262333AEC();
              }

              v22 = *a1 + 12 * v21;
              v16 = v16 & 0xFFFFFFFF00000000 | *(v22 + 2);
              sub_262337200(&v37, a1, *v22);
              v23 = v37;
              v24 = v38;
              if (*(a1 + 7) <= (v38 - v37) && v37 != v38)
              {
                break;
              }

LABEL_32:
              if (v23)
              {
                operator delete(v23);
              }

              if (++v19 >= v20)
              {
                goto LABEL_35;
              }
            }

            v27 = *a1;
            v26 = a1[1];
            v28 = v37;
            while (2)
            {
              v29 = *v28;
              if (0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 2) <= v29)
              {
LABEL_44:
                sub_262333AEC();
              }

              v30 = *&v27[12 * v29 + 8];
              if (v30 == -2)
              {
LABEL_29:
                if (0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 2) <= v29)
                {
                  goto LABEL_44;
                }

                *&v27[12 * v29 + 8] = v36;
              }

              else if (v30 == -1)
              {
                sub_2621C7CD0(&v39, v28);
                v6 = v39;
                v20 = v40 - v39;
                v29 = *v28;
                v27 = *a1;
                v26 = a1[1];
                goto LABEL_29;
              }

              if (++v28 == v24)
              {
                goto LABEL_32;
              }

              continue;
            }
          }
        }

LABEL_35:
        if (v6)
        {
          operator delete(v6);
        }

        v31 = v36;
        if (v34 >= v33)
        {
          v31 = v36 + 1;
        }

        v36 = v31;
        v2 = a1[1];
        v3 = v35;
      }

      v3 += 12;
    }

    while (v3 != v2);
    v32 = v36 - 1;
  }

  *(a1 + 9) = v32;
}

void sub_2623371C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262337200(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v4 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v8 = 1;
    do
    {
      v9 = vcvtq_f64_f32(vsub_f32(a3, *v4));
      if (sqrt(vaddvq_f64(vmulq_f64(v9, v9))) <= *(a2 + 32))
      {
        sub_2621C7CD0(a1, &v10);
        v3 = *(a2 + 8);
      }

      v10 = v8;
      v4 = (v4 + 12);
      ++v8;
    }

    while (v4 != v3);
  }
}

void sub_2623372A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262337358(int32x2_t *a1, void *a2, void *a3)
{
  v441 = *MEMORY[0x277D85DE8];
  v353 = a2;
  v5 = a3;
  v8 = v5;
  v350 = a1;
  if (a1)
  {
    v9 = objc_msgSend_walls(v5, v6, v7);
    v369 = v8;
    v12 = objc_msgSend_count(v9, v10, v11);
    v15 = objc_msgSend_curvedWalls(v8, v13, v14);
    v18 = objc_msgSend_count(v15, v16, v17) + v12;

    if (v18)
    {
      memset(v427, 0, sizeof(v427));
      v423 = 0u;
      v424 = 0u;
      v425 = 0u;
      v426 = 0u;
      v21 = objc_msgSend_walls(v8, v19, v20);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v423, v440, 16);
      if (v25)
      {
        v26 = *v424;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v424 != v26)
            {
              objc_enumerationMutation(v21);
            }

            v28 = *(*(&v423 + 1) + 8 * i);
            objc_msgSend_quad(v28, v23, v24);
            src[0] = v29;
            sub_2621CBA84(v427, src);
            objc_msgSend_quad(v28, v30, v31);
            src[0] = v32;
            sub_2621CBA84(v427, src);
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v423, v440, 16);
        }

        while (v25);
      }

      v422 = 0u;
      v421 = 0u;
      v420 = 0u;
      v419 = 0u;
      v35 = objc_msgSend_curvedWalls(v8, v33, v34);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v419, v439, 16);
      if (v39)
      {
        v40 = *v420;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v420 != v40)
            {
              objc_enumerationMutation(v35);
            }

            v42 = *(*(&v419 + 1) + 8 * j);
            objc_msgSend_quad(v42, v37, v38);
            src[0] = v43;
            sub_2621CBA84(v427, src);
            objc_msgSend_quad(v42, v44, v45);
            src[0] = v46;
            sub_2621CBA84(v427, src);
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v419, v439, 16);
        }

        while (v39);
      }

      sub_262298008(v418, v350 + 1, v427, v18, v47, v48, v49);
      v51 = v418[0];
      if ((v418[1] - v418[0]) == 32)
      {
        memset(v417, 0, sizeof(v417));
        v416 = 0uLL;
        v415 = 0;
        if (v8)
        {
          LODWORD(v50) = v8[4];
        }

        else
        {
          *&v50 = 0;
        }

        v348 = v50;
        v413 = 0u;
        v414 = 0u;
        v411 = 0u;
        v412 = 0u;
        obj = v353;
        v359 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v411, v438, 16);
        if (v359)
        {
          v357 = *v412;
          v363 = v55;
          do
          {
            for (k = 0; k != v359; ++k)
            {
              if (*v412 != v357)
              {
                objc_enumerationMutation(obj);
              }

              v365 = *(*(&v411 + 1) + 8 * k);
              for (m = 0; ; ++m)
              {
                v56 = objc_msgSend_floors(v365, v53, v54, v348);
                v59 = objc_msgSend_count(v56, v57, v58) > m;

                if (!v59)
                {
                  break;
                }

                v62 = objc_msgSend_floors(v365, v60, v61);
                v64 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, m);
                if (objc_msgSend_polygonSize(v64, v65, v66))
                {
                  v69 = objc_msgSend_floors(v365, v67, v68);
                  v71 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, m);
                  if (objc_msgSend_polygonSize(v71, v72, v73) != 4)
                  {

LABEL_56:
                    v123 = 0;
                    v124 = v363;
                    LOBYTE(v124) = 0;
                    v363 = v124;
                    v400 = 0uLL;
                    *&v401 = 0;
                    v395 = 0;
                    v396 = 0;
                    v397 = 0;
                    do
                    {
                      v125 = objc_msgSend_floors(v365, v96, v97);
                      v127 = objc_msgSend_objectAtIndexedSubscript_(v125, v126, m);
                      objc_msgSend_quad(v127, v128, v129);
                      LODWORD(src[1]) = v130;
                      DWORD2(v404) = v131;
                      DWORD2(v405) = v132;
                      DWORD2(v406) = v133;
                      src[0] = v134;
                      *&v404 = v135;
                      *&v405 = v136;
                      *&v406 = v137;
                      v428 = src[v123];
                      sub_2621CBA84(&v395, &v428);

                      v123 += 2;
                    }

                    while (v123 != 8);
                    v138 = 0;
                    v139 = 0;
                    v392 = 0;
                    v393 = 0;
                    v394 = 0;
                    while (1)
                    {
                      v140 = objc_msgSend_floors(v365, v96, v97);
                      v142 = objc_msgSend_objectAtIndexedSubscript_(v140, v141, m);
                      v145 = objc_msgSend_polygonSize(v142, v143, v144) < v138;

                      if (v145)
                      {
                        break;
                      }

                      v146 = objc_msgSend_floors(v365, v53, v54);
                      v148 = objc_msgSend_objectAtIndexedSubscript_(v146, v147, m);
                      v151 = objc_msgSend_polygonEdgeConfidence(v148, v149, v150);
                      v154 = objc_msgSend_floors(v365, v152, v153);
                      v156 = objc_msgSend_objectAtIndexedSubscript_(v154, v155, m);
                      v159 = *(v151 + 4 * (v138 % objc_msgSend_polygonSize(v156, v157, v158)));

                      if (v159 >= 0.5)
                      {
                        v161 = objc_msgSend_floors(v365, v96, v97);
                        v163 = objc_msgSend_objectAtIndexedSubscript_(v161, v162, m);
                        v166 = objc_msgSend_polygon(v163, v164, v165);
                        v169 = objc_msgSend_floors(v365, v167, v168);
                        v171 = objc_msgSend_objectAtIndexedSubscript_(v169, v170, m);
                        v372 = *(v166 + 16 * (v138 % objc_msgSend_polygonSize(v171, v172, v173)));

                        v433 = v372;
                        v175 = sub_262338FF0(&v433, v8, v174);
                        v160 = v96;
                        v428 = v175;
                        LOBYTE(v429) = v96;
                        if (v96)
                        {
                          sub_2621CBA84(&v392, &v428);
                          if (v139)
                          {
                            v177 = objc_alloc_init(MEMORY[0x277CCAD78]);
                            v180 = objc_msgSend_UUIDString(v177, v178, v179);
                            v181 = v180;
                            v184 = objc_msgSend_UTF8String(v180, v182, v183);
                            sub_2621D0F64(&v391, v184);
                            sub_2621CC174(src, &v391, 0, *&v363, *&v175);
                            if (SHIBYTE(v391.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v391.__r_.__value_.__l.__data_);
                            }

                            sub_2621CC20C(v417, src);
                            if (v406)
                            {
                              *(&v406 + 1) = v406;
                              operator delete(v406);
                            }

                            if (SBYTE7(v404) < 0)
                            {
                              operator delete(src[0]);
                            }
                          }
                        }

                        *&v176 = v175;
                        v363 = v176;
                      }

                      else if (v139)
                      {
                        v160 = 0;
                      }

                      else
                      {
                        v160 = v139;
                      }

                      ++v138;
                      v139 = v160;
                    }

                    v185 = v392;
                    v186 = v393;
                    if ((v393 - v392) > 0x18)
                    {
                      v187 = 0;
                      DWORD2(v401) = 5;
                      v188 = *v395;
                      v189 = vsub_f32(*(v395 + 8), *v395);
                      v190 = vmul_f32(v189, v189);
                      *v190.i32 = sqrtf(vaddv_f32(v190));
                      DWORD2(v399) = v190.i32[0];
                      v191 = *(v395 + 24);
                      v192 = vdiv_f32(v189, vdup_lane_s32(v190, 0));
                      *&v398 = v188;
                      *(&v398 + 1) = v192;
                      v193 = vsub_f32(v191, v188);
                      v194 = vmul_f32(v193, v193);
                      *v194.i32 = sqrtf(vaddv_f32(v194));
                      HIDWORD(v399) = v194.i32[0];
                      v195 = vdiv_f32(v193, vdup_lane_s32(v194, 0));
                      *&v399 = v195;
                      src[1] = 0;
                      src[0] = 0;
                      *&v404 = 0;
                      v196 = (*v190.i32 / 5.0);
                      v197 = (*v194.i32 / 5.0);
                      do
                      {
                        v198 = 0;
                        v199 = (v187 + 0.5) * v196;
                        v200 = vmla_n_f32(v188, v192, v199);
                        do
                        {
                          v201 = (v198 + 0.5) * v197;
                          v428 = vmla_n_f32(v200, v195, v201);
                          sub_2621CBA84(src, &v428);
                          ++v198;
                        }

                        while (v198 != 5);
                        ++v187;
                      }

                      while (v187 != 5);
                      v202 = src[0];
                      v203 = src[1];
                      for (n = src[0]; n != v203; ++n)
                      {
                        if (sub_26233D994(v185, v186, *n))
                        {
                          sub_2621CBA84(&v400, n);
                        }
                      }

                      if (v202)
                      {
                        operator delete(v202);
                      }

                      v205 = v416;
                      if (v416 >= *(&v416 + 1))
                      {
                        v207 = (v416 - v415) >> 6;
                        if ((v207 + 1) >> 58)
                        {
                          sub_2621CBEB0();
                        }

                        v208 = (*(&v416 + 1) - v415) >> 5;
                        if (v208 <= v207 + 1)
                        {
                          v208 = v207 + 1;
                        }

                        if (*(&v416 + 1) - v415 >= 0x7FFFFFFFFFFFFFC0uLL)
                        {
                          v209 = 0x3FFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v209 = v208;
                        }

                        *&v405 = &v415;
                        if (v209)
                        {
                          sub_2623398FC(v209);
                        }

                        v210 = (v207 << 6);
                        src[0] = 0;
                        src[1] = v210;
                        v404 = v210;
                        *v210 = v398;
                        *(v210 + 1) = v399;
                        v210[5] = 0;
                        v210[6] = 0;
                        v210[4] = 0;
                        sub_2621CC8B4(v210 + 4, v400, *(&v400 + 1), (*(&v400 + 1) - v400) >> 3);
                        *(v210 + 14) = DWORD2(v401);
                        *&v404 = v404 + 64;
                        v211 = v416;
                        v212 = v415;
                        v428 = &v415;
                        v429 = &v432;
                        v430 = &v433;
                        v431 = 0;
                        v213 = v415;
                        v214 = src[1] + &v415[-v416];
                        v433 = v214;
                        v432 = v214;
                        v215 = v214;
                        if (v415 == v416)
                        {
                          v431 = 1;
                        }

                        else
                        {
                          do
                          {
                            v216 = *(v213 + 1);
                            *v215 = *v213;
                            *(v215 + 16) = v216;
                            *(v215 + 40) = 0;
                            *(v215 + 48) = 0;
                            *(v215 + 32) = 0;
                            sub_2621CC8B4((v215 + 32), *(v213 + 4), *(v213 + 5), (*(v213 + 5) - *(v213 + 4)) >> 3);
                            *(v215 + 56) = *(v213 + 14);
                            v213 += 64;
                            v215 = (v433 + 64);
                            v433 += 64;
                          }

                          while (v213 != v211);
                          v431 = 1;
                          do
                          {
                            v217 = *(v212 + 4);
                            if (v217)
                            {
                              *(v212 + 5) = v217;
                              operator delete(v217);
                            }

                            v212 += 64;
                          }

                          while (v212 != v211);
                        }

                        sub_26233989C(&v428);
                        v218 = v415;
                        v219 = *(&v416 + 1);
                        v415 = v214;
                        v373 = v404;
                        v416 = v404;
                        *&v404 = v218;
                        *(&v404 + 1) = v219;
                        src[1] = v218;
                        src[0] = v218;
                        sub_262339944(src);
                        v206 = v373;
                        v185 = v392;
                      }

                      else
                      {
                        *v416 = v398;
                        *(v205 + 16) = v399;
                        *(v205 + 40) = 0;
                        *(v205 + 48) = 0;
                        *(v205 + 32) = 0;
                        sub_2621CC8B4((v205 + 32), v400, *(&v400 + 1), (*(&v400 + 1) - v400) >> 3);
                        *(v205 + 56) = DWORD2(v401);
                        v206 = v205 + 64;
                      }

                      *&v416 = v206;
                    }

                    if (v185)
                    {
                      v393 = v185;
                      operator delete(v185);
                    }

                    if (v395)
                    {
                      operator delete(v395);
                    }

                    if (v400)
                    {
                      operator delete(v400);
                    }

                    continue;
                  }

                  v76 = objc_msgSend_floors(v365, v74, v75);
                  v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, m);
                  v81 = objc_msgSend_polygonEdgeConfidence(v78, v79, v80);
                  v84 = objc_msgSend_floors(v365, v82, v83);
                  v86 = objc_msgSend_objectAtIndexedSubscript_(v84, v85, m);
                  v89 = objc_msgSend_polygonEdgeConfidence(v86, v87, v88) + 16;
                  v370 = v76;
                  if (v81 != v89)
                  {
                    v90 = v81 + 1;
                    if (v81 + 1 != v89)
                    {
                      v91 = *v81;
                      v92 = v81 + 1;
                      do
                      {
                        v93 = *v92++;
                        v94 = v93;
                        if (v91 < v93)
                        {
                          v91 = v94;
                          v81 = v90;
                        }

                        v90 = v92;
                      }

                      while (v92 != v89);
                    }
                  }

                  v95 = *v81 < 0.5;

                  if (!v95)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                }

                v409 = 0u;
                v410 = 0u;
                v407 = 0u;
                v408 = 0u;
                v98 = objc_msgSend_walls(v365, v96, v97);
                v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v407, v437, 16);
                if (v102)
                {
                  v103 = *v408;
                  do
                  {
                    for (ii = 0; ii != v102; ++ii)
                    {
                      if (*v408 != v103)
                      {
                        objc_enumerationMutation(v98);
                      }

                      v105 = *(*(&v407 + 1) + 8 * ii);
                      objc_msgSend_quad(v105, v100, v101);
                      v371 = v106;
                      objc_msgSend_quad(v105, v107, v108);
                      *&v109 = v371;
                      *(&v109 + 1) = v110;
                      v398 = v109;
                      *&v109 = vsub_f32(v371, v110);
                      if (sqrtf(vaddv_f32(vmul_f32(*&v109, *&v109))) >= 0.5)
                      {
                        *&v111 = COERCE_DOUBLE(sub_262338FF0(&v398, v8, v101));
                        if (v100)
                        {
                          v112 = *&v111;
                          *&v113 = COERCE_DOUBLE(sub_262338FF0(&v398 + 1, v8, v101));
                          if (v100)
                          {
                            v114 = *&v113;
                            v115 = objc_alloc_init(MEMORY[0x277CCAD78]);
                            v118 = objc_msgSend_UUIDString(v115, v116, v117);
                            v119 = v118;
                            v122 = objc_msgSend_UTF8String(v118, v120, v121);
                            sub_2621D0F64(&__p, v122);
                            sub_2621CC174(src, &__p, 0, v112, v114);
                            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__p.__r_.__value_.__l.__data_);
                            }

                            sub_2621CC20C(v417, src);
                            if (v406)
                            {
                              *(&v406 + 1) = v406;
                              operator delete(v406);
                            }

                            if (SBYTE7(v404) < 0)
                            {
                              operator delete(src[0]);
                            }
                          }
                        }
                      }
                    }

                    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v100, &v407, v437, 16);
                  }

                  while (v102);
                }
              }

              v389 = 0u;
              v390 = 0u;
              v387 = 0u;
              v388 = 0u;
              v220 = objc_msgSend_curvedWalls(v365, v60, v61);
              v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v221, &v387, v436, 16);
              if (v224)
              {
                v225 = *v388;
                do
                {
                  for (jj = 0; jj != v224; ++jj)
                  {
                    if (*v388 != v225)
                    {
                      objc_enumerationMutation(v220);
                    }

                    v227 = *(*(&v387 + 1) + 8 * jj);
                    v228 = objc_msgSend_identifier(v227, v222, v223);
                    v231 = objc_msgSend_UUIDString(v228, v229, v230);
                    v232 = v231;
                    v235 = objc_msgSend_UTF8String(v231, v233, v234);

                    sub_2621D0F64(&v386, v235);
                    objc_msgSend_quad(v227, v236, v237);
                    v374 = v238;
                    objc_msgSend_quad(v227, v239, v240);
                    sub_2621CC174(src, &v386, 1, v374, v241);
                    if (SHIBYTE(v386.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v386.__r_.__value_.__l.__data_);
                    }

                    sub_2621CC20C(v417, src);
                    if (v406)
                    {
                      *(&v406 + 1) = v406;
                      operator delete(v406);
                    }

                    if (SBYTE7(v404) < 0)
                    {
                      operator delete(src[0]);
                    }
                  }

                  v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v222, &v387, v436, 16);
                }

                while (v224);
              }
            }

            v359 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v411, v438, 16);
          }

          while (v359);
        }

        memset(v385, 0, sizeof(v385));
        *&v398 = v385;
        BYTE8(v398) = 0;
        v242 = v416 - v415;
        if (v416 != v415)
        {
          if (!((v242 >> 6) >> 58))
          {
            sub_2623398FC(v242 >> 6);
          }

          sub_2621CBEB0();
        }

        sub_262291970(&v428, v417, 0, v385);
        src[0] = v385;
        sub_2621CC514(src);
        v381 = 0u;
        v382 = 0u;
        v383 = 0u;
        v384 = 0u;
        v349 = obj;
        v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(v349, v243, &v381, v435, 16);
        if (v352)
        {
          v351 = *v382;
          do
          {
            for (kk = 0; kk != v352; ++kk)
            {
              if (*v382 != v351)
              {
                objc_enumerationMutation(v349);
              }

              v246 = *(*(&v381 + 1) + 8 * kk);
              v377 = 0u;
              v378 = 0u;
              v379 = 0u;
              v380 = 0u;
              obja = objc_msgSend_curvedWalls(v246, v244, v245, v348);
              v248 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v247, &v377, v434, 16);
              if (v248)
              {
                v364 = *v378;
                do
                {
                  v366 = v248;
                  for (mm = 0; mm != v366; ++mm)
                  {
                    if (*v378 != v364)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v252 = *(*(&v377 + 1) + 8 * mm);
                    v253 = objc_msgSend_identifier(v252, v249, v250);
                    v256 = objc_msgSend_UUIDString(v253, v254, v255);
                    v257 = v256;
                    v260 = objc_msgSend_UTF8String(v256, v258, v259);

                    v261 = v428;
                    if (v429 != v428)
                    {
                      v262 = 0;
                      v263 = 5;
                      v264 = 1;
                      while (1)
                      {
                        sub_2621D0F64(src, v260);
                        if (&v261[v264 + 1] == sub_26225E9A4(&v261[v264], src))
                        {
                          v268 = 0;
                        }

                        else
                        {
                          v265 = v429;
                          v266 = v428;
                          sub_2621D0F64(&v398, v260);
                          v267 = &v266[5 * ((v262 + 1) % (0xCCCCCCCCCCCCCCCDLL * (v265 - v266)))];
                          v268 = &v267[2] != sub_26225E9A4(&v267[1], &v398);
                          if (SBYTE7(v399) < 0)
                          {
                            operator delete(v398);
                          }
                        }

                        if (SBYTE7(v404) < 0)
                        {
                          operator delete(src[0]);
                        }

                        if (v268)
                        {
                          break;
                        }

                        ++v262;
                        v261 = v428;
                        v264 += 5;
                        v263 += 5;
                        if (v262 >= 0xCCCCCCCCCCCCCCCDLL * (v429 - v428))
                        {
                          goto LABEL_164;
                        }
                      }

                      objc_msgSend_startOrientation(v252, v249, v250);
                      v270 = v269;
                      objc_msgSend_endOrientation(v252, v271, v272);
                      v274 = v273;
                      v275 = (v270 * 3.1416) / 180.0;
                      v276 = cosf(v275);
                      objc_msgSend_radius(v252, v277, v278);
                      v280 = v279;
                      v281 = sinf(v275);
                      objc_msgSend_radius(v252, v282, v283);
                      v285 = v284;
                      objc_msgSend_circleCenter(v252, v286, v287);
                      v358 = v288;
                      v289 = v281;
                      v290 = v280;
                      v291 = v276;
                      v360 = v275;
                      v362 = (v274 * 3.1416) / 180.0;
                      v292 = cosf(v362);
                      objc_msgSend_radius(v252, v293, v294);
                      v296 = v295;
                      v297 = sinf(v362);
                      objc_msgSend_radius(v252, v298, v299);
                      v301 = v300;
                      objc_msgSend_circleCenter(v252, v302, v303);
                      v304.f32[0] = v291 * v290;
                      v304.f32[1] = v289 * v285;
                      v305.f32[0] = v292 * v296;
                      v305.f32[1] = v297 * v301;
                      v307 = vadd_f32(v305, v306);
                      v398 = 0uLL;
                      *&v399 = 0;
                      v308 = v428[5 * v262];
                      v309 = vsub_f32(vadd_f32(v304, v358), v308);
                      v310 = vmul_f32(v309, v309);
                      v311 = vsub_f32(v307, v308);
                      v312 = vmul_f32(v311, v311);
                      v313 = vsqrt_f32(vadd_f32(vzip1_s32(v310, v312), vzip2_s32(v310, v312)));
                      if (vcgt_f32(vdup_lane_s32(v313, 1), v313).u32[0])
                      {
                        v314 = v360 + 0.05236;
                        for (*src = v360 + 0.05236; v314 < (v362 + -0.017453); *src = v314)
                        {
                          sub_2621C8F2C(&v398, src);
                          v314 = v314 + 0.05236;
                        }
                      }

                      else
                      {
                        v315 = v362 + -0.05236;
                        for (*src = v362 + -0.05236; v315 > (v360 + 0.017453); *src = v315)
                        {
                          sub_2621C8F2C(&v398, src);
                          v315 = v315 + -0.05236;
                        }
                      }

                      v316 = v398;
                      for (nn = v398; nn != *(&v316 + 1); v263 += 5)
                      {
                        v318 = cosf(*nn);
                        objc_msgSend_radius(v252, v319, v320);
                        v322 = v321;
                        v323 = sinf(*nn);
                        objc_msgSend_radius(v252, v324, v325);
                        v327 = v326;
                        objc_msgSend_circleCenter(v252, v328, v329);
                        v331 = v330;
                        sub_2621D0F64(v375, v260);
                        v332.f32[0] = v318 * v322;
                        v332.f32[1] = v323 * v327;
                        sub_262292AA0(src, v375, 0, COERCE_DOUBLE(vadd_f32(v332, v331)));
                        if (v376 < 0)
                        {
                          operator delete(v375[0]);
                        }

                        sub_2623392A4(&v428, &v428[v263], src);
                        sub_2621CC7B4(v404);
                        ++nn;
                      }

                      if (v316)
                      {
                        operator delete(v316);
                      }
                    }

LABEL_164:
                    ;
                  }

                  v248 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v249, &v377, v434, 16);
                }

                while (v248);
              }
            }

            v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(v349, v244, &v381, v435, 16);
          }

          while (v352);
        }

        v333 = objc_alloc_init(RS3DSurface);
        v334 = v333;
        if (v333)
        {
          v333->type = 5;
          sub_2622C533C(v333, *&v350[4]);
          v334->individualUpdate = 1;
          v334->confidence = 1.0;
        }

        else
        {
          sub_2622C533C(0, *&v350[4]);
        }

        v336 = 0;
        v337 = v418[0];
        do
        {
          *&v335 = v337[v336];
          DWORD2(v335) = v348;
          *(&v398 + v336++) = v335;
        }

        while (v336 != 4);
        HIDWORD(v338) = HIDWORD(v399);
        *src = v398;
        v404 = v399;
        v405 = v400;
        v406 = v401;
        p_isa = &v334->super.isa;
        if (v334)
        {
          objc_copyStruct(&v334[1], src, 64, 1, 0);
        }

        src[1] = 0;
        src[0] = 0;
        *&v404 = 0;
        v395 = 0;
        v396 = 0;
        v397 = 0;
        v339 = v429;
        v340 = v428;
        if (0xCCCCCCCCCCCCCCCDLL * (v429 - v428) <= 3)
        {
          sub_2621CBF10(1uLL);
        }

        if (v428 == v429)
        {
          v341 = 0;
        }

        else
        {
          v341 = 0;
          do
          {
            *&v338 = *v340;
            DWORD2(v338) = v348;
            v342 = v341;
            v343 = v341 >> 4;
            if (((v341 >> 4) + 1) >> 60)
            {
              sub_2621CBEB0();
            }

            if (v341 >> 4 != -1)
            {
              sub_2621CBF10((v341 >> 4) + 1);
            }

            *(16 * v343) = v338;
            v341 = 16 * v343 + 16;
            memcpy(0, 0, v342);
            LOBYTE(v392) = 0;
            sub_262339540(src, &v392);
            LODWORD(v392) = 1065353216;
            sub_2621C8F2C(&v395, &v392);
            v340 += 5;
          }

          while (v340 != v339);
        }

        sub_2622C51B4(p_isa, 0, src[0], v395, v341 >> 4);
        v8 = v369;
        v346 = objc_msgSend_array(MEMORY[0x277CBEB18], v344, v345);
        objc_msgSend_addObject_(v346, v347, p_isa);
        sub_2622AE960(v369, v346);

        if (v395)
        {
          operator delete(v395);
        }

        if (src[0])
        {
          operator delete(src[0]);
        }

        src[0] = &v428;
        sub_2621CC5A0(src);
        src[0] = &v415;
        sub_2621CC514(src);
        src[0] = v417;
        sub_2621CC628(src);
        v51 = v418[0];
      }

      if (v51)
      {
        operator delete(v51);
      }

      if (v427[0])
      {
        operator delete(v427[0]);
      }
    }
  }
}

void sub_262338AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, _Unwind_Exception *exception_objecta, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (STACK[0x270])
  {
    operator delete(STACK[0x270]);
  }

  if (v66)
  {
    operator delete(v66);
  }

  STACK[0x210] = &STACK[0x428];
  sub_2621CC5A0(&STACK[0x210]);
  STACK[0x210] = &STACK[0x348];
  sub_2621CC514(&STACK[0x210]);
  STACK[0x210] = &STACK[0x360];
  sub_2621CC628(&STACK[0x210]);
  if (STACK[0x378])
  {
    operator delete(STACK[0x378]);
  }

  if (STACK[0x410])
  {
    operator delete(STACK[0x410]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_262338FF0(float32x2_t *a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = objc_msgSend_walls(a2, a2, a3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v39, v47, 16);
  if (!v10)
  {

    return 0;
  }

  v11 = *v40;
  v12 = 0;
  v3.i32[0] = 2139095039;
  v13 = 0;
  v4.i32[0] = 2139095039;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      v16 = &v45;
      v17 = 1;
      do
      {
        v18 = v17;
        objc_msgSend_quad(v15, v8, v9);
        v17 = 0;
        v44 = v19;
        v46 = v20;
        v45 = v21;
        v43 = v22;
        v23 = vsub_f32(*a1, *v16);
        v24 = vmul_f32(v23, v23);
        v24.f32[0] = sqrtf(vaddv_f32(v24));
        v12 = vbsl_s8(vdup_lane_s32(vcgt_f32(v4, v24), 0), *v16, v12);
        if (v4.f32[0] > v24.f32[0])
        {
          v4.f32[0] = v24.f32[0];
        }

        v16 = &v43;
      }

      while ((v18 & 1) != 0);
      v25 = sub_26223FCEC(v15).n128_u64[0];
      v27 = vsub_f32(v26, v25);
      v28 = vaddv_f32(vmul_f32(vsub_f32(*a1, v25), v27));
      v29 = vaddv_f32(vmul_f32(v27, v27));
      if (v29 < 0.000001)
      {
        v29 = 0.000001;
      }

      v30 = vmla_n_f32(v25, v27, v28 / v29);
      v31 = vsub_f32(v30, v25);
      v32 = vsub_f32(v30, v26);
      if (vaddv_f32(vmul_f32(v31, v32)) > 0.00001)
      {
        v33 = vmul_f32(v31, v31);
        v34 = vmul_f32(v32, v32);
        v35 = vsqrt_f32(vadd_f32(vzip1_s32(v33, v34), vzip2_s32(v33, v34)));
        v30 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v35, 1), v35)), 0), v26, v25);
      }

      v36 = vsub_f32(*a1, v30);
      v37 = vmul_f32(v36, v36);
      v37.f32[0] = sqrtf(vaddv_f32(v37));
      v13 = vbsl_s8(vdup_lane_s32(vcgt_f32(v3, v37), 0), v30, v13);
      if (v3.f32[0] > v37.f32[0])
      {
        v3.f32[0] = v37.f32[0];
      }
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v39, v47, 16);
  }

  while (v10);

  if (v4.f32[0] >= 0.35 && v3.f32[0] >= 0.2)
  {
    return 0;
  }

  if (v4.f32[0] < 0.35)
  {
    return v12;
  }

  return v13;
}

void sub_2623392A4(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) + 1;
    if (v11 > 0x666666666666666)
    {
      sub_2621CBEB0();
    }

    v12 = a2 - v10;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v11;
    }

    v22 = a1;
    if (v14)
    {
      sub_2622931B8(v14);
    }

    v15 = 8 * (v12 >> 3);
    v18 = 0;
    v19 = v15;
    v20 = v15;
    v21 = 0;
    if (!(0xCCCCCCCCCCCCCCCDLL * (v12 >> 3)))
    {
      if (v12 < 1)
      {
        if (v10 == a2)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0x999999999999999ALL * (v12 >> 3);
        }

        v25 = a1;
        sub_2622931B8(v17);
      }

      v16 = 1 - 0x3333333333333333 * (v12 >> 3);
      v15 = sub_262339830(v15, v15, v15 - 40 * (v16 >> 1));
      v19 -= 40 * (v16 >> 1);
      v20 = v15;
    }

    sub_262292E28(v15, a3);
    v20 += 40;
    sub_262339774(a1, &v18, a2);
    sub_2622932BC(&v18);
  }

  else if (a2 == v7)
  {
    sub_262292E28(a1[1], a3);
    a1[1] = v7 + 40;
  }

  else
  {
    sub_262339630(a1, a2, a1[1], a2 + 40);
    v8 = a1[1] <= a3 || a2 > a3;
    v9 = 40;
    if (v8)
    {
      v9 = 0;
    }

    sub_262339704(v23, a2, a3 + v9);
    sub_2621CC7B4(v24);
  }
}

void sub_262339540(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_2621CBEB0();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_262339630(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    do
    {
      sub_262292E28(v10, v8);
      v8 += 40;
      v10 += 40;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 40;
    v12 = a4 - v7;
    v13 = a2 + v7 - 40 - a4;
    do
    {
      sub_262339704(v14, v11, v13);
      sub_2621CC7B4(v15);
      v11 -= 40;
      v13 -= 40;
      v12 += 40;
    }

    while (v12);
  }
}

uint64_t sub_262339704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  if (a2 != a3)
  {
    sub_262292EA0((a2 + 8), *(a3 + 8), (a3 + 16));
  }

  *(a2 + 32) = *(a3 + 32);

  return sub_262292E28(a1, a2);
}

uint64_t sub_262339774(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_262293210(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_262293210(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_262339830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_262339704(v7, a3, v5);
      sub_2621CC7B4(v8);
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_26233989C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v3 -= 64;
    }
  }

  return a1;
}

void sub_2623398FC(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262339944(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2623399A8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v44 = 0;
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v41 = 0;
    v7 = *a2;
    v6 = a2[1];
    do
    {
      if (v6 == v7)
      {
        v6 = v7;
      }

      else
      {
        v8 = 0;
        do
        {
          v9 = *a3;
          v10 = (*a1 + 16 * v41);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v42 = *(v9 + 8 * v8);
          v58 = 0;
          v59 = 0;
          v60 = 0;
          memset(v57, 0, sizeof(v57));
          v47 = &unk_2874EF0B8;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0;
          v55 = 0;
          v56 = 257;
          sub_262339DB8(v10, &v47, &v58, v57);
          v11 = 0;
          v12 = 0;
          v13 = (v7 + 16 * v8);
          v15 = v58;
          v14 = v59;
          v16 = *&v42 + 10.0;
          v17 = *(&v42 + 1) + -10.0;
          v18 = v58;
          do
          {
            v43 = vsub_f32(vrev64_s32(*v18), *v13);
            v19 = atan2f(v43.f32[0], v43.f32[1]) * 57.2957795;
            v20 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
            v45 = v20;
            v46 = v19;
            sub_2621C8F2C(&v64, &v45);
            sub_2621C8F2C(&v61, &v46);
            v21 = v13[1].f32[0];
            v22 = vabds_f32(v20, v21);
            if (v22 < 10.0)
            {
              v23 = *&v42 >= v19 || *(&v42 + 1) <= v19;
              if (!v23 || (*&v42 < (v19 + 360.0) ? (v24 = (v19 + 360.0) < *(&v42 + 1)) : (v24 = 0), v24))
              {
                ++v11;
              }
            }

            if (v22 < (v21 / 3.0))
            {
              v25 = v16 >= v19 || v17 <= v19;
              if (!v25 || (v16 < (v19 + 360.0) ? (v26 = (v19 + 360.0) < v17) : (v26 = 0), v26))
              {
                ++v12;
              }
            }

            ++v18;
          }

          while (v18 != v14);
          v27 = v64;
          v28 = v61;
          v29 = *v61;
          v30 = *(v62 - 4);
          if (*v61 >= 360.0)
          {
            v29 = *v61 + -360.0;
          }

          if (v30 >= 360.0)
          {
            v30 = v30 + -360.0;
          }

          if (v29 < 0.0)
          {
            v29 = v29 + 360.0;
          }

          if (v30 < 0.0)
          {
            v30 = v30 + 360.0;
          }

          if (v30 >= v29)
          {
            v31 = v30;
          }

          else
          {
            v31 = v29;
          }

          if (v30 < v29)
          {
            v29 = v30;
          }

          v32 = v31 - v29;
          v33 = (v29 + 360.0) - v31;
          if (v33 < v32)
          {
            v32 = v33;
          }

          v34 = (v14 - v15);
          v36 = 1;
          if ((v11 / v34) <= 0.15 || (vabds_f32(*v64, *(v65 - 4)) / v32) >= 4.0)
          {
            if ((v12 / v34) == 0.0 || (v35 = vsub_f32(*v10, v10[1]), sqrtf(vaddv_f32(vmul_f32(v35, v35))) >= 10.0))
            {
              v36 = 0;
            }
          }

          v47 = &unk_2874EF0B8;
          if (v55)
          {
            sub_2621D1B78(v55);
          }

          if (v57[0])
          {
            operator delete(v57[0]);
          }

          if (v15)
          {
            operator delete(v15);
          }

          operator delete(v28);
          operator delete(v27);
          if (v36)
          {
            sub_2621C9004(a4, &v44);
          }

          ++v8;
          v7 = *a2;
          v6 = a2[1];
        }

        while (v8 < (v6 - *a2) >> 4);
        v5 = *a1;
        v4 = a1[1];
      }

      v44 = ++v41;
    }

    while (v41 < (v4 - v5) >> 4);
  }
}

void sub_262339D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    sub_2621D1B78(a39);
  }

  v41 = *(v39 - 248);
  if (v41)
  {
    operator delete(v41);
  }

  v42 = *(v39 - 224);
  if (v42)
  {
    operator delete(v42);
  }

  v43 = *(v39 - 200);
  if (v43)
  {
    operator delete(v43);
  }

  v44 = *(v39 - 176);
  if (v44)
  {
    operator delete(v44);
  }

  _Unwind_Resume(exception_object);
}

void sub_262339DB8(float32x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v7 = vsub_f32(*a1, v6);
  v8 = llroundf(sqrtf(vaddv_f32(vmul_f32(v7, v7))));
  if (v8 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  sub_262267420(v39, v9, *a1, v6.f32[0]);
  LODWORD(v10) = a1->i32[1];
  sub_262267420(v37, v9, v10, a1[1].f32[1]);
  v43[0].__locale_ = 0;
  v11 = 1;
  v12 = v9;
  do
  {
    v35 = *sub_2622CB6CC(v39, v43);
    v13 = sub_2622CB6CC(v37, v43);
    LODWORD(v14) = v35;
    HIDWORD(v14) = *v13;
    *&v46 = v14;
    sub_2621CBA84(a3, &v46);
    v43[0].__locale_ = v11++;
    --v12;
  }

  while (v12);
  if ((*(a2 + 137) & 1) == 0)
  {
    v15 = 0;
    v16 = a2 + 8;
    v17 = MEMORY[0x277D82670];
    v18 = vadd_s32(vmovn_s64(*(a2 + 8)), -1);
    v19 = MEMORY[0x277D82680];
    v32 = a3;
    do
    {
      v20 = *(*a3 + 8 * v15);
      if (*(a2 + 137) == 1)
      {
        sub_2621D552C(v17, "runtime_err in ", 15);
        sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v17, " ", 1);
        v21 = MEMORY[0x266727260](v17, 1159);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "at", 2);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v43, v19);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v43);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6874("err", "empty tensor");
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v23 = std::locale::use_facet(v43, v19);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v43);
        std::ostream::put();
        std::ostream::flush();
      }

      v36 = v15;
      v24 = 0;
      v25 = vmax_s32(vmin_s32(v18, vcvt_s32_f32(v20)), 0);
      *&v26 = v25.u32[0];
      *(&v26 + 1) = v25.u32[1];
      v45 = 0u;
      v46 = v26;
      v41 = 0;
      *&v43[0].__locale_ = 0u;
      v44 = 0u;
      v27 = 1;
      do
      {
        v28 = *(&v46 + v24);
        if (v28 >= *(v16 + v24))
        {
          sub_2621D552C(v17, "runtime_err in ", 15);
          sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v17, " ", 1);
          v29 = MEMORY[0x266727260](v17, 1167);
          sub_2621D552C(v29, " ", 1);
          sub_2621D552C(v29, "at", 2);
          std::ios_base::getloc((v29 + *(*v29 - 24)));
          v30 = std::locale::use_facet(&v42, v19);
          (v30->__vftable[2].~facet_0)(v30, 10);
          std::locale::~locale(&v42);
          std::ostream::put();
          std::ostream::flush();
          sub_2621DA198("err", "shape", &v41, "=", (&v46 + v24), "should smaller then", (v16 + v24));
          std::ios_base::getloc((v17 + *(*v17 - 24)));
          v31 = std::locale::use_facet(&v42, v19);
          (v31->__vftable[2].~facet_0)(v31, 10);
          std::locale::~locale(&v42);
          std::ostream::put();
          std::ostream::flush();
        }

        v41 = v27;
        v43[v24 / 8].__locale_ = v28;
        v24 += 8;
        ++v27;
      }

      while (v24 != 16);
      sub_2621C8F2C(a4, (*(a2 + 144) + 4 * *(a2 + 64) * v43[1].__locale_ + 4 * *(a2 + 56) * v43[0].__locale_));
      a3 = v32;
      v15 = v36 + 1;
    }

    while (v36 + 1 != v9);
  }

  v37[0] = &unk_2874EF6A8;
  if (v38)
  {
    sub_2621D1B78(v38);
  }

  v39[0] = &unk_2874EF6A8;
  if (v40)
  {
    sub_2621D1B78(v40);
  }
}

void sub_26233A304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a50)
  {
    sub_2621D1B78(a50);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233A3A4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = *sub_2621CD160(a1, (a2[1] - *a2) >> 2);
  v7 = *(a1 + 8);
  if (v6 != v7)
  {
    v8 = 0;
    v9 = (v7 - v6 - 8) >> 3;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v12 = xmmword_2623A7620;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v10, v12));
      if (v14.i8[0])
      {
        v6[v8] = v8;
      }

      if (v14.i8[4])
      {
        v6[v8 + 1] = v8 + 1;
      }

      v8 += 2;
      v12 = vaddq_s64(v12, v13);
    }

    while (v11 != v8);
  }

  v15 = 126 - 2 * __clz(v7 - v6);
  v26 = a2;
  if (v7 == v6)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_26233A7D8(v6, v7, &v26, v16, 1);
  v17 = (a2[1] - *a2) >> 2;
  if (v17 >= a3)
  {
    v17 = a3;
  }

  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = (v19 - *a1) >> 3;
  if (v17 <= v20)
  {
    if (v17 >= v20)
    {
      return;
    }

    v25 = v18 + 8 * v17;
  }

  else
  {
    v21 = v17 - v20;
    v22 = *(a1 + 16);
    if (v21 > (v22 - v19) >> 3)
    {
      if (!(v17 >> 61))
      {
        v23 = v22 - v18;
        if (v23 >> 2 > v17)
        {
          v17 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v17;
        }

        sub_2621CBEC8(v24);
      }

      sub_2621CBEB0();
    }

    bzero(*(a1 + 8), 8 * v21);
    v25 = v19 + 8 * v21;
  }

  *(a1 + 8) = v25;
}

void sub_26233A594(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233A5B0(uint64_t a1, float32x2_t a2, float a3, float32x2_t a4)
{
  v18 = vsub_f32(a4, a2);
  v7 = a3;
  v8 = v18.f32[0] * v18.f32[0];
  v9 = pow(a3, 4.0) * 4.0 * v8;
  v10 = v9 / pow(v18.f32[1], 4.0) + v7 * v7 * ((v8 / (v18.f32[1] * v18.f32[1]) + 1.0) * -4.0) * (v7 * v7 / (v18.f32[1] * v18.f32[1]) + -1.0);
  if (v10 <= 0.0)
  {
    v17 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v11 = sqrtf(v10);
    v12 = ((((a3 + a3) * a3) * v18.f32[0]) / v18.f32[1]) / v18.f32[1];
    v13 = vmul_f32(v18, v18).f32[0];
    v14 = (((v13 / v18.f32[1]) / v18.f32[1]) + 1.0) + (((v13 / v18.f32[1]) / v18.f32[1]) + 1.0);
    v15.f32[0] = (v12 + v11) / v14;
    v16.f32[0] = (v12 - v11) / v14;
    v15.f32[1] = ((a3 * a3) - (v18.f32[0] * v15.f32[0])) / v18.f32[1];
    v16.f32[1] = ((a3 * a3) - (v18.f32[0] * v16.f32[0])) / v18.f32[1];
    *(a1 + 8) = vadd_f32(v15, a2);
    *(a1 + 16) = vadd_f32(v16, a2);
    v17 = 1;
  }

  *a1 = v17;
}

BOOL sub_26233A708(float32x2_t *a1, uint64_t a2)
{
  if (*(a2 + 137))
  {
    return 0;
  }

  memset(__p, 0, sizeof(__p));
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_262339DB8(a1, a2, __p, &v7);
  v3 = 0.0;
  if (v7 != v8)
  {
    v4 = v7;
    do
    {
      v5 = *v4++;
      v3 = v3 + v5;
    }

    while (v4 != v8);
  }

  v2 = (v3 / (v8 - v7)) > 0.1;
  if (v7)
  {
    operator delete(v7);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_26233A7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_26233A7D8(uint64_t *result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v79 = *v11;
        if (*(**a3 + 4 * *v10) < *(**a3 + 4 * *v11))
        {
          *v11 = *v10;
          *v10 = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v87 = v11 + 1;
      v88 = v11[1];
      v89 = v11 + 2;
      v90 = v11[2];
      v91 = **a3;
      v92 = *(v91 + 4 * v88);
      v93 = *v11;
      v94 = *(v91 + 4 * *v11);
      v95 = *(v91 + 4 * v90);
      if (v92 >= v94)
      {
        if (v95 >= v92)
        {
          goto LABEL_169;
        }

        *v87 = v90;
        *v89 = v88;
        v96 = v11;
        v97 = v11 + 1;
        result = v88;
        if (v95 < v94)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v96 = v11;
        v97 = v11 + 2;
        result = *v11;
        if (v95 >= v92)
        {
          *v11 = v88;
          v11[1] = v93;
          v96 = v11 + 1;
          v97 = v11 + 2;
          result = v93;
          if (v95 >= v94)
          {
LABEL_169:
            v88 = v90;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v96 = v90;
        *v97 = v93;
        v88 = result;
      }

LABEL_170:
      if (*(v91 + 4 * *v10) < *(v91 + 4 * v88))
      {
        *v89 = *v10;
        *v10 = v88;
        v149 = *v89;
        v150 = *v87;
        v151 = *(v91 + 4 * v149);
        if (v151 < *(v91 + 4 * v150))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 < *(v91 + 4 * *v11))
          {
            *v11 = v149;
            v11[1] = v152;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v78 = **a3;

      return sub_26233B1FC(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v98 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v99 = **a3;
            v100 = 8;
            v101 = v11;
            do
            {
              v103 = *v101;
              v102 = v101[1];
              v101 = v98;
              v104 = *(v99 + 4 * v102);
              if (v104 < *(v99 + 4 * v103))
              {
                v105 = v100;
                while (1)
                {
                  *(v11 + v105) = v103;
                  v106 = v105 - 8;
                  if (v105 == 8)
                  {
                    break;
                  }

                  v103 = *(v11 + v105 - 16);
                  v105 -= 8;
                  if (v104 >= *(v99 + 4 * v103))
                  {
                    v107 = (v11 + v106);
                    goto LABEL_123;
                  }
                }

                v107 = v11;
LABEL_123:
                *v107 = v102;
              }

              v98 = v101 + 1;
              v100 += 8;
            }

            while (v101 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = **a3;
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 4 * v146);
            if (v148 < *(v145 + 4 * v147))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 < *(v145 + 4 * v147));
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v108 = (v12 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v11[v112];
            v114 = 2 * v110 + 2;
            v115 = *v109;
            if (v114 < v12 && *(v115 + 4 * *v113) < *(v115 + 4 * v113[1]))
            {
              ++v113;
              v112 = 2 * v111 + 2;
            }

            result = &v11[v111];
            v116 = *v113;
            v117 = *result;
            v118 = *(v115 + 4 * *result);
            if (*(v115 + 4 * *v113) >= v118)
            {
              do
              {
                v119 = v113;
                *result = v116;
                if (v108 < v112)
                {
                  break;
                }

                v120 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = &v11[v112];
                v121 = v120 + 2;
                if (v121 < v12 && *(v115 + 4 * *v113) < *(v115 + 4 * v113[1]))
                {
                  ++v113;
                  v112 = v121;
                }

                v116 = *v113;
                result = v119;
              }

              while (*(v115 + 4 * *v113) >= v118);
              *v119 = v117;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v122 = 0;
          v123 = *v11;
          v124 = *a3;
          v125 = v11;
          do
          {
            v126 = v125;
            v127 = &v125[v122];
            v125 = v127 + 1;
            v128 = 2 * v122;
            v122 = (2 * v122) | 1;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = *(v130 - 1);
              if (*(*v124 + 4 * result) < *(*v124 + 4 * v131))
              {
                v125 = v130;
                v122 = v129;
              }
            }

            *v126 = *v125;
          }

          while (v122 <= ((v12 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v123;
          }

          else
          {
            *v125 = *a2;
            *a2 = v123;
            v132 = (v125 - v11 + 8) >> 3;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v11[v135];
              v137 = *v136;
              v138 = *v125;
              v139 = *v124;
              v140 = *(v139 + 4 * *v125);
              if (*(v139 + 4 * *v136) < v140)
              {
                do
                {
                  v141 = v136;
                  *v125 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v11[v135];
                  v137 = *v136;
                  v125 = v141;
                }

                while (*(v139 + 4 * *v136) < v140);
                *v141 = v138;
              }
            }
          }

          v133 = v12-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 4 * *v10);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * *v11);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 4 * *v13) < *(v15 + 4 * *v11))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 4 * *v10) < v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 4 * v29);
      v32 = *(v15 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v15 + 4 * v33);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 4 * *v28) < *(v15 + 4 * v35))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 4 * v36) < v32)
        {
          *v28 = v36;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = *(v15 + 4 * v39);
      v42 = *(v15 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v15 + 4 * v43);
      if (v41 >= v42)
      {
        if (v44 < v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 4 * *v37) < *(v15 + 4 * v45))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 < v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 4 * v46) < v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 4 * *v14);
      v50 = *(v15 + 4 * *v28);
      v51 = *v37;
      v52 = *(v15 + 4 * *v37);
      if (v49 >= v50)
      {
        if (v52 >= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 >= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 >= v50)
        {
          v47 = v48;
LABEL_56:
          v53 = *v11;
          *v11 = v47;
          *v14 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v37 = v48;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 4 * *v11);
    v25 = *(v15 + 4 * *v14);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 4 * *v11) < *(v15 + 4 * *v14))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 4 * *v10) < v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 4 * v54);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 4 * v59) < v55);
      v60 = a2;
      if (v57 == v11)
      {
        v60 = a2;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v15 + 4 * v62) >= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 4 * v61) >= v55);
      }

      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (*(v15 + 4 * v66) < v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 4 * v67) >= v55);
        }

        while (v64 < v65);
      }

      if (v57 != v11)
      {
        *v11 = *v57;
      }

      *v57 = v54;
      if (v56 < v60)
      {
        goto LABEL_79;
      }

      v68 = sub_26233B370(v11, v57, *a3);
      v11 = v57 + 1;
      result = sub_26233B370(v57 + 1, a2, *a3);
      if (result)
      {
        a2 = v57;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_79:
        result = sub_26233A7D8(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 4 * v54);
      if (*(v15 + 4 * *(v11 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v15 + 4 * *v10))
      {
        v70 = (v11 + 1);
        do
        {
          v11 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v70 += 8;
        }

        while (v55 >= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 >= *(v15 + 4 * v69));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 < *(v15 + 4 * v72));
      }

      if (v11 < v71)
      {
        v73 = *v11;
        v74 = *v71;
        do
        {
          *v11 = v74;
          *v71 = v73;
          do
          {
            v75 = v11[1];
            ++v11;
            v73 = v75;
          }

          while (v55 >= *(v15 + 4 * v75));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 < *(v15 + 4 * v76));
        }

        while (v11 < v71);
      }

      v77 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v77;
      }

      a5 = 0;
      *v77 = v54;
    }
  }

  v80 = *v11;
  v81 = v11[1];
  v82 = **a3;
  v83 = *(v82 + 4 * v81);
  v84 = *(v82 + 4 * *v11);
  v85 = *v10;
  v86 = *(v82 + 4 * *v10);
  if (v83 >= v84)
  {
    if (v86 < v83)
    {
      v11[1] = v85;
      *v10 = v81;
      v143 = *v11;
      v142 = v11[1];
      if (*(v82 + 4 * v142) < *(v82 + 4 * *v11))
      {
        *v11 = v142;
        v11[1] = v143;
      }
    }
  }

  else
  {
    if (v86 >= v83)
    {
      *v11 = v81;
      v11[1] = v80;
      if (*(v82 + 4 * *v10) >= v84)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v85;
    }

    *v10 = v80;
  }

  return result;
}

uint64_t *sub_26233B1FC(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 < v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 4 * *a3) < v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 4 * *a4) < *(a6 + 4 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 4 * *a3) < *(a6 + 4 * *a2))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 4 * *a5) < *(a6 + 4 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 4 * *a4) < *(a6 + 4 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 4 * *a3) < *(a6 + 4 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_26233B370(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 4 * v7);
      v10 = *(*a3 + 4 * *a1);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 4 * v51) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_26233B1FC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(*a3 + 4 * v24);
    v29 = *a1;
    v30 = *(*a3 + 4 * *a1);
    v31 = *(*a3 + 4 * v26);
    if (v28 >= v30)
    {
      if (v31 >= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 >= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v27 + 4 * v46) < *(v27 + 4 * v24))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v27 + 4 * v47);
          if (v49 < *(v27 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 < *(v27 + 4 * *a1))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 >= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v29;
        if (v31 >= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v29;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a3;
  v17 = *(*a3 + 4 * v15);
  v18 = *a1;
  v19 = *(*a3 + 4 * *a1);
  v20 = *(*a3 + 4 * v13);
  if (v17 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_27;
  }

  if (v20 < v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v16 + 4 * *v37);
    if (v42 < *(v16 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 >= *(v16 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

_OWORD *sub_26233B674(_OWORD *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v5 = a1 + 3;
  v6 = *a2;
  v7 = a2[2];
  a1[4] = a2[1];
  a1[5] = v7;
  a1[3] = v6;
  sub_26222D2A8((a1 + 6), (a2 + 3));
  v8 = *a3;
  v9 = a3[2];
  *(a1 + 264) = a3[1];
  *(a1 + 280) = v9;
  *(a1 + 248) = v8;
  sub_26222D2A8(a1 + 296, (a3 + 3));
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = *(v5 + v10);
    v13 = *(a1 + v10 + 31);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v11 = 0;
    v10 = 1;
  }

  while (v12 == v13);
  if (v12 != v13)
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "TensorBinaryExp", 15);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  v20 = v5[1];
  *a1 = *v5;
  a1[1] = v20;
  a1[2] = v5[2];
  return a1;
}

void sub_26233B8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10[37] = &unk_2874EEC38;
  v12 = v10[53];
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  v10[12] = &unk_2874EEC38;
  v13 = v10[28];
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_26233B93C(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8) * *a1;
  memset(v21, 0, sizeof(v21));
  if (*(a1 + 280) == 1 && *(a1 + 480) == 1)
  {
    v3 = *(a1 + 288);
    v4 = *(a1 + 488);
    v5 = *(a1 + 544);
    v6 = (*v4 + *v3) / v5;
    if (v2 >= 2)
    {
      v7 = v2 - 1;
      v8 = v4 + 1;
      v9 = v3 + 1;
      do
      {
        v11 = *v9++;
        v10 = v11;
        v12 = *v8++;
        v6 += (v12 + v10) / v5;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v13 = sub_26233BDF4(a1 + 48, 0, 0, 0);
    v14 = *(a1 + 544);
    v15 = 8;
    v6 = v13 / v14;
    do
    {
      v16 = *(v21 + v15) + 1;
      *(v21 + v15) = v16;
      if (v16 != *(a1 + v15))
      {
        break;
      }

      *(v21 + v15) = 0;
      v15 -= 8;
    }

    while (v15 != -8);
    if (v2 >= 2)
    {
      for (i = 1; i != v2; ++i)
      {
        v6 += sub_26233BDF4(a1 + 48, i, *&v21[0], *(&v21[0] + 1)) / v14;
        for (j = 8; j != -8; j -= 8)
        {
          v19 = *(v21 + j) + 1;
          *(v21 + j) = v19;
          if (v19 != *(a1 + j))
          {
            break;
          }

          *(v21 + j) = 0;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_26233BACC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8) * *a1;
  memset(v16, 0, sizeof(v16));
  if (*(a1 + 184) == 1)
  {
    v3 = *(a1 + 192);
    result = *v3;
    if (v2 >= 2)
    {
      v5 = v2 - 1;
      v6 = v3 + 1;
      do
      {
        v7 = *v6++;
        result += v7;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(a1 + 192);
    result = *v10;
    for (i = 8; i != -8; i -= 8)
    {
      v12 = *(v16 + i) + 1;
      *(v16 + i) = v12;
      if (v12 != *(a1 + i))
      {
        break;
      }

      *(v16 + i) = 0;
    }

    if (v2 >= 2)
    {
      for (j = 1; j != v2; ++j)
      {
        result += v10[v9 * *(&v16[0] + 1) + v8 * *&v16[0]];
        for (k = 8; k != -8; k -= 8)
        {
          v15 = *(v16 + k) + 1;
          *(v16 + k) = v15;
          if (v15 != *(a1 + k))
          {
            break;
          }

          *(v16 + k) = 0;
        }
      }
    }
  }

  return result;
}

void sub_26233BBFC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0x1AF286BCA1AF286)
    {
      sub_2621CBEB0();
    }

    v7 = 0x86BCA1AF286BCA1BLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0xD79435E50D7943)
    {
      v9 = 0x1AF286BCA1AF286;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_26233BD98(v9);
    }

    v10 = 152 * v6;
    sub_26222D2A8(v10, a2);
    v5 = v10 + 152;
    v21 = (v10 + 152);
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = sub_26222D2A8(v15, v14);
        v14 += 152;
        v15 = v16 + 152;
      }

      while (v14 != v12);
      v17 = v11;
      v18 = v11;
      do
      {
        v19 = *v18;
        v18 += 19;
        (*v19)(v11);
        v17 += 19;
        v11 = v18;
      }

      while (v18 != v12);
    }

    v20 = *a1;
    *a1 = v13;
    *(a1 + 1) = v21;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v5 = sub_26222D2A8(v3, a2) + 152;
  }

  a1[1] = v5;
}

void sub_26233BD98(unint64_t a1)
{
  if (a1 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_26233BDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 232) == 1)
  {
    v4 = (*(a1 + 240) + a2);
  }

  else
  {
    v4 = (*(a1 + 240) + *(a1 + 160) * a4 + *(a1 + 152) * a3);
  }

  v5 = *v4;
  if (*(a1 + 432) == 1)
  {
    v6 = (*(a1 + 440) + a2);
  }

  else
  {
    v6 = (*(a1 + 440) + *(a1 + 360) * a4 + *(a1 + 352) * a3);
  }

  return *v6 + v5;
}

uint64_t sub_26233BE54(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 4;
    v9 = a2 - 2;
    v156 = a2 - 6;
    v10 = a2 - 10;
    v11 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v11;
          v12 = &a2[-v11] >> 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v103 = (v11 + 6);
                v104 = *(v11 + 6);
                v105 = (v11 + 2);
                v106 = *(v11 + 2);
                v107 = *v9;
                if (v104 <= v106)
                {
                  if (v107 <= v104)
                  {
                    return result;
                  }

                  v146 = *(v11 + 4);
                  *(v11 + 4) = *v8;
                  *v8 = v146;
                  v147 = *(v11 + 6);
                  *(v11 + 6) = *v9;
                  *v9 = v147;
                  if (*(v11 + 6) <= *(v11 + 2))
                  {
                    return result;
                  }

                  v148 = *v11;
                  *v11 = *(v11 + 4);
                  *(v11 + 4) = v148;
                }

                else
                {
                  v108 = *v11;
                  if (v107 <= v104)
                  {
                    *v11 = *(v11 + 4);
                    *(v11 + 4) = v108;
                    *(v11 + 2) = v104;
                    *(v11 + 6) = v106;
                    if (*v9 <= v106)
                    {
                      return result;
                    }

                    *(v11 + 4) = *v8;
                    *v8 = v108;
                    v105 = (v11 + 6);
                  }

                  else
                  {
                    *v11 = *v8;
                    *v8 = v108;
                  }

                  v103 = a2 - 2;
                }

                v155 = *v105;
                *v105 = *v103;
                *v103 = v155;
                return result;
              case 4:

                return sub_26233CA24(v11, (v11 + 4), (v11 + 8), a2 - 2);
              case 5:
                result = sub_26233CA24(v11, (v11 + 4), (v11 + 8), (v11 + 12));
                if (*v9 > *(v11 + 14))
                {
                  v91 = *(v11 + 12);
                  *(v11 + 12) = *v8;
                  *v8 = v91;
                  v92 = *(v11 + 14);
                  *(v11 + 14) = *v9;
                  *v9 = v92;
                  v93 = *(v11 + 14);
                  v94 = *(v11 + 10);
                  if (v93 > v94)
                  {
                    v95 = *(v11 + 8);
                    v96 = *(v11 + 12);
                    *(v11 + 8) = v96;
                    *(v11 + 12) = v95;
                    *(v11 + 10) = v93;
                    *(v11 + 14) = v94;
                    v97 = *(v11 + 6);
                    if (v93 > v97)
                    {
                      v98 = *(v11 + 4);
                      *(v11 + 4) = v96;
                      *(v11 + 8) = v98;
                      *(v11 + 6) = v93;
                      *(v11 + 10) = v97;
                      v99 = *(v11 + 2);
                      if (v93 > v99)
                      {
                        v100 = *v11;
                        *v11 = v96;
                        *(v11 + 4) = v100;
                        *(v11 + 2) = v93;
                        *(v11 + 6) = v99;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              if (*v9 > *(v11 + 2))
              {
                v101 = *v11;
                *v11 = *v8;
                *v8 = v101;
                v102 = *(v11 + 2);
                *(v11 + 2) = *v9;
                *v9 = v102;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v109 = (v11 + 4);
            v111 = v11 == a2 || v109 == a2;
            if (a4)
            {
              if (!v111)
              {
                v112 = 0;
                v113 = v11;
                do
                {
                  v114 = *(v113 + 6);
                  v115 = *(v113 + 2);
                  v113 = v109;
                  if (v114 > v115)
                  {
                    v116 = *v109;
                    v117 = v112;
                    while (1)
                    {
                      *(v11 + v117 + 4) = *(v11 + v117);
                      if (!v117)
                      {
                        break;
                      }

                      v118 = *(v11 + v117 - 2);
                      v117 -= 4;
                      if (v118 >= HIWORD(v116))
                      {
                        v119 = (v11 + v117 + 4);
                        goto LABEL_138;
                      }
                    }

                    v119 = v11;
LABEL_138:
                    *v119 = v116;
                  }

                  v109 = (v113 + 4);
                  v112 += 4;
                }

                while ((v113 + 4) != a2);
              }
            }

            else if (!v111)
            {
              v149 = v11 + 2;
              do
              {
                v150 = *(v7 + 6);
                v151 = *(v7 + 2);
                v7 = v109;
                if (v150 > v151)
                {
                  v152 = *v109;
                  v153 = v149;
                  do
                  {
                    v154 = *(v153 - 4);
                    v153 -= 4;
                    *(v153 + 6) = *(v153 + 2);
                  }

                  while (v154 < HIWORD(v152));
                  *(v153 + 2) = v152;
                }

                v109 = (v7 + 4);
                v149 += 4;
              }

              while ((v7 + 4) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v120 = (v12 - 2) >> 1;
              v121 = v120;
              do
              {
                v122 = v121;
                if (v120 >= v121)
                {
                  v123 = (2 * v121) | 1;
                  v124 = (v11 + 4 * v123);
                  if (2 * v122 + 2 < v12)
                  {
                    v125 = v124[1] > v124[3];
                    v124 += 2 * v125;
                    if (v125)
                    {
                      v123 = 2 * v122 + 2;
                    }
                  }

                  v126 = (v11 + 4 * v122);
                  if (v124[1] <= v126[1])
                  {
                    v127 = *v126;
                    do
                    {
                      v128 = v126;
                      v126 = v124;
                      *v128 = *v124;
                      v128[1] = v124[1];
                      if (v120 < v123)
                      {
                        break;
                      }

                      v129 = (2 * v123) | 1;
                      v124 = (v11 + 4 * v129);
                      v130 = 2 * v123 + 2;
                      if (v130 < v12)
                      {
                        v125 = v124[1] > v124[3];
                        v124 += 2 * v125;
                        if (v125)
                        {
                          v129 = v130;
                        }
                      }

                      v123 = v129;
                    }

                    while (v124[1] <= HIWORD(v127));
                    *v126 = v127;
                  }
                }

                v121 = v122 - 1;
              }

              while (v122);
              do
              {
                v131 = 0;
                v132 = *v11;
                v133 = v11;
                do
                {
                  v134 = &v133[2 * v131];
                  v135 = (v134 + 2);
                  v136 = (2 * v131) | 1;
                  v131 = 2 * v131 + 2;
                  if (v131 >= v12)
                  {
                    v131 = v136;
                  }

                  else
                  {
                    v137 = v134[3];
                    v138 = v134[5];
                    v139 = (v134 + 4);
                    if (v137 <= v138)
                    {
                      v131 = v136;
                    }

                    else
                    {
                      v135 = v139;
                    }
                  }

                  *v133 = *v135;
                  v133[1] = *(v135 + 1);
                  v133 = v135;
                }

                while (v131 <= ((v12 - 2) >> 1));
                if (v135 == a2 - 4)
                {
                  *v135 = v132;
                }

                else
                {
                  *v135 = *(a2 - 2);
                  *(v135 + 1) = *(a2 - 1);
                  *(a2 - 1) = v132;
                  v140 = &v135[-v11 + 4] >> 2;
                  v125 = v140 < 2;
                  v141 = v140 - 2;
                  if (!v125)
                  {
                    v142 = v141 >> 1;
                    v143 = (v11 + 4 * v142);
                    if (*(v143 + 1) > *(v135 + 1))
                    {
                      v144 = *v135;
                      do
                      {
                        v145 = v135;
                        v135 = v143;
                        *v145 = *v143;
                        *(v145 + 1) = *(v143 + 1);
                        if (!v142)
                        {
                          break;
                        }

                        v142 = (v142 - 1) >> 1;
                        v143 = (v11 + 4 * v142);
                      }

                      while (*(v143 + 1) > HIWORD(v144));
                      *v135 = v144;
                    }
                  }
                }

                a2 -= 4;
                v125 = v12-- <= 2;
              }

              while (!v125);
            }

            return result;
          }

          v13 = (v11 + 4 * (v12 >> 1));
          v14 = *v9;
          if (v12 >= 0x81)
          {
            v15 = v13 + 1;
            v16 = v13[1];
            v17 = (v11 + 2);
            v18 = *(v11 + 2);
            if (v16 <= v18)
            {
              if (v14 <= v16 || (v25 = *v13, *v13 = *v8, *v8 = v25, v26 = v13[1], v13[1] = *v9, *v9 = v26, v13[1] <= *v17))
              {
LABEL_29:
                v33 = v13 - 1;
                v34 = *(v13 - 1);
                v35 = v13 - 2;
                v36 = (v11 + 6);
                v37 = *(v11 + 6);
                v38 = *v156;
                if (v34 <= v37)
                {
                  if (v38 <= v34 || (v40 = *v35, *v35 = *(a2 - 4), *(a2 - 4) = v40, v41 = *(v13 - 1), *(v13 - 1) = *(a2 - 3), *(a2 - 3) = v41, *(v13 - 1) <= *v36))
                  {
LABEL_43:
                    v46 = v13[3];
                    v47 = v13 + 2;
                    v48 = (v11 + 10);
                    v49 = *(v11 + 10);
                    result = *v10;
                    if (v46 <= v49)
                    {
                      if (result <= v46 || (v51 = *v47, *v47 = *(a2 - 6), *(a2 - 6) = v51, v52 = v13[3], v13[3] = *(a2 - 5), *(a2 - 5) = v52, v46 = v13[3], v46 <= *v48))
                      {
LABEL_53:
                        v56 = *v15;
                        v57 = *v33;
                        if (v56 <= v57)
                        {
                          v58 = *v13;
                          if (v46 <= v56)
                          {
LABEL_63:
                            v61 = *v11;
                            *v11 = v58;
                            *v13 = v61;
                            v62 = *(v11 + 2);
                            *(v11 + 2) = v56;
                            v13[1] = v62;
                            goto LABEL_64;
                          }

                          v59 = *v47;
                          *v13 = *v47;
                          *v47 = v58;
                          v13[1] = v46;
                          v13[3] = v56;
                          if (v46 <= v57)
                          {
                            LOWORD(v56) = v46;
                            v58 = v59;
                            goto LABEL_63;
                          }

                          v60 = *v35;
                          *v35 = v59;
                          *v13 = v60;
                        }

                        else
                        {
                          v58 = *v35;
                          if (v46 <= v56)
                          {
                            *v35 = *v13;
                            *v13 = v58;
                            *(v13 - 1) = v56;
                            v13[1] = v57;
                            if (v46 <= v57)
                            {
                              LOWORD(v56) = v57;
                              goto LABEL_63;
                            }

                            *v13 = *v47;
                            *v47 = v58;
                            v33 = v13 + 1;
                          }

                          else
                          {
                            *v35 = *v47;
                            *v47 = v58;
                          }

                          v15 = v13 + 3;
                        }

                        *v33 = v46;
                        *v15 = v57;
                        v58 = *v13;
                        LOWORD(v56) = v13[1];
                        goto LABEL_63;
                      }

                      v53 = *(v11 + 8);
                      *(v11 + 8) = *v47;
                      *v47 = v53;
                      v54 = (v13 + 3);
                    }

                    else
                    {
                      v50 = *(v11 + 8);
                      if (result <= v46)
                      {
                        *(v11 + 8) = *v47;
                        *v47 = v50;
                        *(v11 + 10) = v46;
                        v13[3] = v49;
                        v46 = v49;
                        if (*v10 <= v49)
                        {
                          goto LABEL_53;
                        }

                        *v47 = *(a2 - 6);
                        *(a2 - 6) = v50;
                        v48 = (v13 + 3);
                      }

                      else
                      {
                        *(v11 + 8) = *(a2 - 6);
                        *(a2 - 6) = v50;
                      }

                      v54 = a2 - 10;
                    }

                    v55 = *v48;
                    *v48 = *v54;
                    *v54 = v55;
                    v46 = v13[3];
                    goto LABEL_53;
                  }

                  v42 = *(v11 + 4);
                  *(v11 + 4) = *v35;
                  *v35 = v42;
                  v43 = (v13 - 1);
                }

                else
                {
                  v39 = *(v11 + 4);
                  if (v38 <= v34)
                  {
                    *(v11 + 4) = *v35;
                    *v35 = v39;
                    *(v11 + 6) = v34;
                    *(v13 - 1) = v37;
                    if (*v156 <= v37)
                    {
                      goto LABEL_43;
                    }

                    *v35 = *(a2 - 4);
                    *(a2 - 4) = v39;
                    v36 = v13 - 1;
                  }

                  else
                  {
                    *(v11 + 4) = *(a2 - 4);
                    *(a2 - 4) = v39;
                  }

                  v43 = a2 - 6;
                }

                v45 = *v36;
                *v36 = *v43;
                *v43 = v45;
                goto LABEL_43;
              }

              v27 = *v11;
              *v11 = *v13;
              *v13 = v27;
              v28 = (v13 + 1);
            }

            else
            {
              v19 = *v11;
              if (v14 <= v16)
              {
                *v11 = *v13;
                *v13 = v19;
                *(v11 + 2) = v16;
                v13[1] = v18;
                if (*v9 <= v18)
                {
                  goto LABEL_29;
                }

                *v13 = *v8;
                *v8 = v19;
                v17 = (v13 + 1);
              }

              else
              {
                *v11 = *v8;
                *v8 = v19;
              }

              v28 = a2 - 2;
            }

            v32 = *v17;
            *v17 = *v28;
            *v28 = v32;
            goto LABEL_29;
          }

          v20 = (v11 + 2);
          v21 = *(v11 + 2);
          v22 = (v13 + 1);
          v23 = v13[1];
          if (v21 <= v23)
          {
            if (v14 > v21)
            {
              v29 = *v11;
              *v11 = *v8;
              *v8 = v29;
              v30 = *(v11 + 2);
              *(v11 + 2) = *v9;
              *v9 = v30;
              if (*(v11 + 2) > *v22)
              {
                v31 = *v13;
                *v13 = *v11;
                *v11 = v31;
LABEL_38:
                v44 = *v22;
                *v22 = *v20;
                *v20 = v44;
              }
            }
          }

          else
          {
            v24 = *v13;
            if (v14 > v21)
            {
              *v13 = *v8;
              *v8 = v24;
LABEL_37:
              v20 = a2 - 2;
              goto LABEL_38;
            }

            *v13 = *v11;
            *v11 = v24;
            v13[1] = v21;
            *(v11 + 2) = v23;
            if (*v9 > v23)
            {
              *v11 = *v8;
              *v8 = v24;
              v22 = (v11 + 2);
              goto LABEL_37;
            }
          }

LABEL_64:
          --a3;
          if ((a4 & 1) != 0 || *(v11 - 2) > *(v11 + 2))
          {
            break;
          }

          v78 = *v11;
          v79 = HIWORD(*v11);
          if (*v9 >= v79)
          {
            v82 = v11 + 4;
            do
            {
              v11 = v82;
              if (v82 >= a2)
              {
                break;
              }

              v83 = *(v82 + 2);
              v82 += 4;
            }

            while (v83 >= v79);
          }

          else
          {
            v80 = v11;
            do
            {
              v11 = v80 + 4;
              v81 = *(v80 + 6);
              v80 += 4;
            }

            while (v81 >= v79);
          }

          v84 = a2;
          if (v11 < a2)
          {
            v85 = a2;
            do
            {
              v84 = v85 - 4;
              v86 = *(v85 - 1);
              v85 -= 4;
            }

            while (v86 < v79);
          }

          while (v11 < v84)
          {
            v87 = *v11;
            *v11 = *v84;
            *v84 = v87;
            v88 = *(v11 + 2);
            *(v11 + 2) = *(v84 + 1);
            *(v84 + 1) = v88;
            do
            {
              v89 = *(v11 + 6);
              v11 += 4;
            }

            while (v89 >= v79);
            do
            {
              v90 = *(v84 - 1);
              v84 -= 4;
            }

            while (v90 < v79);
          }

          if (v11 - 4 != v7)
          {
            *v7 = *(v11 - 4);
            *(v7 + 2) = *(v11 - 2);
          }

          a4 = 0;
          *(v11 - 4) = v78;
          *(v11 - 2) = v79;
        }

        v63 = *v11;
        v64 = HIWORD(*v11);
        v65 = v11;
        do
        {
          v66 = v65;
          v65 += 4;
        }

        while (*(v66 + 6) > v64);
        v67 = a2;
        if (v66 == v11)
        {
          v70 = a2;
          while (v65 < v70)
          {
            v68 = v70 - 4;
            v71 = *(v70 - 1);
            v70 -= 4;
            if (v71 > v64)
            {
              goto LABEL_76;
            }
          }

          v68 = v70;
        }

        else
        {
          do
          {
            v68 = v67 - 4;
            v69 = *(v67 - 1);
            v67 -= 4;
          }

          while (v69 <= v64);
        }

LABEL_76:
        v11 = v65;
        if (v65 < v68)
        {
          v72 = v68;
          do
          {
            v73 = *v11;
            *v11 = *v72;
            *v72 = v73;
            v74 = *(v11 + 2);
            *(v11 + 2) = v72[1];
            v72[1] = v74;
            do
            {
              v75 = *(v11 + 6);
              v11 += 4;
            }

            while (v75 > v64);
            do
            {
              v76 = *(v72 - 1);
              v72 -= 2;
            }

            while (v76 <= v64);
          }

          while (v11 < v72);
        }

        if (v11 - 4 != v7)
        {
          *v7 = *(v11 - 4);
          *(v7 + 2) = *(v11 - 2);
        }

        *(v11 - 4) = v63;
        *(v11 - 2) = v64;
        if (v65 >= v68)
        {
          break;
        }

LABEL_87:
        result = sub_26233BE54(v7, (v11 - 4), a3, a4 & 1);
        a4 = 0;
      }

      v77 = sub_26233CB9C(v7, (v11 - 4));
      result = sub_26233CB9C(v11, a2);
      if (result)
      {
        break;
      }

      if (!v77)
      {
        goto LABEL_87;
      }
    }

    a2 = (v11 - 4);
    if (!v77)
    {
      continue;
    }

    return result;
  }
}

__int16 *sub_26233CA24(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v4 = a2[1];
  v5 = result + 1;
  v6 = (a3 + 1);
  v7 = a3[1];
  if (v4 <= result[1])
  {
    if (v7 > v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (a2[1] > *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v7 = *v6;
    if (v7 > v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] > v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    if (a3[1] > a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      if (a2[1] > *v5)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        v21 = result[1];
        result[1] = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

BOOL sub_26233CB9C(__int16 *a1, char *a2)
{
  v4 = (a2 - a1) >> 2;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = a1 + 3;
      v18 = a1[3];
      v19 = a1 + 1;
      v20 = a1[1];
      v21 = *(a2 - 1);
      if (v18 <= v20)
      {
        if (v21 <= v18)
        {
          return 1;
        }

        v29 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v30;
        if (a1[3] <= a1[1])
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 <= v18)
        {
          *a1 = a1[2];
          a1[2] = v22;
          a1[1] = v18;
          a1[3] = v20;
          if (*(a2 - 1) <= v20)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v22;
          v19 = a1 + 3;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v22;
        }

        v17 = (a2 - 2);
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_26233CA24(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) > a1[7])
        {
          v7 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = a1[7];
          v10 = a1[5];
          if (v9 > v10)
          {
            v11 = a1[4];
            v12 = a1[6];
            a1[4] = v12;
            a1[6] = v11;
            a1[5] = v9;
            a1[7] = v10;
            v13 = a1[3];
            if (v9 > v13)
            {
              v14 = a1[2];
              a1[2] = v12;
              a1[4] = v14;
              a1[3] = v9;
              a1[5] = v13;
              v15 = a1[1];
              if (v9 > v15)
              {
                v16 = *a1;
                *a1 = v12;
                a1[2] = v16;
                a1[1] = v9;
                a1[3] = v15;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_26233CA24(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) > a1[1])
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = a1[3];
  v25 = a1 + 1;
  v24 = a1[1];
  v27 = a1 + 5;
  v26 = a1[5];
  if (v23 > v24)
  {
    v28 = *a1;
    if (v26 <= v23)
    {
      *a1 = a1[2];
      a1[2] = v28;
      a1[1] = v23;
      a1[3] = v24;
      if (v26 <= v24)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v28;
      v25 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v28;
    }

    goto LABEL_33;
  }

  if (v26 > v23)
  {
    v32 = a1[2];
    v33 = a1[4];
    a1[2] = v33;
    a1[4] = v32;
    a1[3] = v26;
    a1[5] = v23;
    if (v26 > v24)
    {
      v34 = *a1;
      *a1 = v33;
      a1[2] = v34;
      v27 = a1 + 3;
LABEL_33:
      *v25 = v26;
      *v27 = v24;
    }
  }

LABEL_34:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = a1 + 4;
  while (1)
  {
    if (v36[1] > v39[1])
    {
      v40 = *v36;
      v41 = v37;
      while (1)
      {
        *(a1 + v41 + 12) = *(a1 + v41 + 8);
        if (v41 == -8)
        {
          break;
        }

        v42 = *(a1 + v41 + 6);
        v41 -= 4;
        if (v42 >= HIWORD(v40))
        {
          v43 = (a1 + v41 + 12);
          goto LABEL_42;
        }
      }

      v43 = a1;
LABEL_42:
      *v43 = v40;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v39 = v36;
    v37 += 4;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}