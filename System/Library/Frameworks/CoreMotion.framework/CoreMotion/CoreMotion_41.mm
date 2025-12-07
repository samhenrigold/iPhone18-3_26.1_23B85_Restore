void sub_19B5E80FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E8118(uint64_t *a1, uint64_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v21 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v22 = 256;
  if (*a1)
  {
    sub_19B517F80(v17);
    sub_19B531688(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    v19 = Current;
    v7 = v18;
    v8 = *(a2 + 16);
    *(v18 + 36) |= 4u;
    *(v7 + 7) = v8;
    sub_19B4CF3D0(v18);
    v9 = v18[1];
    v10 = *a2;
    *(v9 + 44) |= 1u;
    *(v9 + 8) = v10;
    v11 = v18[1];
    LODWORD(v10) = *(a2 + 2);
    *(v11 + 44) |= 0x10u;
    *(v11 + 28) = v10;
    v12 = v18[1];
    LODWORD(v10) = *(a2 + 3);
    *(v12 + 44) |= 0x20u;
    *(v12 + 32) = v10;
    v13 = v18[1];
    LODWORD(v10) = *(a2 + 4);
    *(v13 + 44) |= 0x40u;
    *(v13 + 36) = v10;
    v14 = v18;
    v15 = a2[3];
    *(v18 + 36) |= 1u;
    v14[2] = v15;
    sub_19B50AF20(*a1, v17);
    sub_19B51DBD4(v17);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E8298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E82B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v36 = *MEMORY[0x1E69E9840];
  v8 = v3 + 8;
  v7 = *(v3 + 8);
  v27 = v3 + 8;
  (*(v7 + 16))(v3 + 8);
  v28 = 256;
  if (*v6)
  {
    if (v5[1] - *v5 == 16)
    {
      sub_19B517F80(buf);
      sub_19B532C78(buf);
      v9 = v35;
      sub_19B428B50(&v29, "00000000000000000000");
      v10 = *(v9 + 8);
      if (!v10)
      {
        operator new();
      }

      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v11 = v29;
      *(v10 + 16) = v30;
      *v10 = v11;
      sub_19B50AF20(*v6, buf);
      v12 = 0;
      __s[32] = 0;
      v13 = *v5;
      do
      {
        v14 = *v13++;
        snprintf(&__s[v12], 0x1FuLL, "%02x", v14);
        v12 += 2;
      }

      while (v12 != 32);
      sub_19B517F80(&v29);
      sub_19B532D08(&v29);
      v15 = v31;
      sub_19B428B50(&v25, __s);
      v16 = *(v15 + 8);
      if (!v16)
      {
        operator new();
      }

      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v17 = v25;
      *(v16 + 16) = v26;
      *v16 = v17;
      sub_19B50AF20(*v6, &v29);
      sub_19B51DBD4(&v29);
      sub_19B51DBD4(buf);
    }

    else
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E282C0);
      }

      v18 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v19 = (v5[1] - *v5) >> 2;
        *buf = 134217984;
        v34 = v19;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "[CMSpatialLogger] Incorrect gyro bias size %zu", buf, 0xCu);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E282C0);
        }

        v21 = (v5[1] - *v5) >> 2;
        LODWORD(v29) = 134217984;
        *(&v29 + 4) = v21;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[CMSpatialLogger] Incorrect gyro bias size %zu", &v29);
        v23 = v22;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMSpatialLogger::logAudioAccessoryGyroBias(const std::vector<float> &)", "CoreLocation: %s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }
  }

  return (*(*v8 + 24))(v8);
}

void sub_19B5E86A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, uint64_t a10, void *__pa, uint64_t a12, int a13, __int16 a14, char a15, char a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  if (a16 < 0)
  {
    operator delete(__pa);
  }

  sub_19B51DBD4(va1);
  sub_19B51DBD4(&STACK[0xFD0]);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

void sub_19B5E8710(void *a1, int a2)
{
  if (a2)
  {
    sub_19B45E110(a1);
  }

  JUMPOUT(0x19B5E8708);
}

os_log_t sub_19B5E8720()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

os_log_t sub_19B5E8750()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B5E8780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
  }

  v5 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v13 = a2;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
    }

    v10 = 136446210;
    v11 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "motion default ignored,'%{public}s'.", &v10, 12);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<long long>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = long long]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  return a1;
}

uint64_t sub_19B5E8960(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
  }

  v5 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v13 = a2;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
    }

    v10 = 136446210;
    v11 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "motion default ignored,'%{public}s'.", &v10, 12);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<unsigned int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = unsigned int]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  return a1;
}

uint64_t sub_19B5E8B40(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_19B4C5138((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
    }

    v11 = 136446210;
    v12 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "motion default ignored,'%{public}s'.", &v11, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<std::string>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = std::string]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return a1;
}

void sub_19B5E8D48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5E8D80(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
  }

  v3 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
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

    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
    }

    v7 = qword_1ED71C818;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136315138;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 1, "Default handler received message %s", &v12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLGyroBiasEstimatorClientRemote::registerWithGyroBiasEstimatorPrivate(CLGyroBiasEstimatorClientCallback, BOOL, void *)_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B5E8F78(uint64_t a1, float *a2, float *a3, unint64_t a4, float32x4_t a5)
{
  v98 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 136);
  *(a1 + 136) = a4;
  *(a1 + 144) = v9;
  *a5.i64 = (a4 - v9);
  v10 = *a5.i64 / 1000000.0;
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = *(a1 + 24);
  *buf = sub_19B66BFF4(a1, a5);
  *&buf[4] = v11;
  *&buf[8] = v12;
  *v95 = v13;
  v14.f32[0] = sub_19B66C1A4(buf, *a2, a2[1], a2[2]);
  *(a1 + 16) = v14.i32[0];
  *(a1 + 20) = v15;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 24) = v16;
  *(a1 + 48) = 0;
  if (v10 > 0.003)
  {
    v17.i32[1] = 1067743969;
    if (v10 <= 0.04)
    {
      *v17.i32 = v10;
      v18 = (v16 - *(a1 + 36)) / *v17.i32;
      v14.f32[1] = v15;
      *buf = vdiv_f32(vsub_f32(*v14.f32, *(a1 + 28)), vdup_lane_s32(v17, 0));
      *&buf[8] = v18;
      sub_19B5BE720((a1 + 64), buf);
      v19 = 0;
      v14.i64[0] = 0;
      do
      {
        v14.f32[0] = v14.f32[0] + (*&buf[v19] * *&buf[v19]);
        v19 += 4;
      }

      while (v19 != 12);
      if (sqrtf(v14.f32[0]) >= 8.7266)
      {
        v20 = 0;
        v14.i64[0] = 0;
        do
        {
          v14.f32[0] = v14.f32[0] + (*&buf[v20] * *&buf[v20]);
          v20 += 4;
        }

        while (v20 != 12);
        if (sqrtf(v14.f32[0]) <= 52.36)
        {
          *(a1 + 40) = *buf;
          *(a1 + 48) = *&buf[8];
        }

        else
        {
          v21 = 0;
          v22 = 0;
          do
          {
            *v22.i32 = *v22.i32 + (*&buf[v21] * *&buf[v21]);
            v21 += 4;
          }

          while (v21 != 12);
          *v22.i32 = sqrtf(*v22.i32);
          v23 = (*&buf[8] * 52.36) / *v22.i32;
          *(a1 + 40) = vdiv_f32(vmul_f32(*buf, vdup_n_s32(0x42517084u)), vdup_lane_s32(v22, 0));
          *(a1 + 48) = v23;
        }
      }

      else
      {
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      v15 = *(a1 + 20);
    }
  }

  v14.f32[0] = -v15;
  if (v15 > 0.0)
  {
    v14.f32[0] = v15;
  }

  if (v14.f32[0] > 0.87266)
  {
    v24.f32[0] = sub_19B66BFF4((a1 + 184), v14);
    v89 = v24.i32[0];
    v90 = __PAIR64__(v26, v25);
    *v91 = v27;
    *buf = sub_19B66BF70(&v89, a3, v24);
    *&buf[4] = v28;
    *&buf[8] = v29;
    *v95 = v30;
    v31.f32[0] = sub_19B66C31C(buf);
    v32 = 0;
    v86 = v31.f32[0];
    v87 = v33;
    v88 = v34;
    v35 = 0.0;
    do
    {
      v31.f32[0] = *(&v86 + v32) * *(&v86 + v32);
      v35 = v35 + v31.f32[0];
      v32 += 4;
    }

    while (v32 != 12);
    v36.f32[0] = sub_19B66BFF4((a1 + 200), v31);
    v89 = v36.i32[0];
    v90 = __PAIR64__(v38, v37);
    *v91 = v39;
    *buf = sub_19B66BF70(&v89, a2 + 14, v36);
    *&buf[4] = v40;
    *&buf[8] = v41;
    *v95 = v42;
    v43 = sub_19B66C31C(buf);
    v44 = 0;
    v86 = v43;
    v87 = v45;
    v88 = v46;
    v47 = 0.0;
    do
    {
      v47 = v47 + (*(&v86 + v44) * *(&v86 + v44));
      v44 += 4;
    }

    while (v44 != 12);
    v48 = sqrtf(v35);
    if ((v48 + v48) < sqrtf(v47))
    {
      v49 = *(a1 + 160);
      if (v49 <= a4 + 1000000)
      {
        v49 = a4 + 1000000;
      }

      *(a1 + 160) = v49;
    }
  }

  v85 = vdupq_n_s64(a4);
  if (*(a1 + 66))
  {
    sub_19B5E9EFC((a1 + 64), 0, *(a1 + 66));
    v50 = 0;
    *buf = v51;
    *&buf[4] = v52;
    *&buf[8] = v53;
    v54 = 0.0;
    do
    {
      v54 = v54 + (*&buf[v50] * *&buf[v50]);
      v50 += 4;
    }

    while (v50 != 12);
    v55 = sqrtf(v54);
    if (v55 > 3000.0)
    {
      v56 = *(a1 + 160);
      if (a4 + 500000.0 >= v56)
      {
        v56 = a4 + 500000.0;
      }

      *(a1 + 160) = v56;
      v57 = vaddq_s64(v85, xmmword_19B7B7E20);
      *(a1 + 168) = vbslq_s8(vcgtq_u64(*(a1 + 168), v57), *(a1 + 168), v57);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      v58 = off_1EAFE29A0;
      v59 = v55;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = v59;
        _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] high angular acceleration variance detected: %{public}.2f", buf, 0xCu);
      }

      v60 = sub_19B420058();
      if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
        }

        v89 = 134349056;
        v90 = *&v59;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMFwdPredictor] high angular acceleration variance detected: %{public}.2f", &v89, 12);
        v62 = v61;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMFwdPredictor::checkSuppressionConditions(const CMRelDM::IMUData &, const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v61);
        if (v62 != buf)
        {
          free(v62);
        }
      }
    }
  }

  v63 = *(a1 + 160) > a4;
  if (*(a1 + 152) != v63)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v64 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = v63;
      _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] suppress prediction = %{public}d", buf, 8u);
    }

    v65 = sub_19B420058();
    if (*(v65 + 160) > 1 || *(v65 + 164) > 1 || *(v65 + 168) > 1 || *(v65 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      v89 = 67240192;
      LODWORD(v90) = v63;
      LODWORD(v84) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMFwdPredictor] suppress prediction = %{public}d", &v89, v84);
      v67 = v66;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMFwdPredictor::checkSuppressionConditions(const CMRelDM::IMUData &, const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v66);
      if (v67 != buf)
      {
        free(v67);
      }
    }

    *(a1 + 152) = v63;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v73 = vbic_s8(_D1, vmovn_s64(vcgtq_u64(*(a1 + 168), v85)));
  if (*(a1 + 52) != *v73.i32 || *(a1 + 56) != *&v73.i32[1] || *(a1 + 60) != *v73.i32)
  {
    *(a1 + 52) = v73;
    *(a1 + 60) = v73.i32[0];
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v74 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(a1 + 52);
      v76 = *(a1 + 56);
      v77 = *(a1 + 60);
      *buf = 134349568;
      *&buf[4] = v75;
      *v95 = 2050;
      *&v95[2] = v76;
      v96 = 2050;
      v97 = v77;
      _os_log_impl(&dword_19B41C000, v74, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] angular acceleration gain = [%{public}.1f, %{public}.1f, %{public}.1f]", buf, 0x20u);
    }

    v78 = sub_19B420058();
    if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      *&v79 = *(a1 + 52);
      v80 = *(a1 + 56);
      v81 = *(a1 + 60);
      v89 = 134349568;
      v90 = v79;
      *v91 = 2050;
      *&v91[2] = v80;
      v92 = 2050;
      v93 = v81;
      LODWORD(v84) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMFwdPredictor] angular acceleration gain = [%{public}.1f, %{public}.1f, %{public}.1f]", &v89, v84);
      v83 = v82;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMFwdPredictor::checkSuppressionConditions(const CMRelDM::IMUData &, const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v82);
      if (v83 != buf)
      {
        free(v83);
      }
    }
  }

  *(a1 + 184) = *a3;
  *(a1 + 200) = *(a2 + 14);
}

float sub_19B5E9814(uint64_t a1, unint64_t *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 136);
  if (*a2 <= v4)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v12 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v13 = *a2;
      v14 = *(a1 + 136);
      *buf = 134349312;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = v14;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Prediction target timestamp %{public}llu must be after last timestamp in buffer %{public}llu", buf, 0x16u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      v16 = *a2;
      v17 = *(a1 + 136);
      *v68 = 134349312;
      *&v68[4] = v16;
      LOWORD(v69[0]) = 2050;
      *(v69 + 2) = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "Prediction target timestamp %{public}llu must be after last timestamp in buffer %{public}llu", v68, 22);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion CMRelDMFwdPredictor::getPredictedDeltaRotation(uint64_t &)", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v65 = xmmword_19B7B7E30;
    sub_19B41E130(&v65, xmmword_19B7B7E30);
    return *&v65;
  }

  else
  {
    v5 = (*a2 - v4) / 1000000.0;
    v6 = fmin(fmax(v5, 0.0), 0.1);
    *a2 = (v4 + v6 * 1000000.0);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v6;
      *&buf[12] = 2050;
      *&buf[14] = v5;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] prediction interval = %{public}.3f, requested interval = %{public}.3f", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      *v68 = 134349312;
      *&v68[4] = v6;
      LOWORD(v69[0]) = 2050;
      *(v69 + 2) = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMFwdPredictor] prediction interval = %{public}.3f, requested interval = %{public}.3f", v68, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMOQuaternion CMRelDMFwdPredictor::getPredictedDeltaRotation(uint64_t &)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (*(a1 + 152) == 1)
    {
      *buf = xmmword_19B7B7E30;
      v11 = sub_19B41E130(buf, xmmword_19B7B7E30);
    }

    else
    {
      v21 = 0;
      v22 = v6;
      v23 = vadd_f32(vmul_f32(vmul_f32(vmul_n_f32(*(a1 + 40), v22), 0x3F0000003F000000), *(a1 + 52)), *(a1 + 16));
      v24 = (((*(a1 + 48) * v22) * 0.5) * *(a1 + 60)) + *(a1 + 24);
      *v68 = v23;
      *&v68[8] = v24;
      v25 = 0.0;
      do
      {
        v25 = v25 + (*&v68[v21] * *&v68[v21]);
        v21 += 4;
      }

      while (v21 != 12);
      if (sqrtf(v25) > 8.7266)
      {
        v26 = 0;
        v27 = 0.0;
        do
        {
          v27 = v27 + (*&v68[v26] * *&v68[v26]);
          v26 += 4;
        }

        while (v26 != 12);
        v28 = 8.7266 / sqrtf(v27);
        v23 = vmul_n_f32(v23, v28);
        v24 = v24 * v28;
      }

      v66 = vmul_n_f32(v23, v22);
      v67 = v24 * v22;
      *v11.i64 = sub_19B66C264(buf, &v66);
    }

    v20 = *buf;
    v65 = *buf;
    v29 = *a2;
    v30 = *(a1 + 218);
    if (!*(a1 + 218))
    {
      goto LABEL_50;
    }

    v31 = v30 + *(a1 + 216) - 1;
    v32 = *(a1 + 220);
    if (v31 < v32)
    {
      v32 = 0;
    }

    if (*(a1 + 32 * (v31 - v32) + 224) + 20000 <= v29)
    {
LABEL_50:
      v33.f32[0] = sub_19B66BF70(&v65, (a1 + 184), v11);
      v37 = 0;
      v38 = 0.0;
      do
      {
        v38 = v38 + (*(a1 + 16 + v37) * *(a1 + 16 + v37));
        v37 += 4;
      }

      while (v37 != 12);
      v39 = *(a1 + 220);
      v40 = a1 + 224;
      v41 = *(a1 + 216);
      v42 = v41 + v30 >= v39 ? *(a1 + 220) : 0;
      v43 = v40 + 32 * (v41 + v30 - v42);
      *v43 = v29;
      *(v43 + 8) = v33.i32[0];
      *(v43 + 12) = v34;
      *(v43 + 16) = v35;
      *(v43 + 20) = v36;
      *(v43 + 24) = sqrtf(v38);
      if (v39 <= v30)
      {
        v44 = v41 + 1 >= v39 ? v39 : 0;
        v45 = v41 + 1 - v44;
        v41 = v45;
        *(a1 + 216) = v45;
      }

      else
      {
        LOWORD(v30) = v30 + 1;
        *(a1 + 218) = v30;
      }

      if (v30)
      {
        v46 = *(a1 + 136);
        while (1)
        {
          v47 = *(v40 + 32 * v41);
          if (v47 >= v46)
          {
            break;
          }

          if (v41 + 1 >= v39)
          {
            v48 = v39;
          }

          else
          {
            v48 = 0;
          }

          v49 = v41 + 1 - v48;
          v41 = v49;
          *(a1 + 216) = v49;
          LOWORD(v30) = v30 - 1;
          *(a1 + 218) = v30;
          if (!v30)
          {
            return v20;
          }
        }

        if (v47 < v46 + 20000)
        {
          v50 = v40 + 32 * v41;
          v33.i32[0] = *(v50 + 24);
          if (v33.f32[0] > 0.17453)
          {
            v51.f32[0] = sub_19B66BFF4((a1 + 184), v33);
            *v68 = v51.i32[0];
            *&v68[4] = v52;
            *&v68[8] = v53;
            v69[0] = v54;
            *buf = sub_19B66BF70(v50 + 8, v68, v51);
            *&buf[4] = v55;
            *&buf[8] = v56;
            *&buf[12] = v57;
            *(a1 + 544) = v46;
            v58 = sub_19B66C31C(buf);
            v59 = 0;
            *v68 = v58;
            *&v68[4] = v60;
            *&v68[8] = v61;
            v62 = 0.0;
            do
            {
              v62 = v62 + (*&v68[v59] * *&v68[v59]);
              v59 += 4;
            }

            while (v59 != 12);
            *(a1 + 552) = sqrtf(v62);
          }

          if (v41 + 1 >= v39)
          {
            v63 = v39;
          }

          else
          {
            v63 = 0;
          }

          *(a1 + 216) = v41 + 1 - v63;
          *(a1 + 218) = v30 - 1;
        }
      }
    }
  }

  return v20;
}

os_log_t sub_19B5E9ECC()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

float32x2_t *sub_19B5E9EFC(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28800);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 210,variance() on empty buffer.", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28800);
      }

      v24[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 210,variance() on empty buffer.", v24, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMVector<T, N> CMVectorBufferBase<float, 3>::variance(size_t, size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v23 = 1.0 / (a3 - a2);
  result = sub_19B5BEC4C(a1, a2);
  v8 = v23;
  v9 = *result;
  v10 = result[1].f32[0];
  v11 = vmul_n_f32(*result, v23);
  v12 = v23 * v10;
  v13 = a2 + 1;
  if (v13 < a3)
  {
    v14 = v13;
    do
    {
      result = sub_19B5BEC4C(a1, v14);
      v8 = v23;
      v11 = vadd_f32(v11, vmul_n_f32(*result, v23));
      v12 = v12 + (v23 * result[1].f32[0]);
      ++v14;
    }

    while (a3 != v14);
  }

  v15 = vsub_f32(v9, v11);
  *&v7 = vmul_n_f32(vmul_f32(v15, v15), v8);
  v16 = v8 * ((v10 - v12) * (v10 - v12));
  if (v13 < a3)
  {
    do
    {
      v22 = v7;
      result = sub_19B5BEC4C(a1, v13);
      *(&v7 + 1) = *(&v22 + 1);
      v17 = vsub_f32(*result, v11);
      *&v7 = vadd_f32(*&v22, vmul_n_f32(vmul_f32(v17, v17), v23));
      v16 = v16 + (v23 * ((result[1].f32[0] - v12) * (result[1].f32[0] - v12)));
      ++v13;
    }

    while (a3 != v13);
  }

  return result;
}

void sub_19B5EA368(void *a1)
{
  sub_19B445384(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5EA428(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_19B5EA3EC;
  }

  else
  {
    v5 = sub_19B5EA3B0;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_19B5EA4EC(uint64_t a1, void *a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E695DFF8];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, a1);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v7, v10, v9, 0);
  if (isDirectory)
  {
    v13 = 536870913;
    if (a3)
    {
      v13 = 1;
    }

    if (a3 == 1)
    {
      v14 = 1073741825;
    }

    else
    {
      v14 = v13;
    }

    v38 = 0;
    v15 = objc_msgSend_writeToURL_options_error_(a2, v12, isDirectory, v14, &v38);
    if ((v15 & 1) == 0)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v16 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_msgSend_description(v38, v17, v18);
        v22 = objc_msgSend_UTF8String(v19, v20, v21);
        *buf = 136446466;
        v44 = a1;
        v45 = 2082;
        v46 = v22;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v26 = off_1ED71C828;
        v27 = objc_msgSend_description(v38, v24, v25);
        v30 = objc_msgSend_UTF8String(v27, v28, v29);
        v39 = 136446466;
        v40 = a1;
        v41 = 2082;
        v42 = v30;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v26, 16, "Could not write data to disk %{public}s, %{public}s", &v39, 22);
        v32 = v31;
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v33 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v44 = a1;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v39 = 136446210;
      v40 = a1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Could not create NSURL for file: %{public}s", &v39, 12);
      v36 = v35;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    v15 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v15;
}

uint64_t sub_19B5EA8C8(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 768))(a1, &cf))
  {
    v3 = sub_19B5EA4EC(a2, cf, 2);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v4 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = 136446210;
      v11 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Could not serialize data for file %{public}s", &v10, 12);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::saveToFile(const char *) const", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_19B5EAAE8(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = 0;
  sub_19B5E4CEC(v11, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  if ((*(*a1 + 776))(a1, &cf))
  {
    v7 = sub_19B5EA4EC(a2, cf, a3);
  }

  else
  {
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v8 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = a2;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v9 = qword_1ED71C7F0;
    if (os_signpost_enabled(qword_1ED71C7F0))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_19B5E4F34(v11);
  return v7;
}

void sub_19B5EAD2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}

uint64_t sub_19B5EADEC(CFMutableDictionaryRef *a1)
{
  CFDictionaryRemoveAllValues(a1[1]);
  v2 = *(*a1 + 106);

  return v2(a1);
}

void sub_19B5EAE50(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x80000000) == 0)
  {
    cf = 0;
    if (!(*(*a1 + 912))(a1, a2, &cf))
    {
      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(cf) > a3)
      {
        CFArrayRemoveValueAtIndex(cf, a3);
        (*(*a1 + 848))(a1);
LABEL_46:
        CFRelease(cf);
        return;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v21 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v22 = SBYTE3(v40);
        v23 = *__p;
        Count = CFArrayGetCount(cf);
        v25 = __p;
        *buf = 136446722;
        if (v22 < 0)
        {
          v25 = v23;
        }

        v42 = v25;
        v43 = 1026;
        v44 = a3;
        v45 = 2050;
        v46 = Count;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in array of size %{public}ld", buf, 0x1Cu);
        if (SBYTE3(v40) < 0)
        {
          operator delete(*__p);
        }
      }

      v26 = sub_19B420058();
      if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v27 = off_1ED71C828;
      sub_19B431834(a2, v33);
      v28 = v34;
      v29 = v33[0];
      v30 = CFArrayGetCount(cf);
      v31 = v33;
      *__p = 136446722;
      if (v28 < 0)
      {
        v31 = v29;
      }

      *&__p[4] = v31;
      v37 = 1026;
      v38 = a3;
      v39 = 2050;
      v40 = v30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v27, 17, "key %{public}s does not have element %{public}d in array of size %{public}ld", __p, 28);
      v20 = v32;
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    else
    {
      if (!a3)
      {
        (*(*a1 + 888))(a1, a2);
        goto LABEL_46;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v9 = SBYTE3(v40);
        v10 = *__p;
        v11 = CFGetTypeID(cf);
        v12 = __p;
        if (v9 < 0)
        {
          v12 = v10;
        }

        *buf = 136446722;
        v42 = v12;
        v43 = 1026;
        v44 = a3;
        v45 = 2050;
        v46 = v11;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in non-array type %{public}lu", buf, 0x1Cu);
        if (SBYTE3(v40) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v14 = off_1ED71C828;
      sub_19B431834(a2, v33);
      v15 = v34;
      v16 = v33[0];
      v17 = CFGetTypeID(cf);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      *__p = 136446722;
      *&__p[4] = v18;
      v37 = 1026;
      v38 = a3;
      v39 = 2050;
      v40 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v14, 17, "key %{public}s does not have element %{public}d in non-array type %{public}lu", __p, 28);
      v20 = v19;
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLNameValuePair::clearInternal(const CFStringRef, int)", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }

    goto LABEL_46;
  }

  v7 = *(*a1 + 888);

  v7();
}

void sub_19B5EB418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5EB458(CFMutableDictionaryRef *a1, const void *a2)
{
  CFDictionaryRemoveValue(a1[1], a2);
  v3 = *(*a1 + 106);

  return v3(a1);
}

void sub_19B5EB5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5EB5EC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  v4 = *(*a1 + 920);

  return v4(a1, v3);
}

uint64_t sub_19B5EB694(uint64_t a1, const char *a2, CFTypeRef *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5EB708(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B5EB708(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *a3 = 0;
  v4 = (*(*a1 + 904))(a1, a2);
  if (v4 && *a3)
  {
    CFAutorelease(*a3);
  }

  return v4;
}

uint64_t sub_19B5EB770(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5EB7E4(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B5EB7E4(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_19B5EDC64(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      v11 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v16, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint16_t &, int) const", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B5EBAA0(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5EBB14(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B5EBB14(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberSInt16Type, a3))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        LOWORD(v24) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not get value", &v24, 2);
        v11 = v10;
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, short &)", "CoreLocation: %s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v13 = CFGetTypeID(v6);
    if (v13 != CFBooleanGetTypeID() || (sub_19B44525C(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v14 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v15 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v29 = v15;
        v30 = 2112;
        v31 = a2;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v17 = off_1ED71C828;
        v18 = (*(*a1 + 840))(a1);
        v24 = 138412546;
        v25 = v18;
        v26 = 2112;
        v27 = a2;
        LODWORD(v22) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 17, "Unsupported type at %@:%@ (domain:key)", &v24, v22);
        v20 = v19;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, short &, int) const", "CoreLocation: %s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      v12 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v12 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t sub_19B5EBF60(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5EBFD4(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B5EBFD4(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B5EDA58(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      v11 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v16, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int64_t &, int) const", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B5EC280(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5EC2F4(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B5EC2F4(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberLongType, a3))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        LOWORD(v24) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not get value", &v24, 2);
        v11 = v10;
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, long &)", "CoreLocation: %s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v13 = CFGetTypeID(v6);
    if (v13 != CFBooleanGetTypeID() || (sub_19B44525C(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v14 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v15 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v29 = v15;
        v30 = 2112;
        v31 = a2;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v17 = off_1ED71C828;
        v18 = (*(*a1 + 840))(a1);
        v24 = 138412546;
        v25 = v18;
        v26 = 2112;
        v27 = a2;
        LODWORD(v22) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 17, "Unsupported type at %@:%@ (domain:key)", &v24, v22);
        v20 = v19;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, long &, int) const", "CoreLocation: %s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      v12 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v12 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

float sub_19B5EC740(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = 0.0;
  if (sub_19B43D4DC(a1, a2, &v5))
  {
    result = v5;
    *a3 = result;
  }

  return result;
}

uint64_t sub_19B5EC788(uint64_t a1, const char *a2, std::string *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5EC7FC(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B5EC7FC(uint64_t a1, uint64_t a2, std::string *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B4318A4(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      v11 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v16, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, std::string &, int) const", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B5ECAA8(uint64_t a1, const char *a2, CFTypeRef *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5ECB1C(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B5ECB1C(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 904))(a1, a2, &cf);
  if (result)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      v8 = cf;
      *a3 = cf;
      CFAutorelease(v8);
      return 1;
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v10 = v34 >= 0 ? __p : *__p;
        v11 = CFGetTypeID(cf);
        TypeID = CFStringGetTypeID();
        *buf = 136446722;
        v37 = v10;
        v38 = 2050;
        v39 = v11;
        v40 = 2050;
        v41 = TypeID;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v14 = off_1ED71C828;
        sub_19B431834(a2, v28);
        if (v29 >= 0)
        {
          v15 = v28;
        }

        else
        {
          v15 = v28[0];
        }

        v16 = CFGetTypeID(cf);
        v17 = CFStringGetTypeID();
        *__p = 136446722;
        *&__p[4] = v15;
        v32 = 2050;
        v33 = v16;
        v34 = 2050;
        v35 = v17;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v14, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
        v19 = v18;
        if (v29 < 0)
        {
          operator delete(v28[0]);
        }

        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v20 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v21 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v37 = v21;
        v38 = 2112;
        v39 = a2;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v23 = off_1ED71C828;
        v24 = (*(*a1 + 840))(a1);
        *__p = 138412546;
        *&__p[4] = v24;
        v32 = 2112;
        v33 = a2;
        LODWORD(v27) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v23, 17, "Unsupported type at %@:%@ (domain:key)", __p, v27);
        v26 = v25;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

void sub_19B5ECFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B5ED00C(uint64_t a1, const char *a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v10 = sub_19B5ED08C(a1, v9, a3, a4, a5);
  CFRelease(v9);
  return v10;
}

BOOL sub_19B5ED08C(uint64_t a1, CFTypeID a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf, a5))
  {
    return 0;
  }

  v9 = cf;
  v10 = CFGetTypeID(cf);
  v11 = v10 == CFDataGetTypeID();
  v12 = v11;
  if (v11)
  {
    *a3 = CFDataGetBytePtr(v9);
    *a4 = CFDataGetLength(v9);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v14 = CFGetTypeID(v9);
      TypeID = CFDataGetTypeID();
      *buf = 134349312;
      v37 = v14;
      v38 = 2050;
      v39 = TypeID;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v17 = off_1ED71C828;
      v18 = CFGetTypeID(v9);
      v19 = CFDataGetTypeID();
      v32 = 134349312;
      v33 = v18;
      v34 = 2050;
      v35 = v19;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v32, 22);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, const char *&, unsigned int &)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v22 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v23 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v37 = v23;
      v38 = 2112;
      v39 = a2;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v25 = off_1ED71C828;
      v26 = (*(*a1 + 840))(a1);
      v32 = 138412546;
      v33 = v26;
      v34 = 2112;
      v35 = a2;
      LODWORD(v30) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v25, 17, "Unsupported type at %@:%@ (domain:key)", &v32, v30);
      v28 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, const char *&, unsigned int &, int) const", "CoreLocation: %s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }
  }

  CFRelease(cf);
  return v12;
}

BOOL sub_19B5ED4F8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B5ED56C(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

BOOL sub_19B5ED56C(uint64_t a1, CFTypeID a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  v8 = v7 == CFDictionaryGetTypeID();
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = a3[1];
      if (v10)
      {
        CFRelease(v10);
      }

      a3[1] = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
      (*(*a3 + 848))(a3);
    }

    else
    {
      (*(*a3 + 872))(a3);
    }
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v12 = CFGetTypeID(v6);
      TypeID = CFDictionaryGetTypeID();
      *buf = 134349312;
      v35 = v12;
      v36 = 2050;
      v37 = TypeID;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v15 = off_1ED71C828;
      v16 = CFGetTypeID(v6);
      v17 = CFDictionaryGetTypeID();
      v30 = 134349312;
      v31 = v16;
      v32 = 2050;
      v33 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v30, 22);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, CLNameValuePair &)", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v20 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v21 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v35 = v21;
      v36 = 2112;
      v37 = a2;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v23 = off_1ED71C828;
      v24 = (*(*a1 + 840))(a1);
      v30 = 138412546;
      v31 = v24;
      v32 = 2112;
      v33 = a2;
      LODWORD(v28) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v23, 17, "Unsupported type at %@:%@ (domain:key)", &v30, v28);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CLNameValuePair &, int) const", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t sub_19B5EDA58(const void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v5 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_19B420058();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v11[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not get value", v11, 2);
        v8 = v7;
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int64_t &)", "CoreLocation: %s\n", v7);
        if (v8 != buf)
        {
          free(v8);
        }
      }

      return 0;
    }

    return 1;
  }

  buf[0] = 0;
  v9 = CFGetTypeID(a1);
  if (v9 == CFBooleanGetTypeID())
  {
    result = sub_19B44525C(a1, buf);
    if (!result)
    {
      return result;
    }

    *a2 = buf[0];
    return 1;
  }

  return 0;
}

uint64_t sub_19B5EDC64(const void *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt32Type, a2))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v5 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_19B420058();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v11[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not get value", v11, 2);
        v8 = v7;
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int &)", "CoreLocation: %s\n", v7);
        if (v8 != buf)
        {
          free(v8);
        }
      }

      return 0;
    }

    return 1;
  }

  buf[0] = 0;
  v9 = CFGetTypeID(a1);
  if (v9 == CFBooleanGetTypeID())
  {
    result = sub_19B44525C(a1, buf);
    if (!result)
    {
      return result;
    }

    *a2 = buf[0];
    return 1;
  }

  return 0;
}

BOOL sub_19B5EDE70(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFArrayGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v9 = v26 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      *buf = 136446722;
      v29 = v9;
      v30 = 2050;
      v31 = v10;
      v32 = 2050;
      v33 = TypeID;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*__p);
      }
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v13 = off_1ED71C828;
      v14 = v20;
      sub_19B431834(a2, v20);
      if (v21 < 0)
      {
        v14 = v20[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFArrayGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v24 = 2050;
      v25 = v15;
      v26 = 2050;
      v27 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      v18 = v17;
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFArrayRef &) const", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_19B5EE15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B5EE194(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFDataGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v9 = v26 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFDataGetTypeID();
      *buf = 136446722;
      v29 = v9;
      v30 = 2050;
      v31 = v10;
      v32 = 2050;
      v33 = TypeID;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*__p);
      }
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v13 = off_1ED71C828;
      v14 = v20;
      sub_19B431834(a2, v20);
      if (v21 < 0)
      {
        v14 = v20[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFDataGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v24 = 2050;
      v25 = v15;
      v26 = 2050;
      v27 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      v18 = v17;
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFDataRef &, int) const", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_19B5EE480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5EE4DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5EE5B0(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EE61C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EE61C(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695E4D0];
  if (!*a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 896))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v8 = v20 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v16 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v17 = 136446210;
      v18 = v11;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v10, 17, "could not create cf type for key %{public}s", &v17, 12);
      v13 = v12;
      if (v16 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v13);
      if (v13 != __p)
      {
        free(v13);
      }
    }
  }

  return v6 != 0;
}

BOOL sub_19B5EE8C4(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EE930(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EE930(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v19 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v12);
      if (v12 != valuePtr)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5EEBD4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EEC40(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EEC40(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const short &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5EEED8(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EEF44(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EEF44(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v19 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v12);
      if (v12 != valuePtr)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5EF1E8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EF254(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EF254(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5EF4EC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EF558(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EF558(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5EF7F0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EF85C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EF85C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const long &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5EFAF4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EFB60(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EFB60(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const double &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5EFDF8(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EFE64(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EFE64(uint64_t a1, const __CFString *a2, char *cStr)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const char *)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F0104(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_19B5EFE64(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_19B5F017C(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B5EFE64(a1, a2, a3);
}

uint64_t sub_19B5F0190(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5F0264(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F02D0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F02D0(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 896))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return Copy != 0;
}

uint64_t sub_19B5F0568(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(a1[1], a2, a3);
  v4 = *(*a1 + 106);

  return v4(a1);
}

uint64_t sub_19B5F05D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5F06AC(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F0718(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F0718(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695E4D0];
  if (!*a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 928))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v8 = v20 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v16 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v17 = 136446210;
      v18 = v11;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v10, 17, "could not create cf type for key %{public}s", &v17, 12);
      v13 = v12;
      if (v16 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v13);
      if (v13 != __p)
      {
        free(v13);
      }
    }
  }

  return v6 != 0;
}

BOOL sub_19B5F09C0(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F0A2C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F0A2C(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v19 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v12);
      if (v12 != valuePtr)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F0CD0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F0D3C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F0D3C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const short &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F0FD4(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1040(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1040(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v19 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v12);
      if (v12 != valuePtr)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F12E4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1350(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1350(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F15E8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1654(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1654(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F18EC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1958(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1958(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const long &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F1BF0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1C5C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1C5C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const double &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F1EF4(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1F60(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1F60(uint64_t a1, const __CFString *a2, char *cStr)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const char *)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B5F2200(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_19B5F1F60(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_19B5F2278(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B5F1F60(a1, a2, a3);
}

uint64_t sub_19B5F228C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5F2360(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F23CC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F23CC(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 928))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v9, 17, "could not create cf type for key %{public}s", &v16, 12);
      v12 = v11;
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return Copy != 0;
}

uint64_t sub_19B5F2664(uint64_t a1, uint64_t a2, const void *a3)
{
  arg = 0;
  if ((*(*a1 + 912))(a1, a2, &arg))
  {
    CFAutorelease(arg);
    v6 = CFGetTypeID(arg);
    if (v6 == CFArrayGetTypeID())
    {
      Mutable = arg;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      CFAutorelease(Mutable);
      CFArrayAppendValue(Mutable, arg);
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFArrayGetTypeID())
    {
      v11.length = CFArrayGetCount(a3);
      v11.location = 0;
      CFArrayAppendArray(Mutable, a3, v11);
    }

    else
    {
      CFArrayAppendValue(Mutable, a3);
    }
  }

  else
  {
    Mutable = a3;
  }

  return (*(*a1 + 896))(a1, a2, Mutable);
}

uint64_t sub_19B5F27E4(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v4 = (*(*a1 + 864))(a1, v3);
  CFRelease(v3);
  return v4;
}

CFIndex sub_19B5F2890(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
  }

  else
  {
    Count = 1;
  }

  CFRelease(cf);
  return Count;
}

BOOL sub_19B5F29DC(uint64_t a1, CFDataRef *a2)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(a1 + 8), kCFPropertyListXMLFormat_v1_0, 0, 0);
  *a2 = Data;
  return Data != 0;
}

uint64_t sub_19B5F2A2C(uint64_t a1, CFTypeRef *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  error = 0;
  if (v4)
  {
    v5 = v4;
    if (!CFWriteStreamOpen(v4))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v12 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "could not open write stream", buf, 2u);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        goto LABEL_54;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      *v26 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not open write stream", v26, 2);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v14);
      if (v15 == buf)
      {
        goto LABEL_54;
      }

LABEL_53:
      free(v15);
LABEL_54:
      v7 = 0;
LABEL_55:
      CFRelease(v5);
      if (error)
      {
        CFRelease(error);
      }

      return v7;
    }

    v6 = CFPropertyListWrite(*(a1 + 8), v5, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (!error && v6)
    {
      *a2 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
      CFWriteStreamClose(v5);
      v7 = 1;
      goto LABEL_55;
    }

    if (error)
    {
      Code = CFErrorGetCode(error);
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        goto LABEL_34;
      }
    }

    else
    {
      Code = 0;
    }

    Domain = @"unknown error";
LABEL_34:
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(Domain, buf);
      v19 = v35 >= 0 ? buf : *buf;
      *v26 = 134349314;
      *&v26[4] = Code;
      v27 = 2082;
      v28 = v19;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "could not write data, error code, %{public}ld, error domain, %{public}s", v26, 0x16u);
      if (v35 < 0)
      {
        operator delete(*buf);
      }
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v21 = off_1ED71C828;
    sub_19B431834(Domain, v26);
    if (v29 >= 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = *v26;
    }

    v30 = 134349314;
    v31 = Code;
    v32 = 2082;
    v33 = v22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v21, 17, "could not write data, error code, %{public}ld, error domain, %{public}s", &v30, 22);
    v15 = v23;
    if (v29 < 0)
    {
      operator delete(*v26);
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v15);
    if (v15 == buf)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
  }

  v8 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "could not create write stream", buf, 2u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    *v26 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not create write stream", v26, 2);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return 0;
}

BOOL sub_19B5F2FC8(void *a1, const __CFData *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  error = 0;
  v5 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 1uLL, 0, &error);
  if (v5)
  {
    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
    }

    a1[1] = v5;
    (*(*a1 + 848))(a1);
    goto LABEL_35;
  }

  if (!error)
  {
    Code = 0;
    goto LABEL_9;
  }

  Code = CFErrorGetCode(error);
  if (!error)
  {
LABEL_9:
    Domain = @"unknown error";
    goto LABEL_10;
  }

  Domain = CFErrorGetDomain(error);
LABEL_10:
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
  }

  v9 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    if (Domain)
    {
      sub_19B431834(Domain, __p);
      if (v27 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 134349314;
      *&buf[4] = Code;
      v19 = 2082;
      v20 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 134349314;
      *&buf[4] = Code;
      v19 = 2082;
      v20 = "unknown error";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
    }
  }

  v11 = sub_19B420058();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v12 = off_1ED71C828;
    if (Domain)
    {
      sub_19B431834(Domain, buf);
      if (v21 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }
    }

    else
    {
      v13 = "unknown error";
    }

    v22 = 134349314;
    v23 = Code;
    v24 = 2082;
    v25 = v13;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v12, 17, "could not create intermediate property list - %{public}ld (%{public}s)", &v22, 22);
    v15 = v14;
    if (Domain && v21 < 0)
    {
      operator delete(*buf);
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::deserialize(const CFDataRef)", "CoreLocation: %s\n", v15);
    if (v15 != __p)
    {
      free(v15);
    }
  }

LABEL_35:
  if (error)
  {
    CFRelease(error);
  }

  return v5 != 0;
}

void sub_19B5F3378(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  (*(*a1 + 800))(a1, __p);
  if (qword_1EAFE2B58 != -1)
  {
    dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
  }

  v1 = qword_1EAFE2B60;
  if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
  {
    v2 = __p;
    if (v8 < 0)
    {
      v2 = __p[0];
    }

    *buf = 136315138;
    v12 = v2;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v4 = __p;
    if (v8 < 0)
    {
      v4 = __p[0];
    }

    v9 = 136315138;
    v10 = v4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B60, 2, "%s", &v9);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNameValuePair::print() const", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B5F35A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F35C8(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 8);
  if (v4 && CFDictionaryGetCount(v4))
  {
    memset(&context, 0, sizeof(context));
    CFDictionaryApplyFunction(*(a1 + 8), sub_19B5F369C, &context);
    std::string::operator=(a2, &context);
    if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(context.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 8;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 8;
    }

    strcpy(a2, "<empty>\n");
  }
}

void sub_19B5F3680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F369C(const __CFString *a1, const __CFString *a2, std::string *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    sub_19B4318A4(a1, &__p);
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9 = __p.__r_.__value_.__r.__words[0];
      Count = CFDictionaryGetCount(a2);
      p_p = &__p;
      if (v8 < 0)
      {
        p_p = v9;
      }

      snprintf(__str, 0x100uLL, "%s = <dictionary (%ld entries)>:\n", p_p, Count);
      v12 = strlen(__str);
      std::string::append(a3, __str, v12);
      CFDictionaryApplyFunction(a2, sub_19B5F369C, a3);
    }

    else
    {
      v16 = CFGetTypeID(a2);
      if (v16 == CFArrayGetTypeID())
      {
        v17.length = CFArrayGetCount(a2);
        v18 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        *&context.__r_.__value_.__l.__data_ = v18;
        context.__r_.__value_.__r.__words[2] = a3;
        v17.location = 0;
        CFArrayApplyFunction(a2, v17, sub_19B5F4598, &context);
      }

      else
      {
        v19 = CFGetTypeID(a2);
        if (v19 == CFStringGetTypeID())
        {
          memset(&context, 0, sizeof(context));
          if (sub_19B4318A4(a2, &context))
          {
            v20 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __p.__r_.__value_.__r.__words[0];
            }

            p_context = &context;
            if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_context = context.__r_.__value_.__r.__words[0];
            }

            snprintf(__str, 0x100uLL, "%s = %s\n", v20, p_context);
          }

          v22 = strlen(__str);
          std::string::append(a3, __str, v22);
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(context.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v23 = CFGetTypeID(a2);
          if (v23 == CFNumberGetTypeID())
          {
            context.__r_.__value_.__r.__words[0] = 0;
            if (sub_19B444EE4(a2, &context))
            {
              v24 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v24 = __p.__r_.__value_.__r.__words[0];
              }

              snprintf(__str, 0x100uLL, "%s = %0.6f\n", v24, *&context.__r_.__value_.__l.__data_);
            }

            v25 = strlen(__str);
            std::string::append(a3, __str, v25);
          }

          else
          {
            v26 = CFGetTypeID(a2);
            if (v26 == CFBooleanGetTypeID())
            {
              CFBooleanGetValue(a2);
              snprintf(__str, 0x100uLL, "%s = %d\n");
            }

            else
            {
              CFGetTypeID(a2);
              snprintf(__str, 0x100uLL, "%s = <unhandled value type %lu>\n");
            }

            v27 = strlen(__str);
            std::string::append(a3, __str, v27);
          }
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    snprintf(__str, 0x100uLL, "type ID does not match - %lu vs %lu\n", v13, TypeID);
    v15 = strlen(__str);
    std::string::append(a3, __str, v15);
  }
}

void sub_19B5F3A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F3A54(const __CFString *a1, const __CFString *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    memset(&v64, 0, sizeof(v64));
    sub_19B4318A4(a1, &v64);
    v5 = CFGetTypeID(a2);
    if (v5 == CFDictionaryGetTypeID())
    {
      if (qword_1EAFE2B58 != -1)
      {
        dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
      }

      v6 = qword_1EAFE2B60;
      if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
      {
        v7 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
        v8 = v64.__r_.__value_.__r.__words[0];
        Count = CFDictionaryGetCount(a2);
        v10 = &v64;
        if (v7 < 0)
        {
          v10 = v8;
        }

        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = Count;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "\t%s = <dictionary (%ld entries)>:", buf, 0x16u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
        }

        v12 = qword_1EAFE2B60;
        v13 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
        v14 = v64.__r_.__value_.__r.__words[0];
        v15 = CFDictionaryGetCount(a2);
        v16 = &v64;
        if (v13 < 0)
        {
          v16 = v14;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v16;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v15;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 2, "\t%s = <dictionary (%ld entries)>:", &__p, 22);
        v18 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      CFDictionaryApplyFunction(a2, sub_19B5F3A54, 0);
      goto LABEL_99;
    }

    v19 = CFGetTypeID(a2);
    if (v19 == CFArrayGetTypeID())
    {
      v20.length = CFArrayGetCount(a2);
      *&buf[8] = 0uLL;
      v21 = &v64;
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v64.__r_.__value_.__r.__words[0];
      }

      *buf = v21;
      v20.location = 0;
      CFArrayApplyFunction(a2, v20, sub_19B5F4510, buf);
      goto LABEL_99;
    }

    v22 = CFGetTypeID(a2);
    if (v22 == CFStringGetTypeID())
    {
      memset(&__p, 0, sizeof(__p));
      if (sub_19B4318A4(a2, &__p))
      {
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
        }

        v23 = qword_1EAFE2B60;
        if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
        {
          v24 = &v64;
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v24 = v64.__r_.__value_.__r.__words[0];
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = p_p;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "\t%s = %s", buf, 0x16u);
        }

        v26 = sub_19B420058();
        if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2B58 != -1)
          {
            dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
          }

          v27 = &v64;
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v64.__r_.__value_.__r.__words[0];
          }

          v28 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = __p.__r_.__value_.__r.__words[0];
          }

          *v65 = 136315394;
          *&v65[4] = v27;
          v66 = 2080;
          v67 = v28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B60, 2, "\t%s = %s", v65, 22);
          v30 = v29;
          sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v29);
          if (v30 != buf)
          {
            free(v30);
          }
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_99;
    }

    v31 = CFGetTypeID(a2);
    if (v31 == CFNumberGetTypeID())
    {
      *v65 = 0;
      if (!sub_19B444EE4(a2, v65))
      {
        goto LABEL_99;
      }

      if (qword_1EAFE2B58 != -1)
      {
        dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
      }

      v32 = qword_1EAFE2B60;
      if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
      {
        v33 = &v64;
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = v64.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v33;
        *&buf[12] = 2048;
        *&buf[14] = *v65;
        _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEBUG, "\t%s = %0.6f", buf, 0x16u);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) <= 1 && *(v34 + 164) <= 1 && *(v34 + 168) <= 1 && !*(v34 + 152))
      {
        goto LABEL_99;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B58 != -1)
      {
        dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
      }

      v35 = &v64;
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v64.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v35;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = *v65;
      LODWORD(v63) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B60, 2, "\t%s = %0.6f", &__p, v63);
      v37 = v36;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v36);
      if (v37 == buf)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v38 = CFGetTypeID(a2);
      if (v38 == CFBooleanGetTypeID())
      {
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
        }

        v39 = qword_1EAFE2B60;
        if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
        {
          v40 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
          v41 = v64.__r_.__value_.__r.__words[0];
          Value = CFBooleanGetValue(a2);
          v43 = &v64;
          if (v40 < 0)
          {
            v43 = v41;
          }

          *buf = 136315394;
          *&buf[4] = v43;
          *&buf[12] = 1024;
          *&buf[14] = Value;
          _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEBUG, "\t%s = %d", buf, 0x12u);
        }

        v44 = sub_19B420058();
        if (*(v44 + 160) <= 1 && *(v44 + 164) <= 1 && *(v44 + 168) <= 1 && !*(v44 + 152))
        {
          goto LABEL_99;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
        }

        v45 = qword_1EAFE2B60;
        v46 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
        v47 = v64.__r_.__value_.__r.__words[0];
        v48 = CFBooleanGetValue(a2);
        v49 = &v64;
        if (v46 < 0)
        {
          v49 = v47;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v49;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v45, 2, "\t%s = %d", &__p, 18);
        v37 = v50;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v50);
      }

      else
      {
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
        }

        v51 = qword_1EAFE2B60;
        if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
        {
          v52 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
          v53 = v64.__r_.__value_.__r.__words[0];
          v54 = CFGetTypeID(a2);
          v55 = &v64;
          if (v52 < 0)
          {
            v55 = v53;
          }

          *buf = 136315394;
          *&buf[4] = v55;
          *&buf[12] = 2048;
          *&buf[14] = v54;
          _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEBUG, "\t%s = <unhandled value type %lu>", buf, 0x16u);
        }

        v56 = sub_19B420058();
        if (*(v56 + 160) <= 1 && *(v56 + 164) <= 1 && *(v56 + 168) <= 1 && !*(v56 + 152))
        {
          goto LABEL_99;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
        }

        v57 = qword_1EAFE2B60;
        v58 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
        v59 = v64.__r_.__value_.__r.__words[0];
        v60 = CFGetTypeID(a2);
        v61 = &v64;
        if (v58 < 0)
        {
          v61 = v59;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v61;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v60;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v57, 2, "\t%s = <unhandled value type %lu>", &__p, 22);
        v37 = v62;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v62);
      }

      if (v37 == buf)
      {
LABEL_99:
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    free(v37);
    goto LABEL_99;
  }
}

void sub_19B5F44A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F4510(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B5F3A54(v4, a1);
  ++*(a2 + 8);

  CFRelease(v4);
}

void sub_19B5F4598(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B5F369C(v4, a1, *(a2 + 16));
  ++*(a2 + 8);

  CFRelease(v4);
}

os_log_t sub_19B5F4624()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

os_log_t sub_19B5F4654()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE2B60 = result;
  return result;
}

uint64_t sub_19B5F4684(uint64_t a1)
{
  *a1 = &unk_1F0E34578;
  pthread_mutex_destroy(*(a1 + 8));
  v4 = *(a1 + 8);
  v5 = *(v4 + 104);
  if (v5)
  {
    free(v5);
    v4 = *(a1 + 8);
    *(v4 + 104) = 0;
  }

  objc_msgSend_assertInside(*(v4 + 64), v2, v3);

  v6 = *(a1 + 8);
  if (v6)
  {
    MEMORY[0x19EAE76F0](v6, 0x10B0C4016A090D5);
  }

  return a1;
}

void sub_19B5F471C(uint64_t a1)
{
  sub_19B5F4684(a1);

  JUMPOUT(0x19EAE76F0);
}

pthread_t sub_19B5F4754(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  if (pthread_mutex_lock(*(a1 + 8)))
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "error == 0";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v12 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "error == 0";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Core/CSI/CLMachThreadSupport.mm", 184, "lock");
    goto LABEL_51;
  }

  result = pthread_self();
  v5 = *(a1 + 8);
  v6 = *(v5 + 72);
  if (v6 < 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v14 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "info->fCount >= 0";
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v15 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "info->fCount >= 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v16 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "info->fCount >= 0";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Core/CSI/CLMachThreadSupport.mm", 199, "lock");
    goto LABEL_51;
  }

  v7 = *(v5 + 80);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v17 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v18 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v19 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Core/CSI/CLMachThreadSupport.mm", 201, "lock");
LABEL_51:
    __asm { BL              ___stack_chk_fail }
  }

  if (v7 != result)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v9 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v10 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Core/CSI/CLMachThreadSupport.mm", 200, "lock");
    goto LABEL_51;
  }

LABEL_17:
  *(v5 + 72) = v6 + 1;
  *(v5 + 80) = result;
  return result;
}

uint64_t sub_19B5F504C(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(a1 + 8);
  v5 = *(v4 + 72);
  if (v5 <= 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "info->fCount > 0";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v9 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "info->fCount > 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v10 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "info->fCount > 0";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Core/CSI/CLMachThreadSupport.mm", 222, "unlock");
LABEL_28:
    __asm { BL              ___stack_chk_fail }
  }

  v6 = v5 - 1;
  *(v4 + 72) = v6;
  if (!v6)
  {
    *(v4 + 80) = 0;
  }

  result = pthread_mutex_unlock(v4);
  if (result)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "error == 0";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v12 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F80);
      }
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "error == 0";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Core/CSI/CLMachThreadSupport.mm", 228, "unlock");
    goto LABEL_28;
  }

  return result;
}

BOOL sub_19B5F5518(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  return *(*(a1 + 8) + 72) == v3;
}

BOOL sub_19B5F5558(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(*(a1 + 8) + 80);
  return v4 == pthread_self();
}

BOOL sub_19B5F5598(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(*(a1 + 8) + 80);
  return v4 != pthread_self();
}

void sub_19B5F55E0(double *a1, uint64_t a2, int a3, char a4)
{
  v5 = a2;
  v11 = *MEMORY[0x1E69E9840];
  v7 = sub_19B43CCBC(a1, a3);
  v8 = *(v7 + 8);
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 0;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  *(v7 + 224) = 0;
  *(v7 + 273) = v8;
  *v7 = &unk_1F0E32138;
  *(v7 + 200) = &unk_1F0E321A8;
  *(v7 + 276) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = -1;
  *(v7 + 292) = a4;
  *(v7 + 296) = 1127481344;
  v9 = sub_19B42AD98();
  *buf = sub_19B43D788(v9, a1 + 3);
  sub_19B6B3FAC((a1 + 38), buf, a1 + 2, a1 + 4, v5);
}

void sub_19B5F5840(_Unwind_Exception *a1)
{
  sub_19B6B48D4((v1 + 304));
  sub_19B5D3E20(v2);
  sub_19B760468(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5F5870(void *a1)
{
  *a1 = &unk_1F0E32138;
  v2 = a1 + 25;
  a1[25] = &unk_1F0E321A8;
  sub_19B5F5A00(a1);
  sub_19B6B48D4(a1 + 38);
  sub_19B5D3E20(v2);

  return sub_19B760468(a1);
}

void sub_19B5F5904(void *a1)
{
  sub_19B5F5870(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5F593C(uint64_t a1)
{
  sub_19B5F5870((a1 - 200));

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5F5978(uint64_t a1)
{
  sub_19B6B49F4(a1 + 304);
  *(a1 + 276) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = -1;
  *(a1 + 296) = 1127481344;
  sub_19B4431A8(a1 + 200, *(a1 + 16));
  sub_19B442D78(a1 + 200, *(a1 + 24));
  sub_19B442F50(a1 + 200);
  sub_19B5D3F2C(a1 + 200, *(a1 + 32));
  v3 = 2;
  return sub_19B4453D4(a1, &v3);
}

void *sub_19B5F5A00(uint64_t a1)
{
  sub_19B5D3E78((a1 + 200));
  if (*(a1 + 225) == 1)
  {
    v2 = sub_19B442E70();
    sub_19B445814(v2);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC((a1 + 200));

  return sub_19B423148((a1 + 200));
}

void sub_19B5F5A5C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    if (*(a1 + 292) != a2)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
      }

      v3 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 292);
        *buf = 67240192;
        v11 = v4;
        _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "North reference overridden as %{public}d by first client", buf, 8u);
      }

      v5 = sub_19B420058();
      if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
        }

        v6 = *(a1 + 292);
        v9[0] = 67240192;
        v9[1] = v6;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "North reference overridden as %{public}d by first client", v9, 8);
        v8 = v7;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService9Axis::useNorthRef(BOOL)", "CoreLocation: %s\n", v7);
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }
  }

  else
  {
    *(a1 + 292) = a2;
  }
}

void sub_19B5F5C44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v29 = *(a2 + 8);
  *v28.i64 = v4;
  v46 = *(a2 + 16);
  sub_19B6B4D2C(a1 + 304, &v29, &v28, &v46, a2);
  v6 = *(a1 + 320);
  v7 = *(a1 + 344);
  v9 = *(a1 + 328);
  v8 = *(a1 + 336);
  if (*(a1 + 480) <= 0.0)
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v10 = *(a1 + 656) - (v7 * (v9 + v9) - v6 * (v8 + v8));
    v11 = *(a1 + 660) - (-(v7 * (v6 + v6)) - v9 * (v8 + v8));
    v12 = *(a1 + 664) - (v6 * (v6 + v6) + -1.0 + v9 * (v9 + v9));
  }

  v5.i64[0] = *(a1 + 460);
  v5.i32[2] = *(a1 + 468);
  v27 = v5;
  v30 = 0uLL;
  v29 = -1.0;
  v13 = sub_19B41E130(&v30, v5);
  v39 = 0;
  v38 = 0;
  v29 = *a2;
  v13.i32[1] = HIDWORD(v29);
  v13.f32[0] = v6;
  *&v14 = v9;
  *&v15 = v8;
  *&v16 = v7;
  v28.i64[0] = __PAIR64__(v14, v13.u32[0]);
  v28.i64[1] = __PAIR64__(v16, v15);
  sub_19B41E130(&v28, v13);
  v17 = v27;
  v30 = v28;
  v31 = v10;
  v32 = v11;
  v17.i32[3] = *(a1 + 276);
  v33 = v12;
  v34 = v17;
  v35 = *(a1 + 280);
  v40 = *(a1 + 288);
  v19 = sub_19B6B6210((a1 + 304));
  v20 = *(a1 + 296);
  v36 = v19;
  v37 = v20;
  v41 = 1;
  if (*(a1 + 313))
  {
    v21 = 8;
  }

  else
  {
    v21 = 0;
  }

  if (*(a1 + 252))
  {
    v22 = 16;
  }

  else
  {
    v22 = 0;
  }

  v23 = v21 | v22;
  if (*(a1 + 312))
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  if (*(a1 + 315))
  {
    v25 = 0x2000;
  }

  else
  {
    v25 = 0;
  }

  v42 = v24 | v25 | v23;
  if (*(a1 + 292))
  {
    v26 = 15;
  }

  else
  {
    v26 = 7;
  }

  v43 = v26;
  v45 = 0;
  v44 = *(a2 + 22);
  sub_19B41FA70(a1, &v29, v18);
}

void sub_19B5F5E88(uint64_t a1, float *a2)
{
  v2 = a2[3];
  v5 = a2[2];
  v3 = a2[4];
  v4 = v2;
  sub_19B6B63C0(a1 + 304, &v5, &v4, &v3, a2);
}

void sub_19B5F5EE0(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 56);
  v24 = *(a2 + 40);
  v25 = v4;
  v5 = *(a2 + 88);
  v26 = *(a2 + 72);
  v27 = v5;
  v6 = *(a2 + 24);
  *v23 = *(a2 + 8);
  *&v23[16] = v6;
  if ((sub_19B421620() & 0x10) != 0 && (DWORD2(v24) - 1) <= 4)
  {
    DWORD2(v24) = dword_19B7B7EB8[DWORD2(v24) - 1];
  }

  buf[0] = *(a1 + 272);
  v7 = sub_19B6B85E0(a1 + 304, v23, buf, (a1 + 292), a2);
  memset(v22, 0, 12);
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (*(a1 + 313) == 1)
  {
    v11 = *(a1 + 680);
    *v22 = v11;
    *(v22 + 4) = vcvt_f32_f64(*(a1 + 688));
    v10 = v11;
    v9 = *(v22 + 1);
    v8 = *&v22[1];
  }

  if (*(a1 + 8) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
    }

    v12 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 272);
      *buf = 134219008;
      v39 = v10;
      v40 = 2048;
      v41 = v9;
      v42 = 2048;
      v43 = v8;
      v44 = 1024;
      v45 = v13;
      v46 = 1024;
      v47 = v7;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "correctedCompassExt, %.3f, %.3f, %.3f, %u, %u", buf, 0x2Cu);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28FA0);
      }

      v15 = *(a1 + 272);
      v28 = 134219008;
      v29 = v10;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v8;
      v34 = 1024;
      v35 = v15;
      v36 = 1024;
      v37 = v7;
      LODWORD(v21) = 44;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "correctedCompassExt, %.3f, %.3f, %.3f, %u, %u", COERCE_DOUBLE(&v28), v21, v22[0], LODWORD(v22[1]), *v23);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService9Axis::feedCompassData(const CLCompass_Type::Sample *)", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  if (v7)
  {
    v18 = sub_19B43A6F0();
    (*(*v18 + 64))(v18, 1, v22);
  }

  v19 = DWORD2(v24);
  *(a1 + 288) = DWORD2(v24);
  *(a1 + 296) = v24;
  if (v19 <= 0)
  {
    *(a1 + 276) = 0;
    *(a1 + 280) = 0;
  }

  else
  {
    if ((sub_19B421620() & 0x10) != 0)
    {
      *(a1 + 284) = *&v23[20];
      v20 = *&v23[12];
    }

    else
    {
      *(a1 + 284) = *&v23[8];
      v20 = *v23;
    }

    *(a1 + 276) = v20;
  }
}

void sub_19B5F7BB4(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v2 = a2[2];
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_19B508A70(a2);
}

void sub_19B5F7BF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F81EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  sub_19B508C60(va);
  _Unwind_Resume(a1);
}

os_log_t sub_19B5F82BC()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

BOOL sub_19B5F8330()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

void sub_19B5F83A4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C998))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA30, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71C998);
  }

  if (qword_1ED71C9A0 != -1)
  {
    dispatch_once(&qword_1ED71C9A0, &unk_1F0E3A420);
  }

  if (byte_1ED71CA47 < 0)
  {
    v2 = xmmword_1ED71CA30;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71CA30;
    *(a1 + 16) = unk_1ED71CA40;
  }
}

const __CFDictionary *sub_19B5F848C()
{
  v19[2] = *MEMORY[0x1E69E9840];
  result = _CFCopyServerVersionDictionary();
  if (result || (result = _CFCopySystemVersionDictionary()) != 0)
  {
    v1 = result;
    sub_19B444AA4(v18, result);
    CFRelease(v1);
    memset(&v17, 0, sizeof(v17));
    memset(&v16, 0, sizeof(v16));
    memset(&__p, 0, sizeof(__p));
    if ((sub_19B5EC7FC(v18, *MEMORY[0x1E695E1F0], &v16) & 1) == 0)
    {
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        v16.__r_.__value_.__l.__size_ = 6;
        v2 = v16.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v16.__r_.__value_.__s + 23) = 6;
        v2 = &v16;
      }

      strcpy(v2, "<name>");
    }

    if ((sub_19B5EC7FC(v18, *MEMORY[0x1E695E208], &v17) & 1) == 0)
    {
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v17.__r_.__value_.__l.__size_ = 9;
        v3 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v17.__r_.__value_.__s + 23) = 9;
        v3 = &v17;
      }

      strcpy(v3, "<version>");
    }

    if ((sub_19B5EC7FC(v18, *MEMORY[0x1E695E1E8], &__p) & 1) == 0)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      strcpy(p_p, "<build>");
    }

    sub_19B5F8820(&v16.__r_.__value_.__l.__data_, &v17.__r_.__value_.__l.__data_, &v13);
    v5 = std::string::append(&v13, "/", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v14, v7, size);
    v10 = v9->__r_.__value_.__r.__words[0];
    v19[0] = v9->__r_.__value_.__l.__size_;
    *(v19 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1ED71CA47 < 0)
    {
      operator delete(xmmword_1ED71CA30);
    }

    *&xmmword_1ED71CA30 = v10;
    *(&xmmword_1ED71CA30 + 1) = v19[0];
    *(&xmmword_1ED71CA30 + 15) = *(v19 + 7);
    byte_1ED71CA47 = v11;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    return sub_19B445384(v18);
  }

  else
  {
    if (byte_1ED71CA47 < 0)
    {
      *(&xmmword_1ED71CA30 + 1) = 6;
      v12 = xmmword_1ED71CA30;
    }

    else
    {
      v12 = &xmmword_1ED71CA30;
      byte_1ED71CA47 = 6;
    }

    strcpy(v12, "<null>");
  }

  return result;
}

void sub_19B5F8798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  sub_19B445384((v34 - 72));
  _Unwind_Resume(a1);
}

char *sub_19B5F8820@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_19B50FF5C(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_19B5F88EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C9A8, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED71C9A8);
    a1 = v3;
    if (v4)
    {
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA48, &dword_19B41C000);
      __cxa_guard_release(&qword_1ED71C9A8);
      a1 = v3;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5F8A24;
  block[3] = &unk_1E75327D8;
  block[4] = a1;
  if (qword_1ED71C9B0 != -1)
  {
    dispatch_once(&qword_1ED71C9B0, block);
  }

  if (byte_1ED71CA5F < 0)
  {
    sub_19B4C5138(a2, xmmword_1ED71CA48, *(&xmmword_1ED71CA48 + 1));
  }

  else
  {
    *a2 = xmmword_1ED71CA48;
    *(a2 + 16) = unk_1ED71CA58;
  }
}

double sub_19B5F8A24()
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 128;
  if (sysctlbyname("hw.model", v5, &v4, 0, 0))
  {
    v0 = "";
  }

  else
  {
    v0 = v5;
  }

  sub_19B428B50(&v2, v0);
  if (byte_1ED71CA5F < 0)
  {
    operator delete(xmmword_1ED71CA48);
  }

  result = *&v2;
  xmmword_1ED71CA48 = v2;
  unk_1ED71CA58 = v3;
  return result;
}

void sub_19B5F8AE4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C9B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C9B8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA60, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71C9B8);
  }

  if (qword_1ED71C9C0 != -1)
  {
    dispatch_once(&qword_1ED71C9C0, &unk_1F0E3A440);
  }

  if (byte_1ED71CA77 < 0)
  {
    v2 = xmmword_1ED71CA60;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71CA60;
    *(a1 + 16) = unk_1ED71CA70;
  }
}

void sub_19B5F8BCC()
{
  sub_19B5FD090(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFStringGetTypeID())
    {
      v4 = CFURLCreateWithFileSystemPath(v1, v2, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFBundleCreate(v1, v4);
        if (v6)
        {
          v7 = v6;
          ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, *MEMORY[0x1E695E500]);
          if (ValueForInfoDictionaryKey)
          {
            v9 = ValueForInfoDictionaryKey;
            v10 = CFGetTypeID(ValueForInfoDictionaryKey);
            if (v10 == CFStringGetTypeID())
            {
              sub_19B431834(v9, &__p);
              if (byte_1ED71CA60[23] < 0)
              {
                operator delete(*byte_1ED71CA60);
              }

              *byte_1ED71CA60 = __p;
            }
          }

          CFRelease(v2);
          v2 = v5;
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v2);
        v2 = v7;
      }
    }

    CFRelease(v2);
  }
}

void sub_19B5F8D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F8D44(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71C9C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C9C8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71CA78, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71C9C8);
  }

  if (qword_1ED71C9D0 != -1)
  {
    dispatch_once(&qword_1ED71C9D0, &unk_1F0E3A460);
  }

  if (byte_1ED71CA8F < 0)
  {
    v2 = xmmword_1ED71CA78;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71CA78;
    *(a1 + 16) = unk_1ED71CA88;
  }
}

uint64_t sub_19B5F8E2C()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      sub_19B431834(CFProperty, &v6);
      if (byte_1ED71CA8F < 0)
      {
        operator delete(xmmword_1ED71CA78);
      }

      xmmword_1ED71CA78 = v6;
      unk_1ED71CA88 = v7;
      CFRelease(v5);
    }

    return IOObjectRelease(v3);
  }

  return result;
}

BOOL sub_19B5F8EE8()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if (qword_1ED71CA28 != -1)
  {
    dispatch_once(&qword_1ED71CA28, &unk_1F0E3A5C0);
  }

  return byte_1ED71C978 == 1;
}

uint64_t sub_19B5F8F74()
{
  if (qword_1ED71C9E8 != -1)
  {
    dispatch_once(&qword_1ED71C9E8, &unk_1F0E3A4C0);
  }

  return byte_1ED71C972;
}

void *sub_19B5F8FBC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_1ED71C9E0 != -1)
  {
    dispatch_once(&qword_1ED71C9E0, &unk_1F0E3A4A0);
  }

  if (byte_1ED71C971 == 1)
  {
    v3 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
    result = objc_msgSend_isiOSAppOnMac(v3, v4, v5);
  }

  else
  {
    result = 0;
  }

  byte_1ED71C972 = result;
  return result;
}

uint64_t sub_19B5F9028()
{
  if (qword_1ED71CA00 != -1)
  {
    dispatch_once(&qword_1ED71CA00, &unk_1F0E3A520);
  }

  return byte_1ED71C975;
}

void sub_19B5F9070()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      byte_1ED71C975 = CFBooleanGetValue(v1) != 0;
LABEL_16:
      CFRelease(v1);
      return;
    }
  }

  if (qword_1EAFE2B38 != -1)
  {
    dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
  }

  v3 = qword_1EAFE2B40;
  if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "unexpected MGCopyAnswer answer", buf, 2u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B38 != -1)
    {
      dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B40, 17, "unexpected MGCopyAnswer answer", v7, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLPlatformInfo::supportsCrudeProx()_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (v1)
  {
    goto LABEL_16;
  }
}

uint64_t sub_19B5F9308()
{
  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 1;
  if (((dword_1ED71C97C - 139) > 0x34 || ((1 << (dword_1ED71C97C + 117)) & 0x1FFFFFE000001DLL) == 0) && (dword_1ED71C97C - 233) >= 8 && (dword_1ED71C97C - 78) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B5F93B8()
{
  if (qword_1ED71C9D8 != -1)
  {
    dispatch_once(&qword_1ED71C9D8, &unk_1F0E3A480);
  }

  if (byte_1ED71C970)
  {
    return 1;
  }

  if (qword_1ED71CA18 != -1)
  {
    dispatch_once(&qword_1ED71CA18, &unk_1F0E3A580);
  }

  return BYTE3(qword_1ED71CA20) & 1;
}

uint64_t sub_19B5F943C()
{
  if (qword_1ED71CA08 != -1)
  {
    dispatch_once(&qword_1ED71CA08, &unk_1F0E3A540);
  }

  return byte_1ED71C976;
}

void *sub_19B5F9484(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v6 = objc_msgSend_processName(v3, v4, v5);
  result = objc_msgSend_compare_(v6, v7, @"locationd");
  byte_1ED71C976 = result == 0;
  return result;
}

void sub_19B5F94C4(uint64_t a1, const char *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"IOPropertyMatch";
  v11[0] = &unk_1F0E6A200;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v11, &v10, 1);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v2);
  if (MatchingService)
  {
    byte_1ED71C977 = 1;
    IOObjectRelease(MatchingService);
  }

  else
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E3A5E0);
    }

    v4 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Compass service missing", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E3A5E0);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 0, "Compass service missing", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPlatformInfo::supportsCompass()_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }
}

BOOL sub_19B5F972C()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  return dword_1ED71C97C == 204;
}

os_log_t sub_19B5F97DC()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE2B40 = result;
  return result;
}

void sub_19B5F980C()
{
  v0 = objc_autoreleasePoolPush();
  byte_1ED71C978 = 0;
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = v2;
    CFAutorelease(v2);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v3))
      {
        v5 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", v1);
        if (v5)
        {
          v6 = v5;
          CFAutorelease(v5);
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
            {
              byte_1ED71C978 = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_19B5F9920()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

os_log_t sub_19B5FC3A0()
{
  result = os_log_create("com.apple.locationd.Motion", "Swimming");
  qword_1EAFE2980 = result;
  return result;
}

void sub_19B5FC534(void *a1@<X8>)
{
  if (qword_1ED71CA90 != -1)
  {
    dispatch_once_f(&qword_1ED71CA90, 0, sub_19B5FC3D0);
  }

  v2 = *(qword_1ED71CA98 + 144);
  *a1 = *(qword_1ED71CA98 + 136);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void *sub_19B5FC5A8(void *a1)
{
  *a1 = &unk_1F0E33090;
  v2 = a1[18];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B60DA60(a1);
}

void sub_19B5FC608(void *a1)
{
  sub_19B5FC5A8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5FC644(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5FC680(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E37550))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B5FCC64(int a1@<W0>, std::string *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
    {
      v16.__r_.__value_.__r.__words[0] = 0x304020100;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "no mutable store path for type, %{public}d", &v16, 8u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v16, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    v17[0] = 0x304020100;
    _os_log_send_and_compose_impl(2, 0, &v16, 1628, &dword_19B41C000, off_1ED71C828, 0, "no mutable store path for type, %{public}d", v17, 8);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
    goto LABEL_36;
  }

  if (a1)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v16.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v16.__r_.__value_.__r.__words[0]) = a1;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "could not get mutable store path for type, %{public}d", &v16, 8u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v16, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28240);
    }

    LODWORD(v17[0]) = 67240192;
    HIDWORD(v17[0]) = a1;
    _os_log_send_and_compose_impl(2, 0, &v16, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not get mutable store path for type, %{public}d", v17, 8);
    v10 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v13);
LABEL_36:
    if (v10 != &v16)
    {
      free(v10);
    }

LABEL_38:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  sub_19B428B50(__p, "root");
  sub_19B432230(__p, &v16);
  sub_19B428B50(v17, "/Library/Caches/locationd/");
  if ((v18 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = v17[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B5FD03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5FD090(std::string *a1@<X8>)
{
  sub_19B432654(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework", 0x31uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_19B5FD0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5FE8D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v26, v25, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5FE900(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = CLConnectionMessage::name(*a2);
  if (*(v5 + 23) >= 0)
  {
    v7 = objc_msgSend_stringWithUTF8String_(v4, v6, v5);
  }

  else
  {
    v7 = objc_msgSend_stringWithUTF8String_(v4, v6, *v5);
  }

  v8 = v7;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v9, v14, v10, v11, v12, v13, 0);
  if (*a2)
  {
    CLConnectionMessage::getDictionaryOfClasses(*a2, v15);
  }

  v16 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v16, sel__handleDaemonMessage_data_, v8);
}

void sub_19B5FE9F8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A38 != -1)
  {
    dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
  }

  v2 = qword_1EAFE2A40;
  if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4[0] = 68289283;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2049;
    v8 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client connection interrupt, self:%{private}p}", v4, 0x1Cu);
  }
}

void sub_19B5FEBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5FF128(uint64_t a1)
{
  objc_loadWeak((*(a1 + 32) + 32));
  result = objc_opt_respondsToSelector();
  if (result)
  {
    Weak = objc_loadWeak((*(a1 + 32) + 32));
    v4 = objc_loadWeak((*(a1 + 32) + 40));

    return MEMORY[0x1EEE66B58](Weak, sel_distributedSensingManager_didFailToSubscribeToVehicleState_, v4);
  }

  return result;
}

uint64_t sub_19B5FF1A8(uint64_t a1)
{
  objc_loadWeak((*(a1 + 32) + 32));
  result = objc_opt_respondsToSelector();
  if (result)
  {
    Weak = objc_loadWeak((*(a1 + 32) + 32));
    v4 = objc_loadWeak((*(a1 + 32) + 40));

    return MEMORY[0x1EEE66B58](Weak, sel_distributedSensingManager_didUpdateVehicleState_, v4);
  }

  return result;
}

void sub_19B5FF29C(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    sub_19B428B50(&__p, "DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_19B5FF440;
    v3[4] = &unk_1E7532DC8;
    v3[5] = *(a1 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v5 < 0)
    {
      operator delete(__p);
    }

    v6 = @"kCLConnectionMessageSubscribeKey";
    v7[0] = MEMORY[0x1E695E118];
    v3[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v7, &v6, 1);
    sub_19B5FFA44(&__p, v3);
  }
}

void sub_19B5FF3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v22)
  {
    sub_19B41FFEC(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5FF440(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonMessage_data_, @"DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
}

void sub_19B5FF564(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    sub_19B428B50(&__p, "DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_19B5FF708;
    v3[4] = &unk_1E7532DC8;
    v3[5] = *(a1 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v5 < 0)
    {
      operator delete(__p);
    }

    v6 = @"kCLConnectionMessageSubscribeKey";
    v7[0] = MEMORY[0x1E695E110];
    v3[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v7, &v6, 1);
    sub_19B5FFA44(&__p, v3);
  }
}

void sub_19B5FF6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v22)
  {
    sub_19B41FFEC(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5FF708(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonMessage_data_, @"DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
}

void sub_19B5FF8F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5FF964;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

os_log_t sub_19B5FFA14()
{
  result = os_log_create("com.apple.locationd.Motion", "DistributedSensing");
  qword_1EAFE2A40 = result;
  return result;
}

void sub_19B5FFAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B600060(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0x3F80000000000000;
  sub_19B41E130((a1 + 28), 0);
  *(a1 + 44) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 44), xmmword_19B7B7E30);
  v2 = 0;
  *(a1 + 64) = 0xA000000000;
  *(a1 + 10320) = 0xFFFFFFFFLL;
  *(a1 + 10328) = 0;
  *(a1 + 1352) = 0xA000000000;
  *(a1 + 10336) = 0u;
  *(a1 + 10376) = 0x200000000;
  *(a1 + 10400) = 0x200000000;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  do
  {
    if (v2 > 2)
    {
      v3 = sub_19B6001C0(v5, v2, v2);
      if (v2 > 5)
      {
        *v3 = 952607315;
      }

      else
      {
        *v3 = 980151802;
      }
    }

    else
    {
      *sub_19B6001C0(v5, v2, v2) = 944879383;
    }

    ++v2;
  }

  while (v2 != 9);
  sub_19B60054C(a1 + 10684, v5);
  return a1;
}

uint64_t sub_19B6001C0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a2;
      v22 = 2048;
      v23 = 9;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a2;
      v18 = 2048;
      v19 = 9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9>::operator()(size_t, size_t) [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = 9;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9>::operator()(size_t, size_t) [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1 + 4 * (9 * a3 + a2);
}

uint64_t sub_19B60054C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v33 = *MEMORY[0x1E69E9840];
LABEL_2:
  v6 = v5++;
  v7 = v5;
  while (1)
  {
    v8 = sub_19B6066E8(a2, v6, v7);
    v9 = v8 - sub_19B6066E8(a2, v7, v6);
    if (v9 <= 0.0)
    {
      v9 = -v9;
    }

    if (v9 > 1.0e-16)
    {
      break;
    }

    if (++v7 == 9)
    {
      v4 = v6 > 6;
      if (v5 != 8)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }
  }

  if (!v4)
  {
    return 0;
  }

LABEL_10:
  v10 = 9;
  v11 = 8;
  while (1)
  {
    v12 = v11;
    v13 = sub_19B6066E8(a2, v11, v11);
    v14 = v10;
    if (v10 <= 8)
    {
      do
      {
        v15 = *sub_19B606A74(a1 + 36, v12, v14);
        v16 = *sub_19B606A74(a1 + 36, v12, v14);
        v13 = v13 + (-(v15 * v16) * *sub_19B606DFC(a1, v14++));
      }

      while (v14 != 9);
    }

    *sub_19B606DFC(a1, v12) = v13;
    if (*sub_19B606DFC(a1, v12) <= 0.0)
    {
      break;
    }

    if (!v12)
    {
      return 1;
    }

    v17 = v10 - 2;
    do
    {
      v18 = v17;
      v19 = sub_19B6066E8(a2, v17, v12);
      v20 = v10;
      if (v10 <= 8)
      {
        do
        {
          v21 = *sub_19B606A74(a1 + 36, v18, v20);
          v22 = *sub_19B606A74(a1 + 36, v12, v20);
          v19 = v19 + (-(v21 * v22) * *sub_19B606DFC(a1, v20++));
        }

        while (v20 != 9);
      }

      v23 = v19 / *sub_19B606DFC(a1, v12);
      *sub_19B606A74(a1 + 36, v18, v12) = v23;
      v17 = v18 - 1;
    }

    while (v18);
    v11 = v12 - 1;
    v10 = v12;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
  }

  v24 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v32 = v12;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", buf, 0xCu);
  }

  v25 = sub_19B420058();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v29 = 134217984;
    v30 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "D(%zu) <= 0 non-positive definite matrix!", &v29);
    v27 = v26;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<float, 9>::factor(const CMMatrix<T, N, N> &) [T = float, N = 9]", "CoreLocation: %s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  return 0;
}

double sub_19B600908(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 10376) = 0;
  *(a1 + 10400) = 0;
  memset(v3, 0, 32);
  *&v3[32] = 0x3F80000000000000;
  sub_19B41E130(&v3[24], 0);
  v4 = xmmword_19B7B7E30;
  sub_19B41E130(&v4, xmmword_19B7B7E30);
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = *&v3[12];
  *(a1 + 24) = *&v3[20];
  *(a1 + 28) = *&v3[24];
  *(a1 + 44) = v4;
  *a1 = 0;
  result = 0.0;
  *(a1 + 10336) = 0u;
  return result;
}

void sub_19B6009AC(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_19B600A78(a2, i);
    v6 = sub_19B5BC0F0(a1 + 4, i);
    *v6 = v5 + *v6;
    v7 = sub_19B600A78(a2, i + 3);
    v8 = sub_19B5BC0F0(a1 + 16, i);
    *v8 = v7 + *v8;
  }

  v9 = *(a2 + 32);
  v15 = *(a2 + 24);
  v16 = v9;
  *v10.i64 = sub_19B66C264(&v14, &v15);
  *(a1 + 28) = sub_19B66BF70(&v14, (a1 + 28), v10);
  *(a1 + 32) = v11;
  *(a1 + 36) = v12;
  *(a1 + 40) = v13;
}

float sub_19B600A78(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 9;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 9>::operator[](const size_t) const [T = float, N = 9]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

void sub_19B600C70(uint64_t a1, float32x2_t *a2, float *a3, uint64_t a4, float a5, float a6)
{
  v10 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  do
  {
    v11 = v11 + (a2->f32[v10] * a2->f32[v10]);
    ++v10;
  }

  while (v10 != 3);
  if (sqrtf(v11) <= 0.000001)
  {
    goto LABEL_22;
  }

  v12 = 0;
  v13 = 0.0;
  do
  {
    v13 = v13 + (a3[v12] * a3[v12]);
    ++v12;
  }

  while (v12 != 3);
  if (sqrtf(v13) <= 0.000001)
  {
LABEL_22:
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v29 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Unexpected 0 accel magnitude.", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      LOWORD(v38[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMRelDMSensorFusionMekf] Unexpected 0 accel magnitude.", v38, 2);
      v32 = v31;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::relativeGravityUpdate(const CMVector3d &, const CMVector3d &, float, float, uint64_t, BOOL)", "CoreLocation: %s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      *v15.i32 = *v15.i32 + (a2->f32[v14] * a2->f32[v14]);
      ++v14;
    }

    while (v14 != 3);
    v16 = 0;
    v17 = *a2;
    v18 = 0.0;
    do
    {
      v18 = v18 + (a3[v16] * a3[v16]);
      ++v16;
    }

    while (v16 != 3);
    *v15.i32 = sqrtf(*v15.i32);
    v33 = v15;
    v19 = a2[1].f32[0] / *v15.i32;
    v20 = sqrtf(v18);
    v21 = sub_19B66C1A4((a1 + 28), *a3 / v20, a3[1] / v20, a3[2] / v20);
    v22 = 0;
    v40 = vsub_f32(vdiv_f32(v17, vdup_lane_s32(v33, 0)), __PAIR64__(LODWORD(v23), LODWORD(v21)));
    v41 = v19 - v24;
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    v44 = 0u;
    v45 = 0u;
    *buf = 0u;
    v43 = 0u;
    LODWORD(v35) = 0;
    *(&v35 + 1) = v24;
    *(&v35 + 2) = -v23;
    *(&v35 + 3) = -v24;
    LODWORD(v36) = 0;
    *(&v36 + 4) = __PAIR64__(LODWORD(v23), LODWORD(v21));
    *(&v36 + 3) = -v21;
    v37 = 0;
    do
    {
      *(&v35 + v22) = *(&v35 + v22) + *(&v35 + v22);
      v22 += 4;
    }

    while (v22 != 36);
    v25 = 0;
    v38[0] = v35;
    v38[1] = v36;
    v39 = v37;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v27 = sub_19B601068(v38, v25, i);
        *sub_19B6013F4(buf, v25, i + 6) = v27;
      }

      ++v25;
    }

    while (v25 != 3);
    if (a5 == 0.0)
    {
      a5 = (a4 - *(a1 + 10352)) * 0.000001;
    }

    v28 = ((0.0000009617 / a5) + 0.021638) + ((0.0000009617 / a5) + 0.021638);
    if (v28 < a6)
    {
      v28 = a6;
    }

    *v34 = v28;
    *&v34[1] = v28;
    *&v34[2] = v28;
    sub_19B601780(&v35, (a1 + 10504), buf, v34, &v40);
    sub_19B6009AC(a1, &v35);
    *(a1 + 10352) = a4;
  }
}

float sub_19B601068(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a2;
      v22 = 2048;
      v23 = 3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a2;
      v18 = 2048;
      v19 = 3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3>::operator()(size_t, size_t) const [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = 3;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = 3;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3>::operator()(size_t, size_t) const [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

uint64_t sub_19B6013F4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a2;
      v22 = 2048;
      v23 = 3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a2;
      v18 = 2048;
      v19 = 3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3, 9>::operator()(size_t, size_t) [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = 9;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3, 9>::operator()(size_t, size_t) [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1 + 4 * (3 * a3 + a2);
}

void sub_19B601780(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v51 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  while (1)
  {
    v10 = 0;
    v11 = -1;
    do
    {
      v12 = sub_19B606FF4(a3, v9, v10);
      v13 = v11;
      if (v10)
      {
        do
        {
          v14 = sub_19B606FF4(a3, v9, v13);
          v12 = v12 + (v14 * *sub_19B606A74((a2 + 9), v13--, v10));
        }

        while (v13 != -1);
      }

      v50[v10] = v12;
      v49[v10] = v12 * *sub_19B606DFC(a2, v10);
      ++v10;
      ++v11;
    }

    while (v10 != 9);
    v15 = sub_19B5D6144(a4, v9);
    v16 = v15 + (v50[0] * v49[0]);
    if (v16 <= 0.0)
    {
      break;
    }

    v17 = 1.0 / v16;
    *a2 = *a2 * ((1.0 / v16) * sub_19B5D6144(a4, v9));
    for (i = 1; i != 9; ++i)
    {
      v19 = v50[i];
      v20 = v16 + (v19 * v49[i]);
      if (v20 <= 0.0)
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
        }

        v33 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v48 = v9;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
          }

          v45 = 134217984;
          v46 = v9;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "%zu: alpha <= 0, matrix ! positive definite", &v45);
          v36 = v35;
          sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 3UL]", "CoreLocation: %s\n", v35);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return;
      }

      v21 = -(v19 * v17);
      v17 = 1.0 / v20;
      v22 = sub_19B606DFC(a2, i);
      v23 = 0;
      *v22 = (v16 * (1.0 / v20)) * *v22;
      do
      {
        v24 = *sub_19B606A74((a2 + 9), v23, i);
        v25 = v49[v23];
        v26 = sub_19B606A74((a2 + 9), v23, i);
        v27 = v49[i];
        *v26 = v24 + (v25 * v21);
        v49[v23++] = v25 + (v27 * v24);
      }

      while (i != v23);
      v16 = v20;
    }

    v28 = 0;
    v29 = v17 * sub_19B5D6144(a5, v9);
    do
    {
      v30 = v49[v28];
      v31 = sub_19B607380(&v42, v28);
      *v31 = *v31 + (v29 * v30);
      ++v28;
    }

    while (v28 != 9);
    if (++v9 == 3)
    {
      v32 = v43;
      *a1 = v42;
      *(a1 + 16) = v32;
      *(a1 + 32) = v44;
      return;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
  }

  v37 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v48 = v9;
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v38 = sub_19B420058();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v45 = 134217984;
    v46 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "%zu: alpha <= 0, matrix ! positive definite", &v45);
    v40 = v39;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 3UL]", "CoreLocation: %s\n", v39);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

void sub_19B601CE8(uint64_t a1, float a2, float a3)
{
  v6 = 0;
  *&v11[0] = *(a1 + 16);
  DWORD2(v11[0]) = *(a1 + 24);
  do
  {
    *(v11 + v6) = -*(v11 + v6);
    v6 += 4;
  }

  while (v6 != 12);
  v7 = 0;
  v12 = *&v11[0];
  v13 = DWORD2(v11[0]);
  memset(v11, 0, 108);
  do
  {
    *sub_19B6013F4(v11, v7, v7 + 3) = 1065353216;
    ++v7;
  }

  while (v7 != 3);
  v8 = (((a2 * 0.021638) * a2) + (a2 * 0.0000009617)) + (((a2 * 0.021638) * a2) + (a2 * 0.0000009617));
  if (v8 <= ((a2 * a3) * a2))
  {
    v8 = (a2 * a3) * a2;
  }

  *v10 = v8;
  *&v10[1] = v8;
  *&v10[2] = v8;
  sub_19B601780(v9, (a1 + 10504), v11, v10, &v12);
  sub_19B6009AC(a1, v9);
}

unsigned __int16 *sub_19B601E04(uint64_t a1, float32x2_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v104 = *MEMORY[0x1E69E9840];
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v10.f32[0] = sub_19B66BFF4(a2 + 3, 0);
  *buf = v10.i32[0];
  *&buf[4] = v11;
  *&buf[8] = v12;
  *&buf[12] = v13;
  v14 = 0;
  v84.i32[0] = sub_19B66BF70(a1 + 28, buf, v10);
  v84.i32[1] = v15;
  v85 = v16;
  v86 = v17;
  do
  {
    v18 = sub_19B5D6144(a3 + 20, v14);
    v19 = v18 - sub_19B5D6144(a2, v14);
    *sub_19B5BC0F0(&v81, v14) = v19;
    *sub_19B602590(v87, v14, v14) = 1065353216;
    *sub_19B602590(v87, v14 + 3, v14 + 6) = 1065353216;
    ++v14;
  }

  while (v14 != 3);
  v20.f32[0] = sub_19B66C1A4(&v84, v81, v82, v83);
  v81 = v20.f32[0];
  v82 = v21;
  v83 = v22;
  v23.f32[0] = sub_19B66BFF4(a2 + 3, v20);
  *buf = v23.i32[0];
  *&buf[4] = v24;
  *&buf[8] = v25;
  *&buf[12] = v26;
  v27.f32[0] = sub_19B66BF70(a3, buf, v23);
  v80.i64[0] = __PAIR64__(v28, v27.u32[0]);
  v80.i64[1] = __PAIR64__(v30, v29);
  v31.f32[0] = sub_19B66BF70(&v84, v80.f32, v27);
  *buf = v31.i32[0];
  *&buf[4] = v32;
  *&buf[8] = v33;
  *&buf[12] = v34;
  v35.f32[0] = sub_19B66BFF4(&v84, v31);
  v90 = v35.i32[0];
  v91 = __PAIR64__(v37, v36);
  v92[0] = v38;
  v39 = sub_19B66BF70(buf, &v90, v35);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v80.i64[0] = __PAIR64__(LODWORD(v40), LODWORD(v39));
  v80.i64[1] = __PAIR64__(LODWORD(v44), LODWORD(v42));
  v46 = sub_19B66C31C(&v80);
  v47 = 0;
  *v79 = v46;
  v79[1] = v48;
  v79[2] = v49;
  v50 = 0.0;
  do
  {
    v50 = v50 + (*&v79[v47] * *&v79[v47]);
    ++v47;
  }

  while (v47 != 3);
  *(a1 + 10360) = vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(((v39 * v41) - (v45 * v43)) + ((v39 * v41) - (v45 * v43)), (((v43 * v43) + (v39 * v39)) * -2.0) + 1.0)), COERCE_UNSIGNED_INT(sqrtf(v50))), 0xC2652EE142652EE1);
  v51 = ((v39 * v45) + (v41 * v43)) + ((v39 * v45) + (v41 * v43));
  v52 = -1.0;
  v53 = v51 <= -1.0;
  v54 = v51 < 1.0 || v51 <= -1.0;
  if (v51 >= 1.0)
  {
    v53 = 1;
  }

  if (!v54)
  {
    v52 = 1.0;
  }

  if (v53)
  {
    v51 = v52;
  }

  v55 = 0;
  *(a1 + 10368) = asinf(v51) * 57.296;
  do
  {
    v56 = *sub_19B5BC0F0(&v81, v55);
    *sub_19B60291C(v89, v55) = v56;
    v57 = sub_19B5D6144(v79, v55);
    *sub_19B60291C(v89, v55 + 3) = v57;
    ++v55;
  }

  while (v55 != 3);
  v58 = 0;
  v59 = 0.0;
  do
  {
    v59 = v59 + (*(&v81 + v58) * *(&v81 + v58));
    v58 += 4;
  }

  while (v58 != 12);
  if (sqrtf(v59) <= 0.04 && *(a1 + 10360) <= 4.0)
  {
    *(a1 + 10344) = a5;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v65 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v66 = *(a1 + 10344);
      *buf = 134217984;
      *&buf[4] = v66;
      _os_log_impl(&dword_19B41C000, v65, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf] Converged to anchor, fLastConvergedToAnchorTimestamp: %llu ... .", buf, 0xCu);
    }

    v67 = sub_19B420058();
    if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v68 = *(a1 + 10344);
      v90 = 134217984;
      v91 = v68;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMRelDMSensorFusionMekf] Converged to anchor, fLastConvergedToAnchorTimestamp: %llu ... .", &v90);
      goto LABEL_42;
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v60 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *(a1 + 10344);
      *buf = 134218240;
      *&buf[4] = v61;
      *&buf[12] = 2048;
      *&buf[14] = a5;
      _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf] NOT-Converged to anchor, fLastConvergedToAnchorTimestamp: %llu, timestamp: %llu.", buf, 0x16u);
    }

    v62 = sub_19B420058();
    if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v63 = *(a1 + 10344);
      v90 = 134218240;
      v91 = v63;
      LOWORD(v92[0]) = 2048;
      *(v92 + 2) = a5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMRelDMSensorFusionMekf] NOT-Converged to anchor, fLastConvergedToAnchorTimestamp: %llu, timestamp: %llu.", &v90, 22);
LABEL_42:
      v69 = v64;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::anchorMeasurementUpdate(const State &, const AnchorData &, BOOL, uint64_t)", "CoreLocation: %s\n", v64);
      if (v69 != buf)
      {
        free(v69);
      }
    }
  }

  v70 = atan2f(*(a3 + 36), *(a3 + 44));
  if (v70 <= 0.0)
  {
    v70 = -v70;
  }

  v75[0] = *(a3 + 32);
  v75[1] = v75[0];
  v75[2] = v75[0];
  v76 = (((((((v70 * 57.296) * 0.01817) + (((v70 * 57.296) * (v70 * 57.296)) * 0.00008261)) + 1.285) * 0.00030462) + (((((v70 * 57.296) * 0.050494) + (((v70 * 57.296) * (v70 * 57.296)) * 0.001676)) + 0.41393) * 0.00030462)) * 0.25) + 0.0002514;
  v77 = v76;
  v78 = v76;
  if (a4)
  {
    v94 = *(a1 + 10716);
    v71 = *(a1 + 10700);
    *buf = *(a1 + 10684);
    *&buf[16] = v71;
    v100 = *(a1 + 10800);
    v101 = *(a1 + 10816);
    v102 = *(a1 + 10832);
    v103 = *(a1 + 10848);
    v96 = *(a1 + 10736);
    v97 = *(a1 + 10752);
    v98 = *(a1 + 10768);
    v99 = *(a1 + 10784);
    v95 = *(a1 + 10720);
    sub_19B602B14(&v90, buf, v87, v75, v89);
    sub_19B6009AC(a1, &v90);
    *(a1 + 44) = *(a1 + 28);
  }

  else
  {
    sub_19B602B14(&v90, (a1 + 10504), v87, v75, v89);
    sub_19B6009AC(a1, &v90);
  }

  result = sub_19B6060E4((a1 + 1352), *(a1 + 1354) - 1);
  if ((a1 + 4) != result)
  {
    v73 = *(a1 + 4);
    *(result + 2) = *(a1 + 12);
    *result = v73;
    v74 = *(a1 + 16);
    *(result + 5) = *(a1 + 24);
    *(result + 6) = v74;
    *(result + 12) = *(a1 + 28);
    *(result + 20) = *(a1 + 44);
  }

  return result;
}

uint64_t sub_19B602590(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 >= 6)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a2;
      v22 = 2048;
      v23 = 6;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a2;
      v18 = 2048;
      v19 = 6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 6, 9>::operator()(size_t, size_t) [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = 9;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = 9;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 6, 9>::operator()(size_t, size_t) [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1 + 4 * (a2 + 6 * a3);
}

uint64_t sub_19B60291C(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 6)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 6>::operator[](const size_t) [T = float, N = 6]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * a2;
}

void sub_19B602B14(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v51 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  while (1)
  {
    v10 = 0;
    v11 = -1;
    do
    {
      v12 = sub_19B607578(a3, v9, v10);
      v13 = v11;
      if (v10)
      {
        do
        {
          v14 = sub_19B607578(a3, v9, v13);
          v12 = v12 + (v14 * *sub_19B606A74((a2 + 9), v13--, v10));
        }

        while (v13 != -1);
      }

      v50[v10] = v12;
      v49[v10] = v12 * *sub_19B606DFC(a2, v10);
      ++v10;
      ++v11;
    }

    while (v10 != 9);
    v15 = sub_19B607904(a4, v9);
    v16 = v15 + (v50[0] * v49[0]);
    if (v16 <= 0.0)
    {
      break;
    }

    v17 = 1.0 / v16;
    *a2 = *a2 * ((1.0 / v16) * sub_19B607904(a4, v9));
    for (i = 1; i != 9; ++i)
    {
      v19 = v50[i];
      v20 = v16 + (v19 * v49[i]);
      if (v20 <= 0.0)
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
        }

        v33 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v48 = v9;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
          }

          v45 = 134217984;
          v46 = v9;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "%zu: alpha <= 0, matrix ! positive definite", &v45);
          v36 = v35;
          sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 6UL]", "CoreLocation: %s\n", v35);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return;
      }

      v21 = -(v19 * v17);
      v17 = 1.0 / v20;
      v22 = sub_19B606DFC(a2, i);
      v23 = 0;
      *v22 = (v16 * (1.0 / v20)) * *v22;
      do
      {
        v24 = *sub_19B606A74((a2 + 9), v23, i);
        v25 = v49[v23];
        v26 = sub_19B606A74((a2 + 9), v23, i);
        v27 = v49[i];
        *v26 = v24 + (v25 * v21);
        v49[v23++] = v25 + (v27 * v24);
      }

      while (i != v23);
      v16 = v20;
    }

    v28 = 0;
    v29 = v17 * sub_19B607904(a5, v9);
    do
    {
      v30 = v49[v28];
      v31 = sub_19B607380(&v42, v28);
      *v31 = *v31 + (v29 * v30);
      ++v28;
    }

    while (v28 != 9);
    if (++v9 == 6)
    {
      v32 = v43;
      *a1 = v42;
      *(a1 + 16) = v32;
      *(a1 + 32) = v44;
      return;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
  }

  v37 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v48 = v9;
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v38 = sub_19B420058();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v45 = 134217984;
    v46 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "%zu: alpha <= 0, matrix ! positive definite", &v45);
    v40 = v39;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 9>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 9, P = 6UL]", "CoreLocation: %s\n", v39);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

void sub_19B60307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf] Already initialized", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v15[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMSensorFusionMekf] Already initialized", v15, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::initialize(const IMUData &, const IMUData &, const Pose &, uint64_t)", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    v11 = 0;
    v12 = *(a4 + 8);
    *(a1 + 4) = *a4;
    v13 = (a1 + 4);
    *(a1 + 12) = v12;
    *(a1 + 20) = 0;
    *(a1 + 28) = *(a4 + 12);
    *(a1 + 44) = *(a4 + 12);
    v36 = 0;
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
    v18 = 0u;
    v19 = 0u;
    *buf = 0u;
    v17 = 0u;
    do
    {
      if (v11 > 2)
      {
        v14 = sub_19B6001C0(buf, v11, v11);
        if (v11 > 5)
        {
          *v14 = 983545103;
        }

        else
        {
          *v14 = 992204554;
        }
      }

      else
      {
        *sub_19B6001C0(buf, v11, v11) = 1008981770;
      }

      ++v11;
    }

    while (v11 != 9);
    sub_19B60054C(a1 + 10504, buf);
    sub_19B603328((a1 + 64), v13, a5);
    *a1 = 1;
  }
}

uint64_t sub_19B603328(unsigned __int16 *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_19B606300(a1 + 644, a2);
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = *a1;
  if (v8 + v6 >= v7)
  {
    v9 = *(a1 + 1);
  }

  else
  {
    v9 = 0;
  }

  *&a1[4 * (v8 + v6 - v9) + 4] = a3;
  if (v7 <= v6)
  {
    if (v8 + 1 < v7)
    {
      LOWORD(v7) = 0;
    }

    *a1 = v8 + 1 - v7;
  }

  else
  {
    a1[1] = v6 + 1;
  }

  return result;
}

void sub_19B6033A0(uint64_t a1, __int128 *a2, int a3, unint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v7 = *(a1 + 66);
    if (*(a1 + 66))
    {
      *(a1 + 10320) = 0xFFFFFFFFLL;
      *(a1 + 10328) = 0;
      if (v7 <= 0x32)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 - 50;
      }

      v10 = a1 + 72;
      v11 = v7 - 1;
      v12 = v7 - 1 + *(a1 + 64);
      v13 = *(a1 + 68);
      if (v12 < v13)
      {
        v13 = 0;
      }

      v14 = *(v10 + 8 * (v12 - v13));
      if (v14 <= a4)
      {
        if (v14 + 10000 > a4)
        {
          goto LABEL_58;
        }

        if ((v14 + 500000.0) <= a4)
        {
          goto LABEL_87;
        }

        *(a1 + 10328) = 1;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v24 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 64) + *(a1 + 66) - 1;
          v26 = *(a1 + 68);
          if (v25 < v26)
          {
            v26 = 0;
          }

          v27 = *(v10 + 8 * (v25 - v26));
          *buf = 134349312;
          *&buf[4] = a4;
          *&buf[12] = 2050;
          *&buf[14] = v27;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Anchor time is ahead of current state time. anchorTime=%{public}llu, newestStateTime=%{public}llu", buf, 0x16u);
        }

        v28 = sub_19B420058();
        if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
        {
          goto LABEL_87;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v29 = *(a1 + 64) + *(a1 + 66) - 1;
        v30 = *(a1 + 68);
        if (v29 < v30)
        {
          v30 = 0;
        }

        v31 = *(v10 + 8 * (v29 - v30));
        *v67 = 134349312;
        *&v67[4] = a4;
        *&v67[12] = 2050;
        *&v67[14] = v31;
        v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Anchor time is ahead of current state time. anchorTime=%{public}llu, newestStateTime=%{public}llu", v67, 22, *v67, *&v67[8]);
      }

      else
      {
        if (*sub_19B607AFC((a1 + 64), v9) <= a4)
        {
          v34 = *(a1 + 66) - 1;
          v35 = v34 + *(a1 + 64);
          v36 = *(a1 + 68);
          if (v35 < v36)
          {
            v36 = 0;
          }

          v37 = *(a1 + 1354) - vcvtps_u32_f32((*(v10 + 8 * (v35 - v36)) - a4) / 5000.0) + 2;
          if (v37 >= v34)
          {
            v38 = *(a1 + 66) - 1;
          }

          else
          {
            v38 = v37;
          }

          while (v38 + 1 > v9)
          {
            v39 = sub_19B607AFC((a1 + 64), v38--);
            if (*v39 <= a4)
            {
              v40 = a4 - *sub_19B607AFC((a1 + 64), v38 + 1);
              if (v40 <= *sub_19B607AFC((a1 + 64), v38 + 2) - a4)
              {
                v11 = v38 + 1;
              }

              else
              {
                v11 = v38 + 2;
              }

              goto LABEL_58;
            }
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
          }

          v42 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            v43 = *(a1 + 64) + *(a1 + 66) - 1;
            v44 = *(a1 + 68);
            if (v43 < v44)
            {
              v44 = 0;
            }

            v45 = *(v10 + 8 * (v43 - v44));
            *buf = 134349312;
            *&buf[4] = a4;
            *&buf[12] = 2050;
            *&buf[14] = v45;
            _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Failed to find a valid state idx. anchorTime=%{public}llu, newestStateTime=%{public}llu", buf, 0x16u);
          }

          v46 = sub_19B420058();
          if ((*(v46 + 160) & 0x80000000) != 0 && (*(v46 + 164) & 0x80000000) != 0 && (*(v46 + 168) & 0x80000000) != 0 && !*(v46 + 152))
          {
            goto LABEL_87;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
          }

          v47 = *(a1 + 64) + *(a1 + 66) - 1;
          v48 = *(a1 + 68);
          if (v47 < v48)
          {
            v48 = 0;
          }

          v49 = *(v10 + 8 * (v47 - v48));
          *v67 = 134349312;
          *&v67[4] = a4;
          *&v67[12] = 2050;
          *&v67[14] = v49;
          v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Failed to find a valid state idx. anchorTime=%{public}llu, newestStateTime=%{public}llu", v67, 22);
          v52 = v51;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMSensorFusionMekf::StateHistory::hasValidStateAtAnchorTime(uint64_t)", "CoreLocation: %s\n", v50);
LABEL_85:
          if (v52 != buf)
          {
            free(v52);
          }

LABEL_87:
          if (*(a1 + 10328) == 1)
          {
            v55 = *(a1 + 10404);
            v56 = *(a1 + 10400) + *(a1 + 10402);
            if (v56 < v55)
            {
              v55 = 0;
            }

            v57 = (a1 + 48 * (v56 - v55) + 10408);
            v58 = *a2;
            v59 = a2[2];
            v57[1] = a2[1];
            v57[2] = v59;
            *v57 = v58;
            v60 = *(a1 + 10402);
            v61 = *(a1 + 10404);
            if (v61 <= v60)
            {
              v62 = *(a1 + 10400) + 1;
              if (v62 < v61)
              {
                LOWORD(v61) = 0;
              }

              *(a1 + 10400) = v62 - v61;
            }

            else
            {
              *(a1 + 10402) = v60 + 1;
            }

            v63 = *(a1 + 10378);
            v64 = *(a1 + 10380);
            v65 = *(a1 + 10376);
            if (v65 + v63 >= v64)
            {
              v66 = *(a1 + 10380);
            }

            else
            {
              v66 = 0;
            }

            *(a1 + 8 * (v65 + v63 - v66) + 10384) = a4;
            if (v64 <= v63)
            {
              if (v65 + 1 < v64)
              {
                LOWORD(v64) = 0;
              }

              *(a1 + 10376) = v65 + 1 - v64;
            }

            else
            {
              *(a1 + 10378) = v63 + 1;
            }
          }

          return;
        }

        v15 = *sub_19B607AFC((a1 + 64), v9) - a4;
        if (v15 >> 4 < 0x271)
        {
          v11 = 0;
LABEL_58:
          *(a1 + 10320) = v11;
          *(a1 + 10376) = 0;
          *(a1 + 10400) = 0;
          v41 = sub_19B6045F8(a1 + 64, v11);
          sub_19B601E04(a1, v41, a2, (a3 & 0xFFFFFFFD) == 1, a4);
          *(a1 + 10336) = a4;
          return;
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v53 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          *&buf[4] = a4;
          *&buf[12] = 2050;
          *&buf[14] = v15;
          _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Anchor is too old. anchorTime=%{public}llu, deltaT%{public}llu", buf, 0x16u);
        }

        v54 = sub_19B420058();
        if (*(v54 + 160) <= 1 && *(v54 + 164) <= 1 && *(v54 + 168) <= 1 && !*(v54 + 152))
        {
          goto LABEL_87;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        *v67 = 134349312;
        *&v67[4] = a4;
        *&v67[12] = 2050;
        *&v67[14] = v15;
        v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMRelDMSensorFusionMekf][hasValidStateAtAnchorTime] Anchor is too old. anchorTime=%{public}llu, deltaT%{public}llu", v67, 22, *v67, *&v67[8]);
      }

      v52 = v32;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMSensorFusionMekf::StateHistory::hasValidStateAtAnchorTime(uint64_t)", "CoreLocation: %s\n", v33);
      goto LABEL_85;
    }
  }

  v16 = 0;
  v17 = *(a2 + 7);
  *(a1 + 4) = *(a2 + 20);
  *(a1 + 12) = v17;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = *a2;
  *(a1 + 44) = *a2;
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  memset(buf, 0, sizeof(buf));
  do
  {
    v18 = *(a2 + 4);
    if (v16 < 6)
    {
      v18 = 0.0009;
    }

    if (v16 >= 3)
    {
      v19 = v18;
    }

    else
    {
      v19 = *(a2 + 8);
    }

    *sub_19B6001C0(buf, v16, v16) = v19;
    ++v16;
  }

  while (v16 != 9);
  sub_19B60054C(a1 + 10504, buf);
  *(a1 + 64) = 0;
  *(a1 + 1352) = 0;
  sub_19B603328((a1 + 64), (a1 + 4), a4);
  *a1 = 1;
  *(a1 + 10336) = a4;
  *(a1 + 10344) = a4;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
  }

  v20 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = a4;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[CMRelDMSensorFusionMekf][feedAnchorData] Initialize with anchor. anchorTime=%{public}llu", buf, 0xCu);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    *v67 = 134349056;
    *&v67[4] = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMRelDMSensorFusionMekf][feedAnchorData] Initialize with anchor. anchorTime=%{public}llu", v67, 12);
    v23 = v22;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::feedAnchorData(const AnchorData &, TrackingScheme, uint64_t)", "CoreLocation: %s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }
}