void sub_239EE8CF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_239E797CC(a1);
}

uint64_t sub_239EE8D6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D17EA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_239EE8DAC(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_239EE8DF8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      v5 += 12;
      v6 += 12;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_239EE8E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_239EE8F0C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_239E95B5C(a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v12 = 12 * v2 + 12;
  v13 = 0;
  sub_239EE8DF8(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_239EE9034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_239EE9094(uint64_t a1, int8x16_t a2)
{
  *a1 = 1049652922;
  *(a1 + 4) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL)), xmmword_239F9C950));
  result = *a2.i32 * -0.488602511;
  *(a1 + 12) = result;
  return result;
}

float32x2_t sub_239EE90DC(uint64_t a1, __n128 _Q0)
{
  *a1 = 1049652922;
  _S1 = _Q0.n128_u32[1];
  v3.f64[0] = _Q0.n128_f32[2];
  v4 = &qword_239F9C990;
  *&v5.f64[0] = *&vld1q_dup_f64(v4);
  v5.f64[1] = _Q0.n128_f32[1] * 1.09254843;
  v6.f64[0] = _Q0.n128_f32[1];
  v6.f64[1] = v3.f64[0];
  v3.f64[1] = v3.f64[0] * v3.f64[0];
  v7 = vmulq_f64(v3, xmmword_239F9C960);
  v8 = vdupq_n_s64(0xBFD42F601A7DF7D6);
  v9 = vaddq_f64(v7, v8);
  v8.f64[0] = _Q0.n128_f32[1];
  *&_Q2.f64[0] = *&vmulq_f64(v7, v8);
  _Q2.f64[1] = v9.f64[1];
  *(a1 + 20) = vcvt_f32_f64(_Q2);
  __asm { FMLS            S2, S1, V0.S[1] }

  _Q0.n128_u32[1] = LODWORD(_Q2.f64[0]);
  v15 = vcvtq_f64_f32(_Q0.n128_u64[0]);
  *(a1 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v6, xmmword_239F9C950)), vmulq_n_f64(v5, v15.f64[0]));
  v7.f64[1] = 0.546274215;
  result = vcvt_f32_f64(vmulq_f64(v7, v15));
  *(a1 + 28) = result;
  return result;
}

float32x2_t sub_239EE91A4(uint64_t a1, float32x4_t _Q0)
{
  _S1 = _Q0.i32[1];
  v3 = vmuls_lane_f32(_Q0.f32[2], _Q0, 2);
  v4 = vmuls_lane_f32(-1.0925, _Q0, 2);
  *(a1 + 24) = (v3 * 0.94617) + -0.31539;
  *(a1 + 28) = v4 * _Q0.f32[0];
  _D2 = vmul_n_f32(0x3FEED53640124131, v3);
  v6.i32[0] = vsub_f32(0x3FEED5363EEA01E8, _D2).u32[0];
  v6.i32[1] = vadd_f32(_D2, vdup_n_s32(0xBF8F4CBA)).i32[1];
  *(a1 + 20) = vmuls_lane_f32(v4, *_Q0.f32, 1);
  *(a1 + 52) = vmuls_n_f32(v6.f32[0], _Q0.f32[0]);
  *(a1 + 44) = vmul_f32(v6, vext_s8(*_Q0.f32, *&vextq_s8(_Q0, _Q0, 8uLL), 4uLL));
  v7 = vmuls_lane_f32(_Q0.f32[0] + _Q0.f32[0], *_Q0.f32, 1);
  v8 = vmuls_lane_f32(1.4453, _Q0, 2);
  __asm { FMLS            S2, S1, V0.S[1] }

  *&v13 = -(vmuls_lane_f32(v7, *_Q0.f32, 1) - (_D2.f32[0] * _Q0.f32[0]));
  v6.f32[0] = vmuls_lane_f32(_D2.f32[0], *_Q0.f32, 1) + (v7 * _Q0.f32[0]);
  _Q0.f32[3] = v7;
  v14 = vmulq_f32(_Q0, xmmword_239F9C970);
  *a1 = 1049652923;
  *(a1 + 4) = vzip2q_s32(vzip1q_s32(v14, vextq_s8(v14, v14, 0xCuLL)), v14);
  *(a1 + 40) = v7 * v8;
  v14.i64[0] = __PAIR64__(v13, _D2.u32[0]);
  v15 = &unk_239F9C9E4;
  v16 = vld1_dup_f32(v15);
  v16.f32[0] = v8;
  *(a1 + 56) = vmul_f32(*v14.i8, v16);
  _D2.i32[1] = v6.i32[0];
  result = vmul_f32(_D2, 0xBF170D193F0BD8A1);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_239EE92BC(uint64_t result, __int128 *a2, __int128 *a3)
{
  v3 = xmmword_239F9C090;
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v3 = xmmword_239F9C050;
        v4 = xmmword_239F9C060;
        break;
      case 4:
        v4 = xmmword_239F9C070;
        break;
      case 5:
        v4 = xmmword_239F9C050;
        break;
      default:
        return result;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      v4 = xmmword_239F9C080;
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v3 = xmmword_239F9C070;
      v4 = xmmword_239F9C090;
    }
  }

  else
  {
    v4 = xmmword_239F9AD10;
  }

  *a2 = v4;
  *a3 = v3;
  return result;
}

double sub_239EE9354(int a1, int a2, int a3, float32x4_t a4)
{
  v4 = 0.0;
  v5 = a1;
  if (a3 > 2)
  {
    v13 = 1.0;
    v14 = (a2 * 2.0) + 1.0;
    v15 = -((v14 * a4.f32[0]) + -1.0);
    v16 = (((v5 * 2.0) + 1.0) * a4.f32[0]) + -1.0;
    v17 = (v14 * a4.f32[0]) + -1.0;
    a4.f32[0] = -v16;
    if (a3 == 5)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0.0;
    }

    if (a3 != 5)
    {
      v13 = 0.0;
      a4.f32[0] = 0.0;
    }

    if (a3 == 4)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (a3 == 4)
    {
      v20 = -1.0;
    }

    else
    {
      v20 = v13;
    }

    if (a3 == 4)
    {
      a4.f32[0] = v16;
    }

    if (a3 == 3)
    {
      v10 = -1.0;
    }

    else
    {
      v10 = v19;
    }

    if (a3 == 3)
    {
      *&v12 = v15;
    }

    else
    {
      *&v12 = v20;
    }

    if (a3 == 3)
    {
      a4.f32[0] = v16;
    }
  }

  else
  {
    v6 = -1.0;
    v7 = (((v5 * 2.0) + 1.0) * a4.f32[0]) + -1.0;
    v8 = (((a2 * 2.0) + 1.0) * a4.f32[0]) + -1.0;
    v9 = -v7;
    if (a3 == 2)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    if (a3 == 2)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    if (a3 == 2)
    {
      v4 = v7;
    }

    if (a3 == 1)
    {
      v10 = v8;
    }

    else
    {
      v9 = v11;
    }

    if (a3 != 1)
    {
      v6 = v4;
    }

    if (a3)
    {
      *&v12 = v9;
    }

    else
    {
      v10 = v8;
      *&v12 = v7;
    }

    if (a3)
    {
      a4.f32[0] = v6;
    }

    else
    {
      a4.f32[0] = 1.0;
    }
  }

  a4.f32[1] = v10;
  a4.i32[2] = v12;
  v21 = vmulq_f32(a4, a4);
  *&v22 = vaddv_f32(*v21.f32) + v21.f32[2];
  *v21.f32 = vrsqrte_f32(v22);
  *v21.f32 = vmul_f32(vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)), *v21.f32);
  a4.i64[0] = vmulq_n_f32(a4, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]).u64[0];
  return *a4.i64;
}

float sub_239EE9458(int a1, int a2, int a3)
{
  v3 = 1.0 / a3;
  v4 = 0.0;
  if (a3 >= 2)
  {
    v4 = (2.0 - (v3 * 2.0)) / (a3 + -1.0);
  }

  v5 = ((((v3 + -1.0) + (v4 * a1)) * ((v3 + -1.0) + (v4 * a1))) + 1.0) + (((v3 + -1.0) + (v4 * a2)) * ((v3 + -1.0) + (v4 * a2)));
  return 4.0 / (sqrtf(v5) * v5);
}

uint64_t sub_239EE94B8(uint64_t a1, void *a2, CGColor *a3)
{
  v5 = a2;
  *a1 = &unk_284D17048;
  *(a1 + 8) = 0;
  v6 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = 4;
  *(a1 + 8) = CGColorCreateCopy(a3);

  return a1;
}

uint64_t sub_239EE9548(uint64_t a1)
{
  *a1 = &unk_284D17048;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 8);
  if (v3)
  {
    CGColorRelease(v3);
  }

  return a1;
}

void sub_239EE95B0(uint64_t a1)
{
  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

CGColorRef sub_239EE95E8(uint64_t a1, CGColorRef color)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CGColorRelease(v4);
  }

  result = CGColorCreateCopy(color);
  *(a1 + 8) = result;
  return result;
}

double sub_239EE966C(uint64_t a1, void *a2, CGColor *a3)
{
  v3 = sub_239EE94B8(a1, a2, a3);
  *v3 = &unk_284D17128;
  *(v3 + 28) = xmmword_239F9C980;
  result = 0.0000305175854;
  *(v3 + 44) = 0x3F00000040000000;
  return result;
}

uint64_t sub_239EE96B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  a9.n128_u32[0] = *(a1 + 48);
  if (a9.n128_f32[0] == 0.0)
  {
    v28 = *(a1 + 16);

    return objc_msgSend_translation(v28, a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  }

  else
  {
    v13 = arc4random();
    v14.n128_u64[0] = vmla_f32(0xBF000000BF000000, 0x3000000030000000, vcvt_f32_u32(__PAIR64__(arc4random(), v13)));
    v29 = v14;
    v15 = arc4random();
    v16 = v29;
    v16.n128_f32[2] = (v15 * 4.6566e-10) + -0.5;
    v17 = vmulq_f32(v16, v16);
    v16.n128_f32[0] = vaddv_f32(*v17.f32) + v17.f32[2];
    *v17.f32 = vrsqrte_f32(v16.n128_u32[0]);
    *v17.f32 = vmul_f32(vrsqrts_f32(v16.n128_u32[0], vmul_f32(*v17.f32, *v17.f32)), *v17.f32);
    v18.n128_u64[0] = vmul_f32(*v17.f32, *v17.f32);
    v16.n128_u64[0] = vrsqrts_f32(v16.n128_u32[0], v18.n128_u64[0]);
    *v17.f32 = vmul_f32(*v17.f32, v16.n128_u64[0]);
    v16.n128_u32[0] = *(a1 + 48);
    return objc_msgSend_translation(*(a1 + 16), v19, v20, v21, vmulq_f32(v16, v17), v16, v18, v26, v22, v23, v24, v25);
  }
}

double sub_239EE97A8(uint64_t a1, __n128 a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  v12 = a2.n128_f32[0];
  a2.n128_u64[0] = 0;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), a3, a4, a5, a2, a10, a11, a12, a6, a7, a8, a9);
  v15 = vmlaq_f32(vmulq_f32(v13, 0), 0, v14);
  __asm { FMOV            V1.4S, #-1.0 }

  v23 = vmlaq_f32(vmlaq_f32(v15, _Q1, v21), 0, v22);
  v24 = vmulq_f32(v23, v23);
  v21.f32[0] = vaddv_f32(*v24.f32) + v24.f32[2];
  *v24.f32 = vrsqrte_f32(v21.u32[0]);
  *v24.f32 = vmul_f32(vrsqrts_f32(v21.u32[0], vmul_f32(*v24.f32, *v24.f32)), *v24.f32);
  v36 = vmulq_f32(vmulq_n_f32(vdupq_n_s32(0x42C80000u), vmul_f32(*v24.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v24.f32, *v24.f32))).f32[0]), v23);
  v25 = arc4random();
  *v26.f32 = vmla_f32(0xBF000000BF000000, 0x3000000030000000, vcvt_f32_u32(__PAIR64__(arc4random(), v25)));
  v37 = v26;
  v27 = arc4random();
  v28 = v37;
  v28.f32[2] = (v27 * 4.6566e-10) + -0.5;
  v38 = v28;
  v29 = vmulq_f32(v28, v28);
  v28.f32[0] = vaddv_f32(*v29.f32) + v29.f32[2];
  *v29.f32 = vrsqrte_f32(v28.u32[0]);
  *v29.f32 = vmul_f32(vrsqrts_f32(v28.u32[0], vmul_f32(*v29.f32, *v29.f32)), *v29.f32);
  *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v28.u32[0], vmul_f32(*v29.f32, *v29.f32)));
  v35 = v29;
  v30.f32[0] = sinf(v12);
  v31 = vmlaq_n_f32(v36, v38, vmulq_f32(v35, v30).f32[0]);
  v32 = vmulq_f32(v31, v31);
  *&v33 = vaddv_f32(*v32.f32) + v32.f32[2];
  *v32.f32 = vrsqrte_f32(v33);
  *v32.f32 = vmul_f32(vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)), *v32.f32);
  *&result = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]).u64[0];
  return result;
}

float sub_239EE9918(uint64_t a1, __n128 a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  v12 = *(a1 + 24);
  if (v12 != 3 && v12 != 0)
  {
    return 1.0;
  }

  objc_msgSend_translation(*(a1 + 16), a3, a4, a5, a2, a10, a11, a12, a6, a7, a8, a9);
  v48 = v15;
  v15.n128_u64[0] = 0;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v16, v17, v18, v15, v23, v24, v25, v19, v20, v21, v22);
  v28 = vmlaq_f32(vmulq_f32(v26, 0), 0, v27);
  __asm { FMOV            V0.4S, #-1.0 }

  v35 = vmlaq_f32(vmlaq_f32(v28, _Q0, v33), 0, v34);
  v36 = vmulq_f32(v35, v35);
  v27.f32[0] = vaddv_f32(*v36.f32) + v36.f32[2];
  *v36.f32 = vrsqrte_f32(v27.u32[0]);
  *v36.f32 = vmul_f32(vrsqrts_f32(v27.u32[0], vmul_f32(*v36.f32, *v36.f32)), *v36.f32);
  LODWORD(v37) = vmul_f32(*v36.f32, vrsqrts_f32(v27.u32[0], vmul_f32(*v36.f32, *v36.f32))).u32[0];
  v38 = *(a1 + 40);
  v39 = vsubq_f32(a2, v48);
  v51 = v39;
  if (v38 == 0.0)
  {
    v42 = 1.0;
  }

  else
  {
    v40 = vmulq_f32(v39, v39);
    v47 = v37;
    v49 = v35;
    v41 = powf(fminf(fmaxf((v38 - sqrtf(vaddv_f32(*v40.f32) + v40.f32[2])) / (v38 - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
    v37 = v47;
    v35 = v49;
    v42 = v41;
  }

  if (!*(a1 + 24))
  {
    v43 = vmulq_f32(v51, v51);
    *&v44 = vaddv_f32(*v43.f32) + v43.f32[2];
    *v43.f32 = vrsqrte_f32(v44);
    *v43.f32 = vmul_f32(vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)), *v43.f32);
    v45 = vmulq_n_f32(vmulq_f32(vmulq_n_f32(v51, v37), v35), vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
    v52 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*(a1 + 28)), vdupq_n_s64(0x3F91DF46A2529D39uLL)));
    return fminf(fmaxf((v52.f32[1] - acosf(vaddv_f32(*v45.f32) + v45.f32[2])) / (v52.f32[1] - v52.f32[0]), 0.0), 1.0) * v42;
  }

  return v42;
}

CGColorRef sub_239EE9AE0(CGColorRef *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 6))(a1);
  Components = CGColorGetComponents(a1[1]);
  v8 = vmulq_n_f64(*Components, v2);
  v4 = *(Components + 3);
  v9 = Components[2] * v2;
  v10 = v4;
  ColorSpace = CGColorGetColorSpace(a1[1]);
  v6 = CGColorCreate(ColorSpace, v8.f64);
  CFRelease(ColorSpace);
  return v6;
}

CGColorRef sub_239EE9BAC(CGColorRef *a1, CGColorSpace *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 6))(a1);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(a2, kCGRenderingIntentAbsoluteColorimetric, a1[1], 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v10 = vmulq_n_f64(*Components, v4);
  v7 = *(Components + 3);
  v11 = Components[2] * v4;
  v12 = v7;
  v8 = CGColorCreate(a2, v10.f64);
  CFRelease(CopyByMatchingToColorSpace);
  return v8;
}

double sub_239EE9C88(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v4.n128_f64[0] = (*(*a1 + 48))(a1);
  v52 = v4.n128_f32[0];
  objc_msgSend_translation(*(a1 + 16), v5, v6, v7, v4, v12, v13, v14, v8, v9, v10, v11);
  v49 = v15;
  v15.n128_u64[0] = 0;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v16, v17, v18, v15, v23, v24, v25, v19, v20, v21, v22);
  v30 = *(a1 + 24);
  if (v30 != 2)
  {
    if (v30 == 1)
    {
      v31 = vmlaq_f32(vmulq_f32(v26, 0), 0, v27);
      __asm { FMOV            V1.4S, #-1.0 }

      v37 = vmlaq_f32(vmlaq_f32(v31, _Q1, v28), 0, v29);
      v38 = vmulq_f32(v37, v37);
      *&v39 = vaddv_f32(*v38.f32) + v38.f32[2];
      *v38.f32 = vrsqrte_f32(v39);
      *v38.f32 = vmul_f32(vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)), *v38.f32);
      v40 = vmulq_f32(v37, vnegq_f32(vdupq_lane_s32(vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))), 0)));
    }

    else
    {
      v41 = vsubq_f32(v49, a2);
      v42 = vmulq_f32(v41, v41);
      *&v43 = vaddv_f32(*v42.f32) + v42.f32[2];
      *v42.f32 = vrsqrte_f32(v43);
      *v42.f32 = vmul_f32(vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32)), *v42.f32);
      v40 = vmulq_n_f32(v41, vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32))).f32[0]);
    }

    v44 = vmulq_f32(v40, a3);
    v52 = fmaxf(vaddv_f32(*v44.f32) + v44.f32[2], 0.0) * v52;
  }

  Components = CGColorGetComponents(*(a1 + 8));
  v46 = *Components;
  *v46.f32 = vcvt_f32_f64(*Components);
  v47 = Components[1].f64[0];
  v46.f32[2] = v47;
  *&result = vmulq_n_f32(v46, v52).u64[0];
  return result;
}

double sub_239EE9DF4(uint64_t a1, void *a2, CGColor *a3)
{
  v3 = sub_239EE94B8(a1, a2, a3);
  *(v3 + 28) = xmmword_239F9C980;
  *(v3 + 44) = 0x3F00000040000000;
  *v3 = &unk_284D171F8;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 56) = result;
  *(v3 + 64) = 1065353216;
  return result;
}

float sub_239EE9E50(uint64_t a1, __n128 a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  objc_msgSend_translation(*(a1 + 16), a3, a4, a5, a2, a10, a11, a12, a6, a7, a8, a9);
  v23.n128_u32[0] = *(a1 + 40);
  if (v23.n128_f32[0] == 0.0)
  {
    v26 = 1.0;
  }

  else
  {
    v24 = vsubq_f32(a2, v20);
    v25 = vmulq_f32(v24, v24);
    v26 = powf(fminf(fmaxf((v23.n128_f32[0] - sqrtf(vaddv_f32(*v25.f32) + v25.f32[2])) / (v23.n128_f32[0] - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
  }

  __p = 0;
  v80 = 0;
  v27 = 0.0;
  v81 = 0;
  v28 = 0.0;
  do
  {
    v29 = *(a1 + 48);
    v30 = *(a1 + 64);
    v20.n128_u64[0] = *(a1 + 56);
    v76 = v20.n128_u64[0];
    objc_msgSend_matrix(*(a1 + 16), v13, v14, v15, v20, v23, v21, v22, v16, v17, v18, v19);
    v71 = v31;
    v72 = v32;
    v73 = v33;
    v70 = v34;
    v37 = __sincosf_stret(v27);
    *v36.i32 = v37.__cosval;
    *v35.i32 = v37.__sinval;
    v69 = v35;
    v74 = v36;
    *v38.i32 = powf(fabsf(v37.__sinval), 2.0 / *(&v76 + 1)) * v29;
    v39.i64[0] = 0x8000000080000000;
    v39.i64[1] = 0x8000000080000000;
    v69.i32[0] = vbslq_s8(v39, v38, v69).u32[0];
    *v40.i32 = (v30 * v29) * powf(fabsf(*v74.i32), 2.0 / *&v76);
    v41.i64[0] = 0x8000000080000000;
    v41.i64[1] = 0x8000000080000000;
    v22.n128_u64[1] = v70.u64[1];
    v42 = vmlaq_n_f32(vmlaq_n_f32(vsubq_f32(v70, a2), v71, *vbslq_s8(v41, v40, v74).i32), v72, *v69.i32);
    v21.n128_u64[1] = v73.u64[1];
    v23 = vmlaq_f32(v42, 0, v73);
    v43 = vmulq_f32(v23, v23);
    v21.n128_f32[0] = vaddv_f32(*v43.f32) + v43.f32[2];
    *v43.f32 = vrsqrte_f32(v21.n128_u32[0]);
    *v43.f32 = vmul_f32(vrsqrts_f32(v21.n128_u32[0], vmul_f32(*v43.f32, *v43.f32)), *v43.f32);
    v22.n128_u64[0] = vmul_f32(*v43.f32, *v43.f32);
    v21.n128_u64[0] = vrsqrts_f32(v21.n128_u32[0], v22.n128_u64[0]);
    v20 = vmulq_n_f32(v23, vmul_f32(*v43.f32, v21.n128_u64[0]).f32[0]);
    v44 = v80;
    if (v80 >= v81)
    {
      v46 = (v80 - __p) >> 4;
      if ((v46 + 1) >> 60)
      {
        sub_239E797B4();
      }

      v47 = (v81 - __p) >> 3;
      if (v47 <= v46 + 1)
      {
        v47 = v46 + 1;
      }

      if (v81 - __p >= 0x7FFFFFFFFFFFFFF0)
      {
        v48 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v47;
      }

      if (v48)
      {
        sub_239E91AC8(&__p, v48);
      }

      *(16 * v46) = v20;
      v45 = (16 * v46 + 16);
      v49 = (16 * v46 - (v80 - __p));
      memcpy(v49, __p, v80 - __p);
      v50 = __p;
      __p = v49;
      v80 = v45;
      v81 = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v80 = v20;
      v45 = v44 + 16;
    }

    v80 = v45;
    v27 = v28 + 0.104719755;
    v28 = v27;
  }

  while (v27 < 6.28318531);
  v51 = v45 - __p;
  if (v45 != __p)
  {
    v52 = v51 >> 4;
    if ((v51 >> 4) <= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = v51 >> 4;
    }

    v54 = 0uLL;
    v55 = 1;
    v56 = __p;
    do
    {
      v77 = v54;
      v57 = *v56++;
      v75 = *(__p + v55 % v52);
      v58 = vmulq_f32(v75, v57);
      v59.f32[0] = acosf(vaddv_f32(*v58.f32) + v58.f32[2]);
      v60 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), v57)), vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v75);
      v61 = vmulq_f32(v60, v60);
      *&v62 = (v61.f32[2] + v61.f32[0]) + v61.f32[1];
      v63 = vrsqrte_f32(v62);
      v64 = vmul_f32(vrsqrts_f32(v62, vmul_f32(v63, v63)), v63);
      v65 = vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL);
      *v60.f32 = vmul_f32(v64, vrsqrts_f32(v62, vmul_f32(v64, v64)));
      v54 = vmlaq_n_f32(v77, v65, vmulq_f32(v59, v60).f32[0]);
      ++v55;
      --v53;
    }

    while (v53);
    goto LABEL_26;
  }

  v54 = 0uLL;
  if (__p)
  {
LABEL_26:
    v78 = v54;
    v80 = __p;
    operator delete(__p);
    v54 = v78;
  }

  v66 = vmulq_f32(v54, v54);
  return sqrtf(vaddv_f32(*v66.f32) + v66.f32[2]) * v26;
}

void sub_239EEA1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EEA208(uint64_t a1, uint64_t a2, void *a3, CGColor *a4)
{
  v6 = sub_239EE94B8(a1, a3, a4);
  *(v6 + 28) = xmmword_239F9C980;
  *(v6 + 44) = 0x3F00000040000000;
  *v6 = &unk_284D17240;
  sub_239EEAC28(v6 + 56, a2);
  *(a1 + 152) = 1056964608;
  return a1;
}

uint64_t sub_239EEA298(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  a9.n128_u32[0] = *(a1 + 152);
  if (a9.n128_f32[0] == 0.0)
  {
    v28 = *(a1 + 16);

    return objc_msgSend_translation(v28, a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  }

  else
  {
    v13 = arc4random();
    v14.n128_u64[0] = vmla_f32(0xBF000000BF000000, 0x3000000030000000, vcvt_f32_u32(__PAIR64__(arc4random(), v13)));
    v29 = v14;
    v15 = arc4random();
    v16 = v29;
    v16.n128_f32[2] = (v15 * 4.6566e-10) + -0.5;
    v17 = vmulq_f32(v16, v16);
    v16.n128_f32[0] = vaddv_f32(*v17.f32) + v17.f32[2];
    *v17.f32 = vrsqrte_f32(v16.n128_u32[0]);
    *v17.f32 = vmul_f32(vrsqrts_f32(v16.n128_u32[0], vmul_f32(*v17.f32, *v17.f32)), *v17.f32);
    v18.n128_u64[0] = vmul_f32(*v17.f32, *v17.f32);
    v16.n128_u64[0] = vrsqrts_f32(v16.n128_u32[0], v18.n128_u64[0]);
    *v17.f32 = vmul_f32(*v17.f32, v16.n128_u64[0]);
    v16.n128_u32[0] = *(a1 + 152);
    return objc_msgSend_translation(*(a1 + 16), v19, v20, v21, vmulq_f32(v16, v17), v16, v18, v26, v22, v23, v24, v25);
  }
}

unint64_t sub_239EEA388(uint64_t a1, float a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3 <= a2)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 - 4);
    v8 = (v6 - v2) >> 2;
    v4 = v8 - 1;
    if (v7 >= a2)
    {
      if (v8 < 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          if (v2[(v4 + v9) / 2] >= a2)
          {
            v4 = (v4 + v9) / 2;
          }

          else
          {
            v9 = (v4 + v9) / 2;
          }
        }

        while (v4 - v9 > 1);
        v3 = v2[v9];
      }

      v5 = COERCE_UNSIGNED_INT((v2[v4] - a2) / (v2[v4] - v3)) << 32;
      v4 = v9;
    }

    else
    {
      v5 = 0x3F80000000000000;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x3F80000000000000;
  }

  return v5 | v4;
}

float sub_239EEA45C(uint64_t a1, __n128 a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  objc_msgSend_translation(*(a1 + 16), a3, a4, a5, a2, a10, a11, a12, a6, a7, a8, a9);
  v82 = v13;
  v13.n128_u64[0] = 0;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v14, v15, v16, v13, v21, v22, v23, v17, v18, v19, v20);
  v26 = vmlaq_f32(vmulq_f32(v24, 0), 0, v25);
  __asm { FMOV            V1.4S, #-1.0 }

  v33 = vmlaq_f32(vmlaq_f32(v26, _Q1, v31), 0, v32);
  v34 = vmulq_f32(v33, v33);
  v31.f32[0] = vaddv_f32(v34.n128_u64[0]) + v34.n128_f32[2];
  v34.n128_u64[0] = vrsqrte_f32(v31.u32[0]);
  v34.n128_u64[0] = vmul_f32(vrsqrts_f32(v31.u32[0], vmul_f32(v34.n128_u64[0], v34.n128_u64[0])), v34.n128_u64[0]);
  *v32.f32 = vmul_f32(v34.n128_u64[0], v34.n128_u64[0]);
  *v31.f32 = vrsqrts_f32(v31.u32[0], *v32.f32);
  v34.n128_u64[0] = vmul_f32(v34.n128_u64[0], *v31.f32);
  v35 = vmulq_n_f32(v33, v34.n128_f32[0]);
  v81 = v35;
  v35.n128_u64[0] = 0;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v36, v37, v38, v35, v34, v31, v32, v39, v40, v41, v42);
  v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v44, 0, v43), 0, v45), 0, v46);
  v48 = vmulq_f32(v47, v47);
  v45.f32[0] = vaddv_f32(*v48.f32) + v48.f32[2];
  *v48.f32 = vrsqrte_f32(v45.u32[0]);
  *v46.f32 = vmul_f32(vrsqrts_f32(v45.u32[0], vmul_f32(*v48.f32, *v48.f32)), *v48.f32);
  v49 = vsubq_f32(a2, v82);
  v50 = vmulq_f32(v49, v49);
  *&v51 = vaddv_f32(*v50.f32) + v50.f32[2];
  *v50.f32 = vrsqrte_f32(v51);
  *v50.f32 = vmul_f32(vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)), *v50.f32);
  v52 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
  v53 = vmulq_f32(v52, v81);
  v53.f32[0] = vaddv_f32(*v53.f32) + v53.f32[2];
  v54 = vmlsq_lane_f32(v52, v81, *v53.f32, 0);
  v55 = vmulq_f32(v54, v54);
  *&v56 = vaddv_f32(*v55.f32) + v55.f32[2];
  v45.i32[0] = vmul_f32(*v46.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v46.f32, *v46.f32))).u32[0];
  *v46.f32 = vrsqrte_f32(v56);
  *v46.f32 = vmul_f32(vrsqrts_f32(v56, vmul_f32(*v46.f32, *v46.f32)), *v46.f32);
  v57 = vmulq_f32(vmulq_n_f32(vmulq_n_f32(v47, v45.f32[0]), vmul_f32(*v46.f32, vrsqrts_f32(v56, vmul_f32(*v46.f32, *v46.f32))).f32[0]), v54);
  v58 = fminf(fmaxf(vaddv_f32(*v57.f32) + v57.f32[2], -1.0), 1.0);
  v59 = acosf(v53.f32[0]) * 57.2957795;
  v60 = acosf(v58);
  v61 = *(a1 + 64);
  v62 = 0.0;
  _ZF = v59 < 0.0 && *v61 == 0.0;
  v64 = -v59;
  if (!_ZF)
  {
    v64 = v59;
  }

  v66 = sub_239EEA388(a1 + 64, v64);
  if (v66 != -1)
  {
    v67 = v65;
    v69 = *(a1 + 88);
    v68 = *(a1 + 96);
    if (v68 - v69 == 4)
    {
      return (*(*(a1 + 112) + 4 * v66) * *(&v66 + 1)) + (*(*(a1 + 112) + 4 * v65) * *(&v65 + 1));
    }

    else
    {
      v70 = v60 * 57.2957795;
      v71 = (*(a1 + 72) - v61) >> 2;
      if (v70 < 0.0 && *v69 == 0.0)
      {
        v70 = -v70;
      }

      v73 = *(v68 - 4);
      if (v70 > 180.0 && v73 <= 180.0)
      {
        v70 = 360.0 - v70;
      }

      if (v70 > 90.0 && v73 <= 90.0)
      {
        v70 = 180.0 - v70;
      }

      v76 = sub_239EEA388(a1 + 88, v70);
      v77 = *(a1 + 112);
      return (((*(v77 + 4 * (v76 * v71 + v66)) * *(&v66 + 1)) + (*(v77 + 4 * (v76 * v71 + v67)) * *(&v67 + 1))) * *(&v76 + 1)) + (((*(v77 + 4 * (v78 * v71 + v66)) * *(&v66 + 1)) + (*(v77 + 4 * (v78 * v71 + v67)) * *(&v67 + 1))) * v79);
    }
  }

  return v62;
}

CGColorRef sub_239EEA778(uint64_t a1, __n128 a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_translation(*(a1 + 16), a3, a4, a5, a2, a10, a11, a12, a6, a7, a8, a9);
  v23.n128_u32[0] = *(a1 + 40);
  if (v23.n128_f32[0] == 0.0)
  {
    v26 = 1.0;
  }

  else
  {
    v24 = vsubq_f32(a2, v20);
    v25 = vmulq_f32(v24, v24);
    v26 = powf(fminf(fmaxf((v23.n128_f32[0] - sqrtf(vaddv_f32(*v25.f32) + v25.f32[2])) / (v23.n128_f32[0] - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
  }

  v27 = (sub_239EEA45C(a1, a2, v13, v14, v15, v16, v17, v18, v19, v23, v21, v22) * v26) * *(a1 + 140);
  v28 = CGColorGetComponents(*(a1 + 8));
  *components = vmulq_n_f64(*v28, v27);
  v29 = *(v28 + 3);
  v35 = v28[2] * v27;
  v36 = v29;
  ColorSpace = CGColorGetColorSpace(*(a1 + 8));
  v31 = CGColorCreate(ColorSpace, components);
  CFRelease(ColorSpace);
  return v31;
}

CGColorRef sub_239EEA89C(uint64_t a1, CGColorSpace *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  v36 = *MEMORY[0x277D85DE8];
  objc_msgSend_translation(*(a1 + 16), a2, a4, a5, a3, a10, a11, a12, a6, a7, a8, a9);
  v24.n128_u32[0] = *(a1 + 40);
  if (v24.n128_f32[0] == 0.0)
  {
    v27 = 1.0;
  }

  else
  {
    v25 = vsubq_f32(a3, v21);
    v26 = vmulq_f32(v25, v25);
    v27 = powf(fminf(fmaxf((v24.n128_f32[0] - sqrtf(vaddv_f32(*v26.f32) + v26.f32[2])) / (v24.n128_f32[0] - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
  }

  v28 = (sub_239EEA45C(a1, a3, v14, v15, v16, v17, v18, v19, v20, v24, v22, v23) * v27) * *(a1 + 140);
  v29 = CGColorGetComponents(*(a1 + 8));
  *components = vmulq_n_f64(*v29, v28);
  v30 = *(v29 + 3);
  v34 = v29[2] * v28;
  v35 = v30;
  return CGColorCreate(a2, components);
}

double sub_239EEA9AC(uint64_t a1, __n128 a2, __n128 a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __n128 a12)
{
  objc_msgSend_translation(*(a1 + 16), a4, a5, a6, a2, a3, a11, a12, a7, a8, a9, a10);
  v22 = v21;
  v23 = *(a1 + 40);
  if (v23 == 0.0)
  {
    v27 = 1.0;
  }

  else
  {
    v24 = vsubq_f32(a2, v22);
    v25 = vmulq_f32(v24, v24);
    v35 = v22;
    v26 = powf(fminf(fmaxf((v23 - sqrtf(vaddv_f32(*v25.f32) + v25.f32[2])) / (v23 - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
    v22 = v35;
    v27 = v26;
  }

  v28 = vsubq_f32(v22, a2);
  v29 = vmulq_f32(v28, v28);
  *&v30 = vaddv_f32(*v29.f32) + v29.f32[2];
  *v29.f32 = vrsqrte_f32(v30);
  *v29.f32 = vmul_f32(vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)), *v29.f32);
  v20.n128_u64[0] = vmul_f32(*v29.f32, *v29.f32);
  v31 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, v20.n128_u64[0])).f32[0]);
  v32 = vmulq_f32(v31, a3);
  v32.n128_f32[0] = vaddv_f32(v32.n128_u64[0]) + v32.n128_f32[2];
  v31.n128_u64[0] = 0;
  *v33.i32 = ((sub_239EEA45C(a1, a2, v13, v14, v15, v16, v17, v18, v19, v31, v32, v20) * v27) * *(a1 + 140)) * fmaxf(v32.n128_f32[0], 0.0);
  *&result = vdupq_lane_s32(v33, 0).u64[0];
  return result;
}

void sub_239EEAACC(uint64_t a1)
{
  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239EEAB08(uint64_t a1)
{
  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EEAB40(void *a1)
{
  *a1 = &unk_284D17240;
  sub_239EBC240(a1 + 7);

  return sub_239EE9548(a1);
}

void sub_239EEAB94(void *a1)
{
  *a1 = &unk_284D17240;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EEAC28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_239EBD38C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_239EBD38C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239EBD38C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  v4 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v4;
  return a1;
}

void sub_239EEACD0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

MDLPackedJointAnimation *sub_239EEAD04(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, int a2, double a3, double a4)
{
  v202[2] = *MEMORY[0x277D85DE8];
  v201[1] = 0;
  v201[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v201[0] = MEMORY[0x277D86760] + 16;
  __dst[0] = 0;
  __dst[1] = 0;
  v200 = 0;
  sub_239E58260(a1, &v196);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v196);
  if (*(String + 23) < 0)
  {
    sub_239E5BAE0(__dst, *String, *(String + 8));
  }

  else
  {
    v8 = *String;
    v200 = *(String + 16);
    *__dst = v8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v196);
  v191 = objc_opt_new();
  v202[0] = 0;
  v202[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetJointsAttr(&v196, v201);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((BYTE8(v197) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v197 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v197);
  if (*(&v196 + 1))
  {
    sub_239E5E560(*(&v196 + 1));
  }

  if (!sub_239EEB424(v202))
  {
    goto LABEL_47;
  }

  v198 = 0;
  v196 = 0u;
  v197 = 0u;
  v9 = sub_239EEB45C(v202);
  v10 = *(v9 + 16);
  v196 = *v9;
  v197 = v10;
  v11 = *(v9 + 32);
  v198 = v11;
  if (v11)
  {
    v12 = v11 - 2;
    if (*(&v197 + 1))
    {
      v12 = *(&v197 + 1);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  sub_239EEC084(&v196);
  v13 = v198;
  sub_239EEC084(&v196);
  v15 = &v198[v196];
  if (v13 == v15)
  {
LABEL_46:
    sub_239EEBFE4(&v196);
LABEL_47:
    v52 = [MDLPackedJointAnimation alloc];
    if (v200 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, __dst, v47, v53, v54, v55, v56, v48, v49, v50, v51);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, __dst[0], v47, v53, v54, v55, v56, v48, v49, v50, v51);
    }
    v57 = ;
    v67 = objc_msgSend_initWithName_jointPaths_(v52, v58, v57, v191, v63, v64, v65, v66, v59, v60, v61, v62);

    v196 = 0u;
    v197 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetTranslationsAttr(&v196, v201);
    *__p = 0u;
    v195 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetRotationsAttr(__p, v201);
    v192 = 0u;
    v193 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetScalesAttr(&v192, v201);
    objc_msgSend_translations(v67, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
    if (a2)
      v79 = {;
      v80.n128_f64[0] = a3;
      objc_msgSend_resetWithUsdAttribute_timeScale_(v79, v81, &v196, v82, v80, v87, v88, v89, v83, v84, v85, v86);

      v101 = objc_msgSend_rotations(v67, v90, v91, v92, v97, v98, v99, v100, v93, v94, v95, v96);
      v102.n128_f64[0] = a3;
      objc_msgSend_resetWithUsdAttribute_timeScale_(v101, v103, __p, v104, v102, v109, v110, v111, v105, v106, v107, v108);

      v123 = objc_msgSend_scales(v67, v112, v113, v114, v119, v120, v121, v122, v115, v116, v117, v118);
      v124.n128_f64[0] = a3;
      objc_msgSend_resetWithUsdAttribute_timeScale_(v123, v125, &v192, v126, v124, v131, v132, v133, v127, v128, v129, v130);
    }

    else
      v134 = {;
      v135.n128_f64[0] = a3;
      v136.n128_f64[0] = a4;
      objc_msgSend_resetWithUsdAttribute_timeScale_time_(v134, v137, &v196, v138, v135, v136, v143, v144, v139, v140, v141, v142);

      v156 = objc_msgSend_rotations(v67, v145, v146, v147, v152, v153, v154, v155, v148, v149, v150, v151);
      v157.n128_f64[0] = a3;
      v158.n128_f64[0] = a4;
      objc_msgSend_resetWithUsdAttribute_timeScale_time_(v156, v159, __p, v160, v157, v158, v165, v166, v161, v162, v163, v164);

      v123 = objc_msgSend_scales(v67, v167, v168, v169, v174, v175, v176, v177, v170, v171, v172, v173);
      v178.n128_f64[0] = a3;
      v179.n128_f64[0] = a4;
      objc_msgSend_resetWithUsdAttribute_timeScale_time_(v123, v180, &v192, v181, v178, v179, v186, v187, v182, v183, v184, v185);
    }

    v188 = v67;
    if ((BYTE8(v193) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v193 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v193);
    if (*(&v192 + 1))
    {
      sub_239E5E560(*(&v192 + 1));
    }

    if ((BYTE8(v195) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v195 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v195);
    if (__p[1])
    {
      sub_239E5E560(__p[1]);
    }

    if ((BYTE8(v197) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v197 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v197);
    if (*(&v196 + 1))
    {
      sub_239E5E560(*(&v196 + 1));
    }

    goto LABEL_66;
  }

  while (1)
  {
    v16 = *v13;
    if ((*v13 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v195 = 0;
    v17 = v16 & 0xFFFFFFFFFFFFFFF8;
    v18 = (v16 & 0xFFFFFFFFFFFFFFF8) != 0 ? v17 + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
    if (*(v18 + 23) < 0)
    {
      sub_239E5BAE0(__p, *v18, *(v18 + 8));
    }

    else
    {
      v19 = *v18;
      *&v195 = *(v18 + 16);
      *__p = v19;
    }

    v20 = (SBYTE7(v195) & 0x80u) == 0 ? BYTE7(v195) : __p[1];
    if (v20)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      if ((SBYTE7(v195) & 0x80u) == 0)
      {
        v32 = objc_msgSend_initWithUTF8String_(v21, v22, __p, v23, v28, v29, v30, v31, v24, v25, v26, v27);
      }

      else
      {
        v32 = objc_msgSend_initWithUTF8String_(v21, v22, __p[0], v23, v28, v29, v30, v31, v24, v25, v26, v27);
      }

      v43 = v32;
      if (v32)
      {
        objc_msgSend_addObject_(v191, v33, v32, v34, v39, v40, v41, v42, v35, v36, v37, v38);
      }
    }

    else
    {
      if (v17)
      {
        v44 = (v17 + 16);
        if (*(v17 + 39) < 0)
        {
          v44 = *v44;
        }
      }

      else
      {
        v44 = "";
      }

      v45 = __dst;
      if (v200 < 0)
      {
        v45 = __dst[0];
      }

      NSLog(&cfstr_IllegalJointPa.isa, v44, v45);
    }

    if (SBYTE7(v195) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_release);
    }

    if (!v20)
    {
      break;
    }

    if (++v13 == v15)
    {
      goto LABEL_46;
    }
  }

  sub_239EEBFE4(&v196);
  v188 = 0;
LABEL_66:
  sub_239E5B240(v202);

  if (SHIBYTE(v200) < 0)
  {
    operator delete(__dst[0]);
  }

  MEMORY[0x23EE7E930](v201);

  return v188;
}

void sub_239EEB28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EEB424(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17AF8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239EEB45C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239EEB424(a1))
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

    return MEMORY[0x282207DB0](a1, sub_239EEBF28, &stru_284D17AF8);
  }
}

MDLSkeleton *sub_239EEB4F0(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, double a2)
{
  v124[2] = *MEMORY[0x277D85DE8];
  v123[1] = 0;
  v123[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v123[0] = MEMORY[0x277D86720] + 16;
  v4 = *sub_239E5DFB4(a1) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (v4 + 16);
    if (*(v4 + 39) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = "";
  }

  v6 = objc_opt_new();
  v124[0] = 0;
  v124[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetJointsAttr(&v120, v123);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((BYTE8(v121) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v121 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v121);
  if (*(&v120 + 1))
  {
    sub_239E5E560(*(&v120 + 1));
  }

  if (sub_239EEB424(v124))
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    v18 = sub_239EEB45C(v124);
    v19 = *(v18 + 16);
    v120 = *v18;
    v121 = v19;
    v20 = *(v18 + 32);
    v122 = v20;
    if (v20)
    {
      v21 = v20 - 2;
      if (*(&v121 + 1))
      {
        v21 = *(&v121 + 1);
      }

      atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
    }

    sub_239EEC084(&v120);
    v22 = v122;
    sub_239EEC084(&v120);
    for (i = &v122[v120]; v22 != i; ++v22)
    {
      v24 = *v22;
      if ((*v22 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v24 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (!v24)
      {
        NSLog(&cfstr_IllegalJointPa_0.isa, "", v5);
LABEL_44:
        sub_239EEBFE4(&v120);
LABEL_45:
        v116 = 0;
        goto LABEL_46;
      }

      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      v36 = v24 & 0xFFFFFFFFFFFFFFF8;
      if ((v24 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v37 = (v36 + 16);
        if (*(v36 + 39) < 0)
        {
          v38 = objc_msgSend_initWithUTF8String_(v25, v26, *v37, v27, v32, v33, v34, v35, v28, v29, v30, v31);
          goto LABEL_24;
        }
      }

      else
      {
        v37 = "";
      }

      v38 = objc_msgSend_initWithUTF8String_(v25, v26, v37, v27, v32, v33, v34, v35, v28, v29, v30, v31);
LABEL_24:
      v49 = v38;
      if (v38)
      {
        objc_msgSend_addObject_(v6, v39, v38, v40, v45, v46, v47, v48, v41, v42, v43, v44);
      }

      else
      {
        NSLog(&cfstr_IllegalJointPa_1.isa, v5);
      }

      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_release);
      }

      if (!v49)
      {
        goto LABEL_44;
      }
    }

    sub_239EEBFE4(&v120);
  }

  if (!objc_msgSend_count(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13))
  {
    NSLog(&cfstr_NoJointPathsEx.isa, v5);
    goto LABEL_45;
  }

  v50 = [MDLSkeleton alloc];
  v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v5, v52, v57, v58, v59, v60, v53, v54, v55, v56);
  v71 = objc_msgSend_initWithName_jointPaths_(v50, v62, v61, v6, v67, v68, v69, v70, v63, v64, v65, v66);

  v120 = 0u;
  v121 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetBindTransformsAttr(&v120, v123);
  v83 = objc_msgSend_jointBindTransforms(v71, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
  v84.n128_f64[0] = a2;
  objc_msgSend_resetWithUsdAttribute_time_(v83, v85, &v120, v86, v84, v91, v92, v93, v87, v88, v89, v90);

  v118 = 0u;
  v119 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetRestTransformsAttr(&v118, v123);
  v105 = objc_msgSend_jointRestTransforms(v71, v94, v95, v96, v101, v102, v103, v104, v97, v98, v99, v100);
  v106.n128_f64[0] = a2;
  objc_msgSend_resetWithUsdAttribute_time_(v105, v107, &v118, v108, v106, v113, v114, v115, v109, v110, v111, v112);

  v116 = v71;
  if ((BYTE8(v119) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v119 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v119);
  if (*(&v118 + 1))
  {
    sub_239E5E560(*(&v118 + 1));
  }

  if ((BYTE8(v121) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v121 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v121);
  if (*(&v120 + 1))
  {
    sub_239E5E560(*(&v120 + 1));
  }

LABEL_46:
  sub_239E5B240(v124);

  MEMORY[0x23EE7E870](v123);

  return v116;
}

void sub_239EEB8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EEBFE4(va);
  sub_239E5B240(va2);

  MEMORY[0x23EE7E870](va1);
  _Unwind_Resume(a1);
}

void sub_239EEB9F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2, void *a3, void *a4, void *a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a35 = *MEMORY[0x277D85DE8];
  v138 = a3;
  *&v139 = a4;
  *(&v139 + 1) = a5;
  a33 = 0;
  a34 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointsAttr(&a22, a2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((BYTE8(a23) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&a23 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&a23);
  if (*(&a22 + 1))
  {
    sub_239E5E560(*(&a22 + 1));
  }

  if (sub_239EEB424(&a33))
  {
    *&a24 = 0;
    a22 = 0u;
    a23 = 0u;
    v39 = sub_239EEB45C(&a33);
    v40 = *(v39 + 16);
    a22 = *v39;
    a23 = v40;
    v41 = *(v39 + 32);
    *&a24 = v41;
    if (v41)
    {
      v42 = (v41 - 16);
      if (*(&a23 + 1))
      {
        v42 = *(&a23 + 1);
      }

      atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
    }

    v43 = objc_opt_new();
    sub_239EEC084(&a22);
    v44 = a24;
    sub_239EEC084(&a22);
    v45 = (a24 + 8 * a22);
    if (v44 != v45)
    {
      while (1)
      {
        v46 = *v44;
        if ((*v44 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v46 &= 0xFFFFFFFFFFFFFFF8;
        }

        if (!v46)
        {
          sub_239E58260(a1, v140);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v140);
          NSLog(&cfstr_IllegalJointPa_0.isa);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(v140);
          objc_msgSend_removeAllObjects(v43, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
          goto LABEL_26;
        }

        v47 = objc_alloc(MEMORY[0x277CCACA8]);
        v58 = v46 & 0xFFFFFFFFFFFFFFF8;
        if ((v46 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          break;
        }

        v59 = (v58 + 16);
        if ((*(v58 + 39) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        v60 = objc_msgSend_initWithUTF8String_(v47, v48, *v59, v49, v54, v55, v56, v57, v50, v51, v52, v53);
LABEL_20:
        v71 = v60;
        objc_msgSend_addObject_(v43, v61, v60, v62, v67, v68, v69, v70, v63, v64, v65, v66);

        if ((v46 & 7) != 0)
        {
          atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_release);
        }

        if (++v44 == v45)
        {
          goto LABEL_26;
        }
      }

      v59 = "";
LABEL_19:
      v60 = objc_msgSend_initWithUTF8String_(v47, v48, v59, v49, v54, v55, v56, v57, v50, v51, v52, v53);
      goto LABEL_20;
    }

LABEL_26:
    sub_239EEBFE4(&a22);
  }

  else
  {
    v43 = 0;
  }

  a30 = 0u;
  a31 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetGeomBindTransformAttr(&a30, a2);
  v90 = sub_239E5E5B4(&a30);
  if (v139 != 0 || (objc_msgSend_count(v43, v83, v84, v85, v91, v92, v93, v94, v86, v87, v88, v89) != 0) | v90 & 1)
  {
    v95 = objc_opt_new();
    objc_msgSend_setSkeleton_(v95, v96, v139, v97, v102, v103, v104, v105, v98, v99, v100, v101);
    objc_msgSend_setJointAnimation_(v95, v106, *(&v139 + 1), v107, v112, v113, v114, v115, v108, v109, v110, v111);
    a28 = 0u;
    a29 = 0u;
    a26 = 0u;
    a27 = 0u;
    a24 = 0u;
    a25 = 0u;
    a22 = 0u;
    a23 = 0u;
    if (v90)
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
    }

    v124 = *(MEMORY[0x277D860A0] + 16);
    v140[0] = *MEMORY[0x277D860A0];
    v140[1] = v124;
    v125 = *(MEMORY[0x277D860A0] + 48);
    vars0 = *(MEMORY[0x277D860A0] + 32);
    objc_msgSend_setGeometryBindTransform_(v95, v116, v140, v117, vars0, v125, v122, v123, v118, v119, v120, v121);
    if (v43 && objc_msgSend_count(v43, v126, v127, v128, v133, v134, v135, v136, v129, v130, v131, v132))
    {
      objc_msgSend_setJointPaths_(v95, v126, v43, v137, v133, v134, v135, v136, v129, v130, v131, v132);
    }

    objc_msgSend_setComponent_forProtocol_(v138, v126, v95, &unk_284D24710, v133, v134, v135, v136, v129, v130, v131, v132);
  }

  if ((BYTE8(a31) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&a31 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&a31);
  if (*(&a30 + 1))
  {
    sub_239E5E560(*(&a30 + 1));
  }

  sub_239E5B240(&a33);
}

void sub_239EEBE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EEBFE4(&a35);

  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void *sub_239EEBF88(void *result)
{
  if (result)
  {
    sub_239EEBFE4(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239EEBFE4(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = (a1 + 3);
    if (a1[3])
    {
      sub_239F737B4(a1[3], v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v3 = a1[4];
      if (*a1)
      {
        v4 = 8 * *a1;
        do
        {
          if ((*v3 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          ++v3;
          v4 -= 8;
        }

        while (v4);
        v3 = a1[4];
      }

      operator delete(v3 - 2);
    }

    *v2 = 0;
    v2[1] = 0;
  }
}

void sub_239EEC084(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F74464(result, (result + 32));
    }
  }
}

void *sub_239EEC0C8(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  result = sub_239EEC13C(a1, a3);
  if (a4)
  {
    v7 = 8 * a4;
    v8 = result;
    do
    {
      v9 = *a2;
      *v8 = *a2;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++a2;
      ++v8;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void *sub_239EEC13C(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::TfToken]");
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

void sub_239EEC1D4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, double a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v25 = 0;
  v26 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v23 = 0;
  v24 = MEMORY[0x277D86768] + 16;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0;
  memset(&v5[3], 0, 32);
  pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch::GetUVertexCountAttr(v5, v4);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>();
}

void sub_239EED260(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, char *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MEMORY[0x23EE802C0](v50, 0x60C4044C4A2DFLL, a3, a4, a5, a6, a7, a8);
  __cxa_guard_abort(&qword_27DF91288);
  __p = &a26;
  sub_239EED794(&__p);

  sub_239E56C80(&a29);
  sub_239E56C80(&a35);
  sub_239E56C80(&a41);
  sub_239E56C80(va);
  sub_239E56C80(v51 - 224);
  v53 = *(v51 - 168);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(v51 - 160);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E980](v51 - 152);

  _Unwind_Resume(a1);
}

void sub_239EED6A4(uint64_t a1, char *a2)
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
      sub_239E797B4();
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

void sub_239EED794(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EED7E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_239EED7E8(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_239EED8A0(char *a1, uint64_t *a2, char *a3)
{
  v6 = 672;
  v7 = &byte_27DF90A38;
  do
  {
    sub_239E552A0(__p, *(v7 - 2));
    MEMORY[0x23EE80200](&v12);
    v8 = sub_239EED9DC(a1, __p, &v12);
    std::locale::~locale(&v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = *(v7 - 1);
      goto LABEL_10;
    }

    v7 += 24;
    v6 -= 24;
  }

  while (v6);
  sub_239E552A0(__p, qword_27DF90CC8);
  MEMORY[0x23EE80200](&v12);
  v9 = sub_239EED9DC(a1, __p, &v12);
  std::locale::~locale(&v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v9 < 0)
    {
      return 0;
    }

LABEL_8:
    v7 = &byte_27DF90CD8;
    v10 = qword_27DF90CD0;
LABEL_10:
    *a2 = v10;
    *a3 = *v7;
    return 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  return 0;
}

void sub_239EED9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::locale::~locale(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EED9DC(char *a1, char **a2, const std::locale *a3)
{
  v3 = a1;
  v4 = *(a1 + 1);
  if (a1[23] >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  v13 = a3;
  v12 = 0;
  v8 = sub_239EF2D08(a1, &a1[v5], v7, &v7[v6], &v13, &v12, &v12);
  v9 = v3[23];
  if (v9 < 0)
  {
    v10 = v3;
    v3 = *v3;
    v9 = *(v10 + 1);
  }

  if (&v3[v9] == v8)
  {
    return -1;
  }

  else
  {
    return v8 - v3;
  }
}

void sub_239EEDA7C(void *a1, void *a2, void *a3, pxrInternal__aapl__pxrReserved__::UsdShadeInput *a4, float *a5)
{
  v137[2] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a3;
  v137[0] = 0;
  v137[1] = 0;
  if ((pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get() & 1) == 0)
  {
    goto LABEL_49;
  }

  v11 = sub_239E6A188(v137);
  if (v11)
  {
    v12 = 7;
  }

  else
  {
    v12 = 0;
  }

  if (sub_239E6A150(v137))
  {
    v13 = 8;
  }

  else if (sub_239E6A084(v137))
  {
    v13 = 5;
  }

  else
  {
    v14 = sub_239E68724(v137);
    if (v14)
    {
      v13 = 3;
    }

    else
    {
      v13 = v12;
    }

    if (((v14 | v11) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v15 = MEMORY[0x277CCACA8];
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(__dst, a4);
  v26 = __dst[0] & 0xFFFFFFFFFFFFFFF8;
  if ((__dst[0] & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v27 = "";
    goto LABEL_17;
  }

  v27 = (v26 + 16);
  if ((*(v26 + 39) & 0x80000000) == 0)
  {
LABEL_17:
    objc_msgSend_stringWithUTF8String_(v15, v16, v27, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    goto LABEL_18;
  }

  objc_msgSend_stringWithUTF8String_(v15, v16, *v27, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  v34 = LABEL_18:;
  if ((__dst[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__dst[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = objc_msgSend_propertyNamed_(v9, v28, v34, v29, v35, v36, v37, v38, v30, v31, v32, v33);
  v51 = v39;
  if (!v39 || objc_msgSend_semantic(v39, v40, v41, v42, v47, v48, v49, v50, v43, v44, v45, v46) != a2)
  {
    v62 = [MDLMaterialProperty alloc];
    v72 = objc_msgSend_initWithName_semantic_(v62, v63, v34, a2, v68, v69, v70, v71, v64, v65, v66, v67);

    v51 = v72;
  }

  if (v13 <= 4)
  {
    if (v13 == 3)
    {
      memset(v136, 0, 32);
      *__dst = 0u;
      v84 = sub_239E687A8(v137);
      v85 = v84;
      if (*(v84 + 23) < 0)
      {
        sub_239E5BAE0(__dst, *v84, *(v84 + 8));
      }

      else
      {
        v86 = *v84;
        v136[0] = *(v84 + 16);
        *__dst = v86;
      }

      if (*(v85 + 47) < 0)
      {
        sub_239E5BAE0(&v136[1], *(v85 + 24), *(v85 + 32));
      }

      else
      {
        v110 = *(v85 + 24);
        v136[3] = *(v85 + 40);
        *&v136[1] = v110;
      }

      __p[0] = 0;
      __p[1] = 0;
      v134 = 0;
      if (SHIBYTE(v136[3]) < 0)
      {
        sub_239E5BAE0(__p, v136[1], v136[2]);
      }

      else
      {
        *__p = *&v136[1];
        v134 = v136[3];
      }

      sub_239E6883C(a5, __p, __p);
      v111 = objc_alloc(MEMORY[0x277CCACA8]);
      if (SHIBYTE(v134) >= 0)
      {
        v121 = objc_msgSend_initWithCString_encoding_(v111, v112, __p, 4, v117, v118, v119, v120, v113, v114, v115, v116, __p[0], __p[1], v134);
      }

      else
      {
        v121 = objc_msgSend_initWithCString_encoding_(v111, v112, __p[0], 4, v117, v118, v119, v120, v113, v114, v115, v116, __p[0], __p[1], v134);
      }

      v132 = v121;
      objc_msgSend_setStringValue_(v51, v122, v121, v123, v128, v129, v130, v131, v124, v125, v126, v127);

      if (SHIBYTE(v134) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v136[3]) < 0)
      {
        operator delete(v136[1]);
      }

      if (SHIBYTE(v136[0]) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  else if (v13 == 5)
  {
    v87.n128_u32[0] = *sub_239E6A0BC(v137);
    objc_msgSend_setFloatValue_(v51, v88, v89, v90, v87, v95, v96, v97, v91, v92, v93, v94);
  }

  else if (v13 == 7)
  {
    v98 = sub_239EEDF80(v137);
    v99.n128_u64[0] = *v98;
    v99.n128_u32[2] = *(v98 + 8);
    objc_msgSend_setFloat3Value_(v51, v100, v101, v102, v99, v107, v108, v109, v103, v104, v105, v106);
  }

  else
  {
    v73 = sub_239EEDEEC(v137);
    objc_msgSend_setFloat4Value_(v51, v74, v75, v76, *v73, v81, v82, v83, v77, v78, v79, v80);
  }

  objc_msgSend_setProperty_(v9, v52, v51, v53, v58, v59, v60, v61, v54, v55, v56, v57);

LABEL_49:
  sub_239E5B240(v137);
}

void sub_239EEDDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_239EEDEA8(&__p);

  sub_239E5B240(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_239EEDEA8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239EEDEEC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6A150(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86638];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C20);
  }
}

uint64_t sub_239EEDF80(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6A188(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86618];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C50);
  }
}

void sub_239EEE014(uint64_t a1, uint64_t *a2, float64x2_t *a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (v4 - *a2) >> 3;
  if (v6 == *a4)
  {
    v9 = objc_opt_new();
    __p = 0;
    v57 = 0;
    v58 = 0;
    sub_239EF3834(&__p, v6, MEMORY[0x277D860B8]);
    if (v4 != v5)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v6;
      do
      {
        *&v14 = sub_239EED86C((a4[4] + v12));
        v15 = __p + v11;
        *v15 = v14;
        v15[1] = v16;
        v15[2] = v17;
        v15[3] = v18;
        v19 = MEMORY[0x277CCACA8];
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*a2 + v10));
        v31 = objc_msgSend_stringWithUTF8String_(v19, v21, Text, v22, v27, v28, v29, v30, v23, v24, v25, v26);
        objc_msgSend_addObject_(v9, v32, v31, v33, v38, v39, v40, v41, v34, v35, v36, v37);

        v12 += 128;
        v11 += 64;
        v10 += 8;
        --v13;
      }

      while (v13);
    }

    v42 = [MDLSkinDeformer alloc];
    v43 = __p;
    v44.n128_f64[0] = sub_239EED86C(a3);
    v52 = objc_msgSend_initWithJointPaths_jointBindTransforms_count_meshBindTransform_(v42, v45, v9, v43, v44, v49, v50, v51, v6, v46, v47, v48);
    v53 = *(a1 + 96);
    *(a1 + 96) = v52;

    if (__p)
    {
      v57 = __p;
      operator delete(__p);
    }
  }

  else
  {
    NSLog(&cfstr_WarningJointPa.isa);
  }
}

void sub_239EEE188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EEE8E4(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || (*(sub_239EF2C90(v2) + 14) == 1 ? (v4 = *a1 == 0) : (v4 = 1), v4))
  {
    sub_239F74544(v5);
  }
}

_DWORD *sub_239EEE934@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (v4 || (a1 = *(a1 + 8)) != 0)
  {
    sub_239E57FC0(a2, (a1 + 16));
    v5 = a2 + 1;
    v6 = (a1 + 20);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    sub_239E57FC0(a2, v8);
    v5 = a2 + 1;
    v6 = v8 + 1;
  }

  return sub_239E5B49C(v5, v6);
}

void sub_239EEE9B4(uint64_t *a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  sub_239E5B3EC(v4, a1);
  a1[1] = &off_284D15780;
  sub_239EC8A68(a1, a2);
}

void sub_239EEEA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void **sub_239EEEA84(void **a1)
{
  sub_239E5B240((a1 + 5));
  sub_239E5B240((a1 + 3));
  v3 = a1;
  sub_239EF2044(&v3);
  return a1;
}

void sub_239EEEAD4(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = sub_239E6AD14(*(a2 + 8));
  v4 = *(v3 + 16);
  v36 = *v3;
  v37 = v4;
  v5 = *(v3 + 32);
  v38 = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(&v37 + 1))
    {
      v6 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    v33 = v36;
    v34 = v37;
    v35 = v38;
    if (v38)
    {
      v7 = (v38 - 16);
      if (*(&v34 + 1))
      {
        v7 = *(&v34 + 1);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v33 = v36;
    v34 = v37;
    v35 = 0;
  }

  MEMORY[0x23EE7ED20](&v39, "points");
  v8 = v39 ^ a1[7];
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 <= 7)
  {
    v9 = sub_239E6AD14(a1);
    v10 = *(v9 + 16);
    v39 = *v9;
    v40 = v10;
    v11 = *(v9 + 32);
    v41 = v11;
    if (v11)
    {
      v12 = (v11 - 16);
      if (*(&v40 + 1))
      {
        v12 = *(&v40 + 1);
      }

      atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
    }

    v13 = a1[2];
    if (v39 >= v13)
    {
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          sub_239E56C3C(a1 + 2);
          v16 = *(a1[6] + 4 * v15);
          if (v33 > v16)
          {
            sub_239E56B84(&v33);
            v17 = v35;
            sub_239E56B84(&v39);
            v18 = (v17 + 12 * v16);
            v19 = v18[1].f32[0];
            v20 = *v18;
            v21 = *(v41 + v14);
            v22 = *(v41 + v14 + 8);
            sub_239E56B84(&v33);
            v23 = (v35 + 12 * v16);
            *v23 = vadd_f32(v21, v20);
            v23[1].f32[0] = v22 + v19;
          }

          ++v15;
          v14 += 12;
        }

        while (v15 < a1[2]);
      }

      else if (v39 && v33)
      {
        v24 = 0;
        v25 = 1;
        do
        {
          sub_239E56B84(&v33);
          v26 = v35;
          sub_239E56B84(&v39);
          v27 = *(v26 + v24 + 8);
          v28 = *(v26 + v24);
          v29 = *(v41 + v24);
          v30 = *(v41 + v24 + 8);
          sub_239E56B84(&v33);
          v31 = (v35 + v24);
          *v31 = vadd_f32(v29, v28);
          v31[1].f32[0] = v30 + v27;
          if (v25 >= v39)
          {
            break;
          }

          v24 += 12;
        }

        while (v25++ < v33);
      }
    }

    sub_239E56C80(&v39);
  }

  *&v39 = 0;
  *(&v39 + 1) = off_284D15C88;
  sub_239EB5D90(&v39, &v33);
}

void sub_239EEEDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

uint64_t sub_239EEEE1C(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == v4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sub_239EEC084(a2);
      v9 = a2[4];
      sub_239EEC084(a1);
      v8 |= (*(a1[4] + 8 * v7) ^ *(v9 + 8 * v7)) > 7uLL;
      ++v7;
    }

    while (*a2 > v7);
    if (v8)
    {
      v4 = *a1;
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  v15 = 0;
  v16 = &v15;
  sub_239E5AE38(a3, v4, &v16);
  if (*a1)
  {
    v10 = 0;
    do
    {
      sub_239EEC084(a2);
      v11 = a2[4];
      sub_239EEC084(a2);
      v12 = a2[4] + 8 * *a2;
      sub_239EEC084(a1);
      if (v11 != v12)
      {
        while ((*v11 ^ *(a1[4] + 8 * v10)) >= 8)
        {
          if (++v11 == v12)
          {
            v11 = v12;
            break;
          }
        }
      }

      sub_239EEC084(a2);
      if (v11 == (a2[4] + 8 * *a2))
      {
        LODWORD(v13) = -1;
      }

      else
      {
        sub_239EEC084(a2);
        v13 = (v11 - a2[4]) >> 3;
      }

      sub_239E56C3C(a3);
      *(a3[4] + 4 * v10++) = v13;
    }

    while (v10 < *a1);
  }

  return 1;
}

void sub_239EEEFA0(void *a1, uint64_t a2, uint64_t *a3, float a4)
{
  v17 = a1;
  if (*a3)
  {
    v5 = 0;
    do
    {
      sub_239E56C3C(a3);
      if (*(a3[4] + 4 * v5) >= 1)
      {
        objc_msgSend_elementCount(v17, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
        operator new[]();
      }

      ++v5;
    }

    while (v5 < *a3);
  }
}

void sub_239EEF1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EEF20C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, void *a3, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4, double *a5, double a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v39 = 0u;
  v40 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v38[2] = 0;
  v37 = MEMORY[0x277D86780] + 16;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetBlendShapesAttr(&v39, &v37);
  MEMORY[0x23EE7E9E0](&v37);
  if (sub_239E5E5B4(&v39))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
  }

  if ((BYTE8(v40) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v40);
  if (*(&v39 + 1))
  {
    sub_239E5E560(*(&v39 + 1));
  }

  v8 = *a3;
  v7 = a3[1];
  if (*&v31[0] == (v7 - *a3) >> 3)
  {
    if (v8 == v7)
    {
LABEL_55:
      *&v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_239EEE9B4(&v44 + 1, &v39);
    }

    while (1)
    {
      v30 = 0;
      sub_239E57FC0(&v30, v8);
      sub_239E5B49C(&v30 + 1, v8 + 1);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v37, a2);
      sub_239EEE8E4(&v37);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v39, v9, &v30);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v27 = MEMORY[0x277D86788] + 16;
      if ((BYTE8(v40) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239F744DC(&v40, &v39 + 1, v38);
      memset(v26, 0, sizeof(v26));
      sub_239E5815C(&v39, &v28, &v29);
      v10 = sub_239E5DFB4(&v39);
      sub_239E5BA20(v26, v10);
      if ((BYTE8(v40) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v40);
      if (*(&v39 + 1))
      {
        sub_239E5E560(*(&v39 + 1));
      }

      if (v28 && (*(v28 + 57) & 8) == 0 && ((*(v27 + 32))(&v27) & 1) != 0)
      {
        v24 = 0u;
        v25 = 0u;
        pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetOffsetsAttr(&v24, &v27);
        if (sub_239E5E5B4(&v24))
        {
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
        }

        v16 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v16)
        {
          v17 = (v16 + 16);
          if (*(v16 + 39) < 0)
          {
            v17 = *v17;
          }
        }

        else
        {
          v17 = "";
        }

        sub_239E5815C(&v39, &v28, &v29);
        v18 = *sub_239E5DFB4(&v39) & 0xFFFFFFFFFFFFFFF8;
        if (v18)
        {
          v19 = (v18 + 16);
          if (*(v18 + 39) < 0)
          {
            v19 = *v19;
          }
        }

        else
        {
          v19 = "";
        }

        NSLog(&cfstr_WarningSSkippi_5.isa, v17, v19);
        if ((BYTE8(v40) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v40);
        if (*(&v39 + 1))
        {
          sub_239E5E560(*(&v39 + 1));
        }

        if ((BYTE8(v25) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v25 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v25);
        v15 = *(&v24 + 1);
        if (!*(&v24 + 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v11 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v11)
        {
          v12 = (v11 + 16);
          if (*(v11 + 39) < 0)
          {
            v12 = *v12;
          }
        }

        else
        {
          v12 = "";
        }

        sub_239E5815C(&v39, &v28, &v29);
        v13 = *sub_239E5DFB4(&v39) & 0xFFFFFFFFFFFFFFF8;
        if (v13)
        {
          v14 = (v13 + 16);
          if (*(v13 + 39) < 0)
          {
            v14 = *v14;
          }
        }

        else
        {
          v14 = "";
        }

        NSLog(&cfstr_WarningSSkippi_5.isa, v12, v14);
        if ((BYTE8(v40) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v40);
        v15 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          goto LABEL_32;
        }
      }

      sub_239E5E560(v15);
LABEL_32:
      *&v39 = v26 + 8;
      sub_239EC8004(&v39);
      if ((v26[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE7E9F0](&v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v30);
      v8 += 2;
      if (v8 == v7)
      {
        goto LABEL_55;
      }
    }
  }

  v20 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v20)
  {
    v21 = (v20 + 16);
    if (*(v20 + 39) < 0)
    {
      v21 = *v21;
    }
  }

  else
  {
    v21 = "";
  }

  NSLog(&cfstr_WarningSMismat.isa, v21);
  sub_239EEBFE4(v31);
  sub_239E56C80(v33);
  sub_239E56C80(v35);

  sub_239E5B240(&v44 + 8);
  sub_239E5B240(&v43 + 8);
  *&v39 = &v42;
  sub_239EF2044(&v39);
}

void sub_239EF00DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_239E797CC(a1);
}

uint64_t sub_239EF04B0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239EF406C(a1, a2);
  }

  else
  {
    sub_239EF3FC8(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239EF04F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

uint64_t sub_239EF054C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

std::type_info *sub_239EF05A8(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((sub_239EC9710(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v4, &stru_284D17A50, v1, v2);
    v1 = sub_239EC8B1C(v1, v4);
    sub_239E5B240(v4);
  }

  return v1;
}

uint64_t sub_239EF0634(uint64_t a1, __int128 *a2)
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

uint64_t sub_239EF06E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

uint64_t sub_239EF0744(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

double sub_239EF07A0(float *a1, void *a2, void *a3)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetScale();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *a1;
  v8 = 0;
  v9 = 0;
  v10 = 0x3FF0000000000000;
  v11 = v4;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotate();
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTranslate();
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
  memset(v7, 0, sizeof(v7));
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
  v5 = 0;
  memset(v20, 0, sizeof(v20));
  do
  {
    v20[v5] = v7[v5];
    ++v5;
  }

  while (v5 != 4);
  return *v20;
}

void sub_239EF08BC(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, void *a2, uint64_t a3, double *a4)
{
  v5 = a2;
  v65 = 0u;
  v66 = 0u;
  MEMORY[0x23EE7ED20](&v63, "rotation");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v65, a1, &v63);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = 0u;
  v64 = 0u;
  MEMORY[0x23EE7ED20](&v61, "scale");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v63, a1, &v61);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = 0u;
  v62 = 0u;
  MEMORY[0x23EE7ED20](&v56, "translation");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v61, a1, &v56);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = 0;
  if (sub_239E5E5B4(&v65) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
  }

  v59 = 0x3F8000003F800000;
  if (sub_239E5E5B4(&v63) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>();
  }

  v58 = 0;
  if (sub_239E5E5B4(&v61) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>();
  }

  v6.n128_f64[0] = sub_239EF07A0(&v60, &v59, &v58);
  v45 = v7;
  v46 = v6;
  v43 = v9;
  v44 = v8;
  sub_239E681C0(v5);
  v10 = [MDLTransform alloc];
  v18 = objc_msgSend_initWithMatrix_(v10, v11, v12, v13, v46, v45, v44, v43, v14, v15, v16, v17);
  v30 = objc_msgSend_textureSamplerValue(v5, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  objc_msgSend_setTransform_(v30, v31, v18, v32, v37, v38, v39, v40, v33, v34, v35, v36);

  v56 = 0u;
  v57 = 0u;
  MEMORY[0x23EE7ED20](&v54, "in");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v56, a1, &v54);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
  {
    v54 = 0u;
    v55 = 0u;
    LODWORD(v50) = 1;
    v51 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v53 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *(&v55 + 1) = 0;
    *&v54 = MEMORY[0x277D867A8] + 16;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v52);
    v49 = 0;
    v48 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
    v41 = sub_239E5815C(&v50, &v54 + 1, &v55);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v41);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if ((v53 & 7) != 0)
    {
      atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v52);
    if (v51)
    {
      sub_239E5E560(v51);
    }

    if (IsA)
    {
      v47[1] = 0;
      v47[2] = 0;
      sub_239E5815C(&v50, &v54 + 1, &v55);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v47[0] = MEMORY[0x277D86708] + 16;
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v52);
      if (v51)
      {
        sub_239E5E560(v51);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v50, v47);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    MEMORY[0x23EE7EB40](&v54);
  }

  if ((BYTE8(v57) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v57 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v57);
  if (*(&v56 + 1))
  {
    sub_239E5E560(*(&v56 + 1));
  }

  if ((BYTE8(v62) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v62 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v62);
  if (*(&v61 + 1))
  {
    sub_239E5E560(*(&v61 + 1));
  }

  if ((BYTE8(v64) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v64 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v64);
  if (*(&v63 + 1))
  {
    sub_239E5E560(*(&v63 + 1));
  }

  if ((BYTE8(v66) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v66 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v66);
  if (*(&v65 + 1))
  {
    sub_239E5E560(*(&v65 + 1));
  }
}

void sub_239EF0E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E820](&a18, a2, a3, a4, a5, a6, a7, a8);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](&a27);
  sub_239EF06E8(&a31);
  sub_239EF06E8(v32 - 160);
  sub_239EF06E8(v32 - 128);
  sub_239EF06E8(v32 - 96);

  _Unwind_Resume(a1);
}

void sub_239EF1014(void *a1, uint64_t a2, __n128 a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v16 = v4;
  if (*(a2 + 72) && (v17 = objc_msgSend_semantic(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11), v17 <= 0xD) && ((1 << v17) & 0x2209) != 0)
  {
    *components = vcvtq_f64_f32(a3.n128_u64[0]);
    v41 = a3.n128_f32[2];
    v42 = 0x3FF0000000000000;
    v18 = CGColorCreate(*(a2 + 72), components);
    objc_msgSend_setColor_(v16, v19, v18, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    objc_msgSend_setType_(v16, v29, 4, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    CFRelease(v18);
  }

  else
  {
    objc_msgSend_setFloat3Value_(v16, v5, v6, v7, a3, v13, v14, v15, v8, v9, v10, v11, *&a3);
  }
}

void sub_239EF1120(void *a1, uint64_t a2, float32x4_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v16 = v4;
  if (*(a2 + 72) && (v17 = objc_msgSend_semantic(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11), v17 <= 0xD) && ((1 << v17) & 0x2209) != 0)
  {
    *components = vcvtq_f64_f32(*a3.f32);
    v41 = vcvt_hight_f64_f32(a3);
    v18 = CGColorCreate(*(a2 + 72), components);
    objc_msgSend_setColor_(v16, v19, v18, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    objc_msgSend_setType_(v16, v29, 4, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    CFRelease(v18);
  }

  else
  {
    objc_msgSend_setFloat4Value_(v16, v5, v6, v7, a3, v13, v14, v15, v8, v9, v10, v11, *&a3);
  }
}

MDLMaterial *sub_239EF121C(_DWORD *a1, void *a2, pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a3, float *a4)
{
  v52 = a2;
  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(&v58, a3);
  v50 = a1;
  v7 = v59;
  if (v58 != v59)
  {
    v8 = 0;
    v9 = v58 + 16;
    do
    {
      v56 = 0u;
      v57 = 0u;
      v10 = v9 - 16;
      LODWORD(v56) = *(v9 - 16);
      v11 = *(v9 - 8);
      *(&v56 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
      }

      sub_239E57FC0(&v57, v9);
      sub_239E5B49C(&v57 + 1, (v9 + 4));
      v12 = *(v9 + 8);
      *(&v57 + 1) = v12;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(&v57 + 1) &= 0xFFFFFFFFFFFFFFF8;
      }

      v55 = 0x8000;
      v54 = 0;
      BaseName = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v53, &v56);
      if ((v53 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v53 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
      }

      v15 = sub_239EED8A0(EmptyString, &v55, &v54);
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v15)
      {
        v8 = (v54 | v8) != 0;
      }

      if ((BYTE8(v57) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v57 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v57);
      if (*(&v56 + 1))
      {
        sub_239E5E560(*(&v56 + 1));
      }

      v9 += 32;
    }

    while (v10 + 32 != v7);
  }

  v16 = MEMORY[0x277CCACA8];
  v23 = *sub_239E5DFB4(v50) & 0xFFFFFFFFFFFFFFF8;
  if (v23)
  {
    v28 = (v23 + 16);
    if (*(v23 + 39) < 0)
    {
      objc_msgSend_stringWithUTF8String_(v16, v17, *v28, v18, v24, v25, v26, v27, v19, v20, v21, v22);
      goto LABEL_25;
    }
  }

  else
  {
    v28 = "";
  }

  objc_msgSend_stringWithUTF8String_(v16, v17, v28, v18, v24, v25, v26, v27, v19, v20, v21, v22);
  v51 = LABEL_25:;
  v29 = [MDLMaterial alloc];
  v30 = objc_opt_new();
  v40 = objc_msgSend_initWithName_scatteringFunction_(v29, v31, v51, v30, v36, v37, v38, v39, v32, v33, v34, v35);

  v41 = v59;
  if (v59 != v58)
  {
    v42 = v58 + 16;
    do
    {
      v56 = 0u;
      v57 = 0u;
      v43 = v42 - 16;
      LODWORD(v56) = *(v42 - 16);
      v44 = *(v42 - 8);
      *(&v56 + 1) = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 48), 1uLL, memory_order_relaxed);
      }

      sub_239E57FC0(&v57, v42);
      sub_239E5B49C(&v57 + 1, (v42 + 4));
      v45 = *(v42 + 8);
      *(&v57 + 1) = v45;
      if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(&v57 + 1) &= 0xFFFFFFFFFFFFFFF8;
      }

      v55 = 0x8000;
      v54 = 0;
      v46 = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v53, &v56);
      if ((v53 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v47 = ((v53 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v47 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v46);
      }

      v48 = sub_239EED8A0(v47, &v55, &v54);
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v48)
      {
        sub_239EEDA7C(v40, v55, v52, &v56, a4);
      }

      if ((BYTE8(v57) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v57 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v57);
      if (*(&v56 + 1))
      {
        sub_239E5E560(*(&v56 + 1));
      }

      v42 += 32;
    }

    while (v43 + 32 != v41);
  }

  *&v56 = &v58;
  sub_239E61AB0(&v56);

  return v40;
}

void sub_239EF15E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a15 = &a20;
  sub_239E61AB0(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_239EF16D8(uint64_t a1, uint64_t a2)
{
  sub_239EF4454(&v6, a2 + 96, *(a1 + 8), a2);
  sub_239EF210C(a1, v4);
  return a2;
}

void sub_239EF1724(void *a2@<X1>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3@<X2>, uint64_t a6@<X8>)
{
  v9 = a2;
  v12[1] = 0;
  v12[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v12[0] = MEMORY[0x277D866A8] + 16;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 288) = 0u;
  *(a6 + 304) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 0u;
  *(a6 + 384) = 0u;
  *(a6 + 400) = 0u;
  *(a6 + 416) = 0u;
  *(a6 + 432) = 0u;
  *(a6 + 448) = 0u;
  v10 = sub_239E5DFB4(a3);
  sub_239E5BA20(a6, v10);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetSubdivisionSchemeAttr(&v11, v12);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void sub_239EF1B04(void *a1, uint64_t a2, void *a3, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4, uint64_t a5, void *a6, double a7)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a3;
  v13 = a6;
  v14 = *(a2 + 64);
  *(a2 + 26) = 1;
  memset(v15, 0, sizeof(v15));
  sub_239EF1724(v12, a4, v15);
}

void sub_239EF1F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((a34 & 7) != 0)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E550](&a35, a2, a3, a4, a5, a6, a7, a8);
  sub_239EF2A80(&a39);

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_239EF1FFC(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 a3)
{
  if (a2)
  {
    if (a2 != result)
    {
      v3 = a2 - 1;
      if (a2 - 1 > result)
      {
        while (*v3 != a3)
        {
          if (--v3 == result)
          {
            goto LABEL_8;
          }
        }

        result = v3;
      }
    }

LABEL_8:
    ++result;
  }

  return result;
}

void sub_239EF2044(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EF2098(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239EF2098(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    v7 = (i - 24);
    sub_239EC8004(&v7);
    v6 = *(i - 32);
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_239EF210C(uint64_t result, void *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_239E63168(v3, i))
  {
    i -= 12;
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_239EF2160(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (a2[1])
    {
      v7 = 0;
      v8 = 0;
      sub_239E5B3EC(&v7, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      if (v8)
      {
        (*(v8 + 32))(&v7);
      }
    }

    else
    {
      sub_239F745EC(a1);
    }
  }

  return a1;
}

void sub_239EF2230(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF2270(uint64_t *a1, void **a2, void **a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_239EF238C(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_239EF23CC(a1, v11);
    }

    sub_239E797B4();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    sub_239EF25FC(&v15, a2, a3, v8);
    sub_239EF2098(a1, v13);
  }

  else
  {
    sub_239EF25FC(&v14, a2, (a2 + v12), v8);
    a1[1] = sub_239EF2408(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_239EF238C(uint64_t *a1)
{
  if (*a1)
  {
    sub_239EF2098(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_239EF23CC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_239EF28B4(a1, a2);
  }

  sub_239E797B4();
}

uint64_t *sub_239EF2408(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_239EF24B0(a1, v4, v6);
      v6 += 4;
      v4 = (v12 + 32);
      v12 += 32;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_239EF2540(v9);
  return v4;
}

uint64_t *sub_239EF24B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  return sub_239EC7E90(a2 + 1, a3[1], a3[2], 0xAAAAAAAAAAAAAAABLL * ((a3[2] - a3[1]) >> 5));
}

uint64_t sub_239EF2540(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EF258C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_239EF258C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v11[5] = v5;
    v11[6] = v6;
    v8 = a3;
    do
    {
      v11[0] = (v8 - 24);
      sub_239EC8004(v11);
      v10 = *(v8 - 32);
      v8 -= 32;
      v9 = v10;
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v8 != a5);
  }
}

void **sub_239EF25FC(uint64_t a1, void **a2, void **a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_239E5BA20(a4, v5);
      if (v5 != a4)
      {
        sub_239EF2684(a4 + 1, v5[1], v5[2], 0xAAAAAAAAAAAAAAABLL * ((v5[2] - v5[1]) >> 5));
      }

      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_239EF2684(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_239EF27D0(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_239EC7F18(a1, v10);
    }

    sub_239E797B4();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_239EF2810(&v15, a2, a3, v8);
    return sub_239EF210C(a1, v13);
  }

  else
  {
    sub_239EF2810(&v14, a2, a2 + v11, v8);
    result = sub_239EC7F64(a1, a2 + v11, a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

void sub_239EF27D0(void **a1)
{
  if (*a1)
  {
    sub_239EF210C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_239EF2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_239EF2160(a4, v5);
    sub_239EB3650(a4 + 16, (v5 + 16));
    sub_239E5BA20((a4 + 56), (v5 + 56));
    sub_239E5BA20((a4 + 64), (v5 + 64));
    *(a4 + 72) = *(v5 + 72);
    sub_239E5BA20((a4 + 80), (v5 + 80));
    *(a4 + 88) = *(v5 + 88);
    a4 += 96;
    v5 += 96;
  }

  while (v5 != v6);
  return v6;
}

void sub_239EF28B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EF28FC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17670);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239EF2934(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239EF28FC(a1))
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

    return MEMORY[0x282207DB0](a1, sub_239EF29C8, &stru_284D17670);
  }
}

uint64_t sub_239EF2A24(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EF2A80(uint64_t a1)
{
  v4 = (a1 + 440);
  sub_239EF2B94(&v4);
  sub_239E56C80(a1 + 400);
  sub_239E56C80(a1 + 360);
  sub_239E56C80(a1 + 320);
  sub_239E56C80(a1 + 280);
  sub_239E56C80(a1 + 240);
  v2 = *(a1 + 232);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(a1 + 192);
  sub_239E56C80(a1 + 152);
  sub_239E56C80(a1 + 112);

  sub_239E5B240(a1 + 72);
  sub_239E5B240(a1 + 56);
  v4 = (a1 + 32);
  sub_239EF2044(&v4);
  v4 = (a1 + 8);
  sub_239EC8004(&v4);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_239EF2B94(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_239EF2C1C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_239EF2C50(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_239E5B574(a2);
}

uint64_t sub_239EF2C90(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_239EF1FFC("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return sub_239EF2D08(v3, v4, v5, v6);
  }

  return result;
}

char *sub_239EF2D08(char *result, uint64_t a2, char *a3, char *a4, const std::locale **a5, uint64_t a6, uint64_t a7)
{
  if (a4 != a3)
  {
    if (a2 - result >= a4 - a3)
    {
      return sub_239EF2D4C(result, a2, a3, a4, a5, a6, a7, a2 - result, a4 - a3);
    }

    else
    {
      return a2;
    }
  }

  return result;
}

char *sub_239EF2D4C(char *a1, uint64_t a2, char *a3, char *a4, const std::locale **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a1[a8 - a9 + 1];
  if (v10 != a1)
  {
    v14 = a1;
    v15 = a3 + 1;
    while (!sub_239EF2E14(a5, *v14, *a3))
    {
LABEL_7:
      if (++v14 == v10)
      {
        return a2;
      }
    }

    v16 = v14 + 1;
    v17 = v15;
    while (v17 != a4)
    {
      v19 = *v16++;
      v18 = v19;
      v20 = *v17++;
      if (!sub_239EF2E14(a5, v18, v20))
      {
        goto LABEL_7;
      }
    }

    return v14;
  }

  return a2;
}

BOOL sub_239EF2E14(const std::locale **a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D82680];
  v7 = std::locale::use_facet(*a1, MEMORY[0x277D82680]);
  LODWORD(a2) = (v7->__vftable[1].~facet)(v7, a2);
  v8 = std::locale::use_facet(*a1, v6);
  return a2 == (v8->__vftable[1].~facet)(v8, a3);
}

uint64_t sub_239EF2F8C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(*(result + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239EF2FF8(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t sub_239EF3070(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_239EF3168(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_239EF3214(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_239EF32D4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_239EF3390(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EF3468(uint64_t a1)
{
  v40 = (a1 + 304);
  sub_239E878AC(&v40);
  v2 = *(a1 + 296);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 288);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 280);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 272);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 264);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 256);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 248);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 240);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 232);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 224);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 216);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 208);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 200);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 192);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 184);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 176);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 168);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 160);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 152);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 144);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 136);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 128);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 120);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 112);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 104);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 96);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 88);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 80);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 72);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 64);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 56);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 48);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 40);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 32);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 24);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 16);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 8);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t *sub_239EF3834(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_239EF38C0(a1, a2);
  }

  return a1;
}

void sub_239EF38A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF38C0(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_239EF38FC(a1, a2);
  }

  sub_239E797B4();
}

void sub_239EF38FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EF3944(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_239EF28B4(a1, v7);
  }

  v16 = 0;
  v17 = 32 * v2;
  sub_239EF24B0(a1, (32 * v2), a2);
  v18 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = (32 * v2 + *a1 - v8);
  sub_239EF3A58(a1, *a1, v8, v9, v10, v11);
  v12 = *a1;
  *a1 = v9;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239EF3B80(&v16);
  return v15;
}

void sub_239EF3A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239EF3B80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239EF3A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a4;
  v9 = a4;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = &v10;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 8);
      a4[3] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v10 = a4;
  }

  v8[3] = 1;
  sub_239EF3B0C(a1, a2, a3);
  return sub_239EF2540(v8);
}

void sub_239EF3B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v7[5] = v3;
    v7[6] = v4;
    v6 = a2;
    do
    {
      v7[0] = (v6 + 8);
      sub_239EC8004(v7);
      if ((*v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t sub_239EF3B80(uint64_t a1)
{
  sub_239EF3BB8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239EF3BB8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v6 = (i - 24);
    sub_239EC8004(&v6);
    v5 = *(i - 32);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

uint64_t *sub_239EF3C34(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239EF3C54(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239EF3DF8(a1);
}

unint64_t sub_239EF3C6C(uint64_t *a1)
{
  v1 = *a1;
  v3[1] = 1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v3, *(v1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

void sub_239EF3DE0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D15780;
  sub_239EC8A68(a2, v2);
}

uint64_t *sub_239EF3DF8(uint64_t *result)
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

uint64_t sub_239EF3E70(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EC89EC();
  }

  return *a1;
}

void sub_239EF3EF0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EF3F44(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_239EF3F44(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t *sub_239EF3FC8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *v3 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  result = sub_239EC7E90(v3 + 1, a2[1], a2[2], 0xAAAAAAAAAAAAAAABLL * ((a2[2] - a2[1]) >> 5));
  *(a1 + 8) = v3 + 4;
  return result;
}

uint64_t sub_239EF406C(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    sub_239EF28B4(a1, v7);
  }

  v8 = (32 * v2);
  v18 = 0;
  v19 = v8;
  v20 = v8;
  v9 = *a2;
  *v8 = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  sub_239EC7E90(v8 + 1, a2[1], a2[2], 0xAAAAAAAAAAAAAAABLL * ((a2[2] - a2[1]) >> 5));
  *&v20 = v20 + 32;
  v10 = a1[1];
  v11 = (v19 + *a1 - v10);
  sub_239EF3A58(a1, *a1, v10, v11, v12, v13);
  v14 = *a1;
  *a1 = v11;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_239EF3B80(&v18);
  return v17;
}

void sub_239EF41B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239EF3B80(va);
  _Unwind_Resume(a1);
}

void sub_239EF41E4(uint64_t *result, _DWORD *a2)
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
    sub_239F746A0();
    goto LABEL_13;
  }

  sub_239F74634();
}

void *sub_239EF42E4(void *result)
{
  if (result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EF4318(uint64_t a1, uint64_t *a2, uint64_t a3)
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

id sub_239EF4398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v4 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v4;
  v5 = *(a3 + 40);
  *(a2 + 40) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 32))
    {
      v6 = *(a2 + 32);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  result = *(a3 + 48);
  *(a2 + 48) = result;
  return result;
}

void sub_239EF4400(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_239EF2C1C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_239EF4454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    sub_239EC8B1C((a4 + v7), (a2 + v7));
    if (a4 == a2)
    {
      *(v8 + 72) = *(v9 + 72);
    }

    else
    {
      sub_239E56C80(v8 + 16);
      v10 = *(v9 + 32);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = v10;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v8 + 48) = *(v9 + 48);
      *(v9 + 48) = 0;
      v11 = *(v8 + 56);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v8 + 56) = *(v9 + 56);
      *(v9 + 56) = 0;
      v12 = (a4 + v7);
      v13 = *(a4 + v7 + 64);
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = a2 + v7;
      v12[8] = *(a2 + v7 + 64);
      *(a2 + v7 + 64) = 0;
      v12[9] = *(a2 + v7 + 72);
      v15 = v12[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12[10] = *(v14 + 80);
      *(v14 + 80) = 0;
    }

    *(v8 + 88) = *(v9 + 88);
    v7 += 96;
  }

  while (v9 + 96 != v6);
  return v6;
}

void sub_239EF459C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  if (a2[2])
  {
    operator new();
  }

  v13 = a1[9];
  v14 = a1[10];
  if (v13 != v14)
  {
    a9.n128_u64[0] = 0x7F0000007FLL;
    v15 = vneg_f32(0x7F0000007FLL);
    do
    {
      v45 = *v13;
      sub_239F372BC(v45, a9);
      sub_239F37070(v45);
      sub_239F37C10(v45);
      a9.n128_u64[0] = vcge_s32((v45[4] & 0x7FFFFFFF7FFFFFFFLL), v15);
      if ((a9.n128_u32[0] | a9.n128_u32[1]))
      {
        sub_239E9BFD8((a1 + 12), &v45);
      }

      ++v13;
    }

    while (v13 != v14);
  }

  v16 = a1[12];
  v17 = a1[13];
  if (v16 != v17)
  {
    v18 = a1[10];
    do
    {
      v19 = a1[9];
      if (v19 != v18)
      {
        v20 = a1[9];
        while (*v20 != *v16)
        {
          v20 += 8;
          v19 += 8;
          if (v20 == v18)
          {
            v19 = v18;
            break;
          }
        }
      }

      a2 = v19 + 8;
      v21 = v18 - (v19 + 8);
      if (v18 != v19 + 8)
      {
        memmove(v19, a2, v18 - (v19 + 8));
      }

      v18 = &v19[v21];
      a1[10] = &v19[v21];
      ++v16;
    }

    while (v16 != v17);
  }

  v22 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  v34 = objc_msgSend_completedUnitCount(v22, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  objc_msgSend_setCompletedUnitCount_(v22, v35, v34 + 6, v36, v41, v42, v43, v44, v37, v38, v39, v40);
}

void *sub_239EF4794(void *a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_239EFAD80(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_239E9876C(v10);
}

void sub_239EF484C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E9876C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239EF4860(uint64_t result)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = *(result + 96);
  v24 = *(result + 104);
  if (v1 != v24)
  {
    v2 = result;
    do
    {
      v4 = **v1;
      v3 = (*v1)[1];
      v25 = v1;
      v26 = v3;
      while (v4 != v3)
      {
        v5 = *v4;
        memset(v33, 0, 32);
        sub_239EC3484(v33);
        v31 = 0u;
        v32 = 0u;
        sub_239EC3480(&v31, v5[4], v5[5]);
        v29 = 0u;
        v30 = 0u;
        sub_239EC3480(&v29, v5[5], v5[6]);
        v27 = 0u;
        v28 = 0u;
        sub_239EC3480(&v27, v5[6], v5[4]);
        v6 = sub_239EC34E0(&v31);
        if (v6 < sub_239EC34E0(&v29))
        {
          v8 = v31;
          v7 = v32;
          v31 = v29;
          v32 = v30;
          v29 = v8;
          v30 = v7;
        }

        v9 = sub_239EC34E0(&v31);
        if (v9 < sub_239EC34E0(&v27))
        {
          v11 = v31;
          v10 = v32;
          v31 = v27;
          v32 = v28;
          v27 = v11;
          v28 = v10;
        }

        v12 = sub_239EC34E0(&v29);
        if (v12 < sub_239EC34E0(&v27))
        {
          v14 = v29;
          v13 = v30;
          v29 = v27;
          v30 = v28;
          v27 = v14;
          v28 = v13;
        }

        v15 = 0;
        v46[0] = v31;
        v46[1] = v32;
        v46[2] = v29;
        v46[3] = v30;
        v46[4] = v27;
        v46[5] = v28;
        while (1)
        {
          result = sub_239EC3C28(v5, (v2 + 120), v46[v15], v46[v15 + 1]);
          if (result)
          {
            break;
          }

          v15 += 2;
          if (v15 == 6)
          {
            goto LABEL_21;
          }
        }

        v16 = 0;
        v17 = v5[5];
        v40 = v5[4];
        v41 = v5 + 1;
        v42 = v17;
        v43 = &v5[1].i8[8];
        v44 = v5[6];
        v45 = v5 + 2;
        do
        {
          v18 = 0;
          v19 = *(&v40 + v16 + 16);
          *v19 = *(result + 16);
          v20 = *(result + 80);
          v34 = *(result + 64);
          v21 = *(&v40 + v16);
          v35 = result + 16;
          v36 = v20;
          v37 = result + 24;
          v38 = *(result + 96);
          v39 = result + 32;
          do
          {
            v22 = vsubq_f32(*(&v34 + v18), v21);
            v23 = vmulq_f32(v22, v22);
            if (sqrtf(vaddv_f32(*v23.f32) + v23.f32[2]) < 0.000001)
            {
              *v19 = **(&v34 + v18 + 16);
            }

            v18 += 32;
          }

          while (v18 != 96);
          v16 += 32;
        }

        while (v16 != 96);
LABEL_21:
        ++v4;
        v3 = v26;
      }

      v1 = v25 + 1;
    }

    while (v25 + 1 != v24);
  }

  return result;
}

uint64_t sub_239EF4B0C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2 == a2)
  {
    goto LABEL_11;
  }

  v4 = 0;
  do
  {
    v5 = v2[2];
    v24 = *(v5 + 64);
    v22 = *(v5 + 80);
    v23 = *(v5 + 96);
    sub_239EC3D28(v5);
    v6 = vsubq_f32(v22, v24);
    v7 = vmulq_f32(v6, v6);
    *&v8 = vaddv_f32(*v7.f32) + v7.f32[2];
    *v7.f32 = vrsqrte_f32(v8);
    *v7.f32 = vmul_f32(vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)), *v7.f32);
    v7.i32[0] = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).u32[0];
    v9 = vsubq_f32(v23, v24);
    v10 = vmulq_f32(v9, v9);
    *&v11 = vaddv_f32(*v10.f32) + v10.f32[2];
    *v10.f32 = vrsqrte_f32(v11);
    *v10.f32 = vmul_f32(vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)), *v10.f32);
    v12 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(v9, v6), v7.f32[0]), vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    if (fabsf(vaddv_f32(*v12.f32) + v12.f32[2]) == 1.0 || sub_239EC361C(v5) < 0.000001)
    {
      v13 = *v2;
      v14 = v2[1];
      *(v13 + 8) = v14;
      *v14 = v13;
      --a2[2];
      operator delete(v2);
      v4 = (v4 + 1);
    }

    else
    {
      v14 = v2[1];
    }

    v2 = v14;
  }

  while (v14 != a2);
  if (!v4)
  {
LABEL_11:
    v16 = MEMORY[0x277D82678];
    v17 = "No bad triangles found.";
    v18 = 23;
  }

  else
  {
    v15 = sub_239E98B94(MEMORY[0x277D82678], "Removed ", 8);
    v16 = MEMORY[0x23EE80140](v15, v4);
    v17 = " bad triangles";
    v18 = 14;
  }

  v19 = sub_239E98B94(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v25);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_239EF4D4C@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = a1[1];
  if (v4 != a1)
  {
    do
    {
      v12 = v4[2];
      v5 = sub_239EFADF4(v15, v12);
      v6 = v12;
      v18 = v12;
      if (v5)
      {
        v7 = sub_239EFAEF0(v15, v12, &unk_239F9BFF0, &v18, &v17);
        v12[16].i64[1] = v7[18].i64[0];
        sub_239E9CEF0(v13, &v12, &v12);
        sub_239E9BFD8(a2, &v12);
      }

      else
      {
        sub_239EFAEF0(v15, v12, &unk_239F9BFF0, &v18, &v17)[18].i64[0] = v6;
      }

      v4 = v4[1];
    }

    while (v4 != a1);
    v4 = a1[1];
  }

  if (v4 != a1)
  {
    do
    {
      v8 = sub_239E9F610(v13, v4 + 2);
      v9 = v4[1];
      if (v8)
      {
        v10 = *v4;
        *(v10 + 8) = v9;
        *v9 = v10;
        --a1[2];
        operator delete(v4);
      }

      v4 = v9;
    }

    while (v9 != a1);
  }

  sub_239E7B644(v13);
  return sub_239E7B644(v15);
}

void sub_239EF4EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  sub_239E7B644(va);
  sub_239E7B644(va1);
  _Unwind_Resume(a1);
}

void sub_239EF4EDC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = 126 - 2 * __clz((v3->i64 - v2) >> 3);
  v32 = sub_239EF5118;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_239E9E154(v2, v3, &v32, v5, 1);
  v6 = *(*(a1 + 72) + (((*(a1 + 80) - *(a1 + 72)) >> 1) & 0xFFFFFFFFFFFFFFF8));
  v7 = sub_239F37B70(v6);
  v8 = sub_239F37BB8(v6);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = 0;
    v13 = v8 * (1.0 / v7);
    __asm { FMOV            V10.2S, #1.0 }

    v19 = vneg_f32(0x7F0000007FLL);
    do
    {
      v31 = *(v9 + 8 * v12);
      v20 = sub_239F37B70(v31);
      v22 = v20 / sub_239F37BB8(v31);
      if (v12 > v11 >> 3)
      {
        v22 = sqrtf(sub_239F37B70(*(*(a1 + 72) + v11)) / v20) * v22;
      }

      *v21.i32 = sqrtf(v13 * v22);
      sub_239F37014(v31, vdup_lane_s32(v21, 0));
      v23 = v31;
      v31[8] = _D10;
      v24 = vcge_s32((v23[4] & 0x7FFFFFFF7FFFFFFFLL), v19);
      if ((v24.i32[0] | v24.i32[1]))
      {
        sub_239E9BFD8(&v32, &v31);
      }

      ++v12;
      v9 = *(a1 + 72);
    }

    while (v12 < (*(a1 + 80) - v9) >> 3);
    v25 = v32;
    v26 = v33;
    if (v32 != v33)
    {
      do
      {
        v31 = *v25;
        sub_239E9BFD8(a1 + 96, &v31);
        v28 = *(a1 + 72);
        v27 = *(a1 + 80);
        if (v28 != v27)
        {
          v29 = *(a1 + 72);
          while (*v29 != v31)
          {
            ++v29;
            ++v28;
            if (v29 == v27)
            {
              v28 = *(a1 + 80);
              break;
            }
          }
        }

        v30 = (v27 - (v28 + 1));
        if (v27 != v28 + 1)
        {
          memmove(v28, v28 + 1, v27 - (v28 + 1));
        }

        *(a1 + 80) = &v30[v28];
        ++v25;
      }

      while (v25 != v26);
      v25 = v32;
    }

    if (v25)
    {
      v33 = v25;
      operator delete(v25);
    }
  }
}

void sub_239EF50F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_239EF5158(float32x4_t ***a1, float a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0.0;
  while (v3 != v4)
  {
    v6 = *v3;
    sub_239EC361C(*v3);
    v5 = sub_239EC361C(v6) + v5;
    ++v3;
  }

  return sqrtf(v5 / ((dword_27DF912CC * dword_27DF912CC) * a2));
}

void sub_239EF51E0(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>, __n128 a5@<Q0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_239EFB1FC(a4, a1);
  if ((atomic_load_explicit(byte_27DF91298, memory_order_acquire) & 1) == 0)
  {
    sub_239F74714();
  }

  if ((atomic_load_explicit(byte_27DF912A0, memory_order_acquire) & 1) == 0)
  {
    sub_239F74760();
  }

  v9 = sqrt(a1);
  if (v9)
  {
    v10 = 0;
    v11 = a5;
    v11.n128_u32[3] = 0;
    v40 = v11;
    v12 = dword_27DF91290;
    v13 = *&dword_27DF91294 * 4.6566e-10;
    if ((v9 * v9) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (v9 * v9);
    }

    v15 = 1.0 / v9;
    do
    {
      if (a3)
      {
        v16 = 48271 * (v12 % 0xADC8);
        v17 = 3399 * (v12 / 0xADC8);
        v18 = v16 >= v17;
        v19 = v16 - v17;
        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0x7FFFFFFF;
        }

        v21 = v20 + v19;
        v22 = (v21 - 1);
        v23 = v21 / 0xADC8;
        v24 = 48271 * (v21 % 0xADC8);
        v23 *= 3399;
        v18 = v24 >= v23;
        v25 = v24 - v23;
        if (v18)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0x7FFFFFFF;
        }

        v12 = v26 + v25;
        dword_27DF91290 = v26 + v25;
        v27 = (v10 % v9) + (v13 * v22);
        v28 = (v10 / v9) + (v13 * (v26 + v25 - 1));
      }

      else
      {
        v27 = (v10 % v9) + 0.5;
        v28 = (v10 / v9) + 0.5;
      }

      v29 = (v27 * v15) * 6.28318531;
      v30 = acosf(((v28 + v28) * v15) + -1.0);
      v31 = __sincosf_stret(v30);
      v32 = __sincosf_stret(v29);
      v33.f32[0] = v32.__cosval * v31.__sinval;
      v33.f32[1] = v32.__sinval * v31.__sinval;
      v33.i64[1] = LODWORD(v31.__cosval);
      v34 = vmulq_f32(v33, v33);
      *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v34.i32[0] = vadd_f32(*v34.i8, vdup_lane_s32(*v34.i8, 1)).u32[0];
      v35 = vrsqrte_f32(v34.u32[0]);
      v36 = vmul_f32(vrsqrts_f32(v34.u32[0], vmul_f32(v35, v35)), v35);
      v37 = vmulq_n_f32(v33, vmul_f32(v36, vrsqrts_f32(v34.u32[0], vmul_f32(v36, v36))).f32[0]);
      if (a2)
      {
        v38 = vmulq_f32(v37, v40);
        if (vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL))) < 0.0)
        {
          v37 = vnegq_f32(v37);
        }
      }

      *(*a4 + 16 * v10++) = v37;
    }

    while (v14 != v10);
  }
}

float sub_239EF5468(double a1, __n128 a2, float a3, uint64_t a4, uint64_t **a5, int a6, int a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v8 = 1.0;
  if (a3 <= 1.0)
  {
    v8 = a3;
  }

  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = sqrt(a6);
  v11 = v10 * v10;
  sub_239EF51E0(v11, 1, a7, &v25, a2);
  v12 = v25;
  v13 = v26;
  if (v25 != v26)
  {
    v24 = v11;
    __asm { FMOV            V10.2S, #1.0 }

    do
    {
      v20 = *a5;
      v19 = a5[1];
      while (v20 != v19)
      {
        v21 = *v20;
        v22 = v20[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = 0u;
        v32 = 0u;
        v33 = 0u;
        v28 = 0u;
        LODWORD(v28) = 2139095039;
        v35 = 0uLL;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        *&v32 = 0;
        sub_239E879CC(v21);
        if (v32 && *&v28 < ((v9 * -50.0) + 50.5))
        {
          ++v27;
          if (v22)
          {
            sub_239E9A9B4(v22);
          }

          break;
        }

        if (v22)
        {
          sub_239E9A9B4(v22);
        }

        v20 += 2;
      }

      v12 += 16;
    }

    while (v12 != v13);
    v12 = v25;
    v11 = v24;
  }

  if (v12)
  {
    v26 = v12;
    operator delete(v12);
  }

  return 1.0 - powf(1.0 - ((v11 - v27) / v11), (v9 * 2.0) + 1.0);
}

double sub_239EF56F4(uint64_t **a1, uint64_t **a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float32x4_t a11, __n128 a12)
{
  v35 = a4;
  v12 = *a1;
  v34 = a1[1];
  if (*a1 != v34)
  {
    v41 = a3;
    v39 = vdupq_n_s32(0xB8D1B717);
    __asm { FMOV            V10.2S, #1.0 }

    a3.n128_u64[1] = 0;
    v38 = 0u;
    while (1)
    {
      v37 = v12;
      v42 = *v12;
      v18 = *(*v12 + 24);
      a3.n128_u64[0] = 0;
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          a3.n128_f32[0] = sub_239EF5468(v41.n128_f64[0], v35, 0.15, a1, a2, 121, 1);
          goto LABEL_28;
        }

        if (v18 == 3)
        {
LABEL_17:
          v26 = 0;
          for (i = 0; i != 60; ++i)
          {
            a3.n128_f64[0] = (*(*v42 + 32))(v42, a3);
            v29 = *a2;
            v28 = a2[1];
            if (*a2 != v28)
            {
              do
              {
                v30 = *v29;
                v31 = v29[1];
                if (v31)
                {
                  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_239E879CC(v30);
                a3.n128_u32[0] = 2139095039;
                if (v31)
                {
                  sub_239E9A9B4(v31);
                }

                v29 += 2;
              }

              while (v29 != v28);
            }

            ++v26;
          }

          v25 = v26;
          goto LABEL_26;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_17;
        }

        if (v18 == 1)
        {
          v19 = 0;
          for (j = 0; j != 60; ++j)
          {
            a3.n128_u32[0] = 1028443341;
            a3.n128_f64[0] = sub_239EE97A8(v42, a3, a2, a5, a6, a7, a8, a9, a10, a4, a11, a12);
            a4 = vnegq_f32(a3);
            a12 = v39;
            a11 = vmlaq_f32(v41, v39, a3);
            a3.n128_u64[0] = vdiv_f32(_D10, a4.n128_u64[0]);
            a4.n128_f32[0] = 1.0 / a4.n128_f32[2];
            a11.i32[0] = a3.n128_i32[1];
            a3.n128_f32[2] = 1.0 / a4.n128_f32[2];
            v21 = *a2;
            v22 = a2[1];
            if (*a2 != v22)
            {
              do
              {
                v23 = *v21;
                v24 = v21[1];
                if (v24)
                {
                  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_239E879CC(v23);
                a4.n128_u32[0] = 1148846080;
                if (v24)
                {
                  sub_239E9A9B4(v24);
                }

                v21 += 2;
              }

              while (v21 != v22);
            }

            ++v19;
          }

          v25 = v19;
LABEL_26:
          a3.n128_f32[0] = v25 * 0.016667;
        }
      }

LABEL_28:
      v36 = a3;
      a3.n128_f64[0] = (*(*v42 + 40))(v42, v41, v35);
      a11 = v36;
      a4 = vmlaq_n_f32(v38, a3, v36.n128_f32[0]);
      v38 = a4;
      v12 = v37 + 1;
      if (v37 + 1 == v34)
      {
        goto LABEL_31;
      }
    }
  }

  v38 = 0u;
LABEL_31:
  v32 = v38;
  v32.i32[3] = 0;
  *&result = vminnmq_f32(v32, xmmword_239F9BA10).u64[0];
  return result;
}

void sub_239EF5BA8(void *a1@<X0>, void *a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>)
{
  v324 = *MEMORY[0x277D85DE8];
  v294 = a1;
  v18 = objc_msgSend_transform(v294, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v293 = v18;
  if (v18)
  {
    objc_msgSend_matrix(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v30 = 0;
    *__p = v31;
    v315 = v32;
    v316 = v33;
    v317 = v34;
    v320 = 0u;
    v321 = 0u;
    v322 = 0u;
    v323 = 0u;
    do
    {
      *(&v320 + v30 * 8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*&__p[v30])), a4, __p[v30], 1), a5, *&__p[v30], 2), a6, *&__p[v30], 3);
      v30 += 2;
    }

    while (v30 != 8);
    a4 = v321;
    a3 = v320;
    a6 = v323;
    a5 = v322;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v292 = v294;
    if (objc_msgSend_makeVerticesUniqueAndReturnError_(v292, v46, 0, v47, v52, v53, v54, v55, v48, v49, v50, v51))
    {
      v65 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v292, v56, @"position", 786435, v61, v62, v63, v64, v57, v58, v59, v60);
      v312 = 0u;
      v313 = 0u;
      v310 = 0u;
      v311 = 0u;
      obj = objc_msgSend_submeshes(v292, v66, v67, v68, 0, v73, v74, v75, v69, v70, v71, v72);
      v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, &v310, v319, v80, v81, v82, v83, 16, v77, v78, v79);
      if (!v297)
      {
        goto LABEL_27;
      }

      v296 = *v311;
      v300 = a2;
      while (1)
      {
        for (i = 0; i != v297; ++i)
        {
          if (*v311 != v296)
          {
            objc_enumerationMutation(obj);
          }

          v95 = *(*(&v310 + 1) + 8 * i);
          v96 = objc_msgSend_indexBuffer(v95, v84, v85, v86, v91, v92, v93, v94, v87, v88, v89, v90);
          v298 = objc_msgSend_map(v96, v97, v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);

          v301 = objc_msgSend_bytes(v298, v108, v109, v110, v115, v116, v117, v118, v111, v112, v113, v114);
          __p[0] = 0;
          __p[1] = 0;
          *&v315 = 0;
          if (objc_msgSend_geometryType(v95, v119, v120, v121, v126, v127, v128, v129, v122, v123, v124, v125) != 2 || objc_msgSend_indexType(v95, v130, v131, v132, v137, v138, v139, v140, v133, v134, v135, v136) != 32)
          {
            v141 = objc_msgSend_indexCount(v95, v130, v131, v132, v137, v138, v139, v140, v133, v134, v135, v136);
            sub_239EB2474(__p, v141);
            if (objc_msgSend_geometryType(v95, v142, v143, v144, v149, v150, v151, v152, v145, v146, v147, v148) != 5)
            {
              goto LABEL_18;
            }

            v164 = objc_msgSend_topology(v95, v153, v154, v155, v160, v161, v162, v163, v156, v157, v158, v159);
            if (!v164)
            {
              v238 = 0;
              v203 = 0;
              goto LABEL_20;
            }

            v165 = objc_msgSend_topology(v95, v153, v154, v155, v160, v161, v162, v163, v156, v157, v158, v159);
            v177 = objc_msgSend_faceTopology(v165, v166, v167, v168, v173, v174, v175, v176, v169, v170, v171, v172);
            v178 = v177 == 0;

            if (v178)
            {
LABEL_18:
              v238 = 0;
              v203 = 0;
              v164 = 0;
            }

            else
            {
              v179 = objc_msgSend_topology(v95, v153, v154, v155, v160, v161, v162, v163, v156, v157, v158, v159);
              v191 = objc_msgSend_faceTopology(v179, v180, v181, v182, v187, v188, v189, v190, v183, v184, v185, v186);
              v203 = objc_msgSend_map(v191, v192, v193, v194, v199, v200, v201, v202, v195, v196, v197, v198);

              v164 = objc_msgSend_bytes(v203, v204, v205, v206, v211, v212, v213, v214, v207, v208, v209, v210);
              v226 = objc_msgSend_topology(v95, v215, v216, v217, v222, v223, v224, v225, v218, v219, v220, v221);
              v238 = objc_msgSend_faceCount(v226, v227, v228, v229, v234, v235, v236, v237, v230, v231, v232, v233);
            }

LABEL_20:
            v239 = objc_msgSend_indexCount(v95, v153, v154, v155, v160, v161, v162, v163, v156, v157, v158, v159);
            v251 = objc_msgSend_indexType(v95, v240, v241, v242, v247, v248, v249, v250, v243, v244, v245, v246);
            v263 = objc_msgSend_geometryType(v95, v252, v253, v254, v259, v260, v261, v262, v255, v256, v257, v258);
            sub_239F5960C(__p, v301, v239, v164, v238, v251, v263, 2);
          }

          if (objc_msgSend_indexCount(v95, v130, v131, v132, v137, v138, v139, v140, v133, v134, v135, v136))
          {
            operator new();
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          a2 = v300;
        }

        v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v310, v319, v91, v92, v93, v94, 16, v88, v89, v90);
        if (!v297)
        {
LABEL_27:

          goto LABEL_28;
        }
      }
    }
  }

  else
  {
LABEL_28:
    v264 = objc_msgSend_children(v294, v35, v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
    v265 = v264;
    if (v264)
    {
      v308 = 0u;
      v309 = 0u;
      v306 = 0u;
      v307 = 0u;
      v266 = v264;
      v275 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v267, &v306, v318, v271, v272, v273, v274, 16, v268, v269, v270);
      if (v275)
      {
        v276 = *v307;
        do
        {
          for (j = 0; j != v275; ++j)
          {
            if (*v307 != v276)
            {
              objc_enumerationMutation(v266);
            }

            v278 = *(*(&v306 + 1) + 8 * j);
            v320 = 0uLL;
            v321.i64[0] = 0;
            sub_239EF5BA8(v278, &v320, a3, a4, a5, a6);
            v279 = v321.i64[0];
            if (v321.i64[0])
            {
              v280 = v320;
              v281 = *(v320.i64[0] + 8);
              v282 = *v320.i64[1];
              *(v282 + 8) = v281;
              *v281 = v282;
              v283 = *a2;
              *(v283 + 8) = v280.i64[1];
              *v280.i64[1] = v283;
              *a2 = v280.i64[0];
              *(v280.i64[0] + 8) = a2;
              a2[2] += v279;
              v321.i64[0] = 0;
            }

            sub_239E9876C(&v320);
          }

          v275 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v284, &v306, v318, v288, v289, v290, v291, 16, v285, v286, v287);
        }

        while (v275);
      }
    }
  }
}

void sub_239EF61F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  sub_239E9876C(v45);

  _Unwind_Resume(a1);
}

uint64_t sub_239EF6350(float32x4_t ***a1)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  if (*a1 != a1[1])
  {
    v2 = **a1 + 4;
    sub_239EFB2F4(v3, v2, &unk_239F9BFF0, &v2);
    operator new();
  }

  return sub_239EFB274(v3);
}

void sub_239EF6770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_239EFB274(va);
  _Unwind_Resume(a1);
}

void *sub_239EF67A8@<X0>(void *a1@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>)
{
  if (!a3[2])
  {
    v83 = "No triangles to map";
LABEL_10:
    result = sub_239E552A0(a4 + 1, v83);
    *a4 = 0;
    return result;
  }

  for (i = a3[1]; i != a3; i = *(i + 8))
  {
    v98 = *(i + 16);
    *&v96[0].__locale_ = 0u;
    v97 = 0u;
    sub_239EC3480(v96, v98[4], v98[5]);
    memset(v95, 0, sizeof(v95));
    sub_239EC3480(v95, v98[4], v98[6]);
    memset(v94, 0, sizeof(v94));
    sub_239EC3480(v94, v98[5], v98[6]);
    v99[0] = v96;
    v18 = sub_239EFB670(a1 + 15, v96, &unk_239F9BFF0, v99);
    sub_239E9BFD8(&v18[3], &v98);
    v99[0] = v95;
    v19 = sub_239EFB670(a1 + 15, v95, &unk_239F9BFF0, v99);
    sub_239E9BFD8(&v19[3], &v98);
    v99[0] = v94;
    v20 = sub_239EFB670(a1 + 15, v94, &unk_239F9BFF0, v99);
    sub_239E9BFD8(&v20[3], &v98);
  }

  sub_239EF459C(a1, a3, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  if (a1[10] == a1[9])
  {
    v83 = "Unable to pack a map for AO baking";
    goto LABEL_10;
  }

  sub_239EF4EDC(a1);
  sub_239EF4860(a1);
  if (*a2 <= 4096)
  {
    __asm { FMOV            V0.2S, #1.0 }

    sub_239EC2CF0(*a2);
    operator new();
  }

  v32 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v44 = objc_msgSend_completedUnitCount(v32, v33, v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);
  objc_msgSend_setCompletedUnitCount_(v32, v45, v44 + 4, v46, v51, v52, v53, v54, v47, v48, v49, v50);

  v55 = sub_239E98B94(MEMORY[0x277D82678], "Fraction completed : ", 21);
  v67 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v56, v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
  objc_msgSend_fractionCompleted(v67, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
  v79 = MEMORY[0x23EE80120](v55);
  std::ios_base::getloc((v79 + *(*v79 - 24)));
  v80 = std::locale::use_facet(v96, MEMORY[0x277D82680]);
  (v80->__vftable[2].~facet_0)(v80, 10);
  std::locale::~locale(v96);
  std::ostream::put();
  std::ostream::flush();

  if (*a2 <= 4096)
  {
    sub_239F3804C(0, v81);
    *&v89 = sub_239F37FFC(0);
    sub_239F37ED4(0, v89, v90, v91, v92, v93);
    *a4 = 0;
    return sub_239E552A0(a4 + 1, "");
  }

  else
  {
    result = sub_239E552A0(a4 + 1, "Too many triangles to pack in a maximum size texture");
    *a4 = 0;
  }

  return result;
}

void sub_239EF6F44(void *a1, void *a2, void *a3, void *a4, int ***a5, uint64_t a6)
{
  v285 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v264 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  v26 = v11;
  v267 = v26;
  if (v12)
  {
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v38 = objc_msgSend_submeshes(v26, v27, v28, v29, 0, v35, v36, v37, v30, v31, v32, v33);
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v279, v284, v43, v44, v45, v46, 16, v40, v41, v42);
    if (v54)
    {
      v59 = *v280;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v280 != v59)
          {
            objc_enumerationMutation(v38);
          }

          v61 = objc_msgSend_material(*(*(&v279 + 1) + 8 * i), v47, v48, v49, v55, v56, v57, v58, v50, v51, v52, v53);
          objc_msgSend_setProperty_(v61, v62, v12, v63, v68, v69, v70, v71, v64, v65, v66, v67);
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v47, &v279, v284, v55, v56, v57, v58, 16, v51, v52, v53);
      }

      while (v54);
    }

    v26 = v267;
  }

  v72 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v26, v27, v14, v29, v34, v35, v36, v37, v30, v31, v32, v33);
  v84 = v72;
  if (v72)
  {
    if (objc_msgSend_format(v72, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79) == 786435)
    {
      v85 = 1;
      v86 = a6;
      goto LABEL_23;
    }

    v87 = objc_msgSend_format(v84, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    v97 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v267, v88, v14, v87, v93, v94, v95, v96, v89, v90, v91, v92);

    v85 = v87 == 0;
    v84 = v97;
  }

  else
  {
    v85 = 1;
  }

  if (v84)
  {
    v86 = a6;
  }

  else
  {
    v86 = 0;
  }

  if (!v84 && a6)
  {
    objc_msgSend_addAttributeWithName_format_(v267, v73, v14, 786435, v80, v81, v82, v83, v76, v77, v78, v79);
    v84 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v267, v98, v14, 786435, v103, v104, v105, v106, v99, v100, v101, v102);
    v86 = 1;
  }

  if (v84)
  {
LABEL_23:
    v108 = objc_msgSend_format(v84, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79) & 0x1F;
    if (!v108)
    {
      goto LABEL_36;
    }

    v109 = objc_msgSend_format(v84, v73, v107, v75, v80, v81, v82, v83, v76, v77, v78, v79) & 0xFFFF0000;
    if (v109 >= 720896)
    {
      if (v109 == 720896)
      {
        memset(__p, 0, sizeof(__p));
        sub_239EC4064(__p, *a5, a5[1], a5[1] - *a5);
        sub_239EF7A40(v84, __p, v267, v108, sub_239F5E8F8);
        v110 = __p[0];
        if (!__p[0])
        {
          goto LABEL_36;
        }

        v111 = __p;
        goto LABEL_35;
      }

      if (v109 == 786432)
      {
        memset(v278, 0, sizeof(v278));
        sub_239EC4064(v278, *a5, a5[1], a5[1] - *a5);
        sub_239EF7728(v84, v278, v267, v108, nullsub_10);
        v110 = v278[0];
        if (v278[0])
        {
          v111 = v278;
          goto LABEL_35;
        }
      }
    }

    else if (v109 == 0x10000 || v109 == 196608)
    {
      memset(v276, 0, sizeof(v276));
      sub_239EC4064(v276, *a5, a5[1], a5[1] - *a5);
      sub_239EF7D58(v84, v276, v267, v108, sub_239EF6F2C);
      v110 = v276[0];
      if (v276[0])
      {
        v111 = v276;
LABEL_35:
        v111[1] = v110;
        operator delete(v110);
      }
    }

LABEL_36:
    if (!v85)
    {
      objc_msgSend_updateAttributeNamed_withData_(v267, v73, v14, v84, v80, v81, v82, v83, v76, v77, v78, v79);
    }
  }

  v112 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v267, v73, v13, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  v124 = v112;
  if (!v112)
  {
    v260 = 1;
    goto LABEL_43;
  }

  if (objc_msgSend_format(v112, v113, v114, v115, v120, v121, v122, v123, v116, v117, v118, v119) != 786434)
  {
    v125 = objc_msgSend_format(v124, v113, v114, v115, v120, v121, v122, v123, v116, v117, v118, v119);
    v135 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v267, v126, v13, 786434, v131, v132, v133, v134, v127, v128, v129, v130);

    v260 = v125 == 0;
    v124 = v135;
LABEL_43:
    if (v124)
    {
      v136 = 1;
    }

    else
    {
      v136 = v86;
    }

    if ((v136 & 1) == 0)
    {
      objc_msgSend_addAttributeWithName_format_(v267, v113, v13, 786434, v120, v121, v122, v123, v116, v117, v118, v119);
      v124 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v267, v137, v13, 786434, v142, v143, v144, v145, v138, v139, v140, v141);
    }

    goto LABEL_48;
  }

  v260 = 1;
LABEL_48:
  v263 = v124;
  v146 = objc_msgSend_bufferSize(v124, v113, v114, v115, v120, v121, v122, v123, v116, v117, v118, v119);
  v262 = objc_msgSend_stride(v124, v147, v148, v149, v154, v155, v156, v157, v150, v151, v152, v153);
  if (v124)
  {
    v259 = v84;
    v169 = *a5;
    v265 = a5[1];
    if (*a5 != v265)
    {
      v165 = vdupq_n_s32(v146);
      v261 = v165;
      do
      {
        v266 = v169;
        v170 = *v169;
        v171 = (*v169)[1];
        v172 = **v169;
        v173 = (*v169)[2];
        if (objc_msgSend_vertexCount(v267, v158, v159, v160, v165, v166, v167, v168, v161, v162, v163, v164, v259) > v172)
        {
          v174 = v170[1];
          if (objc_msgSend_vertexCount(v267, v158, v159, v160, v165, v166, v167, v168, v161, v162, v163, v164) > v174)
          {
            v175 = v170[2];
            if (objc_msgSend_vertexCount(v267, v158, v159, v160, v165, v166, v167, v168, v161, v162, v163, v164) > v175)
            {
              v165.n128_u32[0] = v172 * v262;
              v165.n128_u32[1] = v171 * v262;
              v165.n128_u32[2] = v173 * v262;
              v166 = v261;
              v165 = vcgeq_s32(v165, v261);
              v165.n128_u32[3] = v165.n128_u32[2];
              v165.n128_u32[0] = vmaxvq_u32(v165);
              if ((v165.n128_u32[0] & 0x80000000) == 0)
              {
                v176 = objc_msgSend_dataStart(v263, v158, v159, v160, v165, v261, v167, v168, v161, v162, v163, v164);
                v188 = (v176 + objc_msgSend_stride(v263, v177, v178, v179, v184, v185, v186, v187, v180, v181, v182, v183) * *v170);
                v189.n128_u64[0] = *(v170 + 2);
                *v188 = v189.n128_u32[0];
                v189.n128_u32[0] = v170[5];
                v188[1] = v189.n128_u32[0];
                v200 = objc_msgSend_dataStart(v263, v190, v191, v192, v189, v197, v198, v199, v193, v194, v195, v196);
                v212 = (v200 + objc_msgSend_stride(v263, v201, v202, v203, v208, v209, v210, v211, v204, v205, v206, v207) * v170[1]);
                v213.n128_u64[0] = *(v170 + 3);
                *v212 = v213.n128_u32[0];
                v213.n128_u32[0] = v170[7];
                v212[1] = v213.n128_u32[0];
                v224 = objc_msgSend_dataStart(v263, v214, v215, v216, v213, v221, v222, v223, v217, v218, v219, v220);
                v236 = (v224 + objc_msgSend_stride(v263, v225, v226, v227, v232, v233, v234, v235, v228, v229, v230, v231) * v170[2]);
                v165.n128_u64[0] = *(v170 + 4);
                *v236 = v165.n128_u32[0];
                v165.n128_u32[0] = v170[9];
                v236[1] = v165.n128_u32[0];
              }
            }
          }
        }

        v169 = v266 + 1;
      }

      while (v266 + 1 != v265);
    }

    v84 = v259;
    v124 = v263;
    if (!v260)
    {
      objc_msgSend_updateAttributeNamed_withData_(v267, v158, v13, v263, v165, v166, v167, v168, v161, v162, v163, v164);
    }
  }

LABEL_60:
  v237 = objc_msgSend_children(v264, v15, v16, v17, v22, v23, v24, v25, v18, v19, v20, v21, v259);
  if (v237)
  {
    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v268 = v237;
    v238 = v237;
    v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(v238, v239, &v272, v283, v243, v244, v245, v246, 16, v240, v241, v242);
    if (v247)
    {
      v248 = *v273;
      do
      {
        for (j = 0; j != v247; ++j)
        {
          if (*v273 != v248)
          {
            objc_enumerationMutation(v238);
          }

          v250 = *(*(&v272 + 1) + 8 * j);
          v270 = 0;
          v271 = 0;
          v269 = 0;
          sub_239EC4064(&v269, *a5, a5[1], a5[1] - *a5);
          sub_239EF6F44(v250, v12, v13, v14, &v269, a6);
          if (v269)
          {
            v270 = v269;
            operator delete(v269);
          }
        }

        v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(v238, v251, &v272, v283, v255, v256, v257, v258, 16, v252, v253, v254);
      }

      while (v247);
    }

    v237 = v268;
  }
}

void sub_239EF760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EF7728(void *a1, int ***a2, void *a3, unsigned int a4, float (*a5)(uint64_t, __n128))
{
  v158 = a1;
  v8 = a3;
  v20 = objc_msgSend_bufferSize(v158, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v32 = objc_msgSend_stride(v158, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v43 = *a2;
  v44 = a2[1];
  if (*a2 != v44)
  {
    v45 = v32;
    v46 = vdupq_n_s32(v20);
    v153 = v46;
    do
    {
      v47 = *v43;
      v48 = (*v43)[1];
      v49 = **v43;
      v50 = (*v43)[2];
      if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39, *&v153) > v49)
      {
        v51 = v47->n128_i32[1];
        if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39) > v51)
        {
          v52 = v47->n128_i32[2];
          if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39) > v52)
          {
            v46.n128_u32[0] = v49 * v45;
            v46.n128_u32[1] = v48 * v45;
            v46.n128_u32[2] = v50 * v45;
            v40 = v153;
            v46 = vcgeq_s32(v46, v153);
            v46.n128_u32[3] = v46.n128_u32[2];
            v46.n128_u32[0] = vmaxvq_u32(v46);
            if ((v46.n128_u32[0] & 0x80000000) == 0)
            {
              v53 = objc_msgSend_dataStart(v158, v33, v34, v35, v46, v153, v41, v42, v36, v37, v38, v39);
              v65 = objc_msgSend_stride(v158, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
              v66 = v47->n128_i32[0];
              v154 = v47[13];
              v77 = objc_msgSend_format(v158, v67, v68, v69, v154, v74, v75, v76, v70, v71, v72, v73);
              if (a4 >= 1)
              {
                v85.n128_f32[0] = a5(v77, v154);
                v89 = (v53 + v65 * v66);
                *v89 = v85.n128_u32[0];
                if (a4 != 1)
                {
                  v85.n128_f32[0] = (a5)(v154.n128_f32[1]);
                  v89[1] = v85.n128_u32[0];
                  if (a4 >= 3)
                  {
                    v85.n128_f32[0] = (a5)(v154.n128_f32[2]);
                    v89[2] = v85.n128_u32[0];
                    if (a4 != 3)
                    {
                      v85.n128_f32[0] = (a5)(1.0);
                      v89[3] = v85.n128_u32[0];
                    }
                  }
                }
              }

              v90 = objc_msgSend_dataStart(v158, v78, v79, v80, v85, v86, v87, v88, v81, v82, v83, v84);
              v102 = objc_msgSend_stride(v158, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
              v103 = v47->n128_i32[1];
              v155 = v47[14];
              v114 = objc_msgSend_format(v158, v104, v105, v106, v155, v111, v112, v113, v107, v108, v109, v110);
              if (a4 >= 1)
              {
                v122.n128_f32[0] = a5(v114, v155);
                v126 = (v90 + v102 * v103);
                *v126 = v122.n128_u32[0];
                if (a4 != 1)
                {
                  v122.n128_f32[0] = (a5)(v155.n128_f32[1]);
                  v126[1] = v122.n128_u32[0];
                  if (a4 >= 3)
                  {
                    v122.n128_f32[0] = (a5)(v155.n128_f32[2]);
                    v126[2] = v122.n128_u32[0];
                    if (a4 != 3)
                    {
                      v122.n128_f32[0] = (a5)(1.0);
                      v126[3] = v122.n128_u32[0];
                    }
                  }
                }
              }

              v127 = objc_msgSend_dataStart(v158, v115, v116, v117, v122, v123, v124, v125, v118, v119, v120, v121);
              v139 = objc_msgSend_stride(v158, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
              v140 = v47->n128_i32[2];
              v156 = v47[15];
              v151 = objc_msgSend_format(v158, v141, v142, v143, v156, v148, v149, v150, v144, v145, v146, v147);
              if (a4 >= 1)
              {
                v46.n128_f32[0] = a5(v151, v156);
                v152 = (v127 + v139 * v140);
                *v152 = v46.n128_u32[0];
                if (a4 != 1)
                {
                  v46.n128_f32[0] = (a5)(v156.n128_f32[1]);
                  v152[1] = v46.n128_u32[0];
                  if (a4 >= 3)
                  {
                    v46.n128_f32[0] = (a5)(v156.n128_f32[2]);
                    v152[2] = v46.n128_u32[0];
                    if (a4 != 3)
                    {
                      v46.n128_f32[0] = (a5)(1.0);
                      v152[3] = v46.n128_u32[0];
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v43;
    }

    while (v43 != v44);
  }
}

void sub_239EF7A40(void *a1, int ***a2, void *a3, unsigned int a4, uint64_t (*a5)(uint64_t, __n128))
{
  v158 = a1;
  v8 = a3;
  v20 = objc_msgSend_bufferSize(v158, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v32 = objc_msgSend_stride(v158, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v43 = *a2;
  v44 = a2[1];
  if (*a2 != v44)
  {
    v45 = v32;
    v46 = vdupq_n_s32(v20);
    v153 = v46;
    do
    {
      v47 = *v43;
      v48 = (*v43)[1];
      v49 = **v43;
      v50 = (*v43)[2];
      if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39, *&v153) > v49)
      {
        v51 = v47->n128_i32[1];
        if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39) > v51)
        {
          v52 = v47->n128_i32[2];
          if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39) > v52)
          {
            v46.n128_u32[0] = v49 * v45;
            v46.n128_u32[1] = v48 * v45;
            v46.n128_u32[2] = v50 * v45;
            v40 = v153;
            v46 = vcgeq_s32(v46, v153);
            v46.n128_u32[3] = v46.n128_u32[2];
            v46.n128_u32[0] = vmaxvq_u32(v46);
            if ((v46.n128_u32[0] & 0x80000000) == 0)
            {
              v53 = objc_msgSend_dataStart(v158, v33, v34, v35, v46, v153, v41, v42, v36, v37, v38, v39);
              v65 = objc_msgSend_stride(v158, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
              v66 = v47->n128_i32[0];
              v154 = v47[13];
              v77 = objc_msgSend_format(v158, v67, v68, v69, v154, v74, v75, v76, v70, v71, v72, v73);
              if (a4 >= 1)
              {
                v89 = (v53 + v65 * v66);
                *v89 = a5(v77, v154);
                if (a4 != 1)
                {
                  v89[1] = (a5)(v154.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v89[2] = (a5)(v154.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v89[3] = (a5)(1.0);
                    }
                  }
                }
              }

              v90 = objc_msgSend_dataStart(v158, v78, v79, v80, v85, v86, v87, v88, v81, v82, v83, v84);
              v102 = objc_msgSend_stride(v158, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
              v103 = v47->n128_i32[1];
              v155 = v47[14];
              v114 = objc_msgSend_format(v158, v104, v105, v106, v155, v111, v112, v113, v107, v108, v109, v110);
              if (a4 >= 1)
              {
                v126 = (v90 + v102 * v103);
                *v126 = a5(v114, v155);
                if (a4 != 1)
                {
                  v126[1] = (a5)(v155.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v126[2] = (a5)(v155.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v126[3] = (a5)(1.0);
                    }
                  }
                }
              }

              v127 = objc_msgSend_dataStart(v158, v115, v116, v117, v122, v123, v124, v125, v118, v119, v120, v121);
              v139 = objc_msgSend_stride(v158, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
              v140 = v47->n128_i32[2];
              v156 = v47[15];
              v151 = objc_msgSend_format(v158, v141, v142, v143, v156, v148, v149, v150, v144, v145, v146, v147);
              if (a4 >= 1)
              {
                v152 = (v127 + v139 * v140);
                *v152 = a5(v151, v156);
                if (a4 != 1)
                {
                  v152[1] = (a5)(v156.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v152[2] = (a5)(v156.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v152[3] = (a5)(1.0);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v43;
    }

    while (v43 != v44);
  }
}

void sub_239EF7D58(void *a1, int ***a2, void *a3, unsigned int a4, uint64_t (*a5)(uint64_t, __n128))
{
  v158 = a1;
  v8 = a3;
  v20 = objc_msgSend_bufferSize(v158, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v32 = objc_msgSend_stride(v158, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v43 = *a2;
  v44 = a2[1];
  if (*a2 != v44)
  {
    v45 = v32;
    v46 = vdupq_n_s32(v20);
    v153 = v46;
    do
    {
      v47 = *v43;
      v48 = (*v43)[1];
      v49 = **v43;
      v50 = (*v43)[2];
      if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39, *&v153) > v49)
      {
        v51 = v47->n128_i32[1];
        if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39) > v51)
        {
          v52 = v47->n128_i32[2];
          if (objc_msgSend_vertexCount(v8, v33, v34, v35, v46, v40, v41, v42, v36, v37, v38, v39) > v52)
          {
            v46.n128_u32[0] = v49 * v45;
            v46.n128_u32[1] = v48 * v45;
            v46.n128_u32[2] = v50 * v45;
            v40 = v153;
            v46 = vcgeq_s32(v46, v153);
            v46.n128_u32[3] = v46.n128_u32[2];
            v46.n128_u32[0] = vmaxvq_u32(v46);
            if ((v46.n128_u32[0] & 0x80000000) == 0)
            {
              v53 = objc_msgSend_dataStart(v158, v33, v34, v35, v46, v153, v41, v42, v36, v37, v38, v39);
              v65 = objc_msgSend_stride(v158, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
              v66 = v47->n128_i32[0];
              v154 = v47[13];
              v77 = objc_msgSend_format(v158, v67, v68, v69, v154, v74, v75, v76, v70, v71, v72, v73);
              if (a4 >= 1)
              {
                v89 = (v53 + v65 * v66);
                *v89 = a5(v77, v154);
                if (a4 != 1)
                {
                  v89[1] = (a5)(v154.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v89[2] = (a5)(v154.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v89[3] = (a5)(1.0);
                    }
                  }
                }
              }

              v90 = objc_msgSend_dataStart(v158, v78, v79, v80, v85, v86, v87, v88, v81, v82, v83, v84);
              v102 = objc_msgSend_stride(v158, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
              v103 = v47->n128_i32[1];
              v155 = v47[14];
              v114 = objc_msgSend_format(v158, v104, v105, v106, v155, v111, v112, v113, v107, v108, v109, v110);
              if (a4 >= 1)
              {
                v126 = (v90 + v102 * v103);
                *v126 = a5(v114, v155);
                if (a4 != 1)
                {
                  v126[1] = (a5)(v155.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v126[2] = (a5)(v155.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v126[3] = (a5)(1.0);
                    }
                  }
                }
              }

              v127 = objc_msgSend_dataStart(v158, v115, v116, v117, v122, v123, v124, v125, v118, v119, v120, v121);
              v139 = objc_msgSend_stride(v158, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
              v140 = v47->n128_i32[2];
              v156 = v47[15];
              v151 = objc_msgSend_format(v158, v141, v142, v143, v156, v148, v149, v150, v144, v145, v146, v147);
              if (a4 >= 1)
              {
                v152 = (v127 + v139 * v140);
                *v152 = a5(v151, v156);
                if (a4 != 1)
                {
                  v152[1] = (a5)(v156.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v152[2] = (a5)(v156.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v152[3] = (a5)(1.0);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v43;
    }

    while (v43 != v44);
  }
}

void sub_239EF8070(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_239EC4064(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  sub_239EF6F44(v11, v12, v13, v14, &__p, a6);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_239EF8130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

MDLMaterialProperty *sub_239EF8164(void *a1, void *a2, signed int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  if (*a1 == a1[1])
  {
    v30 = objc_alloc(MEMORY[0x277CBEB28]);
    v31 = a3 * a3;
    v23 = objc_msgSend_initWithLength_(v30, v32, (a3 * a3), v33, v38, v39, v40, v41, v34, v35, v36, v37);
    if (a3)
    {
      v42 = 0;
      if (v31 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v31;
      }

      do
      {
        v44 = v23;
        v56 = objc_msgSend_bytes(v44, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);
        v57 = v9;
        *(v56 + v42) = *(objc_msgSend_bytes(v57, v58, v59, v60, v65, v66, v67, v68, v61, v62, v63, v64) + 4 * v42);
        ++v42;
      }

      while (v42 != v43);
    }

    v69 = [MDLTexture alloc];
    v70 = objc_alloc(MEMORY[0x277CCACA8]);
    v81 = objc_msgSend_initWithFormat_(v70, v71, @"$ao-%lu", v72, v77, v78, v79, v80, v73, v74, v75, v76, a5);
    v82.n128_u64[0] = vdup_n_s32(a3);
    LOBYTE(v121) = 0;
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v69, v83, v23, 1, v82, v84, v85, v86, v81, a3, 1, 1, v121);
  }

  else
  {
    v11 = [MDLTexture alloc];
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_initWithFormat_(v12, v13, @"$ao-%lu", v14, v19, v20, v21, v22, v15, v16, v17, v18, a5);
    v24.n128_u64[0] = vdup_n_s32(a3);
    LOBYTE(v120) = 0;
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v11, v25, v9, 1, v24, v26, v27, v28, v23, 4 * a3, 4, 1, v120);
  }

  v87 = objc_opt_new();
  objc_msgSend_setTexture_(v87, v88, isCube, v89, v94, v95, v96, v97, v90, v91, v92, v93);
  v98 = [MDLMaterialProperty alloc];
  v108 = objc_msgSend_initWithName_semantic_(v98, v99, v10, 22, v104, v105, v106, v107, v100, v101, v102, v103);
  objc_msgSend_setTextureSamplerValue_(v108, v109, v87, v110, v115, v116, v117, v118, v111, v112, v113, v114);

  return v108;
}

void sub_239EF835C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239EF83C0(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = *v2;
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_239E879CC(v4);
      if (v5)
      {
        sub_239E9A9B4(v5);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_239EF84FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_239E9A9B4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF8514(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, uint64_t *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  __p = 0;
  v27 = 0uLL;
  if (!a4)
  {
    sub_239E91AC8(&__p, 1uLL);
  }

  sub_239EF51E0(64, 1, 1, v28, *(a3 + 64));
  v9 = *v28;
  __p = *v28;
  v27 = *&v28[8];
  v10 = *&v28[8];
  if (*v28 != *&v28[8])
  {
    v25 = vdupq_n_s32(0x38D1B717u);
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v16 = *v9;
      v17 = *a3;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v40 = 0u;
      LODWORD(v40) = 2139095039;
      *&v47 = 0;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      *&v44 = 0;
      v18 = vmlaq_f32(v17, v25, v16);
      *v28 = v18;
      *&v28[16] = v16;
      *v18.f32 = vdiv_f32(_D8, *v16.f32);
      v18.f32[2] = 1.0 / v16.f32[2];
      v29 = v18;
      LOBYTE(v30) = v18.f32[0] < 0.0;
      BYTE1(v30) = v18.f32[1] < 0.0;
      BYTE2(v30) = (1.0 / v16.f32[2]) < 0.0;
      v31 = 0x7F7FFFFF3A83126FLL;
      sub_239EF83C0(v8, a2);
      if (v44)
      {
        v19 = *(a3 + 16);
        v20 = *(a3 + 32);
        v21 = *(a3 + 176) + 1;
        *v28 = v45;
        *&v28[16] = v19;
        v29.i64[0] = v20;
        v30 = v40;
        v32 = v41;
        v33 = v42;
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v39 = v21;
        v22 = a5[1];
        if (v22 >= a5[2])
        {
          v8 = sub_239EFB94C(a5, v28);
        }

        else
        {
          v23 = *v28;
          v24 = *&v28[16];
          *(v22 + 32) = v29.i64[0];
          *v22 = v23;
          *(v22 + 16) = v24;
          *(v22 + 48) = v30;
          *(v22 + 64) = v32;
          *(v22 + 80) = v33;
          *(v22 + 96) = v34;
          *(v22 + 112) = v35;
          *(v22 + 128) = v36;
          *(v22 + 144) = v37;
          *(v22 + 160) = v38;
          *(v22 + 176) = v39;
          v8 = v22 + 192;
        }

        a5[1] = v8;
      }

      ++v9;
    }

    while (v9 != v10);
    v9 = __p;
  }

  if (v9)
  {
    operator delete(v9);
  }
}

void sub_239EF87E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF880C(uint64_t *a1, uint64_t **a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v4 = 0uLL;
  v40 = 0u;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v7 = *v5;
      if (*(*v5 + 24) == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        sub_239EF51E0(128, 0, 1, &v37, 0);
        v8 = v37;
        v9 = v38;
        if (v37 != v38)
        {
          do
          {
            v36 = *v8;
            *&v10 = (*(*v7 + 32))(v7);
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v11 = v7[1];
            v66 = v10;
            v67 = v36;
            *&v68 = v11;
            LODWORD(v69) = 2139095039;
            v74 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            *&v73 = 0;
            v12 = a1[21];
            if (v12 >= a1[22])
            {
              v21 = sub_239EFBC38(a1 + 20, &v66);
              v15 = v69;
              v16 = v73;
              v18 = *(&v75 + 1);
              v17 = v75;
              v19 = v76;
              v20 = v77;
            }

            else
            {
              v13 = v66;
              v14 = v67;
              *(v12 + 32) = v68;
              *v12 = v13;
              *(v12 + 16) = v14;
              v15 = v69;
              *(v12 + 48) = v69;
              *(v12 + 64) = v70;
              *(v12 + 80) = v71;
              *(v12 + 96) = v72;
              v16 = v73;
              *(v12 + 112) = v73;
              *(v12 + 128) = v74;
              v17 = v75;
              *(v12 + 144) = v75;
              v18 = *(&v75 + 1);
              *(v12 + 152) = *(&v75 + 1);
              v19 = v76;
              *(v12 + 160) = v76;
              v20 = v77;
              *(v12 + 176) = v77;
              v21 = v12 + 192;
            }

            a1[21] = v21;
            v54[0] = v66;
            v54[1] = v67;
            v55 = v68;
            v56 = v15;
            v57 = v70;
            v58 = v71;
            v59 = v72;
            v60 = v16;
            v61 = v74;
            v62 = v17;
            v63 = v18;
            v64 = v19;
            v65 = v20;
            sub_239EF8514(v21, a2, v54, 0, &v40);
            ++v8;
          }

          while (v8 != v9);
          v8 = v37;
        }

        if (v8)
        {
          v38 = v8;
          operator delete(v8);
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
    v4 = v40;
  }

  v22 = sub_239EFBE04(a1 + 20, a1[21], v4, *(&v4 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v4 + 1) - v4) >> 6));
  v24 = *(&v40 + 1);
  v23 = v40;
  if (v40 != *(&v40 + 1))
  {
    do
    {
      v25 = v23[12];
      v26 = *(v23 + 4);
      v27 = *(v23 + 5);
      v28 = *(v23 + 6);
      v29 = *(v23 + 14);
      v30 = *(v23 + 8);
      v31 = *(v23 + 18);
      v32 = *(v23 + 19);
      v33 = *(v23 + 20);
      v34 = v23[44];
      v35 = *(v23 + 1);
      v42[0] = *v23;
      v42[1] = v35;
      v43 = *(v23 + 4);
      v44 = v25;
      v45 = v26;
      v46 = v27;
      v47 = v28;
      v48 = v29;
      v49 = v30;
      v50 = v31;
      v51 = v32;
      v52 = v33;
      v53 = v34;
      sub_239EF8514(v22, a2, v42, 1, a1 + 20);
      v23 += 48;
    }

    while (v23 != v24);
    v23 = v40;
  }

  if (v23)
  {
    *(&v40 + 1) = v23;
    operator delete(v23);
  }
}

void sub_239EF8B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF8B70(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a7@<W6>, _BYTE *a9@<X8>)
{
  v136 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v122 = a3;
  v120 = a4;
  v121 = a5;
  v134 = a7;
  v27 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], v17, 70, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  objc_msgSend_setCancellable_(v27, v28, 1, v29, v34, v35, v36, v37, v30, v31, v32, v33);
  objc_msgSend_setPausable_(v27, v38, 0, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  memset(__src, 0, sizeof(__src));
  v123 = v27;
  v59 = objc_msgSend_count(v16, v48, v49, v50, v55, v56, v57, v58, v51, v52, v53, v54);
  sub_239EF9870(__src, v59);
  memset(v132, 0, sizeof(v132));
  obj = v16;
  v119 = a9;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, v132, v135, v64, v65, v66, v67, 16, v61, v62, v63))
  {
    v128[0] = 0;
    v128[1] = 0;
    LODWORD(v125) = 6;
    sub_239EFC57C();
  }

  objc_msgSend_becomeCurrentWithPendingUnitCount_(v27, v68, 70, v69, v74, v75, v76, v77, v70, v71, v72, v73);
  if (*a1 != a1[1])
  {
    sub_239EF880C(a1, __src);
  }

  v78 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v130 = 0;
  v129 = 0;
  v131 = 0;
  sub_239EF5BA8(v122, &v129, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  if (v131)
  {
    sub_239EF4B0C(v79, &v129);
    sub_239EF4D4C(&v129, &v125);
    v88 = a1[6];
    if (v88)
    {
      a1[7] = v88;
      operator delete(v88);
      a1[6] = 0;
      a1[7] = 0;
      a1[8] = 0;
    }

    *(a1 + 3) = v125;
    a1[8] = v126;
    for (i = v130; i != &v129; i = i[1])
    {
      *&v125 = i[2];
      sub_239E9BFD8((a1 + 3), &v125);
    }

    memset(v128, 0, 32);
    sub_239EF67A8(a1, &v134, &v129, v128, v80, v81, v82, v83, v84, 0, v85, v86, v87);
    if (v128[0])
    {
      v90 = objc_alloc(MEMORY[0x277CBEB28]);
      v118 = objc_msgSend_initWithLength_(v90, v91, (4 * v134 * v134), v92, v97, v98, v99, v100, v93, v94, v95, v96);
      v101 = v118;
      objc_msgSend_mutableBytes(v118, v102, v103, v104, v109, v110, v111, v112, v105, v106, v107, v108);
      srand(0x1337u);
      dispatch_group_create();
      dispatch_get_global_queue(0, 0);
      objc_claimAutoreleasedReturnValue();
      objc_alloc_init(MEMORY[0x277CCAAF8]);
      *&v125 = 0;
      *(&v125 + 1) = &v125;
      v126 = 0x3020000000;
      v127 = 0;
      operator new();
    }

    if (v128[3] >= 0)
    {
      v113 = &v128[1];
    }

    else
    {
      v113 = v128[1];
    }

    if (v128[3] >= 0)
    {
      v114 = HIBYTE(v128[3]);
    }

    else
    {
      v114 = v128[2];
    }

    v115 = sub_239E98B94(MEMORY[0x277D82670], v113, v114);
    std::ios_base::getloc((v115 + *(*v115 - 24)));
    v116 = std::locale::use_facet(&v125, MEMORY[0x277D82680]);
    (v116->__vftable[2].~facet_0)(v116, 10);
    std::locale::~locale(&v125);
    std::ostream::put();
    std::ostream::flush();
    *a9 = 0;
    v117 = a9 + 8;
    if (SHIBYTE(v128[3]) < 0)
    {
      sub_239E5BAE0(v117, v128[1], v128[2]);
    }

    else
    {
      *v117 = *&v128[1];
      *(v119 + 24) = v128[3];
    }

    if (SHIBYTE(v128[3]) < 0)
    {
      operator delete(v128[1]);
    }
  }

  else
  {
    *a9 = 0;
    sub_239E552A0(a9 + 1, "Couldn't parse triangles from supplied meshes");
  }

  sub_239E9876C(&v129);

  *&v125 = __src;
  sub_239EFC40C(&v125);
}

void sub_239EF966C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  sub_239E9876C(&STACK[0x218]);

  a65 = &STACK[0x270];
  sub_239EFC40C(&a65);

  _Unwind_Resume(a1);
}

const void **sub_239EF9870(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_239EFC4AC(result, a2);
    }

    sub_239E797B4();
  }

  return result;
}

uint64_t sub_239EF990C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v13 = *(a1 + 80);
  v114 = 0;
  atomic_store(0, &v114);
  v14 = *&dword_27DF912D0;
  objc_msgSend_lock(*(a1 + 32), a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  v26 = *(a1 + 88);
  v27 = v26[5];
  if (v27)
  {
    v22.n128_f32[0] = v14 * 0.5;
    v28 = vdup_lane_s32(v22.n128_u64[0], 0);
    v29 = vdup_n_s32(0x437F0000u);
    do
    {
      v30 = *(*(v26[1] + ((v26[4] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v26[4] & 0x3FFLL));
      v31 = *(a1 + 136);
      ++v26[4];
      v26[5] = v27 - 1;
      sub_239EFCDBC(v26, 1);
      objc_msgSend_unlock(*(a1 + 32), v32, v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
      if (v31 > v30)
      {
        v54 = *(a1 + 136);
        if (v54 >= 1)
        {
          for (i = 0; i < v54; ++i)
          {
            v56.f32[0] = i;
            v51.n128_f32[0] = v54;
            v56.f32[1] = v30;
            v57 = vdiv_f32(v56, vdup_lane_s32(v51.n128_u64[0], 0));
            v58 = sub_239F3805C(*(a1 + 96), *&v57);
            if (v58 && (v59 = v58, sub_239F3761C(v58, *&v57)))
            {
              v112 = 0uLL;
              v113 = 0;
              sub_239F37800(v59, &v112, vadd_f32(v57, v28));
              v60 = v113;
              if (!v113)
              {
                sub_239F37800(v59, &v110, v57);
                v60 = v111;
                v113 = v111;
                v112 = v110;
              }

              v109 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v60 + 64), *&v112), *(v60 + 80), *(&v112 + 1)), *(v60 + 96), *(&v112 + 2));
              v68 = sub_239EC3D28(v60);
              if (*v13 == *(v13 + 8))
              {
                v50.n128_f32[0] = sub_239EF5468(v109.n128_f64[0], v68, *(a1 + 144), v61, (a1 + 104), *(a1 + 140), 1) * 255.0;
                v71 = v50.n128_f32[0];
                v51.n128_u64[0] = vdup_n_s32(v50.n128_f32[0]);
              }

              else
              {
                v50.n128_f64[0] = sub_239EF56F4(v13, (a1 + 104), v109, v68, v62, v63, v64, v65, v66, v67, v69, v70);
                v51.n128_u64[0] = vcvt_s32_f32(vmul_f32(v50.n128_u64[0], v29));
                v52.n128_u32[0] = 1132396544;
                v50.n128_f32[0] = vmuls_lane_f32(255.0, v50, 2);
                v71 = v50.n128_f32[0];
              }

              v72 = -1;
            }

            else
            {
              LOBYTE(v71) = 0;
              v72 = 0;
              atomic_fetch_add(&v114, 1u);
              v51 = 0uLL;
            }

            v73 = (*(a1 + 128) + 4 * (i + *(a1 + 136) * v30));
            *v73 = v51.n128_u8[0];
            v73[1] = v51.n128_u8[4];
            v73[2] = v71;
            v73[3] = v72;
            v54 = *(a1 + 136);
          }
        }
      }

      atomic_fetch_add(&v114, *(*(*(a1 + 48) + 8) + 40));
      objc_msgSend_lock(*(a1 + 32), v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49, v109.n128_u64[0]);
      v83.n128_f32[0] = ++*(*(*(a1 + 56) + 8) + 24) / *(*(*(a1 + 64) + 8) + 24);
      v84.n128_f32[0] = *(*(*(a1 + 72) + 8) + 24) * 0.022222;
      if (v83.n128_f32[0] > v84.n128_f32[0])
      {
        v85 = *(a1 + 40);
        v86 = objc_msgSend_completedUnitCount(v85, v74, v75, v76, v83, v84, v81, v82, v77, v78, v79, v80);
        objc_msgSend_setCompletedUnitCount_(v85, v87, v86 + 1, v88, v93, v94, v95, v96, v89, v90, v91, v92);
        ++*(*(*(a1 + 72) + 8) + 24);
      }

      objc_msgSend_unlock(*(a1 + 32), v74, v75, v76, v83, v84, v81, v82, v77, v78, v79, v80);
      v114 = 0;
      atomic_store(0, &v114);
      v97.n128_f32[0] = *&dword_27DF912D0 * 0.5;
      v28 = vdup_lane_s32(v97.n128_u64[0], 0);
      objc_msgSend_lock(*(a1 + 32), v98, v99, v100, v97, v105, v106, v107, v101, v102, v103, v104);
      v26 = *(a1 + 88);
      v27 = v26[5];
    }

    while (v27);
  }

  return objc_msgSend_unlock(*(a1 + 32), v15, v16, v17, v22, v23, v24, v25, v18, v19, v20, v21);
}

uint64_t *sub_239EF9C38(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v2 = (a1 + 104);
  v2[2] = 0;
  return sub_239EFCE1C(v2, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
}

void sub_239EF9C80(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2;
  v8 = a3;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_239EF5BA8(v7, &v30, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  if (v32)
  {
    sub_239EF4B0C(v9, &v30);
    for (i = v31; i != &v30; i = *(i + 8))
    {
      v28[0] = *(i + 16);
      sub_239E9BFD8(a1 + 24, v28);
    }

    v29 = 4096;
    memset(v28, 0, 32);
    sub_239EF67A8(a1, &v29, &v30, v28, v10, v11, v12, v13, v14, 0, v15, v16, v17);
    v19 = v28[0];
    if (v28[0])
    {
      __p = 0;
      v26 = 0;
      v27 = 0;
      sub_239EC4064(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
      sub_239EF8070(v7, 0, v8, 0, &__p, 0);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      MEMORY[0x23EE802C0](v19, 0x1020C4084B17629);
      *a4 = 1;
      sub_239E552A0((a4 + 8), "");
    }

    else
    {
      if (SHIBYTE(v28[3]) >= 0)
      {
        v20 = &v28[1];
      }

      else
      {
        v20 = v28[1];
      }

      if (SHIBYTE(v28[3]) >= 0)
      {
        v21 = HIBYTE(v28[3]);
      }

      else
      {
        v21 = v28[2];
      }

      v22 = sub_239E98B94(MEMORY[0x277D82670], v20, v21);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
      *a4 = 0;
      v24 = a4 + 8;
      if (SHIBYTE(v28[3]) < 0)
      {
        sub_239E5BAE0(v24, v28[1], v28[2]);
      }

      else
      {
        *v24 = *&v28[1];
        *(v24 + 16) = v28[3];
      }
    }

    if (SHIBYTE(v28[3]) < 0)
    {
      operator delete(v28[1]);
    }
  }

  else
  {
    *a4 = 0;
    sub_239E552A0((a4 + 8), "Couldn't parse triangles from supplied meshes");
  }

  sub_239E9876C(&v30);
}

void sub_239EF9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_239E9876C(&a22);

  _Unwind_Resume(a1);
}

void sub_239EF9F64(void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a6@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  sub_239EF5BA8(v11, &v43, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  if (v45)
  {
    memset(v42, 0, sizeof(v42));
    v24 = objc_msgSend_count(v10, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    sub_239EF9870(v42, v24);
    memset(v41, 0, sizeof(v41));
    v25 = v10;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v41, v49, v30, v31, v32, v33, 16, v27, v28, v29))
    {
      v40[0].__locale_ = 0;
      v40[1].__locale_ = 0;
      operator new();
    }

    v47 = 0;
    v48 = 0;
    v46 = 0;
    if (v44 == &v43)
    {
      v34 = 0;
    }

    else
    {
      v34 = 0;
      v35 = v44;
      do
      {
        ++v34;
        v35 = v35[1];
      }

      while (v35 != &v43);
    }

    sub_239EFD33C(&v46, v44, &v43, v34);
    v36 = sub_239E98B94(MEMORY[0x277D82678], "Computing vertex bake information for ", 38);
    v37 = MEMORY[0x23EE80160](v36, (v47 - v46) >> 3);
    v38 = sub_239E98B94(v37, " triangles", 10);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(v40, MEMORY[0x277D82680]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(v40);
    std::ostream::put();
    std::ostream::flush();
    dispatch_group_create();
    dispatch_get_global_queue(0, 0);
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  *a6 = 0;
  sub_239E552A0((a6 + 8), "Couldn't parse triangles from supplied meshes");
  sub_239E9876C(&v43);
}

void sub_239EFA618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::locale a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56)
{
  sub_239E9876C(&a52);

  _Unwind_Resume(a1);
}

uint64_t sub_239EFA76C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v13 = *(a1 + 48);
  objc_msgSend_lock(*(a1 + 32), a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  v25 = *(a1 + 56);
  for (i = v25[5]; i; i = v25[5])
  {
    v27 = *(*(v25[1] + ((v25[4] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v25[4] & 0x3FFLL));
    ++v25[4];
    v25[5] = i - 1;
    sub_239EFCDBC(v25, 1);
    objc_msgSend_unlock(*(a1 + 32), v28, v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    if ((v27 & 0x80000000) == 0)
    {
      v50 = (*(a1 + 72) - *(a1 + 64)) >> 3;
      if (v27 + 250 >= v50)
      {
        v51 = (*(a1 + 72) - *(a1 + 64)) >> 3;
      }

      else
      {
        v51 = v27 + 250;
      }

      if (v27 < v50)
      {
        v52 = 8 * v27;
        do
        {
          v53 = *(*(a1 + 64) + v52);
          if (*v13 == *(v13 + 8))
          {
            v83 = *(a1 + 112);
            v146 = *(v53 + 64);
            v84 = sub_239EC3D28(v53);
            *v86.i32 = sub_239EF5468(*&v146, v84, *(a1 + 116), v85, (a1 + 88), v83, 0);
            *(v53 + 208) = vdupq_lane_s32(v86, 0);
            v87 = *(a1 + 112);
            v147 = *(v53 + 80);
            v88 = sub_239EC3D28(v53);
            *v90.i32 = sub_239EF5468(*&v147, v88, *(a1 + 116), v89, (a1 + 88), v87, 0);
            *(v53 + 224) = vdupq_lane_s32(v90, 0);
            v91 = *(a1 + 112);
            v148 = *(v53 + 96);
            v92 = sub_239EC3D28(v53);
            *v94.i32 = sub_239EF5468(*&v148, v92, *(a1 + 116), v93, (a1 + 88), v91, 0);
            v46 = vdupq_lane_s32(v94, 0);
          }

          else
          {
            v143 = *(v53 + 64);
            v54 = sub_239EC3D28(v53);
            *&v63 = sub_239EF56F4(v13, (a1 + 88), v143, v54, v55, v56, v57, v58, v59, v60, v61, v62);
            *(v53 + 208) = v63;
            v144 = *(v53 + 80);
            v64 = sub_239EC3D28(v53);
            *&v73 = sub_239EF56F4(v13, (a1 + 88), v144, v64, v65, v66, v67, v68, v69, v70, v71, v72);
            *(v53 + 224) = v73;
            v145 = *(v53 + 96);
            v74 = sub_239EC3D28(v53);
            v46.n128_f64[0] = sub_239EF56F4(v13, (a1 + 88), v145, v74, v75, v76, v77, v78, v79, v80, v81, v82);
          }

          *(v53 + 240) = v46;
          v52 += 8;
          LODWORD(v27) = v27 + 1;
        }

        while (v51 > v27);
      }

      objc_msgSend_lock(*(a1 + 32), v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
      objc_msgSend_fractionCompleted(*(a1 + 40), v95, v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
      NSLog(&cfstr_FractionComple_0.isa, v106);
      v107 = *(a1 + 40);
      v119 = objc_msgSend_completedUnitCount(v107, v108, v109, v110, v115, v116, v117, v118, v111, v112, v113, v114);
      objc_msgSend_setCompletedUnitCount_(v107, v120, v119 + 1, v121, v126, v127, v128, v129, v122, v123, v124, v125);
      objc_msgSend_unlock(*(a1 + 32), v130, v131, v132, v137, v138, v139, v140, v133, v134, v135, v136);
    }

    objc_msgSend_lock(*(a1 + 32), v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v25 = *(a1 + 56);
  }

  v141 = *(a1 + 32);

  return objc_msgSend_unlock(v141, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
}

uint64_t *sub_239EFA9D4(uint64_t *a1, uint64_t a2)
{
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  sub_239EC4064(a1 + 8, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return sub_239EFCE1C(a1 + 11, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 4);
}

void sub_239EFAA40(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFAA5C(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_239EFC40C(&v3);
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void sub_239EFAAA4(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(a1 + 8) = *a1;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = v3;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v39, v43, v9, v10, v11, v12, 16, v6, v7, v8);
  if (v20)
  {
    v25 = *v40;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v4);
        }

        v27 = objc_msgSend_rtLight(*(*(&v39 + 1) + 8 * i), v13, v14, v15, v21, v22, v23, v24, v16, v17, v18, v19, v39);
        v29 = *(a1 + 8);
        v28 = *(a1 + 16);
        if (v29 >= v28)
        {
          v31 = (v29 - *a1) >> 3;
          if ((v31 + 1) >> 61)
          {
            sub_239E797B4();
          }

          v32 = v28 - *a1;
          v33 = v32 >> 2;
          if (v32 >> 2 <= (v31 + 1))
          {
            v33 = v31 + 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            sub_239E7C684(a1, v34);
          }

          v35 = (8 * v31);
          *v35 = v27;
          v30 = 8 * v31 + 8;
          v36 = *(a1 + 8) - *a1;
          v37 = v35 - v36;
          memcpy(v35 - v36, *a1, v36);
          v38 = *a1;
          *a1 = v37;
          *(a1 + 8) = v30;
          *(a1 + 16) = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v29 = v27;
          v30 = (v29 + 1);
        }

        *(a1 + 8) = v30;
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v13, &v39, v43, v21, v22, v23, v24, 16, v17, v18, v19);
    }

    while (v20);
  }
}

uint64_t sub_239EFAC84(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_239EFAD30(a1);
}

uint64_t sub_239EFAD30(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_239EFAD80(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

float32x4_t *sub_239EFADF4(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC3DD4(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v12 == v6)
    {
      if (sub_239EC3E64(i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t *sub_239EFAEF0(void *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_239EC3DD4(a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_239EFB16C();
  }

  while (1)
  {
    v15 = v14->u64[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = v14->i64[0];
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3E64(v14 + 1, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_239EFB150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFB1E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_239EFB1FC(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_239E9830C(a1, a2);
  }

  return a1;
}

void sub_239EFB258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EFB274(uint64_t a1)
{
  sub_239EFB2B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239EFB2B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_239E9876C(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

float32x4_t *sub_239EFB2F4(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC2FA4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_239EFB56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239EFB580(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239EFB580(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_239E9876C(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_239EFB5CC(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

float32x4_t *sub_239EFB670(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC3490(a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3500(v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_239EFB8E8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_239EFB94C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_239EFBBE0(a1, v6);
  }

  v7 = 192 * v2;
  __p = 0;
  v13 = v7;
  v15 = 0;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 16) = v9;
  *(v7 + 48) = *(a2 + 12);
  *(v7 + 64) = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = a2[6];
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 128) = a2[8];
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 152) = *(a2 + 19);
  *(v7 + 160) = *(a2 + 20);
  *(v7 + 176) = *(a2 + 44);
  v14 = 192 * v2 + 192;
  sub_239EFBB18(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 = (v14 - v13 - 192) % 0xC0uLL + v13;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_239EFBAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239EFBB18(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      v7 = *(v2 + 16);
      *(v5 + 32) = *(v2 + 32);
      *v5 = v6;
      *(v5 + 16) = v7;
      *(v5 + 48) = *(v2 + 48);
      *(v5 + 64) = *(v2 + 64);
      *(v5 + 80) = *(v2 + 80);
      *(v5 + 96) = *(v2 + 96);
      *(v5 + 112) = *(v2 + 112);
      *(v5 + 128) = *(v2 + 128);
      *(v5 + 144) = *(v2 + 144);
      *(v5 + 152) = *(v2 + 152);
      *(v5 + 160) = *(v2 + 160);
      *(v5 + 176) = *(v2 + 176);
      v2 += 192;
      v5 += 192;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_239EFBBE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EFBC38(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_239EFBBE0(a1, v6);
  }

  v7 = 192 * v2;
  __p = 0;
  v13 = v7;
  v15 = 0;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 16) = v9;
  *(v7 + 48) = *(a2 + 12);
  *(v7 + 64) = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = a2[6];
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 128) = a2[8];
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 152) = *(a2 + 19);
  *(v7 + 160) = *(a2 + 20);
  *(v7 + 176) = *(a2 + 44);
  v14 = 192 * v2 + 192;
  sub_239EFBB18(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 = (v14 - v13 - 192) % 0xC0uLL + v13;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_239EFBDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_239EFBE04(char **a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 6)) >= a5)
    {
      v16 = v10 - a2;
      if (a5 <= (0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 6)))
      {
        v29 = 3 * a5;
        sub_239EFC1BC(a1, a2, a1[1], &a2[12 * a5]);
        v30 = 0;
        v31 = &v7[4 * v29];
        do
        {
          v32 = &v5[v30];
          v33 = *v7;
          v34 = v7[1];
          v35 = v7[3];
          v32[2] = v7[2];
          v32[3] = v35;
          *v32 = v33;
          v32[1] = v34;
          v36 = v7[4];
          v37 = v7[5];
          v38 = v7[7];
          v32[6] = v7[6];
          v32[7] = v38;
          v32[4] = v36;
          v32[5] = v37;
          v39 = v7[8];
          v40 = v7[9];
          v41 = v7[10];
          *(v32 + 44) = *(v7 + 44);
          v32[9] = v40;
          v32[10] = v41;
          v32[8] = v39;
          v7 += 12;
          v30 += 12;
        }

        while (v7 != v31);
      }

      else
      {
        v17 = (a3 + v16);
        sub_239EFC13C(a1, (a3 + v16), a4);
        if (v16 >= 1)
        {
          sub_239EFC1BC(a1, v5, v10, &v5[12 * a5]);
          v18 = 0;
          do
          {
            v19 = &v5[v18];
            v20 = *v7;
            v21 = v7[1];
            v22 = v7[3];
            v19[2] = v7[2];
            v19[3] = v22;
            *v19 = v20;
            v19[1] = v21;
            v23 = v7[4];
            v24 = v7[5];
            v25 = v7[7];
            v19[6] = v7[6];
            v19[7] = v25;
            v19[4] = v23;
            v19[5] = v24;
            v26 = v7[8];
            v27 = v7[9];
            v28 = v7[10];
            *(v19 + 44) = *(v7 + 44);
            v19[9] = v27;
            v19[10] = v28;
            v19[8] = v26;
            v7 += 12;
            v18 += 12;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v48 = 0;
      v12 = a5 - 0x5555555555555555 * ((v10 - v11) >> 6);
      if (v12 > 0x155555555555555)
      {
        sub_239E797B4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 6);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0xAAAAAAAAAAAAAALL)
      {
        v15 = 0x155555555555555;
      }

      else
      {
        v15 = v12;
      }

      v50 = a1;
      if (v15)
      {
        sub_239EFBBE0(a1, v15);
      }

      v42 = v13 >> 6 << 6;
      __p = 0;
      v47 = v42;
      v49 = 0;
      do
      {
        v43 = *v7;
        v44 = v7[1];
        *(v42 + 32) = *(v7 + 4);
        *v42 = v43;
        *(v42 + 16) = v44;
        *(v42 + 48) = *(v7 + 12);
        *(v42 + 64) = v7[4];
        *(v42 + 80) = v7[5];
        *(v42 + 96) = v7[6];
        *(v42 + 112) = *(v7 + 14);
        *(v42 + 128) = v7[8];
        *(v42 + 144) = *(v7 + 18);
        *(v42 + 152) = *(v7 + 19);
        *(v42 + 160) = *(v7 + 20);
        *(v42 + 176) = *(v7 + 44);
        v42 += 192;
        v7 += 12;
      }

      while (v42 != (v13 >> 6 << 6) + 192 * a5);
      v48 = (v13 >> 6 << 6) + 192 * a5;
      v5 = sub_239EFC2A0(a1, &__p, v5);
      if (v48 != v47)
      {
        v48 = (v48 - v47 - 192) % 0xC0uLL + v47;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_239EFC0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EFC13C(uint64_t result, __int128 *a2, __int128 *a3)
{
  v3 = *(result + 8);
  while (a2 != a3)
  {
    v4 = *a2;
    v5 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v4;
    *(v3 + 16) = v5;
    *(v3 + 48) = *(a2 + 12);
    *(v3 + 64) = a2[4];
    *(v3 + 80) = a2[5];
    *(v3 + 96) = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 128) = a2[8];
    *(v3 + 144) = a2[9];
    *(v3 + 160) = *(a2 + 20);
    *(v3 + 176) = *(a2 + 44);
    a2 += 12;
    v3 += 192;
  }

  *(result + 8) = v3;
  return result;
}

__n128 sub_239EFC1BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    result = *v6;
    v8 = *(v6 + 16);
    *(v7 + 32) = *(v6 + 32);
    *v7 = result;
    *(v7 + 16) = v8;
    *(v7 + 48) = *(v6 + 48);
    *(v7 + 64) = *(v6 + 64);
    *(v7 + 80) = *(v6 + 80);
    *(v7 + 96) = *(v6 + 96);
    *(v7 + 112) = *(v6 + 112);
    *(v7 + 128) = *(v6 + 128);
    *(v7 + 144) = *(v6 + 144);
    result.n128_u64[0] = *(v6 + 152);
    *(v7 + 152) = result.n128_u64[0];
    *(v7 + 160) = *(v6 + 160);
    *(v7 + 176) = *(v6 + 176);
    v6 += 192;
    v7 += 192;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v10 = v4 - 192;
    v11 = a2 - 192;
    do
    {
      v12 = *(v11 + v5);
      v13 = *(v11 + v5 + 16);
      v14 = *(v11 + v5 + 48);
      *(v10 + 32) = *(v11 + v5 + 32);
      *(v10 + 48) = v14;
      *v10 = v12;
      *(v10 + 16) = v13;
      v15 = *(v11 + v5 + 64);
      v16 = *(v11 + v5 + 80);
      v17 = *(v11 + v5 + 112);
      *(v10 + 96) = *(v11 + v5 + 96);
      *(v10 + 112) = v17;
      *(v10 + 64) = v15;
      *(v10 + 80) = v16;
      result = *(v11 + v5 + 128);
      v18 = *(v11 + v5 + 144);
      v19 = *(v11 + v5 + 160);
      *(v10 + 176) = *(v11 + v5 + 176);
      *(v10 + 144) = v18;
      *(v10 + 160) = v19;
      *(v10 + 128) = result;
      v10 -= 192;
      v5 -= 192;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_239EFC2A0(char **a1, void *a2, __int128 *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v11 = a2[1];
    v10 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      *(v6 + 32) = *(v7 + 4);
      *v6 = v8;
      *(v6 + 16) = v9;
      *(v6 + 48) = *(v7 + 12);
      *(v6 + 64) = v7[4];
      *(v6 + 80) = v7[5];
      *(v6 + 96) = v7[6];
      *(v6 + 112) = *(v7 + 14);
      *(v6 + 128) = v7[8];
      *(v6 + 144) = *(v7 + 18);
      *(v6 + 152) = *(v7 + 19);
      *(v6 + 160) = *(v7 + 20);
      *(v6 + 176) = *(v7 + 44);
      v7 += 12;
      v6 += 192;
    }

    while (v7 != v4);
    v10 = a1[1];
    v11 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v10 - a3;
  a1[1] = a3;
  v12 = *a1;
  v13 = (v11 + *a1 - a3);
  if (*a1 != a3)
  {
    v14 = v13;
    do
    {
      v15 = *v12;
      v16 = *(v12 + 1);
      *(v14 + 4) = *(v12 + 4);
      *v14 = v15;
      v14[1] = v16;
      *(v14 + 12) = *(v12 + 12);
      v14[4] = *(v12 + 4);
      v14[5] = *(v12 + 5);
      v14[6] = *(v12 + 6);
      *(v14 + 14) = *(v12 + 14);
      v14[8] = *(v12 + 8);
      *(v14 + 18) = *(v12 + 18);
      *(v14 + 19) = *(v12 + 19);
      *(v14 + 20) = *(v12 + 20);
      *(v14 + 44) = *(v12 + 44);
      v12 += 192;
      v14 += 12;
    }

    while (v12 != a3);
    v12 = *a1;
  }

  a2[1] = v13;
  *a1 = v13;
  a1[1] = v12;
  a2[1] = v12;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void sub_239EFC40C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EFC460(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239EFC460(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_239E9A9B4(v4);
    }
  }

  a1[1] = v2;
}

void sub_239EFC4AC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_239E79870();
}

void **sub_239EFC4F4(void **a1)
{
  sub_239EFC528(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239EFC528(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_239E9A9B4(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *sub_239EFC5F0(void *a1, void **a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284D16EB8;
  sub_239F46F8C((a1 + 4), *a2, *a3);
  return a1;
}

void sub_239EFC674(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D16EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239EFC6F0(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_239EFC778(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_239EFC778(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_239EFCD74(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_239EFC94C(a1, &v9);
}