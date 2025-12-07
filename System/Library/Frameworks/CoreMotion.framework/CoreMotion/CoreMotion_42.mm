void sub_19B603D8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, double a6, float a7)
{
  v13 = *(a2 + 48);
  if (v13 && (v14 = *(a3 + 48)) != 0)
  {
    v15 = ((*(a2 + 52) + *(a3 + 52)) * 9.8067) * 9.8067;
    if (a4 == 2 && (v13 == 1 ? (v16 = v14 == 1) : (v16 = 0), v16))
    {
      v17 = a6;
      sub_19B601CE8(a1, v17, ((*(a2 + 52) + *(a3 + 52)) * 9.8067) * 9.8067);
    }

    else
    {
      if (a4 == 1)
      {
        return;
      }

      v17 = a6;
    }

    sub_19B600C70(a1, (a2 + 12), (a3 + 12), a5, v17, v15);
  }

  else if (a7 > 0.0 && a4 != 1)
  {
    v19 = a6;
    sub_19B600C70(a1, (a2 + 24), (a3 + 24), a5, v19, a7);
    if (a4 == 2)
    {

      sub_19B601CE8(a1, v19, a7);
    }
  }
}

void sub_19B603EEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, double a6, float a7)
{
  sub_19B603D8C(a1, a2, a3, a4, a5, a6, a7);
  sub_19B603328((a1 + 64), (a1 + 4), a5);

  sub_19B603F54(a1, (a4 & 0xFFFFFFFD) == 1, a5);
}

void sub_19B603F54(uint64_t a1, int a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 0x2000);
  if (*(a1 + 10378))
  {
    if ((v6 = *(a1 + 8 * *(a1 + 10376) + 10384), v6 >= a3) && (v6 - a3) >> 3 < 0x271 || a3 >= v6 && (a3 - v6) >> 3 <= 0x270)
    {
      sub_19B601E04(a1, (a1 + 4), a1 + 48 * *(a1 + 10400) + 10408, a2, v6);
      *(a1 + 10336) = a3;
      v7 = v3[1093];
      if (v7)
      {
        v8 = v3[1092] + 1;
        v9 = *(a1 + 10380);
        if (v8 < v9)
        {
          LOWORD(v9) = 0;
        }

        v3[1092] = v8 - v9;
        v3[1093] = v7 - 1;
      }

      v10 = v3[1105];
      if (v10)
      {
        v11 = v3[1104] + 1;
        v12 = *(a1 + 10404);
        if (v11 < v12)
        {
          LOWORD(v12) = 0;
        }

        v3[1104] = v11 - v12;
        v3[1105] = v10 - 1;
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v13 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v20 = a3;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf] Consumed cached anchor. timestamp %llu", buf, 0xCu);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
        }

        v17 = 134217984;
        v18 = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMSensorFusionMekf] Consumed cached anchor. timestamp %llu", &v17);
        v16 = v15;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMSensorFusionMekf::processCachedAnchorMeasurements(BOOL, uint64_t)", "CoreLocation: %s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }
  }
}

void sub_19B6041DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v4 = *(a2 + 8);
    *(a1 + 4) = *a2;
    v5 = (a1 + 4);
    *(a1 + 12) = v4;
    *(a1 + 28) = *(a2 + 12);
    v6 = *(a2 + 12);
    *(a1 + 64) = 0;
    v7 = a1 + 64;
    *(v7 - 20) = v6;
    *(v7 + 1288) = 0;

    sub_19B603328(v7, v5, a3);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before bleeding to zero", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v12[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMRelDMSensorFusionMekf] Must be initialized before bleeding to zero", v12, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::bleedToZero(const Pose &, uint64_t)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

void sub_19B6043EC(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v2 = *(a1 + 1354);
    if (v2 >= 0x28)
    {
      v3 = v2 - 40;
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_19B6045F8(a1 + 64, v3);
    *buf = *(v4 + 12);
    v5.f32[0] = sub_19B66BFF4(v4 + 5, *buf);
    v20[0] = v5.f32[0];
    v20[1] = v6;
    v20[2] = v7;
    v20[3] = v8;
    v9.f32[0] = sub_19B66BF70(a1 + 44, v20, v5);
    v21[0] = v9.i32[0];
    v21[1] = v10;
    v21[2] = v11;
    v21[3] = v12;
    *(a1 + 44) = sub_19B66BF70(v21, buf, v9);
    *(a1 + 48) = v13;
    *(a1 + 52) = v14;
    *(a1 + 56) = v15;
    *(a1 + 64) = 0;
    *(a1 + 1352) = 0;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before entering 1-IMU tracking mode", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      LOWORD(v21[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMRelDMSensorFusionMekf] Must be initialized before entering 1-IMU tracking mode", v21, 2);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::enter1IMUTracking()", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

unsigned __int16 *sub_19B6045F8(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1290) <= a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[StateHistory::getState] Invalid idx, returning latest index.", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[StateHistory::getState] Invalid idx, returning latest index.", v9, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const State &CMRelDMSensorFusionMekf::StateHistory::getState(size_t) const", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    return sub_19B6060E4((a1 + 1288), *(a1 + 1290) - 1);
  }

  else
  {
    v3 = (a1 + 1288);

    return sub_19B6060E4(v3, a2);
  }
}

void sub_19B604800(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v5 = *(a1 + 1354);
    v6 = v5 - 160;
    if (v5 < 0xA0)
    {
      v6 = 0;
    }

    v7 = v5 - 1;
    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = sub_19B6045F8(a1 + 64, v8);
    v10 = sub_19B604A8C(a2, v9, v9 + 5);
    v12 = v11;
    v14 = v13;
    v15 = sub_19B606534(a2);
    v16 = sub_19B66C1A4(v15, v10, v12, v14);
    v29 = v17;
    v30 = v16;
    v19 = v18;
    v20 = sub_19B606380(a2);
    v21 = 0;
    v22 = v19 + v20[1].f32[0];
    *buf = vadd_f32(__PAIR64__(v29, LODWORD(v30)), *v20);
    v33 = v22;
    do
    {
      *&buf[v21] = -*&buf[v21];
      v21 += 4;
    }

    while (v21 != 12);
    *(a1 + 4) = sub_19B66C1A4(&v9[3], *buf, *&buf[4], v33);
    *(a1 + 8) = v23;
    *(a1 + 12) = v24;
    *(a1 + 64) = 0;
    *(a1 + 1352) = 0;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v25 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before exiting 1-IMU tracking mode", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v31[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMRelDMSensorFusionMekf] Must be initialized before exiting 1-IMU tracking mode", v31, 2);
      v28 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::exit1IMUTracking(const BodyFaceTransform &, BOOL)", "CoreLocation: %s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }
  }
}

float sub_19B604A8C(uint64_t a1, float *a2, float32x2_t *a3)
{
  v6 = sub_19B606380(a1);
  v26 = sub_19B66BFF4(a3, v7);
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v11 = *v6 + sub_19B66C1A4(&v26, *a2, a2[1], a2[2]);
  v13 = v6[1] + v12;
  v15 = v14 + v6[2];
  v16 = sub_19B606534(a1);
  v26 = sub_19B66BFF4(v16, v17);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v21 = sub_19B66C1A4(&v26, v11, v13, v15);
  v22 = 0;
  *v30 = v21;
  v30[1] = v23;
  v30[2] = v24;
  do
  {
    *&v30[v22] = -*&v30[v22];
    ++v22;
  }

  while (v22 != 3);
  return *v30;
}

float *sub_19B604B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_19B601068(a1, i, 0);
      v9 = v8 * sub_19B601068(a2, 0, j);
      *sub_19B5D68B8(a3, i, j) = v9;
      for (k = 1; k != 3; ++k)
      {
        v11 = sub_19B601068(a1, i, k);
        v12 = sub_19B601068(a2, k, j);
        result = sub_19B5D68B8(a3, i, j);
        *result = *result + (v11 * v12);
      }
    }
  }

  return result;
}

uint64_t sub_19B604C58(uint64_t a1, unint64_t a2, unint64_t a3)
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
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9, 12>::operator()(size_t, size_t) [T = float, M = 9, N = 12]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 0xC)
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
      v23 = 12;
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
      v19 = 12;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 9, 12>::operator()(size_t, size_t) [T = float, M = 9, N = 12]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1 + 4 * (9 * a3 + a2);
}

uint64_t sub_19B604FE4(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 0xC)
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
      v16 = 12;
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
      v12 = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 12>::operator[](const size_t) [T = float, N = 12]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * a2;
}

void sub_19B6051DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v157 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v9.f32[0] = sub_19B66C1A4((a1 + 28), *a3, *(a3 + 4), *(a3 + 8));
    v11 = (*(a2 + 8) - v10) * a5;
    v9.i32[1] = v12;
    *__dst[0].f32 = vmul_n_f32(vsub_f32(*a2, v9), a5);
    __dst[0].f32[2] = v11;
    *v13.i64 = sub_19B66C264(buf, __dst[0].f32);
    *(a1 + 28) = sub_19B66BF70(buf, (a1 + 28), v13);
    *(a1 + 32) = v14;
    *(a1 + 36) = v15;
    *(a1 + 40) = v16;
    v17.f32[0] = sub_19B66C1A4((a1 + 44), *a3, *(a3 + 4), *(a3 + 8));
    v17.i32[1] = v19;
    v154[0] = vmul_n_f32(vneg_f32(v17), a5);
    *&v154[1] = -(v18 * a5);
    *v20.i64 = sub_19B66C264(__dst, v154);
    *(a1 + 44) = sub_19B66BF70(__dst, (a1 + 44), v20);
    *(a1 + 48) = v21;
    *(a1 + 52) = v22;
    *(a1 + 56) = v23;
    v24 = vmul_f32(*(a3 + 12), vdup_n_s32(0x411CE80Au));
    v25 = *(a3 + 20) * 9.8067;
    v26 = v24.f32[1];
    v148 = v24.f32[0];
    if (a4)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      v32 = 0;
      v33 = *(a2 + 16);
      v34 = *(a2 + 8);
      v35 = *(a2 + 12);
      v37 = *(a1 + 20);
      v36 = *(a1 + 24);
      v38 = -v34;
      v39 = *(a2 + 4);
      v40 = -(*a2 * v36);
      v42 = *(a1 + 12);
      v41 = *(a1 + 16);
      v43 = (*a2 * v37) - (v39 * v41);
      v45 = *(a1 + 4);
      v44 = *(a1 + 8);
      v46 = (v39 * v42) - (v34 * v44);
      v47 = (v34 * v45) - (*a2 * v42);
      v48 = (*a2 * v47) - (v39 * v46);
      buf[0].i64[0] = __PAIR64__((v34 * v46) - (*a2 * ((*a2 * v44) - (v39 * v45))), (v39 * ((*a2 * v44) - (v39 * v45))) - (v34 * v47));
      buf[0].f32[2] = v48;
      do
      {
        buf[0].f32[v32] = -buf[0].f32[v32];
        ++v32;
      }

      while (v32 != 3);
      v49 = vmul_f32(v33, vdup_n_s32(0x411CE80Au));
      v50.f32[0] = v40 + (v34 * v41);
      v51 = v35 * 9.8067;
      v52 = buf[0].f32[0] - (((v37 * v38) + (v39 * v36)) + ((v37 * v38) + (v39 * v36)));
      v50.f32[1] = v43;
      v53 = vadd_f32(v50, v50);
      v54 = *&buf[0].i32[1];
      v55 = sub_19B66C1A4((a1 + 28), v24.f32[0], v24.f32[1], v25);
      v57.i32[1] = v56;
      v58.i64[0] = *(a1 + 20);
      v59 = *(a1 + 4);
      v60 = vdupq_laneq_s32(v59, 3);
      v61 = vextq_s8(vextq_s8(v60, v60, 4uLL), v58, 0xCuLL);
      v61.f32[3] = v52 - (v51 - v55);
      *(a1 + 4) = vaddq_f32(v59, vmulq_n_f32(v61, a5));
      *(a1 + 20) = vadd_f32(*v58.i8, vmul_n_f32(vsub_f32(vsub_f32(v54, v53), vsub_f32(v49, v57)), a5));
    }

    memset(__src, 0, sizeof(__src));
    v62 = *a2;
    buf[0].i32[0] = 0;
    v63 = *(a2 + 4);
    buf[0].i32[1] = v63.i32[1];
    *&buf[0].u32[2] = vneg_f32(v63);
    buf[1].i32[0] = 0;
    *(buf[1].i64 + 4) = __PAIR64__(v63.u32[0], LODWORD(v62));
    buf[1].f32[3] = -v62;
    buf[2].i32[0] = 0;
    if ((a4 & 1) == 0)
    {
      for (i = 0; i != 3; ++i)
      {
        *sub_19B6001C0(__src, i, i + 3) = 1065353216;
      }

      v65 = sub_19B66C1A4((a1 + 28), v148, v26, v25);
      __dst[0].i32[0] = 0;
      __dst[0].f32[1] = v67;
      __dst[0].f32[2] = -*&v66;
      __dst[0].f32[3] = -v67;
      __dst[1].i32[0] = 0;
      *(__dst[1].i64 + 4) = __PAIR64__(v66, LODWORD(v65));
      __dst[1].f32[3] = -v65;
      __dst[2].i32[0] = 0;
      sub_19B604B68(buf, buf, v154);
      do
      {
        for (j = 0; j != 3; ++j)
        {
          v69 = -sub_19B601068(v154, i - 3, j);
          *sub_19B6001C0(__src, i, j) = v69;
        }

        for (k = 0; k != 3; ++k)
        {
          v71 = sub_19B601068(buf, i - 3, k) * -2.0;
          *sub_19B6001C0(__src, i, k + 3) = v71;
        }

        for (m = 0; m != 3; ++m)
        {
          v73 = sub_19B601068(__dst, i - 3, m);
          *sub_19B6001C0(__src, i, m + 6) = v73 + v73;
        }

        ++i;
      }

      while (i != 6);
    }

    for (n = 6; n != 9; ++n)
    {
      for (ii = 0; ii != 3; ++ii)
      {
        v76 = -sub_19B601068(buf, n - 6, ii);
        *sub_19B6001C0(__src, n, ii + 6) = v76;
      }
    }

    v77 = 0;
    memset(v151, 0, sizeof(v151));
    v152 = 0;
    do
    {
      *sub_19B6001C0(v151, v77, v77) = 1065353216;
      ++v77;
    }

    while (v77 != 9);
    memcpy(buf, __src, 0x144uLL);
    for (jj = 0; jj != 81; ++jj)
    {
      buf[0].f32[jj] = buf[0].f32[jj] * a5;
    }

    for (kk = 0; kk != 81; ++kk)
    {
      *(v151 + kk) = sub_19B607D14(buf, kk) + *(v151 + kk);
    }

    for (mm = 0; mm != 9; ++mm)
    {
      for (nn = 0; nn != 9; ++nn)
      {
        v82 = sub_19B6066E8(__src, mm, 0);
        v83 = v82 * sub_19B6066E8(__src, 0, nn);
        *sub_19B6001C0(v154, mm, nn) = v83;
        for (i1 = 1; i1 != 9; ++i1)
        {
          v85 = sub_19B6066E8(__src, mm, i1);
          v86 = sub_19B6066E8(__src, i1, nn);
          v87 = sub_19B6001C0(v154, mm, nn);
          *v87 = *v87 + (v85 * v86);
        }
      }
    }

    for (i2 = 0; i2 != 324; i2 += 4)
    {
      *(v154 + i2) = ((a5 * 0.5) * a5) * *(v154 + i2);
    }

    memcpy(__dst, v154, 0x144uLL);
    for (i3 = 0; i3 != 81; ++i3)
    {
      *(v151 + i3) = sub_19B607D14(__dst, i3) + *(v151 + i3);
    }

    memset(__dst, 0, sizeof(__dst));
    sub_19B66D368((a1 + 28), buf[0].f32, 1.0);
    v90 = 0;
    v91 = *(a1 + 16);
    LODWORD(v154[0]) = 0;
    v92 = *(a1 + 20);
    HIDWORD(v154[0]) = v92.i32[1];
    v154[1] = vneg_f32(v92);
    LODWORD(v154[2]) = 0;
    *(&v154[2] + 1) = v91;
    LODWORD(v154[3]) = v92.i32[0];
    *(&v154[3] + 1) = -v91;
    LODWORD(v154[4]) = 0;
    do
    {
      if ((a4 & 1) == 0)
      {
        v93 = 0;
        *sub_19B604C58(__dst, v90 + 3, v90) = -1082130432;
        do
        {
          v94 = sub_19B601068(buf, v90, v93);
          *sub_19B604C58(__dst, v90 + 3, v93 + 3) = v94;
          v95 = sub_19B601068(v154, v90, v93);
          *sub_19B604C58(__dst, v90 + 3, v93 + 6) = v95 + v95;
          ++v93;
        }

        while (v93 != 3);
      }

      *sub_19B604C58(__dst, v90 + 6, v90 + 6) = 1056964608;
      *sub_19B604C58(__dst, v90 + 6, v90 + 9) = -1090519040;
      ++v90;
    }

    while (v90 != 3);
    v96 = 0;
    v97 = *(a2 + 20) * 9.8067;
    v98 = vdup_n_s32(0x411CE80Au);
    v154[0] = vmul_f32(*(a2 + 12), v98);
    *&v154[1] = v97;
    v99 = *(a3 + 20) * 9.8067;
    *v155 = vmul_f32(*(a3 + 12), v98);
    *&v155[8] = v99;
    v100 = (a5 * 0.021638) + 0.0000009617;
    do
    {
      v101 = sub_19B5D6144(v154, v96) * 0.0001;
      v102 = v100 + ((v101 * sub_19B5D6144(v154, v96)) * a5);
      *sub_19B604FE4(buf, v96) = v102;
      v103 = sub_19B5D6144(v155, v96) * 0.0001;
      v104 = v100 + ((v103 * sub_19B5D6144(v155, v96)) * a5);
      *sub_19B604FE4(buf, v96 + 3) = v104;
      v105 = (sub_19B5D6144(a2 + 36, v96) / 50.0) + 0.000000019496;
      v106 = sub_19B5D6144(a2, v96) * 0.0004;
      v107 = v105 + ((v106 * sub_19B5D6144(a2, v96)) * a5);
      *sub_19B604FE4(buf, v96 + 6) = v107;
      v108 = (sub_19B5D6144(a3 + 36, v96) / 50.0) + 0.000000019496;
      v109 = sub_19B5D6144(a3, v96) * 0.0004;
      v110 = v108 + ((v109 * sub_19B5D6144(a3, v96)) * a5);
      *sub_19B604FE4(buf, v96 + 9) = v110;
      ++v96;
    }

    while (v96 != 3);
    v111 = 0;
    v112 = vmulq_n_f32(buf[1], a5);
    v113 = vmulq_n_f32(buf[2], a5);
    *(a1 + 10864) = vmulq_n_f32(buf[0], a5);
    *(a1 + 10880) = v112;
    *(a1 + 10896) = v113;
    do
    {
      v114 = 8;
      do
      {
        for (i4 = 0; i4 != v114; ++i4)
        {
          v116 = *sub_19B6001C0(v151, v111, i4);
          v117 = *sub_19B606A74(a1 + 10540, i4, v114);
          v118 = sub_19B6001C0(v151, v111, v114);
          *v118 = *v118 + (v116 * v117);
        }

        --v114;
      }

      while (v114);
      ++v111;
    }

    while (v111 != 9);
    for (i5 = 8; ; --i5)
    {
      v120 = 0;
      *(v154 + i5) = 0;
      v121 = 0.0;
      do
      {
        v122 = *sub_19B6001C0(v151, i5, v120);
        v123 = v122 * *sub_19B6001C0(v151, i5, v120);
        v121 = v121 + (v123 * *sub_19B606DFC(a1 + 10504, v120));
        *(v154 + i5) = v121;
        ++v120;
      }

      while (v120 != 9);
      for (i6 = 0; i6 != 12; ++i6)
      {
        v125 = *sub_19B604C58(__dst, i5, i6);
        v126 = v125 * *sub_19B604C58(__dst, i5, i6);
        v121 = v121 + (v126 * sub_19B607F0C(a1 + 10864, i6));
        *(v154 + i5) = v121;
      }

      if (v121 <= 0.0)
      {
        break;
      }

      if (!i5)
      {
        do
        {
          v147 = *(v154 + i5);
          *sub_19B606DFC(a1 + 10504, i5++) = v147;
        }

        while (i5 != 9);
        return;
      }

      for (i7 = 0; i7 != i5; ++i7)
      {
        v128 = 0;
        v129 = 0.0;
        do
        {
          v130 = *sub_19B6001C0(v151, i7, v128);
          v131 = v130 * *sub_19B606DFC(a1 + 10504, v128);
          v129 = v129 + (v131 * *sub_19B6001C0(v151, i5, v128++));
        }

        while (v128 != 9);
        for (i8 = 0; i8 != 12; ++i8)
        {
          v133 = *sub_19B604C58(__dst, i7, i8);
          v134 = v133 * sub_19B607F0C(a1 + 10864, i8);
          v129 = v129 + (v134 * *sub_19B604C58(__dst, i5, i8));
        }

        v135 = 0;
        *sub_19B606A74(a1 + 10540, i7, i5) = v129 / v121;
        do
        {
          v136 = *sub_19B606A74(a1 + 10540, i7, i5);
          v137 = *sub_19B6001C0(v151, i5, v135);
          v138 = sub_19B6001C0(v151, i7, v135);
          *v138 = *v138 - (v136 * v137);
          ++v135;
        }

        while (v135 != 9);
        for (i9 = 0; i9 != 12; ++i9)
        {
          v140 = *sub_19B606A74(a1 + 10540, i7, i5);
          v141 = *sub_19B604C58(__dst, i5, i9);
          v142 = sub_19B604C58(__dst, i7, i9);
          *v142 = *v142 - (v140 * v141);
        }
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v143 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      buf[0].i32[0] = 134217984;
      *(buf[0].i64 + 4) = i5;
      _os_log_impl(&dword_19B41C000, v143, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
    }

    v144 = sub_19B420058();
    if (*(v144 + 160) > 1 || *(v144 + 164) > 1 || *(v144 + 168) > 1 || *(v144 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      *v155 = 134217984;
      *&v155[4] = i5;
      v145 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "D[%zu] <= 0, matrix ! positive definite", v155);
      v31 = v146;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFactoredMatrix<float, 9>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, CMMatrix<T, N, M> &, const CMVector<T, M> &) [T = float, N = 9, M = 12UL]", "CoreLocation: %s\n", v145);
LABEL_90:
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v27 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[CMRelDMSensorFusionMekf] Must be initialized before propagating", buf, 2u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      __dst[0].i16[0] = 0;
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMRelDMSensorFusionMekf] Must be initialized before propagating", __dst, 2);
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMSensorFusionMekf::propagate(const IMUData &, const IMUData &, float, BOOL)", "CoreLocation: %s\n", v29);
      goto LABEL_90;
    }
  }
}

os_log_t sub_19B6060B4()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

unsigned __int16 *sub_19B6060E4(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMRelDM::State>::operator[](const size_t) const [T = CMRelDM::State]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

uint64_t sub_19B606300(unsigned __int16 *a1, uint64_t *a2)
{
  v3 = *(a1 + 1);
  v4 = *a1 + a1[1];
  if (v4 < v3)
  {
    v3 = 0;
  }

  result = sub_19B7389C0(&a1[28 * (v4 - v3) + 4], a2);
  v6 = a1[1];
  v7 = *(a1 + 1);
  if (v7 <= v6)
  {
    v8 = *a1 + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *a1 = v8 - v7;
  }

  else
  {
    a1[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_19B606380(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v2 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[BodyFaceTransform] BodyFaceTransform has not been set.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[BodyFaceTransform] BodyFaceTransform has not been set.", v7, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMVector3d &CMRelDM::BodyFaceTransform::r_fb() const", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  return a1;
}

uint64_t sub_19B606534(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
    }

    v2 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[BodyFaceTransform] BodyFaceTransform has not been set.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29080);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[BodyFaceTransform] BodyFaceTransform has not been set.", v7, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMOQuaternion &CMRelDM::BodyFaceTransform::q_bf() const", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  return a1 + 12;
}

float sub_19B6066E8(uint64_t a1, unint64_t a2, unint64_t a3)
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
      v19 = 9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 9>::operator()(size_t, size_t) const [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v9);
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
      v19 = 9;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 9>::operator()(size_t, size_t) const [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return *(a1 + 4 * (9 * a3 + a2));
}

uint64_t sub_19B606A74(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = 9;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", buf, 0x16u);
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
      v17 = a3;
      v18 = 2048;
      v19 = 9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 9>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 9]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 <= a2)
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
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
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
      v19 = a2;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 9>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 9]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_19B606DFC(uint64_t a1, unint64_t a2)
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
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", buf, 0x16u);
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
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 9>::DiagonalMatrix::operator()(size_t) [T = float, N = 9]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * a2;
}

float sub_19B606FF4(uint64_t a1, unint64_t a2, unint64_t a3)
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
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3, 9>::operator()(size_t, size_t) const [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v9);
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
      v19 = 9;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3, 9>::operator()(size_t, size_t) const [T = float, M = 3, N = 9]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

uint64_t sub_19B607380(uint64_t a1, unint64_t a2)
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
      v12 = 9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 9>::operator[](const size_t) [T = float, N = 9]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * a2;
}

float sub_19B607578(uint64_t a1, unint64_t a2, unint64_t a3)
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
      v19 = 6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 6, 9>::operator()(size_t, size_t) const [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v9);
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
      v19 = 9;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 6, 9>::operator()(size_t, size_t) const [T = float, M = 6, N = 9]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return *(a1 + 4 * (a2 + 6 * a3));
}

float sub_19B607904(uint64_t a1, unint64_t a2)
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
      v12 = 6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 6>::operator[](const size_t) const [T = float, N = 6]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

unsigned __int16 *sub_19B607AFC(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28520);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<unsigned long long>::operator[](const size_t) const [T = unsigned long long]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[4 * (v4 - v5) + 4];
}

float sub_19B607D14(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 0x51)
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
      v16 = 81;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", buf, 0x16u);
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
      v12 = 81;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 9>::operator[](size_t) const [T = float, M = 9, N = 9]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

float sub_19B607F0C(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 0xC)
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
      v16 = 12;
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
      v12 = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 12>::operator[](const size_t) const [T = float, N = 12]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

uint64_t sub_19B608104(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = sub_19B6BC5A4(1.536);
  *(a1 + 4) = sub_19B6BC5A4(20.48);
  sub_19B7978BC(a1 + 8);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  *(a1 + 2208) = 0x8000000000;
  *(a1 + 2728) = 0x8000000000;
  *(a1 + 3248) = 0x8000000000;
  *(a1 + 3768) = 0x8000000000;
  *(a1 + 5832) = 0x300000000;
  *(a1 + 6008) = 0x8000000000;
  *(a1 + 6528) = 0x8000000000;
  *(a1 + 7048) = 0x8000000000;
  *(a1 + 7568) = 0;
  *(a1 + 4800) = 0x8000000000;
  *(a1 + 7576) = 0;
  *(a1 + 7592) = 0;
  *(a1 + 7584) = 0;
  do
  {
    v5 = v3 + v4;
    if (v5 >= 0x80)
    {
      v6 = -1024;
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 4808 + v6 + 8 * v5) = v2;
    if (v3 > 0x7F)
    {
      if (v4 >= 0x7Fu)
      {
        v7 = -128;
      }

      else
      {
        v7 = 0;
      }

      v4 += v7 + 1;
      *(a1 + 4800) = v4;
    }

    else
    {
      *(a1 + 4802) = ++v3;
    }

    v2 += 20000;
  }

  while (v2 != 2560000);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMAccessoryWalkingDetector] Instantiating Walk Detector.", buf, 2u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
    }

    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMAccessoryWalkingDetector] Instantiating Walk Detector.", v13, 2);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryWalkingDetector::CMAccessoryWalkingDetector()", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return a1;
}

void sub_19B608394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v331 = *MEMORY[0x1E69E9840];
  v302 = sub_19B66BFF4(v8 + 7, v11);
  v303 = COERCE_DOUBLE(__PAIR64__(v13, v12));
  *v304 = v14;
  v15.f32[0] = sub_19B66C1A4(&v302, v9[3], v9[4], v9[5]);
  v16 = v15.i32[0];
  v18 = v17;
  v20 = v19;
  v302 = sub_19B66BFF4(v5, v15);
  v303 = COERCE_DOUBLE(__PAIR64__(v22, v21));
  *v304 = v23;
  v24 = sub_19B66C1A4(&v302, *v9, v9[1], v9[2]);
  v26 = v25;
  v28 = v27;
  v29 = *(v10 + 3770);
  v30 = *(v10 + 3768);
  if (*(v10 + 3770))
  {
    v31 = v10 + 3776;
    v32 = v29 + v30 - 1;
    v33 = *(v10 + 3772);
    if (v32 < v33)
    {
      v33 = 0;
    }

    if (*(v31 + 8 * (v32 - v33)) > v7 + 1000000)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
      }

      v34 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v35 = *(v10 + 3768) + *(v10 + 3770) - 1;
        v36 = *(v10 + 3772);
        if (v35 < v36)
        {
          v36 = 0;
        }

        v37 = *(v31 + 8 * (v35 - v36));
        v302 = 3.8522e-34;
        v303 = (v37 * 0.000001);
        *v304 = 2048;
        *&v304[2] = (v7 * 0.000001);
        v305 = 2048;
        v306 = ((v37 - v7) * 0.000001);
        _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_INFO, "[CMAccessoryWalkingDetector], dataBuffers reset due to timestamp going backwards. PreviousTS, %.3f seconds, currentTS, %.3f seconds, gap, %.3f seconds", &v302, 0x20u);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(&v302, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
        }

        v39 = *(v10 + 3768) + *(v10 + 3770) - 1;
        v40 = *(v10 + 3772);
        if (v39 < v40)
        {
          v40 = 0;
        }

        v41 = *(v31 + 8 * (v39 - v40));
        LODWORD(__src[0]) = 134218496;
        *(__src + 4) = (v41 * 0.000001);
        WORD2(__src[1]) = 2048;
        *(&__src[1] + 6) = (v7 * 0.000001);
        HIWORD(__src[2]) = 2048;
        *&__src[3] = ((v41 - v7) * 0.000001);
        LODWORD(v249) = 32;
        _os_log_send_and_compose_impl(2, 0, &v302, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMAccessoryWalkingDetector], dataBuffers reset due to timestamp going backwards. PreviousTS, %.3f seconds, currentTS, %.3f seconds, gap, %.3f seconds", COERCE_DOUBLE(__src), v249, v250);
        v43 = v42;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryWalkingDetector::resetBuffersIfTimeWentFarBackward(const uint64_t)", "CoreLocation: %s\n", v42);
        if (v43 != &v302)
        {
          free(v43);
        }
      }

      LODWORD(v30) = 0;
      LODWORD(v29) = 0;
      *(v10 + 2208) = 0;
      *(v10 + 2728) = 0;
      *(v10 + 3248) = 0;
      *(v10 + 3768) = 0;
      *(v10 + 6008) = 0;
      *(v10 + 6528) = 0;
      *(v10 + 7048) = 0;
    }
  }

  v44 = v10 + 3776;
  v45 = v30;
  v46 = v30 + v29;
  v47 = *(v10 + 3772);
  if (v46 - 1 >= v47)
  {
    v48 = *(v10 + 3772);
  }

  else
  {
    v48 = 0;
  }

  if (v29 && *(v44 + 8 * (v46 - 1 - v48)) >= v7)
  {
    ++*(v10 + 7568);
    return;
  }

  v49 = *(v10 + 2210);
  v50 = *(v10 + 2212);
  v51 = *(v10 + 2208);
  if (v51 + v49 >= v50)
  {
    v52 = *(v10 + 2212);
  }

  else
  {
    v52 = 0;
  }

  *(v10 + 4 * (v51 + v49 - v52) + 2216) = v16;
  if (v50 <= v49)
  {
    if (v51 + 1 < v50)
    {
      LOWORD(v50) = 0;
    }

    *(v10 + 2208) = v51 + 1 - v50;
  }

  else
  {
    *(v10 + 2210) = v49 + 1;
  }

  v53 = *(v10 + 2730);
  v54 = *(v10 + 2732);
  v55 = *(v10 + 2728);
  if (v55 + v53 >= v54)
  {
    v56 = *(v10 + 2732);
  }

  else
  {
    v56 = 0;
  }

  *(v10 + 4 * (v55 + v53 - v56) + 2736) = v18;
  if (v54 <= v53)
  {
    if (v55 + 1 < v54)
    {
      LOWORD(v54) = 0;
    }

    *(v10 + 2728) = v55 + 1 - v54;
  }

  else
  {
    *(v10 + 2730) = v53 + 1;
  }

  v57 = *(v10 + 3250);
  v58 = *(v10 + 3252);
  v59 = *(v10 + 3248);
  if (v59 + v57 >= v58)
  {
    v60 = *(v10 + 3252);
  }

  else
  {
    v60 = 0;
  }

  *(v10 + 4 * (v59 + v57 - v60) + 3256) = v20 + 1.0;
  if (v58 <= v57)
  {
    if (v59 + 1 < v58)
    {
      LOWORD(v58) = 0;
    }

    *(v10 + 3248) = v59 + 1 - v58;
  }

  else
  {
    *(v10 + 3250) = v57 + 1;
  }

  v61 = (v10 + 3768);
  if (v46 >= v47)
  {
    v62 = v47;
  }

  else
  {
    v62 = 0;
  }

  *(v44 + 8 * (v46 - v62)) = v7;
  if (v47 <= v29)
  {
    v63 = v30 + 1;
    if (v45 + 1 >= v47)
    {
      v64 = v47;
    }

    else
    {
      v64 = 0;
    }

    LOWORD(v30) = v63 - v64;
    *v61 = v30;
  }

  else
  {
    LOWORD(v29) = v29 + 1;
    *(v10 + 3770) = v29;
  }

  v65 = *(v10 + 6010);
  v66 = *(v10 + 6012);
  v67 = (v10 + 6016);
  v68 = *(v10 + 6008);
  if (v68 + v65 >= v66)
  {
    v69 = *(v10 + 6012);
  }

  else
  {
    v69 = 0;
  }

  v67[v68 + v65 - v69] = v28;
  v254 = (v10 + 2728);
  v255 = (v10 + 2208);
  v253 = (v10 + 3248);
  if (v66 <= v65)
  {
    if (v68 + 1 < v66)
    {
      LOWORD(v66) = 0;
    }

    *(v10 + 6008) = v68 + 1 - v66;
  }

  else
  {
    *(v10 + 6010) = v65 + 1;
  }

  v70 = *(v10 + 6530);
  v71 = *(v10 + 6532);
  v72 = (v10 + 6536);
  v73 = *(v10 + 6528);
  if (v73 + v70 >= v71)
  {
    v74 = *(v10 + 6532);
  }

  else
  {
    v74 = 0;
  }

  v72[v73 + v70 - v74] = v24;
  if (v71 <= v70)
  {
    if (v73 + 1 < v71)
    {
      LOWORD(v71) = 0;
    }

    *(v10 + 6528) = v73 + 1 - v71;
  }

  else
  {
    *(v10 + 6530) = v70 + 1;
  }

  v75 = *(v10 + 7050);
  v76 = *(v10 + 7052);
  v77 = (v10 + 7056);
  v78 = *(v10 + 7048);
  if (v78 + v75 >= v76)
  {
    v79 = *(v10 + 7052);
  }

  else
  {
    v79 = 0;
  }

  v77[v78 + v75 - v79] = v26;
  if (v76 <= v75)
  {
    if (v78 + 1 < v76)
    {
      LOWORD(v76) = 0;
    }

    *(v10 + 7048) = v78 + 1 - v76;
  }

  else
  {
    *(v10 + 7050) = v75 + 1;
  }

  if (v29)
  {
    v80 = v29 + v30 - 1;
    v81 = v80 >= v47 ? v47 : 0;
    v82 = *(v44 + 8 * (v80 - v81));
    v83 = sub_19B607AFC((v10 + 3768), 0);
    LODWORD(v85) = *(v10 + 3770);
    if ((v82 - *v83 - 2540001) < 0xFFFFFFFFFFD8EFFFLL || v85 == 128)
    {
      if (v85 < 2)
      {
        v86 = 0;
      }

      else
      {
        v86 = 0;
        v87 = 1;
        do
        {
          v88 = *sub_19B607AFC((v10 + 3768), v87);
          v89 = v87 - 1;
          v90 = sub_19B607AFC((v10 + 3768), v89);
          if (v88 - *v90 > v86)
          {
            v86 = v88 - *v90;
          }

          v85 = *(v10 + 3770);
          v87 = v89 + 2;
        }

        while (v87 < v85);
      }

      BYTE14(v257) = v86 > 0x493E0;
      v91 = *(v10 + 2210);
      v92.f32[0] = v91;
      v92.f32[1] = v86;
      *&v84 = vdiv_f32(v92, 0x497424004023D70ALL);
      v252 = v84;
      *&v258[12] = v84;
      v258[8] = v85 < 0x80;
      if (v85 <= 0x7F)
      {
        memset(__src, 0, 24);
        *&v251 = v10 + 3776;
        if (v85)
        {
          v93 = 0;
          do
          {
            v94 = *sub_19B607AFC((v10 + 3768), v93);
            v95 = (v94 - *sub_19B607AFC((v10 + 3768), 0));
            v96 = __src[1];
            if (__src[1] >= __src[2])
            {
              v98 = __src[0];
              v99 = __src[1] - __src[0];
              v100 = (__src[1] - __src[0]) >> 2;
              v101 = v100 + 1;
              if ((v100 + 1) >> 62)
              {
                sub_19B5BE690();
              }

              v102 = __src[2] - __src[0];
              if ((__src[2] - __src[0]) >> 1 > v101)
              {
                v101 = v102 >> 1;
              }

              v103 = v102 >= 0x7FFFFFFFFFFFFFFCLL;
              v104 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v103)
              {
                v104 = v101;
              }

              if (v104)
              {
                sub_19B4C4FA8(__src, v104);
              }

              v105 = (4 * v100);
              v106 = &v105[-((__src[1] - __src[0]) >> 2)];
              *v105 = v95;
              v97 = v105 + 1;
              memcpy(v106, v98, v99);
              v107 = __src[0];
              __src[0] = v106;
              __src[1] = v97;
              __src[2] = 0;
              if (v107)
              {
                operator delete(v107);
              }
            }

            else
            {
              *__src[1] = v95;
              v97 = v96 + 4;
            }

            __src[1] = v97;
            ++v93;
          }

          while (v93 < *(v10 + 3770));
          v108 = __src[0];
        }

        else
        {
          v97 = 0;
          v108 = 0;
        }

        v296[0] = 0;
        __p = 0;
        v296[1] = 0;
        sub_19B609EBC(&__p, v108, v97, (v97 - v108) >> 2);
        sub_19B609B7C(v10, &__p, v255, 2);
        if (__p)
        {
          v296[0] = __p;
          operator delete(__p);
        }

        v294[0] = 0;
        v293 = 0;
        v294[1] = 0;
        sub_19B609EBC(&v293, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v293, v254, 2);
        if (v293)
        {
          v294[0] = v293;
          operator delete(v293);
        }

        v291 = 0;
        v290 = 0;
        v292 = 0;
        sub_19B609EBC(&v290, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v290, v253, 2);
        if (v290)
        {
          v291 = v290;
          operator delete(v290);
        }

        v288 = 0;
        v287 = 0;
        v289 = 0;
        sub_19B609EBC(&v287, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v287, (v10 + 6008), 1);
        if (v287)
        {
          v288 = v287;
          operator delete(v287);
        }

        v284 = 0;
        v285 = 0;
        v286 = 0;
        sub_19B609EBC(&v284, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, &v284, (v10 + 6528), 1);
        if (v284)
        {
          v285 = v284;
          operator delete(v284);
        }

        memset(v259, 0, 24);
        sub_19B609EBC(v259, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        sub_19B609B7C(v10, v259, (v10 + 7048), 1);
        if (v259[0])
        {
          v259[1] = v259[0];
          operator delete(v259[0]);
        }

        v109 = *sub_19B607AFC((v10 + 3768), 0);
        *(v10 + 3768) = 0;
        if (*(v10 + 4804) != *(v10 + 3772))
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
          }

          v241 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
          {
            *&v242 = *(v10 + 3772);
            v243 = *(v10 + 4804);
            v302 = 3.8521e-34;
            v303 = v242;
            *v304 = 2048;
            *&v304[2] = v243;
            _os_log_impl(&dword_19B41C000, v241, OS_LOG_TYPE_FAULT, "Assertion failed: rhs.capacity() == capacity(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 70,capacity,%zu,%zu.", &v302, 0x16u);
          }

          v244 = sub_19B420058();
          if ((*(v244 + 160) & 0x80000000) == 0 || (*(v244 + 164) & 0x80000000) == 0 || (*(v244 + 168) & 0x80000000) == 0 || *(v244 + 152))
          {
            bzero(&v302, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
            }

            v245 = *(v10 + 3772);
            v246 = *(v10 + 4804);
            v298 = 134218240;
            v299 = v245;
            v300 = 2048;
            v301 = v246;
            LODWORD(v249) = 22;
            _os_log_send_and_compose_impl(2, 0, &v302, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: rhs.capacity() == capacity(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 70,capacity,%zu,%zu.", &v298, *&v249);
            v248 = v247;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CMQueue<unsigned long long>::deepCopy(const CMQueue<T> &) [T = unsigned long long]", "CoreLocation: %s\n", v247);
            if (v248 != &v302)
            {
              free(v248);
            }
          }
        }

        v44 = v10 + 3776;
        if (*(v10 + 4802))
        {
          v110 = 0;
          do
          {
            v111 = sub_19B607AFC((v10 + 4800), v110);
            v112 = *(v10 + 3770);
            v113 = *(v10 + 3772);
            v114 = *(v10 + 3768);
            if (v114 + v112 >= v113)
            {
              v115 = *(v10 + 3772);
            }

            else
            {
              v115 = 0;
            }

            *(*&v251 + 8 * (v114 + v112 - v115)) = *v111;
            if (v113 <= v112)
            {
              if (v114 + 1 < v113)
              {
                LOWORD(v113) = 0;
              }

              *v61 = v114 + 1 - v113;
            }

            else
            {
              *(v10 + 3770) = v112 + 1;
            }

            ++v110;
          }

          while (v110 < *(v10 + 4802));
          if (*(v10 + 4802))
          {
            v116 = 0;
            do
            {
              v117 = sub_19B607AFC((v10 + 3768), v116);
              *v117 += v109;
              ++v116;
            }

            while (v116 < *(v10 + 4802));
          }
        }

        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v91 = *(v10 + 2210);
      }

      __src[0] = 0x10000000000;
      __p = 0x10000000000;
      v293 = 0x10000000000;
      if (v91)
      {
        v118 = 0;
        do
        {
          v119 = sub_19B5BFE1C(v255, v118);
          sub_19B5BE78C(__src, v119);
          v120 = sub_19B5BFE1C(v254, v118);
          sub_19B5BE78C(&__p, v120);
          v121 = sub_19B5BFE1C(v253, v118);
          sub_19B5BE78C(&v293, v121);
          ++v118;
          v122 = *(v10 + 2210);
        }

        while (v118 < v122);
        if (v122 > 0xFF)
        {
LABEL_181:
          sub_19B797A04(v10 + 8, &v290, __src);
          sub_19B797A04(v10 + 8, &v287, &__p);
          sub_19B797A04(v10 + 8, &v284, &v293);
          v148 = sub_19B6BC784(*v10, *(v10 + 4), &v290);
          v149 = v148 + sub_19B6BC784(*v10, *(v10 + 4), &v287);
          *&v256 = v149;
          v150 = sub_19B6BC784(*v10, *(v10 + 4), &v284);
          v151 = v150 / v149;
          *(&v256 + 1) = v150;
          *(&v256 + 2) = v150 / v149;
          v152 = sub_19B6BC99C(*v10, *(v10 + 4), &v284);
          *(&v256 + 3) = v152;
          v153 = *(v10 + 6010);
          v154 = 0.0;
          v155 = 0.0;
          if (*(v10 + 6010))
          {
            do
            {
              v156 = *v67++;
              v155 = v155 + fabsf(v156);
              --v153;
            }

            while (v153);
            v155 = v155 * 57.2957795 * 20000.0 / 1000000.0;
          }

          *&v257 = v155;
          v157 = *(v10 + 6530);
          if (*(v10 + 6530))
          {
            v158 = 0.0;
            do
            {
              v159 = *v72++;
              v158 = v158 + fabsf(v159);
              --v157;
            }

            while (v157);
            v154 = v158 * 57.2957795 * 20000.0 / 1000000.0;
          }

          *(&v257 + 1) = v154;
          v160 = *(v10 + 7050);
          if (*(v10 + 7050))
          {
            v161 = 0.0;
            do
            {
              v162 = *v77++;
              v161 = v161 + fabsf(v162);
              --v160;
            }

            while (v160);
            v163 = v161 * 57.2957795 * 20000.0 / 1000000.0;
          }

          else
          {
            v163 = 0.0;
          }

          v164 = 0;
          *(&v257 + 2) = v163;
          if (v86 <= 0x493E0 && *&v252 >= 15.0 && v149 > 1.8)
          {
            v165 = v151 <= 0.4 || v152 <= 0.25;
            v166 = v165 || v155 < 5.0;
            if (!v166 && v155 <= 120.0)
            {
              v169 = v163 >= 0.0 && v154 >= 5.0;
              v164 = v169 && v154 <= 80.0;
            }
          }

          WORD6(v257) = v164;
          v170 = *(v10 + 5834);
          if (v170 == 3)
          {
            for (i = 1; i < v170; ++i)
            {
              v164 &= *(sub_19B609F38((v10 + 5832), i) + 28);
              BYTE13(v257) = v164;
              v170 = *(v10 + 5834);
            }
          }

          v172 = *(v10 + 3768) + *(v10 + 3770) - 1;
          v173 = *(v10 + 3772);
          if (v172 < v173)
          {
            v173 = 0;
          }

          *v258 = *(v44 + 8 * (v172 - v173));
          *&v258[20] = *(v10 + 7568);
          v174 = *(v10 + 5836);
          v175 = v10 + 5840;
          v176 = v170 + *(v10 + 5832);
          if (v176 < v174)
          {
            v174 = 0;
          }

          v177 = v175 + 56 * (v176 - v174);
          *(v177 + 48) = *&v258[16];
          v178 = v257;
          *v177 = v256;
          *(v177 + 16) = v178;
          *(v177 + 32) = *v258;
          v179 = *(v10 + 5834);
          v180 = *(v10 + 5836);
          if (v180 <= v179)
          {
            v181 = *(v10 + 5832) + 1;
            if (v181 >= v180)
            {
              v182 = *(v10 + 5836);
            }

            else
            {
              v182 = 0;
            }

            *(v10 + 5832) = v181 - v182;
          }

          else
          {
            LOWORD(v179) = v179 + 1;
            *(v10 + 5834) = v179;
          }

          v183 = *(v10 + 7576);
          if (v183 && v179 == 3 && *(v10 + 7584))
          {
            v184 = *(v10 + 5832) + 2;
            if (v184 < v180)
            {
              v180 = 0;
            }

            v183(*(v175 + 56 * (v184 - v180) + 29), *(v175 + 56 * (v184 - v180) + 32));
          }

          v185 = *(v10 + 7592);
          if (v185)
          {
            sub_19B5E779C(v185, &v256);
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
          }

          v186 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
          {
            v302 = 3.8536e-34;
            v303 = *&v256;
            *v304 = 2048;
            *&v304[2] = *(&v256 + 1);
            v305 = 2048;
            v306 = *(&v256 + 2);
            v307 = 2048;
            v308 = *(&v256 + 3);
            v309 = 2048;
            v310 = *&v257;
            v311 = 2048;
            v312 = *(&v257 + 1);
            v313 = 2048;
            v314 = *(&v257 + 2);
            v315 = 1024;
            v316 = BYTE12(v257);
            v317 = 1024;
            v318 = BYTE13(v257);
            v319 = 1024;
            v320 = BYTE14(v257);
            v321 = 2048;
            v322 = *v258;
            v323 = 1024;
            v324 = v258[8];
            v325 = 2048;
            v326 = *&v258[12];
            v327 = 2048;
            v328 = *&v258[16];
            v329 = 1024;
            v330 = *&v258[20];
            _os_log_impl(&dword_19B41C000, v186, OS_LOG_TYPE_INFO, "[CMAccessoryWalkingDetector],pedEnergyPlane,%f,pedEnergyZ,%f,pedEnergyZByPlane,%f,pedEnergyZPeak,%f,thetaRollFaceDeg,%f,thetaPitchFaceDeg,%f,thetaYawFaceDeg,%f,isWalkingRaw,%d,isWalkingFiltered,%d,isMissingSamples,%d,timestamp,%lld,isInterpolated,%d,dataRate,%f,maxSampleDeltaInSecond,%f,reversedTimestampCounts,%d", &v302, 0x84u);
          }

          v187 = sub_19B420058();
          if (*(v187 + 160) > 1 || *(v187 + 164) > 1 || *(v187 + 168) > 1 || *(v187 + 152))
          {
            bzero(&v302, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E290A0);
            }

            LODWORD(v259[0]) = 134221568;
            *(v259 + 4) = *&v256;
            WORD2(v259[1]) = 2048;
            *(&v259[1] + 6) = *(&v256 + 1);
            HIWORD(v259[2]) = 2048;
            *&v259[3] = *(&v256 + 2);
            v260 = 2048;
            v261 = *(&v256 + 3);
            v262 = 2048;
            v263 = *&v257;
            v264 = 2048;
            v265 = *(&v257 + 1);
            v266 = 2048;
            v267 = *(&v257 + 2);
            v268 = 1024;
            v269 = BYTE12(v257);
            v270 = 1024;
            v271 = BYTE13(v257);
            v272 = 1024;
            v273 = BYTE14(v257);
            v274 = 2048;
            v275 = *v258;
            v276 = 1024;
            v277 = v258[8];
            v278 = 2048;
            v279 = *&v258[12];
            v280 = 2048;
            v281 = *&v258[16];
            v282 = 1024;
            v283 = *&v258[20];
            LODWORD(v249) = 132;
            _os_log_send_and_compose_impl(2, 0, &v302, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMAccessoryWalkingDetector],pedEnergyPlane,%f,pedEnergyZ,%f,pedEnergyZByPlane,%f,pedEnergyZPeak,%f,thetaRollFaceDeg,%f,thetaPitchFaceDeg,%f,thetaYawFaceDeg,%f,isWalkingRaw,%d,isWalkingFiltered,%d,isMissingSamples,%d,timestamp,%lld,isInterpolated,%d,dataRate,%f,maxSampleDeltaInSecond,%f,reversedTimestampCounts,%d", COERCE_DOUBLE(v259), v249, v250, v251, *&v252, *(&v252 + 1), *&v253, v254, v255, v256, *(&v256 + 1), v257, *(&v257 + 1), *v258, *&v258[8]);
            v189 = v188;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryWalkingDetector::processData()", "CoreLocation: %s\n", v188);
            if (v189 != &v302)
            {
              free(v189);
            }
          }

          v190 = *(v10 + 5832) + *(v10 + 5834) - 1;
          v191 = *(v10 + 5836);
          if (v190 < v191)
          {
            v191 = 0;
          }

          if (*(v175 + 56 * (v190 - v191) + 30) == 1)
          {
            *v255 = 0;
            *v254 = 0;
            *(v10 + 6008) = 0;
            *v253 = 0;
            *v61 = 0;
            *(v10 + 6528) = 0;
            *(v10 + 7048) = 0;
          }

          else
          {
            v192 = *(v10 + 2210);
            if (v192 >= 0x41)
            {
              v193 = (v192 - 64);
              v194 = *(v10 + 2208);
              v195 = *(v10 + 2212);
              do
              {
                if (v192)
                {
                  v196 = v194 + 1;
                  if (v196 >= v195)
                  {
                    v197 = v195;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  v198 = v196 - v197;
                  v194 = v198;
                  *(v10 + 2208) = v198;
                  LOWORD(v192) = v192 - 1;
                  *(v10 + 2210) = v192;
                }

                else
                {
                  LOWORD(v192) = 0;
                }

                --v193;
              }

              while (v193);
            }

            v199 = *(v10 + 2730);
            if (v199 >= 0x41)
            {
              v200 = (v199 - 64);
              v201 = *(v10 + 2728);
              v202 = *(v10 + 2732);
              do
              {
                if (v199)
                {
                  v203 = v201 + 1;
                  if (v203 >= v202)
                  {
                    v204 = v202;
                  }

                  else
                  {
                    v204 = 0;
                  }

                  v205 = v203 - v204;
                  v201 = v205;
                  *(v10 + 2728) = v205;
                  LOWORD(v199) = v199 - 1;
                  *(v10 + 2730) = v199;
                }

                else
                {
                  LOWORD(v199) = 0;
                }

                --v200;
              }

              while (v200);
            }

            v206 = *(v10 + 3250);
            if (v206 >= 0x41)
            {
              v207 = (v206 - 64);
              v208 = *(v10 + 3248);
              v209 = *(v10 + 3252);
              do
              {
                if (v206)
                {
                  v210 = v208 + 1;
                  if (v210 >= v209)
                  {
                    v211 = v209;
                  }

                  else
                  {
                    v211 = 0;
                  }

                  v212 = v210 - v211;
                  v208 = v212;
                  *(v10 + 3248) = v212;
                  LOWORD(v206) = v206 - 1;
                  *(v10 + 3250) = v206;
                }

                else
                {
                  LOWORD(v206) = 0;
                }

                --v207;
              }

              while (v207);
            }

            v213 = *(v10 + 3770);
            if (v213 >= 0x41)
            {
              v214 = (v213 - 64);
              v215 = *(v10 + 3768);
              v216 = *(v10 + 3772);
              do
              {
                if (v213)
                {
                  v217 = v215 + 1;
                  if (v217 >= v216)
                  {
                    v218 = v216;
                  }

                  else
                  {
                    v218 = 0;
                  }

                  v219 = v217 - v218;
                  v215 = v219;
                  *(v10 + 3768) = v219;
                  LOWORD(v213) = v213 - 1;
                  *(v10 + 3770) = v213;
                }

                else
                {
                  LOWORD(v213) = 0;
                }

                --v214;
              }

              while (v214);
            }

            v220 = *(v10 + 6010);
            if (v220 >= 0x41)
            {
              v221 = (v220 - 64);
              v222 = *(v10 + 6008);
              v223 = *(v10 + 6012);
              do
              {
                if (v220)
                {
                  v224 = v222 + 1;
                  if (v224 >= v223)
                  {
                    v225 = v223;
                  }

                  else
                  {
                    v225 = 0;
                  }

                  v226 = v224 - v225;
                  v222 = v226;
                  *(v10 + 6008) = v226;
                  LOWORD(v220) = v220 - 1;
                  *(v10 + 6010) = v220;
                }

                else
                {
                  LOWORD(v220) = 0;
                }

                --v221;
              }

              while (v221);
            }

            v227 = *(v10 + 6530);
            if (v227 >= 0x41)
            {
              v228 = (v227 - 64);
              v229 = *(v10 + 6528);
              v230 = *(v10 + 6532);
              do
              {
                if (v227)
                {
                  v231 = v229 + 1;
                  if (v231 >= v230)
                  {
                    v232 = v230;
                  }

                  else
                  {
                    v232 = 0;
                  }

                  v233 = v231 - v232;
                  v229 = v233;
                  *(v10 + 6528) = v233;
                  LOWORD(v227) = v227 - 1;
                  *(v10 + 6530) = v227;
                }

                else
                {
                  LOWORD(v227) = 0;
                }

                --v228;
              }

              while (v228);
            }

            v234 = *(v10 + 7050);
            if (v234 >= 0x41)
            {
              v235 = (v234 - 64);
              v236 = *(v10 + 7048);
              v237 = *(v10 + 7052);
              do
              {
                if (v234)
                {
                  v238 = v236 + 1;
                  if (v238 >= v237)
                  {
                    v239 = v237;
                  }

                  else
                  {
                    v239 = 0;
                  }

                  v240 = v238 - v239;
                  v236 = v240;
                  *(v10 + 7048) = v240;
                  LOWORD(v234) = v234 - 1;
                  *(v10 + 7050) = v234;
                }

                else
                {
                  LOWORD(v234) = 0;
                }

                --v235;
              }

              while (v235);
            }
          }

          *(v10 + 7568) = 0;
          return;
        }

        v123 = v293;
        v124 = __p;
        v125 = LOWORD(__src[0]);
        v126 = HIDWORD(__src[0]);
        v127 = HIDWORD(__p);
        v128 = HIDWORD(v293);
        v129 = WORD1(__src[0]);
        v130 = WORD1(__p);
        v131 = WORD1(v293);
      }

      else
      {
        v131 = 0;
        v130 = 0;
        v129 = 0;
        v125 = 0;
        v124 = 0;
        v123 = 0;
        v122 = 0;
        v128 = 256;
        v127 = 256;
        v126 = 256;
      }

      v132 = v122 - 256;
      do
      {
        v133 = v125 + v129;
        if (v133 >= v126)
        {
          v134 = v126;
        }

        else
        {
          v134 = 0;
        }

        *(&__src[1] + v133 - v134) = 0;
        if (v126 <= v129)
        {
          v135 = v125 + 1;
          if (v135 >= v126)
          {
            v136 = v126;
          }

          else
          {
            v136 = 0;
          }

          v137 = v135 - v136;
          v125 = v137;
          LOWORD(__src[0]) = v137;
        }

        else
        {
          WORD1(__src[0]) = ++v129;
        }

        v138 = v124 + v130;
        if (v138 >= v127)
        {
          v139 = v127;
        }

        else
        {
          v139 = 0;
        }

        *(v296 + v138 - v139) = 0;
        if (v127 <= v130)
        {
          v140 = v124 + 1;
          if (v140 >= v127)
          {
            v141 = v127;
          }

          else
          {
            v141 = 0;
          }

          v142 = v140 - v141;
          v124 = v142;
          LOWORD(__p) = v142;
        }

        else
        {
          WORD1(__p) = ++v130;
        }

        v143 = v123 + v131;
        if (v143 >= v128)
        {
          v144 = v128;
        }

        else
        {
          v144 = 0;
        }

        *(v294 + v143 - v144) = 0;
        if (v128 <= v131)
        {
          v145 = v123 + 1;
          if (v145 >= v128)
          {
            v146 = v128;
          }

          else
          {
            v146 = 0;
          }

          v147 = v145 - v146;
          v123 = v147;
          LOWORD(v293) = v147;
        }

        else
        {
          WORD1(v293) = ++v131;
        }

        v103 = __CFADD__(v132++, 1);
      }

      while (!v103);
      goto LABEL_181;
    }
  }
}

void sub_19B609AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = STACK[0xF20];
  if (STACK[0xF20])
  {
    STACK[0xF28] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_19B609B7C(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v8 = a3[1];
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v8)
  {
    sub_19B4C4F6C(&v45, v8);
  }

  v9 = 0;
  *a3 = 0;
  if (*(a1 + 4802))
  {
    v10 = 0;
    if (*(a1 + 4802) >= 0x80u)
    {
      v11 = 128;
    }

    else
    {
      v11 = *(a1 + 4802);
    }

    v12 = a4 + 1;
    while (1)
    {
      v13 = *sub_19B607AFC((a1 + 4800), v10);
      __p = 0;
      v43 = 0;
      v44 = 0;
      sub_19B609EBC(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v39 = 0;
      v40 = 0;
      v41 = 0;
      sub_19B609EBC(&v39, v45, v46, (v46 - v45) >> 2);
      v14 = __p;
      v15 = v39;
      v16 = v40 - v39;
      v17 = (v40 - v39) >> 2;
      if (v17 <= a4)
      {
        v18 = (v40 - v39) >> 2;
      }

      else
      {
        v18 = v12;
      }

      v19 = v13;
      v20 = v39;
      if (*__p >= v13)
      {
        goto LABEL_19;
      }

      v21 = (v16 << 30) - 0x100000000;
      if (*(__p + (v21 >> 30)) <= v19)
      {
        break;
      }

      if (v17 < 1)
      {
        LODWORD(v22) = 0;
      }

      else
      {
        v22 = 0;
        v23 = (v16 >> 2) & 0x7FFFFFFF;
        while (*(__p + v22) < v19)
        {
          if (v23 == ++v22)
          {
            v22 = (v40 - v39) >> 2;
            break;
          }
        }
      }

      if (v18 < 1)
      {
        v24 = 0.0;
      }

      else
      {
        v29 = 0;
        v30 = (v22 - (v18 >> 1)) & ~((v22 - (v18 >> 1)) >> 31);
        v31 = v30 + v18;
        if (v30 + v18 > v17)
        {
          v30 = v17 - v18;
        }

        v32 = v30 + v18;
        if (v31 < v17)
        {
          LODWORD(v17) = v31;
        }

        v33 = v17 - v18;
        v34 = v32;
        v24 = 0.0;
        v35 = v33;
        do
        {
          v36 = 1.0;
          v37 = v29;
          v38 = v33;
          do
          {
            if (v37)
            {
              v36 = (v36 * (v19 - *(__p + v38))) / (*(__p + v35) - *(__p + v38));
            }

            ++v38;
            --v37;
          }

          while (v38 < v34);
          v24 = v24 + (*&v39[4 * v35++] * v36);
          ++v29;
        }

        while (v35 < v34);
      }

LABEL_20:
      v25 = a3[1];
      v26 = *(a3 + 1);
      v27 = *a3;
      if (v27 + v25 >= v26)
      {
        v28 = *(a3 + 1);
      }

      else
      {
        v28 = 0;
      }

      *&a3[2 * (v27 + v25 - v28) + 4] = v24;
      if (v26 <= v25)
      {
        if (v27 + 1 < v26)
        {
          LOWORD(v26) = 0;
        }

        *a3 = v27 + 1 - v26;
        if (!v15)
        {
          goto LABEL_30;
        }
      }

      else
      {
        a3[1] = v25 + 1;
        if (!v15)
        {
          goto LABEL_30;
        }
      }

      v40 = v15;
      operator delete(v15);
      v14 = __p;
LABEL_30:
      if (v14)
      {
        v43 = v14;
        operator delete(v14);
      }

      if (++v10 == v11)
      {
        v9 = v45;
        goto LABEL_48;
      }
    }

    v20 = &v39[4 * (v21 >> 32)];
LABEL_19:
    v24 = *v20;
    goto LABEL_20;
  }

LABEL_48:
  if (v9)
  {
    v46 = v9;
    operator delete(v9);
  }
}

void sub_19B609E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B609E8C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t *sub_19B609EBC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B4C4F6C(result, a4);
  }

  return result;
}

void sub_19B609F1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_19B609F38(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E288C0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<DistViewDetection>::operator[](const size_t) const [T = DistViewDetection]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

id *sub_19B60A1A4(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = RMConnectionClient;
    v11 = objc_msgSendSuper2(&v16, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 4, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_setProperty_nonatomic_copy(a1, v12, v10, 48);
      v13 = objc_opt_new();
      v14 = a1[7];
      a1[7] = v13;

      *(a1 + 8) = 1;
    }
  }

  return a1;
}

void sub_19B60A280(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v2 = *(a1 + 56);
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v25, v31, 16);
    if (!v4)
    {
      v6 = v2;
LABEL_31:

      return;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        if (v9 && *(v9 + 24))
        {
          v10 = v9;
          v11 = v6;
          v6 = v10;
        }

        else
        {
          if (qword_1EAFE2ED8 != -1)
          {
            dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
          }

          v12 = qword_1EAFE2EE0;
          if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEFAULT))
          {
            if (v9)
            {
              v13 = *(v9 + 8);
            }

            else
            {
              v13 = 0;
            }

            *buf = 138412290;
            v30 = v13;
            v14 = v12;
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "Sending cached message %@", buf, 0xCu);
          }

          v15 = *(a1 + 16);
          if (v9)
          {
            v16 = *(v9 + 8);
            v17 = *(v9 + 16);
          }

          else
          {
            v16 = 0;
            v17 = 0;
          }

          v11 = v15;
          sub_19B5DFD80(v11, v16, v17);
        }

        ++v8;
      }

      while (v5 != v8);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v18, &v25, v31, 16);
      v5 = v19;
    }

    while (v19);

    if (v6)
    {
      if (qword_1EAFE2ED8 != -1)
      {
        dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
      }

      v20 = qword_1EAFE2EE0;
      if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "Restoring the streaming channel", buf, 2u);
      }

      v21 = v6[1];
      v22 = v6[3];
      v23 = v6[2];
      v24 = v21;
      sub_19B60A584(a1, v24, v23, v22);

      goto LABEL_31;
    }
  }
}

id sub_19B60A530()
{
  if (qword_1EAFE2ED8 != -1)
  {
    dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
  }

  v1 = qword_1EAFE2EE0;

  return v1;
}

void sub_19B60A584(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (*(a1 + 40))
    {
      v23 = sub_19B60A530();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v28 = 68289539;
        *&v28[4] = 0;
        *&v28[8] = 2082;
        *&v28[10] = "";
        v29 = 2082;
        v30 = "assert";
        v31 = 2081;
        v32 = "!self.streamingDataCallback";
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v28, 0x26u);
      }

      v24 = sub_19B60A530();
      if (os_signpost_enabled(v24))
      {
        *v28 = 68289539;
        *&v28[4] = 0;
        *&v28[8] = 2082;
        *&v28[10] = "";
        v29 = 2082;
        v30 = "assert";
        v31 = 2081;
        v32 = "!self.streamingDataCallback";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Stream requested while one is already present", "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v28, 0x26u);
      }

      v25 = sub_19B60A530();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *v28 = 68289539;
        *&v28[4] = 0;
        *&v28[8] = 2082;
        *&v28[10] = "";
        v29 = 2082;
        v30 = "assert";
        v31 = 2081;
        v32 = "!self.streamingDataCallback";
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v28, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionClient.m", 168, "[RMConnectionClient requestStreamingWithMessage:data:callback:]");
    }

    objc_setProperty_nonatomic_copy(a1, v11, v10, 40);
    v12 = *(a1 + 16);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B60AAB8;
    v26[3] = &unk_1E75332B8;
    v26[4] = a1;
    v13 = v10;
    v27 = v13;
    sub_19B5E0B54(v12, v8, v9, v26);
    v14 = *(a1 + 56);
    v15 = [RMConnectionClientCachedMessage alloc];
    v16 = v8;
    v17 = v9;
    v18 = v13;
    if (v15)
    {
      *v28 = v15;
      *&v28[8] = RMConnectionClientCachedMessage;
      v19 = objc_msgSendSuper2(v28, sel_init);
      v15 = v19;
      if (v19)
      {
        objc_storeStrong(&v19->_name, a2);
        objc_storeStrong(&v15->_data, a3);
        v20 = _Block_copy(v18);
        streamingCallback = v15->_streamingCallback;
        v15->_streamingCallback = v20;
      }
    }

    objc_msgSend_addObject_(v14, v22, v15);
  }
}

void sub_19B60A904(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (*(a1 + 8))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        objc_storeWeak((v2 + 24), 0);
        v3 = *(a1 + 16);
        if (v3)
        {
          objc_storeWeak((v3 + 16), 0);
          v4 = *(a1 + 16);
        }

        else
        {
          v4 = 0;
        }

        sub_19B5DFC00(v4);
        v5 = *(a1 + 16);
        *(a1 + 16) = 0;
      }

      v6 = *(a1 + 24);
      v9 = objc_msgSend_UTF8String(v6, v7, v8);
      mach_service = xpc_connection_create_mach_service(v9, *(a1 + 32), 0);

      v10 = [RMConnectionEndpoint alloc];
      v11 = *(a1 + 32);
      v12 = sub_19B5DF83C(v10, mach_service, v11);
      v13 = *(a1 + 16);
      *(a1 + 16) = v12;

      v14 = *(a1 + 16);
      if (v14 && (objc_storeWeak((v14 + 16), a1), (v15 = *(a1 + 16)) != 0))
      {
        objc_storeWeak((v15 + 24), a1);
        v16 = *(a1 + 16);
      }

      else
      {
        v16 = 0;
      }

      sub_19B5DFCA4(v16);
    }

    else
    {
      if (qword_1EAFE2ED8 != -1)
      {
        dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
      }

      v17 = qword_1EAFE2EE0;
      if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "Trying to connect after invalidation", buf, 2u);
      }
    }
  }
}

void sub_19B60AAB8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_19B60ABA4(*(a1 + 32));
  if (objc_msgSend_code(v3, v4, v5) == -3 && ((v6 = *(a1 + 32)) == 0 ? (v7 = 0) : (v7 = *(v6 + 16)), sub_19B5E179C(v7)))
  {
    if (qword_1EAFE2ED8 != -1)
    {
      dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
    }

    v8 = qword_1EAFE2EE0;
    if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "#Warning The streaming connection has been interrupted", v9, 2u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_19B60ABA4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (qword_1EAFE2ED8 != -1)
    {
      dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
    }

    v2 = qword_1EAFE2EE0;
    if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Stopping the streaming session", v4, 2u);
    }

    sub_19B5E0ABC(*(a1 + 16));
    objc_setProperty_nonatomic_copy(a1, v3, 0, 40);
  }
}

void sub_19B60AC5C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    sub_19B60ABA4(a1);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(a1 + 56);
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
    if (v4)
    {
      v6 = v4;
      v7 = 0;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        v7 += v6;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v11 = *(*(&v13 + 1) + 8 * v9);
          if (v11 && *(v11 + 24))
          {

            objc_msgSend_removeObjectAtIndex_(*(a1 + 56), v12, v10, v13);
            return;
          }

          ++v10;
          ++v9;
        }

        while (v6 != v9);
        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v13, v17, 16);
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }
}

void sub_19B60AD88(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    *(a1 + 8) = 0;
    v4 = *(a1 + 64);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    objc_msgSend_removeAllObjects(*(a1 + 56), v2, v3);
    objc_setProperty_nonatomic_copy(a1, v6, 0, 48);
    sub_19B60AC5C(a1);
    sub_19B5DFC00(*(a1 + 16));
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_19B60AE14(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_19B60AE24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B60AEA4;
  block[3] = &unk_1E75332E0;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B60AEA4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2[2])
    {

      sub_19B60AE14(v2, 0);
    }

    else if (v2[8])
    {
      v2[9] *= 2;
      v3 = *(a1 + 32);
      if (v3 && *(v3 + 72) >= 0x81uLL)
      {
        *(v3 + 72) = 128;
      }

      if (qword_1EAFE2ED8 != -1)
      {
        dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
      }

      v4 = qword_1EAFE2EE0;
      if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          v6 = *(v6 + 72);
        }

        v13 = 134217984;
        v14 = v6;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Connection still invalid, next reconnection attempt will be in %lu seconds", &v13, 0xCu);
      }

      v7 = *(a1 + 32);
      if (v7 && (objc_setProperty_nonatomic_copy(v7, v5, 0, 40), (v8 = *(a1 + 32)) != 0))
      {
        v9 = *(v8 + 64);
        v10 = 1000000000 * *(v8 + 72);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v11 = v9;
      v12 = dispatch_time(0, v10);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

void sub_19B60B668(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (qword_1EAFE2ED8 != -1)
    {
      dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
    }

    v2 = qword_1EAFE2EE0;
    if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Reconnection attempt", v4, 2u);
    }

    if (!*(v1 + 16))
    {
      sub_19B60A904(v1);
      sub_19B60A280(v1);
      v3 = sub_19B5E17D8(*(v1 + 16));
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = sub_19B60AE24;
      v4[3] = &unk_1E75332E0;
      v4[4] = v1;
      xpc_connection_send_barrier(v3, v4);
    }
  }
}

uint64_t sub_19B60B8EC()
{
  v0 = os_log_create("com.apple.RelativeMotion", "ConnectionClient");
  v1 = qword_1EAFE2EE0;
  qword_1EAFE2EE0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_19B60BFA4()
{
  if (qword_1ED71CAB8 != -1)
  {
    dispatch_once(&qword_1ED71CAB8, &unk_1F0E290E0);
  }

  return qword_1ED71CAB0;
}

void sub_19B60C0A0(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B60C0D8(uint64_t a1, int a2, double *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v23) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryMonitor] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (result = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

      v18 = 67240192;
      LODWORD(v19) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryMonitor] Unrecognized update interval notification %{public}d", &v18, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryMonitor::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
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
    if (*a3 <= 0.0)
    {
      v11 = &unk_1F0E6A498;
    }

    else
    {
      v11 = &unk_1F0E6A480;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v12 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v13 = *a3;
      *buf = 134349314;
      v23 = v13;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[AccessoryMonitor] Setting update interval to %{public}f, reportInterval %{public}@", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

      v15 = *a3;
      v18 = 134349314;
      v19 = v15;
      v20 = 2114;
      v21 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryMonitor] Setting update interval to %{public}f, reportInterval %{public}@", &v18, 22);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryMonitor::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    (*(**(a1 + 32) + 16))(*(a1 + 32), @"ReportInterval", v11);
    return *a3;
  }

  return result;
}

void sub_19B60C48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 1)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      buf = 134349312;
      *buf_4 = 0;
      v17 = 2048;
      v18 = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryMonitor] invalid message: empty message %{public}p (%zd)", &buf, 0x16u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

      v11 = 134349312;
      v12 = 0;
      v13 = 2048;
      v14 = 0;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryMonitor] invalid message: empty message %{public}p (%zd)", &v11, 22);
LABEL_22:
      v10 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryMonitor::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v6);
      if (v10 != &buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v7 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      buf = 67240192;
      *buf_4 = IOHIDEventGetType();
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "[AccessoryMonitor] unexpected event type %{public}u", &buf, 8u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
      }

      v9 = qword_1ED71C7C8;
      v11 = 67240192;
      LODWORD(v12) = IOHIDEventGetType();
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, v9, 17, "[AccessoryMonitor] unexpected event type %{public}u", &v11, 8);
      goto LABEL_22;
    }
  }
}

uint64_t sub_19B60D34C(uint64_t a1, const char *a2)
{
  v22[8] = *MEMORY[0x1E69E9840];
  v21[0] = @"productID";
  v22[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *(a1 + 40));
  v21[1] = @"averageTemperature";
  v22[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v3, *(*(a1 + 32) + 13));
  v21[2] = @"minTemperature";
  v22[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v4, *(*(a1 + 32) + 14));
  v21[3] = @"maxTemperature";
  v22[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, *(*(a1 + 32) + 15));
  v21[4] = @"biasTemperature";
  v22[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, *(*(a1 + 32) + 16));
  v21[5] = @"deltaAverageTemperature";
  v22[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, (*(*(a1 + 32) + 13) - *(*(a1 + 32) + 16)));
  v21[6] = @"deltaMinTemperature";
  v22[6] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, (*(*(a1 + 32) + 14) - *(*(a1 + 32) + 16)));
  v21[7] = @"deltaMaxTemperature";
  v22[7] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, (*(*(a1 + 32) + 15) - *(*(a1 + 32) + 16)));
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v22, v21, 8);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
  }

  v12 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = v11;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[AccessoryMonitor] Sending analytics: \n%{private}@", buf, 0xCu);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v17 = 138477827;
    v18 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryMonitor] Sending analytics: \n%{private}@", &v17, 12);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryMonitor::onMonitorEvent(const uint8_t *const, const size_t, const CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return v11;
}

void sub_19B60D648(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!sub_19B43EE18(*(a1 + 32)))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v7 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[AccessoryMonitor] onAccessoryStatusUpdate error. No service ref.", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    LOWORD(v13[0]) = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryMonitor] onAccessoryStatusUpdate error. No service ref.", v13, 2, v13[0]);
LABEL_34:
    v6 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryMonitor::onServiceConnection()", "CoreLocation: %s\n", v10);
LABEL_35:
    if (v6 != buf)
    {
      free(v6);
    }

    return;
  }

  if (!sub_19B750BBC(a1, 0, "GYRO18CLAccessoryMonitor", 4uLL))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    v11 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[AccessoryNotifier] onAccessoryStatusUpdate - Failed to ping", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    LOWORD(v13[0]) = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryNotifier] onAccessoryStatusUpdate - Failed to ping", v13, 2, v13[0]);
    goto LABEL_34;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryMonitor] onAccessoryStatusUpdate - Accessory ping sent.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27FA0);
    }

    LOWORD(v13[0]) = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryMonitor] onAccessoryStatusUpdate - Accessory ping sent.", v13, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryMonitor::onServiceConnection()", "CoreLocation: %s\n", v4);
    goto LABEL_35;
  }
}

os_log_t sub_19B60DA2C()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B60DA60(uint64_t a1)
{
  *a1 = &unk_1F0E33A28;
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  sub_19B445384((a1 + 120));
  sub_19B445384((a1 + 104));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return sub_19B445384(a1);
}

void sub_19B60DAF8(uint64_t a1)
{
  sub_19B60DA60(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B60DB30(char *a1, int a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if ((a1[96] & 1) == 0)
  {
    v2 = a1;
    if (!a2)
    {
      goto LABEL_24;
    }

    v3 = a1 + 24;
    v4 = a1[47];
    v5 = a1 + 24;
    if (v4 < 0)
    {
      v5 = *v3;
    }

    if (!stat(v5, &v64) && (v64.st_uid != *(v2 + 22) || v64.st_gid != *(v2 + 23) || (~v64.st_mode & 0x1B6) != 0))
    {
      p_vtable = CMDeviceOrientationManager.vtable;
      if (qword_1ED71C820 != -1)
      {
        goto LABEL_90;
      }

      while (1)
      {
        v7 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v3;
          if (v2[47] < 0)
          {
            v8 = *v3;
          }

          v9 = *(v2 + 22);
          v10 = *(v2 + 23);
          buf[0].st_dev = 136316674;
          *&buf[0].st_mode = v8;
          WORD2(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 6) = v64.st_uid;
          HIWORD(buf[0].st_uid) = 1024;
          buf[0].st_gid = v9;
          LOWORD(buf[0].st_rdev) = 1024;
          *(&buf[0].st_rdev + 2) = v64.st_gid;
          *(&buf[0].st_rdev + 3) = 1024;
          LODWORD(buf[0].st_atimespec.tv_sec) = v10;
          WORD2(buf[0].st_atimespec.tv_sec) = 1024;
          *(&buf[0].st_atimespec.tv_sec + 6) = v64.st_mode;
          WORD1(buf[0].st_atimespec.tv_nsec) = 1024;
          HIDWORD(buf[0].st_atimespec.tv_nsec) = 438;
          _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", buf, 0x30u);
        }

        v11 = sub_19B420058();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (p_vtable[260] != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }

          if (v2[47] < 0)
          {
            v3 = *v3;
          }

          v12 = *(v2 + 22);
          v13 = *(v2 + 23);
          v65 = 136316674;
          v66 = v3;
          v67 = 1024;
          st_uid = v64.st_uid;
          v69 = 1024;
          *v70 = v12;
          *&v70[4] = 1024;
          *&v70[6] = v64.st_gid;
          v71 = 1024;
          v72 = v13;
          v73 = 1024;
          st_mode = v64.st_mode;
          v75 = 1024;
          v76 = 438;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 0, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", &v65, 48, v62, v63, v64.st_dev, LODWORD(v64.st_ino), v64.st_uid);
          v15 = v14;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v14);
          if (v15 != buf)
          {
            free(v15);
          }
        }

LABEL_24:
        v16 = (v2 + 24);
        v17 = v2 + 24;
        if (v2[47] < 0)
        {
          v17 = *v16;
        }

        v18 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v17, 0x8000100u);
        if (!v18)
        {
          break;
        }

        v21 = v18;
        v22 = objc_msgSend_pathComponents(v18, v19, v20);
        v27 = objc_msgSend_count(v22, v23, v24) - 1;
        if (v27 < 2)
        {
LABEL_34:
          CFRelease(v21);
          break;
        }

        PathComponent = v21;
        while (1)
        {
          PathComponent = objc_msgSend_stringByDeletingLastPathComponent(PathComponent, v25, v26);
          if ((objc_msgSend_isEqualToString_(PathComponent, v29, @"/var") & 1) == 0 && (objc_msgSend_isEqualToString_(PathComponent, v25, @"/tmp") & 1) == 0)
          {
            v30 = objc_msgSend_fileSystemRepresentation(PathComponent, v25, v26);
            if (!lstat(v30, buf) && (buf[0].st_mode & 0xF000) == 0xA000)
            {
              break;
            }
          }

          if (--v27 <= 1)
          {
            goto LABEL_34;
          }
        }

        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
        }

        v59 = off_1ED71C828;
        p_vtable = "sE";
        v3 = "assert";
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B41C000, v59, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }
        }

        v60 = off_1ED71C828;
        if (os_signpost_enabled(off_1ED71C828))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v60, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }
        }

        v2 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLPreferences.mm", 392, "setFileAttributes");
LABEL_90:
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }

      v31 = v2 + 24;
      if (v2[47] < 0)
      {
        v31 = *v16;
      }

      if (!lstat(v31, &v64))
      {
        v32 = v2 + 24;
        if (v2[47] < 0)
        {
          v32 = *v16;
        }

        if (lchmod(v32, 0x1B6u))
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }

          v33 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
          {
            v34 = v2 + 24;
            if (v2[47] < 0)
            {
              v34 = *v16;
            }

            v35 = *__error();
            v36 = __error();
            v37 = strerror(*v36);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v34;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v35;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v37;
            _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "could not lchmod %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v38 = sub_19B420058();
          if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
            }

            v39 = off_1ED71C828;
            v40 = v2 + 24;
            if (v2[47] < 0)
            {
              v40 = *v16;
            }

            v41 = *__error();
            v42 = __error();
            v43 = strerror(*v42);
            v65 = 136446722;
            v66 = v40;
            v67 = 1026;
            st_uid = v41;
            v69 = 2082;
            *v70 = v43;
            LODWORD(v61) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v39, 17, "could not lchmod %{public}s errno %{public}d (%{public}s)", &v65, v61);
            v45 = v44;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v44);
            if (v45 != buf)
            {
              free(v45);
            }
          }
        }

        v46 = v2 + 24;
        if (v2[47] < 0)
        {
          v46 = *v16;
        }

        if (lchown(v46, *(v2 + 22), *(v2 + 23)))
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
          }

          v47 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
          {
            v48 = v2 + 24;
            if (v2[47] < 0)
            {
              v48 = *v16;
            }

            v49 = *__error();
            v50 = __error();
            v51 = strerror(*v50);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v48;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v49;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v51;
            _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_FAULT, "could not lchown %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v52 = sub_19B420058();
          if ((*(v52 + 160) & 0x80000000) == 0 || (*(v52 + 164) & 0x80000000) == 0 || (*(v52 + 168) & 0x80000000) == 0 || *(v52 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
            }

            v53 = off_1ED71C828;
            if (v2[47] < 0)
            {
              v16 = *v16;
            }

            v54 = *__error();
            v55 = __error();
            v56 = strerror(*v55);
            v65 = 136446722;
            v66 = v16;
            v67 = 1026;
            st_uid = v54;
            v69 = 2082;
            *v70 = v56;
            LODWORD(v61) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v53, 17, "could not lchown %{public}s errno %{public}d (%{public}s)", &v65, v61);
            v58 = v57;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v57);
            if (v58 != buf)
            {
              free(v58);
            }
          }
        }
      }
    }
  }
}

const __CFArray *sub_19B60E4B8(CFStringRef *a1)
{
  v2 = *MEMORY[0x1E695E8B0];
  result = CFPreferencesCopyKeyList(a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    v4 = result;
    CFPreferencesSetMultiple(0, result, a1[9], a1[10], v2);
    CFRelease(v4);
    data = (*a1)[26].data;

    return (data)(a1);
  }

  return result;
}

uint64_t sub_19B60E578(CFStringRef *a1, CFStringRef key)
{
  CFPreferencesSetValue(key, 0, a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  data = (*a1)[26].data;

  return (data)(a1);
}

CFIndex sub_19B60E5FC(uint64_t a1)
{
  v1 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  CFRelease(v2);
  return Count;
}

CFIndex sub_19B60E654(uint64_t a1, CFStringRef key)
{
  v2 = CFPreferencesCopyValue(key, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 1;
  }

  CFRelease(v3);
  return Count;
}

uint64_t sub_19B60E6D0()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "***not supported***", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serialize(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0;
}

uint64_t sub_19B60E870()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "***not supported***", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0;
}

uint64_t sub_19B60EA10()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "***not supported***", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::deserialize(const CFDataRef)", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0;
}

void sub_19B60EBB0(const __CFString *a1, uint64_t a2)
{
  cf = 0;
  if ((*(*a2 + 912))(a2, a1, &cf))
  {
    sub_19B5F3A54(a1, cf);
    CFRelease(cf);
  }
}

void sub_19B60EC30(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2B58 != -1)
  {
    dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A698);
  }

  if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
  {
    os_unfair_lock_lock(&unk_1ED71C8F0);
    if ((*(*(a1 + 120) + 856))(a1 + 120) >= 1)
    {
      sub_19B5F3378(a1 + 120);
    }

    os_unfair_lock_unlock(&unk_1ED71C8F0);
    v2 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v3 = v2;
    if (v2 && CFArrayGetCount(v2))
    {
      v14.length = CFArrayGetCount(v3);
      v14.location = 0;
      CFArrayApplyFunction(v3, v14, sub_19B60EBB0, a1);
      CFRelease(v3);
      v5 = *(a1 + 104);
      v4 = a1 + 104;
      if ((*(v5 + 856))(v4) >= 1)
      {

        sub_19B5F3378(v4);
      }
    }

    else
    {
      if (qword_1EAFE2B58 != -1)
      {
        dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A698);
      }

      v6 = qword_1EAFE2B60;
      if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "\t<empty>", buf, 2u);
      }

      v7 = sub_19B420058();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B58 != -1)
        {
          dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A698);
        }

        v10[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B60, 2, "\t<empty>", v10, 2);
        v9 = v8;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLPreferences::print() const", "CoreLocation: %s\n", v8);
        if (v9 != buf)
        {
          free(v9);
        }
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }
}

void sub_19B60EF80()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v4[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "***not supported***", v4, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLPreferences::merge(const CLPreferences &, BOOL)", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }
}

uint64_t sub_19B60F11C()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "***not supported***", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::loadFromFile(const char *)", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0;
}

uint64_t sub_19B60F2BC()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "***not supported***", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0;
}

uint64_t sub_19B60F45C()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }

  v0 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "***not supported***", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToBinaryFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0;
}

void sub_19B60F5FC(uint64_t a1, CFStringRef key, CFPropertyListRef value)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v6 = v27;
      sub_19B431834(key, v27);
      if (v30 < 0)
      {
        v6 = *v27;
      }

      sub_19B431834(*(a1 + 72), v25);
      v7 = v26;
      v8 = v25[0];
      sub_19B431834(*(a1 + 80), __p);
      v9 = v25;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v24 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446722;
      v33 = v6;
      v34 = 2082;
      v35 = v9;
      v36 = 2082;
      v37 = v10;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", buf, 0x20u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(*v27);
      }
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }

      v12 = off_1ED71C828;
      sub_19B431834(key, v25);
      if (v26 >= 0)
      {
        v13 = v25;
      }

      else
      {
        v13 = v25[0];
      }

      sub_19B431834(*(a1 + 72), __p);
      v14 = v24;
      v15 = __p[0];
      sub_19B431834(*(a1 + 80), v21);
      v16 = __p;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v22 >= 0)
      {
        v17 = v21;
      }

      else
      {
        v17 = v21[0];
      }

      *v27 = 136446722;
      *&v27[4] = v13;
      v28 = 2082;
      v29 = v16;
      v30 = 2082;
      v31 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 17, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", v27, 32);
      v19 = v18;
      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLPreferences::setInternal(const CFStringRef, const CFTypeRef)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  else
  {
    CFPreferencesSetValue(key, value, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v20 = *(*a1 + 848);

    v20(a1);
  }
}

void sub_19B60F9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B60FA30()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }
    }

    v1 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }
    }

    v2 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLPreferences.mm", 329, "containsInternal");
LABEL_11:
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }
}

void sub_19B60FC60(void *a1)
{
  sub_19B445384(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B60FC98()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE2B60 = result;
  return result;
}

uint64_t sub_19B60FCC8(uint64_t result, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 6336) != a2)
  {
    v3 = result;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v5 = *(v3 + 6336);
      *buf = 67109376;
      v14 = v5;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMCorrelatedMotion] Changed tracking behavior from %d to %d.", buf, 0xEu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v7 = *(v3 + 6336);
      v10[0] = 67109376;
      v10[1] = v7;
      v11 = 1024;
      v12 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMCorrelatedMotion] Changed tracking behavior from %d to %d.", v10, 14);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(v3 + 6336) = a2;
    return sub_19B60FED8(v3, 0);
  }

  return result;
}

uint64_t sub_19B60FED8(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1208) = 0;
  *(result + 3288) = 0;
  *(result + 2444) = 0;
  *(result + 2428) = 0u;
  *(result + 3776) = 0u;
  *(result + 3792) = 0u;
  *(result + 3808) = 0;
  *(result + 6288) = 0;
  *(result + 6296) = 0u;
  *(result + 2416) = 1;
  *(result + 2864) = 0u;
  *(result + 2880) = 0;
  *(result + 2852) = 1;
  *(result + 6320) = 0;
  if (a2)
  {
    *(result + 6312) = 0;
    *(result + 3816) = 0;
    *(result + 6224) = 0uLL;
  }

  if (*(result + 6336) == 1)
  {
    *(result + 8816) = 0;
    *(result + 8800) = 0uLL;
    *(result + 8788) = 1;
    *(result + 8996) = 0uLL;
    *(result + 9012) = 0;
    *(result + 8984) = 1;
    *(result + 10048) = 0;
    if (a2)
    {
      *(result + 10032) = 0;
      *(result + 9192) = 0uLL;
      *(result + 9208) = 0;
      *(result + 9180) = 1;
    }
  }

  return result;
}

void sub_19B60FF8C(uint64_t a1, float32x2_t *a2, uint64_t a3, float *a4, int *a5, uint64_t a6, unint64_t a7, double a8)
{
  v8 = a7;
  v9 = a6;
  v321 = a5;
  v340 = *MEMORY[0x1E69E9840];
  v14 = (a1 + 3780);
  v15 = *(a1 + 2);
  if (v15 == *(a1 + 1210))
  {
    if (v15 >= *(a1 + 3290))
    {
      v15 = *(a1 + 3290);
    }

    if (v15 >= 0x28)
    {
      v16 = 0;
      v17 = 0.0;
      do
      {
        v17 = v17 + (*(a3 + v16) * *(a3 + v16));
        v16 += 4;
      }

      while (v16 != 12);
      v18 = sqrtf(v17);
      if (v18 > 0.17453 || (v19 = *(a3 + 48)) == 0 || (v18 > 0.087266 ? (_ZF = v19 == 2) : (_ZF = 0), _ZF))
      {
        v21 = *(a1 + 6312) + a8;
        *(a1 + 6312) = v21;
      }

      else if (v19 == 1 && *(a1 + 6244) < 0.043633)
      {
        *(a1 + 6312) = 0;
      }

      v22 = *(a1 + 6240);
      v23 = (a1 + 3780);
      if (v22 > 0.1309 || a2[6].i32[0] == 0)
      {
        if (v22 > 0.2618)
        {
          *(a1 + 6316) = 0;
        }
      }

      else
      {
        v25 = *(a1 + 6316) + a8;
        *(a1 + 6316) = v25;
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v28 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(a1 + 6244);
        v30 = *(a1 + 6240);
        v31 = *(a3 + 48);
        v32 = a2[6].i32[0];
        v33 = *(a1 + 6312);
        v34 = *(a1 + 6316);
        *buf = 134219264;
        *&buf[4] = v29;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        *&buf[22] = 1024;
        *&buf[24] = v31;
        *&buf[28] = 1024;
        *&buf[30] = v32;
        *&buf[34] = 2048;
        *&buf[36] = v33;
        v336 = 2048;
        v337 = v34;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[CorrelatedMotion] updateSrcAuxMovingDuration: fAuxAvgOmegaShort, %.3f, fSrcAvgOmegaShort, %.3f, aux.qMode, %d, src.qMode, %d, auxMovingDurationSecs, %.3f, srcStaticDurationSecs, %.3f", buf, 0x36u);
      }

      v35 = sub_19B420058();
      v8 = a7;
      v9 = a6;
      v14 = v23;
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        v36 = v8;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v37 = *(a1 + 6244);
        v38 = *(a1 + 6240);
        v39 = *(a3 + 48);
        v40 = a2[6].i32[0];
        v41 = *(a1 + 6312);
        v42 = *(a1 + 6316);
        v329 = 3.8526e-34;
        *v330 = v37;
        *&v330[8] = 2048;
        *&v330[10] = v38;
        *&v330[18] = 1024;
        *&v330[20] = v39;
        *&v330[24] = 1024;
        *&v330[26] = v40;
        *&v330[30] = 2048;
        *&v330[32] = v41;
        v331 = 2048;
        v332 = v42;
        LODWORD(v316) = 54;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CorrelatedMotion] updateSrcAuxMovingDuration: fAuxAvgOmegaShort, %.3f, fSrcAvgOmegaShort, %.3f, aux.qMode, %d, src.qMode, %d, auxMovingDurationSecs, %.3f, srcStaticDurationSecs, %.3f", COERCE_DOUBLE(&v329), v316, LODWORD(v317), v319, *&v321, v322);
        v44 = v43;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::updateSrcAuxMovingDuration(const IMUData &, const IMUData &, double)", "CoreLocation: %s\n", v43);
        if (v44 != buf)
        {
          free(v44);
        }

        v8 = v36;
      }
    }
  }

  *(a1 + 6328) = v9;
  v45 = sub_19B66C1A4(a4, *a3, *(a3 + 4), *(a3 + 8));
  v47 = a2[1].f32[0] - v46;
  v50.i32[1] = v48;
  v14[3] = vadd_f32(vsub_f32(*a2, v50), v14[3]);
  *(a1 + 3812) = v47 + *(a1 + 3812);
  v49 = *(a1 + 3784);
  v50.f32[0] = a2->f32[0] + *(a1 + 3780);
  *(a1 + 3780) = v50.i32[0];
  v51 = a2->f32[1] + v49;
  *(a1 + 3784) = v51;
  v52 = a2[1].f32[0] + *(a1 + 3788);
  *(a1 + 3788) = v52;
  *(a1 + 3792) = *a3 + *(a1 + 3792);
  *(a1 + 3796) = *(a3 + 4) + *(a1 + 3796);
  *(a1 + 3800) = *(a3 + 8) + *(a1 + 3800);
  v53 = *(a1 + 3776) + 1;
  *(a1 + 3776) = v53;
  if (v53 == 4)
  {
    v320 = *&v9;
    v54 = (a1 + 8788);
    v50.f32[1] = v51;
    __asm { FMOV            V8.2S, #0.25 }

    *buf = vmul_f32(v50, _D8);
    *&buf[8] = v52 * 0.25;
    sub_19B5BE720(a1, buf);
    v59 = *(a1 + 3800) * 0.25;
    *buf = vmul_f32(*(a1 + 3792), _D8);
    *&buf[8] = v59;
    sub_19B5BE720((a1 + 1208), buf);
    v60 = *(a1 + 3800) * 0.25;
    *buf = vmul_f32(*(a1 + 3792), _D8);
    *&buf[8] = v60;
    sub_19B5BE720((a1 + 3816), buf);
    v61 = *(a1 + 3788) * 0.25;
    *buf = vmul_f32(*v14, _D8);
    *&buf[8] = v61;
    sub_19B5BE720((a1 + 6380), buf);
    v62 = *(a1 + 3812) * 0.25;
    *buf = vmul_f32(v14[3], _D8);
    *&buf[8] = v62;
    sub_19B5BE720((a1 + 3288), buf);
    *(a1 + 3808) = 0;
    *(a1 + 3776) = 0u;
    *(a1 + 3792) = 0u;
    *(a1 + 6288) = sub_19B447000(&a2[7]);
    *(a1 + 6292) = v63;
    *(a1 + 6296) = v64;
    *(a1 + 6300) = sub_19B447000((a3 + 56));
    *(a1 + 6304) = v65;
    *(a1 + 6308) = v66;
    v67 = sub_19B5BC7B8(a1);
    *buf = ((v68 * *(a1 + 6296)) + (v69 * *(a1 + 6292))) + (v67 * *(a1 + 6288));
    sub_19B5BC034(a1 + 2416, buf);
    v70 = sub_19B5BC7B8((a1 + 1208));
    *buf = ((v71 * *(a1 + 6308)) + (v72 * *(a1 + 6304))) + (v70 * *(a1 + 6300));
    sub_19B5BC034(a1 + 2852, buf);
    if (v14[319].i8[4] == 1)
    {
      v73 = sub_19B5BC7B8(a1);
      *buf = ((v74 * *(a1 + 6296)) + (v75 * *(a1 + 6292))) + (v73 * *(a1 + 6288));
      sub_19B5BC034(a1 + 9180, buf);
      v76 = vbsl_s8(vcgtz_f32(v14[311]), v14[311], vneg_f32(v14[311]));
      *buf = vsub_f32(vdup_lane_s32(v76, 1), v76).u32[0];
      sub_19B5BC034(a1 + 8788, buf);
      sub_19B5BC034(a1 + 8984, &v14[311]);
    }

    v77 = *(a1 + 2);
    v78 = *(a1 + 1210);
    if (v77 == v78)
    {
      v79 = *(a1 + 3290);
      if (v77 >= v79)
      {
        v80 = *(a1 + 3290);
      }

      else
      {
        v80 = *(a1 + 2);
      }

      if (v80 < 0x28)
      {
        goto LABEL_104;
      }

      v329 = sub_19B5BF0D0(a1, v77 - 40, *(a1 + 2));
      *v330 = v81;
      *&v330[4] = v82;
      HIDWORD(v326) = sub_19B5BF0D0((a1 + 1208), v77 - 40, v77);
      v327 = v83;
      v328 = v84;
      LODWORD(v325) = sub_19B5BF0D0(a1, v77 - 10, v77);
      HIDWORD(v325) = v85;
      LODWORD(v326) = v86;
      v87 = sub_19B5BF0D0((a1 + 1208), v77 - 10, v77);
      v88 = 0;
      *(&v322 + 1) = v87;
      v323 = v89;
      v324 = v90;
      v91 = 0.0;
      do
      {
        v91 = v91 + (*(&v325 + v88) * *(&v325 + v88));
        v88 += 4;
      }

      while (v88 != 12);
      v92 = 0;
      *(a1 + 6240) = sqrtf(v91);
      v93 = 0.0;
      do
      {
        v93 = v93 + (*(&v322 + v92 + 4) * *(&v322 + v92 + 4));
        v92 += 4;
      }

      while (v92 != 12);
      v94 = 0;
      *(a1 + 6244) = sqrtf(v93);
      v95 = 0.0;
      do
      {
        v95 = v95 + (*&v330[v94 - 4] * *&v330[v94 - 4]);
        v94 += 4;
      }

      while (v94 != 12);
      v96 = 0;
      *(a1 + 6248) = sqrtf(v95);
      v97 = 0.0;
      do
      {
        v97 = v97 + (*(&v326 + v96 + 4) * *(&v326 + v96 + 4));
        v96 += 4;
      }

      while (v96 != 12);
      *(a1 + 6252) = sqrtf(v97);
      sub_19B5E9EFC((a1 + 3288), v79 - 10, v79);
      v98 = 0;
      *buf = v99;
      *&buf[4] = v100;
      *&buf[8] = v101;
      v102 = 0.0;
      do
      {
        v102 = v102 + (*&buf[v98] * *&buf[v98]);
        v98 += 4;
      }

      while (v98 != 12);
      *(a1 + 6256) = sqrtf(v102);
      sub_19B5E9EFC((a1 + 3288), v79 - 40, v79);
      v103 = 0;
      *buf = v104;
      *&buf[4] = v105;
      *&buf[8] = v106;
      v107 = 0.0;
      do
      {
        v107 = v107 + (*&buf[v103] * *&buf[v103]);
        v103 += 4;
      }

      while (v103 != 12);
      *(a1 + 6260) = sqrtf(v107);
      v108 = sub_19B5BF0D0((a1 + 3288), v79 - 40, v79);
      v109 = 0;
      *buf = v108;
      *&buf[4] = v110;
      *&buf[8] = v111;
      v112 = 0.0;
      do
      {
        v112 = v112 + (*&buf[v109] * *&buf[v109]);
        v109 += 4;
      }

      while (v109 != 12);
      *(a1 + 6264) = sqrtf(v112);
      *(a1 + 6268) = sub_19B5BE518(a1 + 2416, v77 - 40, 0x28u);
      *(a1 + 6272) = sub_19B5BE518(a1 + 2852, v77 - 40, 0x28u);
      *(a1 + 6276) = sub_19B5BE518(a1 + 2416, v77 - 10, 0xAu);
      *(a1 + 6280) = sub_19B5BE518(a1 + 2852, v77 - 10, 0xAu);
      v113 = *(a1 + 3818);
      if (*(a1 + 3820) == v113)
      {
        sub_19B5E9EFC((a1 + 3816), 0, (v113 * 0.9));
        *&buf[4] = v115;
        *&buf[8] = v116;
        if (v114 <= 0.0)
        {
          v114 = -v114;
        }

        for (i = 4; i != 12; i += 4)
        {
          v118 = *&buf[i];
          if (v118 <= 0.0)
          {
            v118 = -v118;
          }

          if (v118 > v114)
          {
            v114 = v118;
          }
        }
      }

      else
      {
        sub_19B5E9EFC((a1 + 3816), 0, v113);
        *&buf[4] = v119;
        *&buf[8] = v120;
        if (v114 <= 0.0)
        {
          v114 = -v114;
        }

        for (j = 4; j != 12; j += 4)
        {
          v122 = *&buf[j];
          if (v122 <= 0.0)
          {
            v122 = -v122;
          }

          if (v122 > v114)
          {
            v114 = v122;
          }
        }
      }

      *(a1 + 6284) = sqrtf(v114);
      if (v14[319].i8[4] == 1)
      {
        if (*(a1 + 2416) == 1)
        {
          sub_19B5BE7E0(a1 + 2416);
        }

        *(a1 + 10016) = *(a1 + 2420);
        if (*(a1 + 2852) == 1)
        {
          sub_19B5BE7E0(a1 + 2852);
        }

        *(a1 + 10020) = *(a1 + 2856);
        if (*v54 == 1)
        {
          sub_19B5BE7E0(a1 + 8788);
        }

        *(a1 + 10036) = *(a1 + 8792);
        if (*(a1 + 8984) == 1)
        {
          sub_19B5BE7E0(a1 + 8984);
        }

        *(a1 + 10040) = *(a1 + 8988);
        sub_19B5E9EFC((a1 + 6380), 0, *(a1 + 6382));
        *&buf[4] = v124;
        *&buf[8] = v125;
        if (v123 <= 0.0)
        {
          v123 = -v123;
        }

        for (k = 4; k != 12; k += 4)
        {
          v127 = *&buf[k];
          if (v127 <= 0.0)
          {
            v127 = -v127;
          }

          if (v127 > v123)
          {
            v123 = v127;
          }
        }

        *(a1 + 10024) = sqrtf(v123);
        v128 = *(a1 + 2446);
        v129 = 0.0;
        v130 = 0.0;
        v131 = v128 - 40;
        if (v128 >= 0x28)
        {
          v132 = sub_19B5BE518(a1 + 2416, v128 - 40, 0x28u);
          v130 = sqrtf(sub_19B613A10(a1 + 2416, v131, 0x28u, v132));
        }

        *(a1 + 10028) = v130;
        if (*(a1 + 9212) == *(a1 + 9210))
        {
          if (*(a1 + 9180) == 1)
          {
            sub_19B5BE7E0(a1 + 9180);
          }

          v129 = *(a1 + 9184) * 4.0;
        }

        *(a1 + 10032) = v129;
      }

      LODWORD(v77) = *(a1 + 2);
      v78 = *(a1 + 1210);
    }

    _ZF = v77 == v78;
    LODWORD(v77) = v78;
    if (!_ZF)
    {
      goto LABEL_492;
    }

LABEL_104:
    v133 = *(a1 + 3290);
    if (v77 < v133)
    {
      v133 = v77;
    }

    if (v133 < 0x28)
    {
      goto LABEL_492;
    }

    if (*(a1 + 6244) <= *(a1 + 6252))
    {
      v134 = *(a1 + 6252);
    }

    else
    {
      v134 = *(a1 + 6244);
    }

    v135 = *(a1 + 6240);
    if (v135 <= *(a1 + 6248))
    {
      v135 = *(a1 + 6248);
    }

    if (v134 <= 0.17453)
    {
      v136 = v134;
    }

    else
    {
      v136 = 0.17453;
    }

    if (v135 <= v136 && *(a1 + 6316) >= 5.0)
    {
      if (*(a1 + 2852) == 1)
      {
        sub_19B5BE7E0(a1 + 2852);
      }

      v138 = *(a1 + 2856);
      if (v138 <= 0.0)
      {
        v139 = -v138;
      }

      else
      {
        v139 = *(a1 + 2856);
      }

      v140 = *(a1 + 6312);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v141 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v142 = *(a1 + 6312);
        v143 = *(a3 + 48);
        *buf = 134218752;
        *&buf[4] = v142;
        *&buf[12] = 2048;
        *&buf[14] = (v139 * 57.296);
        *&buf[22] = 2048;
        *&buf[24] = (v134 * 57.296);
        *&buf[32] = 1024;
        *&buf[34] = v143;
        _os_log_impl(&dword_19B41C000, v141, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxMovingDuration, %.3f, auxRotGrav, %.3f, auxRot, %.3f, aux.qMode, %d", buf, 0x26u);
      }

      v144 = sub_19B420058();
      if (*(v144 + 160) > 1 || *(v144 + 164) > 1 || *(v144 + 168) > 1 || *(v144 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v145 = *(a1 + 6312);
        v146 = *(a3 + 48);
        v329 = 3.8523e-34;
        *v330 = v145;
        *&v330[8] = 2048;
        *&v330[10] = (v139 * 57.296);
        *&v330[18] = 2048;
        *&v330[20] = (v134 * 57.296);
        *&v330[28] = 1024;
        *&v330[30] = v146;
        LODWORD(v316) = 38;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CorrelatedActivity] auxMovingDuration, %.3f, auxRotGrav, %.3f, auxRot, %.3f, aux.qMode, %d", COERCE_DOUBLE(&v329), v316, v317, LODWORD(v320));
        v148 = v147;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyOnGymMachine(const IMUData &, const IMUData &) const", "CoreLocation: %s\n", v147);
        if (v148 != buf)
        {
          free(v148);
        }
      }

      v137 = v139 < 0.17453 && v140 > 5.0;
    }

    else
    {
      v137 = 0;
    }

    v14[317].i8[5] = v137;
    v150 = *&v320 > 0xFuLL || v137;
    if (v14[319].i8[4] == 1)
    {
      if (v150 || sub_19B7399E4(v321, v8) > 10.0 || *v321 == 4 || *v321 == 41 || (v151 = sub_19B739C08(v321, v8), *&v151 < 5.0) || v14[324].i8[4] == 1)
      {
        if ((v14[317].i8[5] & 1) != 0 || *v321 == 4 || *v321 == 41 || v14[324].i8[4] == 1)
        {
          v152 = v14[324].i8[4];
          v153 = (v152 & 1 | 2u) * 0.1;
          v154 = 1;
        }

        else
        {
          v152 = 0;
          v154 = 0;
          v153 = 0.1;
        }

        v155 = *(a1 + 10020);
        v156 = *(a1 + 10016) - v155;
        if (v156 <= 0.0)
        {
          v157 = -v156;
        }

        else
        {
          v157 = *(a1 + 10016) - v155;
        }

        v158 = *(a1 + 6272) - *(a1 + 6268);
        if (v158 <= 0.0)
        {
          v159 = -v158;
        }

        else
        {
          v159 = *(a1 + 6272) - *(a1 + 6268);
        }

        if (v152)
        {
          v160 = *(a1 + 6284) * 4.0;
          if (v160 > 1.7453)
          {
            v160 = 1.7453;
          }

          if (*(a1 + 10024) > v160 && *(a1 + 10028) > 0.87266)
          {
            if (v155 <= 0.0)
            {
              v157 = -v155;
            }

            else
            {
              v157 = *(a1 + 10020);
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
            }

            v161 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              if (*(a1 + 2852) == 1)
              {
                sub_19B5BE7E0(a1 + 2852);
              }

              v162 = *(a1 + 2856);
              if (*(a1 + 2416) == 1)
              {
                sub_19B5BE7E0(a1 + 2416);
              }

              v163 = *(a1 + 2420);
              *buf = 134218496;
              *&buf[4] = v162;
              *&buf[12] = 2048;
              *&buf[14] = v163;
              *&buf[22] = 2048;
              *&buf[24] = v157;
              _os_log_impl(&dword_19B41C000, v161, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] Outdoor, auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", buf, 0x20u);
            }

            v164 = sub_19B420058();
            if (*(v164 + 160) > 1 || *(v164 + 164) > 1 || *(v164 + 168) > 1 || *(v164 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
              }

              v165 = off_1EAFE29A0;
              if (*(a1 + 2852) == 1)
              {
                sub_19B5BE7E0(a1 + 2852);
              }

              v166 = *(a1 + 2856);
              if (*(a1 + 2416) == 1)
              {
                sub_19B5BE7E0(a1 + 2416);
              }

              v167 = *(a1 + 2420);
              v329 = 3.8522e-34;
              *v330 = v166;
              *&v330[8] = 2048;
              *&v330[10] = v167;
              *&v330[18] = 2048;
              *&v330[20] = v157;
              LODWORD(v316) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v165, 2, "[CorrelatedActivity] Outdoor, auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", COERCE_DOUBLE(&v329), v316, v317);
              v169 = v168;
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivityMusic(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v168);
              if (v169 != buf)
              {
                free(v169);
              }
            }
          }
        }

        if (v154)
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v170 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            if (v14[324].i8[4] != 1)
            {
              goto LABEL_256;
            }

            v171 = *(a1 + 6284) * 4.0;
            if (v171 > 1.7453)
            {
              v171 = 1.7453;
            }

            if (*(a1 + 10024) > v171)
            {
              v172 = *(a1 + 10028) > 0.87266;
            }

            else
            {
LABEL_256:
              v172 = 0;
            }

            if (*(a1 + 2852) == 1)
            {
              sub_19B5BE7E0(a1 + 2852);
            }

            v216 = *(a1 + 2856);
            if (*(a1 + 2416) == 1)
            {
              sub_19B5BE7E0(a1 + 2416);
            }

            v217 = *(a1 + 2420);
            *buf = 67109888;
            *&buf[4] = v172;
            *&buf[8] = 2048;
            *&buf[10] = v216;
            *&buf[18] = 2048;
            *&buf[20] = v217;
            *&buf[28] = 2048;
            *&buf[30] = v157;
            _os_log_impl(&dword_19B41C000, v170, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] srcInHand, %d, auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", buf, 0x26u);
          }

          v218 = sub_19B420058();
          if (*(v218 + 160) > 1 || *(v218 + 164) > 1 || *(v218 + 168) > 1 || *(v218 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
            }

            if (v14[324].i8[4] != 1)
            {
              goto LABEL_273;
            }

            v219 = *(a1 + 6284) * 4.0;
            if (v219 > 1.7453)
            {
              v219 = 1.7453;
            }

            if (*(a1 + 10024) > v219)
            {
              v220 = *(a1 + 10028) > 0.87266;
            }

            else
            {
LABEL_273:
              v220 = 0;
            }

            v221 = off_1EAFE29A0;
            if (*(a1 + 2852) == 1)
            {
              sub_19B5BE7E0(a1 + 2852);
            }

            v222 = *(a1 + 2856);
            if (*(a1 + 2416) == 1)
            {
              sub_19B5BE7E0(a1 + 2416);
            }

            v223 = *(a1 + 2420);
            v329 = 1.5048e-36;
            *v330 = v220;
            *&v330[4] = 2048;
            *&v330[6] = v222;
            *&v330[14] = 2048;
            *&v330[16] = v223;
            *&v330[24] = 2048;
            *&v330[26] = v157;
            LODWORD(v316) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v221, 2, "[CorrelatedActivity] srcInHand, %d, auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", &v329, v316, v317, v320);
            v225 = v224;
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivityMusic(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v224);
            if (v225 != buf)
            {
              free(v225);
            }
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v226 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            v227 = *(a1 + 6272);
            v228 = *(a1 + 6268);
            v229 = *(a1 + 6264);
            *buf = 134218496;
            *&buf[4] = v227;
            *&buf[12] = 2048;
            *&buf[14] = v228;
            *&buf[22] = 2048;
            *&buf[24] = v229;
            _os_log_impl(&dword_19B41C000, v226, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxRotGrav, %.3f, srcRotGrav, %.3f, relW, %.3f", buf, 0x20u);
          }

          v230 = sub_19B420058();
          if (*(v230 + 160) > 1 || *(v230 + 164) > 1 || *(v230 + 168) > 1 || *(v230 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
            }

            v231 = *(a1 + 6272);
            v232 = *(a1 + 6268);
            v233 = *(a1 + 6264);
            v329 = 3.8522e-34;
            *v330 = v231;
            *&v330[8] = 2048;
            *&v330[10] = v232;
            *&v330[18] = 2048;
            *&v330[20] = v233;
            LODWORD(v316) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CorrelatedActivity] auxRotGrav, %.3f, srcRotGrav, %.3f, relW, %.3f", COERCE_DOUBLE(&v329), v316, v317);
            v235 = v234;
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivityMusic(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v234);
            if (v235 != buf)
            {
              free(v235);
            }
          }
        }

        v236 = *(a1 + 6280);
        if (v236 <= 0.0)
        {
          v236 = -v236;
        }

        v237 = *(a1 + 2880) + *(a1 + 2882) - 1;
        v238 = *(a1 + 2884);
        if (v237 < v238)
        {
          v238 = 0;
        }

        v239 = *(a1 + 4 * (v237 - v238) + 2888);
        if (v239 <= 0.0)
        {
          v239 = -v239;
        }

        v240 = (v236 + v239) * 0.5;
        v241 = *(a1 + 6272);
        if (v241 <= 0.0)
        {
          v241 = -v241;
        }

        if (v241 > v240)
        {
          v240 = v241;
        }

        if (v157 < v240)
        {
          v240 = v157;
        }

        if (v240 < v153)
        {
LABEL_305:
          v242 = 1;
          goto LABEL_325;
        }

        if (v14[324].i8[4] == 1)
        {
          v243 = *(a1 + 6284) * 4.0;
          if (v243 > 1.7453)
          {
            v243 = 1.7453;
          }

          if (*(a1 + 10024) > v243)
          {
            v242 = 0;
            if (v241 <= 0.2618 || *(a1 + 10028) > 0.87266)
            {
LABEL_325:
              v14[317].i8[4] = v242;
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
              }

              v245 = off_1EAFE29A0;
              if (!os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
LABEL_351:
                v261 = sub_19B420058();
                v318 = v54;
                if (*(v261 + 160) <= 1 && *(v261 + 164) <= 1 && *(v261 + 168) <= 1 && !*(v261 + 152))
                {
                  goto LABEL_382;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                }

                v262 = off_1EAFE29A0;
                v263 = *v321;
                v265 = *v321 == 4 || v263 == 41;
                v266 = 1;
                if (v263 > 51)
                {
                  if (v263 == 52 || v263 == 56)
                  {
                    goto LABEL_370;
                  }
                }

                else
                {
                  if (!v263)
                  {
                    v267 = v8;
                    goto LABEL_373;
                  }

                  if (v263 == 5)
                  {
LABEL_370:
                    v267 = v8;
                    if ((v263 & 0xFFFFFFFE) == 0xA)
                    {
                      v263 = 1;
                    }

                    else
                    {
                      v263 = v266;
                    }

LABEL_373:
                    v268 = v14[317].u8[4];
                    v269 = v14[317].u8[5];
                    if (v321[1] > 1)
                    {
                      v270 = v263;
                    }

                    else
                    {
                      v270 = 0;
                    }

                    v271 = sub_19B7399E4(v321, v267);
                    v272 = 0;
                    v273 = v271 > 10.0;
                    v274 = *v321;
                    if (*v321 <= 0xB && ((1 << v274) & 0xC06) != 0)
                    {
                      v272 = (v274 & 0xFFFFFFFE) != 10;
                    }

                    v275 = *(a1 + 6312);
                    v276 = *(a1 + 6316);
                    v329 = 1.505e-36;
                    *v330 = v268;
                    *&v330[4] = 1024;
                    *&v330[6] = v269;
                    *&v330[10] = 1024;
                    *&v330[12] = v265;
                    *&v330[16] = 1024;
                    *&v330[18] = v270;
                    *&v330[22] = 1024;
                    *&v330[24] = v273;
                    *&v330[28] = 1024;
                    *&v330[30] = v272;
                    *&v330[34] = 1024;
                    *&v330[36] = *&v320 > 0xFuLL;
                    v331 = 2048;
                    v332 = v275;
                    v333 = 2048;
                    v334 = v276;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v262, 2, "[CorrelatedMotion] isInCorrelatedActivity, %d, onGymMachine, %d, srcWalking, %d, srcVehicle, %d, srcMovingLT, %d, srcStatic, %d, noBTZLT, %d, auxMovingDurationSecs, %.3f, srcStaticDurationSecs, %.3f", &v329, 64, v54, LODWORD(v320), v321, LODWORD(v322), v323, v325, v326);
                    v278 = v277;
                    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::feed(const IMUData &, const IMUData &, const CMOQuaternion &, const ActivityState &, uint64_t, uint64_t, double)", "CoreLocation: %s\n", v277);
                    if (v278 != buf)
                    {
                      free(v278);
                    }

                    v8 = v267;
                    v54 = v318;
LABEL_382:
                    if (v14[319].i8[4] != 1)
                    {
LABEL_492:
                      *(a1 + 10048) = v8;
                      return;
                    }

                    v279 = v14[323].u8[4];
                    if (v14[324].i8[4] == 1)
                    {
                      v280 = *(a1 + 6284) * 4.0;
                      if (v280 > 1.7453)
                      {
                        v280 = 1.7453;
                      }

                      if (*(a1 + 10024) > v280 && *(a1 + 10028) > 0.87266)
                      {
                        v281 = *(a1 + 10016);
                        v282 = -v281;
                        if (v281 <= 0.0)
                        {
                          v283 = -v281;
                        }

                        else
                        {
                          v283 = *(a1 + 10016);
                        }

                        v284 = *(a1 + 6280);
                        if (v284 <= 0.0)
                        {
                          v284 = -v284;
                        }

                        v285 = v284 - v283;
                        v286 = 0.5236;
                        goto LABEL_405;
                      }

                      v288 = *(a1 + 6268);
                      v283 = -v288;
                      if (v288 <= 0.0)
                      {
                        v287 = -v288;
                      }

                      else
                      {
                        v287 = *(a1 + 6268);
                      }
                    }

                    else
                    {
                      v287 = *(a1 + 6276);
                      if (v287 <= 0.0)
                      {
                        v287 = -v287;
                      }

                      v288 = *(a1 + 6268);
                      v283 = -v288;
                    }

                    v289 = *(a1 + 6280);
                    if (v289 <= 0.0)
                    {
                      v289 = -v289;
                    }

                    v285 = v289 - v287;
                    if (v288 > 0.0)
                    {
                      v283 = v288;
                    }

                    v281 = *(a1 + 10016);
                    v282 = -v281;
                    v286 = 0.34907;
LABEL_405:
                    v290 = *(a1 + 6272);
                    if (v290 <= 0.0)
                    {
                      v290 = -v290;
                    }

                    if (v281 <= 0.0)
                    {
                      v281 = v282;
                    }

                    if (!v14[323].i8[4])
                    {
                      goto LABEL_414;
                    }

                    v291 = *(a1 + 6360);
                    if (v291 <= 0.0)
                    {
                      v291 = -v291;
                    }

                    if (v291 > 0.17453)
                    {
                      v292 = *(a1 + 6364) > 1.9199;
                    }

                    else
                    {
LABEL_414:
                      v292 = 0;
                    }

                    v293 = *(a1 + 10048);
                    v294 = v290 - v283;
                    v295 = v290 - v281;
                    if (!v14[324].i8[4] || v292)
                    {
                      goto LABEL_437;
                    }

                    v296 = *(a1 + 10036);
                    if (v294 <= v295)
                    {
                      v297 = v295;
                    }

                    else
                    {
                      v297 = v294;
                    }

                    if (v296 <= v297)
                    {
                      v296 = v297;
                    }

                    v298 = *(a1 + 10040);
                    if (v298 <= 0.0)
                    {
                      v298 = -v298;
                    }

                    if (v286 <= v296)
                    {
                      v286 = v296;
                    }

                    if (v286 > 0.87266)
                    {
                      v286 = 0.87266;
                    }

                    if (v298 > v286)
                    {
                      v14[323].i8[4] = 0;
                      if (!v279)
                      {
                        goto LABEL_478;
                      }
                    }

                    else
                    {
LABEL_437:
                      if (v14[323].i8[4] && (v295 > 0.34907 || v292 && *(a1 + 10036) > 0.34907))
                      {
                        v299 = 1;
                      }

                      else
                      {
                        v299 = v285 > 0.61087;
                        if (v294 > 0.43633)
                        {
                          v299 = 1;
                        }
                      }

                      v14[323].i8[4] = v299;
                      if (v279 == v299)
                      {
                        if (!v299 || *(a1 + 6352))
                        {
                          goto LABEL_478;
                        }

                        v300 = *(a1 + 6364);
                        v301 = *(a1 + 6360);
LABEL_446:
                        v302 = *(a1 + 2880) + *(a1 + 2882) - 1;
                        v303 = *(a1 + 2884);
                        if (v302 < v303)
                        {
                          v303 = 0;
                        }

                        v304 = v301 + *(a1 + 4 * (v302 - v303) + 2888) * ((v8 - v293) * 0.000001);
                        *(a1 + 6360) = v304;
                        if (v304 <= 0.0)
                        {
                          v304 = -v304;
                        }

                        if (v304 > v300)
                        {
                          *(a1 + 6364) = v304;
                        }

                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                        }

                        v305 = off_1EAFE29A0;
                        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                        {
                          v306 = (*(a1 + 6360) * 57.296);
                          *buf = 134217984;
                          *&buf[4] = v306;
                          _os_log_impl(&dword_19B41C000, v305, OS_LOG_TYPE_DEBUG, "[UpdateHeadTurnState] headYaw, %.2f", buf, 0xCu);
                        }

                        v307 = sub_19B420058();
                        v54 = v318;
                        if (*(v307 + 160) > 1 || *(v307 + 164) > 1 || *(v307 + 168) > 1 || *(v307 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                          }

                          v308 = (*(a1 + 6360) * 57.296);
                          v329 = 3.852e-34;
                          *v330 = v308;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[UpdateHeadTurnState] headYaw, %.2f");
LABEL_475:
                          v312 = v309;
                          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::updateHeadTurnState(uint64_t, uint64_t)", "CoreLocation: %s\n", v309);
                          if (v312 != buf)
                          {
                            free(v312);
                          }

                          v54 = v318;
                          goto LABEL_478;
                        }

                        goto LABEL_478;
                      }

                      if (v299)
                      {
                        *(a1 + 6344) = v8;
                        *(a1 + 6352) = 0u;
                        v301 = 0.0;
                        v300 = 0.0;
                        goto LABEL_446;
                      }
                    }

                    *(a1 + 6352) = v8;
                    if (*(a1 + 6344) >= v8)
                    {
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                      }

                      v310 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v310, OS_LOG_TYPE_DEBUG, "[UpdateHeadTurnState] Something is wrong with timestamp.", buf, 2u);
                      }

                      v311 = sub_19B420058();
                      v54 = v318;
                      if (*(v311 + 160) > 1 || *(v311 + 164) > 1 || *(v311 + 168) > 1 || *(v311 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                        }

                        LOWORD(v329) = 0;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[UpdateHeadTurnState] Something is wrong with timestamp.");
                        goto LABEL_475;
                      }
                    }

LABEL_478:
                    v313 = *(a1 + 6268);
                    if (v313 <= 0.0)
                    {
                      v313 = -v313;
                    }

                    if (v313 > 1.3963)
                    {
                      *(a1 + 9192) = 0u;
                      *(a1 + 9208) = 0;
                      v54[392] = 1;
                      *(a1 + 10032) = 0;
                      *(a1 + 10056) = 0;
                      v14[324].i8[5] = 0;
                      goto LABEL_492;
                    }

                    if (v14[324].i8[4] == 1)
                    {
                      v314 = *(a1 + 10032);
                      if (v314 <= 0.0)
                      {
                        v314 = -v314;
                      }

                      v315 = *(a1 + 10056);
                      if (v314 > 0.61087)
                      {
                        ++v315;
LABEL_490:
                        *(a1 + 10056) = v315;
                        goto LABEL_491;
                      }

                      if (v315)
                      {
                        --v315;
                        goto LABEL_490;
                      }
                    }

                    else
                    {
                      v315 = 0;
                      *(a1 + 10056) = 0;
                    }

LABEL_491:
                    v14[324].i8[5] = v315 > 0x1E;
                    goto LABEL_492;
                  }
                }

                v266 = 0;
                goto LABEL_370;
              }

              v246 = *v321;
              v248 = *v321 == 4 || v246 == 41;
              v249 = 1;
              if (v246 > 51)
              {
                if (v246 == 52 || v246 == 56)
                {
                  goto LABEL_341;
                }
              }

              else
              {
                if (!v246)
                {
                  v250 = (a1 + 8788);
                  v251 = v8;
                  goto LABEL_344;
                }

                if (v246 == 5)
                {
LABEL_341:
                  v250 = (a1 + 8788);
                  v251 = v8;
                  if ((v246 & 0xFFFFFFFE) == 0xA)
                  {
                    v246 = 1;
                  }

                  else
                  {
                    v246 = v249;
                  }

LABEL_344:
                  v252 = v14[317].u8[4];
                  v253 = v14[317].u8[5];
                  if (v321[1] > 1)
                  {
                    v254 = v246;
                  }

                  else
                  {
                    v254 = 0;
                  }

                  v255 = sub_19B7399E4(v321, v251);
                  v256 = 0;
                  v257 = v255 > 10.0;
                  v258 = *v321;
                  if (*v321 > 0xB)
                  {
                    v54 = v250;
                  }

                  else
                  {
                    v54 = v250;
                    if (((1 << v258) & 0xC06) != 0)
                    {
                      v256 = (v258 & 0xFFFFFFFE) != 10;
                    }
                  }

                  v259 = *(a1 + 6312);
                  v260 = *(a1 + 6316);
                  *buf = 67111168;
                  *&buf[4] = v252;
                  *&buf[8] = 1024;
                  *&buf[10] = v253;
                  *&buf[14] = 1024;
                  *&buf[16] = v248;
                  *&buf[20] = 1024;
                  *&buf[22] = v254;
                  *&buf[26] = 1024;
                  *&buf[28] = v257;
                  *&buf[32] = 1024;
                  *&buf[34] = v256;
                  *&buf[38] = 1024;
                  *&buf[40] = *&v320 > 0xFuLL;
                  v336 = 2048;
                  v337 = v259;
                  v338 = 2048;
                  v339 = v260;
                  _os_log_impl(&dword_19B41C000, v245, OS_LOG_TYPE_DEBUG, "[CorrelatedMotion] isInCorrelatedActivity, %d, onGymMachine, %d, srcWalking, %d, srcVehicle, %d, srcMovingLT, %d, srcStatic, %d, noBTZLT, %d, auxMovingDurationSecs, %.3f, srcStaticDurationSecs, %.3f", buf, 0x40u);
                  v8 = v251;
                  goto LABEL_351;
                }
              }

              v249 = 0;
              goto LABEL_341;
            }

            goto LABEL_314;
          }
        }

        if (v241 > 0.2618)
        {
LABEL_314:
          v244 = *(a1 + 6268);
          if (v244 <= 0.0)
          {
            v244 = -v244;
          }

          if (v241 >= v244)
          {
            v241 = v244;
          }

          if (v241 < 0.17453)
          {
            v241 = 0.17453;
          }

          v215 = v159 > v241;
LABEL_321:
          v242 = !v215;
          goto LABEL_325;
        }
      }
    }

    else if (v150 || sub_19B7399E4(v321, v8) > 10.0 || *v321 == 4 || *v321 == 41 || (v173 = sub_19B739C08(v321, v8), *&v173 < 5.0))
    {
      v174 = (v14[317].i8[5] & 1) != 0 || *v321 == 4 || *v321 == 41;
      if (*(a1 + 2416) == 1)
      {
        sub_19B5BE7E0(a1 + 2416);
      }

      v176 = *(a1 + 2420);
      if (*(a1 + 2852) == 1)
      {
        sub_19B5BE7E0(a1 + 2852);
      }

      v177 = v176 - *(a1 + 2856);
      if (v177 <= 0.0)
      {
        v178 = -v177;
      }

      else
      {
        v178 = v176 - *(a1 + 2856);
      }

      if (v174)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v179 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v180 = sub_19B5BF0D0((a1 + 1208), 0, *(a1 + 1210));
          v183 = (((v181 * *(a1 + 6308)) + (v182 * *(a1 + 6304))) + (v180 * *(a1 + 6300)));
          v184 = sub_19B5BF0D0(a1, 0, *(a1 + 2));
          v187 = (((v185 * *(a1 + 6296)) + (v186 * *(a1 + 6292))) + (v184 * *(a1 + 6288)));
          *buf = 134218496;
          *&buf[4] = v183;
          *&buf[12] = 2048;
          *&buf[14] = v187;
          *&buf[22] = 2048;
          *&buf[24] = v178;
          _os_log_impl(&dword_19B41C000, v179, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", buf, 0x20u);
        }

        v188 = sub_19B420058();
        if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v189 = off_1EAFE29A0;
          v190 = sub_19B5BF0D0((a1 + 1208), 0, *(a1 + 1210));
          v193 = (((v191 * *(a1 + 6308)) + (v192 * *(a1 + 6304))) + (v190 * *(a1 + 6300)));
          v194 = sub_19B5BF0D0(a1, 0, *(a1 + 2));
          v197 = (((v195 * *(a1 + 6296)) + (v196 * *(a1 + 6292))) + (v194 * *(a1 + 6288)));
          v329 = 3.8522e-34;
          *v330 = v193;
          *&v330[8] = 2048;
          *&v330[10] = v197;
          *&v330[18] = 2048;
          *&v330[20] = v178;
          LODWORD(v316) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v189, 2, "[CorrelatedActivity] auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", COERCE_DOUBLE(&v329), v316, v317);
          v199 = v198;
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivity(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v198);
          if (v199 != buf)
          {
            free(v199);
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v200 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v201 = *(a1 + 6272);
          v202 = *(a1 + 6268);
          v203 = *(a1 + 6264);
          *buf = 134218496;
          *&buf[4] = v201;
          *&buf[12] = 2048;
          *&buf[14] = v202;
          *&buf[22] = 2048;
          *&buf[24] = v203;
          _os_log_impl(&dword_19B41C000, v200, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxRotGrav, %.3f, srcRotGrav, %.3f, relW, %.3f", buf, 0x20u);
        }

        v204 = sub_19B420058();
        if (*(v204 + 160) > 1 || *(v204 + 164) > 1 || *(v204 + 168) > 1 || *(v204 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v205 = *(a1 + 6272);
          v206 = *(a1 + 6268);
          v207 = *(a1 + 6264);
          v329 = 3.8522e-34;
          *v330 = v205;
          *&v330[8] = 2048;
          *&v330[10] = v206;
          *&v330[18] = 2048;
          *&v330[20] = v207;
          LODWORD(v316) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CorrelatedActivity] auxRotGrav, %.3f, srcRotGrav, %.3f, relW, %.3f", COERCE_DOUBLE(&v329), v316, v317);
          v209 = v208;
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivity(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v208);
          if (v209 != buf)
          {
            free(v209);
          }
        }

        v210 = 0.2;
      }

      else
      {
        v210 = 0.1;
      }

      if (v178 < v210)
      {
        goto LABEL_305;
      }

      v211 = *(a1 + 6272);
      v212 = -v211;
      if (v211 > 0.0)
      {
        v212 = *(a1 + 6272);
      }

      if (v212 > 0.2618)
      {
        v213 = *(a1 + 6268);
        v214 = v211 - v213;
        if (v214 <= 0.0)
        {
          v214 = -v214;
        }

        if (v213 <= 0.0)
        {
          v213 = -v213;
        }

        if (v212 >= v213)
        {
          v212 = v213;
        }

        if (v212 < 0.17453)
        {
          v212 = 0.17453;
        }

        v215 = v214 > v212;
        goto LABEL_321;
      }
    }

    v242 = 0;
    goto LABEL_325;
  }
}

uint64_t sub_19B612470(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  result = sub_19B612528(a1, a3, a4);
  if ((result & 1) != 0 || (result = sub_19B612604(a1), result))
  {
    *(a1 + 6224) = *(a1 + 6224) + a2;
    v7 = *(a1 + 6232);
    if (v7 > a2)
    {
      *(a1 + 6232) = v7 - a2;
    }
  }

  else
  {
    v8 = *(a1 + 6232) + a2;
    *(a1 + 6232) = v8;
    v9 = (a1 + 6224);
    v10 = *(a1 + 6224);
    if (v10 > a2)
    {
      v10 = v10 - a2;
      *v9 = v10;
    }

    if (v8 >= 2.5)
    {
      goto LABEL_11;
    }

    v11 = v10 * 0.100000001;
    if (v11 < 0.100000001)
    {
      v11 = 0.100000001;
    }

    if (v8 >= v11)
    {
LABEL_11:
      *v9 = 0.0;
      *(a1 + 6232) = 0;
    }
  }

  return result;
}

BOOL sub_19B612528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4) == *(a1 + 2) && *(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290))
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v4 = v4 + (*(a2 + 24 + v3) * *(a2 + 24 + v3));
      v3 += 4;
    }

    while (v3 != 12);
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + (*(a3 + 24 + v5) * *(a3 + 24 + v5));
      v5 += 4;
    }

    while (v5 != 12);
    v7 = sqrtf(v4) - sqrtf(v6);
    if (v7 <= 0.0)
    {
      v8 = -v7;
    }

    else
    {
      v8 = v7;
    }

    return sub_19B612A74(a1) <= 0.10472 && v8 <= 0.05;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B612604(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = *(a1 + 2);
  v4 = *(a1 + 4);
  if (*(a1 + 6336) == 1)
  {
    if (v4 == v3 && *(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290) && *(a1 + 6320) == 1)
    {
      v5 = *(a1 + 6328);
      v6 = *(a1 + 6284);
      if (*(a1 + 6321) == 1)
      {
        v8 = v6 >= 0.17453 || v5 > 0x1D;
        v9 = (a1 + 6376);
        v10 = (v8 + 2.0) * 0.087266;
        if ((*(a1 + 6376) & 1) == 0)
        {
LABEL_61:
          v33 = *(a1 + 6272) - *(a1 + 6268);
          if (v33 <= 0.0)
          {
            v33 = -v33;
          }

          v27 = v33 <= v10;
          if (!*(a1 + 6321))
          {
            v40 = *(a1 + 6264) <= 0.5236;
            return v27 & v40;
          }

LABEL_64:
          v45 = sub_19B5BC7B8((a1 + 1208));
          v46 = v34;
          v47 = v35;
          v36 = ((v35 * *(a1 + 6308)) + (v34 * *(a1 + 6304))) + (v45 * *(a1 + 6300));
          v37 = -v36;
          if (v36 > 0.0)
          {
            v37 = v36;
          }

          if (*v9 == 1 && *(a1 + 6284) >= 0.87266)
          {
            v38 = *(a1 + 6280);
            if (v38 <= 0.0)
            {
              v38 = -v38;
            }

            v37 = (v37 + v38) * 0.5;
          }

          if (v6 < 0.17453)
          {
            v39 = fmaxf(*(a1 + 6284) * 1.5, 0.087266);
          }

          else if (v5 <= 0x1D)
          {
            v39 = *(a1 + 6284) + *(a1 + 6284);
            if (v39 >= 0.5236)
            {
              v39 = 0.5236;
            }
          }

          else
          {
            v39 = 0.5236;
          }

          v41 = 0;
          v42 = 0.0;
          do
          {
            v42 = v42 + (*(&v45 + v41) * *(&v45 + v41));
            v41 += 4;
          }

          while (v41 != 12);
          v43 = sqrtf(v42);
          v40 = v37 < v39 && v43 < 2.7925;
          return v27 & v40;
        }
      }

      else
      {
        v9 = (a1 + 6376);
        if (*(a1 + 6376) != 1)
        {
          v10 = 0.1309;
          goto LABEL_61;
        }

        v25 = v6 >= 0.17453 || v5 > 0x1D;
        v10 = (v25 + 2.0) * 0.087266;
      }

      v26 = *(a1 + 6272);
      if (v26 <= 0.0)
      {
        v26 = -v26;
      }

      v27 = v26 <= v10;
      goto LABEL_64;
    }

    return 0;
  }

  if (v4 != v3 || *(a1 + 1212) != *(a1 + 1210) || *(a1 + 3292) != *(a1 + 3290))
  {
    return 0;
  }

  v11 = *(a1 + 6328);
  v12 = *(a1 + 6284);
  v14 = v12 >= 0.17453 || v11 > 0x1D;
  if (*(a1 + 6321))
  {
    v15 = (v14 + 2.0) * 0.087266;
  }

  else
  {
    v15 = 0.1309;
  }

  v16 = *(a1 + 6272) - *(a1 + 6268);
  if (v16 <= 0.0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = *(a1 + 6272) - *(a1 + 6268);
  }

  if (*(a1 + 6321))
  {
    v18 = sub_19B5BC7B8((a1 + 1208));
    v45 = v18;
    v46 = v19;
    v47 = v20;
    if (v12 < 0.17453)
    {
      v21 = fmaxf(*(a1 + 6284) * 1.5, 0.087266);
    }

    else if (v11 <= 0x1D)
    {
      v21 = *(a1 + 6284) + *(a1 + 6284);
      if (v21 >= 0.5236)
      {
        v21 = 0.5236;
      }
    }

    else
    {
      v21 = 0.5236;
    }

    v28 = 0;
    v29 = 0.0;
    do
    {
      v29 = v29 + (*(&v45 + v28) * *(&v45 + v28));
      v28 += 4;
    }

    while (v28 != 12);
    if (sqrtf(v29) >= 2.7925)
    {
      v23 = 0;
    }

    else
    {
      v30 = ((v20 * *(a1 + 6308)) + (v19 * *(a1 + 6304))) + (v18 * *(a1 + 6300));
      v31 = -v30;
      if (v30 > 0.0)
      {
        v31 = v30;
      }

      v23 = v31 < v21;
    }
  }

  else
  {
    v23 = *(a1 + 6264) <= 0.5236;
  }

  v32 = *(v2 + 2224);
  if (v17 > v15)
  {
    v32 = 0;
  }

  return v32 & v23;
}

float sub_19B612A08(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3.i32[0] = 0;
  do
  {
    v3.f32[0] = v3.f32[0] + (*(a1 + 24 + v2) * *(a1 + 24 + v2));
    v2 += 4;
  }

  while (v2 != 12);
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*(a2 + 24 + v4) * *(a2 + 24 + v4));
    v4 += 4;
  }

  while (v4 != 12);
  v3.f32[1] = v5;
  __asm { FMOV            V1.2S, #-1.0 }

  v11 = vadd_f32(vsqrt_f32(v3), _D1);
  return vaddv_f32(vbsl_s8(vcgtz_f32(v11), v11, vneg_f32(v11)));
}

float sub_19B612A74(unsigned __int16 *a1)
{
  v2 = sub_19B61395C(a1);
  if (v2 <= sub_19B6139B4(a1))
  {

    return sub_19B6139B4(a1);
  }

  else
  {

    return sub_19B61395C(a1);
  }
}

void sub_19B612AE8(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) == *(a1 + 2) && *(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290))
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (a3[v9] * a3[v9]);
      ++v9;
    }

    while (v9 != 3);
    v11.f32[0] = sub_19B66C1A4(a4, a3[3], a3[4], a3[5]);
    v12 = 0;
    v14 = *(a2 + 20) - v13;
    v11.i32[1] = v15;
    v28 = vsub_f32(*(a2 + 12), v11);
    *&v29 = v14;
    v16 = 0.0;
    do
    {
      v16 = v16 + (v28.f32[v12] * v28.f32[v12]);
      ++v12;
    }

    while (v12 != 3);
    v17 = sqrtf(v10);
    v18 = sub_19B612528(a1, a2, a3);
    v19 = sub_19B612A08(a2, a3);
    if (v17 <= 0.20944)
    {
      v20 = sqrtf(v16);
      if (v20 <= 0.15 && v18)
      {
        v22 = v20 + v19;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v23 = off_1EAFE29A0;
        v24 = v17;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349568;
          v37 = v22;
          v38 = 2050;
          v39 = v24;
          v40 = 2050;
          v41 = a5;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf][RelativeGravityConstraints][CorrelatedAnchor] MagnitudeDiffUnity,%{public}.2e, rotationMax,%{public}.2f,timestamp,%{public}llu", buf, 0x20u);
        }

        v25 = sub_19B420058();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v30 = 134349568;
          v31 = v22;
          v32 = 2050;
          v33 = v24;
          v34 = 2050;
          v35 = a5;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMSensorFusionMekf][RelativeGravityConstraints][CorrelatedAnchor] MagnitudeDiffUnity,%{public}.2e, rotationMax,%{public}.2f,timestamp,%{public}llu", &v30, 32, *&v28, v29);
          v27 = v26;
          sub_19B6BB7CC("Generic", 1, 0, 2, "float CMCorrelatedMotion::getQuiescentMeasureAnchor(const IMUData &, const IMUData &, const CMOQuaternion &, uint64_t) const", "CoreLocation: %s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }
      }
    }
  }
}

float sub_19B612DF8(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, float32x4_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) != *(a1 + 2) || *(a1 + 1212) != *(a1 + 1210) || *(a1 + 3292) != *(a1 + 3290))
  {
    return -1.0;
  }

  *buf = 0;
  *&buf[8] = 0x3F80000000000000;
  v8 = -1.0;
  if (sub_19B61313C(a1, a2, a3, buf, 0, a5))
  {
    v9 = 0.0;
    for (i = 12; i != 24; i += 4)
    {
      v9 = v9 + (*(a2 + i) * *(a2 + i));
    }

    v11 = sqrtf(v9) + -1.0;
    v12 = 0.0;
    for (j = 3; j != 6; ++j)
    {
      v12 = v12 + (a3[j] * a3[j]);
    }

    if (v11 <= 0.0)
    {
      v11 = -v11;
    }

    v14 = sqrtf(v12) + -1.0;
    if (v14 <= 0.0)
    {
      v14 = -v14;
    }

    if (v11 <= v14)
    {
      v18 = 0;
      v16 = 0.0;
      do
      {
        v16 = v16 + (a3[v18 + 3] * a3[v18 + 3]);
        ++v18;
      }

      while (v18 != 3);
    }

    else
    {
      v15 = 0;
      v16 = 0.0;
      do
      {
        v16 = v16 + (*(a2 + 12 + v15) * *(a2 + 12 + v15));
        v15 += 4;
      }

      while (v15 != 12);
    }

    v19 = sqrtf(v16) + -1.0;
    if (v19 <= 0.0)
    {
      v20 = -v19;
    }

    else
    {
      v20 = v19;
    }

    v21 = sub_19B612A08(a2, a3);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
    }

    v22 = v21 + v20;
    v23 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = (v22 * v22);
      *&buf[12] = 2050;
      *&buf[14] = a4;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf][RelativeGravityConstraints][CorrelatedBTZ] measNoiseVar,%{public}.2e, timestamp,%{public}llu", buf, 0x16u);
    }

    v8 = v22 * v22;
    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || (*(v24 + 152) & 1) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v27 = 134349312;
      v28 = v8;
      v29 = 2050;
      v30 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMSensorFusionMekf][RelativeGravityConstraints][CorrelatedBTZ] measNoiseVar,%{public}.2e, timestamp,%{public}llu", &v27, 22);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CMCorrelatedMotion::getQuiescentMeasureIMUOnly(const IMUData &, const IMUData &, uint64_t) const", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  return v8;
}

uint64_t sub_19B61313C(uint64_t a1, uint64_t a2, float *a3, float32x2_t *a4, int a5, float32x4_t a6)
{
  if (*(a1 + 4) == *(a1 + 2))
  {
    v34 = v11;
    v35 = v10;
    v36 = v9;
    v37 = v8;
    v38 = v6;
    v39 = v7;
    if (*(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290))
    {
      v15 = 0;
      a6.i64[0] = 0;
      do
      {
        a6.f32[0] = a6.f32[0] + (a3[v15] * a3[v15]);
        ++v15;
      }

      while (v15 != 3);
      if (a5)
      {
        v33[0] = sub_19B66BFF4(a4, a6);
        v33[1] = v16;
        v33[2] = v17;
        v33[3] = v18;
        sub_19B66C1A4(v33, *a3, a3[1], a3[2]);
        if (v19 <= 0.0)
        {
          v20 = -v19;
        }

        else
        {
          v20 = v19;
        }

        v21 = 0.25;
      }

      else
      {
        v21 = 0.15;
        v20 = sqrtf(a6.f32[0]);
      }

      v24 = 0.0;
      for (i = 12; i != 24; i += 4)
      {
        v24 = v24 + (*(a2 + i) * *(a2 + i));
      }

      v26 = 0.0;
      for (j = 3; j != 6; ++j)
      {
        v26 = v26 + (a3[j] * a3[j]);
      }

      v28 = sqrtf(v24) - sqrtf(v26);
      if (v28 <= 0.0)
      {
        v29 = -v28;
      }

      else
      {
        v29 = v28;
      }

      v30 = sub_19B612528(a1, a2, a3);
      if (sub_19B6132E8(a1) && *(a1 + 6264) <= 0.17453 || (sub_19B612604(a1) & 1) != 0)
      {
        v22 = 1;
      }

      else
      {
        v32 = v29 <= v21 && v20 <= 0.20944;
        v22 = v32 && v30;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_19B6132E8(uint64_t a1)
{
  v1 = *(a1 + 6252);
  v2 = *(a1 + 6264) <= (v1 * 0.5) && *(a1 + 6248) < (v1 + 0.17453) && *(a1 + 6240) < (*(a1 + 6244) + 0.87266);
  if (*(a1 + 6320) == 1 && *(a1 + 6260) < 2.8074)
  {
    goto LABEL_21;
  }

  v3 = *(a1 + 6268) - *(a1 + 6272);
  v4 = -v3;
  if (v3 > 0.0)
  {
    v4 = *(a1 + 6268) - *(a1 + 6272);
  }

  if (v4 <= 0.34907)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 6248);
  if (v1 < v5)
  {
    v5 = *(a1 + 6252);
  }

  if (v5 > 0.087266 && *(a1 + 6260) <= 0.31193)
  {
LABEL_14:
    v6 = *(a1 + 6276) - *(a1 + 6280);
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 > 0.34907)
    {
      v7 = *(a1 + 6244);
      if (v7 >= *(a1 + 6240))
      {
        v7 = *(a1 + 6240);
      }

      if (v7 > 0.087266)
      {
        v8 = *(a1 + 6256) <= 0.31193;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_21:
    v8 = 1;
    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
LABEL_23:
  if (*(a1 + 6336) == 1)
  {
    if (!*(a1 + 6320) || (*(a1 + 6376) & 1) != 0 || *(a1 + 6260) >= 2.8074)
    {
      v9 = *(a1 + 6268) - *(a1 + 6272);
      v10 = -v9;
      if (v9 > 0.0)
      {
        v10 = *(a1 + 6268) - *(a1 + 6272);
      }

      if (v10 > 0.34907)
      {
        if (v1 >= *(a1 + 6248))
        {
          v1 = *(a1 + 6248);
        }

        if (v1 <= 0.087266 || *(a1 + 6260) > 0.31193)
        {
          goto LABEL_42;
        }
      }

      v11 = *(a1 + 6276) - *(a1 + 6280);
      if (v11 <= 0.0)
      {
        v11 = -v11;
      }

      if (v11 > 0.34907)
      {
        v12 = *(a1 + 6244);
        if (v12 >= *(a1 + 6240))
        {
          v12 = *(a1 + 6240);
        }

        if (v12 > 0.087266)
        {
          v8 = *(a1 + 6256) <= 0.31193;
          return v2 & v8;
        }

LABEL_42:
        v8 = 0;
        return v2 & v8;
      }
    }

    v8 = 1;
  }

  return v2 & v8;
}

float sub_19B613508(unsigned __int16 *a1)
{
  v2 = a1[1];
  v3 = sub_19B5BF0D0(a1, v2 - 20, v2 - 10);
  v5 = v4;
  v7 = v6;
  v8 = 0;
  *v22 = v3;
  *&v22[1] = v4;
  *&v22[2] = v6;
  v9 = 0.0;
  do
  {
    v9 = v9 + (*&v22[v8] * *&v22[v8]);
    ++v8;
  }

  while (v8 != 3);
  v10 = sub_19B5BF0D0(a1, v2 - 10, v2);
  v13 = 0;
  *v21 = v10;
  *&v21[1] = v11;
  *&v21[2] = v12;
  v14 = 0.0;
  do
  {
    v14 = v14 + (*&v21[v13] * *&v21[v13]);
    ++v13;
  }

  while (v13 != 3);
  v15 = sqrtf(v9);
  v16 = sqrtf(v14);
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = 1.0;
  if (v17 > 0.2618)
  {
    v19 = (((v7 / v15) * (v12 / v16)) + ((v5 / v15) * (v11 / v16))) + ((v3 / v15) * (v10 / v16));
    if (v19 <= 0.0)
    {
      return -v19;
    }

    else
    {
      return v19;
    }
  }

  return v18;
}

float sub_19B613628(uint64_t a1)
{
  v2 = sub_19B5BF0D0(a1, *(a1 + 2) - 10, *(a1 + 2));
  v5 = 0;
  *v10 = v2;
  *&v10[1] = v3;
  *&v10[2] = v4;
  v6 = 0.0;
  do
  {
    v6 = v6 + (*&v10[v5] * *&v10[v5]);
    ++v5;
  }

  while (v5 != 3);
  v7 = sqrtf(v6);
  v8 = (((v4 / v7) * *(a1 + 6296)) + ((v3 / v7) * *(a1 + 6292))) + ((v2 / v7) * *(a1 + 6288));
  result = -v8;
  if (v8 > 0.0)
  {
    return v8;
  }

  return result;
}

BOOL sub_19B6136BC(float *a1)
{
  v1 = a1[1560];
  if (v1 < 0.5236)
  {
    return 0;
  }

  v4 = a1[1561];
  if (v4 > (v1 + 0.087266))
  {
    goto LABEL_4;
  }

  v5 = 0.76;
  if (v4 > 0.43633)
  {
    v6 = a1[1569] - a1[1570];
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 <= 0.34907)
    {
      goto LABEL_4;
    }

    if (v4 < v1)
    {
      v1 = a1[1561];
    }

    if (v1 > 0.087266 && a1[1564] <= 0.31193)
    {
LABEL_4:
      v5 = 0.6;
    }
  }

  if (sub_19B613508(a1) <= v5)
  {
    return 1;
  }

  if (sub_19B6132E8(a1))
  {
    return 0;
  }

  v7 = 0.0;
  v8 = 0x3FFFFFFFFFFFFFFDLL;
  do
  {
    v7 = v7 + (a1[v8 + 1575] * a1[v8 + 1575]);
    ++v8;
  }

  while (v8 * 4);
  return sqrtf(v7) < 0.001 || sub_19B613628(a1) <= 0.4;
}

BOOL sub_19B6137FC(float *a1)
{
  v1 = a1[1564];
  if (v1 < 0.030462)
  {
    return 0;
  }

  v4 = a1[1560];
  v5 = a1[1562];
  if (v4 <= v5)
  {
    v6 = a1[1562];
  }

  else
  {
    v6 = a1[1560];
  }

  if (v6 <= 0.87266)
  {
    goto LABEL_22;
  }

  if (v1 <= a1[1565])
  {
    v1 = a1[1565];
  }

  if (v1 <= 0.31193)
  {
LABEL_22:
    v2 = 0;
    v7 = a1[1569];
    v8 = a1[1570];
    v9 = v7 - v8;
    if ((v7 - v8) <= 0.0)
    {
      v9 = -(v7 - v8);
    }

    v10 = a1[1567] - a1[1568];
    if (v10 <= 0.0)
    {
      v10 = -v10;
    }

    if (v9 >= v10)
    {
      v9 = v10;
    }

    if (v8 <= 0.0)
    {
      v8 = -v8;
    }

    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v8 >= v7 || v9 <= 0.34907)
    {
      return v2;
    }
  }

  v11 = a1[1563];
  v12 = v11 * 1.5;
  if ((v11 * 1.5) < 0.087266)
  {
    v12 = 0.087266;
  }

  if (a1[1566] >= v12)
  {
    v13 = v4 <= v5 ? a1[1560] : a1[1562];
    v14 = v5 - v11;
    v15 = v4 - a1[1561];
    if (v14 > v15)
    {
      v15 = v14;
    }

    if (v13 > 0.087266 && v15 >= 0.17453)
    {
      return 1;
    }
  }

  return sub_19B6136BC(a1);
}

os_log_t sub_19B61392C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

float sub_19B61395C(unsigned __int16 *a1)
{
  v1 = sub_19B5BF0D0(a1, 0, a1[1]);
  v2 = 0;
  *v7 = v1;
  v7[1] = v3;
  v7[2] = v4;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*&v7[v2] * *&v7[v2]);
    ++v2;
  }

  while (v2 != 3);
  return sqrtf(v5);
}

float sub_19B6139B4(uint64_t a1)
{
  v1 = sub_19B5BF0D0((a1 + 1208), 0, *(a1 + 1210));
  v2 = 0;
  *v7 = v1;
  v7[1] = v3;
  v7[2] = v4;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*&v7[v2] * *&v7[v2]);
    ++v2;
  }

  while (v2 != 3);
  return sqrtf(v5);
}

float sub_19B613A10(uint64_t a1, int a2, unsigned int a3, float a4)
{
  if (a3 < 1)
  {
    v13 = 0.0;
  }

  else
  {
    v7 = a2;
    v8 = 0.0;
    v9 = 0.0;
    v10 = a3;
    do
    {
      v11 = sub_19B5BFE1C((a1 + 28), v7);
      v12 = ((*v11 - a4) * (*v11 - a4)) - v8;
      v13 = v9 + v12;
      v8 = ((v9 + v12) - v9) - v12;
      ++v7;
      v9 = v9 + v12;
      --v10;
    }

    while (v10);
  }

  return v13 / a3;
}

void sub_19B614928(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6149D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 16);
  if (result)
  {
    v4 = MEMORY[0x19EAE71C0]();
    result = MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    v2 = *(a1 + 32);
  }

  *(v2 + 16) = 0;
  return result;
}

void sub_19B614D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B6150E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B615578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B6159E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B615D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B61646C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6173E8()
{
  result = os_log_create("com.apple.locationd.Motion", "SensorRecorder");
  qword_1EAFE29D0 = result;
  return result;
}

void sub_19B617418(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19B617498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B6174AC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B6174AC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x19EAE7200]();
    MEMORY[0x19EAE76F0](v3, 0x10B2C40829B1077);
  }

  return a1;
}

void sub_19B6174F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B617530(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MEMORY[0x19EAE7200]();

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B617574(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E349E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_19B617660(void *a1)
{
  *a1 = &unk_1F0E32828;
  sub_19B44B2C8(a1, 0, 0);

  return sub_19B674784(a1);
}

void sub_19B6176C4(void *a1)
{
  sub_19B617660(a1);

  JUMPOUT(0x19EAE76F0);
}

BOOL sub_19B6176FC(const char *a1)
{
  existing = 0;
  v1 = *MEMORY[0x1E696CD60];
  v2 = IOServiceMatching(a1);
  IOServiceGetMatchingServices(v1, v2, &existing);
  v3 = IOIteratorNext(existing);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *MEMORY[0x1E695E480];
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v4, @"RequiresCompassResetOnConnect", v6, 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        v9 = CFGetTypeID(CFProperty);
        if (v9 == CFBooleanGetTypeID())
        {
          v5 = CFBooleanGetValue(v8) != 0;
          CFRelease(v8);
        }
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(existing);
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

os_log_t sub_19B6177E8()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B617B6C(void *a1)
{
  *a1 = &unk_1F0E34518;
  sub_19B61907C(a1);

  return sub_19B70B29C(a1);
}

void sub_19B617BC8(void *a1)
{
  sub_19B617B6C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B617C00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v19 = v2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Legacy compass started. Cover attached %{public}d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
    }

    v17[0] = 67240192;
    v17[1] = v2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "Legacy compass started. Cover attached %{public}d", v17, 8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass6::start(BOOL)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (!*(a1 + 200))
  {
    operator new();
  }

  if (*(a1 + 186))
  {
    if (!*(a1 + 144))
    {
      v8 = sub_19B424AE0();
      v9 = *(v8 + 72);
      if (v9 && *(v9 + 56) && (*(v8 + 28) & 1) == 0)
      {
        v15 = [CLDeviceMotionProperties alloc];
        objc_msgSend_initWithMode_(v15, v16, 7);
      }

      else
      {
        v10 = sub_19B424AE0();
        v11 = *(v10 + 72);
        if (v11 && *(v11 + 56))
        {
          v12 = *(v10 + 28);
          v13 = [CLDeviceMotionProperties alloc];
          if (v12)
          {
            objc_msgSend_initWithMode_(v13, v14, 15);
            goto LABEL_29;
          }
        }

        else
        {
          v13 = [CLDeviceMotionProperties alloc];
        }

        objc_msgSend_initWithMode_(v13, v14, 3);
      }

LABEL_29:
      operator new();
    }
  }

  else if (!*(a1 + 136))
  {
    operator new();
  }

  if (!*(a1 + 152))
  {
    operator new();
  }

  *(a1 + 184) = 0;
  *(a1 + 164) = 0;
}

void sub_19B6181F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v145 = *MEMORY[0x1E69E9840];
  v98 = *v3;
  v99 = *(v3 + 16);
  ++*(v4 + 160);
  if ((atomic_load_explicit(&qword_1ED71CAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CAD8))
  {
    dword_1ED71CAD0 = (1.5 / *(v5 + 168));
    __cxa_guard_release(&qword_1ED71CAD8);
  }

  v6 = *(v5 + 144);
  if (v6)
  {
    os_unfair_lock_lock((v6 + 148));
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    v10 = *(v6 + 48);
    v11 = *(v6 + 68);
    v12 = *(v6 + 76);
    v13 = *(v6 + 98);
    v14 = *(v6 + 144);
    os_unfair_lock_unlock((v6 + 148));
    if (v14 == 1)
    {
      v15 = v8 * (v10 + v10) - v7 * (v9 + v9);
      v16 = v7 * (v8 + v8) + v9 * (v10 + v10);
      v17 = 1.0 - v8 * (v8 + v8) - v9 * (v9 + v9);
      v18 = -v15;
      *(v5 + 188) = v18;
      *(v5 + 192) = -v16;
      *(v5 + 196) = -v17;
      v19 = *(v5 + 200);
      *(v19 + 80) = v18;
      *(v19 + 84) = *(v5 + 192);
      *(v19 + 88) = *(v5 + 196);
      *(v19 + 16) = v8;
      *(v19 + 24) = v9;
      *(v19 + 32) = v10;
      *(v19 + 40) = v7;
      *(v19 + 56) = v11;
      *(v19 + 64) = v12;
      *(v19 + 96) = v13;
    }
  }

  else
  {
    v20 = *(v5 + 136);
    if (v20)
    {
      os_unfair_lock_lock((v20 + 44));
      buf[0] = *(v20 + 16);
      *&buf[1] = *(v20 + 32);
      v21 = *(v20 + 40);
      os_unfair_lock_unlock((v20 + 44));
      if (v21 == 1)
      {
        *(v5 + 188) = *(&buf[0] + 1);
        *(v5 + 196) = buf[1];
        v22 = *(v5 + 200);
        v22[20] = *(v5 + 188);
        v22[21] = *(v5 + 192);
        v22[22] = *(v5 + 196);
      }
    }
  }

  v95 = -1082130432;
  if (*(v5 + 188) == 3.4028e38 || !sub_19B6E107C(*(v5 + 200), &v98 + 1))
  {
    if ((*(v5 + 164) & 1) == 0 && *(*(v5 + 200) + 376) > dword_1ED71CAD0)
    {
      v87 = 0.0;
      DWORD2(v85) = 0;
      LODWORD(v88) = -1082130432;
      LODWORD(v89) = 0;
      BYTE4(v89) = 0;
      v90 = 0;
      LODWORD(v91) = 0;
      v96 = 0;
      v97 = 0;
      v84 = *&v98;
      *&v85 = 0;
      *(v5 + 164) = 1;
      sub_19B41DF08(v5, 0, &v84, 120);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      v32 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        v33 = *(v5 + 168) * *(*(v5 + 200) + 376);
        LODWORD(buf[0]) = 134349056;
        *(buf + 4) = v33;
        _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_INFO, "Notify after %{public}.3f seconds of no event.", buf, 0xCu);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
        }

        v35 = *(v5 + 168) * *(*(v5 + 200) + 376);
        LODWORD(v100[0]) = 134349056;
        *(v100 + 4) = v35;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "Notify after %{public}.3f seconds of no event.", v100, 12);
        v37 = v36;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v36);
        goto LABEL_74;
      }
    }
  }

  else if (sub_19B6E1D18(*(v5 + 200), &v85, v23, v24, v25, v26, v27, v28))
  {
    v84 = *&v98;
    v29 = *(v5 + 200);
    v30 = *(v29 + 1640);
    v31 = v30 ? *(*(*(v29 + 1608) + (((v30 + *(v29 + 1632) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v30 + *(v29 + 1632) - 1) & 0x3FF)) : 0;
    v96 = v31;
    v97 = *(v5 + 28);
    if (*(v5 + 185) == 1)
    {
      if (*&v88 < 0.0)
      {
        *(v5 + 185) = 0;
        v38 = sub_19B673618();
        sub_19B673D0C(v38);
        v29 = *(v5 + 200);
      }
    }

    else if (*&v88 >= 0.0)
    {
      *(v5 + 185) = 1;
    }

    v39 = (*(**(v29 + 104) + 120))(*(v29 + 104));
    HIBYTE(v83) = v39;
    if (*(v5 + 184) != v39)
    {
      sub_19B41DF08(v5, 1, &v83 + 7, 1);
      *(v5 + 184) = HIBYTE(v83);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      v40 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "CompassAlignment";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = HIBYTE(v83);
        WORD1(buf[1]) = 2048;
        *(&buf[1] + 4) = v98;
        _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEBUG, "Type,%s,compassJustAlignedToStableField,%d,timestamp,%20.20f", buf, 0x1Cu);
      }

      v41 = sub_19B420058();
      if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
        }

        LODWORD(v100[0]) = 136315650;
        *(v100 + 4) = "CompassAlignment";
        WORD2(v100[1]) = 1024;
        *(&v100[1] + 6) = HIBYTE(v83);
        WORD1(v100[2]) = 2048;
        *(&v100[2] + 4) = v98;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Type,%s,compassJustAlignedToStableField,%d,timestamp,%20.20f", v100, 28, v83);
        v43 = v42;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      if (*(v5 + 29) == 1)
      {
        v100[0] = &unk_1F0E31330;
        v100[1] = CFAbsoluteTimeGetCurrent();
        v100[3] = v98;
        LOBYTE(v101[0]) = HIBYTE(v83);
        v44 = sub_19B720E40();
        sub_19B7223F8(v44, v100);
        sub_19B517F80(buf);
        sub_19B532768(buf);
        v144 |= 1u;
        v141 = v100[1];
        v45 = v143;
        v46 = v98;
        *(v143 + 20) |= 1u;
        *(v45 + 8) = v46;
        v47 = v143;
        v48 = HIBYTE(v83);
        *(v143 + 20) |= 2u;
        *(v47 + 16) = v48;
        sub_19B51DBD4(buf);
      }
    }

    v49 = *(v5 + 200);
    v50 = v49[338];
    v51 = v49[339];
    v52 = v49[340];
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
    }

    v53 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136318722;
      *(buf + 4) = "Compass";
      WORD6(buf[0]) = 2048;
      *(buf + 14) = *&v87;
      WORD3(buf[1]) = 2048;
      *(&buf[1] + 1) = *(&v87 + 1);
      v117 = 2048;
      v118 = *&v88;
      v119 = 2048;
      v120 = *&v85;
      v121 = 2048;
      v122 = *(&v85 + 1);
      v123 = 2048;
      v124 = *(&v85 + 2);
      v125 = 2048;
      v126 = v50;
      v127 = 2048;
      v128 = v51;
      v129 = 2048;
      v130 = v52;
      v131 = 1024;
      v132 = LODWORD(v89);
      v133 = 2048;
      v134 = *&v90;
      v135 = 2048;
      v136 = *(&v90 + 1);
      v137 = 2048;
      v138 = *&v91;
      v139 = 2048;
      v140 = v84;
      _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "Type,%s,magneticHeading,%20.20f,trueHeading,%20.20f,accuracy,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,level,%d,magnitude,%20.20f,inclination,%20.20f,horizontal,%20.20f,timestamp,%20.20f", buf, 0x94u);
    }

    v54 = sub_19B420058();
    if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      LODWORD(v100[0]) = 136318722;
      *(v100 + 4) = "Compass";
      WORD2(v100[1]) = 2048;
      *(&v100[1] + 6) = *&v87;
      HIWORD(v100[2]) = 2048;
      *&v100[3] = *(&v87 + 1);
      LOWORD(v101[0]) = 2048;
      *(v101 + 2) = *&v88;
      WORD5(v101[0]) = 2048;
      *(v101 + 12) = *&v85;
      WORD2(v101[1]) = 2048;
      *(&v101[1] + 6) = *(&v85 + 1);
      HIWORD(v101[1]) = 2048;
      v102 = *(&v85 + 2);
      LOWORD(v103[0]) = 2048;
      *(v103 + 2) = v50;
      HIWORD(v103[2]) = 2048;
      *&v103[3] = v51;
      v104 = 2048;
      v105 = v52;
      v106 = 1024;
      v107 = LODWORD(v89);
      v108 = 2048;
      v109 = *&v90;
      v110 = 2048;
      v111 = *(&v90 + 1);
      v112 = 2048;
      v113 = *&v91;
      v114 = 2048;
      v115 = v84;
      LODWORD(v82) = 148;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Type,%s,magneticHeading,%20.20f,trueHeading,%20.20f,accuracy,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,level,%d,magnitude,%20.20f,inclination,%20.20f,horizontal,%20.20f,timestamp,%20.20f", v100, v82, v83, v84, *&v85, *(&v85 + 1), v86, v87, v88, v89, v90, v91, v92, v93, v94);
      v56 = v55;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v55);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    if (*(v5 + 29) == 1)
    {
      v100[0] = &unk_1F0E311B0;
      v100[1] = CFAbsoluteTimeGetCurrent();
      *&v100[3] = v84;
      *&v57 = v87;
      *(&v57 + 1) = __PAIR64__(v85, LODWORD(v88));
      v101[0] = v57;
      *&v101[1] = *(&v85 + 4);
      *(&v101[1] + 1) = __PAIR64__(LODWORD(v51), LODWORD(v50));
      *&v102 = v52;
      BYTE4(v102) = LOBYTE(v89);
      *v103 = v90;
      v103[2] = LODWORD(v91);
      v58 = sub_19B720E40();
      sub_19B7223F8(v58, v100);
      sub_19B517F80(buf);
      sub_19B5326D8(buf);
      v144 |= 1u;
      v141 = v100[1];
      v59 = v142;
      v60 = v84;
      *(v142 + 68) |= 1u;
      *(v59 + 8) = v60;
      v61 = v142;
      *(v142 + 68) |= 0x800u;
      v62 = HIDWORD(v87);
      *(v61 + 56) = LODWORD(v87);
      v63 = v142;
      *(v142 + 68) |= 0x2000u;
      *(v63 + 64) = v62;
      v64 = v142;
      LODWORD(v60) = LODWORD(v88);
      *(v142 + 68) |= 2u;
      *(v64 + 16) = LODWORD(v60);
      v65 = v142;
      v66 = DWORD1(v85);
      *(v142 + 44) = v85;
      *(v65 + 68) |= 0x100u;
      v67 = v142;
      *(v142 + 68) |= 0x200u;
      *(v67 + 48) = v66;
      v68 = v142;
      LODWORD(v60) = DWORD2(v85);
      *(v142 + 68) |= 0x400u;
      *(v68 + 52) = LODWORD(v60);
      v69 = v142;
      *(v142 + 68) |= 4u;
      *(v69 + 20) = v50;
      v70 = v142;
      *(v142 + 68) |= 8u;
      *(v70 + 24) = v51;
      v71 = v142;
      *(v142 + 68) |= 0x10u;
      *(v71 + 28) = v52;
      v72 = v142;
      v73 = LODWORD(v89);
      *(v142 + 68) |= 0x20u;
      *(v72 + 32) = v73;
      v74 = v142;
      LODWORD(v60) = v90;
      *(v142 + 68) |= 0x1000u;
      *(v74 + 60) = LODWORD(v60);
      v75 = v142;
      LODWORD(v60) = HIDWORD(v90);
      *(v142 + 68) |= 0x80u;
      *(v75 + 40) = LODWORD(v60);
      v76 = v142;
      LODWORD(v60) = LODWORD(v91);
      *(v142 + 68) |= 0x40u;
      *(v76 + 36) = LODWORD(v60);
      sub_19B51DBD4(buf);
    }

    if (SLODWORD(v89) > 0 || *(*(v5 + 200) + 376) > dword_1ED71CAD0)
    {
      sub_19B41DF08(v5, 0, &v84, 120);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      v77 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v78 = *(*(v5 + 200) + 376);
        LODWORD(buf[0]) = 67109632;
        DWORD1(buf[0]) = v78;
        WORD4(buf[0]) = 1024;
        *(buf + 10) = LODWORD(v89);
        HIWORD(buf[0]) = 2048;
        *&buf[1] = v84;
        _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEBUG, "notified clients. sampleCount,%d,compass.compass.calibrationLevel,%d,compass.timestamp,%f", buf, 0x18u);
      }

      v79 = sub_19B420058();
      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
        }

        v80 = *(*(v5 + 200) + 376);
        LODWORD(v100[0]) = 67109632;
        HIDWORD(v100[0]) = v80;
        LOWORD(v100[1]) = 1024;
        *(&v100[1] + 2) = LODWORD(v89);
        HIWORD(v100[1]) = 2048;
        *&v100[2] = v84;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "notified clients. sampleCount,%d,compass.compass.calibrationLevel,%d,compass.timestamp,%f", v100, 24, v83);
        v37 = v81;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v81);
LABEL_74:
        if (v37 != buf)
        {
          free(v37);
        }
      }
    }
  }
}

void sub_19B619054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void *sub_19B61907C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Legacy compass stopped.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
    }

    v15[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "Legacy compass stopped.", v15, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass6::stop()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v7 = *(a1 + 144);
  v6 = *(a1 + 152);
  *(a1 + 144) = 0;
  if (v6)
  {
    v8 = sub_19B673618();
    sub_19B426A14(v8, 0, *(a1 + 152));
    v9 = *(a1 + 152);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(a1 + 152) = 0;
  }

  if (*(a1 + 186))
  {
    if (v7)
    {
      v10 = sub_19B424AE0();
      sub_19B425248(v10, v7);
      (*(*v7 + 8))(v7);
    }
  }

  else if (*(a1 + 136))
  {
    v11 = sub_19B4249E4();
    sub_19B426A14(v11, 0, *(a1 + 136));
    v12 = *(a1 + 136);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    *(a1 + 136) = 0;
  }

  result = *(a1 + 200);
  if (result)
  {
    v14 = sub_19B6E0F50(result);
    result = MEMORY[0x19EAE76F0](v14, 0x10A0C40E4B69569);
    *(a1 + 200) = 0;
  }

  *(a1 + 188) = 2139095039;
  return result;
}

float sub_19B619330(uint64_t a1, double *a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    return sub_19B6E1C04(v2, a2);
  }

  return result;
}

uint64_t sub_19B619340(uint64_t result)
{
  v1 = *(result + 200);
  if (v1)
  {
    return (*(**(v1 + 104) + 128))();
  }

  return result;
}

void sub_19B619378(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6193B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 44));
  v5 = *a3;
  *(a1 + 32) = *(a3 + 2);
  *(a1 + 16) = v5;
  *(a1 + 40) = 1;

  os_unfair_lock_unlock((a1 + 44));
}

void sub_19B61940C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B619444(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 148));
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[3];
  *(a1 + 48) = a3[2];
  *(a1 + 64) = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[7];
  *(a1 + 112) = a3[6];
  *(a1 + 128) = v10;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 144) = 1;

  os_unfair_lock_unlock((a1 + 148));
}

void sub_19B6194B0(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

unsigned __int16 *sub_19B61966C(unsigned __int16 *result, void *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[4 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

unsigned __int16 *sub_19B6196CC(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280C0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280C0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 2>>::operator[](const size_t) const [T = CMVector<float, 2>]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[4 * (v4 - v5) + 4];
}

uint64_t sub_19B6198E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0E32968;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 20) = 0x3F80000000000000;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  v4[0] = xmmword_19B7B9898;
  v4[1] = unk_19B7B98A8;
  v5 = 973279855;
  sub_19B61A35C(a1 + 28, v4);
  return a1;
}

BOOL sub_19B619978(uint64_t a1)
{
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 20) = 0x3F80000000000000;
  v3[0] = xmmword_19B7B9898;
  v3[1] = unk_19B7B98A8;
  v4 = 973279855;
  result = sub_19B61A35C(a1 + 28, v3);
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

void sub_19B6199EC(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED71CAE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CAE8))
  {
    dword_1ED71CAE0 = 1060439283;
    __cxa_guard_release(&qword_1ED71CAE8);
  }

  v2 = *(a1 + 56);
  v3 = *(v2 + 10);
  if (*(v2 + 12) == v3)
  {
    if (*(v2 + 425) == 1)
    {
      v4 = !sub_19B76DEC4(v2);
      v2 = *(a1 + 56);
      if (v4)
      {
        v48 = 0;
        v5 = *(v2 + 216);
        v6 = *(v2 + 220);
        v7 = *(v2 + 224);
        *buf = v5;
        *&buf[4] = v6;
        *&buf[8] = v7;
        v49 = 0.0;
        do
        {
          v49 = v49 + (*&buf[v48] * *&buf[v48]);
          v48 += 4;
        }

        while (v48 != 12);
        if (sqrtf(v49) > 0.00000011921)
        {
          v50 = 0;
          v51 = 0.0;
          do
          {
            v51 = v51 + (*&buf[v50] * *&buf[v50]);
            v50 += 4;
          }

          while (v50 != 12);
          v52 = sqrtf(v51);
          v5 = v5 / v52;
          v6 = v6 / v52;
          v7 = v7 / v52;
        }

LABEL_13:
        v13 = fabsf(v5);
        v14 = (v7 * -0.0) - v6;
        v15 = v5 + (v7 * 0.0);
        v16 = (v6 * -0.0) + (v5 * 0.0);
        if (v13 > *&dword_1ED71CAE0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0.0;
        }

        if (v13 > *&dword_1ED71CAE0)
        {
          v18 = v15;
        }

        else
        {
          v18 = 0.0;
        }

        if (v13 > *&dword_1ED71CAE0)
        {
          v19 = v14;
        }

        else
        {
          v19 = 1.0;
        }

        v20 = *(a1 + 56);
        if (*(v20 + 425) == 1)
        {
          v21 = sub_19B76DEC4(v20);
          if ((*(a1 + 10) & 1) == 0)
          {
            v27 = v21;
            v20 = *(a1 + 56);
            if (!v27)
            {
              v28 = *(v20 + 216);
              v29 = *(v20 + 220);
              v30 = *(v20 + 224);
              *v74 = v28;
              goto LABEL_30;
            }

            goto LABEL_28;
          }
        }

        else if (*(a1 + 10) != 1)
        {
LABEL_28:
          v31 = sub_19B5BF0D0((v20 + 8), 0, *(v20 + 10));
          goto LABEL_29;
        }

        v31 = sub_19B447000((a1 + 12));
LABEL_29:
        v28 = v31;
        v29 = v32;
        v30 = v33;
        *v74 = v31;
LABEL_30:
        v34 = 0;
        *&v74[1] = v29;
        *&v74[2] = v30;
        v35 = 0.0;
        do
        {
          v35 = v35 + (*&v74[v34] * *&v74[v34]);
          ++v34;
        }

        while (v34 != 3);
        v36 = sqrtf(v35);
        v37 = fabsf(v36 + -1.0);
        if (v37 <= 1.0)
        {
          v43 = (v37 / v36) * (v37 / v36);
          if (v43 < 0.0109)
          {
            v43 = 0.0109;
          }

          v85[0] = 25.0;
          v85[1] = 1.0 / v43;
          v73.i64[0] = 0;
          v73.i64[1] = 0x3F80000000000000;
          v42 = sub_19B66C3CC(v85, &v73, &v75, v19, v18, v17, v28, v29, v30, v22, v23, v24, v25, v26, __SPAIR64__(LODWORD(v18), LODWORD(v19)), SLODWORD(v17));
          if (v42)
          {
            *(a1 + 12) = v73;
            if (!sub_19B61A35C(a1 + 28, &v75))
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
              }

              v44 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_DEBUG, "invalid initial covariance !(P > 0), using default", buf, 2u);
              }

              v45 = sub_19B420058();
              if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
                }

                LOWORD(v72[0]) = 0;
                LODWORD(v71) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "invalid initial covariance !(P > 0), using default", v72, *&v71);
                v47 = v46;
                sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSensorFusionMekf::initializeState(const CMVector3d &, const CMVector3d &, float)", "CoreLocation: %s\n", v46);
                if (v47 != buf)
                {
                  free(v47);
                }
              }

              *&buf[32] = 973279855;
              *buf = xmmword_19B7B9898;
              *&buf[16] = unk_19B7B98A8;
              sub_19B61A35C(a1 + 28, buf);
            }
          }

          else
          {
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
            }

            v53 = off_1ED71C828;
            if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "initializeState northAndGravity failed", buf, 2u);
            }

            v54 = sub_19B420058();
            if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
              }

              LOWORD(v72[0]) = 0;
              LODWORD(v71) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "initializeState northAndGravity failed", v72, *&v71);
              v56 = v55;
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSensorFusionMekf::initializeState(const CMVector3d &, const CMVector3d &, float)", "CoreLocation: %s\n", v55);
              if (v56 != buf)
              {
                free(v56);
              }
            }
          }
        }

        else
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
          }

          v38 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v36;
            _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_DEBUG, "initializeState MaxInitialDiffUnity failed,magnitude,%f", buf, 0xCu);
          }

          v39 = sub_19B420058();
          if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
            }

            v75 = 134217984;
            *v76 = v36;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "initializeState MaxInitialDiffUnity failed,magnitude,%f", COERCE_DOUBLE(&v75));
            v41 = v40;
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSensorFusionMekf::initializeState(const CMVector3d &, const CMVector3d &, float)", "CoreLocation: %s\n", v40);
            if (v41 != buf)
            {
              free(v41);
            }
          }

          v42 = 0;
        }

        *(a1 + 10) = v42;
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
        }

        v57 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
        {
          v58 = *(a1 + 10);
          v59 = *(a1 + 12);
          v60 = *(a1 + 16);
          v61 = *(a1 + 20);
          v62 = *(a1 + 24);
          *buf = 67110400;
          *&buf[4] = v58;
          *&buf[8] = 2048;
          *&buf[10] = v59;
          *&buf[18] = 2048;
          *&buf[20] = v60;
          *&buf[28] = 2048;
          *&buf[30] = v61;
          v87 = 2048;
          v88 = v62;
          v89 = 1024;
          v90 = v4;
          _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_DEBUG, "initialized down,%u,q.x,%f,q.y,%f,q.z,%f,q.w,%f, withAvgGrav, %d", buf, 0x36u);
        }

        v63 = sub_19B420058();
        if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
          }

          v64 = *(a1 + 10);
          v65 = *(a1 + 12);
          v66 = *(a1 + 16);
          v67 = *(a1 + 20);
          v68 = *(a1 + 24);
          v75 = 67110400;
          *v76 = v64;
          *&v76[4] = 2048;
          *&v76[6] = v65;
          v77 = 2048;
          v78 = v66;
          v79 = 2048;
          v80 = v67;
          v81 = 2048;
          v82 = v68;
          v83 = 1024;
          v84 = v4;
          LODWORD(v71) = 54;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "initialized down,%u,q.x,%f,q.y,%f,q.z,%f,q.w,%f, withAvgGrav, %d", &v75, v71, v72[0], v72[1], *v73.i64, v73.i32[2]);
          v70 = v69;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMSensorFusionMekf::initializeAttitude()", "CoreLocation: %s\n", v69);
          if (v70 != buf)
          {
            free(v70);
          }
        }

        return;
      }

      v3 = *(v2 + 10);
    }

    v5 = sub_19B5BF0D0((v2 + 8), 0, v3);
    v8 = 0;
    *buf = v5;
    *&buf[4] = v6;
    *&buf[8] = v7;
    v9 = 0.0;
    do
    {
      v9 = v9 + (*&buf[v8] * *&buf[v8]);
      v8 += 4;
    }

    while (v8 != 12);
    if (sqrtf(v9) > 0.00000011921)
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v11 = v11 + (*&buf[v10] * *&buf[v10]);
        v10 += 4;
      }

      while (v10 != 12);
      v12 = sqrtf(v11);
      v5 = v5 / v12;
      v6 = v6 / v12;
      v7 = v7 / v12;
    }

    v4 = 0;
    goto LABEL_13;
  }
}