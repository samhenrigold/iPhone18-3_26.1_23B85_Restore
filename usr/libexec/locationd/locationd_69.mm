void sub_1004766A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

void sub_100476A44(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v3 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67240448;
    LODWORD(v11[0]) = 100;
    WORD2(v11[0]) = 1026;
    *(v11 + 6) = 100;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Subscribing to Sensor Recorder: Accel Rate %{public}d Gyro Rate %{public}d", &v10, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188C5A4();
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  if (([objc_msgSend(v5 "sensorRecorder")] & 1) == 0)
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v6 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_ERROR))
    {
      v10 = 67240192;
      LODWORD(v11[0]) = 100;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Unable to set sample rate for accel to %{public}d.", &v10, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188C6AC();
    }
  }

  if (([objc_msgSend(*v4 "sensorRecorder")] & 1) == 0)
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v7 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_ERROR))
    {
      v10 = 67240192;
      LODWORD(v11[0]) = 100;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Unable to set sample rate for gyro to %{public}d.", &v10, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188C7A0();
    }
  }

  [objc_msgSend(*v4 "fSensorRecorderSubscribeTimer")];
  if (qword_1025D4590 != -1)
  {
    sub_10188BF5C();
  }

  v8 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    [objc_msgSend(*v4 "fSensorRecorderSubscribeTimer")];
    v10 = 134349056;
    v11[0] = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "fSensorRecorderSubscribeTimer.nextFireTime, %{public}f", &v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188C894();
  }
}

id sub_100476D5C(uint64_t a1)
{
  [*(a1 + 32) processDataWithMaxDuration:3600.0 endTime:CFAbsoluteTimeGetCurrent()];
  v2 = [*(a1 + 32) fSensorRecorderQueryTimer];

  return [v2 setNextFireDelay:300.0];
}

uint64_t sub_100477F10(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v2 = sub_1000206B4(a1, a2);
  v3 = sub_1000052CC(v2, @"kMonitorKinesiasDBPushErrorCount", &v11);
  v5 = sub_1000206B4(v3, v4);
  v10 = v11 + 1;
  v6 = sub_1000F2D48(v5, @"kMonitorKinesiasDBPushErrorCount", &v10);
  v8 = *sub_1000206B4(v6, v7);
  return (*(v8 + 944))();
}

uint64_t sub_100477FAC(uint64_t a1, double *a2, CFAbsoluteTime *a3, double a4)
{
  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v9 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2;
    *buf = 134349056;
    v46 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Checking from %{public}.2f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188CF68();
  }

  v11 = *(a1 + 224);
  if (!v11)
  {
LABEL_10:
    *a3 = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v13 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "No valid monitoring periods seen", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10188D550();
    return 0;
  }

  while (1)
  {
    v12 = *(a1 + 216);
    if (*(*(*(a1 + 192) + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v12 + 8) > *a2)
    {
      break;
    }

    *(a1 + 224) = v11 - 1;
    *(a1 + 216) = v12 + 1;
    sub_100014444(a1 + 184, 1);
    v11 = *(a1 + 224);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (qword_1025D4590 != -1)
  {
    sub_10188BF5C();
  }

  v15 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (*(*(a1 + 192) + ((*(a1 + 216) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 216));
    v18 = *v16;
    v17 = v16[1];
    *buf = 134349312;
    v46 = v18;
    v47 = 2050;
    v48 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Selecting monitoring period: %{public}f - %{public}f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188D064();
  }

  v19 = *(*(a1 + 192) + ((*(a1 + 216) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 216);
  v20 = *a2;
  if (*a2 < *v19)
  {
    v20 = *v19;
  }

  *a2 = v20;
  *a3 = *(v19 + 8);
  v21 = *(a1 + 240);
  if (*(a1 + 248) == v21 || (v22 = *(a1 + 264), v23 = (v21 + 8 * (v22 >> 8)), v24 = *v23 + 16 * v22, v25 = *(v21 + (((*(a1 + 272) + v22) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 272) + v22), v24 == v25))
  {
LABEL_62:
    v27 = 1;
    goto LABEL_63;
  }

  v26 = 0;
  v42 = 0;
  v27 = 1;
  while (1)
  {
    v28 = *v24;
    if (*v24 >= *a3)
    {
LABEL_49:
      v32 = 0;
      goto LABEL_52;
    }

    if (v26)
    {
      if (v28 < *a3 && (*(v24 + 8) & 1) == 0)
      {
        goto LABEL_51;
      }

      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v29 = p_info;
      v30 = p_info[179];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "Found two consecutive onWrist events, skipping later one", buf, 2u);
      }

      p_info = v29;
      if (sub_10000A100(121, 2))
      {
        sub_10188D180(&v43, v44);
      }

      v26 = 1;
      goto LABEL_46;
    }

    if (v28 > *a2)
    {
      break;
    }

    v26 = 0;
    ++v42;
    v27 = *(v24 + 8);
LABEL_46:
    v24 += 16;
    if (v24 - *v23 == 4096)
    {
      v31 = v23[1];
      ++v23;
      v24 = v31;
    }

    if (v24 == v25)
    {
      goto LABEL_49;
    }
  }

  if (*(v24 + 8) == 1)
  {
    if ((v27 & 1) == 0)
    {
      *a2 = v28;
    }

    v26 = 1;
    v27 = 1;
    goto LABEL_46;
  }

  if ((v27 & 1) == 0)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_46;
  }

  v27 = 1;
LABEL_51:
  *a3 = v28;
  v32 = 1;
LABEL_52:
  if (v42 >= 2)
  {
    v33 = v42 + 1;
    do
    {
      *(a1 + 264) = vaddq_s64(*(a1 + 264), xmmword_101C66230);
      sub_100014444(a1 + 232, 1);
      --v33;
    }

    while (v33 > 2);
  }

  if (v32)
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v34 = p_info[179];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *a2;
      v36 = *a3;
      *buf = 134349312;
      v46 = v35;
      v47 = 2050;
      v48 = v36;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "Full on wrist period seen, %{public}0.f - %{public}0.f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188D284();
    }

    goto LABEL_62;
  }

LABEL_63:
  v37 = CFAbsoluteTimeGetCurrent() + -60.0;
  if (v37 >= *a3)
  {
    v37 = *a3;
  }

  *a3 = v37;
  if (((v37 > *a2) & v27) != 0)
  {
    if (*a2 + a4 < v37)
    {
      v37 = *a2 + a4;
    }

    *a3 = v37;
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v38 = p_info[179];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *a2;
      v40 = *a3;
      *buf = 134349312;
      v46 = v39;
      v47 = 2050;
      v48 = v40;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "Valid period returned, %{public}0.f - %{public}0.f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188D45C();
    }

    return 1;
  }

  if (qword_1025D4590 != -1)
  {
    sub_10188BF5C();
  }

  v41 = p_info[179];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "No valid on wrist periods seen", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10188D378();
    return 0;
  }

  return result;
}

void sub_100478A38(char *result, void *a2, int a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    [objc_msgSend(a2 objectForKeyedSubscript:{@"time", "doubleValue"}];
    v6 = v5;
    v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"score", "intValue"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{@"likelihood", "floatValue"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{@"strength", "floatValue"}];
    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"tremorScore", "intValue"}];
    v10 = result + 112;
    v11 = *(result + 14);
    if (v11 == 0.0)
    {
      v12 = (v6 / 60.0) * 60.0;
      if (v12 <= v11)
      {
        v12 = v12 + 60.0;
      }

      *(result + 8) = 0u;
      *(result + 9) = 0u;
      v13 = v12 + 60.0;
      *(result + 14) = v12;
      *(result + 15) = v12 + 60.0;
    }

    else
    {
      v13 = *(result + 15);
    }

    if (v6 >= v13)
    {
      v17 = *(result + 8);
      v18 = *(result + 144);
      v19 = *(result + 38);
      *v9.i32 = (((((COERCE_FLOAT(*(result + 17)) + v17.f32[3]) + v18.f32[0]) + v18.f32[1]) + v19) + COERCE_FLOAT(HIDWORD(*(result + 16)))) + v17.f32[0];
      if (*v9.i32 >= 18.75)
      {
        v29 = vdupq_lane_s32(v9, 0);
        *(result + 18) = vdiv_f32(v18, *v29.f32);
        *(result + 38) = v19 / *v9.i32;
        *(result + 8) = vdivq_f32(v17, v29);
        if (sub_100099160(*(result + 20) + 72))
        {
          if (qword_1025D4590 != -1)
          {
            sub_10188BE6C();
          }

          v30 = qword_1025D4598;
          if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *(result + 15);
            *buf = 134349056;
            v41 = v31;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "Persisting result for period ending %{public}f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10188D918();
          }

          v32 = 0;
        }

        else
        {
          if (qword_1025D4590 != -1)
          {
            sub_10188BE6C();
          }

          v33 = qword_1025D4598;
          if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_ERROR))
          {
            v34 = *v10;
            v35 = *(result + 15);
            *buf = 134349312;
            v41 = v34;
            v42 = 2050;
            v43 = v35;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_ERROR, "WARNING: DB not accessible, results for period from %{public}f to %{public}f may be lost.", buf, 0x16u);
          }

          v36 = sub_10000A100(121, 0);
          if (v36)
          {
            sub_10188D824();
          }

          sub_100477F10(v36, v37);
          v32 = 5;
        }

        sub_100479CE0(*(result + 22), result + 14);
        [*(result + 4) setLastProcessedTime:*(result + 15)];
        sub_1004799B8(result, 2, v32, 1, *(result + 14), *(result + 15));
      }

      else
      {
        v39 = (((((COERCE_FLOAT(*(result + 17)) + COERCE_FLOAT(HIDWORD(*(result + 8)))) + v18.f32[0]) + COERCE_FLOAT(HIDWORD(*(result + 18)))) + v19) + COERCE_FLOAT(HIDWORD(*(result + 16)))) + v17.f32[0];
        if (qword_1025D4590 != -1)
        {
          sub_10188BE6C();
        }

        v20 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          v41 = v39;
          v42 = 2050;
          v43 = 0x4032C00000000000;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "Skipping partially empty period, saw %{public}.1f of %{public}.1f epochs in period", buf, 0x16u);
        }

        v21 = sub_10000A100(121, 2);
        if (v21)
        {
          sub_10188DA0C(v21, v22, v23, v24, v25, v26, v27, v28, v39);
        }
      }

      v38 = (v6 / 60.0) * 60.0;
      if (v38 <= *v10)
      {
        v38 = v38 + 60.0;
      }

      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *v10 = v38;
      *(result + 15) = v38 + 60.0;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        *(result + 37) = *(result + 37) + 1.0;
        return;
      }

      if (v8 == 4)
      {
        *(result + 38) = *(result + 38) + 1.0;
        return;
      }
    }

    else
    {
      if (v8 == 1)
      {
        *(result + 35) = *(result + 35) + 1.0;
        return;
      }

      if (v8 == 2)
      {
        *(result + 36) = *(result + 36) + 1.0;
        return;
      }
    }

    if (v7 == 1)
    {
      *(result + 33) = *(result + 33) + 1.0;
    }

    else if (v8)
    {
      *(result + 32) = *(result + 32) + 1.0;
    }

    else
    {
      *(result + 34) = *(result + 34) + 1.0;
    }
  }

  else
  {
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = off_102630F40;
    v16 = *(result + 4);

    [(NSNotificationCenter *)v14 postNotificationName:v15 object:v16 userInfo:a2];
  }
}

BOOL sub_1004790B0(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v3 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Aggregating records for fParkinsonsResultPersistence", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188DCFC();
  }

  sub_10047A16C(*(a1 + 176));
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) monitorKinesiasExpiration];
  return Current < v5 + 604800.0;
}

void sub_100479384(id a1)
{
  sub_10001A3E8(a1, v1);
  v2 = sub_10001CF3C();
  if (v2)
  {
    if ((sub_100023B30(v2, v3) & 0x400000000000) != 0)
    {
      byte_102656340 = 1;
    }
  }
}

uint64_t sub_10047946C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004794FC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656360 != -1)
  {
    dispatch_once(&qword_102656360, block);
  }

  return byte_102656358;
}

id sub_1004794FC(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "vendor")];
  byte_102656358 = result;
  return result;
}

uint64_t sub_100479544(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102455F50;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1004795D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004795F0(uint64_t a1)
{
  *a1 = off_102455DF0;
  *(a1 + 108) = 1;
  v2 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100102BC8((a1 + 232));
  sub_100102BC8((a1 + 184));
  sub_1003F7600((a1 + 176), 0);
  v3 = *(a1 + 168);
  if (v3)
  {
    sub_100008080(v3);
  }

  return sub_1004796A0(a1);
}

uint64_t sub_1004796A0(uint64_t a1)
{
  *a1 = off_102455F50;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100479728(uint64_t a1)
{
  sub_1004795F0(a1);

  operator delete();
}

void sub_100479760(uint64_t a1, _DWORD *a2, unsigned __int32 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10188DDEC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLHealthAssessmentNotifier::onWatchOrientationSettingsNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10188DE00();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHealthAssessmentNotifier::onWatchOrientationSettingsNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10047A478(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

__n128 sub_10047992C(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10047BF38(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_1004799B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", a2), @"dataBaseAccessType"}];
    [v12 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", a3), @"errorType"}];
    [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", a4), @"recordsCount"}];
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) lastProcessedTime];
    v15 = fmax(Current - v14, 0.0);
    [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", fmax(Current - a5, 0.0)), @"relativeQueryStartTime"}];
    [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", fmax(Current - a6, 0.0)), @"relativeQueryEndTime"}];
    [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v15), @"timeSinceLastProcessed"}];
    [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", (a6 - a5)), @"queryDuration"}];
    [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(*(a1 + 160) + 132)), @"databaseSize"}];
    [v12 setObject:-[NSUUID UUIDString](+[NSUUID UUID](NSUUID forKeyedSubscript:{"UUID"), "UUIDString"), @"uuid"}];
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v16 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Sending metrics to CoreAnalytics:%{public}@", &v18, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188DE28();
    }

    AnalyticsSendEvent();
  }

  else
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v17 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Not sending analytics, no IHA permission", &v18, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188DF18();
    }
  }
}

uint64_t sub_100479CE0(uint64_t a1, double *a2)
{
  result = sub_10047C10C(*(a1 + 24), a2);
  if ((*(a1 + 41) & 1) == 0)
  {
    result = sub_100099160(*(a1 + 24) + 72);
    if (result)
    {
      *(a1 + 41) = 1;

      return sub_10047A16C(a1);
    }
  }

  return result;
}

unint64_t sub_100479DC4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a2;
  v6 = sub_100023B30(a1, a2);
  if ((v6 & 0x20000000) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = Current;
    if (a3 <= 0.0)
    {
      v19 = *(a1 + 224);
      if (v19)
      {
        v20 = *(*(a1 + 192) + (((v19 + *(a1 + 216) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v19 + *(a1 + 216) - 1);
        v22 = *(v20 + 8);
        v21 = (v20 + 8);
        if (v22 > Current)
        {
          *v21 = Current;
        }
      }

      [*(a1 + 32) stopMonitoring];
    }

    else
    {
      v9 = Current + a3;
      [*(a1 + 32) addMonitoringPeriodFrom:Current until:v9];
      v10 = *(a1 + 224);
      if (v10 && (v11 = *(*(a1 + 192) + (((v10 + *(a1 + 216) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v10 + *(a1 + 216) - 1), v13 = *(v11 + 8), v12 = (v11 + 8), v13 >= v8))
      {
        *v12 = v9;
        if (qword_1025D4590 != -1)
        {
          sub_10188BE6C();
        }

        v23 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 224) + *(a1 + 216) - 1;
          v25 = (*(*(a1 + 192) + ((v24 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v24);
          v27 = *v25;
          v26 = v25[1];
          *buf = 134349312;
          *&buf[4] = v27;
          *&buf[12] = 2050;
          *&buf[14] = v26;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Extend existing monitoring period %{public}f - %{public}f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4590 != -1)
          {
            sub_10188BF5C();
          }

          v29 = *(a1 + 224) + *(a1 + 216) - 1;
          v30 = (*(*(a1 + 192) + ((v29 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v29);
          v32 = *v30;
          v31 = v30[1];
          v35 = 134349312;
          v36 = v32;
          v37 = 2050;
          v38 = v31;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4598, 0, "Extend existing monitoring period %{public}f - %{public}f", &v35, 22);
          v34 = v33;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHealthAssessmentNotifier::recordHealthAssessmentData(CLHealthAssessment_Types::DataType, CFTimeInterval)", "%s\n", v33);
          if (v34 != buf)
          {
            free(v34);
          }
        }
      }

      else
      {
        *buf = v8;
        *&buf[8] = v9;
        sub_10047992C((a1 + 184), buf);
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v14 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 224) + *(a1 + 216) - 1;
          v16 = (*(*(a1 + 192) + ((v15 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v15);
          v18 = *v16;
          v17 = v16[1];
          *buf = 134349312;
          *&buf[4] = v18;
          *&buf[12] = 2050;
          *&buf[14] = v17;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Add new monitoring period %{public}f - %{public}f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188DFF4();
        }
      }

      [*(a1 + 32) setupService];
      if (!v4)
      {
        goto LABEL_23;
      }

      if (v4 == 1)
      {
        [*(a1 + 32) startUpdatesforAnalyzer:1];
LABEL_23:
        [*(a1 + 32) startUpdatesforAnalyzer:0];
      }
    }
  }

  return (v6 >> 29) & 1;
}

uint64_t sub_10047A16C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10188E118();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v23 = 134218240;
      *v24 = v3;
      *&v24[8] = 1024;
      v25 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v23, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E12C();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_10188E228();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v23 = 134218240;
      *v24 = v7;
      *&v24[8] = 1024;
      v25 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v23, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E250();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_10047C8FC(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10188E228();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_10047C8FC(v12, a1);
        v23 = 67109376;
        *v24 = v13;
        *&v24[4] = 1024;
        *&v24[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v23, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188E34C((a1 + 24), a1, v15, v16, v17, v18, v19, v20);
      }
    }

    return v5;
  }

  else
  {
    v22 = *(**(a1 + 24) + 32);

    return v22();
  }
}

void sub_10047A478(void *a1, uint64_t a2, _DWORD *a3, unsigned __int32 *a4)
{
  if (*a3 == 1)
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v6 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a4;
      v14.n128_u32[0] = 67240192;
      v14.n128_u32[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Watch wrist state updated,onwrist,%{public}d", &v14, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E474(a4);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v9 = *a4 == 1;
    v10 = a1[34];
    if (!v10 || (v11 = v10 - 1, v12 = v11 + a1[33], v13 = *(a1[30] + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)), *(v13 + 16 * v12 + 8) != v9) && (*(v13 + 16 * (v11 + *(a1 + 264))) + 60.0 <= Current || (a1[34] = v11, sub_1001151D0(a1 + 29, 1), !a1[34])))
    {
      v14.n128_f64[0] = Current;
      v14.n128_u8[8] = v9;
      sub_10047A604(a1 + 29, &v14);
    }
  }
}

__n128 sub_10047A604(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10047CA00(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_10047A690(_BYTE *result, void *a2)
{
  v9 = a2;
  if ((result[108] & 1) == 0)
  {
    v4 = *(result + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 80);
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10188DDEC();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = result + 8;
        if (result[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188E564(result, a2);
      }
    }
  }
}

uint64_t sub_10047A834(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10047A9C0(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = objc_alloc_init(CLNotifierServiceAdapter);
    *(a1 + 48) = v3;
    [(CLNotifierServiceAdapter *)v3 setValid:1];
    [*(a1 + 48) setAdaptedNotifier:a1];
    return *(a1 + 48);
  }

  return result;
}

uint64_t sub_10047AA3C(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10047CD20(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D5B89;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10188DDEC();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10188E66C(a1, a2);
    return 0;
  }

  return result;
}

BOOL sub_10047ADF4(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10188DDEC();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10188E774(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10047AF88(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10188DE00();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10188DE00();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLHealthAssessmentNotifier_Type::Notification, CLHealthAssessmentNotifier_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLHealthAssessmentNotifier_Type::Notification, NotificationData_T = CLHealthAssessmentNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_10047B458(uint64_t a1, int *a2, void *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_10047D460(a3);
    }
  }
}

void sub_10047B928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_10047B954(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10188DDEC();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E990(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10188DDEC();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E87C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10188DE00();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10188DE00();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLHealthAssessmentNotifier_Type::Notification, CLHealthAssessmentNotifier_Type::NotificationData, char, char>::listClients() [Notification_T = CLHealthAssessmentNotifier_Type::Notification, NotificationData_T = CLHealthAssessmentNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_10047BD74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10047BD74(a1, *a2);
    sub_10047BD74(a1, a2[1]);
    sub_1018646D4((a2 + 4));

    operator delete(a2);
  }
}

void *sub_10047BE3C(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102456030;
  sub_1011B01B8(a1 + 3, *a2);
  return a1;
}

void sub_10047BEBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102456030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10047BF38(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10047C0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10047C10C(uint64_t a1, double *a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v22[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v23 = 256;
  v22[0] = *a2;
  if (sub_10009CB48(v6, v22))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 272))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_10047C698(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_10188EA94();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188EABC(buf);
          v21[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "Maximum number of entries exceeded, throwing out oldest entry.", v21, 2);
          v19 = v18;
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<ParkinsonsResult, CLActivityDB::ClassBDataProtectionPolicy>::addSuspectRecord(const T &) [T = ParkinsonsResult, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_10188EB00();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188EB28(buf);
        v21[0] = 0;
        LODWORD(v20) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "Buffer was added to since db was inaccesible.", v21, v20);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<ParkinsonsResult, CLActivityDB::ClassBDataProtectionPolicy>::addSuspectRecord(const T &) [T = ParkinsonsResult, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v7 = sub_10047C5E8((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188EA94();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v9 = *v9;
      }

      *buf = 68289538;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1026;
      v29 = v22[0];
      v30 = 2082;
      v31 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
      if (qword_1025D4200 != -1)
      {
        sub_10188EA94();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      v11 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v11 = *v11;
      }

      *buf = 68289538;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1026;
      v29 = v22[0];
      v30 = 2082;
      v31 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CL database error, record contains invalid time", "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
    }
  }

  return (*(*v5 + 24))(v5, v7);
}

void sub_10047C5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_10047C5E8(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 85 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10047C728(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x55)) + 48 * (v7 % 0x55);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_10047C698(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x55)
  {
    a2 = 1;
  }

  if (v2 < 0xAA)
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
    *(a1 + 32) -= 85;
  }

  return v4 ^ 1u;
}

void sub_10047C728(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
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
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10047C8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10047C8FC(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188EB6C();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188EB80();
    }
  }

  return v7;
}

void sub_10047CA00(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10047CB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10047CBD4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_10002393C(a1, v3, v5, a2);
  return a2;
}

void *sub_10047CC44(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_10047CC98(uint64_t a1)
{
  sub_1003C93BC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1003C93BC(*a1, v2);
  }

  return a1;
}

_BYTE *sub_10047CDCC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10047CEE4(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_10047CEC4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10047CEE4(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10047CF80(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10047D158(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10047CF80(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10047D35C(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10188EC5C();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188EC70();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10188EC5C();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188ED78();
    }
  }

  return 0;
}

id sub_10047D158(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10188EC5C();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188EE80();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10188EC5C();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188EF88();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_10047D35C(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254E948))
  {
    if ([objc_msgSend(a2 "serialized")] != 8)
    {
      sub_10188F090();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

void sub_10047D404(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102456100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10047D50C(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = a1 + 8;
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 8))
      {
        v39 = v9;
        v10 = sub_10047CEE4(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 10);
        v11 = v9[5];
        if (v11 != v9 + 6)
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_10047CDCC(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_10188DE00();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10188DE00();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLHealthAssessmentNotifier_Type::Notification, CLHealthAssessmentNotifier_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLHealthAssessmentNotifier_Type::Notification, NotificationData_T = CLHealthAssessmentNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != v39 + 6);
        }
      }
    }
  }
}

__n128 sub_10047D9B0(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  v3 = a2 + 1;
  v4 = a2[1].n128_u64[0];
  a1->n128_u32[0] = v2;
  a1[1].n128_u64[0] = v4;
  v5 = a1 + 1;
  v6 = a2[1].n128_u64[1];
  a1[1].n128_u64[1] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    a2->n128_u64[1] = v3;
    v3->n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
  }

  else
  {
    a1->n128_u64[1] = v5;
  }

  result = a2[2];
  a1[2] = result;
  a2[2] = 0uLL;
  a1[3].n128_u8[0] = a2[3].n128_u8[0];
  return result;
}

void *sub_10047DA08(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100D9A240(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10047DA60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10047DA9C(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, float a9, __int128 *a10)
{
  v12 = a5;
  *(a1 + 8) = 0u;
  v18 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102450C98;
  sub_1003FFA38((a1 + 8));
  *v18 = off_102450CC8;
  *a1 = off_102456150;
  *(a1 + 72) = off_102456188;
  sub_101052EEC(a1 + 72, a2, v12, a1, a9, a6, 7, 12000);
  *a1 = off_102456150;
  *(a1 + 72) = off_102456188;
  *(a1 + 176) = a4;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  sub_10000EC00((a1 + 224), a2);
  if (*(a8 + 23) < 0)
  {
    sub_100007244((a1 + 248), *a8, *(a8 + 1));
  }

  else
  {
    v19 = *a8;
    *(a1 + 264) = *(a8 + 2);
    *(a1 + 248) = v19;
  }

  if (*(a10 + 23) < 0)
  {
    sub_100007244((a1 + 272), *a10, *(a10 + 1));
  }

  else
  {
    v20 = *a10;
    *(a1 + 288) = *(a10 + 2);
    *(a1 + 272) = v20;
  }

  *(a1 + 296) = -1;
  *(a1 + 304) = -1;
  *(a1 + 308) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  sub_100DD42E4((a1 + 344), 0, 0);
  if (a3)
  {
    operator new();
  }

  operator new();
}

void sub_10047DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v19 + 271) < 0)
  {
    operator delete(*(v19 + 248));
  }

  if (*(v19 + 247) < 0)
  {
    operator delete(*(v19 + 224));
  }

  sub_1001E56E8(&__p);
  v23 = *(v19 + 192);
  *(v19 + 192) = 0;
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  v24 = *v21;
  *v21 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_1010532A4(a9);
  *v19 = a10;
  sub_1003FFCFC(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_10047E054(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 176) && !sub_100099160(a1 + 72))
  {
    sub_100EA58B0(*(a1 + 176));
  }

  if (!(*(*(a1 + 72) + 24))())
  {
    return 0;
  }

  v3 = *(**(a1 + 184) + 24);

  return v3();
}

uint64_t sub_10047E110(uint64_t a1, uint64_t *a2, double *a3, int *a4)
{
  v8 = sub_100008880(*a2);
  v9 = sqlite3_step(v8);
  if (v9 == 101)
  {
    return 1;
  }

  v10 = v9;
  if (v9 == 100)
  {
    sub_10047E248(a1, a2, a3, a4);
    return 0;
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v12 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
    {
      v13[0] = 67109120;
      v13[1] = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "[DB] getMostRecentTimeWithCode - Result was error: %d", v13, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188F228(v10);
    }

    return 2;
  }
}

void sub_10047E248(uint64_t a1, uint64_t *a2, double *a3, int *a4)
{
  v8 = sub_100008880(*a2);
  *a4 = sqlite3_column_int(v8, *(a1 + 304));
  v9 = sub_100008880(*a2);
  *a3 = sqlite3_column_double(v9, *(a1 + 296));
}

BOOL sub_10047E2A4(void *a1, uint64_t a2, uint64_t **a3)
{
  result = sub_100099160((a1 + 9));
  if (result)
  {
    sub_10003848C(&v28);
    v6 = sub_100038730(v29, "SELECT * FROM ", 14);
    (*(*a1 + 32))(__p, a1);
    if ((v27 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = sub_100038730(v6, v7, v8);
    v10 = sub_100038730(v9, " WHERE ", 7);
    v11 = sub_100038730(v10, "recordID", 8);
    v12 = sub_100038730(v11, " LIKE '%", 8);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 23);
    }

    else
    {
      v15 = a3[1];
    }

    v16 = sub_100038730(v12, v14, v15);
    v17 = sub_100038730(v16, "%' OR ", 6);
    v18 = sub_100038730(v17, "recordID", 8);
    v19 = sub_100038730(v18, " IS NULL OR ", 12);
    v20 = sub_100038730(v19, "recordID", 8);
    sub_100038730(v20, " = '' ORDER BY ROWID DESC LIMIT 1", 33);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = a1[10];
    if ((v32 & 0x10) != 0)
    {
      v23 = v31;
      if (v31 < v30)
      {
        v31 = v30;
        v23 = v30;
      }

      v24 = v29[6];
    }

    else
    {
      if ((v32 & 8) == 0)
      {
        v22 = 0;
        v27 = 0;
        goto LABEL_29;
      }

      v24 = v29[3];
      v23 = v29[5];
    }

    v22 = v23 - v24;
    if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v27 = v23 - v24;
    if (v22)
    {
      memmove(__p, v24, v22);
    }

LABEL_29:
    *(__p + v22) = 0;
    if ((v27 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    sub_1000388D8(v21, v25);
  }

  return result;
}

void sub_10047E698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a17);
  _Unwind_Resume(a1);
}

BOOL sub_10047E6E4(void *a1, uint64_t a2, uint64_t **a3)
{
  result = sub_100099160((a1 + 9));
  if (result)
  {
    sub_10003848C(&v28);
    v6 = sub_100038730(v29, "SELECT * FROM ", 14);
    (*(*a1 + 32))(__p, a1);
    if ((v27 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = sub_100038730(v6, v7, v8);
    v10 = sub_100038730(v9, " WHERE ", 7);
    v11 = sub_100038730(v10, "recordID", 8);
    v12 = sub_100038730(v11, " LIKE '%", 8);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 23);
    }

    else
    {
      v15 = a3[1];
    }

    v16 = sub_100038730(v12, v14, v15);
    v17 = sub_100038730(v16, "%' OR ", 6);
    v18 = sub_100038730(v17, "recordID", 8);
    v19 = sub_100038730(v18, " IS NULL OR ", 12);
    v20 = sub_100038730(v19, "recordID", 8);
    sub_100038730(v20, " = '' ORDER BY ROWID ASC LIMIT 1", 32);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = a1[10];
    if ((v32 & 0x10) != 0)
    {
      v23 = v31;
      if (v31 < v30)
      {
        v31 = v30;
        v23 = v30;
      }

      v24 = v29[6];
    }

    else
    {
      if ((v32 & 8) == 0)
      {
        v22 = 0;
        v27 = 0;
        goto LABEL_29;
      }

      v24 = v29[3];
      v23 = v29[5];
    }

    v22 = v23 - v24;
    if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v27 = v23 - v24;
    if (v22)
    {
      memmove(__p, v24, v22);
    }

LABEL_29:
    *(__p + v22) = 0;
    if ((v27 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    sub_1000388D8(v21, v25);
  }

  return result;
}

void sub_10047EAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10047EB24(uint64_t a1, const void **a2, uint64_t **a3, void **a4, double a5)
{
  if (sub_100099160(a1 + 72))
  {
    sub_10003848C(&v35);
    v7 = sub_100038730(v36, "SELECT * FROM ", 14);
    (*(*a1 + 32))(__p, a1);
    if ((v34 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v34 & 0x80u) == 0)
    {
      v9 = v34;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = sub_100038730(v7, v8, v9);
    v11 = sub_100038730(v10, " WHERE ", 7);
    v12 = *(a1 + 271);
    if (v12 >= 0)
    {
      v13 = a1 + 248;
    }

    else
    {
      v13 = *(a1 + 248);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 271);
    }

    else
    {
      v14 = *(a1 + 256);
    }

    v15 = sub_100038730(v11, v13, v14);
    v16 = sub_100038730(v15, " > ? AND (", 10);
    v17 = sub_100038730(v16, "recordID", 8);
    v18 = sub_100038730(v17, " LIKE '%", 8);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = a3[1];
    }

    v22 = sub_100038730(v18, v20, v21);
    v23 = sub_100038730(v22, "%' OR ", 6);
    v24 = sub_100038730(v23, "recordID", 8);
    v25 = sub_100038730(v24, " IS NULL OR ", 12);
    v26 = sub_100038730(v25, "recordID", 8);
    sub_100038730(v26, " = '') ORDER BY ROWID ASC LIMIT ", 32);
    std::ostream::operator<<();
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v27 = *(a1 + 80);
    if ((v39 & 0x10) != 0)
    {
      v29 = v38;
      if (v38 < v37)
      {
        v38 = v37;
        v29 = v37;
      }

      v30 = v36[6];
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v28 = 0;
        v34 = 0;
        goto LABEL_36;
      }

      v30 = v36[3];
      v29 = v36[5];
    }

    v28 = v29 - v30;
    if ((v29 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v28 >= 0x17)
    {
      operator new();
    }

    v34 = v29 - v30;
    if (v28)
    {
      memmove(__p, v30, v28);
    }

LABEL_36:
    *(__p + v28) = 0;
    if ((v34 & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    sub_1000388D8(v27, v31);
  }

  return 0;
}

void sub_10047F05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a18);
  _Unwind_Resume(a1);
}

id sub_10047F0D0(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*(a1 + 300) == -1)
  {
    return 0;
  }

  v4 = sub_100008880(*a2);
  if (sqlite3_step(v4) != 100)
  {
    return 0;
  }

  v5 = sub_100008880(*a2);
  v6 = sqlite3_column_blob(v5, *(a1 + 300));
  v7 = sub_100008880(*a2);
  v8 = sqlite3_column_bytes(v7, *(a1 + 300));
  if (!v6 || !v8)
  {
    return 0;
  }

  v9 = [[NSData alloc] initWithBytes:v6 length:v8];

  return v9;
}

BOOL sub_10047F18C(uint64_t a1, double a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_10003848C(&v20);
    v4 = sub_100038730(v21, "DELETE FROM ", 12);
    (*(*a1 + 32))(__p, a1);
    if ((v19 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v6 = v19;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = sub_100038730(v4, v5, v6);
    v8 = sub_100038730(v7, " WHERE ", 7);
    v9 = *(a1 + 271);
    if (v9 >= 0)
    {
      v10 = a1 + 248;
    }

    else
    {
      v10 = *(a1 + 248);
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 271);
    }

    else
    {
      v11 = *(a1 + 256);
    }

    v12 = sub_100038730(v8, v10, v11);
    sub_100038730(v12, " < ?", 4);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = *(a1 + 80);
    if ((v24 & 0x10) != 0)
    {
      v15 = v23;
      if (v23 < v22)
      {
        v23 = v22;
        v15 = v22;
      }

      v16 = v21[6];
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v14 = 0;
        v19 = 0;
        goto LABEL_29;
      }

      v16 = v21[3];
      v15 = v21[5];
    }

    v14 = v15 - v16;
    if ((v15 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v19 = v15 - v16;
    if (v14)
    {
      memmove(__p, v16, v14);
    }

LABEL_29:
    *(__p + v14) = 0;
    if ((v19 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    sub_1000388D8(v13, v17);
  }

  return result;
}

void sub_10047F534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10047F580(uint64_t a1)
{
  v2 = v15;
  (*(*a1 + 32))(v15);
  if (v16 < 0)
  {
    v2 = v15[0];
  }

  if (strcmp(v2, "VO2MaxInputHistory") || (*(*(a1 + 176) + 148) & 1) != 0)
  {
    if (sub_100099160(*(a1 + 184)) && sub_100099160(a1 + 72))
    {
      sub_1001E573C((a1 + 200));
      memset(v14, 0, sizeof(v14));
      sub_101053C60(*(a1 + 184), v2, (a1 + 200), v14);
    }

    if (qword_1025D4530 != -1)
    {
      sub_10188F338();
    }

    v3 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_100099160(*(a1 + 184));
      v5 = sub_100099160(a1 + 72);
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[DB] One of the DBs is not accessible. Hot: %d, Cold %d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_22;
    }

    sub_10188F360(buf);
    v6 = qword_1025D4538;
    v7 = sub_100099160(*(a1 + 184));
    v8 = sub_100099160(a1 + 72);
    LODWORD(__p) = 67109376;
    HIDWORD(__p) = v7;
    v18 = 1024;
    v19 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v6, 0, "[DB] One of the DBs is not accessible. Hot: %d, Cold %d", &__p, 14);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CMHealthColdStorageDb::validateTableFormat()", "%s\n", v9);
    if (v10 == buf)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v10);
    goto LABEL_22;
  }

  if (qword_1025D4530 != -1)
  {
    sub_10188F338();
  }

  v11 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "[DB] VO2MaxInputHistory table not yet ready for sync since deduplication is not complete", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188F360(buf);
    LOWORD(__p) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4538, 1, "[DB] VO2MaxInputHistory table not yet ready for sync since deduplication is not complete", &__p, 2);
    v10 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CMHealthColdStorageDb::validateTableFormat()", "%s\n", v12);
    if (v10 != buf)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return 0;
}

void sub_100480140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004801D0(uint64_t a1, char *a2)
{
  if (!sub_10060A6D8(*(a1 + 80), a2))
  {
    return 1;
  }

  if (!strcmp(a2, "SmoothedGaitMetricsHistory"))
  {
    __p = "";
    v7 = 5;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    sub_100611268(*(a1 + 80), a2, "numGaitMetrics", &__p);
  }

  if (strcmp(a2, "VO2MaxInputHistory"))
  {
    return 1;
  }

  sub_10000EC00(&__p, a2);
  v4 = sub_100480D5C(a1, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return v4;
}

void sub_100480344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100480360(uint64_t a1, const char *a2, uint64_t *a3)
{
  if (sub_10060A6D8(*(a1 + 80), a2))
  {
    v6 = *a3;
    v5 = a3[1];
    v7 = v5 - *a3;
    if (v7 != 48)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      do
      {
        if (v10 <= v9)
        {
          sub_10046F324();
        }

        if (*(v6 + v8 + 8) != 5)
        {
          v13 = 0;
          v14 = 5;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          sub_100611268(*(a1 + 80), a2, *(v6 + v8), &v13);
        }

        ++v9;
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
        v8 += 48;
      }

      while (v10 - 1 > v9);
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v11 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136446210;
      *&buf[1] = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%{public}s table doesn't even exist", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F488(a2);
    }
  }
}

uint64_t sub_100480D5C(uint64_t a1, uint64_t **a2)
{
  v5 = *(a1 + 112);
  v4 = a1 + 112;
  v6 = v4 - 40;
  v23 = v4;
  (*(v5 + 16))();
  v24 = 256;
  if (sub_100099160(v6))
  {
    v7 = *(a2 + 23) >= 0 ? a2 : *a2;
    if (sub_10060A6D8(*(a1 + 80), v7))
    {
      CFAbsoluteTimeGetCurrent();
      sub_10003848C(&v18);
      v8 = sub_100038730(v19, "DELETE FROM ", 12);
      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = a2[1];
      }

      sub_100038730(v8, v10, v11);
      v12 = *(a1 + 80);
      if ((v22 & 0x10) != 0)
      {
        v14 = v21;
        if (v21 < v20)
        {
          v21 = v20;
          v14 = v20;
        }

        v15 = v19[6];
      }

      else
      {
        if ((v22 & 8) == 0)
        {
          v13 = 0;
          v26 = 0;
          goto LABEL_26;
        }

        v15 = v19[3];
        v14 = v19[5];
      }

      v13 = v14 - v15;
      if ((v14 - v15) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      v26 = v14 - v15;
      if (v13)
      {
        memmove(&__dst, v15, v13);
      }

LABEL_26:
      *(&__dst + v13) = 0;
      if (v26 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      sub_1000388D8(v12, p_dst);
    }
  }

  (*(*v23 + 24))(v23);
  return 0;
}

void sub_100481274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (v58)
  {
    (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a11);
  sub_1017EC98C(&a46);
  _Unwind_Resume(a1);
}

uint64_t sub_100481310(uint64_t *a1, uint64_t **a2, uint64_t *a3, double a4)
{
  v8 = a1 + 23;
  if (!sub_100099160(a1[23]) && !sub_100099160((a1 + 9)) && MKBGetDeviceLockState() == 3)
  {
    sub_100EA58B0(a1[22]);
    (*(*a1[23] + 24))(a1[23]);
    (*(a1[9] + 24))(a1 + 9);
  }

  if (sub_100099160(*v8) && (v9 = a1 + 9, sub_100099160((a1 + 9))))
  {
    if (sub_10047F580(a1))
    {
      *&v90 = -1.0;
      if (sub_10047E2A4(a1, &v90, a2))
      {
        if (qword_1025D4530 != -1)
        {
          sub_10188F214();
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v11 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
        {
          v12 = v90;
          (*(*a1 + 32))(__p, a1);
          v13 = __p[23] >= 0 ? __p : *__p;
          *buf = 134218242;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "[DB] Found most recent time %f for %s", buf, 0x16u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v62 = qword_1025D4538;
          v63 = *&v90;
          (*(*a1 + 32))(buf, a1);
          if ((buf[23] & 0x80u) == 0)
          {
            v64 = buf;
          }

          else
          {
            v64 = *buf;
          }

          *v98 = 134218242;
          *&v98[4] = v63;
          *&v98[12] = 2080;
          *&v98[14] = v64;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v62, 1, "[DB] Found most recent time %f for %s", COERCE_DOUBLE(v98), 22);
          v66 = v65;
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v66);
          v14 = v63;
          if (v66 != __p)
          {
            free(v66);
          }
        }

        else
        {
          v14 = *&v90;
        }

        v89 = -1.0;
        sub_10047E6E4(a1, &v89, a2);
        v15 = a4 > 0.0;
        if (v14 <= 0.0)
        {
          v15 = 0;
        }

        if (v15 && v14 < a4)
        {
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v16 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
          {
            *__p = 0;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "[DB] Deleting all old records.", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10188F7AC();
          }

          sub_10105499C(a1 + 9);
        }

        else
        {
          if (v89 >= a4)
          {
            v15 = 0;
          }

          if (v15)
          {
            if (qword_1025D4530 != -1)
            {
              sub_10188F338();
            }

            v21 = qword_1025D4538;
            if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
            {
              *__p = 0;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "[DB] Deleting all old records preceding delete request.", __p, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10188F6C8();
            }

            sub_10047F18C(a1, a4);
          }
        }

        if (!*(a1 + 33))
        {
          *(a1 + 33) = (*(a1[9] + 48))(a1 + 9);
        }

        if (v14 >= a4)
        {
          v22 = v14;
        }

        else
        {
          v22 = a4;
        }

        memset(buf, 0, 24);
        sub_1004826B0(a1, buf);
        Current = CFAbsoluteTimeGetCurrent();
        v24 = a1[23];
        (*(*a1 + 32))(v98, a1);
        memset(__p, 0, 24);
        sub_100390144(__p, v98, &v99, 1uLL);
        HIDWORD(v85) = buf[23];
        if (buf[23] < 0)
        {
          sub_100007244(__dst, *buf, *&buf[8]);
        }

        else
        {
          *__dst = *buf;
          *&__dst[16] = *&buf[16];
        }

        v96 = 0uLL;
        v97 = 0;
        sub_100390144(&v96, __dst, &v95, 1uLL);
        v25 = (a1 + 31);
        if (*(a1 + 271) < 0)
        {
          v25 = *v25;
        }

        sub_101053C70((a1 + 9), v24, __p, &v96, v25, v22);
        *v91 = &v96;
        sub_1001E56E8(v91);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        *&v96 = __p;
        sub_1001E56E8(&v96);
        if (v98[23] < 0)
        {
          operator delete(*v98);
        }

        v26 = (*(*v9 + 48))(a1 + 9);
        if (*(a1 + 308) == 1)
        {
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v27 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 308);
            *__p = 67109376;
            *&__p[4] = v28;
            *&__p[8] = 1024;
            *&__p[10] = 730;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "Cold Storage Max expiration enabled %d, expiration in days set to %d", __p, 0xEu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10188F360(__p);
            v72 = *(a1 + 308);
            *v98 = 67109376;
            *&v98[4] = v72;
            *&v98[8] = 1024;
            *&v98[10] = 730;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4538, 0, "Cold Storage Max expiration enabled %d, expiration in days set to %d", v98, 14);
            v74 = v73;
            sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v73);
            if (v74 != __p)
            {
              free(v74);
            }
          }

          v19 = 100;
          v29 = 730;
        }

        else
        {
          (*(*a1 + 32))(__p, a1);
          v30 = sub_10001A2EC(qword_102656368, __p);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (v30)
          {
            v29 = *(v30 + 10);
            v19 = 100;
          }

          else
          {
            if (qword_1025D4530 != -1)
            {
              sub_10188F338();
            }

            v31 = qword_1025D4538;
            if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
            {
              (*(*a1 + 32))(__p, a1);
              v32 = __p[23] >= 0 ? __p : *__p;
              *v98 = 136315138;
              *&v98[4] = v32;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "No expiration set for db, %s", v98, 0xCu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 0))
            {
              sub_10188F360(__p);
              v81 = qword_1025D4538;
              (*(*a1 + 32))(v98, a1);
              if ((v98[23] & 0x80u) == 0)
              {
                v82 = v98;
              }

              else
              {
                v82 = *v98;
              }

              LODWORD(v96) = 136315138;
              *(&v96 + 4) = v82;
              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v81, 17, "No expiration set for db, %s", &v96);
              v84 = v83;
              if (v98[23] < 0)
              {
                operator delete(*v98);
              }

              sub_100152C7C("Generic", 1, 0, 0, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v84);
              if (v84 != __p)
              {
                free(v84);
              }
            }

            v29 = 0;
            v19 = 103;
          }
        }

        if (qword_1025D4530 != -1)
        {
          sub_10188F338();
        }

        v33 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 32))(v98, a1);
          if ((v98[23] & 0x80u) == 0)
          {
            v34 = v98;
          }

          else
          {
            v34 = *v98;
          }

          v35 = *(a1 + 308);
          *__p = 136315650;
          *&__p[4] = v34;
          *&__p[12] = 1024;
          *&__p[14] = v29;
          *&__p[18] = 1024;
          *&__p[20] = v35;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Cold Storage expiration for db, %s, set to %d days, enableMaxExpiration, %d", __p, 0x18u);
          if (v98[23] < 0)
          {
            operator delete(*v98);
          }

          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188F360(__p);
          v67 = qword_1025D4538;
          (*(*a1 + 32))(&v96, a1);
          if (v97 >= 0)
          {
            v68 = &v96;
          }

          else
          {
            v68 = v96;
          }

          v69 = *(a1 + 308);
          *v98 = 136315650;
          *&v98[4] = v68;
          *&v98[12] = 1024;
          *&v98[14] = v29;
          *&v98[18] = 1024;
          *&v98[20] = v69;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v67, 2, "Cold Storage expiration for db, %s, set to %d days, enableMaxExpiration, %d", v98, 24, v86);
          v71 = v70;
          if (SHIBYTE(v97) < 0)
          {
            operator delete(v96);
          }

          sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v71);
          if (v71 != __p)
          {
            free(v71);
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        *__p = v29 * 86400.0;
        *&__p[8] = 0x7FEFFFFFFFFFFFFFLL;
        __p[16] = 1;
        memset(v98, 0, sizeof(v98));
        sub_100485D9C(v98, __p, &__p[24], 1uLL);
        v36 = (*(*v9 + 16))(a1 + 9, v98);
        if (qword_1025D4530 != -1)
        {
          sub_10188F338();
        }

        v37 = p_info[167];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 32))(&v96, a1);
          v38 = SHIBYTE(v97);
          v39 = v96;
          v40 = CFAbsoluteTimeGetCurrent();
          v41 = *(a1 + 33);
          v42 = v40 - Current;
          v43 = &v96;
          if (v38 < 0)
          {
            v43 = v39;
          }

          *__p = 68290306;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 2082;
          *&__p[20] = v43;
          v102 = 2050;
          v103 = v42;
          v104 = 1026;
          v105 = v41;
          v106 = 1026;
          v107 = v26;
          v108 = 1026;
          v109 = v36;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "{msg%{public}.0s:copyTablesFromOtherDatabase, tableName:%{public, location:escape_only}s, duration:%{public}.5f, recordCountInitial:%{public}d, recordCountAfterSync:%{public}d, recordCountAfterPurge:%{public}d}", __p, 0x38u);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(v96);
          }
        }

        if (v36 >= 0)
        {
          v44 = v26 - v36;
        }

        else
        {
          v44 = 0;
        }

        (*(*a1 + 32))(__p, a1);
        if (__p[23] >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = *__p;
        }

        v46 = [NSString stringWithUTF8String:v45];
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v47 = *a3;
        v48 = a3[1];
        v88[0] = v47;
        v88[1] = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100482A64(a1, v88, v26 - *(a1 + 33), v44);
        if (v48)
        {
          sub_100008080(v48);
        }

        *(a1 + 33) = v36;
        v49 = [(NSString *)v46 stringByAppendingString:@"CKSyncStartTime"];
        v87 = 0.0;
        v51 = sub_1000206B4(v49, v50);
        sub_100023B78(v51, v49, &v87);
        if (a1[42])
        {
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v52 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 134217984;
            *&__p[4] = a4;
            _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "[CloudKit] marked as dirty, start Time for cloud sync : %f", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10188F360(__p);
            LODWORD(v96) = 134217984;
            *(&v96 + 4) = a4;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4538, 0, "[CloudKit] marked as dirty, start Time for cloud sync : %f", COERCE_DOUBLE(&v96));
            v76 = v75;
            sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v75);
            if (v76 != __p)
            {
              free(v76);
            }
          }

          v87 = a4;
        }

        else
        {
          a4 = v87;
        }

        v96 = 0uLL;
        v97 = 0;
        v86 = 0;
        sub_10047EB24(a1, &v96, a2, &v86, a4);
        v53 = v96;
        if (v96 != *(&v96 + 1))
        {
          if (*(&v96 + 1) - v96 == 2000)
          {
            if (qword_1025D4530 != -1)
            {
              sub_10188F338();
            }

            v54 = qword_1025D4538;
            if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 32))(__p, a1);
              v55 = __p[23] >= 0 ? __p : *__p;
              *__dst = 136315394;
              *&__dst[4] = v55;
              *&__dst[12] = 2048;
              *&__dst[14] = v86;
              _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEFAULT, "[DB] Max records fetch limit reached for %s, latest record time %f", __dst, 0x16u);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_10188F360(__p);
              v77 = qword_1025D4538;
              (*(*a1 + 32))(__dst, a1);
              if (__dst[23] >= 0)
              {
                v78 = __dst;
              }

              else
              {
                v78 = *__dst;
              }

              *v91 = 136315394;
              *&v91[4] = v78;
              v92 = 2048;
              v93 = v86;
              LODWORD(v85) = 22;
              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v77, 0, "[DB] Max records fetch limit reached for %s, latest record time %f", v91, v85);
              v80 = v79;
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }

              sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v80);
              if (v80 != __p)
              {
                free(v80);
              }
            }
          }

          sub_100482B3C(a1, &v96, a2);
          v56 = sub_100485E68(a1 + 39, a1[40], v96, *(&v96 + 1), (*(&v96 + 1) - v96) >> 2);
          v58 = sub_1000206B4(v56, v57);
          v59 = sub_100116DD4(v58, v49, &v86);
          v61 = sub_1000206B4(v59, v60);
          (*(*v61 + 944))(v61);
          v53 = v96;
        }

        *(a1 + 336) = 0;
        if (v53)
        {
          *(&v96 + 1) = v53;
          operator delete(v53);
        }

        if (*v98)
        {
          *&v98[8] = *v98;
          operator delete(*v98);
        }

        if ((HIDWORD(v85) & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        return 112;
      }
    }

    else
    {
      return 103;
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v17 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_100099160(a1[23]);
      *__p = 67109376;
      *&__p[4] = v18;
      *&__p[8] = 1024;
      *&__p[10] = sub_100099160((a1 + 9));
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "[DB] One of the DBs is not accessible. Hot: %d, Cold %d", __p, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F594(v8, a1);
    }

    return 109;
  }

  return v19;
}

void sub_100482558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004826B0(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (*(result + 200) == *(result + 208))
  {
    return result;
  }

  sub_10003848C(v26);
  v3 = *(v2 + 200);
  v4 = *(v2 + 208) - v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    do
    {
      v8 = (v3 + v5);
      v9 = *(v3 + v5 + 23);
      v10 = v9;
      if ((v9 & 0x80u) == 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8[1];
      }

      v12 = *(v2 + 295);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v2 + 280);
      }

      if (v11 != v12 || (v10 >= 0 ? (v14 = v8) : (v14 = *v8), v13 >= 0 ? (v15 = (v2 + 272)) : (v15 = *(v2 + 272)), memcmp(v14, v15, v11)))
      {
        if (v6 == v7 - 1 || v6 == v7 - 2 && v7 - 1 == *(v2 + 304))
        {
          if (v10 >= 0)
          {
            v16 = v8;
          }

          else
          {
            v16 = *v8;
          }

          sub_100038730(&v27, v16, v11);
        }

        else
        {
          if (v10 >= 0)
          {
            v17 = v8;
          }

          else
          {
            v17 = *v8;
          }

          v18 = sub_100038730(&v27, v17, v11);
          sub_100038730(v18, ",", 1);
        }
      }

      ++v6;
      v3 = *(v2 + 200);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 208) - v3) >> 3);
      v5 += 24;
    }

    while (v7 > v6);
  }

  if ((v34 & 0x10) != 0)
  {
    v20 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v20 = v30;
    }

    locale = v29[4].__locale_;
    goto LABEL_39;
  }

  if ((v34 & 8) != 0)
  {
    locale = v29[1].__locale_;
    v20 = v29[3].__locale_;
LABEL_39:
    v19 = v20 - locale;
    if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v25) = v20 - locale;
    if (v19)
    {
      memmove(&__dst, locale, v19);
    }

    goto LABEL_45;
  }

  v19 = 0;
  HIBYTE(v25) = 0;
LABEL_45:
  *(&__dst + v19) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v25;
  v27 = v22;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100482A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_100482A64(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = *a2;
  if (*a2)
  {
    v12 = a1 + 224;
    v7 = sub_1004872D4((v4 + 24), (a1 + 224), &unk_101C66300, &v12, &v11);
    v8 = *(v7 + 15) - a4;
    *(v7 + 14) += a3;
    *(v7 + 15) = v8;
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v9 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "[Database] ColdStorageStats not initialized.", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F890();
    }
  }
}

void sub_100482B3C(uint64_t *a1, int **a2, uint64_t a3)
{
  if (sub_100099160((a1 + 9)))
  {
    sub_100144A84(a1[10]);
    sub_10003848C(buf);
    v4 = sub_100038730(v19, "UPDATE ", 7);
    (*(*a1 + 32))(__p, a1);
    if ((v17 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v6 = v17;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = sub_100038730(v4, v5, v6);
    v8 = sub_100038730(v7, " SET ", 5);
    v9 = sub_100038730(v8, "recordID", 8);
    sub_100038730(v9, " = ? WHERE ROWID = ?", 20);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = a1[10];
    if ((v22 & 0x10) != 0)
    {
      v13 = v21;
      if (v21 < v20)
      {
        v21 = v20;
        v13 = v20;
      }

      v14 = v19[6];
    }

    else
    {
      if ((v22 & 8) == 0)
      {
        v11 = 0;
        v17 = 0;
        goto LABEL_29;
      }

      v14 = v19[3];
      v13 = v19[5];
    }

    v11 = v13 - v14;
    if ((v13 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v17 = v13 - v14;
    if (v11)
    {
      memmove(__p, v14, v11);
    }

LABEL_29:
    *(__p + v11) = 0;
    if ((v17 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    sub_1000388D8(v10, v15);
  }

  if (qword_1025D4530 != -1)
  {
    sub_10188F214();
  }

  v12 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "[DB] Unable to update UUID on records.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10188F970();
  }
}

void sub_100483038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (v30)
  {
    (*(*v30 + 8))(v30, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1004830FC(void *a1, char *a2, void *a3, id *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a1[20])
  {
    if (sub_100099160((a1 + 9)))
    {
      sub_10003848C(buf);
      v6 = sub_100038730((&v32 + 2), "SELECT * FROM ", 14);
      (*(*a1 + 32))(__p, a1);
      if ((v29 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v29 & 0x80u) == 0)
      {
        v8 = v29;
      }

      else
      {
        v8 = __p[1];
      }

      v9 = sub_100038730(v6, v7, v8);
      v10 = sub_100038730(v9, " WHERE ", 7);
      v11 = sub_100038730(v10, "recordID", 8);
      sub_100038730(v11, " = ?", 4);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = a1[10];
      if ((v39 & 0x10) != 0)
      {
        v17 = v38;
        if (v38 < v37)
        {
          v38 = v37;
          v17 = v37;
        }

        v18 = __src;
      }

      else
      {
        if ((v39 & 8) == 0)
        {
          v13 = 0;
          v29 = 0;
          goto LABEL_36;
        }

        v18 = v34;
        v17 = v35;
      }

      v13 = v17 - v18;
      if (v17 - v18 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      v29 = v17 - v18;
      if (v13)
      {
        memmove(__p, v18, v13);
      }

LABEL_36:
      *(__p + v13) = 0;
      if ((v29 & 0x80u) == 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      sub_1000388D8(v12, v19);
    }

    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v14 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 32))(__p, a1);
      v15 = (v29 & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v15;
      v31 = 2080;
      v32 = a2;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[DB] getRecordDataForID since db is not accessible for %s, recordID=%s", buf, 0x16u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4530 != -1)
      {
        sub_10188F338();
      }

      v20 = qword_1025D4538;
      (*(*a1 + 32))(buf, a1);
      if (v33 >= 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      __dst = 136315394;
      *__dst_4 = v21;
      v26 = 2080;
      v27 = a2;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v20, 16, "[DB] getRecordDataForID since db is not accessible for %s, recordID=%s", &__dst, 22);
      v23 = v22;
      if (v33 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 0, "BOOL CMHealthColdStorageDb::getRecordDataForID(const char *, NSData **, NSData **)", "%s\n", v23);
      if (v23 != __p)
      {
        free(v23);
      }
    }
  }

  return 0;
}

void sub_100483E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_100483FA4(void *a1, void *a2, void *a3, id *a4)
{
  v7 = [objc_msgSend(a2 "recordName")];

  return sub_1004830FC(a1, v7, a3, a4);
}

uint64_t sub_100484000(void *a1)
{
  sub_10003848C(v20);
  v2 = sub_100038730(&v21, "UPDATE ", 7);
  (*(*a1 + 32))(__p, a1);
  if ((v19 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v4 = v19;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_100038730(v2, v3, v4);
  v6 = sub_100038730(v5, " SET ", 5);
  v7 = sub_100038730(v6, "systemFields", 12);
  v8 = sub_100038730(v7, " = ? WHERE ", 11);
  v9 = sub_100038730(v8, "recordID", 8);
  sub_100038730(v9, " = ?", 4);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = a1[10];
  if ((v28 & 0x10) != 0)
  {
    v12 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v12 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v11 = 0;
      v19 = 0;
      goto LABEL_22;
    }

    locale = v23[1].__locale_;
    v12 = v23[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v19 = v12 - locale;
  if (v11)
  {
    memmove(__p, locale, v11);
  }

LABEL_22:
  *(__p + v11) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  a1[43] = sub_100614C1C(v10, v14);
  a1[44] = v15;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100484338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100484370(uint64_t a1, void *a2, void *a3)
{
  v5 = a1;
  if (!sub_100099160(a1 + 72))
  {
    goto LABEL_15;
  }

  sub_10000FF38(v16, "CMHealthColdStorageDb.updateLocalSystemFieldsForRecord", 0);
  if (!sub_100DD42EC((v5 + 344)))
  {
    sub_100484000(v5);
  }

  if (!sub_100DD42EC((v5 + 344)))
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F338();
    }

    v10 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[DB] SQL update statement is invalid.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188F360(buf);
      v15[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4538, 16, "[DB] SQL update statement is invalid.", v15, 2);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CMHealthColdStorageDb::updateLocalSystemFieldsForRecord(CKRecordID *, NSData *)", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    goto LABEL_14;
  }

  sub_100144CA0((v5 + 344), buf);
  if (!*buf)
  {
LABEL_14:
    sub_10001A420(v16);
LABEL_15:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v6 = sub_100008880(*buf);
  if (sub_100617DF4(v6, 1, a3) && (v7 = sub_100008880(*buf), sub_10003DDD8(v7, 2, [objc_msgSend(a2 "recordName")])))
  {
    v5 = *(v5 + 80);
    v8 = sub_100008880(*buf);
    LOBYTE(v5) = sub_1001A3DEC(v5, v8);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v12 = *buf;
  *buf = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  sub_10001A420(v16);
  if (v9)
  {
    goto LABEL_15;
  }

  return v5 & 1;
}

void sub_1004845D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

void sub_100484620(void *a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  sub_10000EC00(v99, [objc_msgSend(objc_msgSend(a2 "recordID")]);
  if (a1[20])
  {
    sub_10000FF38(v98, "CMHealthColdStorageDb.handleFetchedRecord", 0);
    (*(*a1 + 32))(v96, a1);
    if (v97 >= 0)
    {
      v4 = v96;
    }

    else
    {
      v4 = v96[0];
    }

    if ((sub_10060A6D8(a1[10], v4) & 1) == 0 && (sub_10047F580(a1) & 1) == 0)
    {
      if (qword_1025D4530 != -1)
      {
        sub_10188F338();
      }

      v10 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[DB] unable to create table when handling fetched records", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188F360(buf);
        LOWORD(v86[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4538, 16, "[DB] unable to create table when handling fetched records", v86, 2);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 0, "void CMHealthColdStorageDb::handleFetchedRecord(CKRecord *)", "%s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

LABEL_114:
      if (v97 < 0)
      {
        operator delete(v96[0]);
      }

      sub_10001A420(v98);
      goto LABEL_117;
    }

    sub_10000EC00(&v95, [objc_msgSend(a1[20] "columns")]);
    sub_10003848C(v86);
    v84 = 0;
    v83 = 0;
    v85 = 0;
    sub_1004854AC(v79, &v95, 8);
    v77 = 0uLL;
    v78 = 0;
    for (i = 1; ; ++i)
    {
      v6 = sub_100485630(v79, &v77, 0x2Cu);
      if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_100038730(&v87, "?,", 2);
      sub_1003CDE18(&v83, &v77);
    }

    sub_100038730(&v87, "?,?", 3);
    if ((v94 & 0x10) != 0)
    {
      v8 = v93;
      if (v93 < v90)
      {
        v93 = v90;
        v8 = v90;
      }

      locale = v89[4].__locale_;
    }

    else
    {
      if ((v94 & 8) == 0)
      {
        v7 = 0;
        v76 = 0;
LABEL_31:
        *(__dst + v7) = 0;
        sub_10003848C(v66);
        v65 = 0;
        if (sub_1004830FC(a1, [objc_msgSend(objc_msgSend(a2 "recordID")], &v65, 0))
        {
          if (v65)
          {
            v13 = sub_100038730(&v67, "UPDATE ", 7);
            (*(*a1 + 32))(buf, a1);
            if ((v105 & 0x80u) == 0)
            {
              v14 = buf;
            }

            else
            {
              v14 = *buf;
            }

            if ((v105 & 0x80u) == 0)
            {
              v15 = v105;
            }

            else
            {
              v15 = *&buf[8];
            }

            v16 = sub_100038730(v13, v14, v15);
            sub_100038730(v16, " SET ", 5);
            if (v105 < 0)
            {
              operator delete(*buf);
            }

            v17 = v83;
            for (j = v84; v17 != j; v17 += 24)
            {
              v19 = *(v17 + 23);
              if (v19 >= 0)
              {
                v20 = v17;
              }

              else
              {
                v20 = *v17;
              }

              if (v19 >= 0)
              {
                v21 = *(v17 + 23);
              }

              else
              {
                v21 = *(v17 + 8);
              }

              v22 = sub_100038730(&v67, v20, v21);
              sub_100038730(v22, "=?, ", 4);
            }

            v23 = sub_100038730(&v67, "recordID", 8);
            v24 = sub_100038730(v23, "=?, ", 4);
            v25 = sub_100038730(v24, "systemFields", 12);
            sub_100038730(v25, "=?", 2);
            v26 = sub_100038730(&v67, " WHERE ", 7);
            v27 = sub_100038730(v26, "recordID", 8);
            v28 = sub_100038730(v27, " = ", 3);
            v29 = sub_100038730(v28, "", 1);
            v30 = [objc_msgSend(objc_msgSend(a2 "recordID")];
            v31 = strlen(v30);
            v32 = sub_100038730(v29, v30, v31);
            sub_100038730(v32, "", 1);
          }

          else
          {
            v40 = sub_100038730(&v67, "INSERT INTO ", 12);
            (*(*a1 + 32))(buf, a1);
            if ((v105 & 0x80u) == 0)
            {
              v41 = buf;
            }

            else
            {
              v41 = *buf;
            }

            if ((v105 & 0x80u) == 0)
            {
              v42 = v105;
            }

            else
            {
              v42 = *&buf[8];
            }

            v43 = sub_100038730(v40, v41, v42);
            v44 = sub_100038730(v43, "( ", 2);
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v45 = &v95;
            }

            else
            {
              v45 = v95.__r_.__value_.__r.__words[0];
            }

            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v95.__r_.__value_.__l.__size_;
            }

            v47 = sub_100038730(v44, v45, size);
            v48 = sub_100038730(v47, ",", 1);
            v49 = sub_100038730(v48, "recordID", 8);
            v50 = sub_100038730(v49, ",", 1);
            v51 = sub_100038730(v50, "systemFields", 12);
            v52 = sub_100038730(v51, ") VALUES(", 12);
            if ((v76 & 0x80u) == 0)
            {
              v53 = __dst;
            }

            else
            {
              v53 = __dst[0];
            }

            if ((v76 & 0x80u) == 0)
            {
              v54 = v76;
            }

            else
            {
              v54 = __dst[1];
            }

            v55 = sub_100038730(v52, v53, v54);
            sub_100038730(v55, ")", 1);
            if (v105 < 0)
            {
              operator delete(*buf);
            }
          }

          v56 = a1[10];
          if ((v74 & 0x10) != 0)
          {
            v58 = v73;
            if (v73 < v70)
            {
              v73 = v70;
              v58 = v70;
            }

            v59 = v69[4].__locale_;
          }

          else
          {
            if ((v74 & 8) == 0)
            {
              v57 = 0;
              v105 = 0;
              goto LABEL_98;
            }

            v59 = v69[1].__locale_;
            v58 = v69[3].__locale_;
          }

          v57 = v58 - v59;
          if ((v58 - v59) > 0x7FFFFFFFFFFFFFF7)
          {
            sub_100061080();
          }

          if (v57 >= 0x17)
          {
            operator new();
          }

          v105 = v58 - v59;
          if (v57)
          {
            memmove(buf, v59, v57);
          }

LABEL_98:
          buf[v57] = 0;
          if ((v105 & 0x80u) == 0)
          {
            v60 = buf;
          }

          else
          {
            v60 = *buf;
          }

          sub_1000388D8(v56, v60);
        }

        if (qword_1025D4530 != -1)
        {
          sub_10188F338();
        }

        v33 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
        {
          v34 = v99;
          if (v100 < 0)
          {
            v34 = v99[0];
          }

          v35 = v96;
          if (v97 < 0)
          {
            v35 = v96[0];
          }

          *buf = 136315394;
          *&buf[4] = v34;
          *&buf[12] = 2080;
          *&buf[14] = v35;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_ERROR, "[DB] Unable to verify if fetched record exists, ignore record=%s, for table %s", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10188F360(buf);
          v36 = v99;
          if (v100 < 0)
          {
            v36 = v99[0];
          }

          v37 = v96;
          if (v97 < 0)
          {
            v37 = v96[0];
          }

          v101[0] = 136315394;
          *&v101[1] = v36;
          v102 = 2080;
          v103 = v37;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4538, 16, "[DB] Unable to verify if fetched record exists, ignore record=%s, for table %s", v101, 22);
          v39 = v38;
          sub_100152C7C("Generic", 1, 0, 0, "void CMHealthColdStorageDb::handleFetchedRecord(CKRecord *)", "%s\n", v38);
          if (v39 != buf)
          {
            free(v39);
          }
        }

        v64 = v62;
        v67 = v62;
        if (v72 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(v69);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        if (v76 < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77);
        }

        if (v82 < 0)
        {
          operator delete(v81[7].__locale_);
        }

        std::locale::~locale(v81);
        std::istream::~istream();
        std::ios::~ios();
        *buf = &v83;
        sub_1001E56E8(buf);
        v86[0] = v61;
        *(v86 + *(v61 - 3)) = v63;
        v87 = v64;
        if (v92 < 0)
        {
          operator delete(v91);
        }

        std::locale::~locale(v89);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        goto LABEL_114;
      }

      locale = v89[1].__locale_;
      v8 = v89[3].__locale_;
    }

    v7 = v8 - locale;
    if ((v8 - locale) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v76 = v8 - locale;
    if (v7)
    {
      memmove(__dst, locale, v7);
    }

    goto LABEL_31;
  }

LABEL_117:
  if (v100 < 0)
  {
    operator delete(v99[0]);
  }
}

void sub_10048536C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  sub_10001A420(&STACK[0x3D8]);
  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1004854AC(void (__cdecl ***a1)(std::istringstream *__hidden this), const std::string *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  sub_100487200((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_100485608(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100485630(void *a1, uint64_t a2, unsigned __int8 a3)
{
  std::istream::sentry::sentry();
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_100485794(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100485754);
  }

  __cxa_rethrow();
}

BOOL sub_100485824(uint64_t a1)
{
  v2 = a1 + 112;
  v3 = a1 + 72;
  (*(*(a1 + 112) + 16))(a1 + 112);
  if (sub_100099160(v3))
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_102656398 != -1)
    {
      sub_10188FA60();
    }

    v5 = dword_102656390;
    v6 = sub_1001B16EC(*(a1 + 80), dword_102656390);
    v7 = v6 == 0;
    v8 = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v9 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349568;
      v20 = v8 - Current;
      v21 = 2050;
      v22 = v6;
      v23 = 1026;
      v24 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "[DB] Time taken for incrementalVacuum, %{public}.2f ReduceFreePagesStatus, %{public}lu, incrementalVacuumPageLimit : %{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F360(buf);
      v13 = 134349568;
      v14 = v8 - Current;
      v15 = 2050;
      v16 = v6;
      v17 = 1026;
      v18 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4538, 0, "[DB] Time taken for incrementalVacuum, %{public}.2f ReduceFreePagesStatus, %{public}lu, incrementalVacuumPageLimit : %{public}d", &v13, 28);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CMHealthColdStorageDb::performIncrementalDbVacuum()", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*v2 + 24))(v2);
  return v7;
}

void sub_100485AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100485AEC(uint64_t a1)
{
  sub_100487424(a1);

  operator delete();
}

char *sub_100485B24@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[247] < 0)
  {
    return sub_100007244(a2, *(result + 28), *(result + 29));
  }

  *a2 = *(result + 14);
  *(a2 + 16) = *(result + 30);
  return result;
}

void sub_100485B54(uint64_t a1)
{
  sub_100487424(a1 - 72);

  operator delete();
}

char *sub_100485B90@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[175] < 0)
  {
    return sub_100007244(a2, *(result + 19), *(result + 20));
  }

  *a2 = *(result + 152);
  *(a2 + 16) = *(result + 21);
  return result;
}

void sub_100485BE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_100485C40(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100485D18(a1, a2);
  }

  return a1;
}

void sub_100485CFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100485D18(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100485D54(a1, a2);
  }

  sub_10028C64C();
}

void sub_100485D54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_100485D9C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_100485E1C(result, a4);
  }

  return result;
}

void sub_100485E00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100485E1C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10013E290(a1, a2);
  }

  sub_10028C64C();
}

char *sub_100485E68(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_1000B85D0(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t sub_100486068(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

unsigned __int8 *sub_1004861C8(unsigned __int8 *a1, const char *a2, _DWORD *a3, unsigned __int8 a4)
{
  *a1 = 0;
  *(a1 + 1) = *a3;
  v6 = a1 + 4;
  a1[8] = a4;
  v7 = sub_100011660(a1, a2);
  sub_100185AC0(v7, buf);
  *a1 = sub_10005BBE4(*buf, a2, v6);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10003848C(v41);
  std::ostream::operator<<();
  if ((a1[8] & 1) == 0)
  {
    if (*a1)
    {
      if (qword_1025D4200 != -1)
      {
        sub_10188FA74();
      }

      v13 = qword_1025D4208;
      if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v14 = *a1;
      if ((v51 & 0x10) != 0)
      {
        v23 = v50;
        if (v50 < v47)
        {
          v50 = v47;
          v23 = v47;
        }

        v24 = __src;
      }

      else
      {
        if ((v51 & 8) == 0)
        {
          v15 = 0;
          BYTE3(v56) = 0;
LABEL_45:
          __dst[v15] = 0;
          v27 = __dst;
          if (SBYTE3(v56) < 0)
          {
            v27 = *__dst;
          }

          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = v14;
          v58 = 2080;
          v59 = v27;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
          if (SBYTE3(v56) < 0)
          {
            operator delete(*__dst);
          }

LABEL_49:
          if (!sub_10000A100(121, 2))
          {
            goto LABEL_68;
          }

          sub_10188FA9C(buf);
          v28 = qword_1025D4208;
          v29 = *a1;
          sub_10003DD04(&v42, __p);
          if (v40 >= 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          *__dst = 136315650;
          *&__dst[4] = a2;
          v53 = 1024;
          v54 = v29;
          v55 = 2080;
          v56 = v30;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "motion default,%s,set,%d,value,%s", __dst, 28, __p[0]);
          v12 = v31;
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_76;
        }

        v24 = v44;
        v23 = v45;
      }

      v15 = v23 - v24;
      if (v23 - v24 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      BYTE3(v56) = v23 - v24;
      if (v15)
      {
        memmove(__dst, v24, v15);
      }

      goto LABEL_45;
    }

    if (qword_1025D4200 != -1)
    {
      sub_10188FA74();
    }

    v20 = qword_1025D4208;
    if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
LABEL_67:
      if (!sub_10000A100(121, 2))
      {
        goto LABEL_68;
      }

      sub_10188FA9C(buf);
      v35 = qword_1025D4208;
      v36 = *a1;
      sub_10003DD04(&v42, __p);
      if (v40 >= 0)
      {
        v37 = __p;
      }

      else
      {
        v37 = __p[0];
      }

      *__dst = 136315650;
      *&__dst[4] = a2;
      v53 = 1024;
      v54 = v36;
      v55 = 2080;
      v56 = v37;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 1, "motion default,%s,set,%d,value,%s", __dst, 28, __p[0]);
      v12 = v38;
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_76:
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = int]", "%s\n", v12);
      if (v12 == buf)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

    v21 = *a1;
    if ((v51 & 0x10) != 0)
    {
      v25 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v25 = v47;
      }

      v26 = __src;
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v22 = 0;
        BYTE3(v56) = 0;
LABEL_63:
        __dst[v22] = 0;
        v32 = __dst;
        if (SBYTE3(v56) < 0)
        {
          v32 = *__dst;
        }

        *buf = 136315650;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v21;
        v58 = 2080;
        v59 = v32;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
        if (SBYTE3(v56) < 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_67;
      }

      v26 = v44;
      v25 = v45;
    }

    v22 = v25 - v26;
    if (v25 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    BYTE3(v56) = v25 - v26;
    if (v22)
    {
      memmove(__dst, v26, v22);
    }

    goto LABEL_63;
  }

  if (*a1)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188FA74();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188FA9C(buf);
      v10 = *a1;
      *__dst = 136315394;
      *&__dst[4] = a2;
      v53 = 1024;
      v54 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "motion default,%s,set,%d", __dst, 18);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = int]", "%s\n", v11);
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188FA74();
    }

    v16 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      v17 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188FA9C(buf);
      v18 = *a1;
      *__dst = 136315394;
      *&__dst[4] = a2;
      v53 = 1024;
      v54 = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "motion default,%s,set,%d", __dst, 18);
      v12 = v19;
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = int]", "%s\n", v19);
LABEL_24:
      if (v12 == buf)
      {
        goto LABEL_68;
      }

LABEL_77:
      free(v12);
    }
  }

LABEL_68:
  v41[2] = v33;
  if (v49 < 0)
  {
    operator delete(v48);
  }

  std::locale::~locale(&v43);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_100486ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100486B1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_100486B94(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **sub_100486B94(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100007070(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    sub_100486DF4();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_100486DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100486E98(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100486EBC(void *a1)
{
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_100486F00(void *a1)
{
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);

  operator delete();
}

void *sub_100486F64(void *a1, char *a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = a4;
  sub_10000EC00(__p, "");
  sub_101052EEC(a1, a2, v6, a3, a5, __p, 1, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1024562F0;
  sub_10000EC00(a1 + 13, a2);
  return a1;
}

void sub_10048704C(uint64_t a1)
{
  sub_1004870AC(a1);

  operator delete();
}

char *sub_100487084@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[127] < 0)
  {
    return sub_100007244(a2, *(result + 13), *(result + 14));
  }

  *a2 = *(result + 104);
  *(a2 + 16) = *(result + 15);
  return result;
}

uint64_t sub_1004870AC(uint64_t a1)
{
  *a1 = off_1024562F0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_1010532A4(a1);
}

uint64_t sub_100487178(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102456358;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004871B4(uint64_t a1, uint64_t a2)
{
  if (sub_10004FCC4(a2, &off_1024563D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100487200(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_100038AF8(a1);
  return a1;
}

void sub_1004872AC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_1004872D4(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_1000F2B3C(a1, &v6, a2);
  if (!result)
  {
    sub_10048736C();
  }

  return result;
}

void sub_100487408(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100487424(uint64_t a1)
{
  *a1 = off_102456150;
  v2 = a1 + 72;
  *(a1 + 72) = off_102456188;
  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v7 = (a1 + 200);
  sub_1001E56E8(&v7);
  v4 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_1010532A4(v2);
  *a1 = off_102450C98;
  sub_1003FFCFC((a1 + 8));
  return a1;
}

uint64_t sub_100487568()
{
  sub_10000EC00(v2, "SmoothedGaitMetricsHistory");
  v3 = 3;
  sub_10000EC00(v4, "ElevationGradeHistory");
  v5 = 3;
  sub_10000EC00(v6, "PredictedWalkDistanceBoutHistory");
  v7 = 28;
  sub_10000EC00(v8, "WalkingSpeedStrideCal");
  v9 = 28;
  sub_10000EC00(v10, "StrideCalHistory");
  v11 = 28;
  sub_10000EC00(v12, "MobilityBoutMetricsHistory");
  v13 = 90;
  sub_10000EC00(v14, "HRRecoveryInputHRHistory");
  v15 = 180;
  sub_10000EC00(v16, "HRRecoveryInputWRHistory");
  v17 = 180;
  sub_10000EC00(v18, "HRRecoverySessionHistory");
  v19 = 180;
  sub_10000EC00(v20, "VO2MaxInputHistory");
  v21 = 730;
  sub_10000EC00(v22, "VO2MaxHistory");
  v23 = 730;
  sub_10000EC00(v24, "VO2MaxSessionAttributesHistory");
  v25 = 730;
  sub_10000EC00(v26, "VO2MaxSummaryHistory");
  v27 = 730;
  sub_100486B1C(qword_102656368, v2, 13);
  v0 = 52;
  do
  {
    if (*(&v2[v0 - 1] - 1) < 0)
    {
      operator delete(v2[v0 - 4]);
    }

    v0 -= 4;
  }

  while (v0 * 8);
  return __cxa_atexit(sub_10047DA98, qword_102656368, dword_100000000);
}

void sub_100487788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 407);
  v13 = -416;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_100487818(void *a1, float **a2)
{
  sub_1004879A4(a1, a2);
  v4 = 0;
  v5 = *a2;
  a2[1] = *a2;
  do
  {
    v6 = a1[1];
    if (v6 == a1[2])
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 4 * v4);
    }

    v8 = 1.6;
    if (v4)
    {
      if (v4 == 10)
      {
        v8 = *"33+A";
      }

      else
      {
        v8 = (v4 - 1) + 1.60000002 + 0.5;
      }
    }

    v9 = a2[2];
    if (v5 >= v9)
    {
      v10 = *a2;
      v11 = v5 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        sub_10028C64C();
      }

      v14 = v9 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_1000B9708(a2, v15);
      }

      v16 = 8 * v12;
      *v16 = v8;
      *(v16 + 4) = v7;
      v5 = (8 * v12 + 8);
      v17 = (v16 - 8 * (v11 >> 3));
      memcpy(v17, v10, v11);
      v18 = *a2;
      *a2 = v17;
      a2[1] = v5;
      a2[2] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v5 = v8;
      *(v5 + 1) = v7;
      v5 += 2;
    }

    a2[1] = v5;
    ++v4;
  }

  while (v4 != 11);
}

void *sub_1004879A4(void *result, uint64_t a2)
{
  if (*result == 1.79769313e308)
  {
    v2 = result;
    v3 = (result + 1);
    result[2] = result[1];
    v28 = 0;
    v27 = sub_1000206B4(result, a2);
    v4 = sub_1003045C8(v27, @"FallMetMinuteTable", &v28);
    v5 = v28;
    if (v28)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v6 == 1)
    {
      v7 = objc_opt_class();
      v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v7 fromData:objc_opt_class() error:0], v5, 0];
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8);
      if (v9)
      {
        v10 = MEMORY[0];
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (MEMORY[0] != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [*(8 * i) longValue];
            v14 = v2[2];
            v13 = v2[3];
            if (v14 >= v13)
            {
              v16 = *v3;
              v17 = v14 - *v3;
              v18 = v17 >> 2;
              v19 = (v17 >> 2) + 1;
              if (v19 >> 62)
              {
                sub_10028C64C();
              }

              v20 = v13 - v16;
              if (v20 >> 1 > v19)
              {
                v19 = v20 >> 1;
              }

              v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
              v22 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v21)
              {
                v22 = v19;
              }

              if (v22)
              {
                sub_1000B85D0(v3, v22);
              }

              *(4 * v18) = v12;
              v15 = 4 * v18 + 4;
              memcpy(0, v16, v17);
              v23 = v2[1];
              v2[1] = 0;
              v2[2] = v15;
              v2[3] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              *v14 = v12;
              v15 = (v14 + 1);
            }

            v2[2] = v15;
          }

          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8);
        }

        while (v9);
      }
    }

    v29 = 0;
    v24 = sub_1003045C8(v27, @"FallMetMinuteComputeTime", &v29);
    if (v29)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1)
    {
      [+[NSKeyedUnarchiver unarchivedObjectOfClass:fromData:error:](NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:{0), "timeIntervalSinceReferenceDate"}];
      *v2 = v26;
    }

    return sub_10048862C(v2);
  }

  return result;
}

void sub_100487C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int buf, int a24, __int128 a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }

    v25 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      a24 = 0;
      LOWORD(a25) = 2082;
      *(&a25 + 2) = "";
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Failed to receive correct MET minutes from plist.}", &buf, 0x12u);
      if (qword_1025D4330 != -1)
      {
        sub_10188FAE0();
      }
    }

    v26 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      buf = 68289026;
      a24 = 0;
      LOWORD(a25) = 2082;
      *(&a25 + 2) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Failed to receive correct MET minutes from plist.", "{msg%{public}.0s:MaxMETs,Failed to receive correct MET minutes from plist.}", &buf, 0x12u);
    }

    objc_end_catch();
    JUMPOUT(0x100487BA8);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100487D8C(double *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a2 && [a2 count])
  {
    sub_1004879A4(a1, v11);
    v12 = *a1;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    if (v13)
    {
      v14 = *v72;
      v65 = 68289539;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v72 != v14)
          {
            objc_enumerationMutation(a2);
          }

          v16 = *(*(&v71 + 1) + 8 * v15);
          [objc_msgSend(v16 startDate];
          if (v12 <= v17)
          {
            [objc_msgSend(v16 "averageIntensity")];
            if (v24 < 0.0)
            {
              if (qword_1025D4330 != -1)
              {
                sub_10188FAE0();
              }

              v56 = qword_1025D4338;
              if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_FAULT))
              {
                [objc_msgSend(v16 "startDate")];
                v58 = v57;
                [objc_msgSend(v16 "averageIntensity")];
                *buf = v65;
                *&buf[4] = 0;
                v76 = 2082;
                v77 = "";
                v78 = 2049;
                *v79 = v58;
                *&v79[8] = 1025;
                *v80 = v59;
                _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MET Minute time_s:%{private}.09f, MET value:%{private}d}", buf, 0x22u);
                if (qword_1025D4330 != -1)
                {
                  sub_10188FAE0();
                }
              }

              v60 = qword_1025D4338;
              if (os_signpost_enabled(qword_1025D4338))
              {
                [objc_msgSend(v16 "startDate")];
                v62 = v61;
                [objc_msgSend(v16 "averageIntensity")];
                *buf = v65;
                *&buf[4] = 0;
                v76 = 2082;
                v77 = "";
                v78 = 2049;
                *v79 = v62;
                *&v79[8] = 1025;
                *v80 = v63;
                _os_signpost_emit_with_name_impl(dword_100000000, v60, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Invalid MET minute input.", "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MET Minute time_s:%{private}.09f, MET value:%{private}d}", buf, 0x22u);
              }

              return 0;
            }

            [objc_msgSend(v16 "startDate")];
            v12 = v25 + 60.0;
          }

          else
          {
            if (qword_1025D4330 != -1)
            {
              sub_10188FAE0();
            }

            v18 = qword_1025D4338;
            if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
            {
              v19 = *a1;
              [objc_msgSend(v16 "startDate")];
              *buf = v65;
              *&buf[4] = 0;
              v76 = 2082;
              v77 = "";
              v78 = 2049;
              *v79 = v19;
              *&v79[8] = 2049;
              *v80 = v20;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MRU time_s:%{private}.09f, Input time_s:%{private}.09f}", buf, 0x26u);
              if (qword_1025D4330 != -1)
              {
                sub_10188FAE0();
              }
            }

            v21 = qword_1025D4338;
            if (os_signpost_enabled(qword_1025D4338))
            {
              v22 = *a1;
              [objc_msgSend(v16 "startDate")];
              *buf = v65;
              *&buf[4] = 0;
              v76 = 2082;
              v77 = "";
              v78 = 2049;
              *v79 = v22;
              *&v79[8] = 2049;
              *v80 = v23;
              _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Invalid MET minute input.", "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MRU time_s:%{private}.09f, Input time_s:%{private}.09f}", buf, 0x26u);
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    __src = 0;
    v69 = 0;
    v70 = 0;
    if (a3 < a4)
    {
      v66 = -1.60000002;
      do
      {
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, *&v66);
        v28 = a3 + a5;
        if (v26)
        {
          v29 = MEMORY[0];
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (MEMORY[0] != v29)
              {
                objc_enumerationMutation(a2);
              }

              v31 = *(8 * i);
              [objc_msgSend(v31 "startDate")];
              if (a3 <= v32)
              {
                [objc_msgSend(v31 "startDate")];
                if (v33 < v28)
                {
                  [objc_msgSend(v31 "averageIntensity")];
                  if (v34 > 1.60000002)
                  {
                    [objc_msgSend(v31 "averageIntensity")];
                    v36 = v69;
                    if (v69 >= v70)
                    {
                      v38 = __src;
                      v39 = v69 - __src;
                      v40 = (v69 - __src) >> 3;
                      v41 = v40 + 1;
                      if ((v40 + 1) >> 61)
                      {
                        sub_10028C64C();
                      }

                      v42 = v70 - __src;
                      if ((v70 - __src) >> 2 > v41)
                      {
                        v41 = v42 >> 2;
                      }

                      if (v42 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v43 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v43 = v41;
                      }

                      if (v43)
                      {
                        sub_1000B9708(&__src, v43);
                      }

                      *(8 * v40) = v35;
                      v37 = (8 * v40 + 8);
                      memcpy(0, v38, v39);
                      v44 = __src;
                      __src = 0;
                      v69 = v37;
                      v70 = 0;
                      if (v44)
                      {
                        operator delete(v44);
                      }
                    }

                    else
                    {
                      *v69 = v35;
                      v37 = v36 + 1;
                    }

                    v69 = v37;
                  }
                }
              }
            }

            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
          }

          while (v26);
        }

        v45 = __src;
        v46 = v69 - __src;
        if (a6 >= 0.0)
        {
          v48 = v46 >> 3;
          v27 = 1.0;
          if (a6 <= 1.0)
          {
            v27 = v48 * a6;
            v47 = v27;
          }

          else
          {
            v47 = v48 - 1;
          }
        }

        else
        {
          v47 = 0;
        }

        if (v69 != __src)
        {
          v49 = (__src + 8 * v47);
          if (v49 != v69)
          {
            sub_1003E3EC0(__src, v49, v69, v27);
            v45 = __src;
          }

          v50 = v45[v47];
          if (qword_1025D4330 != -1)
          {
            sub_10188FAE0();
          }

          v51 = qword_1025D4338;
          if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68290307;
            v76 = 2082;
            v77 = "";
            v78 = 1025;
            *v79 = v46 >> 3;
            *&v79[4] = 1025;
            *&v79[6] = v47;
            *v80 = 2049;
            *&v80[2] = v50;
            v81 = 2049;
            v82 = a3;
            v83 = 2049;
            v84 = a3 + a5;
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Processed mets values, count:%{private}d, index:%{private}d, mets value:%{private}f, start time_s:%{private}.09f, end time_s:%{private}.09f}", buf, 0x3Cu);
          }

          v52 = vcvtpd_u64_f64(v50 + v66);
          if (v52 >= 0xA)
          {
            v52 = 10;
          }

          ++*(*(a1 + 1) + 4 * v52);
          v45 = __src;
        }

        v69 = v45;
        a3 = a3 + a5;
      }

      while (v28 < a4);
    }

    *a1 = v12;
    v55 = sub_10048862C(a1);
    if (__src)
    {
      v69 = __src;
      operator delete(__src);
    }
  }

  else
  {
    if (qword_1025D4330 != -1)
    {
      sub_10188FC5C();
    }

    v53 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v76 = 2082;
      v77 = "";
      _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Empty MET minutes input.}", buf, 0x12u);
      if (qword_1025D4330 != -1)
      {
        sub_10188FAE0();
      }
    }

    v54 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v76 = 2082;
      v77 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Empty MET minutes input.", "{msg%{public}.0s:MaxMETs,Empty MET minutes input.}", buf, 0x12u);
    }

    v55 = 0;
    *a1 = a4;
  }

  return v55;
}

void sub_1004885F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10048862C(uint64_t a1)
{
  if (!sub_1004889B8(a1))
  {
    v21 = 0;
    sub_100488B84((a1 + 8), 0xBuLL, &v21);
    *a1 = CFAbsoluteTimeGetCurrent() + -86400.0;
  }

  v2 = objc_opt_new();
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  while (v3 != v4)
  {
    v5 = *v3++;
    [v2 addObject:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", v5)}];
  }

  v6 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:0];
  v8 = sub_1000206B4(v6, v7);
  v9 = sub_1003046B4(v8);
  if ((v9 & 1) == 0)
  {
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }

    v10 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats}", &v21, 0x12u);
      if (qword_1025D4330 != -1)
      {
        sub_10188FAE0();
      }
    }

    v11 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Failed to persist MET minutes stats", "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats}", &v21, 0x12u);
    }
  }

  v12 = [NSKeyedArchiver archivedDataWithRootObject:[NSDate dateWithTimeIntervalSinceReferenceDate:*a1] requiringSecureCoding:1 error:0];
  v14 = sub_1000206B4(v12, v13);
  v15 = sub_1003046B4(v14);
  if (v15)
  {
    if (v9)
    {
      v17 = sub_1000206B4(v15, v16);
      (*(*v17 + 944))(v17);
      return 1;
    }

    return 0;
  }

  if (qword_1025D4330 != -1)
  {
    sub_10188FAE0();
  }

  v19 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
  {
    v21 = 68289026;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats compute time}", &v21, 0x12u);
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }
  }

  v20 = qword_1025D4338;
  result = os_signpost_enabled(qword_1025D4338);
  if (result)
  {
    v21 = 68289026;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Failed to persist MET minutes stats compute time", "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats compute time}", &v21, 0x12u);
    return 0;
  }

  return result;
}

BOOL sub_1004889B8(uint64_t a1)
{
  if (*(a1 + 16) - *(a1 + 8) == 44 && *a1 != 1.79769313e308)
  {
    return 1;
  }

  if (qword_1025D4330 != -1)
  {
    sub_10188FC5C();
  }

  v2 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    v4 = (*(a1 + 16) - *(a1 + 8)) >> 2;
    v9 = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = v4;
    v15 = 2049;
    v16 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Invalid MET minute table, table size:%{private}ld, compute time_s:%{private}.09f}", &v9, 0x26u);
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }
  }

  v5 = qword_1025D4338;
  result = os_signpost_enabled(qword_1025D4338);
  if (result)
  {
    v7 = *a1;
    v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
    v9 = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = v8;
    v15 = 2049;
    v16 = v7;
    _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Invalid MET minute table", "{msg%{public}.0s:MaxMETs,Invalid MET minute table, table size:%{private}ld, compute time_s:%{private}.09f}", &v9, 0x26u);
    return 0;
  }

  return result;
}

_DWORD *sub_100488B84(uint64_t *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v7 = v5 >> 1;
      if (v5 >> 1 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_10038EBB4(a1, v8);
    }

    sub_10028C64C();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 2;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 2;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_101C652A0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_101C65490)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = a2 >= v10;
  v20 = a2 - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v9 + 4 * v20;
    v23 = *a3;
    v24 = (4 * a2 - (v9 - result) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = (v9 + 8);
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_101C652A0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_101C65490)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

uint64_t sub_100488FC0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10048A1E0;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026563E8 != -1)
  {
    dispatch_once(&qword_1026563E8, block);
  }

  return qword_1026563F0;
}

void sub_100489218(id a1)
{
  v1 = objc_opt_class();
  if (v1)
  {
    sub_10001A3E8(v1, v2);
    if (sub_10001CF3C())
    {
      byte_1026563D8 = 1;
    }
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v3 = sub_10001CB4C(v5, "EnableMultiClientStreaming", &v7, 0xFFFFFFFFLL);
  v4 = v3 & v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v4)
  {
    byte_1026563D8 = 1;
  }
}

void sub_1004892AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004892EC(id *a1)
{
  if ((a1[21] & 0x80000000) != 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 42);
      *buf = 68289795;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1026;
      v17 = v7;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "fDisablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v8 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v9 = *(a1 + 42);
      *buf = 68289795;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1026;
      v17 = v9;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "fDisablementAssertionCount >= 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be non-negative", "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v10 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 42);
      *buf = 68289795;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1026;
      v17 = v11;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "fDisablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Streaming/CLStreamedLocationProvider.mm", 839, "takeDisablementAssertion");
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 42);
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1026;
    v17 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client took disablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v4 = *(a1 + 42);
  *(a1 + 42) = v4 + 1;
  if (!v4)
  {
    *buf = 9;
    v5.n128_f64[0] = (*(*a1 + 18))(a1, buf, 1, 0xFFFFFFFFLL);
    sub_10048B54C(a1, v5);
  }
}

void sub_10048965C(id *a1, __n128 a2)
{
  if (*(a1 + 42) <= 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 42);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v8;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fDisablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v10 = *(a1 + 42);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v10;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fDisablementAssertionCount > 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be positive", "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v11 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 42);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v12;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fDisablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Streaming/CLStreamedLocationProvider.mm", 854, "releaseDisablementAssertion");
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 42);
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client released disablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v5 = *(a1 + 42) - 1;
  *(a1 + 42) = v5;
  if (!v5)
  {
    *buf = 9;
    v6.n128_f64[0] = (*(*a1 + 15))(a1, buf);
    sub_10048B54C(a1, v6);
  }
}

void sub_1004899CC(uint64_t a1, __n128 a2)
{
  if ((*(a1 + 172) & 0x80000000) != 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 172);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v8;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fEmergencyEnablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v10 = *(a1 + 172);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v10;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fEmergencyEnablementAssertionCount >= 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be non-negative", "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v11 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 172);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v12;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fEmergencyEnablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Streaming/CLStreamedLocationProvider.mm", 870, "takeEmergencyEnablementAssertion");
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 172);
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client took emergency enablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v6 = *(a1 + 172);
  *(a1 + 172) = v6 + 1;
  if (!v6)
  {
    if (*(a1 + 144))
    {
      sub_10048AA04(a1, v4);
    }
  }
}

void sub_100489D08(uint64_t a1, __n128 a2)
{
  if (*(a1 + 172) <= 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 172);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v8;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fEmergencyEnablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v10 = *(a1 + 172);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v10;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fEmergencyEnablementAssertionCount > 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be positive", "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v11 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 172);
      *buf = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v12;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fEmergencyEnablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Streaming/CLStreamedLocationProvider.mm", 886, "releaseEmergencyEnablementAssertion");
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 172);
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client released emergency enablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v6 = *(a1 + 172) - 1;
  *(a1 + 172) = v6;
  if (!v6)
  {
    if (*(a1 + 144))
    {
      sub_10048AA04(a1, v4);
    }
  }
}

void sub_10048A064(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqual:@"kCLLocationStreamingMessageTypeLocation"])
  {

    sub_10048D590(a1, a3);
  }

  else if ([a2 isEqual:@"kCLLocationStreamingMessageTypeAliveAgain"] && *(a1 + 144))
  {

    sub_10048AA04(a1, v6);
  }
}

uint64_t sub_10048A158(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = 9;
    return (*(*a1 + 120))(a1, &v4);
  }

  else
  {
    v3 = 9;
    return (*(*a1 + 144))(a1, &v3, 1, 0xFFFFFFFFLL);
  }
}

void sub_10048A250(uint64_t a1, void *a2)
{
  v3 = sub_1006A597C(a1, "Streamed location provider", a2);
  *v3 = off_102456468;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(a1 + 136) = [objc_msgSend(*(v3 + 32) "vendor")];
  *(a1 + 144) = 0;
  *(a1 + 152) = [*(a1 + 40) newTimer];
  *(a1 + 160) = [*(a1 + 40) newTimer];
  *(a1 + 168) = 0;
  *(a1 + 174) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10048A930;
  v8[3] = &unk_102449A78;
  v8[4] = a1;
  [*(a1 + 152) setHandler:v8];
  [*(a1 + 152) setNextFireDelay:1.79769313e308];
  [*(a1 + 152) setFireInterval:30.0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10048ACF8;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  [*(a1 + 160) setHandler:v7];
  sub_10001CAF4(buf);
  LOBYTE(v9) = 0;
  v4 = sub_10001CB4C(*buf, "EnableMultiClientStreaming", &v9, 0xFFFFFFFFLL);
  *(a1 + 180) = v4 & v9;
  if (*v11)
  {
    sub_100008080(*v11);
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10188FE40();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 180);
    *buf = 68289282;
    *&buf[4] = 0;
    *v11 = 2082;
    *&v11[2] = "";
    v12 = 1026;
    v13 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient enabled?, fEnableMultiClientStreaming:%{public}hhd}", buf, 0x18u);
  }

  if (*(a1 + 180) == 1)
  {
    *(a1 + 192) = -[CLStreamedLocationProviderServerDiscoverer initOnQueue:]([CLStreamedLocationProviderServerDiscoverer alloc], "initOnQueue:", [*(a1 + 40) queue]);
    sub_100D8556C();
  }

  sub_100D64EF4();
}

void sub_10048A87C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 128);
  *(v1 + 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_1006A5E8C(v1);
  _Unwind_Resume(a1);
}

void sub_10048A930(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Refreshing location request}", v5, 0x12u);
  }

  sub_10048AA04(v2, v4);
}

void sub_10048AA04(uint64_t a1, __n128 a2)
{
  if (sub_10048B1A0(a1, a2))
  {
    v3 = objc_alloc_init(CLLocationStreamingMessage);
    [(CLLocationStreamingMessage *)v3 setMessageType:@"kCLLocationStreamingMessageTypeRequestLocation"];
    v4 = +[NSMutableDictionary dictionary];
    [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(a1 + 144)), @"kCLLocationStreamingMessageGranularityKey"}];
    if (sub_10048CBA8(a1))
    {
      [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", 1), @"kCLLocationStreamingMessageIncludeMotionKey"}];
    }

    v7 = 28;
    if (sub_10000608C(a1, &v7, 1))
    {
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageInFitnessSessionKey"];
    }

    v7 = 29;
    if (sub_10000608C(a1, &v7, 1))
    {
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageActivityTypeAirborneKey"];
    }

    v7 = 17;
    if (sub_10000608C(a1, &v7, 1))
    {
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageMapMatching"];
    }

    if (*(a1 + 172))
    {
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageEmergencyEnablementKey"];
    }

    [(CLLocationStreamingMessage *)v3 setPayload:v4];
    [(CLLocationStreamingMessage *)v3 setPriority:300];
    v8[0] = IDSSendMessageOptionTimeoutKey;
    v5 = [NSNumber numberWithDouble:30.0];
    v8[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v8[2] = IDSSendMessageOptionEncryptPayloadKey;
    v9[0] = v5;
    v9[1] = &__kCFBooleanTrue;
    v9[2] = &__kCFBooleanTrue;
    v9[3] = &__kCFBooleanTrue;
    v8[3] = IDSSendMessageOptionRequireBluetoothKey;
    v8[4] = IDSSendMessageOptionQueueOneIdentifierKey;
    v9[4] = @"kCLLocationStreamingMessageTypeRequestLocation";
    [(CLLocationStreamingMessage *)v3 setIdsOptions:[NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5]];
    [*(a1 + 136) sendMessage:v3];
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#ilsa,sendLocationRequest,streaming is not allowed,blocking location request", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188FF18();
    }
  }
}

uint64_t sub_10048ACF8(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Location unavailable timer fired. Triggering kNotificationLocationUnavailable notification", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101890008();
  }

  v5 = 9;
  return (*(*v2 + 144))(v2, &v5, 1, 0xFFFFFFFFLL);
}

void sub_10048ADCC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018900F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStreamedLocationProvider::onLocationStreamingControlStateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189010C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamedLocationProvider::onLocationStreamingControlStateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10048B0A0(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10048AF90(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    [*(v2 + 16) unregister:*(v2 + 8) forNotification:42];
    v3 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  [*(a1 + 200) invalidate];

  *(a1 + 200) = 0;
  [*(a1 + 208) invalidate];

  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  [0 invalidateAndReleaseProbeClients];
  [*(a1 + 184) invalidate];

  *(a1 + 184) = 0;
  [*(a1 + 152) invalidate];

  *(a1 + 152) = 0;
  [*(a1 + 160) invalidate];

  *(a1 + 160) = 0;
  [*(a1 + 136) retireClient:CLISP_ME_TOKEN];

  *(a1 + 136) = 0;

  return sub_1006A5ED0(a1);
}

void sub_10048B0A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_101890134();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[216];
    v8 = a4[1480];
    v9[0] = 67240448;
    v9[1] = v7;
    v10 = 1026;
    v11 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#ilsa,CLStreamedLocationProvider,onLocationStreamingControlStateNotification,allowStreaming,old,%{public}d,new,%{public}d", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101890148(a1, a4);
  }

  a1[216] = a4[1480];
}

uint64_t sub_10048B1A0(unsigned __int8 *a1, __n128 a2)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[216];
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#ilsa,CLStreamedLocationProvider,isLocationStreamingAllowed,%{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101890260(a1);
  }

  return a1[216];
}

uint64_t sub_10048B280(uint64_t a1, unsigned int *a2, __n128 a3)
{
  v3 = *a2;
  if (*a2 > 0x27)
  {
    goto LABEL_9;
  }

  if (((1 << v3) & 0x8000000238) != 0)
  {
    return 1;
  }

  if (((1 << v3) & 7) != 0)
  {
    sub_10048B54C(a1, a3);
    return 1;
  }

  if (((1 << v3) & 0x30020000) == 0)
  {
LABEL_9:
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v6 = *a2;
      *buf = 68289795;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47B0 != -1)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v7 = qword_1025D47B8;
      if (os_signpost_enabled(qword_1025D47B8))
      {
        v8 = *a2;
        *buf = 68289795;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2050;
        v17 = v8;
        v18 = 2082;
        v19 = "assert";
        v20 = 2081;
        v21 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected registration", "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47B0 != -1)
        {
          sub_10188FE40();
        }
      }

      v9 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v10 = *a2;
        *buf = 68289795;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2050;
        v17 = v10;
        v18 = 2082;
        v19 = "assert";
        v20 = 2081;
        v21 = "false";
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Streaming/CLStreamedLocationProvider.mm", 281, "registerForNotificationInternal");
LABEL_19:
      sub_10188FE40();
    }
  }

  if (*(a1 + 144))
  {
    sub_10048AA04(a1, a3);
  }

  return 1;
}

void sub_10048B54C(id *result, __n128 a2)
{
  if (*(result + 42) || (v4 = qword_1026563B0) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v10[0] = *(v4 + 16);
      if (sub_10000608C(result, v10, 1))
      {
        v3 = *(v4 + 20);
      }

      v4 = *v4;
    }

    while (v4);
  }

  v5 = *(result + 36);
  if (v5 != v3)
  {
    if (v5)
    {
      if (!v3)
      {
        [result[20] setNextFireDelay:1.79769313e308];
        v10[0] = 0;
        (*(*result + 15))(result, v10);
        v10[0] = 1;
        (*(*result + 15))(result, v10);
        v10[0] = 2;
        (*(*result + 15))(result, v10);
      }
    }

    else
    {
      [result[20] setNextFireDelay:5.0];
    }

    if (*(result + 180) == 1)
    {
      sub_10048C4C0(result, v3, a2);
    }

    *(result + 36) = v3;
    v6 = 30.0;
    if (!v3)
    {
      v6 = 1.79769313e308;
    }

    [result[19] setNextFireDelay:v6];
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(result + 36);
      v10[0] = 68289282;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Changing requested granularity, granularity:%{public, location:CLLocationStreamingGranularity}lld}", v10, 0x1Cu);
    }

    sub_10048AA04(result, v8);
  }
}

uint64_t sub_10048B794(id *a1, unsigned int *a2, __n128 a3)
{
  v3 = *a2;
  if (*a2 > 0x27)
  {
    goto LABEL_9;
  }

  if (((1 << v3) & 0x8000000238) != 0)
  {
    return 1;
  }

  if (((1 << v3) & 7) != 0)
  {
    sub_10048B54C(a1, a3);
    return 1;
  }

  if (((1 << v3) & 0x30020000) == 0)
  {
LABEL_9:
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v6 = *a2;
      *buf = 68289795;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47B0 != -1)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v7 = qword_1025D47B8;
      if (os_signpost_enabled(qword_1025D47B8))
      {
        v8 = *a2;
        *buf = 68289795;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2050;
        v17 = v8;
        v18 = 2082;
        v19 = "assert";
        v20 = 2081;
        v21 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected registration", "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47B0 != -1)
        {
          sub_10188FE40();
        }
      }

      v9 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v10 = *a2;
        *buf = 68289795;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2050;
        v17 = v10;
        v18 = 2082;
        v19 = "assert";
        v20 = 2081;
        v21 = "false";
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Streaming/CLStreamedLocationProvider.mm", 326, "unregisterForNotificationInternal");
LABEL_19:
      sub_10188FE40();
    }
  }

  if (*(a1 + 36))
  {
    sub_10048AA04(a1, a3);
  }

  return 1;
}

void sub_10048BA60(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 96);
  if ((*(a3 + 96) & 0xFFFFFFF7) == 1)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a3 + 4);
      v7 = *(a3 + 12);
      v8 = *(a3 + 20);
      v9 = *(a3 + 44);
      v10 = *(a3 + 60);
      v11 = *(a3 + 96);
      v12 = *(a3 + 28);
      v13 = *(a3 + 36);
      v14 = *(a3 + 144);
      v15 = *(a3 + 52);
      v16 = *(a3 + 68);
      v17 = *(a3 + 140);
      v18 = *(a3 + 76);
      v19 = 134548737;
      v20 = v6;
      v21 = 2053;
      v22 = v7;
      v23 = 2050;
      v24 = v8;
      v25 = 2049;
      v26 = v9;
      v27 = 2049;
      v28 = v10;
      v29 = 1026;
      v30 = v11;
      v31 = 2049;
      v32 = v12;
      v33 = 2050;
      v34 = v13;
      v35 = 2049;
      v36 = v14;
      v37 = 2049;
      v38 = v15;
      v39 = 2049;
      v40 = v16;
      v41 = 1025;
      v42 = v17;
      v43 = 2050;
      v44 = v18;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxStreamed, Send, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f,ellipsoidalAlt,%{private}.1f,speedUnc,%{private}.1f,courseUnc,%{private}.1f,signalEnv,%{private}d,timestamp,%{public}.3f", &v19, 0x7Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101890484(a3, v3);
    }
  }
}

id sub_10048BBFC(uint64_t a1, __n128 a2)
{
  if (*(a1 + 200))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient attempting to create retry discovery timer while another one still exists}", buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v4 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient attempting to create retry discovery timer while another one still exists", "{msg%{public}.0s:#Multiclient attempting to create retry discovery timer while another one still exists}", buf, 0x12u);
    }

    [*(a1 + 200) invalidate];

    *(a1 + 200) = 0;
  }

  v5 = [*(a1 + 40) newTimer];
  *(a1 + 200) = v5;
  [v5 setNextFireDelay:1.79769313e308];
  [*(a1 + 200) setFireInterval:5.0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10048BDE0;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  return [*(a1 + 200) setHandler:v7];
}

id sub_10048BDE8(uint64_t a1, __n128 a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10048C648;
  v8[3] = &unk_1024565A0;
  v8[4] = a1;
  if (*(a1 + 181))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient looking for candidate streaming sources}", &buf, 0x12u);
    }

    v4 = *(a1 + 192);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10016C7E4;
    v7[3] = &unk_1024565C8;
    v7[4] = v8;
    v7[5] = a1;
    return [v4 findCandidateServersWithCompletion:v7];
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      buf = 68289026;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient skipping discovery because first unlock has yet to happen, but will retry in case we get unlocked}", &buf, 0x12u);
    }

    return [*(a1 + 200) setNextFireDelay:5.0];
  }
}

id sub_10048BFD8(uint64_t a1, __n128 a2)
{
  if (*(a1 + 208))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient attempting to create reassert timer while another one still exists}", buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v4 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient attempting to create reassert timer while another one still exists", "{msg%{public}.0s:#Multiclient attempting to create reassert timer while another one still exists}", buf, 0x12u);
    }

    [*(a1 + 208) invalidate];

    *(a1 + 208) = 0;
  }

  v5 = [*(a1 + 40) newTimer];
  *(a1 + 208) = v5;
  [v5 setNextFireDelay:1.79769313e308];
  [*(a1 + 208) setFireInterval:15.0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10048C1BC;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  return [*(a1 + 208) setHandler:v7];
}

_DWORD *sub_10048C1BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[36] == 3)
  {
    return sub_10048C1D8(result, 0);
  }

  return result;
}

id sub_10048C1D8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", a2), @"kCLLocationStreamingMessageRapportLocationStreamingActionKey"}];
  if (sub_10048CBA8(a1))
  {
    v5 = [NSNumber numberWithBool:1];
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  [v4 setObject:v5 forKeyedSubscript:@"kCLLocationStreamingMessageIncludeMotionKey"];
  v13 = 28;
  if (sub_10000608C(a1, &v13, 1))
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  [v4 setObject:v6 forKeyedSubscript:@"kCLLocationStreamingMessageInFitnessSessionKey"];
  v13 = 29;
  if (sub_10000608C(a1, &v13, 1))
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [v4 setObject:v7 forKeyedSubscript:@"kCLLocationStreamingMessageActivityTypeAirborneKey"];
  if (*(a1 + 172))
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  [v4 setObject:v8 forKeyedSubscript:@"kCLLocationStreamingMessageEmergencyEnablementKey"];
  v13 = 17;
  if (sub_10000608C(a1, &v13, 1))
  {
    v9 = &__kCFBooleanTrue;
  }

  else
  {
    v9 = &__kCFBooleanFalse;
  }

  [v4 setObject:v9 forKeyedSubscript:@"kCLLocationStreamingMessageMapMatching"];
  v10 = *(a1 + 184);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10048CC78;
  v12[3] = &unk_1024565E8;
  v12[4] = a2;
  return [v10 sendRequestID:@"com.apple.locationd.rapport.stream-request" request:v4 destinationID:RPDestinationIdentifierDirectPeer options:0 responseHandler:v12];
}

void sub_10048C3D4(uint64_t a1, __n128 a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (*a4 == 1 && *(a5 + 4) == 1)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient got first unlock notification, now we can stream!}", v7, 0x12u);
    }

    *(a1 + 181) = 1;
  }
}

void sub_10048C4C0(id *a1, int a2, __n128 a3)
{
  if (a2 == 3)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient want to get best possible accuracy, and will request from nearby devices}", &v8, 0x12u);
    }

    sub_10048BBFC(a1, v5);
    sub_10048BDE8(a1, v6);
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient no longer need to stream because granularity no longer Best}", &v8, 0x12u);
    }

    [a1[25] invalidate];

    a1[25] = 0;
    [a1[24] invalidateAndReleaseProbeClients];
    [a1[23] invalidate];

    a1[23] = 0;
  }
}

BOOL sub_10048C648(uint64_t a1, void *a2, __n128 a3)
{
  v4 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2081;
    v19 = [a2 UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient registering a server, effectiveID:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = [*(v4 + 192) deviceWithEffectiveID:a2];
  if (v6)
  {
    [*(v4 + 200) invalidate];

    *(v4 + 200) = 0;
    v7 = *(v4 + 40);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10048C8DC;
    v13[3] = &unk_102449BC0;
    v13[4] = v6;
    v13[5] = v4;
    [v7 afterInterval:v13 async:1.0];
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v8 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v9 = [a2 UTF8String];
      *buf = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient failed to find any already-discovered device with ID, id:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v10 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v11 = [a2 UTF8String];
      *buf = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient failed to find any already-discovered device with ID", "{msg%{public}.0s:#Multiclient failed to find any already-discovered device with ID, id:%{private, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  return v6 != 0;
}

void sub_10048C8E8(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(a1 + 184))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v15 = 2082;
      v16 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient attempting to re-register streaming link, but we already have one}", &buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v4 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      buf = 68289026;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient attempting to re-register streaming link, but we already have one", "{msg%{public}.0s:#Multiclient attempting to re-register streaming link, but we already have one}", &buf, 0x12u);
    }
  }

  else
  {
    if (!a2)
    {
      sub_101890634();
    }

    *(a1 + 184) = objc_alloc_init(RPCompanionLinkClient);
    [*(a1 + 184) setDispatchQueue:{objc_msgSend(*(a1 + 40), "queue")}];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10048CFD4;
    v13[3] = &unk_102449A78;
    v13[4] = a1;
    [*(a1 + 184) setInvalidationHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10048D0B4;
    v12[3] = &unk_102449A78;
    v12[4] = a1;
    v7 = [*(a1 + 184) setDisconnectHandler:v12];
    sub_10001A3E8(v7, v8);
    if (sub_100717D04())
    {
      [*(a1 + 184) setFlags:1];
      v9 = 0x380000103C04;
    }

    else
    {
      v9 = 65538;
    }

    [*(a1 + 184) setControlFlags:v9];
    [*(a1 + 184) setDestinationDevice:a2];
    v10 = *(a1 + 184);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10048D1A8;
    v11[3] = &unk_102449B88;
    v11[4] = a1;
    [v10 activateWithCompletion:v11];
  }
}

uint64_t sub_10048CBA8(uint64_t a1)
{
  v1 = qword_1026563B0;
  if (!qword_1026563B0)
  {
    return 0;
  }

  while (1)
  {
    v9 = *(v1 + 16);
    v10 = &v9;
    v3 = sub_100024014(a1 + 56, &v9, &unk_101C66300, &v10);
    v4 = v3[5];
    if (v4 != v3 + 6)
    {
      break;
    }

LABEL_10:
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  while ((*(v4 + 57) & 1) == 0)
  {
    v5 = v4[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v4[2];
        v7 = *v6 == v4;
        v4 = v6;
      }

      while (!v7);
    }

    v4 = v6;
    if (v6 == v3 + 6)
    {
      goto LABEL_10;
    }
  }

  return 1;
}

void sub_10048CC78(uint64_t a1, void *a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  if (a5 || ![a2 objectForKeyedSubscript:{@"kCLLocationStreamingMessageRapportLocationStreamingActionKey", a3.n128_f64[0]}])
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v18 = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = a5;
      v24 = 2113;
      v25 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient failed to send streaming action event, error:%{public, location:escape_only}@, resp:%{private, location:escape_only}@}", &v18, 0x26u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v8 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v18 = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = a5;
      v24 = 2113;
      v25 = a2;
      v9 = "#Multiclient failed to send streaming action event";
      v10 = "{msg%{public}.0s:#Multiclient failed to send streaming action event, error:%{public, location:escape_only}@, resp:%{private, location:escape_only}@}";
      v11 = v8;
      v12 = 38;
LABEL_9:
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, &v18, v12);
    }
  }

  else
  {
    v14 = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLLocationStreamingMessageRapportLocationStreamingActionKey", "intValue"}];
    if (*(a1 + 32) == v14)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE2C();
      }

      v15 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v18 = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2050;
        v23 = v14;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient action OK, action:%{public, location:CLLocationMultiStreamingAction}lld}", &v18, 0x1Cu);
      }

      return;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v16 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v14;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient unexpected action returned in response to request, action:%{public, location:CLLocationMultiStreamingAction}lld}", &v18, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v17 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v14;
      v9 = "#Multiclient unexpected action returned in response to request";
      v10 = "{msg%{public}.0s:#Multiclient unexpected action returned in response to request, action:%{public, location:CLLocationMultiStreamingAction}lld}";
      v11 = v17;
      v12 = 28;
      goto LABEL_9;
    }
  }
}

id sub_10048CFD4(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient invalidating server streaming link}", v5, 0x12u);
  }

  sub_10048C1D8(v2, 1);
  return [*(v2 + 192) invalidateAndReleaseProbeClients];
}

void sub_10048D0B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_1018907C8();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient streamer got disconnected, invalidating connection and setup new discovery.}", v4, 0x12u);
  }

  [*(v1 + 192) invalidateAndReleaseProbeClients];
  [*(v1 + 184) invalidate];

  *(v1 + 184) = 0;
  sub_10048C4C0(v1, *(v1 + 144), v3);
}