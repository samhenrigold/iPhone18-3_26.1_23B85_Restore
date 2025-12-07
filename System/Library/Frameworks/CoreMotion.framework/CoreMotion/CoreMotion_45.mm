float *sub_19B66D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_19B5D6144(a2, i);
      v9 = v8 * sub_19B5D6144(a3, j);
      result = sub_19B5D68B8(a1, i, j);
      *result = v9;
    }
  }

  return result;
}

double sub_19B66D1AC(float32x4_t *a1, float *a2, float32x4_t a3)
{
  v3 = *a2;
  v4 = a2[4];
  v5 = a2[8];
  v6 = (*a2 + v4) + v5;
  if (v6 <= 0.0)
  {
    if (v3 > v4)
    {
      v8 = v3 == v5;
      v9 = v3 < v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (v9 || v8)
    {
      if (v4 <= v5)
      {
        v15 = ((-v3 - v4) + v5) + 1.0;
        v16 = 0.5 / sqrtf(v15);
        a1->f32[2] = v15 * v16;
        a1->f32[3] = v16 * (a2[3] - a2[1]);
        a1->f32[0] = v16 * (a2[2] + a2[6]);
        a3.f32[0] = v16 * (a2[7] + a2[5]);
        a1->i32[1] = a3.i32[0];
      }

      else
      {
        v10 = ((v4 - v3) - v5) + 1.0;
        v11 = 0.5 / sqrtf(v10);
        a1->f32[1] = v10 * v11;
        a1->f32[0] = v11 * (a2[3] + a2[1]);
        a1->f32[3] = v11 * (a2[2] - a2[6]);
        a3.f32[0] = v11 * (a2[7] + a2[5]);
        a1->i32[2] = a3.i32[0];
      }
    }

    else
    {
      v13 = ((v3 - v4) - v5) + 1.0;
      v14 = 0.5 / sqrtf(v13);
      a1->f32[0] = v13 * v14;
      a1->f32[1] = v14 * (a2[3] + a2[1]);
      a1->f32[2] = v14 * (a2[2] + a2[6]);
      a3.f32[0] = v14 * (a2[7] - a2[5]);
      a1->i32[3] = a3.i32[0];
    }
  }

  else
  {
    v7 = 0.5 / sqrtf(v6 + 1.0);
    a1->f32[3] = (v6 + 1.0) * v7;
    a1->f32[2] = v7 * (a2[3] - a2[1]);
    a1->f32[1] = v7 * (a2[2] - a2[6]);
    a3.f32[0] = v7 * (a2[7] - a2[5]);
    a1->i32[0] = a3.i32[0];
  }

  *&result = sub_19B41E130(a1, a3).u64[0];
  return result;
}

float sub_19B66D368@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 + v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 + v7;
  v9 = v3 * (v3 + v3);
  v10 = ((v7 + v7) * v7) + -1.0;
  v11 = ((v4 + v4) * v4) + -1.0;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * v4;
  v14 = v3 * (v6 + v6);
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  v18 = v9 + (((v6 + v6) * v6) + -1.0);
  v19 = v12 - (v17 * a3);
  v20 = v13 + (v16 * a3);
  v21 = v12 + (v17 * a3);
  v22 = v9 + v10;
  v23 = v15 - (v14 * a3);
  v24 = v13 - (v16 * a3);
  result = v15 + (v14 * a3);
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v24;
  a2[7] = result;
  a2[8] = v9 + v11;
  return result;
}

void sub_19B66D3E8(float *a1)
{
  if ((atomic_load_explicit(&qword_1ED71D1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D1D8))
  {
    dword_1ED71D1CC = 1043452116;
    __cxa_guard_release(&qword_1ED71D1D8);
  }

  v2 = sub_19B447000(a1);
  if (v4 <= sqrtf((v3 * v3) + (v2 * v2)))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 1.0;
  }

  v18 = 0x3F80000000000000;
  v19 = 0;
  v6 = sub_19B447000(a1);
  v9 = 0;
  v10 = (v8 * -0.0) + (v7 * v5);
  v11 = 0.0;
  v12 = (v8 * 0.0) - (v6 * v5);
  v13 = (v7 * -0.0) + (v6 * 0.0);
  v17[0] = v10;
  v17[1] = v12;
  v17[2] = v13;
  do
  {
    v11 = v11 + (v17[v9] * v17[v9]);
    ++v9;
  }

  while (v9 != 3);
  v14 = sqrtf(v11);
  if (v14 > *&dword_1ED71D1CC)
  {
    v15 = -atan2f(sqrtf((v7 * v7) + (v6 * v6)), v8 * v5) / v14;
    v20[0] = v10 * v15;
    v20[1] = v12 * v15;
    v20[2] = v13 * v15;
    sub_19B66C264(&v16, v20);
    sub_19B66D368(v16.f32, v20, -1.0);
    sub_19B61AD14(v20, &v18);
  }
}

float sub_19B66D564(float *a1)
{
  sub_19B66D3E8(a1);
  v5 = sub_19B66C228(a1, v2, v3, v4);
    ;
  }

    ;
  }

  return result;
}

void sub_19B66D5F4(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0 || a3 > 1.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v21 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      buf.i16[0] = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMOQuaternion.cpp, line 375,Invalid time t for slerp.", &buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      v27.i16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMOQuaternion.cpp, line 375,Invalid time t for slerp.", &v27, 2);
      v24 = v23;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static CMOQuaternion CMOQuaternion::slerp(const CMOQuaternion &, const CMOQuaternion &, const float)", "CoreLocation: %s\n", v23);
      if (v24 != &buf)
      {
        free(v24);
      }
    }
  }

  buf = *a1;
  sub_19B41E130(&buf, buf);
  v27 = *a2;
  sub_19B41E130(&v27, v27);
  v7 = v27.i64[0];
  v8 = buf.f32[2];
  v9 = v27.i64[1];
  v10 = fmaxf(fminf((((buf.f32[1] * v27.f32[1]) + (buf.f32[0] * v27.f32[0])) + (buf.f32[2] * v27.f32[2])) + (buf.f32[3] * v27.f32[3]), 1.0), -1.0);
  v11 = -v10;
  if (v10 > 0.0)
  {
    v11 = v10;
  }

  v12 = v11 + -1.0;
  if ((v11 + -1.0) <= 0.0)
  {
    v12 = -v12;
  }

  if (v12 >= 0.00000011921)
  {
    v25 = buf.i64[0];
    v26 = buf.f32[3];
    v13 = acosf(v10);
    v14 = sinf(v13);
    v15 = sinf((1.0 - a3) * v13);
    v16 = v13 * a3;
    v17 = v15 / v14;
    v18 = sinf(v16) / v14;
    *&v19 = (*&v9 * v18) + (v17 * v8);
    v28.f32[0] = (*&v7 * v18) + (v17 * *&v25);
    v28.f32[1] = (*(&v7 + 1) * v18) + (v17 * *(&v25 + 1));
    v20.f32[0] = (*(&v9 + 1) * v18) + (v17 * v26);
    v28.i64[1] = __PAIR64__(v20.u32[0], v19);
    sub_19B41E130(&v28, v20);
  }

  else
  {
    v28 = *a1;
  }
}

uint64_t sub_19B66DC00()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  qword_1ED71D1E0 = v0;

  return objc_msgSend_setDateFormat_(v0, v1, @"yyyy-MM-dd HH:mm:ss Z");
}

uint64_t sub_19B66DC40(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = 0x7FF8000000000000;
  v2.i64[0] = 0x3F0000003FLL;
  v2.i64[1] = 0x3F0000003FLL;
  v3 = vnegq_f32(v2);
  *(a1 + 8) = v3;
  *(a1 + 24) = v3;
  *(a1 + 40) = v3;
  *(a1 + 56) = 0;
  *(a1 + 61) = 0;
  *(a1 + 72) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 120) = xmmword_19B7BAC08;
  *(a1 + 136) = unk_19B7BAC18;
  *(a1 + 152) = xmmword_19B7BAC28;
  *(a1 + 168) = unk_19B7BAC38;
  *(a1 + 88) = xmmword_19B7BABE8;
  *(a1 + 104) = unk_19B7BABF8;
  *(a1 + 264) = unk_19B7BAC98;
  *(a1 + 248) = xmmword_19B7BAC88;
  *(a1 + 232) = unk_19B7BAC78;
  *(a1 + 216) = xmmword_19B7BAC68;
  *(a1 + 200) = unk_19B7BAC58;
  *(a1 + 184) = xmmword_19B7BAC48;
  *(a1 + 280) = xmmword_19B7BACA8;
  *(a1 + 296) = unk_19B7BACB8;
  *(a1 + 312) = xmmword_19B7BACC8;
  *(a1 + 328) = unk_19B7BACD8;
  *(a1 + 344) = a1 + 88;
  *(a1 + 400) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 408) = a1 + 88;
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 472) = a1 + 88;
  *(a1 + 528) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 536) = a1 + 88;
  *(a1 + 592) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 600) = a1 + 88;
  *(a1 + 656) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 664) = a1 + 88;
  *(a1 + 720) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 672) = 0u;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
  }

  v4 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Constructing CMPdrInputs.", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
    }

    v9[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "Constructing CMPdrInputs.", v9, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMPdrInputs::CMPdrInputs()", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return a1;
}

void sub_19B66DF0C(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = *a2 - *(a1 + 72);
  *a3.i64 = v5;
  *(a1 + 72) = *a2;
  *(a1 + 80) = v5;
  *buf = sub_19B66BFF4((a2 + 32), a3);
  v67 = __PAIR64__(v7, v6);
  v68 = v8;
  v9.f32[0] = sub_19B66C1A4(buf, -*(a2 + 20), -*(a2 + 24), -*(a2 + 28));
  v59[0] = v9.i32[0];
  v59[1] = v10;
  v59[2] = v11;
  *buf = sub_19B66BFF4((a2 + 32), v9);
  v67 = __PAIR64__(v13, v12);
  v68 = v14;
  v15 = 0;
  v58[0] = sub_19B66C1A4(buf, *(a2 + 8), *(a2 + 12), *(a2 + 16));
  v58[1] = v16;
  v58[2] = v17;
  v18 = a1 + 344;
  do
  {
    v19 = sub_19B5D6144(v59, v15);
    sub_19B66E440(v18, v19);
    v20 = *(v18 + 8);
    *sub_19B5BC0F0(v57, v15) = v20;
    v21 = sub_19B5D6144(v58, v15);
    sub_19B66E440(v18 + 192, v21);
    ++v15;
    v18 += 64;
  }

  while (v15 != 3);
  v23 = *a2;
  v24 = *(a1 + 8);
  *(a1 + 68) = 0;
  v25 = 0;
  v26 = *(a1 + 12);
  *(a1 + 8) = *v57;
  *(a1 + 16) = *&v57[8];
  v27 = *(a1 + 20);
  v28 = *(a1 + 44);
  v29 = *(a1 + 48);
  v30 = *(a1 + 52);
  v31 = *v57 - v24;
  v32 = *(a1 + 24);
  v33 = vsub_f32(*&v57[4], v26);
  v60 = v31;
  v61 = v33;
  v34 = 0.0;
  do
  {
    v34 = v34 + (*(&v60 + v25) * *(&v60 + v25));
    v25 += 4;
  }

  while (v25 != 12);
  *v22.i32 = sqrtf(v34);
  *(a1 + 56) = v22.i32[0];
  if (*v22.i32 >= 0.005)
  {
    v38 = v31 / *v22.i32;
    _D4 = vdiv_f32(v33, vdup_lane_s32(v22, 0));
    *(a1 + 20) = v38;
    *(a1 + 24) = _D4;
    v40 = 0;
    v41 = v38 - v27;
    v42 = vsub_f32(_D4, v32);
    v64 = LODWORD(v41);
    v65 = *&v42;
    v43 = 0.0;
    do
    {
      v43 = v43 + (*(&v64 + v40) * *(&v64 + v40));
      v40 += 4;
    }

    while (v40 != 12);
    v44 = sqrtf(v43);
    *(a1 + 60) = v44;
    if (v44 >= 0.005)
    {
      _S6 = v41 / v44;
      v49 = v42.f32[0] / v44;
      v42.f32[0] = v42.f32[1] / v44;
      *(a1 + 32) = v41 / v44;
      *(a1 + 36) = v49;
      v50 = (_D4.f32[0] * (v42.f32[1] / v44)) - (_D4.f32[1] * v49);
      __asm { FMLA            S17, S6, V4.S[1] }

      v56 = (v38 * v49) - (_D4.f32[0] * _S6);
      *(a1 + 40) = v42.i32[0];
      *(a1 + 44) = v50;
      *(a1 + 48) = _S17;
      *(a1 + 52) = v56;
      *(a1 + 64) = -(((v42.f32[0] * (v56 - v30)) + (v49 * (_S17 - v29))) + (_S6 * (v50 - v28)));
      *(a1 + 68) = 1;
      *a1 = v23;
      return;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
    }

    v45 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v67 = *&v23;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase::TNBFrame] Failed to obtain a new normal(N) vector, time %f", buf, 0xCu);
    }

    v46 = sub_19B420058();
    if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
      }

      v62 = 134217984;
      v63 = v23;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMTNBDoTEstimatorBase::TNBFrame] Failed to obtain a new normal(N) vector, time %f");
      goto LABEL_31;
    }
  }

  else
  {
    *(a1 + 20) = vneg_f32(0x3F0000003FLL);
    *(a1 + 28) = 2143289344;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
    }

    v35 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v67 = *&v23;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase::TNBFrame] Failed to obtain a new tangent(T) vector, time %f", buf, 0xCu);
    }

    v36 = sub_19B420058();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
      }

      v64 = 134217984;
      v65 = v23;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMTNBDoTEstimatorBase::TNBFrame] Failed to obtain a new tangent(T) vector, time %f");
LABEL_31:
      v47 = v37;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrInputs::AccelTNBFrame::updateFrame(const CMVector3d &, double)", "CoreLocation: %s\n", v37);
      if (v47 != buf)
      {
        free(v47);
      }
    }
  }
}

void sub_19B66E440(uint64_t a1, float a2)
{
  v3 = sub_19B66E4BC(a1, 0, a2);
  *(a1 + 8) = v3;
  for (i = 1; i != 4; ++i)
  {
    v3 = sub_19B66E4BC(a1, i, v3);
    *(a1 + 8) = v3;
  }
}

os_log_t sub_19B66E48C()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

float sub_19B66E4BC(void *a1, uint64_t a2, float a3)
{
  v4 = *a1;
  v3 = a1 + 12;
  v5 = v4 + 8 * a2;
  v6 = 3 * a2 + 1;
  v7 = *&v3[4 * v6];
  v8 = 3 * a2 + 2;
  v9 = *&v3[4 * v8];
  v10 = *(v4 + 96 + 24 * a2) * a3 * *(v5 + 192) - *(v4 + 96 + 8 * v6) * v7 - *(v4 + 96 + 8 * v8) * v9;
  v11 = *(v5 + 224) * (*(v4 + 8 * v6) * v7 + *(v4 + 24 * a2) * v10 + *(v4 + 8 * v8) * v9);
  *&v3[4 * v8] = v7;
  result = v11;
  *&v3[4 * v6] = v10;
  *&v3[12 * a2] = 0;
  return result;
}

void *sub_19B66E548(void *a1)
{
  *a1 = &unk_1F0E32A20;
  v2 = a1[16];
  if (v2)
  {
    MEMORY[0x19EAE76D0](v2, 0x1000C8052888210);
  }

  sub_19B66F4D8(a1 + 38);
  a1[29] = &unk_1F0E32728;
  sub_19B42A568(a1 + 32);
  return a1;
}

void sub_19B66E5D8(void *a1)
{
  sub_19B66E548(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B66E618(uint64_t result, double a2, int32x2_t a3)
{
  v126 = *MEMORY[0x1E69E9840];
  v3 = *(result + 148);
  if (v3)
  {
    v4 = result;
    v5 = result + 136;
    *a3.i32 = v3;
    v100 = a3;
    v6 = *(result + 136) / v3;
    v7 = *(result + 200) * v3;
    *(result + 148) = 0;
    v99 = exp(v7 / -5000.0);
    v97 = vdiv_f32(*(v5 + 4), vdup_lane_s32(v100, 0));
    bzero(v5, 0xCuLL);
    v8 = 0;
    v9 = 0;
    *(v5 - 48) = vmulq_n_f64(*(v5 - 48), v99);
    *(v5 - 32) = v99 * *(v5 - 32);
    v117[0] = 0;
    v10 = v97;
    v11 = v97.f32[1];
    v117[1] = v97.i32[1];
    v118 = vneg_f32(v97);
    v119 = 0;
    v120 = v6;
    v121 = v97.i32[0];
    v122 = -v6;
    v123 = 0;
    v98 = vmul_f32(v10, v10).f32[0];
    v109[0] = -(v98 + (v11 * v11));
    v109[1] = v6 * v97.f32[0];
    v110 = vmuls_lane_f32(v6, v97, 1);
    v111 = v6 * v97.f32[0];
    v112 = -((v6 * v6) + (v11 * v11));
    v113 = vmuls_lane_f32(v97.f32[0], v97, 1);
    v114 = v110;
    v115 = v113;
    v116 = -((v6 * v6) + (v10.f32[0] * v10.f32[0]));
    v12 = v7;
    v13 = -v12;
    v14 = v7 * v7 * 0.5;
    v15 = v14;
    do
    {
      v16 = v8;
      v17 = 3;
      do
      {
        *&v104[v16] = (*(v109 + v16) * v15) + (v13 * *(v117 + v16));
        v16 += 4;
        --v17;
      }

      while (v17);
      *&v104[16 * v9] = *&v104[16 * v9] + 1.0;
      ++v9;
      v8 += 12;
    }

    while (v9 != 3);
    v18 = 0;
    v19 = v107;
    do
    {
      *v19 = *&v104[v18];
      *(v19 + 2) = *&v104[v18 + 8];
      v18 += 12;
      v19 += 24;
    }

    while (v18 != 36);
    v20 = 0;
    v21 = 0;
    v22 = v14 / 5000.0 - v7;
    do
    {
      v23 = v20;
      v24 = 3;
      do
      {
        *&v104[v23] = *(v117 + v23) * v15;
        v23 += 4;
        --v24;
      }

      while (v24);
      *&v104[16 * v21] = *&v104[16 * v21] + v22;
      ++v21;
      v20 += 12;
    }

    while (v21 != 3);
    v25 = 0;
    v26 = &v108;
    do
    {
      *v26 = *&v104[v25];
      v26[2] = *&v104[v25 + 8];
      v25 += 12;
      v26 += 6;
    }

    while (v25 != 36);
    for (i = 12; i != 84; i += 24)
    {
      bzero(&v107[i], 0xCuLL);
    }

    for (j = 84; j != 156; j += 24)
    {
      bzero(&v107[j], 0xCuLL);
      v28 = v99;
      *&v107[i] = v28;
      i += 28;
    }

    v30 = 0;
    v31 = *(v4 + 112);
    v32 = v107;
    do
    {
      v33 = &v107[4 * v30];
      v34 = (v33 + 120);
      v35 = 5;
      LODWORD(v36) = 6;
      do
      {
        v37 = 0;
        v38 = v36 - 2;
        v36 = v35;
        v39 = *v34;
        v40 = v31 + 4 * (v38 * v35 / 2);
        v41 = v32;
        do
        {
          v42 = *v41;
          v41 += 6;
          v39 = v39 + (v42 * *(v40 + 4 * v37++));
        }

        while (v36 != v37);
        *v34 = v39;
        v35 = v36 - 1;
        v34 = &v33[24 * v36 - 24];
      }

      while (v36 > 1);
      ++v30;
      ++v32;
    }

    while (v30 != 6);
    v101[0] = v103;
    v101[1] = v102;
    v43 = 0;
    v44 = 2.76135698e-10 / (7.0 / (exp((0.11 - sqrtf((v98 + (v6 * v6)) + (v97.f32[1] * v97.f32[1]))) / 0.012) + 1.0) + 1.0);
    v46 = v104;
    do
    {
      bzero(&v104[v43], 0xCuLL);
      v45 = (v7 * -0.25 / 5000.0 + 0.333333333) * (v7 * (v7 * (v7 * v44))) + (*v100.i32 * 0.00000021323) * 0.5 * v7;
      *v46 = v45;
      v46 += 7;
      v43 += 24;
    }

    while (v43 != 72);
    v47 = expm1(-(v7 / 5000.0));
    v48 = exp(-(v7 / 5000.0));
    v49 = 0;
    v50 = 0;
    v51 = v44 * -0.5 * 1.24999999e11 * (v48 * (v7 / 5000.0 * (v7 / 5000.0) + v7 / 5000.0 * 2.0) + v47 * 2.0);
    v52 = v48 * (v7 * (v7 * (v44 * -0.5)));
    v53 = v51;
    do
    {
      v54 = v49;
      v55 = 3;
      do
      {
        *(&v124 + v54) = *(v117 + v54) * v53;
        v54 += 4;
        --v55;
      }

      while (v55);
      *(&v124 + 4 * v50) = *(&v124 + 4 * v50) + v52;
      ++v50;
      v49 += 12;
    }

    while (v50 != 3);
    v56 = &v105;
    v57 = &v106;
    v58 = &v124;
    v59 = 3;
    do
    {
      v60 = 0;
      v61 = v56;
      do
      {
        v62 = *(v58 + v60 * 4);
        v57[v60] = v62;
        *v61 = v62;
        v61 += 3;
        ++v60;
      }

      while (v60 != 3);
      ++v59;
      v56 = (v56 + 4);
      v57 += 6;
      v58 = (v58 + 12);
    }

    while (v59 != 6);
    v63 = (1.0 - exp(v7 * -2.0 / 5000.0)) * (v44 * 5000.0) * 0.5;
    v64 = 84;
    for (k = 84; k != 156; k += 24)
    {
      bzero(&v104[k], 0xCuLL);
      *&v104[v64] = v63;
      v64 += 28;
    }

    v66 = 6;
    sub_19B66EF8C(v101, v104, 6);
    v67 = 0;
    v68 = v103;
    v69 = 5;
    v71 = *(v4 + 112);
    v70 = *(v4 + 120);
    v72 = 20;
    result = v70;
    while (1)
    {
      v73 = 0;
      v74 = v66 - 1;
      v75 = 0.0;
      v76 = v72;
      do
      {
        v75 = v75 + ((*&v107[v76] * *&v107[v76]) * *(v70 + v73));
        v73 += 4;
        v76 += 24;
      }

      while (v73 != 24);
      v77 = &v102[v74];
      if (v66 >= 6)
      {
        v80 = v75 + *v77;
        *(&v124 + v74) = v80;
      }

      else
      {
        v78 = v67;
        do
        {
          v79 = v103[v74 + (((v78 + 5) * (v78 + 6)) >> 1)];
          v75 = v75 + ((v79 * v79) * *&v102[v78++ + 6]);
        }

        while (v78 + 6 < 6);
        v80 = v75 + *v77;
        *(&v124 + v74) = v80;
        if (v66 < 2)
        {
          *result = v124;
          *(result + 16) = v125;
          return result;
        }
      }

      v81 = 0;
      v82 = 0;
      result = *(v4 + 120);
      v83 = (v74 * (v66 - 2) + ((v74 * (v66 - 2)) >> 31)) >> 1;
      do
      {
        v84 = 0;
        v85 = 0.0;
        v86 = v107;
        do
        {
          v85 = v85 + ((*&v86[v72] * *(result + v84)) * *&v86[v81]);
          v84 += 4;
          v86 += 24;
        }

        while (v84 != 24);
        v87 = v82 + v83;
        v88 = v85 + (*v77 * v103[v82 + v83]);
        if (v66 <= 5)
        {
          v89 = v68;
          for (m = v66; m < 6; ++m)
          {
            v91 = *v89++;
            v88 = v88 + ((v103[v74 + (((m - 1) * m) >> 1)] * v91) * v103[v82 + (((m - 1) * m) >> 1)]);
          }
        }

        v92 = v88 / v80;
        *(v71 + 4 * v87) = v92;
        v93 = v107;
        v94 = 6;
        do
        {
          *&v93[v81] = *&v93[v81] + (-v92 * *&v93[v72]);
          v93 += 24;
          --v94;
        }

        while (v94);
        if (v66 <= 5)
        {
          v95 = v69;
          do
          {
            v96 = v95 + 1;
            v103[v82 + ((v95 * v96) >> 1)] = v103[v82 + ((v95 * v96) >> 1)] - (*(v71 + 4 * v87) * v103[v74 + ((v95 * v96) >> 1)]);
            ++v95;
          }

          while (v96 != 5);
          v92 = *(v71 + 4 * v87);
        }

        v103[v87] = v103[v87] - v92;
        ++v82;
        v81 += 4;
      }

      while (v82 != v69);
      --v69;
      v72 -= 4;
      --v67;
      --v68;
      --v66;
    }
  }

  return result;
}

void sub_19B66EDDC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8)
{
  v9 = a7;
  v10 = a6;
  bzero(a1, 8 * a6);
  if (v9 >= 1)
  {
    v13 = 0;
    v14 = &a8[v10];
    do
    {
      sub_19B66F24C(a8, *a2, a3 + 4 * v13, v9, v10);
      if (v10 >= 1)
      {
        v15 = a2[1];
        v16 = v15;
        v17 = a8;
        v18 = v10;
        do
        {
          v19 = *v16++;
          v17[v10] = v19 * *v17;
          ++v17;
          --v18;
        }

        while (v18);
        v20 = 0;
        v21 = *(a5 + 4 * v13);
        v22 = *(a4 + 4 * v13);
        v23 = *a2;
        v24 = 1.0 / v22;
        do
        {
          v25 = v22;
          v26 = a8[v20];
          v22 = v22 + (v26 * v14[v20]);
          v15[v20] = v15[v20] * (v25 * (1.0 / v22));
          if (v20)
          {
            v27 = 0;
            v28 = -(v26 * v24);
            v29 = v23 + 4 * ((v20 - 1) * v20 / 2);
            do
            {
              v30 = *(v29 + 4 * v27);
              *(v29 + 4 * v27) = v30 + (v14[v27] * v28);
              v14[v27] = v14[v27] + (v14[v20] * v30);
              ++v27;
            }

            while (v20 != v27);
          }

          ++v20;
          v24 = 1.0 / v22;
        }

        while (v20 != v10);
        v31 = v21 * (1.0 / v22);
        v32 = &a8[v10];
        v33 = a1;
        v34 = v10;
        do
        {
          v35 = *v32++;
          *v33 = *v33 + (v31 * v35);
          ++v33;
          --v34;
        }

        while (v34);
      }

      ++v13;
    }

    while (v13 != v9);
  }
}

void sub_19B66EF8C(void **a1, uint64_t a2, int a3)
{
  bzero(*a1, 4 * ((a3 - 1) * a3 / 2));
  bzero(a1[1], 4 * a3);
  if (a3 >= 1)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a3 - 2;
    v9 = a3 - 1;
    v10 = &v7[a3];
    v11 = a3;
    for (i = v9; ; --i)
    {
      v13 = *(a2 + 4 * i + 4 * i * a3);
      v14 = v10;
      v15 = v11;
      if (i < v9)
      {
        do
        {
          v16 = *v14++;
          v13 = v13 + (-(v6[i + (((v15 - 1) * v15) >> 1)] * v6[i + (((v15 - 1) * v15) >> 1)]) * v16);
          ++v15;
        }

        while (v15 < a3);
      }

      v7[i] = v13;
      if (i < 1)
      {
        break;
      }

      v17 = *a1;
      v18 = v8;
      do
      {
        v19 = *(a2 + 4 * i * a3 + 4 * v18);
        if (i < v9)
        {
          v20 = 0;
          v21 = v11;
          do
          {
            v19 = v19 + (-(v17[v18 + (((v21 - 1) * v21) >> 1)] * v17[i + (((v21 - 1) * v21) >> 1)]) * v10[v20]);
            ++v21;
            ++v20;
          }

          while (v21 < a3);
        }

        v6[(i - 1) * i / 2 + v18] = v19 / v7[i];
      }

      while (v18-- > 0);
      --v8;
      --v11;
      --v10;
    }
  }
}

double sub_19B66F0F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = 0.0;
  v4 = 0.0;
  if (v2 >= 2)
  {
    v5 = v2 * *(a1 + 40) - *(a1 + 32) * *(a1 + 32);
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      v4 = v5 / ((v2 - 1) * v2);
    }
  }

  v6 = *(a1 + 168);
  if (v6 >= 2)
  {
    v7 = v6 * *(a1 + 120) - *(a1 + 112) * *(a1 + 112);
    if (v7 >= 0.0)
    {
      v3 = v7 / ((v6 - 1) * v6);
    }
  }

  v8 = *(a1 + 248);
  v9 = 0.0;
  if (v8 >= 2)
  {
    v10 = v8 * *(a1 + 200) - *(a1 + 192) * *(a1 + 192);
    if (v10 >= 0.0)
    {
      v9 = v10 / ((v8 - 1) * v8);
    }
  }

  *a2 = &unk_1F0E33EB0;
  *(a2 + 8) = sqrt(v4);
  *(a2 + 16) = sqrt(v3);
  result = sqrt(v9);
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_19B66F1D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = *(result + 32) / v2;
  }

  v5 = *(result + 168);
  if (v5)
  {
    v3 = *(result + 112) / v5;
  }

  v6 = *(result + 248);
  if (v6)
  {
    v7 = *(result + 192) / v6;
  }

  else
  {
    v7 = 0.0;
  }

  *a2 = &unk_1F0E33EB0;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_19B66F24C(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a3 - 4 * a4);
    do
    {
      v7 = *(a3 + 4 * v5 * a4);
      *(result + 4 * v5) = v7;
      if (v5)
      {
        v8 = v6;
        v9 = v5;
        do
        {
          v7 = v7 + (*v8 * *(a2 - 4 + 4 * ((v5 - 1) * v5 / 2) + 4 * v9));
          *(result + 4 * v5) = v7;
          v8 -= a4;
        }

        while (v9-- > 1);
      }

      ++v5;
      v6 += a4;
    }

    while (v5 != a5);
  }

  return result;
}

uint64_t sub_19B66F2F4(_DWORD *a1, _DWORD *a2)
{
  *a2 = a1[39];
  a2[1] = a1[40];
  a2[2] = a1[41];
  return 1;
}

BOOL sub_19B66F314(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  if (v2 <= 0.0)
  {
    *a2 = 0;
    v10 = 0.0;
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32) + *(a1 + 32);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = v3 * (v6 + v6) - v5 * v4;
    v8 = -(v3 * (v5 + v5)) - v6 * v4;
    v9 = v5 * (v5 + v5) + -1.0 + v6 * (v6 + v6);
    *&v5 = *(a1 + 184) - v7;
    *a2 = LODWORD(v5);
    *&v8 = *(a1 + 188) - v8;
    *(a2 + 4) = LODWORD(v8);
    v10 = *(a1 + 192) - v9;
  }

  result = v2 > 0.0;
  *(a2 + 8) = v10;
  return result;
}

os_log_t sub_19B66F3C8()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

void *sub_19B66F3F8(void *a1)
{
  *a1 = &unk_1F0E32748;
  sub_19B66B918(a1 + 4);
  return a1;
}

void sub_19B66F43C(void *a1)
{
  sub_19B66F4D8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B66F474(void *a1)
{
  *a1 = &unk_1F0E32748;
  sub_19B66B918(a1 + 4);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B66F4D8(void *a1)
{
  *a1 = &unk_1F0E32C18;
  a1[22] = &unk_1F0E32748;
  sub_19B66B918(a1 + 26);
  a1[12] = &unk_1F0E32748;
  sub_19B66B918(a1 + 16);
  a1[2] = &unk_1F0E32748;
  sub_19B66B918(a1 + 6);
  return a1;
}

double sub_19B66F590(uint64_t a1, double *a2)
{
  sub_19B66F62C((a1 + 32), a2);
  v4 = *(a1 + 72);
  if (v4 > *(a1 + 8))
  {
    v5 = *(a1 + 64);
    v6 = *(*(*(a1 + 40) + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v5 & 0x1FF));
    v7 = *(a1 + 16) - v6;
    v8 = *(a1 + 24) - v6 * v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 64) = v5 + 1;
    *(a1 + 72) = v4 - 1;
    sub_19B66F888(a1 + 32, 1);
  }

  v9 = *(a1 + 24);
  *(a1 + 16) = *a2 + *(a1 + 16);
  result = v9 + *a2 * *a2;
  *(a1 + 24) = result;
  return result;
}

double sub_19B66F62C(unint64_t *a1, double *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_19B66F6B4(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

void sub_19B66F6B4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_19B446FB8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_19B4290B0(a1, &v9);
}

void sub_19B66F83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B66F888(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t sub_19B66F8FC(uint64_t a1, int a2)
{
  v3 = sub_19B43CCBC(a1, a2);
  v4 = *(v3 + 8);
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 273) = v4;
  *v3 = &unk_1F0E31FE8;
  *(v3 + 200) = &unk_1F0E32050;
  *(v3 + 274) = 0;
  *(v3 + 280) = 0;
  v5 = v3 + 288;
  sub_19B76D780(v3 + 288);
  sub_19B6198E4(a1 + 1120, v5);
  return a1;
}

void sub_19B66F9A4(_Unwind_Exception *a1)
{
  *(v1 + 288) = &unk_1F0E32700;
  sub_19B5D3E20(v2);
  sub_19B760468(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B66F9DC(uint64_t a1)
{
  *a1 = &unk_1F0E31FE8;
  v2 = (a1 + 200);
  *(a1 + 200) = &unk_1F0E32050;
  if (*(a1 + 225) == 1)
  {
    v3 = sub_19B442E70();
    sub_19B445814(v3);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC(v2);
  sub_19B423148(v2);
  *(a1 + 288) = &unk_1F0E32700;
  sub_19B5D3E20(v2);

  return sub_19B760468(a1);
}

void sub_19B66FAAC(uint64_t a1)
{
  sub_19B66F9DC(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B66FAE4(uint64_t a1)
{
  sub_19B66F9DC(a1 - 200);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B66FB20(uint64_t a1)
{
  *(a1 + 1130) = 0;
  *(a1 + 1132) = 0;
  *(a1 + 1140) = 0x3F80000000000000;
  v3[0] = xmmword_19B7B9898;
  v3[1] = unk_19B7B98A8;
  v4 = 973279855;
  sub_19B61A35C(a1 + 1148, v3);
  *(a1 + 1128) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 1;
  sub_19B76D864(a1 + 288);
  sub_19B4431A8(a1 + 200, *(a1 + 16));
  sub_19B442D78(a1 + 200, *(a1 + 24));
  sub_19B442F50(a1 + 200);
  *&v3[0] = 2;
  result = sub_19B4453D4(a1, v3);
  *(a1 + 274) = 0;
  *(a1 + 280) = 0;
  return result;
}

void *sub_19B66FBD8(uint64_t a1)
{
  if (*(a1 + 225) == 1)
  {
    v2 = sub_19B442E70();
    sub_19B445814(v2);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC((a1 + 200));

  return sub_19B423148((a1 + 200));
}

void sub_19B66FC2C(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Application state changed, %d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
    }

    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Application state changed, %d", v8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService6AxisAP::applicationStateChanged(BOOL)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  *(a1 + 274) = a2 ^ 1;
}

void sub_19B66FE04(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = (*a2 * 1000000.0);
  v5 = *(a2 + 16) * 0.017453;
  v40 = vmul_f32(*(a2 + 8), vdup_n_s32(0x3C8EFA35u));
  v41 = v5;
  sub_19B61B024(a1 + 1120, &v40, v4);
  sub_19B76DBF0(a1 + 288, &v40, v4);
  v25 = 0uLL;
  v24 = -1.0;
  sub_19B41E130(&v25, v6);
  v34 = 0;
  v33 = 0;
  v36 = 0;
  v24 = *a2;
  v25 = *(a1 + 1132);
  v8 = sub_19B61A6A4(a1 + 1120);
  v26 = LODWORD(v8);
  v27 = v9;
  v28 = v10;
  v11 = *(a1 + 1176);
  v29 = *(v11 + 440);
  v30 = *(v11 + 448);
  v35 = 511;
  v31 = xmmword_19B7BA310;
  v32 = -1082130432;
  if (*(a1 + 252))
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  if (*(v11 + 424) == 1 && *(v11 + 416) && *(a1 + 1130))
  {
    v12 |= 0x100u;
  }

  v36 = v12;
  v37 = 3;
  v39 = 0;
  v38 = *(a2 + 22);
  v13 = *a2;
  v14 = *(a1 + 280);
  if (v14 != 0.0)
  {
    v15 = v13 - v14;
    if (v13 - v14 > 0.100000001)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
      }

      v16 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v15;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "Large time gap, %lf", buf, 0xCu);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
        }

        v42 = 134217984;
        v43 = v15;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Large time gap, %lf", COERCE_DOUBLE(&v42));
        v19 = v18;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService6AxisAP::feedGyroData(const CLGyro::Sample *)", "CoreLocation: %s\n", v18);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      if (*(a1 + 274) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
        }

        v20 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "Reset while backgrounded", buf, 2u);
        }

        v21 = sub_19B420058();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
          }

          LOWORD(v42) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Reset while backgrounded", &v42, 2);
          v23 = v22;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService6AxisAP::feedGyroData(const CLGyro::Sample *)", "CoreLocation: %s\n", v22);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        *(a1 + 1130) = 0;
        *(a1 + 1132) = 0;
        *(a1 + 1140) = 0;
        *(a1 + 1144) = 1065353216;
        buf[0] = xmmword_19B7B9898;
        buf[1] = unk_19B7B98A8;
        v45 = 973279855;
        sub_19B61A35C(a1 + 1148, buf);
        *(a1 + 1128) = 0;
        *(a1 + 1184) = 0;
        *(a1 + 1192) = 0;
        *(a1 + 1200) = 1;
      }
    }
  }

  *(a1 + 280) = v13;
  sub_19B41FA70(a1, &v24, v7);
}

float sub_19B6702DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = *(a2 + 8);
  v4 = *(a3 + 2);
  *(a1 + 712) = 1;
  v5 = *a3;
  *(a1 + 740) = *a2;
  *(a1 + 748) = result;
  *(a1 + 716) = v5;
  *(a1 + 724) = v4;
  return result;
}

float sub_19B67030C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = *(a2 + 8);
  v4 = *(a3 + 2);
  *(a1 + 512) = 1;
  v5 = *a3;
  *(a1 + 540) = *a2;
  *(a1 + 548) = result;
  *(a1 + 516) = v5;
  *(a1 + 524) = v4;
  return result;
}

uint64_t sub_19B67033C(float32x2_t *a1, uint64_t a2)
{
  v3 = (*a2 * 1000000.0);
  v4 = *(a2 + 16);
  v6 = *(a2 + 8);
  v7 = v4;
  sub_19B76D914(a1 + 36, &v6, v3);
  return sub_19B61B33C(a1 + 140);
}

void *sub_19B6713E0(void *a1)
{
  *a1 = &unk_1F0E338C0;
  v2 = a1[6];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B671440(void *a1)
{
  sub_19B6713E0(a1);

  JUMPOUT(0x19EAE76F0);
}

CFStringRef CLClientCreateIso6709Notation(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *MEMORY[0x1E695E480];
  v4 = *(a1 + 4);
  if (v2 >= 0.0)
  {
    return CFStringCreateWithFormat(v3, 0, @"%+08.4lf%+09.4lf%+08.3lf/", v4, *&v4, *(a1 + 12), *(a1 + 28));
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"%+08.4lf%+09.4lf/", v4, *(a1 + 4), *(a1 + 12));
  }
}

void CLClientSnapLocationToResolution(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  *(a2 + 140) = *(a1 + 140);
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  *(a2 + 96) = v7;
  v10 = a3 * 1.41421356;
  if (*(a2 + 20) < a3 * 1.41421356)
  {
    sub_19B5E3140((a2 + 4), (a2 + 12), a3);
    *(a2 + 20) = v10;
  }
}

void *sub_19B671564(uint64_t a1)
{
  *a1 = &unk_1F0E31878;
  *(a1 + 64) = 0;
  sub_19B42A614(a1, *(a1 + 32));
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B6715D4(uint64_t a1)
{
  sub_19B671564(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B67160C()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

void sub_19B67178C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B6717BC(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
  }

  v14 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "ExericseMinute, Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "ExericseMinute, Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMExerciseMinuteInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B6719E4(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      *buf = 138413058;
      v34 = v7;
      v35 = 1024;
      v36 = v9;
      v37 = 1024;
      v38 = v11;
      v39 = 2048;
      v40 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "ExericseMinute, client connection interrupt, %@, %d, %d, %p", buf, 0x22u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
      }

      v13 = off_1ED71C838;
      v14 = getpid();
      v15 = *(a1 + 32);
      v16 = *(v15 + 32);
      v25 = 138413058;
      v26 = v7;
      v27 = 1024;
      v28 = v14;
      v29 = 1024;
      v30 = v16;
      v31 = 2048;
      v32 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 0, "ExericseMinute, client connection interrupt, %@, %d, %d, %p", &v25, 34);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMExerciseMinuteInternal init]_block_invoke", "CoreLocation: %s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = *(a1 + 32);
  if (*(v19 + 32) == 1)
  {
    v20 = objc_msgSend_copy(*(v19 + 48), v5, v6);
    v23 = objc_msgSend_copy(*(*(a1 + 32) + 40), v21, v22);
    objc_msgSend__startUpdatesFromRecord_handler_(*(a1 + 32), v24, v23, v20);
  }
}

void sub_19B671D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B671E44(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_19B428B50(&__p, "kCLConnectionMessageExerciseMinuteUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 32) && *(v3 + 48))
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10 = MEMORY[0x1E695E110];
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, &v10, &v9, 1);
    sub_19B45280C();
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "ExerciseMinute, Error stopping updates, no active clients.", &__p, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
    }

    LOWORD(v8) = 0;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B41C000, off_1ED71C838, 0, "ExerciseMinute, Error stopping updates, no active clients.", &v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMExerciseMinuteInternal _stopUpdates]_block_invoke", "CoreLocation: %s\n", v6);
    if (v7 != &__p)
    {
      free(v7);
    }
  }
}

void sub_19B6720FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6721BC(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 8) && *(a1 + 40))
  {

    *(*(a1 + 32) + 48) = 0;
    *(*(a1 + 32) + 48) = *(a1 + 40);
    sub_19B428B50(&__p, "kCLConnectionMessageExerciseMinuteUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v5 < 0)
    {
      operator delete(__p);
    }

    v6 = @"kCLConnectionMessageSubscribeKey";
    v7[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v7, &v6, 1);
    sub_19B45280C();
  }
}

void sub_19B672370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6723B4(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 48);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v13)) != 0)
    {
      v16 = DictionaryOfClasses;
      v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMErrorMessage");
      v19 = objc_msgSend_objectForKeyedSubscript_(v16, v18, @"CMExerciseMinuteDataArray");
      if (v17)
      {
        *(*(a1 + 32) + 32) = 0;
        v20 = *(*(a1 + 32) + 24);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = sub_19B672818;
        v33[3] = &unk_1E7532B90;
        v33[4] = v17;
        v33[5] = v6;
        v21 = v33;
      }

      else
      {
        v22 = v19;
        if (v19)
        {

          *(*(a1 + 32) + 40) = 0;
          *(*(a1 + 32) + 40) = objc_msgSend_lastObject(v22, v23, v24);
          v20 = *(*(a1 + 32) + 24);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = sub_19B672890;
          v32[3] = &unk_1E7532B90;
          v32[4] = v22;
          v32[5] = v6;
          v21 = v32;
        }

        else
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
          }

          v25 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_FAULT, "ExerciseMinute, Unable to parse update.", buf, 2u);
          }

          v26 = sub_19B420058();
          if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
            }

            v31 = 0;
            LODWORD(v29) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "ExerciseMinute, Unable to parse update.", &v31, v29);
            v28 = v27;
            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMExerciseMinuteInternal _startUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v27);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          v20 = *(*(a1 + 32) + 24);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = sub_19B6728A8;
          v30[3] = &unk_1E7532B40;
          v30[4] = v6;
          v21 = v30;
        }
      }
    }

    else
    {
      v20 = *(*(a1 + 32) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6727B4;
      block[3] = &unk_1E7532B40;
      block[4] = v6;
      v21 = block;
    }

    dispatch_async(v20, v21);
  }
}

uint64_t sub_19B6727B4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B672818(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6728A8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B672984(uint64_t a1, const char *a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8) && *(a1 + 48))
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v24[0] = @"CMExerciseMinuteRecordId";
      v5 = MEMORY[0x1E696AD98];
      v6 = objc_msgSend_recordId(v4, a2, a3);
      v25[0] = objc_msgSend_numberWithInteger_(v5, v7, v6);
      v24[1] = @"CMExerciseMinuteStartDate";
      v8 = MEMORY[0x1E696AD98];
      started = objc_msgSend_startDate(*(a1 + 40), v9, v10);
      objc_msgSend_timeIntervalSinceReferenceDate(started, v12, v13);
      v25[1] = objc_msgSend_numberWithDouble_(v8, v14, v15);
      v24[2] = @"CMExerciseMinuteSourceId";
      if (objc_msgSend_sourceId(*(a1 + 40), v16, v17))
      {
        v20 = objc_msgSend_sourceId(*(a1 + 40), v18, v19);
      }

      else
      {
        v20 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v18, v19);
      }

      v25[2] = objc_msgSend_UUIDString(v20, v21, v22);
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v25, v24, 3);
    }

    else
    {
      v26 = @"CMExerciseMinuteRecordId";
      v27[0] = &unk_1F0E6A540;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v27, &v26, 1);
    }

    sub_19B5D12C8();
  }
}

void sub_19B672B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B672BB0(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMExerciseMinuteDataArray");
    if (v16)
    {
      v19 = *(*(a1 + 32) + 24);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_19B672FDC;
      v30[3] = &unk_1E7532B90;
      v30[4] = v16;
      v30[5] = v5;
      v20 = v30;
    }

    else if (v18)
    {
      v21 = *(*(a1 + 32) + 24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_19B673054;
      v29[3] = &unk_1E7532B90;
      v29[4] = v18;
      v29[5] = v5;
      v20 = v29;
      v19 = v21;
    }

    else
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
      }

      v22 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "ExerciseMinute, Unable to parse query.", buf, 2u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
        }

        v28 = 0;
        LODWORD(v26) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "ExerciseMinute, Unable to parse query.", &v28, v26);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMExerciseMinuteInternal _queryExerciseMinutesFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v19 = *(*(a1 + 32) + 24);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B67306C;
      v27[3] = &unk_1E7532B40;
      v27[4] = v5;
      v20 = v27;
    }
  }

  else
  {
    v19 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B672F78;
    block[3] = &unk_1E7532B40;
    block[4] = v5;
    v20 = block;
  }

  dispatch_async(v19, v20);
}

uint64_t sub_19B672F78(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B672FDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B67306C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B67330C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return objc_msgSend__startUpdatesFromRecord_handler_(v4, v5, v6, v7);
}

uint64_t sub_19B6733C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopUpdates, v4);
}

uint64_t sub_19B6734BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  return objc_msgSend__startUpdatesWithHandler_(v4, v5, v6);
}

int64_t sub_19B6735E0(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D288 = result;
  return result;
}

uint64_t sub_19B673618()
{
  if (qword_1ED71D2A0 != -1)
  {
    dispatch_once(&qword_1ED71D2A0, &unk_1F0E29560);
  }

  return qword_1ED71D298;
}

void sub_19B673660()
{
  if (sub_19B423E34())
  {
    operator new();
  }
}

void sub_19B673754(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v5 = v1[11];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void *sub_19B67379C(void *a1)
{
  *a1 = &unk_1F0E339A8;
  v5 = 0;
  sub_19B673820(a1, &v5);
  v2 = a1[11];
  a1[10] = 0;
  a1[11] = 0;
  if (v2)
  {
    sub_19B41FFEC(v2);
    v3 = a1[11];
    if (v3)
    {
      sub_19B41FFEC(v3);
    }
  }

  return sub_19B674784(a1);
}

uint64_t sub_19B673820(uint64_t a1, double *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  result = sub_19B423E34();
  if (result)
  {
    if (!*(a1 + 80))
    {
      v5 = sub_19B42CAAC();
      sub_19B42C428(v5);
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v6 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_INFO))
    {
      v7 = *a2;
      *buf = 134349056;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "Setting magnetometer update and batch interval to %{public}f", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
      }

      v9 = *a2;
      v17 = 134349056;
      v18 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 1, "Setting magnetometer update and batch interval to %{public}f", &v17, 12);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMagnetometer::setMagnetometerInterval(const CFTimeInterval &)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v14 = *(a1 + 80);
    v13 = (a1 + 80);
    v12 = v14;
    v15 = rint(*a2 * 1000000.0);
    if (*a2 < 0.0)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_19B4238F4(v12, v16);
    return sub_19B424A2C(*v13, *a2);
  }

  return result;
}

void sub_19B673CD4(void *a1)
{
  sub_19B67379C(a1);

  JUMPOUT(0x19EAE76F0);
}

BOOL sub_19B673D0C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v5 = objc_msgSend_initWithBool_(v3, v4, 1);
    (*(**(a1 + 80) + 16))(*(a1 + 80), @"IOHIDCompasssResetDAC", v5);
  }

  return v1 != 0;
}

uint64_t sub_19B673D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  result = IOHIDEventGetType();
  if (result == 21)
  {
    IOHIDEventGetFloatValue();
    v7 = v6;
    IOHIDEventGetFloatValue();
    v9 = v8;
    IOHIDEventGetFloatValue();
    v11 = v10;
    TimeStamp = IOHIDEventGetTimeStamp();
    v13 = sub_19B41E070(TimeStamp);
    if (v13 > *(a1 + 64) + 1.0)
    {
      v14 = (*(**(a1 + 80) + 24))(*(a1 + 80), @"AppleVoltageDictionary");
      v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"COMPASS_TEMP");
      objc_msgSend_floatValue(v16, v17, v18);
      *(a1 + 72) = v19 / 100.0;
      *(a1 + 64) = v13;
    }

    v35 = v13;
    v20 = v9 - *(a1 + 52);
    *&v36 = v7 - *(a1 + 48);
    *(&v36 + 1) = v20;
    v21 = *(a1 + 72);
    v37 = v11 - *(a1 + 56);
    v38 = v21;
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v22 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v40 = "Magnetometer";
      v41 = 2048;
      v42 = v7;
      v43 = 2048;
      v44 = v9;
      v45 = 2048;
      v46 = v11;
      v47 = 2048;
      v48 = v13;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEBUG, "Type,%s,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", buf, 0x34u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
      }

      *v52 = 136316162;
      *&v52[4] = "Magnetometer";
      *&v52[12] = 2048;
      *&v52[14] = v7;
      v53 = 2048;
      v54 = v9;
      *v55 = 2048;
      *&v55[2] = v11;
      *&v55[10] = 2048;
      v56 = v13;
      LODWORD(v33) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "Type,%s,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", v52, v33, v34, v35, v36);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometer::onMagnetometerData(const CLMotionTypeMagneticField &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    if (*(a1 + 32) == 1)
    {
      *v52 = &unk_1F0E313B0;
      *&v52[8] = CFAbsoluteTimeGetCurrent();
      v54 = v13;
      *v55 = v7;
      *&v55[4] = v9;
      *&v55[8] = v11;
      v26 = sub_19B720E40();
      sub_19B7223F8(v26, v52);
      sub_19B517F80(buf);
      sub_19B532648(buf);
      v51 |= 1u;
      v49 = *&v52[8];
      v27 = v50;
      *(v50 + 36) |= 1u;
      *(v27 + 8) = v13;
      v28 = v50;
      *(v50 + 36) |= 8u;
      *(v28 + 24) = v7;
      v29 = v50;
      *(v50 + 36) |= 0x10u;
      *(v29 + 28) = v9;
      v30 = v50;
      *(v50 + 36) |= 0x20u;
      *(v30 + 32) = v11;
      v31 = v50;
      v32 = *(a1 + 72);
      *(v50 + 36) |= 4u;
      *(v31 + 20) = v32;
      sub_19B51DBD4(buf);
    }

    return sub_19B41DF08(a1, 0, &v35, 24);
  }

  return result;
}

void sub_19B6741CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

double sub_19B6741E8(uint64_t a1, int a2, double *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v4 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v15 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unrecognized magnetometer notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (result = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
      }

      v13[0] = 67240192;
      v13[1] = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 17, "Unrecognized magnetometer notification %{public}d", v13, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLMagnetometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }

      return 0.0;
    }
  }

  else
  {
    sub_19B673820(a1, a3);
    if (*a3 > 0.0 && !*(a1 + 40))
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      operator new();
    }

    if (*a3 <= 0.0 && *(a1 + 40))
    {
      v11 = sub_19B708E64();
      sub_19B426A14(v11, 0, *(a1 + 40));
      v12 = *(a1 + 40);
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      *(a1 + 40) = 0;
    }

    return *a3;
  }

  return result;
}

void sub_19B6744DC(float *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2890 != -1)
  {
    dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
  }

  v4 = qword_1EAFE2898;
  if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_INFO))
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    *buf = 134218496;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Received magnetometer offset (%f, %f, %f)", buf, 0x20u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v9 = *a1;
    v10 = a1[1];
    v11 = a1[2];
    v16 = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    LODWORD(v15) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 1, "Received magnetometer offset (%f, %f, %f)", COERCE_DOUBLE(&v16), v15);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometer::onOffset(const CLMotionTypeMagneticField *, void *)", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = *a1;
  *(a2 + 56) = a1[2];
  *(a2 + 48) = v14;
}

os_log_t sub_19B67470C()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

void sub_19B674740(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B674784(void *a1)
{
  *a1 = &unk_1F0E32D30;
  v2 = a1[2];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 80 * v4 - 48;
      v6 = -80 * v4;
      do
      {
        sub_19B674A48((v5 + 24));
        sub_19B654634(v5, *(v5 + 8));
        v5 -= 80;
        v6 += 80;
      }

      while (v6);
    }

    MEMORY[0x19EAE76D0](v3, 0x1020C80BCAB735ELL);
  }

  return a1;
}

void sub_19B674830(void *a1)
{
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B674868(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) > a2)
  {
    return *(*(a1 + 16) + 80 * a2 + 72);
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unknown notification %d", buf, 8u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "Unknown notification %d", v8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 0, "ssize_t CLMotionNotifier::numberOfSpectators(int)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return -1;
}

void *sub_19B674A48(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_19B674B78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B674EE0(uint64_t a1, const char *a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E695E118];
  v5[0] = @"kCLConnectionMessageSubscribeKey";
  v5[1] = @"GNSSMotion/kCLConnectionMessageDecimationRate";
  v6[1] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *(a1 + 40));
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v6, v5, 2);
  sub_19B675404(&v4, &v3);
}

void sub_19B674FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6752BC(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"kCLConnectionMessageSubscribeKey";
  v5[0] = MEMORY[0x1E695E110];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
  sub_19B675404(&v3, &v2);
}

void sub_19B675394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6753D4()
{
  result = os_log_create("com.apple.locationd.Motion", "GNSSMotion");
  qword_1EAFE2B20 = result;
  return result;
}

void sub_19B6754AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B677074()
{
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  return qword_1ED71D2A8;
}

void sub_19B677564(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v1 = qword_1ED71D2A8;
  v2 = sub_19B677F14();
  v3 = sub_19B677C18();
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
  }

  v4 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v2;
    LOWORD(v21) = 1024;
    *(&v21 + 2) = v3;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "KeyboardMotion preferences changed,dataCollection,%d,accelStreaming,%d", buf, 0xEu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v16 = 67109376;
    v17 = v2;
    v18 = 1024;
    v19 = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "KeyboardMotion preferences changed,dataCollection,%d,accelStreaming,%d", &v16, 14);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::dataCollectionSettingsChanged()", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  sub_19B677B98(v1, v3);
  if (*(v1 + 89) != v2)
  {
    buf[0] = -60;
    buf[1] = v2;
    if (objc_msgSend_setReport_payload_length_(*(v1 + 40), v8, 196, buf, 2))
    {
      *(v1 + 89) = v2;
    }
  }

  if (*(v1 + 90) != v3)
  {
    buf[0] = 105;
    buf[1] = v3;
    if (objc_msgSend_setReport_payload_length_(*(v1 + 48), v8, 105, buf, 2))
    {
      *(v1 + 90) = v3;
    }
  }

  v15 = 0;
  sub_19B5FC534(buf);
  v9 = sub_19B438CCC(*buf, "MotionLoggerLogKeyboardMotion", &v15, 0xFFFFFFFFLL);
  if (v21)
  {
    sub_19B41FFEC(v21);
  }

  if (v9)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v10 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "KeyboardMotion,Msl Logging,%d", buf, 8u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
      }

      v16 = 67109120;
      v17 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "KeyboardMotion,Msl Logging,%d", &v16);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::dataCollectionSettingsChanged()", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    sub_19B5FC534(buf);
    sub_19B5EE5B0(*buf, "MslLogger.Enable", &v15);
    if (v21)
    {
      sub_19B41FFEC(v21);
    }

    sub_19B5FC534(buf);
    if (v15)
    {
      v14 = 15;
    }

    else
    {
      v14 = 255;
    }

    v16 = v14;
    sub_19B5EF4EC(*buf, "MslLogger.FlushTimeout", &v16);
    if (v21)
    {
      sub_19B41FFEC(v21);
    }
  }
}

void sub_19B6779F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B677A20()
{
  sub_19B421798();
  result = sub_19B4426E4();
  if (result)
  {
    operator new();
  }

  return result;
}

id *sub_19B677B98(id *result, const char *a2)
{
  v2 = result;
  if (a2)
  {
    if (!result[5])
    {
      result = objc_msgSend_registerForDeviceMatching_(result[4], a2, &unk_1F0E6A3E0);
      v2[5] = result;
    }
  }

  else
  {
    result = sub_19B674868(result, 1);
    if (!result)
    {
      result = sub_19B674868(v2, 2);
      if (!result)
      {
        result = sub_19B674868(v2, 4);
        if (!result)
        {
          result = objc_msgSend_unregisterForDeviceMatching_(v2[4], v3, v2[5]);
          v2[5] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_19B677C18()
{
  v4 = 0;
  sub_19B5FC534(&v2);
  v0 = sub_19B438CCC(v2, "EnableKeyboardMotionAccelStream", &v4, 0xFFFFFFFFLL);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return v0 & v4;
}

void sub_19B677C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B677C90(id *a1)
{
  *a1 = &unk_1F0E32268;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.locationd.KeyboardMotion.DataCollectionMode", 0);

  objc_msgSend_invalidate(a1[10], v3, v4);

  return sub_19B674784(a1);
}

void sub_19B677D30(id *a1)
{
  sub_19B677C90(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B677D68(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

LABEL_8:

      sub_19B677B98(a1, (a3 != 0));
      return;
    }

    if (a3)
    {
      if (!*(a1 + 48))
      {
        *(a1 + 48) = objc_msgSend_registerForDeviceMatching_(*(a1 + 32), a2, &unk_1F0E6A318);
      }
    }

    else
    {
      objc_msgSend_unregisterForDeviceMatching_(*(a1 + 32), a2, *(a1 + 48));

      *(a1 + 48) = 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_19B677B98(a1, (a3 != 0));
        if (a3)
        {
          v5 = mach_absolute_time();
          sub_19B41E070(v5);
          sub_19B41DF08(a1, 2, a1 + 91, 1);
        }

        break;
      case 3:
        v6 = *(a1 + 64);
        if (a3)
        {
          if (!v6)
          {
            v7 = [CLHidEventMonitorManager alloc];
            v8 = *(a1 + 56);
            global_queue = dispatch_get_global_queue(0, 0);
            v11 = objc_msgSend_initWithDelegate_queue_matching_(v7, v10, v8, global_queue, &unk_1F0E6A3B8);
            *(a1 + 64) = v11;

            MEMORY[0x1EEE66B58](v11, sel_addSystemClientMatching_, &unk_1F0E6A3B8);
          }
        }

        else
        {

          MEMORY[0x1EEE66B58](v6, sel_removeSystemClientmatching_, &unk_1F0E6A3B8);
        }

        break;
      case 4:
        goto LABEL_8;
      default:
        return;
    }
  }
}

uint64_t sub_19B677F14()
{
  v4 = 0;
  sub_19B5FC534(&v2);
  v0 = sub_19B438CCC(v2, "EnableKeyboardMotionDataCollectionMode", &v4, 0xFFFFFFFFLL);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return v0 & v4;
}

void sub_19B677F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  _Unwind_Resume(exception_object);
}

Class sub_19B677F8C()
{
  if (qword_1ED71D2C0 != -1)
  {
    dispatch_once(&qword_1ED71D2C0, &unk_1F0E3A9C0);
  }

  result = objc_getClass("SBSSmartCoverService");
  qword_1ED71D2B8 = result;
  off_1EE5DEA20 = sub_19B677FF0;
  return result;
}

void *sub_19B677FFC()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
  qword_1ED71D2C8 = result;
  return result;
}

os_log_t sub_19B678028()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B678058(uint64_t a1)
{
  if (qword_1ED71D2C0 != -1)
  {
    dispatch_once(&qword_1ED71D2C0, &unk_1F0E3A9C0);
  }

  v2 = dlsym(qword_1ED71D2C8, "NSStringFromSBSSmartCoverState");
  off_1EE5DEA18 = v2;

  return v2(a1);
}

uint64_t sub_19B6780E0(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (qword_1ED71C938 != -1)
  {
    dispatch_once(&qword_1ED71C938, &unk_1F0E29600);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6781D0;
  v5[3] = &unk_1E7533DD8;
  v5[4] = &v7;
  v6 = a2;
  sub_19B420C9C(a1, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_19B6781B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6781D0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = pthread_self();
  v3 = pthread_getschedparam(v2, &v10, &v11);
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v14 = v4;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Could not get scheduling parameters for motion thread, error = %{public}d", buf, 8u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
      }

      v12[0] = 67240192;
      v12[1] = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Could not get scheduling parameters for motion thread, error = %{public}d", v12, 8);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMotionCore::setMotionThreadPriority(int)_block_invoke", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    if (*(a1 + 40) >= 1)
    {
      v11.sched_priority = *(a1 + 40);
    }

    v9 = pthread_self();
    *(*(*(a1 + 32) + 8) + 24) = pthread_setschedparam(v9, v10, &v11) == 0;
  }
}

void sub_19B6783F4(int a1, uint64_t a2, CFArrayRef theArray)
{
  if (a2 == 1)
  {
    goto LABEL_6;
  }

  if (a2 == 128 || a2 == 32)
  {
    Count = CFArrayGetCount(theArray);
    if (Count <= 0)
    {
      __assert_rtn("wrapRunLoopWithAutoreleasePoolHandler", "CLMotionCore.mm", 217, "count > 0");
    }

    v6 = Count - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1);
    MEMORY[0x19EAE7000](ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v6);
    if (a2 == 32)
    {
LABEL_6:
      v8 = MEMORY[0x19EAE7010](0);

      CFArrayAppendValue(theArray, v8);
    }
  }
}

void sub_19B6784C0()
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
  }

  v0 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v1 = *(qword_1ED71C908 + 48);
    *buf = 67109120;
    v17 = v1;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "Motion thread deadlock watchdog after %d petting", buf, 8u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v3 = *(qword_1ED71C908 + 48);
    v15[0] = 67109120;
    v15[1] = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "Motion thread deadlock watchdog after %d petting", v15);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void *CLMotionCore::runMotionThread(void *)_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (MEMORY[0x1EEE83328])
  {
    ADClientAddValueForScalarKey();
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v7, v8);
    v12 = objc_msgSend_processName(v9, v10, v11);
    v14 = objc_msgSend_initWithFormat_(v6, v13, @"%@.%@", @"com.apple.CoreMotion.ThreadDeadlockCount", v12);
    ADClientAddValueForScalarKey();
  }
}

void sub_19B6786FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B678734(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19B678764(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E34A10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B6787A4()
{
  if (qword_1ED71D2E8 != -1)
  {
    dispatch_once(&qword_1ED71D2E8, &unk_1F0E29620);
  }

  return qword_1ED71D2E0;
}

void *sub_19B6788A8(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F0E32768;
  sub_19B678960(a1, a2, a3);
  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_19B674784(a1);
}

void sub_19B678960(io_object_t *notifier, const char *a2, uint64_t a3)
{
  if (*(notifier + 5))
  {
    v4 = sub_19B4484E8();
    sub_19B426A14(v4, 1, *(notifier + 5));
  }

  if (*(notifier + 6))
  {
    if (qword_1EAFE3A70 != -1)
    {
      dispatch_once(&qword_1EAFE3A70, &unk_1F0E29E40);
    }

    sub_19B426A14(qword_1EAFE3A90, 0, *(notifier + 6));
  }

  v5 = *(notifier + 8);
  if (v5)
  {

    *(notifier + 8) = 0;
  }

  v6 = *(notifier + 7);
  if (v6)
  {
    objc_msgSend_stopActivityUpdates(v6, a2, a3);

    *(notifier + 7) = 0;
  }

  v7 = *(notifier + 9);
  if (v7)
  {
    dispatch_release(v7);
    *(notifier + 9) = 0;
  }

  if (notifier[20])
  {
    IODeregisterForSystemPower(notifier + 20);
    notifier[20] = 0;
  }

  v8 = notifier[21];
  if (v8)
  {
    IOServiceClose(v8);
    notifier[21] = 0;
  }

  v9 = *(notifier + 11);
  if (v9)
  {
    IONotificationPortDestroy(v9);
    *(notifier + 11) = 0;
  }
}

void sub_19B678A50(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B6788A8(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B678A88(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  v2 = *(a2 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67964C;
  block[3] = &unk_1E7533E58;
  block[4] = a2;
  dispatch_async(v2, block);
}

unsigned int *sub_19B678B00(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (objc_msgSend_stationary(a2, a2, a3))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v3[24] = v4;

  return sub_19B450488(v3);
}

void sub_19B678B4C(void *refcon, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!*(refcon + 5))
    {
      operator new();
    }

    if (!*(refcon + 6))
    {
      sub_19B421798();
      if (sub_19B5F9028())
      {
        operator new();
      }
    }

    if (!*(refcon + 9))
    {
      *(refcon + 9) = dispatch_queue_create("com.apple.CoreMotion.CLPocketStateService", 0);
    }

    if (!*(refcon + 8))
    {
      v4 = objc_opt_new();
      *(refcon + 8) = v4;
      objc_msgSend_setUnderlyingQueue_(v4, v5, *(refcon + 9));
    }

    if (!*(refcon + 7))
    {
      v6 = objc_alloc_init(CMMotionActivityManager);
      *(refcon + 7) = v6;
      v7 = *(refcon + 8);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B678B00;
      v27[3] = &unk_1E7533E18;
      v27[4] = refcon;
      objc_msgSend_startActivityUpdatesToQueue_withHandler_(v6, v8, v7, v27);
    }

    if (*(refcon + 11))
    {
      goto LABEL_16;
    }

    v9 = IORegisterForSystemPower(refcon, refcon + 11, sub_19B4515A0, refcon + 20);
    *(refcon + 21) = v9;
    if (v9)
    {
      IONotificationPortSetDispatchQueue(*(refcon + 11), *(refcon + 9));
LABEL_16:
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v10 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "enabled detection successfully", buf, 2u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
        }

        v26[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 0, "enabled detection successfully", v26, 2);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::enableDetection()", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      return;
    }

    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v20 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Could not subscribe to system power notifications", buf, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v26[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 17, "Could not subscribe to system power notifications", v26, 2);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLPocketStateService::enableDetection()", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    sub_19B678960(refcon, v22, v23);
  }

  else
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v14 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "disable Detection", buf, 2u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      LOWORD(v27[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 0, "disable Detection", v27, 2);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLPocketStateService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    sub_19B678960(refcon, v16, v17);
  }
}

void *sub_19B67925C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v6 = objc_msgSend_processName(v3, v4, v5);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  result = objc_msgSend_initWithFormat_(v7, v8, @"com.apple.CoreMotion.PocketState.%@", v6);
  qword_1ED71D2F0 = result;
  return result;
}

void sub_19B6792B8(uint64_t a1, double a2)
{
  v46 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v4 = mach_absolute_time();
  v5 = sub_19B41E070(v4);
  v6 = BKSHIDServicesRequestEstimatedProximityEvents();
  kdebug_trace();
  v7 = mach_absolute_time();
  v8 = sub_19B41E070(v7);
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v9 = v8 - v5;
  v10 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
  {
    v11 = mach_absolute_time();
    v12 = sub_19B41E070(v11);
    if (v6 > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E7533EF0[v6];
    }

    *buf = 134219010;
    v37 = v12;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = a2 + 2.0;
    v42 = 2048;
    v43 = v9;
    v44 = 2080;
    v45 = v13;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "%f: monitorTime, %f, bksMonitorTime, %f, bksDelay, %f, proxStatus, %s", buf, 0x34u);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v16 = qword_1EAFE2868;
    v17 = mach_absolute_time();
    v18 = sub_19B41E070(v17);
    if (v6 > 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = off_1E7533EF0[v6];
    }

    v26 = 134219010;
    v27 = v18;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = a2 + 2.0;
    v32 = 2048;
    v33 = v9;
    v34 = 2080;
    v35 = v19;
    LODWORD(v25) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v16, 0, "%f: monitorTime, %f, bksMonitorTime, %f, bksDelay, %f, proxStatus, %s", COERCE_DOUBLE(&v26), v25);
    v21 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::queryInitiated(NSTimeInterval)", "CoreLocation: %s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if (v6 == 2)
  {
    v23 = @"proxStatus.ignored";
  }

  else if (v6 == 1)
  {
    v23 = @"proxStatus.extended";
  }

  else
  {
    if (v6)
    {
      return;
    }

    v22 = mach_absolute_time();
    *(a1 + 112) = sub_19B41E070(v22);
    *(a1 + 104) = 0;
    v23 = @"proxStatus.started";
  }

  if (MEMORY[0x1EEE83328])
  {
    v24 = MEMORY[0x1E696AEC0];
    if (qword_1ED71D2F8 != -1)
    {
      dispatch_once(&qword_1ED71D2F8, &unk_1F0E28340);
    }

    objc_msgSend_stringWithFormat_(v24, v15, @"%@.%@", qword_1ED71D2F0, v23);
    ADClientAddValueForScalarKey();
  }
}

os_log_t sub_19B67965C()
{
  result = os_log_create("com.apple.locationd.Motion", "Pocket");
  qword_1EAFE2868 = result;
  return result;
}

void sub_19B6796A0(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B67981C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B67984C(uint64_t a1, CLConnectionMessage **a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0 && (v13 = v10, objc_msgSend_intValue(v10, v11, v12) != 100))
  {
    v16 = objc_msgSend_intValue(v13, v14, v15);
  }

  else
  {
    v16 = 103;
  }

  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v17 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240192;
    v24 = v16;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Failed with CMError code %{public}d", buf, 8u);
  }

  v18 = sub_19B420058();
  if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v22[0] = 67240192;
    v22[1] = v16;
    LODWORD(v21) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Failed with CMError code %{public}d", v22, v21);
    v20 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal init]_block_invoke", "CoreLocation: %s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }
}

void sub_19B679A88(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v6 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      *buf = 138413058;
      v26 = v5;
      v27 = 1024;
      v28 = v7;
      v29 = 1024;
      v30 = v9;
      v31 = 2048;
      v32 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMMotionAlarmManager client connection interrupt, %@, %d, %d, %p", buf, 0x22u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v11 = qword_1EAFE27D8;
      v12 = getpid();
      v13 = *(a1 + 32);
      v14 = *(v13 + 32);
      v17 = 138413058;
      v18 = v5;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v14;
      v23 = 2048;
      v24 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 1, "CMMotionAlarmManager client connection interrupt, %@, %d, %d, %p", &v17, 34);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal init]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }
}

id sub_19B679D60(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1ED71D308 = result;
  return result;
}

void sub_19B67A030(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    sub_19B428B50(&__p, "kCLConnectionMessageMotionAlarmFire");
    CLConnectionClient::setHandlerForMessage();
    if (v3 < 0)
    {
      operator delete(__p);
    }

    v4 = @"kCLConnectionMessageSubscribeKey";
    v5[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v1, v5, &v4, 1);
    sub_19B6258C4();
  }
}

void sub_19B67A1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B67A1F0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  v10 = *(a1 + 32);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);

  return MEMORY[0x1EEE66B58](v10, sel__handleAlarmFire_, DictionaryOfClasses);
}

void sub_19B67A310(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 32))
  {
    v7 = @"kCLConnectionMessageSubscribeKey";
    v8 = MEMORY[0x1E695E110];
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v8, &v7, 1);
    sub_19B6258C4();
  }

  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v2 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Unable to stop MotionAlarm data updates as we are are not receiving updates.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    LOWORD(v6) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 1, "Unable to stop MotionAlarm data updates as we are are not receiving updates.", &v6, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal _stopListeners]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

void sub_19B67A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B67AA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a28)
  {
    sub_19B41FFEC(a28);
  }

  objc_sync_exit(v28);
  _Unwind_Resume(a1);
}

void sub_19B67AAB0(uint64_t a1, CLConnectionMessage **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
  {
    v12 = DictionaryOfClasses;
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMMotionAlarmKey");
    if (objc_msgSend_intValue(v13, v16, v17) == 100)
    {
      if (v15)
      {
        objc_msgSend_copyPropertiesFromAlarm_(*(a1 + 32), v18, v15);
        v19 = v27;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = sub_19B67B048;
        v27[3] = &unk_1E7532988;
        v27[4] = *(a1 + 32);
      }

      else
      {
        if (qword_1EAFE27A0 != -1)
        {
          dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
        }

        v20 = qword_1EAFE27D8;
        if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmRegister message.", buf, 2u);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27A0 != -1)
          {
            dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
          }

          v26[0] = 0;
          LODWORD(v24) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to parse kCLConnectionMessageMotionAlarmRegister message.", v26, v24);
          v23 = v22;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _registerAlarm:error:]_block_invoke", "CoreLocation: %s\n", v22);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        v19 = block;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B67B0B4;
        block[3] = &unk_1E7532988;
        block[4] = *(a1 + 32);
      }
    }

    else
    {
      v19 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_19B67AF44;
      v28[3] = &unk_1E7532A00;
      v28[4] = *(a1 + 32);
      v28[5] = v13;
    }
  }

  else
  {
    v19 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_19B67AE50;
    v29[3] = &unk_1E7532988;
    v29[4] = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

uint64_t sub_19B67AE50(uint64_t a1, const char *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = *(a1 + 32);
    v15 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Alarm registration response missing";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v22, &v21, 1);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"CMErrorDomain", 103, v17);
    return objc_msgSend_alarmDidRegister_error_(v13, v20, v14, v19);
  }

  return result;
}

uint64_t sub_19B67AF44(uint64_t a1, const char *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = MEMORY[0x1E696ABC0];
    v15 = *(a1 + 32);
    v18 = objc_msgSend_intValue(*(a1 + 40), v16, v17);
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Alarm registration returned an error";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v25, &v24, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v21, @"CMErrorDomain", v18, v20);
    return objc_msgSend_alarmDidRegister_error_(v13, v23, v15, v22);
  }

  return result;
}

uint64_t sub_19B67B048(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v15 = *(a1 + 32);

    return objc_msgSend_alarmDidRegister_error_(v13, v14, v15, 0);
  }

  return result;
}

uint64_t sub_19B67B0B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = *(a1 + 32);
    v15 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Unable to parse alarm registration response";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v22, &v21, 1);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"CMErrorDomain", 103, v17);
    return objc_msgSend_alarmDidRegister_error_(v13, v20, v14, v19);
  }

  return result;
}

void sub_19B67B634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  objc_destroyWeak((v25 + 40));
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  objc_destroyWeak(&location);
  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  objc_sync_exit(v24);
  _Unwind_Resume(a1);
}

void sub_19B67B68C(uint64_t a1, CLConnectionMessage **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_19B67BC28;
    v43[3] = &unk_1E7532988;
    v43[4] = *(a1 + 32);
    v27 = MEMORY[0x1E69E96A0];
    v28 = v43;
LABEL_21:
    dispatch_async(v27, v28);
    return;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMMotionAlarmKey");
  if (objc_msgSend_intValue(v13, v16, v17) != 100)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_19B67BCBC;
    v42[3] = &unk_1E7532A00;
    v42[4] = *(a1 + 32);
    v42[5] = v13;
    v27 = MEMORY[0x1E69E96A0];
    v28 = v42;
    goto LABEL_21;
  }

  if (!v15)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v29 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmUnregister message.", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(v44) = 0;
      LODWORD(v39) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to parse kCLConnectionMessageMotionAlarmUnregister message.", &v44, v39);
      v32 = v31;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]_block_invoke", "CoreLocation: %s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_19B67BDD4;
    v40[3] = &unk_1E7532988;
    v40[4] = *(a1 + 32);
    v27 = MEMORY[0x1E69E96A0];
    v28 = v40;
    goto LABEL_21;
  }

  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v19 = Weak;
    objc_sync_enter(Weak);
    v20 = *(a1 + 32);
    objc_msgSend_copyPropertiesFromAlarm_(*(a1 + 32), v21, v15);
    v22 = v19[3];
    v25 = objc_msgSend_name(*(a1 + 32), v23, v24);
    objc_msgSend_removeObjectForKey_(v22, v26, v25);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B67BD6C;
    block[3] = &unk_1E7532988;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_sync_exit(v19);
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v33 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      *buf = 138543362;
      v47 = v34;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "Alarm manager no longer exists, cannot unregister alarm: %{public}@", buf, 0xCu);
    }

    v35 = sub_19B420058();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v36 = *(a1 + 32);
      v44 = 138543362;
      v45 = v36;
      LODWORD(v39) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 0, "Alarm manager no longer exists, cannot unregister alarm: %{public}@", &v44, v39);
      v38 = v37;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]_block_invoke", "CoreLocation: %s\n", v37);
      if (v38 != buf)
      {
        free(v38);
      }
    }
  }
}

uint64_t sub_19B67BC28(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"CMErrorDomain", 103, 0);

    return objc_msgSend_alarmDidUnregister_error_(v13, v15, 0, v16);
  }

  return result;
}

uint64_t sub_19B67BCBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = MEMORY[0x1E696ABC0];
    v17 = objc_msgSend_intValue(*(a1 + 40), v15, v16);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v18, @"CMErrorDomain", v17, 0);

    return objc_msgSend_alarmDidUnregister_error_(v13, v19, 0, v20);
  }

  return result;
}

void sub_19B67BD6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_manager(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_delegate(v9, v10, v11);
    objc_msgSend_alarmDidUnregister_error_(v12, v13, *(a1 + 32), 0);
  }

  v14 = *(a1 + 32);
}

uint64_t sub_19B67BDD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"CMErrorDomain", 103, 0);

    return objc_msgSend_alarmDidUnregister_error_(v13, v15, 0, v16);
  }

  return result;
}

void sub_19B67C1C4(uint64_t a1, CLConnectionMessage **a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v38 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmAcknowledge message.", buf, 2u);
    }

    v39 = sub_19B420058();
    if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 == -1)
    {
LABEL_20:
      LOWORD(v56) = 0;
      LODWORD(v55) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to parse kCLConnectionMessageMotionAlarmAcknowledge message.", &v56, v55);
      v41 = v40;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _acknowledgeAlarm:error:]_block_invoke", "CoreLocation: %s\n", v40);
LABEL_50:
      if (v41 != buf)
      {
        free(v41);
      }

      return;
    }

LABEL_61:
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    goto LABEL_20;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMMotionAlarmKey");
  if (objc_msgSend_intValue(v13, v16, v17) != 100)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v42 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v59) = objc_msgSend_intValue(v13, v43, v44);
      _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_ERROR, "Unable to call kCLConnectionMessageMotionAlarmAcknowledge message. Code: %d", buf, 8u);
    }

    v45 = sub_19B420058();
    if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v48 = qword_1EAFE27D8;
      v56 = 67109120;
      LODWORD(v57) = objc_msgSend_intValue(v13, v46, v47);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v48, 16, "Unable to call kCLConnectionMessageMotionAlarmAcknowledge message. Code: %d", &v56);
      v41 = v49;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _acknowledgeAlarm:error:]_block_invoke", "CoreLocation: %s\n", v49);
      goto LABEL_50;
    }

    return;
  }

  if (!v15)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v50 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmAcknowledge message.", buf, 2u);
    }

    v51 = sub_19B420058();
    if ((*(v51 + 160) & 0x80000000) != 0 && (*(v51 + 164) & 0x80000000) != 0 && (*(v51 + 168) & 0x80000000) != 0 && !*(v51 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v19 = Weak;
    objc_sync_enter(Weak);
    v20 = v19[3];
    v23 = objc_msgSend_name(v15, v21, v22);
    v25 = objc_msgSend_objectForKey_(v20, v24, v23);
    if ((objc_msgSend_repeats(v25, v26, v27) & 1) == 0)
    {
      v30 = objc_msgSend_alarmId(v15, v28, v29);
      if (v30 == objc_msgSend_alarmId(v25, v31, v32))
      {
        v35 = v19[3];
        v36 = objc_msgSend_name(v25, v33, v34);
        objc_msgSend_removeObjectForKey_(v35, v37, v36);
      }
    }

    objc_sync_exit(v19);
    return;
  }

  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v52 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v59 = v15;
    _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_ERROR, "Alarm manager no longer exists, cannot acknowledge alarm: %{public}@", buf, 0xCu);
  }

  v53 = sub_19B420058();
  if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v56 = 138543362;
    v57 = v15;
    LODWORD(v55) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Alarm manager no longer exists, cannot acknowledge alarm: %{public}@", &v56, v55);
    v41 = v54;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _acknowledgeAlarm:error:]_block_invoke", "CoreLocation: %s\n", v54);
    goto LABEL_50;
  }
}

void sub_19B67C9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  sub_19B41FFEC(v22);
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_19B67CA50(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8)) != 0)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMErrorMessage");
    if (objc_msgSend_intValue(v11, v12, v13) == 100)
    {
      v14 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_19B67CCB0;
      v15[3] = &unk_1E7532988;
      v15[4] = *(a1 + 32);
    }

    else
    {
      v14 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B67CC40;
      block[3] = &unk_1E7532A00;
      block[4] = *(a1 + 32);
      block[5] = v11;
    }
  }

  else
  {
    v14 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B67CBE4;
    v17[3] = &unk_1E7532988;
    v17[4] = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

uint64_t sub_19B67CBE4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);

  return MEMORY[0x1EEE66B58](v2, sel_remoteAppLaunchedWithResult_error_, 1);
}

uint64_t sub_19B67CC40(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 32);
  v5 = objc_msgSend_intValue(*(a1 + 40), a2, a3);
  objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);

  return MEMORY[0x1EEE66B58](v4, sel_remoteAppLaunchedWithResult_error_, 1);
}

uint64_t sub_19B67D154(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = MEMORY[0x1E696ABC0];
    v15 = *(a1 + 32);
    v18 = objc_msgSend_intValue(*(a1 + 40), v16, v17);
    objc_msgSend_errorWithDomain_code_userInfo_(v14, v19, @"CMErrorDomain", v18, 0);

    return MEMORY[0x1EEE66B58](v13, sel_alarmDidFire_error_, v15);
  }

  return result;
}

uint64_t sub_19B67D210(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v13, sel_alarmDidFire_error_, v14);
  }

  return result;
}

id sub_19B67D3C0(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1ED71D318 = result;
  return result;
}

os_log_t sub_19B67D664()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionAlarm");
  qword_1EAFE27D8 = result;
  return result;
}

void *sub_19B67D708(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B67D764((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B67D764(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B67D7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B67D84C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B67D8A8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B67D8A8(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B67D900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B67D91C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, float32x4_t a5@<Q0>)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 728) == 2)
  {
    v9 = sub_19B74167C(a1 + 736, a2, a3);
  }

  else
  {
    if (!*(a1 + 6664))
    {
      operator new();
    }

    sub_19B66DF0C(a1, a2, a5);
    sub_19B6E4FB0(*(a1 + 6664), a2, a3, *(a1 + 728) != 0);
  }

  *a4 = 0;
  *(a4 + 8) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a4 + 40) = 0;
  *(a4 + 64) = 0x3F80000000000000;
  *(a4 + 56) = 0;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  v13 = v9;
  *(a4 + 44) = v13;
  *(a4 + 48) = v12;
  v14 = v9 * 0.0174532924;
  v28 = 0.0;
  v29 = v14;
  sub_19B66C264((a4 + 56), &v28);
  v15 = a3[1];
  v16 = ++dword_1EAFE38D0;
  *(a4 + 8) = *a3;
  *(a4 + 16) = v15;
  *a4 = 1;
  *(a4 + 40) = v16;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E29660);
  }

  v17 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a2;
    v19 = *a3;
    v20 = a3[1];
    buf[0] = 134218752;
    *&buf[1] = v18;
    v39 = 2048;
    v40 = v19;
    v41 = 2048;
    v42 = v20;
    v43 = 1024;
    v44 = dword_1EAFE38D0;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CMPdr] StepImpulse,time,%f,%f,%f, totalSteps,%d\n", buf, 0x26u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29660);
    }

    v22 = *a2;
    v23 = *a3;
    v24 = a3[1];
    v30 = 134218752;
    v31 = v22;
    v32 = 2048;
    v33 = v23;
    v34 = 2048;
    v35 = v24;
    v36 = 1024;
    v37 = dword_1EAFE38D0;
    LODWORD(v27) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMPdr] StepImpulse,time,%f,%f,%f, totalSteps,%d\n", COERCE_DOUBLE(&v30), v27, v28, LODWORD(v29));
    v26 = v25;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMPdr::PdrResults CMPdr::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse &)", "CoreLocation: %s\n", v25);
    if (v26 != buf)
    {
      free(v26);
    }
  }
}

os_log_t sub_19B67DC88()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B67DD6C(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B67DDA4(uint64_t a1, int a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v19) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryPPG] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (result = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v16 = 67240192;
      LODWORD(v17) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryPPG] Unrecognized update interval notification %{public}d", &v16, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryPPG::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }

      return 0.0;
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v10 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v11 = *a3;
      *buf = 134349056;
      v19 = v11;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "[AccessoryPPG] Setting update interval to %{public}f", buf, 0xCu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v13 = *a3;
      v16 = 134349056;
      v17 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryPPG] Setting update interval to %{public}f", &v16, 12);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryPPG::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return *a3;
  }

  return result;
}

void sub_19B67E0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v7 = IntegerValue;
    if (IntegerValue == 32)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v9 = sub_19B41E070(TimeStamp);
      *v25 = v9;
      v10 = *(DataValue + 2);
      v25[1] = v10;
      v11 = *DataValue;
      v26 = *DataValue;
      v27 = DataValue[1];
      v12 = *(DataValue + 5);
      v29 = DataValue[12];
      v28 = v12;
      LOBYTE(v12) = DataValue[15];
      v30 = *(DataValue + 13);
      v31 = v12;
      v13 = *(DataValue + 8);
      v33 = DataValue[18];
      v32 = v13;
      v14 = *(DataValue + 19);
      v35 = DataValue[21];
      v34 = v14;
      LOBYTE(v14) = DataValue[24];
      v36 = *(DataValue + 11);
      v37 = v14;
      LOBYTE(v14) = DataValue[27];
      v38 = *(DataValue + 25);
      v39 = v14;
      v40 = *(DataValue + 14);
      v41 = *(DataValue + 15);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v15 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67241219;
        v53 = v11;
        v54 = 2050;
        v55 = v10;
        v56 = 2050;
        v57 = v9;
        v58 = 1040;
        v59 = 32;
        v60 = 2097;
        v61 = DataValue;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "[AccessoryPPG] frameNum,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", buf, 0x2Cu);
      }

      v16 = sub_19B420058();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
        }

        v42 = 67241219;
        v43 = v11;
        v44 = 2050;
        v45 = v10;
        v46 = 2050;
        v47 = v9;
        v48 = 1040;
        v49 = 32;
        v50 = 2097;
        v51 = DataValue;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[AccessoryPPG] frameNum,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", &v42, 44);
        v18 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryPPG::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      sub_19B41DF08(a1, 0, v25, 40);
      return;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v22 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157955;
      v53 = v7;
      v54 = 2097;
      v55 = DataValue;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[AccessoryPPG] Invalid payload: %{private}.*P", buf, 0x12u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v42 = 68157955;
      v43 = v7;
      v44 = 2097;
      v45 = DataValue;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryPPG] Invalid payload: %{private}.*P", &v42, 18);
LABEL_36:
      v24 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryPPG::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v21);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v19 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[AccessoryPPG] Invalid payload", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      LOWORD(v42) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryPPG] Invalid payload", &v42, 2);
      goto LABEL_36;
    }
  }
}

os_log_t sub_19B67E670()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B67E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B67E7F8(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B67E978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B67EAF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B67EB20(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
  }

  v3 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v7 = qword_1EAFE2A90;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136446210;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %{public}s", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager setupBIO]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B67ED18(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v6 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138478339;
      v22 = v5;
      v23 = 1025;
      v24 = v7;
      v25 = 2049;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v10 = qword_1EAFE2A90;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138478339;
      v16 = v5;
      v17 = 1025;
      v18 = v11;
      v19 = 2049;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 0, "Client connection interrupt, %{private}@, %{private}d, %{private}p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager setupBIO]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

uint64_t sub_19B67FD08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 56) = *(v3 + 168);
  *(v3 + 72) = *(v3 + 184);
  *(v3 + 88) = *(v3 + 200);
  *(v3 + 104) = *(v3 + 216);
  *(v3 + 8) = *(v3 + 120);
  *(v3 + 24) = *(v3 + 136);
  *(v3 + 40) = *(v3 + 152);
  v4 = *(result + 40);
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[5];
  *(v3 + 216) = v4[6];
  *(v3 + 200) = v7;
  *(v3 + 184) = v6;
  *(v3 + 168) = v5;
  v9 = v4[1];
  v8 = v4[2];
  *(v3 + 120) = *v4;
  *(v3 + 136) = v9;
  *(v3 + 152) = v8;
  if (*(v3 + 232) == 1)
  {
    return MEMORY[0x1EEE66B58](*(result + 32), sel_sendOdometryToClientPrivate, a3);
  }

  *(v3 + 232) = 1;
  return result;
}

void sub_19B680ADC(uint64_t a1, CLConnectionMessage **a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v5 = Weak;
    if (Weak[4])
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v11 = objc_msgSend_setWithObjects_(v6, v10, v7, v8, v9, 0);
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11);
      v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMBackgroundInertialOdometry");
      v17 = v14;
      if (v5[6] == 8)
      {
        objc_msgSend_rotateArbitraryToTrueNorth(v14, v15, v16);
      }

      v18 = objc_msgSend_copy(v5[4], v15, v16);
      v19 = v5[5];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_19B680C38;
      v21[3] = &unk_1E7532C30;
      objc_copyWeak(&v22, (a1 + 32));
      v21[4] = v17;
      v21[5] = v18;
      objc_msgSend_addOperationWithBlock_(v19, v20, v21);
      objc_destroyWeak(&v22);
    }
  }
}

void sub_19B680C38(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = *(a1 + 40);
  if (Weak)
  {
    v3[2](v3, *(a1 + 32), 0);
    v3 = *(a1 + 40);
  }
}

void sub_19B680C94(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 56));
  if (Weak)
  {
    v3 = Weak;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v4 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      *buf = 67240192;
      *&buf[4] = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Starting background InertialOdometry updates with reference frame: %{public}d", buf, 8u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v7 = *(a1 + 64);
      LODWORD(v22[0]) = 67240192;
      HIDWORD(v22[0]) = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "Starting background InertialOdometry updates with reference frame: %{public}d", v22, 8);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager startBackgroundUpdatesPrivateUsingReferenceFrame:enableNeuralPDR:toQueue:withHandler:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = v3[4];
    if (v10 != *(a1 + 40))
    {

      v3[4] = objc_msgSend_copy(*(a1 + 40), v11, v12);
    }

    v13 = v3[5];
    if (v13 != *(a1 + 32))
    {

      v3[5] = *(a1 + 32);
    }

    v3[6] = *(a1 + 64);
    sub_19B428B50(buf, "PedestrianFence/kCLConnectionMessageBackgroundInertialOdometry");
    CLConnectionClient::setHandlerForMessage();
    if (v24 < 0)
    {
      operator delete(*buf);
    }

    v20[0] = @"kCLConnectionMessageSubscribeKey";
    v20[1] = @"CMPedestrianFenceClientIdentifier";
    v21[0] = MEMORY[0x1E695E118];
    v16 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v14, v15);
    v21[1] = objc_msgSend_processName(v16, v17, v18);
    v22[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v21, v20, 2);
    sub_19B68177C(buf, v22);
  }
}

void sub_19B680F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (v24)
  {
    sub_19B41FFEC(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B681088(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v3 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping background InertialOdometry updates", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      LOWORD(v8[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "Stopping background InertialOdometry updates", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager stopBackgroundUpdatesPrivate]_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    if (v2[4])
    {
      v9 = @"kCLConnectionMessageSubscribeKey";
      v10 = MEMORY[0x1E695E110];
      v8[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, &v10, &v9, 1);
      sub_19B68177C(buf, v8);
    }
  }
}

void sub_19B6812E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6813D4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak((a1 + 32)))
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v2 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 67240192;
      *&buf[4] = v3;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "enableMotionSimulation,%{public}d", buf, 8u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v6 = *(a1 + 40);
      v12[0] = 67240192;
      v12[1] = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "enableMotionSimulation,%{public}d", v12, 8);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager enableMotionSimulationPrivate:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v10 = @"CMPedestrianFenceEnableMotionSimulation";
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, *(a1 + 40));
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
    operator new();
  }
}

void sub_19B68169C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

os_log_t sub_19B681704()
{
  result = os_log_create("com.apple.locationd.Motion", "InertialOdometry");
  qword_1EAFE2A90 = result;
  return result;
}

void sub_19B681738(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B681824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

os_log_t sub_19B682A1C()
{
  result = os_log_create("com.apple.locationd.Motion", "HealthColdStorage");
  qword_1EAFE2AB0 = result;
  return result;
}

void sub_19B682B80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B682BB0(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
  }

  v14 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Calorie response failed with error %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 16, "Calorie response failed with error %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMNatalimeterInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B682DD8(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v10 = qword_1EAFE2830;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 0, "Client connection interrupt, %@, %d, %p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal init]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B683120(void *a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"CMNatalimetryRecordId";
  v4[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a1[6]);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v4, &v3, 1);
  sub_19B686A4C();
}

void sub_19B683260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68328C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleQueryResponse_withHandler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B6832E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B683378(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v8 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEBUG))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      if (!v10)
      {
        v10 = @" ";
      }

      buf = 138413058;
      *buf_4 = v7;
      *&buf_4[8] = 1024;
      *&buf_4[10] = v9;
      v83 = 2112;
      v84 = v10;
      v85 = 2048;
      v86 = v11;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "%@, pid, %d, query since record, %@, %p", &buf, 0x26u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v13 = qword_1EAFE2830;
      v14 = getpid();
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      if (!v15)
      {
        v15 = @" ";
      }

      *v76 = 138413058;
      *&v76[4] = v7;
      *&v76[12] = 1024;
      *&v76[14] = v14;
      v77 = 2112;
      v78 = v15;
      v79 = 2048;
      v80 = v16;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, v13, 2, "%@, pid, %d, query since record, %@, %p", v76, 38);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal _queryAbsoluteNatalimetryDataSinceDataRecord:withHandler:]_block_invoke", "CoreLocation: %s\n", v17);
      if (v18 != &buf)
      {
        free(v18);
      }
    }
  }

  started = objc_msgSend_startDate(*(a1 + 32), v5, v6);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v20, v21);
  if (v24 != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v28 = objc_msgSend_startDate(*(a1 + 32), v26, v27);
    objc_msgSend_timeIntervalSinceReferenceDate(v28, v29, v30);
    if (vabdd_f64(Current, v31) > 86400.0)
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v32 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
      {
        v33 = getpid();
        v36 = objc_msgSend_startDate(*(a1 + 32), v34, v35);
        buf = 67109378;
        *buf_4 = v33;
        *&buf_4[4] = 2112;
        *&buf_4[6] = v36;
        _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "Attempting to request data older than 24 hours, pid, %d, startDate %@", &buf, 0x12u);
      }

      v37 = sub_19B420058();
      if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
        }

        v38 = qword_1EAFE2830;
        v39 = getpid();
        v42 = objc_msgSend_startDate(*(a1 + 32), v40, v41);
        *v76 = 67109378;
        *&v76[4] = v39;
        *&v76[8] = 2112;
        *&v76[10] = v42;
        LODWORD(v73) = 18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, v38, 16, "Attempting to request data older than 24 hours, pid, %d, startDate %@", v76, v73);
        v44 = v43;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMNatalimeterInternal _queryAbsoluteNatalimetryDataSinceDataRecord:withHandler:]_block_invoke", "CoreLocation: %s\n", v43);
        if (v44 != &buf)
        {
          free(v44);
        }
      }
    }
  }

  v74[0] = @"CMNatalimetryNatalieDataStartDate";
  v45 = MEMORY[0x1E696AD98];
  v46 = objc_msgSend_startDate(*(a1 + 32), v22, v23);
  objc_msgSend_timeIntervalSinceReferenceDate(v46, v47, v48);
  v75[0] = objc_msgSend_numberWithDouble_(v45, v49, v50);
  v74[1] = @"CMNatalimetryNatalieDataMets";
  v75[1] = objc_msgSend_mets(*(a1 + 32), v51, v52);
  v74[2] = @"CMNatalimetryNatalieDataNatalies";
  v75[2] = objc_msgSend_natalies(*(a1 + 32), v53, v54);
  v74[3] = @"CMNatalimetryNatalieDataBasalNatalies";
  v75[3] = objc_msgSend_basalNatalies(*(a1 + 32), v55, v56);
  v74[4] = @"CMNatalimetrySessionId";
  v57 = MEMORY[0x1E696AD98];
  v60 = objc_msgSend_activityType(*(a1 + 32), v58, v59);
  v75[4] = objc_msgSend_numberWithInteger_(v57, v61, v60);
  v74[5] = @"CMNatalimetryRecordId";
  v62 = MEMORY[0x1E696AD98];
  v65 = objc_msgSend_recordId(*(a1 + 32), v63, v64);
  v75[5] = objc_msgSend_numberWithInteger_(v62, v66, v65);
  v74[6] = @"CMNatalimetryNatalieDataSourceId";
  v69 = objc_msgSend_sourceId(*(a1 + 32), v67, v68);
  v75[6] = objc_msgSend_UUIDString(v69, v70, v71);
  *v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v72, v75, v74, 7);
  sub_19B686A4C();
}

void sub_19B683994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  if (a42)
  {
    sub_19B41FFEC(a42);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6839C0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleQueryResponse_withHandler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B683A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B683C54(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B683CB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B683D48(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B683E20(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3 != *(a1 + 40) || (*(v2 + 24) & 1) == 0)
  {

    *(*(a1 + 32) + 32) = objc_msgSend_copy(*(a1 + 40), v4, v5);
    sub_19B428B50(&__p, "kCLConnectionMessageNatalimetryUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(__p);
    }

    v9 = @"kCLConnectionMessageSubscribeKey";
    v10[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v10, &v9, 1);
    sub_19B686B90();
  }
}

void sub_19B683FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B684010(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B684388;
      block[3] = &unk_1E7532B40;
      block[4] = v6;
      v19 = MEMORY[0x1E69E96A0];
      v20 = block;
      goto LABEL_7;
    }

    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMNatalimetryNatalieData");
    if (v16)
    {
      *(*(a1 + 32) + 24) = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_19B6843EC;
      v29[3] = &unk_1E7532B90;
      v29[4] = v16;
      v29[5] = v6;
      v19 = MEMORY[0x1E69E96A0];
      v20 = v29;
LABEL_7:
      dispatch_async(v19, v20);
      return;
    }

    if (v18)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_19B684464;
      v28[3] = &unk_1E7532C08;
      v21 = *(a1 + 32);
      v28[4] = v18;
      v28[5] = v21;
      v28[6] = v6;
      v19 = MEMORY[0x1E69E96A0];
      v20 = v28;
      goto LABEL_7;
    }

    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v22 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Error parsing update.", buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v27[0] = 0;
      LODWORD(v26) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 17, "Error parsing update.", v27, v26);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMNatalimeterInternal _startAbsoluteNatalimetryDataUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }
}

uint64_t sub_19B684388(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6843EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B684464(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEBUG))
    {
      v7 = getpid();
      v8 = a1[4];
      v9 = a1[5];
      *buf = 138413058;
      v27 = v5;
      v28 = 1024;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "%@, pid, %d, update, %@, %p", buf, 0x26u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v11 = qword_1EAFE2830;
      v12 = getpid();
      v13 = a1[4];
      v14 = a1[5];
      v18 = 138413058;
      v19 = v5;
      v20 = 1024;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2048;
      v25 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 2, "%@, pid, %d, update, %@, %p", &v18, 38);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal _startAbsoluteNatalimetryDataUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  return (*(a1[6] + 16))();
}

void sub_19B684738(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_19B428B50(&__p, "kCLConnectionMessageNatalimetryUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 24) && *(v3 + 32))
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10 = MEMORY[0x1E695E110];
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, &v10, &v9, 1);
    sub_19B686B90();
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
  }

  v4 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Error stopping calorie updates, not active clients.", &__p, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    LOWORD(v8) = 0;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B41C000, qword_1EAFE2830, 1, "Error stopping calorie updates, not active clients.", &v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal _stopAbsoluteNatalimetryDataUpdates]_block_invoke", "CoreLocation: %s\n", v6);
    if (v7 != &__p)
    {
      free(v7);
    }
  }
}

void sub_19B6849DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B684E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6851D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_19B6855DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_19B685BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B685D68(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v4, sel__queryAbsoluteNatalimetryDataSinceRecord_withHandler_, v5);
}

int64_t sub_19B685EF0(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D320 = result;
  return result;
}

uint64_t sub_19B685FF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startAbsoluteNatalimetryDataUpdatesWithHandler_, v5);
}

uint64_t sub_19B6860A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopAbsoluteNatalimetryDataUpdates, v4);
}

os_log_t sub_19B686A1C()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

void *sub_19B686AC0(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686B1C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B686B1C(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B686C04(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686C60((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B686C60(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B686D40(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686D9C((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B686D9C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B686E7C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686ED8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B686ED8(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B686F4C(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    IOHIDDeviceClose(v2, 0);
    *(a1 + 8) = 0;
    v2 = *a1;
  }

  return a1;
}

uint64_t sub_19B686F9C()
{
  if (atomic_load_explicit(&qword_1ED71D338, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_1ED71D338, &v4, sub_19B68763C);
  }

  return qword_1ED71D330;
}

void *sub_19B687008(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = (a1 + 32);
  if (*(a1 + 32))
  {
    objc_msgSend_invalidate(*(a1 + 48), a2, a3);

    if (*v4)
    {
      if (*(a1 + 40) == 1)
      {
        IOHIDDeviceClose(*v4, 0);
        *(a1 + 40) = 0;
      }
    }
  }

  sub_19B686F4C(v4);

  return sub_19B674784(a1);
}

void sub_19B687088(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B687008(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6870C0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    if ((*(v1 + 40) & 1) == 0)
    {
      __assert_rtn("lidAngle", "CLLidAngleNotifier.mm", 70, "fIsOpen");
    }

    pReportLength = 5;
    v3 = IOHIDDeviceGetReport(v2, kIOHIDReportTypeInput, 7, &report, &pReportLength);
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = pReportLength == 5;
    }

    if (v5)
    {
      LODWORD(v4) = v13;
      *buf = v4 * 0.01;
      sub_19B4455DC(v1, 0, buf, 8);
    }

    else
    {
      v6 = v3;
      if (qword_1EAFE2AD8 != -1)
      {
        dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
      }

      v7 = qword_1EAFE2AE0;
      if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "std::optional<double> CLLidAngleNotifier::LidAngleSensor::lidAngle() const";
        v19 = 1026;
        v20 = v6;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[LidAngleSensor] %{public}s; reading lid angle sensor failed with status = %{public}d", buf, 0x12u);
      }

      v8 = sub_19B420058();
      if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AD8 != -1)
        {
          dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
        }

        v14 = 136446466;
        v15 = "std::optional<double> CLLidAngleNotifier::LidAngleSensor::lidAngle() const";
        v16 = 1026;
        v17 = v6;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AE0, 16, "[LidAngleSensor] %{public}s; reading lid angle sensor failed with status = %{public}d", &v14, 18);
        v10 = v9;
        sub_19B6BB7CC("Generic", 1, 0, 0, "std::optional<double> CLLidAngleNotifier::LidAngleSensor::lidAngle() const", "CoreLocation: %s\n", v9);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }
  }
}

void sub_19B687330(uint64_t a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = *(a1 + 32);
        if (v4)
        {
          if ((*(a1 + 40) & 1) == 0)
          {
            v5 = IOHIDDeviceOpen(v4, 0);
            *(a1 + 40) = v5 == 0;
            if (v5)
            {
              v7 = v5;
              if (qword_1EAFE2AD8 != -1)
              {
                dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
              }

              v8 = qword_1EAFE2AE0;
              if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "BOOL CLLidAngleNotifier::LidAngleSensor::open()";
                *&buf[12] = 1026;
                *&buf[14] = v7;
                _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[LidAngleSensor] %{public}s; opening lid angle sensor failed with status = %{public}d", buf, 0x12u);
              }

              v9 = sub_19B420058();
              if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2AD8 != -1)
                {
                  dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
                }

                v17 = 136446466;
                v18 = "BOOL CLLidAngleNotifier::LidAngleSensor::open()";
                v19 = 1026;
                v20 = v7;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AE0, 16, "[LidAngleSensor] %{public}s; opening lid angle sensor failed with status = %{public}d", &v17, 18);
                v11 = v10;
                sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLLidAngleNotifier::LidAngleSensor::open()", "CoreLocation: %s\n", v10);
                if (v11 != buf)
                {
                  free(v11);
                }
              }
            }

            if (*(a1 + 40) == 1)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = sub_19B6870C0;
              v22 = &unk_1E7534050;
              v23 = a1;
              v12 = objc_msgSend_scheduledTimerWithTimeInterval_repeats_block_(MEMORY[0x1E695DFF0], v6, 1, buf, 0.033);
              *(a1 + 48) = v12;
              v13 = v12;
              objc_msgSend_fire(*(a1 + 48), v14, v15);
            }
          }
        }
      }
    }

    else if (*(a1 + 32))
    {
      objc_msgSend_invalidate(*(a1 + 48), a2, 0);

      v16 = *(a1 + 32);
      if (v16)
      {
        if (*(a1 + 40) == 1)
        {
          IOHIDDeviceClose(v16, 0);
          *(a1 + 40) = 0;
        }
      }
    }
  }
}

os_log_t sub_19B68760C()
{
  result = os_log_create("com.apple.locationd.Motion", "DisplayGravity");
  qword_1EAFE2AE0 = result;
  return result;
}

void sub_19B68763C()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
  if (v0)
  {
    v1 = v0;
    v2 = IOHIDManagerOpen(v0, 0);
    if (v2)
    {
      v3 = v2;
      if (qword_1EAFE2AD8 != -1)
      {
        dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
      }

      v4 = qword_1EAFE2AE0;
      if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_ERROR))
      {
        buf = 136446466;
        buf_4 = "IOHIDDeviceRef lidAngleSensorDevice()";
        v18 = 1026;
        v19 = v3;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[LidAngleSensor] %{public}s; opening HID manager failed with status = %{public}d", &buf, 0x12u);
      }

      v5 = sub_19B420058();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2AD8 != -1)
        {
          dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
        }

        v12 = 136446466;
        v13 = "IOHIDDeviceRef lidAngleSensorDevice()";
        v14 = 1026;
        v15 = v3;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1EAFE2AE0, 16, "[LidAngleSensor] %{public}s; opening HID manager failed with status = %{public}d", &v12, 18);
        v7 = v6;
        sub_19B6BB7CC("Generic", 1, 0, 0, "IOHIDDeviceRef lidAngleSensorDevice()", "CoreLocation: %s\n", v6);
        if (v7 != &buf)
        {
          free(v7);
        }
      }

      CFRelease(v1);
    }

    else
    {
      IOHIDManagerSetDeviceMatching(v1, &unk_1F0E6A408);
      v8 = IOHIDManagerCopyDevices(v1);
      v11 = objc_msgSend_anyObject(v8, v9, v10);
      IOHIDManagerClose(v1, 0);
      CFRelease(v1);

      if (v11)
      {
        operator new();
      }
    }
  }
}

void sub_19B68791C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19B686F4C(va);
  MEMORY[0x19EAE76F0](v13, v14);
  _Unwind_Resume(a1);
}

void sub_19B68794C()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v1[12] = xmmword_19B7BB4A0;
  v1[13] = unk_19B7BB4B0;
  v1[14] = xmmword_19B7BB4C0;
  v1[8] = xmmword_19B7BB460;
  v1[9] = unk_19B7BB470;
  v1[10] = xmmword_19B7BB480;
  v1[11] = unk_19B7BB490;
  v1[4] = xmmword_19B7BB420;
  v1[5] = unk_19B7BB430;
  v1[6] = xmmword_19B7BB440;
  v1[7] = unk_19B7BB450;
  v1[0] = xmmword_19B7BB3E0;
  v1[1] = unk_19B7BB3F0;
  v1[2] = xmmword_19B7BB400;
  v1[3] = unk_19B7BB410;
  memset(v3, 0, 24);
  sub_19B68882C(v3, v1, v2);
}

void sub_19B687C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B688964(va);
  v7 = (v5 - 112);
  v8 = -72;
  while (1)
  {
    v9 = *(v7 - 1);
    if (v9)
    {
      *v7 = v9;
      operator delete(v9);
    }

    v7 -= 3;
    v8 += 24;
    if (!v8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_19B687CD0(uint64_t *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (result[1] != *result)
  {
    for (i = 0; 0xAAAAAAAAAAAAAAABLL * ((result[1] - v6) >> 3) > i; ++i)
    {
      v5 = sub_19B687E94(i);
      v6 = *result;
      if (*(*result + 24 * i + 8) == *(*result + 24 * i))
      {
        continue;
      }

      v7 = v5;
      v8 = 0;
      do
      {
        v9 = sub_19B688064(v8);
        v10 = v9;
        v11 = 0;
        v12 = HIDWORD(v9);
        v13 = (*(*result + 24 * i) + 48 * v8);
        do
        {
          v14 = dword_19B7BB6B0[v11];
          v15 = 0;
          if (v14 > 1)
          {
            v16 = v13[4];
            if (v14 == 2)
            {
              v17 = v13[4];
              v16 = v13[3];
            }

            else
            {
              v18 = 0;
              if (v14 != 3)
              {
                goto LABEL_16;
              }

              v17 = v13[5];
            }

            goto LABEL_15;
          }

          v16 = v13[2];
          if (!v14)
          {
            v17 = v13[2];
            v16 = *v13;
LABEL_15:
            v15 = v16;
            v18 = v17;
            goto LABEL_16;
          }

          v17 = v13[3];
          v18 = 0;
          if (v14 == 1)
          {
            goto LABEL_15;
          }

LABEL_16:
          *&v19 = __PAIR64__(v10, v7);
          *(&v19 + 1) = __PAIR64__(v14, v12);
          v20 = v15;
          v21 = v18;
          sub_19B688250(a2, &v19);
          ++v11;
        }

        while (v11 != 4);
        ++v8;
        v6 = *result;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(*result + 24 * i + 8) - *(*result + 24 * i)) >> 4) > v8);
    }
  }
}

void sub_19B687E70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B687E94(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 < 3)
  {
    return a1 + 1;
  }

  if (qword_1EAFE29F8 != -1)
  {
    dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
  }

  v3 = qword_1EAFE2A00;
  if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
  {
    *buf = 67174657;
    v9 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "VO2MaxClassifier: Invalid biologicalSex index %{private}d", buf, 8u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
    }

    v7[0] = 67174657;
    v7[1] = a1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A00, 17, "VO2MaxClassifier: Invalid biologicalSex index %{private}d", v7, 8);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static CLHKBiologicalSex CLVO2MaxClassifier::getBiologicalSexFromIndex(int)", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return 0;
}

uint64_t sub_19B688064(unsigned int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
    }

    v4 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v11 = a1;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Invalid age index: %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
      }

      v9[0] = 67240192;
      v9[1] = a1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A00, 17, "Invalid age index: %{public}d", v9, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static std::pair<int, int> CLVO2MaxClassifier::getAgeRangeFromIndex(int)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 10 * a1 + 20;
    v3 = qword_19B7BB6C0[a1];
  }

  return v3 | v2;
}

void sub_19B688250(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_19B6888E4();
    }

    v10 = v5 - *a1;
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
      sub_19B688A10(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_19B688328(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2 >= 4)
  {

    sub_19B6884B8(a3);
  }

  else
  {
    v6 = dword_19B7BB6F0[a2];
    v7 = sub_19B6884B8(a3);
    if (v7 != -1)
    {
      v8 = v7;
      v9 = sub_19B687E94(v6);
      v10 = sub_19B688064(v8);
      v11 = v10;
      v12 = 0;
      v13 = HIDWORD(v10);
      v14 = (*(*a1 + 24 * v6) + 48 * v8);
      while (1)
      {
        v15 = dword_19B7BB6B0[v12];
        v16 = 0;
        if (v15 <= 1)
        {
          v17 = v14[2];
          if (v15)
          {
            v18 = v14[3];
            v19 = 0;
            if (v15 != 1)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v18 = v14[2];
            v17 = *v14;
          }

          goto LABEL_13;
        }

        v17 = v14[4];
        if (v15 == 2)
        {
          break;
        }

        v19 = 0;
        if (v15 == 3)
        {
          v18 = v14[5];
LABEL_13:
          v16 = v17;
          v19 = v18;
        }

LABEL_14:
        *&v20 = __PAIR64__(v11, v9);
        *(&v20 + 1) = __PAIR64__(v15, v13);
        v21 = v16;
        v22 = v19;
        sub_19B688250(a4, &v20);
        if (++v12 == 4)
        {
          return;
        }
      }

      v18 = v14[4];
      v17 = v14[3];
      goto LABEL_13;
    }
  }
}

void sub_19B68849C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6884B8(unsigned int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 - 20 >= 0xB5)
  {
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
    }

    v6 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174657;
      v12 = a1;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter in getIndexFromAge: %{private}d", buf, 8u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
      }

      v10[0] = 67174657;
      v10[1] = a1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A00, 16, "Invalid parameter in getIndexFromAge: %{private}d", v10, 8);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static int CLVO2MaxClassifier::getIndexFromAge(int)", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a1 < 0x3C)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    if (a1 >= 0x32)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    if (a1 >= 0x28)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }

    if (a1 >= 0x1E)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19B6886B4@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2 >= 4)
  {

    return sub_19B6884B8(a3);
  }

  else
  {
    v8 = dword_19B7BB6F0[a2];
    result = sub_19B6884B8(a3);
    if (result != -1)
    {
      v10 = result;
      sub_19B687E94(v8);
      sub_19B688064(v10);
      v11 = 0;
      v12 = (*(*a1 + 24 * v8) + 48 * v10);
      while (1)
      {
        v13 = dword_19B7BB6B0[v11];
        if (v13 > 1)
        {
          v14 = v12[4];
          if (v13 != 2)
          {
            v15 = 0.0;
            if (v13 != 3)
            {
              goto LABEL_12;
            }

            v14 = v12[5];
          }
        }

        else
        {
          v14 = v12[2];
          if (v13)
          {
            v14 = v12[3];
            v15 = 0.0;
            if (v13 != 1)
            {
              goto LABEL_12;
            }
          }
        }

        v15 = v14;
LABEL_12:
        if (v15 > a5 || v11++ == 3)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

void sub_19B6888C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6888FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

void sub_19B688964(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B6889B8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B6889B8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_19B688A10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_19B4C5080();
}

os_log_t sub_19B688A58()
{
  result = os_log_create("com.apple.locationd.Motion", "Health");
  qword_1EAFE2A00 = result;
  return result;
}

float32x2_t sub_19B688A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = v2 + v2;
  v4 = v3;
  *&v2 = v2 * v4;
  v5 = *&v2;
  v6 = *a2 * v4;
  v7 = *(a2 + 8);
  v8 = vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v7, v7)));
  v9 = vmulq_f64(v7, v8);
  v10 = v9.f64[0];
  *v9.f64 = v9.f64[1];
  v9.f64[0] = *v9.f64;
  v11 = 1.0 - v9.f64[0] - v5;
  v12 = 1.0 - v10;
  *&v5 = v12 - v5;
  *v9.f64 = v12 - v9.f64[0];
  v13 = vrev64_s32(vcvt_f32_f64(vmulq_n_f64(v7, v4)));
  v14 = vcvt_f32_f64(vmulq_n_f64(v8, *a2));
  v15 = vsub_f32(v13, v14);
  *(a1 + 28) = v15.i32[0];
  *(a1 + 32) = LODWORD(v9.f64[0]);
  *v7.f64 = vmuld_lane_f64(v7.f64[0], v8, 1);
  *(a1 + 12) = *v7.f64 - v6;
  *(a1 + 16) = LODWORD(v5);
  *a1 = v11;
  *(a1 + 4) = *v7.f64 + v6;
  *(a1 + 8) = v15.i32[1];
  result = vadd_f32(v13, v14);
  *(a1 + 20) = result;
  return result;
}

double sub_19B688C20(double *a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v2 + v2;
  v5 = v3 + v3;
  v6 = a2[2];
  v7 = v6 + v6;
  v8 = v3 * (v3 + v3);
  v9 = v6 * (v6 + v6);
  *a1 = 1.0 - v8 - v9;
  v10 = 1.0 - v2 * (v2 + v2);
  a1[4] = v10 - v9;
  a1[8] = v10 - v8;
  v11 = v7 * a2[1];
  v12 = v4 * a2[3];
  a1[7] = v11 - v12;
  a1[5] = v11 + v12;
  v13 = v5 * *a2;
  v14 = v7 * a2[3];
  a1[3] = v13 - v14;
  a1[1] = v13 + v14;
  v15 = v7 * *a2;
  v16 = v5 * a2[3];
  a1[2] = v15 - v16;
  result = v15 + v16;
  a1[6] = result;
  return result;
}

void sub_19B688CC8(uint64_t a1, float a2, double a3)
{
  if (a3 >= 0.0)
  {
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v4;
    v24 = *(a1 + 24) + *(a1 + 24);
    v23 = *a1;
    v22 = -*a1;
    v9 = __sincos_stret(a2 * -0.5 * 0.0174532924);
    cosval = v9.__cosval;
    _Q1 = *(a1 + 8);
    _Q2 = vaddq_f64(_Q1, _Q1);
    _Q4.f64[0] = v22;
    _Q4.f64[1] = v23;
    v13 = vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vextq_s8(_Q2, _Q2, 8uLL), _Q4), _Q1, v24));
    _Q2.i64[0] = _Q2.i64[1];
    __asm { FMLS            D4, D2, V1.D[1] }

    *_Q1.f64 = _Q4.f64[0];
    v27 = vmulq_n_f64(vcvtq_f64_f32(v13), v9.__sinval);
    v28 = v9.__sinval * *_Q1.f64;
    sub_19B43F1C8(v25, &cosval, a1);
    v18 = v25[1];
    *a1 = v25[0];
    *(a1 + 16) = v18;
    v19 = *(a1 + 76);
    if (v19 >= 0.0)
    {
      v20 = v19 + a2;
      *(a1 + 76) = v20;
      v21 = 360.0;
      if (v20 >= 360.0)
      {
        v21 = -360.0;
      }

      else if (v20 >= 0.0)
      {
        return;
      }

      *(a1 + 76) = v20 + v21;
    }
  }
}

double sub_19B688DEC(float64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1->f64[1] = 0.0;
  a1[1].f64[0] = 0.0;
  f64 = a1[1].f64;
  a1[1].f64[1] = 0.0;
  v5 = &a1[1].f64[1];
  a1->f64[0] = 1.0;
  v6 = *a2;
  v7 = *(a3 + 4);
  v8 = *(a4 + 8);
  if (*a2 <= v7 || v6 <= v8)
  {
    if (v7 <= v6 || v7 <= v8)
    {
      v11 = sqrt(v8 + 1.0 - v6 - v7);
      result = v11 + v11;
      v13.i32[1] = 1037794527;
      if (result <= 1.0e-10)
      {
        return result;
      }

      v13.i32[0] = *a3;
      a1[1].f64[1] = result * 0.25;
      v14 = *(a2 + 4);
      v15.i32[0] = vsub_f32(v13, v14).u32[0];
      v13.i32[1] = *a4;
      v15.i32[1] = vadd_f32(v13, v14).i32[1];
      *a1 = vdivq_f64(vcvtq_f64_f32(v15), vdupq_lane_s64(*&result, 0));
      v16 = a3 + 8;
      a3 = a4 + 4;
      a4 = v16;
      v5 = f64;
    }

    else
    {
      v18 = sqrt(v7 + 1.0 - v8 - v6);
      result = v18 + v18;
      if (result <= 1.0e-10)
      {
        return result;
      }

      v19 = *(a4 + 4);
      a1->f64[0] = (*(a2 + 8) - *a4) / result;
      v20 = (*(a3 + 8) + v19) / result;
      a1[1].f64[0] = result * 0.25;
      a1[1].f64[1] = v20;
      a4 = a2 + 4;
      v5 = &a1->f64[1];
    }
  }

  else
  {
    v17 = sqrt(v6 + 1.0 - v7 - v8);
    result = v17 + v17;
    if (result <= 1.0e-10)
    {
      return result;
    }

    a1->f64[0] = (*(a4 + 4) - *(a3 + 8)) / result;
    a1->f64[1] = result * 0.25;
    a1[1].f64[0] = (*(a2 + 4) + *a3) / result;
    a3 = a2 + 8;
  }

  result = (*a4 + *a3) / result;
  *v5 = result;
  return result;
}

std::string *sub_19B688FAC@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result < 0x8000)
  {
    if (result > 127)
    {
      if (result > 4127)
      {
        if (result >= 12288)
        {
          if (result == 12288)
          {
            v3 = 17;
            *(a2 + 23) = 17;
            *(a2 + 16) = 114;
            v5 = "kTypeDrivingOther";
          }

          else
          {
            if (result != 0x4000)
            {
              goto LABEL_87;
            }

            v3 = 19;
            *(a2 + 23) = 19;
            *(a2 + 15) = 1684370542;
            v5 = "kTypeDrivingMounted";
          }
        }

        else
        {
          if (result == 4128)
          {
            v7 = "kTypeDrivingOrWalkingSlow";
            return sub_19B432174(a2, v7, 0x19uLL);
          }

          if (result != 0x2000)
          {
            goto LABEL_87;
          }

          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1684955464;
          v5 = "kTypeVehicularInHand";
        }

        goto LABEL_84;
      }

      if (result > 511)
      {
        if (result == 512)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1667855457;
          v5 = "kTypeInVehicleStatic";
          goto LABEL_84;
        }

        if (result == 4096)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289206;
          v4 = "kTypeDriving";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 128)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289196;
          v4 = "kTypeCycling";
          goto LABEL_75;
        }

        if (result == 256)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1852144239;
          v5 = "kTypeInVehicleFrozen";
          goto LABEL_84;
        }
      }
    }

    else if (result > 11)
    {
      if (result > 31)
      {
        if (result == 32)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeWalkingSlow";
          goto LABEL_84;
        }

        if (result == 64)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289198;
          v4 = "kTypeRunning";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 12)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 2037539182;
          v5 = "kTypeSemiStationary";
          goto LABEL_84;
        }

        if (result == 16)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289195;
          v4 = "kTypeWalking";
          goto LABEL_75;
        }
      }
    }

    else if (result > 1)
    {
      if (result == 2)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1667855457;
        v4 = "kTypeStatic";
        goto LABEL_75;
      }

      if (result == 4)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1735289206;
        v4 = "kTypeMoving";
        goto LABEL_75;
      }
    }

    else
    {
      if (!result)
      {
        v3 = 12;
        *(a2 + 23) = 12;
        *(a2 + 8) = 1853321070;
        v4 = "kTypeUnknown";
        goto LABEL_75;
      }

      if (result == 1)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1852144239;
        v4 = "kTypeFrozen";
        goto LABEL_75;
      }
    }

LABEL_87:
    v3 = 5;
    *(a2 + 23) = 5;
    *a2 = 1330795077;
    *(a2 + 4) = 82;
    goto LABEL_85;
  }

  if (result < 528384)
  {
    if (result > 262271)
    {
      if (result >= 397312)
      {
        if (result == 397312)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeDrivingSeat";
          goto LABEL_84;
        }

        if (result != 462848)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeDrivingArm";
        goto LABEL_81;
      }

      if (result == 262272)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingArm";
        goto LABEL_81;
      }

      if (result != 327808)
      {
        goto LABEL_87;
      }

      v3 = 17;
      *(a2 + 23) = 17;
      *(a2 + 16) = 111;
      v5 = "kTypeCyclingTorso";
    }

    else
    {
      if (result > 131199)
      {
        if (result == 131200)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 1936290675;
          v5 = "kTypeCyclingChassis";
          goto LABEL_84;
        }

        if (result != 196608)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingLeg";
        goto LABEL_81;
      }

      if (result == 0x8000)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeMotorcycle";
        goto LABEL_81;
      }

      if (result != 65664)
      {
        goto LABEL_87;
      }

      v3 = 16;
      *(a2 + 23) = 16;
      v5 = "kTypeCyclingSeat";
    }

LABEL_84:
    *a2 = *v5;
    goto LABEL_85;
  }

  if (result <= 786447)
  {
    if (result > 655423)
    {
      if (result == 655424)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeRunningArm";
      }

      else
      {
        if (result != 720912)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeWalkingLeg";
      }

      goto LABEL_81;
    }

    if (result != 528384)
    {
      if (result != 589888)
      {
        goto LABEL_87;
      }

      v3 = 15;
      *(a2 + 23) = 15;
      v6 = "kTypeRunningLeg";
      goto LABEL_81;
    }

    v3 = 18;
    *(a2 + 23) = 18;
    *(a2 + 16) = 25701;
    v5 = "kTypeDrivingStowed";
    goto LABEL_84;
  }

  if (result <= 917515)
  {
    if (result != 786448)
    {
      if (result != 851980)
      {
        goto LABEL_87;
      }

      v7 = "kTypeSemiStationaryPocket";
      return sub_19B432174(a2, v7, 0x19uLL);
    }

    v3 = 15;
    *(a2 + 23) = 15;
    v6 = "kTypeWalkingArm";
LABEL_81:
    *a2 = *v6;
    *(a2 + 7) = *(v6 + 7);
    goto LABEL_85;
  }

  if (result == 917516)
  {
    v3 = 22;
    *(a2 + 23) = 22;
    qmemcpy(a2, "kTypeSemiStationaryArm", 22);
    goto LABEL_85;
  }

  if (result == 0x100000)
  {
    v3 = 19;
    *(a2 + 23) = 19;
    *(a2 + 15) = 1953853291;
    v5 = "kTypeMachineWorkout";
    goto LABEL_84;
  }

  if (result != 0x200000)
  {
    goto LABEL_87;
  }

  v3 = 12;
  *(a2 + 23) = 12;
  *(a2 + 8) = 1953853291;
  v4 = "kTypeWorkout";
LABEL_75:
  *a2 = *v4;
LABEL_85:
  *(a2 + v3) = 0;
  return result;
}

void sub_19B689580(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B68959C(uint64_t a1)
{
  *a1 = &unk_1F0E318B8;
  sub_19B689610(a1, 0, 0);
  dispatch_release(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B740058(a1);
}

uint64_t sub_19B689610(uint64_t a1, FILE *a2, char a3)
{
  v6 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v7 = v6[18];
  if (v7 != a2)
  {
    *(a1 + 184) = a2;
    if (v7 && *(a1 + 156) == 1)
    {
      fclose(v7);
    }

    *(a1 + 156) = a3;
  }

  return (*(*v6 + 24))(v6);
}

void sub_19B6896C4(uint64_t a1)
{
  sub_19B68959C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6896FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40, a2, a3, a4, a5, a6, a7, a8);
  sub_19B6897D0(a1, "Generic", 0, 2, "void CLLog::logHeader()", "%s\n", va, va);
  return (*(*v9 + 24))(v9);
}

void sub_19B6897BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6897D0(uint64_t a1, const char *a2, int a3, uint64_t a4, const char *a5, const char *a6, va_list a7, ...)
{
  v9 = a4;
  v80 = *MEMORY[0x1E69E9840];
  v13 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  v14 = vsnprintf(__str, 0x1FFuLL, a6, a7);
  if ((v14 & 0x80000000) == 0)
  {
    if (v14 >= 0x1FF)
    {
      operator new[]();
    }

    v15 = v14 - 1;
    if (__str[v15] != 10)
    {
      __assert_rtn("vlog", "CLLog.mm", 173, "'\\n' == buffer[fullContentLength - 1]");
    }

    if (v14 >= 2)
    {
      v15 = v15;
      v16 = __str;
      do
      {
        if (*v16 == 10)
        {
          *v16 = 32;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 152) == 1)
    {
      v18 = *(a1 + 200);
      v19 = sub_19B6BB7A8(v9);
      fprintf(v18, "%s,%s,Time,%08.3f,Function,%s,", v19, a2, Current, a5);
      fputs(__str, *(a1 + 200));
    }

    else
    {
      v20 = *(a1 + 184);
      if (v20 && *(a1 + 160) >= v9)
      {
        v21 = sub_19B6BB7A8(v9);
        fprintf(v20, "%s,%s,Time,%08.3f,Function,%s,", v21, a2, Current, a5);
        fputs(__str, *(a1 + 184));
        if (*(a1 + 172) >= v9)
        {
          sub_19B68A3E8(a1, 3, *(a1 + 184));
        }

        v50[1] = v13;
        (*(*v13 + 16))(v13);
        v51 = 256;
        if (*(a1 + 12) >= 1)
        {
          v22 = *(a1 + 184);
          if (v22)
          {
            v23 = *(a1 + 151);
            if (v23 < 0)
            {
              v23 = *(a1 + 136);
            }

            if (v23)
            {
              v24 = *(a1 + 79);
              if (v24 < 0)
              {
                v24 = *(a1 + 64);
              }

              if (v24)
              {
                v50[0] = 0;
                fgetpos(v22, v50);
                if (v50[0] >= *(a1 + 12))
                {
                  v77 = v13;
                  (*(*v13 + 16))(v13);
                  v78 = 256;
                  sub_19B428B50(__p, ".log");
                  v27 = sub_19B740A34(a1, v25, v26);
                  sub_19B7405F4((a1 + 56), a1 + 80, __p, v27, &v76);
                  if (SHIBYTE(v53) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v76.__r_.__value_.__l.__size_;
                  }

                  v29 = &v74;
                  sub_19B50FF5C(&v74, size + 4);
                  if (v75 < 0)
                  {
                    v29 = v74;
                  }

                  if (size)
                  {
                    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v30 = &v76;
                    }

                    else
                    {
                      v30 = v76.__r_.__value_.__r.__words[0];
                    }

                    memmove(v29, v30, size);
                  }

                  strcpy(v29 + size, ".bz2");
                  sub_19B68B2AC(a1);
                  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v31 = &v76;
                  }

                  else
                  {
                    v31 = v76.__r_.__value_.__r.__words[0];
                  }

                  v32 = getuid();
                  v33 = getgid();
                  sub_19B5E3290(v31, v32, v33);
                  v35 = (a1 + 128);
                  v36 = (a1 + 128);
                  if (*(a1 + 151) < 0)
                  {
                    v36 = *v35;
                  }

                  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v37 = &v76;
                  }

                  else
                  {
                    v37 = v76.__r_.__value_.__r.__words[0];
                  }

                  rename(v36, v37, v34);
                  if (v38)
                  {
                    v39 = SHIBYTE(v75);
                    v40 = v74;
                    v41 = __error();
                    v42 = &v74;
                    if (v39 < 0)
                    {
                      v42 = v40;
                    }

                    syslog(3, "%s,%s,Failed to move aside log file %s (%d)\n", "ERROR", "CLLog", v42, *v41);
                  }

                  if (*(a1 + 151) < 0)
                  {
                    v35 = *v35;
                  }

                  sub_19B68AC64(a1, v35);
                  if (*(a1 + 103) < 0)
                  {
                    sub_19B4C5138(&__dst, *(a1 + 80), *(a1 + 88));
                  }

                  else
                  {
                    __dst = *(a1 + 80);
                    v73 = *(a1 + 96);
                  }

                  if (*(a1 + 79) < 0)
                  {
                    sub_19B4C5138(&v70, *(a1 + 56), *(a1 + 64));
                  }

                  else
                  {
                    v70 = *(a1 + 56);
                    v71 = *(a1 + 72);
                  }

                  v43 = *(a1 + 16);
                  v68[0] = 0;
                  v68[1] = v68;
                  v68[2] = 0x2020000000;
                  v69 = 0;
                  v62[0] = MEMORY[0x1E69E9820];
                  v62[1] = 3321888768;
                  v62[2] = sub_19B68B32C;
                  v62[3] = &unk_1F0E2A938;
                  v62[5] = a1;
                  if (SHIBYTE(v73) < 0)
                  {
                    sub_19B4C5138(&v63, __dst, *(&__dst + 1));
                  }

                  else
                  {
                    v63 = __dst;
                    v64 = v73;
                  }

                  v62[4] = v68;
                  v67 = v43;
                  if (SHIBYTE(v71) < 0)
                  {
                    sub_19B4C5138(&v65, v70, *(&v70 + 1));
                  }

                  else
                  {
                    v65 = v70;
                    v66 = v71;
                  }

                  v44 = *(a1 + 208);
                  __p[0] = MEMORY[0x1E69E9820];
                  __p[1] = 3321888768;
                  v53 = sub_19B68B704;
                  v54 = &unk_1F0E2A900;
                  v61 = v43;
                  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_19B4C5138(&v56, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v56 = v76;
                  }

                  if (SHIBYTE(v75) < 0)
                  {
                    sub_19B4C5138(&v57, v74, *(&v74 + 1));
                  }

                  else
                  {
                    v57 = v74;
                    v58 = v75;
                  }

                  if (SHIBYTE(v71) < 0)
                  {
                    sub_19B4C5138(&v59, v70, *(&v70 + 1));
                  }

                  else
                  {
                    v59 = v70;
                    v60 = v71;
                  }

                  v55 = v62;
                  dispatch_async(v44, __p);
                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(v59);
                  }

                  if (SHIBYTE(v58) < 0)
                  {
                    operator delete(v57);
                  }

                  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v56.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v66) < 0)
                  {
                    operator delete(v65);
                  }

                  if (SHIBYTE(v64) < 0)
                  {
                    operator delete(v63);
                  }

                  _Block_object_dispose(v68, 8);
                  if (SHIBYTE(v71) < 0)
                  {
                    operator delete(v70);
                  }

                  if (SHIBYTE(v73) < 0)
                  {
                    operator delete(__dst);
                  }

                  if (SHIBYTE(v75) < 0)
                  {
                    operator delete(v74);
                  }

                  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v76.__r_.__value_.__l.__data_);
                  }

                  (*(*v13 + 24))(v13);
                }
              }
            }
          }
        }

        (*(*v13 + 24))(v13);
      }

      v45 = *(a1 + 192);
      if (v45 && *(a1 + 164) >= v9)
      {
        v46 = sub_19B6BB7A8(v9);
        fprintf(v45, "%s,%s,Time,%08.3f,", v46, a2, Current);
        fputs(__str, *(a1 + 192));
      }

      if ((!a3 || *(a1 + 176)) && *(a1 + 168) >= v9)
      {
        if (v9)
        {
          v47 = 5;
        }

        else
        {
          v47 = 3;
        }

        syslog(v47, "%s", __str);
      }
    }
  }

  return (*(*v13 + 24))(v13);
}

void sub_19B68A018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Block_object_dispose(&a63, 8);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  sub_19B5C6074(&a73);
  sub_19B5C6074(&a20);
  if (v73)
  {
    MEMORY[0x19EAE76D0](v73, 0x1000C8077774924);
  }

  sub_19B5C6074(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_19B68A174(uint64_t a1, const char *a2, int a3, uint64_t a4, const char *a5, char *__src, va_list a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = strncpy(__dst, __src, 0x65CuLL);
  sub_19B68A22C(v13, __dst);
  return sub_19B6897D0(a1, a2, a3, a4, a5, __dst, a7);
}

BOOL sub_19B68A22C(int a1, char *__s)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = strlen(__s);
  if (v3 < 1)
  {
    return 1;
  }

  v4 = &__s[v3];
  v5 = __s;
  while (1)
  {
    if (*v5 != 37)
    {
      v11 = v5;
      goto LABEL_17;
    }

    v6 = v5 + 1;
    v7 = v5[1];
    if (v7 == 123)
    {
      break;
    }

LABEL_10:
    v11 = v5 + 1;
    v12 = v5 + 1;
    if (v7 != 64)
    {
      if (v7 != 46)
      {
        goto LABEL_17;
      }

      if (v5[2] != 42)
      {
        goto LABEL_17;
      }

      v12 = v5 + 3;
      if (v5[3] != 80)
      {
        goto LABEL_17;
      }

      *(v5 + 1) = 9572;
    }

    *v12 = 112;
LABEL_17:
    v5 = v11 + 1;
    if (v11 + 1 >= v4)
    {
      return 1;
    }
  }

  if (v6 != v4)
  {
    v8 = 0;
    while (1)
    {
      v9 = &v5[v8 + 2];
      if (v9 == v4)
      {
        break;
      }

      ++v8;
      if (*v9 == 125)
      {
        v10 = &v5[v8];
        memmove(v5, v6, v8 + 1);
        *++v10 = 37;
        v7 = v10[1];
        v5 = v10;
        goto LABEL_10;
      }
    }
  }

  if (qword_1ED71C7F8 != -1)
  {
    dispatch_once(&qword_1ED71C7F8, &unk_1F0E27E00);
  }

  v14 = qword_1ED71C7F0;
  result = os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v15 = 136446210;
    v16 = __s;
    _os_log_error_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Failed parse os_log format specifier for shimming:missing closing brace,format,%{public}s", &v15, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_19B68A3E8(uint64_t a1, int a2, FILE *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v12 = a1 + 40;
  (*(v5 + 16))(a1 + 40);
  v13 = 256;
  CFAbsoluteTimeGetCurrent();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v14 = 0u;
  v7 = backtrace(v14, 128);
  v8 = a2 + 1;
  if (a2 + 1 < v7)
  {
    v9 = &v14[v8];
    do
    {
      if (dladdr(*v9, &v11))
      {
        if (v11.dli_sname)
        {
          basename(v11.dli_fname);
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx %s + %lu\n", "STATUS");
        }

        else
        {
          basename(v11.dli_fname);
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx 0x%08lx + %lu\n", "STATUS");
        }
      }

      else
      {
        fprintf(a3, "%s,%s,Time,%08.3f,%d\t0x%08lx\n");
      }

      ++v8;
      ++v9;
    }

    while (v7 != v8);
  }

  return (*(*v6 + 24))(v6);
}

void sub_19B68A610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_19B45E110(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68A63C(uint64_t a1, const char *a2, uint64_t a3)
{
  v39[2] = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 48) + 64), a2, a3);
  pthread_self();
  sub_19B438CCC(*(a1 + 24), "ShowError", (a1 + 154), 0xFFFFFFFFLL);
  sub_19B438CCC(*(a1 + 24), "LogShowUI", (a1 + 155), 0xFFFFFFFFLL);
  sub_19B432FD8(*(a1 + 24), "LogFileLevel", (a1 + 160), 0xFFFFFFFFLL);
  sub_19B432FD8(*(a1 + 24), "LogBufferLevel", (a1 + 164), 0xFFFFFFFFLL);
  sub_19B432FD8(*(a1 + 24), "LogConsoleLevel", (a1 + 168), 0xFFFFFFFFLL);
  sub_19B432FD8(*(a1 + 24), "LogStackLevel", (a1 + 172), 0xFFFFFFFFLL);
  sub_19B5EC788(*(a1 + 24), "LogFileDirectory", (a1 + 56), 0xFFFFFFFFLL);
  sub_19B5EC788(*(a1 + 24), "LogFilePrefix", (a1 + 80), 0xFFFFFFFFLL);
  sub_19B438CCC(*(a1 + 24), "LogFileFlush", (a1 + 157), 0xFFFFFFFFLL);
  sub_19B438CCC(*(a1 + 24), "LogFence", (a1 + 153), 0xFFFFFFFFLL);
  v38 = 0;
  sub_19B432FD8(*(a1 + 24), "LogBufferSize", &v38, 0xFFFFFFFFLL);
  if ((*(a1 + 160) & 0x80000000) != 0)
  {
    sub_19B689610(a1, 0, 0);
    goto LABEL_75;
  }

  v4 = *(a1 + 184);
  memset(&__p, 0, sizeof(__p));
  if (!sub_19B5EC788(*(a1 + 24), "LogFile", &__p, 0xFFFFFFFFLL))
  {
    goto LABEL_6;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_6:
    v6 = *(a1 + 79);
    if (v6 < 0)
    {
      if (!*(a1 + 64))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 79))
    {
      goto LABEL_43;
    }

    if ((*(a1 + 103) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 103))
    {
      goto LABEL_43;
    }

    if (v6 >= 0)
    {
      v7 = *(a1 + 79);
    }

    else
    {
      v7 = *(a1 + 64);
    }

    v8 = &v35;
    sub_19B50FF5C(&v35, v7 + 1);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v35.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 79) >= 0)
      {
        v9 = (a1 + 56);
      }

      else
      {
        v9 = *(a1 + 56);
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 47;
    v10 = *(a1 + 103);
    if (v10 >= 0)
    {
      v11 = (a1 + 80);
    }

    else
    {
      v11 = *(a1 + 80);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 103);
    }

    else
    {
      v12 = *(a1 + 88);
    }

    v13 = std::string::append(&v35, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = *(a1 + 127);
    if (v15 >= 0)
    {
      v16 = (a1 + 104);
    }

    else
    {
      v16 = *(a1 + 104);
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 127);
    }

    else
    {
      v17 = *(a1 + 112);
    }

    v18 = std::string::append(&v36, v16, v17);
    v19 = v18->__r_.__value_.__r.__words[0];
    v39[0] = v18->__r_.__value_.__l.__size_;
    *(v39 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v19;
    __p.__r_.__value_.__l.__size_ = v39[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v39 + 7);
    *(&__p.__r_.__value_.__s + 23) = v20;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  if (v22)
  {
    if (v4)
    {
      v23 = *(a1 + 151);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(a1 + 136);
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      if (v22 == v23)
      {
        v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v27 = v24 >= 0 ? (a1 + 128) : *(a1 + 128);
        if (!memcmp(v26, v27, v22))
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v25 = __p.__r_.__value_.__r.__words[0];
    }

    if (v21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v25;
    }

    sub_19B68AC64(a1, p_p);
    if (!v4)
    {
      v29 = *(a1 + 216);
      if (v29)
      {
        sub_19B68E894(v29, *(a1 + 184));
      }
    }

LABEL_67:
    sub_19B68B20C(a1, *(a1 + 157));
    v30 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 157))
    {
      v31 = " and flushing immediately";
    }

    else
    {
      v31 = " no flush";
    }

    syslog(5, "%s,%s,logging locations to %s%s\n", "NOTICE", "CLLog", v30, v31);
    goto LABEL_73;
  }

  sub_19B689610(a1, 0, 0);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_75:
  if ((*(a1 + 164) & 0x80000000) != 0 || (v32 = v38, v38 < 1))
  {
    v34 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v34)
    {
      sub_19B41FFEC(v34);
    }

    *(a1 + 192) = 0;
  }

  else
  {
    if (v38 > 0xA00000)
    {
      v32 = 10485760;
      v38 = 10485760;
    }

    v33 = *(a1 + 216);
    if (!v33 || *(v33 + 16) != v32)
    {
      operator new();
    }

    *(a1 + 192) = sub_19B68E620(v33);
    syslog(5, "%s,%s,logging locations to an internal buffer with capacity %d\n", "NOTICE", "CLLog", v38);
  }
}

void sub_19B68ABD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B68AC64(uint64_t a1, char *a2)
{
  *&v69[1526] = *MEMORY[0x1E69E9840];
  v4 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  if (a2)
  {
    v5 = getuid();
    v6 = getgid();
    sub_19B5E3290(a2, v5, v6);
    v7 = fopen(a2, "a");
    if (v7)
    {
      sub_19B43212C((a1 + 128), a2);
      sub_19B689610(a1, v7, 1);
      sub_19B68B20C(a1, *(a1 + 157));
      v8 = *(a1 + 184);
      if (v8)
      {
        sub_19B5E49CC(v8);
      }

      sub_19B421798();
      sub_19B5F8AE4(__p);
      if (__p[23] >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      sub_19B428B50(&v64, v9);
      if (__p[23] < 0)
      {
        operator delete(*__p);
      }

      v10 = v66;
      v11 = v66;
      if (v66 < 0)
      {
        v10 = v65;
      }

      if (!v10)
      {
        if (v66 < 0)
        {
          v65 = 10;
          v12 = v64;
        }

        else
        {
          v66 = 10;
          v12 = &v64;
        }

        strcpy(v12, "Unplugged!");
        v11 = v66;
      }

      bzero(__p, 0x65CuLL);
      v14 = &v64;
      if (v11 < 0)
      {
        v14 = v64;
      }

      snprintf(__p, 0x65CuLL, "CoreLocation-%s\n", v14);
      sub_19B6896FC(a1, v15, 0, v16, v17, v18, v19, v20, __p);
      bzero(__p, 0x65CuLL);
      snprintf(__p, 0x65CuLL, "locationd was compiled on %s at %s\n", "Oct 22 2025", "21:31:11");
      sub_19B6896FC(a1, v21, 0, v22, v23, v24, v25, v26, __p);
      bufsize = 1024;
      if (_NSGetExecutablePath(buf, &bufsize))
      {
        bzero(__p, 0x65CuLL);
        v27 = sub_19B421798();
        v28 = v61;
        sub_19B5F88EC(v27, v61);
        if (v62 < 0)
        {
          v28 = v61[0];
        }

        sub_19B421798();
        sub_19B5F83A4(v59);
        if (v60 >= 0)
        {
          v29 = v59;
        }

        else
        {
          v29 = v59[0];
        }

        snprintf(__p, 0x65CuLL, "/usr/libexec/locationd @ system model %s / version %s\n", v28, v29);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      else
      {
        bzero(__p, 0x65CuLL);
        v36 = sub_19B421798();
        v37 = v61;
        sub_19B5F88EC(v36, v61);
        if (v62 < 0)
        {
          v37 = v61[0];
        }

        sub_19B421798();
        sub_19B5F83A4(v59);
        if (v60 >= 0)
        {
          v38 = v59;
        }

        else
        {
          v38 = v59[0];
        }

        snprintf(__p, 0x65CuLL, "%s @ system model %s / version %s\n", buf, v37, v38);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      sub_19B6896FC(a1, v30, 0, v31, v32, v33, v34, v35, __p);
      bzero(__p, 0x65CuLL);
      sub_19B421798();
      sub_19B5F8D44(v61);
      if (v62 >= 0)
      {
        v39 = v61;
      }

      else
      {
        v39 = v61[0];
      }

      snprintf(__p, 0x65CuLL, "IOPlatformSerialNumber: %s\n", v39);
      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      sub_19B6896FC(a1, v40, 0, v41, v42, v43, v44, v45, __p);
      bzero(v69, 0x5EAuLL);
      strcpy(__p, "Begin settings dump (read at construction of CLSettings or upon darwin notification 'com.apple.locationd/prefs')\n");
      sub_19B6896FC(a1, v46, 0, v47, v48, v49, v50, v51, __p);
      (*(**(a1 + 24) + 792))(*(a1 + 24));
      bzero(&__p[19], 0x649uLL);
      strcpy(__p, "End settings dump\n");
      sub_19B6896FC(a1, v52, 0, v53, v54, v55, v56, v57, __p);
      if (v66 < 0)
      {
        operator delete(v64);
      }
    }

    else
    {
      v13 = __error();
      syslog(3, "%s,%s,could not open locations log %s, errno %d\n", "ERROR", "CLLog", a2, *v13);
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_19B68B178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_19B5C6074(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B68B20C(uint64_t a1, int a2)
{
  v3 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  *(v3 + 117) = a2 != 0;
  v4 = *(v3 + 144);
  if (v4)
  {
    setvbuf(v4, 0, a2 != 0, 0);
  }

  return (*(*v3 + 24))(v3);
}

uint64_t sub_19B68B2AC(uint64_t a1)
{
  v1 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v2 = v1[18];
  if (v2)
  {
    fflush(v2);
  }

  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B68B32C(uint64_t a1, char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  sub_19B428B50(v21, a2);
  if (*(a1 + 71) >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = v19;
  sub_19B50FF5C(v19, v5 + 1);
  if (v20 < 0)
  {
    v6 = v19[0];
  }

  if (v5)
  {
    if (*(a1 + 71) >= 0)
    {
      v7 = (a1 + 48);
    }

    else
    {
      v7 = *(a1 + 48);
    }

    memmove(v6, v7, v5);
  }

  *(v6 + v5) = 95;
  if (sub_19B740A40(v4, v21, v19))
  {
    sub_19B428B50(v17, a2);
    sub_19B428B50(v15, ".log.bz2");
    if (sub_19B740B0C(v4, v17, v15))
    {
      v8 = 1;
    }

    else
    {
      sub_19B428B50(v13, a2);
      sub_19B428B50(__p, ".log");
      v8 = sub_19B740B0C(v4, v13, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  if (++*(*(*(a1 + 32) + 8) + 24) > *(a1 + 96))
  {
    LOBYTE(v21[0]) = 0;
    v9 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    if (snprintf(v21, 0x400uLL, "%s/%s", v9, a2) > 1023)
    {
      syslog(3, "%s,%s,Rotation path is too long, could not delete old logs.\n", "ERROR", "CLLog");
    }

    else if (unlink(v21))
    {
      perror("Failed to delete log");
    }
  }

  return 1;
}

void sub_19B68B598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B68B61C(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 71) < 0)
  {
    result = sub_19B4C5138(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v4;
  }

  if (*(a2 + 95) < 0)
  {
    return sub_19B4C5138(v3 + 72, *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(v3 + 11) = *(a2 + 88);
  *(v3 + 72) = v5;
  return result;
}

void sub_19B68B690(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68B6AC(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_19B68B704(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    goto LABEL_7;
  }

  v2 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v2 = *v2;
  }

  v3 = (a1 + 64);
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v3;
  }

  if (!sub_19B5E3A40(v2, v4))
  {
    if (*(a1 + 87) < 0)
    {
      v3 = *v3;
    }

    syslog(3, "%s,%s,Failed to write %s\n", "ERROR", "CLLog", v3);
  }

  else
  {
LABEL_7:
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    unlink(v5);
  }

  if ((*(a1 + 112) & 0x80000000) == 0)
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 32);

    sub_19B6A2184(v6, v7);
  }
}