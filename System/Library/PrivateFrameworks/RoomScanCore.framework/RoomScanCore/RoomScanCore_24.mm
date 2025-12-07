float sub_26237865C(__int128 *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(&v2 + 1) - v2;
  if (*(&v2 + 1) == v2)
  {
    return 0.0;
  }

  sub_26230C854(v14, a2);
  v6 = (v3 >> 2) >> 1;
  v7 = (v2 + 4 * v6);
  if (v7 != *(&v2 + 1))
  {
    sub_26230C8EC(v2, v7, *(&v2 + 1), v14);
  }

  sub_26230C710(v14);
  v8 = *a1;
  v9 = *(*a1 + 4 * v6);
  if ((v3 & 4) == 0)
  {
    v10 = *(a1 + 1);
    sub_26230C854(v13, a2);
    v11 = (4 * v6 + v8 - 4);
    if (v11 != v10)
    {
      sub_26230C8EC(v8, v11, v10, v13);
    }

    sub_26230C710(v13);
  }

  return v9;
}

void sub_262378780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26230C710(va);
  _Unwind_Resume(a1);
}

void sub_2623787A8(float *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v2;
    if (*&v5 <= v4)
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
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }
}

uint64_t *sub_262378BB4(void *a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_262378DD8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2621C7150(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_262378E34(int a1, int a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = a2;
    do
    {
      if (*(v10 + 4) != 3)
      {
        v12 = v10[3];
        v13 = v10[4];
        while (v12 != v13)
        {
          v14 = *v12;
          v15 = v12[1];
          if (v14 == a1 && (v15 & 0x80000000) == 0 && objc_msgSend_count(v9, v7, v8) > v15 && ((objc_msgSend_objectAtIndexedSubscript_(v9, v7, v15), (v16 = objc_claimAutoreleasedReturnValue()) == 0) ? (v17 = 0) : (v17 = v16[20]), v16, v17 == v11) || (v14 & 0x80000000) == 0 && v15 == a1 && objc_msgSend_count(v9, v7, v8) > v14 && ((objc_msgSend_objectAtIndexedSubscript_(v9, v7, v14), (v18 = objc_claimAutoreleasedReturnValue()) == 0) ? (v19 = 0) : (v19 = v18[20]), v18, v19 == v11))
          {
            v20 = 1;
            goto LABEL_25;
          }

          v12 += 2;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  v20 = 0;
LABEL_25:

  return v20;
}

uint64_t *sub_262378F74(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621CC71C(a1, a2);
  }

  return a1;
}

void sub_262378FDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_262378FF8(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = objc_msgSend_walls(v1, v2, v3);
  v7 = objc_msgSend_count(v4, v5, v6);

  v10 = 0uLL;
  if (v7)
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v11 = objc_msgSend_walls(v1, v8, v9);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v39, 16);
    if (v15)
    {
      v16 = *v36;
      v33 = 0u;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          objc_msgSend_quad(v18, v13, v14);
          v32 = v19;
          objc_msgSend_quad(v18, v20, v21);
          v23.i64[0] = 0x3F0000003F000000;
          v23.i64[1] = 0x3F0000003F000000;
          v33 = vaddq_f32(v33, vmulq_f32(vaddq_f32(v32, v22), v23));
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v35, v39, 16);
      }

      while (v15);
    }

    else
    {
      v33 = 0u;
    }

    v26 = objc_msgSend_walls(v1, v24, v25);
    v29 = objc_msgSend_count(v26, v27, v28);

    *v30.i32 = v29;
    v10 = vdivq_f32(v33, vdupq_lane_s32(v30, 0));
  }

  v34 = v10;

  return v34;
}

uint64_t sub_2623791DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = 0.0;
  v6 = 0.0;
  if (a2)
  {
    v6 = *(a2 + 16);
  }

  if (v4)
  {
    v5 = v4[4];
  }

  if (v6 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v6 > v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

__n128 sub_26237922C(void *a1)
{
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v8 = v4;
  objc_msgSend_quad(v1, v5, v6);

  return v8;
}

uint64_t sub_262379288(int a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v5 = *(&a3 + 1);
    v6 = *(&a2 + 1);
    LODWORD(v7) = vsub_f32(*&a4, *&a3).u32[0];
    v8 = *(&a4 + 1);
    v9 = *(&a4 + 1) - *(&a3 + 1);
    LODWORD(v10) = vsub_f32(*&a5, *&a3).u32[0];
    v11 = *(&a5 + 1);
    v12 = *(&a5 + 1) - *(&a3 + 1);
  }

  else
  {
    v8 = *(&a4 + 1);
    v6 = *(&a2 + 1);
    if (fabsf(vsub_f32(*&a4, *&a2).f32[0]) < 0.00001 && vabds_f32(*(&a4 + 1), *(&a2 + 1)) < 0.00001)
    {
      return 0;
    }

    v11 = *(&a5 + 1);
    if (fabsf(vsub_f32(*&a5, *&a2).f32[0]) < 0.00001 && vabds_f32(*(&a5 + 1), *(&a2 + 1)) < 0.00001)
    {
      return 0;
    }

    LODWORD(v7) = vsub_f32(*&a4, *&a3).u32[0];
    v5 = *(&a3 + 1);
    if (fabsf(v7) < 0.00001 && vabds_f32(*(&a4 + 1), *(&a3 + 1)) < 0.00001)
    {
      return 0;
    }

    v9 = *(&a4 + 1) - *(&a3 + 1);
    LODWORD(v10) = vsub_f32(*&a5, *&a3).u32[0];
    v12 = *(&a5 + 1) - *(&a3 + 1);
    if (fabsf(v10) < 0.00001 && vabds_f32(*(&a5 + 1), *(&a3 + 1)) < 0.00001)
    {
      return 0;
    }
  }

  result = 0;
  v14 = ((v5 - v6) * v7) - ((*&a3 - *&a2) * v9);
  if (fabsf(v14) >= 0.00001)
  {
    v15 = ((v5 - v6) * v10) - ((*&a3 - *&a2) * v12);
    if (fabsf(v15) >= 0.00001)
    {
      v16 = v11 - v8;
      v17 = *&a5 - *&a4;
      v18 = (v16 * (*&a2 - *&a5)) - (v17 * (v6 - v11));
      if (fabsf(v18) >= 0.00001)
      {
        v19 = (v16 * (*&a3 - *&a5)) - (v17 * (v5 - v11));
        if (fabsf(v19) >= 0.00001)
        {
          return ((v14 > 0.0) ^ (v15 > 0.0)) & ((v18 > 0.0) ^ (v19 > 0.0));
        }
      }
    }
  }

  return result;
}

uint64_t sub_2623793EC(double a1, double a2, double a3, double a4, double a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v23 = a1;
  *v24 = a2;
  *&v24[1] = a3;
  *&v24[2] = a4;
  v8 = *(&a5 + 1);
  v9 = v24;
  HIDWORD(v10) = HIDWORD(a5);
  LODWORD(v10) = 2139095039;
  v19 = a5;
  v20 = v10;
  while (1)
  {
    if (v5 == 3)
    {
      v11 = &v23;
    }

    else
    {
      v11 = v9;
    }

    v21 = *v11;
    v22 = *(v9 - 1);
    if (!sub_262379288(1, a5, v20, v22, *v11))
    {
      a5 = v19;
      goto LABEL_9;
    }

    a5 = v19;
    if (fabsf(((v8 - *(&v22 + 1)) * vsub_f32(*&v21, *&v19).f32[0]) - (vsub_f32(*&v19, *&v22).f32[0] * (*(&v21 + 1) - v8))) < 0.00001)
    {
      break;
    }

    ++v7;
LABEL_9:
    v6 = v5 > 2;
    ++v9;
    if (++v5 == 4)
    {
      return v7 & 1;
    }
  }

  v13 = fminf(*&v22, *&v21);
  v14 = *&v19 > fmaxf(*&v22, *&v21) || *&v19 < v13;
  v15 = fmaxf(*(&v22 + 1), *(&v21 + 1));
  v16 = fminf(*(&v22 + 1), *(&v21 + 1));
  if (v14 || v8 > v15 || v8 < v16)
  {
    if (!v6)
    {
      return 0;
    }

    return v7 & 1;
  }

  if (v6)
  {
    return v7 & 1;
  }

  return 1;
}

__n128 sub_26237952C(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v27 = v4;
    v28 = v5;
    v8 = a1;
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = vsubq_f32(a3[3], *a3);
    v11 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v10, v10)));
    v12 = vrsqrte_f32(v11);
    v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
    *v10.i8 = vmul_n_f32(*v10.i8, vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).f32[0]);
    v14 = v10;
    v14.i32[2] = 0;
    v15 = vmlaq_f32(vmulq_f32(v14, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
    v16 = vuzp2q_s32(v15, v10);
    v10.i64[1] = vextq_s8(v15, v15, 8uLL).u64[0];
    v17 = vmulq_f32(vaddq_f32(*a3, a3[6]), v9);
    v10.i32[1] = 0;
    v24 = v17;
    v25 = v10;
    v18 = vextq_s8(v16, v15, 8uLL);
    v18.i32[1] = 0;
    v23 = v18;
    v17.i32[0] = 0;
    v17.i32[1] = 1.0;
    v17.i32[2] = v15.i32[1];
    v22 = v17;
    do
    {
      v19 = *v8++;
      v20 = vsubq_f32(v19, v24);
      v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v20.f32[0]), v23, *v20.f32, 1), v22, v20, 2);
      sub_2621D9F60(a4, &v26);
    }

    while (v8 != a2);
  }

  return result;
}

void sub_26237964C(float32x2_t *a1, float32x2_t *a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, float a8, int32x2_t a9)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v12 = 0uLL;
  *__p = 0u;
  if (a1 != a2)
  {
    v14 = a1;
    v15 = vdup_lane_s32(a9, 0);
    do
    {
      v23[0] = vmul_n_f32(vadd_f32(v15, *v14), a8);
      sub_2621CBA84(__p, v23);
      ++v14;
    }

    while (v14 != a2);
    v12 = *__p;
  }

  if (v12 != *(&v12 + 1))
  {
    sub_2621CBEC8(1uLL);
  }

  v16 = 0;
  v17 = (a3[1] - *a3) >> 2;
  v23[0] = 0;
  v23[1] = v17;
  v18 = (a5[1] - *a5) >> 4;
  v23[2] = (a4[1] - *a4) >> 3;
  v23[3] = v18;
  v19 = 1;
  while (1)
  {
    if (v23[v19] < v16)
    {
      v16 = v23[v19];
    }

    if (++v19 == 4)
    {
      operator new();
    }
  }
}

void sub_262379C2C(void *a1, int32x2_t *a2, int32x2_t *a3, float32x4_t a4, float32x4_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v15 = vmulq_f32(vaddq_f32(a4, a5), v8);
    v9 = vsubq_f32(a5, a4);
    v10 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v9, v9)));
    v11 = vrsqrte_f32(v10);
    v12 = vmul_f32(v11, vrsqrts_f32(v10.u32[0], vmul_f32(v11, v11)));
    v13 = vmul_n_f32(*v9.f32, vmul_f32(v12, vrsqrts_f32(v10.u32[0], vmul_f32(v12, v12))).f32[0]);
    do
    {
      *v14.f32 = vmul_n_f32(v13, COERCE_FLOAT(*v6));
      *&v14.u32[2] = vdup_lane_s32(*v6, 1);
      v16 = vaddq_f32(v15, v14);
      sub_2621D9F60(a1, &v16);
      ++v6;
    }

    while (v6 != a3);
  }
}

void sub_262379CF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_262379D10(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a1, a2);
  v4 = vmul_f32(v3, v3);
  v4.i32[0] = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v5 = vrsqrte_f32(v4.u32[0]);
  v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
  v7 = vmul_n_f32(v3, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]);
  v8 = vsub_f32(a3, a2);
  v9 = vmul_f32(v8, v8);
  v9.i32[0] = vadd_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
  v10 = vrsqrte_f32(v9.u32[0]);
  v11 = vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)));
  v18 = vmul_n_f32(v8, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
  v19 = v7;
  v12 = vaddv_f32(vmul_f32(v7, v18));
  v13 = 1.0;
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  if (v12 >= -1.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1.0;
  }

  v15 = acosf(v14);
  if (((-v19.f32[1] * v18.f32[0]) + (v19.f32[0] * v18.f32[1])) < 0.0)
  {
    v15 = -v15;
  }

  v16 = __sincosf_stret(v15);
  return v16.__sinval / v16.__cosval;
}

void sub_26237A088(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_26237A1F8(float *a1, uint64_t *a2, uint64_t *a3, float a4)
{
  v5 = a4;
  v6 = a2;
  ii = a1;
  v773 = *MEMORY[0x277D85DE8];
  v8 = &qword_2623A8000;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    goto LABEL_78;
  }

  v12 = a1[2];
  v11 = a1[3];
  v4 = a1[5];
  v742 = v11;
  do
  {
    v14 = *(v9 + 40);
    v13 = *(v9 + 48);
    if (v13 == v14)
    {
      v16 = 0.0;
    }

    else
    {
      v15 = vsubq_f32(*(*(v14 + 40) + 16), *(*(v13 - 80) + 64));
      v16 = sqrtf(vaddv_f32(*&vmulq_f32(v15, v15)));
    }

    v18 = *(v9 + 88) < v11 && v16 < v12;
    if (v18 || v16 < v4)
    {
      memset(v765, 0, 24);
      if (v13 == v14)
      {
        v32 = 0;
      }

      else
      {
        v19 = v6;
        v20 = *v6;
        v21 = v19[1];
        if (v20 == v21)
        {
          v32 = 0;
          v6 = a2;
        }

        else
        {
          v22 = v4;
          v23 = *(*(v14 + 40) + 16);
          v24 = *(*(v13 - 80) + 64);
          do
          {
            if (*(v20 + 92) != *(v9 + 92))
            {
              v25 = *(v20 + 40);
              v26 = *(v20 + 48);
              while (v25 != v26)
              {
                v27 = *(v25 + 40);
                v747 = *(v27 + 16);
                v753 = *(v27 + 64);
                v28 = sub_2621DC76C(*&v747, v23, v24, 0.00001);
                *&v29 = sub_2621DC76C(*&v753, v23, v24, 0.00001);
                if (*&v29 >= v28)
                {
                  v30 = v28;
                }

                else
                {
                  v30 = *&v29;
                }

                if (v30 <= ii[4])
                {
                  if (v28 >= *&v29)
                  {
                    *&v29 = *(&v753 + 2);
                  }

                  else
                  {
                    *&v29 = *(&v747 + 2);
                  }

                  DWORD1(v29) = *(v25 + 64);
                  *(&v29 + 2) = v30;
                  *__p = v29;
                  sub_2621D9F60(v765, __p);
                }

                v25 += 120;
              }
            }

            v20 += 96;
          }

          while (v20 != v21);
          v32 = *v765;
          v31 = *&v765[8];
          if (*&v765[8] != *v765)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v4 = v22;
            v11 = v742;
            do
            {
              v36 = *v32;
              if (COERCE_FLOAT(HIDWORD(v32->n128_u64[0])) > 0.3 && v36.n128_f32[2] < 0.1)
              {
                v38 = v35 - v33;
                v39 = v38 + 1;
                if ((v38 + 1) >> 60)
                {
                  sub_2621CBEB0();
                }

                if (-v33 >> 3 > v39)
                {
                  v39 = -v33 >> 3;
                }

                if (-v33 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v40 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v40 = v39;
                }

                if (v40)
                {
                  sub_2621CBF10(v40);
                }

                v41 = v34 - v33;
                v42 = (16 * v38 - (v34 - v33));
                *(16 * v38) = v36;
                v37 = 16 * v38 + 16;
                memcpy(v42, v33, v41);
                if (v33)
                {
                  operator delete(v33);
                }

                v33 = v42;
                v35 = (16 * v38 + 16);
              }

              else
              {
                v37 = v34;
              }

              ++v32;
              v34 = v37;
            }

            while (v32 != v31);
            v43 = v35 - v33;
            if (v35 == v33)
            {
              v32 = *v765;
              v49 = *&v765[8];
              v50 = (*&v765[8] - *v765) >> 4;
              v6 = a2;
              if (v50 < 129)
              {
                v53 = 0;
LABEL_67:
                sub_262381714(v32, v49, v50, 0, v53, v36);
              }

              else
              {
                v51 = (*&v765[8] - *v765) >> 4;
                while (1)
                {
                  v52 = operator new(16 * v51, MEMORY[0x277D826F0]);
                  if (v52)
                  {
                    break;
                  }

                  v53 = v51 >> 1;
                  v226 = v51 > 1;
                  v51 >>= 1;
                  if (!v226)
                  {
                    goto LABEL_67;
                  }
                }

                v55 = v52;
                sub_262381714(v32, v49, v50, v52, v51, v36);
                operator delete(v55);
              }

              v56 = *v32;
              ii = a1;
              v8 = &qword_2623A8000;
              if (COERCE_FLOAT(HIDWORD(v32->n128_u64[0])) < a1[15])
              {
                v56.n128_f32[0] = sub_26237E68C(*a2, a2[1], 2.7);
              }

              sub_2622E8D88(v9, v56.n128_f32[0]);
              if (v33)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v44 = v43 >> 4;
              v6 = a2;
              if (v43 >> 4 < 129)
              {
                v47 = 0;
                v8 = &qword_2623A8000;
LABEL_65:
                sub_26238150C(v33, v35, v44, 0, v47, v36);
              }

              else
              {
                v45 = v43 >> 4;
                v8 = &qword_2623A8000;
                while (1)
                {
                  v46 = operator new(16 * v45, MEMORY[0x277D826F0]);
                  if (v46)
                  {
                    break;
                  }

                  v47 = v45 >> 1;
                  v226 = v45 > 1;
                  v45 >>= 1;
                  if (!v226)
                  {
                    goto LABEL_65;
                  }
                }

                v54 = v46;
                sub_26238150C(v33, v35, v44, v46, v45, v36);
                operator delete(v54);
              }

              sub_2622E8D88(v9, v33->n128_f32[0]);
              v32 = *v765;
              ii = a1;
LABEL_74:
              operator delete(v33);
              if (!v32)
              {
                goto LABEL_76;
              }
            }

LABEL_75:
            operator delete(v32);
            goto LABEL_76;
          }

          v6 = a2;
          v8 = &qword_2623A8000;
          v4 = v22;
          v11 = v742;
        }
      }

      v48 = sub_26237E68C(*v6, v6[1], 2.7);
      sub_2622E8D88(v9, v48);
      if (v32)
      {
        goto LABEL_75;
      }
    }

LABEL_76:
    v9 += 96;
  }

  while (v9 != v10);
  v9 = *v6;
  v10 = v6[1];
  v5 = a4;
LABEL_78:
  v57 = *(v8 + 219);
  *&v58 = sub_26237E68C(v9, v10, v57);
  v65 = LODWORD(v58);
  v66 = *v6;
  v67 = v6[1];
  if (*v6 == v67)
  {
    goto LABEL_108;
  }

  while (2)
  {
    while (2)
    {
      v68 = *(v66 + 40);
      if (0xEEEEEEEEEEEEEEEFLL * ((*(v66 + 48) - v68) >> 3) >= 2)
      {
        v69 = 120;
        v70 = 1;
        while (1)
        {
          v71 = (v68 + v69);
          sub_26237EA34(__p, a1, v68 + v69 - 120, v58, v59.n128_f64[0], v60, v61, v62, v63, v64);
          sub_26237EA34(&v769, a1, v71, v72, v73, v74, v75, v76, v77, v78);
          if ((__p[1] & 1) == 0 && (v769.i8[8] & 1) == 0)
          {
            break;
          }

          ++v70;
          v68 = *(v66 + 40);
          v69 += 120;
          if (0xEEEEEEEEEEEEEEEFLL * ((*(v66 + 48) - v68) >> 3) <= v70)
          {
            goto LABEL_84;
          }
        }

        v79 = *(v71 - 10);
        v80 = v79[1].f32[2];
        v81 = v71[5];
        v82 = v81[1].f32[2];
        v83 = vsubq_f32(v79[1], v79[4]);
        v84 = sqrtf(vaddv_f32(*&vmulq_f32(v83, v83)));
        if (v84 >= 0.1)
        {
          v87 = vsubq_f32(v81[1], v81[4]);
          v86 = sqrtf(vaddv_f32(*&vmulq_f32(v87, v87)));
        }

        else
        {
          v85 = vsubq_f32(v81[1], v81[4]);
          v86 = sqrtf(vaddv_f32(*&vmulq_f32(v85, v85)));
          if (v86 > 0.1)
          {
LABEL_99:
            v79[1].f32[2] = v82;
            *(*(v71 - 10) + 72) = v82;
            *(*(v71 - 10) + 64) = *(v71[5] + 64);
            v88 = v71[12];
            v89 = v71[13];
            if (v88 != v89)
            {
              v90 = (v71 - 3);
              do
              {
                *v765 = &unk_2874EF020;
                v91 = *(v88 + 11);
                *&v765[8] = *(v88 + 8);
                *&v765[11] = v91;
                sub_2622051F4(v90, v765);
                v88 += 16;
              }

              while (v88 != v89);
            }

            memset(v765, 0, 24);
            v92 = *(v66 + 40);
            v93 = 120 * v70 + v92;
            do
            {
              sub_262324E74(v765, v92);
              v92 += 120;
            }

            while (v92 != v93);
            v94 = *(v66 + 48);
            for (i = 120 * v70 + *(v66 + 40) + 120; i != v94; i += 120)
            {
              sub_262324E74(v765, i);
            }

            sub_2622E9198(v66, v765);
            v771.i64[0] = v765;
            sub_262324F40(&v771);
            continue;
          }
        }

        if (v84 <= 0.1 || v86 >= 0.1)
        {
          if (v80 < v79[4].f32[2])
          {
            v80 = v79[4].f32[2];
          }

          if (v82 < v81[4].f32[2])
          {
            v82 = v81[4].f32[2];
          }

          if (v80 >= v82)
          {
            v82 = v80;
          }
        }

        else
        {
          v82 = v79[1].f32[2];
        }

        goto LABEL_99;
      }

      break;
    }

LABEL_84:
    v66 += 96;
    if (v66 != v67)
    {
      continue;
    }

    break;
  }

  v66 = *a2;
  v67 = a2[1];
  ii = a1;
LABEL_108:
  while (v66 != v67)
  {
    v769.i64[0] = &unk_2874EF020;
    v769.i32[2] = 0;
    *(&v769.i32[2] + 3) = 0;
    memset(v765, 0, 24);
    v97 = *(v66 + 40);
    v96 = *(v66 + 48);
    if (v97 != v96)
    {
      v98 = 0;
      v99 = 0;
      v100 = 0uLL;
      v101 = *(v66 + 40);
      do
      {
        for (j = *(v101 + 96); j != *(v101 + 104); j += 16)
        {
          ++v99;
          v98 += *(j + 12);
          v59.n128_u32[0] = *(j + 8);
          v59.n128_u64[0] = vmovl_u8(v59.n128_u64[0]).u64[0];
          v100 = vaddw_u16(v100, v59.n128_u64[0]);
        }

        v101 += 120;
      }

      while (v101 != v96);
      if (v99)
      {
        v103 = vcvtq_f32_s32(v100);
        *v100.i32 = v99;
        v104 = vsubq_f32(*(*(v97 + 40) + 16), *(*(v96 - 80) + 64));
        v105 = sqrtf(vaddv_f32(*&vmulq_f32(v104, v104)));
        *v103.f32 = vmovn_s32(vcgtq_f32(vdivq_f32(v103, vdupq_lane_s32(*v100.i8, 0)), vzip2q_s32(vzip1q_s32(*(ii + 6), vextq_s8(*(ii + 6), *(ii + 6), 0xCuLL)), *(ii + 6))));
        v769.i8[10] = v103.i8[4] & 1;
        v769.i8[8] = v103.i8[0] & 1;
        v769.i8[9] = v103.i8[2] & 1;
        v106 = (v103.i8[6] & 1) != 0 && v105 <= ii[11];
        v769.i8[11] = v106;
        v107 = (v98 / *v100.i32) > ii[10] && v105 <= ii[11];
        v769.i8[12] = v107;
      }
    }

    __p[0] = v765;
    sub_26220532C(__p);
    if ((v769.i8[8] & 1) == 0)
    {
      v109 = *(v66 + 40);
      v108 = *(v66 + 48);
      if (0xEEEEEEEEEEEEEEEFLL * ((v108 - v109) >> 3) >= 3)
      {
        v110 = -3.4028e38;
        if (v109 != v108)
        {
          v111 = *(v66 + 40);
          do
          {
            v112 = *(v111 + 40);
            v113 = *(v112 + 24);
            if (v113 < *(v112 + 72))
            {
              v113 = *(v112 + 72);
            }

            if (v110 < v113)
            {
              v110 = v113;
            }

            v111 += 120;
          }

          while (v111 != v108);
        }

        *(*(v109 + 40) + 64) = *(*(v108 - 80) + 64);
        v114 = *(v66 + 40);
        *(*(v114 + 40) + 24) = v110;
        *(*(v114 + 40) + 72) = v110;
        memset(v765, 0, 24);
        v115 = *(v66 + 40);
        v116 = *(v66 + 48);
        if (v115 != v116)
        {
          do
          {
            v117 = *(v115 + 96);
            v118 = *(v115 + 104);
            while (v117 != v118)
            {
              sub_2622051F4(v765, v117);
              v117 += 16;
            }

            v115 += 120;
          }

          while (v115 != v116);
          v115 = *(v66 + 40);
        }

        v120 = *(v115 + 96);
        v119 = *(v115 + 104);
        v121 = v115;
        if (v119 != v120)
        {
          v122 = v119 - 2;
          v123 = v119 - 2;
          v124 = v119 - 2;
          do
          {
            v125 = *v124;
            v124 -= 2;
            (*v125)(v123);
            v122 -= 2;
            v160 = v123 == v120;
            v123 = v124;
          }

          while (!v160);
          v121 = *(v66 + 40);
        }

        *(v115 + 104) = v120;
        v126 = *v765;
        v127 = *&v765[8];
        if (*v765 != *&v765[8])
        {
          do
          {
            sub_2622051F4((v121 + 96), v126);
            v126 += 16;
          }

          while (v126 != v127);
          v121 = *(v66 + 40);
        }

        memset(__p, 0, 24);
        sub_262324E74(__p, v121);
        sub_2622E9198(v66, __p);
        v771.i64[0] = __p;
        sub_262324F40(&v771);
        __p[0] = v765;
        sub_26220532C(__p);
        ii = a1;
      }
    }

    v66 += 96;
  }

  memset(v765, 0, 24);
  do
  {
    LODWORD(v58) = v65;
  }

  while ((sub_262380F30(ii, a2, v765, 0, v58, v59, v60, v61, v62, v63, v64) & 1) != 0);
  LODWORD(v58) = v65;
  sub_262380F30(ii, a2, v765, 1, v58, v59, v60, v61, v62, v63, v64);
  if (*v765)
  {
    operator delete(*v765);
  }

  *&v128 = sub_26237E68C(*a2, a2[1], v57);
  v135 = *a2;
  v136 = a2[1];
  if (*a2 != v136)
  {
    v137 = *&v128;
    LODWORD(v128) = -1110651699;
    do
    {
      v139 = *(v135 + 40);
      v138 = *(v135 + 48);
      if (v138 != v139)
      {
        v140 = 0;
        do
        {
          v141 = v139 + 120 * v140;
          v142 = *(v141 + 40);
          LODWORD(v128) = *(v142 + 24);
          LODWORD(v129) = *(v142 + 72);
          if (*&v129 < *&v128)
          {
            LODWORD(v128) = *(v142 + 72);
          }

          if (*&v128 <= (v137 + -0.1))
          {
            LODWORD(v128) = *(v141 + 64);
            *&v129 = a1[14];
            if (*&v128 <= *&v129)
            {
              sub_26237EA34(&v769, a1, v139 + 120 * v140, v128, v129, v130, v131, v132, v133, v134);
              if (v769.u8[10] == 1)
              {
                sub_26237E7D0(v765, a1, v135, v140, *a2, a2[1]);
                memset(__p, 0, 24);
                v143 = *v765;
                v144 = *&v765[8];
                for (k = *v765; k != v144; k += 3)
                {
                  sub_2621D9F60(__p, k);
                }

                *&v128 = sub_262380154(__p, v137);
                *(*(v141 + 40) + 24) = LODWORD(v128);
                *(*(v141 + 40) + 72) = LODWORD(v128);
                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                if (v143)
                {
                  operator delete(v143);
                }
              }

              v139 = *(v135 + 40);
              v138 = *(v135 + 48);
            }
          }

          ++v140;
        }

        while (v140 < 0xEEEEEEEEEEEEEEEFLL * ((v138 - v139) >> 3));
      }

      v135 += 96;
    }

    while (v135 != v136);
    v135 = *a2;
    v136 = a2[1];
    ii = a1;
  }

  if (v135 != v136)
  {
    while (1)
    {
      v146 = *(v135 + 40);
      if (*(v135 + 48) != v146)
      {
        break;
      }

LABEL_226:
      v135 += 96;
      if (v135 == v136)
      {
        goto LABEL_227;
      }
    }

    v147 = 0;
    while (2)
    {
      v148 = v146 + 120 * v147;
      sub_26237EA34(__p, ii, v148, v128, v129, v130, v131, v132, v133, v134);
      ii = a1;
      if (BYTE3(__p[1]) == 1 && BYTE1(__p[1]) == 1)
      {
        v149 = *(v148 + 40);
        v4 = *(v149 + 24);
        v150 = *(v149 + 72);
        sub_26237FB9C(v765, v135, v147);
        v128 = *v765;
        v151 = *v765;
        if (*&v765[8] != *v765)
        {
          if (v4 >= v150)
          {
            v152 = v4;
          }

          else
          {
            v152 = v150;
          }

          v153 = *v765 + 8;
          *&v128 = v152 + 0.1;
          if (*v765 + 8 == *&v765[8])
          {
            v162 = *v765;
            if (*&v128 < COERCE_FLOAT(**v765))
            {
              goto LABEL_197;
            }

            goto LABEL_198;
          }

          v154 = **v765;
          v155 = *v765 + 8;
          v156 = *v765;
          v157 = (*v765 + 8);
          do
          {
            v158 = *v157++;
            v130 = *&v158;
            v159 = vcgt_f32(v154, v158).u8[0];
            v160 = (v159 & 1) == 0;
            if (v159)
            {
              v161 = -1;
            }

            else
            {
              v161 = 0;
            }

            *v131.i8 = vdup_n_s32(v161);
            v154 = vbsl_s8(*v131.i8, *&v130, v154);
            if (!v160)
            {
              v156 = v155;
            }

            v155 = v157;
          }

          while (v157 != *&v765[8]);
          v129 = *v156;
          if (*&v128 < COERCE_FLOAT(*v156))
          {
            v162 = *v765;
            do
            {
              if (*(v162 + 4) < *(v153 + 4))
              {
                v162 = v153;
              }

              v153 += 8;
            }

            while (v153 != *&v765[8]);
LABEL_197:
            v163 = *(*v765 + ((v162 - *v765) << 29 >> 29));
            if (*(&v163 + 1) < 0.5)
            {
LABEL_198:
              operator delete(*v765);
              break;
            }

LABEL_223:
            *(*(v148 + 40) + 24) = v163;
            *(*(v148 + 40) + 72) = v163;
LABEL_224:
            operator delete(v151);
LABEL_225:
            ++v147;
            v146 = *(v135 + 40);
            if (0xEEEEEEEEEEEEEEEFLL * ((*(v135 + 48) - v146) >> 3) <= v147)
            {
              goto LABEL_226;
            }

            continue;
          }
        }

        if (*v765)
        {
          goto LABEL_198;
        }
      }

      break;
    }

    if (BYTE4(__p[1]) != 1 || (__p[1] & 1) != 0)
    {
      goto LABEL_225;
    }

    v164 = *(v148 + 40);
    v4 = *(v164 + 24);
    v165 = *(v164 + 72);
    sub_26237FB9C(v765, v135, v147);
    v128 = *v765;
    v151 = *v765;
    if (*&v765[8] != *v765)
    {
      if (v165 >= v4)
      {
        *&v128 = v4;
      }

      else
      {
        *&v128 = v165;
      }

      v166 = *v765 + 8;
      v167 = **v765;
      if (*v765 + 8 == *&v765[8])
      {
        v175 = *v765;
        if (*&v128 <= (v167.f32[0] + 0.1))
        {
          goto LABEL_224;
        }

        goto LABEL_222;
      }

      v168 = *v765 + 8;
      v169 = *v765;
      v170 = (*v765 + 8);
      do
      {
        v171 = *v170++;
        v130 = *&v171;
        v172 = vcgt_f32(v171, v167).u8[0];
        v173 = (v172 & 1) == 0;
        if (v172)
        {
          v174 = -1;
        }

        else
        {
          v174 = 0;
        }

        *v131.i8 = vdup_n_s32(v174);
        v167 = vbsl_s8(*v131.i8, *&v130, v167);
        if (!v173)
        {
          v169 = v168;
        }

        v168 = v170;
      }

      while (v170 != *&v765[8]);
      v129 = *v169;
      *&v129 = COERCE_FLOAT(*v169) + 0.1;
      if (*&v128 > *&v129)
      {
        v175 = *v765;
        do
        {
          if (*(v175 + 4) < *(v166 + 4))
          {
            v175 = v166;
          }

          v166 += 8;
        }

        while (v166 != *&v765[8]);
LABEL_222:
        v163 = *(*v765 + ((v175 - *v765) << 29 >> 29));
        if (*(&v163 + 1) >= 0.5)
        {
          goto LABEL_223;
        }

        goto LABEL_224;
      }
    }

    if (*v765)
    {
      goto LABEL_224;
    }

    goto LABEL_225;
  }

LABEL_227:
  memset(v765, 0, 24);
  do
  {
    *&v128 = v5;
  }

  while ((sub_26237FC7C(ii, a2, v765, 0, v128, v129, v130, v131, v132, v133, v134) & 1) != 0);
  *&v128 = v5;
  sub_26237FC7C(ii, a2, v765, 1, v128, v129, v130, v131, v132, v133, v134);
  if (*v765)
  {
    operator delete(*v765);
  }

  v183 = *a2;
  n = a2[1];
  if (*a2 != n)
  {
    do
    {
      v185 = n;
      v186 = *(v183 + 40);
      if (*(v183 + 48) != v186)
      {
        v187 = 0;
        do
        {
          v188 = v186 + 120 * v187;
          sub_26237EA34(__p, ii, v188, *v176.i64, *v177.i64, *v178.i64, v179, v180, v181, v182);
          v189 = *(v188 + 40);
          v177.i32[0] = *(v189 + 72);
          v176.f32[0] = vabds_f32(*(v189 + 24), *v177.i32);
          ii = a1;
          if (v176.f32[0] < 0.05 && BYTE5(__p[1]) == 1 && BYTE1(__p[1]) == 1)
          {
            sub_26237E7D0(v765, a1, v183, v187, *a2, a2[1]);
            v190 = *v765;
            ii = a1;
            if (*&v765[8] != *v765)
            {
              v191 = *v765 + 48;
              v192 = *v765;
              if (*v765 + 48 != *&v765[8])
              {
                v176 = **v765;
                v192 = *v765;
                v193 = (*v765 + 48);
                do
                {
                  v194 = *v193;
                  v193 += 3;
                  v177 = v194;
                  v195 = vmovn_s32(vcgtq_f32(v176, v194)).u8[0];
                  v196 = (v195 & 1) == 0;
                  if (v195)
                  {
                    v197 = -1;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  v178 = vdupq_n_s32(v197);
                  v176 = vbslq_s8(v178, v177, v176);
                  if (!v196)
                  {
                    v192 = v191;
                  }

                  v191 = v193;
                }

                while (v193 != *&v765[8]);
              }

              v176.i32[0] = *v192;
              v198 = *(v188 + 40);
              v177.i32[0] = *(v198 + 24);
              if (*v177.i32 < *v192)
              {
                *(v198 + 24) = v176.i32[0];
                *(*(v188 + 40) + 72) = v176.i32[0];
              }
            }

            if (v190)
            {
              operator delete(v190);
            }
          }

          ++v187;
          v186 = *(v183 + 40);
        }

        while (0xEEEEEEEEEEEEEEEFLL * ((*(v183 + 48) - v186) >> 3) > v187);
      }

      v183 += 96;
      n = v185;
    }

    while (v183 != v185);
    v183 = *a2;
    n = a2[1];
  }

  v199 = ii[16];
  if (v183 != n)
  {
    while (2)
    {
      v201 = *(v183 + 40);
      v200 = *(v183 + 48);
      if ((-286331153 * ((v200 - v201) >> 3)) < 2)
      {
        goto LABEL_307;
      }

      v202 = 0;
      v203 = 0;
LABEL_256:
      v204 = *(v201 + v202 + 40);
      v4 = *(v204 + 24);
      v176.i32[0] = *(v204 + 72);
      v205 = *(v201 + v202 + 160);
      v177.i32[0] = *(v205 + 24);
      v206 = *(v205 + 72);
      *v178.i32 = vabds_f32(v4, v176.f32[0]);
      if (*v178.i32 >= v199 || (*v179.i32 = vabds_f32(*v177.i32, v206), *v179.i32 <= v199) || (*v179.i32 = vabds_f32(v4, v206), *v179.i32 >= v199))
      {
        v207 = 0;
      }

      else
      {
        *v179.i32 = v199 + *v177.i32;
        if (v206 >= v176.f32[0])
        {
          *&v180 = v176.f32[0];
        }

        else
        {
          LODWORD(v180) = *(v205 + 72);
        }

        if (*&v180 >= v4)
        {
          *&v180 = v4;
        }

        if (*v179.i32 >= *&v180)
        {
          if (v176.f32[0] >= v206)
          {
            v210 = v176.f32[0];
          }

          else
          {
            v210 = *(v205 + 72);
          }

          if (v4 >= v210)
          {
            v210 = v4;
          }

          *v179.i32 = v199 + v210;
          v207 = *v177.i32 > *v179.i32;
        }

        else
        {
          v207 = 1;
        }
      }

      if (*v178.i32 <= v199 || (*v178.i32 = vabds_f32(*v177.i32, v206), *v178.i32 >= v199) || (*v178.i32 = vabds_f32(v4, v206), *v178.i32 >= v199))
      {
        v208 = 0;
      }

      else
      {
        *v178.i32 = v199 + v176.f32[0];
        if (v206 >= *v177.i32)
        {
          v179.i32[0] = v177.i32[0];
        }

        else
        {
          *v179.i32 = v206;
        }

        if (*v179.i32 >= v4)
        {
          *v179.i32 = v4;
        }

        if (*v178.i32 < *v179.i32)
        {
          v208 = 1;
          goto LABEL_279;
        }

        if (*v177.i32 < v206)
        {
          *v177.i32 = v206;
        }

        if (v4 >= *v177.i32)
        {
          *v177.i32 = v4;
        }

        *v177.i32 = v199 + *v177.i32;
        v208 = v176.f32[0] > *v177.i32;
      }

      if (v207 || v208)
      {
LABEL_279:
        if (!v207 || (sub_26237EA34(v765, a1, v201 + v202 + 120, *v176.i64, *v177.i64, *v178.i64, v179, v180, v181, v182), v765[8] != 1) || (v176.i32[0] = *(v201 + v202 + 184), v176.f32[0] <= 0.5))
        {
          if (!v208)
          {
            v211 = v203 + 1;
            v209 = v201 + v202;
            goto LABEL_301;
          }

          sub_26237EA34(v765, a1, v201 + v202, *v176.i64, *v177.i64, *v178.i64, v179, v180, v181, v182);
          v209 = v201 + v202;
          if (v765[8] != 1 || *(v209 + 64) <= 0.5)
          {
            v211 = v203 + 1;
LABEL_301:
            *(*(v209 + 40) + 24) = v4;
            *(*(v209 + 40) + 72) = v206;
            *(*(v209 + 40) + 64) = *(*(v209 + 160) + 64);
            memset(v765, 0, 24);
            v212 = *(v183 + 40);
            v213 = v212 + 120 * v211;
            do
            {
              sub_262324E74(v765, v212);
              v212 += 120;
            }

            while (v212 != v213);
            v214 = *(v183 + 48);
            for (m = *(v183 + 40) + 120 * (v203 + 2); m != v214; m += 120)
            {
              sub_262324E74(v765, m);
            }

            sub_2622E9198(v183, v765);
            __p[0] = v765;
            sub_262324F40(__p);
LABEL_307:
            v183 += 96;
            if (v183 == n)
            {
              ii = a1;
              v199 = a1[16];
              v183 = *a2;
              n = a2[1];
              goto LABEL_309;
            }

            continue;
          }
        }

        v201 = *(v183 + 40);
        v200 = *(v183 + 48);
      }

      break;
    }

    ++v203;
    v202 += 120;
    if (v203 >= (-1 - 286331153 * ((v200 - v201) >> 3)))
    {
      goto LABEL_307;
    }

    goto LABEL_256;
  }

LABEL_309:
  if (v183 != n)
  {
    do
    {
      v216 = *(v183 + 40);
      v217 = -1 - 286331153 * ((*(v183 + 48) - v216) >> 3);
      if (v217 >= 1)
      {
        v218 = 0;
        v219 = *(v216 + 40);
        v220 = *(v219 + 24);
        v221 = *(v219 + 72);
        v222 = (v216 + 160);
        while (1)
        {
          v223 = *v222;
          v224 = *(*v222 + 24);
          v225 = *(*v222 + 72);
          v226 = (v220 - v221) <= v199 || (v225 - v224) <= v199;
          if (!v226)
          {
            if (v225 >= v220)
            {
              v227 = v220;
            }

            else
            {
              v227 = *(*v222 + 72);
            }

            if (v221 < v224)
            {
              v221 = *(*v222 + 24);
            }

            if (v227 > v221)
            {
              break;
            }
          }

          ++v218;
          v222 += 15;
          v221 = v225;
          v220 = v224;
          v219 = v223;
          if (v217 == v218)
          {
            goto LABEL_331;
          }
        }

        v228 = n;
        v229 = 120 * v218;
        v230 = v216 + 120 * v218;
        if (v220 < v225)
        {
          v220 = *(*v222 + 72);
        }

        *(v219 + 24) = v220;
        *(*(v230 + 40) + 72) = v220;
        *(*(v230 + 40) + 64) = *(*v222 + 64);
        memset(v765, 0, 24);
        v231 = *(v183 + 40);
        v232 = v229 + v231 + 120;
        do
        {
          sub_262324E74(v765, v231);
          v231 += 120;
        }

        while (v231 != v232);
        v233 = *(v183 + 48);
        v234 = v229 + *(v183 + 40) + 240;
        for (n = v228; v234 != v233; v234 += 120)
        {
          sub_262324E74(v765, v234);
        }

        sub_2622E9198(v183, v765);
        __p[0] = v765;
        sub_262324F40(__p);
      }

LABEL_331:
      v183 += 96;
    }

    while (v183 != n);
    v183 = *a2;
    n = a2[1];
  }

  if (v183 != n)
  {
    do
    {
      do
      {
        v235 = *(v183 + 40);
        v236 = 0xEEEEEEEEEEEEEEEFLL * ((*(v183 + 48) - v235) >> 3);
        if (v236 < 2)
        {
          break;
        }

        v237 = v235 + 120;
        v238 = 1;
        v239 = 1;
        while (1)
        {
          v240 = *(v237 - 80);
          v241 = v240[3].f32[0];
          if (vabds_f32(v241, v240[9].f32[0]) < 0.001)
          {
            v242 = *(v237 + 40);
            v243 = v242[3].f32[0];
            if (vabds_f32(v243, v242[9].f32[0]) < 0.001 && vabds_f32(v241, v243) < ii[16])
            {
              break;
            }
          }

          ++v238;
          v237 += 120;
          v239 = v236 > v238;
          if (v236 == v238)
          {
            goto LABEL_340;
          }
        }

        v244 = vsub_f32(v242[2], v242[8]);
        v245 = vmul_f32(v244, v244);
        v246 = vsub_f32(v240[2], v240[8]);
        v247 = vmul_f32(v246, v246);
        v248 = vsqrt_f32(vadd_f32(vzip1_s32(v247, v245), vzip2_s32(v247, v245)));
        if (v248.f32[0] < v248.f32[1])
        {
          *(v237 - 104) = *(v237 + 16);
          *(v237 - 100) = *(v237 + 20);
          *(v237 - 112) = *(v237 + 8);
          *(v237 - 108) = *(v237 + 12);
          *(v237 - 96) = *(v237 + 24);
          *(v237 - 92) = *(v237 + 28);
        }

        v249 = (vmuls_lane_f32(v243, v248, 1) + (v241 * v248.f32[0])) / vaddv_f32(v248);
        v240[3].f32[0] = v249;
        *(*(v237 - 80) + 72) = v249;
        *(*(v237 - 80) + 64) = *(*(v237 + 40) + 64);
        memset(v765, 0, 24);
        v250 = *(v183 + 40);
        v251 = v250 + 120 * v238;
        do
        {
          sub_262324E74(v765, v250);
          v250 += 120;
        }

        while (v250 != v251);
        v252 = v238 + 1;
        v253 = *(v183 + 48);
        v254 = *(v183 + 40) + 120 * v252;
        for (ii = a1; v254 != v253; v254 += 120)
        {
          sub_262324E74(v765, v254);
        }

        sub_2622E9198(v183, v765);
        __p[0] = v765;
        sub_262324F40(__p);
      }

      while (v239);
LABEL_340:
      v183 += 96;
    }

    while (v183 != n);
    v183 = *a2;
    n = a2[1];
  }

  if (v183 == n)
  {
    goto LABEL_383;
  }

  v4 = 0.5;
LABEL_352:
  while (2)
  {
    v256 = *(v183 + 40);
    v255 = *(v183 + 48);
    v257 = 0xEEEEEEEEEEEEEEEFLL * ((v255 - v256) >> 3);
    if (v257 >= 2 && v255 != v256)
    {
      v259 = 0;
      v260 = v256 + 8 * ((v255 - v256) >> 3) - 120;
      v261 = (v256 + 40);
      do
      {
        v262 = (*v261)[1];
        v263 = (*v261)[4];
        v264 = vsubq_f32(v262, v263);
        v265 = sqrtf(vaddv_f32(*&vmulq_f32(v264, v264)));
        if (v265 <= 0.15)
        {
          v266 = fabsf(v264.f32[2]);
          v267 = ii[16];
          if (v259)
          {
            if (v257 == 1)
            {
              v268 = *(v260 - 80);
              v269 = v268[1];
              v270 = v268[4];
              v271 = vsubq_f32(v269, v270);
              v272 = sqrtf(vaddv_f32(*&vmulq_f32(v271, v271)));
              v273 = v272 <= v265;
              v274 = v265 + v265;
              if (v266 <= v267)
              {
                v273 = 1;
              }

              if (v272 >= v274 || !v273)
              {
                v286 = vsubq_f32(v270, v269).f32[0];
                v287 = v269.f32[2] + (((v270.f32[2] - v269.f32[2]) * vsubq_f32(v263, v269).f32[0]) / v286);
                if (fabsf(v286) < 0.000001)
                {
                  v287 = (v269.f32[2] + v270.f32[2]) * 0.5;
                }

                v268[1].i32[2] = v269.i32[2];
                *(*(v260 - 80) + 72) = v287;
                *(*(v260 - 80) + 64) = (*v261)[4].i64[0];
                memset(v765, 0, 24);
                v288 = *(v183 + 40);
                for (jj = *(v183 + 48) - 120; v288 != jj; v288 += 120)
                {
                  sub_262324E74(v765, v288);
                }

                goto LABEL_382;
              }
            }
          }

          else
          {
            v275 = *(v256 + 160);
            v276 = v275[1];
            v277 = v275[4];
            v278 = vsubq_f32(v276, v277);
            v279 = sqrtf(vaddv_f32(*&vmulq_f32(v278, v278)));
            v280 = v279 <= v265;
            v281 = v265 + v265;
            if (v266 <= v267)
            {
              v280 = 1;
            }

            if (v279 >= v281 || !v280)
            {
              v282 = vsubq_f32(v277, v276).f32[0];
              v283 = v276.f32[2] + (((v277.f32[2] - v276.f32[2]) * vsubq_f32(v262, v276).f32[0]) / v282);
              if (fabsf(v282) < 0.000001)
              {
                v283 = (v276.f32[2] + v277.f32[2]) * 0.5;
              }

              v275[1].f32[2] = v283;
              *(*(v256 + 160) + 72) = v277.i32[2];
              *(*(v256 + 160) + 16) = (*v261)[1].i64[0];
              memset(v765, 0, 24);
              v284 = *(v183 + 48);
              for (kk = *(v183 + 40) + 120; kk != v284; kk += 120)
              {
                sub_262324E74(v765, kk);
              }

LABEL_382:
              sub_2622E9198(v183, v765);
              __p[0] = v765;
              sub_262324F40(__p);
              goto LABEL_352;
            }
          }
        }

        --v259;
        v261 += 15;
        --v257;
      }

      while (v257);
    }

    v183 += 96;
    if (v183 != n)
    {
      continue;
    }

    break;
  }

  v183 = *a2;
  n = a2[1];
LABEL_383:
  if (v183 == n)
  {
    goto LABEL_413;
  }

  v743 = n;
  while (2)
  {
    v290 = *(v183 + 40);
    if (0xEEEEEEEEEEEEEEEFLL * ((*(v183 + 48) - v290) >> 3) >= 2)
    {
      v291 = 224;
      v292 = 1;
      while (1)
      {
        v293 = v290 + v291;
        v294 = *(v290 + v291 - 184);
        v295 = (v290 + v291 - 104);
        v296 = (v290 + v291 - 224);
        v297 = *(v294 + 24);
        v298 = *(v294 + 72);
        v299 = *(v290 + v291 - 64);
        v300 = *(v299 + 24);
        v301 = *(v299 + 72);
        *v765 = &unk_2874EF000;
        v765[8] = 0;
        v765[12] = 0;
        v765[16] = 0;
        v765[20] = 0;
        v765[24] = 0;
        v765[28] = 0;
        v765[32] = 0;
        v765[36] = 0;
        memset(v766, 0, sizeof(v766));
        v767 = 0;
        memset(v768, 0, sizeof(v768));
        __p[0] = &unk_2874EF000;
        LOBYTE(__p[1]) = 0;
        BYTE4(__p[1]) = 0;
        LOBYTE(__p[2]) = 0;
        BYTE4(__p[2]) = 0;
        LOBYTE(__p[3]) = 0;
        BYTE4(__p[3]) = 0;
        LOBYTE(__p[4]) = 0;
        BYTE4(__p[4]) = 0;
        memset(v762, 0, sizeof(v762));
        v763 = 0;
        v302 = vabds_f32(v297, v298);
        memset(v764, 0, sizeof(v764));
        if (v302 < 0.001 && vabds_f32(v300, v301) > 0.1 && vabds_f32(v298, v300) < a1[17])
        {
          break;
        }

        if (v302 > 0.1 && vabds_f32(v300, v301) < 0.001 && vabds_f32(v298, v300) < a1[17])
        {
          v305 = v290 + v291;
          v306 = *(v290 + v291 - 216);
          *&v765[21] = *(v290 + v291 - 203);
          *&v765[8] = v306;
          if (v296 == v765)
          {
            v767 = *(v305 - 160);
          }

          else
          {
            sub_262349150(v766, *(v293 - 184), *(v305 - 176), 0xAAAAAAAAAAAAAAABLL * ((*(v305 - 176) - *(v293 - 184)) >> 4));
            v767 = *(v290 + v291 - 160);
            sub_2621CA9DC(v768, *(v290 + v291 - 152), *(v290 + v291 - 144), (*(v290 + v291 - 144) - *(v290 + v291 - 152)) >> 2);
            sub_2622069E0(&v768[1] + 1, *(v290 + v291 - 128), *(v290 + v291 - 120), (*(v290 + v291 - 120) - *(v290 + v291 - 128)) >> 4);
          }

          v311 = *(v290 + v291 - 96);
          *(&__p[2] + 5) = *(v290 + v291 - 83);
          *&__p[1] = v311;
          if (v295 != __p)
          {
            sub_262349150(v762, *(v293 - 64), *(v290 + v291 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v290 + v291 - 56) - *(v293 - 64)) >> 4));
            v763 = *(v290 + v291 - 40);
            sub_2621CA9DC(v764, *(v290 + v291 - 32), *(v290 + v291 - 24), (*(v290 + v291 - 24) - *(v290 + v291 - 32)) >> 2);
            v309 = 96;
            v308 = 104;
LABEL_404:
            sub_2622069E0(&v764[1] + 1, *(v290 + v291 + v309 - 104), *(v290 + v291 + v308 - 104), (*(v290 + v291 + v308 - 104) - *(v290 + v291 + v309 - 104)) >> 4);
LABEL_407:
            v312 = *(v766[0] + 16);
            v313 = *(v766[0] + 64);
            v314 = *(v762[0] + 16);
            v315 = vsub_f32(vzip1_s32(*&vextq_s8(v314, v314, 8uLL), *&vextq_s8(v313, v313, 8uLL)), vdup_laneq_s32(v312, 2));
            v316 = vmla_n_f32(*(v766[0] + 16), vsub_f32(*v313.i8, *v312.i8), vdiv_f32(v315, vdup_lane_s32(v315, 1)).f32[0]);
            if (vaddv_f32(vmul_f32(vsub_f32(v316, *v312.i8), vsub_f32(v316, *(v766[0] + 64)))) <= 0.0 || vaddv_f32(vmul_f32(vsub_f32(v316, *v314.i8), vsub_f32(v316, *(v762[0] + 64)))) <= 0.0)
            {
              *(*(v293 - 184) + 64) = v316;
              *(*(v293 - 184) + 72) = v314.i32[2];
              *(*(v293 - 64) + 16) = v316;
              *(*(v293 - 64) + 24) = v314.i32[2];
            }

            goto LABEL_410;
          }

          v310 = 64;
LABEL_406:
          v763 = *(v290 + v291 + v310 - 104);
          goto LABEL_407;
        }

LABEL_410:
        sub_2622E992C(__p);
        sub_2622E992C(v765);
        ++v292;
        v290 = *(v183 + 40);
        v291 += 120;
        if (0xEEEEEEEEEEEEEEEFLL * ((*(v183 + 48) - v290) >> 3) <= v292)
        {
          goto LABEL_411;
        }
      }

      v303 = v290 + v291;
      v304 = *(v290 + v291 - 96);
      *&v765[21] = *(v290 + v291 - 83);
      *&v765[8] = v304;
      if (v295 == v765)
      {
        v767 = *(v303 - 40);
      }

      else
      {
        sub_262349150(v766, *(v293 - 64), *(v303 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v303 - 56) - *(v293 - 64)) >> 4));
        v767 = *(v290 + v291 - 40);
        sub_2621CA9DC(v768, *(v290 + v291 - 32), *(v290 + v291 - 24), (*(v290 + v291 - 24) - *(v290 + v291 - 32)) >> 2);
        sub_2622069E0(&v768[1] + 1, *(v290 + v291 - 8), *(v290 + v291), (*(v290 + v291) - *(v290 + v291 - 8)) >> 4);
      }

      v307 = *(v290 + v291 - 216);
      *(&__p[2] + 5) = *(v290 + v291 - 203);
      *&__p[1] = v307;
      if (v296 != __p)
      {
        sub_262349150(v762, *(v293 - 184), *(v290 + v291 - 176), 0xAAAAAAAAAAAAAAABLL * ((*(v290 + v291 - 176) - *(v293 - 184)) >> 4));
        v763 = *(v290 + v291 - 160);
        sub_2621CA9DC(v764, *(v290 + v291 - 152), *(v290 + v291 - 144), (*(v290 + v291 - 144) - *(v290 + v291 - 152)) >> 2);
        v308 = -16;
        v309 = -24;
        goto LABEL_404;
      }

      v310 = -56;
      goto LABEL_406;
    }

LABEL_411:
    v183 += 96;
    if (v183 != v743)
    {
      continue;
    }

    break;
  }

  v183 = *a2;
  n = a2[1];
  ii = a1;
LABEL_413:
  v317 = ii[18];
  memset(v765, 0, 24);
  if (v183 == n)
  {
    v322 = 0;
    v323 = 0uLL;
    memset(__p, 0, 24);
  }

  else
  {
    do
    {
      v318 = *(v183 + 40);
      v319 = *(v183 + 48);
      while (v318 != v319)
      {
        if (*(v318 + 64) >= 0.1)
        {
          v320 = *(v318 + 40);
          v4 = *(v320 + 72);
          LODWORD(__p[0]) = *(v320 + 24);
          sub_2621C8F2C(v765, __p);
          *__p = v4;
          sub_2621C8F2C(v765, __p);
        }

        v318 += 120;
      }

      v183 += 96;
    }

    while (v183 != n);
    v322 = *v765;
    v321 = *&v765[8];
    v323 = 0uLL;
    memset(__p, 0, 24);
    if (*v765 != *&v765[8])
    {
      v324 = *v765;
      do
      {
        v325 = *v324;
        for (mm = __p[0]; ; mm += 2)
        {
          if (mm == __p[1])
          {
            v769.i32[0] = *v324;
            v769.i32[1] = 1;
            sub_26237F8D4(__p, v769.i64);
            goto LABEL_428;
          }

          if (vabds_f32(*mm, v325) <= v317)
          {
            break;
          }
        }

        v327 = *(mm + 1);
        v328 = v325 + (*mm * v327++);
        *mm = v328 / v327;
        *(mm + 1) = v327;
LABEL_428:
        ++v324;
      }

      while (v324 != v321);
      v323 = *__p;
    }
  }

  v329 = v323;
  v330 = v323;
  v331 = (*(&v323 + 1) - v323) >> 3;
  if (v331 < 129)
  {
    v335 = 0;
LABEL_437:
    sub_26237F6C4(v329, *(&v330 + 1), v331, 0, v335);
  }

  else
  {
    v332 = MEMORY[0x277D826F0];
    v333 = (*(&v323 + 1) - v323) >> 3;
    while (1)
    {
      v334 = operator new(8 * v333, v332);
      if (v334)
      {
        break;
      }

      v335 = v333 >> 1;
      v226 = v333 > 1;
      v333 >>= 1;
      if (!v226)
      {
        goto LABEL_437;
      }
    }

    v342 = v334;
    sub_26237F6C4(v329, *(&v330 + 1), v331, v334, v333);
    operator delete(v342);
  }

  v769 = 0uLL;
  v770 = 0;
  v343.n128_u64[0] = v330;
  if (v330 == *(&v330 + 1))
  {
    v352 = 0;
    v345 = a1;
  }

  else
  {
    v344 = v330;
    v345 = a1;
    do
    {
      v346 = v769.i64[0];
      if (v769.i64[0] == v769.i64[1])
      {
        v347 = v344[1];
LABEL_450:
        v771.i32[0] = *v344;
        v771.i32[1] = v347;
        sub_26237F8D4(&v769, &v771);
      }

      else
      {
        v343.n128_u32[0] = *v344;
        v347 = v344[1];
        while (1)
        {
          v336.i32[0] = *v346;
          v337.f32[0] = vabds_f32(v343.n128_f32[0], *v346);
          if (v337.f32[0] <= v317 && v347 <= 5)
          {
            break;
          }

          v346 += 8;
          if (v346 == v769.i64[1])
          {
            goto LABEL_450;
          }
        }

        v349 = *(v346 + 4);
        if (v347 > 2 || v349 <= 2)
        {
          v337.f32[0] = v349;
          v338.f32[0] = v347;
          v350 = (v343.n128_f32[0] * v347) + (v336.f32[0] * v349);
          v351 = v349 + v347;
          v336.f32[0] = v351;
          v343.n128_f32[0] = v350 / v351;
          *v346 = v343.n128_u32[0];
          *(v346 + 4) = v351;
        }
      }

      v344 += 2;
    }

    while (v344 != *(&v330 + 1));
    v352 = v769.i64[0];
  }

  v353 = a2;
  v354 = *a2;
  v355 = a2[1];
  if (*a2 != v355)
  {
    v356 = v769.i64[1];
    do
    {
      v357 = *(v354 + 40);
      v358 = *(v354 + 48);
      while (v357 != v358)
      {
        v359 = 0;
        v360 = 1;
        do
        {
          v361 = v360;
          v362 = *(v357 + 40) + 48 * v359;
          if (v352 == v356)
          {
            v343.n128_u64[0] = 0;
            v336.i32[0] = 10.0;
          }

          else
          {
            v337.i32[0] = *(v362 + 24);
            v336.i32[0] = 10.0;
            v343.n128_u64[0] = 0;
            v363 = v352;
            do
            {
              v364 = *v363;
              v363 += 2;
              v338.f32[0] = v364;
              *v339.i32 = vabds_f32(v337.f32[0], v364);
              if (*v339.i32 < v336.f32[0])
              {
                v336.f32[0] = *v339.i32;
                v343.n128_f32[0] = v338.f32[0];
              }
            }

            while (v363 != v356);
          }

          if (v336.f32[0] < v317)
          {
            *(v362 + 24) = v343.n128_u32[0];
          }

          v360 = 0;
          v359 = 1;
        }

        while ((v361 & 1) != 0);
        v357 += 120;
      }

      v354 += 96;
    }

    while (v354 != v355);
  }

  if (v352)
  {
    operator delete(v352);
  }

  if (v330)
  {
    operator delete(v330);
  }

  if (v322)
  {
    *&v765[8] = v322;
    operator delete(v322);
  }

  v365 = *a2;
  v366 = a2[1];
  if (*a2 != v366)
  {
    v734 = a2[1];
    do
    {
      v368 = *(v365 + 40);
      v732 = *(v365 + 48);
      for (nn = v732; v368 != nn; v368 += 120)
      {
        v369 = *(v368 + 40);
        v343.n128_u32[0] = v369[1].u32[2];
        v336.i32[0] = v369[4].i32[2];
        v337.f32[0] = vabds_f32(v343.n128_f32[0], v336.f32[0]);
        if (v337.f32[0] >= 0.1)
        {
          v338 = v369[1];
          v337 = v369[4];
          v741 = *v337.f32;
          v744 = *v338.f32;
          if (v343.n128_f32[0] >= v336.f32[0])
          {
            v4 = v369[1].f32[2];
          }

          else
          {
            v4 = v369[4].f32[2];
          }

          v370 = v343.n128_f32[0] >= v336.f32[0];
          memset(v765, 0, 24);
          v372 = *v353;
          v371 = v353[1];
          if (v372 != v371)
          {
            do
            {
              if (*(v372 + 92) != *(v365 + 92))
              {
                v748 = *(*(*(v372 + 40) + 40) + 16);
                v754 = *(*(*(v372 + 48) - 80) + 64);
                v769.i64[0] = vzip2q_s32(v748, v754).u64[0];
                memset(__p, 0, 24);
                sub_2621DC430(__p, v769.i32, &v769.i32[2], 2uLL);
                v373 = vsub_f32(v744, *v748.i8);
                v374 = vmul_f32(v373, v373);
                v375 = vsub_f32(v744, *v754.i8);
                v376 = vmul_f32(v375, v375);
                v377 = vsub_f32(v741, *v748.i8);
                v378 = vmul_f32(v377, v377);
                v379 = vsub_f32(v741, *v754.i8);
                v380 = vmul_f32(v379, v379);
                *v381.f32 = vzip1_s32(v374, v376);
                v381.i64[1] = __PAIR64__(v380.u32[0], v378.u32[0]);
                *v382.f32 = vzip2_s32(v374, v376);
                v382.i64[1] = __PAIR64__(v380.u32[1], vdup_lane_s32(v378, 1).u32[0]);
                v771 = vsqrtq_f32(vaddq_f32(v381, v382));
                v770 = 0;
                v769 = 0uLL;
                sub_2621DC430(v769.i64, &v771, &v772, 4uLL);
                v383 = v769.i64[0];
                v384 = (v769.i64[0] + 4);
                v385 = *v769.i64[0];
                if (v769.i64[0] == v769.i64[1] || v384 == v769.i64[1])
                {
                  v392 = *v769.i64[0];
                  v393 = v769.i64[0];
                }

                else
                {
                  v386 = *v769.i64[0];
                  v387 = (v769.i64[0] + 4);
                  v388 = v769.i64[0];
                  v389 = (v769.i64[0] + 4);
                  do
                  {
                    v390 = *v389++;
                    v391 = v390;
                    if (v390 < v386)
                    {
                      v386 = v391;
                      v388 = v387;
                    }

                    v387 = v389;
                  }

                  while (v389 != v769.i64[1]);
                  v392 = *v388;
                  v393 = v769.i64[0];
                  v394 = (v769.i64[0] + 4);
                  do
                  {
                    v395 = *v394++;
                    v396 = v395;
                    if (v395 < v385)
                    {
                      v385 = v396;
                      v393 = v384;
                    }

                    v384 = v394;
                  }

                  while (v394 != v769.i64[1]);
                }

                if (v392 < 0.1)
                {
                  v397 = (v393 - v769.i64[0]) >> 2;
                  v771.i32[0] = *(__p[0] + v397 % 2);
                  if (v370 == v397 / 2)
                  {
                    sub_2621C8F2C(v765, &v771);
                  }
                }

                operator delete(v383);
                if (__p[0])
                {
                  operator delete(__p[0]);
                }
              }

              v372 += 96;
            }

            while (v372 != v371);
            if (*&v765[8] != *v765)
            {
              if (*v765 + 4 != *&v765[8])
              {
                v398 = **v765;
                v399 = (*v765 + 4);
                do
                {
                  v400 = *v399++;
                  v401 = v400;
                  if (v400 < v398)
                  {
                    v398 = v401;
                  }
                }

                while (v399 != *&v765[8]);
              }

              sub_2621C7F54(1uLL);
            }

            if (*v765)
            {
              operator delete(*v765);
            }
          }

          v366 = v734;
          v353 = a2;
          v345 = a1;
          nn = v732;
        }
      }

      v365 += 96;
    }

    while (v365 != v366);
    v365 = *v353;
    v366 = v353[1];
  }

  if (v365 != v366)
  {
    v402 = MEMORY[0x277D826F0];
    v4 = -1.0;
    v735 = v366;
    while (1)
    {
      v403 = *(v365 + 40);
      v404 = *(v365 + 48);
      if (0xEEEEEEEEEEEEEEEFLL * ((v404 - v403) >> 3) >= 2 && v404 != v403)
      {
        break;
      }

LABEL_590:
      v365 += 96;
      if (v365 == v735)
      {
        v353 = a2;
        v365 = *a2;
        v366 = a2[1];
        goto LABEL_593;
      }
    }

    v406 = 0;
    while (2)
    {
      v407 = v403 + 120 * v406;
      v408 = *(v407 + 40);
      v336.i32[0] = *(v408 + 72);
      v343.n128_f32[0] = vabds_f32(*(v408 + 24), v336.f32[0]);
      if (v343.n128_f32[0] > 0.1)
      {
        goto LABEL_589;
      }

      sub_26237EA34(__p, v345, v407, v343.n128_f64[0], *v336.i64, *v337.i64, v338, *v339.i64, v340, v341);
      v343.n128_u32[0] = *(v407 + 64);
      if (v343.n128_f32[0] <= 0.5 || LOBYTE(__p[1]) != 1)
      {
        memset(v765, 0, 24);
        if (v406)
        {
          v409 = *(v365 + 40) + 120 * v406;
          v410 = *(v409 - 80);
          v411 = *(v410 + 64);
          v412 = vsubq_f32(*(v410 + 16), v411);
          v413 = vdupq_laneq_s32(v411, 2);
          v413.i32[1] = *(v409 - 56);
          v413.i32[2] = sqrtf(vaddv_f32(*&vmulq_f32(v412, v412)));
          v769 = v413;
          sub_2621D9F60(v765, &v769);
        }

        v414 = *(v365 + 40);
        if (v406 != -1 - 286331153 * ((*(v365 + 48) - v414) >> 3))
        {
          v415 = v414 + 120 * v406;
          v416 = *(v415 + 160);
          v417 = *(v416 + 16);
          v418 = vsubq_f32(v417, *(v416 + 64));
          v419 = vdupq_laneq_s32(v417, 2);
          v419.i32[1] = *(v415 + 184);
          v419.i32[2] = sqrtf(vaddv_f32(*&vmulq_f32(v418, v418)));
          v769 = v419;
          sub_2621D9F60(v765, &v769);
        }

        v343 = *v765;
        v420 = *&v765[8];
        v421 = *v765;
        v422 = *&v765[8] - *v765;
        if (*&v765[8] != *v765)
        {
          v423 = *(v407 + 40);
          v5 = *(v423 + 24);
          v424 = *(v423 + 72);
          v425 = v422 >> 4;
          if (v422 >> 4 < 129)
          {
            v428 = 0;
LABEL_541:
            v343.n128_f64[0] = sub_26237EFE4(v421, v420, v425, 0, v428, v343);
          }

          else
          {
            v426 = v422 >> 4;
            while (1)
            {
              v427 = operator new(16 * v426, v402);
              if (v427)
              {
                break;
              }

              v428 = v426 >> 1;
              v226 = v426 > 1;
              v426 >>= 1;
              if (!v226)
              {
                goto LABEL_541;
              }
            }

            v429 = v427;
            sub_26237EFE4(v421, v420, v425, v427, v426, v343);
            operator delete(v429);
          }

          v430 = v421 + 1;
          if (&v421[1] == v420)
          {
            v465 = 0;
            v457 = 0;
            v343.n128_u32[0] = v421->n128_u32[0];
            v336.i32[0] = v421->n128_u32[0];
          }

          else
          {
            v343 = *v421;
            v431 = *v421;
            v432 = v421 + 1;
            v433 = v421;
            v434 = &v421[1];
            do
            {
              v435 = *v434++;
              v436 = v435;
              v437 = vmovn_s32(vcgtq_f32(v431, v435)).u8[0];
              if (v437)
              {
                v438 = -1;
              }

              else
              {
                v438 = 0;
              }

              v431 = vbslq_s8(vdupq_n_s32(v438), v436, v431);
              if (v437)
              {
                v433 = v432;
              }

              v432 = v434;
            }

            while (v434 != v420);
            v439 = v433 - v421;
            v440 = *v421;
            v441 = v421 + 1;
            v442 = v421;
            v443 = &v421[1];
            do
            {
              v444 = *v443++;
              v445 = v444;
              v446 = vmovn_s32(vcgtq_f32(v440, v444)).u8[0];
              if (v446)
              {
                v447 = -1;
              }

              else
              {
                v447 = 0;
              }

              v440 = vbslq_s8(vdupq_n_s32(v447), v445, v440);
              if (v446)
              {
                v442 = v441;
              }

              v441 = v443;
            }

            while (v443 != v420);
            v336 = *v442;
            v448 = *v421;
            v449 = v421 + 1;
            v450 = v421;
            v451 = &v421[1];
            do
            {
              v452 = *v451++;
              v453 = v452;
              v454 = vmovn_s32(vcgtq_f32(v452, v448)).u8[0];
              v455 = (v454 & 1) == 0;
              if (v454)
              {
                v456 = -1;
              }

              else
              {
                v456 = 0;
              }

              v339 = vdupq_n_s32(v456);
              v448 = vbslq_s8(v339, v453, v448);
              if (!v455)
              {
                v450 = v449;
              }

              v449 = v451;
            }

            while (v451 != v420);
            v457 = v439 >> 4;
            v458 = v450 - v421;
            v459 = v421;
            v460 = &v421[1];
            do
            {
              v461 = *v460++;
              v337 = v461;
              v462 = vmovn_s32(vcgtq_f32(v461, v343)).u8[0];
              v463 = (v462 & 1) == 0;
              if (v462)
              {
                v464 = -1;
              }

              else
              {
                v464 = 0;
              }

              v338 = vdupq_n_s32(v464);
              v343 = vbslq_s8(v338, v337, v343);
              if (!v463)
              {
                v459 = v430;
              }

              v430 = v460;
            }

            while (v460 != v420);
            v465 = v458 >> 4;
            v343.n128_u32[0] = v459->n128_u32[0];
          }

          if (v5 >= v424)
          {
            v466 = v5;
          }

          else
          {
            v466 = v424;
          }

          if (v466 < (v336.f32[0] + -1.0))
          {
            v467 = *(v407 + 40);
            v468 = vsubq_f32(v467[1], v467[4]);
            v468.f32[0] = sqrtf(vaddv_f32(*&vmulq_f32(v468, v468)));
            v345 = a1;
            if (v421[v457].n128_f32[2] <= (v468.f32[0] + v468.f32[0]))
            {
              goto LABEL_592;
            }

            goto LABEL_585;
          }

          v336.f32[0] = v424 >= v5 ? v5 : v424;
          v337.f32[0] = v343.n128_f32[0] + 1.0;
          if (v336.f32[0] > (v343.n128_f32[0] + 1.0))
          {
            v469 = &v421[v465];
            v467 = *(v407 + 40);
            v470 = vsubq_f32(v467[1], v467[4]);
            v470.f32[0] = sqrtf(vaddv_f32(*&vmulq_f32(v470, v470)));
            v345 = a1;
            if (v469->n128_f32[2] >= (v470.f32[0] + v470.f32[0]))
            {
LABEL_592:
              v467[1].i32[2] = v343.n128_u32[0];
              *(*(v407 + 40) + 72) = v343.n128_u32[0];
              operator delete(v421);
              goto LABEL_590;
            }

LABEL_585:
            operator delete(v421);
LABEL_589:
            ++v406;
            v403 = *(v365 + 40);
            if (0xEEEEEEEEEEEEEEEFLL * ((*(v365 + 48) - v403) >> 3) <= v406)
            {
              goto LABEL_590;
            }

            continue;
          }
        }

        if (v421)
        {
          operator delete(v421);
        }
      }

      break;
    }

    v345 = a1;
    goto LABEL_589;
  }

LABEL_593:
  if (v365 == v366)
  {
    goto LABEL_645;
  }

  v736 = v366;
  while (2)
  {
    v472 = *(v365 + 40);
    v471 = *(v365 + 48);
    v473 = 0xEEEEEEEEEEEEEEEFLL * ((v471 - v472) >> 3);
    if (v473 >= 2 && v471 != v472)
    {
      v475 = 0;
      while (2)
      {
        if (v475 && v475 < v473 - 1)
        {
          goto LABEL_641;
        }

        v476 = v472 + 120 * v475;
        v477 = *(v476 + 40);
        v336.i32[0] = *(v477 + 72);
        v343.n128_f32[0] = vabds_f32(*(v477 + 24), v336.f32[0]);
        if (v343.n128_f32[0] > 0.1)
        {
          goto LABEL_641;
        }

        sub_26237EA34(__p, v345, v472 + 120 * v475, v343.n128_f64[0], *v336.i64, *v337.i64, v338, *v339.i64, v340, v341);
        v343.n128_u32[0] = *(v476 + 64);
        v345 = a1;
        if (v343.n128_f32[0] <= 0.5 || LOBYTE(__p[1]) != 1 || (v478 = *(v476 + 40), v336 = v478[4], v343 = vsubq_f32(v478[1], v336), v343.n128_u64[0] = vmulq_f32(v343, v343).u64[0], v343.n128_f32[0] = sqrtf(vaddv_f32(v343.n128_u64[0])), v343.n128_f32[0] <= 0.5))
        {
          if (v475)
          {
            goto LABEL_609;
          }

          v487 = *(v476 + 40);
          v336.f32[0] = v487[4].f32[2] + 0.1;
          v343.n128_u32[0] = *(*(*(v365 + 40) + 160) + 24);
          if (v336.f32[0] <= v343.n128_f32[0])
          {
            memset(v765, 0, 24);
            v488 = *a2;
            v489 = a2[1];
            if (*a2 == v489)
            {
              *(*(v476 + 40) + 24) = v343.n128_u32[0];
              *(*(v476 + 40) + 72) = v343.n128_u32[0];
              v345 = a1;
              goto LABEL_609;
            }

            do
            {
              if (*(v488 + 92) != *(v365 + 92))
              {
                v490 = *(*(v488 + 48) - 80);
                v337 = v487[1];
                v336 = vsubq_f32(v337, *(*(*(v488 + 40) + 40) + 16));
                v336.i64[0] = vmulq_f32(v336, v336).u64[0];
                v336.f32[0] = sqrtf(vaddv_f32(*v336.f32));
                v338 = v490[4];
                if (v336.f32[0] < 0.1)
                {
                  v750 = v490[4];
                  v756 = v487[1];
                  v769.i32[0] = *(*(*(v488 + 40) + 40) + 24);
                  sub_2621C8F2C(v765, v769.i32);
                  v338 = v750;
                  v337 = v756;
                }

                v343 = vsubq_f32(v337, v338);
                v343.n128_u64[0] = vmulq_f32(v343, v343).u64[0];
                v343.n128_f32[0] = sqrtf(vaddv_f32(v343.n128_u64[0]));
                if (v343.n128_f32[0] < 0.1)
                {
                  v769.i32[0] = v490[4].i32[2];
                  sub_2621C8F2C(v765, v769.i32);
                }
              }

              v488 += 96;
            }

            while (v488 != v489);
            v486 = *v765;
            if (*&v765[8] != *v765)
            {
              v345 = a1;
              goto LABEL_638;
            }

            v343.n128_u32[0] = *(*(*(v365 + 40) + 160) + 24);
            *(*(v476 + 40) + 24) = v343.n128_u32[0];
            *(*(v476 + 40) + 72) = v343.n128_u32[0];
            v345 = a1;
            if (v486)
            {
              operator delete(v486);
            }

LABEL_609:
            v479 = *(v365 + 40);
            v480 = *(v365 + 48) - v479;
            v481 = 0xEEEEEEEEEEEEEEEFLL * (v480 >> 3);
            if (v475 == v481 - 1)
            {
              v482 = *(v476 + 40);
              if (v481 < 2 || (v343.n128_f32[0] = v482[1].f32[2] + 0.1, v336.i32[0] = *(*(*(v365 + 48) - 200) + 72), v343.n128_f32[0] <= v336.f32[0]))
              {
                memset(v765, 0, 24);
                v483 = *a2;
                v484 = a2[1];
                if (*a2 == v484)
                {
                  v486 = 0;
                }

                else
                {
                  do
                  {
                    if (*(v483 + 92) != *(v365 + 92))
                    {
                      v485 = *(*(v483 + 48) - 80);
                      v337 = v482[4];
                      v336 = vsubq_f32(v337, *(*(*(v483 + 40) + 40) + 16));
                      v336.i64[0] = vmulq_f32(v336, v336).u64[0];
                      v336.f32[0] = sqrtf(vaddv_f32(*v336.f32));
                      v338 = v485[4];
                      if (v336.f32[0] < 0.1)
                      {
                        v749 = v485[4];
                        v755 = v482[4];
                        v769.i32[0] = *(*(*(v483 + 40) + 40) + 24);
                        sub_2621C8F2C(v765, v769.i32);
                        v338 = v749;
                        v337 = v755;
                      }

                      v343 = vsubq_f32(v337, v338);
                      v343.n128_u64[0] = vmulq_f32(v343, v343).u64[0];
                      v343.n128_f32[0] = sqrtf(vaddv_f32(v343.n128_u64[0]));
                      if (v343.n128_f32[0] < 0.1)
                      {
                        v769.i32[0] = v485[4].i32[2];
                        sub_2621C8F2C(v765, v769.i32);
                      }
                    }

                    v483 += 96;
                  }

                  while (v483 != v484);
                  v486 = *v765;
                  if (*&v765[8] != *v765)
                  {
                    if (*v765)
                    {
                      operator delete(*v765);
                    }

                    v345 = a1;
                    goto LABEL_640;
                  }

                  v479 = *(v365 + 40);
                  v480 = *(v365 + 48) - v479;
                  v481 = 0xEEEEEEEEEEEEEEEFLL * (v480 >> 3);
                }

                v345 = a1;
                if (v481 >= 2)
                {
                  v343.n128_u32[0] = *(*(v479 + v480 - 200) + 72);
                  *(*(v476 + 40) + 24) = v343.n128_u32[0];
                  *(*(v476 + 40) + 72) = v343.n128_u32[0];
                }

LABEL_638:
                if (v486)
                {
                  operator delete(v486);
                }
              }
            }
          }
        }

LABEL_640:
        v472 = *(v365 + 40);
        v471 = *(v365 + 48);
LABEL_641:
        ++v475;
        v473 = 0xEEEEEEEEEEEEEEEFLL * ((v471 - v472) >> 3);
        if (v473 <= v475)
        {
          break;
        }

        continue;
      }
    }

    v365 += 96;
    if (v365 != v736)
    {
      continue;
    }

    break;
  }

  v353 = a2;
  v365 = *a2;
  v366 = a2[1];
LABEL_645:
  if (v365 == v366)
  {
    goto LABEL_712;
  }

  v4 = 0.7;
  v737 = v366;
  while (2)
  {
    v493 = *(v365 + 40);
    v491 = *(v365 + 48);
    v492 = (v365 + 40);
    v494 = 0xEEEEEEEEEEEEEEEFLL * ((v491 - v493) >> 3);
    if (v494 < 3)
    {
      v495 = v737;
      goto LABEL_710;
    }

    v769 = 0uLL;
    v770 = 0;
    if (v494 < 3)
    {
      goto LABEL_693;
    }

    v496 = 0;
    v497 = (v494 - 1) - 1;
    v498 = 280;
    while (2)
    {
      v499 = *v492;
      LODWORD(v5) &= 0xFFFFFF00;
      v500 = *v492 + v498;
      v501 = *(v500 - 120);
      v502 = v501[1].f32[2];
      v503 = v501[4].f32[2];
      if (vabds_f32(v502, v503) < 0.05 && *(v500 - 148) == 1)
      {
        v504 = *(v499 + v498 - 152);
        v505 = a1[16];
        v506 = *(v499 + v498 - 240);
        v507 = *(v506 + 24);
        v508 = *(v499 + v498);
        v509 = *(v508 + 24);
        if (v507 < *(v506 + 72))
        {
          v507 = *(v506 + 72);
        }

        v510 = vabds_f32(v504, v507);
        if (v509 < *(v508 + 72))
        {
          v509 = *(v508 + 72);
        }

        v511 = fminf(v510, vabds_f32(v504, v509)) < v505;
        v512 = v504 > (v502 + (v505 * 0.5)) && v511;
        if (v510 >= v505)
        {
          v5 = v509;
        }

        else
        {
          v5 = v507;
        }

        v513 = 1;
      }

      else
      {
        v513 = 0;
        v512 = 0;
      }

      v514 = vsubq_f32(v501[1], v501[4]);
      if (sqrtf(vaddv_f32(*&vmulq_f32(v514, v514))) <= 0.7 || v512)
      {
        v516 = *(v499 + v498 - 240);
        v517 = *(v516 + 24);
        v518 = *(v516 + 72);
        v519 = *(v499 + v498);
        v520 = *(v519 + 24);
        v521 = *(v519 + 72);
        *v765 = &unk_2874EEFE0;
        *&v765[32] = 0;
        v522 = vabds_f32(v518, v502) < 0.001;
        v523 = a1[16];
        v524 = v517 > (v518 + v523) && v522;
        if (v524)
        {
          v525 = 16;
          goto LABEL_676;
        }

        if (v518 > (v502 + v523))
        {
          v525 = 64;
LABEL_676:
          v526 = (v516 + v525);
          v527 = *v526;
          *&v765[32] = *(v526 + 4);
          *&v765[16] = v527;
          __p[0] = &unk_2874EEFE0;
          LODWORD(__p[4]) = 0;
          v528 = vabds_f32(v520, v503) < 0.001;
          if (v520 >= (v521 + v523))
          {
            v528 = 0;
          }

          if (v528)
          {
            v529 = 64;
            goto LABEL_682;
          }

          if (v520 > (v503 + v523))
          {
            v529 = 16;
LABEL_682:
            v530 = *(v499 + v498) + v529;
            v531 = *v530;
            LODWORD(__p[4]) = *(v530 + 16);
            *&__p[2] = v531;
            if (v512)
            {
              v532 = v5;
              if ((v513 & 1) == 0)
              {
                sub_2622386B8();
              }
            }

            else
            {
              v532 = *&v765[24];
              if (*&v765[24] < *&__p[3])
              {
                v532 = *&__p[3];
              }
            }

            *(*(v500 - 120) + 24) = v532;
            *(*(v500 - 120) + 72) = v532;
            *(*(v500 - 120) + 16) = *&v765[16];
            *(*(v500 - 120) + 64) = __p[2];
            if (v528)
            {
              v771.i32[0] = v496 + 2;
              sub_2621C7CD0(&v769, &v771);
            }

            if (v524)
            {
              v771.i32[0] = v496;
              sub_2621C7CD0(&v769, &v771);
            }
          }
        }
      }

      ++v496;
      v498 += 120;
      if (v497 != v496)
      {
        continue;
      }

      break;
    }

    v493 = *(v365 + 40);
    v491 = *(v365 + 48);
LABEL_693:
    memset(v765, 0, 24);
    if (v493 != v491)
    {
      do
      {
        sub_262324E74(v765, v493);
        v493 += 120;
      }

      while (v493 != v491);
      v493 = *(v365 + 40);
      v491 = *(v365 + 48);
    }

    if (v491 != v493)
    {
      v533 = (v491 - 120);
      v534 = v533;
      v535 = v533;
      do
      {
        v536 = *v535;
        v535 -= 15;
        (*v536)(v534);
        v533 -= 15;
        v160 = v534 == v493;
        v534 = v535;
      }

      while (!v160);
    }

    *(v365 + 48) = v493;
    v538 = *v765;
    v537 = *&v765[8];
    v345 = a1;
    v495 = v737;
    if (*&v765[8] != *v765)
    {
      v539 = 0;
      do
      {
        for (i1 = v769.i64[0]; i1 != v769.i64[1]; ++i1)
        {
          if (v539 == *i1)
          {
            goto LABEL_707;
          }
        }

        sub_262324E74((v365 + 40), v538 + 120 * v539);
        v538 = *v765;
        v537 = *&v765[8];
LABEL_707:
        ++v539;
      }

      while (0xEEEEEEEEEEEEEEEFLL * ((v537 - v538) >> 3) > v539);
    }

    __p[0] = v765;
    sub_262324F40(__p);
    if (v769.i64[0])
    {
      operator delete(v769.i64[0]);
    }

LABEL_710:
    v365 += 96;
    if (v365 != v495)
    {
      continue;
    }

    break;
  }

  v353 = a2;
  v365 = *a2;
  v366 = a2[1];
LABEL_712:
  if (v365 != v366)
  {
    v738 = v366;
    while (1)
    {
      v542 = *(v365 + 40);
      v541 = *(v365 + 48);
      v543 = 0xEEEEEEEEEEEEEEEFLL * ((v541 - v542) >> 3);
      if (v543 >= 2 && v541 != v542)
      {
        break;
      }

LABEL_796:
      v365 += 96;
      if (v365 == v738)
      {
        v353 = a2;
        v365 = *a2;
        v366 = a2[1];
        goto LABEL_798;
      }
    }

    v545 = 0;
    while (2)
    {
      if (!v545 || v545 >= v543 - 1)
      {
        v546 = v542 + 120 * v545;
        v547 = *(v546 + 40);
        v548 = v547[1].f32[2];
        v4 = v547[4].f32[2];
        v336.f32[0] = vabds_f32(v548, v4);
        v343.n128_f32[0] = v345[16];
        if (v336.f32[0] <= v343.n128_f32[0])
        {
          v337 = v547[4];
          v336 = vsubq_f32(v547[1], v337);
          v336.i64[0] = vmulq_f32(v336, v336).u64[0];
          v336.f32[0] = sqrtf(vaddv_f32(*v336.f32));
          v337.i32[0] = *(v546 + 64);
          if (v336.f32[0] <= 0.7 || v337.f32[0] <= 0.5)
          {
            if (!v545)
            {
              v550 = *(*(v542 + 160) + 24);
              v336.f32[0] = v550 - v4;
              if ((v550 - v4) < v343.n128_f32[0] || v336.f32[0] > 0.5)
              {
                goto LABEL_795;
              }

              memset(v765, 0, 24);
              v552 = *a2;
              v553 = a2[1];
              if (*a2 == v553)
              {
                v569 = 0;
                v570 = 0;
              }

              else
              {
                do
                {
                  if (*(v552 + 92) != *(v365 + 92))
                  {
                    v554 = *(v552 + 40);
                    v555 = *(v552 + 48);
                    if (v555 != v554)
                    {
                      v556 = *(v554 + 40);
                      v557 = *(v555 - 80);
                      v751 = v556[1];
                      v757 = v547[1];
                      v745 = v557[4];
                      sub_26237EA34(__p, a1, v554, *v745.i64, *v757.i64, *v337.i64, v338, *v339.i64, v340, v341);
                      sub_26237EA34(&v769, a1, *(v552 + 48) - 120, v558, v559, v560, v561, v562, v563, v564);
                      v337 = v757;
                      v565 = vsubq_f32(v757, v751);
                      v566 = sqrtf(vaddv_f32(*&vmulq_f32(v565, v565)));
                      v567 = a1[4];
                      if (v566 < v567 && LOBYTE(__p[1]) == 1)
                      {
                        v771.i32[0] = v556[1].i32[2];
                        sub_2621C8F2C(v765, &v771);
                        v567 = a1[4];
                        v337 = v757;
                      }

                      v568 = vsubq_f32(v337, v745);
                      if (sqrtf(vaddv_f32(*&vmulq_f32(v568, v568))) < v567 && v769.u8[8] == 1)
                      {
                        v771.i32[0] = v557[4].i32[2];
                        sub_2621C8F2C(v765, &v771);
                      }
                    }
                  }

                  v552 += 96;
                }

                while (v552 != v553);
                v569 = *v765;
                v570 = *&v765[8];
              }

              v345 = a1;
              if (v570 == v569)
              {
                v577 = 0;
              }

              else
              {
                v571 = v569 + 1;
                v572 = v569;
                if (v569 + 1 != v570)
                {
                  v573 = *v569;
                  v572 = v569;
                  v574 = v569 + 1;
                  do
                  {
                    v575 = *v574++;
                    v576 = v575;
                    if (v575 < v573)
                    {
                      v573 = v576;
                      v572 = v571;
                    }

                    v571 = v574;
                  }

                  while (v574 != v570);
                }

                v577 = (*v572 - v548) > a1[16];
              }

              v578 = *(v546 + 40);
              v336 = v578[4];
              v343 = vsubq_f32(v578[1], v336);
              v343.n128_u64[0] = vmulq_f32(v343, v343).u64[0];
              v343.n128_f32[0] = sqrtf(vaddv_f32(v343.n128_u64[0]));
              if (v343.n128_f32[0] < 0.5 || v577)
              {
                v578[1].f32[2] = v550;
                *(*(v546 + 40) + 72) = v550;
              }

              if (v569)
              {
                operator delete(v569);
              }

              v542 = *(v365 + 40);
              v541 = *(v365 + 48);
            }

            v579 = 0xEEEEEEEEEEEEEEEFLL * ((v541 - v542) >> 3);
            if (v579 >= 2 && v545 == v579 - 1)
            {
              v581 = *(*(v542 + 120 * (v579 - 2) + 40) + 72);
              v343.n128_f32[0] = v581 - v548;
              v336.f32[0] = v345[16];
              if ((v581 - v548) >= v336.f32[0] && v343.n128_f32[0] <= 0.5)
              {
                v583 = *(v546 + 40);
                memset(v765, 0, 24);
                v584 = *a2;
                v585 = a2[1];
                if (*a2 == v585)
                {
                  v601 = 0;
                  v602 = 0;
                }

                else
                {
                  do
                  {
                    if (*(v584 + 92) != *(v365 + 92))
                    {
                      v586 = *(v584 + 40);
                      v587 = *(v584 + 48);
                      if (v587 != v586)
                      {
                        v588 = *(v586 + 40);
                        v589 = *(v587 - 80);
                        v752 = v588[1];
                        v758 = v583[4];
                        v746 = v589[4];
                        sub_26237EA34(__p, a1, v586, *v746.i64, *v758.i64, *v337.i64, v338, *v339.i64, v340, v341);
                        sub_26237EA34(&v769, a1, *(v584 + 48) - 120, v590, v591, v592, v593, v594, v595, v596);
                        v337 = v758;
                        v597 = vsubq_f32(v758, v752);
                        v598 = sqrtf(vaddv_f32(*&vmulq_f32(v597, v597)));
                        v599 = a1[4];
                        if (v598 < v599 && LOBYTE(__p[1]) == 1)
                        {
                          v771.i32[0] = v588[1].i32[2];
                          sub_2621C8F2C(v765, &v771);
                          v599 = a1[4];
                          v337 = v758;
                        }

                        v600 = vsubq_f32(v337, v746);
                        if (sqrtf(vaddv_f32(*&vmulq_f32(v600, v600))) < v599 && v769.u8[8] == 1)
                        {
                          v771.i32[0] = v589[4].i32[2];
                          sub_2621C8F2C(v765, &v771);
                        }
                      }
                    }

                    v584 += 96;
                  }

                  while (v584 != v585);
                  v601 = *v765;
                  v602 = *&v765[8];
                }

                v345 = a1;
                if (v602 == v601)
                {
                  v609 = 0;
                }

                else
                {
                  v603 = v601 + 1;
                  v604 = v601;
                  if (v601 + 1 != v602)
                  {
                    v605 = *v601;
                    v604 = v601;
                    v606 = v601 + 1;
                    do
                    {
                      v607 = *v606++;
                      v608 = v607;
                      if (v607 < v605)
                      {
                        v605 = v608;
                        v604 = v603;
                      }

                      v603 = v606;
                    }

                    while (v606 != v602);
                  }

                  v609 = (*v604 - v4) > a1[16];
                }

                v610 = *(v546 + 40);
                v336 = v610[4];
                v343 = vsubq_f32(v610[1], v336);
                v343.n128_u64[0] = vmulq_f32(v343, v343).u64[0];
                v343.n128_f32[0] = sqrtf(vaddv_f32(v343.n128_u64[0]));
                if (v343.n128_f32[0] < 0.5 || v609)
                {
                  v610[1].f32[2] = v581;
                  *(*(v546 + 40) + 72) = v581;
                }

                if (v601)
                {
                  operator delete(v601);
                }

                v542 = *(v365 + 40);
                v541 = *(v365 + 48);
              }
            }
          }
        }
      }

LABEL_795:
      ++v545;
      v543 = 0xEEEEEEEEEEEEEEEFLL * ((v541 - v542) >> 3);
      if (v543 <= v545)
      {
        goto LABEL_796;
      }

      continue;
    }
  }

LABEL_798:
  if (v365 == v366)
  {
    goto LABEL_849;
  }

  while (2)
  {
    v611 = *(v365 + 40);
    v612 = *(v365 + 48);
    v613 = 0xEEEEEEEEEEEEEEEFLL * ((v612 - v611) >> 3);
    if (v613 < 3 || v612 == v611)
    {
      goto LABEL_835;
    }

    v615 = 0;
    while (2)
    {
      if (!v615 || v615 >= v613 - 1)
      {
        v617 = v615 + 1;
        goto LABEL_834;
      }

      v616 = v611 + 120 * v615;
      v617 = v615 + 1;
      v618 = *(v616 + 40);
      v343.n128_u32[0] = v618[1].u32[2];
      v336.i32[0] = v618[4].i32[2];
      v337.f32[0] = vabds_f32(v343.n128_f32[0], v336.f32[0]);
      v339.i32[0] = v345[16];
      if (v337.f32[0] > *v339.i32 || ((v338 = v618[4], v337 = vsubq_f32(v618[1], v338), v337.i64[0] = vmulq_f32(v337, v337).u64[0], v337.f32[0] = sqrtf(vaddv_f32(*v337.f32)), v338.i32[0] = *(v616 + 64), v337.f32[0] > 0.5) ? (v619 = v338.f32[0] <= 0.5) : (v619 = 1), !v619))
      {
LABEL_834:
        v615 = v617;
        if (v617 == v613)
        {
          goto LABEL_835;
        }

        continue;
      }

      break;
    }

    v620 = v611 + 120 * v615;
    v623 = *(v620 + 160);
    v622 = v620 + 160;
    v621 = v623;
    v624 = *(v622 - 240);
    v338.i32[0] = v624[4].i32[2];
    LODWORD(v340) = v623[1].i32[2];
    v625 = v623[4].f32[2];
    *&v341 = vabds_f32(v624[1].f32[2], v338.f32[0]);
    v626 = vabds_f32(*&v340, v625);
    if (*&v341 <= *v339.i32 || v626 >= *v339.i32)
    {
      goto LABEL_824;
    }

    if (v343.n128_f32[0] >= v336.f32[0])
    {
      v628 = v618[1].f32[2];
    }

    else
    {
      v628 = v618[4].f32[2];
    }

    if (v625 >= *&v340)
    {
      v625 = *&v340;
    }

    if (v628 >= v625 || (v629 = vsubq_f32(v624[1], v624[4]), sqrtf(vaddv_f32(*&vmulq_f32(v629, v629))) <= v337.f32[0]))
    {
LABEL_824:
      if (*&v341 < *v339.i32 && v626 > *v339.i32)
      {
        if (v336.f32[0] < v343.n128_f32[0])
        {
          v343.n128_u32[0] = v618[4].u32[2];
        }

        if (*&v340 <= v343.n128_f32[0])
        {
          v336 = v621[4];
          v343 = vsubq_f32(v621[1], v336);
          v343.n128_u64[0] = vmulq_f32(v343, v343).u64[0];
          v343.n128_f32[0] = sqrtf(vaddv_f32(v343.n128_u64[0]));
          if (v343.n128_f32[0] > v337.f32[0])
          {
            v637 = v366;
            v618[1].i32[2] = v338.i32[0];
            *(*(v616 + 40) + 72) = v338.i32[0];
            *(*(v616 + 40) + 16) = *(*(v622 - 240) + 16);
            v638 = (v365 + 48);
            v639 = *(v365 + 40) + 120 * (v615 - 1);
            v640 = sub_26237EF04(v639 + 120, *(v365 + 48), v639);
            v631 = v640;
            v641 = *v638;
            if (*v638 != v640)
            {
              v642 = v641 - 120;
              v643 = (v641 - 120);
              v644 = (v641 - 120);
              v345 = a1;
              do
              {
                v645 = *v644;
                v644 -= 15;
                (*v645)(v643);
                v642 -= 120;
                v160 = v643 == v631;
                v643 = v644;
              }

              while (!v160);
              goto LABEL_848;
            }

LABEL_847:
            v345 = a1;
            goto LABEL_848;
          }
        }
      }

      goto LABEL_834;
    }

    v637 = v366;
    v618[1].i32[2] = LODWORD(v340);
    *(*(v616 + 40) + 72) = LODWORD(v340);
    *(*(v616 + 40) + 64) = *(*v622 + 64);
    v631 = sub_26237EF04(*(v365 + 40) + 120 * v617 + 120, *(v365 + 48), *(v365 + 40) + 120 * v617);
    v632 = *(v365 + 48);
    if (v632 == v631)
    {
      goto LABEL_847;
    }

    v633 = v632 - 120;
    v634 = (v632 - 120);
    v635 = (v632 - 120);
    v345 = a1;
    do
    {
      v636 = *v635;
      v635 -= 15;
      (*v636)(v634);
      v633 -= 120;
      v160 = v634 == v631;
      v634 = v635;
    }

    while (!v160);
LABEL_848:
    *(v365 + 48) = v631;
    v366 = v637;
LABEL_835:
    v365 += 96;
    if (v365 != v366)
    {
      continue;
    }

    break;
  }

  v353 = a2;
  v365 = *a2;
  v366 = a2[1];
LABEL_849:
  if (v365 != v366)
  {
    do
    {
        ;
      }

      v365 += 96;
    }

    while (v365 != v366);
    v365 = *v353;
    v366 = v353[1];
  }

  if (v365 != v366)
  {
    do
    {
      v647 = *(v365 + 40);
      v646 = *(v365 + 48);
      if (v646 != v647)
      {
        v648 = 0;
        do
        {
          v649 = v647 + 120 * v648;
          v650 = *(v649 + 40);
          v336.i32[0] = *(v650 + 72);
          v343.n128_f32[0] = vabds_f32(*(v650 + 24), v336.f32[0]);
          if (v343.n128_f32[0] < 0.05)
          {
            sub_26237E7D0(v765, v345, v365, v648, *a2, a2[1]);
            LODWORD(v4) &= 0xFFFFFF00;
            v651 = *v765;
            if (*v765 == *&v765[8])
            {
              v345 = a1;
            }

            else
            {
              v652 = 0;
              v653 = *(v649 + 40);
              v343.n128_u32[0] = *(v653 + 24);
              v654 = *a2;
              v336.f32[0] = vabds_f32(v343.n128_f32[0], *(v653 + 72));
              v655 = *v765;
              v345 = a1;
              while (1)
              {
                *v337.i64 = vabds_f32(*v655, v343.n128_f32[0]);
                if (*v337.i64 < 0.1)
                {
                  break;
                }

                v656 = *(v655 + 36);
                if ((v656 & 0x80000000) == 0 && 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) > v656 && (v657 = *(v654 + 96 * *(v655 + 32) + 40), 0xEEEEEEEEEEEEEEEFLL * ((*(v654 + 96 * *(v655 + 32) + 48) - v657) >> 3) > v656) && v336.f32[0] < 0.05 && (v658 = *(v657 + 120 * v656 + 40), v337.i32[0] = *(v658 + 24), v338.f32[0] = vabds_f32(v337.f32[0], *(v658 + 72)), v338.f32[0] < 0.05) && *(v649 + 20) == 1 && (*v338.i64 = vabds_f32(*(v649 + 16), v337.f32[0]), *v338.i64 < 0.1))
                {
                  v655 += 48;
                  v652 = 1;
                  v4 = *(v658 + 24);
                  if (v655 == *&v765[8])
                  {
                    goto LABEL_873;
                  }
                }

                else
                {
                  v655 += 48;
                  if (v655 == *&v765[8])
                  {
                    v337.f32[0] = v4;
                    if ((v652 & 1) == 0)
                    {
                      break;
                    }

LABEL_873:
                    *(v653 + 24) = v337.i32[0];
                    *(*(v649 + 40) + 72) = v337.i32[0];
                    v4 = v337.f32[0];
                    break;
                  }
                }
              }
            }

            if (v651)
            {
              operator delete(v651);
            }

            v647 = *(v365 + 40);
            v646 = *(v365 + 48);
          }

          ++v648;
        }

        while (0xEEEEEEEEEEEEEEEFLL * ((v646 - v647) >> 3) > v648);
      }

      v365 += 96;
    }

    while (v365 != v366);
    v353 = a2;
    v365 = *a2;
    v366 = a2[1];
  }

  if (v365 != v366)
  {
    do
    {
        ;
      }

      v365 += 96;
    }

    while (v365 != v366);
    v365 = *v353;
    v366 = v353[1];
  }

  if (v365 != v366)
  {
    do
    {
      v659 = v366;
      v660 = *(v365 + 40);
      if (*(v365 + 48) != v660)
      {
        v661 = 0;
        do
        {
          v662 = v660 + 120 * v661;
          sub_26237EA34(&v771, v345, v662, v343.n128_f64[0], *v336.i64, *v337.i64, v338, *v339.i64, v340, v341);
          v345 = a1;
          if (v771.u8[14] == 1 && (v771.i8[8] & 1) == 0)
          {
            v663 = *(v662 + 40);
            v336.i32[0] = *(v663 + 72);
            v343.n128_f32[0] = vabds_f32(*(v663 + 24), v336.f32[0]);
            if (v343.n128_f32[0] < 0.05)
            {
              sub_26237E7D0(v765, a1, v365, v661, *a2, a2[1]);
              memset(__p, 0, 24);
              v769 = 0uLL;
              v770 = 0;
              v664 = *&v765[8];
              v665 = *v765;
              if (*v765 == *&v765[8])
              {
                v345 = a1;
              }

              else
              {
                do
                {
                  v343 = *v665;
                  v336.f32[0] = fabsf(COERCE_FLOAT(HIDWORD(*v665)) + -1.0);
                  if (v336.f32[0] >= 0.00001)
                  {
                    if (v665[1].n128_u8[8])
                    {
                      v336.i32[0] = *(*(v662 + 40) + 24);
                      if (v343.n128_f32[0] < v336.f32[0])
                      {
                        v760 = *v665;
                        sub_2621C8F2C(&v769, &v760);
                      }
                    }
                  }

                  else if (v665[1].n128_u8[8])
                  {
                    v336.i32[0] = *(*(v662 + 40) + 24);
                    if (v343.n128_f32[0] < v336.f32[0])
                    {
                      v760 = *v665;
                      sub_2621C8F2C(__p, &v760);
                    }
                  }

                  v665 += 3;
                }

                while (v665 != v664);
                v666 = __p[0];
                if (__p[1] == __p[0])
                {
                  v672 = v769.i64[0];
                  v345 = a1;
                  if (v769.i64[1] != v769.i64[0])
                  {
                    v673 = (v769.i64[0] + 4);
                    v674 = v769.i64[0];
                    if (v769.i64[0] + 4 != v769.i64[1])
                    {
                      v675 = *v769.i64[0];
                      v674 = v769.i64[0];
                      v676 = (v769.i64[0] + 4);
                      do
                      {
                        v677 = *v676++;
                        v336.f32[0] = v677;
                        if (v675 < v677)
                        {
                          v675 = v336.f32[0];
                          v674 = v673;
                        }

                        v673 = v676;
                      }

                      while (v676 != v769.i64[1]);
                    }

                    v343.n128_u32[0] = *v674;
                    *(*(v662 + 40) + 24) = *v674;
                    *(*(v662 + 40) + 72) = v343.n128_u32[0];
                  }
                }

                else
                {
                  v667 = (__p[0] + 4);
                  v668 = __p[0];
                  v345 = a1;
                  if (__p[0] + 4 != __p[1])
                  {
                    v669 = *__p[0];
                    v668 = __p[0];
                    v670 = (__p[0] + 4);
                    do
                    {
                      v671 = *v670++;
                      v336.f32[0] = v671;
                      if (v669 < v671)
                      {
                        v669 = v336.f32[0];
                        v668 = v667;
                      }

                      v667 = v670;
                    }

                    while (v670 != __p[1]);
                  }

                  v343.n128_u32[0] = *v668;
                  *(*(v662 + 40) + 24) = *v668;
                  *(*(v662 + 40) + 72) = v343.n128_u32[0];
                  v672 = v769.i64[0];
                }

                if (v672)
                {
                  v769.i64[1] = v672;
                  operator delete(v672);
                  v666 = __p[0];
                }

                if (v666)
                {
                  __p[1] = v666;
                  operator delete(v666);
                }
              }

              if (*v765)
              {
                operator delete(*v765);
              }
            }
          }

          ++v661;
          v660 = *(v365 + 40);
        }

        while (0xEEEEEEEEEEEEEEEFLL * ((*(v365 + 48) - v660) >> 3) > v661);
      }

      v365 += 96;
      v366 = v659;
    }

    while (v365 != v659);
    v353 = a2;
    v365 = *a2;
    v366 = a2[1];
  }

  if (v365 != v366)
  {
    v739 = v366;
    do
    {
      v678 = *(v365 + 40);
      v679 = *(v365 + 48);
      if (v679 - v678 != 120 && v679 != v678)
      {
        v681 = 0;
        do
        {
          v682 = v678 + 120 * v681;
          sub_26237EA34(&v769, v345, v682, v343.n128_f64[0], *v336.i64, *v337.i64, v338, *v339.i64, v340, v341);
          if (v769.u8[14] == 1)
          {
            sub_26237E7D0(v765, a1, v365, v681, *a2, a2[1]);
            v343 = 0uLL;
            memset(__p, 0, 24);
            v683 = *v765;
            v684 = *&v765[8];
            v685 = *v765;
            if (*v765 == *&v765[8])
            {
              v686 = 0;
            }

            else
            {
              do
              {
                if ((*(v685 + 30) & 1) == 0)
                {
                  sub_26237ED08(__p, v685);
                }

                v685 += 48;
              }

              while (v685 != v684);
              v686 = __p[0];
              v343 = *&__p[1];
            }

            *v765 = v686;
            __p[0] = v683;
            __p[1] = v684;
            v687 = *&v765[16];
            *&v765[8] = v343;
            __p[2] = v687;
            v688 = v343.n128_u64[0];
            if (v686 != v343.n128_u64[0])
            {
              v689 = (v686 + 3);
              v690 = v686;
              if (v686 + 3 != v343.n128_u64[0])
              {
                v343 = *v686;
                v690 = v686;
                v691 = (v686 + 3);
                do
                {
                  v692 = *v691;
                  v691 += 3;
                  v336 = v692;
                  v693 = vmovn_s32(vcgtq_f32(v343, v692)).u8[0];
                  v694 = (v693 & 1) == 0;
                  if (v693)
                  {
                    v695 = -1;
                  }

                  else
                  {
                    v695 = 0;
                  }

                  v337 = vdupq_n_s32(v695);
                  v343 = vbslq_s8(v337, v336, v343);
                  if (!v694)
                  {
                    v690 = v689;
                  }

                  v689 = v691;
                }

                while (v691 != v688);
              }

              v343.n128_u32[0] = *v690;
              v696 = *(v682 + 40);
              v336.i32[0] = *(v696 + 24);
              v338.i32[0] = *(v696 + 72);
              v337.f32[0] = fmaxf(v336.f32[0], v338.f32[0]);
              *v339.i32 = *v690 + a1[16];
              if (v337.f32[0] < *v339.i32)
              {
                v336.f32[0] = vabds_f32(v336.f32[0], v338.f32[0]);
                if (v336.f32[0] >= 0.05)
                {
                  v343.n128_f32[0] = v337.f32[0];
                }

                *(v696 + 24) = v343.n128_u32[0];
                *(*(v682 + 40) + 72) = v343.n128_u32[0];
              }
            }

            if (v683)
            {
              operator delete(v683);
            }

            if (v686)
            {
              operator delete(v686);
            }
          }

          ++v681;
          v678 = *(v365 + 40);
          v345 = a1;
        }

        while (v681 < 0xEEEEEEEEEEEEEEEFLL * ((*(v365 + 48) - v678) >> 3));
      }

      v365 += 96;
    }

    while (v365 != v739);
    v353 = a2;
    v365 = *a2;
    v366 = a2[1];
  }

  if (v365 != v366)
  {
    do
    {
        ;
      }

      v365 += 96;
    }

    while (v365 != v366);
    v365 = *v353;
    v366 = v353[1];
  }

  if (*a3 != a3[1])
  {
    v697 = sub_26237E68C(v365, v366, v57);
    v365 = *v353;
    v366 = v353[1];
    if (*v353 != v366)
    {
      do
      {
        v698 = v366;
        v699 = *(v365 + 40);
        v700 = *(v365 + 48);
        while (v699 != v700)
        {
          v701 = *(v699 + 40);
          v702 = *(v701 + 24);
          if (vabds_f32(v702, *(v701 + 72)) >= 0.05)
          {
            if (*(v699 + 36) == 1)
            {
              *(v699 + 36) = 0;
            }
          }

          else
          {
            v703 = *a3;
            v704 = a3[1];
            if (*a3 != v704)
            {
              v705 = v702 + 0.2;
              do
              {
                v706 = 0;
                v707 = v703;
                do
                {
                  if (*(v707 + 8) < *(v703 + v706 + 24))
                  {
                    v707 = v703 + v706 + 16;
                  }

                  v706 += 16;
                }

                while (v706 != 112);
                v708 = *(v707 + 8);
                if (v708 >= v705)
                {
                  for (i2 = 0; i2 != 64; i2 += 16)
                  {
                    v710 = *(v703 + i2);
                    *(&v710 + 1) = *(v703 + i2 + 16);
                    *__p = v710;
                    v711 = *(v699 + 40);
                    v712 = v711[1];
                    v712.i64[1] = v711[4].i64[0];
                    v769 = v712;
                    sub_26223FEB8(v765, __p, &v769);
                    if (*&v765[4] > 0.5 && *&v765[12] < 0.5 && *&v765[24] < 20.0)
                    {
                      *(v699 + 32) = v708;
                      *(v699 + 36) = 1;
                    }
                  }
                }

                v703 += 128;
              }

              while (v703 != v704);
            }
          }

          v699 += 120;
        }

        v365 += 96;
        v366 = v698;
      }

      while (v365 != v698);
      v365 = *a2;
      v366 = a2[1];
      v345 = a1;
    }

    if (v365 != v366)
    {
      while (1)
      {
        v716 = *(v365 + 40);
        v715 = *(v365 + 48);
        if (v715 != v716)
        {
          break;
        }

LABEL_1026:
        v365 += 96;
        if (v365 == v366)
        {
          v365 = *a2;
          v366 = a2[1];
          goto LABEL_1028;
        }
      }

      v717 = 0;
      while (2)
      {
        v718 = v716 + 120 * v717;
        if (vabds_f32(*(*(v718 + 40) + 24), *(*(v718 + 40) + 72)) < 0.05 && *(v718 + 36) == 1)
        {
          sub_26237E7D0(v765, v345, v365, v717, *a2, a2[1]);
          memset(__p, 0, 24);
          v719 = *v765;
          v720 = *&v765[8];
          v721 = *v765;
          if (*v765 == *&v765[8])
          {
            v723 = 0;
          }

          else
          {
            do
            {
              if ((*(*(*a2 + 96 * v721[8] + 40) + 120 * v721[9] + 36) & 1) == 0)
              {
                if ((*(v718 + 36) & 1) == 0)
                {
                  sub_2622386B8();
                }

                v722 = *(*(v718 + 40) + 24);
                if (v722 < (*(v718 + 32) + -0.2))
                {
                  v722 = *(v718 + 32) + -0.2;
                }

                if (*v721 >= v722)
                {
                  v769.i32[0] = *v721;
                  sub_2621C8F2C(__p, v769.i32);
                }
              }

              v721 += 12;
            }

            while (v721 != v720);
            v723 = __p[0];
            if (__p[0] != __p[1])
            {
              v724 = (__p[0] + 4);
              v345 = a1;
              if (__p[0] + 4 == __p[1])
              {
                v726 = __p[0];
              }

              else
              {
                v725 = *__p[0];
                v726 = __p[0];
                v727 = (__p[0] + 4);
                do
                {
                  v728 = *v727++;
                  v729 = v728;
                  if (v728 < v725)
                  {
                    v725 = v729;
                    v726 = v724;
                  }

                  v724 = v727;
                }

                while (v727 != __p[1]);
              }

              goto LABEL_1014;
            }
          }

          v345 = a1;
          if ((*(v718 + 36) & 1) == 0)
          {
            sub_2622386B8();
          }

          v726 = (v718 + 32);
LABEL_1014:
          v730 = *v726;
          if (vabds_f32(*v726, v697) < 0.1)
          {
            v730 = v697;
          }

          *(*(v718 + 40) + 24) = v730;
          *(*(v718 + 40) + 72) = v730;
          if (*(v718 + 36))
          {
            *(v718 + 36) = 0;
          }

          if (v723)
          {
            __p[1] = v723;
            operator delete(v723);
            v719 = *v765;
          }

          if (v719)
          {
            operator delete(v719);
          }

          v716 = *(v365 + 40);
          v715 = *(v365 + 48);
        }

        if (++v717 >= 0xEEEEEEEEEEEEEEEFLL * ((v715 - v716) >> 3))
        {
          goto LABEL_1026;
        }

        continue;
      }
    }

LABEL_1028:
    if (v365 != v366)
    {
      do
      {
          ;
        }

        v365 += 96;
      }

      while (v365 != v366);
      v365 = *a2;
      v366 = a2[1];
    }
  }

  while (v365 != v366)
  {
    sub_26232C110(v365);
    v365 += 96;
  }
}

void sub_26237E280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (v42)
  {
    operator delete(v42);
  }

  if (*v41)
  {
    operator delete(*v41);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_26237E4F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 48) - v1) >> 3);
  if (v2 < 2)
  {
    return 0;
  }

  else
  {
    v4 = (v1 + 120);
    v5 = 1;
    v6 = 1;
    while (1)
    {
      v7 = *(v4 - 10);
      v8 = *(v7 + 24);
      if (vabds_f32(v8, *(v7 + 72)) < 0.01)
      {
        v9 = v4[5];
        v10 = *(v9 + 24);
        if (vabds_f32(v10, *(v9 + 72)) < 0.01 && vabds_f32(v8, v10) < 0.01)
        {
          break;
        }
      }

      ++v5;
      v4 += 15;
      v6 = v2 > v5;
      if (v2 == v5)
      {
        return 0;
      }
    }

    *(v7 + 72) = v8;
    *(*(v4 - 10) + 64) = *(v4[5] + 64);
    v12 = v4[12];
    v13 = v4[13];
    if (v12 != v13)
    {
      v14 = (v4 - 3);
      do
      {
        sub_2622051F4(v14, v12);
        v12 += 16;
      }

      while (v12 != v13);
    }

    memset(v20, 0, sizeof(v20));
    v15 = *(a1 + 40);
    v16 = 120 * v5;
    v17 = v16 + v15;
    do
    {
      sub_262324E74(v20, v15);
      v15 += 120;
    }

    while (v15 != v17);
    v18 = *(a1 + 48);
    for (i = v16 + *(a1 + 40) + 120; i != v18; i += 120)
    {
      sub_262324E74(v20, i);
    }

    sub_2622E9198(a1, v20);
    v21 = v20;
    sub_262324F40(&v21);
  }

  return v6;
}

void sub_26237E668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_262324F40(&a12);
  _Unwind_Resume(a1);
}

float sub_26237E68C(uint64_t a1, uint64_t a2, float a3)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_2622E8DD0(&v17, *(v5 + 40), *(v5 + 48));
      v6 = v17;
      v7 = v18;
      for (i = v17; i != v7; i += 2)
      {
        v16 = *i;
        sub_2621C8F2C(&v19, &v16);
        v16 = i[1];
        sub_2621C8F2C(&v19, &v16);
      }

      if (v6)
      {
        operator delete(v6);
      }

      v5 += 96;
    }

    while (v5 != a2);
    if (v20 != v19)
    {
      v9 = v19 + 1;
      v10 = v19;
      if (v19 + 1 != v20)
      {
        v11 = *v19;
        v10 = v19;
        v12 = v19 + 1;
        do
        {
          v13 = *v12++;
          v14 = v13;
          if (v11 < v13)
          {
            v11 = v14;
            v10 = v9;
          }

          v9 = v12;
        }

        while (v12 != v20);
      }

      a3 = *v10;
    }

    if (v19)
    {
      operator delete(v19);
    }
  }

  return a3;
}

void sub_26237E7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26237E7D0(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 != a6)
  {
    v6 = a5;
    v8 = *(*(a3 + 40) + 120 * a4 + 40);
    v9 = v8[2];
    v10 = v8[8];
    v11 = a4;
    do
    {
      v12 = *(v6 + 40);
      v13 = *(v6 + 48);
      if (v13 != v12)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(v6 + 92);
          v17 = *(a3 + 92);
          if (v11 != v15 || v16 != v17)
          {
            v18 = v12 + v14;
            v19 = *(v12 + v14 + 40);
            v33 = *(v19 + 64);
            v31 = *(v19 + 16);
            v20 = sub_2621DC76C(*&v31, v9, v10, 0.00001);
            v21 = sub_2621DC76C(*v33.i8, v9, v10, 0.00001);
            *&v22 = v21 >= v20 ? v20 : v21;
            if (*&v22 <= *(a2 + 16))
            {
              HIDWORD(v26) = DWORD1(v31);
              v27 = v33;
              v27.i32[0] = v33.i32[2];
              if (v20 >= v21)
              {
                *&v28 = *&v33.i32[2];
              }

              else
              {
                *&v28 = *(&v31 + 2);
              }

              v37 = &unk_2874EF020;
              v38[0] = 0;
              *(v38 + 3) = 0;
              DWORD1(v28) = *(v18 + 64);
              if (v16 == v17)
              {
                *&v26 = 1.0;
              }

              else
              {
                *&v26 = 0.0;
              }

              *(&v28 + 1) = __PAIR64__(LODWORD(v26), LODWORD(v22));
              v36 = v28;
              sub_26237EA34(v34, a2, v18, *&v28, v22, v26, v27, v23, v24, v25);
              v38[0] = v35[0];
              *(v38 + 3) = *(v35 + 3);
              v38[2] = *(v6 + 92);
              v38[3] = v15;
              sub_26237ED08(a1, &v36);
              v12 = *(v6 + 40);
              v13 = *(v6 + 48);
            }
          }

          ++v15;
          v14 += 120;
        }

        while (0xEEEEEEEEEEEEEEEFLL * ((v13 - v12) >> 3) > v15);
      }

      v6 += 96;
    }

    while (v6 != a6);
  }
}

void sub_26237EA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_26237EA34(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int8x16_t a7, double a8, double a9, double a10)
{
  *a1 = &unk_2874EF020;
  *(a1 + 8) = 0;
  *(a1 + 11) = 0;
  v11 = *(a3 + 96);
  v10 = *(a3 + 104);
  v12 = (v10 - v11) >> 4;
  if (v12 < 1)
  {
    return;
  }

  if (v11 == v10)
  {
    v53 = 0;
    v54 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    v17 = 0.0;
  }

  else
  {
    v16 = 0uLL;
    v17 = 0.0;
    __asm { FMOV            V1.4S, #1.0 }

    v23 = 0.0;
    v24 = *(a3 + 96);
    v25 = 0.0;
    do
    {
      if (*(v24 + 10))
      {
        v17 = v17 + 1.0;
      }

      if (*(v24 + 8))
      {
        v23 = v23 + 1.0;
      }

      if (*(v24 + 9))
      {
        v25 = v25 + 1.0;
      }

      a7.i32[0] = *(v24 + 11);
      a7 = vcltzq_s32(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*a7.i8)), 0x1FuLL));
      v16 = vbslq_s8(a7, vaddq_f32(v16, _Q1), v16);
      v24 += 16;
    }

    while (v24 != v10);
    v26 = v16.f32[1];
    v53 = vextq_s8(v16, v16, 8uLL).u64[0];
    v54 = v16.f32[0];
  }

  *&a10 = v12;
  v57 = 0uLL;
  v58 = 0;
  if (v11 == v10)
  {
    v29 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 11;
    v55 = a10;
    do
    {
      if (*(v11 + v28) == 1)
      {
        v56 = v27;
        sub_2621C7CD0(&v57, &v56);
        v11 = *(a3 + 96);
        v10 = *(a3 + 104);
        a10 = v55;
      }

      ++v27;
      v28 += 16;
    }

    while (v27 < (v10 - v11) >> 4);
    v29 = v57;
    if (*(&v57 + 1) != v57)
    {
      v31 = (v57 + 4);
      v30 = *v57;
      v32 = *v57;
      if (v57 + 4 != *(&v57 + 1))
      {
        v33 = (v57 + 4);
        v34 = v57;
        v35 = (v57 + 4);
        do
        {
          v37 = *v35++;
          v36 = v37;
          v38 = v32 < v37;
          if (v32 <= v37)
          {
            v32 = v36;
          }

          if (v38)
          {
            v34 = v33;
          }

          v33 = v35;
        }

        while (v35 != *(&v57 + 1));
        v32 = *v34;
        v39 = v57;
        v40 = (v57 + 4);
        do
        {
          v42 = *v40++;
          v41 = v42;
          if (v42 < v30)
          {
            v30 = v41;
            v39 = v31;
          }

          v31 = v40;
        }

        while (v40 != *(&v57 + 1));
        v30 = *v39;
      }

      v43 = (v32 - v30 + 1) / *&a10;
      goto LABEL_34;
    }
  }

  v43 = 0.0;
LABEL_34:
  v44.f32[0] = v17 / *&a10;
  v45 = v23 / *&a10;
  v46 = v25 / *&a10;
  v47 = v54 / *&a10;
  v48 = v26 / *&a10;
  v49 = vdiv_f32(v53, vdup_lane_s32(*&a10, 0));
  if (v47 >= v43)
  {
    v43 = v47;
  }

  v44.f32[1] = v45;
  v44.i64[1] = __PAIR64__(LODWORD(v43), LODWORD(v46));
  v50 = vand_s8(vmovn_s32(vcgtq_f32(v44, *(a2 + 24))), 0x1000100010001);
  v51 = vzip2_s16(vzip1_s16(v50, vext_s8(v50, v50, 6uLL)), v50);
  *(a1 + 8) = vuzp1_s8(v51, v51).u32[0];
  v52 = vcgt_f32(v49, *(a2 + 48));
  *(a1 + 12) = v48 > *(a2 + 40);
  *(a1 + 13) = v52.i8[0] & 1;
  *(a1 + 14) = v52.i8[4] & 1;
  if (v29)
  {
    *(&v57 + 1) = v29;
    operator delete(v29);
  }
}

void sub_26237ECF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26237ED08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4) + 1;
    if (v9 > 0x555555555555555)
    {
      sub_2621CBEB0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = 16 * (v8 >> 4);
    *v12 = *a2;
    *(v12 + 16) = &unk_2874EF020;
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 27) = *(a2 + 27);
    *(v12 + 32) = *(a2 + 32);
    v6 = v12 + 48;
    v13 = v12 - v8;
    if (v7 != v3)
    {
      v14 = 16;
      v15 = 16 * (v8 >> 4) - v8;
      do
      {
        *v15 = *v7;
        *(v15 + 16) = &unk_2874EF020;
        v16 = v7[6];
        *(v15 + 27) = *(v7 + 27);
        *(v15 + 24) = v16;
        *(v15 + 32) = *(v7 + 4);
        v7 += 12;
        v15 += 48;
        v14 += 48;
      }

      while (v7 != v3);
      v7 = *a1;
    }

    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v3 = *a2;
    *(v3 + 2) = &unk_2874EF020;
    v5 = *(a2 + 24);
    *(v3 + 27) = *(a2 + 27);
    *(v3 + 6) = v5;
    *(v3 + 4) = *(a2 + 32);
    v6 = (v3 + 3);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_26237EF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      v9 = *(a1 + v6 + 8);
      *(v7 + 21) = *(a1 + v6 + 21);
      *(v7 + 8) = v9;
      if (a1 == a3)
      {
        *(v7 + 64) = *(v8 + 64);
      }

      else
      {
        sub_262349150((v7 + 40), *(v8 + 40), *(v8 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 48) - *(v8 + 40)) >> 4));
        *(v7 + 64) = *(v8 + 64);
        sub_2621CA9DC((v7 + 72), *(v8 + 72), *(v8 + 80), (*(v8 + 80) - *(v8 + 72)) >> 2);
        sub_2622069E0((v7 + 96), *(v8 + 96), *(v8 + 104), (*(v8 + 104) - *(v8 + 96)) >> 4);
      }

      v6 += 120;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

double sub_26237EFE4(__n128 *result, __n128 *a2, unint64_t a3, __int128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      a6.n128_u32[0] = a2[-1].n128_u32[2];
      if (a6.n128_f32[0] > result->n128_f32[2])
      {
        a6 = *result;
        *result = a2[-1];
        a2[-1] = a6;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        v23.n128_f64[0] = sub_26237F1EC(result, v20, v21, a4, a6);
        v24 = &v18[v19];
        a6.n128_f64[0] = sub_26237F1EC(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v18[a3];
        v26 = v24;
        while (v26 != v25)
        {
          if (v26->n128_f32[2] <= *(v18 + 2))
          {
            v28 = *v18++;
            a6 = v28;
          }

          else
          {
            v27 = *v26++;
            a6 = v27;
          }

          *v7++ = a6;
          if (v18 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              a6.n128_u64[0] = v30.n128_u64[0];
              *v7++ = v30;
            }

            return a6.n128_f64[0];
          }
        }

        while (v18 != v24)
        {
          v29 = *v18++;
          a6.n128_u64[0] = v29.n128_u64[0];
          *v7++ = v29;
        }
      }

      else
      {
        sub_26237EFE4(result, v20, v21, a4, a5);
        sub_26237EFE4(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v18, a5);

        a6.n128_u64[0] = sub_26237F3AC(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5, v22).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v9 = result + 1;
      if (&result[1] != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          a6.n128_u32[0] = v11[1].n128_u32[2];
          v12 = v11->n128_f32[2];
          v11 = v9;
          if (a6.n128_f32[0] > v12)
          {
            a6 = *v9;
            LODWORD(v13) = v9->n128_u64[1];
            v14 = v10;
            while (1)
            {
              *(result + v14 + 16) = *(result + v14);
              if (!v14)
              {
                break;
              }

              v15 = *(&result->n128_f32[-2] + v14);
              v14 -= 16;
              if (v13 <= v15)
              {
                v16 = (result + v14 + 16);
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = a6;
          }

          v9 = v11 + 1;
          v10 += 16;
        }

        while (&v11[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double sub_26237F1EC(__n128 *a1, __n128 *a2, unint64_t a3, __int128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      a5 = *v7;
      *v5 = *v7;
      return a5.n128_f64[0];
    }

    if (a3 == 2)
    {
      v9 = a2[-1].n128_f32[2];
      v10 = a1->n128_f32[2];
      if (v9 <= v10)
      {
        v11 = a1;
      }

      else
      {
        v11 = &a2[-1];
      }

      *a4 = *v11;
      v5 = a4 + 1;
      if (v9 <= v10)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v19 = &a1[a3 >> 1];
      sub_26237EFE4(a1, v19, a3 >> 1, a4, a3 >> 1);
      sub_26237EFE4(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v7[a3 >> 1];
      while (v20 != a2)
      {
        if (v20->n128_f32[2] <= v7->n128_f32[2])
        {
          v22 = *v7++;
          a5 = v22;
        }

        else
        {
          v21 = *v20++;
          a5 = v21;
        }

        *v5++ = a5;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20++;
            a5.n128_u64[0] = v24;
            *v5++ = v24;
          }

          return a5.n128_f64[0];
        }
      }

      while (v7 != v19)
      {
        v23 = *v7++;
        a5.n128_u64[0] = v23.n128_u64[0];
        *v5++ = v23;
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 1;
      a5 = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v7;
          v16 = v14;
          v7 = v12;
          v17 = ++v14;
          if (v15[1].n128_f32[2] > *(v16 + 2))
          {
            v16[1] = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (v15[1].n128_f32[2] <= *(a4 + v18 - 8))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 16;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v7 + 1;
          a5 = *v7;
          *v17 = *v7;
          v13 += 16;
        }

        while (&v7[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

__n128 sub_26237F3AC(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 result)
{
  if (a5)
  {
    v10 = a5;
    while (v10 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      result.n128_u32[0] = a2->n128_u32[2];
      while (result.n128_f32[0] <= a1->n128_f32[2])
      {
        ++a1;
        if (!--a4)
        {
          return result;
        }
      }

      v44 = a3;
      __src = a6;
      if (a4 >= v10)
      {
        if (a4 == 1)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
          return result;
        }

        v21 = a4 / 2;
        v15 = &a1[a4 / 2];
        v14 = a2;
        if (a2 != a3)
        {
          v22 = a3 - a2;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[v22 >> 1];
            v25 = v24->n128_f32[2];
            v26 = v24 + 1;
            v22 += ~(v22 >> 1);
            if (v25 > v15->n128_f32[2])
            {
              v14 = v26;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = v14 - a2;
      }

      else
      {
        v13 = v10 / 2;
        v14 = &a2[v10 / 2];
        v15 = a2;
        if (a2 != a1)
        {
          v16 = a2 - a1;
          v15 = a1;
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[v16 >> 1];
            v19 = v18->n128_f32[2];
            v20 = v18 + 1;
            v16 += ~(v16 >> 1);
            if (v14->n128_f32[2] > v19)
            {
              v16 = v17;
            }

            else
            {
              v15 = v20;
            }
          }

          while (v16);
        }

        v21 = v15 - a1;
      }

      a4 -= v21;
      v10 -= v13;
      v27 = sub_2623494C4(v15, a2, v14);
      v29 = v27;
      if (v21 + v13 >= a4 + v10)
      {
        result.n128_u64[0] = sub_26237F3AC(v27, v14, v44, a4, v10, __src, a7, v28).n128_u64[0];
        v14 = v15;
        a6 = __src;
        v10 = v13;
        a4 = v21;
        a3 = v29;
      }

      else
      {
        v30 = v15;
        a6 = __src;
        result.n128_u64[0] = sub_26237F3AC(a1, v30, v27, v21, v13, __src, a7, v28).n128_u64[0];
        a1 = v29;
        a3 = v44;
      }

      a2 = v14;
      if (!v10)
      {
        return result;
      }
    }

    if (a4 <= v10)
    {
      if (a2 != a1)
      {
        v39 = a6;
        v40 = a1;
        do
        {
          v41 = *v40++;
          *v39++ = v41;
        }

        while (v40 != a2);
        while (a2 != a3)
        {
          if (a2->n128_f32[2] <= a6->n128_f32[2])
          {
            v43 = *a6++;
            result = v43;
          }

          else
          {
            v42 = *a2++;
            result = v42;
          }

          *a1++ = result;
          if (a6 == v39)
          {
            return result;
          }
        }

        memmove(a1, a6, v39 - a6);
      }
    }

    else if (a2 != a3)
    {
      v31 = a6;
      v32 = a2;
      do
      {
        v33 = *v32++;
        result.n128_u64[0] = v33.n128_u64[0];
        *v31++ = v33;
      }

      while (v32 != a3);
      while (a2 != a1)
      {
        v34 = v31[-1].n128_f32[2];
        v35 = a2[-1].n128_f32[2];
        if (v34 <= v35)
        {
          v36 = v31;
        }

        else
        {
          v36 = a2;
        }

        if (v34 <= v35)
        {
          --v31;
        }

        else
        {
          --a2;
        }

        result = v36[-1];
        a3[-1] = result;
        --a3;
        if (v31 == a6)
        {
          return result;
        }
      }

      if (v31 != a6)
      {
        v37 = 0xFFFFFFFFFFFFFFFLL;
        do
        {
          v38 = v31[-1];
          --v31;
          result.n128_u64[0] = v38.n128_u64[0];
          a3[v37--] = v38;
        }

        while (v31 != a6);
      }
    }
  }

  return result;
}

char *sub_26237F6C4(char *result, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      if (*(a2 - 1) > *(result + 1))
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v20 = a4;
      v21 = a3 >> 1;
      v22 = &result[8 * (a3 >> 1)];
      v23 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_26237F9D4(result, v22, v23, a4);
        v24 = &v20[v21];
        result = sub_26237F9D4(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24);
        v25 = &v20[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *(v26 + 1) > *(v20 + 1);
          if (*(v26 + 1) <= *(v20 + 1))
          {
            v28 = v20;
          }

          else
          {
            v28 = v26;
          }

          v20 += *(v26 + 1) <= *(v20 + 1);
          v26 += v27;
          *v6 = *v28;
          v6 += 8;
          if (v20 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              *v6 = v30;
              v6 += 8;
            }

            return result;
          }
        }

        while (v20 != v24)
        {
          v29 = *v20++;
          *v6 = v29;
          v6 += 8;
        }
      }

      else
      {
        sub_26237F6C4(result, v22, v23, a4, a5);
        sub_26237F6C4(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v20, a5);

        return sub_26220175C(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v20, a5);
      }
    }

    else if (result != a2)
    {
      v9 = result + 8;
      if (result + 8 != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          v12 = *(v11 + 3);
          v13 = *(v11 + 1);
          v11 = v9;
          if (v12 > v13)
          {
            v14 = *v9;
            v15 = HIDWORD(*v11);
            v16 = v10;
            while (1)
            {
              *&result[v16 + 8] = *&result[v16];
              if (!v16)
              {
                break;
              }

              v17 = *&result[v16 - 4];
              v16 -= 8;
              if (v17 >= v15)
              {
                v18 = &result[v16 + 8];
                goto LABEL_16;
              }
            }

            v18 = result;
LABEL_16:
            *v18 = v14;
          }

          v9 = v11 + 8;
          v10 += 8;
        }

        while (v11 + 8 != a2);
      }
    }
  }

  return result;
}

void sub_26237F8D4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_2621CBEB0();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

char *sub_26237F9D4(char *result, char *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_10:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *(result + 1);
      v10 = v8 <= v9;
      if (v8 <= v9)
      {
        v11 = result;
      }

      else
      {
        v11 = a2 - 8;
      }

      *a4 = *v11;
      v4 = a4 + 1;
      if (v10)
      {
        v6 = a2 - 8;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v19 = &result[8 * (a3 >> 1)];
      sub_26237F6C4(result, v19, a3 >> 1, a4, a3 >> 1);
      result = sub_26237F6C4(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v6[8 * (a3 >> 1)];
      while (v20 != a2)
      {
        v21 = *(v20 + 1) <= *(v6 + 1);
        if (*(v20 + 1) <= *(v6 + 1))
        {
          v22 = v6;
        }

        else
        {
          v22 = v20;
        }

        v20 += 8 * (*(v20 + 1) > *(v6 + 1));
        v6 += 8 * v21;
        *v4++ = *v22;
        if (v6 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20;
            v20 += 8;
            *v4++ = v24;
          }

          return result;
        }
      }

      while (v6 != v19)
      {
        v23 = *v6;
        v6 += 8;
        *v4++ = v23;
      }
    }

    else if (result != a2)
    {
      v12 = result + 8;
      *a4 = *result;
      if (result + 8 != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v6;
          v16 = v14;
          v6 = v12;
          v17 = ++v14;
          if (*(v15 + 3) > *(v16 + 1))
          {
            v16[1] = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (*(v15 + 3) <= *(a4 + v18 - 4))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v6 + 8;
          *v17 = *v6;
          v13 += 8;
        }

        while (v6 + 8 != a2);
      }
    }
  }

  return result;
}

double sub_26237FB9C(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 >= 1)
  {
    v6 = *(a2 + 40) + 120 * a3;
    LODWORD(v7) = *(*(v6 - 80) + 72);
    HIDWORD(v7) = *(v6 - 56);
    v12 = v7;
    sub_2621CBA84(a1, &v12);
  }

  v9 = *(a2 + 40);
  if ((-286331153 * ((*(a2 + 48) - v9) >> 3) - 1) > a3)
  {
    v10 = v9 + 120 * a3;
    LODWORD(v11) = *(*(v10 + 160) + 24);
    HIDWORD(v11) = *(v10 + 184);
    v12 = v11;
    sub_2621CBA84(a1, &v12);
  }

  return result;
}

void sub_26237FC5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26237FC7C(uint64_t a1, uint64_t *a2, double **a3, char a4, double a5, double a6, double a7, int8x16_t a8, double a9, double a10, double a11)
{
  v11 = *a2;
  v60 = a2[1];
  if (*a2 != v60)
  {
    v12 = *&a5;
    v61 = 0;
    while (1)
    {
      v17 = *(v11 + 40);
      v16 = *(v11 + 48);
      if (v16 != v17)
      {
        break;
      }

LABEL_92:
      v11 += 96;
      if (v11 == v60)
      {
        return v61 & 1;
      }
    }

    v18 = 0;
    while (1)
    {
      v19 = *a3;
      v20 = a3[1];
      if (*a3 != v20)
      {
        do
        {
          a5 = *v19;
          v21 = *v19 == *(v11 + 92) && v18 == HIDWORD(*v19);
          if (v21)
          {
            goto LABEL_91;
          }

          ++v19;
        }

        while (v19 != v20);
      }

      v22 = v17 + 120 * v18;
      sub_26237EA34(v73, a1, v22, a5, a6, a7, a8, a9, a10, a11);
      if (v73[11] == 1 && v73[9] == 1)
      {
        break;
      }

LABEL_90:
      v17 = *(v11 + 40);
      v16 = *(v11 + 48);
LABEL_91:
      if (0xEEEEEEEEEEEEEEEFLL * ((v16 - v17) >> 3) <= ++v18)
      {
        goto LABEL_92;
      }
    }

    sub_26237E7D0(&v71, a1, v11, v18, *a2, a2[1]);
    sub_26237E7D0(&v69, a1, v11, 0, *a2, a2[1]);
    sub_26237E7D0(&__p, a1, v11, -1 - 286331153 * ((*(v11 + 48) - *(v11 + 40)) >> 3), *a2, a2[1]);
    v23 = *(v22 + 40);
    LODWORD(a5) = *(v23 + 24);
    LODWORD(a6) = *(v23 + 72);
    a7 = vabds_f32(*&a5, *&a6);
    if (a7 < 0.3)
    {
      v24 = v69;
      if (v69 == v70)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v26 = *&a6 >= *&a5 ? *&a5 : *&a6;
        a7 = v26;
        *a8.i32 = *&a5 >= *&a6 ? *&a5 : *&a6;
        do
        {
          v27 = v24[9];
          v28 = *(*a2 + 96 * v24[8] + 40);
          v29 = *v24;
          v24 += 12;
          HIDWORD(a9) = DWORD1(v29);
          a10 = *&v29 + -0.3;
          v30 = *(v28 + 120 * v27 + 40);
          v31 = a10 < a7;
          LODWORD(a10) = *(v30 + 24);
          LODWORD(a11) = *(v30 + 72);
          if (*&a10 < *&a11)
          {
            LODWORD(a10) = *(v30 + 72);
          }

          LODWORD(a9) = HIDWORD(a9);
          v33 = *&a10 > *a8.i32 && *(&a9 + 1) > 0.5;
          v25 += v33 && v31;
        }

        while (v24 != v70);
      }

      v34 = __p;
      if (__p != v68)
      {
        if (*&a6 >= *&a5)
        {
          v35 = *&a5;
        }

        else
        {
          v35 = *&a6;
        }

        a7 = v35;
        if (*&a5 < *&a6)
        {
          *&a5 = *&a6;
        }

        v36 = __p;
        do
        {
          v37 = v36[9];
          v38 = *(*a2 + 96 * v36[8] + 40);
          v39 = *v36;
          v36 += 12;
          HIDWORD(a6) = DWORD1(v39);
          *a8.i64 = *&v39 + -0.3;
          v40 = *(v38 + 120 * v37 + 40);
          v41 = *a8.i64 < a7;
          a8.i32[0] = *(v40 + 24);
          LODWORD(a9) = *(v40 + 72);
          if (*a8.i32 < *&a9)
          {
            a8.i32[0] = *(v40 + 72);
          }

          LODWORD(a6) = HIDWORD(a6);
          v43 = *a8.i32 > *&a5 && *(&a6 + 1) > 0.5;
          v25 += v43 && v41;
        }

        while (v36 != v68);
      }

      if (v25)
      {
LABEL_84:
        if (v34)
        {
          operator delete(v34);
        }

        if (v69)
        {
          operator delete(v69);
        }

        if (v71)
        {
          operator delete(v71);
        }

        goto LABEL_90;
      }
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    v45 = v71;
    v44 = v72;
    if (v71 == v72)
    {
      v52 = 0;
      v51 = 0;
    }

    else
    {
      do
      {
        v46 = *(v22 + 40);
        v47 = *(v46 + 24);
        if (v47 < *(v46 + 72))
        {
          v47 = *(v46 + 72);
        }

        v48 = a3[1];
        if (*a3 == v48)
        {
          v50 = 0;
        }

        else
        {
          a6 = v45[4];
          v49 = *a3 + 1;
          do
          {
            a7 = COERCE_DOUBLE(vceq_s32(*(v49 - 1), *&a6));
            v50 = LODWORD(a7) & HIDWORD(a7);
            if (LODWORD(a7) & HIDWORD(a7))
            {
              break;
            }

            v21 = v49++ == v48;
          }

          while (!v21);
        }

        LODWORD(a6) = *v45;
        LODWORD(a7) = *(a1 + 64);
        *&a5 = v47 + *&a7;
        if (*v45 > *&a5 && ((v50 | (*(v45 + 27) & *(v45 + 25)) ^ 1) & 1) != 0)
        {
          sub_2621D9F60(&v64, v45);
        }

        v45 += 6;
      }

      while (v45 != v44);
      v52 = v64;
      v51 = v65;
    }

    if (v51 == v52 && (a4 & 1) == 0)
    {
LABEL_81:
      if (v52)
      {
        operator delete(v52);
      }

      v34 = __p;
      goto LABEL_84;
    }

    v53 = sub_26237E68C(*a2, a2[1], v12);
    v54 = sub_262380154(&v64, v53);
    if (*(v22 + 20))
    {
      v55 = 16;
    }

    else
    {
      if (*(v22 + 12) != 1)
      {
        goto LABEL_72;
      }

      v55 = 8;
    }

    v54 = *(v22 + v55);
LABEL_72:
    *(*(v22 + 40) + 24) = v54;
    *(*(v22 + 40) + 72) = v54;
    v56 = *(v11 + 92);
    v63 = __PAIR64__(v18, v56);
    for (i = *a3; i != a3[1]; ++i)
    {
      a5 = *i;
      if (*i == v56 && v18 == HIDWORD(*i))
      {
        goto LABEL_80;
      }
    }

    sub_2621CBA84(a3, &v63);
LABEL_80:
    v61 = 1;
    goto LABEL_81;
  }

  v61 = 0;
  return v61 & 1;
}

void sub_2623800F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (v21)
  {
    operator delete(v21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

float sub_262380154(float **a1, float a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (v3 == *a1)
  {
    return a2;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  do
  {
    v6 = *v4;
    v36 = v6;
    if (fabsf(v6.n128_f32[3] + -1.0) < 0.000001 && v6.n128_f32[2] < 0.1)
    {
      v6.n128_u32[0] = v6.n128_u32[1];
      if (v6.n128_f32[1] > 0.3)
      {
        sub_2621D9F60(&v38, &v36);
      }
    }

    v4 += 4;
  }

  while (v4 != v3);
  v7 = v38;
  if (v39 != v38)
  {
    v8 = v38 + 1;
    v9 = v38;
    if (&v38[1] != v39)
    {
      v10 = *v38;
      v9 = v38;
      v11 = v38 + 1;
      do
      {
        v12 = *v11++;
        v13 = v12;
        v14 = vmovn_s32(vcgtq_f32(v12, v10)).u8[0];
        if (v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = 0;
        }

        v10 = vbslq_s8(vdupq_n_s32(v15), v13, v10);
        if (v14)
        {
          v9 = v8;
        }

        v8 = v11;
      }

      while (v11 != v39);
    }

    a2 = *v9;
    goto LABEL_46;
  }

  v36 = 0uLL;
  v37 = 0;
  v16 = *a1;
  v17 = a1[1];
  if (*a1 == v17)
  {
    v20 = 0;
    goto LABEL_31;
  }

  do
  {
    v18 = *v16;
    v35 = v18;
    if (v18.n128_f32[2] < 0.1 && v18.n128_f32[1] > 0.3)
    {
      sub_2621D9F60(&v36, &v35);
    }

    ++v16;
  }

  while (v16 != v17);
  v6 = v36;
  v19 = v36.n128_u64[1];
  v20 = v36.n128_u64[0];
  v21 = v36.n128_u64[1] - v36.n128_u64[0];
  if (v36.n128_u64[1] == v36.n128_u64[0])
  {
    v16 = *a1;
    v17 = a1[1];
LABEL_31:
    if (v17 - v16 < 129)
    {
      v31 = 0;
LABEL_37:
      sub_262380670(v16, v17, v17 - v16, 0, v31, v6);
    }

    else
    {
      v28 = MEMORY[0x277D826F0];
      v29 = v17 - v16;
      while (1)
      {
        v30 = operator new(16 * v29, v28);
        if (v30)
        {
          break;
        }

        v31 = v29 >> 1;
        v27 = v29 > 1;
        v29 >>= 1;
        if (!v27)
        {
          goto LABEL_37;
        }
      }

      v32 = v30;
      sub_262380670(v16, v17, v17 - v16, v30, v29, v6);
      operator delete(v32);
    }

    a2 = **a1;
    if (!v20)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v22 = v21 >> 4;
  if (v21 >> 4 < 129)
  {
    v26 = 0;
LABEL_39:
    sub_262380460(v20, v19, v22, 0, v26, v6);
  }

  else
  {
    v23 = MEMORY[0x277D826F0];
    v24 = v21 >> 4;
    while (1)
    {
      v25 = operator new(16 * v24, v23);
      if (v25)
      {
        break;
      }

      v26 = v24 >> 1;
      v27 = v24 > 1;
      v24 >>= 1;
      if (!v27)
      {
        goto LABEL_39;
      }
    }

    v33 = v25;
    sub_262380460(v20, v19, v22, v25, v24, v6);
    operator delete(v33);
  }

  a2 = v20->n128_f32[0];
LABEL_45:
  v36.n128_u64[1] = v20;
  operator delete(v20);
LABEL_46:
  if (v7)
  {
    operator delete(v7);
  }

  return a2;
}

void sub_262380430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

double sub_262380460(__n128 *result, __n128 *a2, unint64_t a3, __n128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      a6.n128_u32[0] = a2[-1].n128_u32[1];
      if (a6.n128_f32[0] > result->n128_f32[1])
      {
        a6 = *result;
        *result = a2[-1];
        a2[-1] = a6;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        v23.n128_f64[0] = sub_262380A48(result, v20, v21, a4, a6);
        v24 = &v18[v19];
        a6.n128_f64[0] = sub_262380A48(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v18[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = v26->n128_f32[1];
          v28 = v18->n128_f32[1];
          if (v27 <= v28)
          {
            v29 = v18;
          }

          else
          {
            v29 = v26;
          }

          v18 += v27 <= v28;
          v26 += v27 > v28;
          a6 = *v29;
          *v7++ = *v29;
          if (v18 == v24)
          {
            while (v26 != v25)
            {
              v31 = *v26++;
              a6.n128_u64[0] = v31.n128_u64[0];
              *v7++ = v31;
            }

            return a6.n128_f64[0];
          }
        }

        while (v18 != v24)
        {
          v30 = *v18++;
          a6.n128_u64[0] = v30.n128_u64[0];
          *v7++ = v30;
        }
      }

      else
      {
        sub_262380460(result, v20, v21, a4, a5);
        sub_262380460(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v18, a5);

        a6.n128_u64[0] = sub_262380C10(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5, v22).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v9 = result + 1;
      if (&result[1] != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          a6.n128_u32[0] = v11[1].n128_u32[1];
          v12 = v11->n128_f32[1];
          v11 = v9;
          if (a6.n128_f32[0] > v12)
          {
            a6 = *v9;
            LODWORD(v13) = HIDWORD(v9->n128_u64[0]);
            v14 = v10;
            while (1)
            {
              *(result + v14 + 16) = *(result + v14);
              if (!v14)
              {
                break;
              }

              v15 = *(&result->n128_f32[-3] + v14);
              v14 -= 16;
              if (v13 <= v15)
              {
                v16 = (result + v14 + 16);
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = a6;
          }

          v9 = v11 + 1;
          v10 += 16;
        }

        while (&v11[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double sub_262380670(__n128 *result, __n128 *a2, unint64_t a3, __n128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      a6.n128_u32[0] = a2[-1].n128_u32[1];
      if (a6.n128_f32[0] > result->n128_f32[1])
      {
        a6 = *result;
        *result = a2[-1];
        a2[-1] = a6;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        v23.n128_f64[0] = sub_262380880(result, v20, v21, a4, a6);
        v24 = &v18[v19];
        a6.n128_f64[0] = sub_262380880(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v18[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = v26->n128_f32[1];
          v28 = v18->n128_f32[1];
          if (v27 <= v28)
          {
            v29 = v18;
          }

          else
          {
            v29 = v26;
          }

          v18 += v27 <= v28;
          v26 += v27 > v28;
          a6 = *v29;
          *v7++ = *v29;
          if (v18 == v24)
          {
            while (v26 != v25)
            {
              v31 = *v26++;
              a6.n128_u64[0] = v31.n128_u64[0];
              *v7++ = v31;
            }

            return a6.n128_f64[0];
          }
        }

        while (v18 != v24)
        {
          v30 = *v18++;
          a6.n128_u64[0] = v30.n128_u64[0];
          *v7++ = v30;
        }
      }

      else
      {
        sub_262380670(result, v20, v21, a4, a5);
        sub_262380670(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v18, a5);

        a6.n128_u64[0] = sub_262380C10(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5, v22).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v9 = result + 1;
      if (&result[1] != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          a6.n128_u32[0] = v11[1].n128_u32[1];
          v12 = v11->n128_f32[1];
          v11 = v9;
          if (a6.n128_f32[0] > v12)
          {
            a6 = *v9;
            LODWORD(v13) = HIDWORD(v9->n128_u64[0]);
            v14 = v10;
            while (1)
            {
              *(result + v14 + 16) = *(result + v14);
              if (!v14)
              {
                break;
              }

              v15 = *(&result->n128_f32[-3] + v14);
              v14 -= 16;
              if (v13 <= v15)
              {
                v16 = (result + v14 + 16);
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = a6;
          }

          v9 = v11 + 1;
          v10 += 16;
        }

        while (&v11[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double sub_262380880(__n128 *a1, __n128 *a2, unint64_t a3, float *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      a5 = *v7;
      *v5 = *v7;
      return a5.n128_f64[0];
    }

    if (a3 == 2)
    {
      v9 = a2[-1].n128_f32[1];
      v10 = a1->n128_f32[1];
      if (v9 <= v10)
      {
        v11 = a1;
      }

      else
      {
        v11 = a2 - 1;
      }

      *a4 = *v11;
      v5 = a4 + 4;
      if (v9 <= v10)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v19 = &a1[a3 >> 1];
      sub_262380670(a1, v19, a3 >> 1, a4, a3 >> 1);
      sub_262380670(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[4 * (a3 >> 1)], a3 - (a3 >> 1));
      v20 = &v7[a3 >> 1];
      while (v20 != a2)
      {
        v21 = v20[1];
        v22 = v7->n128_f32[1];
        if (v21 <= v22)
        {
          v23 = v7;
        }

        else
        {
          v23 = v20;
        }

        v20 += 4 * (v21 > v22);
        v7 += v21 <= v22;
        a5 = *v23;
        *v5 = *v23;
        v5 += 4;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v25 = *v20;
            v20 += 4;
            a5.n128_u64[0] = v25;
            *v5 = v25;
            v5 += 4;
          }

          return a5.n128_f64[0];
        }
      }

      while (v7 != v19)
      {
        v24 = *v7++;
        a5.n128_u64[0] = v24.n128_u64[0];
        *v5 = v24;
        v5 += 4;
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 1;
      a5 = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v7;
          v16 = v14;
          v7 = v12;
          v14 += 4;
          v17 = v14;
          if (v15[1].n128_f32[1] > v16[1])
          {
            *(v16 + 1) = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (v15[1].n128_f32[1] <= *(a4 + v18 - 12))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 16;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v7 + 1;
          a5 = *v7;
          *v17 = *v7;
          v13 += 16;
        }

        while (&v7[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

double sub_262380A48(__n128 *a1, __n128 *a2, unint64_t a3, float *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      a5 = *v7;
      *v5 = *v7;
      return a5.n128_f64[0];
    }

    if (a3 == 2)
    {
      v9 = a2[-1].n128_f32[1];
      v10 = a1->n128_f32[1];
      if (v9 <= v10)
      {
        v11 = a1;
      }

      else
      {
        v11 = a2 - 1;
      }

      *a4 = *v11;
      v5 = a4 + 4;
      if (v9 <= v10)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v19 = &a1[a3 >> 1];
      sub_262380460(a1, v19, a3 >> 1, a4, a3 >> 1);
      sub_262380460(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[4 * (a3 >> 1)], a3 - (a3 >> 1));
      v20 = &v7[a3 >> 1];
      while (v20 != a2)
      {
        v21 = v20[1];
        v22 = v7->n128_f32[1];
        if (v21 <= v22)
        {
          v23 = v7;
        }

        else
        {
          v23 = v20;
        }

        v20 += 4 * (v21 > v22);
        v7 += v21 <= v22;
        a5 = *v23;
        *v5 = *v23;
        v5 += 4;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v25 = *v20;
            v20 += 4;
            a5.n128_u64[0] = v25;
            *v5 = v25;
            v5 += 4;
          }

          return a5.n128_f64[0];
        }
      }

      while (v7 != v19)
      {
        v24 = *v7++;
        a5.n128_u64[0] = v24.n128_u64[0];
        *v5 = v24;
        v5 += 4;
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 1;
      a5 = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v7;
          v16 = v14;
          v7 = v12;
          v14 += 4;
          v17 = v14;
          if (v15[1].n128_f32[1] > v16[1])
          {
            *(v16 + 1) = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (v15[1].n128_f32[1] <= *(a4 + v18 - 12))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 16;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v7 + 1;
          a5 = *v7;
          *v17 = *v7;
          v13 += 16;
        }

        while (&v7[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

__n128 sub_262380C10(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 result)
{
  if (a5)
  {
    v10 = a5;
    while (v10 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      result.n128_u32[0] = a2->n128_u32[1];
      while (result.n128_f32[0] <= a1->n128_f32[1])
      {
        ++a1;
        if (!--a4)
        {
          return result;
        }
      }

      v45 = a3;
      __src = a6;
      if (a4 >= v10)
      {
        if (a4 == 1)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
          return result;
        }

        v21 = a4 / 2;
        v15 = &a1[a4 / 2];
        v14 = a2;
        if (a2 != a3)
        {
          v22 = a3 - a2;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[v22 >> 1];
            v25 = v24->n128_f32[1];
            v26 = v24 + 1;
            v22 += ~(v22 >> 1);
            if (v25 > v15->n128_f32[1])
            {
              v14 = v26;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = v14 - a2;
      }

      else
      {
        v13 = v10 / 2;
        v14 = &a2[v10 / 2];
        v15 = a2;
        if (a2 != a1)
        {
          v16 = a2 - a1;
          v15 = a1;
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[v16 >> 1];
            v19 = v18->n128_f32[1];
            v20 = v18 + 1;
            v16 += ~(v16 >> 1);
            if (v14->n128_f32[1] > v19)
            {
              v16 = v17;
            }

            else
            {
              v15 = v20;
            }
          }

          while (v16);
        }

        v21 = v15 - a1;
      }

      a4 -= v21;
      v10 -= v13;
      v27 = sub_2623494C4(v15, a2, v14);
      v29 = v27;
      if (v21 + v13 >= a4 + v10)
      {
        result.n128_u64[0] = sub_262380C10(v27, v14, v45, a4, v10, __src, a7, v28).n128_u64[0];
        v14 = v15;
        a6 = __src;
        v10 = v13;
        a4 = v21;
        a3 = v29;
      }

      else
      {
        v30 = v15;
        a6 = __src;
        result.n128_u64[0] = sub_262380C10(a1, v30, v27, v21, v13, __src, a7, v28).n128_u64[0];
        a1 = v29;
        a3 = v45;
      }

      a2 = v14;
      if (!v10)
      {
        return result;
      }
    }

    if (a4 <= v10)
    {
      if (a2 != a1)
      {
        v39 = a6;
        v40 = a1;
        do
        {
          v41 = *v40++;
          *v39 = v41;
          v39 += 4;
        }

        while (v40 != a2);
        while (a2 != a3)
        {
          v42 = a2->n128_f32[1];
          v43 = a6->n128_f32[1];
          if (v42 <= v43)
          {
            v44 = a6;
          }

          else
          {
            v44 = a2;
          }

          a2 += v42 > v43;
          a6 += v42 <= v43;
          result = *v44;
          *a1++ = *v44;
          if (a6 == v39)
          {
            return result;
          }
        }

        memmove(a1, a6, v39 - a6);
      }
    }

    else if (a2 != a3)
    {
      v31 = a6;
      v32 = a2;
      do
      {
        v33 = *v32++;
        result.n128_u64[0] = v33.n128_u64[0];
        *v31 = v33;
        v31 += 4;
      }

      while (v32 != a3);
      while (a2 != a1)
      {
        v34 = *(v31 - 3);
        v35 = a2[-1].n128_f32[1];
        if (v34 <= v35)
        {
          v36 = v31;
        }

        else
        {
          v36 = a2;
        }

        if (v34 <= v35)
        {
          v31 -= 4;
        }

        else
        {
          --a2;
        }

        result = v36[-1];
        a3[-1] = result;
        --a3;
        if (v31 == a6)
        {
          return result;
        }
      }

      if (v31 != a6)
      {
        v37 = 0xFFFFFFFFFFFFFFFLL;
        do
        {
          v38 = *(v31 - 4);
          v31 -= 4;
          result.n128_u64[0] = v38.n128_u64[0];
          a3[v37--] = v38;
        }

        while (v31 != a6);
      }
    }
  }

  return result;
}

uint64_t sub_262380F30(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, double a5, __n128 a6, double a7, int8x16_t a8, double a9, double a10, double a11)
{
  v11 = *a2;
  v76 = a2[1];
  if (*a2 != v76)
  {
    v12 = *&a5;
    v14 = a2;
    v15 = a1;
    v77 = 0;
    v16 = *&a5 + -0.1;
    HIDWORD(a5) = 1070805811;
    v73 = *&a5;
    v71 = *&a5 + -0.1;
    while (1)
    {
      v18 = *(v11 + 40);
      v17 = *(v11 + 48);
      if (v17 != v18)
      {
        break;
      }

LABEL_88:
      v11 += 96;
      if (v11 == v76)
      {
        return v77 & 1;
      }
    }

    v19 = 0;
    v20 = 0;
    while (1)
    {
      v84 = v19;
      v21 = *a3;
      v22 = *(a3 + 8);
      if (*a3 != v22)
      {
        do
        {
          a5 = *v21;
          v23 = *v21 == *(v11 + 92) && v20 == HIDWORD(*v21);
          if (v23)
          {
            goto LABEL_59;
          }

          ++v21;
        }

        while (v21 != v22);
      }

      v24 = v18 + 120 * v20;
      v25 = *(v24 + 40);
      LODWORD(a5) = *(v25 + 24);
      a6.n128_u32[0] = *(v25 + 72);
      if (a6.n128_f32[0] < *&a5)
      {
        LODWORD(a5) = *(v25 + 72);
      }

      if (*&a5 <= v16)
      {
        break;
      }

LABEL_59:
      ++v20;
      v19 = v84 + 1;
      if (0xEEEEEEEEEEEEEEEFLL * ((v17 - v18) >> 3) <= v20)
      {
        goto LABEL_88;
      }
    }

    sub_26237EA34(v91, v15, v18 + 120 * v20, a5, a6.n128_f64[0], a7, a8, a9, a10, a11);
    if (v91[8])
    {
      a5 = *(v24 + 64);
      v18 = *(v11 + 40);
      a6.n128_u32[1] = 1070805811;
      if (a5 > 0.3)
      {
LABEL_58:
        v17 = *(v11 + 48);
        goto LABEL_59;
      }

      v26 = *(v18 + 120 * v20 + 40);
      v27 = *v14;
      v28 = v14[1];
      if (vabds_f32(v26[3].f32[0], v26[9].f32[0]) < 0.05 && v27 != v28)
      {
        v74 = *v14;
        v75 = *(v11 + 40);
        v79 = v11;
        v80 = v14[1];
        v29 = v26[8];
        v83 = *v26[2].f32;
        LODWORD(v30) = v26[3];
        v31 = *v14;
        while (1)
        {
          v32 = *(v31 + 40);
          v33 = *(v31 + 48) - v32;
          if (v33)
          {
            break;
          }

LABEL_32:
          v31 += 96;
          v28 = v80;
          if (v31 == v80)
          {
            v12 = v73;
            v14 = a2;
            v15 = a1;
            v11 = v79;
            v16 = v71;
            v27 = v74;
            goto LABEL_35;
          }
        }

        v34 = 0;
        v35 = *(v31 + 92);
        v36 = *(v79 + 92);
        v37 = 0xEEEEEEEEEEEEEEEFLL * (v33 >> 3);
        v38 = v84;
        v39 = v32 + 40;
        while (1)
        {
          if (v38 != v34 || v35 != v36)
          {
            v40 = *(*v39 + 24);
            v41 = *(*v39 + 72);
            if (vabds_f32(v40, v41) >= 0.05)
            {
              v82 = *v26[8].f32;
              v42 = sub_2621DC76C(v26[2], *&v83, v29, 0.00001);
              v43 = sub_2621DC76C(*&v82, *&v83, v29, 0.00001);
              v38 = v84;
              if (v43 >= v42)
              {
                v43 = v42;
              }

              if (v43 <= *(a1 + 16))
              {
                v44 = v41 >= v40 ? v40 : v41;
                a5 = vabds_f32(v30, v44);
                a6.n128_u32[1] = 1070805811;
                if (a5 < 0.3)
                {
                  break;
                }
              }
            }
          }

          ++v34;
          v39 += 120;
          if (v37 <= v34)
          {
            goto LABEL_32;
          }
        }

        v12 = v73;
        v14 = a2;
        v15 = a1;
        v11 = v79;
        v16 = v71;
        v18 = v75;
        goto LABEL_58;
      }
    }

    else
    {
      v27 = *v14;
      v28 = v14[1];
    }

LABEL_35:
    sub_26237E7D0(&v89, v15, v11, v20, v27, v28);
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v46 = v89;
    v45 = v90;
    v47 = v89;
    if (v89 == v90)
    {
      v54 = 0;
      v53 = 0;
    }

    else
    {
      do
      {
        v48 = *(v24 + 40);
        v49 = *(v48 + 24);
        if (v49 < *(v48 + 72))
        {
          v49 = *(v48 + 72);
        }

        v50 = *(a3 + 8);
        if (*a3 == v50)
        {
          v52 = 0;
        }

        else
        {
          v51 = *a3 + 8;
          do
          {
            a7 = COERCE_DOUBLE(vceq_s32(*(v51 - 8), v47[2]));
            v52 = LODWORD(a7) & HIDWORD(a7);
            if (LODWORD(a7) & HIDWORD(a7))
            {
              break;
            }

            v23 = v51 == v50;
            v51 += 8;
          }

          while (!v23);
        }

        a6 = *v47;
        LODWORD(a7) = HIDWORD(*v47);
        if (COERCE_FLOAT(*v47) > (v49 - *(v15 + 64)) && (v52 | *(v47 + 24)) & 1 | (*&a7 > 0.5))
        {
          sub_2621D9F60(&v86, v47);
        }

        v47 += 3;
      }

      while (v47 != v45);
      v54 = v86;
      v53 = v87;
    }

    if (v53 != v54 || (a4 & 1) != 0)
    {
      if (*(v11 + 48) - *(v11 + 40) == 120 && *(v24 + 64) > 0.5)
      {
        LODWORD(a5) = *(v11 + 92);
        HIDWORD(a5) = v20;
        v56 = *(a3 + 8);
        v55 = *(a3 + 16);
        if (v56 >= v55)
        {
          v62 = (v56 - *a3) >> 3;
          if ((v62 + 1) >> 61)
          {
            sub_2621CBEB0();
          }

          v63 = v55 - *a3;
          v64 = v63 >> 2;
          if (v63 >> 2 <= (v62 + 1))
          {
            v64 = v62 + 1;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFF8)
          {
            v65 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v64;
          }

          if (v65)
          {
            sub_2621CBEC8(v65);
          }

          v66 = (8 * v62);
          *v66 = a5;
          v57 = 8 * v62 + 8;
          v67 = *(a3 + 8) - *a3;
          v68 = v66 - v67;
          memcpy(v66 - v67, *a3, v67);
          v69 = *a3;
          *a3 = v68;
          *(a3 + 8) = v57;
          *(a3 + 16) = 0;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v56 = a5;
          v57 = (v56 + 1);
        }

        *(a3 + 8) = v57;
        if (!v54)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v58 = sub_262380154(&v86, v12);
        *(*(v24 + 40) + 24) = v58;
        *(*(v24 + 40) + 72) = v58;
        v59 = *(v11 + 92);
        v85 = __PAIR64__(v20, v59);
        for (i = *a3; i != *(a3 + 8); ++i)
        {
          a5 = *i;
          if (*i == v59 && v20 == HIDWORD(*i))
          {
            goto LABEL_73;
          }
        }

        sub_2621CBA84(a3, &v85);
LABEL_73:
        v77 = 1;
        if (!v54)
        {
          goto LABEL_55;
        }
      }
    }

    else if (!v54)
    {
LABEL_55:
      if (v46)
      {
        operator delete(v46);
      }

      v18 = *(v11 + 40);
      goto LABEL_58;
    }

    operator delete(v54);
    goto LABEL_55;
  }

  v77 = 0;
  return v77 & 1;
}

void sub_2623814C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (v32)
  {
    operator delete(v32);
    v31 = a31;
  }

  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

double sub_26238150C(__n128 *result, __n128 *a2, unint64_t a3, __int128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      a6.n128_u32[0] = a2[-1].n128_u32[1];
      if (a6.n128_f32[0] > result->n128_f32[1])
      {
        a6 = *result;
        *result = a2[-1];
        a2[-1] = a6;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        v23.n128_f64[0] = sub_262381ADC(result, v20, v21, a4, a6);
        v24 = &v18[v19];
        a6.n128_f64[0] = sub_262381ADC(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v18[a3];
        v26 = v24;
        while (v26 != v25)
        {
          if (v26->n128_f32[1] <= *(v18 + 1))
          {
            v28 = *v18++;
            a6 = v28;
          }

          else
          {
            v27 = *v26++;
            a6 = v27;
          }

          *v7++ = a6;
          if (v18 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              a6.n128_u64[0] = v30.n128_u64[0];
              *v7++ = v30;
            }

            return a6.n128_f64[0];
          }
        }

        while (v18 != v24)
        {
          v29 = *v18++;
          a6.n128_u64[0] = v29.n128_u64[0];
          *v7++ = v29;
        }
      }

      else
      {
        sub_26238150C(result, v20, v21, a4, a5);
        sub_26238150C(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v18, a5);

        a6.n128_u64[0] = sub_262381C9C(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5, v22).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v9 = result + 1;
      if (&result[1] != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          a6.n128_u32[0] = v11[1].n128_u32[1];
          v12 = v11->n128_f32[1];
          v11 = v9;
          if (a6.n128_f32[0] > v12)
          {
            a6 = *v9;
            LODWORD(v13) = HIDWORD(v9->n128_u64[0]);
            v14 = v10;
            while (1)
            {
              *(result + v14 + 16) = *(result + v14);
              if (!v14)
              {
                break;
              }

              v15 = *(&result->n128_f32[-3] + v14);
              v14 -= 16;
              if (v13 <= v15)
              {
                v16 = (result + v14 + 16);
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = a6;
          }

          v9 = v11 + 1;
          v10 += 16;
        }

        while (&v11[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double sub_262381714(__n128 *result, __n128 *a2, unint64_t a3, __int128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      a6.n128_u32[0] = a2[-1].n128_u32[1];
      if (a6.n128_f32[0] > result->n128_f32[1])
      {
        a6 = *result;
        *result = a2[-1];
        a2[-1] = a6;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        v23.n128_f64[0] = sub_26238191C(result, v20, v21, a4, a6);
        v24 = &v18[v19];
        a6.n128_f64[0] = sub_26238191C(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v18[a3];
        v26 = v24;
        while (v26 != v25)
        {
          if (v26->n128_f32[1] <= *(v18 + 1))
          {
            v28 = *v18++;
            a6 = v28;
          }

          else
          {
            v27 = *v26++;
            a6 = v27;
          }

          *v7++ = a6;
          if (v18 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              a6.n128_u64[0] = v30.n128_u64[0];
              *v7++ = v30;
            }

            return a6.n128_f64[0];
          }
        }

        while (v18 != v24)
        {
          v29 = *v18++;
          a6.n128_u64[0] = v29.n128_u64[0];
          *v7++ = v29;
        }
      }

      else
      {
        sub_262381714(result, v20, v21, a4, a5);
        sub_262381714(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v18, a5);

        a6.n128_u64[0] = sub_262381C9C(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5, v22).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v9 = result + 1;
      if (&result[1] != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          a6.n128_u32[0] = v11[1].n128_u32[1];
          v12 = v11->n128_f32[1];
          v11 = v9;
          if (a6.n128_f32[0] > v12)
          {
            a6 = *v9;
            LODWORD(v13) = HIDWORD(v9->n128_u64[0]);
            v14 = v10;
            while (1)
            {
              *(result + v14 + 16) = *(result + v14);
              if (!v14)
              {
                break;
              }

              v15 = *(&result->n128_f32[-3] + v14);
              v14 -= 16;
              if (v13 <= v15)
              {
                v16 = (result + v14 + 16);
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = a6;
          }

          v9 = v11 + 1;
          v10 += 16;
        }

        while (&v11[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double sub_26238191C(__n128 *a1, __n128 *a2, unint64_t a3, __int128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      a5 = *v7;
      *v5 = *v7;
      return a5.n128_f64[0];
    }

    if (a3 == 2)
    {
      v9 = a2[-1].n128_f32[1];
      v10 = a1->n128_f32[1];
      if (v9 <= v10)
      {
        v11 = a1;
      }

      else
      {
        v11 = a2 - 1;
      }

      *a4 = *v11;
      v5 = a4 + 1;
      if (v9 <= v10)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v19 = &a1[a3 >> 1];
      sub_262381714(a1, v19, a3 >> 1, a4, a3 >> 1);
      sub_262381714(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v7[a3 >> 1];
      while (v20 != a2)
      {
        if (v20[1] <= v7->n128_f32[1])
        {
          v22 = *v7++;
          a5 = v22;
        }

        else
        {
          v21 = *v20;
          v20 += 4;
          a5 = v21;
        }

        *v5++ = a5;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20;
            v20 += 4;
            a5.n128_u64[0] = v24;
            *v5++ = v24;
          }

          return a5.n128_f64[0];
        }
      }

      while (v7 != v19)
      {
        v23 = *v7++;
        a5.n128_u64[0] = v23.n128_u64[0];
        *v5++ = v23;
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 1;
      a5 = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v7;
          v16 = v14;
          v7 = v12;
          v17 = ++v14;
          if (v15[1].n128_f32[1] > *(v16 + 1))
          {
            v16[1] = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (v15[1].n128_f32[1] <= *(a4 + v18 - 12))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 16;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v7 + 1;
          a5 = *v7;
          *v17 = *v7;
          v13 += 16;
        }

        while (&v7[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

double sub_262381ADC(__n128 *a1, __n128 *a2, unint64_t a3, __int128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      a5 = *v7;
      *v5 = *v7;
      return a5.n128_f64[0];
    }

    if (a3 == 2)
    {
      v9 = a2[-1].n128_f32[1];
      v10 = a1->n128_f32[1];
      if (v9 <= v10)
      {
        v11 = a1;
      }

      else
      {
        v11 = a2 - 1;
      }

      *a4 = *v11;
      v5 = a4 + 1;
      if (v9 <= v10)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v19 = &a1[a3 >> 1];
      sub_26238150C(a1, v19, a3 >> 1, a4, a3 >> 1);
      sub_26238150C(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v7[a3 >> 1];
      while (v20 != a2)
      {
        if (v20[1] <= v7->n128_f32[1])
        {
          v22 = *v7++;
          a5 = v22;
        }

        else
        {
          v21 = *v20;
          v20 += 4;
          a5 = v21;
        }

        *v5++ = a5;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20;
            v20 += 4;
            a5.n128_u64[0] = v24;
            *v5++ = v24;
          }

          return a5.n128_f64[0];
        }
      }

      while (v7 != v19)
      {
        v23 = *v7++;
        a5.n128_u64[0] = v23.n128_u64[0];
        *v5++ = v23;
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 1;
      a5 = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v7;
          v16 = v14;
          v7 = v12;
          v17 = ++v14;
          if (v15[1].n128_f32[1] > *(v16 + 1))
          {
            v16[1] = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (v15[1].n128_f32[1] <= *(a4 + v18 - 12))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 16;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v7 + 1;
          a5 = *v7;
          *v17 = *v7;
          v13 += 16;
        }

        while (&v7[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

__n128 sub_262381C9C(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 result)
{
  if (a5)
  {
    v10 = a5;
    while (v10 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      result.n128_u32[0] = a2->n128_u32[1];
      while (result.n128_f32[0] <= a1->n128_f32[1])
      {
        ++a1;
        if (!--a4)
        {
          return result;
        }
      }

      v44 = a3;
      __src = a6;
      if (a4 >= v10)
      {
        if (a4 == 1)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
          return result;
        }

        v21 = a4 / 2;
        v15 = &a1[a4 / 2];
        v14 = a2;
        if (a2 != a3)
        {
          v22 = a3 - a2;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[v22 >> 1];
            v25 = v24->n128_f32[1];
            v26 = v24 + 1;
            v22 += ~(v22 >> 1);
            if (v25 > v15->n128_f32[1])
            {
              v14 = v26;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = v14 - a2;
      }

      else
      {
        v13 = v10 / 2;
        v14 = &a2[v10 / 2];
        v15 = a2;
        if (a2 != a1)
        {
          v16 = a2 - a1;
          v15 = a1;
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[v16 >> 1];
            v19 = v18->n128_f32[1];
            v20 = v18 + 1;
            v16 += ~(v16 >> 1);
            if (v14->n128_f32[1] > v19)
            {
              v16 = v17;
            }

            else
            {
              v15 = v20;
            }
          }

          while (v16);
        }

        v21 = v15 - a1;
      }

      a4 -= v21;
      v10 -= v13;
      v27 = sub_2623494C4(v15, a2, v14);
      v29 = v27;
      if (v21 + v13 >= a4 + v10)
      {
        result.n128_u64[0] = sub_262381C9C(v27, v14, v44, a4, v10, __src, a7, v28).n128_u64[0];
        v14 = v15;
        a6 = __src;
        v10 = v13;
        a4 = v21;
        a3 = v29;
      }

      else
      {
        v30 = v15;
        a6 = __src;
        result.n128_u64[0] = sub_262381C9C(a1, v30, v27, v21, v13, __src, a7, v28).n128_u64[0];
        a1 = v29;
        a3 = v44;
      }

      a2 = v14;
      if (!v10)
      {
        return result;
      }
    }

    if (a4 <= v10)
    {
      if (a2 != a1)
      {
        v39 = a6;
        v40 = a1;
        do
        {
          v41 = *v40++;
          *v39++ = v41;
        }

        while (v40 != a2);
        while (a2 != a3)
        {
          if (a2->n128_f32[1] <= a6->n128_f32[1])
          {
            v43 = *a6++;
            result = v43;
          }

          else
          {
            v42 = *a2++;
            result = v42;
          }

          *a1++ = result;
          if (a6 == v39)
          {
            return result;
          }
        }

        memmove(a1, a6, v39 - a6);
      }
    }

    else if (a2 != a3)
    {
      v31 = a6;
      v32 = a2;
      do
      {
        v33 = *v32++;
        result.n128_u64[0] = v33.n128_u64[0];
        *v31++ = v33;
      }

      while (v32 != a3);
      while (a2 != a1)
      {
        v34 = v31[-1].n128_f32[1];
        v35 = a2[-1].n128_f32[1];
        if (v34 <= v35)
        {
          v36 = v31;
        }

        else
        {
          v36 = a2;
        }

        if (v34 <= v35)
        {
          --v31;
        }

        else
        {
          --a2;
        }

        result = v36[-1];
        a3[-1] = result;
        --a3;
        if (v31 == a6)
        {
          return result;
        }
      }

      if (v31 != a6)
      {
        v37 = 0xFFFFFFFFFFFFFFFLL;
        do
        {
          v38 = v31[-1];
          --v31;
          result.n128_u64[0] = v38.n128_u64[0];
          a3[v37--] = v38;
        }

        while (v31 != a6);
      }
    }
  }

  return result;
}

id sub_262381FB4(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (qword_27FF0C3D8 != -1)
  {
    dispatch_once(&qword_27FF0C3D8, &unk_2874EF030);
  }

  v9 = qword_27FF0C3D0;
  if (!v9)
  {
    goto LABEL_12;
  }

  if (qword_27FF0C060 != -1)
  {
    dispatch_once(&qword_27FF0C060, &unk_2874EE100);
  }

  v10 = qword_27FF0C058;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v21 = 138543362;
    v22 = v9;
    _os_log_impl(&dword_2621C3000, v10, OS_LOG_TYPE_INFO, "_RSResourcePath: overriddenBasePath=%{public}@", &v21, 0xCu);
  }

  v12 = objc_msgSend_stringByAppendingPathComponent_(v9, v11, v5);
  v15 = v12;
  if (v6)
  {
    v16 = objc_msgSend_stringByAppendingPathExtension_(v12, v13, v6);

    v15 = v16;
  }

  v17 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v13, v14);
  v19 = objc_msgSend_fileExistsAtPath_(v17, v18, v15);

  if ((v19 & 1) == 0)
  {

LABEL_12:
    if (!v7 || (objc_msgSend_pathForResource_ofType_(v7, v8, v5, v6), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (qword_27FF0C3E0 != -1)
      {
        dispatch_once(&qword_27FF0C3E0, &unk_2874EF050);
      }

      v15 = 0;
    }
  }

  return v15;
}

void sub_2623821D4()
{
  if (os_variant_has_internal_content())
  {
    v2 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v0, v1);
    v5 = objc_msgSend_environment(v2, v3, v4);
    v7 = objc_msgSend_objectForKey_(v5, v6, @"_RS_OVERRIDDEN_RESOURCE_BASE_PATH");
    v8 = qword_27FF0C3D0;
    qword_27FF0C3D0 = v7;

    v9 = sub_262382374(qword_27FF0C3D0);
    v10 = qword_27FF0C3D0;
    qword_27FF0C3D0 = v9;

    if (!v9)
    {
      v11 = CFPreferencesCopyAppValue(@"_RSOverriddenResourceBasePath", *MEMORY[0x277CBF028]);
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFStringGetTypeID())
        {
          v14 = sub_262382374(v12);
          v15 = qword_27FF0C3D0;
          qword_27FF0C3D0 = v14;

          if (v14)
          {
            return;
          }
        }

        else
        {
          CFRelease(v12);
        }
      }

      v16 = CFPreferencesCopyAppValue(@"_RSOverriddenResourceBasePath", @"com.apple.RoomScanCore");
      if (v16)
      {
        cf = v16;
        v17 = CFGetTypeID(v16);
        if (v17 == CFStringGetTypeID())
        {
          v18 = sub_262382374(cf);
          v19 = qword_27FF0C3D0;
          qword_27FF0C3D0 = v18;
        }

        else
        {

          CFRelease(cf);
        }
      }
    }
  }
}

id sub_262382374(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_length(v1, v2, v3))
  {
    v15 = 0;
    v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v7, v8, v4, &v15);
    v10 = v15;

    v13 = 0;
    if (isDirectory && (v10 & 1) != 0)
    {
      v13 = objc_msgSend_copy(v4, v11, v12);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_262382624(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _RSFrame;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id RSFrameToDictionary(void *a1)
{
  v217 = *MEMORY[0x277D85DE8];
  v198 = a1;
  v199 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v1, v2);
  v3 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(v198, v4, v5);
  v8 = objc_msgSend_numberWithDouble_(v3, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v9, v8, @"timestamp");

  v197 = objc_msgSend_camera(v198, v10, v11);
  v189 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
  objc_msgSend_pose(v197, v14, v15);
  v191 = v17;
  v193 = v16;
  v190 = v18;
  v195 = v19;
  v209 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v20, v21, *&v19);
  v187 = v209;
  v210 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, *&v193);
  v185 = v210;
  v183 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v24, v25, *&v191);
  v211 = v183;
  v182 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v26, v27, *&v190);
  v212 = v182;
  v181 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, &v209, 4);
  v213 = v181;
  HIDWORD(v29) = DWORD1(v195);
  LODWORD(v29) = DWORD1(v195);
  v180 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v30, v31, v29);
  v205 = v180;
  HIDWORD(v32) = DWORD1(v193);
  LODWORD(v32) = DWORD1(v193);
  v179 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v33, v34, v32);
  v206 = v179;
  HIDWORD(v35) = DWORD1(v191);
  LODWORD(v35) = DWORD1(v191);
  v178 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v35);
  v207 = v178;
  HIDWORD(v38) = DWORD1(v190);
  LODWORD(v38) = DWORD1(v190);
  v177 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v39, v40, v38);
  v208 = v177;
  v176 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v41, &v205, 4);
  v214 = v176;
  v175 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v42, v43, COERCE_DOUBLE(__PAIR64__(DWORD1(v195), DWORD2(v195))));
  v201 = v175;
  v174 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, COERCE_DOUBLE(__PAIR64__(DWORD1(v193), DWORD2(v193))));
  v202 = v174;
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, COERCE_DOUBLE(__PAIR64__(DWORD1(v191), DWORD2(v191))));
  v203 = v48;
  v51 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v49, v50, COERCE_DOUBLE(__PAIR64__(DWORD1(v190), DWORD2(v190))));
  v204 = v51;
  v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, &v201, 4);
  v215 = v53;
  v56 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v54, v55, COERCE_DOUBLE(__PAIR64__(DWORD1(v195), HIDWORD(v195))));
  v200[0] = v56;
  v59 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v57, v58, COERCE_DOUBLE(__PAIR64__(DWORD1(v193), HIDWORD(v193))));
  v200[1] = v59;
  v62 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v60, v61, COERCE_DOUBLE(__PAIR64__(DWORD1(v191), HIDWORD(v191))));
  v200[2] = v62;
  v65 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v63, v64, COERCE_DOUBLE(__PAIR64__(DWORD1(v190), HIDWORD(v190))));
  v200[3] = v65;
  v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v66, v200, 4);
  v216 = v67;
  v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, &v213, 4);

  objc_msgSend_setObject_forKeyedSubscript_(v189, v70, v69, @"pose");
  objc_msgSend_intrinsics(v197, v71, v72);
  v192 = v74;
  v194 = v73;
  v196 = v75;
  v209 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v76, v77, *&v75);
  *&v190 = v209;
  v210 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v78, v79, *&v194);
  v188 = v210;
  v211 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v80, v81, *&v192);
  v186 = v211;
  v184 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v82, &v209, 3);
  v213 = v184;
  HIDWORD(v83) = DWORD1(v196);
  LODWORD(v83) = DWORD1(v196);
  v86 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v84, v85, v83);
  v205 = v86;
  HIDWORD(v87) = DWORD1(v194);
  LODWORD(v87) = DWORD1(v194);
  v90 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v88, v89, v87);
  v206 = v90;
  HIDWORD(v91) = DWORD1(v192);
  LODWORD(v91) = DWORD1(v192);
  v94 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v92, v93, v91);
  v207 = v94;
  v96 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v95, &v205, 3);
  v214 = v96;
  v99 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v97, v98, COERCE_DOUBLE(__PAIR64__(DWORD1(v196), DWORD2(v196))));
  v201 = v99;
  v102 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v100, v101, COERCE_DOUBLE(__PAIR64__(DWORD1(v194), DWORD2(v194))));
  v202 = v102;
  v105 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v103, v104, COERCE_DOUBLE(__PAIR64__(DWORD1(v192), DWORD2(v192))));
  v203 = v105;
  v107 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v106, &v201, 3);
  v215 = v107;
  v109 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v108, &v213, 3);

  objc_msgSend_setObject_forKeyedSubscript_(v189, v110, v109, @"intrinsic");
  v111 = MEMORY[0x277CCABB0];
  objc_msgSend_imageResolution(v197, v112, v113);
  v116 = objc_msgSend_numberWithDouble_(v111, v114, v115);
  v213 = v116;
  v117 = MEMORY[0x277CCABB0];
  objc_msgSend_imageResolution(v197, v118, v119);
  v123 = objc_msgSend_numberWithDouble_(v117, v120, v121, v122);
  v214 = v123;
  v125 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v124, &v213, 2);
  objc_msgSend_setObject_forKeyedSubscript_(v189, v126, v125, @"image_resolution");

  v129 = objc_msgSend_copy(v189, v127, v128);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v130, v129, @"camera");

  v131 = MEMORY[0x277CCABB0];
  v134 = objc_msgSend_depthBuffer(v198, v132, v133);
  Width = CVPixelBufferGetWidth(v134);
  v137 = objc_msgSend_numberWithUnsignedLong_(v131, v136, Width);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v138, v137, @"depth_buffer_width");

  v139 = MEMORY[0x277CCABB0];
  v142 = objc_msgSend_depthBuffer(v198, v140, v141);
  Height = CVPixelBufferGetHeight(v142);
  v145 = objc_msgSend_numberWithUnsignedLong_(v139, v144, Height);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v146, v145, @"depth_buffer_height");

  v149 = objc_msgSend_depthBuffer(v198, v147, v148);
  v150 = sub_2623830DC(v149);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v151, v150, @"depth_buffer");

  v152 = MEMORY[0x277CCABB0];
  v155 = objc_msgSend_semanticLabelBuffer(v198, v153, v154);
  v156 = CVPixelBufferGetWidth(v155);
  v158 = objc_msgSend_numberWithUnsignedLong_(v152, v157, v156);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v159, v158, @"semantic_label_buffer_width");

  v160 = MEMORY[0x277CCABB0];
  v163 = objc_msgSend_semanticLabelBuffer(v198, v161, v162);
  v164 = CVPixelBufferGetHeight(v163);
  v166 = objc_msgSend_numberWithUnsignedLong_(v160, v165, v164);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v167, v166, @"semantic_label_buffer_height");

  v170 = objc_msgSend_semanticLabelBuffer(v198, v168, v169);
  v171 = sub_2623830DC(v170);
  objc_msgSend_setObject_forKeyedSubscript_(v199, v172, v171, @"semantic_label_buffer");

  return v199;
}

id sub_2623830DC(__CVBuffer *a1)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  DataSize = CVPixelBufferGetDataSize(a1);
  if (BaseAddress && DataSize)
  {
    v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v3, BaseAddress);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  return v5;
}

_RSFrame *RSFrameFromDictionary(void *a1)
{
  v145 = a1;
  v1 = [_RSFrame alloc];
  v2 = v145;
  if (v1)
  {
    v152.receiver = v1;
    v152.super_class = _RSFrame;
    v4 = objc_msgSendSuper2(&v152, sel_init);
    v5 = v4;
    if (!v4)
    {
LABEL_38:
      v5 = v5;
      v1 = v5;
      goto LABEL_39;
    }

    v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"timestamp");
    objc_msgSend_doubleValue(v6, v7, v8);
    v4->_timestamp = v9;

    v11 = objc_msgSend_objectForKeyedSubscript_(v2, v10, @"vio_tracking_state");

    if (v11)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v2, v12, @"vio_tracking_state");
      v4->_vioTrackingState = objc_msgSend_intValue(v13, v14, v15);
    }

    v16 = objc_msgSend_objectForKeyedSubscript_(v2, v12, @"camera");

    if (!v16)
    {
LABEL_30:
      v86 = objc_msgSend_objectForKeyedSubscript_(v2, v17, @"depth_buffer_width");
      v89 = objc_msgSend_unsignedIntegerValue(v86, v87, v88);

      v91 = objc_msgSend_objectForKeyedSubscript_(v2, v90, @"depth_buffer_height");
      v94 = objc_msgSend_unsignedIntegerValue(v91, v92, v93);

      v96 = objc_msgSend_objectForKeyedSubscript_(v2, v95, @"depth_buffer");

      v98 = MEMORY[0x277CBECE8];
      if (v96)
      {
        if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v89, v94, 0x66646570u, 0, &v4->_depthBuffer))
        {
LABEL_35:
          v1 = 0;
          goto LABEL_39;
        }

        v100 = objc_msgSend_objectForKeyedSubscript_(v2, v99, @"depth_buffer");
        CVPixelBufferLockBaseAddress(v4->_depthBuffer, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(v4->_depthBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v4->_depthBuffer);
        v103 = v100;
        v106 = objc_msgSend_bytes(v103, v104, v105);
        memcpy(BaseAddress, v106, BytesPerRow * v94);
        CVPixelBufferUnlockBaseAddress(v4->_depthBuffer, 0);
      }

      objc_msgSend_objectForKeyedSubscript_(v2, v97, @"depth_confidence_buffer");

      v5->_depthConfidenceBuffer = 0;
      v108 = objc_msgSend_objectForKeyedSubscript_(v2, v107, @"semantic_label_buffer_width");
      v111 = objc_msgSend_unsignedIntegerValue(v108, v109, v110);

      v113 = objc_msgSend_objectForKeyedSubscript_(v2, v112, @"semantic_label_buffer_height");
      v116 = objc_msgSend_unsignedIntegerValue(v113, v114, v115);

      v118 = objc_msgSend_objectForKeyedSubscript_(v2, v117, @"semantic_label_buffer");

      if (v118)
      {
        if (CVPixelBufferCreate(*v98, v111, v116, 0x4C303038u, 0, &v4->_semanticLabelBuffer))
        {
          goto LABEL_35;
        }

        v121 = objc_msgSend_objectForKeyedSubscript_(v2, v120, @"semantic_label_buffer");
        CVPixelBufferLockBaseAddress(v4->_semanticLabelBuffer, 0);
        v122 = CVPixelBufferGetBaseAddress(v4->_semanticLabelBuffer);
        v123 = CVPixelBufferGetBytesPerRow(v4->_semanticLabelBuffer);
        v124 = v121;
        v127 = objc_msgSend_bytes(v124, v125, v126);
        memcpy(v122, v127, v123 * v116);
        CVPixelBufferUnlockBaseAddress(v4->_semanticLabelBuffer, 0);
      }

      objc_msgSend_objectForKeyedSubscript_(v2, v119, @"semantic_confidence_buffer");

      v5->_semanticConfidenceBuffer = 0;
      v5->_colorBuffer = 0;
      goto LABEL_38;
    }

    v18 = objc_msgSend_objectForKeyedSubscript_(v2, v17, @"camera");
    v19 = [_RSCamera alloc];
    v146 = v18;
    if (!v19 || (v153.receiver = v19, v153.super_class = _RSCamera, (v21 = objc_msgSendSuper2(&v153, sel_init)) == 0))
    {
      v23 = 0;
LABEL_29:

      camera = v5->_camera;
      v5->_camera = v23;

      goto LABEL_30;
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(v146, v20, @"intrinsic");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
LABEL_28:

      goto LABEL_29;
    }

    v24 = v23;
    if (objc_msgSend_count(v24, v25, v26) != 3)
    {
      goto LABEL_25;
    }

    v141 = v24;
    v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v27, 0);
    v30 = objc_msgSend_objectAtIndexedSubscript_(v24, v29, 1);
    v140 = v4;
    v33 = objc_msgSend_objectAtIndexedSubscript_(v24, v31, 2);
    for (i = 0; i != 3; ++i)
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v28, v32, i);
      objc_msgSend_floatValue(v35, v36, v37);
      v150 = v38;
      v40 = objc_msgSend_objectAtIndexedSubscript_(v30, v39, i);
      objc_msgSend_floatValue(v40, v41, v42);
      v148 = v43;
      v45 = objc_msgSend_objectAtIndexedSubscript_(v33, v44, i);
      objc_msgSend_floatValue(v45, v46, v47);
      v48 = v150;
      DWORD1(v48) = v148;
      DWORD2(v48) = v49;
      *&v21[2 * i + 4] = v48;
    }

    objc_msgSend_objectForKeyedSubscript_(v146, v50, @"pose");
    v51 = v4 = v140;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v51;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_28;
    }

    v24 = v23;
    if (objc_msgSend_count(v24, v52, v53) == 4)
    {
      v142 = v24;
      v144 = objc_msgSend_objectAtIndexedSubscript_(v24, v54, 0);
      v143 = objc_msgSend_objectAtIndexedSubscript_(v24, v55, 1);
      v57 = objc_msgSend_objectAtIndexedSubscript_(v24, v56, 2);
      v60 = objc_msgSend_objectAtIndexedSubscript_(v24, v58, 3);
      for (j = 0; j != 4; ++j)
      {
        v62 = objc_msgSend_objectAtIndexedSubscript_(v144, v59, j);
        objc_msgSend_floatValue(v62, v63, v64);
        v151 = v65;
        v67 = objc_msgSend_objectAtIndexedSubscript_(v143, v66, j);
        objc_msgSend_floatValue(v67, v68, v69);
        v149 = v70;
        v72 = objc_msgSend_objectAtIndexedSubscript_(v57, v71, j);
        objc_msgSend_floatValue(v72, v73, v74);
        v147 = v75;
        v77 = objc_msgSend_objectAtIndexedSubscript_(v60, v76, j);
        objc_msgSend_floatValue(v77, v78, v79);
        *&v80 = __PAIR64__(v149, v151);
        *(&v80 + 1) = __PAIR64__(v81, v147);
        *&v21[2 * j + 18] = v80;
      }

      objc_msgSend_objectForKeyedSubscript_(v146, v82, @"image_resolution");
      v83 = v4 = v140;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v84 = v83;
      }

      else
      {
        v84 = 0;
      }

      if (v84 && objc_msgSend_count(v84, v129, v130) == 2)
      {
        v132 = objc_msgSend_objectAtIndexedSubscript_(v84, v131, 0);
        objc_msgSend_floatValue(v132, v133, v134);
        v21[2] = v135;

        v24 = objc_msgSend_objectAtIndexedSubscript_(v84, v136, 1);
        objc_msgSend_floatValue(v24, v137, v138);
        v21[3] = v139;
        goto LABEL_27;
      }

      v24 = v84;
    }

    else
    {
LABEL_25:
    }

    v84 = v21;
    v21 = 0;
LABEL_27:
    v23 = v21;

    v21 = v84;
    goto LABEL_28;
  }

  v5 = 0;
LABEL_39:

  return v1;
}

float *sub_262383C48(float *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    a1 = sub_2621CD824(a1 + 2, v7, v8, v9);
  }

  return a1;
}

void sub_262383CE8(void *a1)
{
  sub_262383D20(a1);

  JUMPOUT(0x266727420);
}

void *sub_262383D20(void *a1)
{
  *a1 = &unk_2874EF080;
  a1[96] = &unk_2874EF6A8;
  v2 = a1[112];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[77] = &unk_2874EF6A8;
  v3 = a1[93];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[58] = &unk_2874EF6A8;
  v4 = a1[74];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  a1[39] = &unk_2874EF0B8;
  v5 = a1[55];
  if (v5)
  {
    sub_2621D1B78(v5);
  }

  a1[20] = &unk_2874EF0B8;
  v6 = a1[36];
  if (v6)
  {
    sub_2621D1B78(v6);
  }

  a1[1] = &unk_2874EF0B8;
  v7 = a1[17];
  if (v7)
  {
    sub_2621D1B78(v7);
  }

  return a1;
}

uint64_t sub_262383E6C(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
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
        if (*(**a3 + 12 * *v10 + 8) <= *(**a3 + 12 * *v11 + 8))
        {
          return result;
        }

        *v11 = *v10;
LABEL_176:
        *v10 = v79;
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
      v86 = v11 + 1;
      v87 = v11[1];
      v88 = v11 + 2;
      v89 = v11[2];
      v90 = *v11;
      v91 = **a3;
      v92 = *(v91 + 12 * v87 + 8);
      v93 = *(v91 + 12 * *v11 + 8);
      v94 = *(v91 + 12 * v89 + 8);
      if (v92 <= v93)
      {
        if (v94 <= v92)
        {
          goto LABEL_169;
        }

        *v86 = v89;
        *v88 = v87;
        v95 = v11;
        v96 = v11 + 1;
        result = v87;
        if (v94 > v93)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v95 = v11;
        v96 = v11 + 2;
        result = *v11;
        if (v94 <= v92)
        {
          *v11 = v87;
          v11[1] = v90;
          v95 = v11 + 1;
          v96 = v11 + 2;
          result = v90;
          if (v94 <= v93)
          {
LABEL_169:
            v87 = v89;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v95 = v89;
        *v96 = v90;
        v87 = result;
      }

LABEL_170:
      if (*(v91 + 12 * *v10 + 8) > *(v91 + 12 * v87 + 8))
      {
        *v88 = *v10;
        *v10 = v87;
        v149 = *v88;
        v150 = *v86;
        v151 = *(v91 + 12 * v149 + 8);
        if (v151 > *(v91 + 12 * v150 + 8))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 > *(v91 + 12 * *v11 + 8))
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

      return sub_2623849E8(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v97 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v98 = **a3;
            v99 = 8;
            v100 = v11;
            do
            {
              v102 = *v100;
              v101 = v100[1];
              v100 = v97;
              v103 = *(v98 + 12 * v101 + 8);
              if (v103 > *(v98 + 12 * v102 + 8))
              {
                v104 = v99;
                while (1)
                {
                  *(v11 + v104) = v102;
                  v105 = v104 - 8;
                  if (v104 == 8)
                  {
                    break;
                  }

                  v102 = *(v11 + v104 - 16);
                  v104 -= 8;
                  if (v103 <= *(v98 + 12 * v102 + 8))
                  {
                    v106 = (v11 + v105);
                    goto LABEL_123;
                  }
                }

                v106 = v11;
LABEL_123:
                *v106 = v101;
              }

              v97 = v100 + 1;
              v99 += 8;
            }

            while (v100 + 1 != a2);
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
            v148 = *(v145 + 12 * v146 + 8);
            if (v148 > *(v145 + 12 * v147 + 8))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 > *(v145 + 12 * v147 + 8));
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
        v107 = (v12 - 2) >> 1;
        v108 = *a3;
        v109 = v107;
        do
        {
          v110 = v109;
          if (v107 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = &v11[v111];
            v113 = 2 * v109 + 2;
            v114 = *v108;
            if (v113 < v12 && *(v114 + 12 * *v112 + 8) > *(v114 + 12 * v112[1] + 8))
            {
              ++v112;
              v111 = 2 * v110 + 2;
            }

            v115 = &v11[v110];
            v116 = *v112;
            v117 = *v115;
            v118 = *(v114 + 12 * *v115 + 8);
            if (*(v114 + 12 * *v112 + 8) <= v118)
            {
              do
              {
                v119 = v112;
                *v115 = v116;
                if (v107 < v111)
                {
                  break;
                }

                v120 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = &v11[v111];
                v121 = v120 + 2;
                if (v121 < v12 && *(v114 + 12 * *v112 + 8) > *(v114 + 12 * v112[1] + 8))
                {
                  ++v112;
                  v111 = v121;
                }

                v116 = *v112;
                v115 = v119;
              }

              while (*(v114 + 12 * *v112 + 8) <= v118);
              *v119 = v117;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
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
            result = (2 * v122) | 1;
            v122 = result;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = *v124 + 12 * v131;
              if (*(*v124 + 12 * *(v130 - 1) + 8) > *(result + 8))
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
              v140 = *(v139 + 12 * *v125 + 8);
              if (*(v139 + 12 * *v136 + 8) > v140)
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

                while (*(v139 + 12 * *v136 + 8) > v140);
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
    v17 = *(v15 + 12 * *v10 + 8);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 12 * *v13 + 8);
      v21 = *(v15 + 12 * *v11 + 8);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 12 * *v13 + 8) > *(v15 + 12 * *v11 + 8))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 12 * *v10 + 8) > v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 12 * v29 + 8);
      v32 = *(v15 + 12 * v30 + 8);
      v33 = *(a2 - 2);
      v34 = *(v15 + 12 * v33 + 8);
      if (v31 <= v32)
      {
        if (v34 > v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 12 * *v28 + 8) > *(v15 + 12 * v35 + 8))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 > v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 12 * v36 + 8) > v32)
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
      v41 = *(v15 + 12 * v39 + 8);
      v42 = *(v15 + 12 * v40 + 8);
      v43 = *(a2 - 3);
      v44 = *(v15 + 12 * v43 + 8);
      if (v41 <= v42)
      {
        if (v44 > v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 12 * *v37 + 8) > *(v15 + 12 * v45 + 8))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 > v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 12 * v46 + 8) > v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 12 * *v14 + 8);
      v50 = *(v15 + 12 * *v28 + 8);
      v51 = *v37;
      v52 = *(v15 + 12 * *v37 + 8);
      if (v49 <= v50)
      {
        if (v52 <= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 <= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 <= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 <= v50)
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
    v24 = *(v15 + 12 * *v11 + 8);
    v25 = *(v15 + 12 * *v14 + 8);
    if (v24 <= v25)
    {
      if (v17 > v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 12 * *v11 + 8) > *(v15 + 12 * *v14 + 8))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 > v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 12 * *v10 + 8) > v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 12 * v54 + 8);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 12 * v59 + 8) > v55);
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

        while (*(v15 + 12 * v62 + 8) <= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 12 * v61 + 8) <= v55);
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

          while (*(v15 + 12 * v66 + 8) > v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 12 * v67 + 8) <= v55);
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

      v68 = sub_262384BD4(v11, v57, *a3);
      v11 = v57 + 1;
      result = sub_262384BD4(v57 + 1, a2, *a3);
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
        result = sub_262383E6C(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 12 * v54 + 8);
      if (*(v15 + 12 * *(v11 - 1) + 8) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(v15 + 12 * *v10 + 8))
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

        while (v55 <= *(v15 + 12 * *v11 + 8));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 <= *(v15 + 12 * v69 + 8));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 > *(v15 + 12 * v72 + 8));
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

          while (v55 <= *(v15 + 12 * v75 + 8));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 > *(v15 + 12 * v76 + 8));
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

  v79 = *v11;
  v80 = v11[1];
  v81 = **a3;
  v82 = *(v81 + 12 * v80 + 8);
  v83 = *(v81 + 12 * *v11 + 8);
  v84 = *v10;
  v85 = *(v81 + 12 * *v10 + 8);
  if (v82 > v83)
  {
    if (v85 <= v82)
    {
      *v11 = v80;
      v11[1] = v79;
      if (*(v81 + 12 * *v10 + 8) <= v83)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v84;
    }

    goto LABEL_176;
  }

  if (v85 > v82)
  {
    v11[1] = v84;
    *v10 = v80;
    v143 = *v11;
    v142 = v11[1];
    if (*(v81 + 12 * v142 + 8) > *(v81 + 12 * *v11 + 8))
    {
      *v11 = v142;
      v11[1] = v143;
    }
  }

  return result;
}