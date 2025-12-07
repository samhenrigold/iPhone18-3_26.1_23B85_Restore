void *sub_10009A4A0(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 6);
    if (v3 < 1)
    {
      v5 = 20 - v3;
      v6 = &v2[-(v5 / 0x15)];
      *result = v6;
      v4 = *v6 + 192 * (21 * (v5 / 0x15) - v5) + 3840;
    }

    else
    {
      *result = &v2[v3 / 0x15];
      v4 = v2[v3 / 0x15] + 192 * (v3 % 0x15);
    }

    result[1] = v4;
  }

  return result;
}

BOOL sub_10009A55C(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  v3 = sub_10001CF3C();
  result = 0;
  if (v3)
  {
    if (*a1 == 1)
    {
      return *(a1 + 144) == 27;
    }
  }

  return result;
}

unint64_t sub_10009A5A8(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  v3 = sub_10001CF3C();
  LOBYTE(v4) = 0;
  if (v3)
  {
    if (*a1 == 1)
    {
      v5 = *(a1 + 144);
      v6 = v5 > 0x31;
      v4 = 0x23E8000000000uLL >> v5;
      if (v6)
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4 & 1;
}

uint64_t sub_10009A600(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return CLMotionActivity::isTypePedestrian();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009A61C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 392);
  if (v2 == 2)
  {
    if (a2)
    {
      *(a1 + 400) = 3;
    }

    else
    {
      v8 = *(a1 + 400) - 1;
      *(a1 + 400) = v8;
      if (!v8)
      {
        v2 = 1;
        *(a1 + 392) = 1;
        v7 = 12;
        goto LABEL_21;
      }
    }

    v2 = 2;
    return v2 == 2;
  }

  if (v2 == 1)
  {
    if (a2)
    {
      v6 = *(a1 + 400) - 1;
      *(a1 + 400) = v6;
      if (!v6)
      {
        v2 = 2;
        *(a1 + 392) = 2;
        v7 = 3;
LABEL_21:
        *(a1 + 400) = v7;
        return v2 == 2;
      }
    }

    else
    {
      *(a1 + 400) = 12;
    }

    v2 = 1;
    return v2 == 2;
  }

  if (v2)
  {
    return v2 == 2;
  }

  v3 = *(a1 + 400) - 1;
  *(a1 + 400) = v3;
  if (!v3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    *(a1 + 392) = v4;
    v5 = 12;
    if (a2)
    {
      v5 = 3;
    }

    *(a1 + 400) = v5;
  }

  return a2;
}

BOOL sub_10009A6E4(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a3 / a2;
  v11 = a2 == 0.0;
  v5 = 0.0;
  if (!v11)
  {
    v5 = v4;
  }

  v6 = *(a1 + 1312);
  switch(v6)
  {
    case 2:
      if (v5 < 2.5)
      {
        *(a1 + 1316) = 3;
        goto LABEL_25;
      }

      if (a4 == 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_101A3472C();
        }

        v14 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "How can we generate pedometer distance with no time at all?", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A357B8();
        }

        if (qword_1025D4270 != -1)
        {
          sub_101A344C8();
        }

        v15 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2082;
          v23 = "assert";
          v24 = 2081;
          v25 = "false";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D4270 != -1)
          {
            goto LABEL_44;
          }
        }

        while (1)
        {
          v16 = qword_1025D4278;
          if (os_signpost_enabled(qword_1025D4278))
          {
            *buf = 68289539;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "assert";
            v24 = 2081;
            v25 = "false";
            _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D4270 != -1)
            {
              sub_101A344C8();
            }
          }

          v17 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "assert";
            v24 = 2081;
            v25 = "false";
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/StepCount/CLStepDistanceFusion.mm", 1788, "updateVehicularStateMachine");
LABEL_44:
          sub_101A344C8();
        }
      }

      v9 = *(a1 + 1316) - 1;
      *(a1 + 1316) = v9;
      v11 = a3 / a4 > 13.0 || v5 > 6.0 || v9 == 0;
      if (!v11)
      {
        goto LABEL_25;
      }

      *(a1 + 1312) = 0x800000001;
LABEL_24:
      v6 = 1;
      return v6 == 1;
    case 1:
      if (v5 >= 2.5)
      {
        *(a1 + 1316) = 8;
      }

      else
      {
        v8 = *(a1 + 1316) - 1;
        *(a1 + 1316) = v8;
        if (!v8)
        {
          *(a1 + 1312) = 0x300000002;
LABEL_25:
          v6 = 2;
          return v6 == 1;
        }
      }

      goto LABEL_24;
    case 0:
      v7 = *(a1 + 1316) - 1;
      *(a1 + 1316) = v7;
      if (v7)
      {
        v6 = 0;
      }

      else
      {
        v12 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v5 < 2.5), 0x1FuLL)), 0x300000002, 0x800000001);
        *(a1 + 1312) = v12;
        v6 = v12.i32[0];
      }

      break;
  }

  return v6 == 1;
}

void *sub_10009AA90(double *a1, uint64_t a2)
{
  v63 = 0.0;
  v64 = 0.0;
  v4 = *(a2 + 24);
  if (v4 <= 0.0)
  {
    v4 = a1[31];
    if (v4 <= 0.0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_10032515C();
      }

      v5 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[RunningSpeedKF] feedStepCountEntry - firstStepTime & previous step count unset. Assuming 1 epoch prior", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B00398();
      }

      v4 = *(a2 + 16) + -2.56;
    }
  }

  v6 = *(a2 + 240);
  v7 = *(a2 + 48);
  v59 = v6 - v4;
  v60 = *(a2 + 264);
  if (v7 <= 0.0)
  {
    v8 = a1[67];
  }

  else
  {
    v8 = *(a2 + 288) / v7;
  }

  v57 = *(a2 + 240);
  v58 = vabdd_f64(a1[65], v4);
  v62 = 0;
  v61 = 0;
  v9 = fmin(fmin(v7, v60), v59);
  v10 = v9 > 0.0;
  if (v9 > 0.0)
  {
    if (*(*a1 + 80))
    {
      v12 = 2.96714;
      if (sub_100FF8460(a1, &v62, &v61, v6))
      {
        v11.n128_f64[0] = v4;
        if (sub_100FF863C(a1, &v63, v11, v57))
        {
          sub_100FF8D0C(a1, &v63, v62, v60);
          v13 = a1[72] < 100.0;
          v12 = dbl_101D16F70[a1[72] < 100.0];
LABEL_31:
          v17 = 0.148357;
          if (v58 < 8.25)
          {
            v17 = v12;
          }

          a1[75] = v17;
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_101B0048C();
      }

      v15 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        v16 = *(*a1 + 80);
        *buf = 67240192;
        *v72 = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "[RunningSpeedKF] feedStepCountEntry - odometerSpeed is unavailable (isActive=%{public}d)", buf, 8u);
      }

      v12 = 2.96714;
      if (sub_10000A100(121, 2))
      {
        sub_101B004B4(a1);
      }
    }

    v13 = 0;
    goto LABEL_31;
  }

  if (qword_1025D4270 != -1)
  {
    sub_101B0048C();
  }

  v14 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *v72 = v7;
    *&v72[8] = 2048;
    *&v72[10] = v60;
    *&v72[18] = 2048;
    *&v72[20] = v59;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "[RunningSpeedKF] feedStepCountEntry - zero deltaPedDist (%.2f), deltaCalPedDist (%.2f) and/or deltaTime (%.2f)", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101B0048C();
    }

    v65 = 134218496;
    v66 = v7;
    v67 = 2048;
    v68 = v60;
    v69 = 2048;
    v70 = v59;
    LODWORD(v55) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "[RunningSpeedKF] feedStepCountEntry - zero deltaPedDist (%.2f), deltaCalPedDist (%.2f) and/or deltaTime (%.2f)", COERCE_DOUBLE(&v65), v55, v56);
    v54 = v53;
    sub_100152C7C("Generic", 1, 0, 2, "void CLPedometer::RunningSpeedKF::feedStepCountEntry(const CLExtendedStepCountEntry &)", "%s\n", v53);
    if (v54 != buf)
    {
      free(v54);
    }
  }

  v13 = 0;
LABEL_34:
  a1[70] = a1[70] + a1[71];
  v18 = sub_1000A0FB0(a1);
  v19 = sub_10009B318(a1);
  if (*(a2 + 256) == 1 && v8 > 0.0 && *(a2 + 296) == 1)
  {
    v21 = v19;
    if (vabdd_f64(v8, a1[67]) > 0.001 && vabdd_f64(v19, v18) > 0.1)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101B0048C();
      }

      v22 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 67);
        v24 = *(a2 + 296);
        *buf = 68290306;
        *v72 = 0;
        *&v72[4] = 2082;
        *&v72[6] = "";
        *&v72[14] = 2050;
        *&v72[16] = v8;
        *&v72[24] = 2050;
        *&v72[26] = v23;
        v73 = 1026;
        v74 = v24;
        v75 = 1026;
        v76 = v18;
        v77 = 1026;
        v78 = v21;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:[RunningSpeedKF] Reset fDistanceBuffer, currentkValue:%{public}f, previouskValue:%{public}f, energyIsCalibrated:%{public}u, biasFactor:%{public}d, biasFactorInstantaneous:%{public}d}", buf, 0x38u);
      }

      v25 = *(a1 + 81);
      v26 = *(a1 + 82);
      a1[85] = 0.0;
      v27 = (v26 - v25) >> 3;
      if (v27 >= 3)
      {
        do
        {
          operator delete(*v25);
          v25 = (*(a1 + 81) + 8);
          *(a1 + 81) = v25;
          v27 = (*(a1 + 82) - v25) >> 3;
        }

        while (v27 > 2);
      }

      v18 = 0.0;
      if (v27 == 1)
      {
        v28 = 85;
      }

      else
      {
        if (v27 != 2)
        {
          goto LABEL_50;
        }

        v28 = 170;
      }

      *(a1 + 84) = v28;
    }
  }

LABEL_50:
  a1[67] = v8;
  if (v10)
  {
    v29 = v7 * v18;
    if (v18 <= 0.0)
    {
      v29 = v60;
    }

    v30 = v29 / v59;
    if (v13)
    {
      v31 = v63;
      v20.f64[0] = v7;
      sub_100FF8E28(a1, v4, v20, v63);
      v32 = v31 / v64;
      sub_100FF8EA0(a1, v62, v32, v30);
    }

    else
    {
      sub_100FF8FE0(a1, v29 / v59);
      v32 = -INFINITY;
    }

    v35 = 0;
    *(a1 + 132) = 0;
  }

  else
  {
    v33 = *(a1 + 132);
    *(a1 + 132) = v33 + 1;
    if (v33 < 1)
    {
      v35 = 1;
      v30 = -INFINITY;
      v32 = -INFINITY;
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_101B0048C();
      }

      v34 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "[RunningSpeedKF] feedStepCountEntry - no valid non-zero measurements for 2 epochs, resetting KF", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B005D0();
      }

      v35 = 0;
      *(a1 + 9) = xmmword_101D17080;
      *(a1 + 10) = unk_101D17090;
      *(a1 + 11) = xmmword_101D170A0;
      *(a1 + 5) = xmmword_101D17040;
      *(a1 + 6) = unk_101D17050;
      *(a1 + 7) = xmmword_101D17060;
      *(a1 + 8) = unk_101D17070;
      *(a1 + 1) = xmmword_101D17000;
      *(a1 + 2) = *algn_101D17010;
      *(a1 + 3) = xmmword_101D17020;
      *(a1 + 4) = unk_101D17030;
      *(a1 + 25) = 0u;
      v36 = vdupq_n_s64(0xFFF0000000000000);
      *(a1 + 38) = v36;
      *(a1 + 39) = v36;
      *(a1 + 36) = xmmword_101D170B8;
      a1[1] = 0.0;
      a1[24] = 0.0;
      a1[41] = 0.0;
      *(a1 + 37) = 0u;
      *(a1 + 39) = 0u;
      *(a1 + 33) = 0u;
      *(a1 + 35) = 0u;
      *(a1 + 29) = 0u;
      *(a1 + 31) = 0u;
      *(a1 + 27) = 0u;
      *(a1 + 34) = 0u;
      *(a1 + 37) = unk_101D170C8;
      *(a1 + 35) = xmmword_101D16F60;
      *(a1 + 360) = 0;
      a1[44] = 0.0;
      *(a1 + 21) = 0u;
      *(a1 + 23) = 0u;
      *(a1 + 192) = 0;
      *(a1 + 49) = 0u;
      *(a1 + 51) = 0u;
      *(a1 + 53) = 0u;
      *(a1 + 55) = 0u;
      *(a1 + 57) = 0u;
      *(a1 + 59) = 0u;
      *(a1 + 61) = 0u;
      *(a1 + 63) = 0u;
      *(a1 + 132) = 0;
      *(a1 + 703) = 0;
      *(a1 + 43) = 0u;
      v30 = -INFINITY;
      v32 = -INFINITY;
      a1[67] = 0.0;
    }
  }

  sub_10009B3C0(a1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v38 = *(a1 + 69);
  v40 = sub_1000A144C(v39, (a1 + 68), v35);
  v42 = v63;
  v41 = v64;
  v43 = *(a1 + 35);
  v44 = *(a1 + 72);
  v45 = *(a1 + 75);
  v46 = *(a1 + 38);
  v47 = *(a1 + 39);
  v48 = v62;
  if (v58 >= 8.25)
  {
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v49 = *(a1 + 704);
    v50 = *(a1 + 705);
  }

  v51 = v61;
  a1[42] = v4;
  a1[43] = v57;
  *(a1 + 44) = v38;
  *(a1 + 360) = v40;
  a1[46] = v30;
  a1[47] = v32;
  *(a1 + 384) = v13;
  *(a1 + 385) = v10;
  a1[49] = v7;
  a1[50] = v60;
  a1[51] = v42;
  a1[52] = v59;
  a1[53] = v41;
  a1[54] = Current - v57;
  a1[55] = v18;
  *(a1 + 28) = v43;
  *(a1 + 29) = v47;
  *(a1 + 60) = v44;
  *(a1 + 61) = v45;
  *(a1 + 31) = v46;
  *(a1 + 128) = v48;
  *(a1 + 516) = v49;
  *(a1 + 517) = v50;
  *(a1 + 518) = v58 < 8.25;
  *(a1 + 519) = v51;
  return memcpy(a1 + 1, a2, 0x148uLL);
}

double sub_10009B318(void *a1)
{
  v1 = a1[85];
  result = 0.0;
  if (v1 >= 2)
  {
    v3 = (v1 - 2);
    if (v1 <= v3)
    {
      sub_1000432E8("deque");
    }

    v4 = a1[81];
    v5 = a1[84];
    v6 = *(v4 + 8 * ((v1 + v5 - 1) / 0xAA)) + 24 * ((v1 + v5 - 1) % 0xAA);
    v7 = *(v4 + 8 * ((v5 + v3) / 0xAA)) + 24 * ((v5 + v3) % 0xAA);
    v8 = *(v6 + 8) - *(v7 + 8);
    if (v8 > 0.0)
    {
      return (*(v6 + 16) - *(v7 + 16)) / v8;
    }
  }

  return result;
}

void sub_10009B3C0(void *result, double a2)
{
  v2 = result[85];
  if (v2)
  {
    v5 = result[81];
    v6 = result[84];
    v7 = a2 - *(*(v5 + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA));
    if (v7 <= 111.846818)
    {
LABEL_6:
      v9 = *(*(v5 + 8 * ((v2 + v6 - 1) / 0xAA)) + 24 * ((v2 + v6 - 1) % 0xAA) + 16) - *(*(v5 + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA) + 16);
      if (v9 > 150.0)
      {
        do
        {
          result[85] = v2 - 1;
          result[84] = v6 + 1;
          sub_10027E208((result + 80), 1);
          v2 = result[85];
          v6 = result[84];
          v9 = *(*(result[81] + 8 * ((v2 + v6 - 1) / 0xAA)) + 24 * ((v2 + v6 - 1) % 0xAA) + 16) - *(*(result[81] + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA) + 16);
        }

        while (v9 > 150.0 && v2 != 0);
      }

      if (v7 <= 0.0 || v9 <= 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10032515C();
        }

        v11 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
        {
          v12 = 134218240;
          v13 = v7;
          v14 = 2048;
          v15 = v9;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[RunningSpeedKF] trimDistanceBuffer - invalid buffer timeDiff or odoDistDiff: %.2f, %.2f", &v12, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B00FA0();
        }
      }
    }

    else
    {
      while (1)
      {
        v8 = result[85];
        if (!v8)
        {
          break;
        }

        result[85] = v8 - 1;
        result[84] = v6 + 1;
        sub_10027E208((result + 80), 1);
        v5 = result[81];
        v6 = result[84];
        v7 = a2 - *(*(v5 + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA));
        if (v7 <= 111.846818)
        {
          v2 = result[85];
          if (!v2)
          {
            return;
          }

          goto LABEL_6;
        }
      }
    }
  }
}

BOOL sub_10009B650(uint64_t a1)
{
  v2 = sub_1000A154C(a1);
  result = 0;
  if (v2 == 1 && *(a1 + 208) != 1)
  {
    return *(a1 + 96) == 17;
  }

  return result;
}

void sub_10009B69C(void *a1, uint64_t a2, int a3, unsigned int a4, double a5)
{
  v9 = *(a2 + 88);
  v10 = *(a2 + 216);
  if ((a1[18] & 1) == 0)
  {
    a1[6] = 0;
    a1[7] = 0;
    *(a1 + 34) = 1;
    *(a1 + 2) = a5 + 5.0 + 15.0;
    *(a1 + 3) = a5;
    *(a1 + 4) = a5;
    *(a1 + 5) = a5 + -2.56;
    *(a1 + 144) = 1;
  }

  if (v9 == 0.0)
  {
    v11 = 0;
    *(a1 + 34) = 0;
  }

  else
  {
    v11 = *(a1 + 34);
    if (v11 > 2)
    {
      if (a5 - *(a1 + 8) <= 7.68)
      {
        v11 = 1;
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  if (a3 < 1)
  {
LABEL_9:
    v11 = 0;
    *(a1 + 34) = 0;
  }

LABEL_10:
  v12 = *(a1 + 7);
  if (v10 == 0.0 || v12 == 0.0)
  {
    v13 = v10 != 0.0;
    if (v12 != 0.0)
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = vabdd_f64(1.0 / v10, 1.0 / v12) > 1.0 / v12 * 0.15;
  }

  if (a3 < 1)
  {
    v18 = !v13;
    if (a3 == -1)
    {
      v18 = 0;
    }

    if (!v18)
    {
      *(a1 + 34) = 1;
      *(a1 + 2) = a5 + 5.0 + 15.0;
      *(a1 + 3) = a5;
    }

    v17 = 4;
    v16 = a5;
    goto LABEL_29;
  }

  v15 = v9 > 0.0 && v11 == 0;
  if (v15 || v13)
  {
    *(a1 + 34) = 1;
    *(a1 + 3) = a5;
    v16 = a5 + 5.0 + 15.0;
    v17 = 2;
LABEL_29:
    *&a1[v17] = v16;
  }

  sub_10009C0B0(a1, a5, v9);
  v67 = -1.0;
  v68 = -1.0;
  v19 = sub_10009D1B4(a1);
  if (a3 >= 1 && v9 > 0.0)
  {
    v20 = v19;
    if (v19 > 0.0)
    {
      v21 = a5 - sub_100A5DC34(v9);
      if (v21 >= v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v23 = sub_10009C154(a1, a5);
      if (v23 - v22 <= 15.0)
      {
        v29 = 2;
LABEL_63:
        v37 = 0;
        *(a1 + 34) = v29;
        goto LABEL_65;
      }

      v24 = sub_100A5DCA8(v22, v23, a1, *a1);
      v68 = v24;
      v25 = v23 + -20.0;
      if (v22 > v23 + -20.0)
      {
        v25 = v22;
      }

      v66 = v25;
      v26 = sub_100A5DCA8(v25, v23, a1, *a1);
      v67 = v26;
      v27 = *(a1 + 1);
      v28 = -(a5 - *(a1 + 5));
      if (*(a1 + 34) >= 3)
      {
        v24 = *(a1 + 11);
      }

      else
      {
        if (v27 != 0.0)
        {
          *(a1 + 10) = 1.0 - exp(v28 / v27);
        }

        *(a1 + 15) = v26;
      }

      *(a1 + 34) = 3;
      v30 = 1.0;
      if (v27 != 0.0)
      {
        v30 = 1.0 - exp(v28 / v27);
      }

      *(a1 + 26) = 3;
      *(a1 + 96) = 0;
      *(a1 + 10) = v30;
      *(a1 + 11) = v24;
      *(a1 + 18) = 3;
      *(a1 + 14) = 1.0 - exp(v28 / fmax(v27, 15.0));
      *(a1 + 128) = 0;
      sub_1000A6810((a1 + 9), &v68);
      sub_1000A6810((a1 + 13), &v67);
      v31 = *(a1 + 11);
      v32 = *(a1 + 15);
      if (v31 == 0.0 || v32 == 0.0)
      {
        if (v31 == 0.0 && v32 == 0.0)
        {
          goto LABEL_58;
        }
      }

      else if (vabdd_f64(1.0 / v32, 1.0 / v31) <= 1.0 / v31 * 0.15)
      {
LABEL_58:
        *(a1 + 8) = v23;
        goto LABEL_59;
      }

      v33 = vabdd_f64(v31, v9);
      if (vabdd_f64(v32, v9) < v33 && vabdd_f64(v67, v9) < v33)
      {
        v34 = *(a1 + 1);
        v35 = 1.0;
        if (v34 != 0.0)
        {
          v35 = 1.0 - exp(v28 / v34);
        }

        *(a1 + 96) = 0;
        *(a1 + 10) = v35;
        *(a1 + 11) = v32;
        *(a1 + 18) = 3;
        *(a1 + 34) = 4;
        *(a1 + 2) = a5;
        *(a1 + 3) = v66;
      }

      goto LABEL_58;
    }
  }

LABEL_59:
  if (*(a1 + 34) < 3)
  {
    v37 = 0;
    goto LABEL_65;
  }

  v29 = 0;
  v36 = *(a1 + 11);
  if (v36 > 1.6777 || v36 < 0.0909)
  {
    goto LABEL_63;
  }

  v37 = 1;
LABEL_65:
  *(a1 + 35) = 0;
  v38 = v9;
  if (v9 > 0.0)
  {
    v38 = v9;
    if (a3 == 2)
    {
      v38 = v9;
      if (v37)
      {
        *(a1 + 35) = 1;
        v38 = *(a1 + 11);
      }
    }
  }

  v39 = sub_1000A1844(a1);
  v40 = v39;
  if (a5 + -120.0 >= v39)
  {
    v41 = a5 + -120.0;
  }

  else
  {
    v41 = v39;
  }

  v42 = sub_10009C154(a1, a5);
  v43 = 0;
  v44 = 0.0;
  if (a3 == 2 && v40 > 0.0 && v42 - v41 > 15.0)
  {
    v44 = sub_100A5DCA8(v41, v42, a1, *a1);
    v43 = v44 < 1.6777 && v44 > 0.0909;
  }

  if (qword_1025D4270 != -1)
  {
    sub_1019D17D4();
  }

  v45 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v46 = *(a1 + 34);
    if (v46 < 3)
    {
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v47 = a1[11];
      v48 = a1[15];
    }

    v49 = v46;
    v50 = *(a1 + 35);
    v51 = v44;
    v53 = a1[3];
    v52 = a1[4];
    *buf = 136323074;
    v134 = "PaceFusion_Epoch_Time";
    v135 = 2048;
    v136 = a5;
    v137 = 2080;
    v138 = "PaceFusion_Epoch_PedometerPace";
    v139 = 2048;
    v140 = v9;
    v141 = 2080;
    v142 = "PaceFusion_Epoch_PedometerPaceUncalibrated";
    v143 = 2048;
    v144 = v10;
    v145 = 2080;
    v146 = "PaceFusion_Epoch_SmoothOdometerPace";
    v147 = 2048;
    v148 = v47;
    v149 = 2080;
    v150 = "PaceFusion_Epoch_SmoothShortOdometerPace";
    v151 = 2048;
    v152 = v48;
    v153 = 2080;
    v154 = "PaceFusion_Epoch_LongMeanOdometerPace";
    v155 = 2048;
    v156 = v68;
    v157 = 2080;
    v158 = "PaceFusion_Epoch_ShortMeanOdometerPace";
    v159 = 2048;
    v160 = *&v67;
    v161 = 2080;
    v162 = "PaceFusion_Epoch_PaceResetTime";
    v163 = 2048;
    v164 = v53;
    v165 = 2080;
    v166 = "PaceFusion_Epoch_FinalFusedPace";
    v167 = 2048;
    v168 = v38;
    v169 = 2080;
    v170 = "PaceFusion_Epoch_OdometerPaceQuality";
    v171 = 2048;
    v172 = a3;
    v173 = 2080;
    v174 = "PaceFusion_Epoch_MeanPaceState";
    v175 = 2048;
    v176 = v49;
    v177 = 2080;
    v178 = "PaceFusion_Epoch_PaceFusionOutput";
    v179 = 2048;
    v180 = v50;
    v181 = 2080;
    v182 = "PaceFusion_Epoch_DoRequestPureGpsOdometerPace";
    v183 = 2048;
    v184 = a4;
    v185 = 2080;
    v186 = "PaceFusion_Epoch_IsPureGpsOdometerPaceAvailable";
    v187 = 2048;
    v188 = v43;
    v189 = 2080;
    v190 = "PaceFusion_Epoch_PureGpsOdometerPace";
    v191 = 2048;
    v192 = v51;
    v193 = 2080;
    v194 = "PaceFusion_Epoch_PureGpsOdometerPaceResetTime";
    v195 = 2048;
    v196 = v52;
    _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x142u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_1019D17D4();
    }

    v54 = *(a1 + 34);
    if (v54 < 3)
    {
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v55 = a1[11];
      v56 = a1[15];
    }

    v57 = v54;
    v58 = *(a1 + 35);
    v59 = v44;
    v61 = a1[3];
    v60 = a1[4];
    v69 = 136323074;
    v70 = "PaceFusion_Epoch_Time";
    v71 = 2048;
    v72 = a5;
    v73 = 2080;
    v74 = "PaceFusion_Epoch_PedometerPace";
    v75 = 2048;
    v76 = v9;
    v77 = 2080;
    v78 = "PaceFusion_Epoch_PedometerPaceUncalibrated";
    v79 = 2048;
    v80 = v10;
    v81 = 2080;
    v82 = "PaceFusion_Epoch_SmoothOdometerPace";
    v83 = 2048;
    v84 = v55;
    v85 = 2080;
    v86 = "PaceFusion_Epoch_SmoothShortOdometerPace";
    v87 = 2048;
    v88 = v56;
    v89 = 2080;
    v90 = "PaceFusion_Epoch_LongMeanOdometerPace";
    v91 = 2048;
    v92 = v68;
    v93 = 2080;
    v94 = "PaceFusion_Epoch_ShortMeanOdometerPace";
    v95 = 2048;
    v96 = *&v67;
    v97 = 2080;
    v98 = "PaceFusion_Epoch_PaceResetTime";
    v99 = 2048;
    v100 = v61;
    v101 = 2080;
    v102 = "PaceFusion_Epoch_FinalFusedPace";
    v103 = 2048;
    v104 = v38;
    v105 = 2080;
    v106 = "PaceFusion_Epoch_OdometerPaceQuality";
    v107 = 2048;
    v108 = a3;
    v109 = 2080;
    v110 = "PaceFusion_Epoch_MeanPaceState";
    v111 = 2048;
    v112 = v57;
    v113 = 2080;
    v114 = "PaceFusion_Epoch_PaceFusionOutput";
    v115 = 2048;
    v116 = v58;
    v117 = 2080;
    v118 = "PaceFusion_Epoch_DoRequestPureGpsOdometerPace";
    v119 = 2048;
    v120 = a4;
    v121 = 2080;
    v122 = "PaceFusion_Epoch_IsPureGpsOdometerPaceAvailable";
    v123 = 2048;
    v124 = v43;
    v125 = 2080;
    v126 = "PaceFusion_Epoch_PureGpsOdometerPace";
    v127 = 2048;
    v128 = v59;
    v129 = 2080;
    v130 = "PaceFusion_Epoch_PureGpsOdometerPaceResetTime";
    v131 = 2048;
    v132 = v60;
    LODWORD(v64) = 322;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", &v69, v64, v65, v66, *&v67, v68);
    v63 = v62;
    sub_100152C7C("Generic", 1, 0, 2, "double CLPedometerPaceFusion::computeFusedPace(CFAbsoluteTime, const CLExtendedStepCountEntry &, CLPedometer::FusionOdometerQuality, BOOL)", "%s\n", v62);
    if (v63 != buf)
    {
      free(v63);
    }
  }

  *(a1 + 6) = v9;
  *(a1 + 7) = v10;
  *(a1 + 5) = a5;
}

void sub_10009C0B0(uint64_t a1, double a2, double a3)
{
  v10 = a3 < 0.372823626;
  v6 = 1.0;
  if (!v10)
  {
    v6 = 0.0;
    if (a3 < 0.559235454)
    {
      v7 = sub_1000A1DCC(0.559235454, 0.0, 0.372823626, 1.0, a3);
      v6 = v7;
    }
  }

  v8 = (1.0 - v6) * 45.0 + 15.0;
  v9 = *(a1 + 16);
  v10 = v9 + 20.0 > a2 && v9 < a2;
  if (v10)
  {
    v8 = 6.66666667;
  }

  *(a1 + 8) = v8;
}

double sub_10009C154(void *a1, double a2)
{
  v2 = a2;
  v6 = 0;
  if (!sub_1000A1570(a2, a1, *a1, &v6))
  {
    v4 = *(*a1 + 64);
    if (v4)
    {
      return *(*(*(*a1 + 32) + 8 * ((v4 + *(*a1 + 56) - 1) / 0x15uLL)) + 192 * ((v4 + *(*a1 + 56) - 1) % 0x15uLL));
    }

    else
    {
      return -1.79769313e308;
    }
  }

  return v2;
}

uint64_t sub_10009C200(uint64_t a1, int a2)
{
  if ((a2 - 2) < 3)
  {
    return 1;
  }

  if (a2)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  if (qword_1025D4270 != -1)
  {
    sub_101A3472C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "[PaceController] isUsingOdometer - Requested while uninitialized", v6, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101A358A4();
    return 0;
  }

  return result;
}

uint64_t sub_10009C2BC(uint64_t a1, _OWORD *a2)
{
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = (*(*a1 + 16))(a1, &v16, &v14);
  if (result)
  {
    v4 = *(&v17 + 1);
    if (*(&v17 + 1) == *(&v15 + 1))
    {
      return 0;
    }

    else
    {
      if (*v17 == *(&v17 + 1))
      {
        v4 = *(v17 - 8) + 4032;
      }

      v5 = *(v4 - 192);
      v6 = *(v4 - 176);
      v7 = *(v4 - 144);
      a2[2] = *(v4 - 160);
      a2[3] = v7;
      *a2 = v5;
      a2[1] = v6;
      v8 = *(v4 - 128);
      v9 = *(v4 - 112);
      v10 = *(v4 - 80);
      a2[6] = *(v4 - 96);
      a2[7] = v10;
      a2[4] = v8;
      a2[5] = v9;
      v11 = *(v4 - 64);
      v12 = *(v4 - 48);
      v13 = *(v4 - 16);
      a2[10] = *(v4 - 32);
      a2[11] = v13;
      a2[8] = v11;
      a2[9] = v12;
      return 1;
    }
  }

  return result;
}

BOOL sub_10009C39C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x15));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 192 * (v4 % 0x15);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x15));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 192 * (v9 % 0x15);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4032;
      }

      v18 = vabdd_f64(*(v17 - 192), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4032;
        }

        v14 = v18;
        if (*(v19 - 192) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4032;
      }

      v15 -= 192;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_10009C4FC(uint64_t a1)
{
  if (sub_10009DABC(a1))
  {
    return 1;
  }

  if (*(a1 + 160) != 1)
  {
    return 0;
  }

  return CLMotionActivity::isTypeIndoorPedestrian();
}

void sub_10009C564(uint64_t a1, void *a2)
{
  v26 = [[CLOSTransaction alloc] initWithDescription:"CLStepCountNotifier.recordAndNotifyFusedStepDistance"];
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = (*a2 + 184);
    *&v4 = 134219520;
    v27 = v4;
    do
    {
      if (*(a1 + 7232) == 1)
      {
        if (qword_1025D4270 != -1)
        {
          sub_101BD36A8();
        }

        v7 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(v6 - 22);
          v9 = *(v6 - 40);
          v11 = *(v6 - 19);
          v10 = *(v6 - 18);
          v12 = *(v6 - 12);
          v13 = *(v6 - 17);
          v14 = *(v6 - 24);
          *buf = v27;
          *&buf[4] = v8;
          *&buf[12] = 1024;
          *&buf[14] = v9;
          *&buf[18] = 2048;
          *&buf[20] = v10;
          *&buf[28] = 2048;
          *&buf[30] = v11;
          *&buf[38] = 2048;
          *&buf[40] = v12;
          LOWORD(v43) = 2048;
          *(&v43 + 2) = v13;
          WORD5(v43) = 1024;
          HIDWORD(v43) = v14;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Adding Fused entry, time, %f, count, %d, raw_dist(m), %f, fused_dist(m), %f, cadence(steps/s), %f, mobility_dist(m), %f, arm_cstr_state, %d", buf, 0x40u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4270 != -1)
          {
            sub_101BD36A8();
          }

          v16 = *(v6 - 22);
          v17 = *(v6 - 40);
          v19 = *(v6 - 19);
          v18 = *(v6 - 18);
          v20 = *(v6 - 12);
          v21 = *(v6 - 17);
          v22 = *(v6 - 24);
          v28 = v27;
          v29 = v16;
          v30 = 1024;
          v31 = v17;
          v32 = 2048;
          v33 = v18;
          v34 = 2048;
          v35 = v19;
          v36 = 2048;
          v37 = v20;
          v38 = 2048;
          v39 = v21;
          v40 = 1024;
          v41 = v22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "Adding Fused entry, time, %f, count, %d, raw_dist(m), %f, fused_dist(m), %f, cadence(steps/s), %f, mobility_dist(m), %f, arm_cstr_state, %d", COERCE_DOUBLE(&v28), 64, v25, *&v26, *&v27, *(&v27 + 1));
          v24 = v23;
          sub_100152C7C("Generic", 1, 0, 2, "void CLStepCountNotifier::recordAndNotifyFusedStepDistance(const std::vector<CLStepDistanceFusionResult> &)", "%s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }
      }

      *buf = 3;
      if (sub_10000608C(a1, buf, 1) && *v6 > 0.0)
      {
        v28 = 3;
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        memset(&buf[16], 0, 32);
        *buf = *v6;
        (*(*a1 + 152))(a1, &v28, buf, 1, 0xFFFFFFFFLL, 0);
      }

      sub_10009CAE0(a1 + 144, v6 - 184);
      if ((*(a1 + 7233) & 1) == 0)
      {
        sub_1000A1DEC(*(a1 + 840), *(a1 + 3928), *(a1 + 3932), *(a1 + 3880), *(a1 + 3888), *(a1 + 3896), *(a1 + 3904), *(a1 + 3912), *(a1 + 3920));
      }

      v15 = v6 + 1;
      v6 = (v6 + 200);
    }

    while (v15 != v5);
  }
}

uint64_t sub_10009C8D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  *&v10 = __PAIR64__(v4, v3);
  v5 = *(a1 + 352);
  *(&v10 + 1) = v5;
  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v17 = v3;
    v18 = 1024;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Type,CLOscar,onBodyStatus,%d,confidence,%d,timestamp,%f", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_101AD9CD8();
    }

    v11[0] = 67109632;
    v11[1] = v3;
    v12 = 1024;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Type,CLOscar,onBodyStatus,%d,confidence,%d,timestamp,%f", v11, 24, *&v10);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitOnBodyStatus(const CMMotionCoprocessorReply::OnBodyStatus *)", "%s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  result = sub_100013B00(a1, 2, &v10, 16);
  *(a1 + 840) = v10;
  return result;
}

uint64_t sub_10009CAE0(uint64_t a1, uint64_t a2)
{
  result = sub_10009D220(*(a1 + 24), a2);
  if ((*(a1 + 41) & 1) == 0)
  {
    result = sub_100099160(*(a1 + 24) + 72);
    if (result)
    {
      *(a1 + 41) = 1;

      return sub_1013771B4(a1);
    }
  }

  return result;
}

BOOL sub_10009CB48(uint64_t a1, double *a2)
{
  result = *a2 <= 3628972800.0 && *a2 >= 441763200.0;
  if (result || (byte_1026630B4 & 1) == 0)
  {
    byte_1026630B4 = !result;
  }

  return result;
}

void *sub_10009CB8C(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 21 * (a4 - a2) - 0x5555555555555555 * (&a5[-*a4] >> 6) + 0x5555555555555555 * (&a3[-*a2] >> 6);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x15));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 192 * (v7 % 0x15));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 21 * (a2 - v9) - 0x5555555555555555 * (&a3[-*a2] >> 6) + 0x5555555555555555 * (&v10[-*v9] >> 6);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x15);
  v24[0].n128_u64[1] = v10;
  sub_10009A4A0(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_10009A4A0(v24, v6);
      sub_10023FA24(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_10009A4A0(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x15));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 192 * (v14 % 0x15));
      }

      v24[0] = v12;
      sub_10030C9A8(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x15));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 192 * (v19 % 0x15);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_10009A4A0(v24, v11);
  return v24[0].n128_u64[0];
}

unint64_t sub_10009CE08(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = *(a1 + 104);
  *(a1 + 104) = a2.n128_u64[0];
  v5 = a2.n128_f64[0] > 0.0;
  if (v4 <= a2.n128_f64[0])
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101A35BA4();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101A35CA8();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLExtendedStepCountEntry>::update(CFAbsoluteTime) [T = CLExtendedStepCountEntry]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < v2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 >> 4));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 328 * (*(a1 + 56) & 0xFLL));
  }

  v15 = (v11 + 8 * (v10 >> 4));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + (((*(a1 + 64) + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * ((*(a1 + 64) + v10) & 0xF);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 41;
    v14 += 328;
    if ((*v15 + 5248) == v14)
    {
      v18 = *(v15 + 1);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 328 * (*(a1 + 56) & 0xFLL));
  }

  return sub_1000A28B0((a1 + 24), v13, v19, v15, v14);
}

double sub_10009D1B4(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  v1 = sub_1000A09A8(*a1, &v5, v4, *(a1 + 24) + 5.0);
  result = -1.0;
  if (v1)
  {
    v3 = *(&v6 + 1);
    if (*(&v6 + 1) == *v6)
    {
      v3 = *(v6 - 8) + 4032;
    }

    return *(v3 - 192);
  }

  return result;
}

uint64_t sub_10009D220(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v22[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v23 = 256;
  v22[0] = *(a2 + 8);
  if (sub_10009CB48(v6, v22))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 408))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_1009BB4F8(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_101BD6DE4();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD6E0C(buf);
          v21[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "Maximum number of entries exceeded, throwing out oldest entry.", v21, 2);
          v19 = v18;
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLStepCountEntry>::addSuspectRecord(const T &) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_101BD36A8();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD3B9C(buf);
        v21[0] = 0;
        LODWORD(v20) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "Buffer was added to since db was inaccesible.", v21, v20);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLStepCountEntry>::addSuspectRecord(const T &) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v7 = sub_100260FC0((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_101BD6DE4();
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
        sub_101BD6DE4();
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

void sub_10009D6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10009D6FC(uint64_t *a1, uint64_t *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *a2;
    v7 = a2[40];
    v8 = a2[27];
    v9 = *(a2 + 56);
    v11 = a2[30];
    v10 = a2[31];
    v12 = a2[29];
    v13 = 136316930;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ExtendedStep,context,%s,startTime,%f,firstStepTime,%f,lastStepTime,%f,rawPace,%f,incrementalSteps,%u,odometerSpeed,%f,incrementalActiveTime,%f", &v13, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CAA08();
  }
}

_BYTE *sub_10009D900(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100099750(a4);
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

double sub_10009D9F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 156) += **(a1 + 40);
  result = **(a1 + 48) + *(v1 + 160);
  *(v1 + 160) = result;
  return result;
}

void *sub_10009DA24(unint64_t *a1, void *__src)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1002487F0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = memcpy((*(v5 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * (v7 & 0xF)), __src, 0x148uLL);
  ++a1[5];
  return result;
}

BOOL sub_10009DABC(uint64_t a1)
{
  if (sub_10009A600((a1 + 160)) & 1) != 0 || (sub_10009A5A8(a1 + 160, v2))
  {
    return 1;
  }

  return sub_10009A55C(a1 + 160, v3);
}

uint64_t sub_10009DB18(uint64_t a1, uint64_t a2, double a3)
{
  v245 = a2;
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v5 = sub_1000A31D0(a1 + 512, &v272, &v270, a3);
  if (!v5)
  {
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v20 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Inconsistency found between steps and clock. Ignoring.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A351C8();
    }

    return 1;
  }

  v8 = *(&v273 + 1);
  v7 = v273;
  v9 = *v273;
  v10 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v10 = *(v273 - 8) + 5248;
  }

  if (*(v10 - 72) == 1)
  {
    v5 = sub_1000A0224(a1 + 856);
    v8 = *(&v273 + 1);
    v7 = v273;
    v9 = *v273;
  }

  if (v8 == v9)
  {
    v8 = *(v7 - 8) + 5248;
  }

  v11 = *(v8 - 288);
  v12 = sub_100F925C0(v5, v6);
  v16 = sub_100F96128(v12);
  v17 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v21 = *(v273 - 8);
    v18 = (v21 + 4976);
    v19 = (v21 + 5008);
    v17 = v21 + 5248;
  }

  else
  {
    v18 = (*(&v273 + 1) - 272);
    v19 = (*(&v273 + 1) - 240);
  }

  *&v15 = *v18;
  v241 = v15;
  v22 = *v19;
  v244 = *(v17 - 146);
  sub_10001A3E8(v13, v14);
  v23 = sub_10001CF3C();
  *&v25 = v11 * v16;
  v248 = v25;
  if (v23)
  {
    v26 = *(&v273 + 1);
    if (*(&v273 + 1) == *v273)
    {
      v26 = *(v273 - 8) + 5248;
    }

    if (sub_1000A0200(v26 - 320))
    {
      v28 = 1;
LABEL_22:
      v247 = v28;
      goto LABEL_31;
    }

    v247 = sub_10009A5A8(a1 + 160, v27);
  }

  else
  {
    v29 = sub_10001A3E8(v23, v24);
    if (sub_10001CF04(v29, v30) && (*(a1 + 1428) & 1) == 0 && *(a1 + 160) == 1)
    {
      v247 = 0;
      v31 = *(a1 + 304);
      if (v31 <= 0x18 && ((1 << v31) & 0x1028000) != 0)
      {
        v28 = *&v248 == 0.0;
        goto LABEL_22;
      }
    }

    else
    {
      v247 = 0;
    }
  }

LABEL_31:
  v268 = 0.0;
  v269 = 0.0;
  v267 = 0.0;
  LODWORD(v266) = 0;
  WORD2(v266) = 0;
  v32 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v32 = *(v273 - 8) + 5248;
  }

  v33 = *(v32 - 146);
  v34 = sub_10009DABC(a1);
  if (!v34)
  {
    sub_10001A3E8(v34, v35);
    v42 = sub_10001CF3C();
    v239 = 0.0;
    if (v42 & 1) != 0 || (*buf = v272, *&buf[16] = v273, *v289 = v270, *&v289[16] = v271, !sub_1000A0234(v42, buf, v289)) || *(a1 + 160) == 1 && (CLMotionActivity::isTypeIndoorPedestrian())
    {
      v43 = 0;
      v240 = 0;
      v44 = 0;
      v38 = 0;
      goto LABEL_71;
    }
  }

  result = (*(**(a1 + 640) + 48))(*(a1 + 640), a3);
  if (!result)
  {
    return result;
  }

  v37 = v22 < 0.447387993 && v22 > 0.0;
  HIDWORD(v240) = sub_100C472AC(a1, 1);
  LODWORD(v240) = sub_100C472AC(a1, 0);
  if (v37)
  {
    v38 = HIDWORD(v240);
  }

  else
  {
    v38 = v240;
  }

  v39 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v45 = *(v273 - 8);
    v40 = v45[655];
    if (v40 <= *(a1 + 1304))
    {
      v40 = *(a1 + 1304);
    }

    if (v247)
    {
      v41 = v45[617] + -10.24;
      if (v40 > v41)
      {
        v41 = v40;
      }

      v39 = *(v273 - 8) + 5248;
      goto LABEL_58;
    }

    v46 = v45 + 645;
  }

  else
  {
    v40 = *(*(&v273 + 1) - 8);
    if (v40 <= *(a1 + 1304))
    {
      v40 = *(a1 + 1304);
    }

    if (v247)
    {
      v41 = *(*(&v273 + 1) - 312) + -10.24;
      if (v40 > v41)
      {
        v41 = v40;
      }

LABEL_58:
      v46 = (v39 - 312);
      v40 = v41;
      goto LABEL_61;
    }

    v46 = (*(&v273 + 1) - 88);
  }

LABEL_61:
  v47 = *v46;
  *(a1 + 1304) = *v46;
  v48 = sub_1000A085C(a1, &v269, v40, v47);
  if ((v48 & v38) == 1)
  {
    *buf = v272;
    *&buf[16] = v273;
    *v289 = v270;
    *&v289[16] = v271;
    if ((sub_100C47BE8(v48, buf, v289) & 1) != 0 || ((sub_100C47D04(a1, v37, v247, &v267, &v268, a3) | v37) & 1) == 0)
    {
      goto LABEL_69;
    }

    v49 = *(&v273 + 1);
    if (*(&v273 + 1) == *v273)
    {
      v49 = *(v273 - 8) + 5248;
    }

    if (*(v49 - 80) <= 0.0)
    {
LABEL_69:
      v44 = 0;
      v43 = 1;
      v239 = a3;
    }

    else
    {
      v43 = 1;
      v239 = a3;
      v44 = 1;
    }

    v38 = 1;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v239 = a3;
  }

LABEL_71:
  LODWORD(v237) = (v33 - 2) & 0xFFFFFFF9;
  if (((v33 - 2) & 0xF9) != 0)
  {
    v50 = *&v248 + *(a1 + 1440);
    *(a1 + 1440) = v50;
    if (v50 > 40.0)
    {
      v51 = *(&v273 + 1);
      if (*(&v273 + 1) == *v273)
      {
        v51 = *(v273 - 8) + 5248;
      }

      sub_100C48394(a1, *(v51 - 312), 40.0);
    }

    if (*(a1 + 1472) == 1 && (*(a1 + 1427) & 1) == 0)
    {
      *(&v52 + 1) = *(&v248 + 1);
      *&v52 = *&v248 * *(a1 + 1432);
      v248 = v52;
    }
  }

  if (sub_10009A61C(a1 + 856, v44))
  {
    v53 = 2;
  }

  else
  {
    v53 = v43;
  }

  v265 = 0.0;
  v54 = sub_1000A085C(a1, &v265, a3 + -20.0, a3);
  v55 = 0;
  *&v56 = v265;
  if (v265 < 11.9210824)
  {
    v57 = v54;
  }

  else
  {
    v57 = 0;
  }

  if (v57 == 1 && v53)
  {
    memset(buf, 0, 32);
    memset(v289, 0, 32);
    if (sub_1000A31D0(a1 + 512, buf, v289, a3 + -20.0))
    {
      v59 = *(&v273 + 1);
      v60 = 0.0;
      if (*&buf[24] != *(&v273 + 1))
      {
        v61 = v273;
        v62 = *v273;
        do
        {
          if (v59 == v62)
          {
            v64 = *(v61 - 8);
            v61 -= 8;
            v62 = v64;
            v63 = (v64 + 4968);
            v59 = v64 + 5248;
          }

          else
          {
            v63 = (v59 - 280);
          }

          v60 = v60 + *v63;
          v59 -= 328;
        }

        while (*&buf[24] != v59);
      }

      v65 = v60 > 0.0;
      if (*&v56 >= 4.4704)
      {
        v65 = 0;
      }

      HIDWORD(v236) = v65;
      v66 = sub_10009A55C(a1 + 160, v58);
      if (v60 >= 2.22044605e-16 && v66)
      {
        v55 = 0;
        goto LABEL_104;
      }
    }

    else
    {
      HIDWORD(v236) = 0;
      v60 = 0.0;
    }

    v55 = 1;
    v53 = -1;
  }

  else
  {
    HIDWORD(v236) = 0;
    v60 = 0.0;
  }

LABEL_104:
  HIDWORD(v242) = v55;
  if (v38)
  {
    v68 = v269;
  }

  else
  {
    v68 = 0.0;
  }

  v69 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v69 = *(v273 - 8) + 5248;
  }

  LODWORD(v242) = sub_10009A6E4(a1, *&v248, v68, *(v69 - 96));
  if (v242)
  {
    v71 = sub_10009DABC(a1);
    if (!v71)
    {
      v53 = -1;
    }

    v72 = HIDWORD(v242);
    if (!v71)
    {
      v72 = 2;
    }

    HIDWORD(v242) = v72;
  }

  if ((sub_10009A5A8(a1 + 160, v70) & 1) != 0 || sub_10009A55C(a1 + 160, v73))
  {
    v75 = sub_1000A2798(a1 + 648, buf);
    if (*v407 == 5)
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    if (v76 == 1)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101A344C8();
      }

      v77 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v78 = *(a1 + 304);
        *buf = 134349056;
        *&buf[4] = v78;
        _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEFAULT, "Rejecting fusion due to activity based driving detection, workout, %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A353C4(a1);
      }

      v80 = 4;
LABEL_138:
      HIDWORD(v242) = v80;
      sub_10009A55C(a1 + 160, v79);
LABEL_161:
      v90 = -1;
      goto LABEL_162;
    }

    v81 = *(&v273 + 1);
    if (*(&v273 + 1) == *v273)
    {
      v81 = *(v273 - 8) + 5248;
    }

    if (sub_100C4853C(a1, v81 - 328))
    {
      v82 = v74;
      if (qword_1025D4270 != -1)
      {
        sub_101A344C8();
      }

      v83 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(a1 + 304);
        *buf = 134349312;
        *&buf[4] = v82;
        *&buf[12] = 2050;
        *&buf[14] = v84;
        _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEFAULT, "Rejecting fusion due to gps-speed based driving detection, %{public}f, workout, %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A352B4();
      }

      v80 = 3;
      goto LABEL_138;
    }
  }

  v85 = sub_10009A55C(a1 + 160, v74);
  if (v53 <= 0 || !v85)
  {
    v90 = v53;
    goto LABEL_162;
  }

  v88 = *(&v273 + 1);
  v87 = v273;
  if (*(&v271 + 1) == *(&v273 + 1))
  {
    v89 = 0;
  }

  else
  {
    v89 = -1047552999 * ((*(&v273 + 1) - *v273) >> 3) + 2 * (v273 - v271) + 1047552999 * ((*(&v271 + 1) - *v271) >> 3);
  }

  if (v89 >= 5)
  {
    v89 = 5;
  }

  *buf = v273;
  sub_1000A2AE4(buf, -v89);
  v91 = *&buf[8];
  if (*&buf[8] == v88)
  {
    goto LABEL_160;
  }

  v92 = 0;
  v93 = *v87;
  do
  {
    v94 = v88;
    if (v88 == v93)
    {
      v94 = *(v87 - 1) + 5248;
    }

    v95 = sub_100C4A08C(a1);
    if (*(v94 - 104))
    {
      v96 = 1;
    }

    else
    {
      v96 = v95;
    }

    v93 = *v87;
    if (v88 == *v87)
    {
      v97 = *--v87;
      v93 = v97;
      v88 = v97 + 5248;
    }

    v92 += v96;
    v88 -= 328;
  }

  while (v91 != v88);
  v90 = v53;
  if (v92 <= 2)
  {
LABEL_160:
    HIDWORD(v242) = 5;
    goto LABEL_161;
  }

LABEL_162:
  LODWORD(v243) = v90;
  sub_1000A0FA8(a1 + 856, v90);
  v98 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v98 = *(v273 - 8) + 5248;
  }

  sub_1000A0B7C(a1 + 856, (v98 - 328));
  if (v243 < 1)
  {
    v99 = 0;
  }

  else
  {
    v99 = *(a1 + 1424) | v247;
  }

  HIDWORD(v246) = v99;
  sub_1000A18B0(a1, v99 & 1, a3);
  v101 = v100;
  HIDWORD(v264) = 0;
  v102 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v102 = *(v273 - 8) + 5248;
  }

  v103 = *(a1 + 1384);
  v104 = sub_100C485D8(a1, (v102 - 320));
  *&v105 = v269;
  v106 = sub_100C46230(a1, BYTE4(v246) & 1, LOBYTE(v237) == 0, v244, &v264 + 1, a3, *&v248, v104, v269, v101, v103, v22);
  *(a1 + 1384) = v106;
  *&v107.f64[0] = v248;
  *&v107.f64[1] = v241;
  *(a1 + 1392) = vaddq_f64(v107, *(a1 + 1392));
  v108 = *(a1 + 1416);
  v110 = *(&v273 + 1);
  v109 = v273;
  if (*(a1 + 1408) < 0.0)
  {
    goto LABEL_173;
  }

  v111 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v111 = *(v273 - 8) + 5248;
  }

  if (v108 > *(v111 - 224))
  {
LABEL_173:
    *(a1 + 1408) = v108;
  }

  v262 = 0.0;
  v260 = 0u;
  v261 = 0u;
  v259 = 0u;
  v257 = 0u;
  *theString = 0u;
  v255 = 0u;
  v256 = 0u;
  v253 = 0u;
  v254 = 0u;
  __src = 0u;
  v252 = 0u;
  if (v110 == *v109)
  {
    v110 = *(v109 - 1) + 5248;
  }

  v112 = sub_1000A1C74(a1 + 856);
  v113 = sub_1000A1C28(a1 + 856);
  v114 = v113;
  v115 = *(v110 - 320);
  v116 = *(v110 - 304);
  v117 = *(v110 - 272);
  v253 = *(v110 - 288);
  v118 = *(v110 - 208);
  v119 = *(v110 - 256);
  v120 = *(v110 - 240);
  v257 = *(v110 - 224);
  *theString = v118;
  v255 = v119;
  v256 = v120;
  v121 = *(v110 - 192);
  v122 = *(v110 - 176);
  v123 = *(v110 - 160);
  v262 = *(v110 - 144);
  v260 = v122;
  v261 = v123;
  v259 = v121;
  v254 = v117;
  __src = v115;
  v252 = v116;
  *&v253 = v106 - v103;
  *&v256 = v112;
  LOBYTE(theString[1]) = BYTE4(v246) & 1;
  BYTE1(theString[1]) = sub_10009C200(v113, v113);
  BYTE14(v261) = BYTE4(v264);
  LODWORD(v262) = v114;
  v124 = *(a1 + 1304);
  *buf = 0xBFF0000000000000;
  sub_1000A0588(a1, buf, v124);
  v125 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v125 = *(v273 - 8) + 5248;
  }

  v126 = *buf;
  v127 = sub_1000A1DCC(1.5, 0.15, 3.5, 0.35, *(v125 - 80));
  v128 = (*(**(a1 + 640) + 24))(*(a1 + 640), buf, a3);
  if (*&v405[20] == 2)
  {
    v129 = v128;
  }

  else
  {
    v129 = 0;
  }

  v130 = *(a1 + 1384);
  v131 = v256;
  v132 = DWORD2(v252);
  v133 = DWORD1(v261);
  *&v241 = a1 + 1384;
  *(a1 + 1480) = *(a1 + 1392);
  *(a1 + 1496) = v126;
  *(a1 + 1504) = v130;
  *(a1 + 1512) = v22;
  *(a1 + 1520) = v131;
  *(a1 + 1528) = v132;
  *(a1 + 1532) = v129;
  *(a1 + 1536) = v133;
  if (qword_1025D4270 != -1)
  {
    sub_101A344C8();
  }

  v134 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    v135 = *(a1 + 1392);
    v136 = *v241;
    *buf = 134218240;
    *&buf[4] = v135;
    *&buf[12] = 2048;
    *&buf[14] = v136;
    _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_INFO, "fCoreAnalyticsInfo: checking distances %f %f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A354CC();
  }

  v137 = fmin(fmax(v127, 0.15), 0.35);
  if (*(a1 + 1425) == 1)
  {
    sub_10156F33C(v289);
    operator new();
  }

  HIDWORD(v243) = sub_10009C4FC(a1);
  if (qword_1025D4270 != -1)
  {
    sub_101A344C8();
  }

  v138 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, (BYTE4(v243) ^ 1)))
  {
    v139 = *(&v273 + 1);
    v140 = *(&v273 + 1);
    if (*(&v273 + 1) == *v273)
    {
      v140 = *(v273 - 8) + 5248;
      v139 = v140;
    }

    v141 = *(v140 - 104);
    v142 = *(a1 + 1392);
    v230 = *(a1 + 1400);
    v232 = *(a1 + 1384);
    v234 = *(v139 - 112);
    v237 = *&v256;
    v143 = (*(**(a1 + 640) + 24))(*(a1 + 640), v289, a3);
    if ((v143 & (v291 > 0.0)) != 0)
    {
      v144 = 1.0 / v291;
    }

    else
    {
      v144 = -1.0;
    }

    v227 = v144;
    v228 = v256;
    v145 = sub_1000A1C28(a1 + 856);
    v146 = sub_10009C200(v145, v145);
    v147 = *(&v273 + 1);
    if (*(&v273 + 1) == *v273)
    {
      v148 = *(*(v273 - 8) + 5024);
    }

    else
    {
      v148 = *(*(&v273 + 1) - 224);
    }

    v149 = 0.0;
    if (*v241 != 0.0)
    {
      v149 = (v148 - *(a1 + 1408)) / *v241;
    }

    v150 = 0.0;
    if (*&v248 > 0.0)
    {
      v150 = *&v105 / *&v248;
    }

    if (*(&v273 + 1) == *v273)
    {
      v152 = *(v273 - 8);
      v151 = (v152 + 5240);
      v147 = v152 + 5248;
    }

    else
    {
      v151 = (*(&v273 + 1) - 8);
    }

    v153 = *v151;
    v154 = *(v147 - 88);
    *buf = 136332034;
    *&buf[4] = "time";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2080;
    *&buf[24] = "count";
    *&buf[32] = 1024;
    *&buf[34] = DWORD2(v252);
    *&buf[38] = 2080;
    *&buf[40] = "deltaCount";
    LOWORD(v404) = 1024;
    *(&v404 + 2) = v141;
    WORD3(v404) = 2080;
    *(&v404 + 1) = "deltaDist(m)";
    *v405 = 2080;
    *&v405[2] = "ped";
    *&v405[10] = 2048;
    *&v405[12] = *(&v253 + 1);
    *&v405[20] = 2080;
    *&v405[22] = "calPed";
    *&v405[30] = 2048;
    *v406 = v248;
    *&v406[8] = 2080;
    *&v406[10] = "gps";
    *&v406[18] = 2048;
    *&v406[20] = v105;
    *&v406[28] = 2080;
    *&v406[30] = "fused";
    *&v406[38] = 2048;
    *&v406[40] = v253;
    *v407 = 2080;
    *&v407[2] = "totalDist(m)";
    *&v407[10] = 2080;
    *&v407[12] = "calPed";
    *&v407[20] = 2048;
    *&v407[22] = v142;
    *&v407[30] = 2080;
    v408 = "calPedMobility";
    v409 = 2048;
    *v410 = v230;
    *&v410[8] = 2080;
    *&v410[10] = "gps";
    *&v410[18] = 2048;
    *&v410[20] = v126;
    *&v410[28] = 2080;
    *&v410[30] = "fused";
    *&v410[38] = 2048;
    *&v410[40] = v232;
    *&v410[48] = 2080;
    *&v410[50] = "usedGps";
    *&v410[58] = 1024;
    *&v410[60] = BYTE4(v246) & 1;
    v411 = 2080;
    v412 = "pace(s/m)";
    v413 = 2080;
    v414 = "ped";
    v415 = 2048;
    v416 = v234;
    v417 = 2080;
    v418 = "calPed";
    v419 = 2048;
    v420 = v22;
    v421 = 2080;
    v422 = "StepDistancePedometerFusedPace";
    v423 = 2048;
    v424 = v256;
    v425 = 2080;
    v426 = "rawGps";
    v427 = 2048;
    v428 = v227;
    v429 = 2080;
    v430 = "StepDistanceFinalFusedPace";
    v431 = 2048;
    v432 = v256;
    v433 = 2080;
    v434 = "StepDistanceUsedOdometerPace";
    v435 = 1024;
    v436 = v146;
    v437 = 2080;
    v438 = "odometerPaceStdError";
    v439 = 2048;
    v440 = *&v267;
    v441 = 2080;
    v442 = "pedometerPaceStdError";
    v443 = 2048;
    v444 = v268;
    v445 = 2080;
    v446 = "residual";
    v447 = 2048;
    v448 = v267 - v268;
    v449 = 2080;
    v450 = "output";
    v451 = 2048;
    v452 = v256;
    v453 = 2080;
    v454 = "tolerance";
    v455 = 2048;
    v456 = v137;
    v457 = 2080;
    v458 = "activeTime";
    v459 = 2048;
    v460 = v148;
    v461 = 2080;
    v462 = "averageActivePace";
    v463 = 2048;
    v464 = v149;
    v465 = 2080;
    v466 = "ratio";
    v467 = 2048;
    v468 = v150;
    v469 = 2080;
    v470 = "vehicular";
    v471 = 1024;
    v472 = v242;
    v473 = 2080;
    v474 = "firstStepTime";
    v475 = 2048;
    v476 = v153;
    v477 = 2080;
    v478 = "lastStepTime";
    v479 = 2048;
    v480 = v154;
    v481 = 2080;
    v482 = "pedometerArmConstrainedState";
    v483 = 1024;
    v484 = v261;
    v485 = 2080;
    v486 = "distanceSource";
    v487 = 1024;
    v488 = BYTE14(v261);
    v489 = 2080;
    v490 = "paceSource";
    v491 = 1024;
    v492 = LODWORD(v262);
    _os_log_impl(dword_100000000, v138, (BYTE4(v243) ^ 1), "unified,%s,%0.3f,%s,%u,%s,%u,%s,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%u,%s,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%u,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.3f,%s,%0.4f,%s,%0.2f,%s,%u,%s,%0.3f,%s,%0.3f,%s,%d,%s,%d,%s,%d", buf, 0x280u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v187 = *(&v273 + 1);
    v188 = *(&v273 + 1);
    if (*(&v273 + 1) == *v273)
    {
      v188 = *(v273 - 8) + 5248;
      v187 = v188;
    }

    *&v238 = v269;
    v189 = *(v188 - 104);
    v190 = *(a1 + 1392);
    v233 = qword_1025D4278;
    v235 = *(a1 + 1400);
    v229 = *(v187 - 112);
    v231 = *(a1 + 1384);
    v191 = (*(**(a1 + 640) + 24))(*(a1 + 640), &v274, a3);
    if ((v191 & (*(&v276 + 1) > 0.0)) != 0)
    {
      v192 = 1.0 / *(&v276 + 1);
    }

    else
    {
      v192 = -1.0;
    }

    v193 = sub_1000A1C28(a1 + 856);
    v194 = sub_10009C200(v193, v193);
    v195 = *(&v273 + 1);
    if (*(&v273 + 1) == *v273)
    {
      v196 = *(*(v273 - 8) + 5024);
    }

    else
    {
      v196 = *(*(&v273 + 1) - 224);
    }

    v213 = 0.0;
    if (*v241 != 0.0)
    {
      v213 = (v196 - *(a1 + 1408)) / *v241;
    }

    v214 = 0.0;
    if (*&v248 > 0.0)
    {
      v214 = *&v238 / *&v248;
    }

    if (*(&v273 + 1) == *v273)
    {
      v216 = *(v273 - 8);
      v215 = (v216 + 5240);
      v195 = v216 + 5248;
    }

    else
    {
      v215 = (*(&v273 + 1) - 8);
    }

    v217 = *v215;
    v218 = *(v195 - 88);
    *v289 = 136332034;
    *&v289[4] = "time";
    *&v289[12] = 2048;
    *&v289[14] = a3;
    *&v289[22] = 2080;
    *&v289[24] = "count";
    *&v289[32] = 1024;
    *v290 = DWORD2(v252);
    *&v290[4] = 2080;
    v291 = COERCE_DOUBLE("deltaCount");
    *v292 = 1024;
    *&v292[2] = v189;
    v293 = 2080;
    v294 = "deltaDist(m)";
    v295 = 2080;
    v296 = "ped";
    v297 = 2048;
    v298 = *(&v253 + 1);
    v299 = 2080;
    v300 = "calPed";
    v301 = 2048;
    v302 = v248;
    v303 = 2080;
    v304 = "gps";
    v305 = 2048;
    v306 = v238;
    v307 = 2080;
    v308 = "fused";
    v309 = 2048;
    v310 = v253;
    v311 = 2080;
    v312 = "totalDist(m)";
    v313 = 2080;
    v314 = "calPed";
    v315 = 2048;
    v316 = v190;
    v317 = 2080;
    v318 = "calPedMobility";
    v319 = 2048;
    *v320 = v235;
    *&v320[8] = 2080;
    *&v320[10] = "gps";
    *&v320[18] = 2048;
    *&v320[20] = v126;
    *&v320[28] = 2080;
    *&v320[30] = "fused";
    *&v320[38] = 2048;
    *&v320[40] = v231;
    *&v320[48] = 2080;
    *&v320[50] = "usedGps";
    *&v320[58] = 1024;
    *&v320[60] = BYTE4(v246) & 1;
    v321 = 2080;
    v322 = "pace(s/m)";
    v323 = 2080;
    v324 = "ped";
    v325 = 2048;
    v326 = v229;
    v327 = 2080;
    v328 = "calPed";
    v329 = 2048;
    v330 = v22;
    v331 = 2080;
    v332 = "StepDistancePedometerFusedPace";
    v333 = 2048;
    v334 = v256;
    v335 = 2080;
    v336 = "rawGps";
    v337 = 2048;
    v338 = v192;
    v339 = 2080;
    v340 = "StepDistanceFinalFusedPace";
    v341 = 2048;
    v342 = v256;
    v343 = 2080;
    v344 = "StepDistanceUsedOdometerPace";
    v345 = 1024;
    v346 = v194;
    v347 = 2080;
    v348 = "odometerPaceStdError";
    v349 = 2048;
    v350 = *&v267;
    v351 = 2080;
    v352 = "pedometerPaceStdError";
    v353 = 2048;
    v354 = v268;
    v355 = 2080;
    v356 = "residual";
    v357 = 2048;
    v358 = v267 - v268;
    v359 = 2080;
    v360 = "output";
    v361 = 2048;
    v362 = v256;
    v363 = 2080;
    v364 = "tolerance";
    v365 = 2048;
    v366 = v137;
    v367 = 2080;
    v368 = "activeTime";
    v369 = 2048;
    v370 = v196;
    v371 = 2080;
    v372 = "averageActivePace";
    v373 = 2048;
    v374 = v213;
    v375 = 2080;
    v376 = "ratio";
    v377 = 2048;
    v378 = v214;
    v379 = 2080;
    v380 = "vehicular";
    v381 = 1024;
    v382 = v242;
    v383 = 2080;
    v384 = "firstStepTime";
    v385 = 2048;
    v386 = v217;
    v387 = 2080;
    v388 = "lastStepTime";
    v389 = 2048;
    v390 = v218;
    v391 = 2080;
    v392 = "pedometerArmConstrainedState";
    v393 = 1024;
    v394 = v261;
    v395 = 2080;
    v396 = "distanceSource";
    v397 = 1024;
    v398 = BYTE14(v261);
    v399 = 2080;
    v400 = "paceSource";
    v401 = 1024;
    v402 = LODWORD(v262);
    LODWORD(v225) = 640;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v233, HIDWORD(v243) ^ 1u, "unified,%s,%0.3f,%s,%u,%s,%u,%s,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%u,%s,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%u,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.3f,%s,%0.4f,%s,%0.2f,%s,%u,%s,%0.3f,%s,%0.3f,%s,%d,%s,%d,%s,%d", v289, v225, v226, v256, v229, v231, v233, v235, v236, v238, v239, v240, *&v241, *(&v241 + 1), *&v242, v243, v245, v246, v248, *(&v248 + 1), v249, v250, __src, *(&__src + 1), v252, DWORD2(v252), v253, *(&v253 + 1), *&v254, *(&v254 + 1), *&v255, *(&v255 + 1), *&v256, *(&v256 + 1), *&v257, *(&v257 + 1), *theString, theString[1], v259, *(&v259 + 1), *&v260, *(&v260 + 1), *&v261, *(&v261 + 1), v262, v263, v264, *&v265, v266, *&v267, v268, *&v269, *&v270, *(&v270 + 1), *&v271, *(&v271 + 1), v272, *(&v272 + 1), *&v273, *(&v273 + 1), *&v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277);
    v220 = v219;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLStepDistanceFusion::normalMode(const double, std::vector<CLStepDistanceFusionResult> &)", "%s\n", v219);
    if (v220 != buf)
    {
      free(v220);
    }
  }

  v288 = 0;
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  v274 = 0u;
  v275 = 0u;
  sub_1000A2798(a1 + 648, &v274);
  if (qword_1025D4270 != -1)
  {
    sub_101A344C8();
  }

  v155 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, (BYTE4(v243) ^ 1)))
  {
    v156 = sub_10009C55C(a1 + 856);
    v157 = *(a1 + 776);
    v158 = *(a1 + 1428);
    *buf = 134219520;
    *&buf[4] = a3;
    *&buf[12] = 2048;
    *&buf[14] = v156;
    *&buf[22] = 1024;
    *&buf[24] = v157;
    *&buf[28] = 1024;
    *&buf[30] = v243;
    *&buf[34] = 1024;
    *&buf[36] = HIDWORD(v242);
    *&buf[40] = 1024;
    *&buf[42] = v283;
    *&buf[46] = 1024;
    LODWORD(v404) = v158;
    _os_log_impl(dword_100000000, v155, (BYTE4(v243) ^ 1), "unified2,time,%f,odometerSmoothMeanPace,%.3f,estimatedOdometerQuality,%d,odometerFusionQuality,%d,odometerFusionRejectionReason,%d,activityType,%d,isAccessoryAvailable,%d", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v197 = qword_1025D4278;
    v198 = sub_10009C55C(a1 + 856);
    v199 = *(a1 + 776);
    v200 = *(a1 + 1428);
    *v289 = 134219520;
    *&v289[4] = a3;
    *&v289[12] = 2048;
    *&v289[14] = v198;
    *&v289[22] = 1024;
    *&v289[24] = v199;
    *&v289[28] = 1024;
    *&v289[30] = v243;
    *v290 = 1024;
    *&v290[2] = HIDWORD(v242);
    LOWORD(v291) = 1024;
    *(&v291 + 2) = v283;
    HIWORD(v291) = 1024;
    *v292 = v200;
    LODWORD(v225) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v197, HIDWORD(v243) ^ 1u, "unified2,time,%f,odometerSmoothMeanPace,%.3f,estimatedOdometerQuality,%d,odometerFusionQuality,%d,odometerFusionRejectionReason,%d,activityType,%d,isAccessoryAvailable,%d", COERCE_DOUBLE(v289), v225, v226, LODWORD(v227), v228, v230, v232);
    v202 = v201;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLStepDistanceFusion::normalMode(const double, std::vector<CLStepDistanceFusionResult> &)", "%s\n", v201);
    if (v202 != buf)
    {
      free(v202);
    }
  }

  *&v406[32] = v259;
  *v407 = v260;
  *&v407[16] = v261;
  v408 = *&v262;
  *v405 = v255;
  *&v405[16] = v256;
  *v406 = v257;
  *&v406[16] = *theString;
  *buf = __src;
  *&buf[16] = v252;
  *&buf[32] = v253;
  v404 = v254;
  v160 = *(v245 + 8);
  v159 = *(v245 + 16);
  if (v160 >= v159)
  {
    v162 = 0x8F5C28F5C28F5C29 * ((v160 - *v245) >> 3);
    if (v162 + 1 > 0x147AE147AE147AELL)
    {
      sub_10028C64C();
    }

    v163 = 0x8F5C28F5C28F5C29 * ((v159 - *v245) >> 3);
    v164 = 2 * v163;
    if (2 * v163 <= v162 + 1)
    {
      v164 = v162 + 1;
    }

    if (v163 >= 0xA3D70A3D70A3D7)
    {
      v165 = 0x147AE147AE147AELL;
    }

    else
    {
      v165 = v164;
    }

    if (v165)
    {
      sub_1000A2048(v245, v165);
    }

    v166 = 8 * ((v160 - *v245) >> 3);
    *(v166 + 128) = *&v406[32];
    *(v166 + 144) = *v407;
    *(v166 + 160) = *&v407[16];
    *(v166 + 176) = v408;
    *(v166 + 64) = *v405;
    *(v166 + 80) = *&v405[16];
    *(v166 + 96) = *v406;
    *(v166 + 112) = *&v406[16];
    *v166 = *buf;
    *(v166 + 16) = *&buf[16];
    *(v166 + 32) = *&buf[32];
    *(v166 + 48) = v404;
    *(v166 + 184) = v239;
    *(v166 + 192) = BYTE4(v240);
    *(v166 + 193) = v240;
    *(v166 + 194) = LODWORD(v266);
    *(v166 + 198) = WORD2(v266);
    v161 = 200 * v162 + 200;
    v167 = *(v245 + 8) - *v245;
    v168 = v166 - v167;
    memcpy((v166 - v167), *v245, v167);
    v169 = *v245;
    *v245 = v168;
    *(v245 + 8) = v161;
    *(v245 + 16) = 0;
    if (v169)
    {
      operator delete(v169);
    }
  }

  else
  {
    memmove(*(v245 + 8), &__src, 0xB8uLL);
    *(v160 + 184) = v239;
    *(v160 + 192) = BYTE4(v240);
    *(v160 + 193) = v240;
    *(v160 + 194) = LODWORD(v266);
    *(v160 + 198) = WORD2(v266);
    v161 = v160 + 200;
  }

  *(v245 + 8) = v161;
  v170 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v170 = *(v273 - 8) + 5248;
  }

  if (!*(v170 - 104))
  {
    goto LABEL_253;
  }

  if (BYTE4(v236))
  {
    goto LABEL_243;
  }

  if (*(&v273 + 1) == *v273)
  {
    v172 = *(v273 - 8);
    if (v172[621] < 0.5722112 || v172[648] < 0.5722112 || *&v253 < 0.5722112)
    {
      goto LABEL_243;
    }

    v171 = v172[632];
  }

  else
  {
    if (*(*(&v273 + 1) - 280) < 0.5722112 || *(*(&v273 + 1) - 64) < 0.5722112 || *&v253 < 0.5722112)
    {
      goto LABEL_243;
    }

    v171 = *(*(&v273 + 1) - 192);
  }

  if (v171 > 4.47387258 || *&v256 > 4.47387258 || v171 != 0.0 && *&v256 == 0.0)
  {
LABEL_243:
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v173 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      if (*(&v273 + 1) == *v273)
      {
        v184 = *(v273 - 8);
        v174 = *(v184 + 4952);
        v175 = *(v184 + 5144);
        v176 = *(v184 + 4968);
        v177 = *(v184 + 5184);
        v178 = *&v269;
        v179 = v253;
        v180 = *&v265;
        v181 = *(v184 + 5136);
        v182 = *(v184 + 5056);
        v183 = *(v184 + 5168);
      }

      else
      {
        v174 = *(*(&v273 + 1) - 296);
        v175 = *(*(&v273 + 1) - 104);
        v176 = *(*(&v273 + 1) - 280);
        v177 = *(*(&v273 + 1) - 64);
        v178 = *&v269;
        v179 = v253;
        v180 = *&v265;
        v181 = *(*(&v273 + 1) - 112);
        v182 = *(*(&v273 + 1) - 192);
        v183 = *(*(&v273 + 1) - 80);
      }

      v185 = 0.0;
      if (v183 != 0.0)
      {
        v185 = 1.0 / v183;
      }

      *buf = 136322050;
      *&buf[4] = "time";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2080;
      *&buf[24] = "count";
      *&buf[32] = 1024;
      *&buf[34] = v174;
      *&buf[38] = 2080;
      *&buf[40] = "deltaCount";
      LOWORD(v404) = 1024;
      *(&v404 + 2) = v175;
      WORD3(v404) = 2080;
      *(&v404 + 1) = "rawDistance";
      *v405 = 2048;
      *&v405[2] = v176;
      *&v405[10] = 2080;
      *&v405[12] = "calDistance";
      *&v405[20] = 2048;
      *&v405[22] = v177;
      *&v405[30] = 2080;
      *v406 = "odomDistance";
      *&v406[8] = 2048;
      *&v406[10] = v178;
      *&v406[18] = 2080;
      *&v406[20] = "fusedDistance";
      *&v406[28] = 2048;
      *&v406[30] = v179;
      *&v406[38] = 2080;
      *&v406[40] = "odometerDistanceForSlowPaceCheckWindow";
      *v407 = 2048;
      *&v407[2] = v180;
      *&v407[10] = 2080;
      *&v407[12] = "pedometerRawDistanceForSlowPaceCheckWindow";
      *&v407[20] = 2048;
      *&v407[22] = v60;
      *&v407[30] = 2080;
      v408 = "odometerError";
      v409 = 1024;
      *v410 = HIDWORD(v236);
      *&v410[4] = 2080;
      *&v410[6] = "rawPace";
      *&v410[14] = 2048;
      *&v410[16] = v181;
      *&v410[24] = 2080;
      *&v410[26] = "calPace";
      *&v410[34] = 2048;
      *&v410[36] = v182;
      *&v410[44] = 2080;
      *&v410[46] = "odomPace";
      *&v410[54] = 2048;
      *&v410[56] = v185;
      v411 = 2080;
      v412 = "fusedPace";
      v413 = 2048;
      v414 = v256;
      _os_log_impl(dword_100000000, v173, OS_LOG_TYPE_DEFAULT, "#Warning Potential StepDistanceFusion error. File a radar if you are not walking/running in place. %s, %f, %s, %u, %s, %u, %s, %f, %s, %f, %s, %f, %s, %f, %s, %f, %s, %f, %s, %d, %s, %f, %s, %f, %s, %f, %s, %f", buf, 0x10Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_101A344C8();
      }

      if (*(&v273 + 1) == *v273)
      {
        v221 = *(v273 - 8);
        v203 = *(v221 + 4952);
        v204 = *(v221 + 5144);
        v205 = *(v221 + 4968);
        v206 = *(v221 + 5184);
        v207 = *&v269;
        v208 = v253;
        v209 = *&v265;
        v210 = *(v221 + 5136);
        v211 = *(v221 + 5056);
        v212 = *(v221 + 5168);
      }

      else
      {
        v203 = *(*(&v273 + 1) - 296);
        v204 = *(*(&v273 + 1) - 104);
        v205 = *(*(&v273 + 1) - 280);
        v206 = *(*(&v273 + 1) - 64);
        v207 = *&v269;
        v208 = v253;
        v209 = *&v265;
        v210 = *(*(&v273 + 1) - 112);
        v211 = *(*(&v273 + 1) - 192);
        v212 = *(*(&v273 + 1) - 80);
      }

      v222 = 0.0;
      if (v212 != 0.0)
      {
        v222 = 1.0 / v212;
      }

      *v289 = 136322050;
      *&v289[4] = "time";
      *&v289[12] = 2048;
      *&v289[14] = a3;
      *&v289[22] = 2080;
      *&v289[24] = "count";
      *&v289[32] = 1024;
      *v290 = v203;
      *&v290[4] = 2080;
      v291 = COERCE_DOUBLE("deltaCount");
      *v292 = 1024;
      *&v292[2] = v204;
      v293 = 2080;
      v294 = "rawDistance";
      v295 = 2048;
      v296 = v205;
      v297 = 2080;
      v298 = "calDistance";
      v299 = 2048;
      v300 = v206;
      v301 = 2080;
      v302 = "odomDistance";
      v303 = 2048;
      v304 = v207;
      v305 = 2080;
      v306 = "fusedDistance";
      v307 = 2048;
      v308 = v208;
      v309 = 2080;
      v310 = "odometerDistanceForSlowPaceCheckWindow";
      v311 = 2048;
      v312 = v209;
      v313 = 2080;
      v314 = "pedometerRawDistanceForSlowPaceCheckWindow";
      v315 = 2048;
      v316 = v60;
      v317 = 2080;
      v318 = "odometerError";
      v319 = 1024;
      *v320 = HIDWORD(v236);
      *&v320[4] = 2080;
      *&v320[6] = "rawPace";
      *&v320[14] = 2048;
      *&v320[16] = v210;
      *&v320[24] = 2080;
      *&v320[26] = "calPace";
      *&v320[34] = 2048;
      *&v320[36] = v211;
      *&v320[44] = 2080;
      *&v320[46] = "odomPace";
      *&v320[54] = 2048;
      *&v320[56] = v222;
      v321 = 2080;
      v322 = "fusedPace";
      v323 = 2048;
      v324 = v256;
      LODWORD(v225) = 270;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 0, "#Warning Potential StepDistanceFusion error. File a radar if you are not walking/running in place. %s, %f, %s, %u, %s, %u, %s, %f, %s, %f, %s, %f, %s, %f, %s, %f, %s, %f, %s, %d, %s, %f, %s, %f, %s, %f, %s, %f", v289, v225, v226, LODWORD(v227), v228, v230, v232, v234, *&v236, v237, *&v239, *&v240, v241, *(&v241 + 1), v242, *&v243, v245, v246, v248, DWORD2(v248), v249, v250, __src, *(&__src + 1), v252, *(&v252 + 1), v253, *(&v253 + 1));
      v224 = v223;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLStepDistanceFusion::normalMode(const double, std::vector<CLStepDistanceFusionResult> &)", "%s\n", v223);
      if (v224 != buf)
      {
        free(v224);
      }
    }
  }

LABEL_253:
  v186 = *(&v273 + 1);
  if (*(&v273 + 1) == *v273)
  {
    v186 = *(v273 - 8) + 5248;
  }

  *(a1 + 1416) = *(v186 - 224);
  *(a1 + 1424) = v243 > 0;
  if ((BYTE4(v246) & 1) == 0)
  {
    *(a1 + 1296) = a3;
  }

  return 1;
}

void sub_1000A0150(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  (*(*v1 + 8))(v1);
  sub_10156F414(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A0224(uint64_t result)
{
  *(result + 392) = 0;
  *(result + 400) = 8;
  return result;
}

BOOL sub_1000A0234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v3 = (a2 + 16);
  v6 = *(a3 + 24);
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1047552999 * ((v5 - *v4) >> 3) + 2 * (v4 - *(a3 + 16)) + 1047552999 * ((v6 - **(a3 + 16)) >> 3);
  }

  if (v7 >= 5)
  {
    v7 = 5;
  }

  v16 = *v3;
  sub_1000A2AE4(&v16, -v7);
  if (*(&v16 + 1) == v5)
  {
    return 0;
  }

  v9 = 0;
  v10 = *v4;
  do
  {
    v11 = v5;
    if (v5 == v10)
    {
      v11 = *(v4 - 1) + 5248;
    }

    v12 = *(v11 - 104);
    v13 = *(v11 - 160) & 0xFD;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 1;
    }

    if (v14)
    {
      ++v9;
    }

    if (v5 == v10)
    {
      v15 = *--v4;
      v10 = v15;
      v5 = v15 + 5248;
    }

    v5 -= 328;
  }

  while (*(&v16 + 1) != v5);
  return v9 > 2;
}

id sub_1000A0344(uint64_t a1, int a2, void *a3)
{
  result = sub_100099750(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void *sub_1000A0394(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = a1[56];
  if (v3)
  {
    (*(*v3 + 48))(v3, __dst);
  }

  v4 = a1[7];
  if (v4)
  {
    v5 = v4 + a1[6] - 1;
    v6 = a1[3];
    v7 = (*(v6 + ((v5 >> 1) & 0x7FFFFFFFFFFFFFF8)))[41 * (v5 & 0xF)];
    if (v7 > __dst[0])
    {
      v8 = a1[4];
      a1[7] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[4];
          v6 = (a1[3] + 8);
          a1[3] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 8;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v16 = __dst[0];
            v17 = 2048;
            v18 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101903ABC();
          }

          goto LABEL_18;
        }

        v11 = 16;
      }

      a1[6] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_10009DA24(a1 + 2, __dst);
  return memcpy(a1 + 12, __dst, 0x148uLL);
}

BOOL sub_1000A0588(uint64_t a1, double *a2, double a3)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  result = sub_1000A09A8(*(a1 + 640), &v32, &v30, a3);
  if (result)
  {
    v6 = *(&v33 + 1);
    v7 = *v33;
    v8 = *(&v33 + 1) - *v33;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 6);
    v10 = v9 - 1;
    if (v8 < 193)
    {
      v14 = ((21 - v9) * 0x8618618618618619) >> 64;
      v15 = v14 + ((21 - v9 - v14) >> 1);
      v12 = *(v33 - 8 * (v15 >> 4));
      v13 = v12 + 192 * (v9 - 21 + 21 * (v15 >> 4)) + 3840;
      if (*(&v31 + 1) == v13)
      {
        return 0;
      }

      v11 = -(v15 >> 4);
    }

    else
    {
      v11 = v10 / 0x15;
      v12 = *(v33 + 8 * (v10 / 0x15));
      v13 = v12 + 192 * (v10 % 0x15);
      if (*(&v31 + 1) == v13)
      {
        return 0;
      }
    }

    if (v13 == v12)
    {
      v13 = *(v33 + 8 * v11 - 8) + 4032;
    }

    if (*(v13 - 192) > a3)
    {
      return 0;
    }

    v16 = *(&v33 + 1);
    if (*(&v33 + 1) == v7)
    {
      v16 = *(v33 - 8) + 4032;
    }

    if (*(v16 - 192) <= a3)
    {
      return 0;
    }

    if (v8 < 193)
    {
      v20 = ((21 - v9) * 0x8618618618618619) >> 64;
      v21 = (v20 + ((21 - v9 - v20) >> 1)) >> 4;
      v17 = -v21;
      v18 = *(v33 - 8 * v21);
      v19 = v18 + 192 * (v9 - 21 + 21 * v21) + 3840;
    }

    else
    {
      v17 = v10 / 0x15;
      v18 = *(v33 + 8 * (v10 / 0x15));
      v19 = v18 + 192 * (v10 % 0x15);
    }

    if (v19 == v18)
    {
      v19 = *(v33 + 8 * v17 - 8) + 4032;
    }

    if (v8 < 193)
    {
      v25 = 21 - v9;
      v26 = ((21 - v9) * 0x8618618618618619) >> 64;
      v27 = (v26 + ((v25 - v26) >> 1)) >> 4;
      v22 = -v27;
      v23 = *(v33 - 8 * v27);
      v24 = v23 + 192 * (21 * v27 - v25) + 3840;
    }

    else
    {
      v22 = v10 / 0x15;
      v23 = *(v33 + 8 * (v10 / 0x15));
      v24 = v23 + 192 * (v10 % 0x15);
    }

    if (v24 == v23)
    {
      v24 = *(v33 + 8 * v22 - 8) + 4032;
    }

    if (*(&v33 + 1) == v7)
    {
      v29 = *(v33 - 8);
      v28 = (v29 + 3840);
      v6 = v29 + 4032;
    }

    else
    {
      v28 = (*(&v33 + 1) - 192);
    }

    *a2 = sub_1000A1DCC(*(v19 - 192), *(v24 - 144), *v28, *(v6 - 144), a3);
    return 1;
  }

  return result;
}

uint64_t sub_1000A085C(uint64_t a1, double *a2, double a3, double a4)
{
  v10 = 0.0;
  v11 = 0.0;
  *a2 = 0.0;
  if (a3 <= a4)
  {
    if (a3 != a4)
    {
      result = sub_1000A0588(a1, &v11, a3);
      if (!result)
      {
        return result;
      }

      result = sub_1000A0588(a1, &v10, a4);
      if (!result)
      {
        return result;
      }

      *a2 = v10 - v11;
    }

    return 1;
  }

  if (qword_1025D4270 != -1)
  {
    sub_101A3472C();
  }

  v6 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v13 = a3;
    v14 = 2050;
    v15 = a4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Time rolled back! t1,%{public}f,t2,%{public}f", buf, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A355C4();
    return 0;
  }

  return result;
}

BOOL sub_1000A09A8(void *a1, uint64_t a2, void *a3, double a4)
{
  v6 = a1[7];
  v7 = a1[4];
  v8 = (v7 + 8 * (v6 / 0x15));
  if (a1[5] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 192 * (v6 % 0x15);
  }

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v8;
  a3[3] = v9;
  v10 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v10;
  v11 = a1[8];
  if (!v11)
  {
    return 0;
  }

  v12 = a1[7] + v11;
  v13 = ((v12 - 1) * 0x8618618618618619) >> 64;
  v14 = (v13 + ((v12 - 1 - v13) >> 1)) >> 4;
  v15 = a1[4];
  v16 = a1[5];
  v17 = (v15 + 8 * (v12 / 0x15));
  if (*(*(v15 + 8 * v14) + 192 * (v12 - 1 - 21 * v14)) >= a4)
  {
    if (v16 == v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = *v17 + 192 * (v12 % 0x15);
    }

    v21 = a3[3];
    if (v21 != v20)
    {
      v22 = *v17;
      v23 = v20;
      v24 = v17;
      while (1)
      {
        if (v23 == v22)
        {
          v22 = *(v24 - 1);
          if (*(v22 + 3840) <= a4)
          {
LABEL_23:
            v26.n128_u64[0] = v17;
            v26.n128_u64[1] = v20;
            v27 = v24;
            v28 = v23;
            sub_100A5E074(&v26, v29);
            v25 = v29[1];
            *a2 = v29[0];
            *(a2 + 16) = v25;
            v20 = a3[3];
            return *(a2 + 24) != v20;
          }

          v23 = v22 + 4032;
          --v24;
        }

        else if (*(v23 - 192) <= a4)
        {
          goto LABEL_23;
        }

        v23 -= 192;
        if (v21 == v23)
        {
          v20 = a3[3];
          return *(a2 + 24) != v20;
        }
      }
    }

    return *(a2 + 24) != v20;
  }

  else
  {
    if (v16 == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v17 + 192 * (v12 % 0x15);
    }

    result = 0;
    *a2 = v17;
    *(a2 + 8) = v18;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
  }

  return result;
}

void sub_1000A0B7C(uint64_t a1, double *a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    sub_10009AA90(v4, a2);
    if (sub_10009B650(a1 + 168))
    {
      v5 = *(a1 + 160);
      v6 = *(v5 + 480);
      v26 = *(v5 + 464);
      v27 = v6;
      v28 = *(v5 + 496);
      v29 = *(v5 + 512);
      v7 = *(v5 + 416);
      v22 = *(v5 + 400);
      v23 = v7;
      v8 = *(v5 + 448);
      v24 = *(v5 + 432);
      v25 = v8;
      v9 = *(v5 + 352);
      v18 = *(v5 + 336);
      v19 = v9;
      v10 = *(v5 + 384);
      v20 = *(v5 + 368);
      v21 = v10;
      if (*(a1 + 416) && *(a1 + 425) == 1)
      {
        if (BYTE8(v19) == 1)
        {
          v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:*a2];
          [*(a1 + 416) writeToHealthRunningSpeed:v11 startDate:v11 endDate:*&v19];
        }

        else
        {
          if (qword_1025D4270 != -1)
          {
            sub_101AD126C();
          }

          v12 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "[PaceController] Not writing to HK, invalid running speed", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AD1280();
          }
        }
      }

      if (*(a1 + 424) == 1)
      {
        sub_10068011C(&v18, buf);
        if (qword_102637F48 != -1)
        {
          sub_101AD136C();
        }

        if (qword_102637F50)
        {
          operator new();
        }

        PB::Base::~Base(buf);
      }

      if (qword_1025D4270 != -1)
      {
        sub_101AD1394();
      }

      v13 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134223872;
        v31 = v18.i64[0];
        v32 = 2048;
        v33 = v18.i64[1];
        v34 = 2048;
        v35 = v19;
        v36 = 2048;
        v37 = *(&v21 + 1);
        v38 = 2048;
        v39 = *(&v22 + 1);
        v40 = 2048;
        v41 = v23;
        v42 = 2048;
        v43 = *(&v23 + 1);
        v44 = 2048;
        v45 = v20;
        v46 = 2048;
        v47 = *(&v20 + 1);
        v48 = 2048;
        v49 = v24;
        v50 = 2048;
        v51 = *(&v24 + 1);
        v52 = 1026;
        v53 = BYTE1(v21);
        v54 = 1026;
        v55 = v21;
        v56 = 2048;
        v57 = v25;
        v58 = 2048;
        v59 = *(&v25 + 1);
        v60 = 2048;
        v61 = *(&v26 + 1);
        v62 = 2048;
        v63 = v26;
        v64 = 1026;
        v65 = BYTE8(v19);
        v66 = 2048;
        v67 = v22;
        v68 = 2048;
        v69 = v27;
        v70 = 2048;
        v71 = *(&v27 + 1);
        v72 = 2048;
        v73 = v28;
        v74 = 2048;
        v75 = *(&v28 + 1);
        v76 = 1026;
        v77 = HIBYTE(v29);
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[RunningSpeedKF],startTime,%.2f,endTime,%.2f,runningSpeed,%.2f,deltaPedDist,%.2f,deltaOdoDist,%.2f,deltaPedTime,%.2f,deltaOdoTime,%.2f,pedSpeed,%.2f,odoSpeed,%.2f,algDelay,%.2f,biasFactor,%.2f,isValidPedometerSpeed,%{public}d,isValidOdometerSpeed,%{public}d,stateCovariance,%.2f,processNoise,%.2f,epsPed,%.2f,epsOdo,%.2f,isValidRunningSpeed,%{public}d,deltaCalPedDist,%.2f,measNoiseOdo,%.3f,measNoisePed,%.3f,kalmanGainOdo,%.2f,kalmanGainPed,%.2f,isTrackRunOdometer,%{public}d", buf, 0xE2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AD13BC(v18.i64);
      }
    }
  }

  v14 = *a2;
  v15 = *(a1 + 408);
  v16 = sub_1000A0200((a2 + 1));
  sub_10009B69C((a1 + 8), a2, v15, v16, v14);
  *(a1 + 384) = v17;
}

void sub_1000A0F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  PB::Base::~Base(va);
  _Unwind_Resume(a1);
}

double sub_1000A0FB0(void *a1)
{
  v1 = a1[85];
  if (v1)
  {
    v3 = v1;
    v4 = a1[84];
    v5 = a1[81];
    v6 = (*(v5 + 8 * ((v1 + v4 - 1) / 0xAA)) + 24 * ((v1 + v4 - 1) % 0xAA));
    v7 = (*(v5 + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA));
    v8 = *v6 - *v7 + 2.56;
    if (v3 * 2.56 / v8 >= 0.5)
    {
      v12 = v6[1] - v7[1];
      v13 = v6[2] - v7[2];
      if (v13 <= 0.0 || v12 <= 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10032515C();
        }

        v14 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v31 = v12;
          v32 = 2048;
          v33 = v13;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[RunningSpeedKF] calcBiasFactor - invalid (ped, ref) buffer distance: %.2f, %.2f", buf, 0x16u);
        }

        v10 = 0.0;
        if (sub_10000A100(121, 0))
        {
          sub_101B00CB4();
        }
      }

      else if (v13 <= 20.0 || v12 <= 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10032515C();
        }

        v15 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
        {
          v16 = a1[85] + a1[84] - 1;
          v17 = *(*(a1[81] + 8 * (v16 / 0xAA)) + 24 * (v16 % 0xAA));
          *buf = 134218496;
          v31 = v17;
          v32 = 2048;
          v33 = v12;
          v34 = 2048;
          v35 = v13;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "[RunningSpeedKF] calcBiasFactor - insufficient distance (latest time, ped, odo): %.2f, %.2f, %.2f", buf, 0x20u);
        }

        v10 = 0.0;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4270 != -1)
          {
            sub_101B0048C();
          }

          v19 = a1[85] + a1[84] - 1;
          v20 = *(*(a1[81] + 8 * (v19 / 0xAA)) + 24 * (v19 % 0xAA));
          v24 = 134218496;
          v25 = v20;
          v26 = 2048;
          v27 = v12;
          v28 = 2048;
          v29 = v13;
          LODWORD(v23) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 1, "[RunningSpeedKF] calcBiasFactor - insufficient distance (latest time, ped, odo): %.2f, %.2f, %.2f", COERCE_DOUBLE(&v24), v23);
          v22 = v21;
          sub_100152C7C("Generic", 1, 0, 2, "double CLPedometer::RunningSpeedKF::calcBiasFactor() const", "%s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }

      else
      {
        return v13 / v12;
      }
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_10032515C();
      }

      v9 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v31 = v3;
        v32 = 2048;
        v33 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[RunningSpeedKF] calcBiasFactor - fDistanceBuffer has too many gaps (buffer size, buffer duration): %.2f, %.2f", buf, 0x16u);
      }

      v10 = 0.0;
      if (sub_10000A100(121, 2))
      {
        sub_101B00DB4();
      }
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_10032515C();
    }

    v11 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "[RunningSpeedKF] calcBiasFactor - empty distance buffer", buf, 2u);
    }

    v10 = 0.0;
    if (sub_10000A100(121, 2))
    {
      sub_101B00EB4();
    }
  }

  return v10;
}

uint64_t sub_1000A144C(uint64_t a1, uint64_t a2, int a3)
{
  if (*a2 != 1)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  if (v3 >= 0.0 && v3 <= 13.0)
  {
    return a3 ^ 1u;
  }

  if (qword_1025D4270 != -1)
  {
    sub_10032515C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "[RunningSpeedKF] Running speed out of range %.2f", &v7, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B010A0();
    return 0;
  }

  return result;
}

uint64_t sub_1000A154C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_101D076A8[v1];
  }
}

BOOL sub_1000A1570(double a1, uint64_t a2, void *a3, double *a4)
{
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  result = sub_1000A09A8(a3, &v33, &v31, a1);
  if (result)
  {
    v7 = *(&v34 + 1);
    v8 = *v34;
    v9 = *(&v34 + 1) - *v34;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 6);
    v11 = v10 - 1;
    if (v9 < 193)
    {
      v15 = ((21 - v10) * 0x8618618618618619) >> 64;
      v16 = v15 + ((21 - v10 - v15) >> 1);
      v13 = *(v34 - 8 * (v16 >> 4));
      v14 = v13 + 192 * (v10 - 21 + 21 * (v16 >> 4)) + 3840;
      if (*(&v32 + 1) == v14)
      {
        return 0;
      }

      v12 = -(v16 >> 4);
    }

    else
    {
      v12 = v11 / 0x15;
      v13 = *(v34 + 8 * (v11 / 0x15));
      v14 = v13 + 192 * (v11 % 0x15);
      if (*(&v32 + 1) == v14)
      {
        return 0;
      }
    }

    if (v14 == v13)
    {
      v14 = *(v34 + 8 * v12 - 8) + 4032;
    }

    if (*(v14 - 192) > a1)
    {
      return 0;
    }

    v17 = *(&v34 + 1);
    if (*(&v34 + 1) == v8)
    {
      v17 = *(v34 - 8) + 4032;
    }

    if (*(v17 - 192) <= a1)
    {
      return 0;
    }

    if (v9 < 193)
    {
      v21 = ((21 - v10) * 0x8618618618618619) >> 64;
      v22 = (v21 + ((21 - v10 - v21) >> 1)) >> 4;
      v18 = -v22;
      v19 = *(v34 - 8 * v22);
      v20 = v19 + 192 * (v10 - 21 + 21 * v22) + 3840;
    }

    else
    {
      v18 = v11 / 0x15;
      v19 = *(v34 + 8 * (v11 / 0x15));
      v20 = v19 + 192 * (v11 % 0x15);
    }

    if (v20 == v19)
    {
      v20 = *(v34 + 8 * v18 - 8) + 4032;
    }

    if (v9 < 193)
    {
      v26 = 21 - v10;
      v27 = ((21 - v10) * 0x8618618618618619) >> 64;
      v28 = (v27 + ((v26 - v27) >> 1)) >> 4;
      v23 = -v28;
      v24 = *(v34 - 8 * v28);
      v25 = v24 + 192 * (21 * v28 - v26) + 3840;
    }

    else
    {
      v23 = v11 / 0x15;
      v24 = *(v34 + 8 * (v11 / 0x15));
      v25 = v24 + 192 * (v11 % 0x15);
    }

    if (v25 == v24)
    {
      v25 = *(v34 + 8 * v23 - 8) + 4032;
    }

    if (*(&v34 + 1) == v8)
    {
      v30 = *(v34 - 8);
      v29 = (v30 + 3840);
      v7 = v30 + 4032;
    }

    else
    {
      v29 = (*(&v34 + 1) - 192);
    }

    *a4 = sub_1000A1DCC(*(v20 - 192), *(v25 - 144), *v29, *(v7 - 144), a1);
    return 1;
  }

  return result;
}

double sub_1000A1844(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  v1 = sub_1000A09A8(*a1, &v5, v4, *(a1 + 32) + 5.0);
  result = -1.0;
  if (v1)
  {
    v3 = *(&v6 + 1);
    if (*(&v6 + 1) == *v6)
    {
      v3 = *(v6 - 8) + 4032;
    }

    return *(v3 - 192);
  }

  return result;
}

void *sub_1000A18B0(void *result, int a2, double a3)
{
  if (a2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    result = sub_1000A09A8(result[80], &v23, &v21, a3);
    if (result)
    {
      v4 = *(&v24 + 1);
      v5 = *(&v24 + 1) - *v24;
      v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 6);
      if (v5 < 193)
      {
        v10 = ((21 - v6) * 0x8618618618618619) >> 64;
        v11 = (v10 + ((21 - v6 - v10) >> 1)) >> 4;
        v9 = *(v24 - 8 * v11) + 192 * (v6 - 21 + 21 * v11) + 3840;
      }

      else
      {
        v7 = ((v6 - 1) * 0x8618618618618619) >> 64;
        v8 = (v7 + ((v6 - 1 - v7) >> 1)) >> 4;
        v9 = *(v24 + 8 * v8) + 192 * (v6 - 1 - 21 * v8);
      }

      if (*(&v22 + 1) != v9)
      {
        if (v5 < 385)
        {
          v15 = ((22 - v6) * 0x8618618618618619) >> 64;
          v16 = (v15 + ((22 - v6 - v15) >> 1)) >> 4;
          v14 = *(v24 - 8 * v16) + 192 * (v6 - 22 + 21 * v16) + 3840;
        }

        else
        {
          v12 = ((v6 - 2) * 0x8618618618618619) >> 64;
          v13 = (v12 + ((v6 - 2 - v12) >> 1)) >> 4;
          v14 = *(v24 + 8 * v13) + 192 * (v6 - 2 - 21 * v13);
        }

        if (*(&v22 + 1) != v14)
        {
          v17 = v5 < 577 ? *(v24 - 8 * ((23 - v6) / 0x15)) + 192 * (21 * ((23 - v6) / 0x15) - (23 - v6)) + 3840 : *(v24 + 8 * ((v6 - 3) / 0x15)) + 192 * ((v6 - 3) % 0x15);
          if (*(&v22 + 1) != v17)
          {
            if (*(&v24 + 1) == *v24)
            {
              v4 = *(v24 - 8) + 4032;
            }

            if (*(v4 - 192) > a3)
            {
              v18 = v23;
              v19[0] = v24;
              sub_10009A4A0(v19, -1);
              v19[1] = v18;
              v20 = v19[0];
              sub_10009A4A0(v19, -1);
              if (*(&v19[0] + 1) != *(&v22 + 1))
              {
                v19[0] = v20;
                sub_10009A4A0(v19, -1);
              }

              v19[0] = v20;
              result = sub_10009A4A0(v19, -2);
              if (*(&v19[0] + 1) != *(&v22 + 1))
              {
                v19[0] = v20;
                return sub_10009A4A0(v19, -2);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A1C28(uint64_t a1)
{
  if (*(a1 + 160) && sub_10009B650(a1 + 168))
  {
    return 3;
  }

  if (*(a1 + 148) < 1)
  {
    return 1;
  }

  return 2;
}

double sub_1000A1C74(uint64_t a1)
{
  if (!*(a1 + 160) || !sub_10009B650(a1 + 168))
  {
    return *(a1 + 384);
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    if (*(v2 + 360))
    {
      v3 = *(v2 + 352);
      v4 = 1.0 / v3;
      v5 = v3 == 0.0;
      result = 0.0;
      if (!v5)
      {
        return v4;
      }

      return result;
    }

    if (qword_1025D4270 != -1)
    {
      sub_101AD126C();
    }

    v9 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[PaceController] getPace - RunningSpeedKF pace invalid", v11, 2u);
    }

    v10 = sub_10000A100(121, 2);
    result = 0.0;
    if (v10)
    {
      sub_101AD1720();
      return 0.0;
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_101AD126C();
    }

    v7 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "[PaceController] getPace - invalid output configuration!", buf, 2u);
    }

    v8 = sub_10000A100(121, 0);
    result = 0.0;
    if (v8)
    {
      sub_101AD1808();
      return 0.0;
    }
  }

  return result;
}

void sub_1000A1DEC(uint64_t a1, int a2, int a3, double a4, double a5, double a6, double a7, float64_t a8, float64_t a9)
{
  std::mutex::lock(a1);
  if (*(a1 + 208) == 1)
  {
    if (*(a1 + 200) < 0.0)
    {
      *(a1 + 200) = CFAbsoluteTimeGetCurrent();
      *(a1 + 216) = a4;
      *(a1 + 232) = a5;
      *(a1 + 248) = a6;
      *(a1 + 264) = a7;
      *(a1 + 280) = a2;
      if (qword_1025D4270 != -1)
      {
        sub_101A6FE6C();
      }

      v16 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 200);
        *buf = 134217984;
        v27 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLWorkoutDistanceCoreAnalyzer::collectCoreAnalytics: Initializing core analytics time: %f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A6FE80(buf);
        v19 = *(a1 + 200);
        v24 = 134217984;
        v25 = v19;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "CLWorkoutDistanceCoreAnalyzer::collectCoreAnalytics: Initializing core analytics time: %f", COERCE_DOUBLE(&v24));
        v21 = v20;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutDistanceCoreAnalyzer::collectCoreAnalytics(double, double, double, double, double, double, int, BOOL)", "%s\n", v20);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    *(a1 + 224) = a4;
    *(a1 + 240) = a5;
    *(a1 + 256) = a6;
    *(a1 + 272) = a7;
    *(a1 + 284) = a2;
    v18.f64[0] = a8;
    v18.f64[1] = a9;
    *(a1 + 296) = vaddq_f64(*(a1 + 296), v18);
    *(a1 + 288) += a3;
    *(a1 + 292) += a3 ^ 1;
    ++*(a1 + 212);
  }

  std::mutex::unlock(a1);
}

void sub_1000A2048(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1000A20A4(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = *(a1 + 104);
  *(a1 + 104) = a2.n128_u64[0];
  v5 = a2.n128_f64[0] > 0.0;
  if (v4 <= a2.n128_f64[0])
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 104);
      v8 = *(a1 + 121);
      *buf = 134218752;
      v34 = v7 - v4;
      v35 = 2048;
      v36 = v4;
      v37 = 2048;
      v38 = v7;
      v39 = 1024;
      v40 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, elevation, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v20 = *(a1 + 104);
      v21 = *(a1 + 121);
      v25 = 134218752;
      v26 = v20 - v4;
      v27 = 2048;
      v28 = v4;
      v29 = 2048;
      v30 = v20;
      v31 = 1024;
      v32 = v21;
      LODWORD(v24) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, elevation, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", COERCE_DOUBLE(&v25), v24);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLElevationChangeEntry>::update(CFAbsoluteTime)", "%s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < v2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = (v10 + 8 * (v9 >> 6));
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12 + ((*(a1 + 56) & 0x3FLL) << 6);
  }

  v14 = v10 + 8 * (v9 >> 6);
LABEL_19:
  v15 = v13;
  while (1)
  {
    v16 = v11 == v10 ? 0 : *(v10 + (((*(a1 + 64) + v9) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((*(a1 + 64) + v9) & 0x3F) << 6);
    if (v15 == v16 || *(a1 + 104) + -1200.0 <= *(v15 + 8))
    {
      break;
    }

    v13 += 64;
    v15 += 64;
    if (*v14 + 4096 == v13)
    {
      v17 = *(v14 + 8);
      v14 += 8;
      v13 = v17;
      goto LABEL_19;
    }
  }

  if (v11 == v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v12 + ((*(a1 + 56) & 0x3FLL) << 6);
  }

  return sub_1000A2D90((a1 + 24), v12, v18, v14, v13);
}

uint64_t sub_1000A23E0(uint64_t a1, uint64_t a2)
{
  if (qword_10265EF48 != -1)
  {
    sub_101A926F8();
  }

  return qword_102637F38;
}

void *sub_1000A2418(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = *(a1 + 104);
  *(a1 + 104) = a2.n128_u64[0];
  v5 = a2.n128_f64[0] > 0.0;
  if (v4 <= a2.n128_f64[0])
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101A35BA4();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101A35CA8();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>::update(CFAbsoluteTime) [T = CLMotionStateMediator_Type::MediatedMotionActivity]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < v2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x11));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 232 * (v10 % 0x11));
  }

  v15 = (v11 + 8 * (v10 / 0x11));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(*(a1 + 32) + 8 * ((*(a1 + 64) + v10) / 0x11)) + 232 * ((*(a1 + 64) + v10) % 0x11);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 29;
    v14 += 232;
    if ((*v15 + 3944) == v14)
    {
      v18 = *(v15 + 1);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 232 * (v10 % 0x11));
  }

  return sub_100C4ACDC((a1 + 24), v13, v19, v15, v14);
}

uint64_t sub_1000A2798(uint64_t a1, uint64_t a2)
{
  *(a2 + 224) = 0;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = (*(*a1 + 16))(a1, &v18, &v16);
  if (result)
  {
    v4 = *(&v19 + 1);
    if (*(&v19 + 1) == *(&v17 + 1))
    {
      return 0;
    }

    else
    {
      if (*v19 == *(&v19 + 1))
      {
        v4 = *(v19 - 8) + 3944;
      }

      v5 = *(v4 - 232);
      v6 = *(v4 - 200);
      *(a2 + 16) = *(v4 - 216);
      *(a2 + 32) = v6;
      *a2 = v5;
      v7 = *(v4 - 184);
      v8 = *(v4 - 168);
      v9 = *(v4 - 136);
      *(a2 + 80) = *(v4 - 152);
      *(a2 + 96) = v9;
      *(a2 + 48) = v7;
      *(a2 + 64) = v8;
      v10 = *(v4 - 120);
      v11 = *(v4 - 104);
      v12 = *(v4 - 72);
      *(a2 + 144) = *(v4 - 88);
      *(a2 + 160) = v12;
      *(a2 + 112) = v10;
      *(a2 + 128) = v11;
      v13 = *(v4 - 56);
      v14 = *(v4 - 40);
      v15 = *(v4 - 24);
      *(a2 + 224) = *(v4 - 8);
      *(a2 + 192) = v14;
      *(a2 + 208) = v15;
      *(a2 + 176) = v13;
      return 1;
    }
  }

  return result;
}

unint64_t sub_1000A28B0(void *a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x8F9C18F9C18F9C19 * (&a5[-*a4] >> 3) + 2 * (a4 - a2) + 0x7063E7063E7063E7 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 >> 4));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 328 * (a1[4] & 0xFLL));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x8F9C18F9C18F9C19 * (&a3[-*a2] >> 3) + 2 * (a2 - v9) + 0x7063E7063E7063E7 * (&v10[-*v9] >> 3);
  }

  v22[0].n128_u64[0] = v8 + 8 * (v7 >> 4);
  v22[0].n128_u64[1] = v10;
  sub_1000A2AE4(v22, v11);
  if (v6 >= 1)
  {
    v12 = v22[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000A2AE4(v22, v6);
      sub_1000AA884(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v22[0].n128_u64[0], v22[0].n128_u64[1], v22);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000A2AE4(v22, v6);
      v13 = v22[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 >> 4));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 328 * (v14 & 0xF));
      }

      v22[0] = v12;
      sub_1000AAFA4(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v22);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[1];
  if (a1[2] == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v19 + 8 * (a1[4] >> 4)) + 328 * (a1[4] & 0xFLL);
  }

  v22[0].n128_u64[0] = v19 + 8 * (a1[4] >> 4);
  v22[0].n128_u64[1] = v20;
  sub_1000A2AE4(v22, v11);
  return v22[0].n128_u64[0];
}

uint64_t **sub_1000A2AE4(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x7063E7063E7063E7 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v7 = 15 - v3;
      v8 = (v2 - 8 * (v7 >> 4));
      *result = v8;
      v5 = *v8;
      v6 = ~v7 & 0xF;
    }

    else
    {
      v4 = (v2 + ((v3 >> 1) & 0x7FFFFFFFFFFFFFF8));
      *result = v4;
      v5 = *v4;
      v6 = v3 & 0xF;
    }

    result[1] = (v5 + 328 * v6);
  }

  return result;
}

double sub_1000A2B60(unint64_t *a1, double *a2)
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
    sub_1005A8588(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

uint64_t sub_1000A2BE8(uint64_t a1, int a2)
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

BOOL sub_1000A2C48(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x11));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 232 * (v4 % 0x11);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x11));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 232 * (v9 % 0x11);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 3944;
      }

      v18 = vabdd_f64(*(v17 - 232), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 3944;
        }

        v14 = v18;
        if (*(v19 - 232) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 3944;
      }

      v15 -= 232;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

void *sub_1000A2D90(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 6) + 8 * (a4 - a2) - ((a3 - *a2) >> 6);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 6));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + ((a1[4] & 0x3FLL) << 6);
  }

  v33 = (v7 + 8 * (a1[4] >> 6));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 6) + 8 * (a2 - v8) - ((v9 - *v8) >> 6);
  }

  v11 = sub_1000A2FC8(&v33, v10);
  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v12;
  if (v6 >= 1)
  {
    if (v10 <= (a1[5] - v6) >> 1)
    {
      v19 = v11;
      v20 = v12;
      v21 = v33;
      v22 = v34;
      v23 = sub_1000A2FC8(&v32, v6);
      sub_1000AAB24(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 64;
          v34 = v25;
          if (&v25[-*v26] == 4096)
          {
            v27 = v26[1];
            ++v26;
            v25 = v27;
            v33 = v26;
            v34 = v27;
          }
        }

        while (v25 != v36);
      }

      v28 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v28;
        ;
      }
    }

    else
    {
      v13 = sub_1000A2FC8(&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 6));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = (*v17 + 64 * (v15 & 0x3F));
      }

      v35 = v32;
      sub_1000A7478(v13, v14, v17, v18, &v35);
      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[1];
  if (a1[2] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + 8 * (a1[4] >> 6)) + ((a1[4] & 0x3FLL) << 6);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 6);
  v35.n128_u64[1] = v30;
  return sub_1000A2FC8(&v35, v10);
}

void *sub_1000A2FC8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 6);
    if (v4 < 1)
    {
      result -= (63 - v4) >> 6;
    }

    else
    {
      result += v4 >> 6;
    }
  }

  return result;
}

uint64_t sub_1000A302C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

unsigned __int16 *sub_1000A3054(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[8 * (v3 - v2) + 4] = *a2;
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

BOOL sub_1000A31D0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = (v4 + 8 * (*(a1 + 56) >> 4));
  if (*(a1 + 40) == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 328 * (*(a1 + 56) & 0xFLL);
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v5;
  a3[3] = v6;
  v7 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v7;
  v8 = *(a1 + 56) + *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = (v9 + 8 * (v8 >> 4));
  if (*(a1 + 40) == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + 328 * (v8 & 0xF);
  }

  if (a3[3] != v11)
  {
    v12 = *v10;
    v13 = 1.79769313e308;
    v14 = v11;
    v15 = v10;
    while (1)
    {
      v16 = v14;
      if (v14 == v12)
      {
        v16 = *(v15 - 1) + 5248;
      }

      v17 = vabdd_f64(*(v16 - 328), a4);
      if (v17 < v13 && v17 < *(a1 + 16))
      {
        *a2 = v10;
        *(a2 + 8) = v11;
        *(a2 + 16) = v15;
        *(a2 + 24) = v14;
        v12 = *v15;
        v18 = v14;
        if (v14 == *v15)
        {
          v18 = *(v15 - 1) + 5248;
        }

        v13 = v17;
        if (*(v18 - 328) == a4)
        {
          break;
        }
      }

      if (v14 == v12)
      {
        v19 = *--v15;
        v12 = v19;
        v14 = v19 + 5248;
      }

      v14 -= 328;
      if (a3[3] == v14)
      {
        v11 = v14;
        return *(a2 + 24) != v11;
      }
    }

    v11 = a3[3];
  }

  return *(a2 + 24) != v11;
}

id *sub_1000A330C(uint64_t a1, double *a2, char a3)
{
  v40[0] = os_transaction_create();
  v40[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v40);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v6 = (*(*a1 + 104))(a1, v38);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101BD1FE0();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD2008(buf);
        LOWORD(v41) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "Failed to insert record due to failure from reading the most recent entry.", &v41, 2);
        v16 = v15;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      goto LABEL_41;
    }

    v7 = a2[1];
    v8 = v39;
    v9 = v7 - v39;
    if (v7 - v39 < 0.0)
    {
      v9 = -(v7 - v39);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101BD1FE0();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 1);
        *buf = 134349312;
        v46 = v39;
        v47 = 2050;
        v48 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD2008(buf);
        v30 = *(a2 + 1);
        v41 = 134349312;
        v42 = v39;
        v43 = 2050;
        v44 = v30;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", &v41, 22);
        v32 = v31;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      CLWriteStackshot();
      v7 = a2[1];
      v8 = v39;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101BD1FE0();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = a2[1];
          *buf = 134217984;
          v46 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD2008(buf);
          v33 = a2[1];
          v41 = 134217984;
          v42 = v33;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", COERCE_DOUBLE(&v41));
          v35 = v34;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v34);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v17 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101BD1FE0();
      }

      v18 = v7 - v8 - v17;
      v19 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v46 = v18;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD2008(buf);
        v41 = 134217984;
        v42 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", COERCE_DOUBLE(&v41));
        v37 = v36;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v36);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      (*(*a1 + 96))(a1, v18);
    }

    (*(*a1 + 144))(a1, v38, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v20 = *a2;
  v21 = *(a2 + 1);
  v22 = *(a2 + 3);
  *(a1 + 256) = *(a2 + 2);
  *(a1 + 272) = v22;
  *(a1 + 224) = v20;
  *(a1 + 240) = v21;
  v23 = *(a2 + 4);
  v24 = *(a2 + 5);
  v25 = *(a2 + 7);
  *(a1 + 320) = *(a2 + 6);
  *(a1 + 336) = v25;
  *(a1 + 288) = v23;
  *(a1 + 304) = v24;
  v26 = *(a2 + 8);
  v27 = *(a2 + 9);
  v28 = *(a2 + 10);
  *(a1 + 400) = a2[22];
  *(a1 + 368) = v27;
  *(a1 + 384) = v28;
  *(a1 + 352) = v26;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v40);
}

__n128 sub_1000A3B08(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a2 + 96) = a3[6];
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  result = a3[8];
  v10 = a3[9];
  v11 = a3[10];
  *(a2 + 176) = *(a3 + 22);
  *(a2 + 144) = v10;
  *(a2 + 160) = v11;
  *(a2 + 128) = result;
  return result;
}

void sub_1000A3B44(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_1000A3B54(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_1000A40C4(uint64_t a1, int *a2, _OWORD *a3, int a4, int a5)
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
      sub_1000A4758(a3);
    }
  }
}

void sub_1000A45D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A4600(uint64_t result, __int128 ***a2)
{
  v2 = **a2;
  if (v2 != (*a2)[1])
  {
    v4 = result;
    do
    {
      memset(&v9[4], 0, 128);
      v5 = *v2;
      v6 = v2[1];
      v7 = v2[3];
      v9[2] = v2[2];
      v9[3] = v7;
      v9[0] = v5;
      v9[1] = v6;
      v8 = 8;
      result = (*(*v4 + 152))(v4, &v8, v9, 0, 0xFFFFFFFFLL, 0);
      v2 += 4;
    }

    while (v2 != (*a2)[1]);
  }

  return result;
}

void sub_1000A46CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000A4600(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_1000A4740(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000A482C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1004D4538(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1000A4D94(a1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1000A48C8(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_1000A482C(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
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
              sub_1000A4C84(a1, &v38, &v39, a3);
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
                sub_10189A8F8();
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
                  sub_10189A8F8();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLOdometerNotifier_Type::Notification, CLOdometerNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLOdometerNotifier_Type::Notification, NotificationData_T = CLOdometerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_1000A4C84(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1000A482C(a4);
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

void sub_1000A4D7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

id sub_1000A4D94(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10189B1DC();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D342 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189B400();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10189B1DC();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D342 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189B508();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_1000A4F98(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_1000A4FAC(uint64_t a1, int *a2, const void *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000A5178(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000A5178(uint64_t a1, uint64_t a2, int *a3, const void *a4)
{
  if (*a3 == 5)
  {
    v5 = a1 + 6648;

    sub_100D35F40(v5, a4);
  }

  else if (*a3 == 1)
  {
    v4 = (a1 + 4608);

    sub_1000A0394(v4, a4);
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v8 = *a3;
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "MotionStateMediator received unhandled step count notification, %d", v9, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019039C8(a3);
    }
  }
}

id sub_1000A52EC(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v12[8] = a3[8];
  v12[9] = v5;
  v6 = a3[11];
  v12[10] = a3[10];
  v12[11] = v6;
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  return [a4 onOdometerNotification:v4 data:v12];
}

id sub_1000A534C(uint64_t a1, int a2, void *a3)
{
  result = sub_1000A482C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1000A53A4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[57] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

void *sub_1000A5420(void *result, uint64_t a2, _DWORD *a3, const void *a4)
{
  if (*a3 == 1)
  {
    return sub_1000A0394(result, a4);
  }

  return result;
}

void sub_1000A5444(uint64_t *a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101AE9E4C();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v4 = a1[40];
    v5 = a1[27];
    v6 = *(a1 + 56);
    v7 = a1[30];
    v8 = a1[31];
    v9 = 134219264;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "ExtendedSteps,%f,firstStepTime,%f,lastStepTime,%f,rawPace,%f,incrementalSteps,%u,odometerSpeed,%f", &v9, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AEB358(a1);
  }
}

uint64_t sub_1000A555C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1000A589C(unsigned __int16 *a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, double a6)
{
  v9 = (a6 * 1000000.0);
  HIDWORD(v71) = 0;
  v72 = *&v9;
  *&v71 = (a2 - a3) / 100.0;
  v66 = 0.0;
  v68 = 0u;
  v69 = 0;
  v67 = v9;
  if (*(a1 + 672) != a5)
  {
    v10 = a5;
    if (*(a1 + 656) == 1)
    {
      v11 = -0.00355555548;
      if (a5)
      {
        v11 = -0.0127999997;
      }

      v12 = exp(v11);
      *(a1 + 142) = 0;
      *(a1 + 72) = 1.0 - v12;
      *(a1 + 73) = 0;
    }

    else
    {
      v13 = -0.00355555548;
      if (a5)
      {
        v13 = -0.0127999997;
      }

      *(a1 + 72) = 1.0 - exp(v13);
      *(a1 + 142) = 3;
    }

    *(a1 + 592) = 0;
    if (qword_1025D4410 != -1)
    {
      sub_10195AF44();
    }

    v14 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 656);
      *buf = 67109376;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "significant elevation break frequency change, inVisit, %d, resetCheck, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195AF58(a1 + 656, v10);
    }

    *(a1 + 672) = v10;
  }

  sub_1000A60FC(a1 + 24, &v71, &v66);
  v17 = a1[1];
  v18 = *(a1 + 1);
  v19 = a1 + 4;
  v20 = *a1;
  if (v20 + v17 >= v18)
  {
    v21 = *(a1 + 1);
  }

  else
  {
    v21 = 0;
  }

  *&v19[4 * (v20 + v17 - v21)] = *&v9;
  if (v18 <= v17)
  {
    v22 = v20 + 1;
    if (v22 < v18)
    {
      LOWORD(v18) = 0;
    }

    *a1 = v22 - v18;
  }

  else
  {
    LOWORD(v17) = v17 + 1;
    a1[1] = v17;
  }

  if (*(a1 + 656) == 1)
  {
    v23 = *(a1 + 79) + *&v71;
  }

  else
  {
    v23 = *(a1 + 80);
  }

  *(a1 + 80) = v23;
  HIDWORD(v65) = 0;
  if (v17)
  {
    v24 = a1 + 340;
    *&v16 = 134221826;
    v63 = v16;
    while (1)
    {
      if (!sub_1000A68A8((a1 + 24), *&v19[4 * *a1], &v65 + 1))
      {
        return;
      }

      v25 = *&v19[4 * *a1] * 0.000001;
      *buf = *(&v65 + 1);
      sub_1000A6810((a1 + 284), buf);
      v26 = *(a1 + 73);
      *(a1 + 80) = v26 + *(a1 + 79);
      *(a1 + 656) = 0;
      v27 = *(a1 + 156);
      v28 = *(&v65 + 1);
      if (v27 == -1)
      {
        if (v26 + -0.25 > v28)
        {
          goto LABEL_37;
        }

        if (v26 < v28)
        {
          v29 = *(a1 + 75);
          if (v29 != 0.0)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v27 == 1)
        {
          if (v26 + 0.25 >= v28)
          {
            if (v26 > v28)
            {
              v29 = *(a1 + 75);
              if (v29 != 0.0)
              {
                goto LABEL_47;
              }

              goto LABEL_48;
            }

            goto LABEL_43;
          }

LABEL_37:
          sub_10085C124(a1, v25, *(&v65 + 1));
          goto LABEL_43;
        }

        if (vabdd_f64(v28, v26) > 2.0)
        {
          sub_10085C564(a1, v25, v28 - v26);
          *(a1 + 79) = *(a1 + 79) - (v28 - *(a1 + 73));
          *(a1 + 73) = v28;
          *(a1 + 142) = 3;
        }
      }

LABEL_43:
      v29 = *(a1 + 75);
      v30 = *(a1 + 152);
      if (v29 != 0.0)
      {
        *(a1 + 152) = ++v30;
      }

      if (v30 < 12)
      {
        goto LABEL_49;
      }

      if (v29 != 0.0)
      {
LABEL_47:
        sub_10085C564(a1, *(a1 + 77), v29);
      }

LABEL_48:
      *(a1 + 75) = 0;
      *(a1 + 152) = 0;
      *(a1 + 156) = 0;
LABEL_49:
      if (qword_1025D4310 != -1)
      {
        sub_10195AF1C();
      }

      v31 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
      {
        v32 = a1 + 340;
        if (*(a1 + 703) < 0)
        {
          v32 = *v24;
        }

        v33 = *(a1 + 73);
        v34 = *(a1 + 66);
        v35 = *(a1 + 67);
        v36 = *(a1 + 136);
        v37 = *(a1 + 137);
        v38 = *(a1 + 75);
        v39 = *(a1 + 77);
        v40 = *(a1 + 156);
        v41 = *(a1 + 79);
        v42 = *(a1 + 80);
        v43 = *(a1 + 83);
        *buf = v63;
        *&buf[4] = *(&v65 + 1);
        *&buf[12] = 2048;
        v106 = v33;
        v107 = 2048;
        v108 = v34;
        v109 = 2048;
        v110 = v35;
        v111 = 2048;
        v112 = v36;
        v113 = 2048;
        v114 = v37;
        v115 = 2048;
        v116 = v38;
        v117 = 2048;
        v118 = v39;
        v119 = 2048;
        v120 = v40;
        v121 = 1024;
        v122 = a4;
        v123 = 2080;
        v124 = v32;
        v125 = 2048;
        v126 = v25;
        v127 = 2048;
        v128 = a6;
        v129 = 2048;
        v130 = v41;
        v131 = 2048;
        v132 = v42;
        v133 = 2048;
        v134 = v43;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "Altitude,%f,ReferenceAltitude,%f,ElevationStartTime,%f,ElevationEndTime,%f,AscendedElevation,%f,DescendedElevation,%f,BufferedAscendedElevation,%f,BufferedTimeStamp,%f,AscendingState,%f,ElevationDeviceSource,%d,ElevationLabel,%s,EpochTime,%f,UpdateTime,%f,cumulativeAltitudeFilterResetChange,%f,weatherChangeEstimate,%f,weatherBias,%f", buf, 0x9Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4310 != -1)
        {
          sub_10195AF1C();
        }

        v48 = *(a1 + 73);
        v49 = *(a1 + 66);
        v50 = *(a1 + 67);
        v51 = *(a1 + 75);
        v52 = *(a1 + 77);
        v53 = *(a1 + 156);
        v54 = a1 + 340;
        if (*(a1 + 703) < 0)
        {
          v54 = *v24;
        }

        v55 = *(a1 + 79);
        v56 = *(a1 + 136);
        v57 = *(a1 + 80);
        v58 = *(a1 + 83);
        v59 = *(a1 + 137);
        v73 = v63;
        v74 = *(&v65 + 1);
        v75 = 2048;
        v76 = v48;
        v77 = 2048;
        v78 = v49;
        v79 = 2048;
        v80 = v50;
        v81 = 2048;
        v82 = v56;
        v83 = 2048;
        v84 = v59;
        v85 = 2048;
        v86 = v51;
        v87 = 2048;
        v88 = v52;
        v89 = 2048;
        v90 = v53;
        v91 = 1024;
        v92 = a4;
        v93 = 2080;
        v94 = v54;
        v95 = 2048;
        v96 = v25;
        v97 = 2048;
        v98 = a6;
        v99 = 2048;
        v100 = v55;
        v101 = 2048;
        v102 = v57;
        v103 = 2048;
        v104 = v58;
        LODWORD(v62) = 158;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 2, "Altitude,%f,ReferenceAltitude,%f,ElevationStartTime,%f,ElevationEndTime,%f,AscendedElevation,%f,DescendedElevation,%f,BufferedAscendedElevation,%f,BufferedTimeStamp,%f,AscendingState,%f,ElevationDeviceSource,%d,ElevationLabel,%s,EpochTime,%f,UpdateTime,%f,cumulativeAltitudeFilterResetChange,%f,weatherChangeEstimate,%f,weatherBias,%f", COERCE_DOUBLE(&v73), v62, *&v63, *(&v63 + 1), v64, v65, v66, *&v67, *&v68, DWORD2(v68), v69, v70, v71, v72);
        v61 = v60;
        sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantElevationEstimator::updateWithVisit(CFAbsoluteTime, uint32_t, uint32_t, CLElevationSource, BOOL)", "%s\n", v60);
        if (v61 != buf)
        {
          free(v61);
        }
      }

      v44 = a1[1];
      if (v44)
      {
        v45 = *a1 + 1;
        v46 = *(a1 + 1);
        if (v45 < v46)
        {
          LOWORD(v46) = 0;
        }

        *a1 = v45 - v46;
        v47 = v44 - 1;
        a1[1] = v47;
        if (v47)
        {
          continue;
        }
      }

      return;
    }
  }
}

unsigned __int16 *sub_1000A60FC(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[224] & 1) == 0)
  {
    v6 = (a2 + 8);
    v7 = *a1 + a1[1] - 1;
    v8 = *(a1 + 1);
    if (v7 < v8)
    {
      v8 = 0;
    }

    if (*(a2 + 8) > *&a1[8 * (v7 - v8) + 8])
    {
      goto LABEL_12;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101AE92B8();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *v6;
      LODWORD(v29) = 134217984;
      *(&v29 + 4) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "fElevationBuffer timestamp did not move forward, timestamp, %llu", &v29, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AE92CC((a2 + 8));
    }

    sub_100F96FE0(a1);
    if ((a1[224] & 1) == 0)
    {
LABEL_12:
      v11 = a1[80] + a1[81] - 1;
      v12 = *(a1 + 41);
      if (v11 < v12)
      {
        v12 = 0;
      }

      if (*(a3 + 8) <= *&a1[20 * (v11 - v12) + 88])
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101AE93DC();
        }

        v13 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a3 + 8);
          LODWORD(v29) = 134217984;
          *(&v29 + 4) = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "fStepHistory timestamp did not move forward, timestamp, %llu", &v29, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AE9404((a3 + 8));
        }

        sub_100F96FE0(a1);
      }
    }
  }

  sub_1000A6408(a1 + 80, a3);
  result = sub_1000A3054(a1, a2);
  *(a1 + 448) = 0;
  if (*(a1 + 1) == a1[1])
  {
    v16 = sub_1000A6478(a1, 0);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = sub_1000A6478(a1, 1uLL);
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = sub_1000A6478(a1, 2uLL);
    if (*(a1 + 449) == 1)
    {
      v23 = (v17 + v20) * 0.5;
      v24 = (v21 + v18) >> 1;
    }

    else
    {
      v25 = a1[36] + a1[37] - 1;
      v26 = *(a1 + 19);
      if (v25 < v26)
      {
        v26 = 0;
      }

      v27 = &a1[8 * (v25 - v26)];
      v23 = *(v27 + 20);
      v24 = *(v27 + 11);
    }

    v28 = (*(v22 + 1) + v21) >> 1;
    *&v29 = v23 + (((sub_1000A6674(a1) - v23) * (v21 - v24)) / (v28 - v24));
    *(&v29 + 1) = v21;
    result = sub_1000A3054(a1 + 36, &v29);
    *(a1 + 449) = 0;
  }

  return result;
}

unsigned __int16 *sub_1000A6408(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[20 * (v3 - v2)];
  v6 = *a2;
  v5 = a2[1];
  *(v4 + 5) = *(a2 + 4);
  *(v4 + 4) = v6;
  *(v4 + 12) = v5;
  v7 = result[1];
  v8 = *(result + 1);
  if (v8 <= v7)
  {
    v9 = *result + 1;
    if (v9 < v8)
    {
      LOWORD(v8) = 0;
    }

    *result = v9 - v8;
  }

  else
  {
    result[1] = v7 + 1;
  }

  return result;
}

unsigned __int16 *sub_1000A6478(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024C2A50);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024C2A50);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMElevationSample>::operator[](const size_t) const [T = CMElevationSample]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

float sub_1000A6674(unsigned __int16 *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (v3 >= 3 || (v5 = 0.0, !sub_101AE9514(v2)))
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v5 = v5 + *sub_1000A6478(a1, v4++);
    }

    while (v4 < a1[1]);
  }

  v6 = v5 - COERCE_FLOAT(sub_1000A673C(a1, sub_1000A67E8, 0));
  return (v6 - COERCE_FLOAT(sub_1000A673C(a1, sub_1000A67FC, 0))) / (a1[1] - 2);
}

uint64_t sub_1000A673C(unsigned __int16 *a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t), unint64_t a3)
{
  v6 = a1[1];
  if (!a1[1])
  {
    sub_101AE96C4();
  }

  v7 = sub_1000A6478(a1, a3);
  v8 = *v7;
  v9 = v7[1];
  if (v6 > a3)
  {
    do
    {
      v10 = sub_1000A6478(a1, a3);
      v11 = *v10;
      v12 = *(v10 + 1);
      if (a2(*v10, v12, v8, v9))
      {
        v8 = v11;
        v9 = v12;
      }

      ++a3;
    }

    while (v6 != a3);
  }

  return v8;
}

uint64_t sub_1000A6810(uint64_t result, double *a2)
{
  v2 = *result;
  v3 = *result + 1;
  *result = v3;
  if (*(result + 24) == 1)
  {
    v4 = (1.0 / v3);
    if (!v3)
    {
      v4 = 1.0;
    }

    if (*(result + 8) >= v4)
    {
      v4 = *(result + 8);
    }

    v5 = *(result + 16) - v4 * (*(result + 16) - *a2);
  }

  else if (v2 > 2)
  {
    v5 = *(result + 16) - *(result + 8) * (*(result + 16) - *a2);
  }

  else
  {
    v5 = (*a2 + *(result + 16) * v2) * (1.0 / v3);
  }

  *(result + 16) = v5;
  return result;
}

uint64_t sub_1000A68A8(uint64_t a1, unint64_t a2, float *a3)
{
  if (!*(a1 + 74))
  {
    return 0;
  }

  v5 = a1 + 80;
  v6 = *(a1 + 72);
  v7 = *(a1 + 74) + v6 - 1;
  v8 = *(a1 + 76);
  if (v7 < v8)
  {
    v8 = 0;
  }

  v9 = v5 + 16 * (v7 - v8);
  v10 = *(v9 + 8);
  if (v10 + 500000 < a2)
  {
    return 0;
  }

  if (v10 <= a2)
  {
    v19 = *v9;
  }

  else
  {
    v13 = v5 + 16 * v6;
    if (*(v13 + 8) < a2)
    {
      v14 = 0;
      while (v14 < *(a1 + 74) - 1)
      {
        v15 = sub_1000A6478((a1 + 72), v14 + 1);
        v16 = *v15;
        v17 = *(v15 + 1);
        v18 = sub_1000A6478((a1 + 72), v14++);
        if (v17 > a2)
        {
          v19 = *v18 + (((v16 - *v18) * (a2 - *(v18 + 1))) / (v17 - *(v18 + 1)));
          goto LABEL_15;
        }
      }

      return 1;
    }

    v19 = *v13;
  }

LABEL_15:
  *a3 = v19;
  return 1;
}

uint64_t sub_1000A69D8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result + 24;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_1000A69EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1000A6A6C(uint64_t a1, int a2)
{
  v3 = a2;
  sub_1003DD9F8(a1 + 24, &v3);
  return 1;
}

double sub_1000A6AF8(uint64_t a1, int a2)
{
  if (a2)
  {
    return CFAbsoluteTimeGetCurrent();
  }

  else
  {
    return sub_1000137E0();
  }
}

uint64_t sub_1000A6B04(uint64_t a1, int a2, int a3)
{
  v8 = a2;
  v9[0] = off_1024629A0;
  v9[3] = v9;
  v5 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(v9);
  if (v5)
  {
    if (a3 == 1)
    {
      v6 = *(sub_1003DD9F8(a1 + 24, &v8) + 33);
    }

    else if (!a3)
    {
      v6 = *(sub_1003DD9F8(a1 + 24, &v8) + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

float sub_1000A6C9C(float a1)
{
  v1 = a1 / 101320.0;
  v2 = powf(a1 / 101320.0, -0.66338) * -0.077464;
  return v2 + (powf(v1, -0.80974) * 0.083241);
}

id sub_1000A6D00(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v12[8] = a3[8];
  v12[9] = v5;
  v6 = a3[11];
  v12[10] = a3[10];
  v12[11] = v6;
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  return [a4 onOdometerNotificationSourcePressure:v4 data:v12];
}

uint64_t sub_1000A6D68(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
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
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000A6DC8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1000A6DE8(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, int *a5, uint64_t a6)
{
  if (*a5 == 7)
  {
    v8 = sub_1000081AC();
    v42 = v8;
    if (*(a1 + 528))
    {
      v9 = *(a6 + 8);
      v10 = v9 & 0x7FFFFFFFFFFFFFFFLL;
      v11 = (v9 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v12 = v9 < 0;
      v13 = v9 < 0 && ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (!v12)
      {
        v11 = 0;
      }

      v14 = v10 <= 0x7FF0000000000000;
      v15 = v10 == 0x7FF0000000000000 || v11;
      if (!v14)
      {
        v15 = 1;
      }

      if ((v15 | v13) == 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10023A174();
        }

        v16 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v17 = *(a6 + 8);
          v18 = *(a6 + 16);
          v19 = *(a6 + 20);
          *buf = 134349568;
          v52 = v17;
          v53 = 1026;
          *v54 = v18;
          *&v54[4] = 1026;
          *&v54[6] = v19;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,received invalid elevation entry,startTime,%{public}lf,elevationAscended,%{public}u,elevationDescended,%{public}u", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10174A5D0();
        }
      }

      else
      {
        v24 = v8;
        v25 = v8 - *(a1 + 1240);
        *(a1 + 1240) = v8;
        if (v25 < 0.0 || v25 > 43200.0)
        {
          sub_10085BC68(a1 + 536);
          if (qword_1025D4600 != -1)
          {
            sub_10023A174();
          }

          v33 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v52 = v25;
            v53 = 2050;
            *v54 = v24;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "BaroAlt,reset fSignificantElevationEstimator for invalid %.lf s gap in odometer feed,now,%{public}.lf", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10174A4C0(v25);
          }

          *(a1 + 480) = xmmword_101C76220;
          *(a1 + 496) = 0;
        }

        else
        {
          sub_1000A745C((a1 + 536), *(a6 + 16), *(a6 + 20), 0, *(a6 + 8));
          v28 = *(a1 + 176);
          if (v28 && *a1)
          {
            LODWORD(v26) = *(a6 + 16);
            LODWORD(v27) = *(a6 + 20);
            *(v28 + 248) = (v26 - v27) / 100.0;
            *(v28 + 256) = 1;
            v29.n128_f64[0] = sub_100020640(*a1, &v42);
            v31 = *(a1 + 176);
            *(v31 + 264) = v29.n128_u64[0];
            *(v31 + 272) = 1;
            v32 = *(a1 + 176);
            if (*(v32 + 280) == 1)
            {
              if ((*(v32 + 272) & 1) == 0 || (*(v32 + 256) & 1) == 0)
              {
                sub_100173BA0();
              }

              sub_10173E9BC(v32, *(v32 + 264), *(v32 + 248));
            }

            else
            {
              sub_1000AFF84(v32, v29, v30);
            }
          }

          v34 = *(a1 + 1064);
          v35 = *(a1 + 1072);
          v36 = *(a1 + 1080);
          v37 = *(a1 + 1084);
          if (qword_1025D4600 != -1)
          {
            sub_100312410();
          }

          v38 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *buf = 134349824;
            v52 = v34;
            v53 = 2050;
            *v54 = v35;
            *&v54[8] = 1026;
            v55 = v36;
            v56 = 1026;
            v57 = v37;
            _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_INFO, "BaroAlt,newSigElvRelAlt,startTime,%{public}.3f,endTime,%{public}.3f,ascended,%{public}d,descended,%{public}d", buf, 0x22u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_100312410();
            }

            v43 = 134349824;
            v44 = v34;
            v45 = 2050;
            v46 = v35;
            v47 = 1026;
            v48 = v36;
            v49 = 1026;
            v50 = v37;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,newSigElvRelAlt,startTime,%{public}.3f,endTime,%{public}.3f,ascended,%{public}d,descended,%{public}d", &v43, 34);
            v41 = v40;
            sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeter::onOdometerUpdate(int, const CLOdometerNotifier_Type::Notification &, const CLOdometerNotifier_Type::NotificationData &)", "%s\n", v40);
            if (v41 != buf)
            {
              free(v41);
            }
          }

          if (fabs(v34) < 2.22044605e-16 || (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || fabs(v35) < 2.22044605e-16 || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            if (qword_1025D4600 != -1)
            {
              sub_100312410();
            }

            v39 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "BaroAlt,lastRelAlt,uninitialized significant elevation data received", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10174A3E4();
            }
          }

          else if (v35 > 0.0 && v35 - *(a1 + 1248) > 2.22044605e-16)
          {
            *(a1 + 1256) = (v36 - v37) / 100.0;
          }
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023A174();
      }

      v23 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,do not expect to receive kNotificationOdometerUpdateElevationSpectator", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174A308();
      }

      sub_1017363F0(a1);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v21 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a5;
      *buf = 67240192;
      LODWORD(v52) = v22;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "BaroAlt,received other odometer notification,type,%{public}d,", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174A21C(a5);
    }
  }
}

double sub_1000A7478(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000A753C(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000A753C(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_1000A753C(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_1000A753C@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a4 - v9) >> 6 >= v11 >> 6 ? v11 >> 6 : (a4 - v9) >> 6;
      if (v12)
      {
        __src = memmove(__dst, v9, v12 << 6);
      }

      v9 += 8 * v12;
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 64 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1000A7610(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4410 != -1)
  {
    sub_10189A674();
  }

  v4 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
    v8 = *(a2 + 40);
    v10 = 134218752;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "notifying odometer elevation update clients,timestamp,%f,ascended,%u,descended,%u,source,%u", &v10, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189A688();
  }

  v10 = 7;
  return (*(*a1 + 152))(a1, &v10, a2, 0, 0xFFFFFFFFLL, 0);
}

uint64_t sub_1000A775C(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[48] assertInside];
  v8 = *(*a4 + 12);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_1000A77D8(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_101AA5784();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 1);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 10);
    v11 = *(a2 + 60);
    *buf = 68290307;
    *v240 = 0;
    *&v240[4] = 2082;
    *&v240[6] = "";
    *&v240[14] = 2050;
    *&v240[16] = v7;
    *&v240[24] = 1025;
    *&v240[26] = v8;
    *&v240[30] = 1025;
    *&v240[32] = v9;
    *&v240[36] = 1026;
    *&v240[38] = v10;
    *&v240[42] = 1026;
    *v241 = v11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Input, Elevation,, startTime:%{public}.2f, elevationAscended:%{private}d, elevationDescended:%{private}d, source:%{public}d, isWorkoutElevationFusion:%{public}hhd}", buf, 0x34u);
  }

  if (*(a2 + 10) == 1000)
  {
    return 0;
  }

  v12 = *(a2 + 1);
  v13 = *(a1 + 8);
  v14 = vabdd_f64(v12, v13);
  v15 = *(a2 + 60);
  v16 = *(a1 + 60);
  if (v14 > 30.0 || (v13 >= 0.0 ? (v17 = v15 == v16) : (v17 = 0), !v17))
  {
    if (qword_1025D4230 != -1)
    {
      sub_101AA5798();
    }

    v30 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v31 = *(a1 + 8);
      *buf = 68289794;
      *v240 = 0;
      *&v240[4] = 2082;
      *&v240[6] = "";
      *&v240[14] = 1026;
      *&v240[16] = v14 > 30.0;
      *&v240[20] = 1026;
      *&v240[22] = v31 < 0.0;
      *&v240[26] = 1026;
      *&v240[28] = v15 == v16;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Input, Elevation, Reset, isTimeout:%{public}hhd, isUninitialized:%{public}hhd, isSameFusionMode:%{public}hhd}", buf, 0x24u);
    }

    v32 = a2[2];
    v33 = a2[3];
    v34 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v34;
    *(a1 + 32) = v32;
    *(a1 + 48) = v33;
    *&v32 = (*(a1 + 16) - *(a1 + 20)) * 0.01;
    *(a1 + 72) = v32;
    *(a1 + 64) = *(a1 + 8);
    v35 = *(a1 + 168);
    v36 = *(a1 + 176);
    *(a1 + 200) = 0;
    v37 = (v36 - v35) >> 3;
    if (v37 >= 3)
    {
      do
      {
        operator delete(*v35);
        v38 = *(a1 + 176);
        v35 = (*(a1 + 168) + 8);
        *(a1 + 168) = v35;
        v37 = (v38 - v35) >> 3;
      }

      while (v37 > 2);
    }

    if (v37 == 1)
    {
      v39 = 512;
    }

    else
    {
      if (v37 != 2)
      {
        goto LABEL_41;
      }

      v39 = 1024;
    }

    *(a1 + 192) = v39;
LABEL_41:
    v49 = *(a1 + 216);
    v50 = *(a1 + 224);
    *(a1 + 248) = 0;
    v51 = (v50 - v49) >> 3;
    if (v51 >= 3)
    {
      do
      {
        operator delete(*v49);
        v52 = *(a1 + 224);
        v49 = (*(a1 + 216) + 8);
        *(a1 + 216) = v49;
        v51 = (v52 - v49) >> 3;
      }

      while (v51 > 2);
    }

    if (v51 == 1)
    {
      v53 = 512;
    }

    else
    {
      if (v51 != 2)
      {
LABEL_48:
        *buf = 0;
        sub_100023E4C((a1 + 160), buf);
        *buf = 0;
        sub_100023E4C((a1 + 208), buf);
        return 0;
      }

      v53 = 1024;
    }

    *(a1 + 240) = v53;
    goto LABEL_48;
  }

  v220 = a3;
  v18 = -(*(a1 + 72) - (*(a2 + 4) - *(a2 + 5)) * 0.01);
  v19 = v12 - *(a1 + 64);
  v223 = v19;
  v224 = v18;
  sub_100023E4C((a1 + 160), &v223);
  sub_100023E4C((a1 + 208), &v224);
  v20 = *(a1 + 192);
  v21 = *(a1 + 200);
  v22 = *(a1 + 168);
  v23 = *(*(v22 + (((v21 + v20 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v21 + v20 - 1) & 0x3FF)) - *(*(v22 + ((v20 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v20 & 0x3FF));
  if (v23 > 120.0)
  {
    v221 = 134218240;
    while (v21 >= 2)
    {
      if (qword_1025D4230 != -1)
      {
        sub_101AA5798();
      }

      v24 = v23;
      v25 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 200);
        *buf = 134218240;
        *v240 = v26;
        *&v240[8] = 2048;
        *&v240[10] = v24;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Input, Elevation, beyond time window, buffer size, %lu, deltaTime, %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_101AA5798();
        }

        v27 = *(a1 + 200);
        v225 = 134218240;
        *v226 = v27;
        *&v226[8] = 2048;
        *&v226[10] = v24;
        LODWORD(v212) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Input, Elevation, beyond time window, buffer size, %lu, deltaTime, %f", &v225, v212);
        v29 = v28;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLElevationGradeEstimator::estimateGrade(const CLElevationChangeEntry &, CLElevationChangeEntry &)", "%s\n", v28);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      *(a1 + 192) = vaddq_s64(*(a1 + 192), xmmword_101C66230);
      sub_1000A6D68(a1 + 160, 1);
      *(a1 + 240) = vaddq_s64(*(a1 + 240), xmmword_101C66230);
      sub_1000A6D68(a1 + 208, 1);
      v21 = *(a1 + 200);
      v20 = *(a1 + 192);
      v22 = *(a1 + 168);
      v23 = *(*(v22 + (((v21 + v20 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v21 + v20 - 1) & 0x3FF)) - *(*(v22 + ((v20 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v20 & 0x3FF));
      if (v23 <= 120.0)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

LABEL_35:
  if (v21 < 2)
  {
    return 0;
  }

  v40 = *(a1 + 248);
  if (v40 < 2)
  {
    return 0;
  }

  v41 = v21 + v20 - 1;
  v42 = *(v22 + ((v41 >> 7) & 0x1FFFFFFFFFFFFF8));
  v43 = *(a1 + 88);
  v44 = v41 & 0x3FF;
  v45 = *(a1 + 240);
  v46 = v40 + v45 - 1;
  v47 = *(a1 + 216);
  v48 = *(a1 + 176);
  v216 = (v22 + 8 * (v20 >> 10));
  if (v48 == v22)
  {
    v222 = 0;
  }

  else
  {
    v222 = *(v22 + 8 * (v20 >> 10)) + 4 * (v20 & 0x3FF);
  }

  v55 = *(v42 + 4 * v44);
  v56 = *v43;
  v57 = v43[1];
  v218 = *(a1 + 88);
  v58 = *(v47 + ((v46 >> 7) & 0x1FFFFFFFFFFFFF8));
  v59 = v46 & 0x3FF;
  v60 = *(a1 + 144);
  v61 = v60 + *(a1 + 152);
  v62 = *(a1 + 120);
  v63 = *(a1 + 128);
  v64 = (v62 + 8 * (v61 >> 10));
  if (v63 == v62)
  {
    v65 = 0;
  }

  else
  {
    v65 = *v64 + 4 * (v61 & 0x3FF);
  }

  v66 = *(v58 + 4 * v59);
  v67 = v57 + (v56 * v55);
  v68 = v45 + v40;
  v69 = (v47 + 8 * ((v45 + v40) >> 10));
  if (*(a1 + 224) == v47)
  {
    v70 = 0;
  }

  else
  {
    v70 = *v69 + 4 * (v68 & 0x3FF);
  }

  v71 = v67 - v66;
  *&v214 = v20 + v21;
  v215 = *(a1 + 176);
  v217 = (v22 + 8 * ((v20 + v21) >> 10));
  if (v48 == v22)
  {
    v72 = 0;
  }

  else
  {
    v72 = *(v22 + 8 * ((v20 + v21) >> 10)) + 4 * ((v20 + v21) & 0x3FF);
  }

  v73 = v71 * v71;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  if (v222 != v72)
  {
    v221 = v60 >> 10;
    v219 = *(a1 + 144) & 0x3FFLL;
    v79 = (v22 + 8 * ((v20 + v21) >> 10));
    do
    {
      if (v63 == v62)
      {
        v80 = 0;
      }

      else
      {
        v80 = *(v62 + 8 * v221) + 4 * v219;
      }

      if (v80 == v65)
      {
        break;
      }

      v81 = *v64;
      if (v65 == *v64)
      {
        v84 = *(v64 - 1);
        v82 = (v84 + 4092);
        v83 = v84 + 4096;
      }

      else
      {
        v82 = (v65 - 4);
        v83 = v65;
      }

      v85 = *v69;
      v86 = v70;
      if (v70 == *v69)
      {
        v86 = *(v69 - 1) + 4096;
      }

      v87 = *v79;
      v88 = v72;
      if (v72 == *v79)
      {
        v88 = *(v79 - 1) + 4096;
      }

      v47 = v65;
      if (v65 == v81)
      {
        v47 = *(v64 - 1) + 4096;
      }

      v89 = v72;
      if (v72 == v87)
      {
        v89 = *(v79 - 1) + 4096;
      }

      v90 = v65;
      if (v65 == v81)
      {
        v90 = *(v64 - 1) + 4096;
      }

      v91 = v70;
      if (v70 == v85)
      {
        v91 = *(v69 - 1) + 4096;
      }

      v92 = v65;
      if (v65 == v81)
      {
        v92 = *(v64 - 1) + 4096;
      }

      if (v72 == v87)
      {
        v95 = *(v79 - 1);
        v93 = (v95 + 4092);
        v94 = v95 + 4096;
      }

      else
      {
        v93 = (v72 - 4);
        v94 = v72;
      }

      if (v65 == v81)
      {
        v96 = *--v64;
        v65 = v96 + 4096;
      }

      if (v70 == v85)
      {
        v97 = *--v69;
        v70 = v97 + 4096;
      }

      if (v72 == v87)
      {
        v98 = *--v79;
        v72 = v98 + 4096;
      }

      v78 = v78 + *v82;
      v77 = v77 + ((*(v83 - 4) * *(v86 - 4)) * *(v88 - 4));
      v76 = v76 + (*(v47 - 4) * *(v89 - 4));
      v75 = v75 + (*(v90 - 4) * *(v91 - 4));
      v74 = v74 + ((*(v92 - 4) * *v93) * *(v94 - 4));
      v65 -= 4;
      v70 -= 4;
      v72 -= 4;
    }

    while (v222 != v72);
  }

  v99 = ((v78 * v77) - (v76 * v75));
  v100 = (v74 * v78) - v76 * v76;
  *&v99 = v99 / v100;
  v101 = ((v74 * v75) - (v76 * v77)) / v100;
  **&v218 = LODWORD(v99);
  *(*&v218 + 4) = v101;
  if (v73 > 2.0)
  {
    v102 = *v217;
    if (*&v215 == v22)
    {
      v104 = 0;
      v105 = 0;
      v103 = v216;
    }

    else
    {
      v103 = (v22 + 8 * (v20 >> 10));
      v104 = *v216 + 4 * (v20 & 0x3FF);
      v105 = v102 + 4 * (LOWORD(v214) & 0x3FF);
    }

    v106 = (v105 - v102) >> 2;
    if (v106 < 3)
    {
      v110 = 1025 - v106;
      v108 = &v217[-(v110 >> 10)];
      v109 = *v108 + 4 * (~v110 & 0x3FF);
    }

    else
    {
      v107 = v106 - 2;
      v108 = &v217[v107 >> 10];
      v109 = *v108 + 4 * (v107 & 0x3FF);
    }

    sub_100E45610((a1 + 160), v103, v104, v108, v109);
    v111 = *(a1 + 240);
    v112 = *(a1 + 216);
    v113 = (v112 + 8 * (v111 >> 10));
    if (*(a1 + 224) == v112)
    {
      v114 = 0;
      v118 = 0;
      v116 = (v112 + 8 * ((*(a1 + 248) + v111) >> 10));
      v117 = *v116;
    }

    else
    {
      v114 = *v113 + 4 * (*(a1 + 240) & 0x3FFLL);
      v115 = *(a1 + 248) + v111;
      v116 = (v112 + 8 * (v115 >> 10));
      v117 = *v116;
      v118 = *v116 + 4 * (v115 & 0x3FF);
    }

    v119 = (v118 - v117) >> 2;
    if (v119 < 3)
    {
      v124 = 1025 - v119;
      v121 = &v116[-(v124 >> 10)];
      v122 = *v121;
      v123 = ~v124 & 0x3FFLL;
    }

    else
    {
      v120 = v119 - 2;
      v121 = &v116[v120 >> 10];
      v122 = *v121;
      v123 = v120 & 0x3FF;
    }

    sub_100E45610((a1 + 208), v113, v114, v121, v122 + 4 * v123);
    v125 = *(a1 + 192);
    v126 = v125 >> 10;
    v127 = *(a1 + 168);
    v128 = *(a1 + 176);
    if (v128 == v127)
    {
      v129 = 0;
    }

    else
    {
      v129 = *(v127 + 8 * v126) + 4 * (*(a1 + 192) & 0x3FFLL);
    }

    v130 = *(a1 + 240);
    v131 = v130 + *(a1 + 248);
    v132 = *(a1 + 216);
    v133 = (v132 + 8 * (v131 >> 10));
    if (*(a1 + 224) == v132)
    {
      v134 = 0;
    }

    else
    {
      v134 = *v133 + 4 * (v131 & 0x3FF);
    }

    v135 = *(a1 + 200) + v125;
    v136 = (v127 + 8 * (v135 >> 10));
    if (v128 == v127)
    {
      v137 = 0;
    }

    else
    {
      v137 = *v136 + 4 * (v135 & 0x3FF);
    }

    v138 = *(a1 + 8);
    v139 = (*(a1 + 16) - *(a1 + 20)) * 0.01;
    if (v129 == v137)
    {
      v140 = v138;
    }

    else
    {
      v141 = *(a1 + 64);
      v140 = v138;
      v142 = *v136;
      do
      {
        if (v137 == v142)
        {
          v145 = *(v136 - 1);
          v143 = (v145 + 4092);
          v144 = v145 + 4096;
        }

        else
        {
          v143 = (v137 - 4);
          v144 = v137;
        }

        v146 = v141 + *v143 - v140;
        *(v144 - 4) = v146;
        if (v134 == *v133)
        {
          v147 = *--v133;
          *(v147 + 4092) = (*(v147 + 4092) + *(a1 + 72)) - v139;
          v134 = v147 + 4096;
        }

        else
        {
          *(v134 - 4) = (*(v134 - 4) + *(a1 + 72)) - v139;
        }

        if (v137 == v142)
        {
          v148 = *--v136;
          v142 = v148;
          v137 = v148 + 4096;
        }

        v134 -= 4;
        v137 -= 4;
      }

      while (v129 != v137);
    }

    *(a1 + 64) = v140;
    *(a1 + 72) = v139;
    v149 = *(*(v132 + (((v130 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v130 + 1) & 0x3FF));
    v150 = *(v132 + ((v130 >> 7) & 0x1FFFFFFFFFFFFF8));
    v151 = v130 & 0x3FF;
    v152 = *(v127 + (((v125 + 1) >> 7) & 0x1FFFFFFFFFFFFF8));
    v153 = (v125 + 1) & 0x3FF;
    v154 = *(v127 + 8 * v126);
    v155 = v125 & 0x3FF;
    v156 = (v149 - *(v150 + 4 * v151)) / (*(v152 + 4 * v153) - *(v154 + 4 * v155));
    v157 = *(a1 + 88);
    *v157 = v156;
    v157[1] = *(v150 + 4 * v151) - (v156 * *(v154 + 4 * v155));
    if (qword_1025D4230 != -1)
    {
      sub_101AA5798();
    }

    v158 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v159 = *(a2 + 1);
      v160 = *(a2 + 4);
      v161 = *(a2 + 5);
      *buf = 134219008;
      *v240 = v159;
      *&v240[8] = 1024;
      *&v240[10] = v160;
      *&v240[14] = 1024;
      *&v240[16] = v161;
      *&v240[20] = 2048;
      *&v240[22] = v224;
      *&v240[30] = 2048;
      *&v240[32] = v73;
      _os_log_impl(dword_100000000, v158, OS_LOG_TYPE_DEBUG, "Input, Elevation, Online grade estimation regime change, time start, %.2lf, elevationAscended, %d, elevationDescended, %d,input_altitude, %.4f, Prediction Error, %.4f", buf, 0x2Cu);
    }

    v65 = sub_10000A100(121, 2);
    if (v65)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101AA5798();
      }

      v207 = *(a2 + 1);
      v208 = *(a2 + 4);
      v209 = *(a2 + 5);
      v225 = 134219008;
      *v226 = v207;
      *&v226[8] = 1024;
      *&v226[10] = v208;
      *&v226[14] = 1024;
      *&v226[16] = v209;
      *&v226[20] = 2048;
      *&v226[22] = v224;
      *&v226[30] = 2048;
      *&v226[32] = v73;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Input, Elevation, Online grade estimation regime change, time start, %.2lf, elevationAscended, %d, elevationDescended, %d,input_altitude, %.4f, Prediction Error, %.4f", COERCE_DOUBLE(&v225), 44, LODWORD(v213), v214, v215);
      v211 = v210;
      v65 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLElevationGradeEstimator::estimateGrade(const CLElevationChangeEntry &, CLElevationChangeEntry &)", "%s\n", v210);
      if (v211 != buf)
      {
        free(v211);
      }
    }
  }

  v162 = *(a1 + 192);
  v163 = **(a1 + 88);
  v164 = v163 * (*(*(*(a1 + 168) + (((*(a1 + 200) + v162 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 200) + v162 - 1) & 0x3FF)) - *(*(*(a1 + 168) + ((v162 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v162 & 0x3FF)));
  v165 = *(a2 + 1);
  if (v165 - *(a1 + 80) > 15.0)
  {
    *(a1 + 76) = 0;
    *(a1 + 80) = 0xBFF0000000000000;
  }

  if (v164 <= 2.0)
  {
    if (v164 >= -2.0)
    {
      v166 = *(a1 + 76);
      if (v166)
      {
        v167 = 3;
      }

      else
      {
        v167 = 2;
      }
    }

    else
    {
      *(a1 + 80) = v165;
      v166 = 1;
      *(a1 + 76) = 1;
      v167 = 3;
    }
  }

  else
  {
    *(a1 + 76) = 0;
    v166 = 1;
    v167 = 1;
  }

  v168 = sub_10001A3E8(v65, v47);
  v170 = sub_100023B30(v168, v169);
  v171 = v163;
  v172 = *(a2 + 10);
  if ((v170 & 0x2000000000) != 0)
  {
    v17 = v172 == 3;
    v174 = v220;
    if (!v17)
    {
      goto LABEL_151;
    }
  }

  else
  {
    if (v172 == 1)
    {
      v173 = v166;
    }

    else
    {
      v173 = 0;
    }

    v17 = v172 == 3;
    v174 = v220;
    if (!v17 && (v173 & 1) == 0)
    {
      goto LABEL_151;
    }
  }

  v167 = 0;
LABEL_151:
  v175 = a2[3];
  v176 = *a2;
  v177 = a2[1];
  v174[2] = a2[2];
  v174[3] = v175;
  *v174 = v176;
  v174[1] = v177;
  *(v174 + 6) = v167;
  v178 = v174 + 6;
  *(v174 + 4) = v171;
  if (qword_1025D4230 != -1)
  {
    sub_101AA5798();
  }

  v179 = v164;
  v180 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v181 = *v178;
    v182 = *(a2 + 1);
    v183 = *(a1 + 88);
    v184 = *v183;
    v185 = v183[1];
    v186 = *(a1 + 168);
    v187 = *(*(v186 + (((*(a1 + 200) + *(a1 + 192) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 200) + *(a1 + 192) - 1) & 0x3FF));
    v188 = *(*(v186 + ((*(a1 + 192) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 192) & 0x3FFLL));
    LODWORD(v183) = *(a2 + 4);
    v189 = *(a2 + 5);
    *buf = 67111680;
    *v240 = v181;
    *&v240[4] = 2048;
    *&v240[6] = v182;
    *&v240[14] = 2048;
    *&v240[16] = v179;
    *&v240[24] = 2048;
    *&v240[26] = v171;
    *&v240[34] = 2048;
    *&v240[36] = v184;
    *v241 = 2048;
    *&v241[2] = v185;
    v242 = 2048;
    v243 = v187;
    v244 = 2048;
    v245 = v188;
    v246 = 1024;
    v247 = v183;
    v248 = 1024;
    v249 = v189;
    v250 = 2048;
    v251 = v224;
    _os_log_impl(dword_100000000, v180, OS_LOG_TYPE_DEBUG, "Input, Elevation, Online grade estimation, gradeType, %d, time start, %.2lf, altitude delta, %.2f, vspeed, %.2f, fParam_m, %f, fParam_b, %f,fTimeBufferFront, %f,fTimeBufferBack, %f, elevationAscended, %d, elevationDescended, %d, input_altitude, %.4f", buf, 0x64u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101AA5798();
    }

    v196 = *v178;
    v197 = *(a2 + 1);
    v198 = *(a1 + 88);
    v199 = *v198;
    v200 = v198[1];
    v201 = *(a1 + 168);
    v202 = *(*(v201 + (((*(a1 + 200) + *(a1 + 192) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 200) + *(a1 + 192) - 1) & 0x3FF));
    v203 = *(*(v201 + ((*(a1 + 192) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 192) & 0x3FFLL));
    LODWORD(v198) = *(a2 + 4);
    v204 = *(a2 + 5);
    v225 = 67111680;
    *v226 = v196;
    *&v226[4] = 2048;
    *&v226[6] = v197;
    *&v226[14] = 2048;
    *&v226[16] = v179;
    *&v226[24] = 2048;
    *&v226[26] = v171;
    *&v226[34] = 2048;
    *&v226[36] = v199;
    v227 = 2048;
    v228 = v200;
    v229 = 2048;
    v230 = v202;
    v231 = 2048;
    v232 = v203;
    v233 = 1024;
    v234 = v198;
    v235 = 1024;
    v236 = v204;
    v237 = 2048;
    v238 = v224;
    LODWORD(v212) = 100;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Input, Elevation, Online grade estimation, gradeType, %d, time start, %.2lf, altitude delta, %.2f, vspeed, %.2f, fParam_m, %f, fParam_b, %f,fTimeBufferFront, %f,fTimeBufferBack, %f, elevationAscended, %d, elevationDescended, %d, input_altitude, %.4f", &v225, v212, v213, v214, v215, *&v216, *&v217, v218, v219, v220, *&v221);
    v206 = v205;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLElevationGradeEstimator::estimateGrade(const CLElevationChangeEntry &, CLElevationChangeEntry &)", "%s\n", v205);
    if (v206 != buf)
    {
      free(v206);
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_101AA5798();
  }

  v190 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v191 = *v178;
    v192 = *(v220 + 4);
    *buf = 67109376;
    *v240 = v191;
    *&v240[4] = 2048;
    *&v240[6] = v192;
    _os_log_impl(dword_100000000, v190, OS_LOG_TYPE_DEBUG, "Input, Elevation, Hardware gradeTypeFilter, gradeType, %d, vspeed, %.4f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AA57C0(v178, v220 + 4);
  }

  v193 = *v220;
  v194 = v220[1];
  v195 = v220[3];
  *(a1 + 32) = v220[2];
  *(a1 + 48) = v195;
  *a1 = v193;
  *(a1 + 16) = v194;
  return 1;
}

double sub_1000A8A00(uint64_t a1, __int128 *a2)
{
  if (sub_1000A77D8(a1 + 128, a2, v10))
  {
    v5 = *(a1 + 64);
    v4 = (a1 + 64);
    v6 = v5 % 0x64;
    if (v5 >= 0x5DC && v6 == 0)
    {
      if (qword_1025D4230 != -1)
      {
        sub_101B819D8();
      }

      v8 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v4;
        *buf = 134217984;
        v12 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Extremely large CLNatalieInput<CLElevationChangeEntry>, size, %lu", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B82020();
      }
    }

    *&result = sub_1000A8B70(v4 - 5, v10).n128_u64[0];
  }

  return result;
}

uint64_t sub_1000A8B34(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if ((*a3 | 4) == 7)
  {
    return (*(*result + 32))(result, a4);
  }

  return result;
}

__n128 sub_1000A8B70(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 8 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100232B00(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v7 & 0x3F) << 6);
  result = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v11;
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void sub_1000A8C08(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 512) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101745F84();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLBarometricAltimeter::onOdometerUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101745F98();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBarometricAltimeter::onOdometerUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1000A6DE8(a4, v8, v9, v7, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1000A8DD4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[56] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

void sub_1000A8E50(uint64_t a1, __int128 *a2)
{
  if (sub_1000A77D8(a1 + 8, a2, v15))
  {
    v3 = *(a1 + 440);
    if (v3)
    {
      (*(*v3 + 48))(v3, v15);
    }

    v4 = *(a1 + 312);
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = v4 + *(a1 + 304) - 1;
    v6 = *(a1 + 280);
    v7 = (*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)))[8 * (v5 & 0x3F) + 1];
    if (v7 <= *(v15 + 1))
    {
      goto LABEL_19;
    }

    v8 = *(a1 + 288);
    *(a1 + 312) = 0;
    v9 = (v8 - v6) >> 3;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v6);
        v10 = *(a1 + 288);
        v6 = (*(a1 + 280) + 8);
        *(a1 + 280) = v6;
        v9 = (v10 - v6) >> 3;
      }

      while (v9 > 2);
    }

    if (v9 == 1)
    {
      v11 = 32;
    }

    else
    {
      if (v9 != 2)
      {
LABEL_13:
        if (qword_1025D4200 != -1)
        {
          sub_101903090();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v17 = *(&v15[0] + 1);
          v18 = 2048;
          v19 = v7;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101905ACC();
        }

LABEL_19:
        sub_1000A8B70((a1 + 272), v15);
        v13 = v15[1];
        *(a1 + 352) = v15[0];
        *(a1 + 368) = v13;
        v14 = v15[3];
        *(a1 + 384) = v15[2];
        *(a1 + 400) = v14;
        return;
      }

      v11 = 64;
    }

    *(a1 + 304) = v11;
    goto LABEL_13;
  }
}

void sub_1000A903C(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if ((*a3 | 4) == 7)
  {
    sub_1000A8E50(a1, a4);
  }
}

void sub_1000A9058(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101AE9E4C();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134219520;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v3;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Elevation,%f,ascended,%d,descended,%d,gradeType,%d,verticalSpeed,%f,startTime,%f,source,%d", &v9, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AEAECC(a1);
  }
}

uint64_t sub_1000A9180(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 352);
  if (*(v1 + 653) == 1 && (*(v1 + 652) & 1) == 0)
  {
    sub_10026D1A4(v1);
    *(v4 + 653) = 0;
  }

  v6 = v5 + *(v4 + 664);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = 0.0;
  v10 = 0.0;
  _CF = v8 >= v7;
  v12 = v8 - v7;
  if (_CF && v12 <= 0x7FFFFFFE)
  {
    v10 = v12 / 1000000.0;
  }

  v194 = 0u;
  memset(v193, 0, sizeof(v193));
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  *v187.i64 = *(v4 + 352) - v10;
  *&v187.i64[1] = v6 - v10;
  v13 = *(v3 + 68);
  if (v13)
  {
    v9 = v6 - ((v7 - v13) / 0xF4240);
  }

  v182 = v4;
  *&v188 = v9;
  DWORD2(v188) = *(v3 + 4);
  BYTE12(v188) = *(v3 + 1);
  *(&v188 + 13) = *(v3 + 2);
  HIBYTE(v188) = *(v3 + 8);
  LOBYTE(v189) = *(v3 + 9) != 0;
  BYTE1(v189) = *(v3 + 10) != 0;
  BYTE3(v189) = *(v3 + 11);
  *(&v189 + 1) = v7;
  LODWORD(v190) = *(v3 + 32);
  BYTE5(v190) = *(v3 + 36);
  v14 = *(v3 + 37);
  BYTE12(v190) = *(v3 + 37);
  BYTE13(v190) = *(v3 + 88);
  BYTE14(v190) = *(v3 + 97);
  LODWORD(v191) = 0;
  WORD2(v191) = 0;
  WORD3(v191) = *(v3 + 103);
  WORD5(v191) = 0;
  LODWORD(v192) = *(v3 + 84);
  v15 = *(v3 + 76);
  *(&v192 + 1) = v13;
  *&v193[0] = v15;
  LODWORD(v15) = *(v3 + 89);
  LODWORD(v16) = *(v3 + 93);
  DWORD1(v16) = *(v3 + 40);
  *(&v16 + 1) = *(v3 + 44);
  *(v193 + 12) = v16;
  *(&v193[1] + 12) = *(v3 + 52);
  v17 = *(v3 + 38);
  DWORD2(v193[0]) = v15;
  HIDWORD(v193[2]) = v17;
  LOBYTE(v194) = *(v3 + 39) != 0;
  WORD2(v194) = *(v3 + 98);
  BYTE6(v194) = *(v3 + 100);
  WORD4(v194) = *(v3 + 101);
  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v18 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    v19 = *(v3 + 4);
    v20 = *(v3 + 2);
    v176 = *(v3 + 3);
    v178 = *(v3 + 1);
    v166 = *(v3 + 11);
    v168 = *(v3 + 9);
    v172 = *(v3 + 10);
    v174 = *(v3 + 8);
    v170 = *(v3 + 12);
    sub_1000AA228(v19, v282);
    v180 = v14;
    v21 = SHIBYTE(v284);
    v22 = *v282;
    v23 = v187.i64[1];
    v156 = v187.i64[0];
    v157 = *(v3 + 24);
    v158 = *(v3 + 16);
    v160 = *(v3 + 38);
    v24 = *(v3 + 56);
    v25 = *(v3 + 60);
    v26 = *(v3 + 64);
    v28 = *(v3 + 40);
    v27 = *(v3 + 44);
    v30 = *(v3 + 48);
    v29 = *(v3 + 52);
    v31 = *(v3 + 32);
    v162 = *(v3 + 39);
    v164 = *(v3 + 36);
    sub_1000AA228(v31, __p);
    *&buf[4] = "MotionCoprocessor";
    *&v196[2] = v19;
    v32 = v282;
    if (v21 < 0)
    {
      v32 = v22;
    }

    v200 = v20;
    v204 = v166;
    v208 = v168;
    v212 = v170;
    v214 = v32;
    v216 = v23;
    v33 = __p;
    if (v186 < 0)
    {
      v33 = __p[0];
    }

    v198 = v178;
    v202 = v176;
    v206 = v174;
    v210 = v172;
    v218 = v156;
    v220 = v157;
    v222 = v158;
    v224 = v160;
    v228 = v162;
    v242 = v31;
    v244 = v164;
    v213 = 2080;
    v245 = 2080;
    v246 = v33;
    v14 = v180;
    v250 = v180 & 1;
    v252 = (v180 >> 1) & 1;
    v254 = (v180 >> 2) & 1;
    v256 = (v180 >> 3) & 1;
    v203 = 1024;
    v205 = 1024;
    v207 = 1024;
    v209 = 1024;
    v211 = 1024;
    v223 = 1024;
    v227 = 1024;
    v249 = 1024;
    v251 = 1024;
    v253 = 1024;
    v255 = 1024;
    v257 = 1024;
    v258 = (v180 >> 4) & 1;
    v260 = *(v3 + 84);
    v215 = 2050;
    v261 = 2050;
    v262 = v188;
    v264 = *(v3 + 88);
    v266 = *(v3 + 68);
    v268 = *(v3 + 76);
    v270 = *(v3 + 89);
    v272 = *(v3 + 90);
    v274 = *(v3 + 91);
    *v196 = 1026;
    v197 = 1026;
    v199 = 1026;
    v201 = 1026;
    v241 = 1026;
    v243 = 1026;
    v247 = 1026;
    v259 = 1026;
    v263 = 1026;
    v269 = 1026;
    v271 = 1026;
    v273 = 1026;
    v275 = 1026;
    v276 = *(v3 + 97);
    v217 = 2048;
    v219 = 2048;
    v221 = 2048;
    v225 = 2048;
    v229 = 2048;
    v231 = 2048;
    v233 = 2048;
    v235 = 2048;
    v237 = 2048;
    v239 = 2048;
    v265 = 2048;
    v267 = 2048;
    v277 = 2048;
    _H1 = *(v3 + 103);
    __asm { FCVT            D1, H1 }

    v278 = _D1;
    *buf = 136325890;
    v226 = v27;
    v230 = v29;
    v232 = v24;
    v234 = v25;
    v236 = v26;
    v238 = v28;
    v240 = v30;
    v248 = v180;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Type,%s,motionStateUpdate:Motion,%{public}d,conf,%{public}d,Mounted,%{public}d,MountedConf,%{public}d,exitState,%d,turn,%d,isVehicular,%d,isMoving,%d,seq,%d,motionTypeString,%s,startTime,%{public}f,timestamp,%f,startTimeUL,%lld,nowUL,%lld -- caltype,%d,vm,%f,standing,%d,machinefrequency,%f,strokefrequency,%f,strokeAmplitude,%f,strokepower,%f,meanAngleX,%f,pushVectorMagnitude,%f,rawMotionType,%{public}d,rawConf,%{public}d,rawMotionTypeString,%s,vehicularFlags:%{public}d,motionHint,%d,gpsHint,%d,basebandHint,%d,wifiHint,%d,btHint,%d,workoutDetectionType,%{public}d,workoutDetectionTime,%{public}f,vehicularConfidence,%{public}d,workoutDetectionTimeUL,%lld,workoutEscalationTime,%lld,MotionYouth,%{public}d,YouthClassificationReason,%{public}d,averageALSLux,%{public}d,vehicleType,%{public}d,vehicleShortTermMean,%f", buf, 0x14Cu);
    if (v186 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v284) < 0)
    {
      operator delete(*v282);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ADB540(buf);
    v179 = qword_1025D4208;
    v135 = *(v3 + 4);
    v136 = *(v3 + 1);
    v137 = *(v3 + 2);
    v138 = *(v3 + 3);
    v169 = *(v3 + 11);
    v171 = *(v3 + 8);
    v173 = *(v3 + 9);
    v175 = *(v3 + 10);
    v177 = *(v3 + 12);
    sub_1000AA228(v135, __p);
    v181 = v14;
    v139 = v186;
    v140 = __p[0];
    v141 = v187;
    v159 = *(v3 + 24);
    v161 = *(v3 + 16);
    v163 = *(v3 + 38);
    v165 = *(v3 + 39);
    v142 = *(v3 + 56);
    v143 = *(v3 + 60);
    v144 = *(v3 + 64);
    v146 = *(v3 + 40);
    v145 = *(v3 + 44);
    v148 = *(v3 + 48);
    v147 = *(v3 + 52);
    v14 = *(v3 + 32);
    v167 = *(v3 + 36);
    sub_1000AA228(v14, v183);
    *&v282[4] = "MotionCoprocessor";
    v149 = __p;
    if (v139 < 0)
    {
      v149 = v140;
    }

    v150 = v183[0];
    if (v184 >= 0)
    {
      v150 = v183;
    }

    *&v282[14] = v135;
    v284 = v136;
    *(&v285 + 2) = v137;
    v286 = v138;
    *v288 = v169;
    *&v288[6] = v171;
    *&v288[12] = v173;
    *v289 = v175;
    *&v289[6] = v177;
    *&v289[12] = v149;
    *&v290[2] = v141.i64[1];
    *&v290[12] = v141.i64[0];
    *&v290[22] = v159;
    v292 = v161;
    v294 = v163;
    v298 = v165;
    v312 = v14;
    v314 = v167;
    *&v289[10] = 2080;
    v315 = 2080;
    v316 = v150;
    LOBYTE(v14) = v181;
    v320 = v181 & 1;
    v322 = (v181 >> 1) & 1;
    v324 = (v181 >> 2) & 1;
    v326 = (v181 >> 3) & 1;
    v287 = 1024;
    *&v288[4] = 1024;
    *&v288[10] = 1024;
    *&v288[16] = 1024;
    *&v289[4] = 1024;
    v293 = 1024;
    v297 = 1024;
    v319 = 1024;
    v321 = 1024;
    v323 = 1024;
    v325 = 1024;
    v327 = 1024;
    v328 = (v181 >> 4) & 1;
    v330 = *(v3 + 84);
    *v290 = 2050;
    v331 = 2050;
    v332 = v188;
    v334 = *(v3 + 88);
    v336 = *(v3 + 68);
    v338 = *(v3 + 76);
    v340 = *(v3 + 89);
    v342 = *(v3 + 90);
    v344 = *(v3 + 91);
    *&v282[12] = 1026;
    v283 = 1026;
    LOWORD(v285) = 1026;
    HIWORD(v285) = 1026;
    v311 = 1026;
    v313 = 1026;
    v317 = 1026;
    v329 = 1026;
    v333 = 1026;
    v339 = 1026;
    v341 = 1026;
    v343 = 1026;
    v345 = 1026;
    v346 = *(v3 + 97);
    *&v290[10] = 2048;
    *&v290[20] = 2048;
    v291 = 2048;
    v295 = 2048;
    v299 = 2048;
    v301 = 2048;
    v303 = 2048;
    v305 = 2048;
    v307 = 2048;
    v309 = 2048;
    v335 = 2048;
    v337 = 2048;
    v347 = 2048;
    _H1 = *(v3 + 103);
    __asm { FCVT            D1, H1 }

    v348 = _D1;
    *v282 = 136325890;
    v296 = v145;
    v300 = v147;
    v302 = v142;
    v304 = v143;
    v306 = v144;
    v308 = v146;
    v310 = v148;
    v318 = v181;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v179, 1, "Type,%s,motionStateUpdate:Motion,%{public}d,conf,%{public}d,Mounted,%{public}d,MountedConf,%{public}d,exitState,%d,turn,%d,isVehicular,%d,isMoving,%d,seq,%d,motionTypeString,%s,startTime,%{public}f,timestamp,%f,startTimeUL,%lld,nowUL,%lld -- caltype,%d,vm,%f,standing,%d,machinefrequency,%f,strokefrequency,%f,strokeAmplitude,%f,strokepower,%f,meanAngleX,%f,pushVectorMagnitude,%f,rawMotionType,%{public}d,rawConf,%{public}d,rawMotionTypeString,%s,vehicularFlags:%{public}d,motionHint,%d,gpsHint,%d,basebandHint,%d,wifiHint,%d,btHint,%d,workoutDetectionType,%{public}d,workoutDetectionTime,%{public}f,vehicularConfidence,%{public}d,workoutDetectionTimeUL,%lld,workoutEscalationTime,%lld,MotionYouth,%{public}d,YouthClassificationReason,%{public}d,averageALSLux,%{public}d,vehicleType,%{public}d,vehicleShortTermMean,%f", v282, 332);
    v154 = v153;
    if (v184 < 0)
    {
      operator delete(v183[0]);
    }

    if (v186 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitMotionStateUpdate(const CMMotionCoprocessorReply::MotionStateUpdate *)", "%s\n", v154);
    if (v154 != buf)
    {
      free(v154);
    }
  }

  v39 = v182;
  if (*(v182 + 868) == 1)
  {
    *v282 = off_1024912B0;
    Current = CFAbsoluteTimeGetCurrent();
    *&v282[8] = Current;
    v284 = *(v3 + 4);
    LOBYTE(v285) = *(v3 + 1);
    *(&v285 + 1) = *(v3 + 2);
    LODWORD(Current) = *(v3 + 8);
    v41 = vmovl_u8(*&Current).u64[0];
    v42 = vext_s8(v41, v41, 6uLL);
    *(&v285 + 3) = vuzp1_s8(v42, v42).u32[0];
    v286 = *(v3 + 12);
    *&v288[2] = vextq_s8(v187, v187, 8uLL);
    *v289 = vextq_s8(*(v3 + 16), *(v3 + 16), 8uLL);
    v289[16] = *(v3 + 38);
    *v290 = *(v3 + 44);
    v290[4] = *(v3 + 39);
    *&v290[8] = *(v3 + 52);
    v45 = sub_10015ADF4(v43, v44);
    sub_1010CF5BC(v45, v282);
    sub_10152D354(buf);
    sub_1015557F4(buf);
    v281 |= 1u;
    v279 = *&v282[8];
    v46 = v280;
    v47 = *(v3 + 4);
    *(v280 + 192) |= 0x8000uLL;
    *(v46 + 100) = v47;
    v48 = v280;
    v49 = *(v3 + 1);
    *(v280 + 192) |= 0x100uLL;
    *(v48 + 72) = v49;
    v50 = v280;
    v51 = *(v3 + 2);
    *(v280 + 192) |= 0x10000uLL;
    *(v50 + 104) = v51;
    v52 = v280;
    v53 = *(v3 + 3);
    *(v280 + 192) |= 0x20000uLL;
    *(v52 + 108) = v53;
    v54 = v280;
    v55 = *(v3 + 11);
    *(v280 + 192) |= 0x800uLL;
    *(v54 + 84) = v55;
    v56 = v280;
    v57 = *(v3 + 8);
    *(v280 + 192) |= 0x8000000uLL;
    *(v56 + 148) = v57;
    v58 = v280;
    v59 = *(v3 + 9);
    *(v280 + 192) |= 0x2000uLL;
    *(v58 + 92) = v59;
    v60 = v280;
    v61 = *(v3 + 10);
    *(v280 + 192) |= 0x1000uLL;
    *(v60 + 88) = v61;
    v62 = v280;
    v63 = *(v3 + 12);
    *(v280 + 192) |= 0x1000000uLL;
    *(v62 + 136) = v63;
    v64 = v280;
    v65 = v187.i64[0];
    *(v280 + 40) = v187.i64[1];
    *(v64 + 192) |= 8uLL;
    v66 = v280;
    *(v280 + 192) |= 1uLL;
    *(v66 + 8) = v65;
    v67 = v280;
    v68 = *(v3 + 24);
    *(v280 + 192) |= 4uLL;
    *(v67 + 24) = v68;
    v69 = v280;
    v70 = *(v3 + 16);
    *(v280 + 192) |= 2uLL;
    *(v69 + 16) = v70;
    v71 = v280;
    LODWORD(v70) = *(v3 + 38);
    *(v280 + 192) |= 0x80uLL;
    *(v71 + 68) = v70;
    v72 = v280;
    v73 = *(v3 + 44);
    *(v280 + 192) |= 0x20000000uLL;
    *(v72 + 156) = v73;
    v74 = v280;
    LODWORD(v70) = *(v3 + 39);
    *(v280 + 192) |= 0x4000000uLL;
    *(v74 + 144) = v70;
    v75 = v280;
    v76 = *(v3 + 52);
    *(v280 + 192) |= 0x4000uLL;
    *(v75 + 96) = v76;
    v77 = v280;
    v78 = *(v3 + 56);
    *(v280 + 192) |= 0x400000uLL;
    *(v77 + 128) = v78;
    v79 = v280;
    v80 = *(v3 + 60);
    *(v280 + 192) |= 0x200000uLL;
    *(v79 + 124) = v80;
    v81 = v280;
    v82 = *(v3 + 64);
    *(v280 + 192) |= 0x800000uLL;
    *(v81 + 132) = v82;
    v83 = v280;
    LODWORD(v70) = *(v3 + 88);
    *(v280 + 192) |= 0x800000000uLL;
    *(v83 + 180) = v70;
    if (qword_102637F48 != -1)
    {
      sub_101ADAB10();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
    v39 = v182;
  }

  v84 = v193[1];
  *(v39 + 776) = v193[0];
  *(v39 + 792) = v84;
  v85 = v194;
  *(v39 + 808) = v193[2];
  *(v39 + 824) = v85;
  v86 = v190;
  *(v39 + 712) = v189;
  *(v39 + 728) = v86;
  v87 = v192;
  *(v39 + 744) = v191;
  *(v39 + 760) = v87;
  v88 = v188;
  *(v39 + 680) = v187;
  *(v39 + 696) = v88;
  *(v39 + 576) = v14;
  v89 = *(v39 + 408);
  v90 = *(v39 + 416);
  if (v89 >= v90)
  {
    v99 = *(v39 + 400);
    v100 = 0xCCCCCCCCCCCCCCCDLL * ((v89 - v99) >> 5);
    v101 = v100 + 1;
    if (v100 + 1 > 0x199999999999999)
    {
      sub_10028C64C();
    }

    v102 = 0xCCCCCCCCCCCCCCCDLL * ((v90 - v99) >> 5);
    if (2 * v102 > v101)
    {
      v101 = 2 * v102;
    }

    if (v102 >= 0xCCCCCCCCCCCCCCLL)
    {
      v103 = 0x199999999999999;
    }

    else
    {
      v103 = v101;
    }

    if (v103)
    {
      sub_10051A070(v39 + 400, v103);
    }

    v104 = 160 * v100;
    v105 = v188;
    *v104 = v187;
    *(v104 + 16) = v105;
    v106 = v189;
    v107 = v190;
    v108 = v192;
    *(v104 + 64) = v191;
    *(v104 + 80) = v108;
    *(v104 + 32) = v106;
    *(v104 + 48) = v107;
    v109 = v193[0];
    v110 = v193[1];
    v111 = v194;
    *(v104 + 128) = v193[2];
    *(v104 + 144) = v111;
    *(v104 + 96) = v109;
    *(v104 + 112) = v110;
    v98 = 160 * v100 + 160;
    v112 = *(v39 + 400);
    v113 = *(v39 + 408) - v112;
    v114 = v104 - v113;
    memcpy((v104 - v113), v112, v113);
    v115 = *(v39 + 400);
    *(v39 + 400) = v114;
    *(v39 + 408) = v98;
    *(v39 + 416) = 0;
    if (v115)
    {
      operator delete(v115);
    }
  }

  else
  {
    v91 = v188;
    *v89 = v187;
    *(v89 + 16) = v91;
    v92 = v189;
    v93 = v190;
    v94 = v192;
    *(v89 + 64) = v191;
    *(v89 + 80) = v94;
    *(v89 + 32) = v92;
    *(v89 + 48) = v93;
    v95 = v193[0];
    v96 = v193[1];
    v97 = v194;
    *(v89 + 128) = v193[2];
    *(v89 + 144) = v97;
    *(v89 + 96) = v95;
    *(v89 + 112) = v96;
    v98 = v89 + 160;
  }

  *(v39 + 408) = v98;
  v116 = *(v39 + 536);
  if (v116 >= 0x64)
  {
    v117 = *(v39 + 528);
    *(v39 + 536) = v116 - 1;
    *(v39 + 528) = v117 + 1;
    sub_1000AA818(v39 + 496, 1);
    v39 = v182;
  }

  sub_1000B1980((v39 + 496), &v187);
  result = v182;
  v119 = (BYTE9(v188) & 0x73) != 0;
  if (*(v182 + 1418) != v119)
  {
    *(v182 + 1418) = v119;
    v120 = *(v182 + 504);
    if (*(v182 + 512) != v120)
    {
      v121 = *(v182 + 528);
      v122 = *(v120 + 8 * (v121 / 0x19)) + 160 * (v121 % 0x19);
      v123 = *(v120 + 8 * ((*(v182 + 536) + v121) / 0x19)) + 160 * ((*(v182 + 536) + v121) % 0x19);
      if (v122 != v123)
      {
        v124 = (v120 + 8 * (v121 / 0x19));
        do
        {
          v125 = *(v122 + 8);
          v126 = *(v122 + 29);
          v127 = *(v122 + 30);
          v128 = *(v122 + 48);
          v129 = *(v122 + 53);
          if (qword_1025D4250 != -1)
          {
            sub_100325134();
          }

          v130 = qword_1025D4258;
          if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134350080;
            *&buf[4] = v125;
            *v196 = 1026;
            *&v196[2] = v128;
            v197 = 1026;
            v198 = v129;
            v199 = 1026;
            v200 = v126;
            v201 = 1026;
            v202 = v127;
            _os_log_impl(dword_100000000, v130, OS_LOG_TYPE_DEBUG, "After vehicular transition, startTime, %{public}f, rawMotionType, %{public}d, rawConfidence, %{public}d, mounted, %{public}d, mountedConfidence, %{public}d", buf, 0x24u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4250 != -1)
            {
              sub_100325134();
            }

            *v282 = 134350080;
            *&v282[4] = v125;
            *&v282[12] = 1026;
            *&v282[14] = v128;
            v283 = 1026;
            v284 = v129;
            LOWORD(v285) = 1026;
            *(&v285 + 2) = v126;
            HIWORD(v285) = 1026;
            v286 = v127;
            LODWORD(v155) = 36;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4258, 2, "After vehicular transition, startTime, %{public}f, rawMotionType, %{public}d, rawConfidence, %{public}d, mounted, %{public}d, mountedConfidence, %{public}d", v282, v155);
            v133 = v132;
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitMotionStateUpdate(const CMMotionCoprocessorReply::MotionStateUpdate *)", "%s\n", v132);
            if (v133 != buf)
            {
              free(v133);
            }
          }

          v122 += 160;
          if (v122 - *v124 == 4000)
          {
            v131 = v124[1];
            ++v124;
            v122 = v131;
          }

          result = v182;
        }

        while (v122 != v123);
      }
    }
  }

  v134 = *(v3 + 91);
  if (v134 != 0xFFFF)
  {
    *v196 = 0;
    *buf = v6;
    *&buf[8] = v134;
    sub_100013B00(result, 31, buf, 16);
    return sub_100013B00(v182, 32, buf, 16);
  }

  return result;
}