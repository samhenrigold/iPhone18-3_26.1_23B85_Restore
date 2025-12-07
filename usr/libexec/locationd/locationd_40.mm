void sub_10029CD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029CD7C(void *a1, _DWORD *a2, __n128 a3)
{
  v5 = a1[130];
  if (v5)
  {
    sub_10029CE14(v5, a2);
  }

  v6 = a1[127];
  if (v6)
  {
    sub_1002A81E0(v6, a2);
  }

  v7 = a1[132];
  if (v7)
  {
    sub_10029FAE8(v7, a2, 1.0);
  }

  v8 = a1[138];
  if (v8)
  {
    sub_10029CE20(v8, a2, 1.0);
  }

  v9 = a1[126];
  if (v9)
  {

    sub_1002A9464(v9, a2, 1.0);
  }
}

void sub_10029CE20(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1000137E0();
  if (vabdd_f64(v6, *(a1 + 8)) < a3)
  {
    *(a2 + 152) = 1;
  }

  if (vabdd_f64(v6, *(a1 + 32)) < a3)
  {
    *(a2 + 153) = 1;
  }
}

uint64_t sub_10029CE84(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10029CEFC(a1, i + 4, i + 1);
  }

  return a1;
}

uint64_t *sub_10029CEFC(void *a1, int *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_10029D128(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*(**a1 + 56))(*a1);
  sub_1001752AC(*(v4 + 8), v5);
  *(a1 + 40) = *(a2 + 292) != 0;
  if (a1[2] != 0x8000000000000000 && *(a1 + 3) != 0.0 && *(a1 + 8) > 0.0)
  {
    v6 = sub_1000137E0();
    v7 = *(a1 + 3);
    v8 = *(a2 + 8);
    v9 = (a1[2] - (v7 * 1000000000.0)) * 0.000000001;
    v10 = 0.0;
    if (v6 - v7 > 0.0 && v6 - v7 < 1200.0)
    {
      v11 = *(a1 + 8);
      if (v11 > 0.0 && v11 < 2000000.0)
      {
        v12 = *(a2 + 16) - v9;
        if (v12 > 0.0 && v12 < v6)
        {
          v10 = v6 - v12;
          if (v6 - v12 >= 10.0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_10168BBC0();
            }

            v15 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349056;
              v53 = v6 - v12;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#Warning,#tt,excessive mach time delay,%{public}.4lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10168BF3C();
            }
          }

          else
          {
            *(a2 + 8) = CFAbsoluteTimeGetCurrent() - v10;
            *(a2 + 24) = v12;
            *(a2 + 32) = sub_1000081AC() - v10;
          }
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_10168BBC0();
          }

          v14 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v53 = v12;
            v54 = 2048;
            v55 = v6;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning, #tt out of bounds estimatedMachTimeOfFix,%.4lf,machNow,%.4lf,possible bb time adjusted", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10168BE28(v12, v6);
          }

          a1[2] = 0x8000000000000000;
          a1[3] = 0;
          *(a1 + 8) = 2143289344;
        }
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_10168BCB8();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 8);
      v18 = *(a2 + 16);
      v19 = *(a1 + 8);
      v20 = *(a2 + 24);
      v21 = *(a2 + 32);
      v22 = *(a1 + 40);
      *buf = 134220288;
      v53 = v20;
      v54 = 2048;
      v55 = v6;
      v56 = 2048;
      v57 = v10;
      v58 = 2048;
      v59 = v8;
      v60 = 2048;
      v61 = v17;
      v62 = 2048;
      v63 = v18;
      v64 = 2048;
      v65 = v9;
      v66 = 2048;
      v67 = v19;
      v68 = 2048;
      v69 = v21;
      v70 = 1024;
      v71 = v22;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#tt,TimestampAdjust,machTimeOfFix,%.4lf,machNow,%.4lf,delay,%.9lf,priorCfTime,%.4lf,adjustedCfTime,%.4lf,locationTimestampGps,%.4lf,bbTimeMinusMachtime,%.9lf,bbTimeUnc_ns,%lld,machContinuousTimeOfFix,%.4lf,imag,%d", buf, 0x62u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v23 = *(a2 + 8);
      v24 = *(a2 + 16);
      v25 = *(a1 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 32);
      v28 = *(a1 + 40);
      v32 = 134220288;
      v33 = v26;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v10;
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = v23;
      v42 = 2048;
      v43 = v24;
      v44 = 2048;
      v45 = v9;
      v46 = 2048;
      v47 = v25;
      v48 = 2048;
      v49 = v27;
      v50 = 1024;
      v51 = v28;
      LODWORD(v31) = 98;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#tt,TimestampAdjust,machTimeOfFix,%.4lf,machNow,%.4lf,delay,%.9lf,priorCfTime,%.4lf,adjustedCfTime,%.4lf,locationTimestampGps,%.4lf,bbTimeMinusMachtime,%.9lf,bbTimeUnc_ns,%lld,machContinuousTimeOfFix,%.4lf,imag,%d", COERCE_DOUBLE(&v32), v31);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssTimeTransfer::adjustLocationTimestamps(GNSS::PerEpochData &)", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }
}

void sub_10029D5D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v13[0] = *(a2 + 128);
  *(v13 + 12) = *(a2 + 140);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  memcpy(v14, (a2 + 160), sizeof(v14));
  v15 = *(a2 + 680);
  v8 = *(a2 + 688);
  v16 = v8;
  *(a2 + 680) = 0u;
  v9 = *(a2 + 776);
  v21 = *(a2 + 760);
  v22[0] = v9;
  *(v22 + 9) = *(a2 + 785);
  v10 = *(a2 + 712);
  v17 = *(a2 + 696);
  v18 = v10;
  v11 = *(a2 + 744);
  v19 = *(a2 + 728);
  v20 = v11;
  if (*(*(a1 + 8) + 992))
  {
    sub_10029C554(*(*(a1 + 8) + 992), v12);
    v8 = v16;
  }

  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10029D6B4(_Unwind_Exception *a1)
{
  if (STACK[0x2B0])
  {
    sub_100008080(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

_UNKNOWN **sub_10029D6E0(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(*a1 + 16))(a1);
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, timer event, state:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  if (*(a1 + 16) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BCB8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#tt, did not receive a response to the previous pulse.  Stopping.", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168CB44();
    }

    sub_10168A93C(*(a1 + 8));
  }

  else
  {
    sub_10029D890(a1);
    return *(***(a1 + 8) - 8);
  }
}

id sub_10029D890(uint64_t a1)
{
  v2 = a1 + 8;
  v1 = *(a1 + 8);
  ++*(a1 + 20);
  *(a1 + 16) = 1;
  v3 = *(v1 + 84);
  v12 = off_1024F9860;
  v13 = v3;
  v14 = &v12;
  v4 = *(v1 + 120);
  if (!v4)
  {
    sub_1000CF05C();
  }

  v5 = (*(*v4 + 48))(v4, &v12);
  sub_1001767B8(&v12);
  if ((v5 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BCB8();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#tt, failed to send command to pulse", &v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168C948();
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_10168BCB8();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*v2 + 64) + 0.5;
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#tt, timer setNextFireDelay, %f", &v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10168CA34(v2);
  }

  return [*(*v2 + 48) setNextFireDelay:*(*v2 + 64) + 0.5];
}

void sub_10029DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001767B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029DAA4(uint64_t result, uint64_t a2)
{
  *a2 = off_1024F9860;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_10029DB0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  ++*(v1 + 80);
  return *(**v1 - 8);
}

uint64_t sub_10029DB38(uint64_t a1)
{
  if (*(a1 + 304) == 1)
  {
    sub_100134860(a1 + 248);
  }

  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 152) = _Q1;
  *(a1 + 176) = _Q1;
  *(a1 + 192) = 0u;
  *(a1 + 200) = _Q1;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0x100000005;
  *(a1 + 296) = 0;
  *(a1 + 304) = 1;
  return a1;
}

uint64_t sub_10029DBE0(void *a1)
{
  if (a1 <= 24)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x19:
        return 2;
      case 0x32:
        return 3;
      case 0x4B:
        return 4;
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101621394();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Reliability", v4, 8u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101622A74(a1);
    return 0;
  }

  return result;
}

void sub_10029DD04(uint64_t result, uint64_t a2)
{
  if (*(result + 1680) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,Warning,Simulator mode,not updating leap second", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101775AF0();
    }
  }

  else
  {
    v4 = *(a2 + 16);
    *(result + 1720) = v4 < 250000000.0;
    if (*(a2 + 20) == 1 && v4 < 250000000.0)
    {
      v5 = *(a2 + 64);
      if (sub_10029E3E8() != v5)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v6 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a2 + 8) * 0.000001;
          v9 = 134218240;
          v10 = v7;
          v11 = 1024;
          v12 = v5;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,GPS_TIME,UpdateLeapSeconds,gpsMs,%f,leapS,%d", &v9, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1017759D4(a2, v5);
        }

        sub_1004E5E64(v5, v8);
      }
    }
  }
}

uint64_t sub_10029DEC4(uint64_t a1, double *a2, double *a3)
{
  if ((*(a1 + 269) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10170CF60();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#imag,al,cross check disabled", &v10, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10170CF74();
    return 0;
  }

  sub_100109D18((a1 + 40), *a2, *a3, *(a1 + 84), *(a1 + 92), 0.0);
  v5 = v4;
  if (v4 <= fmin(*(a1 + 100) * 5.0, 1500.0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10170CF60();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#imag,al,locations match, separated by,%.1f,m", &v10, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10170D164();
    }

    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10170CF60();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#imag,al,locations mismatch, separated by,%.1f,m", &v10, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10170D064();
    return 0;
  }

  return result;
}

uint64_t *sub_10029E0DC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_10029E1C0(void *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (result > 15)
  {
    if (result <= 63)
    {
      if (result == 16)
      {
        v7 = 4;
        goto LABEL_26;
      }

      if (result != 32)
      {
        goto LABEL_25;
      }
    }

    else if (result != 64 && result != 128)
    {
      v6 = result == 256;
      v7 = 5;
      goto LABEL_9;
    }

LABEL_19:
    if (qword_1025D4650 != -1)
    {
      sub_101A3A9C4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67240192;
      v12[1] = result;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "unexpected SatSystem to convert to client type,%{public}d", v12, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A3AC94(result);
    }

LABEL_25:
    v7 = 0;
    goto LABEL_26;
  }

  if (result <= 3)
  {
    if (result)
    {
      v6 = result == 2;
      v7 = 1;
LABEL_9:
      if (!v6)
      {
        v7 = 0;
      }

      goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (result == 8)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (result == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = v8;
  }

LABEL_26:
  *(a3 + 24) = 0;
  v10 = *a2;
  *a3 = v7;
  *(a3 + 4) = v10;
  v11 = *(a2 + 1);
  *(a3 + 8) = vextq_s8(v11, v11, 8uLL);
  *(a3 + 24) = fmaxf(*v11.i32, *&v11.i32[1]) > 0.0;
  *(a3 + 25) = (a2[6] & 3) != 0;
}

uint64_t sub_10029E360(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v3 < 0.0 || v2 < 0.0)
  {
    v4 = 0;
    *(a2 + 8) = 0xBFF0000000000000;
  }

  else
  {
    v4 = 1;
  }

  *a2 = v4;
  v6 = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  if (v6 < 0.0 || v6 > 360.0 || v5 < 0.0)
  {
    v7 = 0;
    *(a2 + 32) = 0xBFF0000000000000;
  }

  else
  {
    v7 = 1;
  }

  *(a2 + 24) = v7;
  v8 = *(result + 32);
  *(a2 + 56) = *(result + 24);
  *(a2 + 64) = v8;
  *(a2 + 48) = v8 >= 0.0;
  return result;
}

uint64_t sub_10029E3E8()
{
  if (qword_102656768 != -1)
  {
    sub_1001537D4();
  }

  return dword_1025D6560;
}

void sub_10029E488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8894(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029E4A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_1024A2728;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_10028E850((a1 + 24), *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 2));
  return a1;
}

uint64_t sub_10029E530(uint64_t a1, __n128 a2)
{
  if (*(a1 + 488) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 488);
      *buf = 67240192;
      LODWORD(v27) = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "DEM,isUseOfDemInappropriate,true,fIsAirborne,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AF6198((a1 + 488));
    }

    return 1;
  }

  if (*(a1 + 496) > 0.0)
  {
    v6 = sub_1000081AC();
    if (vabdd_f64(v6, *(a1 + 496)) < 10.0 && ((*(a1 + 538) & 1) != 0 || (*(a1 + 539) & 1) != 0 || (*(a1 + 536) & 1) != 0 || *(a1 + 537) == 1))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 496);
        v9 = *(a1 + 512);
        v10 = *(a1 + 520);
        *buf = 134350081;
        v27 = v6;
        v28 = 2050;
        v29 = v8;
        v30 = 1026;
        v31 = 1;
        v32 = 2053;
        v33 = v9;
        v34 = 2053;
        v35 = v10;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "DEM,isUseOfDemInappropriate,true,TBA,currentTime,%{public}.1lf,TBA machContinuousTime,%{public}.1lf,isCloseToOrAtTunnelBridge,%{public}d,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101AF5990();
        }

        v11 = *(a1 + 496);
        v12 = *(a1 + 512);
        v13 = *(a1 + 520);
        v16 = 134350081;
        v17 = v6;
        v18 = 2050;
        v19 = v11;
        v20 = 1026;
        v21 = 1;
        v22 = 2053;
        v23 = v12;
        v24 = 2053;
        v25 = v13;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "DEM,isUseOfDemInappropriate,true,TBA,currentTime,%{public}.1lf,TBA machContinuousTime,%{public}.1lf,isCloseToOrAtTunnelBridge,%{public}d,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", &v16, 48);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::isUseOfDemInappropriate() const", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_10029E824(uint64_t a1, double *a2, double *a3, __n128 a4, long double a5)
{
  v5 = *(a1 + 80);
  *a2 = -9999.0;
  *a3 = 9999.0;
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#Warning,DEM,current tile is not valid", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AF6388();
      return 0;
    }

    return result;
  }

  v6 = a4.n128_f64[0];
  if (*(a1 + 136) == 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#Warning,DEM,cellsize == 0", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AF6D1C();
      return 0;
    }

    return result;
  }

  if (fabs(a4.n128_f64[0]) <= 90.0)
  {
    sub_10002DB04(a5);
    v16 = (a1 + 128);
    v17 = *(a1 + 128);
    if (v17 > v6)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v18 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v19 = *v16;
        *buf = 134545921;
        v93 = v6;
        v94 = 2053;
        v95 = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6B24();
        return 0;
      }

      return result;
    }

    v20 = v14;
    v21 = *(a1 + 136);
    v22 = *(a1 + 108);
    v23 = v17 + v21 * v22;
    if (v23 < v6)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v24 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 134545921;
        v93 = v6;
        v94 = 2053;
        v95 = v23;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6A2C();
        return 0;
      }

      return result;
    }

    v25 = (a1 + 120);
    v26 = *(a1 + 120);
    if (v14 < v26)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v27 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v28 = *v25;
        *buf = 134545921;
        v93 = v20;
        v94 = 2053;
        v95 = v28;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6930();
        return 0;
      }

      return result;
    }

    v29 = *(a1 + 110);
    v30 = v26 + v21 * v29;
    if (v14 > v30)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 134545921;
        v93 = v20;
        v94 = 2053;
        v95 = v30;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6838();
        return 0;
      }

      return result;
    }

    v32 = *(a1 + 156);
    v33 = *(a1 + 104);
    if (v32 > v33)
    {
      v33 = *(a1 + 156);
    }

    v34 = v33;
    v35 = *(a1 + 148);
    if (v35 == *(a1 + 144))
    {
      v36 = v35;
      goto LABEL_54;
    }

    v37 = (v20 - v26) / v21;
    v38 = (floor(v37) + 0.5);
    if ((v38 & 0x80000000) != 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v54 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v55 = *v25;
        *buf = 134545921;
        v93 = v20;
        v94 = 2053;
        v95 = v55;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,invalid,minLongitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF673C();
        return 0;
      }

      return result;
    }

    v39 = (v6 - v17) / v21;
    v40 = (floor(v39) + 0.5);
    if ((v40 & 0x80000000) != 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v56 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v57 = *v16;
        *buf = 134545921;
        v93 = v6;
        v94 = 2053;
        v95 = v57;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,invalid,minLatitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6640();
        return 0;
      }

      return result;
    }

    if (v38 >= v29)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v58 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v59) = *(a1 + 110);
        v60 = *(a1 + 120) + v59 * *(a1 + 136);
        *buf = 134545921;
        v93 = v20;
        v94 = 2053;
        v95 = v60;
        _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,invalid,maxLongitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (!result)
      {
        return result;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101AF5990();
      }

      LOWORD(v61) = *(a1 + 110);
      v62 = *(a1 + 120) + v61 * *(a1 + 136);
      *v91 = 134545921;
      *&v91[4] = v20;
      *&v91[12] = 2053;
      *&v91[14] = v62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,DEM,longitude,%{sensitive}.9lf,invalid,maxLongitude,%{sensitive}.9lf", v91, 22, *v91, *&v91[8]);
    }

    else
    {
      if (v40 < v22)
      {
        v41 = v29 * v40;
        *&v42 = v41 + v38;
        v43 = *(a1 + 24);
        if (!v43 || (v44 = *(a1 + 112), v44 <= LODWORD(v42)))
        {
          if (qword_1025D4650 != -1)
          {
            sub_101AF5938();
          }

          v70 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            v93 = v42;
            _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
          }

          result = sub_10000A100(121, 2);
          if (!result)
          {
            return result;
          }

          goto LABEL_189;
        }

        v45 = v5;
        v46 = v38 + 1;
        v47 = v40 + 1;
        v48 = *(v43 + *&v42);
        if (v38 + 1 == v29 && v47 == v22)
        {
          v51 = *(v43 + *&v42);
          v52 = v51;
        }

        else
        {
          if (v46 == v29)
          {
            v50 = v47 * v29 + v38;
            if (v44 > v50)
            {
              v51 = *(v43 + v50);
              v52 = v48;
              v53 = v51;
LABEL_109:
              v71 = v48 != v45;
              v72 = 2;
              if (v48 != v45)
              {
                v72 = 3;
              }

              if (v52 != v45)
              {
                v71 = v72;
              }

              if (v53 != v45)
              {
                v71 |= 4uLL;
              }

              if (v51 != v45)
              {
                v71 |= 8uLL;
              }

              v73 = 1;
              v74 = 0.0;
              v75 = 0.0;
              v76 = 0.0;
              v77 = 0.0;
              switch(v71)
              {
                case 1:
                  v78 = v48;
                  goto LABEL_175;
                case 2:
                  v78 = v52;
                  goto LABEL_175;
                case 3:
                  v73 = 0;
                  v76 = v48;
                  goto LABEL_157;
                case 4:
                  v78 = v53;
                  goto LABEL_175;
                case 5:
                  v73 = 0;
                  v74 = v53;
                  goto LABEL_154;
                case 6:
                  v73 = 0;
                  v76 = v53;
LABEL_157:
                  v74 = v52;
                  goto LABEL_158;
                case 7:
                  v73 = 0;
                  v74 = v53;
                  v77 = v48;
                  v75 = v52;
                  v76 = v53;
                  break;
                case 8:
                  v78 = v51;
LABEL_175:
                  v36 = (v35 + (v78 * v32));
                  goto LABEL_54;
                case 9:
                  v73 = 0;
                  v74 = v51;
LABEL_154:
                  v75 = v48;
                  goto LABEL_161;
                case 10:
                  v73 = 0;
                  v74 = v51;
                  v75 = v52;
LABEL_161:
                  v76 = v74;
                  goto LABEL_162;
                case 11:
                  v73 = 0;
                  v76 = v48;
                  v74 = v51;
                  v75 = v52;
                  goto LABEL_159;
                case 12:
                  v73 = 0;
                  v76 = v53;
                  v74 = v51;
LABEL_158:
                  v75 = v74;
LABEL_159:
                  v77 = v76;
                  break;
                case 13:
                  v73 = 0;
                  v76 = v53;
                  v74 = v51;
                  v75 = v48;
                  goto LABEL_162;
                case 14:
                  v73 = 0;
                  v76 = v53;
                  v74 = v51;
                  v75 = v52;
LABEL_162:
                  v77 = v75;
                  break;
                case 15:
                  v73 = 0;
                  v76 = v53;
                  v74 = v51;
                  v77 = v48;
                  v75 = v52;
                  break;
                default:
                  break;
              }

              LOBYTE(v15) = *(a1 + 80);
              v87 = v15;
              if (vabdd_f64(v77, v87) < 1.0e-12 || vabdd_f64(v76, v87) < 1.0e-12 || vabdd_f64(v75, v87) < 1.0e-12 || vabdd_f64(v74, v87) < 1.0e-12)
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101AF5938();
                }

                v88 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_INFO, "#Warning,DEM,unexpected noData", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101AF655C();
                }

                result = 0;
                *a2 = -9999.0;
                *a3 = 9999.0;
                return result;
              }

              *a2 = -9999.0;
              *a3 = 9999.0;
              if (v73)
              {
                return 1;
              }

              v36 = v35 + ((v47 - v39) * ((v37 - v38) * v75) + (v46 - v37) * v77 * (v47 - v39) + (v46 - v37) * v76 * (v39 - v40) + (v37 - v38) * v74 * (v39 - v40)) / ((v47 - v40) * (v46 - v38)) * v32;
LABEL_54:
              *a2 = v36;
              *a3 = v34;
              return 1;
            }

            if (qword_1025D4650 != -1)
            {
              sub_101AF5938();
            }

            v80 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              v93 = *&v50;
              _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              return result;
            }

LABEL_189:
            sub_101AF646C();
            return 0;
          }

          if (v47 != v22)
          {
            v81 = v47 * v29;
            *&v82 = v81 + v38;
            if (v44 <= LODWORD(v82))
            {
              if (qword_1025D4650 != -1)
              {
                sub_101AF5938();
              }

              v86 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 134349056;
                v93 = v82;
                _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
              }

              result = sub_10000A100(121, 2);
              if (!result)
              {
                return result;
              }
            }

            else
            {
              *&v83 = v41 + v46;
              if (v44 <= LODWORD(v83))
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101AF5938();
                }

                v89 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 134349056;
                  v93 = v83;
                  _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
                }

                result = sub_10000A100(121, 2);
                if (!result)
                {
                  return result;
                }
              }

              else
              {
                *&v84 = v81 + v46;
                if (v44 > LODWORD(v84))
                {
                  v53 = *(v43 + *&v82);
                  v52 = *(v43 + *&v83);
                  v51 = *(v43 + *&v84);
                  goto LABEL_109;
                }

                if (qword_1025D4650 != -1)
                {
                  sub_101AF5938();
                }

                v90 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 134349056;
                  v93 = v84;
                  _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
                }

                result = sub_10000A100(121, 2);
                if (!result)
                {
                  return result;
                }
              }
            }

            goto LABEL_189;
          }

          *&v79 = v41 + v46;
          if (v44 <= LODWORD(v79))
          {
            if (qword_1025D4650 != -1)
            {
              sub_101AF5938();
            }

            v85 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              v93 = v79;
              _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              return result;
            }

            goto LABEL_189;
          }

          v51 = *(v43 + *&v79);
          v52 = v51;
        }

        v53 = v48;
        goto LABEL_109;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v64 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v65) = *(a1 + 108);
        v66 = *(a1 + 128) + v65 * *(a1 + 136);
        *buf = 134545921;
        v93 = v6;
        v94 = 2053;
        v95 = v66;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,invalid,maxLatitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (!result)
      {
        return result;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101AF5990();
      }

      LOWORD(v67) = *(a1 + 108);
      v68 = *(a1 + 128) + v67 * *(a1 + 136);
      *v91 = 134545921;
      *&v91[4] = v6;
      *&v91[12] = 2053;
      *&v91[14] = v68;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,DEM,latitude,%{sensitive}.9lf,invalid,maxLatitude,%{sensitive}.9lf", v91, 22, *v91, *&v91[8]);
    }

    v69 = v63;
    sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLDigitalElevationModel::getAltitude(CLDEMTile &, double, double, double &, double &)", "%s\n", v63);
    if (v69 != buf)
    {
      free(v69);
    }

    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 134545665;
    v93 = v6;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,out of range", buf, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AF6C20();
    return 0;
  }

  return result;
}

uint64_t *sub_10029F7AC(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_10029F9E4();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10029F9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8894(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10029FA6C(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 4);
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

    result[1] = (v5 + 304 * v6);
  }

  return result;
}

void sub_10029FAE8(uint64_t a1, uint64_t a2, double a3)
{
  if (vabdd_f64(sub_1000137E0(), *(a1 + 120)) < a3)
  {
    *(a2 + 155) = 1;
    v5 = *(a1 + 136);
    *(a2 + 160) = *(a1 + 128) + *(a1 + 144);
    *(a2 + 168) = v5;
  }
}

void *sub_10029FB44(void *a1)
{
  sub_10029FBBC((a1 + 1));
  sub_1002AAB18((a1 + 13));
  sub_1002AAB6C(a1 + 73);
  sub_10029FD1C((a1 + 254));
  sub_1002AAD1C(a1);
  return a1;
}

uint64_t sub_10029FBBC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  CNTimeSpan::SetTimeSpan(a1, 0, 0.0);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 24), 0, 0.0);
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 48), 0, 0.0);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 72), 0, 0.0);
  *(a1 + 88) = 0x7FF8000000000000;
  return a1;
}

void sub_10029FC4C(uint64_t a1)
{
  *a1 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  sub_10029FBBC(&v5);
  v2 = v8;
  *(a1 + 40) = v7;
  *(a1 + 56) = v2;
  v3 = v10;
  *(a1 + 72) = v9;
  *(a1 + 88) = v3;
  v4 = v6;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v5, 0, 0.0);
  *(a1 + 120) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 960) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 976) = 0;
  *(a1 + 984) = 0x7FF8000000000000;
  bzero((a1 + 164), 0x318uLL);
}

uint64_t sub_10029FD1C(uint64_t a1)
{
  v2 = sub_10029FBBC(a1);
  *(v2 + 96) = 0;
  *(v2 + 104) = 0x3FF0000000000000;
  *(v2 + 192) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  *(v2 + 496) = 0;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 170) = 0u;
  *(v2 + 520) = 0x3FF0000000000000;
  *(v2 + 528) = 0;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0;
  *(v2 + 560) = 0x3FF0000000000000;
  *(v2 + 584) = 0;
  *(v2 + 568) = 0u;
  *(v2 + 592) = 0;
  *(v2 + 600) = 0x3FE0000000000000;
  *(v2 + 608) = 0x3FE0000000000000;
  *(v2 + 616) = 0;
  sub_1002AAC48(v2);
  return a1;
}

uint64_t sub_10029FDBC(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, v7, a3);
}

uint64_t sub_10029FE48(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = *(v5 + 33);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v7, a2, a4);
}

float64_t sub_10029FF60(uint64_t a1, uint64_t a2)
{
  v3 = 0.0;
  if ((*(a1 + 912) & 1) == 0)
  {
    v4 = 0.0;
    if (*(a1 + 904) == 1)
    {
      v4 = *(a1 + 896);
    }

    v3 = *(a2 + 8) - v4;
  }

  v5 = fabs(v3) > 10.0;
  if (*(a1 + 1137) == 1 && (*(a1 + 1136) & 1) != 0)
  {
    v5 = 0;
  }

  if (*(a1 + 659) & 1) == 0 && (*(a1 + 752) - 5) < 0xFFFFFFFE || ((*(a1 + 1138) ^ 1 | v5))
  {
    if (*(a1 + 1096) == 1)
    {
      *(a1 + 1096) = 0;
    }

    *(a1 + 657) = 0;
    v9 = *(a1 + 944);
    v10 = *(a1 + 952);
    *(a1 + 976) = 0;
    v11 = (v10 - v9) >> 3;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v9);
        v9 = (*(a1 + 944) + 8);
        *(a1 + 944) = v9;
        v11 = (*(a1 + 952) - v9) >> 3;
      }

      while (v11 > 2);
    }

    if (v11 == 1)
    {
      v12 = 18;
    }

    else
    {
      if (v11 != 2)
      {
LABEL_98:
        *(a1 + 1128) = 0;
        v43.f64[0] = 0.0;
        *(a1 + 1112) = 0u;
        return v43.f64[0];
      }

      v12 = 36;
    }

    *(a1 + 968) = v12;
    goto LABEL_98;
  }

  v6 = (a1 + 968);
  v7 = *(a1 + 976);
  if (*(a1 + 660) == 1 && *(a1 + 657) == 1 && *(a1 + 1096) == 1)
  {
    *(a1 + 1112) = vsubq_f64(*(a1 + 1112), vcvtq_f64_f32(*(a1 + 1012)));
    *(a1 + 1128) = *(a1 + 1128) - *(a1 + 1020);
    *(a1 + 657) = 0;
    *(a1 + 1096) = 0;
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v46 = v7;
  if (v7)
  {
    v13 = 0;
    v48 = (a1 + 1144);
    v14 = (a1 + 984);
    while (v8 < 1 || *(a1 + 1108) == 1 && *(a1 + 1104) >= 2)
    {
      v15 = *(*(a1 + 944) + 8 * (*(a1 + 968) / 0x24uLL)) + 112 * (*(a1 + 968) % 0x24uLL);
      if ((~*(v15 + 110) & 0x11) != 0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10197D0E4();
        }

        v21 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v22 = v48;
          if (*(a1 + 1167) < 0)
          {
            v22 = *v48;
          }

          v23 = *(v15 + 110);
          *buf = 136315650;
          *&buf[4] = v22;
          *&buf[12] = 1024;
          *&buf[14] = v23 & 1;
          *&buf[18] = 1024;
          *&buf[20] = (v23 >> 4) & 1;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "GPSODOM%s,CLIO,rejecting IO,isDeltaPositionValid,%d,isDeltaPositionScaleFactorValid,%d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10197D0E4();
          }

          v24 = v48;
          if (*(a1 + 1167) < 0)
          {
            v24 = *v48;
          }

          v25 = *(v15 + 110);
          v50 = 136315650;
          v51 = v24;
          v52 = 1024;
          v53 = v25 & 1;
          v54 = 1024;
          v55 = (v25 >> 4) & 1;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "GPSODOM%s,CLIO,rejecting IO,isDeltaPositionValid,%d,isDeltaPositionScaleFactorValid,%d", &v50, 24, v45);
          v27 = v26;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssOdometer::setInputLocationUsingCalibratedIO(GNSS::PerEpochData &)", "%s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }
      }

      else
      {
        *(a1 + 1112) = vaddq_f64(*(a1 + 1112), vcvtq_f64_f32(*(v15 + 28)));
        *(a1 + 1128) = *(a1 + 1128) + *(v15 + 36);
        v16 = *v15;
        v17 = *(v15 + 32);
        if (*(a1 + 1096) == 1)
        {
          *(a1 + 1000) = *(v15 + 16);
          *(a1 + 1016) = v17;
          *v14 = v16;
          v18 = *(v15 + 48);
          v19 = *(v15 + 64);
          v20 = *(v15 + 80);
          *(a1 + 1079) = *(v15 + 95);
          *(a1 + 1048) = v19;
          *(a1 + 1064) = v20;
          *(a1 + 1032) = v18;
          v13 = 1;
        }

        else
        {
          *(a1 + 1000) = *(v15 + 16);
          *(a1 + 1016) = v17;
          *v14 = v16;
          v28 = *(v15 + 48);
          v29 = *(v15 + 64);
          v30 = *(v15 + 96);
          *(a1 + 1064) = *(v15 + 80);
          *(a1 + 1080) = v30;
          *(a1 + 1032) = v28;
          *(a1 + 1048) = v29;
          v13 = 1;
          *(a1 + 1096) = 1;
        }
      }

      *v6 = vaddq_s64(*v6, xmmword_101C66230);
      sub_10093188C(a1 + 936, 1);
      ++v8;
      v31 = v13;
      if (!*(a1 + 976))
      {
        goto LABEL_49;
      }
    }

    v31 = v13;
  }

  else
  {
    v31 = 0;
    v13 = 1;
  }

LABEL_49:
  *(a1 + 1104) = v8;
  *(a1 + 1108) = 1;
  if (qword_1025D4600 != -1)
  {
    sub_10197D0E4();
  }

  v32 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "GPSODOM,CLIO,processedIOSampleCount,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197D10C(v8);
  }

  if (v13)
  {
    if (*(a1 + 660) == 1 && !v46 && *(a1 + 1096) == 1 && *(a2 + 8) - *(a1 + 984) <= 5.0)
    {
      *(a1 + 1112) = vaddq_f64(*(a1 + 1112), vcvtq_f64_f32(*(a1 + 1012)));
      *(a1 + 1128) = *(a1 + 1128) + *(a1 + 1020);
      *(a1 + 657) = 1;
      if (qword_1025D4600 != -1)
      {
        sub_10197D0E4();
      }

      v33 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v34 = (a1 + 1144);
        if (*(a1 + 1167) < 0)
        {
          v34 = *v34;
        }

        *buf = 136315138;
        *&buf[4] = v34;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,CLIO,applied last IO sample since there are no current samples to process", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10197D30C();
      }

      v31 = 1;
      goto LABEL_87;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10197D0E4();
    }

    v35 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v36 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v36 = *v36;
      }

      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "GPSODOM%s,CLIO,cannot use IO,all IO samples are invalid", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197D20C();
    }
  }

  if (!((v46 != 0) | v31 & 1))
  {
    if (qword_1025D4600 != -1)
    {
      sub_10197D0E4();
    }

    v37 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v38 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v38 = *v38;
      }

      *buf = 136315138;
      *&buf[4] = v38;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,CLIO,cannot use IO,noIOSamplesAvailableToProcess", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197D40C();
    }

    v31 = 0;
  }

LABEL_87:
  v39 = *(a1 + 944);
  v40 = *(a1 + 952);
  *(a1 + 976) = 0;
  v41 = (v40 - v39) >> 3;
  if (v41 >= 3)
  {
    do
    {
      operator delete(*v39);
      v39 = (*(a1 + 944) + 8);
      *(a1 + 944) = v39;
      v41 = (*(a1 + 952) - v39) >> 3;
    }

    while (v41 > 2);
  }

  if (v41 == 1)
  {
    v42 = 18;
  }

  else
  {
    if (v41 != 2)
    {
      goto LABEL_96;
    }

    v42 = 36;
  }

  *(a1 + 968) = v42;
LABEL_96:
  if ((v31 & 1) == 0)
  {
    goto LABEL_98;
  }

  memset(buf, 0, 24);
  cnnavigation::ENUToECEF();
  cnnavigation::ECEFToLLA();
  v43 = vmulq_f64(v49, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  *(a2 + 56) = v43;
  return v43.f64[0];
}

void sub_1002A07E4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  CLProfilingIdentify();
  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v9 = *a4;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = std::__shared_weak_count::lock(v8);
      if (v10 && v9)
      {
        [objc_msgSend(*(v9 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v18 = 1;
          v11 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleVendorLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v11, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v12 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v20 = 0;
            v21 = 2082;
            v22 = "";
            v23 = 2082;
            v24 = "activity";
            v25 = 2050;
            v26 = v9;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleVendorLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v18 = 0;
        }

        sub_1002C34B4(v9, v7, a2, a3);
        if (v18 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v14 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4688, 0, "Raven: #methodName called after controller deletion", &state, 2);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleVendorLocationNotification_bounce(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void *)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    if (!v10)
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v10);
    if (!v8)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v13 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A22478();
  }
}

void sub_1002A0B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002A0BA8(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 60);
  if (v3 >= 0.0 && v3 < 360.0)
  {
    return *(a1 + 68) > 0.0;
  }

  return result;
}

void sub_1002A0BDC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018AD8B4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMonitorGpsExternal::onGpsNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018AD8C8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMonitorGpsExternal::onGpsNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  (*(**(a4 + 40) + 32))(*(a4 + 40), a1, *a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002A0DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100022008(v60, a4);
  *(a1 + 248) = 1;
  v7 = v67;
  if (v67 != 1)
  {
    goto LABEL_8;
  }

  *(a1 + 248) = 0;
  if (a3 == 47)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10197B91C();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Server side location can be harvested", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197B944(buf);
      LOWORD(v75) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 2, "Server side location can be harvested", &v75, 2);
      v43 = v42;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v42);
      if (v43 != buf)
      {
        free(v43);
      }
    }

LABEL_8:
    if (sub_100072814(v60))
    {
      if (a3 == 12)
      {
        *(a1 + 67) = v70;
        if (qword_1025D47D0 != -1)
        {
          sub_10197B91C();
        }

        v9 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          if (*(a1 + 67))
          {
            v10 = "enabled";
          }

          else
          {
            v10 = "disabled";
          }

          *buf = 4.8149e-34;
          *v80 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Got GPS location simulation %s notification", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10197B944(buf);
          v44 = *(a1 + 67) ? "enabled" : "disabled";
          v75 = 136315138;
          *v76 = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 1, "Got GPS location simulation %s notification", &v75);
          v46 = v45;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v45);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        (*(**(a1 + 32) + 40))(*(a1 + 32));
        goto LABEL_38;
      }

      v16 = (*(**(a1 + 32) + 160))(*(a1 + 32));
      v17.n128_u64[0] = *&v60[20];
      if (*&v60[20] >= 0.0)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v18 != 1)
      {
        goto LABEL_38;
      }

      v19 = (*(**(a1 + 32) + 64))(*(a1 + 32), v17);
      if (v19 - *&v61[12] > 5.0)
      {
        goto LABEL_38;
      }

      if (*&v64[4] != 1 && *&v64[8] != 1)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_10197B91C();
        }

        v20 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          *buf = 1.7163e-36;
          *v80 = 0;
          *&v80[4] = 2082;
          *&v80[6] = "";
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:We have no WGS84, anywhere! Only Chinese Stark}", buf, 0x12u);
        }

        goto LABEL_38;
      }

      v21 = *&v60[28];
      if (v65 == 2)
      {
        *buf = 0.0;
        if (sub_1001D381C(buf, *&v60[4], *&v60[12]))
        {
          v21 = v21 + v66 - *buf;
        }
      }

      if (v7)
      {
        v21 = *(&unk_101CB6290 + (~(v21 >> 60) & 8)) + v21;
      }

      *&v60[28] = v21;
      if (qword_1025D47D0 != -1)
      {
        sub_10197B91C();
      }

      v22 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 1.7164e-36;
        *v80 = 0;
        *&v80[4] = 2082;
        *&v80[6] = "";
        *&v80[14] = 1040;
        *&v80[16] = 156;
        *&v80[20] = 2097;
        *&v80[22] = v60;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onGps, location:%{private, location:CLDaemonLocation}.*P}", buf, 0x22u);
      }

      if (a3 <= 0x2F && ((1 << a3) & 0x800000000011) != 0)
      {
        v23 = *&v61[12];
        if (*&v61[12] - *(a1 + 168) > 180.0)
        {
          if (*&v61[12] - *(a1 + 80) > 180.0)
          {
            if (qword_1025D47D0 != -1)
            {
              sub_10197B91C();
            }

            v24 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
            {
              v25 = *&v61[12] - *(a1 + 80);
              v26 = *(a1 + 72);
              *buf = 3.8521e-34;
              *v80 = v25;
              *&v80[8] = 1024;
              *&v80[10] = v26;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "GPS dropped out for %.3fs while warming - resetting count (from %d)", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10197B944(buf);
              v49 = *&v61[12] - *(a1 + 80);
              v50 = *(a1 + 72);
              v75 = 134218240;
              *v76 = v49;
              *&v76[8] = 1024;
              *&v76[10] = v50;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 1, "GPS dropped out for %.3fs while warming - resetting count (from %d)", COERCE_DOUBLE(&v75), 18);
              v52 = v51;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v51);
              if (v52 != buf)
              {
                free(v52);
              }
            }

            *(a1 + 72) = 0;
            (*(*a1 + 112))(a1, 0);
            v23 = *&v61[12];
          }

          *(a1 + 80) = v23;
          ++*(a1 + 72);
        }

        v27 = sub_100932EC8(a1 + 264, v60, v7);
        if (v27)
        {
          if (qword_1025D47D0 != -1)
          {
            sub_10197B91C();
          }

          v29 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "Anomalous GPS jump detected - distance/speed thresholds exceeded", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10197B944(buf);
            LOWORD(v75) = 0;
            LODWORD(v59) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 1, "Anomalous GPS jump detected - distance/speed thresholds exceeded", &v75, v59);
            v48 = v47;
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v47);
            if (v48 != buf)
            {
              free(v48);
            }
          }
        }

        if (*(a1 + 96) == *&v60[4] && *(a1 + 104) == *&v60[12] && ((v30 = *(a1 + 112), v30 <= 50.0) || v30 <= *&v60[20]))
        {
          if (qword_1025D47D0 != -1)
          {
            sub_10197B91C();
          }

          v37 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            v38 = *(a1 + 96);
            v39 = *(a1 + 104);
            v40 = *(a1 + 112);
            v41 = *(a1 + 88);
            *buf = 4.0028e-34;
            *v80 = v38;
            *&v80[8] = 2053;
            *&v80[10] = v39;
            *&v80[18] = 2048;
            *&v80[20] = v40;
            *&v80[28] = 1024;
            v81 = v41;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "location is clamped at <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f - count %d", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10197B944(buf);
            v53 = *(a1 + 96);
            v54 = *(a1 + 104);
            v55 = *(a1 + 112);
            v56 = *(a1 + 88);
            v75 = 134546433;
            *v76 = v53;
            *&v76[8] = 2053;
            *&v76[10] = v54;
            *&v76[18] = 2048;
            *&v76[20] = v55;
            v77 = 1024;
            v78 = v56;
            LODWORD(v59) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 1, "location is clamped at <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f - count %d", &v75, v59);
            v58 = v57;
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v57);
            if (v58 != buf)
            {
              free(v58);
            }
          }

          ++*(a1 + 88);
        }

        else
        {
          *(a1 + 88) = 0;
        }

        v28.n128_u64[0] = *&v60[44];
        (*(*a1 + 112))(a1, *&v60[44] >= 6.7, v28);
        (*(**(a1 + 48) + 16))(*(a1 + 48), v60);
        if ((*(**(a1 + 32) + 184))(*(a1 + 32), v60))
        {
          v31 = *v61;
          *(a1 + 172) = *&v61[16];
          *(a1 + 156) = v31;
          v32 = *&v60[32];
          *(a1 + 140) = *&v60[48];
          *(a1 + 124) = v32;
          *(a1 + 232) = *&v64[12];
          *(a1 + 220) = *v64;
          v33 = v62;
          *(a1 + 204) = v63;
          *(a1 + 188) = v33;
          v34 = *&v60[16];
          *(a1 + 92) = *v60;
          *(a1 + 108) = v34;
          (*(**(a1 + 48) + 24))(*(a1 + 48), a2, a3, v60, v27);
          goto LABEL_38;
        }

        if (qword_1025D47D0 != -1)
        {
          sub_10197B91C();
        }

        v35 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "on gps notification. Pos harvesting not eligible", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10197B944(buf);
          LOWORD(v75) = 0;
          LODWORD(v59) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 2, "on gps notification. Pos harvesting not eligible", &v75, v59);
          v13 = v36;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v36);
LABEL_31:
          if (v13 != buf)
          {
            free(v13);
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_10197B91C();
      }

      v11 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 1.5283e-36;
        *v80 = v62;
        *&v80[4] = 2053;
        *&v80[6] = *&v60[4];
        *&v80[14] = 2053;
        *&v80[16] = *&v60[12];
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#Warning,invalid,type,%{public}d,lat,%{sensitive}.7f,lon,%{sensitive}.7f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10197B944(buf);
        v75 = 67240705;
        *v76 = v62;
        *&v76[4] = 2053;
        *&v76[6] = *&v60[4];
        *&v76[14] = 2053;
        *&v76[16] = *&v60[12];
        LODWORD(v59) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 1, "#Warning,invalid,type,%{public}d,lat,%{sensitive}.7f,lon,%{sensitive}.7f", &v75, v59);
        v13 = v12;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v12);
        goto LABEL_31;
      }
    }

    goto LABEL_38;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_10197B91C();
  }

  v14 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Location is from test equipment, do not harvest", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197B944(buf);
    LOWORD(v75) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 2, "Location is from test equipment, do not harvest", &v75, 2);
    v13 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v15);
    goto LABEL_31;
  }

LABEL_38:

  if (v73)
  {
    sub_100008080(v73);
  }

  if (v72 < 0)
  {
    operator delete(__p);
  }

  if (v69)
  {
    sub_100008080(v69);
  }

  if (v68)
  {
    sub_100008080(v68);
  }
}

void sub_1002A1C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A1C88(uint64_t result, int a2)
{
  if (*(result + 68) != a2)
  {
    v2 = result;
    *(result + 68) = a2;
    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v4 = *(v2 + 68);
      v5[0] = 68289283;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 1025;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vehicular speed achieved, vehicularSpeedAchieved:%{private}hhd}", v5, 0x18u);
    }

    return (*(**(v2 + 32) + 40))(*(v2 + 32));
  }

  return result;
}

__n128 sub_1002A1DA4(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 352);
  (*(**(a1 + 136) + 80))(*(a1 + 136));
  if (sub_1002A21A8(a1 + 1080))
  {
    v4 = *(a2 + 76) - *(a1 + 892);
    if (v4 < 3.0)
    {
      sub_1002A21B8(a1 + 1080, v4);
    }

    if ((sub_1002AC764(a1 + 1080) & 1) == 0 && (*(**(a1 + 48) + 96))(*(a1 + 48)))
    {
      sub_1004F4C70(a1 + 1080);
    }
  }

  v5 = *(a2 + 16);
  *(a1 + 816) = *a2;
  *(a1 + 832) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 80);
  *(a1 + 880) = *(a2 + 64);
  *(a1 + 896) = v8;
  *(a1 + 848) = v6;
  *(a1 + 864) = v7;
  result = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  *(a1 + 956) = *(a2 + 140);
  *(a1 + 928) = v10;
  *(a1 + 944) = v11;
  *(a1 + 912) = result;
  return result;
}

uint64_t sub_1002A1EA0(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    result = sub_1002CE758(a1);
    if (*(a1 + 192) < 0.0 || (result = (*(**(a1 + 80) + 104))(*(a1 + 80)), result))
    {
      v5 = *(a2 + 16);
      *(a1 + 172) = *a2;
      *(a1 + 188) = v5;
      v6 = *(a2 + 32);
      v7 = *(a2 + 48);
      v8 = *(a2 + 80);
      *(a1 + 236) = *(a2 + 64);
      *(a1 + 252) = v8;
      *(a1 + 204) = v6;
      *(a1 + 220) = v7;
      v9 = *(a2 + 96);
      v10 = *(a2 + 112);
      v11 = *(a2 + 128);
      *(a1 + 312) = *(a2 + 140);
      *(a1 + 284) = v10;
      *(a1 + 300) = v11;
      *(a1 + 268) = v9;
    }

    else if (*(a2 + 76) - *(a1 + 160) > 900.0)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101AEEF1C();
      }

      v12 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 176);
        v14 = *(a1 + 184);
        v15 = *(a2 + 76) - *(a1 + 160);
        *buf = 134546177;
        v30 = v13;
        v31 = 2053;
        v32 = v14;
        v33 = 2048;
        v34 = v15;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#proactive Did not achieve vehicular speed from <%{sensitive}+.8f,%{sensitive}+.8f> in %.3fs, turning off proactive harvesting", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47D0 != -1)
        {
          sub_101AEEEF4();
        }

        v18 = *(a1 + 176);
        v19 = *(a1 + 184);
        v20 = *(a2 + 76) - *(a1 + 160);
        v23 = 134546177;
        v24 = v18;
        v25 = 2053;
        v26 = v19;
        v27 = 2048;
        v28 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 0, "#proactive Did not achieve vehicular speed from <%{sensitive}+.8f,%{sensitive}+.8f> in %.3fs, turning off proactive harvesting", &v23, 32);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLPolicyProactive::updatePolicyProactiveFromGps(const CLDaemonLocation &)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      sub_10003F6B0(a1, 0);
      v16 = *(a1 + 328);
      v17 = (*(**(a1 + 48) + 64))(*(a1 + 48));
      return (*(*v16 + 24))(v16, v17 + 3600.0);
    }
  }

  return result;
}

double sub_1002A21B8(uint64_t a1, double result)
{
  if (*(a1 + 8) > 0.0)
  {
    result = *(a1 + 56) + result;
    *(a1 + 56) = result;
  }

  return result;
}

void sub_1002A21D4(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B1B570();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLPipelineLocationProvider::onGpsControllerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B1B584();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPipelineLocationProvider::onGpsControllerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002A23A0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002A23A0(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  if ([*(a1 + 152) indoord])
  {
    if (*a3 > 5 || ((1 << *a3) & 0x39) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B1AC14();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v9 = *a3;
        v10[0] = 67240192;
        v10[1] = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected notification %{public}d from gps", v10, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B1D41C(a3);
      }
    }

    else
    {

      sub_1010A350C(a1, a4, (a4 + 40));
    }
  }
}

uint64_t sub_1002A24FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (*a3 >= 0.0)
  {
    v4 = *(a3 + 8);
    if (v4 >= 0.0)
    {
      v5 = *(a3 + 16);
      if (v5 >= 0.0)
      {
        v25 = 0u;
        *&v24[16] = 0u;
        *v24 = 0u;
        *&v23[32] = 0u;
        *&v23[16] = 0u;
        *v23 = 0u;
        v14[0] = *(a2 + 76);
        *&v14[1] = v4;
        v6 = *(a2 + 28);
        *&v14[2] = v5;
        v14[3] = v6;
        v15 = *(a2 + 44);
        v16 = v15;
        v7 = *(a2 + 52);
        v17 = v3;
        v18 = v7;
        v8 = *(a3 + 344);
        v19 = *(a3 + 24);
        v20 = v8;
        v9 = *(a3 + 352);
        v21 = 0;
        v22 = v9;
        *v23 = *(a2 + 96);
        v10 = *(a3 + 496);
        v11 = *(a3 + 360);
        *&v23[8] = *(a3 + 376);
        *&v23[24] = v10;
        v12 = *(a2 + 68);
        *&v23[40] = *(a2 + 60) * 0.0174532924;
        *v24 = v12;
        *&v24[8] = v11;
        v13 = *(a3 + 276);
        *&v24[28] = *(result + 948);
        DWORD2(v25) = v13;
        v26 = *(a3 + 280);
        sub_1002A2FA4(result, v14);
      }
    }
  }

  return result;
}

uint64_t sub_1002A2864(uint64_t a1, _OWORD *a2)
{
  v2 = a2[9];
  v9[8] = a2[8];
  v9[9] = v2;
  v3 = a2[11];
  v9[10] = a2[10];
  v9[11] = v3;
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v5 = a2[7];
  v9[6] = a2[6];
  v9[7] = v5;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = a2[3];
  v9[2] = a2[2];
  v9[3] = v7;
  return sub_1000CE87C(a1, 1, v9);
}

uint64_t sub_1002A28BC(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[16] assertInside];
  v8 = *(*a4 + 12);

  return v8(a4, a1, a2, a3);
}

void sub_1002A2938(uint64_t a1, __int128 *a2)
{
  ++*(a1 + 648);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 432) = a2[2];
  *(a1 + 448) = v6;
  *(a1 + 400) = v4;
  *(a1 + 416) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 496) = a2[6];
  *(a1 + 512) = v9;
  *(a1 + 464) = v7;
  *(a1 + 480) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 560) = a2[10];
  *(a1 + 576) = v12;
  *(a1 + 528) = v10;
  *(a1 + 544) = v11;
  *(a1 + 592) = *(a2 + 41);
  sub_1002A2CD4(a1, a2);
  if (*(a1 + 648) >= 21)
  {
    v13 = *(a2 + 15);
    if (v13 > 0.0 && v13 <= 20.0)
    {
      v14 = *(a1 + 592);
      if (v14 > 4 || ((1 << v14) & 0x19) == 0)
      {
        v15 = *(a2 + 14);
        if (v15 < *(a1 + 608))
        {
          *(a1 + 608) = v15;
        }

        if (v15 > *(a1 + 616))
        {
          *(a1 + 616) = v15;
        }
      }
    }
  }
}

void sub_1002A2A10(uint64_t a1, uint64_t a2, int *a3, __int128 *a4)
{
  if (*a3 == 4 || *a3 == 2)
  {
    sub_1002A2FF8(a1 + 5240, a4);

    sub_1002A2B60(a1 + 6648, a4);
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v9 = *a3;
      v10[0] = 67109120;
      v10[1] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "MotionStateMediator received unhandled odometer notification, %d", v10, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019037D8(a3);
    }
  }
}

uint64_t *sub_1002A2B60(uint64_t a1, __int128 *a2)
{
  sub_1002A2BAC((a1 + 32), a2);
  result = *(a1 + 472);
  if (result)
  {

    return sub_1007467C4(result);
  }

  return result;
}

void sub_1002A2BAC(void *a1, __int128 *a2)
{
  v3 = (*(**a1 + 120))(*a1);

  sub_1002A2FF8(v3, a2);
}

uint64_t sub_1002A2C08(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x40000000FLL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024C4B80;
  if (a2 > 0xF)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 5)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1002A2CD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  if (v4 >= 0x19)
  {
    v5 = *(a1 + 128);
    v6 = *(*(*(a1 + 104) + 8 * (v5 / 0x15)) + 192 * (v5 % 0x15) + 120);
    if (v6 > 0.0 && v6 <= 20.0)
    {
      --*(a1 + 600);
    }

    *(a1 + 128) = v5 + 1;
    *(a1 + 136) = v4 - 1;
    sub_10023F9C4(a1 + 96, 1);
  }

  sub_1002BFE4C((a1 + 96), a2);
  v8 = *(a2 + 120);
  if (v8 > 0.0 && v8 <= 20.0)
  {
    ++*(a1 + 600);
  }
}

void *sub_1002A2DA4(void *result)
{
  if (qword_102637C10 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    result = v1[10];
    if (result)
    {
      v11 = *(*result + 8);

      return v11();
    }
  }

  return result;
}

void sub_1002A2FA4(uint64_t a1, uint64_t a2)
{
  v5[0] = sub_1002A2FE8(a2);
  v5[1] = v3;
  v5[2] = v4;
  sub_1002CE158((a1 + 952), v5);
}

void sub_1002A2FF8(uint64_t a1, __int128 *a2)
{
  v3 = a2[9];
  v33 = a2[8];
  v34 = v3;
  v4 = a2[11];
  v35 = a2[10];
  v36 = v4;
  v5 = a2[5];
  v29 = a2[4];
  v30 = v5;
  v6 = a2[7];
  v31 = a2[6];
  v32 = v6;
  v7 = a2[1];
  v25 = *a2;
  v26 = v7;
  v8 = a2[3];
  v27 = a2[2];
  v28 = v8;
  v9 = *(a1 + 312);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v25);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = v10 + *(a1 + 48) - 1;
    v12 = *(a1 + 24);
    v13 = *(v12[v11 / 0x15] + 24 * (v11 % 0x15));
    if (v13 > *&v25)
    {
      v14 = *(a1 + 32);
      *(a1 + 56) = 0;
      v15 = (v14 - v12) >> 3;
      if (v15 >= 3)
      {
        do
        {
          operator delete(*v12);
          v16 = *(a1 + 32);
          v12 = (*(a1 + 24) + 8);
          *(a1 + 24) = v12;
          v15 = (v16 - v12) >> 3;
        }

        while (v15 > 2);
      }

      if (v15 == 1)
      {
        v17 = 10;
      }

      else
      {
        if (v15 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v18 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v38 = v25;
            v39 = 2048;
            v40 = v13;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019038CC();
          }

          goto LABEL_18;
        }

        v17 = 21;
      }

      *(a1 + 48) = v17;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1002BFE4C((a1 + 16), &v25);
  v19 = v34;
  *(a1 + 224) = v33;
  *(a1 + 240) = v19;
  v20 = v36;
  *(a1 + 256) = v35;
  *(a1 + 272) = v20;
  v21 = v30;
  *(a1 + 160) = v29;
  *(a1 + 176) = v21;
  v22 = v32;
  *(a1 + 192) = v31;
  *(a1 + 208) = v22;
  v23 = v26;
  *(a1 + 96) = v25;
  *(a1 + 112) = v23;
  v24 = v28;
  *(a1 + 128) = v27;
  *(a1 + 144) = v24;
}

uint64_t sub_1002A324C(void *a1)
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

uint64_t sub_1002A3274(uint64_t a1, uint64_t a2, char *a3)
{
  sub_1002A3330(a2, v8);
  if (*(a1 + 1138) == 1)
  {
    sub_10029FF60(a1, v8);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  sub_1002A3400(a1, v8, (a1 + 760), a3);
  if (v9 == 1)
  {
    *(a2 + 160) = v10;
    *(a2 + 176) = v11;
  }

  return sub_100134860(&v12);
}

double sub_1002A3330@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 184);
  *a2 = (v2 * 1000000000.0);
  *(a2 + 8) = *(a1 + 76);
  *(a2 + 16) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = *(a1 + 4);
  v3 = *(a1 + 476);
  *(a2 + 72) = *(a1 + 28) + v3;
  *(a2 + 80) = v3;
  *(a2 + 88) = *(a1 + 472);
  v4 = *(a1 + 36);
  *(a2 + 96) = *(a1 + 20);
  *(a2 + 104) = v4;
  *(a2 + 112) = vcvtq_f64_f32(*(a1 + 200));
  *(a2 + 128) = *(a1 + 208);
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  *(a2 + 152) = *(a1 + 44);
  *(a2 + 168) = 1;
  *(a2 + 176) = *(a1 + 60);
  *(a2 + 192) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 200) = _Q0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0;
  *(a2 + 280) = 1065353216;
  *&result = 0x100000005;
  *(a2 + 288) = 0x100000005;
  *(a2 + 296) = 0;
  return result;
}

void sub_1002A3400(uint64_t a1, __int128 *a2, unsigned int *a3, char *a4)
{
  v51 = a1 + 336;
  (*(*(a1 + 336) + 16))();
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = (a1 + 32);
    v10 = (a1 + 352);
    if (*(a1 + 665) == 1)
    {
      v11 = *(a1 + 664) ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v17 = sub_1002A3998(v8, a2, a1 + 32, a3, (a1 + 920), *(a1 + 656), (a1 + 352), (a1 + 752), (a1 + 756), v11 & 1, (a1 + 672), *a4);
    if (!v17)
    {
      v10 = a2;
    }

    v18 = *v10;
    v19 = v10[1];
    v20 = v10[3];
    *(a1 + 64) = v10[2];
    *(a1 + 80) = v20;
    *v9 = v18;
    *(a1 + 48) = v19;
    v21 = v10[4];
    v22 = v10[5];
    v23 = v10[7];
    *(a1 + 128) = v10[6];
    *(a1 + 144) = v23;
    *(a1 + 96) = v21;
    *(a1 + 112) = v22;
    v24 = v10[8];
    v25 = v10[9];
    v26 = v10[11];
    *(a1 + 192) = v10[10];
    *(a1 + 208) = v26;
    *(a1 + 160) = v24;
    *(a1 + 176) = v25;
    v27 = v10[12];
    v28 = v10[13];
    v29 = v10[14];
    *(a1 + 272) = *(v10 + 30);
    *(a1 + 240) = v28;
    *(a1 + 256) = v29;
    *(a1 + 224) = v27;
    if (v9 != v10)
    {
      *(a1 + 312) = *(v10 + 70);
      sub_100294BE4((a1 + 280), *(v10 + 33), 0);
    }

    *(a1 + 320) = v10[18];
    if (*(a1 + 658) != 1)
    {
      goto LABEL_27;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10197D50C();
    }

    v30 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v33 = *(a1 + 48);
      v49 = *(a1 + 64);
      v50 = *(a1 + 56);
      v48 = *(a1 + 80);
      v34 = LocationLogEncryptionDataSize();
      v35 = LocationLogEncryptionEncryptData();
      v36 = LocationLogEncryptionDataSize();
      v37 = LocationLogEncryptionEncryptData();
      v73 = v35;
      v39 = *(a1 + 104);
      v38 = *(a1 + 112);
      v75 = v36;
      v77 = v37;
      v40 = *(a1 + 128);
      v41 = *(a1 + 136);
      v79 = v39;
      v83 = v40;
      v43 = *(a1 + 144);
      v42 = *(a1 + 152);
      v85 = v41;
      v44 = *(a1 + 160);
      v87 = v43;
      LODWORD(v43) = *(a1 + 176);
      v91 = v44;
      v45 = *(a1 + 192);
      v95 = v43;
      v99 = v45;
      v46 = *(a1 + 216);
      v103 = *(a1 + 208);
      v105 = v46;
      v107 = *(a1 + 320);
      v47 = *(a2 + 29);
      v111 = *(a2 + 28);
      v113 = v47;
      v115 = *(a2 + 30);
      *&v55[6] = "";
      *&v55[4] = 2082;
      v56 = 2082;
      v57 = "PerEpochData";
      v59 = v31;
      v61 = v32;
      v63 = v33;
      v65 = v50;
      v67 = v49;
      v69 = v48;
      v71 = v34;
      v70 = 1040;
      v74 = 1040;
      v72 = 2098;
      v76 = 2098;
      v78 = 2049;
      v81 = v38;
      v89 = v42;
      v93 = *(a1 + 172);
      v97 = *(a1 + 184);
      v101 = *(a1 + 200);
      v109 = v17;
      v58 = 2050;
      v60 = 2050;
      v62 = 2050;
      v64 = 2050;
      v66 = 2050;
      v80 = 2050;
      v82 = 2050;
      v84 = 2050;
      v86 = 2050;
      v88 = 2050;
      v90 = 2050;
      v96 = 2050;
      v98 = 2050;
      v102 = 2050;
      v104 = 2050;
      v110 = 2050;
      v112 = 2050;
      v114 = 2050;
      v68 = 1026;
      v92 = 1026;
      v94 = 1026;
      v100 = 1026;
      v106 = 1026;
      v108 = 1026;
      v116 = 1026;
      v117 = *(a2 + 216);
      *buf = 68296963;
      *v55 = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GPSODOM, event:%{public, location:escape_only}s, gpsNs:%{public}lld, cfTime:%{public}f, cfTimeGps:%{public}f, machTime:%{public}f, machContinuousTime:%{public}f, posValid:%{public}hhd, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, altitude:%{private}f, undulation:%{public}f, hunc:%{public}f, vunc:%{public}f, semiMaj:%{public}f, semiMin:%{public}f, semiMajAz:%{public}f, reliability:%{public}d, speedValid:%{public}hhd, speed:%{public}f, speedUnc:%{public}f, courseValid:%{public}hhd, course:%{public}f, courseUnc:%{public}f, gnssContent:%{public}d, ravenPosUsed:%{public}hhd, odometry:%{public}f, deltaDist:%{public}f, deltaDistUnc:%{public}f, odometryValid:%{public}hhd}", buf, 0x124u);
      *(a1 + 656) = 0;
    }

    else
    {
LABEL_27:
      *(a1 + 656) = 0;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10197D50C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v13 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315138;
      *v55 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "GPSODOM%s,no odometer interface object", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10197CEB8();
      }

      v14 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v14 = *v14;
      }

      v52 = 136315138;
      v53 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "GPSODOM%s,no odometer interface object", &v52);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 0, "void CLGnssOdometer::updateOdometer(GNSS::PerEpochData &, const CLMotionActivity &, const BOOL &)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  (*(*v51 + 24))(v51);
}

void sub_1002A3960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1002A3998(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int *a4, unint64_t *a5, int a6, __int128 *a7, int *a8, int *a9, char a10, __int128 *a11, char a12)
{
  v19 = a1 + 48;
  if (*a4 != *(a1 + 48) || *a8 != *(a1 + 312) || *a9 != *(a1 + 316) || *a5 != *(a1 + 184))
  {
    sub_1002C9350(a1, a4, a8, a9, a5);
    *v19 = *a4;
    v20 = *(a4 + 1);
    v21 = *(a4 + 2);
    v22 = *(a4 + 4);
    *(v19 + 48) = *(a4 + 3);
    *(v19 + 64) = v22;
    *(v19 + 16) = v20;
    *(v19 + 32) = v21;
    v23 = *(a4 + 5);
    v24 = *(a4 + 6);
    v25 = *(a4 + 7);
    *(v19 + 128) = *(a4 + 16);
    *(v19 + 96) = v24;
    *(v19 + 112) = v25;
    *(v19 + 80) = v23;
    *(a1 + 312) = *a8;
    *(a1 + 316) = *a9;
    *(a1 + 184) = *a5;
  }

  __asm { FMOV            V2.2D, #-1.0 }

  a2[14] = _Q2;
  *(a2 + 30) = 0xBFF0000000000000;
  *(a2 + 216) = 0;
  if (!a6)
  {
    v38 = *(a2 + 12);
    if (v38 >= 0 && ((v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v38 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v41 = *(a2 + 13);
      if (v41 > 0.0)
      {
        v29 = 0;
        if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a2 + 12) > 100.0)
        {
          return v29;
        }

        v113 = _Q2;
        if (!sub_10002807C(*(a2 + 7), *(a2 + 8)))
        {
          goto LABEL_27;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101B3FE80();
        }

        v42 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          v43 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v43 = *v43;
          }

          buf = 136315138;
          v123 = v43;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "GPSODOM%s,Null Island not allowed, epochData", &buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B402AC();
        }
      }
    }

    return 0;
  }

  v113 = _Q2;
  v29 = *(a1 + 16) != 0;
  v30 = *(a7 + 12);
  v32 = (v30 < 0 || ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v30 - 1) > 0xFFFFFFFFFFFFELL;
  if (v32 || (v33 = *(a7 + 13), v33 <= 0.0) || (*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a7 + 12) > 100.0)
  {
    v29 = 0;
  }

  if (sub_10002807C(*(a7 + 7), *(a7 + 8)))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v35 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v35 = *v35;
      }

      buf = 136315138;
      v123 = v35;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "GPSODOM%s,Null Island not allowed, ravenPos", &buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B403AC();
    }

LABEL_27:
    v29 = 0;
  }

  v118 = -1.0;
  v36 = a2 + 1;
  if (sub_1002A47A0(a1, &v118, *(a2 + 2)))
  {
    if (*(a1 + 184) == 19 || CLMotionActivity::isTypeSwimming())
    {
      v112 = 1;
      v37 = 600.0;
    }

    else
    {
      v112 = 0;
      v37 = 180.0;
    }

    if (a10)
    {
      v44 = v118;
      if (*(a1 + 24) && v118 > 600.0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B3FE94();
        }

        v45 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v46 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v46 = *v46;
          }

          buf = 136315394;
          v123 = v46;
          v124 = 2050;
          v125 = v44;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "#Warning GPSODOM%s,rhythmic mode exceeded max interval,%{public}lf", &buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B405B4();
        }

        sub_101130168(*(a1 + 24));
      }

LABEL_76:
      if (*(a3 + 48) == 1)
      {
        sub_1002A467C(a3, v117);
      }

      v116 = 0.0;
      if (a6 && *(a1 + 16))
      {
        sub_1002A467C(a7, &buf);
        v36 = a7 + 1;
      }

      else
      {
        sub_1002A467C(a2, &buf);
      }

      v116 = vabdd_f64(*v36, *(a3 + 16));
      v55 = (a1 + 320);
      v56 = a2[3];
      v58 = *a2;
      v57 = a2[1];
      *(a1 + 352) = a2[2];
      *(a1 + 368) = v56;
      *(a1 + 320) = v58;
      *(a1 + 336) = v57;
      v59 = a2[7];
      v61 = a2[4];
      v60 = a2[5];
      *(a1 + 416) = a2[6];
      *(a1 + 432) = v59;
      *(a1 + 384) = v61;
      *(a1 + 400) = v60;
      v62 = a2[11];
      v64 = a2[8];
      v63 = a2[9];
      *(a1 + 480) = a2[10];
      *(a1 + 496) = v62;
      *(a1 + 448) = v64;
      *(a1 + 464) = v63;
      v66 = a2[13];
      v65 = a2[14];
      v67 = a2[12];
      *(a1 + 560) = *(a2 + 30);
      *(a1 + 528) = v66;
      *(a1 + 544) = v65;
      *(a1 + 512) = v67;
      if ((a1 + 320) != a2)
      {
        *(a1 + 600) = *(a2 + 70);
        sub_100294BE4((a1 + 568), *(a2 + 33), 0);
      }

      *(a1 + 608) = a2[18];
      v68 = *(a1 + 32);
      if (v68 && (a10 & 1) == 0)
      {
        if (sub_10100405C(v68, &buf))
        {
          *(a2 + 28) = sub_101003F74(*(a1 + 32));
          v69 = sub_101003F84(*(a1 + 32));
          *(a2 + 29) = v69;
          if (v69 < 0.0 || *(a3 + 48) != 1)
          {
LABEL_92:
            if (v69 >= 0.0 && !sub_1002A4AEC(a1, v44, v69))
            {
              if (qword_1025D4650 != -1)
              {
                sub_101B3FE94();
              }

              v70 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                v71 = (a1 + 624);
                if (*(a1 + 647) < 0)
                {
                  v71 = *v71;
                }

                LODWORD(v119) = 136315138;
                *(&v119 + 4) = v71;
                _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "#Warning GPSODOM%s,maximium speed exceeded resetting smoother", &v119, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101B406BC();
              }

              sub_101003DC0(*(a1 + 32));
LABEL_121:
              v29 = 0;
LABEL_122:
              a2[14] = v113;
              *(a2 + 30) = 0xBFF0000000000000;
              return v29;
            }

            goto LABEL_185;
          }

          v115 = 0;
          sub_10000EC00(&v119, "");
          *(a2 + 30) = sub_100F32780(v117, &buf, &v116, &v115 + 1, &v115);
          if (SBYTE7(v120) < 0)
          {
            operator delete(v119);
          }
        }

        v69 = *(a2 + 29);
        goto LABEL_92;
      }

      v72 = *(a1 + 8);
      if (v72 && (a10 & 1) == 0)
      {
        sub_101164CD4(v72);
        *(a2 + 28) = sub_1002A4ADC(*(a1 + 8));
        v73 = sub_100062F5C(*(a1 + 8));
        *(a2 + 29) = v73;
        if (v73 >= 0.0 && *(a3 + 48) == 1)
        {
          v115 = 0;
          sub_10000EC00(&v119, "");
          *(a2 + 30) = sub_100F32780(v117, &buf, &v116, &v115 + 1, &v115);
          if (SBYTE7(v120) < 0)
          {
            operator delete(v119);
          }

          v73 = *(a2 + 29);
        }

        if (v73 >= 0.0 && !sub_1002A4AEC(a1, v44, v73))
        {
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v74 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v75 = (a1 + 624);
            if (*(a1 + 647) < 0)
            {
              v75 = *v75;
            }

            LODWORD(v119) = 136315138;
            *(&v119 + 4) = v75;
            _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,maximium speed exceeded resetting subsampler", &v119, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B407BC();
          }

          sub_101165740(*(a1 + 8));
          goto LABEL_121;
        }

LABEL_185:
        *(a2 + 216) = *(a2 + 30) > 0.0;
        return v29;
      }

      v76 = *(a1 + 16);
      if (v76 && (a10 & 1) == 0)
      {
        if (a6)
        {
          sub_100FBFC54(v76, 1, v112, v50, v51, v52, v53, v54, *(a7 + 7), *(a7 + 8), *(a7 + 9), *(a7 + 12), *(a7 + 13), *(a7 + 19), *(a7 + 20), *(a7 + 22), *(a7 + 23), *(a7 + 2));
          v77 = *a7;
          v78 = a7[1];
          v79 = a7[3];
          *(a1 + 352) = a7[2];
          *(a1 + 368) = v79;
          *v55 = v77;
          *(a1 + 336) = v78;
          v80 = a7[4];
          v81 = a7[5];
          v82 = a7[7];
          *(a1 + 416) = a7[6];
          *(a1 + 432) = v82;
          *(a1 + 384) = v80;
          *(a1 + 400) = v81;
          v83 = a7[8];
          v84 = a7[9];
          v85 = a7[11];
          *(a1 + 480) = a7[10];
          *(a1 + 496) = v85;
          *(a1 + 448) = v83;
          *(a1 + 464) = v84;
          v86 = a7[12];
          v87 = a7[13];
          v88 = a7[14];
          *(a1 + 560) = *(a7 + 30);
          *(a1 + 528) = v87;
          *(a1 + 544) = v88;
          *(a1 + 512) = v86;
          if (v55 != a7)
          {
            *(a1 + 600) = *(a7 + 70);
            sub_100294BE4((a1 + 568), *(a7 + 33), 0);
          }

          v89 = 0;
          *(a1 + 608) = a7[18];
        }

        else
        {
          v89 = a12;
          if (a12)
          {
            v97 = 2;
          }

          else
          {
            v97 = 1;
          }

          sub_100FBFC54(v76, v97, v112, v50, v51, v52, v53, v54, *(a2 + 7), *(a2 + 8), *(a2 + 9), *(a2 + 12), *(a2 + 13), *(a2 + 19), *(a2 + 20), *(a2 + 22), *(a2 + 23), *(a2 + 2));
        }

        *(a2 + 28) = sub_1002A4ADC(*(a1 + 16));
        v98 = sub_100062F5C(*(a1 + 16));
        *(a2 + 29) = v98;
        if (v98 >= 0.0 && *(a3 + 48) == 1)
        {
          if (CLMotionActivity::isWalking(v19))
          {
            v99 = 1;
          }

          else
          {
            v107 = *(a1 + 184);
            v99 = v107 == 15 || v107 == 24;
          }

          LOBYTE(v119) = v99;
          HIBYTE(v115) = v89;
          *(a2 + 30) = sub_100F32780(v117, &buf, &v116, &v115 + 1, &v119);
          v98 = *(a2 + 29);
        }

        if (v98 >= 0.0 && !sub_1002A4AEC(a1, v44, v98))
        {
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v110 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v111 = (a1 + 624);
            if (*(a1 + 647) < 0)
            {
              v111 = *v111;
            }

            LODWORD(v119) = 136315138;
            *(&v119 + 4) = v111;
            _os_log_impl(dword_100000000, v110, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,maximium speed exceeded resetting modified subsampler", &v119, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B408BC();
          }

          sub_100FC0CCC(*(a1 + 16));
          goto LABEL_122;
        }

        goto LABEL_185;
      }

      v91 = *(a1 + 24);
      if (!v91 || !a10)
      {
        goto LABEL_185;
      }

      v92 = a11[1];
      v119 = *a11;
      v120 = v92;
      v121 = *(a11 + 4);
      sub_10172C320(v91, a2, &v119);
      v93 = *(a1 + 24);
      *(a2 + 28) = v93[2];
      v94 = v93[4];
      if (v94 && (v95 = *v94, *v94 >= 0.0))
      {
        *(a2 + 29) = v95;
      }

      else
      {
        v96 = v93[3];
        if (v96)
        {
          v95 = *v96;
        }

        else
        {
          v95 = 0.0;
        }

        *(a2 + 29) = v95;
        if (v94)
        {
          if (*v94 >= 0.0)
          {
            goto LABEL_154;
          }

          v96 = v93[3];
        }

        if (!v96)
        {
          v101 = -1.0;
LABEL_155:
          *(a2 + 30) = v101;
          _ZF = *&v95 > -1 && ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v95 - 1) < 0xFFFFFFFFFFFFFLL || (*&v95 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          if (_ZF && !sub_1002A4AEC(a1, v44, v95))
          {
            if (qword_1025D4650 != -1)
            {
              sub_101B3FE94();
            }

            v105 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v106 = (a1 + 624);
              if (*(a1 + 647) < 0)
              {
                v106 = *v106;
              }

              LODWORD(v119) = 136315138;
              *(&v119 + 4) = v106;
              _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,maximum speed exceeded resetting Rhythmic odometer", &v119, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B409BC();
            }

            sub_101130168(*(a1 + 24));
            goto LABEL_122;
          }

          goto LABEL_185;
        }

        v94 = v96;
      }

LABEL_154:
      v101 = v94[1];
      goto LABEL_155;
    }

    v44 = v118;
    if (v118 <= v37)
    {
      goto LABEL_76;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101B3FE94();
    }

    v47 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v48 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v48 = *v48;
      }

      buf = 136315394;
      v123 = v48;
      v124 = 2050;
      v125 = v44;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "#Warning GPSODOM%s,exceeded max interval,%{public}.3lf", &buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B404AC();
    }

    v49 = *(a1 + 8);
    if (v49)
    {
      sub_101165740(v49);
    }

    else
    {
      v90 = *(a1 + 32);
      if (v90)
      {
        sub_101003DC0(v90);
      }

      else
      {
        v100 = *(a1 + 16);
        if (v100)
        {
          sub_100FC0CCC(v100);
        }
      }
    }
  }

  return v29;
}

void sub_1002A4654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(*(v56 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_1002A467C(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 16) / 1000000000.0;
  *(a2 + 8) = *(a1 + 56);
  *(a2 + 24) = *(a1 + 96);
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  *(a2 + 32) = _Q0;
  v9 = *(a1 + 176);
  *(a2 + 48) = *(a1 + 152);
  *(a2 + 56) = v9;
  v10 = *(a1 + 104);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 92) = sub_1002A4778(a1);
  v11 = sub_1002A48E8(a1);
  v12 = *(a1 + 80);
  *(a2 + 96) = v11 * 1000.0;
  *(a2 + 104) = v12;
  v13 = *(a1 + 184);
  *(a2 + 112) = *(a1 + 160);
  *(a2 + 120) = v13;
  *(a2 + 128) = *(a1 + 112);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 152) = v15;
  *(a2 + 192) = -1;
  *(a2 + 176) = -1;
  *(a2 + 184) = -1;
  *(a2 + 168) = 0xBFF0000000000000;
  *(a2 + 200) = 0xBFF0000000000000;
  *(a2 + 208) = -1;
  *(a2 + 216) = 0xBFF0000000000000;
  *(a2 + 224) = -1;
  result = 0.0;
  *(a2 + 232) = xmmword_101CE6010;
  return result;
}

uint64_t sub_1002A47A0(uint64_t a1, double *a2, double a3)
{
  *a2 = -1.0;
  v5 = *(a1 + 40);
  if (v5 <= 0.0 || (v7 = a3 - v5, *a2 = v7, v7 >= 0.001))
  {
    result = 1;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v9 = *v9;
      }

      v10 = *a2;
      v12 = 136315394;
      v13 = v9;
      v14 = 2050;
      v15 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,invalid time between positions %{public}lf", &v12, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B401B0();
      result = 0;
    }
  }

  *(a1 + 40) = a3;
  return result;
}

void sub_1002A4908(_DWORD *result, uint64_t a2)
{
  v2 = a2;
  if ((a2 - 16) > 0xFFFFFFF0)
  {
    if (*result != a2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF24D8();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v7 = result + 42;
        if (*(result + 191) < 0)
        {
          v7 = *v7;
        }

        v8 = 136315394;
        v9 = v7;
        v10 = 1026;
        v11 = v2;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "GPSODOM%s, changing modified subsampler window size to,%{public}d", &v8, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF24EC(result);
      }

      *result = v2;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF24D8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5 = result + 42;
      if (*(result + 191) < 0)
      {
        v5 = *v5;
      }

      v8 = 136315650;
      v9 = v5;
      v10 = 1026;
      v11 = v2;
      v12 = 1026;
      v13 = 15;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "GPSODOM%s, invalid windowSize,%{public}d, outside allowed range, 1 to,%{public}d", &v8, 0x18u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AF25FC(result);
    }

    sub_100FC0CF4(result);
  }
}

BOOL sub_1002A4AEC(uint64_t a1, double a2, double a3)
{
  v4 = a3 / a2;
  v5 = a3 / a2 >= 0.0 && a3 / a2 <= 600.0;
  if (!v5)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315906;
      v23 = v9;
      v24 = 2050;
      v25 = v4;
      v26 = 2050;
      v27 = a2;
      v28 = 2050;
      v29 = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "GPSODOM%s,impossible speed,%{public}f,timeInterval,%{public}f,deltaDist,%{public}f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v11 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v11 = *v11;
      }

      v14 = 136315906;
      v15 = v11;
      v16 = 2050;
      v17 = v4;
      v18 = 2050;
      v19 = a2;
      v20 = 2050;
      v21 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "GPSODOM%s,impossible speed,%{public}f,timeInterval,%{public}f,deltaDist,%{public}f", &v14, 42);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGpsOdometryInterface::isSpeedPossible(double, double) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  return v5;
}

uint64_t sub_1002A4D0C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a1 + 220) != 1)
  {
    return 0;
  }

  if (*(a2 + 912) <= 0.0)
  {
    return 0;
  }

  LODWORD(v4) = *sub_101227018();
  v9 = sub_101227018();
  LODWORD(v5) = v9[1];
  v10 = *(a3 + 172);
  v12 = sub_10000B1F8(v9, v11);
  *buf = 1;
  v13 = sub_10001A6B0(v12, buf) - *(a2 + 912);
  if (v13 <= 0.0)
  {
    return 0;
  }

  v14 = v4;
  v15 = v5;
  v16 = vabdd_f64(a4, v10);
  v17 = *(a3 + 116);
  v18 = *(a2 + 116);
  v19 = v13 < v14 && v16 < v15;
  if (!v19 || v17 >= v18)
  {
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_10022FB88();
  }

  v22 = qword_1025D4608;
  v23 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    v25 = sub_10000B1F8(v23, v24);
    v26 = sub_100125220(v25);
    *buf = 134350592;
    v48 = v13;
    v49 = 2050;
    v50 = v14;
    v51 = 2050;
    v52 = v16;
    v53 = 2050;
    v54 = v15;
    v55 = 2050;
    v56 = v18;
    v57 = 2050;
    v58 = v17;
    v59 = 2050;
    v60 = v26;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "Ignored: GPS warmup,runtime,%{public}.1fs,thresh,%{public}.1fs,age,%{public}.1f,thresh,%{public}.1fs,gacc,%{public}.1fm,wacc,%{public}fm,propagation_us,%{public}.3f", buf, 0x48u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v29 = qword_1025D4608;
    v30 = sub_10000B1F8(v27, v28);
    v33 = 134350592;
    v34 = v13;
    v35 = 2050;
    v36 = v14;
    v37 = 2050;
    v38 = v16;
    v39 = 2050;
    v40 = v15;
    v41 = 2050;
    v42 = v18;
    v43 = 2050;
    v44 = v17;
    v45 = 2050;
    v46 = sub_100125220(v30);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v29, 0, "Ignored: GPS warmup,runtime,%{public}.1fs,thresh,%{public}.1fs,age,%{public}.1f,thresh,%{public}.1fs,gacc,%{public}.1fm,wacc,%{public}fm,propagation_us,%{public}.3f", &v33, 72);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldUseWifiWhileGpsConverging(const CFAbsoluteTime, const ProvidersMap::iterator, const ProvidersMap::iterator) const", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  return 1;
}

void sub_1002A5074(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (*a3 == a3[1])
  {
    return;
  }

  if (*(a1 + 2344) <= 0.0 || ((v7 = *(a1 + 2352), v8 = vabdd_f64(*(a2 + 344), v7), v7 > 0.0) ? (v9 = v8 < 20.0) : (v9 = 1), !v9))
  {
    *(a1 + 2344) = 0xBFF0000000000000;
    *(a1 + 2352) = 0xBFF0000000000000;
    *(a1 + 2360) = 0;
    *(a1 + 2376) = 0;
    *(a1 + 2368) = 0;
    *(a1 + 2344) = *(a2 + 344);
  }

  *(a1 + 2296) = 0xBFF0000000000000;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0;
  sub_1002A55A0(a1 + 2296, a3, *(a2 + 344));
  v10 = *(a1 + 2304);
  if (v10 <= 19 && *(a1 + 2308) == v10)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a2 + 344);
      v13 = *(a1 + 2304);
      v14 = *(a1 + 2308);
      *buf = 134349568;
      v72 = v12;
      v73 = 1026;
      v74 = v13;
      v75 = 1026;
      v76 = v14;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#GNSSTracking,mct,%{public}.3f,NumVis,%{public}03d,NumTracked,%{public}02d,discarding wrong satellite visibility report.", buf, 0x18u);
    }

    if (!sub_10000A100(121, 2))
    {
      return;
    }

    sub_101A7B5F4(buf);
    v15 = *(a2 + 344);
    v16 = *(a1 + 2304);
    v17 = *(a1 + 2308);
    v49 = 134349568;
    v50 = v15;
    v51 = 1026;
    v52 = v16;
    v53 = 1026;
    v54 = v17;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#GNSSTracking,mct,%{public}.3f,NumVis,%{public}03d,NumTracked,%{public}02d,discarding wrong satellite visibility report.", &v49, 24);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::extractGNSSSatelliteTrackingQualityMetricsAndHuncFloor(const CLDaemonLocationPrivate &, const CLDaemonLocationPrivate::AboveHorizonSatelliteVisibilityReport &, double &)", "%s\n", v18);
    if (v19 == buf)
    {
      return;
    }

LABEL_36:
    free(v19);
    return;
  }

  v20 = sub_10025BD44(a1 + 2296);
  if (!sub_1001E0B5C(a2) || *(a1 + 2360) < 10.0)
  {
    v21 = *(a1 + 2304);
    if (v21 >= 1 && *(a1 + 2308) / v21 < 0.5)
    {
      *a4 = *(a1 + 2888);
    }
  }

  v22 = *(a1 + 2344);
  v23 = 0.0;
  if (v22 > 0.0)
  {
    v24 = *(a2 + 344);
    v25 = v24 <= v22;
    v26 = v24 - v22;
    if (v25)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v26;
    }
  }

  *(a1 + 2360) = v23;
  *(a1 + 2352) = *(a2 + 344);
  ++*(a1 + 2376);
  if (v20)
  {
    ++*(a1 + 2368);
    *(a1 + 2372) = 0;
    ++*(a1 + 2380);
  }

  else
  {
    ++*(a1 + 2372);
    *(a1 + 2368) = 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v27 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a2 + 344);
    v29 = *(a1 + 2304);
    v30 = *(a1 + 2308);
    v31 = *(a1 + 2312);
    v32 = *(a1 + 2316);
    v33 = *(a1 + 2320);
    v34 = *(a1 + 2324);
    v35 = *(a1 + 2328);
    v36 = *(a1 + 2332);
    v37 = *(a1 + 2336);
    *buf = 134351616;
    v72 = v28;
    v73 = 1026;
    v74 = v29;
    v75 = 1026;
    v76 = v30;
    v77 = 1026;
    v78 = v31;
    v79 = 1026;
    v80 = v32;
    v81 = 1026;
    v82 = v33;
    v83 = 1026;
    v84 = v34;
    v85 = 1026;
    v86 = v35;
    v87 = 1026;
    v88 = v36;
    v89 = 1026;
    v90 = v37;
    v91 = 1026;
    v92 = v20;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#GNSSTracking,mct,%{public}.3f,NumVis,%{public}03d,NumTracked,%{public}02d,NumTrackedL5,%{public}02d,NumTrackedL1CN0_ge_20,%{public}02d,NumTrackedSVElv_ge_60,%{public}02d,NumTrackedSV_azm,%{public}02d,%{public}02d,%{public}02d,%{public}02d,isLikelygoodQualityGNSSTracking,%{public}d", buf, 0x48u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v38 = *(a2 + 344);
    v39 = *(a1 + 2304);
    v40 = *(a1 + 2308);
    v41 = *(a1 + 2312);
    v42 = *(a1 + 2316);
    v43 = *(a1 + 2320);
    v44 = *(a1 + 2324);
    v45 = *(a1 + 2328);
    v46 = *(a1 + 2332);
    v47 = *(a1 + 2336);
    v49 = 134351616;
    v50 = v38;
    v51 = 1026;
    v52 = v39;
    v53 = 1026;
    v54 = v40;
    v55 = 1026;
    v56 = v41;
    v57 = 1026;
    v58 = v42;
    v59 = 1026;
    v60 = v43;
    v61 = 1026;
    v62 = v44;
    v63 = 1026;
    v64 = v45;
    v65 = 1026;
    v66 = v46;
    v67 = 1026;
    v68 = v47;
    v69 = 1026;
    v70 = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#GNSSTracking,mct,%{public}.3f,NumVis,%{public}03d,NumTracked,%{public}02d,NumTrackedL5,%{public}02d,NumTrackedL1CN0_ge_20,%{public}02d,NumTrackedSVElv_ge_60,%{public}02d,NumTrackedSV_azm,%{public}02d,%{public}02d,%{public}02d,%{public}02d,isLikelygoodQualityGNSSTracking,%{public}d", &v49, 72);
    v19 = v48;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::extractGNSSSatelliteTrackingQualityMetricsAndHuncFloor(const CLDaemonLocationPrivate &, const CLDaemonLocationPrivate::AboveHorizonSatelliteVisibilityReport &, double &)", "%s\n", v48);
    if (v19 != buf)
    {
      goto LABEL_36;
    }
  }
}

void sub_1002A5594(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1002A55A0(uint64_t result, uint64_t *a2, double a3)
{
  *result = a3;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = *(result + 8);
    do
    {
      if (*(v3 + 24) == 1)
      {
        ++*(result + 12);
        if (*(v3 + 20) > 0.0)
        {
          ++*(result + 16);
        }

        if (*(v3 + 16) >= 20.0)
        {
          ++*(result + 20);
        }

        if (*(v3 + 8) >= 60.0)
        {
          ++*(result + 24);
        }

        v6 = *(v3 + 12);
        if (v6 <= 90.0)
        {
          ++*(result + 28);
        }

        else if (v6 > 180.0)
        {
          if (v6 > 270.0)
          {
            ++*(result + 40);
          }

          else
          {
            ++*(result + 36);
          }
        }

        else
        {
          ++*(result + 32);
        }
      }

      v3 += 28;
      ++v5;
    }

    while (v3 != v4);
    *(result + 8) = v5;
  }

  return result;
}

double sub_1002A56B8(_DWORD *a1)
{
  v1 = *a1 - 1;
  result = 20.0;
  if (v1 <= 9)
  {
    return dbl_101CFC858[v1];
  }

  return result;
}

void sub_1002A56DC(uint64_t a1, uint64_t a2, double *a3, int a4, uint64_t a5)
{
  LODWORD(v5) = a4;
  *(a5 + 52) |= 2u;
  v8 = *(a5 + 40);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 488) |= 4u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  sub_100294964(a2, a5);
  *(v9 + 44) |= 1u;
  v10 = *(v9 + 8);
  if (!v10)
  {
    operator new();
  }

  if (sub_10027E930(a2, v10))
  {
    goto LABEL_13;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v11 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Error: Failed to convert barometer notification receipt time to protobuf", v17, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A23F58();
    if (!v5)
    {
      return;
    }
  }

  else
  {
LABEL_13:
    if (!v5)
    {
      return;
    }
  }

  v5 = v5;
  do
  {
    v12 = *a3;
    v13 = *a3 - *(a2 + 8);
    *v17 = v13 + *a2;
    v17[1] = v12;
    *&v17[2] = v13 + *(a2 + 16);
    v18 = *(a2 + 24);
    v14 = *(v9 + 28);
    v15 = *(v9 + 24);
    if (v15 >= v14)
    {
      if (v14 == *(v9 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 16), v14 + 1);
        v14 = *(v9 + 28);
      }

      *(v9 + 28) = v14 + 1;
      sub_100307C68();
    }

    v16 = *(v9 + 16);
    *(v9 + 24) = v15 + 1;
    sub_1002A5950(a3, *(v16 + 8 * v15), v17);
    a3 += 2;
    --v5;
  }

  while (v5);
}

void sub_1002A5950(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    *(a2 + 28) |= 1u;
    v5 = *(a2 + 8);
    if (!v5)
    {
      operator new();
    }

    sub_10027E930(a3, v5);
    *(a2 + 28) |= 6u;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v6 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "pSample,Invalid pointer", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B87A38();
    }
  }
}

uint64_t sub_1002A5A7C(uint64_t a1, double *a2)
{
  v2 = 0;
  if (*a2 > 0.0 && a2[2] > 0.0)
  {
    v5 = *(a1 + 224);
    v6 = (a1 + 232);
    if (v5 == (a1 + 232))
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *(v5 + 148);
        v9 = (v8 - 3) < 8 || v8 == 0;
        if (v9 && (sub_1002A5FFC((v5 + 29), a2) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v10 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v11 = *a2;
            v12 = *(v5 + 220);
            *buf = 134349312;
            v45 = v11;
            v46 = 1026;
            v47 = v12;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,provider hypothesis course-aiding failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v15 = *a2;
            v16 = *(v5 + 220);
            *v43 = 134349312;
            *&v43[4] = v15;
            *&v43[12] = 1026;
            *&v43[14] = v16;
            LODWORD(v38) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,provider hypothesis course-aiding failed,hID,%{public}d", v43, v38);
            v18 = v17;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithCourseAiding(const CourseMeasurement &)", "%s\n", v17);
            if (v18 != buf)
            {
              free(v18);
            }
          }

          v7 = 1;
        }

        v13 = v5[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v5[2];
            v9 = *v14 == v5;
            v5 = v14;
          }

          while (!v9);
        }

        v5 = v14;
      }

      while (v14 != v6);
    }

    for (i = *(a1 + 248); i; i = *i)
    {
      v20 = *(i + 140);
      v21 = (v20 - 3) < 8 || v20 == 0;
      if (v21 && (sub_1002A5FFC((i + 25), a2) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v22 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v23 = *a2;
          v24 = *(i + 212);
          *buf = 134349312;
          v45 = v23;
          v46 = 1026;
          v47 = v24;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,fused hypothesis course-aiding failed,hID,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v25 = *a2;
          v26 = *(i + 212);
          *v43 = 134349312;
          *&v43[4] = v25;
          *&v43[12] = 1026;
          *&v43[14] = v26;
          LODWORD(v38) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,fused hypothesis course-aiding failed,hID,%{public}d", v43, v38);
          v28 = v27;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithCourseAiding(const CourseMeasurement &)", "%s\n", v27);
          if (v28 != buf)
          {
            free(v28);
          }
        }

        v7 = 1;
      }
    }

    if (*(a1 + 1104))
    {
      v29 = *(a1 + 808);
      if ((v29 - 3) < 8 || v29 == 0)
      {
        v31 = *(a1 + 816);
        *v43 = *a2;
        *&v43[16] = a2[2];
        if (*a2 <= v31)
        {
          *v43 = v31 + 0.001;
        }

        if ((sub_1002A5FFC(a1 + 448, v43) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v32 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v33 = *(a1 + 1096);
            *buf = 134349312;
            v45 = *v43;
            v46 = 1026;
            v47 = v33;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,latest selected fused hypothesis course-aiding failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v35 = *(a1 + 1096);
            v39 = 134349312;
            v40 = *v43;
            v41 = 1026;
            v42 = v35;
            LODWORD(v38) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,latest selected fused hypothesis course-aiding failed,hID,%{public}d", &v39, v38);
            v37 = v36;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithCourseAiding(const CourseMeasurement &)", "%s\n", v36);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          v7 = 1;
        }
      }
    }

    v2 = v7 ^ 1;
  }

  return v2 & 1;
}

void sub_1002A5FE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002A5FFC(uint64_t a1, double *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 596);
      v18 = *a2;
      *buf = 67240448;
      v96 = v17;
      v97 = 2050;
      v98 = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized Course Meas ignored,mct,%{public}.3f", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v19 = *(a1 + 596);
    v20 = *a2;
    v85 = 67240448;
    v86 = v19;
    v87 = 2050;
    v88 = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,filter is not initialized Course Meas ignored,mct,%{public}.3f", &v85, 18);
    v15 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v21);
    goto LABEL_60;
  }

  if (*a2 <= 0.0 || (v4 = a2[2], v4 <= 0.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v22 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 596);
      v24 = *a2;
      *buf = 67240961;
      v25 = a2[1] * 57.2957795;
      v26 = sqrt(a2[2]);
      v96 = v23;
      v97 = 2050;
      v98 = v24;
      v99 = 2049;
      v100 = v25;
      v101 = 2050;
      v102 = v26 * 57.2957795;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,invalid Course Meas ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f", buf, 0x26u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v27 = *(a1 + 596);
    v28 = *a2;
    v85 = 67240961;
    v29 = a2[1] * 57.2957795;
    v30 = sqrt(a2[2]);
    v86 = v27;
    v87 = 2050;
    v88 = v28;
    v89 = 2049;
    v90 = v29;
    v91 = 2050;
    v92 = v30 * 57.2957795;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,invalid Course Meas ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f", &v85, 38);
    v15 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v31);
    goto LABEL_60;
  }

  if (*a2 - *(a1 + 368) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v32 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 596);
      v34 = *(a1 + 368);
      v35 = *a2;
      *buf = 67240704;
      v96 = v33;
      v97 = 2050;
      v98 = v34;
      v99 = 2050;
      v100 = v35;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,old Course Meas ignored,filterMCT,%{public}.3f,CourseMeasMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v67 = *(a1 + 596);
    v68 = *(a1 + 368);
    v69 = *a2;
    v85 = 67240704;
    v86 = v67;
    v87 = 2050;
    v88 = v68;
    v89 = 2050;
    v90 = v69;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,old Course Meas ignored,filterMCT,%{public}.3f,CourseMeasMCT,%{public}.3f", &v85, 28);
    v15 = v70;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v70);
    goto LABEL_60;
  }

  if (v4 > 0.616850275)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 596);
      v7 = *a2;
      *buf = 67241217;
      v8 = a2[1] * 57.2957795;
      v9 = sqrt(a2[2]);
      v96 = v6;
      v97 = 2050;
      v98 = v7;
      v99 = 2049;
      v100 = v8;
      v101 = 2050;
      v102 = v9 * 57.2957795;
      v103 = 2050;
      v104 = 45.0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,Course Meas with large uncertainty ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f,uncGating_deg,%{public}.2f", buf, 0x30u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v10 = *(a1 + 596);
    v11 = *a2;
    v85 = 67241217;
    v12 = a2[1] * 57.2957795;
    v13 = sqrt(a2[2]);
    v86 = v10;
    v87 = 2050;
    v88 = v11;
    v89 = 2049;
    v90 = v12;
    v91 = 2050;
    v92 = v13 * 57.2957795;
    v93 = 2050;
    v94 = 45.0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,Course Meas with large uncertainty ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f,uncGating_deg,%{public}.2f", &v85, 48);
    v15 = v14;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v14);
LABEL_60:
    if (v15 != buf)
    {
      free(v15);
    }

    return 0;
  }

  if ((*(a1 + 592) & 1) == 0 && (sub_10002980C(a1, a2) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v59 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v60 = *(a1 + 596);
      v61 = *(a1 + 368);
      v62 = *a2;
      *buf = 67240704;
      v96 = v60;
      v97 = 2050;
      v98 = v61;
      v99 = 2050;
      v100 = v62;
      _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter time-update failed, Course Meas ignored,filterMCT,%{public}.3f,CourseMeasMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v63 = *(a1 + 596);
    v64 = *(a1 + 368);
    v65 = *a2;
    v85 = 67240704;
    v86 = v63;
    v87 = 2050;
    v88 = v64;
    v89 = 2050;
    v90 = v65;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,filter time-update failed, Course Meas ignored,filterMCT,%{public}.3f,CourseMeasMCT,%{public}.3f", &v85, 28);
    v15 = v66;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v66);
    goto LABEL_60;
  }

  v39 = *(a1 + 24);
  v38 = *(a1 + 32);
  if (fabs(v39) > 0.05 || fabs(v38) > 0.05)
  {
    v48 = atan2(v38, v39);
    if (v48 < 0.0 || v48 >= 6.28318531)
    {
      *v46.i64 = fmod(v48, 6.28318531);
      if (*v46.i64 >= 0.0)
      {
        v48 = *v46.i64;
      }

      else
      {
        v48 = *v46.i64 + 6.28318531;
      }
    }

    v46.i64[0] = a2[1];
    v47.i64[0] = 1.0;
    v36 = sub_1006ED4C8(a1, v46, a2[2], v47, v48, v49, v50, v51, v52);
    if ((v36 & 1) == 0)
    {
      v53 = *(a2 + 1);
      v53.f64[1] = sqrt(a2[2]);
      *(a1 + 424) = vmulq_f64(v53, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v54 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v55 = *(a1 + 596);
        v56 = *a2;
        v57 = *(a1 + 424);
        v58 = *(a1 + 432);
        *buf = 67240961;
        v96 = v55;
        v97 = 2050;
        v98 = v56;
        v99 = 2049;
        v100 = v57;
        v101 = 2050;
        v102 = v58;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,failed to ingest Course Meas,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101912E28(buf);
        v79 = *(a1 + 596);
        v80 = *a2;
        v81 = *(a1 + 424);
        v82 = *(a1 + 432);
        v85 = 67240961;
        v86 = v79;
        v87 = 2050;
        v88 = v80;
        v89 = 2049;
        v90 = v81;
        v91 = 2050;
        v92 = v82;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,failed to ingest Course Meas,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f", &v85, 38);
        v84 = v83;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v83);
        if (v84 != buf)
        {
          free(v84);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v40 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 596);
      v42 = *a2;
      v43 = a2[1] * 57.2957795;
      v44 = sqrt(a2[2]) * 57.2957795;
      v45 = hypot(*(a1 + 24), *(a1 + 32));
      *buf = 67241217;
      v96 = v41;
      v97 = 2050;
      v98 = v42;
      v99 = 2049;
      v100 = v43;
      v101 = 2050;
      v102 = v44;
      v103 = 2050;
      v104 = v45;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,stationary user,Course Meas ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f,filter_speedEst_mps,%{public}.3f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v71 = qword_1025D4778;
      v72 = *(a1 + 596);
      v73 = *a2;
      v74 = a2[1] * 57.2957795;
      v75 = sqrt(a2[2]) * 57.2957795;
      v76 = hypot(*(a1 + 24), *(a1 + 32));
      v85 = 67241217;
      v86 = v72;
      v87 = 2050;
      v88 = v73;
      v89 = 2049;
      v90 = v74;
      v91 = 2050;
      v92 = v75;
      v93 = 2050;
      v94 = v76;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v71, 2, "KFCV:,ID,%{public}d,stationary user,Course Meas ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f,filter_speedEst_mps,%{public}.3f", &v85, 48);
      v78 = v77;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v77);
      if (v78 != buf)
      {
        free(v78);
      }
    }

    v36 = 0;
    *(a1 + 424) = a2[1] * 57.2957795;
    *(a1 + 432) = sqrt(a2[2]) * 57.2957795;
  }

  *(a1 + 440) = *a2;
  return v36;
}

void sub_1002A6BA8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1002A6C44(uint64_t a1, _DWORD *a2)
{
  if (sub_10001CF3C())
  {
    return;
  }

  sub_1003C93BC(a1 + 8, *(a1 + 16));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a1 + 16;
  v4 = *(a1 + 240);
  if (v4 == (a1 + 248))
  {
    *(a1 + 2) = 0;
    goto LABEL_41;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v5 = -1.0;
    if (*(v4 + 40) == 1)
    {
      v5 = *(v4 + 9);
    }

    v6 = *(v4 + 8);
    v7 = *(v4 + 11);
    *buf = v4 + 28;
    v8 = sub_10029E0DC(a1 + 8, v4 + 28, &unk_101C66300, buf);
    *(v8 + 8) = v6;
    *(v8 + 9) = v5;
    *(v8 + 10) = v7;
    v9 = *(v4 + 28);
    if (v9 <= 0xA)
    {
      v10 = 1 << v9;
      if ((v10 & 0x69D) != 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10170CEF4();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          v12 = *(v4 + 28);
          *buf = 16908544;
          buf[4] = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "#imag,validateCn0Stats,invalid band,%{public}hhu", buf, 5u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10170D264(&v20, v4 + 28, v21);
        }
      }

      else if ((v10 & 0x160) != 0)
      {
        if (*(v4 + 40) == 1)
        {
          v16 = HIDWORD(v19);
          if (*(v4 + 9) > *(a1 + 288))
          {
            v16 = 1;
          }

          HIDWORD(v19) = v16;
        }
      }

      else
      {
        HIDWORD(v18) = *(v4 + 40);
        LOBYTE(v18) = HIDWORD(v18) == 1 && *(v4 + 9) <= *(a1 + 284);
        LOBYTE(v19) = *(v4 + 11) >= *(a1 + 280);
      }
    }

    v13 = v4[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v4[2];
        v15 = *v14 == v4;
        v4 = v14;
      }

      while (!v15);
    }

    v4 = v14;
  }

  while (v14 != (a1 + 248));
  *(a1 + 2) = v19 & 1;
  if ((v19 & 0x100000000) != 0)
  {
    *(a1 + 1) = 0;
LABEL_32:
    if ((*(a1 + 36) & 0x80000000) != 0)
    {
      if (*a2)
      {
        *(a1 + 36) = *a2;
      }
    }

    return;
  }

  if ((v18 & 0x100000000) == 0)
  {
LABEL_41:
    *(a1 + 1) = 0;
    return;
  }

  if ((v18 & 1) == 0)
  {
    v17 = *(a1 + 264) + 1;
    *(a1 + 264) = v17;
    if (v17 < 3)
    {
      if (*(a1 + 1))
      {
        return;
      }
    }

    else
    {
      *(a1 + 1) = 0;
      *(a1 + 264) = 3;
    }

    goto LABEL_32;
  }

  *(a1 + 1) = 1;
  *(a1 + 264) = 0;
  if ((*(a1 + 32) & 0x80000000) != 0 && *a2)
  {
    *(a1 + 32) = *a2;
  }
}

uint64_t sub_1002A6F34(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 104) <= 0.0)
  {
    return 0;
  }

  v3 = (a2 + 72);
  v4 = *(a2 + 72);
  if (v4 >= -500.0)
  {
    v7 = 18000.0;
    if (a3)
    {
      v7 = 27500.0;
    }

    if (v4 >= 9000.0 && v4 > v7)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016ADBCC();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v3;
        v12 = 134349056;
        v13 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#imag,alt gt thresh,%{public}.1f", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016AE16C(v3);
      }

      return 1;
    }

    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016ADBCC();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *v3;
    v12 = 134349056;
    v13 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#imag,alt lt thresh,%{public}.1f", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016AE25C(v3);
  }

  return 1;
}

void sub_1002A70E8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a3 + 16);
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = a3 + 16;
    do
    {
      if (*(v4 + 28))
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 28) == 0));
    }

    while (v4);
    if (v7 != v5 && *(v7 + 28) <= 1u)
    {
      v8 = *(v7 + 36);
      if (v8 >= 0.0)
      {
        v9 = *(a3 + 8);
        if (v9 != v5)
        {
          v10 = (a4 + 1120);
          do
          {
            v11 = *(v9 + 9);
            if (v11 >= 0.0)
            {
              v12 = *(v9 + 28);
              if (v12 > 0xA)
              {
                goto LABEL_17;
              }

              if (((1 << v12) & 0x160) == 0)
              {
                if (((1 << v12) & 0x69D) != 0)
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_1016ADE08();
                  }

                  v27 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
                  {
                    v28 = *(v9 + 28);
                    *buf = 16777472;
                    buf[4] = v28;
                    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "#imag,populateL1Cn0VarianceForAWD,not expected band,%d", buf, 5u);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_1016AE468(v9 + 28);
                  }

                  return;
                }

LABEL_17:
                if (v11 <= 1.0)
                {
                  v13 = 0;
                }

                else
                {
                  if (v11 <= 4.0)
                  {
                    v13 = 6;
                  }

                  else
                  {
                    v13 = 7;
                  }

                  if (v11 <= 3.5)
                  {
                    v13 = 5;
                  }

                  if (v11 <= 3.0)
                  {
                    v13 = 4;
                  }

                  if (v11 <= 2.5)
                  {
                    v13 = 3;
                  }

                  if (v11 <= 2.0)
                  {
                    v13 = 2;
                  }

                  if (v11 <= 1.5)
                  {
                    v13 = 1;
                  }
                }

                v29 = v13;
                v14 = *v10;
                if (!*v10)
                {
                  goto LABEL_41;
                }

                v15 = a4 + 1120;
                do
                {
                  v16 = *(v14 + 32);
                  v17 = v16 >= v12;
                  v18 = v16 < v12;
                  if (v17)
                  {
                    v15 = v14;
                  }

                  v14 = *(v14 + 8 * v18);
                }

                while (v14);
                if (v15 != v10 && v12 >= *(v15 + 32))
                {
                  v25 = *(v15 + 48);
                  v23 = v15 + 48;
                  v24 = v25;
                  if (!v25)
                  {
                    goto LABEL_56;
                  }

                  v26 = v23;
                  do
                  {
                    if (*(v24 + 32) >= v13)
                    {
                      v26 = v24;
                    }

                    v24 = *(v24 + 8 * (*(v24 + 32) < v13));
                  }

                  while (v24);
                  if (v26 != v23 && v13 >= *(v26 + 32))
                  {
                    ++*(v26 + 40);
                  }

                  else
                  {
LABEL_56:
                    *buf = &v29;
                    sub_1003E3DEC(v23 - 8, &v29, &unk_101C66300, buf)[5] = 1;
                  }
                }

                else
                {
LABEL_41:
                  *buf = v13;
                  v32 = 1;
                  v30 = v9 + 28;
                  v19 = sub_1007EE8E0(a4 + 1112, v9 + 28, &unk_101C66300, &v30);
                  sub_1016AD960(v19 + 5, buf, &v33);
                }

                goto LABEL_42;
              }

              if (v8 <= 1.5)
              {
                goto LABEL_17;
              }
            }

LABEL_42:
            v20 = v9[1];
            if (v20)
            {
              do
              {
                v21 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v21 = v9[2];
                v22 = *v21 == v9;
                v9 = v21;
              }

              while (!v22);
            }

            v9 = v21;
          }

          while (v21 != v5);
        }
      }
    }
  }
}

void sub_1002A743C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637238 + 8);
    }

    sub_100298410(v6, a2, a3);
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    v7 = *(qword_102637238 + 16);
  }

  sub_100298C70(v7, a2 + 48);
  if ((*(a1 + 48) & 4) != 0)
  {
LABEL_11:
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_102637238 + 24);
    }

    sub_10029E360(v8, a2 + 144);
  }
}

uint64_t sub_1002A74F8(uint64_t a1, double *a2, void *a3, __n128 a4, double a5, double a6, double a7, double a8)
{
  v8 = a4.n128_f64[0];
  if (a6 > 90.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#Error,DEM,latitude_degs>90.0", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101AF600C();
      return 0;
    }

    return result;
  }

  if (a6 >= -90.0)
  {
    if (a4.n128_f64[0] < -500.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *v46 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#Error,DEM,heightDEM<-500", v46, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101AF5E44();
        return 0;
      }

      return result;
    }

    if (a5 <= 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#Error,DEM,heightVariance<=0", v45, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101AF5AB4();
        return 0;
      }

      return result;
    }

    v17 = *(a1 + 168);
    *(a1 + 112) = *(a1 + 152);
    *(a1 + 128) = v17;
    *(a1 + 144) = *(a1 + 184);
    *(a1 + 168) = a4.n128_u64[0];
    *(a1 + 176) = a5;
    *(a1 + 152) = a6;
    *(a1 + 160) = a7;
    v18 = *(a1 + 192);
    *(a1 + 184) = a8;
    if (v18 == -9999.0)
    {
      goto LABEL_45;
    }

    *(a1 + 208) = v18;
    *(a1 + 192) = 0xC0C3878000000000;
    v19 = a8 - *(a1 + 144);
    if (v19 < 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning,DEM,deltaT<0,DEM height filter internal_reset", v44, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF5D60();
      }

      goto LABEL_45;
    }

    if (v19 > 2400.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v22 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v43 = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#Warning,DEM,Height filter timed out,DEM height filter internal_reset", v43, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF5C7C();
      }

      goto LABEL_45;
    }

    v23 = *(a1 + 128);
    sub_100109D18((a1 + 8), a6, a7, *(a1 + 112), *(a1 + 120), v8);
    *(a1 + 216) = v24;
    if (v24 > 3500.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v25 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v42 = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "DEM,Height filter exceeded maximum change in horizontal position,DEM height filter internal_reset", v42, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF5B98();
      }

      goto LABEL_45;
    }

    v26 = v24;
    v27 = (v8 - v23) / v24;
    v28 = v24 < 5.0;
    v29 = 0.0;
    if (v28)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v27;
    }

    v31 = *(a1 + 208);
    *(a1 + 200) = v31;
    *(a1 + 64) = v19 * 1.3;
    *(a1 + 48) = v19 * 1.3 + *(a1 + 48);
    *(a1 + 56) = 0x40C3880000000000;
    if ((*(a1 + 232) & 1) != 0 || *(a1 + 233) == 1) && (sub_100109D18((a1 + 8), *(a1 + 152), *(a1 + 160), *(a1 + 80), *(a1 + 88), *(a1 + 168)), (*(a1 + 232)))
    {
      if (*(a1 + 168) < *(a1 + 96) + v29 * -0.07)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (*(a1 + 233) != 1)
      {
        v33 = fabs(v27);
        v34 = 0.0;
        if (v26 >= 5.0)
        {
          v34 = v33;
        }

        if (v34 <= 0.4)
        {
          if (v34 <= 0.32)
          {
            v32 = *(a1 + 176);
            v35 = 0.0;
            if (v34 > 0.18)
            {
              v32 = v32 * 5.0;
              v35 = 0.5;
            }
          }

          else
          {
            v32 = *(a1 + 176) * 20.0;
            v35 = 1.0;
          }
        }

        else
        {
          v32 = *(a1 + 176) * 25.0;
          v35 = 2.0;
        }

        v36 = 248;
        if (v30 < 0.0)
        {
          v36 = 240;
        }

        v37 = *(a1 + v36);
        *(a1 + 56) = v32;
        *(a1 + v36) = v35 + v37;
        if (v30 <= 0.32 || *(a1 + 248) <= 4.1 || *(a1 + 184) - *(a1 + 104) <= 30.0)
        {
          if (v30 >= -0.32 || *(a1 + 240) <= 4.1 || *(a1 + 184) - *(a1 + 104) <= 30.0)
          {
            if (v34 < 0.18)
            {
              *(a1 + 240) = 0;
              *(a1 + 248) = 0;
            }

            goto LABEL_93;
          }

          *(a1 + 232) = 1;
        }

        else
        {
          *(a1 + 233) = 1;
        }

        *(a1 + 80) = *(a1 + 152);
        v38 = *(a1 + 184);
        *(a1 + 96) = *(a1 + 200);
        *(a1 + 104) = v38;
        *(a1 + 56) = 0x40C3880000000000;
        v32 = 10000.0;
LABEL_93:
        v39 = *(a1 + 48);
        v40 = v39 / (v39 + v32);
        *(a1 + 48) = v39 * (1.0 - v40);
        v41 = *(a1 + 200) + (v8 - v31) * v40;
        *(a1 + 192) = v41;
        *a2 = v41;
        goto LABEL_46;
      }

      if (*(a1 + 168) > *(a1 + 96) + v29 * 0.1)
      {
LABEL_63:
        if (*(a1 + 184) - *(a1 + 104) > 1800.0 || v29 > 3500.0)
        {
LABEL_45:
          *(a1 + 192) = v8;
          *(a1 + 48) = a5;
          *(a1 + 56) = a5;
          *(a1 + 104) = 0;
          *(a1 + 216) = 0;
          *(a1 + 224) = 0;
          *(a1 + 232) = 0;
          *(a1 + 240) = 0;
          *(a1 + 248) = 0;
          *a2 = v8;
LABEL_46:
          *a3 = *(a1 + 48);
          return 1;
        }

        v32 = *(a1 + 56);
        goto LABEL_93;
      }
    }

    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    v32 = *(a1 + 176);
    *(a1 + 104) = *(a1 + 184);
    if (v26 >= 5.0 && fabs(v27) > 0.18)
    {
      v32 = v32 * 10.0;
    }

    *(a1 + 56) = v32;
    goto LABEL_93;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *v47 = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#Error,DEM,latitude_degs<-90.0", v47, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101AF5F28();
    return 0;
  }

  return result;
}

uint64_t sub_1002A7C54(uint64_t a1, __n128 a2, long double a3, double a4, double a5)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v5 = a2.n128_f64[0];
  if (fabs(a2.n128_f64[0]) <= 90.0)
  {
    v9 = *(a1 + 128);
    if (v9 <= v5)
    {
      LOWORD(a5) = *(a1 + 108);
      if (v9 + *(a1 + 136) * *&a5 >= v5)
      {
        sub_10002DB04(a3);
        v12 = *(a1 + 120);
        if (v10 >= v12)
        {
          LOWORD(v11) = *(a1 + 110);
          return v10 <= v12 + *(a1 + 136) * v11;
        }
      }
    }

    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v13 = 134545665;
    v14 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.7lf,out of range", &v13, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AF628C();
    return 0;
  }

  return result;
}

uint64_t sub_1002A7DAC(uint64_t a1, double *a2, double *a3, int *a4)
{
  result = *(*(a1 + 8) + 1064);
  if (result)
  {
    return sub_100218038(result, *a4, *a2, *a3);
  }

  return result;
}

uint64_t sub_1002A7DD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t *sub_1002A7E18(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((a5 - *a4) >> 4) + 2 * (a4 - a2) + 0x79435E50D79435E5 * ((a3 - *a2) >> 4);
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
    v10 = *v9 + 304 * (a1[4] & 0xFLL);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x86BCA1AF286BCA1BLL * ((a3 - *a2) >> 4) + 2 * (a2 - v9) + 0x79435E50D79435E5 * ((v10 - *v9) >> 4);
  }

  v30.n128_u64[0] = v8 + 8 * (v7 >> 4);
  v30.n128_u64[1] = v10;
  sub_10029FA6C(&v30, v11);
  if (v6 >= 1)
  {
    v12 = v30;
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_10029FA6C(&v30, v6);
      sub_1002A80F4(v9, v10, v12.n128_u64[0], v12.n128_i64[1], v30.n128_u64[0], v30.n128_i64[1], &v30);
      v18 = v31;
      while (v10 != v18)
      {
        sub_100134860(v10 + 248);
        v10 += 304;
        if (v10 - *v9 == 4864)
        {
          v19 = *(v9 + 1);
          v9 += 8;
          v10 = v19;
        }
      }

      v20 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v20;
        ;
      }
    }

    else
    {
      sub_10029FA6C(&v30, v6);
      v13 = v30;
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 >> 4));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 304 * (v14 & 0xF));
      }

      v30 = v12;
      sub_1009BB930(v13.n128_u64[0], v13.n128_u64[1], v16, v17, &v30);
      v21 = v30.n128_u64[1];
      v22 = a1[1];
      if (a1[2] == v22)
      {
        v24 = 0;
      }

      else
      {
        v23 = a1[5] + a1[4];
        v24 = *(v22 + ((v23 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * (v23 & 0xF);
      }

      if (v24 != v30.n128_u64[1])
      {
        v25 = v30.n128_u64[0];
        do
        {
          sub_100134860(v21 + 248);
          v21 += 304;
          if (v21 - *v25 == 4864)
          {
            v26 = v25[1];
            ++v25;
            v21 = v26;
          }
        }

        while (v21 != v24);
      }

      a1[5] -= v6;
        ;
      }
    }
  }

  v27 = a1[1];
  if (a1[2] == v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v27 + 8 * (a1[4] >> 4)) + 304 * (a1[4] & 0xFLL);
  }

  v30.n128_u64[0] = v27 + 8 * (a1[4] >> 4);
  v30.n128_u64[1] = v28;
  sub_10029FA6C(&v30, v11);
  return v30.n128_u64[0];
}

__n128 sub_1002A80F4@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    i = a5;
    v14 = a6;
  }

  else
  {
    v16 = a3 - 1;
    sub_1002A92D0(*a3, a4, a5, a6, &v19);
    v14 = v20.n128_i64[1];
    for (i = v20.n128_u64[0]; v16 != a1; i = v20.n128_u64[0])
    {
      v17 = *v16--;
      sub_1002A92D0(v17, v17 + 4864, i, v14, &v19);
      v14 = v20.n128_i64[1];
    }

    v12 = *v16 + 4864;
    v11 = a2;
  }

  sub_1002A92D0(v11, v12, i, v14, &v19);
  result = v20;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

__n128 sub_1002A81E0(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *(a1 + 776);
  v2 = *(a1 + 792);
  v3 = *(a1 + 808);
  v4 = *(a1 + 824);
  *(a2 + 72) = *(a1 + 840);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = v2;
  result = *(a1 + 856);
  v6 = *(a1 + 872);
  v7 = *(a1 + 888);
  *(a2 + 132) = *(a1 + 900);
  *(a2 + 120) = v7;
  *(a2 + 104) = v6;
  *(a2 + 88) = result;
  return result;
}

void sub_1002A8224(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101798E48();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 1237);
    v4 = *(a1 + 1236);
    v15 = 67109376;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#timingadvance,query timing advance,isTimingAdvanceEnabled, %d,isDeviceInRRCState %d ", &v15, 0xEu);
  }

  v5 = sub_10000A100(121, 2);
  if (v5)
  {
    sub_10179A6F4();
  }

  v7 = sub_10006FB70(v5, v6);
  if (v7 && (v7 = sub_10006FE30(v7, v8), v7) && *(a1 + 1236) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 1232);
      v15 = 67109120;
      v16 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#timingadvance,queryTimingAdvance for mav22 TB,siminstance %d", &v15, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10179A8D8(a1);
    }

    sub_1015FFDE4(*(*(a1 + 744) + 40), *(a1 + 1232));
  }

  else
  {
    v11 = sub_1000733FC(v7, v8);
    if (v11 & 1) != 0 || (v13 = sub_1000734AC(v11, v12), (v13) || sub_100718F78(v13))
    {
      if (*(a1 + 1236) == 1 && *(a1 + 8) == 6)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v14 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v15) = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#timingadvance,query timingadvance over LTE", &v15, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10179A7F4();
        }

        sub_10178DF90(a1, *(a1 + 1232));
      }
    }
  }
}

__n128 sub_1002A84C8(uint64_t a1, __n128 *a2)
{
  v4 = sub_1002A8534(a1);
  if (!sub_1001744A4(v4))
  {
    sub_1018823F4();
  }

  v5 = a2[2].n128_u32[2];
  a2[2].n128_u32[2] = v5 | 1;
  v6 = *(a1 + 4);
  a2->n128_u32[2] = v4;
  a2->n128_u32[3] = v6;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2].n128_u16[0] = *(a1 + 24);
  a2[2].n128_u32[2] = v5 | 0xFF;
  return result;
}

uint64_t sub_1002A8534(unsigned int *a1)
{
  if (*a1 < 6)
  {
    return *a1 + 1;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertClientSatelliteConstellationToProtobuf,unhandled type,%{public}d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B8BB0C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1002A8624(uint64_t result)
{
  *(result + 36) = 0;
  *(result + 40) = 0;
  *result = off_102452248;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002A8650(unsigned int *a1, unsigned int a2)
{
  v3 = a1[10];
  if (!v3)
  {
    result = 0;
    goto LABEL_28;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v7 = a1[3];
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = a1[10];
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_19;
  }

  v6 = a1[2];
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = a1[10];
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v9 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v9 += 5;
  }

  if ((v3 & 0x10) != 0)
  {
    v9 += 5;
  }

  if ((v3 & 0x20) != 0)
  {
    v9 += 5;
  }

  result = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v9;
LABEL_28:
  a1[9] = result;
  return result;
}

void sub_1002A8748(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452248;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1002A879C(__int128 *a1, double *a2, double *a3)
{
  v9 = 0.0;
  if (sub_100131C88(a1, &v9))
  {
    *a3 = *a2 - v9;

    return sub_100131DE8(a1, a3);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TCONV,Failed in getting the offset between mach continuous time and mach absolute time", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D28CC();
    }

    return 0;
  }
}

char **sub_1002A8894(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004906DC(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1002A896C(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_1006A3650(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

uint64_t sub_1002A8A60(uint64_t a1, double *a2, __n128 a3)
{
  v5 = *(a2 + 20);
  if (v5 < 5.0)
  {
    v5 = 5.0;
  }

  if (v5 <= 166.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 166.0;
  }

  if (*(a2 + 60) >= 0.0)
  {
    v7 = *(a2 + 60);
  }

  else
  {
    v7 = 0.0;
  }

  v54 = 9999.0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 12);
  v52 = v9;
  v53 = v8;
  v51 = -9999.0;
  a3.n128_u64[0] = v8;
  v10 = sub_10029E824(a1 + 912, &v51, &v54, a3, v9);
  if ((v10 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v33 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v34 = *(a2 + 4);
      v35 = *(a2 + 12);
      *buf = 134546433;
      *&buf[4] = v34;
      *&buf[12] = 2053;
      *&buf[14] = v35;
      *&buf[22] = 2053;
      v66 = *&v8;
      v67 = 2053;
      v68 = v9;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "DEM,populateSlope,fail,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,testLocationLatDegs,%{sensitive}.8lf,testLocationLonDegs,%{sensitive}.8lf", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101AF5990();
      }

      v36 = *(a2 + 4);
      v37 = *(a2 + 12);
      v55 = 134546433;
      v56 = v36;
      v57 = 2053;
      v58 = v37;
      v59 = 2053;
      v60 = v8;
      v61 = 2053;
      v62 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "DEM,populateSlope,fail,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,testLocationLatDegs,%{sensitive}.8lf,testLocationLonDegs,%{sensitive}.8lf", &v55, 42);
      v39 = v38;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::updateSlopeAndUncertainty(GNSS::DaemonLocation &)", "%s\n", v38);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    return v10;
  }

  v11 = v51;
  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a2 + 20);
    v14 = *(a2 + 67);
    *buf = 134546689;
    *&buf[4] = v8;
    *&buf[12] = 2053;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    v66 = v13;
    v67 = 2048;
    v68 = v11;
    v69 = 2048;
    v70 = v14;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "DEM,populateSlope,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%.1lf,centerAltitude,%.1lf,daemonLocation.priv.groundAltitude,%.1lf", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101AF5990();
    }

    v46 = *(a2 + 20);
    v47 = *(a2 + 67);
    v55 = 134546689;
    v56 = v8;
    v57 = 2053;
    v58 = v9;
    v59 = 2048;
    v60 = v46;
    v61 = 2048;
    v62 = v11;
    v63 = 2048;
    v64 = v47;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,populateSlope,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%.1lf,centerAltitude,%.1lf,daemonLocation.priv.groundAltitude,%.1lf", &v55, 52);
    v49 = v48;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::updateSlopeAndUncertainty(GNSS::DaemonLocation &)", "%s\n", v48);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  v15 = 0;
  v16 = 1.5;
  v17 = 0.0;
  v18 = -450.0;
  v19 = 8850.0;
  while (1)
  {
    sub_1002A9144((a1 + 608), &v53, &v52, *(a2 + 4), *(a2 + 12), a2[67], v7 + v15 * 90.0, v6);
    v20.n128_u64[0] = v53;
    if (sub_1002A7C54(a1 + 912, v20, v52, v21, v22))
    {
      v23.n128_u64[0] = v53;
      if ((sub_10029E824(a1 + 912, &v51, &v54, v23, v52) & 1) == 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101AF5990();
        }

        v26 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(a2 + 4);
          v28 = *(a2 + 12);
          *buf = 134546433;
          *&buf[4] = v27;
          *&buf[12] = 2053;
          *&buf[14] = v28;
          *&buf[22] = 2053;
          v66 = *&v53;
          v67 = 2053;
          v68 = v52;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "DEM,populateSlope,fail,lat,%{sensitive}.6lf,lon,%{sensitive}.6lf,testLatDegs,%{sensitive}.6lf,testLonDegs,%{sensitive}.6lf", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_101AF5990();
          }

          v29 = *(a2 + 4);
          v30 = *(a2 + 12);
          v55 = 134546433;
          v56 = v29;
          v57 = 2053;
          v58 = v30;
          v59 = 2053;
          v60 = v53;
          v61 = 2053;
          v62 = v52;
          LODWORD(v50) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,populateSlope,fail,lat,%{sensitive}.6lf,lon,%{sensitive}.6lf,testLatDegs,%{sensitive}.6lf,testLonDegs,%{sensitive}.6lf", &v55, v50);
          v32 = v31;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::updateSlopeAndUncertainty(GNSS::DaemonLocation &)", "%s\n", v31);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        goto LABEL_39;
      }

      v24 = (v51 - v11) / v6;
      v25 = fabs(v24);
      if (v25 >= v17)
      {
        v17 = v25;
      }

      if (v51 >= v18)
      {
        v18 = v51;
      }

      if (v19 >= v51)
      {
        v19 = v51;
      }

      if (v16 < v54)
      {
        v16 = v54;
      }

      if (v15 == 1)
      {
        a2[65] = -v24;
        goto LABEL_39;
      }

      if (v15 == 3)
      {
        break;
      }
    }

LABEL_39:
    if (++v15 == 4)
    {
      goto LABEL_50;
    }
  }

  a2[65] = v24;
LABEL_50:
  a2[66] = v17;
  v40 = 1.5;
  if (fabs(a2[65]) > 0.5)
  {
    v40 = 180.0;
  }

  v41 = a2[68];
  *buf = v41;
  *&buf[8] = (v18 - v19) * 0.5;
  *&buf[16] = v16;
  v66 = v40;
  v42 = 8;
  v43 = buf;
  do
  {
    if (v41 < *&buf[v42])
    {
      v41 = *&buf[v42];
      v43 = &buf[v42];
    }

    v42 += 8;
  }

  while (v42 != 32);
  v44 = *v43;
  if (*v43 < 1.5)
  {
    v44 = 1.5;
  }

  if (v44 > 9999.0)
  {
    v44 = 9999.0;
  }

  a2[68] = v44;
  return v10;
}

BOOL sub_1002A9144(float64_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (a7 >= 0.0 && a8 <= 50000.0)
  {
    v15 = fabs(a8);
    v16 = __sincos_stret((dbl_101D16780[a8 < 0.0] + a7) * 0.0174532925);
    return sub_1002AC7D4(a1, a2, a3, &v17, a4, a5, a6, v15 * v16.__cosval, v15 * v16.__sinval, 0.0);
  }

  return result;
}

void sub_1002A9278(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002A92D0(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v6 = a1;
  if (a1 != a2)
  {
    v29 = a5;
    v7 = *a3;
    v8 = a2;
    while (1)
    {
      v9 = 0x86BCA1AF286BCA1BLL * ((a4 - v7) >> 4);
      if ((0x86BCA1AF286BCA1BLL * ((v8 - v6) >> 4)) >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x86BCA1AF286BCA1BLL * ((v8 - v6) >> 4);
      }

      if (v10)
      {
        v11 = v8 - 56;
        v12 = a4 - 56;
        v13 = -304 * v10;
        do
        {
          v14 = *(v11 - 248);
          v15 = *(v11 - 232);
          v16 = *(v11 - 216);
          *(v12 - 200) = *(v11 - 200);
          *(v12 - 216) = v16;
          *(v12 - 232) = v15;
          *(v12 - 248) = v14;
          v17 = *(v11 - 184);
          v18 = *(v11 - 168);
          v19 = *(v11 - 152);
          *(v12 - 136) = *(v11 - 136);
          *(v12 - 152) = v19;
          *(v12 - 168) = v18;
          *(v12 - 184) = v17;
          v20 = *(v11 - 120);
          v21 = *(v11 - 104);
          v22 = *(v11 - 88);
          *(v12 - 72) = *(v11 - 72);
          *(v12 - 88) = v22;
          *(v12 - 104) = v21;
          *(v12 - 120) = v20;
          v23 = *(v11 - 56);
          v24 = *(v11 - 40);
          v25 = *(v11 - 24);
          *(v12 - 8) = *(v11 - 8);
          *(v12 - 24) = v25;
          *(v12 - 40) = v24;
          *(v12 - 56) = v23;
          sub_1001BD950(v12, v11);
          *(v12 + 40) = *(v11 + 40);
          v11 -= 304;
          v12 -= 304;
          v13 += 304;
        }

        while (v13);
        a4 = v12 + 56;
      }

      v8 -= 304 * v10;
      if (v8 == v6)
      {
        break;
      }

      v26 = *--v5;
      v7 = v26;
      a4 = v26 + 4864;
    }

    if (*v5 + 4864 == a4)
    {
      v27 = v5[1];
      ++v5;
      a4 = v27;
    }

    v6 = a2;
    a5 = v29;
  }

  *a5 = v6;
  a5[1] = v5;
  a5[2] = a4;
}

void sub_1002A9464(uint64_t a1, uint64_t a2, double a3)
{
  if (vabdd_f64(sub_1000137E0(), *(a1 + 152)) < a3)
  {
    *(a2 + 176) = 1;
    *(a2 + 184) = *(a1 + 112);
  }
}

void sub_1002A94B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101943AC8();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 4);
    v7 = "Vendor";
    v8 = *(a2 + 12);
    v9 = *(a2 + 20);
    if (a3)
    {
      v7 = "";
    }

    v10 = *(a2 + 44);
    v11 = *(a2 + 60);
    v12 = *(a2 + 672);
    v13 = *(a2 + 28);
    v14 = *(a2 + 36);
    v15 = *(a2 + 144);
    v16 = *(a2 + 52);
    v17 = *(a2 + 68);
    v18 = *(a2 + 76);
    v19 = *(a2 + 796);
    v20 = 136449539;
    v21 = v7;
    v22 = 2053;
    v23 = v6;
    v24 = 2053;
    v25 = v8;
    v26 = 2050;
    v27 = v9;
    v28 = 2049;
    v29 = v10;
    v30 = 2049;
    v31 = v11;
    v32 = 1026;
    v33 = v12;
    v34 = 2049;
    v35 = v13;
    v36 = 2050;
    v37 = v14;
    v38 = 2049;
    v39 = v15;
    v40 = 2050;
    v41 = v16;
    v42 = 2050;
    v43 = v17;
    v44 = 2050;
    v45 = v18;
    v46 = 1026;
    v47 = v19;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxGps%{public}s, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, imag, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, timestamp, %{public}.3f, estimatorSource, %{public}d", &v20, 0x86u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943C4C(a3, a2);
  }
}

uint64_t sub_1002A9660(uint64_t a1, double *a2, uint64_t a3)
{
  if (*(a1 + 752))
  {
    return 0;
  }

  if (!*(a1 + 360))
  {
    return 0;
  }

  v4 = *(a1 + 3064);
  if (!v4 || !sub_1002A9D4C(v4))
  {
    return 0;
  }

  sub_100021AFC(v39);
  if (sub_1002A9D7C(*(a1 + 3064)))
  {
    sub_1002C17F8(*(a1 + 3064));
    sub_1002C18A0(*(a1 + 3064));
  }

  v6 = sub_1002C1CD0(*(a1 + 3064));
  if (v6)
  {
    *&v71[12] = 0;
    *&v71[4] = 0;
    *&v71[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v71[36] = _Q0;
    *&v71[52] = _Q0;
    *&v71[68] = _Q0;
    *v71 = 0xFFFF;
    *&v71[84] = 0;
    *&v71[88] = 0xBFF0000000000000;
    v72 = 0uLL;
    *(&v73 + 4) = 0xBFF0000000000000;
    LODWORD(v73) = 0;
    HIDWORD(v73) = 0x7FFFFFFF;
    memset(v74, 0, 25);
    sub_100021ED8(v75);
    v72 = v39[6];
    v73 = v39[7];
    *v74 = v40[0];
    *&v74[12] = *(v40 + 12);
    *&v71[32] = v39[2];
    *&v71[48] = v39[3];
    *&v71[64] = v39[4];
    *&v71[80] = v39[5];
    *v71 = v39[0];
    *&v71[16] = v39[1];
    memcpy(v75, v41, 0x201uLL);
    v12 = v42;
    v13 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v75[65] = v12;
    v14 = v76;
    v76 = v13;
    if (v14)
    {
      sub_100008080(v14);
    }

    v81 = v48;
    v82[0] = v49[0];
    *(v82 + 9) = *(v49 + 9);
    v77 = v44;
    v78 = v45;
    v79 = v46;
    v80 = v47;
    sub_1002C17F8(*(a1 + 3064));
    sub_1002C18A0(*(a1 + 3064));
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v16 = *a2;
      *buf = 134218752;
      v64 = v75[43];
      v65 = 2048;
      v66 = v16;
      v67 = 2048;
      v68 = *&v71[76];
      v69 = 2048;
      v70 = v75[3];
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#Raven,yield at,%.3lf,requested,%.3lf,deviceTimeOfFix,%.3lf,trueTimeOfFix,%.3lf", buf, 0x2Au);
    }

    v17 = sub_10000A100(121, 2);
    if (v17)
    {
      sub_101940C70(buf);
      v32 = *a2;
      v55 = 134218752;
      v56 = v75[43];
      v57 = 2048;
      v58 = v32;
      v59 = 2048;
      v60 = *&v71[76];
      v61 = 2048;
      v62 = v75[3];
      LODWORD(v37) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Raven,yield at,%.3lf,requested,%.3lf,deviceTimeOfFix,%.3lf,trueTimeOfFix,%.3lf", COERCE_DOUBLE(&v55), v37, v38, *v39);
      v34 = v33;
      v17 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::yieldRavenSolution(const CFTimeInterval &, const GNSS::DaemonLocation &)", "%s\n", v33);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    sub_1002A94B8(v17, v71, 1);
    v18 = *(a1 + 1152);
    if (v18)
    {
      sub_1016F3724(v18, v71);
    }

    v19 = *(a1 + 360);
    if (!v19)
    {
      sub_1000CF05C();
    }

    (*(*v19 + 48))(v19, v71);
    v20 = *(a1 + 2504);
    if (v20)
    {
      sub_100930F94(v20, v71);
    }

    if (v76)
    {
      sub_100008080(v76);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v22 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v23 = *a2;
      *buf = 134217984;
      v64 = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "#Raven,no yield at,%.3lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v29 = *a2;
      *v71 = 134217984;
      *&v71[4] = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Raven,no yield at,%.3lf", COERCE_DOUBLE(v71));
      v31 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::yieldRavenSolution(const CFTimeInterval &, const GNSS::DaemonLocation &)", "%s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  v24 = *(a1 + 3104);
  if (v24)
  {
    if (*(v24 + 32) != 1)
    {
      v27 = *(v24 + 20);
      v26 = *(v24 + 8);
      goto LABEL_36;
    }

    v25 = *(v24 + 24);
    if (v25 <= *a2)
    {
      v26 = *a2 + *(v24 + 8) - v25;
      v27 = *(v24 + 20);
LABEL_36:
      if ((v27 & 1) == 0 || v26 > *(v24 + 16))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v28 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#raven,overDailyBudget,stop", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          *v71 = 0;
          LODWORD(v37) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#raven,overDailyBudget,stop", v71, *&v37);
          v36 = v35;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::yieldRavenSolution(const CFTimeInterval &, const GNSS::DaemonLocation &)", "%s\n", v35);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        sub_1001C55E4(a1);
      }
    }
  }

  if (v53)
  {
    sub_100008080(v53);
  }

  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (v50)
  {
    sub_100008080(v50);
  }

  if (v43)
  {
    sub_100008080(v43);
  }

  return v6;
}

void sub_1002A9D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A9D7C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = (v2 + 680);
  if (*(v1 + 4784) != 1 || (v5 = v1, *(v1 + 4856) == v1 + 4808))
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v7 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
    {
      *v60 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Raven: location requested when estimator not enabled", v60, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A2631C();
    }

    sub_100021AFC(v60);
    v8 = v67;
    *(v3 + 96) = v66;
    *(v3 + 112) = v8;
    *(v3 + 128) = v68[0];
    *(v3 + 140) = *(v68 + 12);
    v9 = v63;
    *(v3 + 32) = v62;
    *(v3 + 48) = v9;
    v10 = v65;
    *(v3 + 64) = v64;
    *(v3 + 80) = v10;
    v11 = v61;
    *v3 = *v60;
    *(v3 + 16) = v11;
    memcpy((v3 + 160), v69, 0x201uLL);
    v12 = v70;
    v70 = 0uLL;
    v13 = *(v3 + 688);
    *v4 = v12;
    if (v13)
    {
      sub_100008080(v13);
    }

    v14 = v76[0];
    *(v3 + 760) = v75;
    *(v3 + 776) = v14;
    *(v3 + 785) = *(v76 + 9);
    v15 = v72;
    *(v3 + 696) = v71;
    *(v3 + 712) = v15;
    v16 = v74;
    *(v3 + 728) = v73;
    *(v3 + 744) = v16;
    v17 = v77;
    v77 = 0uLL;
    v18 = *(v3 + 816);
    v4[8] = v17;
    if (v18)
    {
      sub_100008080(v18);
    }

    *(v3 + 888) = v82;
    v19 = v81;
    *(v3 + 856) = v80;
    *(v3 + 872) = v19;
    v20 = v79;
    *(v3 + 824) = v78;
    *(v3 + 840) = v20;
    *(v3 + 896) = v83;
    v21 = (v3 + 904);
    if (*(v3 + 927) < 0)
    {
      operator delete(*v21);
    }

    *(v3 + 920) = v85;
    *v21 = __p;
    HIBYTE(v85) = 0;
    LOBYTE(__p) = 0;
    *(v3 + 1104) = v97;
    *(v3 + 1120) = v98;
    *(v3 + 1136) = v99;
    *(v3 + 1152) = v100;
    *(v3 + 1040) = v93;
    *(v3 + 1056) = v94;
    *(v3 + 1072) = v95;
    *(v3 + 1088) = v96;
    v22 = v91;
    *(v3 + 992) = v90;
    *(v3 + 1008) = v22;
    *(v3 + 1024) = v92;
    v23 = v87;
    *(v3 + 928) = v86;
    *(v3 + 944) = v23;
    v24 = v89;
    *(v3 + 960) = v88;
    *(v3 + 976) = v24;
    v25 = v101;
    v101 = 0uLL;
    v26 = *(v3 + 1168);
    v4[30] = v25;
    if (v26)
    {
      sub_100008080(v26);
    }

    v27 = v109;
    *(v3 + 1272) = v108;
    *(v3 + 1288) = v27;
    *(v3 + 1304) = v110;
    v28 = v105;
    *(v3 + 1208) = v104;
    *(v3 + 1224) = v28;
    v29 = v107;
    *(v3 + 1240) = v106;
    *(v3 + 1256) = v29;
    v30 = v103;
    *(v3 + 1176) = v102;
    *(v3 + 1192) = v30;
    v31 = *(v3 + 1320);
    *(v3 + 1320) = v111;
    v111 = 0;

    *(v3 + 1504) = v123;
    *(v3 + 1520) = v124;
    *(v3 + 1536) = v125;
    *(v3 + 1552) = v126;
    *(v3 + 1440) = v119;
    *(v3 + 1456) = v120;
    *(v3 + 1472) = v121;
    *(v3 + 1488) = v122;
    *(v3 + 1376) = v115;
    *(v3 + 1392) = v116;
    *(v3 + 1408) = v117;
    *(v3 + 1424) = v118;
    *(v3 + 1328) = v112;
    *(v3 + 1344) = v113;
    *(v3 + 1360) = v114;

    if (*(&v101 + 1))
    {
      sub_100008080(*(&v101 + 1));
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p);
    }

    if (*(&v77 + 1))
    {
      sub_100008080(*(&v77 + 1));
    }

    if (*(&v70 + 1))
    {
      sub_100008080(*(&v70 + 1));
    }
  }

  else
  {
    sub_10029FB44(v60);
    v6 = *(v5 + 4792);
    if (v6)
    {
      buf[0] = 0;
      buf[8] = 0;
      sub_100E4E4B0(v6, v60, buf);
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A20320();
    }

    v32 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_INFO, "CLGAS,Raven,GetRavenSolutionFromService,could not retrieve latest Raven solution", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(v127[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4688, 1, "CLGAS,Raven,GetRavenSolutionFromService,could not retrieve latest Raven solution", v127, 2);
      v59 = v58;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::GetLocation(CLLocationProvider_Type::NotificationData &, const GNSS::DaemonLocation &) const", "%s\n", v58);
      if (v59 != buf)
      {
        free(v59);
      }
    }

    sub_100021AFC(buf);
    v33 = v135;
    *(v3 + 96) = v134;
    *(v3 + 112) = v33;
    *(v3 + 128) = v136[0];
    *(v3 + 140) = *(v136 + 12);
    v34 = v131;
    *(v3 + 32) = v130;
    *(v3 + 48) = v34;
    v35 = v133;
    *(v3 + 64) = v132;
    *(v3 + 80) = v35;
    v36 = v129;
    *v3 = *buf;
    *(v3 + 16) = v36;
    memcpy((v3 + 160), v137, 0x201uLL);
    v37 = v138;
    v138 = 0uLL;
    v38 = *(v3 + 688);
    *v4 = v37;
    if (v38)
    {
      sub_100008080(v38);
    }

    v39 = v144[0];
    *(v3 + 760) = v143;
    *(v3 + 776) = v39;
    *(v3 + 785) = *(v144 + 9);
    v40 = v140;
    *(v3 + 696) = v139;
    *(v3 + 712) = v40;
    v41 = v142;
    *(v3 + 728) = v141;
    *(v3 + 744) = v41;
    v42 = v145;
    v145 = 0uLL;
    v43 = *(v3 + 816);
    v4[8] = v42;
    if (v43)
    {
      sub_100008080(v43);
    }

    *(v3 + 888) = v150;
    v44 = v149;
    *(v3 + 856) = v148;
    *(v3 + 872) = v44;
    v45 = v147;
    *(v3 + 824) = v146;
    *(v3 + 840) = v45;
    *(v3 + 896) = v151;
    v46 = (v3 + 904);
    if (*(v3 + 927) < 0)
    {
      operator delete(*v46);
    }

    *(v3 + 920) = v153;
    *v46 = v152;
    HIBYTE(v153) = 0;
    LOBYTE(v152) = 0;
    *(v3 + 1104) = v165;
    *(v3 + 1120) = v166;
    *(v3 + 1136) = v167;
    *(v3 + 1152) = v168;
    *(v3 + 1040) = v161;
    *(v3 + 1056) = v162;
    *(v3 + 1072) = v163;
    *(v3 + 1088) = v164;
    v47 = v159;
    *(v3 + 992) = v158;
    *(v3 + 1008) = v47;
    *(v3 + 1024) = v160;
    v48 = v155;
    *(v3 + 928) = v154;
    *(v3 + 944) = v48;
    v49 = v157;
    *(v3 + 960) = v156;
    *(v3 + 976) = v49;
    v50 = v169;
    v169 = 0uLL;
    v51 = *(v3 + 1168);
    v4[30] = v50;
    if (v51)
    {
      sub_100008080(v51);
    }

    v52 = v177;
    *(v3 + 1272) = v176;
    *(v3 + 1288) = v52;
    *(v3 + 1304) = v178;
    v53 = v173;
    *(v3 + 1208) = v172;
    *(v3 + 1224) = v53;
    v54 = v175;
    *(v3 + 1240) = v174;
    *(v3 + 1256) = v54;
    v55 = v171;
    *(v3 + 1176) = v170;
    *(v3 + 1192) = v55;
    v56 = *(v3 + 1320);
    *(v3 + 1320) = v179;
    v179 = 0;

    *(v3 + 1504) = v191;
    *(v3 + 1520) = v192;
    *(v3 + 1536) = v193;
    *(v3 + 1552) = v194;
    *(v3 + 1440) = v187;
    *(v3 + 1456) = v188;
    *(v3 + 1472) = v189;
    *(v3 + 1488) = v190;
    *(v3 + 1376) = v183;
    *(v3 + 1392) = v184;
    *(v3 + 1408) = v185;
    *(v3 + 1424) = v186;
    *(v3 + 1328) = v180;
    *(v3 + 1344) = v181;
    *(v3 + 1360) = v182;

    if (*(&v169 + 1))
    {
      sub_100008080(*(&v169 + 1));
    }

    if (SHIBYTE(v153) < 0)
    {
      operator delete(v152);
    }

    if (*(&v145 + 1))
    {
      sub_100008080(*(&v145 + 1));
    }

    if (*(&v138 + 1))
    {
      sub_100008080(*(&v138 + 1));
    }

    raven::RavenSolutionEvent::~RavenSolutionEvent(v60);
  }

  return 0;
}

void sub_1002AAA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  raven::RavenSolutionEvent::~RavenSolutionEvent(va);
  _Unwind_Resume(a1);
}

int64x2_t *sub_1002AAB18(int64x2_t *a1)
{
  a1->i8[0] = 0;
  sub_10029FBBC(&a1->i64[1]);
  a1[6].i16[4] = 0;
  a1[7].i64[1] = 0;
  a1[8].i64[0] = 0;
  a1[60] = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[61].i64[0] = 0;
  a1[61].i64[1] = 0x7FF8000000000000;
  sub_10029FC4C(a1);
  return a1;
}

int64x2_t sub_1002AAB6C(_OWORD *a1)
{
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v1 = sub_10029FBBC(a1);
  *(v1 + 96) = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v1 + 104) = result;
  *(v1 + 120) = result;
  *(v1 + 136) = result;
  *(v1 + 152) = result;
  *(v1 + 168) = 0x7FF8000000000000;
  *(v1 + 176) = 0;
  *(v1 + 184) = result;
  *(v1 + 200) = result;
  *(v1 + 216) = result;
  *(v1 + 232) = result;
  *(v1 + 248) = result;
  *(v1 + 264) = 0x7FF8000000000000;
  *(v1 + 272) = result;
  *(v1 + 288) = 0x7FF8000000000000;
  *(v1 + 296) = 0;
  *(v1 + 304) = result;
  *(v1 + 320) = result;
  *(v1 + 336) = result;
  *(v1 + 352) = result;
  *(v1 + 368) = 0x7FF8000000000000;
  *(v1 + 376) = 0;
  *(v1 + 384) = result;
  *(v1 + 400) = result;
  *(v1 + 416) = result;
  *(v1 + 432) = result;
  *(v1 + 448) = 0x7FF8000000000000;
  *(v1 + 456) = 0;
  *(v1 + 464) = result;
  *(v1 + 480) = result;
  *(v1 + 496) = result;
  *(v1 + 512) = result;
  *(v1 + 528) = result;
  *(v1 + 544) = result;
  *(v1 + 560) = result;
  *(v1 + 576) = 0;
  *(v1 + 584) = 0x7FF8000000000000;
  *(v1 + 592) = result;
  *(v1 + 608) = result;
  *(v1 + 624) = result;
  *(v1 + 640) = result;
  *(v1 + 656) = 0;
  *(v1 + 664) = 0x7FF8000000000000;
  *(v1 + 672) = result;
  *(v1 + 688) = result;
  *(v1 + 704) = result;
  *(v1 + 720) = result;
  *(v1 + 736) = 0;
  *(v1 + 744) = 0x7FF8000000000000;
  *(v1 + 752) = result;
  *(v1 + 768) = result;
  *(v1 + 784) = result;
  *(v1 + 800) = result;
  *(v1 + 816) = 0;
  *(v1 + 824) = 0x7FF8000000000000;
  *(v1 + 832) = result;
  *(v1 + 848) = result;
  return result;
}

double sub_1002AAC48(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  sub_10029FBBC(&v6);
  v2 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  v3 = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v4 = v7;
  *a1 = v6;
  *(a1 + 16) = v4;
  result = 0.0;
  *(a1 + 184) = 0u;
  a1 += 184;
  *(a1 - 88) = 0;
  *(a1 - 80) = 0x3FF0000000000000;
  *(a1 - 72) = 0u;
  *(a1 - 56) = 0u;
  *(a1 - 40) = 0u;
  *(a1 - 24) = 0u;
  *(a1 - 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0x3FF0000000000000;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0x3FF0000000000000;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0x3FE0000000000000;
  *(a1 + 424) = 0x3FE0000000000000;
  *(a1 + 432) = 0;
  return result;
}

double sub_1002AAD1C(uint64_t a1)
{
  memset(v6, 0, 96);
  sub_10029FBBC(v6);
  v2 = v6[3];
  *(a1 + 40) = v6[2];
  *(a1 + 56) = v2;
  v3 = v6[5];
  *(a1 + 72) = v6[4];
  *(a1 + 88) = v3;
  v4 = v6[1];
  *(a1 + 8) = v6[0];
  *(a1 + 24) = v4;
  sub_10029FC4C(a1 + 104);
  bzero(v6, 0x360uLL);
  sub_1002AAB6C(v6);
  memcpy((a1 + 1168), v6, 0x360uLL);
  return sub_1002AAC48(a1 + 2032);
}

double sub_1002AADB4(double a1, double a2)
{
  if (a1 < 0.0)
  {
    a1 = a1 + 360.0;
  }

  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  result = a2 - a1;
  if (result > 180.0)
  {
    return result + -360.0;
  }

  if (result < -180.0)
  {
    return result + 360.0;
  }

  return result;
}

void sub_1002AAE10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 100) |= 4u;
    v4 = *(a2 + 16);
    if (!v4)
    {
      operator new();
    }

    sub_1001F34E4(a1, v4);
    *(a2 + 100) |= 8u;
    v5 = *(a2 + 24);
    if (!v5)
    {
      operator new();
    }

    sub_1001F3908(a1 + 160, v5);
    v6 = *(a1 + 824);
    *(a2 + 100) |= 0x10u;
    v7 = *(a2 + 32);
    if (!v7)
    {
      operator new();
    }

    sub_10010E544(v6, v7);
    v8 = *(a2 + 100);
    *(a2 + 72) = *(a1 + 832);
    *(a2 + 48) = *(a1 + 840);
    *(a2 + 100) = v8 | 0x160;
    v9 = *(a2 + 56);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 44) |= 1u;
    *(a2 + 100) |= 0x100u;
    *(v9 + 44) |= 2u;
    *(v9 + 8) = vextq_s8(*(a1 + 848), *(a1 + 848), 8uLL);
    *(a2 + 100) |= 0x100u;
    *(v9 + 44) |= 4u;
    *(a2 + 100) |= 0x100u;
    v10 = *(a2 + 80);
    *(v9 + 44) |= 8u;
    *(v9 + 24) = *(a1 + 864);
    *(a2 + 100) |= 0x400u;
    if (!v10)
    {
      operator new();
    }

    v11 = *(a1 + 896);
    *(v10 + 28) |= 1u;
    *(v10 + 8) = v11;
    v12 = sub_1001F40C8((a1 + 928));
    if (!sub_10041ECEC(v12))
    {
      sub_10188265C();
    }

    v13 = *(a2 + 100);
    *(a2 + 76) = v12;
    *(a2 + 100) = v13 | 0x1800;
    v14 = *(a2 + 88);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a1 + 944);
    *(v14 + 36) |= 1u;
    *(a2 + 100) |= 0x1000u;
    v16 = *(a1 + 936);
    *(v14 + 36) |= 2u;
    *(v14 + 8) = v15;
    *(v14 + 16) = v16;
    *(a2 + 100) |= 0x1000u;
    v17 = *(a1 + 1528);
    v18 = *(a1 + 952);
    *(v14 + 36) |= 4u;
    *(v14 + 24) = v18;
    *(a2 + 100) |= 0x2000u;
    *(a2 + 73) = v17;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v19 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v20 = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "pLocation,Invalid pointer", v20, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B867D0();
    }
  }
}

void *sub_1002AB1A8(void *result)
{
  *result = off_102452518;
  result[1] = 0;
  result[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  result[3] = 0;
  return result;
}

uint64_t sub_1002AB1D4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v4 = *(v3 + 28);
  }

  if ((v4 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

void sub_1002AB240(double a1, double a2, double a3, double a4)
{
  v4 = a3;
  v5 = a1;
  if (a3 > 90.0)
  {
    return;
  }

  v6 = fabs(a1);
  if (v6 > 90.0 || a3 < -90.0)
  {
    return;
  }

  v7 = 360.0;
  v8 = a4 + 360.0;
  if (a4 >= 0.0)
  {
    v8 = a4;
  }

  v9 = a2 + 360.0;
  if (a2 >= 0.0)
  {
    v9 = a2;
  }

  v10 = v9 - v8;
  if (v10 <= 180.0)
  {
    if (v10 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = -360.0;
  }

  v10 = v10 + v7;
LABEL_12:
  if (fabs(v5 + a3) >= 0.0001)
  {
    v37 = a2;
    v39 = a4;
LABEL_17:
    v11 = v10;
    goto LABEL_18;
  }

  if (v6 < 0.0001 && 180.0 - fabs(v10) < 0.0001)
  {
    return;
  }

  v35 = fabs(v6 + -90.0) < 0.0001;
  if (v35)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  v39 = a4;
  v37 = a2;
  if (!v35 && 180.0 - fabs(v10) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (v5 <= a3)
  {
    v4 = a3 + -0.0001;
  }

  else
  {
    v5 = v5 + -0.0001;
  }

LABEL_18:
  v12 = v11 * 0.0174532925;
  v36 = v5;
  v13 = tan(v5 * 0.0174532925);
  v38 = v4;
  v14 = tan(v4 * 0.0174532925);
  v15 = v13 * 0.996647189;
  v16 = v14 * 0.996647189;
  v17 = atan(v15);
  v18 = atan(v16);
  v19 = __sincos_stret(v17);
  v20 = __sincos_stret(v18);
  v21 = 0;
  v22 = v20.__cosval * v19.__cosval;
  v40 = v12;
  while (1)
  {
    v23 = __sincos_stret(v12);
    v24 = sqrt((-(v19.__sinval * v20.__cosval) * v23.__cosval + v19.__cosval * v20.__sinval) * (-(v19.__sinval * v20.__cosval) * v23.__cosval + v19.__cosval * v20.__sinval) + v20.__cosval * v23.__sinval * (v20.__cosval * v23.__sinval));
    if (v24 < 2.22044605e-15)
    {
      break;
    }

    v25 = v22 * v23.__cosval + v19.__sinval * v20.__sinval;
    v26 = fabs(v25);
    if (fabs(v24) > 1.0 || v26 > 1.0)
    {
      break;
    }

    v28 = atan2(v24, v25);
    v29 = v22 * v23.__sinval / v24;
    if (v29 > 1.0)
    {
      break;
    }

    v30 = 1.0 - v29 * v29;
    if (fabs(v30) >= 2.22044605e-15)
    {
      v31 = v25 - v20.__sinval * (v19.__sinval + v19.__sinval) / v30;
      v32 = v30 * 0.000209550667 * ((v30 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v31 = -1.0;
      v32 = 0.0;
    }

    v33 = v40 + v29 * ((1.0 - v32) * 0.00335281066) * (v28 + v24 * v32 * (v31 + v25 * v32 * (v31 * v31 * 2.0 + -1.0)));
    if (vabdd_f64(v33, v12) > 0.000000001)
    {
      v12 = v33;
      if (v21++ < 0x31)
      {
        continue;
      }
    }

    return;
  }

  sub_100FE3ABC(v36, v37, v38, v39);
}

BOOL sub_1002AB68C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!sub_100072814(a1))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100B1AA60(buf);
      v15 = v39 >= 0 ? buf : *buf;
      *v28 = 136642819;
      v29 = *&v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, invalid location %{sensitive}s, fail", v28, 0xCu);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A337A4(a1);
    }

    return 0;
  }

  if (!sub_100072814(a2))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100B1AA60(buf);
      v17 = v39 >= 0 ? buf : *buf;
      *v28 = 136642819;
      v29 = *&v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, invalid reference location %{sensitive}s, fail", v28, 0xCu);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A338C8(a2);
    }

    return 0;
  }

  v8 = *(sub_1001AB6A8() + 3);
  if (*(a3 + 344) <= 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, warning, machContinuousTime not available in location private", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A339EC();
    }

    v11 = vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a2 + 76));
  }

  else
  {
    v9 = sub_1000081AC();
    v10 = *(a3 + 344);
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v11 = vabdd_f64(v9, v10);
    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a3 + 344);
      *buf = 134349312;
      *&buf[4] = v13;
      v37 = 2050;
      v38 = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, machContinuousTime %{public}.1f, age %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A33AE0((a3 + 344), v11);
    }
  }

  if (v11 > v8)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33C14();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v11;
      v37 = 2050;
      v38 = v8;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, age, %{public}.1f, threshold, %{public}.1f, fail", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A33C3C(v11, v8);
    }

    return 0;
  }

  v22 = sub_100117154(*(a1 + 4), *(a1 + 12), *(a2 + 4), *(a2 + 12));
  v20 = v22 <= a4;
  if (qword_1025D4620 != -1)
  {
    sub_101A33C14();
  }

  v23 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v24 = "fail";
    *buf = 134349826;
    *&buf[4] = v11;
    if (v22 <= a4)
    {
      v24 = "pass";
    }

    v37 = 2050;
    v38 = v22;
    v39 = 2050;
    v40 = a4;
    v41 = 2082;
    v42 = v24;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, age, %{public}.1f, distance, %{public}.1f, threshold, %{public}.1f, %{public}s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A33C14();
    }

    v25 = "fail";
    *v28 = 134349826;
    if (v22 <= a4)
    {
      v25 = "pass";
    }

    v29 = v11;
    v30 = 2050;
    v31 = v22;
    v32 = 2050;
    v33 = a4;
    v34 = 2082;
    v35 = v25;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, integrity, age, %{public}.1f, distance, %{public}.1f, threshold, %{public}.1f, %{public}s", v28, 42);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLWifiLocationIntegrityCalculator::shouldBumpLocationIntegrity(const CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const double)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  return v20;
}

uint64_t sub_1002ABC10(__n128 *a1, double *a2, void *a3, double *a4, double *a5, __n128 a6, _BYTE *a7)
{
  if (a1[7].n128_u8[8])
  {
    n128_f64 = a1[4].n128_f64;
    v14 = *a2 - a1[4].n128_f64[0];
    if (v14 >= *(sub_1000F7F38() + 12))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v23 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v24 = *a2 - *n128_f64;
        v30 = 134283521;
        v31 = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, did not propagate for, %{private}0.3f, seconds", &v30, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41184();
      }

      goto LABEL_42;
    }

    v15 = *a2 - a1[4].n128_f64[1];
    v16.n128_u64[0] = sub_1000F7F38()[13];
    if (v15 >= v16.n128_f64[0])
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v25 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v26 = *a2 - a1[4].n128_f64[1];
        v30 = 134283521;
        v31 = v26;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, did not update for, %{private}0.3f, seconds", &v30, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41270();
      }

      goto LABEL_42;
    }

    if ((sub_1002ABFE0(a1, a2, a3, v16) & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v27 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v30) = 0;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, unable to propagate", &v30, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B4135C();
      }

      goto LABEL_42;
    }

    if (sub_1002AC504(a1->n128_f64, a4, a5, v18, v17, a7))
    {
      if (!sub_1002F0AF0(a1, a4, a5))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B40DE8();
        }

        v20 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v30) = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, unable to update", &v30, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B41438();
        }

        goto LABEL_42;
      }
    }

    else
    {
      v19 = a1[1];
      *a1 = v19;
    }

    if ((sub_1001A4254(a1->n128_f64, &a1->n128_f64[1], v19) & 1) == 0)
    {
LABEL_42:
      sub_1000FB170(a1);
      return 0;
    }

    v28 = *(sub_1000F7F38() + 28);
    v29 = v28 * *(sub_1000F7F38() + 28);
    if (v29 >= a1->n128_f64[1])
    {
      v29 = a1->n128_f64[1];
    }

    a1->n128_f64[1] = v29;
    return 1;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v30) = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not propagate and update, not initialized", &v30, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B410A8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002ABFE0(uint64_t a1, double *a2, void *a3, __n128 a4)
{
  v5 = (a1 + 64);
  v6 = *(a1 + 64);
  *(a1 + 96) = *a2 - v6;
  if (*a2 < v6)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v8 = *v5;
      v9 = *a2;
      v38 = 134283777;
      *v39 = v8;
      *&v39[8] = 2049;
      *&v39[10] = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not propagate, filter's propagation timestamp, %{private}0.3f, is larger than current wifi timestamp, %{private}0.3f", &v38, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B41900();
      return 0;
    }

    return result;
  }

  *v5 = *a2;
  sub_1001A9800(&v38, a3 + 1);
  v13 = v41;
  sub_100102BC8(&v38);
  if (!v13)
  {
    v26 = *(a1 + 8) + *(a1 + 96) * *(a1 + 96) * *(a1 + 48);
    *(a1 + 16) = *a1;
    *(a1 + 24) = v26;
    if (qword_1025D4620 != -1)
    {
      sub_101B40BC4();
    }

    v27 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v28 = *v5;
      v38 = 134283521;
      *v39 = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, propagated, timestamp, %{private}0.3f", &v38, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B41814();
    }

    return 1;
  }

  sub_1001A9800(&v38, a3 + 1);
  v14 = *(*(*&v39[4] + (((v41 + v40 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v41 + v40 - 1) + 8);
  sub_100102BC8(&v38);
  sub_1001A9800(&v38, a3 + 1);
  v15 = *(*(*&v39[4] + (((v41 + v40 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v41 + v40 - 1));
  sub_100102BC8(&v38);
  v16 = (*(*a3 + 16))(a3, a2);
  v17 = *(a1 + 80);
  if (v14 >= v17)
  {
    v18 = v16;
    *(a1 + 88) = v14 - v17;
    v19 = (a1 + 88);
    v20 = *(a1 + 112);
    *(a1 + 80) = v14;
    if (v14 - v17 <= *(sub_1000F7F38() + 15))
    {
      v24 = v15 - v20;
      v25 = *v19;
      if (*v19 != 0.0)
      {
        *(a1 + 104) = 0;
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40BC4();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 88);
        v23 = *(a1 + 104);
        v38 = 134283777;
        *v39 = v22;
        *&v39[8] = 2049;
        *&v39[10] = v23;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, baro outage time interval, %{private}0.3f, altitude change over outage, %{private}0.3f", &v38, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41638();
      }

      v24 = v15 - *(a1 + 112) - *(a1 + 104);
      *(a1 + 104) = 0;
      v25 = *(a1 + 88);
    }

    *(a1 + 112) = v15;
    v31 = fabs(v24);
    v32 = (v31 < 2.5) & v18;
    if (v25 == 0.0)
    {
      if (v32)
      {
        goto LABEL_35;
      }
    }

    else if ((v31 / v25 > *(sub_1000F7F38() + 6)) | v32 & 1)
    {
LABEL_35:
      v33 = *a1;
      v34 = 32;
LABEL_38:
      v35 = *(a1 + 8) + *(a1 + 96) * *(a1 + 96) * *(a1 + v34);
      *(a1 + 16) = v33;
      *(a1 + 24) = v35;
      if (qword_1025D4620 != -1)
      {
        sub_101B40BC4();
      }

      v36 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v37 = *v5;
        v38 = 134283521;
        *v39 = v37;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, propagated, timestamp, %{private}0.3f", &v38, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41728();
      }

      return 1;
    }

    v33 = v24 + *a1;
    v34 = 40;
    goto LABEL_38;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101B40BC4();
  }

  v29 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 80);
    v38 = 134283777;
    *v39 = v30;
    *&v39[8] = 2049;
    *&v39[10] = v14;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not propagate, filter's relative altitude timestamp, %{private}0.3f, is larger than current relative altitude timestamp, %{private}0.3f", &v38, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B41514((a1 + 80), v14);
    return 0;
  }

  return result;
}

uint64_t sub_1002AC504(double *a1, double *a2, double *a3, __n128 a4, uint64_t a5, _BYTE *a6)
{
  v9 = sub_1001A4254(a2, a3, a4);
  v10 = v9;
  v11 = a1[12];
  if (v11 <= 0.0)
  {
    v13 = 1;
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = *a6 & v13;
    return v14 & 1;
  }

  v12 = vabdd_f64(*a2, *a1) / v11;
  v13 = v12 < *(sub_1000F7F38() + 16);
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1002AC598(uint64_t a1, uint64_t *a2, double *a3, __n128 a4)
{
  if (*(a1 + 120) != 1)
  {
    return 0;
  }

  result = sub_1001A4254(a1, (a1 + 8), a4);
  if (result)
  {
    *a2 = *a1;
    v8 = *(sub_1000F7F38() + 8) * sqrt(*(a1 + 8));
    v9 = *(sub_1000F7F38() + 9);
    if (v8 >= v9)
    {
      v9 = v8;
    }

    *a3 = v9;
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v11 = *a2;
      v12 = *a3;
      v13 = 134283777;
      v14 = v11;
      v15 = 2049;
      v16 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, estimated altitude, %{private}0.3f, uncertainty, %{private}0.3f", &v13, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B41AD4();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002AC6F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_1002AC76C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452518;
  sub_1002AC6F0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

BOOL sub_1002AC7D4(float64_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = sqrt(a9 * a9 + a8 * a8);
  if (v11 <= 70000.0)
  {
    if (vabdd_f64(a5, a1[3]) <= 0.005)
    {
      v26.f64[0] = *a1;
      cosval = a1[4];
    }

    else
    {
      a1[2] = a5 * 0.0174532925;
      a1[3] = a5;
      v22 = __sincos_stret(a5 * 0.0174532925);
      cosval = v22.__cosval;
      v23 = v22.__sinval * -0.00669437999 * v22.__sinval + 1.0;
      v24 = sqrt(v23);
      v25.f64[0] = v23 * v24;
      v25.f64[1] = v24;
      v26 = vdivq_f64(xmmword_101D16770, v25);
      *a1 = v26;
      a1[4] = v22.__cosval;
    }

    v27 = v26.f64[0] + a7;
    v28 = 0.0;
    v29 = a8 / v27;
    if (fabs(cosval) >= 0.0001)
    {
      v28 = a9 / (cosval * (a1[1] + a7));
    }

    *a2 = a5 + v29 * 57.2957795;
    *a3 = a6 + v28 * 57.2957795;
    *a4 = a7 + a10;
    v30 = *a2;
    if (*a2 > 90.0)
    {
      *a2 = 180.0 - v30;
      *a3 = *a3 + 180.0;
      v30 = *a2;
    }

    if (v30 >= -90.0)
    {
      v31 = *a3;
    }

    else
    {
      *a2 = -180.0 - v30;
      v31 = *a3 + 180.0;
      *a3 = v31;
    }

    if (v31 > -180.0)
    {
      if (v31 <= 180.0)
      {
        return v11 <= 70000.0;
      }
    }

    else
    {
      v31 = v31 + 360.0;
    }

    if (v31 > 180.0)
    {
      v31 = v31 + -360.0;
    }

    *a3 = v31;
  }

  return v11 <= 70000.0;
}

uint64_t sub_1002AC9D0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 16);
      v6 = *(v5 + 23);
      v7 = v6;
      v8 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v9 = *(v5 + 23);
      }

      else
      {
        v9 = v8;
      }

      if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v7 = *(v5 + 23);
      }

      else
      {
        v10 = 1;
      }

      if (v7 < 0)
      {
        v6 = v8;
      }

      v4 = (v4 + v10 + v6 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = v4;
  return v4;
}