void sub_19B446FB8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B4C5080();
}

float sub_19B447000(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

void sub_19B4470B0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_19B446FB8(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_19B4471F4(uint64_t a1, float64x2_t *a2, double a3, __n128 a4, uint64_t a5, double *a6, void *a7)
{
  v56 = *MEMORY[0x1E69E9840];
  *(a1 + 168) = *a7;
  ++*(a1 + 152);
  v9 = *a6;
  v10 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(*a2), vdup_n_s32(0x3C8EFA35u))), *(a1 + 88)));
  v11 = (v9 * 0.017453) - *(a1 + 104);
  *(a1 + 156) = v10;
  *(a1 + 164) = v11;
  v38 = *&v10;
  if (*(a1 + 224) == 1)
  {
    v12 = v10.f32[1];
    LODWORD(v54.f64[0]) = sqrtf((vmuls_lane_f32(v10.f32[1], v10, 1) + (v10.f32[0] * v10.f32[0])) + (v11 * v11));
    sub_19B4200DC(a1 + 232, &v54);
    if (*(a1 + 196) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v13 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        *buf = 134218752;
        v45 = (*v54.f64 / 0.017453);
        v46 = 2048;
        v47 = (*&v38 * 57.296);
        v48 = 2048;
        v49 = (v12 * 57.296);
        v50 = 2048;
        v51 = (v11 * 57.296);
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_INFO, "omegaMag6, %.3f, omega, %.3f, %.3f, %.3f", buf, 0x2Au);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        *v39 = 134218752;
        *&v39[4] = (*v54.f64 / 0.017453);
        *&v39[12] = 2048;
        *&v39[14] = (*&v38 * 57.296);
        *&v39[22] = 2048;
        *&v39[24] = (v12 * 57.296);
        v40 = 2048;
        v41 = (v11 * 57.296);
        LODWORD(v34) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "omegaMag6, %.3f, omega, %.3f, %.3f, %.3f", COERCE_DOUBLE(v39), v34, v35, v37);
        v16 = v15;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    v10 = *&v38;
  }

  a4.n128_u64[0] = *(a1 + 200);
  v36 = a4;
  v54 = vmulq_n_f64(vcvtq_f64_f32(v10), a4.n128_f64[0]);
  v55 = a4.n128_f64[0] * v11;
  sub_19B44793C(buf, v54.f64);
  sub_19B447A1C(v39, buf, (a1 + 16));
  v17 = *&v39[16];
  *(a1 + 16) = *v39;
  *(a1 + 32) = v17;
  v18 = vadd_f32(*(a1 + 136), *&v38);
  *(a1 + 136) = v18;
  *&v17 = *(a1 + 144) + v11;
  *(a1 + 144) = v17;
  ++*(a1 + 148);
  v19 = v36.n128_f64[0] * (v36.n128_f64[0] * ((COERCE_FLOAT(vmul_f32(v18, v18).i32[1]) + (v18.f32[0] * v18.f32[0])) + (*&v17 * *&v17)));
  if (v19 > 0.122500002)
  {
    sub_19B66E618(a1, v19, 0x3FBF5C2900000000);
  }

  if (*(a1 + 196) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
    }

    v20 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *a7;
      *buf = 134219008;
      v45 = v21;
      v46 = 2048;
      v47 = v22;
      v48 = 2048;
      v49 = v23;
      v50 = 2048;
      v51 = v24;
      v52 = 2048;
      v53 = v25;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "[AppleQuaternion] x,%f,y,%f,z,%f,w,%f,timestamp,%f", buf, 0x34u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v27 = *(a1 + 16);
      v28 = *(a1 + 24);
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *a7;
      *v39 = 134219008;
      *&v39[4] = v27;
      *&v39[12] = 2048;
      *&v39[14] = v28;
      *&v39[22] = 2048;
      *&v39[24] = v29;
      v40 = 2048;
      v41 = v30;
      v42 = 2048;
      v43 = v31;
      LODWORD(v34) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[AppleQuaternion] x,%f,y,%f,z,%f,w,%f,timestamp,%f", COERCE_DOUBLE(v39), v34, v36.n128_f64[0], v36.n128_f64[1], v38);
      v33 = v32;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v32);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }
}

void sub_19B447788(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  v6 = a1 + 312;
  a4.n128_u32[0] = *(a2 + 12);
  v26 = *(a2 + 8);
  *v25.i64 = a4.n128_f32[0];
  v7 = *(a2 + 16);
  v40 = v7;
  sub_19B4471F4(a1 + 296, &v26, v7, a4, &v25, &v40, a2);
  v8.i64[0] = *(a1 + 472);
  if (*v8.i64 <= 0.0)
  {
    v18 = 0;
    v19 = 0.0;
  }

  else
  {
    v9.f64[0] = *(a1 + 336);
    _Q3 = *v6;
    v11 = vaddq_f64(_Q3, _Q3);
    v9.f64[1] = -v9.f64[0];
    _D2 = v11.i64[1];
    __asm { FMLA            D0, D2, V3.D[1] }

    v18 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*(a1 + 480)), vmlsq_lane_f64(vmulq_f64(v9, vextq_s8(v11, v11, 8uLL)), *v6, *(a1 + 328) + *(a1 + 328), 0)));
    *v8.i64 = *(a1 + 488) - _D0;
    v19 = *v8.i64;
  }

  v20 = *(a1 + 460);
  v27 = 0uLL;
  v26 = -1.0;
  sub_19B41E130(&v27, v8);
  v35 = 1;
  v26 = *a2;
  v21 = *(v6 + 16);
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(*v6), v21);
  sub_19B41E130(&v25, v21);
  v27 = v25;
  v28 = v18;
  v29 = v19;
  v30 = *(v6 + 140);
  v31 = v20;
  v34 = -1;
  v32 = xmmword_19B7BA310;
  v33 = xmmword_19B7BB860;
  if (*(a1 + 252))
  {
    v23 = 16;
  }

  else
  {
    v23 = 0;
  }

  if (*(a1 + 304))
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  v36 = v24 | v23;
  v37 = 2;
  v39 = 0;
  v38 = 0;
  sub_19B41FA70(a1, &v26, v22);
}

void sub_19B44793C(double *a1, double *a2)
{
  v4 = *a2;
  v5 = sqrt(a2[1] * a2[1] + v4 * v4 + a2[2] * a2[2]);
  if (v5 >= 0.00000002)
  {
    v13 = __sincos_stret(v5 * 0.5);
    cosval = v13.__cosval;
    *a1 = v4 * v13.__sinval / v5;
    a1[1] = v13.__sinval * a2[1] / v5;
    v11 = v13.__sinval * a2[2] / v5;
  }

  else
  {
    *a1 = v4 * 0.5;
    v6 = a2[1] * 0.5;
    a1[1] = v6;
    v7 = a2[2] * 0.5;
    v8 = v5 * v5 * 0.125;
    v9 = 1.0 - v8;
    v10 = sqrt(v8 + 1.0);
    *a1 = v4 * 0.5 / v10;
    a1[1] = v6 / v10;
    v11 = v7 / v10;
    cosval = v9 / v10;
  }

  a1[2] = v11;
  a1[3] = cosval;
}

double sub_19B447A1C(double *a1, double *a2, double *a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a3[1];
  v6 = a2[1];
  v7 = a3[2];
  v8 = a3[3];
  *a1 = v4 * v5 + v3 * *a3 - v6 * v7 + *a2 * v8;
  v9 = *a3;
  v10 = *a2;
  a1[1] = v3 * v5 - v4 * *a3 + *a2 * v7 + v6 * v8;
  v11 = a2[1];
  v12 = a3[1];
  a1[2] = v11 * v9 - v10 * v12 + v3 * v7 + v4 * v8;
  result = -(v11 * v12) - v10 * v9 - a2[2] * a3[2] + v3 * v8;
  a1[3] = result;
  return result;
}

uint64_t *sub_19B447A98(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 520);
  if (v2)
  {
    v3 = *(result + 7);
    v5[2] = *(result + 5);
    v5[3] = v3;
    v5[4] = *(result + 9);
    v6 = result[11];
    v4 = *(result + 3);
    v5[0] = *(result + 1);
    v5[1] = v4;
    v7 = *result;
    v8 = *(result + 112);
    return v2(v5, *(a2 + 528));
  }

  return result;
}

void sub_19B4484BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B4484E8()
{
  if (qword_1ED71D618 != -1)
  {
    dispatch_once(&qword_1ED71D618, &unk_1F0E2A020);
  }

  return qword_1ED71D610;
}

unint64_t sub_19B448530(uint64_t a1, int a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if ((sub_19B421620() & 0x80) == 0)
  {
    return 0xBFF0000000000000;
  }

  HIDWORD(v38) = a2;
  v48 = 0;
  v49 = &v48;
  v50 = 0x4012000000;
  v51 = sub_19B428AFC;
  v52 = nullsub_2;
  v53 = &unk_19B840009;
  v55 = 0;
  v5 = 3;
  v54 = 2;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 10;
  while (1)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v6 = sub_19B420D84();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_19B448DD0;
    v39[3] = &unk_1E7535848;
    v39[4] = &v40;
    v39[5] = &v48;
    v39[6] = &v44;
    v39[7] = a1;
    sub_19B420C9C(v6, v39);
    if (!*(v41 + 6))
    {
      break;
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v7 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      v8 = mach_error_string(*(v41 + 6));
      v9 = *(v41 + 6);
      *buf = 136315394;
      v61 = v8;
      v62 = 1026;
      v63 = v9;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "SendCommand() = %s (0x%{public}x)", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v11 = off_1ED71C7C0;
      v12 = mach_error_string(*(v41 + 6));
      v13 = *(v41 + 6);
      v56 = 136315394;
      v57 = v12;
      v58 = 1026;
      v59 = v13;
      LODWORD(v38) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 1, "SendCommand() = %s (0x%{public}x)", &v56, v38);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    usleep(0x3E8u);
    _Block_object_dispose(&v40, 8);
    if (!--v5)
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v27 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "No reply for LastOrientation", buf, 2u);
      }

      v28 = sub_19B420058();
      if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        LOWORD(v40) = 0;
        LODWORD(v38) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "No reply for LastOrientation", &v40, v38);
        v30 = v29;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

LABEL_60:
      v4 = 0xBFF0000000000000;
      goto LABEL_61;
    }
  }

  if (v45[3] != 10)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v31 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      v32 = v45[3];
      *buf = 134349056;
      v61 = v32;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "SendCommand() got unexpected response size %{public}zd", buf, 0xCu);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v34 = v45[3];
      v56 = 134349056;
      v57 = v34;
      LODWORD(v38) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "SendCommand() got unexpected response size %{public}zd", &v56, v38);
      v36 = v35;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    _Block_object_dispose(&v40, 8);
    goto LABEL_60;
  }

  v16 = v49;
  if (*(a1 + 402) > *(v49 + 50))
  {
    v17 = *(a1 + 400);
    *(v49 + 28) = *(a1 + 408);
    v16[6] = v17;
  }

  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
  }

  v18 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v49 + 49);
    *buf = 67240192;
    LODWORD(v61) = v19;
    _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "Got cached orientation %{public}u", buf, 8u);
  }

  v20 = sub_19B420058();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v21 = *(v49 + 49);
    v56 = 67240192;
    LODWORD(v57) = v21;
    LODWORD(v38) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Got cached orientation %{public}u", &v56, v38);
    v23 = v22;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  _Block_object_dispose(&v40, 8);
  v24 = *(v49 + 50);
  v25 = sub_19B41E070(v24);
  v26 = v25;
  if (HIDWORD(v38))
  {
    sub_19B729F98(a1, v24, *(v49 + 49), v25);
  }

  v4 = *&v26;
LABEL_61:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  return v4;
}

void sub_19B448D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B448DD0(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1[7] + 384);
  if (v2)
  {
    result = (*(*v2 + 160))(v2, 32, *(a1[5] + 8) + 48, 1, *(a1[5] + 8) + 48, *(a1[6] + 8) + 24);
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v4 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "fHidDeviceInterface NULL", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "fHidDeviceInterface NULL", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    result = 4160749568;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_19B449420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const char *sub_19B449494(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Unexpected";
  }

  else
  {
    return off_1E7535B98[a1];
  }
}

uint64_t sub_19B4498B4()
{
  if (qword_1ED71CAC8 != -1)
  {
    dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
  }

  return qword_1ED71CAC0;
}

void sub_19B4498FC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (*(a1 + 352))
    {
      v8 = *(a1 + 384);
      if (v8)
      {
        (*(*v8 + 72))(v8, 0);
      }

      v9 = *(a1 + 376);
      if (v9)
      {
        (*(*v9 + 24))(v9);
        IODestroyPlugInInterface(*(a1 + 376));
      }

      *(*(a1 + 352) + 8) = 0;
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
    }
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v3 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "closeHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v11[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "closeHidDriverInterface should be called from motion thread", v11, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::closeHidDriverInterface()", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v7 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B7293F0;
    v10[3] = &unk_1E75327D8;
    v10[4] = a1;
    sub_19B420C9C(v7, v10);
  }
}

void sub_19B449B64(uint64_t a1, const char *a2, NSObject *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v20 = off_1ED71C838;
    p_vtable = "";
    a2 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 20);
      *buf = 68290051;
      *v38 = 0;
      *&v38[4] = 2082;
      *&v38[6] = "";
      v39 = 1026;
      v40 = v21;
      v41 = 1026;
      *v42 = v22;
      *&v42[4] = 2082;
      *&v42[6] = "assert";
      v43 = 2081;
      v44 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v23 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v25 = *(a1 + 16);
      v24 = *(a1 + 20);
      *buf = 68290051;
      *v38 = 0;
      *&v38[4] = 2082;
      *&v38[6] = "";
      v39 = 1026;
      v40 = v24;
      v41 = 1026;
      *v42 = v25;
      *&v42[4] = 2082;
      *&v42[6] = "assert";
      v43 = 2081;
      v44 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a3 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 16);
      v26 = *(a1 + 20);
      *buf = 68290051;
      *v38 = 0;
      *&v38[4] = 2082;
      *&v38[6] = "";
      v39 = 1026;
      v40 = v26;
      v41 = 1026;
      *v42 = v27;
      *&v42[4] = 2082;
      *&v42[6] = "assert";
      v43 = 2081;
      v44 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 595, "setRegistryIDChangedCallback");
LABEL_34:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_5;
  }

  if (*(a1 + 120) == a2 && *(a1 + 128) == a3)
  {
    return;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
    goto LABEL_34;
  }

LABEL_5:
  v8 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 120))
    {
      v9 = "Opening";
    }

    else
    {
      v9 = "Closing";
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 20);
    v12 = *(a1 + 24);
    *buf = 136446979;
    *v38 = v9;
    *&v38[8] = 1026;
    *&v38[10] = v10;
    v39 = 1026;
    v40 = v11;
    v41 = 2049;
    *v42 = v12;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "%{public}s hid driver interface for usage pair {%{public}d, %{public}d}, hidServiceRef %{private}p", buf, 0x22u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    if (*(a1 + 120))
    {
      v14 = "Opening";
    }

    else
    {
      v14 = "Closing";
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 20);
    v17 = *(a1 + 24);
    v29 = 136446979;
    v30 = v14;
    v31 = 1026;
    v32 = v15;
    v33 = 1026;
    v34 = v16;
    v35 = 2049;
    v36 = v17;
    LODWORD(v28) = 34;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "%{public}s hid driver interface for usage pair {%{public}d, %{public}d}, hidServiceRef %{private}p", &v29, v28);
    v19 = v18;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setRegistryIDChangedCallback(OnRegistryIDChanged, void *)", "CoreLocation: %s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

uint64_t sub_19B44A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 16);
      v9 = *(a1 + 20);
      *buf = 68290051;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      v22 = v9;
      v23 = 1026;
      v24 = v10;
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v11 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v13 = *(a1 + 16);
      v12 = *(a1 + 20);
      *buf = 68290051;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      v22 = v12;
      v23 = 1026;
      v24 = v13;
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v14 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 16);
      v15 = *(a1 + 20);
      *buf = 68290051;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      v22 = v15;
      v23 = 1026;
      v24 = v16;
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 544, "setServiceRemovalCallback");
  }

  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
  result = *(a1 + 24);
  if (result)
  {

    return IOHIDServiceClientRegisterRemovalCallback();
  }

  return result;
}

uint64_t sub_19B44A36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  result = sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 16);
      v9 = *(a1 + 20);
      *buf = 68290051;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      v22 = v9;
      v23 = 1026;
      v24 = v10;
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setNewServiceCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v11 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v13 = *(a1 + 16);
      v12 = *(a1 + 20);
      *buf = 68290051;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      v22 = v12;
      v23 = 1026;
      v24 = v13;
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setNewServiceCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setNewServiceCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v14 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 16);
      v15 = *(a1 + 20);
      *buf = 68290051;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      v22 = v15;
      v23 = 1026;
      v24 = v16;
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setNewServiceCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 537, "setNewServiceCallback");
  }

  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  return result;
}

void sub_19B44A714(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "unregistering for keyboard updates", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "unregistering for keyboard updates", v8, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::unregisterForKeyboardUpdates()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B44A91C;
  v7[3] = &unk_1E75327D8;
  v7[4] = a1;
  sub_19B420C9C(v6, v7);
  *(a1 + 80) = 0;
}

uint64_t sub_19B44A91C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v2);
    if (RunLoopSource)
    {
      v4 = RunLoopSource;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v4, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 32));
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    v6 = IONotificationPortGetRunLoopSource(v5);
    if (v6)
    {
      v7 = v6;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v7, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 40));
    *(v1 + 40) = 0;
  }

  v8 = *(v1 + 48);
  if (v8)
  {
    v9 = IONotificationPortGetRunLoopSource(v8);
    if (v9)
    {
      v10 = v9;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v10, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 48));
    *(v1 + 48) = 0;
  }

  v11 = *(v1 + 56);
  if (v11)
  {
    v12 = IONotificationPortGetRunLoopSource(v11);
    if (v12)
    {
      v13 = v12;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v13, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 56));
    *(v1 + 56) = 0;
  }

  v14 = *(v1 + 64);
  if (v14)
  {
    IOObjectRelease(v14);
    *(v1 + 64) = 0;
  }

  v15 = *(v1 + 68);
  if (v15)
  {
    IOObjectRelease(v15);
    *(v1 + 68) = 0;
  }

  v16 = *(v1 + 72);
  if (v16)
  {
    IOObjectRelease(v16);
    *(v1 + 72) = 0;
  }

  result = *(v1 + 76);
  if (result)
  {
    result = IOObjectRelease(result);
    *(v1 + 76) = 0;
  }

  return result;
}

void sub_19B44AA8C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B44AB6C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v3 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      LOWORD(v20[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "Unrecognized notification", v20, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLOrientationNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    return;
  }

  if (!*(a1 + 352))
  {
    if (qword_1ED71C8E0 != -1)
    {
      dispatch_once(&qword_1ED71C8E0, &unk_1F0E29BE0);
    }

    sub_19B42C428(qword_1ED71C8E8);
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      *(a1 + 33) = 0;
      if (*(a1 + 392))
      {
        v9 = sub_19B4498B4();
        sub_19B426A14(v9, 0, *(a1 + 392));
        v10 = *(a1 + 392);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        *(a1 + 392) = 0;
      }

      if ((sub_19B421620() & 0x80) != 0)
      {
        sub_19B4238F4(*(a1 + 352), 0);
        v11 = *(a1 + 368) - 1;
        *(a1 + 368) = v11;
        if (!v11)
        {
          sub_19B449B64(*(a1 + 352), 0, 0);
          if (sub_19B43EE18(*(a1 + 352)))
          {
            sub_19B4498FC(a1);
          }
        }

        sub_19B44A030(*(a1 + 352), 0, 0);
        sub_19B44A36C(*(a1 + 352), 0, 0);
        sub_19B42D100(*(a1 + 352), 0, 0);
      }

      if (*(a1 + 48))
      {
        sub_19B7279AC(a1);
      }
    }

    return;
  }

  if ((sub_19B421620() & 0x80) != 0)
  {
    sub_19B42D100(*(a1 + 352), sub_19B727C64, a1);
    sub_19B44A36C(*(a1 + 352), sub_19B728034, a1);
    sub_19B44A030(*(a1 + 352), nullsub_172, a1);
    v12 = *(a1 + 368);
    *(a1 + 368) = v12 + 1;
    if (!v12)
    {
      sub_19B449B64(*(a1 + 352), sub_19B7293B0, a1);
      if (sub_19B43EE18(*(a1 + 352)))
      {
        sub_19B4498FC(a1);
      }

      sub_19B4529B4(a1);
    }

    if (a2 != 2)
    {
      sub_19B4238F4(*(a1 + 352), 1);
      goto LABEL_63;
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v13 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = 2;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Unrecognized notification request %{public}u", buf, 8u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_63;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v20[0] = 67240192;
    v20[1] = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "Unrecognized notification request %{public}u", v20, 8);
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLOrientationNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v15);
LABEL_61:
    if (v16 != buf)
    {
      free(v16);
    }

    goto LABEL_63;
  }

  if (a2 == 1)
  {
    sub_19B728074(a1, 1);
    goto LABEL_63;
  }

  if (a2)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v17 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_63;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    LOWORD(v20[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "Unrecognized notification", v20, 2);
    v16 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLOrientationNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v19);
    goto LABEL_61;
  }

  sub_19B728074(a1, 0);
LABEL_63:
  if (!*(a1 + 392))
  {
    operator new();
  }

  *(a1 + 33) = 1;
}

void sub_19B44B2C8(uint64_t a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a3)
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        if (qword_1ED71CAC8 != -1)
        {
          dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
        }

        v5 = qword_1ED71CAC0;
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
        }

        v6 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "registering for keyboard updates", buf, 2u);
        }

        v7 = sub_19B420058();
        if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
          }

          v12[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "registering for keyboard updates", v12, 2);
          v9 = v8;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::registerForKeyboardUpdates()", "CoreLocation: %s\n", v8);
          if (v9 != buf)
          {
            free(v9);
          }
        }

        v10 = sub_19B420D84();
        *buf = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = sub_19B453FCC;
        v16 = &unk_1E75327D8;
        v17 = v5;
        sub_19B420C9C(v10, buf);
        *(v5 + 80) = 1;
      }

      if (a3 != 1)
      {

        sub_19B4455DC(a1, 0, a1 + 81, 1);
      }
    }

    else
    {
      if (qword_1ED71CAC8 != -1)
      {
        dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
      }

      v11 = qword_1ED71CAC0;

      sub_19B44A714(v11);
    }
  }
}

void sub_19B44B638(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B44B79C(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 233) = 0;
  objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), a2, a3);
  v6 = *(a1 + 32);

  return objc_msgSend_stopSuppressionUpdatesPrivate(v6, v4, v5);
}

void sub_19B44B974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B44B9A0()
{
  v12 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  if (qword_1ED71C938 != -1)
  {
    dispatch_once(&qword_1ED71C938, &unk_1F0E29600);
  }

  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "assert";
      v10 = 2081;
      v11 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Not running on motion thread!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
      }
    }

    v2 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "assert";
      v10 = 2081;
      v11 = "runningOnMotionThread";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Not running on motion thread!", "{msg%{public}.0s:Not running on motion thread!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
      }
    }

    v3 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "assert";
      v10 = 2081;
      v11 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Not running on motion thread!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/CLMotionCore.mm", 183, "assertOnMotionThread");
  }
}

void sub_19B44BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_19B44BECC(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B44C460((a1 + 3), a2, a3);
  return a1;
}

void sub_19B44BF28(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
  }

  v6 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 67240448;
    buf[1] = a2;
    LOWORD(buf[2]) = 2050;
    *(&buf[2] + 2) = a3;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    LODWORD(v22) = 67240448;
    HIDWORD(v22) = a2;
    v23 = 2050;
    v24 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", &v22, 18);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLEclipseNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (a2 != 2)
  {
    if (a2 >= 2)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
      }

      v10 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 67240192;
        buf[1] = a2;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Unrecognized notification,%{public}d", buf, 8u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
        }

        LODWORD(v22) = 67240192;
        HIDWORD(v22) = a2;
        LODWORD(v20) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 17, "Unrecognized notification,%{public}d", &v22, v20);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLEclipseNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v12);
        goto LABEL_37;
      }
    }

    else
    {
      v14 = sub_19B421620();
      if ((v14 & 0x200) != 0)
      {
        v18 = *(a1 + 56);
        if (!v18)
        {
          v19 = sub_19B42CAAC();
          v22 = 0x140000FF0CLL;
          LOBYTE(v23) = 0;
          sub_19B42C428(v19);
        }

        sub_19B4238F4(v18, a3 != 0);
        if (qword_1EAFE3A50 != -1)
        {
          dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
        }

        sub_19B44C9BC(qword_1EAFE3A60);
      }

      else
      {
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
        }

        v15 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "Service unavailable.", buf, 2u);
        }

        v16 = sub_19B420058();
        if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
          }

          v21[0] = 0;
          LODWORD(v20) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 17, "Service unavailable.", v21, v20);
          v13 = v17;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLEclipseNotifier::openHidDevice()", "CoreLocation: %s\n", v17);
LABEL_37:
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }
    }
  }
}

uint64_t sub_19B44C460(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B44C4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B44C9BC(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
  }

  v2 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Notifying latest suppression.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v13[0] = 0;
    LODWORD(v12) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "[CLSPUEclipseClient] Notifying latest suppression.", v13, v12);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::notifyLatestSuppression()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  HIBYTE(v12) = 4;
  v6 = sub_19B44CCDC(a1, &v12 + 7, 1);
  if (!v6)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v7 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Notify failed", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v13[0] = 0;
      LODWORD(v12) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "[CLSPUEclipseClient] Notify failed", v13, v12);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::notifyLatestSuppression()", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return v6;
}

BOOL sub_19B44CCDC(uint64_t a1, uint64_t a2, char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  if ((sub_19B421620() & 0x200) == 0)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E2A280);
    }

    v7 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E2A280);
      }
    }

    v8 = off_1EAFE2828;
    if (os_signpost_enabled(off_1EAFE2828))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUEclipseInterface] Service required", "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E2A280);
      }
    }

    v9 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Eclipse/CLSPUEclipseInterface.mm", 39, "sendCommand");
  }

  v10 = 0;
  *buf = 4;
  return sub_19B44CF80(*(a1 + 24), a2, a3, &v10, buf) == 0;
}

uint64_t sub_19B44CF80(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v10 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = a3;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CLSPUHIDDriverInterface] Attempting to send command with reply to SPU,length,%zu", buf, 0xCu);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v29 = 134217984;
    v30 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 2, "[CLSPUHIDDriverInterface] Attempting to send command with reply to SPU,length,%zu", &v29);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "IOReturn CLSPUHIDDriverInterface::sendCommand(const void *, size_t, void *, size_t *)", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = (*(*v14 + 80))(v14, a2, a3, a4, a5);
    if (v15)
    {
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      v16 = qword_1EAFE2838;
      if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
      {
        v17 = mach_error_string(v15);
        *buf = 136446466;
        v34 = v17;
        v35 = 1026;
        v36 = v15;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] sendCommand() = %{public}s (0x%{public}x)", buf, 0x12u);
      }

      v18 = sub_19B420058();
      if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2810 != -1)
        {
          dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
        }

        v19 = qword_1EAFE2838;
        v20 = mach_error_string(v15);
        v29 = 136446466;
        v30 = v20;
        v31 = 1026;
        v32 = v15;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v19, 17, "[CLSPUHIDDriverInterface] sendCommand() = %{public}s (0x%{public}x)", &v29, 18);
        v23 = v22;
        sub_19B6BB7CC("Generic", 1, 0, 0, "IOReturn CLSPUHIDDriverInterface::sendCommand(const void *, size_t, void *, size_t *)", "CoreLocation: %s\n", v21);
LABEL_36:
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v24 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_INFO, "[CLSPUHIDDriverInterface] hidDriverInterface NULL, unable to send command", buf, 2u);
    }

    v15 = 3758097084;
    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      LOWORD(v29) = 0;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 1, "[CLSPUHIDDriverInterface] hidDriverInterface NULL, unable to send command", &v29, 2);
      v23 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 2, "IOReturn CLSPUHIDDriverInterface::sendCommand(const void *, size_t, void *, size_t *)", "CoreLocation: %s\n", v26);
      goto LABEL_36;
    }
  }

  return v15;
}

void sub_19B44D44C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B44D484(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B44D4BC(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 232) == 1)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v3 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
      v7 = *(v1 + 344);
      *buf = 134349314;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Stop service called.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v13 = off_1EAFE2828;
      v14 = objc_msgSend_suppressionClientType(*(a1 + 32), v11, v12);
      v15 = *(v1 + 344);
      v22 = 134349314;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 0, "[%{public}ld][%{public}@] Stop service called.", &v22, 22);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopService]_block_invoke", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    *(v1 + 232) = 0;
    objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v9, v10);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v18 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "Service already stopped (or service has not been started yet).", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      LOWORD(v22) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "Service already stopped (or service has not been started yet).", &v22, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager stopService]_block_invoke", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }
}

void sub_19B44D81C(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
    v7 = *(v2 + 344);
    *buf = 134349314;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Significant user interaction detected", buf, 0x16u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v11 = off_1EAFE2828;
    v12 = objc_msgSend_suppressionClientType(*(a1 + 32), v9, v10);
    v13 = *(v2 + 344);
    v16 = 134349314;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 0, "[%{public}ld][%{public}@] Significant user interaction detected", &v16, 22);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager didDetectSignificantUserInteraction]_block_invoke", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  sub_19B44DDDC(qword_1EAFE3A68, 0);
}

void sub_19B44DA5C(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  BYTE6(v12) = 6;
  HIBYTE(v12) = a2;
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v15 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLSPUEclipseClient] Sending SignificantUserInteraction to AOP,simulated,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v13[0] = 67240192;
    v13[1] = a2;
    LODWORD(v12) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 1, "[CLSPUEclipseClient] Sending SignificantUserInteraction to AOP,simulated,%{public}u", v13, v12);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUEclipseClient::informSignificantUserInteraction(BOOL)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (!sub_19B44CCDC(a1, &v12 + 6, 2))
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v8 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Informing AOP about SignificantUserInteraction failed", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      LOWORD(v13[0]) = 0;
      LODWORD(v12) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "[CLSPUEclipseClient] Informing AOP about SignificantUserInteraction failed", v13, v12);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUEclipseClient::informSignificantUserInteraction(BOOL)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

uint64_t sub_19B44DD98(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_19B427AEC((v1 + 200));
  v3 = 1;
  return sub_19B4453D4(v1, &v3);
}

void sub_19B44DDDC(uint64_t a1, int a2)
{
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  v3 = qword_1EAFE3A60;

  sub_19B44DA5C(v3, a2);
}

void sub_19B44DE40(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B44DED0;
  v7[3] = &unk_1E7533E58;
  v7[4] = a1;
  v7[5] = a2;
  *&v7[6] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B44DED0(uint64_t a1)
{
  v1 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v17 = off_1ED71C808;
    v4 = "assert";
    v2 = "properties != nullptr";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v18 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "properties != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v1 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Notifiers/CLDeviceMotion.mm", 186, "setDeviceMotionUpdateInterval_block_invoke");
  }

  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
LABEL_3:
  v5 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v6 = *(v1 + 6);
    *buf = 134349056;
    *v23 = v6;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "CLDeviceMotion::setDeviceMotionUpdateInterval changing update interval to: %{public}f", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v10 = *(v1 + 6);
    v20 = 134349056;
    v21 = v10;
    LODWORD(v19) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "CLDeviceMotion::setDeviceMotionUpdateInterval changing update interval to: %{public}f", &v20, v19);
    v12 = v11;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::setDeviceMotionUpdateInterval(CLDeviceMotion::Dispatcher *, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  *buf = objc_msgSend_mode(v4, v8, v9);
  if (sub_19B426490(buf))
  {
    v15 = objc_msgSend_mode(v4, v13, v14);
    v16 = sub_19B426F5C(v15);
    sub_19B44E2F8(v2, v16, *(v1 + 5), v1 + 48);
  }
}

void sub_19B44E2F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B44E390;
  v9[3] = &unk_1E7533DB0;
  v10 = a2;
  v9[4] = a1;
  v9[5] = a3;
  v9[6] = a4;
  sub_19B420C9C(v8, v9);
}

void sub_19B44E390(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (*(*v3 + 24))(v3);
  v6 = v2[2];
  v7 = v6 + 80 * v1;
  v10 = *(v7 + 40);
  v8 = v7 + 40;
  v9 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = *v4;
  v12 = v8;
  do
  {
    v13 = *(v9 + 32);
    v14 = v13 >= v3;
    v15 = v13 < v3;
    if (v14)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * v15);
  }

  while (v9);
  if (v12 != v8 && *(v12 + 32) <= v3)
  {
    *(v12 + 48) = v11;
    *(v12 + 56) = v11 * v5;
    if (*(v6 + 80 * v1 + 16) <= 0.0)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      v20 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        v21 = *(v12 + 48);
        v22 = *(v2[2] + 80 * v1 + 16);
        *buf = 134218240;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "CLMotionNotifier::setUpdateIntervalPrivate RequestedUpdateInterval:%f, UpdateInterval:%f", buf, 0x16u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
        }

        v24 = *(v12 + 48);
        v25 = *(v2[2] + 80 * v1 + 16);
        *v36 = 134218240;
        *&v36[4] = v24;
        *&v36[12] = 2048;
        *&v36[14] = v25;
        LODWORD(v35) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "CLMotionNotifier::setUpdateIntervalPrivate RequestedUpdateInterval:%f, UpdateInterval:%f", COERCE_DOUBLE(v36), *&v35);
        v27 = v26;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMotionNotifier::setUpdateIntervalPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v26);
        if (v27 != buf)
        {
          free(v27);
        }
      }
    }

    v28 = v2[2];
    v29 = (v28 + 80 * v1);
    *(v12 + 44) = llround(*(v12 + 48) / v29[2]);
    v30 = sub_19B426978(v28, v1);
    *buf = v30;
    if (v30 != *v29)
    {
      *v29 = v30;
      *(v2[2] + 80 * v1 + 16) = (*(*v2 + 16))(v2, v1, buf);
      sub_19B423614(v2, v1);
      v28 = v2[2];
    }

    v31 = sub_19B4268E8(v28, v1);
    *v36 = v31;
    v32 = v28 + 80 * v1;
    v34 = *(v32 + 8);
    v33 = (v32 + 8);
    if (v31 != v34)
    {
      *v33 = v31;
      *(v2[2] + 80 * v1 + 24) = (*(*v2 + 24))(v2, v1, v36);
    }
  }

  else
  {
LABEL_9:
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v16 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = v1;
      *&buf[8] = 2048;
      *&buf[10] = v3;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Unknown (notification,dispatcher) pair: (%d, %p)", buf, 0x12u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      *v36 = 67109376;
      *&v36[4] = v1;
      *&v36[8] = 2048;
      *&v36[10] = v3;
      LODWORD(v35) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "Unknown (notification,dispatcher) pair: (%d, %p)", v36, v35);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMotionNotifier::setUpdateIntervalPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

uint64_t sub_19B44E8A4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Device is stationary and Timeout exceeded, turning off device motion gyro heartbeat and bias estimator.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Device is stationary and Timeout exceeded, turning off device motion gyro heartbeat and bias estimator.", v10, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService3AxisDynamicGyro::feedAccelerometerData(const CLAccelerometer::Sample *)_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (*(v1 + 288))
  {
    v6 = sub_19B42AD98();
    sub_19B426A14(v6, 0, *(v1 + 288));
    v7 = *(v1 + 288);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *(v1 + 288) = 0;
  }

  if (*(v1 + 225) == 1)
  {
    v8 = sub_19B442E70();
    sub_19B445814(v8);
    *(v1 + 225) = 0;
  }

  *buf = 0;
  return sub_19B4453D4(v1, buf);
}

void sub_19B44EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    __n = 0;
    __src = 0;
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v4 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
      }

      LOWORD(__dst[0]) = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 1, "Empty payload, returning", __dst, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLEclipseNotifier::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v6);
LABEL_23:
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v9 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
      }

      LOWORD(__dst[0]) = 0;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 17, "Event ref invalid", __dst, 2, __dst[0]);
      v8 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLEclipseNotifier::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v11);
      goto LABEL_23;
    }
  }
}

uint64_t sub_19B44F1FC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      (*(*a2 + 16))(a2, a1);
    }

    else if (v2 == 2)
    {
      (*(*a2 + 24))(a2, a1);
    }
  }

  else
  {
    switch(v2)
    {
      case 3u:
        (*(*a2 + 32))(a2, a1);
        break;
      case 5u:
        (*(*a2 + 56))(a2, a1);
        break;
      case 0xFFu:
        return 0;
    }
  }

  return 1;
}

uint64_t sub_19B44F310(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    v11 = *(a2 + 10);
    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    v31 = *(a1 + 48);
    v14 = mach_absolute_time();
    *buf = 67242752;
    *&buf[4] = v5;
    LOWORD(v54) = 1026;
    *(&v54 + 2) = v6;
    HIWORD(v54) = 1026;
    *v55 = v7;
    *&v55[4] = 1026;
    *&v55[6] = v8;
    v56 = 1026;
    v57 = v9;
    v58 = 2050;
    v59 = v10;
    v60 = 2050;
    v61 = v11;
    v62 = 1026;
    v63 = v12;
    v64 = 2050;
    v65 = v13;
    v66 = 2050;
    v67 = v31;
    v68 = 2050;
    v69 = sub_19B41E070(v14);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Report,shouldSuppress,%{public}u,APAwake,%{public}u,currentState,%{public}u,orientation,%{public}u,motionType,%{public}u,lux,%{public}f,pocketProbability,%{public}f,facedownStatic,%{public}u,timeSinceLastFacedownStatic,%{public}lf,timestamp,%{public}lf,now,%{public}lf", buf, 0x58u);
  }

  v15 = sub_19B420058();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v16 = off_1EAFE2828;
    v17 = *(a2 + 1);
    v18 = *(a2 + 2);
    v19 = *(a2 + 3);
    v20 = *(a2 + 4);
    v21 = *(a2 + 5);
    v22 = *(a2 + 6);
    v23 = *(a2 + 10);
    v24 = *(a2 + 14);
    v25 = *(a2 + 15);
    v26 = *(a1 + 48);
    v27 = mach_absolute_time();
    v32[0] = 67242752;
    v32[1] = v17;
    v33 = 1026;
    v34 = v18;
    v35 = 1026;
    v36 = v19;
    v37 = 1026;
    v38 = v20;
    v39 = 1026;
    v40 = v21;
    v41 = 2050;
    v42 = v22;
    v43 = 2050;
    v44 = v23;
    v45 = 1026;
    v46 = v24;
    v47 = 2050;
    v48 = v25;
    v49 = 2050;
    v50 = v26;
    v51 = 2050;
    v52 = sub_19B41E070(v27);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v16, 0, "Report,shouldSuppress,%{public}u,APAwake,%{public}u,currentState,%{public}u,orientation,%{public}u,motionType,%{public}u,lux,%{public}f,pocketProbability,%{public}f,facedownStatic,%{public}u,timeSinceLastFacedownStatic,%{public}lf,timestamp,%{public}lf,now,%{public}lf", v32, 88);
    v29 = v28;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLEclipseNotifier::visitSuppress(const CMEclipseReport::Suppress *)", "CoreLocation: %s\n", v28);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v54 = 0;
  *buf = *(a1 + 48);
  LOBYTE(v54) = *(a2 + 1);
  BYTE1(v54) = *(a2 + 14);
  *v55 = *(a2 + 15);
  return sub_19B41DF08(a1, 0, buf, 24);
}

uint64_t sub_19B44FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = IOHIDEventGetType();
  if (result == 14)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    TimeStamp = IOHIDEventGetTimeStamp();
    v8 = sub_19B41E070(TimeStamp);
    v9 = IntegerValue;
    return sub_19B41DF08(a1, 0, &v8, 16);
  }

  return result;
}

void sub_19B44FF80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  kdebug_trace();
  v4 = *(a2 + 72);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B45001C;
  v5[3] = &unk_1E7533E38;
  v5[4] = a2;
  v6 = v3;
  dispatch_async(v4, v5);
}

unsigned int *sub_19B45001C(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(a1 + 40) & 0x100) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (*(v2 + 112) != 0.0 && !*(v2 + 104) && (*(a1 + 40) & 0x100) != 0)
  {
    v5 = mach_absolute_time();
    v6 = sub_19B41E070(v5);
    v7 = *(v2 + 112);
    *(v2 + 112) = 0;
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v8 = v6 - v7;
    v9 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
    {
      v10 = mach_absolute_time();
      *buf = 134218240;
      *v33 = sub_19B41E070(v10);
      *&v33[8] = 2048;
      *&v33[10] = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "%f: ProxDelay,%f", buf, 0x16u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v13 = qword_1EAFE2868;
      v14 = mach_absolute_time();
      v30 = 134218240;
      *v31 = sub_19B41E070(v14);
      *&v31[8] = 2048;
      *&v31[10] = v8;
      LODWORD(v29) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 1, "%f: ProxDelay,%f", COERCE_DOUBLE(&v30), *&v29);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::feedProximityData(const uint32_t)_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    if (qword_1ED71D2F8 != -1)
    {
      dispatch_once(&qword_1ED71D2F8, &unk_1F0E28340);
    }

    objc_msgSend_stringWithFormat_(v17, v12, @"%@.%@", qword_1ED71D2F0, @"proxBootDelay");
    ADClientPushValueForDistributionKey();
  }

  *(v2 + 104) = v3;
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v18 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 40);
    v20 = *(v2 + 104);
    if (v20 > 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = off_1E7533F08[v20];
    }

    *buf = 67109378;
    *v33 = v19;
    *&v33[4] = 2080;
    *&v33[6] = v21;
    _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_INFO, "Proximity detection mask: %u, Last prox state: %s", buf, 0x12u);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v23 = *(a1 + 40);
    v24 = *(v2 + 104);
    if (v24 > 2)
    {
      v25 = 0;
    }

    else
    {
      v25 = off_1E7533F08[v24];
    }

    v30 = 67109378;
    *v31 = v23;
    *&v31[4] = 2080;
    *&v31[6] = v25;
    LODWORD(v29) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 1, "Proximity detection mask: %u, Last prox state: %s", &v30, v29);
    v27 = v26;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::feedProximityData(const uint32_t)_block_invoke", "CoreLocation: %s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  return sub_19B450488(v2);
}

unsigned int *sub_19B450488(unsigned int *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v2 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[24];
    if (v3 > 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = off_1E7533E98[v3];
    }

    v5 = a1[25];
    if (v5 > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_1E7533EB0[v5];
    }

    v7 = a1[26];
    if (v7 > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E7533F08[v7];
    }

    *buf = 136315650;
    v30 = v4;
    v31 = 2080;
    v32 = v6;
    v33 = 2080;
    v34 = v8;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Device Stationary?, %s, Orientation, %s, Proximity, %s", buf, 0x20u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v10 = a1[24];
    if (v10 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7533E98[v10];
    }

    v12 = a1[25];
    if (v12 > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E7533EB0[v12];
    }

    v14 = a1[26];
    if (v14 > 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = off_1E7533F08[v14];
    }

    v23 = 136315650;
    v24 = v11;
    v25 = 2080;
    v26 = v13;
    v27 = 2080;
    v28 = v15;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 2, "Device Stationary?, %s, Orientation, %s, Proximity, %s", &v23, 32);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::determineState()", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v18 = a1[25];
  if (a1[26] == 2)
  {
    if (v18 != 2 || a1[24] != 2)
    {
      v19 = "2 not (FaceDown and static)";
      v20 = a1;
      v21 = 4;
      return sub_19B4507C4(v20, v21, v19);
    }

    v19 = "1 prox corroborated";
  }

  else
  {
    if (v18 != 2)
    {
      v19 = "5 not FaceDown, prox uncovered";
      v20 = a1;
      v21 = 3;
      return sub_19B4507C4(v20, v21, v19);
    }

    if (a1[24] != 2)
    {
      v19 = "4 FaceDown only";
      v20 = a1;
      v21 = 1;
      return sub_19B4507C4(v20, v21, v19);
    }

    v19 = "3 no prox";
  }

  v20 = a1;
  v21 = 2;
  return sub_19B4507C4(v20, v21, v19);
}

unsigned int *sub_19B4507C4(unsigned int *result, int a2, char *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = result + 8;
  if (result[8] != a2)
  {
    v6 = result;
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v7 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v3;
      if (v8 > 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_1E7533EC8[v8];
      }

      v10 = off_1E7533E78[a2 - 1];
      *buf = 136315650;
      v54 = *&v9;
      v55 = 2080;
      v56 = v10;
      v57 = 2080;
      v58 = a3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Transition, From: %s, To: %s, %s", buf, 0x20u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v12 = *v3;
      if (v12 > 4)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_1E7533EC8[v12];
      }

      v14 = off_1E7533E78[a2 - 1];
      v43 = 136315650;
      v44 = *&v13;
      v45 = 2080;
      v46 = v14;
      v47 = 2080;
      v48 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 0, "Transition, From: %s, To: %s, %s", &v43, 32);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::transitionToState(CLPocketStateInternalType, const char *)", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    *v3 = a2;
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v17 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      v18 = mach_absolute_time();
      v19 = sub_19B41E070(v18);
      v20 = v6[24];
      if (v20 > 2)
      {
        v21 = 0;
      }

      else
      {
        v21 = off_1E7533E98[v20];
      }

      v22 = v6[25];
      if (v22 > 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = off_1E7533EB0[v22];
      }

      v24 = v6[26];
      if (v24 > 2)
      {
        v25 = 0;
      }

      else
      {
        v25 = off_1E7533F08[v24];
      }

      v26 = *v3;
      if (v26 > 4)
      {
        v27 = 0;
      }

      else
      {
        v27 = off_1E7533EC8[v26];
      }

      *buf = 134219010;
      v54 = v19;
      v55 = 2080;
      v56 = v21;
      v57 = 2080;
      v58 = v23;
      v59 = 2080;
      v60 = v25;
      v61 = 2080;
      v62 = v27;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "%f: Device Stationary?, %s, Orientation, %s, Proximity, %s, State, %s", buf, 0x34u);
    }

    v28 = sub_19B420058();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v29 = qword_1EAFE2868;
      v30 = mach_absolute_time();
      v31 = sub_19B41E070(v30);
      v32 = v6[24];
      if (v32 > 2)
      {
        v33 = 0;
      }

      else
      {
        v33 = off_1E7533E98[v32];
      }

      v34 = v6[25];
      if (v34 > 2)
      {
        v35 = 0;
      }

      else
      {
        v35 = off_1E7533EB0[v34];
      }

      v36 = v6[26];
      if (v36 > 2)
      {
        v37 = 0;
      }

      else
      {
        v37 = off_1E7533F08[v36];
      }

      v38 = *v3;
      if (v38 > 4)
      {
        v39 = 0;
      }

      else
      {
        v39 = off_1E7533EC8[v38];
      }

      v43 = 134219010;
      v44 = v31;
      v45 = 2080;
      v46 = v33;
      v47 = 2080;
      v48 = v35;
      v49 = 2080;
      v50 = v37;
      v51 = 2080;
      v52 = v39;
      LODWORD(v42) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v29, 0, "%f: Device Stationary?, %s, Orientation, %s, Proximity, %s, State, %s", COERCE_DOUBLE(&v43), v42);
      v41 = v40;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::transitionToState(CLPocketStateInternalType, const char *)", "CoreLocation: %s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    return sub_19B4455DC(v6, 0, v3, 4);
  }

  return result;
}

void sub_19B450CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  IOHIDEventGetVendorDefinedData();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E3B7E0);
  }

  v4 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Empty payload", buf, 2u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E3B7E0);
    }

    *__dst = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 17, "Empty payload", __dst, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLGestureService::onGestureServiceIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

uint64_t sub_19B451324(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_19B7BC918[(a1 - 1)];
  }
}

unsigned __int8 *sub_19B451364(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 <= 4)
  {
    if (*result > 2u)
    {
      if (v2 == 3)
      {
        return (*(*a2 + 32))(a2, result);
      }

      else if (v2 == 4)
      {
        return (*(*a2 + 40))(a2, result);
      }
    }

    else if (v2 == 1)
    {
      return (*(*a2 + 16))(a2, result);
    }

    else if (v2 == 2)
    {
      return (*(*a2 + 24))(a2, result);
    }
  }

  else if (*result <= 6u)
  {
    if (v2 == 5)
    {
      return (*(*a2 + 48))(a2, result);
    }

    else if (v2 == 6)
    {
      return (*(*a2 + 56))(a2, result);
    }
  }

  else
  {
    switch(v2)
    {
      case 7u:
        return (*(*a2 + 64))(a2, result);
      case 8u:
        return (*(*a2 + 72))(a2, result);
      case 9u:
        return (*(*a2 + 80))(a2, result);
    }
  }

  return result;
}

__n128 sub_19B45155C(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

void sub_19B4515A0(uint64_t a1, int a2, int a3, intptr_t notificationID)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3 > -536870145)
  {
    if (a3 == -536870144)
    {
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v22 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "received HasPoweredOn", buf, 2u);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
        }

        LOWORD(v27[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 1, "received HasPoweredOn", v27, 2);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::onSystemPowerChanged(io_service_t, uint32_t, void *)", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    else if (a3 == -536870112)
    {
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v10 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "received WillPowerOn", buf, 2u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
        }

        LOWORD(v27[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 1, "received WillPowerOn", v27, 2);
        v15 = v14;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::onSystemPowerChanged(io_service_t, uint32_t, void *)", "CoreLocation: %s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      *(a1 + 120) = 1;
      objc_msgSend_stopActivityUpdates(*(a1 + 56), v12, v13);
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      *buf = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = sub_19B451D98;
      v31 = &unk_1E7533E18;
      v32 = a1;
      objc_msgSend_startActivityUpdatesToQueue_withHandler_(v16, v18, v17, buf);
      if ((sub_19B421620() & 0x80) != 0)
      {
        if (*(a1 + 120) == 1 && !*(a1 + 100))
        {
          v26 = sub_19B420D84();
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = sub_19B45261C;
          v27[3] = &unk_1E75327D8;
          v27[4] = a1;
          sub_19B421668(v26, v27);
        }
      }

      else
      {
        v19 = sub_19B4484E8();
        sub_19B426A14(v19, 1, *(a1 + 40));
        v20 = sub_19B4484E8();
        sub_19B437CF0(v20, 1, *(a1 + 40), -1.0);
      }
    }
  }

  else if (a3 == -536870288)
  {
    v21 = *(a1 + 84);

    IOAllowPowerChange(v21, notificationID);
  }

  else if (a3 == -536870272)
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v6 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "received WillSleep", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      LOWORD(v27[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 1, "received WillSleep", v27, 2);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::onSystemPowerChanged(io_service_t, uint32_t, void *)", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(a1 + 120) = 0;
    IOAllowPowerChange(*(a1 + 84), notificationID);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }
}

uint64_t sub_19B451C30(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v8 = a3;
  result = sub_19B41DF08(a1, 0, &v8, 4);
  if (a3 == -536870272 || a3 == -536870288)
  {
    return IOAllowPowerChange(*(a1 + 44), a4);
  }

  return result;
}

void sub_19B451CC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B4526C0;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t sub_19B451D50(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 16);
  LOWORD(v4) = *(a2 + 1);
  return sub_19B4455DC(a1 - 32, 2, &v3, 16);
}

unsigned int *sub_19B451D98(uint64_t a1, void *a2, uint64_t a3)
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

id sub_19B451DE4(uint64_t a1)
{
  result = objc_loadWeak((a1 + 48));
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void sub_19B451E38(uint64_t a1, CLConnectionMessage **a2)
{
  v44 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (!Weak)
  {
    return;
  }

  v5 = Weak;
  if (!Weak[4])
  {
    return;
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v6, v10, v7, v8, v9, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11)) != 0)
  {
    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMMotionActivityData");
    if (v15)
    {
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      v18 = qword_1ED71C7A8;
      if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v43 = objc_msgSend_intValue(v15, v19, v20);
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "Error occurred while trying to retrieve motion state update: CMErrorDomain Code:%{public}d", buf, 8u);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
      {
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      v24 = qword_1ED71C7A8;
      v40 = 67240192;
      v41 = objc_msgSend_intValue(v15, v22, v23);
      LODWORD(v37) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v24, 0, "Error occurred while trying to retrieve motion state update: CMErrorDomain Code:%{public}d", &v40, v37);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionActivityManager init]_block_invoke", "CoreLocation: %s\n", v25);
      if (v26 == buf)
      {
        return;
      }

LABEL_29:
      free(v26);
      return;
    }

    v30 = v17;
    if (v17)
    {
      v32 = v5[4];
      v31 = v5[5];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_19B451DE4;
      v38[3] = &unk_1E7532C30;
      objc_copyWeak(&v39, (a1 + 32));
      v38[4] = v30;
      v38[5] = v32;
      objc_msgSend_addOperationWithBlock_(v31, v33, v38);
      objc_destroyWeak(&v39);
      return;
    }

    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
    }

    v34 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageMotionActivityUpdate message!", buf, 2u);
    }

    v35 = sub_19B420058();
    if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      LOWORD(v40) = 0;
      LODWORD(v37) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7A8, 17, "Unable to parse kCLConnectionMessageMotionActivityUpdate message!", &v40, v37);
      v26 = v36;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionActivityManager init]_block_invoke", "CoreLocation: %s\n", v36);
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
    }

    v27 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v43 = 103;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "Error occurred while trying to retrieve motion state update: CMErrorDomain Code:%{public}d", buf, 8u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      v40 = 67240192;
      v41 = 103;
      LODWORD(v37) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7A8, 16, "Error occurred while trying to retrieve motion state update: CMErrorDomain Code:%{public}d", &v40, v37);
      v26 = v29;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionActivityManager init]_block_invoke", "CoreLocation: %s\n", v29);
LABEL_28:
      if (v26 == buf)
      {
        return;
      }

      goto LABEL_29;
    }
  }
}

unsigned int *sub_19B4523EC(unsigned int *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v4 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[25];
    *buf = 67240448;
    v16 = a2;
    v17 = 1026;
    v18 = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "New orientation,%{public}d,Prev orientation,%{public}d", buf, 0xEu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v7 = a1[25];
    v12[0] = 67240448;
    v12[1] = a2;
    v13 = 1026;
    v14 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2868, 2, "New orientation,%{public}d,Prev orientation,%{public}d", v12, 14);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::feedDeviceOrientationData(const CLOrientationNotifier::Sample *)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (a2 == 6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  a1[25] = v10;
  return sub_19B450488(a1);
}

unsigned int *sub_19B4525F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 120) == 1 && !result[25])
  {
    return sub_19B4523EC(result, *(a1 + 48));
  }

  return result;
}

void sub_19B45261C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) == 1 && !*(v1 + 100))
  {
    v2 = sub_19B4484E8();
    v3 = sub_19B448530(v2, 0);
    v4 = *(v1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B4525F4;
    block[3] = &unk_1E7533E58;
    block[4] = v1;
    block[5] = v3;
    block[6] = v5;
    dispatch_async(v4, block);
  }
}

void sub_19B4526C0(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 32))
  {
    v2 = @"kCLConnectionMessageSubscribeKey";
    v3[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
    sub_19B45280C();
  }
}

void sub_19B4527D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B452880(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B4528D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B4528F4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B452880((a1 + 3), a2, a3);
  return a1;
}

void sub_19B4529B4(NSObject *a1)
{
  v107 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v3 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "openHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      LOWORD(v95) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "openHidDriverInterface should be called from motion thread", &v95, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v7 = sub_19B420D84();
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = sub_19B7293E8;
    v94[3] = &unk_1E75327D8;
    v94[4] = a1;
    sub_19B420C9C(v7, v94);
    return;
  }

  isa = a1[44].isa;
  if (!isa)
  {
    return;
  }

  theInterface = 0;
  valuePtr = 0;
  v91 = 0;
  v9 = sub_19B43EE18(isa);
  if (v9)
  {
    v10 = v9;
    RegistryID = IOHIDServiceClientGetRegistryID(v9);
    CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
    HIDWORD(parent) = 0;
    v12 = *MEMORY[0x1E696CD60];
    v13 = IORegistryEntryIDMatching(valuePtr);
    MatchingService = IOServiceGetMatchingService(v12, v13);
    if (MatchingService)
    {
      v15 = MatchingService;
      HIDWORD(v89) = 0;
      LODWORD(parent) = 0;
      ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
      if (ParentEntry)
      {
        v17 = ParentEntry;
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v18 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
        {
          v19 = mach_error_string(v17);
          *buf = 67240450;
          *v102 = v17;
          *&v102[4] = 2082;
          *&v102[6] = v19;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Unable to get parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        v20 = sub_19B420058();
        if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v21 = off_1ED71C7C0;
          v22 = mach_error_string(v17);
          v95 = 67240450;
          *v96 = v17;
          *&v96[4] = 2082;
          *&v96[6] = v22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v21, 17, "Unable to get parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", &v95, 18);
          v24 = v23;
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        v25 = v15;
LABEL_68:
        IOObjectRelease(v25);
        return;
      }

      IOObjectRelease(v15);
      v35 = IORegistryEntryGetParentEntry(parent, "IOService", &v89 + 1);
      if (v35)
      {
        v36 = v35;
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v37 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
        {
          v38 = mach_error_string(v36);
          *buf = 67240450;
          *v102 = v36;
          *&v102[4] = 2082;
          *&v102[6] = v38;
          _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_FAULT, "Unable to get grand parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        v39 = sub_19B420058();
        if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v40 = off_1ED71C7C0;
          v41 = mach_error_string(v36);
          v95 = 67240450;
          *v96 = v36;
          *&v96[4] = 2082;
          *&v96[6] = v41;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v40, 17, "Unable to get grand parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", &v95, 18);
          v43 = v42;
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v42);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v25 = parent;
        goto LABEL_68;
      }

      IOObjectRelease(parent);
      v44 = HIDWORD(v89);
      v45 = *MEMORY[0x1E695E4A8];
      v46 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x7Au, 0xCFu, 0x53u, 0x32u, 0x1Au, 0x35u, 0x48u, 0x93u, 0x87u, 0xCBu, 0xBAu, 0x64u, 0xE1u, 0x88u, 0x7Fu, 0xAEu);
      v47 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v48 = IOCreatePlugInInterfaceForService(v44, v46, v47, &theInterface, &parent + 1);
      if (!v48)
      {
        v55 = theInterface;
        QueryInterface = (*theInterface)->QueryInterface;
        v57 = CFUUIDGetConstantUUIDWithBytes(v45, 1u, 0x64u, 0x69u, 0xD8u, 0x77u, 0x3Bu, 0x46u, 0xACu, 0x90u, 0x9Eu, 0xF9u, 0xCu, 0x4Au, 0x6Eu, 0x75u, 0x77u);
        v58 = CFUUIDGetUUIDBytes(v57);
        v59 = (QueryInterface)(v55, *&v58.byte0, *&v58.byte8, &v91);
        if (v59)
        {
          v60 = v59;
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v61 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
          {
            v62 = mach_error_string(v60);
            *buf = 67240706;
            *v102 = v60;
            *&v102[4] = 2082;
            *&v102[6] = v62;
            *&v102[14] = 2114;
            *&v102[16] = v10;
            _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_FAULT, "Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
          }

          v63 = sub_19B420058();
          if ((*(v63 + 160) & 0x80000000) == 0 || (*(v63 + 164) & 0x80000000) == 0 || (*(v63 + 168) & 0x80000000) == 0 || *(v63 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
            }

            v64 = off_1ED71C7C0;
            v65 = mach_error_string(v60);
            v95 = 67240706;
            *v96 = v60;
            *&v96[4] = 2082;
            *&v96[6] = v65;
            *&v96[14] = 2114;
            *&v96[16] = v10;
            LODWORD(byte15a) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v64, 17, "Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", &v95, byte15a);
            v67 = v66;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v66);
            if (v67 != buf)
            {
              free(v67);
            }
          }
        }

        else
        {
          v68 = (*(*v91 + 64))(v91, 0);
          if (!v68)
          {
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
            }

            v77 = off_1ED71C7C0;
            if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
            {
              v78 = a1[47].isa;
              v79 = a1[48].isa;
              *buf = 134219008;
              *v102 = valuePtr;
              *&v102[8] = 2048;
              *&v102[10] = v78;
              *&v102[18] = 2048;
              *&v102[20] = v79;
              v103 = 2048;
              v104 = theInterface;
              v105 = 2048;
              v106 = v91;
              _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEFAULT, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
            }

            v80 = sub_19B420058();
            if (*(v80 + 160) > 1 || *(v80 + 164) > 1 || *(v80 + 168) > 1 || *(v80 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7B0 != -1)
              {
                dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
              }

              v81 = a1[47].isa;
              v82 = a1[48].isa;
              v95 = 134219008;
              *v96 = valuePtr;
              *&v96[8] = 2048;
              *&v96[10] = v81;
              *&v96[18] = 2048;
              *&v96[20] = v82;
              v97 = 2048;
              v98 = theInterface;
              v99 = 2048;
              v100 = v91;
              LODWORD(byte15a) = 52;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", &v95, byte15a, v89, parent, v91);
              v84 = v83;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v83);
              if (v84 != buf)
              {
                free(v84);
              }
            }

            v85 = theInterface;
            *(a1[44].isa + 1) = valuePtr;
            v86 = v91;
            a1[47].isa = v85;
            a1[48].isa = v86;
            sub_19B453A10(a1);
            return;
          }

          v69 = v68;
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v70 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
          {
            v71 = mach_error_string(v69);
            *buf = 67240706;
            *v102 = v69;
            *&v102[4] = 2082;
            *&v102[6] = v71;
            *&v102[14] = 2114;
            *&v102[16] = v10;
            _os_log_impl(&dword_19B41C000, v70, OS_LOG_TYPE_FAULT, "Unable to open hid device interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
          }

          v72 = sub_19B420058();
          if ((*(v72 + 160) & 0x80000000) == 0 || (*(v72 + 164) & 0x80000000) == 0 || (*(v72 + 168) & 0x80000000) == 0 || *(v72 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
            }

            v73 = off_1ED71C7C0;
            v74 = mach_error_string(v69);
            v95 = 67240706;
            *v96 = v69;
            *&v96[4] = 2082;
            *&v96[6] = v74;
            *&v96[14] = 2114;
            *&v96[16] = v10;
            LODWORD(byte15a) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v73, 17, "Unable to open hid device interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", &v95, byte15a);
            v76 = v75;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v75);
            if (v76 != buf)
            {
              free(v76);
            }
          }

          if (v91)
          {
            (*(*v91 + 72))(v91, 0);
          }
        }

        if (theInterface)
        {
          ((*theInterface)->Release)(theInterface);
          IODestroyPlugInInterface(theInterface);
        }

        return;
      }

      v49 = v48;
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v50 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
      {
        v51 = mach_error_string(v49);
        *buf = 67240706;
        *v102 = v49;
        *&v102[4] = 2082;
        *&v102[6] = v51;
        *&v102[14] = 2114;
        *&v102[16] = v10;
        _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_FAULT, "Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
      }

      v52 = sub_19B420058();
      if ((*(v52 + 160) & 0x80000000) == 0 || (*(v52 + 164) & 0x80000000) == 0 || (*(v52 + 168) & 0x80000000) == 0 || *(v52 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v53 = off_1ED71C7C0;
        v54 = mach_error_string(v49);
        v95 = 67240706;
        *v96 = v49;
        *&v96[4] = 2082;
        *&v96[6] = v54;
        *&v96[14] = 2114;
        *&v96[16] = v10;
        LODWORD(byte15) = 28;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v53, 17, "Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", &v95, byte15);
LABEL_52:
        v30 = v33;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v34);
LABEL_53:
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }

    else
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v31 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "AOP service doesn't exist", buf, 2u);
      }

      v32 = sub_19B420058();
      if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        LOWORD(v95) = 0;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "AOP service doesn't exist", &v95, 2);
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v26 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "IoHidDevice is not ready!", buf, 2u);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      LOWORD(v95) = 0;
      v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 1, "IoHidDevice is not ready!", &v95, 2);
      v30 = v29;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v28);
      goto LABEL_53;
    }
  }
}

void sub_19B453A10(NSObject *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    v22[0] = 4;
    LODWORD(v3) = LOBYTE(a1[4].isa);
    v22[1] = a1[4].isa;
    LODWORD(v4) = BYTE2(a1[4].isa);
    v22[2] = BYTE2(a1[4].isa);
    if (qword_1ED71C7B0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v18 = off_1ED71C7C0;
    v3 = "sE";
    v4 = "";
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v27 = 0;
      *&v27[4] = 2082;
      *&v27[6] = "";
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:sendConfiguration should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }
    }

    v19 = off_1ED71C7C0;
    if (os_signpost_enabled(off_1ED71C7C0))
    {
      *buf = 68289539;
      *v27 = 0;
      *&v27[4] = 2082;
      *&v27[6] = "";
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "sendConfiguration should be running on motion thread", "{msg%{public}.0s:sendConfiguration should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }
    }

    a1 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v27 = 0;
      *&v27[4] = 2082;
      *&v27[6] = "";
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:sendConfiguration should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Motion/Orientation/CLOrientationNotifier.mm", 873, "sendConfiguration");
  }

  dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
LABEL_3:
  v5 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    *v27 = v3;
    *&v27[4] = 1026;
    *&v27[6] = v4;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Sending config,formFactor,%{public}d,handleCover,%{public}d", buf, 0xEu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v23 = 67240448;
    *v24 = v3;
    *&v24[4] = 1026;
    *&v24[6] = v4;
    LODWORD(v20) = 14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 1, "Sending config,formFactor,%{public}d,handleCover,%{public}d", &v23, v20);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::sendConfiguration()", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v21 = 3;
  v9 = (*(*a1[48].isa + 160))(a1[48].isa, 32, v22, 3, v22, &v21);
  if (v9)
  {
    v10 = v9;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v11 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      v12 = mach_error_string(v10);
      *buf = 136446466;
      *v27 = v12;
      *&v27[8] = 1026;
      *&v27[10] = v10;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "SendCommand(Config) = %{public}s (0x%{public}x)", buf, 0x12u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v14 = off_1ED71C7C0;
      v15 = mach_error_string(v10);
      v23 = 136446466;
      *v24 = v15;
      *&v24[8] = 1026;
      v25 = v10;
      LODWORD(v20) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v14, 17, "SendCommand(Config) = %{public}s (0x%{public}x)", &v23, v20);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::sendConfiguration()", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

void sub_19B453FCC(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E696CD60];
  *(v1 + 32) = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(v1 + 40) = IONotificationPortCreate(v2);
  *(v1 + 48) = IONotificationPortCreate(v2);
  v3 = IONotificationPortCreate(v2);
  *(v1 + 56) = v3;
  v4 = *(v1 + 32);
  if (v4 && *(v1 + 40) && (*(v1 + 48) ? (v5 = v3 == 0) : (v5 = 1), !v5))
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v4);
    v11 = IONotificationPortGetRunLoopSource(*(v1 + 40));
    v12 = IONotificationPortGetRunLoopSource(*(v1 + 48));
    v13 = IONotificationPortGetRunLoopSource(*(v1 + 56));
    if (RunLoopSource)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || v12 == 0 || v13 == 0)
    {
      if (qword_1ED71CAC8 != -1)
      {
        dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
      }

      v17 = qword_1ED71CAC0;

      sub_19B44A714(v17);
    }

    else
    {
      v18 = v13;
      sub_19B420D84();
      v19 = *MEMORY[0x1E695E8E0];
      CFRunLoopAddSource(*qword_1ED71C908, RunLoopSource, *MEMORY[0x1E695E8E0]);
      sub_19B420D84();
      CFRunLoopAddSource(*qword_1ED71C908, v11, v19);
      sub_19B420D84();
      CFRunLoopAddSource(*qword_1ED71C908, v12, v19);
      sub_19B420D84();
      CFRunLoopAddSource(*qword_1ED71C908, v18, v19);
      v20 = *(v1 + 32);
      v21 = IOServiceMatching("AppleHIDKeyboardEventDriverV2");
      v22 = IOServiceAddMatchingNotification(v20, "IOServiceFirstMatch", v21, sub_19B4545F8, v1, (v1 + 64));
      v23 = *(v1 + 40);
      v24 = IOServiceMatching("AppleHIDKeyboardEventDriverV2");
      v25 = IOServiceAddMatchingNotification(v23, "IOServiceTerminate", v24, sub_19B4545F8, v1, (v1 + 68));
      v26 = *(v1 + 48);
      v27 = IOServiceMatching("IOAccessoryIDBusHIDDevice");
      v28 = IOServiceAddMatchingNotification(v26, "IOServiceFirstMatch", v27, sub_19B4545F8, v1, (v1 + 72));
      v29 = *(v1 + 56);
      v30 = IOServiceMatching("IOAccessoryIDBusHIDDevice");
      v31 = IOServiceAddMatchingNotification(v29, "IOServiceTerminate", v30, sub_19B4545F8, v1, (v1 + 76));
      if (v22 || v25 || v28 || v31)
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
        }

        v33 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "#Warning Failed to register for keyboard updates. Could not register for notifications from  AppleHIDKeyboardEventDriverV2 service and IOAccessoryIDBusHIDDevice service (for kIOFirstMatchNotification and kIOTerminatedNotification).", buf, 2u);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
          }

          v37[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "#Warning Failed to register for keyboard updates. Could not register for notifications from  AppleHIDKeyboardEventDriverV2 service and IOAccessoryIDBusHIDDevice service (for kIOFirstMatchNotification and kIOTerminatedNotification).", v37, 2);
          v36 = v35;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::registerForKeyboardUpdates()_block_invoke", "CoreLocation: %s\n", v35);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        if (qword_1ED71CAC8 != -1)
        {
          dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
        }

        sub_19B44A714(qword_1ED71CAC0);
      }

      else
      {
        sub_19B4545F8(v1, *(v1 + 64));
        sub_19B4545F8(v1, *(v1 + 68));
        sub_19B4545F8(v1, *(v1 + 72));
        v32 = *(v1 + 76);

        sub_19B4545F8(v1, v32);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Failed to register for keyboard updates. Could not create KeyboardConnectNotificationPort and KeyboardConnectNotificationPort", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
      }

      v37[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "#Warning Failed to register for keyboard updates. Could not create KeyboardConnectNotificationPort and KeyboardConnectNotificationPort", v37, 2);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::registerForKeyboardUpdates()_block_invoke", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

uint64_t sub_19B4545F8(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = sub_19B6176FC("AppleHIDKeyboardEventDriverV2");
      v7 = sub_19B6176FC("IOAccessoryIDBusHIDDevice");
      v8 = v6 || v7;
      if (*(a1 + 81) != (v6 || v7))
      {
        *(a1 + 81) = v6 || v7;
        sub_19B4455DC(a1, 0, &v8, 1);
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

BOOL sub_19B454944(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 2.22507386e-308)
  {
    AnalyticsSendEventLazy();
  }

  return v1 != 2.22507386e-308;
}

uint64_t sub_19B4549E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v7[0] = @"bundleId";
  v7[1] = @"duration";
  v8[0] = v4;
  v8[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(v3 + 16) - *(v3 + 8));
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v8, v7, 2);
}

void CLClientGetDistanceCoordinates(double a1, double a2, double a3, double a4)
{
  if ((atomic_load_explicit(&qword_1ED71D200, memory_order_acquire) & 1) == 0)
  {
    v8 = a4;
    v9 = a2;
    v6 = a3;
    v7 = a1;
    v5 = __cxa_guard_acquire(&qword_1ED71D200);
    a3 = v6;
    a1 = v7;
    a4 = v8;
    a2 = v9;
    if (v5)
    {
      qword_1ED71D220 = 0;
      unk_1ED71D228 = 0;
      xmmword_1ED71D210 = xmmword_19B7B7DA0;
      qword_1ED71D230 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1ED71D200);
      a3 = v6;
      a1 = v7;
      a4 = v8;
      a2 = v9;
    }
  }

  sub_19B428714(&xmmword_1ED71D210, a1, a2, a3, a4, 0.0);
}

uint64_t sub_19B454DBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_19B458984(SEL *a1)
{
  result = [v1 *a1];
  v3 = result;
  if (result)
  {
    [result doubleValue];
    v5 = v4;

    return v5;
  }

  return result;
}

uint64_t sub_19B4589E8()
{
  v0 = sub_19B7A38A0();
  sub_19B45B4C0(v0, qword_1EAFE3638);
  sub_19B45A9B8(v0, qword_1EAFE3638);
  return sub_19B7A3890();
}

uint64_t sub_19B458A6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CMBatchedSensorManager.AccelerometerUpdates.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_19B458A6C(&qword_1EAFE28A0, &qword_19B7B2B70);
  *v1 = v0;
  v1[1] = sub_19B458B64;

  return MEMORY[0x1EEE6DB98](v0 + 16, v2);
}

uint64_t sub_19B458B64()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_19B45B7C8;
  }

  else
  {
    v2 = sub_19B45B7D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19B458C78(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = sub_19B458A6C(&qword_1EAFE28A0, &qword_19B7B2B70);
  *v2 = v1;
  v2[1] = sub_19B458D2C;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t sub_19B458D2C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_19B45B7CC;
  }

  else
  {
    v2 = sub_19B45B7DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19B458E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_19B458EF8;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_19B458EF8()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_19B7A38E0();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_19B45B7D4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_19B7A38E0();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_19B45B7E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t CMBatchedSensorManager.AccelerometerUpdates.makeAsyncIterator()()
{
  sub_19B458A6C(&qword_1EAFE28A8, &qword_19B7B2B80);

  return sub_19B7A3930();
}

uint64_t CMBatchedSensorManager.accelerometerUpdates()()
{
  v1 = sub_19B458A6C(&qword_1EAFE28B0, &qword_19B7B2B88);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3, v4);
  v6 = &v8[-v5];
  v9 = v0;
  sub_19B458A6C(&qword_1EAFE28B8, &qword_19B7B2B90);
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8790], v1);
  return sub_19B7A3950();
}

void sub_19B45921C(uint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2940, &qword_19B7B2D78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7);
  v9 = aBlock - v8;
  *(swift_allocObject() + 16) = a2;
  v10 = a2;
  sub_19B7A3900();
  if (qword_1EAFE3630 != -1)
  {
    swift_once();
  }

  v11 = sub_19B7A38A0();
  sub_19B45A9B8(v11, qword_1EAFE3638);
  v12 = sub_19B7A3880();
  v13 = sub_19B7A3980();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_19B41C000, v12, v13, "[framework-accel-async] starting updates", v14, 2u);
    MEMORY[0x19EAE8940](v14, -1, -1);
  }

  (*(v5 + 16))(v9, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v9, v4);
  aBlock[4] = sub_19B45B6BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19B459864;
  aBlock[3] = &unk_1F0E38328;
  v17 = _Block_copy(aBlock);

  [v10 startAccelerometerUpdatesWithHandler_];
  _Block_release(v17);
}

uint64_t sub_19B4594D8(unint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2950, &qword_19B7B2D80);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4, v6, v7);
  v10 = &v27 - v9;
  if (a1)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v11 = sub_19B7A38A0();
    sub_19B45A9B8(v11, qword_1EAFE3638);
    v12 = sub_19B7A3960();

    v13 = sub_19B7A3880();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (a1 >> 62)
      {
        v15 = sub_19B7A39B0();
      }

      else
      {
        v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v15;

      _os_log_impl(&dword_19B41C000, v13, v12, "[framework-accel-async] yielding new update %ld", v14, 0xCu);
      MEMORY[0x19EAE8940](v14, -1, -1);
    }

    else
    {
    }

    v28 = a1;

    sub_19B458A6C(&qword_1EAFE2940, &qword_19B7B2D78);
    sub_19B7A3910();
    return (*(v5 + 8))(v10, v4);
  }

  else if (a2)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v16 = sub_19B7A38A0();
    sub_19B45A9B8(v16, qword_1EAFE3638);
    v17 = sub_19B7A3970();
    v18 = a2;
    v19 = sub_19B7A3880();

    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = a2;
      v28 = v21;
      *v20 = 136315138;
      v22 = a2;
      sub_19B458A6C(&qword_1EAFE2930, &qword_19B7B2D68);
      v23 = sub_19B7A38B0();
      v25 = sub_19B45AE6C(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_19B41C000, v19, v17, "[framework-accel-async] terminating with error %s", v20, 0xCu);
      sub_19B45AF38(v21);
      MEMORY[0x19EAE8940](v21, -1, -1);
      MEMORY[0x19EAE8940](v20, -1, -1);
    }

    v28 = a2;
    v26 = a2;
    sub_19B458A6C(&qword_1EAFE2940, &qword_19B7B2D78);
    return sub_19B7A3920();
  }

  return result;
}

uint64_t CMBatchedSensorManager.DeviceMotionUpdates.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_19B458A6C(&qword_1EAFE28C0, &qword_19B7B2B98);
  *v1 = v0;
  v1[1] = sub_19B459928;

  return MEMORY[0x1EEE6DB98](v0 + 16, v2);
}

uint64_t sub_19B459928()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_19B459A58;
  }

  else
  {
    v2 = sub_19B459A3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19B459A70(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = sub_19B458A6C(&qword_1EAFE28C0, &qword_19B7B2B98);
  *v2 = v1;
  v2[1] = sub_19B459B24;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t sub_19B459B24()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_19B459C58;
  }

  else
  {
    v2 = sub_19B459C38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19B459C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_19B459D28;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_19B459D28()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_19B7A38E0();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_19B459EDC;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_19B7A38E0();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_19B459EB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_19B459EDC()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  sub_19B458A6C(&qword_1EAFE28F8, &qword_19B7B2D28);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t CMBatchedSensorManager.DeviceMotionUpdates.makeAsyncIterator()()
{
  sub_19B458A6C(&qword_1EAFE28C8, &qword_19B7B2BA8);

  return sub_19B7A3930();
}

uint64_t sub_19B459FEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_19B458A6C(a3, a4);
  sub_19B7A3930();
  return sub_19B45A944(v5, a5);
}

uint64_t CMBatchedSensorManager.deviceMotionUpdates()()
{
  v1 = sub_19B458A6C(&qword_1EAFE28D0, &qword_19B7B2BB0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3, v4);
  v6 = &v8[-v5];
  v9 = v0;
  sub_19B458A6C(&qword_1EAFE28D8, qword_19B7B2BB8);
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8790], v1);
  return sub_19B7A3950();
}

void sub_19B45A15C(uint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2918, &qword_19B7B2D58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7);
  v9 = aBlock - v8;
  *(swift_allocObject() + 16) = a2;
  v10 = a2;
  sub_19B7A3900();
  if (qword_1EAFE3630 != -1)
  {
    swift_once();
  }

  v11 = sub_19B7A38A0();
  sub_19B45A9B8(v11, qword_1EAFE3638);
  v12 = sub_19B7A3880();
  v13 = sub_19B7A3980();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_19B41C000, v12, v13, "[framework-dm-async] starting updates", v14, 2u);
    MEMORY[0x19EAE8940](v14, -1, -1);
  }

  (*(v5 + 16))(v9, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v9, v4);
  aBlock[4] = sub_19B45AD7C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19B45ADA4;
  aBlock[3] = &unk_1F0E382B0;
  v17 = _Block_copy(aBlock);

  [v10 startDeviceMotionUpdatesWithHandler_];
  _Block_release(v17);
}

uint64_t sub_19B45A4D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19B45A5B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_19B45A654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void))
{
  sub_19B45A8BC(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_19B45A718(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19B45A794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_19B458A6C(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_19B45A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_19B458A6C(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_19B45A8BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_19B45A5B4(a3, a4);
    v9 = sub_19B45A5B4(&qword_1EAFE28F8, &qword_19B7B2D28);
    v10 = a5(a1, v8, v9, MEMORY[0x1E69E7288]);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_19B45A944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19B45A9B8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19B45A9F0(unint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2928, &qword_19B7B2D60);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4, v6, v7);
  v10 = &v27 - v9;
  if (a1)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v11 = sub_19B7A38A0();
    sub_19B45A9B8(v11, qword_1EAFE3638);
    v12 = sub_19B7A3960();

    v13 = sub_19B7A3880();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (a1 >> 62)
      {
        v15 = sub_19B7A39B0();
      }

      else
      {
        v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v15;

      _os_log_impl(&dword_19B41C000, v13, v12, "[framework-dm-async] yielding new update %ld", v14, 0xCu);
      MEMORY[0x19EAE8940](v14, -1, -1);
    }

    else
    {
    }

    v28 = a1;

    sub_19B458A6C(&qword_1EAFE2918, &qword_19B7B2D58);
    sub_19B7A3910();
    return (*(v5 + 8))(v10, v4);
  }

  else if (a2)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v16 = sub_19B7A38A0();
    sub_19B45A9B8(v16, qword_1EAFE3638);
    v17 = sub_19B7A3970();
    v18 = a2;
    v19 = sub_19B7A3880();

    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = a2;
      v28 = v21;
      *v20 = 136315138;
      v22 = a2;
      sub_19B458A6C(&qword_1EAFE2930, &qword_19B7B2D68);
      v23 = sub_19B7A38B0();
      v25 = sub_19B45AE6C(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_19B41C000, v19, v17, "[framework-dm-async] terminating with error %s", v20, 0xCu);
      sub_19B45AF38(v21);
      MEMORY[0x19EAE8940](v21, -1, -1);
      MEMORY[0x19EAE8940](v20, -1, -1);
    }

    v28 = a2;
    v26 = a2;
    sub_19B458A6C(&qword_1EAFE2918, &qword_19B7B2D58);
    return sub_19B7A3920();
  }

  return result;
}

uint64_t sub_19B45ADB8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_19B45B77C(0, a4, a5);
    v6 = sub_19B7A38D0();
  }

  v8 = a3;
  v7(v6, a3);
}

uint64_t sub_19B45AE54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19B45AE6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19B45AF84(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_19B45B090(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_19B45AF38(v11);
  return v7;
}

uint64_t sub_19B45AF38(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_19B45AF84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19B45B0EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_19B7A39A0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_19B45B090(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_19B45B0EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_19B45B138(a1, a2);
  sub_19B45B268(&unk_1F0E38238);
  return v3;
}

void *sub_19B45B138(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19B45B354(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19B7A39A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19B7A38C0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19B45B354(v10, 0);
        result = sub_19B7A3990();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_19B45B268(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_19B45B3C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_19B45B354(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_19B458A6C(&qword_1EAFE2938, &qword_19B7B2D70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19B45B3C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_19B458A6C(&qword_1EAFE2938, &qword_19B7B2D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *sub_19B45B4C0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_19B45B538(uint64_t a1, const char *a2, const char **a3)
{
  v6 = *(v3 + 16);
  if (qword_1EAFE3630 != -1)
  {
    swift_once();
  }

  v7 = sub_19B7A38A0();
  sub_19B45A9B8(v7, qword_1EAFE3638);
  v8 = sub_19B7A3880();
  v9 = sub_19B7A3980();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19B41C000, v8, v9, a2, v10, 2u);
    MEMORY[0x19EAE8940](v10, -1, -1);
  }

  v11 = *a3;

  return [v6 v11];
}

uint64_t sub_19B45B638(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_19B458A6C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_19B45B6E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_19B458A6C(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_19B45B77C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19B45B7E4(uint64_t result)
{
  *result = 2147450879;
  *(result + 4) = 0x7FFF;
  *(result + 6) = 2147450879;
  *(result + 10) = 0x7FFF;
  *(result + 12) = 2147450879;
  *(result + 16) = 0x7FFF;
  *(result + 18) = 2147450879;
  *(result + 22) = 0x7FFF;
  *(result + 28) = 0x7FFF;
  *(result + 24) = 2147450879;
  *(result + 34) = 0x7FFF;
  *(result + 30) = 2147450879;
  *(result + 40) = 0x7FFF;
  *(result + 36) = 2147450879;
  *(result + 46) = 0x7FFF;
  *(result + 42) = 2147450879;
  *(result + 52) = 0x7FFF;
  *(result + 48) = 2147450879;
  *(result + 58) = 0x7FFF;
  *(result + 54) = 2147450879;
  *(result + 64) = 0x7FFF;
  *(result + 60) = 2147450879;
  *(result + 70) = 0x7FFF;
  *(result + 66) = 2147450879;
  *(result + 76) = 0x7FFF;
  *(result + 72) = 2147450879;
  *(result + 82) = 0x7FFF;
  *(result + 78) = 2147450879;
  *(result + 88) = 0x7FFF;
  *(result + 84) = 2147450879;
  *(result + 94) = 0x7FFF;
  *(result + 90) = 2147450879;
  *(result + 100) = 0x7FFF;
  *(result + 96) = 2147450879;
  *(result + 106) = 0x7FFF;
  *(result + 102) = 2147450879;
  *(result + 112) = 0x7FFF;
  *(result + 108) = 2147450879;
  *(result + 118) = 0x7FFF;
  *(result + 114) = 2147450879;
  *(result + 124) = 0x7FFF;
  *(result + 120) = 2147450879;
  *(result + 130) = 0x7FFF;
  *(result + 126) = 2147450879;
  *(result + 136) = 0x7FFF;
  *(result + 132) = 2147450879;
  *(result + 142) = 0x7FFF;
  *(result + 138) = 2147450879;
  *(result + 148) = 0x7FFF;
  *(result + 144) = 2147450879;
  *(result + 154) = 0x7FFF;
  *(result + 150) = 2147450879;
  *(result + 160) = 0x7FFF;
  *(result + 156) = 2147450879;
  *(result + 166) = 0x7FFF;
  *(result + 162) = 2147450879;
  *(result + 172) = 0x7FFF;
  *(result + 168) = 2147450879;
  *(result + 178) = 0x7FFF;
  *(result + 174) = 2147450879;
  *(result + 184) = 0x7FFF;
  *(result + 180) = 2147450879;
  *(result + 190) = 0x7FFF;
  *(result + 186) = 2147450879;
  return result;
}

uint64_t sub_19B45B8F8(__int16 a1, __int16 a2, __int16 a3, uint64_t a4, _WORD *a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  *a5 = 1;
  sub_19B45DD90(v6, 32, 1, a4);
  return 1;
}

uint64_t sub_19B45B93C(int a1, int a2)
{
  v2 = 2 * a1;
  v3 = v2 >= a2;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 2 * (v2 - v4);
  v6 = v5 >= a2;
  if (v5 < a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = 2 * (v5 - v7);
  if (v8 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (4 * v6) | (8 * v3) | (2 * (v8 >= a2));
  v11 = 2 * (v8 - v9);
  if (v11 < a2)
  {
    v12 = 0;
  }

  else
  {
    ++v10;
    v12 = a2;
  }

  v13 = 2 * (v11 - v12);
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = (2 * (v13 >= a2)) | (4 * v10);
  v16 = 2 * (v13 - v14);
  if (v16 < a2)
  {
    v17 = 0;
  }

  else
  {
    ++v15;
    v17 = a2;
  }

  v18 = 2 * (v16 - v17);
  if (v18 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0;
  }

  v20 = (2 * (v18 >= a2)) | (4 * v15);
  v21 = 2 * (v18 - v19);
  if (v21 < a2)
  {
    v22 = 0;
  }

  else
  {
    ++v20;
    v22 = a2;
  }

  v23 = 2 * (v21 - v22);
  if (v23 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  v25 = (2 * (v23 >= a2)) | (4 * v20);
  v26 = 2 * (v23 - v24);
  if (v26 < a2)
  {
    v27 = 0;
  }

  else
  {
    ++v25;
    v27 = a2;
  }

  v28 = 2 * (v26 - v27);
  if (v28 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v29 = 0;
  }

  v30 = (2 * (v28 >= a2)) | (4 * v25);
  v31 = 2 * (v28 - v29);
  if (v31 < a2)
  {
    v32 = 0;
  }

  else
  {
    ++v30;
    v32 = a2;
  }

  v33 = 2 * (v31 - v32);
  if (v33 >= a2)
  {
    v34 = a2;
  }

  else
  {
    v34 = 0;
  }

  v35 = (2 * (v33 >= a2)) | (4 * v30);
  v36 = 2 * (v33 - v34);
  if (v36 < a2)
  {
    v37 = 0;
  }

  else
  {
    ++v35;
    v37 = a2;
  }

  return ((a2 <= 2 * (v36 - v37)) | (2 * v35));
}

uint64_t sub_19B45BAA0(unint64_t a1)
{
  if (a1 < 1)
  {
    if (a1)
    {
      return 0;
    }

    else
    {
      return 31;
    }
  }

  else
  {
    v1 = a1 >> 30;
    if (a1 >> 30)
    {
      return 0;
    }

    else
    {
      do
      {
        v2 = a1 >> 29;
        a1 *= 2;
        LOWORD(v1) = v1 + 1;
      }

      while (!v2);
      return v1;
    }
  }
}

uint64_t sub_19B45BAE4(int a1)
{
  if (a1 >= 0)
  {
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (a1 == -32768)
  {
    LOWORD(v1) = 0x7FFF;
  }

  return v1;
}

uint64_t sub_19B45BB00(uint64_t a1, unsigned int a2, __int16 *a3, _WORD *a4)
{
  *&v87[190] = *MEMORY[0x1E69E9840];
  if (a2 > 32)
  {
    return 0;
  }

  v6 = sub_19B45B93C(1, a2);
  if (a2 < 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_34;
  }

  v7 = v6;
  v8 = a2;
  if (a2 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_9:
    v31 = (a1 + 6 * v9 + 4);
    v32 = a2 - v9;
    do
    {
      v12 += *(v31 - 2) * v7;
      v11 += *(v31 - 1) * v7;
      v10 += *v31 * v7;
      v31 += 3;
      --v32;
    }

    while (v32);
    goto LABEL_11;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v9 = a2 & 0x7FFELL;
  v28 = (a1 + 6);
  v29 = v9;
  do
  {
    v26 += *(v28 - 3) * v7;
    v27 += *v28 * v7;
    v24 += *(v28 - 2) * v7;
    v25 += v28[1] * v7;
    v30 = v28[2];
    v22 += *(v28 - 1) * v7;
    v28 += 6;
    v23 += v30 * v7;
    v29 -= 2;
  }

  while (v29);
  v10 = v23 + v22;
  v11 = v25 + v24;
  v12 = v27 + v26;
  if (v9 != a2)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a2 < 4)
  {
    v33 = 0;
    goto LABEL_22;
  }

  if (a2 >= 0x10)
  {
    v33 = a2 & 0x30;
    v34 = &v85;
    v35 = a2 & 0x7FF0;
    v36 = a1;
    do
    {
      v37 = v36;
      v36 += 96;
      v89 = vld3q_s16(v37);
      v37 += 24;
      v90 = vld3q_s16(v37);
      v34[-1] = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v89.val[1].i8, *v89.val[1].i8), *v89.val[0].i8, *v89.val[0].i8), *v89.val[2].i8, *v89.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v89.val[1], v89.val[1]), v89.val[0], v89.val[0]), v89.val[2], v89.val[2]), 0xBuLL);
      *v34 = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v90.val[1].i8, *v90.val[1].i8), *v90.val[0].i8, *v90.val[0].i8), *v90.val[2].i8, *v90.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v90.val[1], v90.val[1]), v90.val[0], v90.val[0]), v90.val[2], v90.val[2]), 0xBuLL);
      v34 += 2;
      v35 -= 16;
    }

    while (v35);
    if (v33 == a2)
    {
      goto LABEL_24;
    }

    if ((a2 & 0xCLL) == 0)
    {
LABEL_22:
      v42 = &v84[v33];
      v43 = (a1 + 6 * v33 + 4);
      v44 = a2 - v33;
      do
      {
        *v42++ = (*(v43 - 2) * *(v43 - 2) + *(v43 - 1) * *(v43 - 1) + *v43 * *v43) >> 11;
        v43 += 3;
        --v44;
      }

      while (v44);
      goto LABEL_24;
    }
  }

  else
  {
    v33 = 0;
  }

  v38 = v33;
  v33 = a2 & 0x7FFCLL;
  v39 = (a1 + 6 * v38);
  v40 = &v84[v38];
  v41 = v38 - v33;
  do
  {
    v88 = vld3_s16(v39);
    v39 += 12;
    *v40++ = vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(v88.val[1], v88.val[1]), v88.val[0], v88.val[0]), v88.val[2], v88.val[2]), 0xBuLL);
    v41 += 4;
  }

  while (v41);
  if (v33 != a2)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (a2 > 7)
  {
    v46 = vdupq_n_s16(v12 >> 15);
    v47 = vdupq_n_s16(v11 >> 15);
    v45 = a2 & 0x7FF8;
    v48 = vdupq_n_s16(v10 >> 15);
    v49 = v86;
    v50 = v45;
    v51 = a1;
    do
    {
      v91 = vld3q_s16(v51);
      v51 += 24;
      v92.val[0] = vsubq_s16(v91.val[0], v46);
      v92.val[1] = vsubq_s16(v91.val[1], v47);
      v92.val[2] = vsubq_s16(v91.val[2], v48);
      vst3q_s16(v49, v92);
      v49 += 24;
      v50 -= 8;
    }

    while (v50);
    if (v45 == a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v45 = 0;
  }

  v52 = a2 - v45;
  v53 = 6 * v45 + 4;
  v54 = (a1 + v53);
  v55 = &v86[v53];
  do
  {
    *(v55 - 2) = *(v54 - 2) - (v12 >> 15);
    *(v55 - 1) = *(v54 - 1) - (v11 >> 15);
    v56 = *v54;
    v54 += 3;
    *v55 = v56 - (v10 >> 15);
    v55 += 3;
    --v52;
  }

  while (v52);
LABEL_31:
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = (a1 + 4);
  v61 = v87;
  v62 = v84;
  do
  {
    v21 += *(v61 - 1) * *(v60 - 2);
    v20 += *v61 * *(v60 - 1);
    v63 = v61[1];
    v19 += v61[1] * *v60;
    v18 += *(v60 - 1) * *(v61 - 1);
    v17 += *v60 * *(v61 - 1);
    v16 += *v60 * *v61;
    v64 = *v62++;
    v57 += v64 * *(v61 - 1);
    v58 += v64 * *v61;
    v60 += 3;
    v61 += 3;
    v59 += v64 * v63;
    --v8;
  }

  while (v8);
  v15 = v57 >> 1;
  v14 = v58 >> 1;
  v13 = v59 >> 1;
LABEL_34:
  v65 = sub_19B45BAA0(v21);
  v66 = sub_19B45BAA0(v18);
  if (v65 >= v66)
  {
    v65 = v66;
  }

  v67 = sub_19B45BAA0(v17);
  if (v65 >= v67)
  {
    v65 = v67;
  }

  v68 = sub_19B45BAA0(v18);
  if (v65 >= v68)
  {
    v65 = v68;
  }

  v69 = sub_19B45BAA0(v20);
  if (v65 >= v69)
  {
    v65 = v69;
  }

  v70 = sub_19B45BAA0(v16);
  if (v65 >= v70)
  {
    v65 = v70;
  }

  v71 = sub_19B45BAA0(v17);
  if (v65 >= v71)
  {
    v65 = v71;
  }

  v72 = sub_19B45BAA0(v16);
  if (v65 >= v72)
  {
    v65 = v72;
  }

  v73 = sub_19B45BAA0(v19);
  if (v65 >= v73)
  {
    v65 = v73;
  }

  v74 = sub_19B45BAA0(v15);
  if (v65 >= v74)
  {
    v65 = v74;
  }

  v75 = sub_19B45BAA0(v14);
  if (v65 >= v75)
  {
    v65 = v75;
  }

  v76 = sub_19B45BAA0(v13);
  if (v65 >= v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = v65;
  }

  if (v77 >= 32)
  {
    LOBYTE(v77) = 32;
  }

  v78 = v18 << v77 >> 18;
  a3[3] = v78;
  a3[1] = v78;
  v79 = v17 << v77 >> 18;
  a3[6] = v79;
  a3[2] = v79;
  v80 = v16 << v77 >> 18;
  a3[7] = v80;
  a3[5] = v80;
  *a3 = v21 << v77 >> 18;
  a3[4] = v20 << v77 >> 18;
  a3[8] = v19 << v77 >> 18;
  *a4 = v15 << v77 >> 18;
  a4[1] = v14 << v77 >> 18;
  a4[2] = v13 << v77 >> 18;
  if (*a3 >= 6 && a3[4] >= 6 && a3[8] > 5)
  {
    return 4;
  }

  return 0;
}

uint64_t sub_19B45C060(__int16 *a1, int a2, __int16 *a3, __int16 *a4, _WORD *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3[8];
  v8 = a3[5];
  v9 = v7 * a3[4] - v8 * v8;
  v10 = *a3;
  v11 = a3[6];
  v12 = *a3 * v7 - v11 * v11;
  v13 = a3[1];
  v14 = *a3 * a3[4] - v13 * v13;
  if (v12 <= v9)
  {
    v15 = a3[8] * a3[4] - a3[5] * a3[5];
  }

  else
  {
    v15 = *a3 * a3[8] - a3[6] * a3[6];
  }

  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *a3 * a3[4] - a3[1] * a3[1];
  }

  if (v16 >= 1)
  {
    v19 = a3[4];
    v51 = 0;
    v20 = v12 > v9;
    if (v14 > v15)
    {
      v20 = 2;
    }

    if (v20 == 2)
    {
      v58 = v10;
      v59 = v13;
      v56 = -v11;
      v60 = a3[3];
      v61 = v19;
      v57 = -v8;
      if (sub_19B45C48C(&v58, 2, v55, v54))
      {
        sub_19B45C6F8(&v58, 2, v55, v54, &v56, &v52);
        v21 = v52 >> 2;
        *a4 = v52 >> 2;
        v22 = v53 >> 2;
        a4[1] = v53 >> 2;
        v24 = 2048;
        goto LABEL_19;
      }
    }

    else if (v20 == 1)
    {
      v58 = v7;
      v59 = v11;
      v56 = -v8;
      v60 = v11;
      v61 = v10;
      v57 = -v13;
      if (sub_19B45C48C(&v58, 2, v55, v54))
      {
        sub_19B45C6F8(&v58, 2, v55, v54, &v56, &v52);
        v21 = v53 >> 2;
        *a4 = v53 >> 2;
        v22 = 2048;
        a4[1] = 2048;
        v23 = v52;
LABEL_18:
        v24 = v23 >> 2;
LABEL_19:
        a4[2] = v24;
        v25 = sub_19B45DCE8(v22 * v22 + v21 * v21 + v24 * v24, &v51);
        v26 = (v25 >> 8) * *a4;
        *a4 = v26 >> 11;
        v27 = (v25 >> 8) * a4[1];
        a4[1] = v27 >> 11;
        v28 = (v25 >> 8) * a4[2];
        a4[2] = v28 >> 11;
        v29 = (v26 << 37) >> 48;
        v30 = (v27 << 37) >> 48;
        v31 = v29 * *a1 + (v27 >> 11) * a1[1];
        v32 = (v28 << 37) >> 48;
        v33 = v31 + (v28 >> 11) * a1[2];
        if (a2 < 2)
        {
          LODWORD(v36) = v31 + (v28 >> 11) * a1[2];
          LODWORD(v35) = v36;
        }

        else
        {
          if (a2 == 2)
          {
            v34 = 1;
            v35 = v33;
            v36 = v33;
          }

          else
          {
            v39 = 0;
            v34 = (a2 - 1) | 1;
            v40 = a1 + 4;
            v41 = (a2 - 1) & 0xFFFFFFFFFFFFFFFELL;
            v42 = v33;
            v43 = v33;
            v44 = v33;
            v45 = v33;
            do
            {
              v46 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              v47 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              if (v44 <= v46)
              {
                v44 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              }

              if (v45 <= v47)
              {
                v45 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              }

              if (v42 >= v46)
              {
                v42 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              }

              if (v43 >= v47)
              {
                v43 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              }

              LODWORD(v33) = v46 + v33;
              v39 += v47;
              v40 += 6;
              v41 -= 2;
            }

            while (v41);
            LODWORD(v33) = v39 + v33;
            if (v42 >= v43)
            {
              v35 = v43;
            }

            else
            {
              v35 = v42;
            }

            if (v44 <= v45)
            {
              v36 = v45;
            }

            else
            {
              v36 = v44;
            }

            if (a2 - 1 == ((a2 - 1) & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_48;
            }
          }

          v48 = &a1[3 * v34 + 2];
          v49 = a2 - v34;
          do
          {
            v50 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            if (v36 <= v50)
            {
              v36 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            }

            if (v35 >= v50)
            {
              v35 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            }

            LODWORD(v33) = v50 + v33;
            v48 += 3;
            --v49;
          }

          while (v49);
        }

LABEL_48:
        *a5 = (v36 - v35) >> 11;
        v37 = 1;
        a4[3] = -(((v33 >> 11) * sub_19B45B93C(1, a2)) >> 15);
        return v37;
      }
    }

    else
    {
      v58 = v19;
      v60 = v8;
      v56 = -v13;
      v59 = v8;
      v61 = v7;
      v57 = -v11;
      if (sub_19B45C48C(&v58, 2, v55, v54))
      {
        sub_19B45C6F8(&v58, 2, v55, v54, &v56, &v52);
        v21 = 2048;
        *a4 = 2048;
        v22 = v52 >> 2;
        a4[1] = v52 >> 2;
        v23 = v53;
        goto LABEL_18;
      }
    }
  }

  return 0;
}

uint64_t sub_19B45C48C(_WORD *a1, int a2, __int16 *a3, __int16 *a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  v29 = v4;
  v30 = v5;
  v9 = 0;
  v28 = 0;
  v10 = a2;
  v11 = a1;
  v12 = a1;
  while (2)
  {
    v27 = v11;
    if (v9)
    {
      v13 = v9;
      while (1)
      {
        v14 = a1[3 * v9 + v13] << 15;
        if (v9 >= 2)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = &a1[3 * v9];
            v19 = &a1[3 * v13];
            v14 -= 4 * v18[(v9 - v16 - 1)] * v19[(v9 - v16 - 1)];
            v17 -= 4 * v18[(v9 - v16 - 2)] * v19[(v9 - v16 - 2)];
            v16 += 2;
          }

          while ((v9 & 0xFFFFFFFE) != v16);
          v14 += v17;
          LOWORD(v15) = v9 & 1;
          if ((v9 & 0xFFFFFFFE) == v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          LOWORD(v15) = v9;
        }

        do
        {
          v20 = v15 - 1;
          v15 = (v15 - 1);
          v14 -= 4 * a1[3 * v9 + v20] * a1[3 * v13 + v20];
        }

        while (v15 > 0);
LABEL_13:
        if (v9 == v13)
        {
          if (v14 < 1)
          {
            return 0;
          }

          v21 = sub_19B45DCE8(v14, &v28);
          a3[v9] = HIWORD(v21);
          a4[v9] = v21 >> 1;
          if (++v13 == v10)
          {
            goto LABEL_3;
          }
        }

        else
        {
          a1[3 * v13++ + v9] = 2 * (WORD1(v14) * a3[v9] + ((((v14 >> 1) & 0x7FFE) * a3[v9]) >> 15) + (((v14 >> 16) * a4[v9]) >> 15));
          if (v13 == v10)
          {
            goto LABEL_3;
          }
        }
      }
    }

    for (i = 0; i != v10; ++i)
    {
      while (1)
      {
        v23 = v12[i];
        v24 = v23 << 15;
        if (!i)
        {
          break;
        }

        *v11 = 2 * ((v23 >> 1) * *a3 + ((((v24 >> 1) & 0x4000) * *a3) >> 15) + (((v23 >> 1) * *a4) >> 15));
        v11 += 3;
        if (v10 == ++i)
        {
          goto LABEL_3;
        }
      }

      if (v23 < 1)
      {
        return 0;
      }

      v25 = sub_19B45DCE8(v24, &v28);
      *a3 = HIWORD(v25);
      *a4 = v25 >> 1;
      v11 += 3;
    }

LABEL_3:
    ++v9;
    v12 += 3;
    v11 = v27 + 1;
    if (v9 != v10)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_19B45C6F8(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 >= 1)
  {
    v7 = 0;
    while (!v7)
    {
      v8 = 0;
LABEL_4:
      v9 = (*(a5 + 2 * v7) << 15) - v8;
      *(a6 + 2 * v7) = 2 * (HIWORD(v9) * *(a3 + 2 * v7) + (((v9 >> 16) * *(a4 + 2 * v7)) >> 15) + ((((v9 >> 1) & 0x7FFE) * *(a3 + 2 * v7)) >> 15));
      if (++v7 == a2)
      {
        goto LABEL_13;
      }
    }

    if (v7 > 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      LOWORD(v11) = v7 - (v7 & 0xFFFE);
      do
      {
        v15 = result + 6 * v7;
        v13 += *(a6 + 2 * (v7 - v12 - 1)) * *(v15 + 2 * (v7 - v12 - 1));
        v14 += *(a6 + 2 * (v7 - v12 - 2)) * *(v15 + 2 * (v7 - v12 - 2));
        v12 += 2;
      }

      while ((v7 & 0xFFFFFFFE) != v12);
      v10 = v14 + v13;
      if ((v7 & 0xFFFFFFFE) == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      LOWORD(v11) = v7;
    }

    do
    {
      v16 = v11 - 1;
      v11 = (v11 - 1);
      v10 += *(a6 + 2 * v16) * *(result + 6 * v7 + 2 * v16);
    }

    while (v11 > 0);
LABEL_12:
    v8 = 4 * v10;
    goto LABEL_4;
  }

LABEL_13:
  if (((a2 - 1) & 0x8000) == 0)
  {
    v17 = 0;
    v18 = v6;
    v19 = result + 2 * v6;
    v20 = v18;
    v21 = v19 + 6;
    v22 = -1;
    v23 = a2;
    do
    {
      v25 = *(a6 + 2 * v20) << 15;
      if (a2 > v23)
      {
        v26 = v23;
        if (v17 == 1)
        {
          goto LABEL_21;
        }

        v27 = 0;
        v28 = (v22 + 1) & 0x1FFFE;
        v29 = (v21 + 6 * v23);
        v30 = (a6 + 2 + 2 * v23);
        v31 = (v17 - 1) + 1;
        v26 = (v31 & 0x1FFFE) + v23;
        do
        {
          v25 -= 4 * *(v29 - 3) * *(v30 - 1);
          v27 -= 4 * *v29 * *v30;
          v29 += 6;
          v30 += 2;
          v28 -= 2;
        }

        while (v28);
        v25 += v27;
        if (v31 != (v31 & 0x1FFFE))
        {
LABEL_21:
          v32 = (a6 + 2 * v26);
          v33 = (v19 + 6 * v26);
          v34 = v26 + 1;
          do
          {
            v36 = *v33;
            v33 += 3;
            v35 = v36;
            v37 = *v32++;
            v25 -= 4 * v35 * v37;
            v38 = v34++;
          }

          while (v38 != a2);
        }
      }

      result = *(a3 + 2 * v20);
      *(a6 + 2 * v20) = 2 * (HIWORD(v25) * result + ((((v25 >> 1) & 0x7FFE) * result) >> 15) + (((v25 >> 16) * *(a4 + 2 * v20)) >> 15));
      --v23;
      ++v17;
      ++v22;
      v21 -= 2;
      v19 -= 2;
    }

    while (v20-- > 0);
  }

  return result;
}

uint64_t sub_19B45C958(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6)
{
  *a1 = a2;
  *(a1 + 400) = a3;
  result = sub_19B45C9A0(a1, a5, a6, 1);
  *(a1 + 396) = 0;
  *(a1 + 398) = a4;
  *(a1 + 504) = 0;
  return result;
}

uint64_t sub_19B45C9A0(uint64_t result, uint64_t a2, __int16 a3, int a4)
{
  v5 = result;
  if (a4)
  {
    *(result + 8) = 2147450879;
    *(result + 12) = 0x7FFF;
    *(result + 14) = 2147450879;
    *(result + 18) = 0x7FFF;
    *(result + 20) = 2147450879;
    *(result + 24) = 0x7FFF;
    *(result + 26) = 2147450879;
    *(result + 30) = 0x7FFF;
    *(result + 36) = 0x7FFF;
    *(result + 32) = 2147450879;
    *(result + 42) = 0x7FFF;
    *(result + 38) = 2147450879;
    *(result + 48) = 0x7FFF;
    *(result + 44) = 2147450879;
    *(result + 54) = 0x7FFF;
    *(result + 50) = 2147450879;
    *(result + 60) = 0x7FFF;
    *(result + 56) = 2147450879;
    *(result + 66) = 0x7FFF;
    *(result + 62) = 2147450879;
    *(result + 72) = 0x7FFF;
    *(result + 68) = 2147450879;
    *(result + 78) = 0x7FFF;
    *(result + 74) = 2147450879;
    *(result + 84) = 0x7FFF;
    *(result + 80) = 2147450879;
    *(result + 90) = 0x7FFF;
    *(result + 86) = 2147450879;
    *(result + 96) = 0x7FFF;
    *(result + 92) = 2147450879;
    *(result + 102) = 0x7FFF;
    *(result + 98) = 2147450879;
    *(result + 108) = 0x7FFF;
    *(result + 104) = 2147450879;
    *(result + 114) = 0x7FFF;
    *(result + 110) = 2147450879;
    *(result + 120) = 0x7FFF;
    *(result + 116) = 2147450879;
    *(result + 126) = 0x7FFF;
    *(result + 122) = 2147450879;
    *(result + 132) = 0x7FFF;
    *(result + 128) = 2147450879;
    *(result + 138) = 0x7FFF;
    *(result + 134) = 2147450879;
    *(result + 144) = 0x7FFF;
    *(result + 140) = 2147450879;
    *(result + 150) = 0x7FFF;
    *(result + 146) = 2147450879;
    *(result + 156) = 0x7FFF;
    *(result + 152) = 2147450879;
    *(result + 162) = 0x7FFF;
    *(result + 158) = 2147450879;
    *(result + 168) = 0x7FFF;
    *(result + 164) = 2147450879;
    *(result + 174) = 0x7FFF;
    *(result + 170) = 2147450879;
    *(result + 180) = 0x7FFF;
    *(result + 176) = 2147450879;
    *(result + 186) = 0x7FFF;
    *(result + 182) = 2147450879;
    *(result + 192) = 0x7FFF;
    *(result + 188) = 2147450879;
    *(result + 198) = 0x7FFF;
    *(result + 194) = 2147450879;
    *(result + 204) = 0x7FFF;
    *(result + 200) = 2147450879;
    *(result + 210) = 0x7FFF;
    *(result + 206) = 2147450879;
    *(result + 216) = 0x7FFF;
    *(result + 212) = 2147450879;
    *(result + 222) = 0x7FFF;
    *(result + 218) = 2147450879;
    *(result + 228) = 0x7FFF;
    *(result + 224) = 2147450879;
    *(result + 234) = 0x7FFF;
    *(result + 230) = 2147450879;
    *(result + 240) = 0x7FFF;
    *(result + 236) = 2147450879;
    *(result + 246) = 0x7FFF;
    *(result + 242) = 2147450879;
    *(result + 252) = 0x7FFF;
    *(result + 248) = 2147450879;
    *(result + 258) = 0x7FFF;
    *(result + 254) = 2147450879;
    *(result + 264) = 0x7FFF;
    *(result + 260) = 2147450879;
    *(result + 270) = 0x7FFF;
    *(result + 266) = 2147450879;
    *(result + 276) = 0x7FFF;
    *(result + 272) = 2147450879;
    *(result + 282) = 0x7FFF;
    *(result + 278) = 2147450879;
    *(result + 288) = 0x7FFF;
    *(result + 284) = 2147450879;
    *(result + 294) = 0x7FFF;
    *(result + 290) = 2147450879;
    *(result + 300) = 0x7FFF;
    *(result + 296) = 2147450879;
    *(result + 412) = 0x7FFF;
    *(result + 408) = 2147450879;
    *(result + 306) = 0x7FFF;
    *(result + 302) = 2147450879;
    *(result + 418) = 0x7FFF;
    *(result + 414) = 2147450879;
    *(result + 312) = 0x7FFF;
    *(result + 308) = 2147450879;
    *(result + 424) = 0x7FFF;
    *(result + 420) = 2147450879;
    *(result + 318) = 0x7FFF;
    *(result + 314) = 2147450879;
    *(result + 430) = 0x7FFF;
    *(result + 426) = 2147450879;
    *(result + 324) = 0x7FFF;
    *(result + 320) = 2147450879;
    *(result + 436) = 0x7FFF;
    *(result + 432) = 2147450879;
    *(result + 330) = 0x7FFF;
    *(result + 326) = 2147450879;
    *(result + 442) = 0x7FFF;
    *(result + 438) = 2147450879;
    *(result + 336) = 0x7FFF;
    *(result + 332) = 2147450879;
    *(result + 448) = 0x7FFF;
    *(result + 444) = 2147450879;
    *(result + 342) = 0x7FFF;
    *(result + 338) = 2147450879;
    *(result + 454) = 0x7FFF;
    *(result + 450) = 2147450879;
    *(result + 348) = 0x7FFF;
    *(result + 344) = 2147450879;
    *(result + 460) = 0x7FFF;
    *(result + 456) = 2147450879;
    *(result + 354) = 0x7FFF;
    *(result + 350) = 2147450879;
    *(result + 466) = 0x7FFF;
    *(result + 462) = 2147450879;
    *(result + 360) = 0x7FFF;
    *(result + 356) = 2147450879;
    *(result + 472) = 0x7FFF;
    *(result + 468) = 2147450879;
    *(result + 366) = 0x7FFF;
    *(result + 362) = 2147450879;
    *(result + 478) = 0x7FFF;
    *(result + 474) = 2147450879;
    *(result + 372) = 0x7FFF;
    *(result + 368) = 2147450879;
    *(result + 484) = 0x7FFF;
    *(result + 480) = 2147450879;
    *(result + 378) = 0x7FFF;
    *(result + 374) = 2147450879;
    *(result + 490) = 0x7FFF;
    *(result + 486) = 2147450879;
    *(result + 384) = 0x7FFF;
    *(result + 380) = 2147450879;
    *(result + 496) = 0x7FFF;
    *(result + 492) = 2147450879;
    *(result + 390) = 0x7FFF;
    *(result + 386) = 2147450879;
    *(result + 502) = 0x7FFF;
    *(result + 498) = 2147450879;
  }

  v6 = a3;
  if (a3 <= 0)
  {
    *(result + 392) = 0;
    *(result + 394) = 0;
  }

  else
  {
    *(result + 392) = 1;
    result = sub_19B45DD90(a2, 16, 1, result + 296);
    if (v6 <= 3)
    {
      v7 = a3 - 1;
    }

    else
    {
      v7 = 2;
    }

    *(v5 + 394) = v7;
  }

  return result;
}

uint64_t sub_19B45CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, __int16 a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  v88 = 0;
  if (*(a4 + 199) > 1u || *(a4 + 197) > 2u)
  {
    LOWORD(v12) = 0;
    return v12;
  }

  v90 = 0;
  v89 = 0;
  if (((a6 - 1) & 0x8000) == 0)
  {
    v12 = 0;
    v86 = a4 + 37;
    v16 = (a6 - 1);
    v84 = a4 + 43;
    v85 = a4 + 300;
    while (1)
    {
      v18 = *(a4 + 199);
      LOWORD(v19) = *(a4 + 197);
      if (*a4)
      {
        v20 = *(*a4 + 8 * v18);
      }

      else
      {
        v20 = &unk_19B7B2D8A + 90 * *(a4 + 199);
      }

      v21 = &v20[30 * *(a4 + 197)];
      if (!a7)
      {
        LODWORD(v18) = 0;
      }

      if (!a8)
      {
        LOWORD(v19) = 0;
      }

      v22 = a4[50];
      if (v22)
      {
        v23 = *(v22 + 8 * v18);
        v19 = v19;
      }

      else
      {
        v19 = v19;
        v23 = &unk_19B7B2E3E + 90 * v18;
      }

      v24 = &v23[30 * v19];
      v25 = *v21;
      v26 = *(v21 + 2);
      *v87 = *v24;
      *&v87[7] = *(v24 + 14);
      v87[0] = v25;
      v87[2] = v26;
      v27 = sub_19B45D37C((a5 + 6 * v16), v87, a4 + 4, a4 + 204, &v89, a4 + 252, &v88, 0, 0);
      LODWORD(v28) = *(a4 + 199);
      if (v27 != 2)
      {
        goto LABEL_26;
      }

      if (v28 > 0)
      {
        break;
      }

      v33 = *(v21 + 12);
      if (v33 < 0 || *(a4 + 252) < v33)
      {
        goto LABEL_26;
      }

      *(a4 + 199) = v28 + 1;
      if ((v28 & 0x80000000) == 0)
      {
        LOWORD(v28) = 1;
        v29 = *(v21 + 13);
        if (v29 < 0)
        {
LABEL_26:
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

LABEL_20:
        if (*(a4 + 252) <= v29)
        {
          LOWORD(v28) = v28 - 1;
          *(a4 + 199) = v28;
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

        goto LABEL_26;
      }

      v30 = *(a4 + 197);
      v31 = *a4;
      v28 = (v28 + 1);
      if (*a4)
      {
LABEL_27:
        v32 = (*(v31 + 8 * v28) + 30 * v30);
        if (v88 != 1)
        {
          goto LABEL_6;
        }

        goto LABEL_28;
      }

LABEL_22:
      v32 = (&unk_19B7B2D8A + 90 * v28 + 30 * v30);
      if (v88 != 1)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (sub_19B45D37C((a5 + 6 * v16), v32, a4 + 4, a4 + 100, &v89, a4 + 198, &v88, 1, a11) != 2)
      {
        goto LABEL_6;
      }

      v34 = *(a4 + 196);
      if (v34 < 16)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 16;
      }

      *(a4 + 196) = v35;
      sub_19B45DD90(&v89, 16, 1, v86);
      v36 = *(a4 + 196);
      if (v36 < 2 || (v37 = v32[11], v37 <= 1))
      {
        *a9 = v89;
        *(a9 + 4) = v90;
        ++v12;
        if (*(a4 + 196) >= v32[10])
        {
          goto LABEL_73;
        }

        goto LABEL_6;
      }

      v90 = 0;
      v89 = 0;
      if (v36 >= v37)
      {
        v38 = sub_19B45B93C(1, v37);
        v40 = v89;
        v41 = HIWORD(v89);
        v42 = v90;
        v44 = v32[11];
        if (v44 < 1)
        {
          goto LABEL_72;
        }

        if (v44 < 4)
        {
          v45 = 0;
LABEL_69:
          v79 = &v85[6 * v45];
          do
          {
            v40 += *(v79 - 2);
            v41 += *(v79 - 1);
            v80 = *v79;
            v79 += 6;
            v42 += v80;
            ++v45;
          }

          while (v45 < v44);
          goto LABEL_71;
        }

        if (v44 >= 0x10)
        {
          v45 = v44 & 0x7FF0;
          v64 = 0uLL;
          v65 = v89;
          v66 = HIWORD(v89);
          v67 = v90;
          v68 = v45;
          v69 = v84;
          v70 = 0uLL;
          v71 = 0uLL;
          do
          {
            v72 = v69 - 24;
            v94 = vld3q_s16(v72);
            v96 = vld3q_s16(v69);
            v65 = vaddq_s16(v65, v94.val[0]);
            v64 = vaddq_s16(v64, v96.val[0]);
            v66 = vaddq_s16(v66, v94.val[1]);
            v70 = vaddq_s16(v70, v96.val[1]);
            v67 = vaddq_s16(v67, v94.val[2]);
            v71 = vaddq_s16(v71, v96.val[2]);
            v69 += 48;
            v68 -= 16;
          }

          while (v68);
          v40 = vaddvq_s16(vaddq_s16(v64, v65));
          v41 = vaddvq_s16(vaddq_s16(v70, v66));
          v42 = vaddvq_s16(vaddq_s16(v71, v67));
          if (v45 == v44)
          {
            goto LABEL_71;
          }

          if ((v44 & 0xC) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v45 = 0;
        }

        v73 = v45;
        v74 = v40;
        v75 = v41;
        v45 = v44 & 0x7FFC;
        v76 = v42;
        v77 = v86 + 3 * v73;
        v78 = v73 - v45;
        do
        {
          v92 = vld3_s16(v77);
          v77 += 12;
          v74 = vadd_s16(v74, v92.val[0]);
          v75 = vadd_s16(v75, v92.val[1]);
          v76 = vadd_s16(v76, v92.val[2]);
          v78 += 4;
        }

        while (v78);
        v40 = vaddv_s16(v74);
        v41 = vaddv_s16(v75);
        v42 = vaddv_s16(v76);
        if (v45 == v44)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      v38 = sub_19B45B93C(1, v36);
      v39 = *(a4 + 196);
      v40 = v89;
      v41 = HIWORD(v89);
      v42 = v90;
      if (v39 < 1)
      {
        goto LABEL_72;
      }

      if (v39 >= 4)
      {
        if (v39 < 0x10)
        {
          v43 = 0;
LABEL_56:
          v55 = v43;
          v56 = v40;
          v57 = v41;
          v43 = v39 & 0x7FFC;
          v58 = v42;
          v59 = v86 + 3 * v55;
          v60 = v55 - v43;
          do
          {
            v91 = vld3_s16(v59);
            v59 += 12;
            v56 = vadd_s16(v56, v91.val[0]);
            v57 = vadd_s16(v57, v91.val[1]);
            v58 = vadd_s16(v58, v91.val[2]);
            v60 += 4;
          }

          while (v60);
          v40 = vaddv_s16(v56);
          v41 = vaddv_s16(v57);
          v42 = vaddv_s16(v58);
          if (v43 == v39)
          {
            goto LABEL_71;
          }

          goto LABEL_59;
        }

        v43 = v39 & 0x7FF0;
        v46 = 0uLL;
        v47 = v89;
        v48 = HIWORD(v89);
        v49 = v90;
        v50 = v43;
        v51 = v84;
        v52 = 0uLL;
        v53 = 0uLL;
        do
        {
          v54 = v51 - 24;
          v93 = vld3q_s16(v54);
          v95 = vld3q_s16(v51);
          v47 = vaddq_s16(v47, v93.val[0]);
          v46 = vaddq_s16(v46, v95.val[0]);
          v48 = vaddq_s16(v48, v93.val[1]);
          v52 = vaddq_s16(v52, v95.val[1]);
          v49 = vaddq_s16(v49, v93.val[2]);
          v53 = vaddq_s16(v53, v95.val[2]);
          v51 += 48;
          v50 -= 16;
        }

        while (v50);
        v40 = vaddvq_s16(vaddq_s16(v46, v47));
        v41 = vaddvq_s16(vaddq_s16(v52, v48));
        v42 = vaddvq_s16(vaddq_s16(v53, v49));
        if (v43 == v39)
        {
          goto LABEL_71;
        }

        if ((v39 & 0xC) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v43 = 0;
      }

LABEL_59:
      v61 = &v85[6 * v43];
      v62 = v39 - v43;
      do
      {
        v40 += *(v61 - 2);
        v41 += *(v61 - 1);
        v63 = *v61;
        v61 += 6;
        v42 += v63;
        --v62;
      }

      while (v62);
LABEL_71:
      LOWORD(v89) = v40;
      HIWORD(v89) = v41;
      v90 = v42;
LABEL_72:
      *a9 = (v40 * v38) >> 15;
      *(a9 + 2) = (v41 * v38) >> 15;
      *(a9 + 4) = (v42 * v38) >> 15;
      ++v12;
      if (*(a4 + 196) >= v32[10])
      {
LABEL_73:
        v81 = *(a4 + 197);
        if (v81 <= 1)
        {
          *(a4 + 196) = 0;
          *(a4 + 197) = v81 + 1;
        }
      }

LABEL_6:
      if (v16-- <= 0)
      {
        goto LABEL_76;
      }
    }

    v29 = *(v21 + 13);
    if (v29 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  LOWORD(v12) = 0;
LABEL_76:
  v82 = *(a4 + 197);
  if (*(a4 + 196))
  {
    ++v82;
  }

  *a10 = v82;
  return v12;
}

uint64_t sub_19B45D37C(_WORD *a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, _WORD *a7, int a8, uint64_t a9)
{
  v111 = *MEMORY[0x1E69E9840];
  if (*a2 < 1)
  {
    return 0;
  }

  v9 = a6;
  v11 = a4;
  *a7 = 0;
  if (a8)
  {
    v14 = a2 + 14;
    if (a2[14])
    {
      if (a8 != 1)
      {
        v15 = a6;
        v16 = a4;
        v17 = a1;
        v87 = a7;
        if (a2[2] <= 0)
        {
          goto LABEL_20;
        }

        return 0;
      }

LABEL_11:
      v86 = a2 + 14;
      goto LABEL_23;
    }

    if (a8 == 1)
    {
      goto LABEL_11;
    }

    v15 = a6;
    v16 = a4;
    v17 = a1;
    v87 = a7;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_13:
    v22 = a2[2];
    if (v19 < v22 || v20 < v22 || v21 < v22)
    {
      return 0;
    }

    goto LABEL_20;
  }

  v15 = a6;
  v16 = a4;
  v87 = a7;
  v19 = sub_19B45BAE4((*a3 - *a1));
  v20 = sub_19B45BAE4((a3[1] - a1[1]));
  v17 = a1;
  v21 = sub_19B45BAE4((a3[2] - a1[2]));
  a8 = 0;
  v14 = a2 + 14;
  if (!a2[14])
  {
    goto LABEL_13;
  }

  if (v20 + v19 + v21 < a2[2])
  {
    return 0;
  }

LABEL_20:
  v86 = v14;
  if (!a8)
  {
    sub_19B45DD90(v17, *a2, 1, a3);
    *v87 = 1;
  }

  v11 = v16;
  v9 = v15;
LABEL_23:
  v25 = *a2;
  v26 = &a3[3 * *a2];
  if (*(v26 - 3) == 0x7FFF && *(v26 - 2) == 0x7FFF && *(v26 - 1) == 0x7FFF)
  {
    return 0;
  }

  v96 = 0;
  v95 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  sub_19B45DE1C(a3, v25, &v95, &v93, &v91, &v89);
  v28 = *a2;
  v29 = *a2;
  if (v28 >= 1)
  {
    v30 = v91;
    v31 = HIWORD(v91);
    v32 = v92;
    if (v29 >= 8)
    {
      v33 = v28 & 0x7FF8;
      v34 = vdupq_n_s16(v91);
      v35 = vdupq_n_s16(HIWORD(v91));
      v36 = vdupq_n_s16(v92);
      v37 = v33;
      v38 = a3;
      do
      {
        v112 = vld3q_s16(v38);
        v114.val[0] = vsubq_s16(v112.val[0], v34);
        v114.val[1] = vsubq_s16(v112.val[1], v35);
        v114.val[2] = vsubq_s16(v112.val[2], v36);
        vst3q_s16(v38, v114);
        v38 += 24;
        v37 -= 8;
      }

      while (v37);
      if (v33 == v28)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v33 = 0;
    }

    v39 = v28 - v33;
    v40 = &a3[3 * v33 + 2];
    do
    {
      *(v40 - 2) -= v30;
      *(v40 - 1) -= v31;
      *v40 -= v32;
      v40 += 3;
      --v39;
    }

    while (v39);
LABEL_35:
    v29 = *a2;
  }

  v41 = v29;
  v42 = sub_19B45BB00(a3, v29, &v107, &v105);
  v109 = v107;
  v110 = v108;
  if (v42 == 4 && sub_19B45C48C(&v109, 3, &v101, &v99))
  {
    v88 = v11;
    sub_19B45C6F8(&v109, 3, &v101, &v99, &v105, &v103);
    v43 = v103 >> 2;
    *a5 = v43;
    v44 = SHIWORD(v103) >> 2;
    a5[1] = v44;
    v45 = v104 >> 2;
    a5[2] = v104 >> 2;
    v46 = (*a3 - v43) * (*a3 - v43) + (a3[1] - v44) * (a3[1] - v44) + (a3[2] - v45) * (a3[2] - v45);
    v47 = sub_19B45DADC(v46);
    v48 = v47;
    if (v29 < 2)
    {
      v51 = v47;
    }

    else
    {
      v49 = v29 - 1;
      v50 = a3 + 5;
      v51 = v47;
      do
      {
        v52 = *(v50 - 2) - *a5;
        v53 = *(v50 - 1) - a5[1];
        v54 = v52 * v52 + v53 * v53;
        v55 = *v50 - a5[2];
        v56 = v54 + v55 * v55;
        v46 += v56;
        v57 = sub_19B45DADC(v56);
        if (v57 > v51)
        {
          v51 = v57;
        }

        if (v57 < v48)
        {
          v48 = v57;
        }

        v50 += 3;
        --v49;
      }

      while (v49);
    }

    v59 = 1;
    v61 = sub_19B45B93C(1, v41);
    v62 = sub_19B45DADC((((v61 >> 3) & 1) + (v61 >> 4)) * (((v46 >> 6) & 1) + (v46 >> 7)));
    v60 = 0;
    *v9 = ((v62 >> 1) & 1) + (v62 >> 2);
    v58 = v51 - v48;
    v11 = v88;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    a5[2] = 0;
    *a5 = 0;
    v60 = 1;
    *v9 = 0;
  }

  v63 = HIWORD(v91);
  v64 = v92;
  *a5 += v91;
  a5[1] += v63;
  a5[2] += v64;
  sub_19B45DD90(a5, a2[1], 1, v11);
  if (v60)
  {
    goto LABEL_84;
  }

  v65 = *v9;
  if (a9)
  {
    *(a9 + 12) = *(a2 + 7);
    *(a9 + 16) = a2[9];
    *(a9 + 18) = v58;
  }

  if (!v59 || a2[8] >= v65 || a2[7] <= v65 || a2[9] * v65 <= v58 << 11)
  {
    goto LABEL_84;
  }

  v106 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  *&v109 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  sub_19B45DE1C(v11, a2[1], &v101, &v99, &v97, &v103);
  if (a9)
  {
    *(a9 + 2) = a2[1];
    *(a9 + 20) = v103;
    *(a9 + 24) = v104;
    v66 = a2[5];
    *(a9 + 8) = v66;
  }

  else
  {
    v66 = a2[5];
  }

  if (v103 >= v66 || SHIWORD(v103) >= v66 || v104 >= v66)
  {
    if (*v86 < 2)
    {
      goto LABEL_84;
    }

    v70 = v66;
    v71 = v66 > v103;
    v72 = v104 < v70 || v71;
    if (v104 >= v70)
    {
      v71 = 0;
    }

    v73 = SHIWORD(v103) < v70 ? v72 : 0;
    if ((v73 & 1) == 0 && !v71)
    {
LABEL_84:
      result = 0;
      goto LABEL_85;
    }
  }

  sub_19B45DE1C(a3, *a2, &v101, &v99, &v97, &v105);
  v67 = v105;
  if (a9)
  {
    *a9 = *a2;
    *(a9 + 26) = v105;
    *(a9 + 30) = v106;
    *(a9 + 6) = a2[4];
  }

  result = 0;
  v68 = a2[3];
  if (v67 > v68 && SHIWORD(v105) > v68 && v106 > v68)
  {
    if ((HIWORD(v105) + v67 + v106) >= a2[4])
    {
      v69 = sub_19B45C060(a3, *a2, &v107, &v109, &v102 + 1);
      if (a9)
      {
        *(a9 + 10) = a2[6];
        *(a9 + 32) = HIWORD(v102);
      }

      if (v69 && SHIWORD(v102) > a2[6])
      {
        result = 2;
        goto LABEL_85;
      }
    }

    goto LABEL_84;
  }

LABEL_85:
  v74 = *a2;
  if (v74 < 1)
  {
    return result;
  }

  v75 = v91;
  v76 = HIWORD(v91);
  v77 = v92;
  if (v74 < 8)
  {
    v78 = 0;
LABEL_91:
    v84 = v74 - v78;
    v85 = &a3[3 * v78 + 2];
    do
    {
      *(v85 - 2) += v75;
      *(v85 - 1) += v76;
      *v85 += v77;
      v85 += 3;
      --v84;
    }

    while (v84);
    return result;
  }

  v78 = v74 & 0x7FF8;
  v79 = vdupq_n_s16(v91);
  v80 = vdupq_n_s16(HIWORD(v91));
  v81 = vdupq_n_s16(v92);
  v82 = v78;
  v83 = a3;
  do
  {
    v113 = vld3q_s16(v83);
    v115.val[0] = vaddq_s16(v113.val[0], v79);
    v115.val[1] = vaddq_s16(v113.val[1], v80);
    v115.val[2] = vaddq_s16(v113.val[2], v81);
    vst3q_s16(v83, v115);
    v83 += 24;
    v82 -= 8;
  }

  while (v82);
  if (v78 != v74)
  {
    goto LABEL_91;
  }

  return result;
}

uint64_t sub_19B45DADC(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = a1 >> 30 != 0;
  v2 = ((a1 >> 28) & 0x3FFFFFFFFLL) + 4 * ((a1 >> 30) - v1);
  v3 = 4 * v1 >= v2;
  v4 = 4 * v1 < v2 && ~(4 * v1);
  v5 = v4 + v2;
  if (v3)
  {
    v6 = 8 * v1;
  }

  else
  {
    v6 = (8 * v1) | 4;
  }

  v7 = v6 >> 2;
  v8 = ((a1 >> 26) & 0x3FFFFFFFFLL) + 4 * v5;
  v9 = v6 >= v8;
  if (v6 < v8)
  {
    v10 = ~v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + v8;
  v12 = 2 * v6;
  if (!v9)
  {
    v12 = (8 * (v7 & 3)) | 4;
  }

  v13 = ((a1 >> 24) & 0x3FFFFFFFFLL) + 4 * v11;
  v14 = v12 >= v13;
  if (v12 < v13)
  {
    v15 = ~v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 + v13;
  v17 = 2 * v12;
  if (!v14)
  {
    v17 |= 4uLL;
  }

  v18 = ((a1 >> 22) & 0x3FFFFFFFFLL) + 4 * v16;
  v19 = v17 >= v18;
  if (v17 < v18)
  {
    v20 = ~v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 + v18;
  v22 = 2 * v17;
  if (!v19)
  {
    v22 |= 4uLL;
  }

  v23 = ((a1 >> 20) & 0x3FFFFFFFFLL) + 4 * v21;
  v24 = v22 >= v23;
  if (v22 < v23)
  {
    v25 = ~v22;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 + v23;
  v27 = 2 * v22;
  if (!v24)
  {
    v27 |= 4uLL;
  }

  v28 = ((a1 >> 18) & 0x3FFFFFFFFLL) + 4 * v26;
  v29 = v27 >= v28;
  if (v27 < v28)
  {
    v30 = ~v27;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 + v28;
  v32 = 2 * v27;
  if (!v29)
  {
    v32 |= 4uLL;
  }

  v33 = ((a1 >> 16) & 0x3FFFFFFFFLL) + 4 * v31;
  v34 = v32 >= v33;
  if (v32 < v33)
  {
    v35 = ~v32;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 + v33;
  v37 = 2 * v32;
  if (!v34)
  {
    v37 |= 4uLL;
  }

  v38 = ((a1 >> 14) & 0x3FFFFFFFFLL) + 4 * v36;
  v39 = v37 >= v38;
  if (v37 < v38)
  {
    v40 = ~v37;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 + v38;
  v42 = 2 * v37;
  if (!v39)
  {
    v42 |= 4uLL;
  }

  v43 = ((a1 >> 12) & 0x3FFFFFFFFLL) + 4 * v41;
  v44 = v42 >= v43;
  if (v42 < v43)
  {
    v45 = ~v42;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = 2 * v42;
  if (!v44)
  {
    v47 |= 4uLL;
  }

  v48 = ((a1 >> 10) & 0x3FFFFFFFFLL) + 4 * v46;
  v49 = v47 >= v48;
  if (v47 < v48)
  {
    v50 = ~v47;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50 + v48;
  v52 = 2 * v47;
  if (!v49)
  {
    v52 |= 4uLL;
  }

  v53 = ((a1 >> 8) & 0x3FFFFFFFFLL) + 4 * v51;
  v54 = v52 >= v53;
  if (v52 < v53)
  {
    v55 = ~v52;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = 2 * v52;
  if (!v54)
  {
    v57 |= 4uLL;
  }

  v58 = ((a1 >> 6) & 0x3FFFFFFFFLL) + 4 * v56;
  v59 = v57 >= v58;
  if (v57 < v58)
  {
    v60 = ~v57;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60 + v58;
  v62 = 2 * v57;
  if (!v59)
  {
    v62 |= 4uLL;
  }

  v63 = ((a1 >> 4) & 0x3FFFFFFFFLL) + 4 * v61;
  v64 = v62 >= v63;
  if (v62 < v63)
  {
    v65 = ~v62;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = 2 * v62;
  if (!v64)
  {
    v67 |= 4uLL;
  }

  v68 = ((a1 >> 2) & 0x3FFFFFFFFLL) + 4 * v66;
  v69 = v67 >= v68;
  if (v67 < v68)
  {
    v70 = ~v67;
  }

  else
  {
    v70 = 0;
  }

  v71 = v70 + v68;
  v72 = 2 * v67;
  if (!v69)
  {
    v72 |= 4uLL;
  }

  return ((v72 >> 1) | (v72 < (a1 & 0x3FFFFFFFFLL) + 4 * v71));
}

uint64_t sub_19B45DCE8(int64_t a1, _WORD *a2)
{
  if (a1 < 1)
  {
    result = 0x40000000;
    *a2 = 0;
  }

  else
  {
    v4 = sub_19B45BAA0(a1);
    v5 = a1 << v4 >> (((30 - v4) & 1) == 0);
    v6 = ((30 - v4) << 16 >> 17) + 1;
    v7 = (v5 >> 10) & 0x7FFF;
    v8 = (&unk_19B7B2E98 + 2 * (((v5 << 23) - 0x10000000000000) >> 48));
    result = ((*v8 << 16) - 2 * (*v8 - v8[1]) * v7) >> (((30 - v4) << 16 >> 17) + 1);
    *a2 = v6;
  }

  return result;
}

uint64_t sub_19B45DD90(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 >= 1 && a2 >= a3)
  {
    for (i = (a2 - 1); i >= a3; i = (i - 1))
    {
      v5 = a4 + 6 * i;
      v6 = (a4 + 6 * (i - a3));
      v7 = *v6;
      *(v5 + 4) = *(v6 + 2);
      *v5 = v7;
    }

    v8 = 6 * (a3 - 1);
    do
    {
      v9 = a4 + v8;
      v10 = *(result + v8);
      *(v9 + 4) = *(result + v8 + 4);
      *v9 = v10;
      v8 -= 6;
    }

    while (v8 != -6);
  }

  return result;
}

__int16 *sub_19B45DE1C(__int16 *result, int a2, __int16 *a3, __int16 *a4, _WORD *a5, _WORD *a6)
{
  v6 = *result;
  *a4 = *result;
  *a3 = v6;
  if (a2 > 1)
  {
    v7 = result + 3;
    v8 = a2 - 1;
    v9 = v8;
    while (1)
    {
      v10 = *v7;
      if (v10 < *a4)
      {
        *a4 = v10;
        LOWORD(v10) = *v7;
        v6 = *a3;
        if (*v7 > *a3)
        {
LABEL_8:
          *a3 = v10;
          v6 = v10;
        }
      }

      else if (v10 > v6)
      {
        goto LABEL_8;
      }

      v7 += 3;
      if (!--v9)
      {
        v22 = (*a4 >> 1) + (v6 >> 1);
        *a5 = (*a4 >> 1) + (v6 >> 1);
        v23 = *a3;
        if (*a3 & 1) != 0 || (v24 = *a4, (*a4))
        {
          *a5 = v22 + 1;
          v23 = *a3;
          v24 = *a4;
        }

        v25 = (v23 - v24);
        if (v25 >= 0x7FFF)
        {
          LOWORD(v25) = 0x7FFF;
        }

        *a6 = v25;
        v26 = result[1];
        a4[1] = v26;
        a3[1] = v26;
        v27 = result + 4;
        v28 = a2 - 1;
        while (2)
        {
          v29 = *v27;
          if (v29 < a4[1])
          {
            a4[1] = v29;
            LOWORD(v29) = *v27;
            v26 = a3[1];
            if (*v27 > v26)
            {
              goto LABEL_32;
            }
          }

          else if (v29 > v26)
          {
LABEL_32:
            a3[1] = v29;
            v26 = v29;
          }

          v27 += 3;
          if (--v28)
          {
            continue;
          }

          break;
        }

        v30 = (a4[1] >> 1) + (v26 >> 1);
        a5[1] = (a4[1] >> 1) + (v26 >> 1);
        v31 = a3[1];
        if (v31 & 1) != 0 || (v32 = a4[1], (v32))
        {
          a5[1] = v30 + 1;
          v31 = a3[1];
          v32 = a4[1];
        }

        v33 = (v31 - v32);
        if (v33 >= 0x7FFF)
        {
          LOWORD(v33) = 0x7FFF;
        }

        a6[1] = v33;
        v34 = result[2];
        a4[2] = v34;
        a3[2] = v34;
        v35 = result + 5;
        while (2)
        {
          v36 = *v35;
          if (v36 < a4[2])
          {
            a4[2] = v36;
            LOWORD(v36) = *v35;
            v34 = a3[2];
            if (*v35 > v34)
            {
              goto LABEL_44;
            }
          }

          else if (v36 > v34)
          {
LABEL_44:
            a3[2] = v36;
            v34 = v36;
          }

          v35 += 3;
          if (!--v8)
          {
            v20 = (a4[2] >> 1) + (v34 >> 1);
            a5[2] = v20;
            v21 = a3[2];
            if ((v21 & 1) == 0)
            {
              goto LABEL_46;
            }

LABEL_47:
            a5[2] = v20 + 1;
            LOWORD(v21) = a3[2];
            v37 = a4[2];
            goto LABEL_48;
          }

          continue;
        }
      }
    }
  }

  v11 = (*a4 >> 1) + (v6 >> 1);
  *a5 = (*a4 >> 1) + (v6 >> 1);
  v12 = *a3;
  if (*a3 & 1) != 0 || (v13 = *a4, (*a4))
  {
    *a5 = v11 + 1;
    v12 = *a3;
    v13 = *a4;
  }

  v14 = (v12 - v13);
  if (v14 >= 0x7FFF)
  {
    LOWORD(v14) = 0x7FFF;
  }

  *a6 = v14;
  v15 = result[1];
  a4[1] = v15;
  a3[1] = v15;
  v16 = (a4[1] >> 1) + (v15 >> 1);
  a5[1] = (a4[1] >> 1) + (v15 >> 1);
  v17 = a3[1];
  if (v17 & 1) != 0 || (v18 = a4[1], (v18))
  {
    a5[1] = v16 + 1;
    v17 = a3[1];
    v18 = a4[1];
  }

  v19 = (v17 - v18);
  if (v19 >= 0x7FFF)
  {
    LOWORD(v19) = 0x7FFF;
  }

  a6[1] = v19;
  LODWORD(v21) = result[2];
  a4[2] = v21;
  a3[2] = v21;
  v20 = (a4[2] >> 1) + (v21 >> 1);
  a5[2] = (a4[2] >> 1) + (v21 >> 1);
  LOWORD(v21) = a3[2];
  if (v21)
  {
    goto LABEL_47;
  }

LABEL_46:
  v37 = a4[2];
  if (v37)
  {
    goto LABEL_47;
  }

LABEL_48:
  v38 = (v21 - v37);
  if (v38 >= 0x7FFF)
  {
    LOWORD(v38) = 0x7FFF;
  }

  a6[2] = v38;
  return result;
}

uint64_t sub_19B45E124(uint64_t result)
{
  *result = &unk_1F0E2BF70;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B45E14C(PB::Base *a1)
{
  *a1 = &unk_1F0E2BF70;
  v2 = (a1 + 8);
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B45E1A8(PB::Base *a1)
{
  *a1 = &unk_1F0E2BF70;
  v3 = (a1 + 8);
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B45E218(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "blendShapeCoefficients");
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 32));
    v8 = *(a1 + 48);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B45E2F0(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B45E55C(a1 + 8);
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 32) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B45E6A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 32);

    return PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_19B45E740(uint64_t result)
{
  *result = &unk_1F0E307D8;
  *(result + 20) = 0;
  return result;
}

void sub_19B45E768(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B45E7A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "isCovered");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B45E81C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 >= *(this + 2))
        {
          v23 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v22 = *(*this + v2++);
          *(this + 1) = v2;
          v23 = v22 != 0;
        }

        *(a1 + 16) = v23;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B45EA28(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::write(this);
  }

  return result;
}

double sub_19B45EA94(uint64_t a1)
{
  *a1 = &unk_1F0E38360;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B45EAC8(PB::Base *this)
{
  *this = &unk_1F0E38360;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B45EB3C(PB::Base *a1)
{
  sub_19B45EAC8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B45EB74(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accel", v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "accelFiltered", v10);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    PB::TextFormatter::format(this, "faceDownLookbackTimestamp", *(a1 + 56));
    v11 = *(a1 + 96);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "faceDownState");
  v11 = *(a1 + 96);
  if ((v11 & 8) == 0)
  {
LABEL_8:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "gravityAngle", *(a1 + 76));
  v11 = *(a1 + 96);
  if ((v11 & 0x10) == 0)
  {
LABEL_9:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "gravityAngleVar", *(a1 + 80));
  v11 = *(a1 + 96);
  if ((v11 & 0x80) == 0)
  {
LABEL_10:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "isFaceDown");
  v11 = *(a1 + 96);
  if ((v11 & 0x20) == 0)
  {
LABEL_11:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "pocketProbability", *(a1 + 84));
  v11 = *(a1 + 96);
  if ((v11 & 0x40) == 0)
  {
LABEL_12:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "pocketProbabilityVar", *(a1 + 88));
  v11 = *(a1 + 96);
  if ((v11 & 0x100) == 0)
  {
LABEL_13:
    if ((v11 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  PB::TextFormatter::format(this, "shouldSuppress");
  if ((*(a1 + 96) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B45ED40(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(this + 24) = 1;
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            *(a1 + 96) |= 2u;
            v51 = *(this + 1);
            if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(this + 2))
            {
LABEL_154:
              *(this + 24) = 1;
              goto LABEL_158;
            }

            *(a1 + 64) = *(*this + v51);
LABEL_72:
            v52 = *(this + 1) + 8;
            goto LABEL_157;
          }

          if (v23 == 2)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_164;
              }

              v35 = *(this + 1);
              v36 = *(this + 2);
              while (v35 < v36 && (*(this + 24) & 1) == 0)
              {
                v38 = *(a1 + 40);
                v37 = *(a1 + 48);
                if (v38 >= v37)
                {
                  v40 = *(a1 + 32);
                  v41 = v38 - v40;
                  v42 = (v38 - v40) >> 2;
                  v43 = v42 + 1;
                  if ((v42 + 1) >> 62)
                  {
                    goto LABEL_165;
                  }

                  v44 = v37 - v40;
                  if (v44 >> 1 > v43)
                  {
                    v43 = v44 >> 1;
                  }

                  if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v45 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v45 = v43;
                  }

                  if (v45)
                  {
                    sub_19B4C4FA8(a1 + 32, v45);
                  }

                  v46 = (v38 - v40) >> 2;
                  v47 = (4 * v42);
                  v48 = (4 * v42 - 4 * v46);
                  *v47 = 0;
                  v39 = v47 + 1;
                  memcpy(v48, v40, v41);
                  v49 = *(a1 + 32);
                  *(a1 + 32) = v48;
                  *(a1 + 40) = v39;
                  *(a1 + 48) = 0;
                  if (v49)
                  {
                    operator delete(v49);
                  }
                }

                else
                {
                  *v38 = 0;
                  v39 = v38 + 4;
                }

                *(a1 + 40) = v39;
                v50 = *(this + 1);
                if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
                {
LABEL_124:
                  *(this + 24) = 1;
                  break;
                }

                *(v39 - 1) = *(*this + v50);
                v36 = *(this + 2);
                v35 = *(this + 1) + 4;
                *(this + 1) = v35;
              }

LABEL_125:
              PB::Reader::recallMark();
              goto LABEL_158;
            }

            v81 = *(a1 + 40);
            v80 = *(a1 + 48);
            if (v81 >= v80)
            {
              v91 = *(a1 + 32);
              v92 = v81 - v91;
              v93 = (v81 - v91) >> 2;
              v94 = v93 + 1;
              if ((v93 + 1) >> 62)
              {
                goto LABEL_165;
              }

              v95 = v80 - v91;
              if (v95 >> 1 > v94)
              {
                v94 = v95 >> 1;
              }

              if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v96 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v96 = v94;
              }

              if (v96)
              {
                sub_19B4C4FA8(a1 + 32, v96);
              }

              v103 = (v81 - v91) >> 2;
              v104 = (4 * v93);
              v105 = (4 * v93 - 4 * v103);
              *v104 = 0;
              v82 = v104 + 1;
              memcpy(v105, v91, v92);
              v106 = *(a1 + 32);
              *(a1 + 32) = v105;
              *(a1 + 40) = v82;
              *(a1 + 48) = 0;
              if (v106)
              {
                operator delete(v106);
              }
            }

            else
            {
              *v81 = 0;
              v82 = v81 + 4;
            }

            *(a1 + 40) = v82;
LABEL_152:
            v111 = *(this + 1);
            if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(v82 - 1) = *(*this + v111);
LABEL_156:
            v52 = *(this + 1) + 4;
LABEL_157:
            *(this + 1) = v52;
            goto LABEL_158;
          }
        }

        else
        {
          switch(v23)
          {
            case 3:
              if (v22 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_164;
                }

                v59 = *(this + 1);
                v60 = *(this + 2);
                while (v59 < v60 && (*(this + 24) & 1) == 0)
                {
                  v62 = *(a1 + 16);
                  v61 = *(a1 + 24);
                  if (v62 >= v61)
                  {
                    v64 = *(a1 + 8);
                    v65 = v62 - v64;
                    v66 = (v62 - v64) >> 2;
                    v67 = v66 + 1;
                    if ((v66 + 1) >> 62)
                    {
                      goto LABEL_165;
                    }

                    v68 = v61 - v64;
                    if (v68 >> 1 > v67)
                    {
                      v67 = v68 >> 1;
                    }

                    if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v69 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v69 = v67;
                    }

                    if (v69)
                    {
                      sub_19B4C4FA8(a1 + 8, v69);
                    }

                    v70 = (v62 - v64) >> 2;
                    v71 = (4 * v66);
                    v72 = (4 * v66 - 4 * v70);
                    *v71 = 0;
                    v63 = v71 + 1;
                    memcpy(v72, v64, v65);
                    v73 = *(a1 + 8);
                    *(a1 + 8) = v72;
                    *(a1 + 16) = v63;
                    *(a1 + 24) = 0;
                    if (v73)
                    {
                      operator delete(v73);
                    }
                  }

                  else
                  {
                    *v62 = 0;
                    v63 = v62 + 4;
                  }

                  *(a1 + 16) = v63;
                  v74 = *(this + 1);
                  if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
                  {
                    goto LABEL_124;
                  }

                  *(v63 - 1) = *(*this + v74);
                  v60 = *(this + 2);
                  v59 = *(this + 1) + 4;
                  *(this + 1) = v59;
                }

                goto LABEL_125;
              }

              v84 = *(a1 + 16);
              v83 = *(a1 + 24);
              if (v84 >= v83)
              {
                v97 = *(a1 + 8);
                v98 = v84 - v97;
                v99 = (v84 - v97) >> 2;
                v100 = v99 + 1;
                if ((v99 + 1) >> 62)
                {
LABEL_165:
                  sub_19B5BE690();
                }

                v101 = v83 - v97;
                if (v101 >> 1 > v100)
                {
                  v100 = v101 >> 1;
                }

                if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v102 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v102 = v100;
                }

                if (v102)
                {
                  sub_19B4C4FA8(a1 + 8, v102);
                }

                v107 = (v84 - v97) >> 2;
                v108 = (4 * v99);
                v109 = (4 * v99 - 4 * v107);
                *v108 = 0;
                v82 = v108 + 1;
                memcpy(v109, v97, v98);
                v110 = *(a1 + 8);
                *(a1 + 8) = v109;
                *(a1 + 16) = v82;
                *(a1 + 24) = 0;
                if (v110)
                {
                  operator delete(v110);
                }
              }

              else
              {
                *v84 = 0;
                v82 = v84 + 4;
              }

              *(a1 + 16) = v82;
              goto LABEL_152;
            case 4:
              *(a1 + 96) |= 8u;
              v53 = *(this + 1);
              if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
              {
                goto LABEL_154;
              }

              *(a1 + 76) = *(*this + v53);
              goto LABEL_156;
            case 5:
              *(a1 + 96) |= 0x10u;
              v33 = *(this + 1);
              if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
              {
                goto LABEL_154;
              }

              *(a1 + 80) = *(*this + v33);
              goto LABEL_156;
          }
        }
      }

      else if (v23 > 8)
      {
        switch(v23)
        {
          case 9:
            *(a1 + 96) |= 0x20u;
            v79 = *(this + 1);
            if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 84) = *(*this + v79);
            goto LABEL_156;
          case 0xA:
            *(a1 + 96) |= 0x40u;
            v58 = *(this + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 88) = *(*this + v58);
            goto LABEL_156;
          case 0xB:
            *(a1 + 96) |= 1u;
            v34 = *(this + 1);
            if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 56) = *(*this + v34);
            goto LABEL_72;
        }
      }

      else
      {
        switch(v23)
        {
          case 6:
            *(a1 + 96) |= 0x80u;
            v75 = *(this + 1);
            if (v75 >= *(this + 2))
            {
              v78 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v76 = v75 + 1;
              v77 = *(*this + v75);
              *(this + 1) = v76;
              v78 = v77 != 0;
            }

            *(a1 + 92) = v78;
            goto LABEL_158;
          case 7:
            *(a1 + 96) |= 0x100u;
            v54 = *(this + 1);
            if (v54 >= *(this + 2))
            {
              v57 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v55 = v54 + 1;
              v56 = *(*this + v54);
              *(this + 1) = v55;
              v57 = v56 != 0;
            }

            *(a1 + 93) = v57;
            goto LABEL_158;
          case 8:
            *(a1 + 96) |= 4u;
            v25 = *(this + 1);
            v24 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v85 = 0;
              v86 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v87 = v24 - v25;
              if (!v17)
              {
                v87 = 0;
              }

              v88 = (v26 + v25);
              v89 = v25 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_145;
                }

                v90 = *v88;
                *(this + 1) = v89;
                v29 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                --v87;
                ++v88;
                ++v89;
                v14 = v86++ > 8;
                if (v14)
                {
LABEL_121:
                  LODWORD(v29) = 0;
                  goto LABEL_145;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              while (1)
              {
                *(this + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
                if (v14)
                {
                  goto LABEL_121;
                }
              }
            }

LABEL_145:
            *(a1 + 72) = v29;
            goto LABEL_158;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_164:
        v112 = 0;
        return v112 & 1;
      }

LABEL_158:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v112 = v4 ^ 1;
  return v112 & 1;
}