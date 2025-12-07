uint64_t sub_239EBE368(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_239E5B574(a1);
}

void *sub_239EBE3A8(void *a1)
{
  v2 = a1[4];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574((a1 + 2));
  v4 = a1[1];
  if (v4)
  {
    sub_239E5E560(v4);
  }

  return a1;
}

void sub_239EBE41C(pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a1, uint64_t a2, double a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void sub_239EBE620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_239E56C80(&a29);
  sub_239E56C80(v29 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_239EBE6A0(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

uint64_t sub_239EBE754(void *a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (a3 <= 0)
  {
    sub_239F739F4(&v43);
  }

  v9 = *a2 * a3;
  LODWORD(v44) = 0;
  v43 = 0;
  __p[0] = &v43;
  sub_239E6D160(a4, v9, __p);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __p[0] = 0;
  if (*a2)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(a2[4] + 4 * v11);
      if (v13 < 0 || *a1 < (a3 + a3 * v13))
      {
        sub_239EA83F8(&v43, __p);
        v12 = 0;
      }

      else if (a3)
      {
        v14 = 12 * v13 * a3;
        v15 = 12 * a3 * v11;
        v16 = a3;
        do
        {
          v17 = a1[4];
          sub_239E56B84(a4);
          v18 = a4[4] + v15;
          v19 = *(v17 + v14);
          *(v18 + 8) = *(v17 + v14 + 8);
          *v18 = v19;
          v14 += 12;
          v15 += 12;
          --v16;
        }

        while (v16);
      }

      v11 = __p[0] + 1;
      __p[0] = v11;
    }

    while (v11 < *a2);
    v20 = v43;
    if (a5 && v43 != v44)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf(__p, "Found %ld invalid indices into authored array of size %ld with element size of %i:", v10, (v44 - v43) >> 3, *a1, a3);
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      *a5 = *__p;
      v20 = v43;
      *(a5 + 16) = v42;
      if (v44 != v20)
      {
        v22 = 0;
        v23 = (v44 - v20) >> 3;
        if (v23 >= 5)
        {
          v23 = 5;
        }

        if (v23 <= 1)
        {
          v23 = 1;
        }

        v24 = 8 * v23;
        while (1)
        {
          v25 = *(v43 + v22);
          v26 = *(a2[4] + 4 * v25);
          v27 = (v26 * a3);
          if (a3 == 1)
          {
            pxrInternal__aapl__pxrReserved__::TfStringPrintf(v39, "index %i", v21, v27);
            v29 = v39[0];
            v30 = v40 < 0;
            v31 = v39;
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::TfStringPrintf(v37, "indices [%i,...,%i]", v21, (v26 * a3), (a3 - 1 + v27));
            v29 = v37[0];
            v30 = v38 < 0;
            v31 = v37;
          }

          if (v30)
          {
            v31 = v29;
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf(__p, "\n\t Invalid index %i at position %ld refers to %s of the authored array, which is out of bounds", v28, v26, v25, v31);
          if (v42 >= 0)
          {
            v32 = __p;
          }

          else
          {
            v32 = __p[0];
          }

          if (v42 >= 0)
          {
            v33 = HIBYTE(v42);
          }

          else
          {
            v33 = __p[1];
          }

          std::string::append(a5, v32, v33);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p[0]);
          }

          if (a3 == 1)
          {
            if (v40 < 0)
            {
              v34 = v39[0];
LABEL_40:
              operator delete(v34);
            }
          }

          else if (v38 < 0)
          {
            v34 = v37[0];
            goto LABEL_40;
          }

          v22 += 8;
          if (v24 == v22)
          {
            v20 = v43;
            break;
          }
        }
      }
    }

    if (v20)
    {
      v44 = v20;
      operator delete(v20);
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void sub_239EBEA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EBEACC(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

uint64_t sub_239EBEB80(void *a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, int16x4_t a6)
{
  if (a3 <= 0)
  {
    sub_239F73A40(&v42);
  }

  v10 = *a2 * a3;
  LODWORD(__p[0]) = 0;
  v42 = __p;
  sub_239EBEEDC(a4, v10, &v42, a6);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p[0] = 0;
  if (*a2)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = *(a2[4] + 4 * v12);
      if (v14 < 0 || *a1 < (a3 + a3 * v14))
      {
        sub_239EA83F8(&v42, __p);
        v13 = 0;
      }

      else if (a3)
      {
        v15 = 4 * v14 * a3;
        v16 = 4 * a3 * v12;
        v17 = a3;
        do
        {
          v18 = *(a1[4] + v15);
          sub_239EBF2E0(a4);
          *(a4[4] + v16) = v18;
          v15 += 4;
          v16 += 4;
          --v17;
        }

        while (v17);
      }

      v12 = __p[0] + 1;
      __p[0] = v12;
    }

    while (v12 < *a2);
    v19 = v42;
    if (a5 && v42 != v43)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf(__p, "Found %ld invalid indices into authored array of size %ld with element size of %i:", v11, (v43 - v42) >> 3, *a1, a3);
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      *a5 = *__p;
      v19 = v42;
      *(a5 + 16) = v41;
      if (v43 != v19)
      {
        v21 = 0;
        v22 = (v43 - v19) >> 3;
        if (v22 >= 5)
        {
          v22 = 5;
        }

        if (v22 <= 1)
        {
          v22 = 1;
        }

        v23 = 8 * v22;
        while (1)
        {
          v24 = *(v42 + v21);
          v25 = *(a2[4] + 4 * v24);
          v26 = (v25 * a3);
          if (a3 == 1)
          {
            pxrInternal__aapl__pxrReserved__::TfStringPrintf(v38, "index %i", v20, v26);
            v28 = v38[0];
            v29 = v39 < 0;
            v30 = v38;
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::TfStringPrintf(v36, "indices [%i,...,%i]", v20, (v25 * a3), (a3 - 1 + v26));
            v28 = v36[0];
            v29 = v37 < 0;
            v30 = v36;
          }

          if (v29)
          {
            v30 = v28;
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf(__p, "\n\t Invalid index %i at position %ld refers to %s of the authored array, which is out of bounds", v27, v25, v24, v30);
          if (v41 >= 0)
          {
            v31 = __p;
          }

          else
          {
            v31 = __p[0];
          }

          if (v41 >= 0)
          {
            v32 = HIBYTE(v41);
          }

          else
          {
            v32 = __p[1];
          }

          std::string::append(a5, v31, v32);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          if (a3 == 1)
          {
            if (v39 < 0)
            {
              v33 = v38[0];
LABEL_40:
              operator delete(v33);
            }
          }

          else if (v37 < 0)
          {
            v33 = v36[0];
            goto LABEL_40;
          }

          v21 += 8;
          if (v23 == v21)
          {
            v19 = v42;
            break;
          }
        }
      }
    }

    if (v19)
    {
      v43 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

void sub_239EBEE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EBEEDC(unint64_t *a1, unint64_t a2, __int32 **a3, int16x4_t a4)
{
  v4 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v8 = a1[4];
    if (v8)
    {
      if (!a1[3])
      {
        v9 = atomic_load(v8 - 2);
        if (v9 == 1)
        {
          if (v4 >= a2)
          {
            v14 = a1[4];
          }

          else
          {
            v10 = a1[4];
            if (*(v10 - 8) < a2)
            {
              v11 = sub_239EBF248(a1, a2);
              v8 = v11;
              if (v4)
              {
                v12 = 0;
                do
                {
                  *(v11 + v12) = *(v10 + v12);
                  v12 += 4;
                }

                while (4 * v4 != v12);
              }
            }

            v13 = 0;
            v14 = v8;
            a4.i32[0] = **a3;
            v15 = (4 * a2 - 4 * v4 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v8 + v4 + 2;
            do
            {
              v19 = vdupq_n_s64(v13);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD40)));
              if (vuzp1_s16(v20, a4).u8[0])
              {
                *(v18 - 2) = a4.i32[0];
              }

              if (vuzp1_s16(v20, a4).i8[2])
              {
                *(v18 - 1) = a4.i32[0];
              }

              if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD30)))).i32[1])
              {
                *v18 = a4.i32[0];
                v18[1] = a4.i32[0];
              }

              v13 += 4;
              v18 += 4;
            }

            while (v17 != v13);
          }

LABEL_51:
          if (v14 != a1[4])
          {
            sub_239E56C80(a1);
            a1[4] = v14;
          }

          *a1 = a2;
          return;
        }

        v8 = a1[4];
      }

      if (v4 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_239EBF248(a1, a2);
      v14 = v30;
      if (v4)
      {
        v32 = 4 * v29;
        v33 = v30;
        do
        {
          v34 = *v8;
          v8 = (v8 + 4);
          *v33 = v34;
          v33 = (v33 + 4);
          v32 -= 4;
        }

        while (v32);
      }

      if (v4 < a2)
      {
        v35 = 0;
        v31.i32[0] = **a3;
        v36 = (4 * a2 - 4 * v4 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v4 + 2;
        do
        {
          v40 = vdupq_n_s64(v35);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD40)));
          if (vuzp1_s16(v41, v31).u8[0])
          {
            *(v39 - 2) = v31.i32[0];
          }

          if (vuzp1_s16(v41, v31).i8[2])
          {
            *(v39 - 1) = v31.i32[0];
          }

          if (vuzp1_s16(v31, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD30)))).i32[1])
          {
            *v39 = v31.i32[0];
            v39[1] = v31.i32[0];
          }

          v35 += 4;
          v39 += 4;
        }

        while (v38 != v35);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v14 = sub_239EBF248(a1, a2);
      v21 = 0;
      v22.i32[0] = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v14 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD40)));
        if (vuzp1_s16(v28, v22).u8[0])
        {
          *(v26 - 2) = v22.i32[0];
        }

        if (vuzp1_s16(v28, v22).i8[2])
        {
          *(v26 - 1) = v22.i32[0];
        }

        if (vuzp1_s16(v22, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD30)))).i32[1])
        {
          *v26 = v22.i32[0];
          v26[1] = v22.i32[0];
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239EBF248(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(size_t) [T = float]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void sub_239EBF2E0(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    if (*(result + 3) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F73A8C(result, result + 4);
    }
  }
}

uint64_t sub_239EBF324(void *a1, float32x4_t *a2, uint64_t a3, void *a4)
{
  v4 = a1[17];
  if (v4)
  {
    v9 = 0;
    do
    {
      v10 = *(*a1 + 200) + 224 * v4[4];
      v38 = 0.0;
      if (sub_239F53DA4(v10, &v38, *a2, a2[1]))
      {
        if (a2[3].f32[1] <= v38 && a2[3].f32[2] > v38 && v38 < *a3)
        {
          sub_239E7BF04(a4, v4 + 4, v4 + 4);
          v13 = *a2;
          v14 = a2[1];
          v15 = v38;
          *a3 = v38;
          v16 = vmlaq_n_f32(v13, v14, v15);
          *(a3 + 80) = v16;
          *v17.i8 = sub_239F53B28(v10, v16);
          v18 = vdupq_lane_s32(*v17.i8, 1).u64[0];
          v19 = vdupq_laneq_s32(v17, 2).u64[0];
          *(a3 + 96) = vmla_f32(vmla_f32(vmul_n_f32(*(v10 + 176), *v17.i32), v18, *(v10 + 184)), v19, *(v10 + 192));
          *(a3 + 104) = vmla_f32(vmla_f32(vmul_n_f32(*(v10 + 200), *v17.i32), v18, *(v10 + 208)), v19, *(v10 + 216));
          v20 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(v10 + 64), *v17.i32), *(v10 + 80), *v17.i8, 1), *(v10 + 96), v17, 2);
          v21 = vmulq_f32(v20, v20);
          *&v22 = vaddv_f32(*v21.f32) + v21.f32[2];
          *v21.f32 = vrsqrte_f32(v22);
          v23 = vmulq_n_f32(v20, vmul_f32(vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)), *v21.f32).f32[0]);
          *(a3 + 16) = v23;
          *(a3 + 112) = *(v10 + 8);
          v24 = vsubq_f32(*(v10 + 32), *(v10 + 16));
          v25 = vmulq_f32(v24, v24);
          v18.f32[0] = vaddv_f32(*v25.f32) + v25.f32[2];
          *v25.f32 = vrsqrte_f32(v18.u32[0]);
          *v25.f32 = vmul_f32(vrsqrts_f32(v18.u32[0], vmul_f32(*v25.f32, *v25.f32)), *v25.f32);
          v26 = vmlaq_n_f32(xmmword_239F9AD20, v24, vmul_f32(*v25.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v25.f32, *v25.f32))).f32[0]);
          v27 = vmulq_f32(v26, v26);
          v25.f32[0] = vaddv_f32(*v27.f32) + v27.f32[2];
          *v27.f32 = vrsqrte_f32(v25.u32[0]);
          v28 = vmulq_n_f32(v26, vmul_f32(vrsqrts_f32(v25.u32[0], vmul_f32(*v27.f32, *v27.f32)), *v27.f32).f32[0]);
          v29 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
          v30 = vmlaq_f32(vnegq_f32(vmulq_f32(v28, v29)), v23, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
          v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
          v32 = vmulq_f32(v30, v30);
          v19.f32[0] = (v32.f32[2] + v32.f32[0]) + v32.f32[1];
          *v32.f32 = vrsqrte_f32(v19.u32[0]);
          v33 = vmulq_n_f32(v31, vmul_f32(vrsqrts_f32(v19.u32[0], vmul_f32(*v32.f32, *v32.f32)), *v32.f32).f32[0]);
          v34 = vmlaq_f32(vnegq_f32(vmulq_f32(v33, v29)), v23, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
          v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
          v36 = vmulq_f32(v34, v34);
          v34.f32[0] = (v36.f32[2] + v36.f32[0]) + v36.f32[1];
          *v36.f32 = vrsqrte_f32(v34.u32[0]);
          *(a3 + 32) = vmulq_n_f32(v35, vmul_f32(vrsqrts_f32(v34.u32[0], vmul_f32(*v36.f32, *v36.f32)), *v36.f32).f32[0]);
          *(a3 + 48) = v33;
          v9 = 1;
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_239EBF5B8(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, void *a6, float32x4_t a7, float32x4_t a8)
{
  v8 = 0;
  if (a8.f32[0] < 0.0)
  {
    return v8;
  }

  v9 = a8.i32[1];
  if (a8.f32[1] < 0.0)
  {
    return v8;
  }

  v10 = a8.i32[2];
  if (a8.f32[2] < 0.0)
  {
    return v8;
  }

  if (!*(a1 + 112))
  {

    return sub_239EBF324(a1, a3, a4, a6);
  }

  v16 = a7;
  v17.i64[0] = 0x3F0000003F000000;
  v17.i64[1] = 0x3F0000003F000000;
  v18 = vmulq_f32(vaddq_f32(a8, a7), v17);
  LOBYTE(v19) = 4 * (v18.f32[0] < a7.f32[2]);
  if (v18.f32[1] < a7.f32[2])
  {
    LOBYTE(v19) = v19 | 2;
  }

  v20 = 4 * (v18.f32[0] < a7.f32[1]);
  if (v18.f32[2] < a7.f32[1])
  {
    v20 |= 1u;
  }

  if (a7.f32[1] < a7.f32[2])
  {
    LOBYTE(v19) = v20;
  }

  v21 = 2 * (v18.f32[1] < a7.f32[0]);
  if (v18.f32[2] < a7.f32[0])
  {
    v21 |= 1u;
  }

  if (a7.f32[0] < a7.f32[1] && a7.f32[0] < a7.f32[2])
  {
    LOBYTE(v19) = v21;
  }

  v88 = a5 ^ 6;
  v23 = v18;
  v23.i32[2] = a7.i32[2];
  v75 = v23;
  v24 = a8;
  v24.i32[2] = v18.i32[2];
  v74 = v24;
  v25 = a1 + 48;
  v26 = a8.f32[0] < a8.f32[1];
  v27 = a8.f32[0] < a8.f32[2];
  if (a8.f32[0] >= v18.f32[1])
  {
    v27 = 0;
  }

  if (a8.f32[0] >= v18.f32[2])
  {
    v26 = 0;
  }

  v82 = v26;
  v83 = v27;
  v28 = a8.f32[0] < v18.f32[2] && a8.f32[0] < v18.f32[1];
  v81 = v28;
  v29 = v18.f32[0] < a8.f32[2] && v18.f32[0] < a8.f32[1];
  v80 = v29;
  v30 = v18.f32[0] < v18.f32[2];
  if (a8.f32[1] >= v18.f32[2])
  {
    v31 = 7;
  }

  else
  {
    v31 = 8;
  }

  v79 = v31;
  v87 = a5 ^ 5;
  v32 = v18;
  v32.i32[1] = a7.i32[1];
  v33 = v32;
  v33.i32[2] = v18.i32[2];
  v72 = v33;
  v34 = a8;
  v34.i32[1] = v18.i32[1];
  v34.i32[2] = a8.i32[2];
  v71 = v34;
  if (a8.f32[1] >= v18.f32[2])
  {
    v35 = 3;
  }

  else
  {
    v35 = 8;
  }

  if (v18.f32[0] < a8.f32[1] && v30)
  {
    v36 = 6;
  }

  else
  {
    v36 = v35;
  }

  v37 = v18.f32[0] < v18.f32[1];
  if (v18.f32[1] >= a8.f32[2])
  {
    v38 = 8;
  }

  else
  {
    v38 = 7;
  }

  v78 = v38;
  v32.i32[2] = a7.i32[2];
  v73 = v32;
  v39 = v18;
  v39.i32[0] = a8.i32[0];
  v70 = v39;
  v86 = a5 ^ 4;
  if (v18.f32[1] >= a8.f32[2])
  {
    v40 = 8;
  }

  else
  {
    v40 = 3;
  }

  if (v37 && v18.f32[0] < a8.f32[2])
  {
    v41 = 5;
  }

  else
  {
    v41 = v40;
  }

  v42 = v18.f32[1] < v18.f32[2];
  if (v18.f32[1] >= v18.f32[2])
  {
    v43 = 5;
  }

  else
  {
    v43 = 6;
  }

  v77 = v43;
  v44 = v18;
  v44.i32[0] = a7.i32[0];
  v69 = v44;
  v45 = v18;
  v45.i32[1] = v9;
  v85 = a5 ^ 3;
  v46 = v45;
  v46.i32[2] = v10;
  v67 = v46;
  v84 = a5 ^ 2;
  v47 = a7;
  v47.i32[1] = v18.i32[1];
  v45.i32[2] = v18.i32[2];
  v68 = v45;
  v47.i32[2] = a7.i32[2];
  v16.i32[2] = v18.i32[2];
  v65 = v16;
  v66 = v47;
  v76 = v18;
  v18.i32[2] = v10;
  v64 = v18;
  v48 = a5 ^ 1;
  if (v42)
  {
    v49 = 2;
  }

  else
  {
    v49 = 1;
  }

  if (v37 && v30)
  {
    v50 = 4;
  }

  else
  {
    v50 = v49;
  }

  while (1)
  {
    if (v19 <= 3u)
    {
      if (v19 > 1u)
      {
        if (v19 == 2)
        {
          v54 = *(v25 + 8 * v84);
          v19 = v36;
          if (v54)
          {
            v55 = sub_239EBF5B8(v54, a2, a3, a4, a5, a6, v66, v68);
            v19 = v36;
            if (v55)
            {
              return 1;
            }
          }
        }

        else
        {
          v59 = *(v25 + 8 * v85);
          if (v59 && (sub_239EBF5B8(v59, a2, a3, a4, a5, a6, v69, v67) & 1) != 0)
          {
            return 1;
          }

          if (!v80)
          {
            return 0;
          }

          v19 = 7;
        }
      }

      else if (v19)
      {
        v57 = *(v25 + 8 * v48);
        v19 = v41;
        if (v57)
        {
          v58 = sub_239EBF5B8(v57, a2, a3, a4, a5, a6, v65, v64);
          v19 = v41;
          if (v58)
          {
            return 1;
          }
        }
      }

      else
      {
        v51 = *(v25 + 8 * a5);
        v19 = v50;
        if (v51)
        {
          v52 = sub_239EBF5B8(v51, a2, a3, a4, a5, a6, a7, v76);
          v19 = v50;
          if (v52)
          {
            return 1;
          }
        }
      }

      goto LABEL_87;
    }

    if (v19 <= 5u)
    {
      if (v19 == 4)
      {
        v53 = *(v25 + 8 * v86);
        if (v53 && (sub_239EBF5B8(v53, a2, a3, a4, a5, a6, v73, v70) & 1) != 0)
        {
          return 1;
        }

        v19 = v77;
        if (v81)
        {
          return 0;
        }
      }

      else
      {
        v60 = *(v25 + 8 * v87);
        if (v60 && (sub_239EBF5B8(v60, a2, a3, a4, a5, a6, v72, v71) & 1) != 0)
        {
          return 1;
        }

        v19 = v78;
        if (v83)
        {
          return 0;
        }
      }

      goto LABEL_87;
    }

    if (v19 != 6)
    {
      break;
    }

    v56 = *(v25 + 8 * v88);
    if (v56 && (sub_239EBF5B8(v56, a2, a3, a4, a5, a6, v75, v74) & 1) != 0)
    {
      return 1;
    }

    v19 = v79;
    if (v82)
    {
      return 0;
    }

LABEL_87:
    if (v19 >= 8)
    {
      return 0;
    }
  }

  v62 = *(v25 + 8 * (a5 ^ 7));
  return v62 && (sub_239EBF5B8(v62, a2, a3, a4, a5, a6, v76, a8) & 1) != 0;
}

uint64_t sub_239EBFA9C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = 0u;
  v21 = 0u;
  _Q2 = *a2;
  v4 = *(a2 + 16);
  v18 = *a2;
  v19 = v4;
  *(&v21 + 4) = *(a2 + 52);
  v6 = *a1;
  v7 = *(v6 + 16);
  if (*&v4 >= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v18.f32[0] = -_Q2.f32[0];
    *&v19 = -*&v4;
    v8 = 4;
  }

  v9 = *(&v4 + 2);
  if (*(&v4 + 1) < 0.0)
  {
    v18.f32[1] = -_Q2.f32[1];
    *(&v19 + 1) = -*(&v4 + 1);
    v8 = v8 | 2;
  }

  v10 = *(v6 + 32);
  if (v9 < 0.0)
  {
    v18.f32[2] = -_Q2.f32[2];
    *(&v19 + 2) = -v9;
    v8 = v8 | 1;
  }

  __asm { FMOV            V2.2S, #1.0 }

  *_Q2.f32 = vdiv_f32(*_Q2.f32, *&v19);
  _Q2.f32[2] = 1.0 / *(&v19 + 2);
  v20 = _Q2;
  LOBYTE(v21) = _Q2.f32[0] < 0.0;
  BYTE1(v21) = _Q2.f32[1] < 0.0;
  BYTE2(v21) = (1.0 / *(&v19 + 2)) < 0.0;
  v15 = vmulq_f32(vsubq_f32(v10, v18), _Q2);
  v16 = vmulq_f32(vsubq_f32(v7, v18), _Q2);
  if (fmaxf(v15.f32[0], fmaxf(v15.f32[1], v15.f32[2])) >= fminf(v16.f32[0], fminf(v16.f32[1], v16.f32[2])))
  {
    return 0;
  }

  else
  {
    return sub_239EBF5B8(v6, &v18, a2, a3, v8, a4, v15, v16);
  }
}

MDLMesh *sub_239EBFBE4(float32x4_t **a1, int a2, uint64_t a3, int a4)
{
  v535[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*a1)
  {
    v532 = 0;
    v533 = 0;
    v534 = 0;
    v529 = 0;
    v530 = 0;
    v10 = (a1 + 1);
    v9 = a1[1];
    v531 = 0;
    __p = 0;
    v527 = 0;
    v528 = 0;
    a1[2] = v9;
    v11 = v4[2];
    v522 = v11;
    if (a3)
    {
      v525 = 0;
      sub_239E73254(a1 + 1, &v525);
    }

    else
    {
      sub_239EC04D8(0, &v532, &v529, v11, v4[1]);
      v525 = 1;
      sub_239E73254(v10, &v525);
    }

    sub_239E73334(&__p, *a1, a2 - 1, a3 | a4, a3, vsubq_f32((*a1)[1], (*a1)[2]), v522, v12);
    v15 = __p;
    v14 = v527;
    if (v527 != __p)
    {
      sub_239E7A428(__p, v527, 126 - 2 * __clz((v527 - __p) >> 3), 1);
      v523 = (*v15)[1];
      sub_239E73254(v10, *v10);
      v16 = v523.n128_f32[1];
      v17 = 1;
      do
      {
        v18 = *v15;
        sub_239EC04D8(a3, &v532, &v529, (*v15)[1], (*v15)[2]);
        v19 = v18[1].n128_f32[1];
        if (v16 < v19)
        {
          sub_239E73254(v10, *v10 + v17++);
          v16 = v19;
        }

        ++*(*v10 + v17);
        ++v15;
      }

      while (v15 != v14);
    }

    v20 = objc_alloc_init(MDLMeshBufferDataAllocator);
    v22 = v529;
    v21 = v530;
    v520 = v20;
    v23 = objc_alloc(MEMORY[0x277CBEA90]);
    v518 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v23, v24, v529, v21 - v22, v28, v29, v30, v31, 0, v25, v26, v27);
    v524 = objc_msgSend_newBufferWithData_type_(v20, v32, v518, 2, v37, v38, v39, v40, v33, v34, v35, v36);
    if (objc_msgSend_conformsToProtocol_(v524, v41, &unk_284D24D98, v42, v47, v48, v49, v50, v43, v44, v45, v46))
    {
      v59 = v524;
      v70 = objc_msgSend_stringByAppendingString_(@"mesh", v60, @"-Indices", v61, v66, v67, v68, v69, v62, v63, v64, v65);
      objc_msgSend_setName_(v59, v71, v70, v72, v77, v78, v79, v80, v73, v74, v75, v76);
    }

    v521 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v51, v532, v533 - v532, v55, v56, v57, v58, 0, v52, v53, v54);
    v81 = objc_opt_new();
    v519 = v81;
    v93 = objc_msgSend_attributes(v81, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
    v104 = objc_msgSend_objectAtIndexedSubscript_(v93, v94, 0, v95, v100, v101, v102, v103, v96, v97, v98, v99);
    objc_msgSend_setName_(v104, v105, @"position", v106, v111, v112, v113, v114, v107, v108, v109, v110);

    v126 = objc_msgSend_attributes(v81, v115, v116, v117, v122, v123, v124, v125, v118, v119, v120, v121);
    v137 = objc_msgSend_objectAtIndexedSubscript_(v126, v127, 0, v128, v133, v134, v135, v136, v129, v130, v131, v132);
    objc_msgSend_setFormat_(v137, v138, 786435, v139, v144, v145, v146, v147, v140, v141, v142, v143);

    v159 = objc_msgSend_attributes(v81, v148, v149, v150, v155, v156, v157, v158, v151, v152, v153, v154);
    v170 = objc_msgSend_objectAtIndexedSubscript_(v159, v160, 0, v161, v166, v167, v168, v169, v162, v163, v164, v165);
    objc_msgSend_setOffset_(v170, v171, 0, v172, v177, v178, v179, v180, v173, v174, v175, v176);

    v192 = objc_msgSend_attributes(v81, v181, v182, v183, v188, v189, v190, v191, v184, v185, v186, v187);
    v203 = objc_msgSend_objectAtIndexedSubscript_(v192, v193, 0, v194, v199, v200, v201, v202, v195, v196, v197, v198);
    objc_msgSend_setBufferIndex_(v203, v204, 0, v205, v210, v211, v212, v213, v206, v207, v208, v209);

    if (a3)
    {
      v225 = objc_msgSend_attributes(v81, v214, v215, v216, v221, v222, v223, v224, v217, v218, v219, v220);
      v236 = objc_msgSend_objectAtIndexedSubscript_(v225, v226, 1, v227, v232, v233, v234, v235, v228, v229, v230, v231);
      objc_msgSend_setName_(v236, v237, @"normal", v238, v243, v244, v245, v246, v239, v240, v241, v242);

      v258 = objc_msgSend_attributes(v81, v247, v248, v249, v254, v255, v256, v257, v250, v251, v252, v253);
      v269 = objc_msgSend_objectAtIndexedSubscript_(v258, v259, 1, v260, v265, v266, v267, v268, v261, v262, v263, v264);
      objc_msgSend_setFormat_(v269, v270, 786435, v271, v276, v277, v278, v279, v272, v273, v274, v275);

      v291 = objc_msgSend_attributes(v81, v280, v281, v282, v287, v288, v289, v290, v283, v284, v285, v286);
      v302 = objc_msgSend_objectAtIndexedSubscript_(v291, v292, 1, v293, v298, v299, v300, v301, v294, v295, v296, v297);
      objc_msgSend_setOffset_(v302, v303, 12, v304, v309, v310, v311, v312, v305, v306, v307, v308);

      v324 = objc_msgSend_attributes(v81, v313, v314, v315, v320, v321, v322, v323, v316, v317, v318, v319);
      v335 = objc_msgSend_objectAtIndexedSubscript_(v324, v325, 1, v326, v331, v332, v333, v334, v327, v328, v329, v330);
      objc_msgSend_setBufferIndex_(v335, v336, 0, v337, v342, v343, v344, v345, v338, v339, v340, v341);

      v346 = 6;
    }

    else
    {
      v346 = 3;
    }

    v347 = objc_msgSend_layouts(v81, v214, v215, v216, v221, v222, v223, v224, v217, v218, v219, v220);
    v358 = objc_msgSend_objectAtIndexedSubscript_(v347, v348, 0, v349, v354, v355, v356, v357, v350, v351, v352, v353);
    objc_msgSend_setStride_(v358, v359, 4 * v346, v360, v365, v366, v367, v368, v361, v362, v363, v364);

    v378 = objc_msgSend_newBufferWithData_type_(v520, v369, v521, 1, v374, v375, v376, v377, v370, v371, v372, v373);
    if (objc_msgSend_conformsToProtocol_(v378, v379, &unk_284D24D98, v380, v385, v386, v387, v388, v381, v382, v383, v384))
    {
      v399 = v378;
      v410 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v400, @"%@-%@", v401, v406, v407, v408, v409, v402, v403, v404, v405, @"mesh", @"position");
      objc_msgSend_setName_(v399, v411, v410, v412, v417, v418, v419, v420, v413, v414, v415, v416);
    }

    if ((atomic_load_explicit(&qword_27DF91238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF91238))
    {
      v496 = [MDLMaterial alloc];
      v507 = objc_msgSend_stringByAppendingString_(@"mesh", v497, @"-Material", v498, v503, v504, v505, v506, v499, v500, v501, v502);
      v508 = objc_opt_new();
      qword_27DF91230 = objc_msgSend_initWithName_scatteringFunction_(v496, v509, v507, v508, v514, v515, v516, v517, v510, v511, v512, v513);

      __cxa_guard_release(&qword_27DF91238);
    }

    v421 = objc_msgSend_propertyWithSemantic_(qword_27DF91230, v389, 2, v390, v395, v396, v397, v398, v391, v392, v393, v394);
    v422.n128_u64[0] = 0;
    objc_msgSend_setFloatValue_(v421, v423, v424, v425, v422, v430, v431, v432, v426, v427, v428, v429);
    v443 = objc_msgSend_propertyWithSemantic_(qword_27DF91230, v433, 6, v434, v439, v440, v441, v442, v435, v436, v437, v438);

    v444.n128_u32[0] = 1.0;
    objc_msgSend_setFloatValue_(v443, v445, v446, v447, v444, v452, v453, v454, v448, v449, v450, v451);
    v455 = [MDLSubmesh alloc];
    v462 = (v530 - v529) >> 2;
    if (a3)
    {
      v463 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v455, v456, v524, v462, v458, v459, v460, v461, 32, 2, qword_27DF91230, v457);
    }

    else
    {
      v463 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v455, v456, v524, v462, v458, v459, v460, v461, 32, 1, qword_27DF91230, v457);
    }

    v464 = v463;
    v466 = v532;
    v465 = v533;
    v467 = [MDLMesh alloc];
    v535[0] = v464;
    v477 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v468, v535, 1, v473, v474, v475, v476, v469, v470, v471, v472);
    v13 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v467, v478, v378, ((v465 - v466) >> 2) / v346, v481, v482, v483, v484, v519, v477, v479, v480);

    if (a3)
    {
      v491.n128_u32[0] = 1045220557;
      objc_msgSend_addNormalsWithAttributeNamed_creaseThreshold_(v13, v485, @"normal", v486, v491, v492, v493, v494, v487, v488, v489, v490);
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v529)
    {
      v530 = v529;
      operator delete(v529);
    }

    if (v532)
    {
      v533 = v532;
      operator delete(v532);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_239EC02B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  __cxa_guard_abort(&qword_27DF91238);

  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_239EC04D8(int a1, const void **a2, const void **a3, __n128 a4, __n128 a5)
{
  v14 = a4.n128_u32[0];
  v7 = a4.n128_u32[1];
  v8 = a4.n128_u32[2];
  if (a1)
  {
    v9 = ((a2[1] - *a2) >> 2) / 6uLL;
    v16 = a4.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v9;
    sub_239E73254(a3, &v16);
    v16 = v9 + 2;
    sub_239E73254(a3, &v16);
    v16 = v9 + 1;
    sub_239E73254(a3, &v16);
    v16 = v9 + 1;
    sub_239E73254(a3, &v16);
    v16 = v9 + 2;
    sub_239E73254(a3, &v16);
    v16 = v9 + 3;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 4;
    sub_239E73254(a3, &v16);
    v16 = v9 + 6;
    sub_239E73254(a3, &v16);
    v16 = v9 + 5;
    sub_239E73254(a3, &v16);
    v16 = v9 + 5;
    sub_239E73254(a3, &v16);
    v16 = v9 + 6;
    sub_239E73254(a3, &v16);
    v16 = v9 + 7;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 8;
    sub_239E73254(a3, &v16);
    v16 = v9 + 9;
    sub_239E73254(a3, &v16);
    v16 = v9 + 10;
    sub_239E73254(a3, &v16);
    v16 = v9 + 9;
    sub_239E73254(a3, &v16);
    v16 = v9 + 11;
    sub_239E73254(a3, &v16);
    v16 = v9 + 10;
    sub_239E73254(a3, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 12;
    sub_239E73254(a3, &v16);
    v16 = v9 + 15;
    sub_239E73254(a3, &v16);
    v16 = v9 + 14;
    sub_239E73254(a3, &v16);
    v16 = v9 + 12;
    sub_239E73254(a3, &v16);
    v16 = v9 + 13;
    sub_239E73254(a3, &v16);
    v16 = v9 + 15;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 16;
    sub_239E73254(a3, &v16);
    v16 = v9 + 17;
    sub_239E73254(a3, &v16);
    v16 = v9 + 19;
    sub_239E73254(a3, &v16);
    v16 = v9 + 16;
    sub_239E73254(a3, &v16);
    v16 = v9 + 19;
    sub_239E73254(a3, &v16);
    v16 = v9 + 18;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 20;
    sub_239E73254(a3, &v16);
    v16 = v9 + 22;
    sub_239E73254(a3, &v16);
    v16 = v9 + 21;
    sub_239E73254(a3, &v16);
    v16 = v9 + 21;
    sub_239E73254(a3, &v16);
    v16 = v9 + 22;
    sub_239E73254(a3, &v16);
    v16 = v9 + 23;
  }

  else
  {
    v10 = ((a2[1] - *a2) >> 2) / 3uLL;
    v16 = a4.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v10 + 1;
    sub_239E73254(a3, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v10 + 2;
    sub_239E73254(a3, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v11 = v10 + 4;
    v16 = v10 + 4;
    sub_239E73254(a3, &v16);
    v16 = v10 + 1;
    sub_239E73254(a3, &v16);
    v16 = v10 + 3;
    sub_239E73254(a3, &v16);
    v16 = v10 + 1;
    sub_239E73254(a3, &v16);
    v12 = v10 + 5;
    v16 = v10 + 5;
    sub_239E73254(a3, &v16);
    v16 = v10 + 2;
    sub_239E73254(a3, &v16);
    v16 = v10 + 3;
    sub_239E73254(a3, &v16);
    v16 = v10 + 2;
    sub_239E73254(a3, &v16);
    v13 = v10 + 6;
    v16 = v10 + 6;
    sub_239E73254(a3, &v16);
    v16 = v10 + 3;
    sub_239E73254(a3, &v16);
    LODWORD(v10) = v10 + 7;
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v11;
    sub_239E73254(a3, &v16);
    v16 = v12;
    sub_239E73254(a3, &v16);
    v16 = v11;
    sub_239E73254(a3, &v16);
    v16 = v13;
    sub_239E73254(a3, &v16);
    v16 = v12;
    sub_239E73254(a3, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v13;
    sub_239E73254(a3, &v16);
    v16 = v10;
  }

  sub_239E73254(a3, &v16);
}

uint64_t sub_239EC165C(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_239ED981C(a1 + 40);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v17 = (a1 + 200);
  *(a1 + 216) = 0;
  if (a3 >= 1)
  {
    objc_msgSend_boundingBox(v5, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
    *(a1 + 160) = v18;
    *(a1 + 176) = v19;
    v20 = COERCE_FLOAT(vsubq_f32(v18, v19).i32[1]) / a3;
    if (v20 > 0.0)
    {
      v21 = fabsf(v19.f32[0]);
      v22 = fabsf(v18.f32[0]);
      if (v21 < v22)
      {
        v21 = v22;
      }

      v23 = vextq_s8(v19, v19, 4uLL).u64[0];
      v24 = vextq_s8(v18, v18, 4uLL).u64[0];
      v25 = vbsl_s8(vcagt_f32(v24, v23), vabs_f32(v24), vabs_f32(v23));
      if (*v25.i32 < *&v25.i32[1])
      {
        v25.i32[0] = v25.i32[1];
      }

      if (v21 >= *v25.i32)
      {
        *v25.i32 = v21;
      }

      *(a1 + 32) = ((*v25.i32 * 4.0) / v20);
      sub_239E73820(v5, &v28);
      v26 = *v17;
      if (*v17)
      {
        *(a1 + 208) = v26;
        operator delete(v26);
        *v17 = 0;
        *(a1 + 208) = 0;
        *(a1 + 216) = 0;
      }

      *(a1 + 200) = v28;
      *(a1 + 216) = v29;
      sub_239EC17BC(a1);
    }
  }

  return a1;
}

void sub_239EC1774(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v2[26] = v5;
    operator delete(v5);
  }

  sub_239EC199C((v2 + 5));
  v6 = v2[1];
  if (v6)
  {
    v2[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_239EC17BC(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 176);
  if (*&v1 < COERCE_FLOAT(HIDWORD(*(a1 + 160))))
  {
    LODWORD(v1) = HIDWORD(*(a1 + 160));
  }

  if (*&v1 < COERCE_FLOAT(*(a1 + 168)))
  {
    LODWORD(v1) = *(a1 + 168);
  }

  if (*(&v2 + 1) < *&v2)
  {
    LODWORD(v2) = HIDWORD(*(a1 + 176));
  }

  if (*(&v2 + 2) < *&v2)
  {
    LODWORD(v2) = *(a1 + 184);
  }

  *&v1 = fabsf(*&v1);
  v3 = fabsf(*&v2);
  if (*&v1 < v3)
  {
    *&v1 = v3;
  }

  *&v2 = -*&v1;
  *(a1 + 160) = vdupq_lane_s32(*&v1, 0);
  *(a1 + 176) = vdupq_lane_s32(*&v2, 0);
  if (*(a1 + 208) != *(a1 + 200))
  {
    operator new();
  }
}

uint64_t sub_239EC199C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_239EC19F4(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_239ED981C(a1 + 40);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v17 = (a1 + 200);
  *(a1 + 216) = 0;
  if (a3 >= 1)
  {
    v13.n128_u64[0] = 0;
    objc_msgSend_boundingBoxAtTime_(v5, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
    *(a1 + 160) = v18;
    *(a1 + 176) = v19;
    v20 = COERCE_FLOAT(vsubq_f32(v18, v19).i32[1]) / a3;
    if (v20 > 0.0)
    {
      v21 = fabsf(v19.f32[0]);
      v22 = fabsf(v18.f32[0]);
      if (v21 < v22)
      {
        v21 = v22;
      }

      v23 = vextq_s8(v19, v19, 4uLL).u64[0];
      v24 = vextq_s8(v18, v18, 4uLL).u64[0];
      v25 = vbsl_s8(vcagt_f32(v24, v23), vabs_f32(v24), vabs_f32(v23));
      if (*v25.i32 < *&v25.i32[1])
      {
        v25.i32[0] = v25.i32[1];
      }

      if (v21 >= *v25.i32)
      {
        *v25.i32 = v21;
      }

      *(a1 + 32) = ((*v25.i32 * 4.0) / v20);
      sub_239E73F48(v5, &v28);
      v26 = *v17;
      if (*v17)
      {
        *(a1 + 208) = v26;
        operator delete(v26);
        *v17 = 0;
        *(a1 + 208) = 0;
        *(a1 + 216) = 0;
      }

      *(a1 + 200) = v28;
      *(a1 + 216) = v29;
      sub_239EC17BC(a1);
    }
  }

  return a1;
}

void sub_239EC1B10(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v2[26] = v5;
    operator delete(v5);
  }

  sub_239EC199C((v2 + 5));
  v6 = v2[1];
  if (v6)
  {
    v2[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EC1B5C(float32x4_t *a1, float32x4_t a2, double a3, double a4)
{
  v4 = a1[12].f32[0];
  *&a4 = v4 * 0.5;
  v5 = vmulq_n_f32(vsubq_f32(vsubq_f32(a2, a1[8]), vdupq_lane_s32(*&a4, 0)), 1.0 / v4);
  v6 = llroundf(v5.f32[0]);
  v7 = llroundf(v5.f32[1]);
  v8 = llroundf(v5.f32[2]);
  return *(a1[5].i64[1] + 8 * v8) | ((*(a1[4].i64[0] + 8 * HIBYTE(v7)) | *(a1[5].i64[1] + 8 * HIBYTE(v8)) | *(a1[2].i64[1] + 8 * HIBYTE(v6))) << 24) | *(a1[4].i64[0] + 8 * v7) | *(a1[2].i64[1] + 8 * v6);
}

uint64_t sub_239EC1BEC(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int a4, uint64x2_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v14 = 0;
  v15 = a2 + 3;
  v16 = a4 - 1;
  a5.i64[0] = 4;
  v38 = a5;
  __asm { FMOV            V0.4S, #0.25 }

  v39 = _Q0;
  do
  {
    v23 = a2[1];
    v22 = a2[2];
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    v25 = vmulq_f32(vaddq_f32(v23, v22), v24);
    v26 = vsubq_f32(v23, v22);
    v27 = 0.25 * v26.f32[0];
    v24.i64[0] = v14;
    *v28.i32 = v25.f32[0] + (0.25 * v26.f32[0]);
    v28.i32[1] = v25.i32[1];
    v28.i64[1] = __PAIR64__(v38.u32[3], v25.u32[2]);
    *a10.i32 = v25.f32[0] - (0.25 * v26.f32[0]);
    a10.i32[1] = v25.i32[1];
    a10.i32[2] = v25.i32[2];
    v29 = vbslq_s8(vdupq_lane_s64(vcgtq_u64(v38, v24).i64[0], 0), a10, v28);
    if ((v14 & 2) != 0)
    {
      v30 = 0.25 * v26.f32[0];
    }

    else
    {
      v30 = -(v26.f32[0] * 0.25);
    }

    v29.f32[1] = v29.f32[1] + v30;
    if ((v14 & 1) == 0)
    {
      v27 = -(v26.f32[0] * 0.25);
    }

    v29.f32[2] = v29.f32[2] + v27;
    result = sub_239EAB8B8(a3, v29, vmulq_f32(v26, v39));
    if (result)
    {
      v37 = v15->i64[v14];
      if (!v37)
      {
        operator new();
      }

      if (a4 < 1)
      {
        result = sub_239E7BF04(&v37[7].i64[1], &a3[10].i32[3], &a3[10].i32[3]);
      }

      else
      {
        result = sub_239EC1BEC(a1, v37, a3, v16, v32, v33, v34, v35, v36, a10);
      }
    }

    ++v14;
  }

  while (v14 != 8);
  return result;
}

void sub_239EC29F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v40 = *(v39 - 200);
  if (v40)
  {
    *(v39 - 192) = v40;
    operator delete(v40);
  }

  v41 = *(v39 - 176);
  if (v41)
  {
    *(v39 - 168) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

float sub_239EC2CF0(int a1)
{
  dword_27DF912CC = a1;
  result = 1.0 / a1;
  dword_27DF912D0 = LODWORD(result);
  dword_27DF912D4 = 1067030938;
  dword_27DF912D8 = 1061997773;
  return result;
}

BOOL sub_239EC2D34(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a2, a1);
  v5 = vsub_f32(a3, a1);
  v6 = vsub_f32(a4, a1);
  v7 = vmla_lane_f32(vneg_f32(vmul_n_f32(vzip2_s32(v6, v5), v4.f32[0])), vzip1_s32(v6, v5), v4, 1);
  if (vmul_lane_f32(v7, v7, 1).f32[0] >= 0.0)
  {
    return 0;
  }

  v8 = vsub_f32(a4, a3);
  v9 = vsub_f32(a1, a3);
  v10 = vsub_f32(a2, a3);
  v11 = vmla_lane_f32(vneg_f32(vmul_n_f32(vzip2_s32(v9, v10), v8.f32[0])), vzip1_s32(v9, v10), v8, 1);
  return vmul_lane_f32(v11, v11, 1).f32[0] < 0.0;
}

double sub_239EC2D98(double a1, double a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(*&a2, *&a1);
  v5 = vsub_f32(a4, a3);
  v6 = vmul_f32(vrev64_s32(v5), v4);
  v7 = vsub_f32(v6, vdup_lane_s32(v6, 1));
  v8 = vsub_f32(a3, *&a1);
  if (v7.f32[0] == 0.0)
  {
    v9 = vaddv_f32(vmul_f32(vsub_f32(a4, *&a1), v8));
    v10 = vaddv_f32(vmul_f32(vsub_f32(a4, *&a2), vsub_f32(a3, *&a2))) < 0.0;
    v11 = vmul_f32(vsub_f32(*&a1, a3), vsub_f32(*&a2, a3));
    v12 = COERCE_DOUBLE(vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v11, vdup_lane_s32(v11, 1))), 0), a3, a4));
    if (!v10)
    {
      a2 = v12;
    }

    if (v9 >= 0.0)
    {
      return a2;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v14 = vmul_f32(v8, vrev64_s32(v4));
    return COERCE_DOUBLE(vmla_n_f32(a3, v5, vdiv_f32(vsub_f32(v14, vdup_lane_s32(v14, 1)), v7).f32[0]));
  }
}

unint64_t sub_239EC2E30(float32x4_t a1, float a2)
{
  v2 = 1.0 / a2;
  v3 = vcvtms_u32_f32(v2 * a1.f32[0]);
  v4 = vcvtms_u32_f32(vmuls_lane_f32(v2, *a1.f32, 1));
  v5 = (((v3 & 0x1FFFFF) << 16) | ((v3 & 0x1FFFFF) << 32)) & 0x1F0000FF0000FFLL | v3;
  v6 = (v5 | (v5 << 8)) & 0x1003003003003003 | (16 * ((v5 | (v5 << 8)) & 0x100F00F00F00F00FLL)) & 0x10C30C30C30C30C3;
  v7 = (((v4 & 0x1FFFFF) << 16) | ((v4 & 0x1FFFFF) << 32)) & 0x1F0000FF0000FFLL | v4;
  v8 = (v7 | (v7 << 8)) & 0x1003003003003003 | (16 * ((v7 | (v7 << 8)) & 0x100F00F00F00F00FLL)) & 0x10C30C30C30C30C3;
  v9 = vcvtms_u32_f32(vmuls_lane_f32(v2, a1, 2)) & 0x1FFFFF;
  v10 = ((v9 << 16) | (v9 << 32) | v9) & 0xF00000F00000FLL | ((((v9 << 16) | (v9 << 32) | v9) & 0x1F0000FF0000FFLL) << 8) & 0x100F00F00F00F00FLL;
  return ((8 * v8) | (2 * v8)) & 0x2492492492492492 | ((16 * ((v10 | (16 * v10)) & 0x10C30C30C30C30C3)) | (4 * ((v10 | (16 * v10)) & 0x10C30C30C30C30C3))) & 0x4924924924924924 | (v6 | (4 * v6)) & 0x1249249249249249;
}

unint64_t sub_239EC2F68(float32x4_t a1, uint64_t a2, unint64_t *a3)
{
  a1.i64[0] = *a3;
  a1.i32[2] = 0;
  return sub_239EC2E30(a1, 0.000001);
}

BOOL sub_239EC2FB4(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *a3);
  v4 = vmulq_f32(v3, v3);
  return (vaddv_f32(*v4.f32) + v4.f32[2]) < 1.0e-12;
}

unint64_t sub_239EC2FE4(uint64_t a1, _OWORD *a2)
{
  v2 = *a2;
  v3 = 0xC6A4A7935BD1E995 * *a2;
  if (COERCE_FLOAT(*a2) == 0.0)
  {
    v3 = 0;
  }

  v4 = 0x35A98F4D286A90B9 * (v3 ^ (v3 >> 47)) + 3864292196u;
  v5 = 0xC6A4A7935BD1E995 * DWORD1(v2);
  if (*(&v2 + 1) == 0.0)
  {
    v5 = 0;
  }

  v6 = 3864292196u - 0x395B586CA42E166BLL * (v4 ^ (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))));
  v7 = 0xC6A4A7935BD1E995 * DWORD2(v2);
  if (*(&v2 + 2) == 0.0)
  {
    v7 = 0;
  }

  v8 = 3864292196u - 0x395B586CA42E166BLL * (v6 ^ (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))));
  v9 = 0xC6A4A7935BD1E995 * HIDWORD(v2);
  if (*(&v2 + 3) == 0.0)
  {
    v9 = 0;
  }

  return 3864292196u - 0x395B586CA42E166BLL * (v8 ^ (0xC6A4A7935BD1E995 * (v9 ^ (v9 >> 47))));
}

BOOL sub_239EC3098(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *a3);
  v4 = vmulq_f32(v3, v3);
  return vaddv_f32(vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL))) < 1.0e-12;
}

unint64_t sub_239EC30C8(uint64_t a1, __int128 **a2)
{
  v2 = **a2;
  v3 = (*a2)[1];
  v4 = 0xC6A4A7935BD1E995 * v2;
  if (*&v2 == 0.0)
  {
    v4 = 0;
  }

  v5 = 0x35A98F4D286A90B9 * (v4 ^ (v4 >> 47)) + 3864292196u;
  v6 = 0xC6A4A7935BD1E995 * DWORD1(v2);
  if (*(&v2 + 1) == 0.0)
  {
    v6 = 0;
  }

  v7 = 3864292196u - 0x395B586CA42E166BLL * (v5 ^ (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))));
  v8 = 0xC6A4A7935BD1E995 * DWORD2(v2);
  if (*(&v2 + 2) == 0.0)
  {
    v8 = 0;
  }

  v9 = 3864292196u - 0x395B586CA42E166BLL * (v7 ^ (0xC6A4A7935BD1E995 * (v8 ^ (v8 >> 47))));
  v10 = 0xC6A4A7935BD1E995 * v3;
  if (*&v3 == 0.0)
  {
    v10 = 0;
  }

  v11 = 3864292196u - 0x395B586CA42E166BLL * (v9 ^ (0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))));
  v12 = 0xC6A4A7935BD1E995 * DWORD1(v3);
  if (*(&v3 + 1) == 0.0)
  {
    v12 = 0;
  }

  v13 = 3864292196u - 0x395B586CA42E166BLL * (v11 ^ (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))));
  v14 = 0xC6A4A7935BD1E995 * DWORD2(v3);
  if (*(&v3 + 2) == 0.0)
  {
    v14 = 0;
  }

  return 3864292196u - 0x395B586CA42E166BLL * (v13 ^ (0xC6A4A7935BD1E995 * (v14 ^ (v14 >> 47))));
}

BOOL sub_239EC31C4(uint64_t a1, float32x4_t **a2, float32x4_t **a3)
{
  v3 = vsubq_f32(**a2, **a3);
  v4 = vmulq_f32(v3, v3);
  if ((vaddv_f32(*v4.f32) + v4.f32[2]) >= 1.0e-12)
  {
    return 0;
  }

  v5 = vsubq_f32((*a2)[1], (*a3)[1]);
  v6 = vmulq_f32(v5, v5);
  return (vaddv_f32(*v6.f32) + v6.f32[2]) < 1.0e-12;
}

BOOL sub_239EC32C0(int32x2_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  a1.i32[0] = dword_27DF912DC;
  __asm { FMOV            V3.4S, #1.0 }

  v9 = vdivq_f32(_Q3, vdupq_lane_s32(a1, 0));
  v10 = vmulq_n_f32(vrndmq_f32(vmulq_f32(*a3, v9)), *&dword_27DF912DC);
  v10.f32[2] = floorf(COERCE_FLOAT(a3->i64[1]) / *&dword_27DF912DC) * *&dword_27DF912DC;
  v11 = vmulq_n_f32(vrndmq_f32(vmulq_f32(*a4, v9)), *&dword_27DF912DC);
  v11.f32[2] = floorf(COERCE_FLOAT(a4->i64[1]) / *&dword_27DF912DC) * *&dword_27DF912DC;
  v12 = vsubq_f32(v10, v11);
  v13 = vmulq_f32(v12, v12);
  return (vaddv_f32(*v13.f32) + v13.f32[2]) < 1.0e-12;
}

int8x16_t *sub_239EC3344(int8x16_t *a1, int8x16_t a2, int8x16_t a3)
{
  v4 = sub_239EC2E30(a2, 0.000001);
  v5 = sub_239EC2E30(a3, 0.000001);
  v6.i64[0] = v4;
  v7.i64[0] = v5;
  v8 = vdupq_lane_s64(vcgtq_u64(v7, v6).i64[0], 0);
  *a1 = vbslq_s8(v8, a2, a3);
  a1[1] = vbslq_s8(v8, a3, a2);
  if (v4 == v5)
  {
    v9 = sub_239E98B94(MEMORY[0x277D82678], "Can't choose for edge creation", 30);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    *a1 = a2;
    a1[1] = a3;
  }

  return a1;
}

double sub_239EC3484(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

float sub_239EC34E0(float32x4_t *a1)
{
  v1 = vsubq_f32(*a1, a1[1]);
  v2 = vmulq_f32(v1, v1);
  return sqrtf(vaddv_f32(*v2.f32) + v2.f32[2]);
}

BOOL sub_239EC3500(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vsubq_f32(*a1, *a2);
  v3 = vmulq_f32(v2, v2);
  if (sqrtf(vaddv_f32(*v3.f32) + v3.f32[2]) >= 0.000001)
  {
    return 0;
  }

  v4 = vsubq_f32(a1[1], a2[1]);
  v5 = vmulq_f32(v4, v4);
  return sqrtf(vaddv_f32(*v5.f32) + v5.f32[2]) < 0.000001;
}

float32x2_t sub_239EC3564(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmul_f32(a1[3], a2);
  a1[2] = vmul_f32(a1[2], a2);
  a1[3] = v2;
  result = vmul_f32(a1[4], a2);
  a1[4] = result;
  return result;
}

float32x2_t sub_239EC3584(float32x2_t *a1, float32x2_t a2)
{
  v2 = vadd_f32(a1[3], a2);
  a1[2] = vadd_f32(a1[2], a2);
  a1[3] = v2;
  result = vadd_f32(a1[4], a2);
  a1[4] = result;
  return result;
}

float sub_239EC35A4(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = vsub_f32(v1, v2);
  v4 = vmul_f32(v3, v3);
  v5 = a1[4];
  v6 = vsub_f32(v2, v5);
  v7 = vmul_f32(v6, v6);
  v8 = vsqrt_f32(vadd_f32(vzip1_s32(v7, v4), vzip2_s32(v7, v4)));
  v9 = vsub_f32(v5, v1);
  v9.f32[0] = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
  v5.f32[0] = (vaddv_f32(v8) + v9.f32[0]) * 0.5;
  v9.f32[0] = ((v5.f32[0] - v8.f32[1]) * v5.f32[0]) * ((v5.f32[0] - v8.f32[0]) * (v5.f32[0] - v9.f32[0]));
  v10 = sqrtf(v9.f32[0]);
  v11 = v9.f32[0] <= 0.0;
  result = 0.0;
  if (!v11)
  {
    return v10;
  }

  return result;
}

float sub_239EC361C(float32x4_t *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = vsubq_f32(v1, v2);
  v4 = vmulq_f32(v3, v3);
  v4.f32[0] = sqrtf(vaddv_f32(*v4.f32) + v4.f32[2]);
  v5 = a1[6];
  v6 = vsubq_f32(v2, v5);
  v7 = vmulq_f32(v6, v6);
  v8 = vsubq_f32(v5, v1);
  v9 = vmulq_f32(v8, v8);
  *v5.f32 = vadd_f32(vzip1_s32(*v7.i8, *v9.i8), vzip2_s32(*v7.i8, *v9.i8));
  v7.i64[0] = vextq_s8(v7, v7, 8uLL).u64[0];
  *v9.i8 = vsqrt_f32(vadd_f32(*v5.f32, vzip1_s32(*v7.i8, *&vextq_s8(v9, v9, 8uLL))));
  *v7.i32 = ((*v9.i32 + *&v9.i32[1]) + v4.f32[0]) * 0.5;
  *v9.i8 = vsub_f32(vdup_lane_s32(*v7.i8, 0), *v9.i8);
  *v9.i32 = vmuls_lane_f32(((*v7.i32 - v4.f32[0]) * *v7.i32) * *v9.i32, *v9.i8, 1);
  v10 = sqrtf(*v9.i32);
  v11 = *v9.i32 <= 0.0;
  result = 0.0;
  if (!v11)
  {
    return v10;
  }

  return result;
}

void *sub_239EC36AC(void *result)
{
  *result = 0;
  result[1] = 0;
  result[32] = 0;
  result[33] = 0;
  return result;
}

__n128 sub_239EC36B8(uint64_t a1)
{
  v2 = *(a1 + 80);
  v25 = *(a1 + 96);
  v3 = *(a1 + 64);
  v4 = vsubq_f32(v2, v25);
  v5 = vmulq_f32(v4, v4);
  v5.f32[0] = sqrtf(vaddv_f32(*v5.f32) + v5.f32[2]);
  v6 = vsubq_f32(v3, v25);
  v7 = vmulq_f32(v6, v6);
  v23 = v3;
  v24 = vsubq_f32(v2, v3);
  v8 = vmulq_f32(v24, v24);
  *v7.i8 = vsqrt_f32(vadd_f32(vadd_f32(vzip1_s32(*v8.i8, *v7.i8), vzip2_s32(*v8.i8, *v7.i8)), vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL))));
  *v8.i8 = vmul_f32(*v7.i8, *v7.i8);
  v21 = ((*v8.i32 - (v5.f32[0] * v5.f32[0])) + *&v8.i32[1]) / vmuls_lane_f32(*v7.i32 + *v7.i32, *v7.i8, 1);
  v22 = *v7.i8;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7.u32[0];
  v9 = acosf(v21);
  *(a1 + 32) = vmul_lane_f32(__PAIR64__(COERCE_UNSIGNED_INT(sinf(v9)), LODWORD(v21)), v22, 1);
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 224) = result;
  *(a1 + 240) = result;
  v15 = vsubq_f32(v25, v23);
  v16 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v15)), vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v24);
  v17 = vmulq_f32(v16, v16);
  *&v18 = (v17.f32[2] + v17.f32[0]) + v17.f32[1];
  v19 = vrsqrte_f32(v18);
  v20 = vmul_f32(vrsqrts_f32(v18, vmul_f32(v19, v19)), v19);
  *(a1 + 192) = vnegq_f32(vmulq_n_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20))).f32[0]));
  *(a1 + 208) = result;
  return result;
}

uint64_t sub_239EC3800(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 264) = 0;
  sub_239EC36B8(a1);
  return a1;
}

void *sub_239EC3880@<X0>(void *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = result[2];
  v3 = result[3];
  v5 = result[4];
  v6 = vcgt_f32(v5, v3).u8[0];
  _ZF = (v6 & 1) == 0;
  if (v6)
  {
    LODWORD(v8) = result[4];
  }

  else
  {
    LODWORD(v8) = result[3];
  }

  if (_ZF)
  {
    LODWORD(v9) = result[4];
  }

  else
  {
    LODWORD(v9) = result[3];
  }

  if (v4.f32[0] >= v8)
  {
    LODWORD(v8) = result[2];
  }

  if (v4.f32[0] < v9)
  {
    LODWORD(v9) = result[2];
  }

  if (*&a3 < v9 || *&a3 > v8)
  {
    goto LABEL_30;
  }

  LODWORD(v11) = HIDWORD(result[2]);
  LODWORD(v12) = HIDWORD(result[3]);
  if (v3.f32[1] >= v5.f32[1])
  {
    LODWORD(v13) = HIDWORD(result[4]);
  }

  else
  {
    LODWORD(v13) = HIDWORD(result[3]);
  }

  if (v3.f32[1] < v5.f32[1])
  {
    LODWORD(v12) = HIDWORD(result[4]);
  }

  if (v4.f32[1] >= v13)
  {
    v14 = v13;
  }

  else
  {
    LODWORD(v14) = HIDWORD(result[2]);
  }

  if (v4.f32[1] < v12)
  {
    v11 = v12;
  }

  if (*(&a3 + 1) < v14 || *(&a3 + 1) > v11)
  {
    goto LABEL_30;
  }

  v19 = vsub_f32(v3, v4);
  v20 = vmul_f32(v19, v19);
  v21 = vsub_f32(v5, v4);
  v22 = vmul_f32(v21, v21);
  v23 = vadd_f32(vzip1_s32(v22, v20), vzip2_s32(v22, v20));
  v24 = vrsqrte_f32(v23.u32[1]);
  v25 = vmul_f32(vrsqrts_f32(v23.u32[1], vmul_f32(v24, v24)), v24);
  v26 = vmul_f32(v25, vrsqrts_f32(v23.u32[1], vmul_f32(v25, v25)));
  v27 = vrsqrte_f32(v23.u32[0]);
  v28 = vmul_f32(vrsqrts_f32(v23.u32[0], vmul_f32(v27, v27)), v27);
  v29 = vmul_f32(v28, vrsqrts_f32(v23.u32[0], vmul_f32(v28, v28)));
  v30 = vmul_f32(v21, v19);
  v31 = vmul_n_f32(v30, vmul_f32(v29, v26).f32[0]);
  v32 = vsub_f32(v4, v3);
  v33 = vmul_f32(v32, v32);
  v34 = vadd_f32(v33, vdup_lane_s32(v33, 1));
  v35 = vrsqrte_f32(v34.u32[0]);
  v36 = vmul_f32(vrsqrts_f32(v34.u32[0], vmul_f32(v35, v35)), v35);
  v37 = vmul_f32(v36, vrsqrts_f32(v34.u32[0], vmul_f32(v36, v36)));
  v38 = vsub_f32(v5, v3);
  v39 = vmul_f32(v38, v38);
  v40 = vadd_f32(v39, vdup_lane_s32(v39, 1));
  v41 = vrsqrte_f32(v40.u32[0]);
  v42 = vmul_f32(vrsqrts_f32(v40.u32[0], vmul_f32(v41, v41)), v41);
  v43 = vmul_f32(v38, v32);
  v44 = fabsf(vaddv_f32(vmul_n_f32(v43, vmul_f32(vmul_f32(v42, vrsqrts_f32(v40.u32[0], vmul_f32(v42, v42))), v37).f32[0])));
  v45 = vsub_f32(v4, v5);
  v46 = vmul_f32(v45, v45);
  v47 = vsub_f32(v3, v5);
  v48 = vmul_f32(v47, v47);
  v49 = vadd_f32(vzip1_s32(v48, v46), vzip2_s32(v48, v46));
  v50 = vrsqrte_f32(v49.u32[1]);
  v51 = vmul_f32(vrsqrts_f32(v49.u32[1], vmul_f32(v50, v50)), v50);
  v52 = vrsqrte_f32(v49.u32[0]);
  v53 = vmul_f32(vrsqrts_f32(v49.u32[0], vmul_f32(v52, v52)), v52);
  v54 = vmul_f32(v53, vrsqrts_f32(v49.u32[0], vmul_f32(v53, v53)));
  v55 = vmul_f32(v47, v45);
  v56 = vmul_n_f32(v55, vmul_f32(v54, vmul_f32(v51, vrsqrts_f32(v49.u32[1], vmul_f32(v51, v51)))).f32[0]);
  v57 = vabs_f32(vadd_f32(vzip1_s32(v31, v56), vzip2_s32(v31, v56)));
  if (v57.f32[0] >= v44 || v57.f32[0] >= v57.f32[1])
  {
    if (v44 < v57.f32[0] && v44 < v57.f32[1])
    {
      _S4 = vaddv_f32(v39);
      v74 = vsub_f32(*&a3, v3);
      v75 = vmul_f32(v74, v32);
      _D0 = vadd_f32(vzip1_s32(v43, v75), vzip2_s32(v43, v75));
      _D1 = vmul_f32(v38, v74);
      v78 = vadd_f32(_D1, vdup_lane_s32(_D1, 1));
      v79 = vmla_f32(vneg_f32(vmul_f32(_D0, _D0)), v34, v40).f32[0];
      __asm { FMLA            S1, S4, V0.S[1] }

      v80 = _D1.f32[0] / v79;
      if (v80 >= 0.0)
      {
        v66 = (vmul_f32(v78, v34).f32[0] - (_D0.f32[1] * _D0.f32[0])) / v79;
        if (v66 >= 0.0 && (v80 + v66) <= 1.0001)
        {
          *a2 = v80;
          *(a2 + 4) = 1.0 - (v80 + v66);
          goto LABEL_51;
        }
      }
    }

    else
    {
      v60 = vsub_f32(*&a3, v5);
      v61 = vadd_f32(v55, vdup_lane_s32(v55, 1));
      v62 = vmul_f32(v60, v45);
      v63 = vmul_f32(v60, v47);
      v64 = vadd_f32(vzip1_s32(v62, v63), vzip2_s32(v62, v63));
      v65 = vdiv_f32(vmla_f32(vneg_f32(vrev64_s32(vmul_n_f32(v64, v61.f32[0]))), v64, v49), vdup_lane_s32(vmla_lane_f32(vneg_f32(vmul_f32(v61, v61)), v49, v49, 1), 0));
      if (v65.f32[0] >= 0.0 && v65.f32[1] >= 0.0 && (v65.f32[0] + v65.f32[1]) <= 1.0001)
      {
        *a2 = v65;
        v66 = 1.0 - (v65.f32[0] + v65.f32[1]);
LABEL_51:
        *(a2 + 8) = v66;
        goto LABEL_52;
      }
    }

LABEL_30:
    __asm { FMOV            V0.2S, #-1.0 }

    *a2 = _D0;
    *(a2 + 8) = -1082130432;
    return result;
  }

  v67 = vsub_f32(*&a3, v4);
  v68 = vadd_f32(v30, vdup_lane_s32(v30, 1));
  v69 = vmul_f32(v19, v67);
  v70 = vmul_f32(v21, v67);
  v71 = vadd_f32(vzip1_s32(v69, v70), vzip2_s32(v69, v70));
  v72 = vdiv_f32(vmla_f32(vneg_f32(vrev64_s32(vmul_n_f32(v71, v68.f32[0]))), v23, v71), vdup_lane_s32(vmla_lane_f32(vneg_f32(vmul_f32(v68, v68)), v23, v23, 1), 0));
  if (v72.f32[0] < 0.0 || v72.f32[1] < 0.0 || (v72.f32[0] + v72.f32[1]) > 1.0001)
  {
    goto LABEL_30;
  }

  *a2 = 1.0 - (v72.f32[0] + v72.f32[1]);
  *(a2 + 4) = v72;
LABEL_52:
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_239EC3C28(uint64_t a1, void *a2, float32x4_t a3, float32x4_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!sub_239EC3F08(a2, v12))
  {
    return 0;
  }

  v6 = sub_239EC3F08(a2, v12);
  if (!v6)
  {
    sub_239E98928("unordered_map::at: key not found");
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_239EC4064(&__p, v6[3].i64[0], v6[3].i64[1], (v6[3].i64[1] - v6[3].i64[0]) >> 3);
  v7 = *__p;
  if (*__p == a1)
  {
    if ((v10 - __p) < 9)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(__p + 1);
    }
  }

  v10 = __p;
  operator delete(__p);
  return v7;
}

double sub_239EC3CE0(float32x2_t *a1)
{
  *v1.i8 = a1[2];
  v2.i64[0] = v1.i64[0];
  v2.i64[1] = v1.i64[0];
  *v3.i8 = a1[4];
  *v4.i8 = vcgt_f32(*v3.i8, a1[3]);
  v4.i64[1] = v4.i64[0];
  *v5.i8 = a1[3];
  v5.i64[1] = v3.i64[0];
  v3.i64[1] = v5.i64[0];
  v6 = vbslq_s8(v4, v5, v3);
  v7 = vcgtq_f32(v6, v2);
  v3.i64[0] = vextq_s8(v6, v6, 8uLL).u64[0];
  v6.i64[1] = v1.i64[0];
  v1.i64[1] = v3.i64[0];
  *&result = vbslq_s8(v7, v1, v6).u64[0];
  return result;
}

BOOL sub_239EC3D30(float32x4_t *a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, a1[4]);
  v3 = vmulq_f32(v2, v2);
  if (sqrtf(vaddv_f32(*v3.f32) + v3.f32[2]) < 0.000001)
  {
    return 1;
  }

  v4 = vsubq_f32(a2, a1[5]);
  v5 = vmulq_f32(v4, v4);
  if (sqrtf(vaddv_f32(*v5.f32) + v5.f32[2]) < 0.000001)
  {
    return 1;
  }

  v7 = vsubq_f32(a2, a1[6]);
  v8 = vmulq_f32(v7, v7);
  return sqrtf(vaddv_f32(*v8.f32) + v8.f32[2]) < 0.000001;
}

unint64_t sub_239EC3DD4(float32x4_t *a1)
{
  v2 = sub_239EC2E30(a1[4], 0.000001);
  v3 = sub_239EC2E30(a1[5], 0.000001);
  v4 = sub_239EC2E30(a1[6], 0.000001);
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v4 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v6 >= v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (v6 <= v2)
  {
    v6 = v2;
  }

  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  return v6 ^ (v5 << 21) ^ (v8 << 42);
}

BOOL sub_239EC3E64(float32x4_t *a1, float32x4_t *a2)
{
  v4 = sub_239EC3DD4(a1);
  if (v4 != sub_239EC3DD4(a2))
  {
    return 0;
  }

  v5 = vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(a1[5], a1[4]), a1[6]), vaddq_f32(vaddq_f32(a2[4], a2[5]), a2[6])), vdupq_n_s32(0x3EAAAAABu));
  v6 = vmulq_f32(v5, v5);
  return sqrtf(vaddv_f32(*v6.f32) + v6.f32[2]) < 0.000001;
}

float32x4_t *sub_239EC3F08(void *a1, float32x4_t *a2)
{
  v21 = *a2;
  v4 = sub_239EC2E30(*a2, 0.000001);
  v20 = a2[1];
  v5 = sub_239EC2E30(v20, 0.000001);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v4 ^ (v5 << 32);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ (v5 << 32);
    v12 = v20;
    v11 = v21;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
    v12 = v20;
    v11 = v21;
  }

  v13 = *(*a1 + 8 * v10);
  if (!v13)
  {
    return 0;
  }

  for (result = *v13; result; result = result->i64[0])
  {
    v15 = result->u64[1];
    if (v7 == v15)
    {
      v16 = vsubq_f32(result[1], v11);
      v17 = vmulq_f32(v16, v16);
      if (sqrtf(vaddv_f32(*v17.f32) + v17.f32[2]) < 0.000001)
      {
        v18 = vsubq_f32(result[2], v12);
        v19 = vmulq_f32(v18, v18);
        if (sqrtf(vaddv_f32(*v19.f32) + v19.f32[2]) < 0.000001)
        {
          return result;
        }
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v15 >= *&v6)
        {
          v15 %= *&v6;
        }
      }

      else
      {
        v15 &= *&v6 - 1;
      }

      if (v15 != v10)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_239EC4064(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E7C648(result, a4);
  }

  return result;
}

void sub_239EC40C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_239EC40E0(void **a1)
{
  v3 = a1;
  sub_239EC7DE8(&v3);
  return a1;
}

void sub_239EC4120(uint64_t a1, id **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v456 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v442 = a7;
  v443 = v9;
  v441 = objc_msgSend_copy(v9, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v32 = 0;
  v33 = 0;
  while (1)
  {
    v34 = objc_msgSend_layouts(v9, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v46 = objc_msgSend_count(v34, v35, v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);

    if (v46 <= v32)
    {
      break;
    }

    v58 = objc_msgSend_layouts(v9, v47, v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v69 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, v32, v60, v65, v66, v67, v68, v61, v62, v63, v64);
    v81 = objc_msgSend_stride(v69, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);

    ++v32;
    if (v81)
    {
      v33 = v32;
    }
  }

  v452 = 0u;
  v453 = 0u;
  v450 = 0u;
  v451 = 0u;
  v82 = objc_msgSend_attributes(v9, v47, v48, v49, 0, v55, v56, v57, v50, v51, v52, v53);
  v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v450, v455, v87, v88, v89, v90, 16, v84, v85, v86);
  if (v98)
  {
    v103 = *v451;
    do
    {
      for (i = 0; i != v98; ++i)
      {
        if (*v451 != v103)
        {
          objc_enumerationMutation(v82);
        }

        v105 = *(*(&v450 + 1) + 8 * i);
        if (objc_msgSend_format(v105, v91, v92, v93, v99, v100, v101, v102, v94, v95, v96, v97))
        {
          v106 = objc_msgSend_bufferIndex(v105, v91, v92, v93, v99, v100, v101, v102, v94, v95, v96, v97);
          if (v33 <= v106 + 1)
          {
            v33 = v106 + 1;
          }
        }
      }

      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v91, &v450, v455, v99, v100, v101, v102, 16, v95, v96, v97);
    }

    while (v98);
  }

  objc_msgSend_removeAllObjects(v442, v107, v108, v109, v114, v115, v116, v117, v110, v111, v112, v113);
  if (v33)
  {
    v129 = v33;
    do
    {
      v130 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v118, 0, v120, v125, v126, v127, v128, v121, v122, v123, v124);
      objc_msgSend_addObject_(v442, v131, v130, v132, v137, v138, v139, v140, v133, v134, v135, v136);

      --v129;
    }

    while (v129);
  }

  v141 = *a2;
  v142 = a2[1];
  while (v141 != v142)
  {
    v143 = *v141;
    v144 = v141[1];
    v156 = objc_msgSend_name(v143, v145, v146, v147, v152, v153, v154, v155, v148, v149, v150, v151);
    v167 = objc_msgSend_attributeNamed_(v441, v157, v156, v158, v163, v164, v165, v166, v159, v160, v161, v162);

    if (v167)
    {
      v179 = objc_msgSend_bufferIndex(v167, v168, v169, v170, v175, v176, v177, v178, v171, v172, v173, v174);
      objc_msgSend_setBufferIndex_(v144, v180, v179, v181, v186, v187, v188, v189, v182, v183, v184, v185);
      v201 = objc_msgSend_offset(v167, v190, v191, v192, v197, v198, v199, v200, v193, v194, v195, v196);
      objc_msgSend_setOffset_(v144, v202, v201, v203, v208, v209, v210, v211, v204, v205, v206, v207);
      v223 = objc_msgSend_format(v167, v212, v213, v214, v219, v220, v221, v222, v215, v216, v217, v218);
      objc_msgSend_setFormat_(v144, v224, v223, v225, v230, v231, v232, v233, v226, v227, v228, v229);
    }

    else
    {
      v234 = v141[1];
      v141[1] = 0;
    }

    v141 += 3;
  }

  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  v235 = objc_msgSend_attributes(v441, v118, v119, v120, 0, v126, v127, v128, v121, v122, v123, v124);
  v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v236, &v446, v454, v240, v241, v242, v243, 16, v237, v238, v239);
  if (v244)
  {
    v245 = *v447;
    do
    {
      for (j = 0; j != v244; ++j)
      {
        if (*v447 != v245)
        {
          objc_enumerationMutation(v235);
        }

        v247 = *(*(&v446 + 1) + 8 * j);
        v248 = v247;
        v249 = a2[3];
        v261 = objc_msgSend_name(v248, v250, v251, v252, v257, v258, v259, v260, v253, v254, v255, v256);
        v272 = objc_msgSend_attributeNamed_(v249, v262, v261, v263, v268, v269, v270, v271, v264, v265, v266, v267);

        if (!v272)
        {
          v444 = 0;
          v445[0] = 0;
          v445[1] = 0;
          objc_storeStrong(v445, v247);
          sub_239E70198(a2, &v444);
        }
      }

      v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v273, &v446, v454, v277, v278, v279, v280, 16, v274, v275, v276);
    }

    while (v244);
  }

  v293 = *a2;
  v292 = a2[1];
  if (*a2 != v292)
  {
    v440 = 1;
    do
    {
      v294 = v293[1];
      if (v294)
      {
        v295 = objc_msgSend_bufferIndex(v294, v281, v282, v283, v288, v289, v290, v291, v284, v285, v286, v287);
        if (*v293)
        {
          v296 = v295;
          v297 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v281, v293[2], v283, v288, v289, v290, v291, v284, v285, v286, v287);
          v308 = objc_msgSend_objectAtIndexedSubscript_(v442, v298, v296, v299, v304, v305, v306, v307, v300, v301, v302, v303);
          v320 = objc_msgSend_integerValue(v308, v309, v310, v311, v316, v317, v318, v319, v312, v313, v314, v315) == 0;

          if (v320)
          {
            objc_msgSend_setObject_atIndexedSubscript_(v442, v321, v297, v296, v327, v328, v329, v330, v323, v324, v325, v326);
          }

          else
          {
            v331 = objc_msgSend_objectAtIndexedSubscript_(v442, v321, v296, v322, v327, v328, v329, v330, v323, v324, v325, v326);
            v343 = objc_msgSend_integerValue(v331, v332, v333, v334, v339, v340, v341, v342, v335, v336, v337, v338);
            v355 = v343 == objc_msgSend_integerValue(v297, v344, v345, v346, v351, v352, v353, v354, v347, v348, v349, v350);

            if (!v355)
            {
              v366 = MEMORY[0x277CCABB0];
              v367 = objc_msgSend_objectAtIndexedSubscript_(v442, v356, v296, v357, v362, v363, v364, v365, v358, v359, v360, v361);
              v379 = objc_msgSend_integerValue(v367, v368, v369, v370, v375, v376, v377, v378, v371, v372, v373, v374);
              v391 = objc_msgSend_integerValue(v297, v380, v381, v382, v387, v388, v389, v390, v383, v384, v385, v386);
              if (v391 >= v379)
              {
                objc_msgSend_numberWithInteger_(v366, v392, v379, v393, v398, v399, v400, v401, v394, v395, v396, v397);
              }

              else
              {
                objc_msgSend_numberWithInteger_(v366, v392, v391, v393, v398, v399, v400, v401, v394, v395, v396, v397);
              }
              v402 = ;
              objc_msgSend_setObject_atIndexedSubscript_(v442, v403, v402, v296, v408, v409, v410, v411, v404, v405, v406, v407);

              if (v440)
              {
                NSLog(&cfstr_WarningTryingT.isa, v296);
              }

              v440 = 0;
            }
          }
        }
      }

      v293 += 3;
    }

    while (v293 != v292);
    v293 = *a2;
    v292 = a2[1];
  }

  for (; v293 != v292; v293 += 3)
  {
    v412 = v293[1];
    if (v412)
    {
      v413 = objc_msgSend_bufferIndex(v412, v281, v282, v283, v288, v289, v290, v291, v284, v285, v286, v287);
      if (!*v293)
      {
        v414 = v413;
        v415 = objc_msgSend_objectAtIndexedSubscript_(v442, v281, v413, v283, v288, v289, v290, v291, v284, v285, v286, v287);
        v427 = objc_msgSend_integerValue(v415, v416, v417, v418, v423, v424, v425, v426, v419, v420, v421, v422) == 0;

        if (v427)
        {
          v428 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v281, a4, v283, v288, v289, v290, v291, v284, v285, v286, v287);
          objc_msgSend_setObject_atIndexedSubscript_(v442, v429, v428, v414, v434, v435, v436, v437, v430, v431, v432, v433);
        }
      }
    }
  }

  v438 = a2[3];
  a2[3] = v441;
}

MDLMesh *sub_239EC47F8(void *a1, uint64_t **a2, void *a3, void **a4)
{
  v7 = a1;
  v8 = a3;
  v20 = objc_msgSend_vertexCount(v7, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (*a4 == v20)
  {
    v21 = [MDLMesh alloc];
    v38 = objc_msgSend_initWithBufferAllocator_(v21, v22, v8, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, a2, v33, v39, v40, v41, v42, v34, v35, v36, v37);
    objc_msgSend_setName_(v38, v44, v43, v45, v50, v51, v52, v53, v46, v47, v48, v49);

    objc_msgSend_setVertexCount_(v38, v54, v20, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v75 = objc_msgSend_submeshes(v7, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
    objc_msgSend_setSubmeshes_(v38, v76, v75, v77, v82, v83, v84, v85, v78, v79, v80, v81);

    objc_msgSend_addAttributeWithName_format_(v38, v86, @"position", 786435, v91, v92, v93, v94, v87, v88, v89, v90);
    v105 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v38, v95, @"position", v96, v101, v102, v103, v104, v97, v98, v99, v100);
    v117 = objc_msgSend_dataStart(v105, v106, v107, v108, v113, v114, v115, v116, v109, v110, v111, v112);
    if (v20)
    {
      v129 = v117;
      v130 = 0;
      v131 = 0;
      do
      {
        if (4 * v131 + 8 <= objc_msgSend_bufferSize(v105, v118, v119, v120, v125, v126, v127, v128, v121, v122, v123, v124))
        {
          v132 = a4[4] + v130;
          v125.n128_u32[0] = *(v132 + 2);
          v133 = v129 + 4 * v131;
          v126.n128_u64[0] = *v132;
          *v133 = *v132;
          v131 += 3;
          *(v133 + 8) = v125.n128_u32[0];
        }

        v130 += 12;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    NSLog(&cfstr_WarningTargetS.isa);
    v38 = 0;
  }

  return v38;
}

MDLMorphDeformer *sub_239EC49E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = *a2;
  v9 = *(a2 + 8);
  if (*a2 == v9)
  {
LABEL_21:
    v28 = sub_239EC4DC4((a2 + 24));
    v29 = *(v28 + 16);
    v74 = *v28;
    v75 = v29;
    v30 = *(v28 + 32);
    v76 = v30;
    if (v30)
    {
      v31 = (v30 - 16);
      if (*(&v75 + 1))
      {
        v31 = *(&v75 + 1);
      }

      atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
    }

    v32 = sub_239EC4E58((a2 + 40));
    v33 = *(v32 + 16);
    v69 = *v32;
    v70 = v33;
    v34 = *(v32 + 32);
    v71 = v34;
    if (v34)
    {
      v35 = (v34 - 16);
      if (*(&v70 + 1))
      {
        v35 = *(&v70 + 1);
      }

      atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
    }

    v36 = [MDLMorphDeformer alloc];
    sub_239EBF2E0(&v74);
    v37 = v76;
    v38 = v74;
    sub_239EC85E4(&v69);
    v45 = objc_msgSend_initWithTargetShapes_shapeSetTargetWeights_count_shapeSetTargetCounts_count_(v36, v39, v7, v37, v41, v42, v43, v44, v38, v71, v69, v40);
    v57 = objc_msgSend_weights(v45, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
    objc_msgSend_resetWithAnimatedValue_(v57, v58, *(a2 + 56), v59, v64, v65, v66, v67, v60, v61, v62, v63);

    sub_239E56C80(&v69);
    sub_239E56C80(&v74);
  }

  else
  {
    while (1)
    {
      v69 = 0u;
      v70 = 0u;
      v10 = *v8;
      *&v69 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *&v69 = v69 & 0xFFFFFFFFFFFFFFF8;
      }

      *(&v69 + 1) = 0;
      v70 = 0uLL;
      sub_239EC7E90(&v69 + 1, v8[1], v8[2], 0xAAAAAAAAAAAAAAABLL * ((v8[2] - v8[1]) >> 5));
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v11 = sub_239E6AD14(*(&v69 + 1));
      v12 = *(v11 + 16);
      v74 = *v11;
      v75 = v12;
      v13 = *(v11 + 32);
      v76 = v13;
      if (v13)
      {
        v14 = (v13 - 16);
        if (*(&v75 + 1))
        {
          v14 = *(&v75 + 1);
        }

        atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
      }

      if ((v69 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v69 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
      }

      if (*(EmptyString + 23) < 0)
      {
        sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
      }

      else
      {
        v16 = *EmptyString;
        v73 = *(EmptyString + 16);
        *__p = v16;
      }

      v23 = sub_239EC47F8(v5, __p, v6, &v74);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v23)
      {
        break;
      }

      objc_msgSend_addObject_(v7, v17, v23, v18, v24, v25, v26, v27, v19, v20, v21, v22);

      sub_239E56C80(&v74);
      *&v74 = &v69 + 8;
      sub_239EC8004(&v74);
      if ((v69 & 7) != 0)
      {
        atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 += 4;
      if (v8 == v9)
      {
        goto LABEL_21;
      }
    }

    sub_239E56C80(&v74);
    *&v74 = &v69 + 8;
    sub_239EC8004(&v74);
    if ((v69 & 7) != 0)
    {
      atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v45 = 0;
  }

  return v45;
}

void sub_239EC4CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24)
{
  sub_239E56C80(&a11);
  sub_239E56C80(&a24);

  _Unwind_Resume(a1);
}

uint64_t sub_239EC4DC4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239EC8434(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EC846C, &stru_284D17AB0);
  }
}

uint64_t sub_239EC4E58(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_284D17A68))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return MEMORY[0x282207DB0](this, sub_239EC8528, &stru_284D17A68);
}

id sub_239EC4F14(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = a1[55];
  v6 = a1[56];
  while (v5 != v6)
  {
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    v7 = v5[1];
    if (v7)
    {
      v75 = 0;
      v76 = &v75;
      sub_239E5AE38(v73, 3 * v7, &v76);
      sub_239E56C3C(v5 + 1);
      v8 = v5[5];
      sub_239E56C3C(v5 + 1);
      v9 = v5[5] + 4 * v5[1];
      if (v8 != v9)
      {
        v10 = 0;
        do
        {
          v11 = *v8;
          sub_239E56C3C(a1 + 19);
          v11 *= 3;
          v12 = *(a1[23] + 4 * v11);
          sub_239E56C3C(v73);
          *(v74 + v10) = v12;
          sub_239E56C3C(a1 + 19);
          v13 = *(a1[23] + 4 * v11 + 4);
          sub_239E56C3C(v73);
          *(v74 + v10 + 4) = v13;
          sub_239E56C3C(a1 + 19);
          LODWORD(v11) = *(a1[23] + 4 * v11 + 8);
          sub_239E56C3C(v73);
          *(v74 + v10 + 8) = v11;
          ++v8;
          v10 += 12;
        }

        while (v8 != v9);
      }
    }

    else
    {
      sub_239EB3650(v73, (a1 + 19));
    }

    v14 = objc_alloc(MEMORY[0x277CBEA90]);
    sub_239E56C3C(v73);
    v23 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v14, v15, v74, 4 * *&v73[0], v19, v20, v21, v22, 0, v16, v17, v18);
    v33 = objc_msgSend_newBufferWithData_type_(v3, v24, v23, 2, v29, v30, v31, v32, v25, v26, v27, v28);
    if (objc_msgSend_conformsToProtocol_(v33, v34, &unk_284D24D98, v35, v40, v41, v42, v43, v36, v37, v38, v39))
    {
      v44 = v33;
      objc_msgSend_setName_(v44, v45, @"indices", v46, v51, v52, v53, v54, v47, v48, v49, v50);
    }

    v55 = [MDLSubmesh alloc];
    v61 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v55, v56, @"submesh", v33, v57, v58, v59, v60, *&v73[0], 32, 2, v5[6], 0);
    objc_msgSend_addObject_(v4, v62, v61, v63, v68, v69, v70, v71, v64, v65, v66, v67);

    sub_239E56C80(v73);
    v5 += 7;
  }

  return v4;
}

MDLSubmeshTopology *sub_239EC51C4(uint64_t a1, uint64_t a2, void *a3)
{
  v71[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = (a1 + 8);
  if (*(a1 + 8))
  {
    v7 = 0;
    while (1)
    {
      sub_239E56C3C((a1 + 8));
      v8 = *(*(a1 + 40) + 4 * v7);
      sub_239E56C3C((a2 + 112));
      if (*(*(a2 + 144) + 4 * v8) >= 256)
      {
        break;
      }

      if (*v6 <= ++v7)
      {
        goto LABEL_5;
      }
    }

LABEL_13:
    v25 = 0;
  }

  else
  {
    sub_239E56C3C((a2 + 112));
    v23 = *(a2 + 144);
    while (1)
    {
      sub_239E56C3C((a2 + 112));
      if (v23 == (*(a2 + 144) + 4 * *(a2 + 112)))
      {
        break;
      }

      v24 = *v23++;
      if (v24 > 255)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    v9 = objc_alloc_init(MDLSubmeshTopology);
    v19 = v9;
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    if (!*v6)
    {
      objc_msgSend_setFaceCount_(v9, v10, *(a2 + 112), v11, 0, v16, v17, v18, v12, v13, v14, v15);
      v71[1] = &off_284D15838;
      sub_239EC8A68(v71, a2 + 112);
    }

    objc_msgSend_setFaceCount_(v9, v10, *v6, v11, 0, v16, v17, v18, v12, v13, v14, v15);
    v20 = *v6;
    v70 = 0;
    v71[0] = &v70;
    sub_239EC8CE4(&v67, v20, v71);
    if (*v6)
    {
      v21 = 0;
      do
      {
        sub_239E56C3C((a1 + 8));
        v22 = *(*(a1 + 40) + 4 * v21);
        sub_239E56C3C((a2 + 112));
        LODWORD(v22) = *(*(a2 + 144) + 4 * v22);
        sub_239EC8EFC(&v67);
        *(v69 + v21++) = v22;
      }

      while (*v6 > v21);
    }

    v26 = objc_alloc(MEMORY[0x277CBEA90]);
    sub_239EC8EFC(&v67);
    v35 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v26, v27, v69, v67, v31, v32, v33, v34, 0, v28, v29, v30);
    v45 = objc_msgSend_newBufferWithData_type_(v5, v36, v35, 2, v41, v42, v43, v44, v37, v38, v39, v40);
    if (objc_msgSend_conformsToProtocol_(v45, v46, &unk_284D24D98, v47, v52, v53, v54, v55, v48, v49, v50, v51))
    {
      objc_msgSend_setName_(v45, v56, @"faceVertexCounts", v57, v62, v63, v64, v65, v58, v59, v60, v61);
    }

    objc_msgSend_setFaceTopology_(v19, v56, v45, v57, v62, v63, v64, v65, v58, v59, v60, v61, v67, v68);
    v25 = v19;

    sub_239E56C80(&v67);
  }

  return v25;
}

void sub_239EC5440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_239E56C80(&a9);

  _Unwind_Resume(a1);
}

const std::type_info *sub_239EC54C4(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((sub_239EC8AE4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v4, &stru_284D17A98, v1, v2);
    v1 = sub_239EC8B1C(v1, v4);
    sub_239E5B240(v4);
  }

  return v1;
}

uint64_t sub_239EC5550(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239EC8AE4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EC8C28, &stru_284D17A98);
  }
}

uint64_t sub_239EC55E4(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

void sub_239EC5698(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1[40] || !a1[45])
  {
LABEL_15:
    if (a1[30] && a1[35])
    {
      v104 = objc_alloc(MEMORY[0x277CBEA90]);
      sub_239E56C3C(a1 + 30);
      v113 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v104, v105, a1[34], 4 * a1[30], v109, v110, v111, v112, 0, v106, v107, v108);
      v123 = objc_msgSend_newBufferWithData_type_(v5, v114, v113, 2, v119, v120, v121, v122, v115, v116, v117, v118);
      if (objc_msgSend_conformsToProtocol_(v123, v124, &unk_284D24D98, v125, v130, v131, v132, v133, v126, v127, v128, v129))
      {
        objc_msgSend_setName_(v123, v134, @"vertexCreaseIndices", v135, v140, v141, v142, v143, v136, v137, v138, v139);
      }

      objc_msgSend_setVertexCreaseIndices_(v6, v134, v123, v135, v140, v141, v142, v143, v136, v137, v138, v139);
      objc_msgSend_setVertexCreaseCount_(v6, v144, a1[30], v145, v150, v151, v152, v153, v146, v147, v148, v149);
      v154 = objc_alloc(MEMORY[0x277CBEA90]);
      sub_239EBF2E0((a1 + 35));
      v163 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v154, v155, a1[39], 4 * a1[35], v159, v160, v161, v162, 0, v156, v157, v158);

      v173 = objc_msgSend_newBufferWithData_type_(v5, v164, v163, 2, v169, v170, v171, v172, v165, v166, v167, v168);
      if (objc_msgSend_conformsToProtocol_(v173, v174, &unk_284D24D98, v175, v180, v181, v182, v183, v176, v177, v178, v179))
      {
        objc_msgSend_setName_(v173, v184, @"vertexCreaseSharpness", v185, v190, v191, v192, v193, v186, v187, v188, v189);
      }

      objc_msgSend_setVertexCreases_(v6, v184, v173, v185, v190, v191, v192, v193, v186, v187, v188, v189);
    }

    goto LABEL_23;
  }

  v198 = 0;
  memset(v197, 0, sizeof(v197));
  v196 = 0;
  v194 = 0u;
  v195 = 0u;
  sub_239E56C3C(a1 + 45);
  v7 = a1[49];
  sub_239E56C3C(a1 + 45);
  v8 = a1[49] + 4 * a1[45];
  if (v7 == v8)
  {
LABEL_10:
    v14 = objc_alloc(MEMORY[0x277CBEA90]);
    sub_239E56C3C(&v194);
    v23 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v14, v15, v196, 4 * v194, v19, v20, v21, v22, 0, v16, v17, v18);
    v33 = objc_msgSend_newBufferWithData_type_(v5, v24, v23, 2, v29, v30, v31, v32, v25, v26, v27, v28);
    if (objc_msgSend_conformsToProtocol_(v33, v34, &unk_284D24D98, v35, v40, v41, v42, v43, v36, v37, v38, v39))
    {
      objc_msgSend_setName_(v33, v44, @"creaseIndices", v45, v50, v51, v52, v53, v46, v47, v48, v49);
    }

    objc_msgSend_setEdgeCreaseIndices_(v6, v44, v33, v45, v50, v51, v52, v53, v46, v47, v48, v49, v194, v195);
    objc_msgSend_setEdgeCreaseCount_(v6, v54, v194 >> 1, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v64 = objc_alloc(MEMORY[0x277CBEA90]);
    sub_239EBF2E0(v197);
    v73 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v64, v65, v198, 4 * *&v197[0], v69, v70, v71, v72, 0, v66, v67, v68);

    v83 = objc_msgSend_newBufferWithData_type_(v5, v74, v73, 2, v79, v80, v81, v82, v75, v76, v77, v78);
    if (objc_msgSend_conformsToProtocol_(v83, v84, &unk_284D24D98, v85, v90, v91, v92, v93, v86, v87, v88, v89))
    {
      objc_msgSend_setName_(v83, v94, @"creaseSharpness", v95, v100, v101, v102, v103, v96, v97, v98, v99);
    }

    objc_msgSend_setEdgeCreases_(v6, v94, v83, v95, v100, v101, v102, v103, v96, v97, v98, v99);

    sub_239E56C80(&v194);
    sub_239E56C80(v197);
    goto LABEL_15;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *v7;
    if (a1[40] < (*v7 + v10))
    {
      break;
    }

    if (v11 >= 2)
    {
      v12 = 4 * v10;
      v13 = v11 - 1;
      do
      {
        sub_239E56C3C(a1 + 40);
        sub_239E5A274(&v194, (a1[44] + v12));
        sub_239E56C3C(a1 + 40);
        sub_239E5A274(&v194, (a1[44] + v12 + 4));
        sub_239EBF2E0((a1 + 50));
        sub_239EC8F40(v197, (a1[54] + 4 * v9));
        v12 += 4;
        ++v10;
        --v13;
      }

      while (v13);
    }

    ++v9;
    ++v10;
    if (++v7 == v8)
    {
      goto LABEL_10;
    }
  }

  sub_239E56C80(&v194);
  sub_239E56C80(v197);
LABEL_23:
}

void sub_239EC5A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  sub_239E56C80(&a9);
  sub_239E56C80(va);

  _Unwind_Resume(a1);
}

id sub_239EC5AD8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = a2[1];
  v7 = a2[2];
  if (v8 != v7)
  {
    v9 = 0;
    v10 = 0;
    v69 = -1;
    v68 = a2[2];
    do
    {
      MEMORY[0x23EE7ED20](&v72, "vertex");
      v21 = v8[10];
      v22 = v72;
      if ((v72 & 7) != 0)
      {
        atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v22 ^ v21) > 7)
      {
        MEMORY[0x23EE7ED20](&v72, "faceVarying");
        v28 = v8[10];
        v29 = v72;
        if ((v72 & 7) != 0)
        {
          atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v29 ^ v28) <= 7)
        {
          v74 = 0;
          v72 = 0u;
          v73 = 0u;
          if (*(a1 + 8))
          {
            sub_239E56C3C((a1 + 8));
            v30 = *(a1 + 40);
            sub_239E56C3C((a1 + 8));
            v31 = *(a1 + 40) + 4 * *(a1 + 8);
            while (v30 != v31)
            {
              v32 = *v30;
              sub_239E56C3C(a2 + 14);
              v33 = *(a2[18] + 4 * v32);
              sub_239E56C3C(a4);
              if (v33 >= 1)
              {
                v34 = 4 * *(a4[4] + 4 * v32);
                do
                {
                  sub_239E56C3C(v8 + 2);
                  sub_239E5A274(&v72, (v8[6] + v34));
                  v34 += 4;
                  --v33;
                }

                while (v33);
              }

              ++v30;
            }
          }

          else
          {
            sub_239EB3650(&v72, v8 + 1);
          }

          sub_239E5ADCC(a3, &v72);
          v56 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v46, -1 - 0x3333333333333333 * ((a3[1] - *a3) >> 3), v47, v52, v53, v54, v55, v48, v49, v50, v51);
          objc_msgSend_addObject_(v71, v57, v56, v58, v63, v64, v65, v66, v59, v60, v61, v62);

          sub_239E56C80(&v72);
          v7 = v68;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          v74 = 0;
          v72 = 0u;
          v73 = 0u;
          if (*(a1 + 8))
          {
            sub_239E56C3C((a1 + 8));
            v23 = *(a1 + 40);
            sub_239E56C3C((a1 + 8));
            v24 = *(a1 + 40) + 4 * *(a1 + 8);
            while (v23 != v24)
            {
              v25 = *v23;
              sub_239E56C3C(a2 + 14);
              v26 = *(a2[18] + 4 * v25);
              sub_239E56C3C(a4);
              if (v26 >= 1)
              {
                v27 = 4 * *(a4[4] + 4 * v25);
                do
                {
                  sub_239E56C3C(a2 + 19);
                  sub_239E5A274(&v72, (a2[23] + v27));
                  v27 += 4;
                  --v26;
                }

                while (v26);
              }

              ++v23;
            }
          }

          else
          {
            sub_239EB3650(&v72, (a2 + 19));
          }

          sub_239E5ADCC(a3, &v72);
          sub_239E56C80(&v72);
          v69 = v10;
          v7 = v68;
        }

        v35 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, v69, v12, v17, v18, v19, v20, v13, v14, v15, v16, v68);
        objc_msgSend_addObject_(v71, v36, v35, v37, v42, v43, v44, v45, v38, v39, v40, v41);

        v9 = 1;
      }

      ++v10;
      v8 += 12;
    }

    while (v8 != v7);
  }

  return v71;
}

void sub_239EC5DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);
  sub_239E56C80(va);

  _Unwind_Resume(a1);
}

id sub_239EC5E74(uint64_t *a1, void *a2, int a3)
{
  v118 = a2;
  v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v128 = 0;
  memset(v127, 0, sizeof(v127));
  v4 = a1 + 14;
  sub_239E5A31C(v127, a1[14]);
  if (a1[14])
  {
    v15 = 0;
    v16 = 0;
    do
    {
      sub_239E56C3C(v127);
      *(v128 + 4 * v15) = v16;
      sub_239E56C3C(a1 + 14);
      v16 += *(a1[18] + 4 * v15++);
    }

    while (a1[14] > v15);
  }

  v17 = a1[55];
  for (i = a1[56]; v17 != i; v17 += 7)
  {
    v126 = 0;
    memset(v125, 0, sizeof(v125));
    if (a3)
    {
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v119 = sub_239EC5AD8(v17, a1, &v122, v127);
      v18 = *v122;
      v19 = 0xCCCCCCCCCCCCCCCDLL * (v123 - v122) * *v122;
      v129 = 0;
      v130 = &v129;
      sub_239E5AE38(v125, v19, &v130);
      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = v122;
        v23 = v123;
        v120 = v18;
        v121 = v17;
        do
        {
          if (v23 == v22)
          {
            v23 = v22;
          }

          else
          {
            v24 = v4;
            v25 = 0;
            v26 = 0;
            do
            {
              v27 = &v22[v25];
              sub_239E56C3C(&v22[v25]);
              LODWORD(v27) = *(v27[4] + 4 * v21);
              v29 = v122;
              v28 = v123;
              sub_239E56C3C(v125);
              *(v126 - 0x3333333333333333 * (v28 - v29) * v20 + 4 * v26++) = v27;
              v22 = v122;
              v23 = v123;
              v25 += 5;
            }

            while (0xCCCCCCCCCCCCCCCDLL * (v123 - v122) > v26);
            v4 = v24;
            v18 = v120;
            v17 = v121;
          }

          ++v21;
          v20 += 4;
        }

        while (v21 != v18);
      }

      v131 = &v122;
      sub_239E6DDBC(&v131);
    }

    else
    {
      if (v17[1])
      {
        sub_239E56C3C(v17 + 1);
        v30 = v17[5];
        sub_239E56C3C(v17 + 1);
        v31 = v17[5] + 4 * v17[1];
        while (v30 != v31)
        {
          v32 = *v30;
          sub_239E56C3C(v4);
          v33 = *(a1[18] + 4 * v32);
          sub_239E56C3C(v127);
          if (v33 >= 1)
          {
            v34 = 4 * *(v128 + 4 * v32);
            do
            {
              sub_239E56C3C(a1 + 19);
              sub_239E5A274(v125, (a1[23] + v34));
              v34 += 4;
              --v33;
            }

            while (v33);
          }

          ++v30;
        }
      }

      else
      {
        sub_239EB3650(v125, (a1 + 19));
      }

      v119 = 0;
    }

    v35 = objc_alloc(MEMORY[0x277CBEA90]);
    sub_239E56C3C(v125);
    v44 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v35, v36, v126, 4 * *&v125[0], v40, v41, v42, v43, 0, v37, v38, v39);
    v54 = objc_msgSend_newBufferWithData_type_(v118, v45, v44, 2, v50, v51, v52, v53, v46, v47, v48, v49);
    if (objc_msgSend_conformsToProtocol_(v54, v55, &unk_284D24D98, v56, v61, v62, v63, v64, v57, v58, v59, v60))
    {
      v65 = v54;
      objc_msgSend_setName_(v65, v66, @"indices", v67, v72, v73, v74, v75, v68, v69, v70, v71);
    }

    v76 = sub_239EC51C4(v17, a1, v118);
    if (a3)
    {
      v77 = [MDLSubmesh alloc];
      v89 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_faceIndexing_geometryType_material_topology_(v77, v78, @"submesh", v54, v79, v80, v81, v82, *&v125[0], 32, v119, 5, v17[6], v76);
      if (v89)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v94 = [MDLSubmesh alloc];
      v89 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v94, v95, @"submesh", v54, v96, v97, v98, v99, *&v125[0], 32, 5, v17[6], v76);
      if (v89)
      {
LABEL_30:
        objc_msgSend_addObject_(v115, v83, v89, v84, v90, v91, v92, v93, v85, v86, v87, v88);
      }
    }

    sub_239E56C80(v125);
  }

  v100 = objc_msgSend_objectAtIndexedSubscript_(v115, v5, 0, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v112 = objc_msgSend_topology(v100, v101, v102, v103, v108, v109, v110, v111, v104, v105, v106, v107);
  sub_239EC5698(a1, v118, v112);

  v113 = v115;
  sub_239E56C80(v127);

  return v113;
}

void sub_239EC62C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239EC63C0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  if (*(a2 + 16))
  {
    memset(v20, 0, 40);
    sub_239E5A31C(v20, a1[19]);
    if (a1[14])
    {
      v5 = 0;
      LODWORD(i) = 0;
      do
      {
        v7 = 0;
        for (i = i; ; ++i)
        {
          sub_239E56C3C(a1 + 14);
          if (v7 >= *(a1[18] + 4 * v5))
          {
            break;
          }

          sub_239E56C3C(v4);
          v8 = *(*(a2 + 48) + 4 * v5);
          sub_239E56C3C(v20);
          *(*&v20[2] + 4 * i) = v8;
          ++v7;
        }

        ++v5;
      }

      while (a1[14] > v5);
    }

    v9 = a1[19];
    v21 = 0;
    v22[0] = &v21;
    sub_239E5AE38(v4, v9, v22);
    v10 = v4[2];
    v11 = *v4;
    *v4 = v20[0];
    v4[2] = *&v20[1];
    v20[0] = v11;
    *&v20[1] = v10;
    v12 = *(a2 + 40);
    *(a2 + 40) = *(&v20[1] + 8);
    *(&v20[1] + 8) = v12;
    sub_239E56C80(v20);
  }

  else
  {
    v13 = a1[19];
    LODWORD(v22[0]) = 0;
    *&v20[0] = v22;
    sub_239E5AE38(v4, v13, v20);
    if (a1[14])
    {
      v14 = 0;
      v15 = 0;
      do
      {
        sub_239E56C3C(a1 + 14);
        if (*(a1[18] + 4 * v14) >= 1)
        {
          v16 = 0;
          v17 = 4 * v15;
          do
          {
            sub_239E56C3C(v4);
            *(*(a2 + 48) + v17) = v14;
            ++v16;
            sub_239E56C3C(a1 + 14);
            v17 += 4;
            ++v15;
          }

          while (v16 < *(a1[18] + 4 * v14));
        }

        ++v14;
      }

      while (a1[14] > v14);
    }
  }

  result = MEMORY[0x23EE7ED20](v20, "faceVarying");
  v19 = (a2 + 80);
  if (v20 == (a2 + 80))
  {
    if ((v20[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v20[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v19 = *&v20[0];
  }

  return result;
}

void sub_239EC6600(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, 40);
  v4 = (a1 + 152);
  sub_239E5A31C(v12, *(a1 + 152));
  if (*v4)
  {
    v5 = 0;
    do
    {
      sub_239E56C3C(v4);
      v6 = *(*(a1 + 184) + 4 * v5);
      sub_239E56C3C((a2 + 16));
      LODWORD(v6) = *(*(a2 + 48) + 4 * v6);
      sub_239E56C3C(v12);
      *(*&v12[2] + 4 * v5++) = v6;
      v7 = *v4;
    }

    while (*v4 > v5);
  }

  else
  {
    v7 = 0;
  }

  v13 = 0;
  v14[0] = &v13;
  sub_239E5AE38((a2 + 16), v7, v14);
  v8 = *(a2 + 32);
  v9 = *(a2 + 16);
  *(a2 + 16) = v12[0];
  *(a2 + 32) = *&v12[1];
  v12[0] = v9;
  *&v12[1] = v8;
  v10 = *(a2 + 40);
  *(a2 + 40) = *(&v12[1] + 8);
  *(&v12[1] + 8) = v10;
  MEMORY[0x23EE7ED20](v14, "faceVarying");
  v11 = (a2 + 80);
  if (v14 == (a2 + 80))
  {
    if ((v14[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v14[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v11 = v14[0];
  }

  sub_239E56C80(v12);
}

uint64_t sub_239EC677C(__n128 *a1, int a2)
{
  v4 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    sub_239E85F74(&v73, a2);
    v6 = sub_239E85EB8(a1);
    v7 = *(v6 + 16);
    v70 = *v6;
    v71 = v7;
    v8 = *(v6 + 32);
    v72 = v8;
    if (v8)
    {
      v9 = (v8 - 8);
      if (*(&v71 + 1))
      {
        v9 = *(&v71 + 1);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    if (v70)
    {
      sub_239E86480(&v73);
      v10 = v75;
      sub_239E86480(&v73);
      v11 = v75;
      v12 = v73.n128_u64[0];
      sub_239E86480(&v70);
      v13 = &v11[v12] - v10;
      if (v13 >= 1)
      {
        v14 = v72;
        v15 = v13 + 1;
        do
        {
          *v10++ = *v14;
          --v15;
        }

        while (v15 > 1);
      }

      sub_239EC6F88(a1, &v73);
    }

LABEL_29:
    sub_239E56C80(&v70);
    sub_239E56C80(&v73);
    goto LABEL_30;
  }

  if (!atomic_load(v4))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_20;
  }

  if (!atomic_load(v4))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_20:
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    sub_239E6D0E8(&v73, a2);
    v18 = sub_239E6AD14(a1);
    v19 = *(v18 + 16);
    v70 = *v18;
    v71 = v19;
    v20 = *(v18 + 32);
    v72 = v20;
    if (v20)
    {
      v21 = (v20 - 8);
      if (*(&v71 + 1))
      {
        v21 = *(&v71 + 1);
      }

      atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
    }

    if (v70)
    {
      sub_239E56B84(&v73);
      v22 = v75;
      sub_239E56B84(&v73);
      v23 = v75;
      v24 = v73.n128_u64[0];
      sub_239E56B84(&v70);
      v25 = v23 + 12 * v24 - v22;
      if (v25 >= 1)
      {
        v26 = v72;
        v27 = v25 / 0xCuLL + 1;
        do
        {
          v28 = *v26;
          *(v22 + 2) = *(v26 + 2);
          *v22 = v28;
          v22 = (v22 + 12);
          --v27;
        }

        while (v27 > 1);
      }

      sub_239E6D3C8(a1, &v73);
    }

    goto LABEL_29;
  }

  if (!atomic_load(v4))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    sub_239EC7040(&v73, a1[5].n128_i32[2] * a2);
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v32 = sub_239EC70B4(a1);
    v33 = *(v32 + 16);
    v70 = *v32;
    v71 = v33;
    v34 = *(v32 + 32);
    v72 = v34;
    if (v34)
    {
      v35 = (v34 - 8);
      if (*(&v71 + 1))
      {
        v35 = *(&v71 + 1);
      }

      atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
    }

    if (v70)
    {
      if (a1[5].n128_u32[2] == 1)
      {
        sub_239EC9804(&v73);
        v36 = v75;
        sub_239EC9804(&v73);
        v37 = v75;
        v38 = v73.n128_u64[0];
        sub_239EC9804(&v70);
        v39 = (v37 + 2 * v38 - v36) >> 1;
        if (v39 >= 1)
        {
          v40 = 0;
          v41 = vdupq_n_s64(v39 - 1);
          v42 = *v72;
          v43 = (v39 + 7) & 0x7FFFFFFFFFFFFFF8;
          v44 = v36 + 4;
          do
          {
            v45 = vdupq_n_s64(v40);
            v46 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v45, xmmword_239F9AD40)));
            if (vuzp1_s8(vuzp1_s16(v46, *v41.i8), *v41.i8).u8[0])
            {
              *(v44 - 4) = v42;
            }

            if (vuzp1_s8(vuzp1_s16(v46, *&v41), *&v41).i8[1])
            {
              *(v44 - 3) = v42;
            }

            if (vuzp1_s8(vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v45, xmmword_239F9AD30)))), *&v41).i8[2])
            {
              *(v44 - 2) = v42;
              *(v44 - 1) = v42;
            }

            v47 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v45, xmmword_239F9C330)));
            if (vuzp1_s8(*&v41, vuzp1_s16(v47, *&v41)).i32[1])
            {
              *v44 = v42;
            }

            if (vuzp1_s8(*&v41, vuzp1_s16(v47, *&v41)).i8[5])
            {
              v44[1] = v42;
            }

            if (vuzp1_s8(*&v41, vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v45, xmmword_239F9C320))))).i8[6])
            {
              v44[2] = v42;
              v44[3] = v42;
            }

            v40 += 8;
            v44 += 8;
          }

          while (v43 != v40);
        }
      }

      else
      {
        sub_239EC9804(&v73);
        v64 = v75;
        while (1)
        {
          sub_239EC9804(&v73);
          if (v64 == (v75 + 2 * v73.n128_u64[0]))
          {
            break;
          }

          if (a1[5].n128_u32[2])
          {
            v65 = 0;
            v66 = 0;
            do
            {
              sub_239EC9804(&v70);
              *(v64 + v66) = v72[v66];
              ++v66;
              v65 += 2;
            }

            while (v66 < a1[5].n128_i32[2]);
            v64 = (v64 + v65);
          }
        }
      }

      sub_239EC7148(a1, &v73);
    }

    goto LABEL_29;
  }

  if (!atomic_load(v4))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    sub_239EC7200(&v73, a1[5].n128_i32[2] * a2);
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v49 = sub_239EC4DC4(a1);
    v50 = *(v49 + 16);
    v70 = *v49;
    v71 = v50;
    v51 = *(v49 + 32);
    v72 = v51;
    if (v51)
    {
      v52 = (v51 - 8);
      if (*(&v71 + 1))
      {
        v52 = *(&v71 + 1);
      }

      atomic_fetch_add_explicit(v52, 1uLL, memory_order_relaxed);
    }

    if (v70)
    {
      if (a1[5].n128_u32[2] == 1)
      {
        sub_239EBF2E0(&v73);
        v53 = v75;
        sub_239EBF2E0(&v73);
        v54 = v75;
        v55 = v73.n128_u64[0];
        sub_239EBF2E0(&v70);
        v57 = (v54 + 4 * v55 - v53) >> 2;
        if (v57 >= 1)
        {
          v58 = 0;
          v56.i32[0] = *v72;
          v59 = vdupq_n_s64(v57 - 1);
          v60 = (v57 + 3) & 0x7FFFFFFFFFFFFFFCLL;
          v61 = v53 + 2;
          do
          {
            v62 = vdupq_n_s64(v58);
            v63 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(v62, xmmword_239F9AD40)));
            if (vuzp1_s16(v63, v56).u8[0])
            {
              *(v61 - 2) = v56.i32[0];
            }

            if (vuzp1_s16(v63, v56).i8[2])
            {
              *(v61 - 1) = v56.i32[0];
            }

            if (vuzp1_s16(v56, vmovn_s64(vcgeq_u64(v59, vorrq_s8(v62, xmmword_239F9AD30)))).i32[1])
            {
              *v61 = v56.i32[0];
              v61[1] = v56.i32[0];
            }

            v58 += 4;
            v61 += 4;
          }

          while (v60 != v58);
        }
      }

      else
      {
        sub_239EBF2E0(&v73);
        v67 = v75;
        while (1)
        {
          sub_239EBF2E0(&v73);
          if (v67 == (v75 + 4 * v73.n128_u64[0]))
          {
            break;
          }

          if (a1[5].n128_u32[2])
          {
            v68 = 0;
            v69 = 0;
            do
            {
              sub_239EBF2E0(&v70);
              *(v67 + v69) = *&v72[2 * v69];
              ++v69;
              v68 += 4;
            }

            while (v69 < a1[5].n128_i32[2]);
            v67 = (v67 + v68);
          }
        }
      }

      sub_239EC7274(a1, &v73);
    }

    goto LABEL_29;
  }

LABEL_30:
  result = MEMORY[0x23EE7ED20](&v73, "vertex");
  v30 = a1 + 5;
  if (&v73 == &a1[5])
  {
    if ((v73.n128_u8[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v73.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((v30->n128_u64[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v30->n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v30->n128_u64[0] = v73.n128_u64[0];
  }

  return result;
}

void sub_239EC6EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_239E56C80(&a9);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

__n128 sub_239EC6F88(uint64_t *a1, __n128 *a2)
{
  if ((sub_239EC902C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239EC9064(a1, v10);
  }

  v4 = sub_239EC9138(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_239EC7040(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239EC9174(a1, a2, &v6);
  return a1;
}

uint64_t sub_239EC70B4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239EC9710(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EC9748, &stru_284D17A50);
  }
}

__n128 sub_239EC7148(uint64_t *a1, __n128 *a2)
{
  if ((sub_239EC9710(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239EC9848(a1, v10);
  }

  v4 = sub_239EC9C60(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_239EC7200(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  sub_239E5B364(a1);
  v7 = &v6;
  sub_239EBEEDC(a1, a2, &v7, v4);
  return a1;
}

__n128 sub_239EC7274(uint64_t *a1, __n128 *a2)
{
  if ((sub_239EC8434(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239EC9C9C(a1, v10);
  }

  v4 = sub_239ECA198(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_239EC732C(uint64_t *a1)
{
  v4[8] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280BC3A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280BC3A18))
  {
    operator new();
  }

  v4[0] = a1;
  return sub_239E6F454(qword_280BC3A08, a1, &unk_239F9BFF0, v4, &v3)[5];
}

void sub_239EC7594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  while (1)
  {
    v14 = *(v11 - 2);
    v11 -= 16;
    v13 = v14;
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v11 == &a10)
    {
      MEMORY[0x23EE802C0](v10, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
      __cxa_guard_abort(&qword_280BC3A18);
      _Unwind_Resume(a1);
    }
  }
}

__n128 sub_239EC7638(unint64_t *a1, void *a2)
{
  memset(v14, 0, 40);
  sub_239EC7754(v14, *a2);
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1[4] + 4 * v4);
      v7 = v6 + 1;
      for (i = 4 * v6 + 4 * v5 - 4; v7-- > 1; i -= 4)
      {
        sub_239E56C3C(a2);
        sub_239E5A274(v14, (a2[4] + i));
      }

      v5 += v6;
      ++v4;
    }

    while (*a1 > v4);
  }

  v10 = a2[2];
  v11 = *a2;
  *a2 = v14[0];
  a2[2] = *&v14[1];
  v14[0] = v11;
  *&v14[1] = v10;
  v12 = *(a2 + 3);
  *(a2 + 3) = *(&v14[1] + 8);
  *(&v14[1] + 8) = v12;
  sub_239E56C80(v14);
  return result;
}

void sub_239EC7754(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    v7 = sub_239E56CEC(a1, a2);
    goto LABEL_12;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 8);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = sub_239E56CEC(a1, a2);
    v7 = v6;
    if (v5)
    {
      v8 = 0;
      do
      {
        *(v6 + v8) = *(v3 + v8);
        v8 += 4;
      }

      while (4 * v5 != v8);
    }

LABEL_12:
    sub_239E56C80(a1);
    a1[4] = v7;
  }
}

void sub_239EC77F0(void *a1)
{
  v2 = sub_239EC7638(a1 + 14, a1 + 19);
  v3 = a1[1];
  v4 = a1[2];
  if (v3 != v4)
  {
    v5 = a1[19];
    do
    {
      MEMORY[0x23EE7ED20](&v12, "faceVarying", v2);
      v6 = v3[10];
      v7 = v12;
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v7 ^ v6) > 7)
      {
        goto LABEL_16;
      }

      v8 = v3[2];
      if (v8)
      {
        if (v8 != v5)
        {
          v9 = v3[7] & 0xFFFFFFFFFFFFFFF8;
          if (v9)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          NSLog(&cfstr_UnableToUnwind.isa, v10);
          goto LABEL_16;
        }
      }

      else
      {
        sub_239EC7754(v3 + 2, v5);
        v11 = 0;
        if (v5 >= 1)
        {
          do
          {
            sub_239E5A274(v3 + 2, &v11);
            ++v11;
          }

          while (v11 < v5);
        }
      }

      v2 = sub_239EC7638(a1 + 14, v3 + 2);
LABEL_16:
      v3 += 12;
    }

    while (v3 != v4);
  }
}

uint64_t sub_239EC793C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239ECA200(a1, a2, &v6);
  return a1;
}

uint64_t **sub_239EC79B0(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_239EC7A30(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void *sub_239EC7A30(uint64_t **a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_239EC7AC0(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_239EC7C64();
  }

  return result;
}

uint64_t *sub_239EC7AC0(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_239E697D8(a1, a5, a2 + 4))
  {
    if (!sub_239E697D8(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_239E697D8(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_239E697D8(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_239E6F314(a1, a3, a5);
}

void sub_239EC7CF0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239EC7CF0(a1, *a2);
    sub_239EC7CF0(a1, a2[1]);
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_239EC7DE8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EC7E3C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239EC7E3C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {

    v5 = *(i - 24);
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_239EC7E90(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239EC7F18(result, a4);
  }

  return result;
}

void sub_239EC7EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_239EC8004(&a9);
  _Unwind_Resume(a1);
}

void sub_239EC7F18(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_239E5FA00(a1, a2);
  }

  sub_239E797B4();
}

uint64_t sub_239EC7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_239E5A5D4(v4, v6);
      v6 += 96;
      v4 = v11 + 96;
      v11 += 96;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_239E5FD6C(v8);
  return v4;
}

void sub_239EC8004(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EC8058(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_239EC8058(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    do
    {
      v4 = *(v2 - 16);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = *(v2 - 32);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = *(v2 - 40);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_239E56C80(v2 - 80);
      v2 -= 96;
      result = sub_239E5B240(v2);
    }

    while (v2 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_239EC80F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_239EC7A30(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t **sub_239EC8170(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_239EC81F0(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void *sub_239EC81F0(uint64_t **a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_239EC7AC0(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_239EC8290(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = a2[1];
  return a1;
}

void sub_239EC82EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239EC82EC(a1, *a2);
    sub_239EC82EC(a1, a2[1]);

    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_239EC83EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 24);
      v6 -= 24;
    }

    while (v6 != a5);
  }
}

uint64_t sub_239EC8434(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 57)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17AB0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239EC84CC(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EC8588(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239EC85E4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F73B00();
    }
  }
}

void *sub_239EC8628(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(size_t) [T = unsigned int]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239EC86C0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239EC86E0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239EC8884(a1);
}

unint64_t sub_239EC86F8(uint64_t *a1)
{
  v1 = *a1;
  v3[1] = 1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v3, *(v1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

void sub_239EC886C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D15838;
  sub_239EC8A68(a2, v2);
}

uint64_t *sub_239EC8884(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239EC88FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && sub_239EB5C18(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 4 * *a1) == 0;
  }

  return result;
}

uint64_t sub_239EC8984(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EC89EC();
  }

  return *a1;
}

uint64_t sub_239EC8AE4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 49)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17A98);
  }

  else
  {
    return 0;
  }
}

void *sub_239EC8B1C(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (a2[1])
    {
      v9 = 0;
      v10 = 0;
      sub_239E5B3EC(&v9, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      a2[1] = 0;
      if (v10)
      {
        (*(v10 + 32))(&v9);
      }
    }

    else
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = (a1[1] & 3) == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
    }
  }

  return a1;
}

void sub_239EC8C10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EC8C88(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239EC8CE4(size_t *a1, size_t a2, unsigned __int8 **a3)
{
  v3 = *a1;
  if (a2 == *a1)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (a2 > v3)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239EC8E68(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  *(v10 + i) = *(v9 + i);
                }
              }
            }

            memset(v7 + v3, **a3, a2 - v3);
          }

          v12 = v7;
          goto LABEL_27;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a1;
      }

      v17 = sub_239EC8E68(a1, a2);
      v12 = v17;
      if (v3)
      {
        v18 = v17;
        do
        {
          v19 = *v7;
          v7 = (v7 + 1);
          *v18++ = v19;
          --v16;
        }

        while (v16);
      }

      v15 = a2 - v3;
      if (a2 <= v3)
      {
        goto LABEL_27;
      }

      v14 = **a3;
      v13 = (v17 + v3);
    }

    else
    {
      v13 = sub_239EC8E68(a1, a2);
      v12 = v13;
      v14 = **a3;
      v15 = a2;
    }

    memset(v13, v14, v15);
LABEL_27:
    if (v12 != a1[4])
    {
      sub_239E56C80(a1);
      a1[4] = v12;
    }

    *a1 = a2;
    return;
  }

  sub_239E5B364(a1);
}

void *sub_239EC8E68(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(size_t) [T = unsigned char]");
  if (a2 > 0x7FFFFFFFFFFFFFEELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void sub_239EC8EFC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F73B68();
    }
  }
}

void sub_239EC8F40(uint64_t *result, _DWORD *a2)
{
  if (!*(result + 2))
  {
    v4 = *result;
    if (!result[3])
    {
      v5 = result[4];
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = result[4];
      if (v5)
      {
        if (result[3])
        {
          v7 = result;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*result;
        return;
      }
    }

LABEL_14:
    sub_239F73CD8();
    goto LABEL_13;
  }

  sub_239F73C5C(result);
}

void sub_239EC8FE8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 40;
    sub_239E56C80(v1);
  }
}

uint64_t sub_239EC902C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B10);
  }

  else
  {
    return 0;
  }
}

void sub_239EC9064(uint64_t *a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  sub_239E5B3EC(v4, a1);
  a1[1] = &off_284D15B18;
  sub_239EB5D90(a1, a2);
}

void sub_239EC90FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EC9138(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_239F73D54();
  }

  return sub_239EB62AC(a1);
}

void sub_239EC9174(unint64_t *a1, unint64_t a2, __int16 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239EC9678(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (2 * a2 - 2 * v3 - 2) >> 1;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 & 0x7FFFFFFFFFFFFFF8) + 8;
            v18 = v7 + v3 + 4;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD40)));
              if (vuzp1_s8(vuzp1_s16(v20, *v16.i8), *v16.i8).u8[0])
              {
                *(v18 - 4) = v14;
              }

              if (vuzp1_s8(vuzp1_s16(v20, *&v16), *&v16).i8[1])
              {
                *(v18 - 3) = v14;
              }

              if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD30)))), *&v16).i8[2])
              {
                *(v18 - 2) = v14;
                *(v18 - 1) = v14;
              }

              v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9C330)));
              if (vuzp1_s8(*&v16, vuzp1_s16(v21, *&v16)).i32[1])
              {
                *v18 = v14;
              }

              if (vuzp1_s8(*&v16, vuzp1_s16(v21, *&v16)).i8[5])
              {
                v18[1] = v14;
              }

              if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9C320))))).i8[6])
              {
                v18[2] = v14;
                v18[3] = v14;
              }

              v12 += 8;
              v18 += 8;
            }

            while (v17 != v12);
          }

LABEL_69:
          if (v13 != a1[4])
          {
            sub_239E56C80(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a1;
      }

      v32 = sub_239EC9678(a1, a2);
      v13 = v32;
      if (v3)
      {
        v33 = 2 * v31;
        v34 = v32;
        do
        {
          v35 = *v7;
          v7 = (v7 + 2);
          *v34 = v35;
          v34 = (v34 + 2);
          v33 -= 2;
        }

        while (v33);
      }

      if (v3 < a2)
      {
        v36 = 0;
        v37 = **a3;
        v38 = (2 * a2 - 2 * v3 - 2) >> 1;
        v39 = vdupq_n_s64(v38);
        v40 = (v38 & 0x7FFFFFFFFFFFFFF8) + 8;
        v41 = v32 + v3 + 4;
        do
        {
          v42 = vdupq_n_s64(v36);
          v43 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9AD40)));
          if (vuzp1_s8(vuzp1_s16(v43, 6), 6).u8[0])
          {
            *(v41 - 4) = v37;
          }

          if (vuzp1_s8(vuzp1_s16(v43, 6), 6).i8[1])
          {
            *(v41 - 3) = v37;
          }

          if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9AD30)))), 6).i8[2])
          {
            *(v41 - 2) = v37;
            *(v41 - 1) = v37;
          }

          v44 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9C330)));
          if (vuzp1_s8(6, vuzp1_s16(v44, 6)).i32[1])
          {
            *v41 = v37;
          }

          if (vuzp1_s8(6, vuzp1_s16(v44, 6)).i8[5])
          {
            v41[1] = v37;
          }

          if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9C320))))).i8[6])
          {
            v41[2] = v37;
            v41[3] = v37;
          }

          v36 += 8;
          v41 += 8;
        }

        while (v40 != v36);
      }

      goto LABEL_69;
    }

    if (2 * a2 / a2 == 2)
    {
      v13 = sub_239EC9678(a1, a2);
      v22 = 0;
      v23 = **a3;
      v24 = (2 * a2 - 2) >> 1;
      v25 = vdupq_n_s64(v24);
      v26 = (v24 & 0x7FFFFFFFFFFFFFF8) + 8;
      v27 = v13 + 1;
      do
      {
        v28 = vdupq_n_s64(v22);
        v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9AD40)));
        if (vuzp1_s8(vuzp1_s16(v29, *v25.i8), *v25.i8).u8[0])
        {
          *(v27 - 4) = v23;
        }

        if (vuzp1_s8(vuzp1_s16(v29, *&v25), *&v25).i8[1])
        {
          *(v27 - 3) = v23;
        }

        if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9AD30)))), *&v25).i8[2])
        {
          *(v27 - 2) = v23;
          *(v27 - 1) = v23;
        }

        v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9C330)));
        if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i32[1])
        {
          *v27 = v23;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i8[5])
        {
          v27[1] = v23;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9C320))))).i8[6])
        {
          v27[2] = v23;
          v27[3] = v23;
        }

        v22 += 8;
        v27 += 8;
      }

      while (v26 != v22);
      goto LABEL_69;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239EC9678(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_AllocateNew(size_t) [T = unsigned short]");
  if (a2 > 0x3FFFFFFFFFFFFFF7)
  {
    v3 = -1;
  }

  else
  {
    v3 = 2 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_239EC9710(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 51)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17A50);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239EC97A8(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239EC9804(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F73DC0();
    }
  }
}

void sub_239EC9848(uint64_t *a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  sub_239E5B3EC(v4, a1);
  a1[1] = &off_284D156C8;
  sub_239EC8A68(a1, a2);
}

void sub_239EC98E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239EC991C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239EC993C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239EC9AE0(a1);
}

unint64_t sub_239EC9954(uint64_t *a1)
{
  v1 = *a1;
  v3[1] = 1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v3, *(v1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

void sub_239EC9AC8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D156C8;
  sub_239EC8A68(a2, v2);
}

uint64_t *sub_239EC9AE0(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239EC9B58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && sub_239EB5C18(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 2 * *a1) == 0;
  }

  return result;
}

uint64_t sub_239EC9BE0(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EC89EC();
  }

  return *a1;
}

uint64_t sub_239EC9C60(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_239F73E30();
  }

  return sub_239EC9BE0(a1);
}

void sub_239EC9C9C(uint64_t *a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  sub_239E5B3EC(v4, a1);
  a1[1] = &off_284D158F0;
  sub_239ECA11C(a1, a2);
}

void sub_239EC9D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239EC9D70(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239EC9D90(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239EC9F20(a1);
}

unint64_t sub_239EC9DA8(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = v4 + ((v1 + v4 + (v1 + v4) * (v1 + v4)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

void sub_239EC9F08(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D158F0;
  sub_239ECA11C(a2, v2);
}

uint64_t *sub_239EC9F20(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239EC9F98(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 4 * *a1 - 4;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 4;
  }

  while (!v11);
  return result;
}

uint64_t sub_239ECA038(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239ECA0A0();
  }

  return *a1;
}

uint64_t sub_239ECA198(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_239F73E9C();
  }

  return sub_239ECA038(a1);
}

void sub_239ECA200(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239ECA4AC(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = 0;
            v13 = **a3;
            v14 = (8 * a2 - 8 * v3 - 8) >> 3;
            v15 = (v14 + 2) & 0x3FFFFFFFFFFFFFFELL;
            v16 = vdupq_n_s64(v14);
            v17 = &v7[v3 + 1];
            do
            {
              v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_239F9AD40)));
              if (v18.i8[0])
              {
                *(v17 - 1) = v13;
              }

              if (v18.i8[4])
              {
                *v17 = v13;
              }

              v12 += 2;
              v17 += 2;
            }

            while (v15 != v12);
          }

          v19 = v7;
LABEL_43:
          if (v19 != a1[4])
          {
            sub_239E56C80(a1);
            a1[4] = v19;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a1;
      }

      v27 = sub_239ECA4AC(a1, a2);
      v19 = v27;
      if (v3)
      {
        v28 = 8 * v26;
        v29 = v27;
        do
        {
          v30 = *v7++;
          *v29++ = v30;
          v28 -= 8;
        }

        while (v28);
      }

      if (v3 < a2)
      {
        v31 = 0;
        v32 = **a3;
        v33 = (8 * a2 - 8 * v3 - 8) >> 3;
        v34 = (v33 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v35 = vdupq_n_s64(v33);
        v36 = &v27[v3 + 1];
        do
        {
          v37 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v31), xmmword_239F9AD40)));
          if (v37.i8[0])
          {
            *(v36 - 1) = v32;
          }

          if (v37.i8[4])
          {
            *v36 = v32;
          }

          v31 += 2;
          v36 += 2;
        }

        while (v34 != v31);
      }

      goto LABEL_43;
    }

    if (8 * a2 / a2 == 8)
    {
      v20 = sub_239ECA4AC(a1, a2);
      v19 = v20;
      v21 = 0;
      v22 = **a3;
      v23 = (8 * a2 - 8) >> 3;
      v24 = vdupq_n_s64(v23);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v21), xmmword_239F9AD40)));
        if (v25.i8[0])
        {
          v20[v21] = v22;
        }

        if (v25.i8[4])
        {
          v20[v21 + 1] = v22;
        }

        v21 += 2;
      }

      while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v21);
      goto LABEL_43;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239ECA4AC(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(size_t) [T = double]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void sub_239ECA544(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F73F08();
    }
  }
}

void *sub_239ECA5B8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_239EC8B1C(v2, va);
}

uint64_t sub_239ECA5D0(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*result == v2)
  {
    v5 = 1.79769313e308;
    v3 = 1.79769313e308;
  }

  else
  {
    v3 = 1.79769313e308;
    v4 = 1.79769313e308;
    do
    {
      v5 = *v1;
      if (*v1 == 1.79769313e308)
      {
        goto LABEL_11;
      }

      if (v3 == 1.79769313e308)
      {
        v3 = *v1;
      }

      if (v4 == 1.79769313e308)
      {
        v4 = *v1;
      }

      if (v3 > v5)
      {
        v3 = *v1;
      }

      if (v4 >= v5)
      {
LABEL_11:
        v5 = v4;
      }

      v1 += 4;
      v4 = v5;
    }

    while (v1 != v2);
  }

  v6 = *(result + 24);
  v7 = *(result + 32);
  if (v6 == v7)
  {
    v8 = v5;
  }

  else
  {
    do
    {
      v8 = *v6;
      if (*v6 == 1.79769313e308)
      {
        goto LABEL_24;
      }

      if (v3 == 1.79769313e308)
      {
        v3 = *v6;
      }

      if (v5 == 1.79769313e308)
      {
        v5 = *v6;
      }

      if (v3 > v8)
      {
        v3 = *v6;
      }

      if (v5 >= v8)
      {
LABEL_24:
        v8 = v5;
      }

      v6 += 4;
      v5 = v8;
    }

    while (v6 != v7);
  }

  v9 = *(result + 48);
  v10 = *(result + 56);
  if (v9 == v10)
  {
    v11 = v8;
  }

  else
  {
    do
    {
      v11 = *v9;
      if (*v9 == 1.79769313e308)
      {
        goto LABEL_37;
      }

      if (v3 == 1.79769313e308)
      {
        v3 = *v9;
      }

      if (v8 == 1.79769313e308)
      {
        v8 = *v9;
      }

      if (v3 > v11)
      {
        v3 = *v9;
      }

      if (v8 >= v11)
      {
LABEL_37:
        v11 = v8;
      }

      v9 += 4;
      v8 = v11;
    }

    while (v9 != v10);
  }

  v12 = *(result + 72);
  v13 = *(result + 80);
  if (v12 == v13)
  {
    v14 = v11;
  }

  else
  {
    do
    {
      v14 = *v12;
      if (*v12 == 1.79769313e308)
      {
        goto LABEL_50;
      }

      if (v3 == 1.79769313e308)
      {
        v3 = *v12;
      }

      if (v11 == 1.79769313e308)
      {
        v11 = *v12;
      }

      if (v3 > v14)
      {
        v3 = *v12;
      }

      if (v11 >= v14)
      {
LABEL_50:
        v14 = v11;
      }

      v12 += 4;
      v11 = v14;
    }

    while (v12 != v13);
  }

  *(result + 96) = v3;
  *(result + 104) = v14;
  return result;
}

void sub_239ECA758(uint64_t a1, double a2)
{
  *(a1 + 120) = a2;
  sub_239ECA5D0(a1);
  v4 = sub_239ECAA64(a1, a2);
  v53 = 5;
  v52 = v5;
  v51 = v4;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  sub_239ECAB2C(&v51, &v47);
  v7 = v48;
  *(a1 + 256) = v47;
  *(a1 + 272) = v7;
  v8 = v50;
  *(a1 + 288) = v49;
  *(a1 + 304) = v8;
  v43 = *MEMORY[0x277D860B8];
  v44 = *(MEMORY[0x277D860B8] + 16);
  v45 = *(MEMORY[0x277D860B8] + 32);
  v46 = *(MEMORY[0x277D860B8] + 48);
  *v9.i64 = sub_239ECACEC(a1, a2);
  v9.i32[3] = v46.i32[3];
  v40 = v9;
  *v10.i64 = sub_239ECADB4(a1, a2);
  v11 = v44;
  v11.i32[0] = v10.i32[0];
  v41 = v10;
  v42 = v11;
  v12 = sub_239ECAE7C(a1, a2);
  v14 = v43;
  v15 = v44;
  v16 = v45;
  v17 = v46;
  v18 = 0;
  v19 = v44;
  v19.i32[1] = HIDWORD(v12);
  v20 = *(a1 + 272);
  v21 = *(a1 + 288);
  v22 = *(a1 + 304);
  v54 = *(a1 + 256);
  v55 = v20;
  v56 = v21;
  v57 = v22;
  memset(&v58, 0, sizeof(v58));
  do
  {
    v58.columns[v18 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v54 + v18 * 4))), v44, *&v54.f32[v18], 1), v45, *(&v54 + v18 * 4), 2), v40, *(&v54 + v18 * 4), 3);
    v18 += 4;
  }

  while (v18 != 16);
  v23 = 0;
  v24.i64[0] = vextq_s8(v41, v45, 4uLL).u64[0];
  v24.i64[1] = v45.i64[1];
  v25 = v43;
  v25.i32[0] = LODWORD(v12);
  v26 = v58.columns[0];
  v27 = v58.columns[1];
  v28 = v58.columns[2];
  v29 = v58.columns[3];
  v54 = v43;
  v55 = v42;
  v56 = v24;
  v57 = v46;
  memset(&v58, 0, sizeof(v58));
  do
  {
    v58.columns[v23 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v54 + v23 * 4))), v27, *&v54.f32[v23], 1), v28, *(&v54 + v23 * 4), 2), v29, *(&v54 + v23 * 4), 3);
    v23 += 4;
  }

  while (v23 != 16);
  v30 = 0;
  v31 = v45;
  v31.i32[2] = v13;
  v32 = v58.columns[0];
  v33 = v58.columns[1];
  v34 = v58.columns[2];
  v35 = v58.columns[3];
  v54 = v25;
  v55 = v19;
  v56 = v31;
  v57 = v46;
  memset(&v58, 0, sizeof(v58));
  do
  {
    v58.columns[v30 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&v54 + v30 * 4))), v33, *&v54.f32[v30], 1), v34, *(&v54 + v30 * 4), 2), v35, *(&v54 + v30 * 4), 3);
    v30 += 4;
  }

  while (v30 != 16);
  v36 = v58;
  *(a1 + 128) = v58.columns[0];
  *(a1 + 144) = v36.columns[1];
  *(a1 + 160) = v36.columns[2];
  *(a1 + 176) = v36.columns[3];
  v37 = vdupq_n_s32(0x38D1B717u);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v37, vabsq_f32(vsubq_f32(v36.columns[0], v43)))))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v37, vabsq_f32(vsubq_f32(v36.columns[1], v44)))))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(vdupq_n_s32(0x38D1B717u), vabsq_f32(vsubq_f32(v36.columns[2], v45)))))) & 1) != 0 || (v38 = vabdq_f32(v36.columns[3], v46), v39 = vmvn_s8(vcge_f32(vdup_n_s32(0x38D1B717u), *&vextq_s8(v38, v38, 4uLL))), (v39.i8[4]) || *v38.i32 > 0.0001 || (v39.i8[0])
  {
    *(a1 + 112) = 0;
  }

  else
  {
    *(a1 + 112) = *&v38.i32[3] <= 0.0001;
    if (*&v38.i32[3] <= 0.0001)
    {
      *(a1 + 128) = v43;
      *(a1 + 144) = v44;
      *(a1 + 160) = v45;
      *(a1 + 176) = v46;
      *(a1 + 192) = v43;
      *(a1 + 208) = v44;
      *(a1 + 224) = v45;
      *(a1 + 240) = v46;
      goto LABEL_12;
    }
  }

  *(a1 + 192) = __invert_f4(v36);
  v6 = (a1 + 256);
  *v14.f32 = vld4q_f32(v6);
LABEL_12:
  *(a1 + 320) = v14;
  *(a1 + 336) = v15;
  *(a1 + 352) = v16;
  *(a1 + 368) = v17;
}

double sub_239ECAA64(uint64_t a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v3 = *(a1 + 24);
    v4 = *v3;
    v2 = *(v3 + 2);
    if (*v3 + 2.22044605e-16 < a2)
    {
      v5 = *(a1 + 32);
      if (v3 != v5)
      {
        v6 = *v3 + 2.22044605e-16;
        if (v6 >= a2)
        {
LABEL_10:
          v9 = (a2 - v4) / (v6 - v4);
          v10 = 1.0 - v9;
          *&v9 = v9;
          v2.i64[0] = vmlaq_n_f32(vmulq_n_f32(v2, v10), *(v3 + 2), *&v9).u64[0];
          return *v2.i64;
        }

        v7 = v3 + 4;
        while (v7 != v5)
        {
          v4 = v6;
          v8 = *v7;
          v7 += 4;
          v6 = v8 + 2.22044605e-16;
          if (v8 + 2.22044605e-16 >= a2)
          {
            v2 = *(v7 - 6);
            v3 = v7 - 4;
            goto LABEL_10;
          }
        }
      }

      v2 = *(v5 - 2);
    }
  }

  else
  {
    v2 = *(*(a1 + 32) - 16);
  }

  return *v2.i64;
}

void sub_239ECAB2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  v4 = (v3 >> 3) & 3;
  v5 = v4 - 1;
  if (v4)
  {
    v6 = v4 - 1;
  }

  else
  {
    v6 = 2;
  }

  if (v4 < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = -2;
  }

  v8 = v7 + v4;
  if (!v4)
  {
    v5 = 2;
  }

  if ((v3 & 4) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if ((v3 & 4) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  v11 = 8;
  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 8;
  }

  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v13 = *(a1 + v12);
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 4);
  }

  else
  {
    v13 = -v13;
    v14 = -*(a1 + 4);
  }

  if ((v3 & 4) != 0)
  {
    v15 = *(a1 + v11);
  }

  else
  {
    v15 = -*(a1 + v11);
  }

  v16 = __sincosf_stret(v13);
  v17 = __sincosf_stret(v14);
  v18 = __sincosf_stret(v15);
  *a2 = 1065353216;
  *(a2 + 12) = 0;
  v19 = v16.__cosval * v18.__cosval;
  v20 = v16.__cosval * v18.__sinval;
  v21 = v16.__sinval * v18.__cosval;
  *(a2 + 4) = 0;
  v22 = v16.__sinval * v18.__sinval;
  *(a2 + 20) = 1065353216;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1065353216;
  *(a2 + 52) = 0;
  *(a2 + 44) = 0;
  *(a2 + 60) = 1065353216;
  v23 = a2 + 16 * v4;
  if ((v3 & 2) != 0)
  {
    *(v23 + 4 * v4) = v17.__cosval;
    v27 = a2 + 16 * v9;
    *(v27 + 4 * v4) = v16.__sinval * v17.__sinval;
    v25 = a2 + 16 * v10;
    *(v25 + 4 * v4) = v16.__cosval * v17.__sinval;
    *(v23 + 4 * v9) = v17.__sinval * v18.__sinval;
    *(v27 + 4 * v9) = v19 - (v22 * v17.__cosval);
    *(v25 + 4 * v9) = -(v21 + (v20 * v17.__cosval));
    *(v23 + 4 * v10) = -(v18.__cosval * v17.__sinval);
    *(v27 + 4 * v10) = v20 + (v21 * v17.__cosval);
    v26 = -(v22 - (v19 * v17.__cosval));
  }

  else
  {
    *(v23 + 4 * v4) = v17.__cosval * v18.__cosval;
    v24 = a2 + 16 * v9;
    *(v24 + 4 * v4) = -(v20 - (v21 * v17.__sinval));
    v25 = a2 + 16 * v10;
    *(v25 + 4 * v4) = v22 + (v19 * v17.__sinval);
    *(v23 + 4 * v9) = v17.__cosval * v18.__sinval;
    *(v24 + 4 * v9) = v19 + (v22 * v17.__sinval);
    *(v25 + 4 * v9) = -(v21 - (v20 * v17.__sinval));
    *(v23 + 4 * v10) = -v17.__sinval;
    *(v24 + 4 * v10) = v16.__sinval * v17.__cosval;
    v26 = v16.__cosval * v17.__cosval;
  }

  *(v25 + 4 * v10) = v26;
}

double sub_239ECACEC(float32x4_t **a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v3 = *a1;
    v4 = *(*a1)->i64;
    v2 = (*a1)[1];
    if (v4 + 2.22044605e-16 < a2)
    {
      v5 = a1[1];
      if (v3 != v5)
      {
        v6 = *v3 + 2.22044605e-16;
        if (v6 >= a2)
        {
LABEL_10:
          v9 = (a2 - v4) / (v6 - v4);
          v10 = 1.0 - v9;
          *&v9 = v9;
          v2.i64[0] = vmlaq_n_f32(vmulq_n_f32(v2, v10), *(v3 + 2), *&v9).u64[0];
          return *v2.i64;
        }

        v7 = v3 + 4;
        while (v7 != v5)
        {
          v4 = v6;
          v8 = *v7;
          v7 += 4;
          v6 = v8 + 2.22044605e-16;
          if (v8 + 2.22044605e-16 >= a2)
          {
            v2 = *(v7 - 6);
            v3 = v7 - 4;
            goto LABEL_10;
          }
        }
      }

      v2 = v5[-1];
    }
  }

  else
  {
    v2 = a1[1][-1];
  }

  return *v2.i64;
}

double sub_239ECADB4(uint64_t a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v3 = *(a1 + 48);
    v4 = *v3;
    v2 = *(v3 + 2);
    if (*v3 + 2.22044605e-16 < a2)
    {
      v5 = *(a1 + 56);
      if (v3 != v5)
      {
        v6 = *v3 + 2.22044605e-16;
        if (v6 >= a2)
        {
LABEL_10:
          v9 = (a2 - v4) / (v6 - v4);
          v10 = 1.0 - v9;
          *&v9 = v9;
          v2.i64[0] = vmlaq_n_f32(vmulq_n_f32(v2, v10), *(v3 + 2), *&v9).u64[0];
          return *v2.i64;
        }

        v7 = v3 + 4;
        while (v7 != v5)
        {
          v4 = v6;
          v8 = *v7;
          v7 += 4;
          v6 = v8 + 2.22044605e-16;
          if (v8 + 2.22044605e-16 >= a2)
          {
            v2 = *(v7 - 6);
            v3 = v7 - 4;
            goto LABEL_10;
          }
        }
      }

      v2 = *(v5 - 2);
    }
  }

  else
  {
    v2 = *(*(a1 + 56) - 16);
  }

  return *v2.i64;
}

double sub_239ECAE7C(uint64_t a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v3 = *(a1 + 72);
    v4 = *v3;
    v2 = *(v3 + 2);
    if (*v3 + 2.22044605e-16 < a2)
    {
      v5 = *(a1 + 80);
      if (v3 != v5)
      {
        v6 = *v3 + 2.22044605e-16;
        if (v6 >= a2)
        {
LABEL_10:
          v9 = (a2 - v4) / (v6 - v4);
          v10 = 1.0 - v9;
          *&v9 = v9;
          v2.i64[0] = vmlaq_n_f32(vmulq_n_f32(v2, v10), *(v3 + 2), *&v9).u64[0];
          return *v2.i64;
        }

        v7 = v3 + 4;
        while (v7 != v5)
        {
          v4 = v6;
          v8 = *v7;
          v7 += 4;
          v6 = v8 + 2.22044605e-16;
          if (v8 + 2.22044605e-16 >= a2)
          {
            v2 = *(v7 - 6);
            v3 = v7 - 4;
            goto LABEL_10;
          }
        }
      }

      v2 = *(v5 - 2);
    }
  }

  else
  {
    v2 = *(*(a1 + 80) - 16);
  }

  return *v2.i64;
}

void sub_239ECAF50(uint64_t a1, double a2)
{
  v4 = sub_239ECAA64(a1, a2);
  v53 = 5;
  v52 = v5;
  v51 = v4;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  sub_239ECAB2C(&v51, &v47);
  v7 = v48;
  *(a1 + 256) = v47;
  *(a1 + 272) = v7;
  v8 = v50;
  *(a1 + 288) = v49;
  *(a1 + 304) = v8;
  v43 = *MEMORY[0x277D860B8];
  v44 = *(MEMORY[0x277D860B8] + 16);
  v45 = *(MEMORY[0x277D860B8] + 32);
  v46 = *(MEMORY[0x277D860B8] + 48);
  *v9.i64 = sub_239ECACEC(a1, a2);
  v9.i32[3] = v46.i32[3];
  v40 = v9;
  *v10.i64 = sub_239ECADB4(a1, a2);
  v11 = v44;
  v11.i32[0] = v10.i32[0];
  v41 = v10;
  v42 = v11;
  v12 = sub_239ECAE7C(a1, a2);
  v14 = v43;
  v15 = v44;
  v16 = v45;
  v17 = v46;
  v18 = 0;
  v19 = v44;
  v19.i32[1] = HIDWORD(v12);
  v20 = *(a1 + 272);
  v21 = *(a1 + 288);
  v22 = *(a1 + 304);
  v54 = *(a1 + 256);
  v55 = v20;
  v56 = v21;
  v57 = v22;
  memset(&v58, 0, sizeof(v58));
  do
  {
    v58.columns[v18 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v54 + v18 * 4))), v44, *&v54.f32[v18], 1), v45, *(&v54 + v18 * 4), 2), v40, *(&v54 + v18 * 4), 3);
    v18 += 4;
  }

  while (v18 != 16);
  v23 = 0;
  v24.i64[0] = vextq_s8(v41, v45, 4uLL).u64[0];
  v24.i64[1] = v45.i64[1];
  v25 = v43;
  v25.i32[0] = LODWORD(v12);
  v26 = v58.columns[0];
  v27 = v58.columns[1];
  v28 = v58.columns[2];
  v29 = v58.columns[3];
  v54 = v43;
  v55 = v42;
  v56 = v24;
  v57 = v46;
  memset(&v58, 0, sizeof(v58));
  do
  {
    v58.columns[v23 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v54 + v23 * 4))), v27, *&v54.f32[v23], 1), v28, *(&v54 + v23 * 4), 2), v29, *(&v54 + v23 * 4), 3);
    v23 += 4;
  }

  while (v23 != 16);
  v30 = 0;
  v31 = v45;
  v31.i32[2] = v13;
  v32 = v58.columns[0];
  v33 = v58.columns[1];
  v34 = v58.columns[2];
  v35 = v58.columns[3];
  v54 = v25;
  v55 = v19;
  v56 = v31;
  v57 = v46;
  memset(&v58, 0, sizeof(v58));
  do
  {
    v58.columns[v30 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&v54 + v30 * 4))), v33, *&v54.f32[v30], 1), v34, *(&v54 + v30 * 4), 2), v35, *(&v54 + v30 * 4), 3);
    v30 += 4;
  }

  while (v30 != 16);
  v36 = v58;
  *(a1 + 128) = v58.columns[0];
  *(a1 + 144) = v36.columns[1];
  *(a1 + 160) = v36.columns[2];
  *(a1 + 176) = v36.columns[3];
  v37 = vdupq_n_s32(0x38D1B717u);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v37, vabsq_f32(vsubq_f32(v36.columns[0], v43)))))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v37, vabsq_f32(vsubq_f32(v36.columns[1], v44)))))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(vdupq_n_s32(0x38D1B717u), vabsq_f32(vsubq_f32(v36.columns[2], v45)))))) & 1) != 0 || (v38 = vabdq_f32(v36.columns[3], v46), v39 = vmvn_s8(vcge_f32(vdup_n_s32(0x38D1B717u), *&vextq_s8(v38, v38, 4uLL))), (v39.i8[4]) || *v38.i32 > 0.0001 || (v39.i8[0])
  {
    *(a1 + 112) = 0;
  }

  else
  {
    *(a1 + 112) = *&v38.i32[3] <= 0.0001;
    if (*&v38.i32[3] <= 0.0001)
    {
      *(a1 + 128) = v43;
      *(a1 + 144) = v44;
      *(a1 + 160) = v45;
      *(a1 + 176) = v46;
      *(a1 + 192) = v43;
      *(a1 + 208) = v44;
      *(a1 + 224) = v45;
      *(a1 + 240) = v46;
      goto LABEL_12;
    }
  }

  *(a1 + 192) = __invert_f4(v36);
  v6 = (a1 + 256);
  *v14.f32 = vld4q_f32(v6);
LABEL_12:
  *(a1 + 320) = v14;
  *(a1 + 336) = v15;
  *(a1 + 352) = v16;
  *(a1 + 368) = v17;
}

__n128 sub_239ECB24C(int64x2_t *a1, _OWORD *a2)
{
  v3 = a2[1];
  *v15 = *a2;
  *&v15[16] = v3;
  v4 = a2[3];
  *v16 = a2[2];
  *&v16[16] = v4;
  if (!sub_239ECB380(a2))
  {
    *v15 = 1065353216;
    *&v15[12] = 0;
    *&v15[4] = 0;
    *&v15[20] = 1065353216;
    *&v15[24] = 0;
    *v16 = 0;
    *&v16[8] = 1065353216;
    *&v16[20] = 0;
    *&v16[12] = 0;
    *&v16[28] = 1065353216;
  }

  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  sub_239ECC23C(v15, &v13, &v11, &v9, &v7, 1, 0x101u);
  sub_239E682E4(a1);
  *&v5 = v7;
  DWORD2(v5) = v8;
  *(a1->i64[0] + 16) = v5;
  *&v5 = v9;
  DWORD2(v5) = v10;
  *(a1[1].i64[1] + 16) = v5;
  *&v5 = v11;
  DWORD2(v5) = v12;
  *(a1[3].i64[0] + 16) = v5;
  *&v5 = v13;
  DWORD2(v5) = v14;
  *(a1[4].i64[1] + 16) = v5;
  sub_239ECA758(a1, 1.79769313e308);
  return result;
}

BOOL sub_239ECB380(uint64_t a1)
{
  v1.columns[0] = *a1;
  if (fabsf(COERCE_FLOAT(HIDWORD(*a1))) > 0.00000001)
  {
    return 0;
  }

  if (fabsf(COERCE_FLOAT(HIDWORD(*(a1 + 16)))) > 0.00000001)
  {
    return 0;
  }

  v1.columns[2] = *(a1 + 32);
  if (fabsf(v1.columns[2].f32[3]) > 0.00000001)
  {
    return 0;
  }

  v1.columns[3] = *(a1 + 48);
  if (fabsf(v1.columns[3].f32[3] + -1.0) > 0.00000001)
  {
    return 0;
  }

  v3 = vextq_s8(v1.columns[2], v1.columns[2], 8uLL);
  v4 = vextq_s8(v1.columns[3], v1.columns[3], 0xCuLL);
  v5 = vextq_s8(v1.columns[2], v1.columns[2], 0xCuLL);
  v6 = vextq_s8(v1.columns[3], v1.columns[3], 8uLL);
  v7 = vextq_s8(v1.columns[3], v1.columns[3], 4uLL);
  v8 = vextq_s8(v1.columns[2], v1.columns[2], 4uLL);
  v2 = *(a1 + 16);
  v9 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vmlaq_f32(vnegq_f32(vmulq_f32(v4, v8)), v5, v7), vextq_s8(v2, v2, 8uLL)), vextq_s8(v2, v2, 4uLL), vmlaq_f32(vnegq_f32(vmulq_f32(v6, v5)), v3, v4)), vextq_s8(v2, v2, 0xCuLL), vmlaq_f32(vnegq_f32(vmulq_f32(v7, v3)), v8, v6)), v1.columns[0]);
  v6.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
  if (fabsf(vaddv_f32(vsub_f32(vzip1_s32(*v9.i8, *v6.f32), vzip2_s32(*v9.i8, *v6.f32)))) <= 0.00000001)
  {
    return 0;
  }

  v1.columns[1] = *(a1 + 16);
  v24 = *(a1 + 48);
  v25 = *a1;
  v26 = v1.columns[1];
  v27 = *(a1 + 32);
  v32 = __invert_f4(v1);
  v28 = v32.columns[0];
  v29 = v32.columns[1];
  v30 = v32.columns[2];
  v23 = v32.columns[3];
  v32.columns[0] = v25;
  v32.columns[1] = v26;
  v32.columns[0].i32[3] = 0;
  v32.columns[1].i32[3] = 0;
  v32.columns[2] = v27;
  v32.columns[2].i32[3] = 0;
  v31 = __invert_f3(*v32.columns[0].f32);
  v10 = vdupq_n_s32(0x3A83126Fu);
  v11 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(v28, v31.columns[0])), vcgeq_f32(v10, vabdq_f32(v29, v31.columns[1]))), vcgeq_f32(v10, vabdq_f32(v30, v31.columns[2])));
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) == 0)
  {
    return 0;
  }

  v13 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31.columns[0], v24.f32[0]), v31.columns[1], *v24.f32, 1), v31.columns[2], v24, 2));
  v14 = vabds_f32(v23.f32[0], v13.f32[0]);
  if (v14 > 0.001)
  {
    v15 = fabsf(v23.f32[0]);
    v16 = fabsf(v13.f32[0]);
    if (v16 > v15)
    {
      v15 = v16;
    }

    if (v14 > (v15 * 0.000001))
    {
      return 0;
    }
  }

  v17 = vabds_f32(v23.f32[1], v13.f32[1]);
  if (v17 > 0.001)
  {
    v18 = fabsf(v23.f32[1]);
    v19 = fabsf(v13.f32[1]);
    if (v19 > v18)
    {
      v18 = v19;
    }

    if (v17 > (v18 * 0.000001))
    {
      return 0;
    }
  }

  v20 = vabds_f32(v23.f32[2], v13.f32[2]);
  if (v20 <= 0.001)
  {
    return 1;
  }

  v21 = fabsf(v23.f32[2]);
  v22 = fabsf(v13.f32[2]);
  if (v22 > v21)
  {
    v21 = v22;
  }

  return v20 <= (v21 * 0.000001);
}

void sub_239ECB5B8(void *a1, _OWORD *a2, double a3)
{
  v5 = a2[1];
  *v19 = *a2;
  *&v19[16] = v5;
  v6 = a2[3];
  *v20 = a2[2];
  *&v20[16] = v6;
  if (!sub_239ECB380(a2))
  {
    *v19 = 1065353216;
    *&v19[12] = 0;
    *&v19[4] = 0;
    *&v19[20] = 1065353216;
    *&v19[24] = 0;
    *v20 = 0;
    *&v20[8] = 1065353216;
    *&v20[20] = 0;
    *&v20[12] = 0;
    *&v20[28] = 1065353216;
  }

  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  sub_239ECC23C(v19, &v17, &v15, &v13, &v11, 1, 0x101u);
  v7.n128_u64[0] = v11;
  v7.n128_u32[2] = v12;
  sub_239ECB6FC(a1, v7, a3);
  v8.n128_u64[0] = v13;
  v8.n128_u32[2] = v14;
  sub_239ECB880(a1, v8, a3);
  v9.n128_u64[0] = v15;
  v9.n128_u32[2] = v16;
  sub_239ECB9FC(a1, v9, a3);
  v10.n128_u64[0] = v17;
  v10.n128_u32[2] = v18;
  sub_239ECBB78(a1, v10, a3);
  sub_239ECA758(a1, a3);
}

void sub_239ECB6FC(uint64_t a1, __n128 a2, double a3)
{
  v5 = *a1;
  if (a3 != 1.79769313e308 && **a1 == 1.79769313e308)
  {
    *(a1 + 8) = v5;
    v7 = v5;
    goto LABEL_12;
  }

  v7 = *(a1 + 8);
  if (v5 == v7)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if (v7 >= v10)
    {
      v12 = (v7 - v5) >> 5;
      v13 = v12 + 1;
      if ((v12 + 1) >> 59)
      {
        sub_239E797B4();
      }

      v14 = v10 - v5;
      if (v14 >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_239E6861C(a1, v15);
      }

      v16 = (32 * v12);
      v16->n128_f64[0] = a3;
      v16[1] = a2;
      v11 = 32 * v12 + 32;
      v17 = *(a1 + 8) - *a1;
      v18 = 32 * v12 - v17;
      memcpy(v16 - v17, *a1, v17);
      v19 = *a1;
      *a1 = v18;
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v7->n128_f64[0] = a3;
      v7[1] = a2;
      v11 = &v7[2];
    }

    *(a1 + 8) = v11;
    goto LABEL_25;
  }

  v8 = *a1;
  v9 = *a1;
  while (1)
  {
    if (vabdd_f64(v9->n128_f64[0], a3) < 2.22044605e-16)
    {
      v9[1] = a2;
      goto LABEL_25;
    }

    if (v9->n128_f64[0] > a3)
    {
      break;
    }

    v9 += 2;
    v8 += 32;
    if (v9 == v7)
    {
      goto LABEL_12;
    }
  }

  *v20 = a3;
  v20[1] = a2;
  sub_239ECBF4C(a1, v8, v20);
LABEL_25:
  sub_239ECA758(a1, a3);
}

void sub_239ECB880(void *a1, __n128 a2, double a3)
{
  v7 = a1[3];
  v5 = (a1 + 3);
  v6 = v7;
  v8 = *v7;
  if (a3 != 1.79769313e308 && v8 == 1.79769313e308)
  {
    a1[4] = v6;
    v10 = v6;
    goto LABEL_12;
  }

  v10 = a1[4];
  if (v6 == v10)
  {
LABEL_12:
    v13 = a1[5];
    if (v10 >= v13)
    {
      v15 = (v10 - v6) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        sub_239E797B4();
      }

      v17 = v13 - v6;
      if (v17 >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_239E6861C(v5, v18);
      }

      v19 = (32 * v15);
      v19->n128_f64[0] = a3;
      v19[1] = a2;
      v14 = 32 * v15 + 32;
      v20 = a1[3];
      v21 = a1[4] - v20;
      v22 = 32 * v15 - v21;
      memcpy(v19 - v21, v20, v21);
      v23 = a1[3];
      a1[3] = v22;
      a1[4] = v14;
      a1[5] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      v10->n128_f64[0] = a3;
      v10[1] = a2;
      v14 = &v10[2];
    }

    a1[4] = v14;
    goto LABEL_25;
  }

  v11 = v6;
  v12 = v6;
  while (1)
  {
    if (vabdd_f64(v12->n128_f64[0], a3) < 2.22044605e-16)
    {
      v12[1] = a2;
      goto LABEL_25;
    }

    if (v12->n128_f64[0] > a3)
    {
      break;
    }

    v12 += 2;
    v11 += 32;
    if (v12 == v10)
    {
      goto LABEL_12;
    }
  }

  *v24 = a3;
  v24[1] = a2;
  sub_239ECBF4C(v5, v11, v24);
LABEL_25:
  sub_239ECA758(a1, a3);
}

void sub_239ECB9FC(void *a1, __n128 a2, double a3)
{
  v7 = a1[6];
  v5 = (a1 + 6);
  v6 = v7;
  v8 = *v7;
  if (a3 != 1.79769313e308 && v8 == 1.79769313e308)
  {
    a1[7] = v6;
    v10 = v6;
    goto LABEL_12;
  }

  v10 = a1[7];
  if (v6 == v10)
  {
LABEL_12:
    v13 = a1[8];
    if (v10 >= v13)
    {
      v15 = (v10 - v6) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        sub_239E797B4();
      }

      v17 = v13 - v6;
      if (v17 >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_239E6861C(v5, v18);
      }

      v19 = (32 * v15);
      v19->n128_f64[0] = a3;
      v19[1] = a2;
      v14 = 32 * v15 + 32;
      v20 = a1[6];
      v21 = a1[7] - v20;
      v22 = 32 * v15 - v21;
      memcpy(v19 - v21, v20, v21);
      v23 = a1[6];
      a1[6] = v22;
      a1[7] = v14;
      a1[8] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      v10->n128_f64[0] = a3;
      v10[1] = a2;
      v14 = &v10[2];
    }

    a1[7] = v14;
    goto LABEL_25;
  }

  v11 = v6;
  v12 = v6;
  while (1)
  {
    if (vabdd_f64(v12->n128_f64[0], a3) < 2.22044605e-16)
    {
      v12[1] = a2;
      goto LABEL_25;
    }

    if (v12->n128_f64[0] > a3)
    {
      break;
    }

    v12 += 2;
    v11 += 32;
    if (v12 == v10)
    {
      goto LABEL_12;
    }
  }

  *v24 = a3;
  v24[1] = a2;
  sub_239ECBF4C(v5, v11, v24);
LABEL_25:
  sub_239ECA758(a1, a3);
}

void sub_239ECBB78(void *a1, __n128 a2, double a3)
{
  v7 = a1[9];
  v5 = (a1 + 9);
  v6 = v7;
  v8 = *v7;
  if (a3 != 1.79769313e308 && v8 == 1.79769313e308)
  {
    a1[10] = v6;
    v10 = v6;
    goto LABEL_12;
  }

  v10 = a1[10];
  if (v6 == v10)
  {
LABEL_12:
    v13 = a1[11];
    if (v10 >= v13)
    {
      v15 = (v10 - v6) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        sub_239E797B4();
      }

      v17 = v13 - v6;
      if (v17 >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_239E6861C(v5, v18);
      }

      v19 = (32 * v15);
      v19->n128_f64[0] = a3;
      v19[1] = a2;
      v14 = 32 * v15 + 32;
      v20 = a1[9];
      v21 = a1[10] - v20;
      v22 = 32 * v15 - v21;
      memcpy(v19 - v21, v20, v21);
      v23 = a1[9];
      a1[9] = v22;
      a1[10] = v14;
      a1[11] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      v10->n128_f64[0] = a3;
      v10[1] = a2;
      v14 = &v10[2];
    }

    a1[10] = v14;
    goto LABEL_25;
  }

  v11 = v6;
  v12 = v6;
  while (1)
  {
    if (vabdd_f64(v12->n128_f64[0], a3) < 2.22044605e-16)
    {
      v12[1] = a2;
      goto LABEL_25;
    }

    if (v12->n128_f64[0] > a3)
    {
      break;
    }

    v12 += 2;
    v11 += 32;
    if (v12 == v10)
    {
      goto LABEL_12;
    }
  }

  *v24 = a3;
  v24[1] = a2;
  sub_239ECBF4C(v5, v11, v24);
LABEL_25:
  sub_239ECA758(a1, a3);
}

void sub_239ECBCF4(__int128 **a1, void *a2)
{
  v33 = 0;
  v34 = 0;
  v32 = &v33;
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v6 = v4[1];
    v30 = *v4;
    v31 = v6;
    sub_239ECD040(&v32, &v30, &v30);
    v4 += 2;
  }

  v7 = a1[3];
  v8 = a1[4];
  while (v7 != v8)
  {
    v9 = v7[1];
    v30 = *v7;
    v31 = v9;
    sub_239ECD040(&v32, &v30, &v30);
    v7 += 2;
  }

  v10 = a1[6];
  v11 = a1[7];
  while (v10 != v11)
  {
    v12 = v10[1];
    v30 = *v10;
    v31 = v12;
    sub_239ECD040(&v32, &v30, &v30);
    v10 += 2;
  }

  v14 = a1[9];
  v13 = a1[10];
  while (v14 != v13)
  {
    v15 = v14[1];
    v30 = *v14;
    v31 = v15;
    sub_239ECD040(&v32, &v30, &v30);
    v14 += 2;
  }

  a2[1] = *a2;
  sub_239EA7E00(a2, v34);
  v16 = v32;
  if (v32 != &v33)
  {
    v17 = a2[1];
    do
    {
      v18 = v16[4];
      v19 = a2[2];
      if (v17 >= v19)
      {
        v20 = *a2;
        v21 = v17 - *a2;
        v22 = v21 >> 3;
        v23 = (v21 >> 3) + 1;
        if (v23 >> 61)
        {
          sub_239E797B4();
        }

        v24 = v19 - v20;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          sub_239E95BB4(a2, v25);
        }

        *(8 * v22) = v18;
        v17 = (8 * v22 + 8);
        memcpy(0, v20, v21);
        v26 = *a2;
        *a2 = 0;
        a2[1] = v17;
        a2[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17++ = v18;
      }

      a2[1] = v17;
      v27 = v16[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v16[2];
          v29 = *v28 == v16;
          v16 = v28;
        }

        while (!v29);
      }

      v16 = v28;
    }

    while (v28 != &v33);
  }

  sub_239E79AAC(&v32, v33);
}

char *sub_239ECBF4C(char **a1, char *a2, _OWORD *a3)
{
  v3 = a2;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v11 = *a1;
    v12 = ((v5 - *a1) >> 5) + 1;
    if (v12 >> 59)
    {
      sub_239E797B4();
    }

    v13 = a2 - v11;
    v14 = v6 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v29 = a1;
    if (v15)
    {
      sub_239E6861C(a1, v15);
    }

    v26 = 0;
    v27 = 32 * v16;
    v28 = (32 * v16);
    sub_239ECC128(&v26, a3);
    v18 = v27;
    memcpy(v28, v3, a1[1] - v3);
    v19 = *a1;
    v20 = v27;
    *&v28 = v28 + a1[1] - v3;
    a1[1] = v3;
    v21 = v3 - v19;
    v22 = (v20 - (v3 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (a2 == v5)
  {
    v17 = a3[1];
    *v5 = *a3;
    *(v5 + 1) = v17;
    a1[1] = v5 + 32;
  }

  else
  {
    v7 = a1[1];
    if (v5 >= 0x20)
    {
      v7 = v5 + 32;
      v8 = *(v5 - 1);
      *v5 = *(v5 - 2);
      *(v5 + 1) = v8;
    }

    a1[1] = v7;
    if (v5 != a2 + 32)
    {
      v9 = 0;
      do
      {
        v10 = &v9[v5];
        *(v10 - 4) = *&v9[v5 - 64];
        *(v10 - 1) = *&v9[v5 - 48];
        v9 -= 32;
      }

      while ((a2 - v5 + 32) != v9);
    }

    *a2 = *a3;
    *(a2 + 1) = a3[1];
  }

  return v3;
}

void sub_239ECC0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_239ECC128(unint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v7 = v2 - *a1;
      v6 = v7 == 0;
      v8 = v7 >> 4;
      if (v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      sub_239E6861C(a1[4], v9);
    }

    v5 = ((v4 - *a1) >> 5) + 1;
    v3 = v4 - 32 * (v5 / 2);
    if (v4 != v2)
    {
      do
      {
        *v3 = *v4;
        *(v3 + 16) = *(v4 + 16);
        v4 += 32;
        v3 += 32;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = v4 + 32 * (v5 / -2);
    a1[2] = v3;
  }

  result = *a2;
  v11 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v11;
  a1[2] += 32;
  return result;
}

BOOL sub_239ECC23C(uint64_t a1, float32x2_t *a2, float *a3, float *a4, _DWORD *a5, uint64_t a6, unsigned int a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v11;
  v12 = *(a1 + 48);
  v32[2] = *(a1 + 32);
  v32[3] = v12;
  v13 = sub_239ECC3F0(v32, a2, a3, a6);
  if (v13)
  {
    sub_239F73F78(v32, a4, v14);
    *a5 = *(a1 + 48);
    a5[1] = *(a1 + 52);
    a5[2] = *(a1 + 56);
    if (a7 != 257)
    {
      v31 = 5;
      v29 = *a4;
      v30 = *(a4 + 2);
      v27 = 0;
      v28 = 0;
      v16 = (a7 >> 9) & 8;
      if ((a7 & 0x2000) != 0)
      {
        LOBYTE(v16) = 16;
      }

      BYTE4(v28) = a7 & 1 | (4 * (BYTE1(a7) & 1)) | (a7 >> 3) & 2 | v16;
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      sub_239ECC96C(&v29, v33);
      sub_239ECCB20(&v27, v33);
      v17 = BYTE4(v28);
      v18 = (BYTE4(v28) >> 3) & 3;
      v19 = v18 != 0;
      v20 = v18 - 1;
      if (v20 != 0 && v19)
      {
        v21 = -2;
      }

      else
      {
        v21 = 1;
      }

      v22 = (BYTE4(v28) >> 3) & 3;
      DWORD2(v33[0]) = 0;
      *&v33[0] = 0;
      if (!v22)
      {
        LOBYTE(v20) = 2;
      }

      if ((v28 & 0x400000000) != 0)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      *(v33 + (v21 + v22)) = v23;
      if ((v17 & 4) != 0)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      *(v33 + v20) = v24;
      v25 = *(&v27 + SDWORD1(v33[0]));
      v26 = *(&v27 + SDWORD2(v33[0]));
      *a4 = *(&v27 + SLODWORD(v33[0]));
      *(a4 + 1) = v25;
      *(a4 + 2) = v26;
    }
  }

  return v13;
}

BOOL sub_239ECC3F0(uint64_t *a1, float32x2_t *a2, float *a3, uint64_t a4)
{
  v4 = a4;
  v8 = 0;
  v73 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = *(a1 + 20);
  *&v12 = *a1;
  *(&v12 + 2) = v10;
  HIDWORD(v12) = *(a1 + 4);
  *(&v11 + 1) = a1[4];
  v13 = *(a1 + 10);
  *v71 = v12;
  *&v71[16] = v11;
  v72 = v13;
  v14 = 0.0;
  v15 = v71;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      v17 = *&v15[i];
      if (v17 <= 0.0)
      {
        v17 = -v17;
      }

      if (v17 > v14)
      {
        v14 = v17;
      }
    }

    ++v8;
    v15 += 12;
  }

  while (v8 != 3);
  v70 = v14;
  if (v14 == 0.0)
  {
    v22 = *(&v9 + 1);
LABEL_15:
    v23 = ((*&v9 * *&v9) + (v22 * v22)) + (v10 * v10);
    if (v23 < 2.351e-38)
    {
      LODWORD(v24) = sub_239F74208(v71).u32[0];
    }

    else
    {
      v24 = sqrtf(v23);
    }

    a2->f32[0] = v24;
    result = sub_239ECC7D4(a2, v71, v4);
    if (result)
    {
      v25.i32[0] = a2->i32[0];
      _D1 = vdiv_f32(*v71, vdup_lane_s32(v25, 0));
      *v71 = _D1;
      v27 = *&v71[12];
      v28 = *&v71[8] / *v25.i32;
      _KR08_8 = *&v71[16];
      __asm { FMLA            S2, S4, V1.S[1] }

      _S2 = _S2 + (*&v71[20] * v28);
      *a3 = _S2;
      *&v71[8] = v28;
      *&v71[12] = v27 - (_D1.f32[0] * _S2);
      __asm { FMLS            S4, S2, V1.S[1] }

      *&v71[16] = _S4;
      *&v71[20] = *(&_KR08_8 + 1) - (_S2 * v28);
      *v25.i32 = ((*&v71[12] * *&v71[12]) + (_S4 * _S4)) + (*&v71[20] * *&v71[20]);
      if (*v25.i32 < 2.351e-38)
      {
        LODWORD(v37) = sub_239F74208((v71 | 0xC)).u32[0];
      }

      else
      {
        v37 = sqrtf(*v25.i32);
      }

      a2->f32[1] = v37;
      result = sub_239ECC7D4(a2 + 1, v71 | 0xC, v4);
      if (result)
      {
        v38.i32[0] = a2->i32[1];
        _D1 = vdiv_f32(*&v71[12], vdup_lane_s32(v38, 0));
        *&v71[12] = _D1;
        v40 = *&v71[24];
        v41 = *&v71[20] / *v38.i32;
        v42 = *v71;
        v43 = *&v71[28];
        v44 = v72;
        v45 = *&v71[8];
        v46 = ((*&v71[24] * *v71) + (*&v71[28] * *&v71[4])) + (v72 * *&v71[8]);
        *a3 = *a3 / *v38.i32;
        a3[1] = v46;
        v47 = v40 - (v46 * *&v42);
        _S3 = v43 - (v46 * *(&v42 + 1));
        v49 = v44 - (v46 * v45);
        __asm { FMLA            S5, S3, V1.S[1] }

        _S5 = _S5 + (v49 * v41);
        a3[2] = _S5;
        *&v71[20] = v41;
        *&v71[24] = v47 - (_D1.f32[0] * _S5);
        __asm { FMLS            S3, S5, V1.S[1] }

        *&v71[28] = _S3;
        v72 = v49 - (_S5 * v41);
        v53 = ((*&v71[24] * *&v71[24]) + (_S3 * _S3)) + (v72 * v72);
        if (v53 < 2.351e-38)
        {
          LODWORD(v54) = sub_239F74208(&v71[24]).u32[0];
        }

        else
        {
          v54 = sqrtf(v53);
        }

        a2[1].f32[0] = v54;
        v55 = a2 + 1;
        result = sub_239ECC7D4(&a2[1], &v71[24], v4);
        if (result)
        {
          v56.i32[0] = v55->i32[0];
          v57 = vdiv_f32(*&v71[24], vdup_lane_s32(v56, 0));
          *&v71[24] = v57;
          v72 = v72 / *v56.i32;
          v58.f32[0] = v72;
          v59 = a3[2];
          a3[1] = a3[1] / *v56.i32;
          a3[2] = v59 / v55->f32[0];
          v56.i32[0] = *&v71[20];
          v60 = vdup_lane_s32(v57, 0);
          v60.i32[0] = v58.i32[0];
          v58.i32[1] = *&v71[20];
          v61 = vmul_f32(vzip2_s32(*&v71[12], v57), v58);
          v62 = vmul_f32(vmla_f32(vneg_f32(vmul_f32(*&v71[12], v60)), v57, vzip1_s32(v56, *&v71[12])), *&v71[4]);
          if (((v62.f32[0] + (vsub_f32(v61, vdup_lane_s32(v61, 1)).f32[0] * *v71)) + v62.f32[1]) < 0.0)
          {
            v63 = 0;
            v64 = &v71[8];
            do
            {
              a2->f32[v63] = -a2->f32[v63];
              *(v64 - 1) = vneg_f32(*(v64 - 2));
              *v64 = -*v64;
              v64 += 3;
              ++v63;
            }

            while (v63 != 3);
          }

          v65 = &v71[8];
          v66 = a1 + 1;
          v67 = 3;
          do
          {
            *(v66 - 1) = *(v65 - 1);
            v68 = *v65;
            v65 += 3;
            *v66 = v68;
            v66 += 2;
            --v67;
          }

          while (v67);
          v69 = v70;
          *a2 = vmul_n_f32(*a2, v70);
          a2[1].f32[0] = a2[1].f32[0] * v69;
          return 1;
        }
      }
    }
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = &v71[v18];
      result = sub_239ECC7D4(&v70, &v71[v18], v4);
      if (!result)
      {
        break;
      }

      *v21.i32 = v70;
      *v19 = vdiv_f32(*v19, vdup_lane_s32(v21, 0));
      v19[1].f32[0] = v19[1].f32[0] / *v21.i32;
      v18 += 12;
      if (v18 == 36)
      {
        v22 = *&v71[4];
        LODWORD(v9) = *v71;
        v10 = *&v71[8];
        goto LABEL_15;
      }
    }
  }

  return result;
}

BOOL sub_239ECC7D4(float *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = *a1;
  if (*a1 <= 0.0)
  {
    v5 = -*a1;
  }

  while (1)
  {
    if (v5 < 1.0)
    {
      v6 = *(a2 + 4 * v3);
      if (v6 <= 0.0)
      {
        v6 = -v6;
      }

      if (v6 >= (v5 * 3.4028e38))
      {
        break;
      }
    }

    v4 = v3++ > 1;
    if (v3 == 3)
    {
      return 1;
    }
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_239ECC8AC(exception, "Cannot remove zero scaling from matrix.");
    __cxa_throw(exception, off_278B40270, MEMORY[0x277D825E8]);
  }

  return v4;
}

std::logic_error *sub_239ECC8AC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828D8] + 16);
  return result;
}

float32x4_t sub_239ECC8E0@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = *(a1 + 52);
  v9 = *(a1 + 56);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = *(a1 + 60);
  v15 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*(a1 + 16))), v11, COERCE_FLOAT(*(a1 + 20))), v12, COERCE_FLOAT(*(a1 + 24))), v13, COERCE_FLOAT(*(a1 + 28)));
  *a3 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*a1)), v11, COERCE_FLOAT(*(a1 + 4))), v12, COERCE_FLOAT(*(a1 + 8))), v13, COERCE_FLOAT(*(a1 + 12)));
  a3[1] = v15;
  result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v10, *&v3), v11, *&v5), v12, *&v6), v13, *&v7);
  a3[2] = result;
  a3[3] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v10, *&v4), v11, *&v8), v12, *&v9), v13, v14);
  return result;
}

void sub_239ECC96C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  v4 = (v3 >> 3) & 3;
  v5 = v4 - 1;
  if (v4)
  {
    v6 = v4 - 1;
  }

  else
  {
    v6 = 2;
  }

  if (v4 < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = -2;
  }

  v8 = v7 + v4;
  if (!v4)
  {
    v5 = 2;
  }

  if ((v3 & 4) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if ((v3 & 4) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  v11 = 8;
  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 8;
  }

  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v13 = *(a1 + v12);
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 4);
  }

  else
  {
    v13 = -v13;
    v14 = -*(a1 + 4);
  }

  if ((v3 & 4) != 0)
  {
    v15 = *(a1 + v11);
  }

  else
  {
    v15 = -*(a1 + v11);
  }

  v16 = __sincosf_stret(v13);
  v17 = __sincosf_stret(v14);
  v18 = __sincosf_stret(v15);
  v19 = v16.__cosval * v18.__cosval;
  v20 = v16.__cosval * v18.__sinval;
  v21 = v16.__sinval * v18.__cosval;
  v22 = v16.__sinval * v18.__sinval;
  *a2 = xmmword_239F9AD10;
  *(a2 + 16) = xmmword_239F9AD10;
  *(a2 + 32) = 1065353216;
  v23 = a2 + 12 * v4;
  if ((v3 & 2) != 0)
  {
    *(v23 + 4 * v4) = v17.__cosval;
    v27 = a2 + 12 * v9;
    *(v27 + 4 * v4) = v16.__sinval * v17.__sinval;
    v25 = a2 + 12 * v10;
    *(v25 + 4 * v4) = v16.__cosval * v17.__sinval;
    *(v23 + 4 * v9) = v17.__sinval * v18.__sinval;
    *(v27 + 4 * v9) = v19 - (v22 * v17.__cosval);
    *(v25 + 4 * v9) = -(v21 + (v20 * v17.__cosval));
    *(v23 + 4 * v10) = -(v18.__cosval * v17.__sinval);
    *(v27 + 4 * v10) = v20 + (v21 * v17.__cosval);
    v26 = -(v22 - (v19 * v17.__cosval));
  }

  else
  {
    *(v23 + 4 * v4) = v17.__cosval * v18.__cosval;
    v24 = a2 + 12 * v9;
    *(v24 + 4 * v4) = -(v20 - (v21 * v17.__sinval));
    v25 = a2 + 12 * v10;
    *(v25 + 4 * v4) = v22 + (v19 * v17.__sinval);
    *(v23 + 4 * v9) = v17.__cosval * v18.__sinval;
    *(v24 + 4 * v9) = v19 + (v22 * v17.__sinval);
    *(v25 + 4 * v9) = -(v21 - (v20 * v17.__sinval));
    *(v23 + 4 * v10) = -v17.__sinval;
    *(v24 + 4 * v10) = v16.__sinval * v17.__cosval;
    v26 = v16.__cosval * v17.__cosval;
  }

  *(v25 + 4 * v10) = v26;
}

void sub_239ECCB20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v5 = (v4 >> 3) & 3;
  v6 = v5 - 1;
  if (v5)
  {
    v7 = v5 - 1;
  }

  else
  {
    v7 = 2;
  }

  if (v5 < 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = -2;
  }

  v9 = v8 + v5;
  if (!v5)
  {
    v6 = 2;
  }

  if ((v4 & 4) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if ((v4 & 4) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10;
  v13 = a2 + 12 * v10;
  if ((v4 & 2) != 0)
  {
    v43 = atan2f(*(v13 + 4 * v5), *(a2 + 12 * v11 + 4 * v5));
    *a1 = v43;
    if ((v4 & 4) != 0)
    {
      v43 = -v43;
    }

    v91 = 0.0;
    v90 = 0;
    *(&v90 + v5) = v43;
    *&v89 = 0;
    *(&v89 + 1) = 0x3F80000000000000;
    v44 = *(&v90 + 1);
    v45 = *&v90;
    v46 = __sincosf_stret(v91);
    v47 = __sincosf_stret(v44);
    v50 = __sincosf_stret(v45);
    v49.i64[0] = __PAIR64__(LODWORD(v46.__sinval), LODWORD(v50.__cosval));
    *v48.i32 = v50.__sinval;
    v51 = (v47.__cosval * v46.__sinval) * 0.0;
    v52 = (v47.__cosval * v46.__cosval) * 0.0;
    v86.f32[0] = (v51 + (v47.__cosval * v46.__cosval)) - (v47.__sinval * 0.0);
    v86.f32[1] = (v52 + (v47.__cosval * v46.__sinval)) - (v47.__sinval * 0.0);
    v86.f32[2] = (v52 - v47.__sinval) + v51;
    v86.f32[3] = (v51 + v52) - (v47.__sinval * 0.0);
    v53 = vmul_n_f32(v50, v47.__cosval);
    *v54.f32 = v46;
    *&v54.u32[2] = v46;
    v55 = v48;
    v55.i32[1] = LODWORD(v50.__cosval);
    v56.i64[0] = __PAIR64__(LODWORD(v50.__cosval), LODWORD(v46.__cosval));
    v49.i64[1] = __PAIR64__(LODWORD(v46.__sinval), LODWORD(v50.__sinval));
    v56.i64[1] = __PAIR64__(LODWORD(v50.__sinval), LODWORD(v46.__cosval));
    v57 = vmulq_f32(vmulq_n_f32(v54, v47.__sinval), vzip1q_s32(v55, v55));
    v58 = vmulq_f32(v49, v56);
    v59 = vaddq_f32(v57, v58);
    v60 = vsubq_f32(v57, v58);
    v60.i32[0] = v59.i32[0];
    v60.i32[3] = v59.i32[3];
    v61 = vmulq_f32(v60, 0);
    *v62.i8 = vmul_f32(v53, 0);
    v63 = vzip1q_s32(v61, vdupq_lane_s32(*v61.f32, 1));
    v64 = vzip2q_s32(v61, vrev64q_s32(v61));
    v65 = vextq_s8(v60, v61, 4uLL);
    v66 = vtrn1q_s32(vzip1q_s32(v62, v60), v61);
    v61.i64[0] = __PAIR64__(v60.u32[2], v59.u32[3]);
    v65.i32[1] = v59.i32[0];
    v61.i32[2] = v53.i32[1];
    v65.i32[2] = v53.i32[0];
    v87 = vaddq_f32(vaddq_f32(v63, vzip1q_s32(v66, vdupq_lane_s32(*v66.i8, 0))), v65);
    v88 = vaddq_f32(vaddq_f32(v64, vzip2q_s32(v66, vdupq_laneq_s32(v66, 2))), v61);
    v60.i32[0] = *(a2 + 8);
    v61.i32[0] = *(a2 + 20);
    v53.i32[0] = *(a2 + 32);
    v73.i64[0] = *a2;
    v73.i64[1] = v60.u32[0];
    v74 = *(a2 + 12);
    v75 = v61.i32[0];
    v76 = 0;
    v77 = *(a2 + 24);
    v78 = v53.i32[0];
    v80 = 0;
    v79 = 0;
    v81 = 1065353216;
    sub_239ECC8E0(&v86, &v73, &v82);
    v86 = v82;
    v87 = v83;
    v88 = v84;
    v89 = v85;
    v67 = (&v86 + v12);
    v68 = *(v67 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
    v69 = *((&v86 + v11) | (4 * v5));
    v39 = atan2f(sqrtf((v68 * v68) + (v69 * v69)), *((&v86 + v5) & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))));
    *(a1 + 4) = v39;
    v41 = *(v67 + 4 * v11);
    v42 = *(v67 + 4 * v12);
  }

  else
  {
    v14 = atan2f(*(v13 + 4 * v11), *(a2 + 12 * v11 + 4 * v11));
    *a1 = v14;
    if ((v4 & 4) != 0)
    {
      v14 = -v14;
    }

    v91 = 0.0;
    v90 = 0;
    *(&v90 + v5) = v14;
    *&v89 = 0;
    *(&v89 + 1) = 0x3F80000000000000;
    v15 = *(&v90 + 1);
    v16 = *&v90;
    v17 = __sincosf_stret(v91);
    v18 = __sincosf_stret(v15);
    v21 = __sincosf_stret(v16);
    v20.i64[0] = __PAIR64__(LODWORD(v17.__sinval), LODWORD(v21.__cosval));
    *v19.i32 = v21.__sinval;
    v22 = (v18.__cosval * v17.__sinval) * 0.0;
    v23 = (v18.__cosval * v17.__cosval) * 0.0;
    v86.f32[0] = (v22 + (v18.__cosval * v17.__cosval)) - (v18.__sinval * 0.0);
    v86.f32[1] = (v23 + (v18.__cosval * v17.__sinval)) - (v18.__sinval * 0.0);
    v86.f32[2] = (v23 - v18.__sinval) + v22;
    v86.f32[3] = (v22 + v23) - (v18.__sinval * 0.0);
    v24 = vmul_n_f32(v21, v18.__cosval);
    *v25.f32 = v17;
    *&v25.u32[2] = v17;
    v26 = v19;
    v26.i32[1] = LODWORD(v21.__cosval);
    v27.i64[0] = __PAIR64__(LODWORD(v21.__cosval), LODWORD(v17.__cosval));
    v20.i64[1] = __PAIR64__(LODWORD(v17.__sinval), LODWORD(v21.__sinval));
    v27.i64[1] = __PAIR64__(LODWORD(v21.__sinval), LODWORD(v17.__cosval));
    v28 = vmulq_f32(vmulq_n_f32(v25, v18.__sinval), vzip1q_s32(v26, v26));
    v29 = vmulq_f32(v20, v27);
    v30 = vaddq_f32(v28, v29);
    v31 = vsubq_f32(v28, v29);
    v31.i32[0] = v30.i32[0];
    v31.i32[3] = v30.i32[3];
    v32 = vmulq_f32(v31, 0);
    *v33.i8 = vmul_f32(v24, 0);
    v34 = vzip1q_s32(v32, vdupq_lane_s32(*v32.f32, 1));
    v35 = vzip2q_s32(v32, vrev64q_s32(v32));
    v36 = vextq_s8(v31, v32, 4uLL);
    v37 = vtrn1q_s32(vzip1q_s32(v33, v31), v32);
    v32.i64[0] = __PAIR64__(v31.u32[2], v30.u32[3]);
    v36.i32[1] = v30.i32[0];
    v32.i32[2] = v24.i32[1];
    v36.i32[2] = v24.i32[0];
    v87 = vaddq_f32(vaddq_f32(v34, vzip1q_s32(v37, vdupq_lane_s32(*v37.i8, 0))), v36);
    v88 = vaddq_f32(vaddq_f32(v35, vzip2q_s32(v37, vdupq_laneq_s32(v37, 2))), v32);
    v31.i32[0] = *(a2 + 8);
    v32.i32[0] = *(a2 + 20);
    v24.i32[0] = *(a2 + 32);
    v73.i64[0] = *a2;
    v73.i64[1] = v31.u32[0];
    v74 = *(a2 + 12);
    v75 = v32.i32[0];
    v76 = 0;
    v77 = *(a2 + 24);
    v78 = v24.i32[0];
    v80 = 0;
    v79 = 0;
    v81 = 1065353216;
    sub_239ECC8E0(&v86, &v73, &v82);
    v86 = v82;
    v87 = v83;
    v88 = v84;
    v89 = v85;
    v38 = (&v86 + v5);
    v39 = atan2f(-*(v38 + 4 * v11), sqrtf((*(v38 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v4 >> 3) & 3))) * *(v38 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v4 >> 3) & 3)))) + (*(v38 + 4 * v12) * *(v38 + 4 * v12))));
    *(a1 + 4) = v39;
    v40 = (&v86 + v12);
    v41 = -*(v40 | (4 * v5));
    v42 = *(v40 + 4 * v12);
  }

  v70 = atan2f(v41, v42);
  *(a1 + 8) = v70;
  v71 = *(a1 + 12);
  if ((v71 & 4) == 0)
  {
    *a1 = -*a1;
    *(a1 + 4) = -v39;
    v70 = -v70;
    *(a1 + 8) = v70;
  }

  if ((v71 & 1) == 0)
  {
    v72 = *a1;
    *a1 = v70;
    *(a1 + 8) = v72;
  }
}

uint64_t *sub_239ECD040(uint64_t a1, double *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 4);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v3;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

MDLMesh *sub_239ECD10C(void *a1, int a2, uint64_t a3, void *a4)
{
  v555[19] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v534 = a4;
  v540 = v6;
  v18 = objc_msgSend_submeshes(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v29 = objc_msgSend_objectAtIndex_(v18, v19, a2, v20, v25, v26, v27, v28, v21, v22, v23, v24);

  v539 = v29;
  v41 = objc_msgSend_geometryType(v29, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  v53 = v41;
  if (v41 > 5 || ((1 << v41) & 0x34) == 0)
  {
    v68 = MEMORY[0x277CBEAD8];
    v69 = objc_opt_class();
    v57 = NSStringFromClass(v69);
    v58 = NSStringFromSelector(sel_initMeshBySubdividingMesh_submeshIndex_subdivisionLevels_allocator_);
    objc_msgSend_raise_format_(v68, v70, @"ModelIOException", @"[%@ %@]: Can only subdivide submesh in mesh using MDLGeometryTypeTriangles, MDLGeometryTypeQuads, or MDLGeometryTypeVariableTopology", v75, v76, v77, v78, v71, v72, v73, v74, v57, v58);
LABEL_7:

    goto LABEL_8;
  }

  if (v41 == 5)
  {
    v54 = objc_msgSend_topology(v29, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    if (v54)
    {
      goto LABEL_9;
    }

    v55 = MEMORY[0x277CBEAD8];
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    v58 = NSStringFromSelector(sel_initMeshBySubdividingMesh_submeshIndex_subdivisionLevels_allocator_);
    objc_msgSend_raise_format_(v55, v59, @"ModelIOException", @"[%@ %@]: If submesh object's geometryType is MDLGeometryTypeVariableTopology, it must have a topology", v64, v65, v66, v67, v60, v61, v62, v63, v57, v58);
    goto LABEL_7;
  }

LABEL_8:
  v54 = 0;
LABEL_9:
  v79 = objc_msgSend_vertexDescriptor(v540, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  v538 = v54;
  v90 = objc_msgSend_attributeNamed_(v79, v80, @"position", v81, v86, v87, v88, v89, v82, v83, v84, v85);

  v537 = v90;
  if (objc_msgSend_format(v90, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97) != 786435)
  {
    goto LABEL_73;
  }

  context = objc_autoreleasePoolPush();
  v552 = 0;
  v553 = 0;
  v554 = 0;
  if (v53 != 5)
  {
    if (v53 == 4)
    {
      v260 = 4;
    }

    else
    {
      v260 = 3;
    }

    v261 = (objc_msgSend_indexCount(v539, v102, v103, v104, v109, v110, v111, v112, v105, v106, v107, v108) / v260);
    sub_239EB2474(&v552, v261);
    if (v261 >= 1)
    {
      v273 = (v261 + 3) & 0xFFFFFFFC;
      v269 = vdupq_n_s64(v261 - 1);
      v270 = xmmword_239F9AD30;
      v271 = xmmword_239F9AD40;
      v274 = (v552 + 8);
      v272 = vdupq_n_s64(4uLL);
      do
      {
        v275 = vmovn_s64(vcgeq_u64(v269, v271));
        if (vuzp1_s16(v275, v269.n128_u64[0]).u8[0])
        {
          *(v274 - 2) = v260;
        }

        if (vuzp1_s16(v275, *&v269).i8[2])
        {
          *(v274 - 1) = v260;
        }

        if (vuzp1_s16(*&v269, vmovn_s64(vcgeq_u64(*&v269, *&v270))).i32[1])
        {
          *v274 = v260;
          v274[1] = v260;
        }

        v270 = vaddq_s64(v270, v272);
        v271 = vaddq_s64(v271, v272);
        v274 += 4;
        v273 -= 4;
      }

      while (v273);
    }

    v530 = 0;
    v276 = 0;
    v277 = 0;
    v535 = 0;
    v536 = 0;
    v278 = 0;
    v279 = 0;
    LODWORD(v280) = 0;
    v532 = 0;
    v533 = 0;
    v247 = 0;
    v259 = 0;
    v235 = 0;
    goto LABEL_55;
  }

  v113 = objc_msgSend_faceTopology(v538, v102, v103, v104, v109, v110, v111, v112, v105, v106, v107, v108);
  v125 = objc_msgSend_map(v113, v114, v115, v116, v121, v122, v123, v124, v117, v118, v119, v120);

  v541 = v125;
  v137 = objc_msgSend_bytes(v125, v126, v127, v128, v133, v134, v135, v136, v129, v130, v131, v132);
  v149 = objc_msgSend_faceCount(v538, v138, v139, v140, v145, v146, v147, v148, v141, v142, v143, v144);
  sub_239EB2474(&v552, v149);
  if (v149 >= 1)
  {
    v161 = v552;
    v162 = v149 & 0x7FFFFFFF;
    do
    {
      v163 = *v137++;
      *v161++ = v163;
      --v162;
    }

    while (v162);
  }

  v171 = objc_msgSend_vertexCreaseIndices(v538, v150, v151, v152, v157, v158, v159, v160, v153, v154, v155, v156);
  if (!v171)
  {
    goto LABEL_35;
  }

  v183 = objc_msgSend_vertexCreases(v538, v164, v165, v166, v172, v173, v174, v175, v167, v168, v169, v170);
  if (!v183)
  {

    goto LABEL_35;
  }

  v188 = objc_msgSend_vertexCreaseCount(v538, v176, v177, v178, v184, v185, v186, v187, v179, v180, v181, v182) == 0;

  if (v188)
  {
LABEL_35:
    v532 = 0;
    v533 = 0;
    goto LABEL_36;
  }

  v189 = objc_msgSend_vertexCreases(v538, v164, v165, v166, v172, v173, v174, v175, v167, v168, v169, v170);
  v532 = objc_msgSend_map(v189, v190, v191, v192, v197, v198, v199, v200, v193, v194, v195, v196);

  v212 = objc_msgSend_vertexCreaseIndices(v538, v201, v202, v203, v208, v209, v210, v211, v204, v205, v206, v207);
  v533 = objc_msgSend_map(v212, v213, v214, v215, v220, v221, v222, v223, v216, v217, v218, v219);

  if (objc_msgSend_bytes(v532, v224, v225, v226, v231, v232, v233, v234, v227, v228, v229, v230) && objc_msgSend_bytes(v533, v164, v165, v166, v172, v173, v174, v175, v167, v168, v169, v170))
  {
    v235 = objc_msgSend_vertexCreaseCount(v538, v164, v165, v166, v172, v173, v174, v175, v167, v168, v169, v170);
    v247 = objc_msgSend_bytes(v532, v236, v237, v238, v243, v244, v245, v246, v239, v240, v241, v242);
    v259 = objc_msgSend_bytes(v533, v248, v249, v250, v255, v256, v257, v258, v251, v252, v253, v254);
    goto LABEL_37;
  }

LABEL_36:
  v247 = 0;
  v259 = 0;
  v235 = 0;
LABEL_37:
  v280 = objc_msgSend_edgeCreaseIndices(v538, v164, v165, v166, v172, v173, v174, v175, v167, v168, v169, v170);
  if (!v280)
  {
    v535 = 0;
    v536 = 0;
    v278 = 0;
    v279 = 0;
    goto LABEL_48;
  }

  v299 = objc_msgSend_edgeCreases(v538, v281, v282, v283, v288, v289, v290, v291, v284, v285, v286, v287);
  if (!v299)
  {

    goto LABEL_45;
  }

  v304 = objc_msgSend_edgeCreaseCount(v538, v292, v293, v294, v300, v301, v302, v303, v295, v296, v297, v298) == 0;

  if (v304)
  {
LABEL_45:
    v535 = 0;
    v536 = 0;
    v278 = 0;
    v279 = 0;
    LODWORD(v280) = 0;
    goto LABEL_48;
  }

  v305 = objc_msgSend_edgeCreaseIndices(v538, v281, v282, v283, v288, v289, v290, v291, v284, v285, v286, v287);
  v535 = objc_msgSend_map(v305, v306, v307, v308, v313, v314, v315, v316, v309, v310, v311, v312);

  v328 = objc_msgSend_edgeCreases(v538, v317, v318, v319, v324, v325, v326, v327, v320, v321, v322, v323);
  v536 = objc_msgSend_map(v328, v329, v330, v331, v336, v337, v338, v339, v332, v333, v334, v335);

  if (objc_msgSend_bytes(v535, v340, v341, v342, v347, v348, v349, v350, v343, v344, v345, v346) && objc_msgSend_bytes(v536, v351, v352, v353, v358, v359, v360, v361, v354, v355, v356, v357))
  {
    objc_msgSend_edgeCreaseCount(v538, v351, v352, v353, v358, v359, v360, v361, v354, v355, v356, v357);
    v278 = objc_msgSend_bytes(v536, v362, v363, v364, v369, v370, v371, v372, v365, v366, v367, v368);
    v279 = objc_msgSend_bytes(v535, v373, v374, v375, v380, v381, v382, v383, v376, v377, v378, v379);
  }

  else
  {
    v278 = 0;
    v279 = 0;
  }

  LODWORD(v280) = objc_msgSend_edgeCreaseCount(v538, v351, v352, v353, v358, v359, v360, v361, v354, v355, v356, v357);
LABEL_48:
  v391 = objc_msgSend_holes(v538, v281, v282, v283, v288, v289, v290, v291, v284, v285, v286, v287);
  if (!v391 || (v396 = objc_msgSend_holeCount(v538, v384, v385, v386, v392, v393, v394, v395, v387, v388, v389, v390) == 0, v391, v396))
  {
    v530 = 0;
    goto LABEL_53;
  }

  v408 = objc_msgSend_holes(v538, v397, v398, v399, v404, v405, v406, v407, v400, v401, v402, v403);
  v530 = objc_msgSend_map(v408, v409, v410, v411, v416, v417, v418, v419, v412, v413, v414, v415);

  if (!objc_msgSend_bytes(v530, v420, v421, v422, v427, v428, v429, v430, v423, v424, v425, v426))
  {
LABEL_53:
    v276 = 0;
    v277 = 0;
    goto LABEL_54;
  }

  v277 = objc_msgSend_holeCount(v538, v431, v432, v433, v438, v439, v440, v441, v434, v435, v436, v437);
  v276 = objc_msgSend_bytes(v530, v442, v443, v444, v449, v450, v451, v452, v445, v446, v447, v448);
LABEL_54:

LABEL_55:
  v453 = objc_msgSend_indexBuffer(v539, v262, v263, v264, v269, v270, v271, v272, v265, v266, v267, v268);
  v531 = objc_msgSend_map(v453, v454, v455, v456, v461, v462, v463, v464, v457, v458, v459, v460);

  v549 = 0;
  v550 = 0;
  v551 = 0;
  if (objc_msgSend_indexType(v539, v465, v466, v467, v472, v473, v474, v475, v468, v469, v470, v471) == 32)
  {
    v487 = objc_msgSend_bytes(v531, v476, v477, v478, v483, v484, v485, v486, v479, v480, v481, v482);
    goto LABEL_67;
  }

  v488 = objc_msgSend_indexCount(v539, v476, v477, v478, v483, v484, v485, v486, v479, v480, v481, v482);
  sub_239E95D48(&v549, v488);
  v500 = objc_msgSend_indexType(v539, v489, v490, v491, v496, v497, v498, v499, v492, v493, v494, v495);
  if (v500 == 8)
  {
    v515 = objc_msgSend_bytes(v531, v501, v502, v503, v508, v509, v510, v511, v504, v505, v506, v507);
    if (v488)
    {
      v516 = v515;
      do
      {
        v517 = *v516++;
        LODWORD(v555[0]) = v517;
        sub_239E73254(&v549, v555);
        --v488;
      }

      while (v488);
    }

    goto LABEL_66;
  }

  if (v500 == 16)
  {
    v512 = objc_msgSend_bytes(v531, v501, v502, v503, v508, v509, v510, v511, v504, v505, v506, v507);
    if (v488)
    {
      v513 = v512;
      do
      {
        v514 = *v513++;
        LODWORD(v555[0]) = v514;
        sub_239E73254(&v549, v555);
        --v488;
      }

      while (v488);
    }

LABEL_66:
    v487 = v549;
LABEL_67:
    v548 = 0;
    v546 = 0u;
    v547 = 0u;
    v544 = 0u;
    v545 = 0u;
    v542 = 0u;
    v543 = 0u;
    OpenSubdiv::__aapl__::Far::TopologyDescriptor::TopologyDescriptor(&v542);
    v548 = 0;
    v546 = 0u;
    v547 = 0u;
    v544 = 0u;
    v545 = 0u;
    v542 = 0u;
    v543 = 0u;
    LODWORD(v542) = objc_msgSend_vertexCount(v540, v518, v519, v520, 0, v525, v526, v527, v521, v522, v523, v524);
    DWORD1(v542) = (v553 - v552) >> 2;
    *(&v542 + 1) = v552;
    *&v543 = v487;
    DWORD2(v543) = v280;
    *&v544 = v279;
    *(&v544 + 1) = v278;
    LODWORD(v545) = v235;
    *(&v545 + 1) = v259;
    *&v546 = v247;
    DWORD2(v546) = v277;
    *&v547 = v276;
    sub_239ECF63C(&v542, 0x50100000001uLL, 0);
  }

  if (v549)
  {
    v550 = v549;
    operator delete(v549);
  }

  if (v552)
  {
    v553 = v552;
    operator delete(v552);
  }

  objc_autoreleasePoolPop(context);
LABEL_73:

  return 0;
}