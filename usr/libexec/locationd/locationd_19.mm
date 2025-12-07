void sub_100136A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100136AC8(uint64_t a1, int a2)
{
  if ((a2 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_101DB9D74[a2 - 1];
  }
}

uint64_t sub_100136AEC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(a1 + 16);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v7 = *(a1 + 20);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_22:
    v9 = *(a1 + 24);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_100136BE4(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], v4, a4);
      if ((v5[8] & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], v4, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, v4, a4);
}

uint64_t sub_100136C8C(uint64_t a1, int a2, int a3)
{
  v6 = a1 + 104;
  (*(*(a1 + 104) + 16))(a1 + 104);
  *(a1 + 400) = CFAbsoluteTimeGetCurrent();
  *(a1 + 408) = a2;
  *(a1 + 412) = a3;
  v7 = 1;
  if (a2 > 11804)
  {
    if (a2 <= 15651)
    {
      if (a2 > 15329)
      {
        if ((a2 - 15560) <= 0x3C && ((1 << (a2 + 56)) & 0x1004000100000001) != 0 || (a2 - 15330) <= 0x1E && ((1 << (a2 + 30)) & 0x40100001) != 0)
        {
          goto LABEL_61;
        }

        v10 = 15460;
        goto LABEL_51;
      }

      if (a2 > 15054)
      {
        if ((a2 - 15100) <= 0x32 && ((1 << (a2 + 4)) & 0x4000000000401) != 0 || (a2 - 15230) <= 0x19 && ((1 << (a2 - 126)) & 0x2100001) != 0)
        {
          goto LABEL_61;
        }

        v10 = 15055;
        goto LABEL_51;
      }

      if (a2 != 11805)
      {
        if (a2 != 12150)
        {
          v10 = 15030;
          goto LABEL_51;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (a2 <= 18239)
      {
        if (a2 <= 15732)
        {
          if ((a2 - 15652) > 0x3B)
          {
            return (*(*v6 + 24))(v6, v7);
          }

          v8 = 1 << (a2 - 36);
          v9 = 0x800000000840101;
          goto LABEL_60;
        }

        if (a2 > 18049)
        {
          if (a2 == 18050 || a2 == 18100)
          {
            goto LABEL_61;
          }

          v10 = 18200;
LABEL_51:
          if (a2 != v10)
          {
            return (*(*v6 + 24))(v6, v7);
          }

          goto LABEL_61;
        }

        if (a2 != 15733)
        {
          v10 = 17150;
          goto LABEL_51;
        }

        goto LABEL_61;
      }

      if (a2 > 90120)
      {
        if (a2 > 515620)
        {
          if (a2 == 515621 || a2 == 515652)
          {
            goto LABEL_61;
          }

          v10 = 519150;
          goto LABEL_51;
        }

        if ((a2 - 90121) < 2)
        {
LABEL_61:
          LOBYTE(v7) = 0;
          goto LABEL_62;
        }

        v12 = 90603;
LABEL_55:
        if (a2 != v12)
        {
          return (*(*v6 + 24))(v6, v7);
        }

        goto LABEL_62;
      }

      if (a2 > 19089)
      {
        if (a2 == 19090)
        {
          goto LABEL_61;
        }

        v12 = 19150;
        goto LABEL_55;
      }

      if (a2 != 18240)
      {
        v10 = 19030;
        goto LABEL_51;
      }
    }

LABEL_62:
    sub_10013707C(a1, v7);
    v11 = 0;
    goto LABEL_63;
  }

  if (a2 > 2009)
  {
    if ((a2 - 2010) <= 0x3D && ((1 << (a2 + 38)) & 0x2488004000005401) != 0 || (a2 - 2101) <= 0x31 && ((1 << (a2 - 53)) & 0x2000000000011) != 0 || (a2 - 3015) < 2)
    {
      goto LABEL_61;
    }

    return (*(*v6 + 24))(v6, v7);
  }

  if (a2 <= 0x38)
  {
    if (((1 << a2) & 0x2000000029FLL) != 0)
    {
      goto LABEL_61;
    }

    if (((1 << a2) & 0x110000000000C60) != 0)
    {
      v11 = 1;
      sub_10013707C(a1, 1);
LABEL_63:
      sub_1001370F8(a1, v11);
      return (*(*v6 + 24))(v6, v7);
    }

    if (a2 == 8)
    {
      goto LABEL_62;
    }
  }

  if ((a2 - 61) > 0x27)
  {
    return (*(*v6 + 24))(v6, v7);
  }

  v8 = 1 << (a2 - 61);
  v9 = 0x800000103FLL;
LABEL_60:
  if ((v8 & v9) != 0)
  {
    goto LABEL_61;
  }

  return (*(*v6 + 24))(v6, v7);
}

void sub_100137068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013707C(uint64_t a1, char a2)
{
  v3 = (a1 + 104);
  (*(*(a1 + 104) + 16))(a1 + 104);
  v3[473] = a2;
  return (*(*v3 + 24))(v3);
}

uint64_t sub_1001370F8(uint64_t a1, char a2)
{
  v3 = (a1 + 104);
  (*(*(a1 + 104) + 16))(a1 + 104);
  v3[472] = a2;
  return (*(*v3 + 24))(v3);
}

void sub_100137174(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8F88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001371C8(uint64_t result)
{
  *result = off_1024B9000;
  *(result + 8) = 0;
  *(result + 16) = 4;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001371F4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v4 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_10013727C(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, v4, a4);
  }

  return result;
}

void sub_1001372E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10013733C(uint64_t a1)
{
  result = sub_100718F78(a1);
  if (result)
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    return byte_102659168;
  }

  return result;
}

void sub_100137378(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a2;
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#rfduty,setting duty cycle enable to %d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101775DB0(v3);
  }

  sub_1001324C4(v7);
  if (!sub_100132484(0x1Au))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v7[5] = 26;
  v9 |= 0x800004u;
  v6 = v8;
  if (!v8)
  {
    operator new();
  }

  *(v8 + 16) |= 1u;
  *(v6 + 8) = v3;
  sub_10013256C(a1, v7);
  sub_100133DCC(v7);
}

uint64_t sub_10013753C(uint64_t result)
{
  *result = off_1024B93C0;
  *(result + 12) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100137564(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  }

  return result;
}

void sub_100137580(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B93C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001375D4(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 55);
  isTypeInVehicle = CLMotionActivity::isTypeInVehicle();
  *(a1 + 55) = isTypeInVehicle;
  if (v4 != isTypeInVehicle)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1003115AC();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a2;
      v8[0] = 67174657;
      v8[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "L5Context,Motion,%{private}d", v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A652E8(a2);
    }

    sub_10017DC7C(a1);
  }
}

void sub_10013783C(uint64_t a1)
{
  *buf = 0;
  if (sub_10000608C(a1, buf, 1))
  {
    if (*(a1 + 3264) >= 0.0 && *(a1 + 3288) >= 0.0)
    {
      v2 = sub_1000081AC();
      v3 = v2 - *(a1 + 3264);
      if (v3 >= 3.0)
      {
        sub_100021AFC(v14);
        Current = CFAbsoluteTimeGetCurrent();
        v17 = 1;
        v18 = Current;
        v19 = sub_1000137E0();
        v20 = v2;
        v4 = v2 - *(a1 + 3288);
        if (v4 <= 15.0)
        {
          v15 = *(a1 + 3272);
          *(a1 + 3288) = v2;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v5 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 3264);
          v7 = *(a1 + 3288);
          v8 = *(a1 + 3272);
          *buf = 134350592;
          v42 = Current;
          v43 = 2050;
          v44 = v2;
          v45 = 2050;
          v46 = v6;
          v47 = 2050;
          v48 = v7;
          v49 = 2050;
          v50 = v3;
          v51 = 2050;
          v52 = v8;
          v53 = 2050;
          v54 = v4;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "DeadReckoning,%{public}.1lf,Notification sent,currentTime,%{public}.1lf,fLastPositionTimeStamp,%{public}.1lf,fLastGoodSpeedTime,%{public}.1lf,locTimeDiff,%{public}.1lf,fLastGoodSpeed,%{public}.1lf,velTimeDiff,%{public}.1lf", buf, 0x48u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A77C90(buf);
          v9 = *(a1 + 3264);
          v10 = *(a1 + 3288);
          v11 = *(a1 + 3272);
          v27 = 134350592;
          v28 = Current;
          v29 = 2050;
          v30 = v2;
          v31 = 2050;
          v32 = v9;
          v33 = 2050;
          v34 = v10;
          v35 = 2050;
          v36 = v3;
          v37 = 2050;
          v38 = v11;
          v39 = 2050;
          v40 = v4;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "DeadReckoning,%{public}.1lf,Notification sent,currentTime,%{public}.1lf,fLastPositionTimeStamp,%{public}.1lf,fLastGoodSpeedTime,%{public}.1lf,locTimeDiff,%{public}.1lf,fLastGoodSpeed,%{public}.1lf,velTimeDiff,%{public}.1lf", &v27, 72);
          v13 = v12;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::onGNSSOutage()", "%s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        *buf = 26;
        (*(*a1 + 152))(a1, buf, v14, 0, 0xFFFFFFFFLL, 0);

        if (v25)
        {
          sub_100008080(v25);
        }

        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v22)
        {
          sub_100008080(v22);
        }

        if (v21)
        {
          sub_100008080(v21);
        }
      }
    }
  }
}

void sub_100137B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100137BA0(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

void sub_100137C30(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = a2;
  CLProfilingIdentify();
  [objc_msgSend(*a3 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10199A360();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLGnssAssistanceMotion::onAccel", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10199A374();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistanceMotion::onAccel, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_100137DFC(a3, a1, v4);
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100137DFC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 - 31 >= 0xFFFFFFE2)
    {
      v5 = a3;
      v6 = (a2 + 16);
      v7 = a3;
      do
      {
        sub_1000423D4(a1 + 1000, v6 - 2);
        sub_1000423D4(a1 + 1072, v6 - 1);
        sub_1000423D4(a1 + 1144, v6);
        v6 += 6;
        --v7;
      }

      while (v7);
      if (*(a1 + 1064) >= *(a1 + 1008) && *(a1 + 1136) >= *(a1 + 1080) && *(a1 + 1208) >= *(a1 + 1152))
      {
        v8 = fabsf(sub_100138268(a1 + 1000));
        v9 = fabsf(sub_100138268(a1 + 1072));
        v10 = fabsf(sub_100138268(a1 + 1144));
        if (v8 < 1.0e-12 || v9 < 1.0e-12 || v10 < 1.0e-12)
        {
          *(a1 + 628) = 1;
          if (qword_1025D4650 != -1)
          {
            sub_10199A148();
          }

          v11 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v39 = v8;
            v40 = 2048;
            v41 = v9;
            v42 = 2048;
            v43 = v10;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning IsAccelStuck,1,vx,%e,vy,%e,vz,%e", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_10199A02C();
            }

            v30 = 134218496;
            v31 = v8;
            v32 = 2048;
            v33 = v9;
            v34 = 2048;
            v35 = v10;
            LODWORD(v27) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning IsAccelStuck,1,vx,%e,vy,%e,vz,%e", COERCE_DOUBLE(&v30), v27, v28);
            v26 = v25;
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::onAccel(const CLAccelerometer::Sample *, unsigned int)", "%s\n", v25);
            if (v26 != buf)
            {
              free(v26);
            }
          }

          v13 = (a2 + 16);
          *&v12 = 134218752;
          v29 = v12;
          do
          {
            if (qword_1025D4650 != -1)
            {
              sub_10199A02C();
            }

            v14 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v15 = *(v13 - 2);
              v16 = *(v13 - 2);
              v17 = *(v13 - 1);
              v18 = *v13;
              *buf = v29;
              v39 = v15;
              v40 = 2048;
              v41 = v16;
              v42 = 2048;
              v43 = v17;
              v44 = 2048;
              v45 = v18;
              _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "IsAccelStuck,1,t,%.4lf,ax,%.9f,ay,%.9f,az,%.9f", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4650 != -1)
              {
                sub_10199A02C();
              }

              v19 = *(v13 - 2);
              v20 = *(v13 - 2);
              v21 = *(v13 - 1);
              v22 = *v13;
              v30 = v29;
              v31 = v19;
              v32 = 2048;
              v33 = v20;
              v34 = 2048;
              v35 = v21;
              v36 = 2048;
              v37 = v22;
              LODWORD(v27) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "IsAccelStuck,1,t,%.4lf,ax,%.9f,ay,%.9f,az,%.9f", COERCE_DOUBLE(&v30), v27, *&v29, *(&v29 + 1));
              v24 = v23;
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::onAccel(const CLAccelerometer::Sample *, unsigned int)", "%s\n", v23);
              if (v24 != buf)
              {
                free(v24);
              }
            }

            v13 += 6;
            --v5;
          }

          while (v5);
          sub_1009B91A8(a1);
        }

        else
        {
          *(a1 + 628) = 0;
        }
      }
    }
  }
}

float sub_100138268(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = 0.0;
  if (v1 >= 2)
  {
    v3 = *(a1 + 56);
    v4 = 0.0;
    v5 = *(a1 + 64);
    v6 = 0.0;
    do
    {
      v7 = *(*(*(a1 + 32) + ((v3 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v3 & 0x3FF)) - (*(a1 + 16) / v1);
      v6 = v6 + (v7 * v7);
      v4 = v4 + v7;
      ++v3;
      --v5;
    }

    while (v5);
    return (v6 - ((v4 * v4) / v1)) / (v1 - 1);
  }

  return result;
}

void sub_1001382E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100138344(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_100138330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_100138344(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1001383F8(a2, __p, v5 - __p);
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(a1);

    sub_101602EF8(a2);
  }
}

void sub_1001383DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

qmi::MessageBase *sub_1001383F8(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0xD0u);
  return a1;
}

void sub_10013843C(uint64_t a1, qmi::MessageBase *a2)
{
  v14[0] = 0;
  sub_1001385C0(a2, 0x10u, v14);
  v12[0] = 0;
  sub_1001385C0(a2, 0x11u, v12);
  v10[0] = 0;
  sub_1001385C0(a2, 0x12u, v10);
  v8[0] = 0;
  sub_1001385C0(a2, 0x13u, v8);
  if (qword_1025D4650 != -1)
  {
    sub_101607500();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    if (v14[0])
    {
      v4 = v15;
    }

    else
    {
      v4 = -1;
    }

    if (v12[0])
    {
      v5 = v13;
    }

    else
    {
      v5 = -1;
    }

    if (v10[0])
    {
      v6 = v11;
    }

    else
    {
      v6 = -1;
    }

    if (v8[0])
    {
      v7 = v9;
    }

    else
    {
      v7 = -1;
    }

    *buf = 68290050;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1026;
    v21 = v4;
    v22 = 1026;
    v23 = v5;
    v24 = 1026;
    v25 = v6;
    v26 = 1026;
    v27 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#wwanAntTuneL5Blanking,report, L5BestDurationMsec:%{public}d, L5OtherDurationMsec:%{public}d, L5WorstDurationMsec:%{public}d, wwanAntTuneL5BlankingDurationMsec:%{public}d}", buf, 0x2Au);
  }
}

int *sub_1001385C0(qmi::MessageBase *a1, unsigned __int16 a2, uint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (!result)
  {
    return result;
  }

  if (v5 < 4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = *result;
  if (v5 != 4)
  {
LABEL_8:
    *(a3 + 4) = v6;
    *a3 = 0;
    return result;
  }

  if (*a3 != 1)
  {
    *a3 = 1;
  }

  *(a3 + 4) = v6;
  return result;
}

void sub_100138620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 616);
  if (v5)
  {
    sub_1002976DC(v5);
    v6 = *(a1 + 64);
    if (v6)
    {
      (*(*v6 + 48))(v6, a2);
      v7 = *(v4 + 616);

      sub_1017B853C(v7);
      return;
    }

LABEL_10:
    sub_1000CF05C();
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(*v8 + 48);

  v9();
}

uint64_t **sub_1001386F4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000432E8("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10013874C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 32);
      if (v4)
      {
        *(v3 - 24) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 96);
      *(v3 - 96) = 0;
      if (v5)
      {
        operator delete();
      }

      v6 = *(v3 - 120);
      if (v6)
      {
        *(v3 - 112) = v6;
        operator delete(v6);
      }

      v3 -= 144;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1001387D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 784) = *(a2 + 16);
  *(a1 + 792) = sub_10013E724(a2 + 40);
  sub_10013F360(*a1 + 8, a2);
  sub_10013E784(a1 + 2752, a2 + 40);
  v5 = *(a1 + 1136);
  if (v5)
  {
    sub_10013F4F8(v5, a2, v4);
  }

  result = *(a1 + 392);
  if (result)
  {
    v7 = *(*result + 48);

    return v7();
  }

  return result;
}

void sub_100138888(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = *a2;
  if (*a2)
  {
    v6 = *(v3 + 216);
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(v3 + 24);
    if (!v7)
    {
      v7 = *(qword_102637FA0 + 24);
    }

    v8 = *(v7 + 48);
    if ((v8 & 2) != 0)
    {
      v9 = v8 & 1;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_6:
      v9 = 0;
      if ((v6 & 0x10) != 0)
      {
LABEL_24:
        v15 = sub_10012BF30();
        v16 = v9 ^ 1;
        if (!*(a1 + 1416))
        {
          v16 = 1;
        }

        if (v16)
        {
          goto LABEL_105;
        }

        v17 = *(*a2 + 24);
        if (!v17)
        {
          v17 = *(qword_102637FA0 + 24);
        }

        v18 = *(v17 + 16);
        if (!v18)
        {
          v18 = *(qword_102637238 + 16);
        }

        v19 = *(v18 + 40);
        v20 = sqrt(*(v18 + 48) * *(v18 + 48) + *(v18 + 56) * *(v18 + 56));
        if (v19 <= 0.0)
        {
          v23 = 0;
        }

        else
        {
          v21 = v19 < INFINITY;
          if (v19 > INFINITY)
          {
            v21 = 1;
          }

          v22 = v20 > 0.0;
          if (v20 > 400.0)
          {
            v22 = 0;
          }

          v23 = v21 && v22;
        }

        v24 = *(v18 + 8);
        v25 = *(v18 + 16);
        v113 = sub_10012F6D4(*(v18 + 76));
        if ((*(a1 + 1736) & 1) != 0 || *(a1 + 1737) == 1)
        {
          v26 = sub_1016208D0(*(v18 + 88));
        }

        else
        {
          v26 = 5;
        }

        v27 = fabs(v24);
        v28 = fabs(v25);
        v29 = sub_10012BF58(*(v17 + 40));
        v31 = v29;
        if (*(a1 + 1736))
        {
          v32 = 0;
        }

        else
        {
          v32 = *(a1 + 1737) ^ 1;
        }

        v33 = v27 + v28;
        v34 = -1.0;
        v112 = v29;
        if (*(a1 + 1681) & 1) != 0 || *(a1 + 1680) == 1 && *(a1 + 1337) != 1 || ((v32 | *(a1 + 1724)))
        {
          v35 = 1;
LABEL_50:
          if (v33 >= 0.0001)
          {
            v114 = v23 & v35;
          }

          else
          {
            v114 = 0;
          }

          if (sub_10006FB38(v29, v30) && *(a1 + 1338) == 1 && v114 && *(v18 + 48) <= *(a1 + 1340) && (*(a1 + 2912) & 1) == 0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1002981B4();
            }

            v36 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#timingadvance,GNSS is active,query timing advance", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101770DE8();
            }

            [*(a1 + 2920) setNextFireDelay:*(a1 + 1344)];
            sub_1002A8224(*(a1 + 2656));
            *(a1 + 2912) = 1;
          }

          if (qword_1025D4650 != -1)
          {
            sub_100154094();
          }

          v37 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            v38 = *(a1 + 1721);
            v39 = *(v17 + 8);
            if (!v39)
            {
              v39 = *(qword_102637238 + 8);
            }

            v40 = v39[1];
            v42 = v39[6];
            v41 = v39[7];
            v43 = *(v18 + 8);
            v44 = *(v18 + 16);
            v45 = *(v18 + 24);
            v46 = *(v18 + 40);
            v47 = *(v17 + 32);
            *buf = 67244545;
            *&buf[4] = v114;
            *&buf[8] = 1026;
            *&buf[10] = v23;
            LOWORD(v145) = 1026;
            *(&v145 + 2) = v33 < 0.0001;
            HIWORD(v145) = 1026;
            *v146 = v35;
            *&v146[4] = 1026;
            *&v146[6] = v38;
            v147 = 2050;
            v148 = v34;
            v149 = 2050;
            v150 = v40;
            v151 = 2050;
            v152 = v42;
            v153 = 2050;
            v154 = v41;
            v155 = 2053;
            v156 = v43;
            v157 = 2053;
            v158 = v44;
            v159 = 2049;
            v160 = v45;
            v161 = 2050;
            v162 = v20;
            v163 = 2050;
            v164 = v46;
            v165 = 1026;
            v166 = v113;
            v167 = 1026;
            v168 = v26;
            v169 = 1026;
            v170 = v112;
            v171 = 2050;
            v172 = v47;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "#gpsd,pvtm,yield,%{public}d,isPrecise,%{public}d,isNullIsland,%{public}d,isRobust,%{public}d,isContinuous,%{public}d,timeSinceStrongSec,%{public}.1f,gpsTimeNs,%{public}llu,basebandTimeNs,%{public}llu,basebandTimeUncNs,%{public}llu,lat,%{sensitive}.6f,lon,%{sensitive}.6f,altWgs84,%{private}.1f,drms,%{public}.1f,vertUnc,%{public}.1f,rel,%{public}d,content,%{public}d,estTech,%{public}d,spoofFlags,0x%{public}llx", buf, 0x96u);
          }

          v48 = v26;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_100154094();
            }

            v91 = *(a1 + 1721);
            v92 = *(v17 + 8);
            if (!v92)
            {
              v92 = *(qword_102637238 + 8);
            }

            v93 = v92[1];
            v95 = v92[6];
            v94 = v92[7];
            v96 = *(v18 + 8);
            v97 = *(v18 + 16);
            v98 = *(v18 + 24);
            v99 = *(v18 + 40);
            v100 = *(v17 + 32);
            LODWORD(v124) = 67244545;
            DWORD1(v124) = v114;
            WORD4(v124) = 1026;
            *(&v124 + 10) = v23;
            HIWORD(v124) = 1026;
            LODWORD(v125) = v33 < 0.0001;
            WORD2(v125) = 1026;
            *(&v125 + 6) = v35;
            WORD5(v125) = 1026;
            HIDWORD(v125) = v91;
            *v126 = 2050;
            *&v126[2] = v34;
            *&v126[10] = 2050;
            *&v126[12] = v93;
            *&v126[20] = 2050;
            *&v126[22] = v95;
            *&v126[30] = 2050;
            *v127 = v94;
            *&v127[8] = 2053;
            *&v127[10] = v96;
            v128 = 2053;
            *v129 = v97;
            *&v129[8] = 2049;
            *&v129[10] = v98;
            *&v129[18] = 2050;
            v130 = *&v20;
            LOWORD(v131) = 2050;
            *(&v131 + 2) = v99;
            WORD5(v131) = 1026;
            HIDWORD(v131) = v113;
            LOWORD(v132) = 1026;
            *(&v132 + 2) = v26;
            HIWORD(v132) = 1026;
            *v133 = v112;
            *&v133[4] = 2050;
            *&v133[6] = v100;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#gpsd,pvtm,yield,%{public}d,isPrecise,%{public}d,isNullIsland,%{public}d,isRobust,%{public}d,isContinuous,%{public}d,timeSinceStrongSec,%{public}.1f,gpsTimeNs,%{public}llu,basebandTimeNs,%{public}llu,basebandTimeUncNs,%{public}llu,lat,%{sensitive}.6f,lon,%{sensitive}.6f,altWgs84,%{private}.1f,drms,%{public}.1f,vertUnc,%{public}.1f,rel,%{public}d,content,%{public}d,estTech,%{public}d,spoofFlags,0x%{public}llx", &v124, 150);
            v102 = v101;
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v101);
            if (v102 != buf)
            {
              free(v102);
            }
          }

          *(a1 + 1744) |= *(v17 + 32);
          *&v124 = 0;
          *(&v124 + 1) = &v124;
          *&v125 = 0x16812000000;
          *(&v125 + 1) = sub_100047CAC;
          *v126 = sub_1000488A4;
          *&v126[8] = 0;
          v126[16] = 0;
          v143 = 0;
          if (v114)
          {
            if (sub_100298C60(v26))
            {
              *(a1 + 1728) = v15;
            }

            if ((*(a1 + 1721) & 1) == 0)
            {
              *(a1 + 1721) = 1;
              if (qword_1025D4650 != -1)
              {
                sub_100154094();
              }

              v49 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#gpsd,handlePvtm,yielding first post-discontinuity fix", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1017700B0(buf);
                LOWORD(v118) = 0;
                LODWORD(v111) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gpsd,handlePvtm,yielding first post-discontinuity fix", &v118, v111);
                v106 = v105;
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v105);
                if (v106 != buf)
                {
                  free(v106);
                }
              }
            }

            sub_10029DB38(*(&v124 + 1) + 48);
            v50 = *(&v124 + 1);
            if ((*(*(&v124 + 1) + 352) & 1) == 0)
            {
              sub_100173BA0();
            }

            v51 = (*(&v124 + 1) + 48);
            sub_1002A743C(v17, *(&v124 + 1) + 48, (a1 + 2352));
            *(v50 + 344) = *(a1 + 1744);
            v52 = *(v17 + 8);
            if (!v52)
            {
              v52 = *(qword_102637238 + 8);
            }

            sub_10029DD04(a1, v52);
            if (v50 + 296 != a1 + 2112)
            {
              *(v50 + 328) = *(a1 + 2144);
              sub_100294BE4((v50 + 296), *(a1 + 2128), 0);
            }

            *(v50 + 336) = v48;
            v53 = *v51;
            v54 = *(v50 + 64);
            v55 = *(v50 + 96);
            *(a1 + 1896) = *(v50 + 80);
            *(a1 + 1912) = v55;
            *(a1 + 1864) = v53;
            *(a1 + 1880) = v54;
            v56 = *(v50 + 112);
            v57 = *(v50 + 128);
            v58 = *(v50 + 160);
            *(a1 + 1960) = *(v50 + 144);
            *(a1 + 1976) = v58;
            *(a1 + 1928) = v56;
            *(a1 + 1944) = v57;
            v59 = *(v50 + 176);
            v60 = *(v50 + 192);
            v61 = *(v50 + 224);
            *(a1 + 2024) = *(v50 + 208);
            *(a1 + 2040) = v61;
            *(a1 + 1992) = v59;
            *(a1 + 2008) = v60;
            v62 = *(v50 + 240);
            v63 = *(v50 + 256);
            v64 = *(v50 + 272);
            *(a1 + 2104) = *(v50 + 288);
            *(a1 + 2072) = v63;
            *(a1 + 2088) = v64;
            *(a1 + 2056) = v62;
            if ((a1 + 1864) != v51)
            {
              *(a1 + 2144) = *(v50 + 328);
              sub_100294BE4((a1 + 2112), *(v50 + 312), 0);
            }

            *(a1 + 2152) = *(v50 + 336);
            *(a1 + 1744) = 0;
            if (sub_10002807C(*(v50 + 104), *(v50 + 112)))
            {
              if (qword_1025D4620 != -1)
              {
                sub_101770ECC();
              }

              v65 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136380931;
                *&buf[4] = "gps, null";
                *&buf[12] = 2081;
                v145 = "gpsd";
                _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101770EF4(buf);
                v118 = 136380931;
                v119 = "gps, null";
                v120 = 2081;
                v121 = "gpsd";
                LODWORD(v111) = 22;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", &v118, v111);
                v108 = v107;
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v107);
                if (v108 != buf)
                {
                  free(v108);
                }
              }

              AnalyticsSendEventLazy();
            }

            if (*(v50 + 104) == -1.0 && *(v50 + 112) == -1.0)
            {
              if (qword_1025D4620 != -1)
              {
                sub_101770ECC();
              }

              v66 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136380931;
                *&buf[4] = "gps, sentinel";
                *&buf[12] = 2081;
                v145 = "gpsd";
                _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101770EF4(buf);
                v118 = 136380931;
                v119 = "gps, sentinel";
                v120 = 2081;
                v121 = "gpsd";
                LODWORD(v111) = 22;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", &v118, v111);
                v110 = v109;
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v109);
                if (v110 != buf)
                {
                  free(v110);
                }
              }

              AnalyticsSendEventLazy();
            }
          }

          *(a1 + 1721) = v114;
          v67 = *(a1 + 2168);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10012CCAC;
          block[3] = &unk_10245D2D0;
          block[4] = &v124;
          block[5] = a1;
          dispatch_async(v67, block);
          sub_100139BB0(a1, *(v18 + 80));
          sub_10012C7A0(a1, v17);
          _Block_object_dispose(&v124, 8);
          if (v143 == 1)
          {
            sub_100134860(&v142);
          }

LABEL_105:
          if ((v6 & 0x10) != 0 && *(a1 + 1448))
          {
            if (qword_1025D4650 != -1)
            {
              sub_100154094();
            }

            v68 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "#gpsd,handlePvtm,yielding measurements", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101770F38();
            }

            v124 = 0u;
            v125 = 0u;
            *v126 = 0;
            *&v126[8] = -1;
            *&v126[16] = vdupq_n_s64(0x7FF8000000000000uLL);
            *v127 = *&v126[16];
            *&v127[16] = 0;
            *&v129[4] = *&v126[16];
            v130 = vneg_f32(0x3F0000003FLL);
            LODWORD(v131) = 2143289344;
            *(&v131 + 1) = 0x8000000000000000;
            __asm { FMOV            V1.2S, #-1.0 }

            v132 = _D1;
            *v133 = 0x7FF8000000000000;
            *&v133[8] = -1082130432;
            v140 = 0u;
            v141 = 0u;
            v134 = 0u;
            memset(v135, 0, sizeof(v135));
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v139 = 0u;
            v74 = *(*a2 + 32);
            if (!v74)
            {
              v74 = *(qword_102637FA0 + 32);
            }

            sub_10013C7E8(v74, &v124);
            v116[0] = 0;
            v116[1] = 0;
            v115 = v116;
            v75 = sub_10013E2E8(&v124, (a1 + 2112), &v115);
            if (*(a1 + 1912) == 1)
            {
              v77.f64[0] = *(a1 + 1920);
              sub_1002C89B8(&v124, (a1 + 2112), v77, *(a1 + 1928), *(a1 + 1936), v15);
            }

            v78 = *(&v136 + 1);
            if (v136 == *(&v136 + 1))
            {
              v82 = 999.0;
              v81 = 999.0;
              v80 = 999.0;
            }

            else
            {
              v79 = (v136 + 16);
              v80 = 999.0;
              v81 = 999.0;
              v82 = 999.0;
              do
              {
                if (*v79)
                {
                  if ((*(v79 - 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v79 - 2) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v79 - 1) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    v118 = (roundf(*(v79 - 1) / 5.0) * 5.0);
                    *buf = v79;
                    v83 = sub_1002AEEC4((a1 + 432), v79, &unk_101C66300, buf);
                    *buf = &v118;
                    v75 = sub_10006BEC4(v83 + 6, &v118, &unk_101C66300, buf);
                    ++*(v75 + 5);
                    v84 = *v79;
                    if (v84 <= 9)
                    {
                      if (((1 << v84) & 0x142) != 0)
                      {
                        v82 = *(v79 - 1);
                      }

                      else if (((1 << v84) & 0x288) != 0)
                      {
                        v80 = *(v79 - 1);
                      }

                      else if (v84 == 4)
                      {
                        v81 = *(v79 - 1);
                      }
                    }
                  }
                }

                v85 = v79 + 8;
                v79 += 24;
              }

              while (v85 != v78);
            }

            if (sub_10006FE30(v75, v76))
            {
              if (qword_1025D4650 != -1)
              {
                sub_100154094();
              }

              v86 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134349568;
                *&buf[4] = v82;
                *&buf[12] = 2050;
                v145 = *&v81;
                *v146 = 2050;
                *&v146[2] = v80;
                _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEFAULT, "#gpsd,handlePvtm,awd_agc_metric_dB,band,L1,%{public}.2f,band,G1,%{public}.2f,band,L5,%{public}.2f", buf, 0x20u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1017700B0(buf);
                v118 = 134349568;
                v119 = *&v82;
                v120 = 2050;
                v121 = *&v81;
                v122 = 2050;
                v123 = v80;
                LODWORD(v111) = 32;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,handlePvtm,awd_agc_metric_dB,band,L1,%{public}.2f,band,G1,%{public}.2f,band,L5,%{public}.2f", &v118, v111);
                v104 = v103;
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v103);
                if (v104 != buf)
                {
                  free(v104);
                }
              }
            }

            sub_10013F1F8(a1, &v124, &v115);
            v87 = *(a1 + 2968);
            if (v87 && sub_10013E4CC(v87, &v135[1]))
            {
              sub_1001B7B7C((a1 + 2968), 0);
            }

            v88 = *(a1 + 1448);
            if (!v88)
            {
              sub_1000CF05C();
            }

            (*(*v88 + 48))(v88, &v124);
            sub_1003C93BC(&v115, v116[0]);
            sub_10013ED9C(&v124);
          }

          return;
        }

        if (sub_1016AF834(v29))
        {
          *(a1 + 1721) = 0;
          *(a1 + 1728) = 0xC08F400000000000;
        }

        else if (*(a1 + 1721))
        {
          v34 = v15 - *(a1 + 1728);
          if (sub_100298C60(v26))
          {
            v89 = 1;
LABEL_158:
            v29 = sub_1016AF844(v113);
            v35 = v29 & v89;
            goto LABEL_50;
          }

          if (v31 == 3)
          {
            if (!v26 || v20 >= 40.0)
            {
              if (v20 >= 100.0)
              {
                v89 = v34 < 12.5;
              }

              else
              {
                v89 = v34 < 40.5;
              }

              goto LABEL_158;
            }

            v90 = 600.5;
          }

          else
          {
            if (v31 != 2)
            {
              goto LABEL_157;
            }

            if (sub_1016AF8A8(v26) && v20 < 40.0)
            {
              v90 = 10.5;
            }

            else
            {
              v90 = 5.5;
            }
          }

          v89 = v34 < v90;
          goto LABEL_158;
        }

        if (sub_1016AF884(v113))
        {
          v89 = sub_100298C60(v26);
          goto LABEL_158;
        }

LABEL_157:
        v89 = 0;
        goto LABEL_158;
      }
    }

    if (v9)
    {
      goto LABEL_24;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*a2 + 216);
      v13 = *(*a2 + 24);
      if (!v13)
      {
        v13 = *(qword_102637FA0 + 24);
      }

      v14 = *(v13 + 48);
      *buf = 67240960;
      *&buf[4] = (v12 >> 3) & 1;
      *&buf[8] = 1026;
      *&buf[10] = (v14 >> 1) & 1;
      LOWORD(v145) = 1026;
      *(&v145 + 2) = v14 & 1;
      HIWORD(v145) = 1026;
      *v146 = (v12 >> 4) & 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#gpsd,handlePvtm,missing expected fields,hasFix,%{public}d,hasPos,%{public}d,hasTime,%{public}d,hasMeas,%{public}d", buf, 0x1Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101770CA8();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#gpsd,handlePvtm,nullptr", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10177101C();
    }
  }
}

void sub_100139B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a27, 8);
  if (a65 == 1)
  {
    sub_100134860(&a64);
  }

  _Unwind_Resume(a1);
}

int64x2_t *sub_100139BB0(int64x2_t *result, int a2)
{
  if ((a2 & 0x18) != 0)
  {
    result[41] = vaddq_s64(result[41], vdupq_n_s64(1uLL));
  }

  if ((a2 & 0x20) != 0)
  {
    ++result[44].i64[1];
    if ((a2 & 0x40) == 0)
    {
LABEL_5:
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((a2 & 0x40) == 0)
  {
    goto LABEL_5;
  }

  ++result[44].i64[0];
  if ((a2 & 0x80) == 0)
  {
LABEL_6:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  ++result[43].i64[1];
  if ((a2 & 0x100) == 0)
  {
LABEL_7:
    if ((a2 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  ++result[43].i64[0];
  if ((a2 & 0x200) == 0)
  {
LABEL_8:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  ++result[42].i64[0];
  if ((a2 & 0x400) == 0)
  {
LABEL_9:
    if ((a2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  ++result[46].i64[0];
  if ((a2 & 0x800) == 0)
  {
LABEL_10:
    if ((a2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  ++result[49].i64[1];
  if ((a2 & 0x1000) == 0)
  {
LABEL_11:
    if ((a2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  ++result[49].i64[0];
  if ((a2 & 4) == 0)
  {
LABEL_12:
    if ((a2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  ++result[46].i64[1];
  if ((a2 & 0x2000) == 0)
  {
LABEL_13:
    if ((a2 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  ++result[47].i64[1];
  if ((a2 & 0x40000) == 0)
  {
LABEL_14:
    if ((a2 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  ++result[48].i64[0];
  if ((a2 & 0x80000) == 0)
  {
LABEL_15:
    if ((a2 & 0x4000) == 0)
    {
      return result;
    }

LABEL_29:
    ++result[45].i64[1];
    return result;
  }

LABEL_28:
  ++result[48].i64[1];
  if ((a2 & 0x4000) != 0)
  {
    goto LABEL_29;
  }

  return result;
}

void sub_100139CD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D710;
  sub_100139D3C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100139D3C(void *result)
{
  if (qword_102637238 != result)
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

    result = v1[3];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_100139E08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D620;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100139E64(uint64_t a1, double *a2)
{
  v4 = sub_1000081AC();
  v5 = vabdd_f64(v4, *(a1 + 11704));
  if (a2[12] <= 0.0)
  {
    v20 = v5 < 1.5;
    v21 = sub_100125670(*(a1 + 480));
    sub_10013A050(a1 + 72, 0, v21, *(a1 + 11648), v20, v4, -1.0, -1.0);
    *(a1 + 1580) = 0;
  }

  else
  {
    v6 = v5 < 1.5;
    v7 = a2[4];
    v8 = a2[19];
    v9 = sub_100125670(*(a1 + 480));
    sub_10013A050(a1 + 72, 0, v9, *(a1 + 11648), v6, v7, v8, -1.0);
    sub_1002988A4(a2, 0, 0, v25);
    v10 = v25[7];
    *(a1 + 5744) = v25[6];
    *(a1 + 5760) = v10;
    *(a1 + 5776) = v26[0];
    *(a1 + 5788) = *(v26 + 12);
    v11 = v25[3];
    *(a1 + 5680) = v25[2];
    *(a1 + 5696) = v11;
    v12 = v25[5];
    *(a1 + 5712) = v25[4];
    *(a1 + 5728) = v12;
    v13 = v25[1];
    *(a1 + 5648) = v25[0];
    *(a1 + 5664) = v13;
    memcpy((a1 + 5808), v27, 0x201uLL);
    v14 = v28;
    v28 = 0u;
    v15 = *(a1 + 6336);
    *(a1 + 6328) = v14;
    if (v15)
    {
      sub_100008080(v15);
      v16 = *(&v28 + 1);
      v17 = v34[0];
      *(a1 + 6408) = v33;
      *(a1 + 6424) = v17;
      *(a1 + 6433) = *(v34 + 9);
      v18 = v30;
      *(a1 + 6344) = v29;
      *(a1 + 6360) = v18;
      v19 = v32;
      *(a1 + 6376) = v31;
      *(a1 + 6392) = v19;
      if (v16)
      {
        sub_100008080(v16);
      }
    }

    else
    {
      v22 = v34[0];
      *(a1 + 6408) = v33;
      *(a1 + 6424) = v22;
      *(a1 + 6433) = *(v34 + 9);
      v23 = v30;
      *(a1 + 6344) = v29;
      *(a1 + 6360) = v23;
      v24 = v32;
      *(a1 + 6376) = v31;
      *(a1 + 6392) = v24;
    }
  }
}

void sub_10013A050(uint64_t a1, int a2, int a3, int a4, int a5, double a6, float a7, double a8)
{
  if (sub_10001CF3C())
  {
    v16 = 15.0;
  }

  else
  {
    v16 = 5.0;
  }

  if (a8 <= 10.0 || a2 == 0)
  {
    if ((a8 > 10.0 || a8 < 0.0) && a2 == 0)
    {
      v22 = 0;
      *(a1 + 140) = 0;
      v21 = 1;
    }

    else
    {
      v21 = 0;
      v20 = *(a1 + 140) + 1;
      *(a1 + 140) = v20;
      v22 = v20 > 0x28;
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 140) = 0;
    v22 = 1;
  }

  if (!off_1025D53B8)
  {
    operator new();
  }

  v23 = 15.0;
  if (*(off_1025D53B8 + 1))
  {
    v23 = 50.0;
    if (!*off_1025D53B8)
    {
      v23 = 15.0;
    }
  }

  v24 = (*(a1 + 4) & a3);
  if (*(a1 + 88) == 1)
  {
    if ((*(a1 + 4) & a3) == 0 || v23 < a7)
    {
      sub_101753398(a1);
      *(a1 + 88) = 0;
      goto LABEL_31;
    }

    *(a1 + 128) = v16;
    if (a7 < 0.0)
    {
      goto LABEL_63;
    }

    if (*(a1 + 80))
    {
      if (a6 - *(a1 + 96) < 3.0)
      {
        *buf = a7;
        sub_10023F928(a1 + 8, buf);
        *(a1 + 96) = a6;
        v33 = *(a1 + 80);
        if (v33 >= *(a1 + 16) && (!v33 || *(a1 + 24) / v33 < 0.1))
        {
          *(a1 + 128) = 0x403F000000000000;
        }

        goto LABEL_63;
      }

      sub_1005A84D8((a1 + 40));
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *buf = a7;
      sub_10023F928(a1 + 8, buf);
    }

    else
    {
      *buf = a7;
      sub_10023F928(a1 + 8, buf);
    }

    *(a1 + 96) = a6;
LABEL_63:
    if (*(a1 + 112) >= 4)
    {
      *(a1 + 128) = 0x403F000000000000;
    }

    if (*(a1 + 136) >= 5u)
    {
      *(a1 + 128) = 0x4056800000000000;
    }

    if (a5 && *(a1 + 128) < 31.0)
    {
      *(a1 + 128) = 0x403F000000000000;
    }

    if (a4 == 2 && *(a1 + 128) < 11.0)
    {
      *(a1 + 128) = 0x4026000000000000;
    }

    goto LABEL_31;
  }

  if (v23 <= a7)
  {
    v24 = 0;
  }

  if (v24 == 1)
  {
    sub_101753398(a1);
    *(a1 + 88) = 1;
    *(a1 + 128) = v16;
  }

LABEL_31:
  if (a3)
  {
    if (*(a1 + 144) == 1)
    {
      *(a1 + 88) = 1;
    }

    if (*(a1 + 145) == 1)
    {
      *(a1 + 88) = 0;
    }
  }

  v25 = *(a1 + 104);
  v26 = a6 - v25;
  if (*(a1 + 88) == 1 && (v27 = *(a1 + 128), a6 - *(a1 + 120) > v27))
  {
    if (v25 <= 0.0)
    {
      goto LABEL_41;
    }

    if (v26 > v27)
    {
      if (v26 <= v27 + v27)
      {
LABEL_42:
        v28 = 1;
        goto LABEL_44;
      }

LABEL_41:
      ++*(a1 + 136);
      goto LABEL_42;
    }

    v28 = 0;
    *(a1 + 136) = 0;
  }

  else
  {
    v28 = 0;
  }

LABEL_44:
  if (qword_1025D4650 != -1)
  {
    sub_101753464();
  }

  v29 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 128);
    v31 = *(a1 + 88);
    v32 = *(a1 + 136);
    *buf = 67111680;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = v22;
    *&buf[14] = 1024;
    v47 = v21;
    v48 = 2048;
    v49 = a8;
    v50 = 1024;
    v51 = a3;
    v52 = 2048;
    v53 = v30;
    v54 = 1024;
    v55 = a4;
    v56 = 1024;
    v57 = v31;
    v58 = 1024;
    v59 = v28;
    v60 = 2048;
    v61 = v26;
    v62 = 1024;
    v63 = v32;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CPI,isLowPower,%d,isLowForAWhile,%d,isNotLowForAWhile,%d,ageOfPowerMode,%.1lf,isWiFiPowered,%d,scanInterval,%.1lf,signalEnv,%d,enabled,%d,requestAScan,%d,timeSinceLastWifiLoc,%.1lf,fEmptyResultCounter,%d", buf, 0x50u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101753464();
    }

    v34 = *(a1 + 128);
    v35 = *(a1 + 88);
    v36 = *(a1 + 136);
    LOWORD(v40) = 1024;
    *(&v40 + 2) = v22;
    HIWORD(v40) = 1024;
    *v41 = a8;
    *&v41[8] = 1024;
    LOWORD(v42) = HIWORD(v35);
    WORD1(v42) = 1024;
    HIDWORD(v42) = v28;
    *v43 = 2048;
    *&v43[2] = v26;
    v44 = 1024;
    v45 = v36;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "CPI,isLowPower,%d,isLowForAWhile,%d,isNotLowForAWhile,%d,ageOfPowerMode,%.1lf,isWiFiPowered,%d,scanInterval,%.1lf,signalEnv,%d,enabled,%d,requestAScan,%d,timeSinceLastWifiLoc,%.1lf,fEmptyResultCounter,%d", &v39, 80, 67111680, v40, v21, *&v41[2], a3, v34 >> 16, a4, v42, *v43);
    v38 = v37;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGpsCpiHandler::manageCPI(CFTimeInterval, float, const BOOL, const CFTimeInterval, const BOOL, CLSignalEnvironmentProvider_Type::SignalEnvironmentType, const BOOL)", "%s\n", v37);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  if (v28)
  {
    *buf = xmmword_101C885D0;
    LOBYTE(v47) = 0;
    sub_1006A7700(a1 + 152, buf);
    *(a1 + 120) = a6;
  }
}

uint64_t *sub_10013A5F4(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_10013A82C(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_10013A83C(uint64_t a1)
{
  sub_10001CAF4(buf);
  LOBYTE(v51) = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v51, 0xFFFFFFFFLL);
  v3 = (v2 & LOBYTE(v51));
  if (*v59)
  {
    sub_100008080(*v59);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,cacheCellularAWDMetrics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CAB58();
    }
  }

  *(a1 + 2648) = *(a1 + 2620);
  v5 = *(a1 + 2680);
  v6 = *(a1 + 2688);
  if (v5 >= v6)
  {
    v8 = *(a1 + 2672);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_10028C64C();
    }

    v12 = v6 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_1000B85D0(a1 + 2672, v14);
    }

    v15 = (v5 - v8) >> 2;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = *(a1 + 2640);
    v7 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = *(a1 + 2672);
    *(a1 + 2672) = v17;
    *(a1 + 2680) = v7;
    *(a1 + 2688) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = *(a1 + 2640);
    v7 = v5 + 4;
  }

  *(a1 + 2680) = v7;
  v19 = *(a1 + 2704);
  v20 = *(a1 + 2712);
  if (v19 >= v20)
  {
    v22 = *(a1 + 2696);
    v23 = v19 - v22;
    v24 = (v19 - v22) >> 2;
    v25 = v24 + 1;
    if ((v24 + 1) >> 62)
    {
      sub_10028C64C();
    }

    v26 = v20 - v22;
    if (v26 >> 1 > v25)
    {
      v25 = v26 >> 1;
    }

    v13 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
    v27 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v27 = v25;
    }

    if (v27)
    {
      sub_1000B85D0(a1 + 2696, v27);
    }

    v28 = (v19 - v22) >> 2;
    v29 = (4 * v24);
    v30 = (4 * v24 - 4 * v28);
    *v29 = *(a1 + 2636);
    v21 = v29 + 1;
    memcpy(v30, v22, v23);
    v31 = *(a1 + 2696);
    *(a1 + 2696) = v30;
    *(a1 + 2704) = v21;
    *(a1 + 2712) = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v19 = *(a1 + 2636);
    v21 = v19 + 4;
  }

  *(a1 + 2704) = v21;
  *(a1 + 2652) = *(a1 + 2624);
  *(a1 + 2656) = *(a1 + 2628);
  sub_10001CAF4(buf);
  LOBYTE(v51) = 0;
  v32 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v51, 0xFFFFFFFFLL);
  v33 = (v32 & LOBYTE(v51));
  if (*v59)
  {
    sub_100008080(*v59);
  }

  if (v33)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 2648);
      v36 = *(a1 + 2660);
      v37 = *(a1 + 2656);
      v38 = *(a1 + 2652);
      v39 = *(a1 + 2640);
      v40 = *(a1 + 2636);
      v41 = *(a1 + 2664);
      *buf = 67110656;
      *&buf[4] = v35;
      *v59 = 2048;
      *&v59[2] = v36;
      v60 = 2048;
      v61 = v37;
      v62 = 1024;
      v63 = v38;
      v64 = 1024;
      v65 = v39;
      v66 = 1024;
      v67 = v40;
      v68 = 1024;
      v69 = v41;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,cacheCellularAWDMetrics,BandInfo,%d,BW,%f,transmissionFrequency,%f,RAT,%d,RSRP,%d,SNR,%d,CurrentEpochCount,%d", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v42 = *(a1 + 2648);
      v43 = *(a1 + 2660);
      v44 = *(a1 + 2656);
      v45 = *(a1 + 2652);
      v46 = *(a1 + 2636);
      v47 = *(a1 + 2664);
      LODWORD(v51) = 67110656;
      HIDWORD(v51) = v42;
      *v52 = 2048;
      *&v52[2] = v43;
      *&v52[10] = 2048;
      LOWORD(v53) = HIWORD(v45);
      HIWORD(v53) = 1024;
      v54 = 1024;
      v55 = v46;
      v56 = 1024;
      v57 = v47;
      LODWORD(v50) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,cacheCellularAWDMetrics,BandInfo,%d,BW,%f,transmissionFrequency,%f,RAT,%d,RSRP,%d,SNR,%d,CurrentEpochCount,%d", &v51, v50, v51, *v52, *&v52[8], HIDWORD(v44), v53);
      v49 = v48;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::cacheCellularAWDMetrics()", "%s\n", v48);
      if (v49 != buf)
      {
        free(v49);
      }
    }
  }
}

void sub_10013AD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_10013AD30(uint64_t a1)
{
  v2 = *(a1 + 1344);
  v3 = *(a1 + 1368);
  if (!v2)
  {
    goto LABEL_9;
  }

  v4 = a1 + 1344;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 1344 || v3 < *(v4 + 32))
  {
LABEL_9:
    v9[0] = *(a1 + 1368);
    v10 = 0;
    sub_1002980C8(a1 + 1336, v9, v9);
  }

  result = sub_1001386F4(a1 + 1336, (a1 + 1368));
  *result = (*result + 1);
  return result;
}

uint64_t sub_10013ADC8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 1)
        {
          goto LABEL_21;
        }

        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v17;
        *(a1 + 48) |= 1u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 17)
        {
          *(this + 1) = v11 + 1;
LABEL_28:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = *v17;
          *(a1 + 48) |= 2u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 25)
          {
            *(this + 1) = v12 + 1;
LABEL_32:
            *v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = *v17;
            *(a1 + 48) |= 4u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 33)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_36:
      *v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v17;
      *(a1 + 48) |= 8u;
      v14 = *(this + 1);
      v9 = *(this + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_40:
        v17[0] = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v17);
          if (!result)
          {
            return result;
          }

          v15 = v17[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v15 <= 1)
        {
          *(a1 + 48) |= 0x10u;
          *(a1 + 40) = v15;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_40;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_10013B064(uint64_t result, uint64_t a2, __n128 a3)
{
  if (*(result + 1608))
  {
    if ((*(a2 + 216) & 0x20) != 0)
    {
      v11 = 0;
      *buf = 0u;
      v10 = 0u;
      v5 = *(a2 + 40);
      if (!v5)
      {
        v5 = *(qword_102637FA0 + 40);
      }

      sub_10013B17C(v5, buf);
      v7[0] = *buf;
      v7[1] = v10;
      v8 = v11;
      v6 = *(result + 1608);
      if (!v6)
      {
        sub_1000CF05C();
      }

      (*(*v6 + 48))(v6, v7);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v3 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#gpsd,Indication missing power measurement", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101772314();
      }
    }
  }
}

double sub_10013B17C(uint64_t a1, double *a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  a2[1] = result;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a1 + 32);
    a2[3] = result;
    return result;
  }

LABEL_8:
  result = *(a1 + 24);
  a2[2] = result;
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_10013B1C4(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = *(a2 + 4);
  v3 = *(a1 + 8);
  if (*(v3 + 12))
  {
    v7 = v6;
  }

  sub_10012E65C(*v3 + 8, &v5);
  v4 = *(v3 + 1120);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_10013B238(v4, v8);
}

void sub_10013B238(void *a1, __int128 *a2)
{
  v4 = a1[4];
  v5 = a1[5];
  if (v4 >= v5)
  {
    v9 = a1[3];
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x666666666666666)
    {
      sub_10028C64C();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_10045EA08((a1 + 3), v13);
    }

    v14 = 40 * v10;
    v15 = *a2;
    v16 = a2[1];
    *(v14 + 32) = *(a2 + 4);
    *v14 = v15;
    *(v14 + 16) = v16;
    v8 = 40 * v10 + 40;
    v17 = a1[3];
    v18 = a1[4] - v17;
    v19 = v14 - v18;
    memcpy((v14 - v18), v17, v18);
    v20 = a1[3];
    a1[3] = v19;
    a1[4] = v8;
    a1[5] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  a1[4] = v8;
}

uint64_t sub_10013B340(double *a1)
{
  v1 = *a1;
  v2 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  v3 = (v2 - 1) < 0xFFFFFFFFFFFFFLL;
  v4 = *a1 < 0 && (v2 - 0x10000000000000) >> 53 < 0x3FF;
  if (*a1 >= 0)
  {
    v3 = 0;
  }

  v5 = v2 == 0x7FF0000000000000 || v3;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v5 = 1;
  }

  if ((v5 | v4))
  {
    return 0;
  }

  if (v1 < 5.0)
  {
    return 1;
  }

  if (v1 < 10.0)
  {
    return 2;
  }

  if (v1 < 15.0)
  {
    return 3;
  }

  if (v1 < 20.0)
  {
    return 4;
  }

  if (v1 < 25.0)
  {
    return 5;
  }

  if (v1 < 30.0)
  {
    return 6;
  }

  if (v1 < 35.0)
  {
    return 7;
  }

  if (v1 < 40.0)
  {
    return 8;
  }

  if (v1 < 45.0)
  {
    return 9;
  }

  if (v1 < 50.0)
  {
    return 10;
  }

  if (v1 < 55.0)
  {
    return 11;
  }

  if (v1 < 60.0)
  {
    return 12;
  }

  if (v1 < 65.0)
  {
    return 13;
  }

  if (v1 < 70.0)
  {
    return 14;
  }

  if (v1 < 75.0)
  {
    return 15;
  }

  if (v1 < 80.0)
  {
    return 16;
  }

  if (v1 < 85.0)
  {
    return 17;
  }

  if (v1 < 90.0)
  {
    return 18;
  }

  if (v1 < 95.0)
  {
    return 19;
  }

  if (v1 < 100.0)
  {
    return 20;
  }

  if (v1 < 110.0)
  {
    return 21;
  }

  if (v1 < 120.0)
  {
    return 22;
  }

  if (v1 < 130.0)
  {
    return 23;
  }

  if (v1 < 140.0)
  {
    return 24;
  }

  if (v1 < 150.0)
  {
    return 25;
  }

  if (v1 < 160.0)
  {
    return 26;
  }

  if (v1 < 170.0)
  {
    return 27;
  }

  if (v1 < 180.0)
  {
    return 28;
  }

  if (v1 < 190.0)
  {
    return 29;
  }

  if (v1 >= 200.0)
  {
    return 31;
  }

  return 30;
}

uint64_t sub_10013B658(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if (v8 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v29 = *(a1 + 36);
            v30 = *(a1 + 32);
            if (v30 >= v29)
            {
              if (v29 == *(a1 + 40))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v29 + 1);
                v29 = *(a1 + 36);
              }

              *(a1 + 36) = v29 + 1;
              operator new();
            }

            v31 = *(a1 + 24);
            *(a1 + 32) = v30 + 1;
            v32 = *(v31 + 8 * v30);
            v86[0] = 0;
            v33 = *(this + 1);
            if (v33 >= *(this + 2) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
              {
                return 0;
              }
            }

            else
            {
              v86[0] = *v33;
              *(this + 1) = v33 + 1;
            }

            v34 = *(this + 14);
            v35 = *(this + 15);
            *(this + 14) = v34 + 1;
            if (v34 >= v35)
            {
              return 0;
            }

            v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
            if (!sub_10027FA60(v32, this, v37) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
            v38 = *(this + 14);
            v17 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v17)
            {
              *(this + 14) = v39;
            }

            v28 = *(this + 1);
            if (v28 < *(this + 2))
            {
              v40 = *v28;
              if (v40 == 26)
              {
                goto LABEL_65;
              }

              if (v40 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v7 != 4 || v8 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v41 = *(a1 + 60);
              v42 = *(a1 + 56);
              if (v42 >= v41)
              {
                if (v41 == *(a1 + 64))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v41 + 1);
                  v41 = *(a1 + 60);
                }

                *(a1 + 60) = v41 + 1;
                operator new();
              }

              v43 = *(a1 + 48);
              *(a1 + 56) = v42 + 1;
              v44 = *(v43 + 8 * v42);
              v86[0] = 0;
              v45 = *(this + 1);
              if (v45 >= *(this + 2) || *v45 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
                {
                  return 0;
                }
              }

              else
              {
                v86[0] = *v45;
                *(this + 1) = v45 + 1;
              }

              v46 = *(this + 14);
              v47 = *(this + 15);
              *(this + 14) = v46 + 1;
              if (v46 >= v47)
              {
                return 0;
              }

              v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
              if (!sub_10013C5AC(v44, this, v49) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
              v50 = *(this + 14);
              v17 = __OFSUB__(v50, 1);
              v51 = v50 - 1;
              if (v51 < 0 == v17)
              {
                *(this + 14) = v51;
              }

              v28 = *(this + 1);
              if (v28 < *(this + 2))
              {
                v52 = *v28;
                if (v52 == 34)
                {
LABEL_83:
                  *(this + 1) = v28 + 1;
                  continue;
                }

                if (v52 == 42)
                {
                  *(this + 1) = v28 + 1;
LABEL_102:
                  *(a1 + 132) |= 0x10u;
                  v53 = *(a1 + 72);
                  if (!v53)
                  {
                    operator new();
                  }

                  v86[0] = 0;
                  v54 = *(this + 1);
                  if (v54 >= *(this + 2) || *v54 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v86[0] = *v54;
                    *(this + 1) = v54 + 1;
                  }

                  v55 = *(this + 14);
                  v56 = *(this + 15);
                  *(this + 14) = v55 + 1;
                  if (v55 >= v56)
                  {
                    return 0;
                  }

                  v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
                  if (!sub_100130FD8(v53, this, v58) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v57);
                  v59 = *(this + 14);
                  v17 = __OFSUB__(v59, 1);
                  v60 = v59 - 1;
                  if (v60 < 0 == v17)
                  {
                    *(this + 14) = v60;
                  }

                  v61 = *(this + 1);
                  if (v61 < *(this + 2) && *v61 == 49)
                  {
                    *(this + 1) = v61 + 1;
LABEL_116:
                    *v86 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v86) & 1) == 0)
                    {
                      return 0;
                    }

                    *(a1 + 80) = *v86;
                    *(a1 + 132) |= 0x20u;
                    v62 = *(this + 1);
                    if (v62 < *(this + 2) && *v62 == 57)
                    {
                      *(this + 1) = v62 + 1;
LABEL_120:
                      *v86 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v86) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 88) = *v86;
                      v11 = *(a1 + 132) | 0x40;
                      *(a1 + 132) = v11;
                      v63 = *(this + 1);
                      if (v63 < *(this + 2) && *v63 == 66)
                      {
                        *(this + 1) = v63 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v8 != 2)
          {
            goto LABEL_39;
          }

          *(a1 + 132) |= 1u;
          v9 = *(a1 + 8);
          if (!v9)
          {
            operator new();
          }

          v86[0] = 0;
          v10 = *(this + 1);
          if (v10 >= *(this + 2) || *v10 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
            {
              return 0;
            }
          }

          else
          {
            v86[0] = *v10;
            *(this + 1) = v10 + 1;
          }

          v12 = *(this + 14);
          v13 = *(this + 15);
          *(this + 14) = v12 + 1;
          if (v12 >= v13)
          {
            return 0;
          }

          v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
          if (!sub_10013C158(v9, this, v15) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
          v16 = *(this + 14);
          v17 = __OFSUB__(v16, 1);
          v18 = v16 - 1;
          if (v18 < 0 == v17)
          {
            *(this + 14) = v18;
          }

          v19 = *(this + 1);
          if (v19 < *(this + 2) && *v19 == 18)
          {
            *(this + 1) = v19 + 1;
LABEL_52:
            *(a1 + 132) |= 2u;
            v20 = *(a1 + 16);
            if (!v20)
            {
              operator new();
            }

            v86[0] = 0;
            v21 = *(this + 1);
            if (v21 >= *(this + 2) || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
              {
                return 0;
              }
            }

            else
            {
              v86[0] = *v21;
              *(this + 1) = v21 + 1;
            }

            v22 = *(this + 14);
            v23 = *(this + 15);
            *(this + 14) = v22 + 1;
            if (v22 >= v23)
            {
              return 0;
            }

            v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
            if (!sub_1001309E4(v20, this, v25) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
            v26 = *(this + 14);
            v17 = __OFSUB__(v26, 1);
            v27 = v26 - 1;
            if (v27 < 0 == v17)
            {
              *(this + 14) = v27;
            }

            v28 = *(this + 1);
            if (v28 < *(this + 2) && *v28 == 26)
            {
LABEL_65:
              *(this + 1) = v28 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v7 == 8)
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        v11 = *(a1 + 132);
LABEL_124:
        *(a1 + 132) = v11 | 0x80;
        v64 = *(a1 + 96);
        if (!v64)
        {
          operator new();
        }

        v86[0] = 0;
        v65 = *(this + 1);
        if (v65 >= *(this + 2) || *v65 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
          {
            return 0;
          }
        }

        else
        {
          v86[0] = *v65;
          *(this + 1) = v65 + 1;
        }

        v66 = *(this + 14);
        v67 = *(this + 15);
        *(this + 14) = v66 + 1;
        if (v66 >= v67)
        {
          return 0;
        }

        v68 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
        if (!sub_10014C4D0(v64, this, v69) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v68);
        v70 = *(this + 14);
        v17 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v17)
        {
          *(this + 14) = v71;
        }

        v72 = *(this + 1);
        if (v72 < *(this + 2) && *v72 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v73 = *(a1 + 116);
          v74 = *(a1 + 112);
          if (v74 >= v73)
          {
            if (v73 == *(a1 + 120))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104), v73 + 1);
              v73 = *(a1 + 116);
            }

            *(a1 + 116) = v73 + 1;
            operator new();
          }

          v75 = *(a1 + 104);
          *(a1 + 112) = v74 + 1;
          v76 = *(v75 + 8 * v74);
          v86[0] = 0;
          v77 = *(this + 1);
          if (v77 >= *(this + 2) || *v77 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
            {
              return 0;
            }
          }

          else
          {
            v86[0] = *v77;
            *(this + 1) = v77 + 1;
          }

          v78 = *(this + 14);
          v79 = *(this + 15);
          *(this + 14) = v78 + 1;
          if (v78 >= v79)
          {
            return 0;
          }

          v80 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
          if (!sub_100D18144(v76, this, v81) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v80);
          v82 = *(this + 14);
          v17 = __OFSUB__(v82, 1);
          v83 = v82 - 1;
          if (v83 < 0 == v17)
          {
            *(this + 14) = v83;
          }

          v72 = *(this + 1);
          v84 = *(this + 2);
          if (v72 >= v84 || *v72 != 74)
          {
            break;
          }

LABEL_137:
          *(this + 1) = v72 + 1;
        }

        if (v72 == v84 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v7 == 6 && v8 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

double sub_10013C10C(uint64_t a1)
{
  *a1 = off_1024A94B8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_10013C158(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v12;
        *(a1 + 36) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v12;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 36) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10013C310(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 5)
        {
          goto LABEL_21;
        }

        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v18;
        *(a1 + 32) |= 1u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 21)
        {
          *(this + 1) = v11 + 1;
LABEL_28:
          v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 12) = v18;
          *(a1 + 32) |= 2u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 29)
          {
            *(this + 1) = v12 + 1;
LABEL_32:
            v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v18;
            *(a1 + 32) |= 4u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 37)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_21;
      }

LABEL_36:
      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 20) = v18;
      *(a1 + 32) |= 8u;
      v14 = *(this + 1);
      v9 = *(this + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_40:
        v18 = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
          if (!result)
          {
            return result;
          }

          v15 = v18;
          v16 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v16 = v10 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 24) = v15 != 0;
        *(a1 + 32) |= 0x10u;
        if (v16 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_40;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10013C5AC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_34:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v15[0];
          *(a1 + 32) |= 4u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 37)
          {
            *(this + 1) = v14 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_38:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15[0];
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15[0] = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v15);
        if (!result)
        {
          return result;
        }

        v10 = v15[0];
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 <= 0xC)
      {
        *(a1 + 32) |= 1u;
        *(a1 + 16) = v10;
      }

      v12 = *(this + 1);
      if (v12 < *(this + 2) && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_30:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v15;
        *(a1 + 32) |= 2u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 29)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_34;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_30;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10013C7E8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  if (!v3)
  {
    v3 = *(qword_102637D30 + 8);
  }

  *a2 = *(v3 + 8);
  *(a2 + 16) = *(v3 + 24);
  *(a2 + 24) = *(result + 80);
  if ((*(result + 132) & 2) != 0)
  {
    v4 = *(result + 16);
    if (!v4)
    {
      v4 = *(qword_102637D30 + 16);
    }

    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_38;
    }

    v5 = *(v4 + 8);
    if (!v5)
    {
      v5 = *(qword_102637C80 + 8);
    }

    v6 = *(v5 + 44);
    if (v6)
    {
      *(a2 + 40) = *(v5 + 8);
    }

    if ((v6 & 2) == 0)
    {
      goto LABEL_20;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(qword_102637C78 + 16);
    }

    v8 = *(v7 + 32);
    if ((v8 & 4) != 0)
    {
      *(a2 + 64) = *(v7 + 16);
      if ((v8 & 2) == 0)
      {
LABEL_16:
        if ((v8 & 8) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_362;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a2 + 56) = *(v7 + 12);
    if ((v8 & 8) == 0)
    {
LABEL_17:
      if ((v8 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_363:
      *(a2 + 48) = *(v7 + 8);
      if ((v8 & 0x10) != 0)
      {
LABEL_19:
        *(a2 + 80) = *(v7 + 24) | 0x100;
        v6 = *(v5 + 44);
      }

LABEL_20:
      if ((v6 & 4) == 0)
      {
        goto LABEL_29;
      }

      v9 = *(v5 + 24);
      if (!v9)
      {
        v9 = *(qword_102637C78 + 24);
      }

      v10 = *(v9 + 52);
      if (v10)
      {
        *(a2 + 88) = *(v9 + 8);
        if ((v10 & 2) == 0)
        {
LABEL_25:
          if ((v10 & 4) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_367;
        }
      }

      else if ((v10 & 2) == 0)
      {
        goto LABEL_25;
      }

      *(a2 + 96) = *(v9 + 16);
      if ((v10 & 4) == 0)
      {
LABEL_26:
        if ((v10 & 8) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_368;
      }

LABEL_367:
      v145 = *(v9 + 24);
      *(a2 + 104) = v145;
      if ((v10 & 8) == 0)
      {
LABEL_27:
        if ((v10 & 0x10) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_368:
      v146 = *(v9 + 32);
      *(a2 + 108) = v146;
      if ((v10 & 0x10) == 0)
      {
LABEL_29:
        if ((v6 & 8) == 0)
        {
          goto LABEL_38;
        }

        v12 = *(v5 + 32);
        if (!v12)
        {
          v12 = *(qword_102637C78 + 32);
        }

        v13 = *(v12 + 40);
        if ((v13 & 8) != 0)
        {
          *(a2 + 136) = *(v12 + 24);
          if ((v13 & 1) == 0)
          {
LABEL_34:
            if ((v13 & 0x10) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_372;
          }
        }

        else if ((v13 & 1) == 0)
        {
          goto LABEL_34;
        }

        *(a2 + 120) = *(v12 + 8);
        if ((v13 & 0x10) == 0)
        {
LABEL_35:
          if ((v13 & 4) == 0)
          {
            goto LABEL_36;
          }

LABEL_373:
          *(a2 + 132) = *(v12 + 20);
          if ((v13 & 2) != 0)
          {
LABEL_37:
            *(a2 + 128) = *(v12 + 16);
          }

LABEL_38:
          v14 = *(v4 + 24);
          if (v14)
          {
            v15 = *(v4 + 16);
            v148 = &v15[v14];
            while (1)
            {
              v16 = *v15;
              *v153 = 0;
              *&v153[4] = 0;
              v153[6] = 127;
              *&v153[8] = 0;
              *&v153[15] = 0;
              *&v153[24] = -1;
              *&v153[32] = -1;
              *&v154 = -1;
              *(&v154 + 1) = 0x7FF8000000000000;
              *v155 = -1082130432;
              *&v155[8] = xmmword_101CA73B0;
              *&v155[24] = xmmword_101CA73B0;
              v156 = xmmword_101CA73B0;
              LOBYTE(__p) = 1;
              v158 = -1;
              v159 = -1;
              v160 = xmmword_101CA73B0;
              v161 = 0;
              v162 = 0;
              v163 = -1082130432;
              v164 = 0;
              v17 = *(v16 + 112);
              if (v17)
              {
                v18 = *(v16 + 8);
                if (!v18)
                {
                  v18 = *(qword_102637C58 + 8);
                }

                if (!sub_100285344(v18, v153))
                {
LABEL_357:
                  sub_1002C827C(&v162, 0);
                  return 0;
                }

                v17 = *(v16 + 112);
              }

              if ((v17 & 2) != 0)
              {
                v20 = *(v16 + 16);
                if (!v20)
                {
                  v20 = *(qword_102637C58 + 16);
                }

                v21 = *(v20 + 96);
                if (v21)
                {
                  *v165 = *(v20 + 88);
                  sub_10013E25C(v165, &v153[8]);
                  v21 = *(v20 + 96);
                }

                if ((v21 & 2) != 0)
                {
                  v35 = *(v20 + 8);
                  if (!v35)
                  {
                    v35 = *(qword_102637C10 + 8);
                  }

                  v36 = *(v35 + 16);
                  if ((v36 & 2) != 0)
                  {
                    v153[10] = *(v35 + 9);
                    if ((v36 & 4) != 0)
                    {
                      goto LABEL_144;
                    }

LABEL_113:
                    if ((v36 & 1) == 0)
                    {
                      goto LABEL_114;
                    }

LABEL_145:
                    v153[9] = *(v35 + 8);
                    if ((v36 & 8) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v36 & 4) == 0)
                    {
                      goto LABEL_113;
                    }

LABEL_144:
                    v153[11] = *(v35 + 10);
                    if (v36)
                    {
                      goto LABEL_145;
                    }

LABEL_114:
                    if ((v36 & 8) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[12] = *(v35 + 11);
                  goto LABEL_46;
                }

                if ((v21 & 4) != 0)
                {
                  v40 = *(v20 + 16);
                  if (!v40)
                  {
                    v40 = *(qword_102637C10 + 16);
                  }

                  v41 = *(v40 + 20);
                  if ((v41 & 0x10) != 0)
                  {
                    v153[13] = *(v40 + 12);
                    if ((v41 & 4) == 0)
                    {
                      goto LABEL_141;
                    }
                  }

                  else if ((v41 & 4) == 0)
                  {
LABEL_141:
                    if ((v41 & 8) == 0)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_155;
                  }

                  v153[11] = *(v40 + 10);
                  if ((v41 & 8) == 0)
                  {
                    goto LABEL_156;
                  }

LABEL_155:
                  v153[12] = *(v40 + 11);
                  goto LABEL_156;
                }

                if ((v21 & 8) != 0)
                {
                  v40 = *(v20 + 24);
                  if (!v40)
                  {
                    v40 = *(qword_102637C10 + 24);
                  }

                  v41 = *(v40 + 16);
                  if ((v41 & 4) != 0)
                  {
                    v153[11] = *(v40 + 10);
                    if ((v41 & 2) == 0)
                    {
                      goto LABEL_151;
                    }
                  }

                  else if ((v41 & 2) == 0)
                  {
LABEL_151:
                    if ((v41 & 8) == 0)
                    {
                      goto LABEL_169;
                    }

LABEL_168:
                    v153[12] = *(v40 + 11);
                    goto LABEL_169;
                  }

                  v153[10] = *(v40 + 9);
                  if ((v41 & 8) == 0)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_168;
                }

                if ((v21 & 0x10) != 0)
                {
                  v42 = *(v20 + 32);
                  if (!v42)
                  {
                    v42 = *(qword_102637C10 + 32);
                  }

                  v43 = *(v42 + 20);
                  if (v43)
                  {
                    v153[9] = *(v42 + 8);
                    if ((v43 & 4) != 0)
                    {
                      goto LABEL_179;
                    }

LABEL_162:
                    if ((v43 & 8) == 0)
                    {
                      goto LABEL_163;
                    }

LABEL_180:
                    v153[12] = *(v42 + 11);
                    if ((v43 & 2) != 0)
                    {
                      goto LABEL_181;
                    }

LABEL_164:
                    if ((v43 & 0x10) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v43 & 4) == 0)
                    {
                      goto LABEL_162;
                    }

LABEL_179:
                    v153[11] = *(v42 + 10);
                    if ((v43 & 8) != 0)
                    {
                      goto LABEL_180;
                    }

LABEL_163:
                    if ((v43 & 2) == 0)
                    {
                      goto LABEL_164;
                    }

LABEL_181:
                    v153[10] = *(v42 + 9);
                    if ((v43 & 0x10) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[13] = *(v42 + 12);
                  goto LABEL_46;
                }

                if ((v21 & 0x20) != 0)
                {
                  v44 = *(v20 + 40);
                  if (!v44)
                  {
                    v44 = *(qword_102637C10 + 40);
                  }

                  v45 = *(v44 + 16);
                  if ((v45 & 2) != 0)
                  {
                    v153[10] = *(v44 + 9);
                    if (v45)
                    {
                      goto LABEL_191;
                    }

LABEL_175:
                    if ((v45 & 8) == 0)
                    {
                      goto LABEL_176;
                    }

LABEL_192:
                    v153[12] = *(v44 + 11);
                    if ((v45 & 4) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v45 & 1) == 0)
                    {
                      goto LABEL_175;
                    }

LABEL_191:
                    v153[9] = *(v44 + 8);
                    if ((v45 & 8) != 0)
                    {
                      goto LABEL_192;
                    }

LABEL_176:
                    if ((v45 & 4) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[11] = *(v44 + 10);
                  goto LABEL_46;
                }

                if ((v21 & 0x40) != 0)
                {
                  v46 = *(v20 + 48);
                  if (!v46)
                  {
                    v46 = *(qword_102637C10 + 48);
                  }

                  v47 = *(v46 + 16);
                  if ((v47 & 4) != 0)
                  {
                    v153[11] = *(v46 + 10);
                    if ((v47 & 8) != 0)
                    {
                      goto LABEL_201;
                    }

LABEL_187:
                    if ((v47 & 1) == 0)
                    {
                      goto LABEL_188;
                    }

LABEL_202:
                    v153[9] = *(v46 + 8);
                    if ((v47 & 2) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v47 & 8) == 0)
                    {
                      goto LABEL_187;
                    }

LABEL_201:
                    v153[12] = *(v46 + 11);
                    if (v47)
                    {
                      goto LABEL_202;
                    }

LABEL_188:
                    if ((v47 & 2) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[10] = *(v46 + 9);
                  goto LABEL_46;
                }

                if ((v21 & 0x80) != 0)
                {
                  v40 = *(v20 + 56);
                  if (!v40)
                  {
                    v40 = *(qword_102637C10 + 56);
                  }

                  v41 = *(v40 + 16);
                  if ((v41 & 8) != 0)
                  {
                    v153[12] = *(v40 + 11);
                  }

                  if ((v41 & 4) != 0)
                  {
                    v153[11] = *(v40 + 10);
                  }

LABEL_156:
                  if ((v41 & 2) != 0)
                  {
                    v153[10] = *(v40 + 9);
                  }

LABEL_169:
                  if (v41)
                  {
                    v153[9] = *(v40 + 8);
                  }

                  goto LABEL_46;
                }

                if ((v21 & 0x100) != 0)
                {
                  v48 = *(v20 + 64);
                  if (!v48)
                  {
                    v48 = *(qword_102637C10 + 64);
                  }

                  sub_1002C834C(v48, &v153[9]);
                }

                else
                {
                  if ((v21 & 0x400) == 0)
                  {
                    goto LABEL_357;
                  }

                  v22 = *(v20 + 80);
                  if (!v22)
                  {
                    v22 = *(qword_102637C10 + 80);
                  }

                  sub_1016B2068(v22, &v153[9]);
                }
              }

LABEL_46:
              v19 = *(v16 + 112);
              if ((v19 & 4) != 0)
              {
                *&v153[24] = *(v16 + 24);
                if ((v19 & 8) == 0)
                {
LABEL_48:
                  if ((v19 & 0x10) == 0)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_69;
                }
              }

              else if ((v19 & 8) == 0)
              {
                goto LABEL_48;
              }

              *&v153[32] = *(v16 + 32);
              if ((v19 & 0x10) == 0)
              {
LABEL_49:
                if ((v19 & 0x20) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_70;
              }

LABEL_69:
              *&v154 = *(v16 + 40);
              if ((v19 & 0x20) == 0)
              {
                goto LABEL_78;
              }

LABEL_70:
              v23 = *(v16 + 48);
              if (!v23)
              {
                v23 = *(qword_102637C58 + 48);
              }

              v24 = *(v23 + 32);
              if (v24)
              {
                *(&v154 + 1) = *(v23 + 8);
              }

              if ((v24 & 2) != 0)
              {
                v25 = *(v23 + 16);
                if (v25 < 1.17549435e-38 || v25 > 3.40282347e38)
                {
                  goto LABEL_357;
                }

                v26 = v25;
                *v155 = v26;
              }

LABEL_78:
              if ((v19 & 0x40) != 0)
              {
                v27 = *(v16 + 56);
                if (!v27)
                {
                  v27 = *(qword_102637C58 + 56);
                }

                v28 = *(v27 + 32);
                if (v28)
                {
                  *&v155[8] = *(v27 + 8);
                }

                if ((v28 & 2) != 0)
                {
                  *&v155[16] = *(v27 + 16);
                }
              }

              if ((v19 & 0x800) != 0)
              {
                v29 = *(v16 + 88);
                if (!v29)
                {
                  v29 = *(qword_102637C58 + 88);
                }

                v30 = *(v29 + 32);
                if (v30)
                {
                  *&v155[24] = *(v29 + 8);
                }

                if ((v30 & 2) != 0)
                {
                  *&v155[32] = *(v29 + 16);
                }

                v31 = *(v16 + 96);
                if (!v31)
                {
                  v31 = *(qword_102637C58 + 96);
                }

                v32 = *(v31 + 32);
                if (v32)
                {
                  *&v156 = *(v31 + 8);
                  if ((v32 & 2) == 0)
                  {
LABEL_96:
                    if ((v32 & 4) == 0)
                    {
                      goto LABEL_98;
                    }

LABEL_97:
                    LOBYTE(__p) = *(v31 + 24);
                    goto LABEL_98;
                  }
                }

                else if ((v32 & 2) == 0)
                {
                  goto LABEL_96;
                }

                *(&v156 + 1) = *(v31 + 16);
                if ((v32 & 4) != 0)
                {
                  goto LABEL_97;
                }
              }

LABEL_98:
              if ((v19 & 0x80) == 0)
              {
                goto LABEL_107;
              }

              v33 = *(v16 + 64);
              if (!v33)
              {
                v33 = *(qword_102637C58 + 64);
              }

              v34 = *(v33 + 48);
              if ((v34 & 0x10) != 0)
              {
                v161 = *(v33 + 40);
                if ((v34 & 2) == 0)
                {
LABEL_103:
                  if ((v34 & 1) == 0)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_121;
                }
              }

              else if ((v34 & 2) == 0)
              {
                goto LABEL_103;
              }

              v159 = *(v33 + 16);
              if ((v34 & 1) == 0)
              {
LABEL_104:
                if ((v34 & 4) == 0)
                {
                  goto LABEL_105;
                }

                goto LABEL_122;
              }

LABEL_121:
              v158 = *(v33 + 8);
              if ((v34 & 4) == 0)
              {
LABEL_105:
                if ((v34 & 8) == 0)
                {
                  goto LABEL_107;
                }

LABEL_106:
                *(&v160 + 1) = *(v33 + 32);
                goto LABEL_107;
              }

LABEL_122:
              *&v160 = *(v33 + 24);
              if ((v34 & 8) != 0)
              {
                goto LABEL_106;
              }

LABEL_107:
              if ((v19 & 0x100) != 0)
              {
                operator new();
              }

              v37 = *(v16 + 112);
              if ((v37 & 0x200) != 0)
              {
                v163 = *(v16 + 80);
                if ((v37 & 0x1000) != 0)
                {
LABEL_129:
                  HIBYTE(v164) = *(v16 + 104);
                  if ((v37 & 0x400) == 0)
                  {
                    goto LABEL_135;
                  }

                  goto LABEL_130;
                }
              }

              else if ((v37 & 0x1000) != 0)
              {
                goto LABEL_129;
              }

              if ((v37 & 0x400) == 0)
              {
                goto LABEL_135;
              }

LABEL_130:
              v38 = *(v16 + 84);
              LOBYTE(v164) = 0;
              if (v38 == 3)
              {
                v39 = 1;
                goto LABEL_134;
              }

              if (v38 == 4)
              {
                v39 = 2;
LABEL_134:
                LOBYTE(v164) = v39;
              }

LABEL_135:
              sub_1002C7F0C((a2 + 152), v153);
              sub_1002C827C(&v162, 0);
              if (++v15 == v148)
              {
                goto LABEL_207;
              }
            }
          }

          goto LABEL_207;
        }

LABEL_372:
        *(a2 + 144) = *(v12 + 32);
        if ((v13 & 4) == 0)
        {
LABEL_36:
          if ((v13 & 2) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        goto LABEL_373;
      }

LABEL_28:
      v11 = *(v9 + 40);
      *(a2 + 112) = v11;
      goto LABEL_29;
    }

LABEL_362:
    *(a2 + 72) = *(v7 + 20);
    if ((v8 & 1) == 0)
    {
LABEL_18:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_363;
  }

LABEL_207:
  v49 = *(result + 32);
  if (!v49)
  {
LABEL_292:
    v102 = *(result + 56);
    if (v102)
    {
      v103 = *(result + 48);
      v104 = *(a2 + 208);
      v105 = 8 * v102;
      do
      {
        v106 = *v103;
        v107 = *(*v103 + 20);
        *v153 = *(*v103 + 8);
        *&v153[8] = v107;
        *v165 = *(v106 + 16);
        sub_10013E25C(v165, &v153[16]);
        v108 = *(a2 + 216);
        if (v104 >= v108)
        {
          v110 = *(a2 + 200);
          v111 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v110) >> 3);
          v112 = v111 + 1;
          if (v111 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v113 = 0xAAAAAAAAAAAAAAABLL * ((v108 - v110) >> 3);
          if (2 * v113 > v112)
          {
            v112 = 2 * v113;
          }

          if (v113 >= 0x555555555555555)
          {
            v114 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v114 = v112;
          }

          if (v114)
          {
            sub_10013E290(a2 + 200, v114);
          }

          v115 = 8 * ((v104 - v110) >> 3);
          *v115 = *v153;
          *(v115 + 16) = *&v153[16];
          v104 = v115 + 24;
          v116 = *(a2 + 200);
          v117 = *(a2 + 208) - v116;
          v118 = 24 * v111 - v117;
          memcpy((v115 - v117), v116, v117);
          v119 = *(a2 + 200);
          *(a2 + 200) = v118;
          *(a2 + 208) = v104;
          *(a2 + 216) = 0;
          if (v119)
          {
            operator delete(v119);
          }
        }

        else
        {
          v109 = *v153;
          *(v104 + 16) = *&v153[16];
          *v104 = v109;
          v104 += 24;
        }

        *(a2 + 208) = v104;
        ++v103;
        v105 -= 8;
      }

      while (v105);
    }

    if ((*(result + 132) & 0x10) != 0)
    {
      v120 = *(result + 72);
      if (!v120)
      {
        v120 = *(qword_102637D30 + 72);
      }

      if (*(v120 + 52))
      {
        operator new();
      }

      if ((*(v120 + 52) & 4) != 0)
      {
        operator new();
      }

      if ((*(v120 + 52) & 8) != 0)
      {
        operator new();
      }

      if ((*(v120 + 52) & 2) != 0)
      {
        operator new();
      }

      if ((*(v120 + 52) & 0x10) != 0)
      {
        operator new();
      }
    }

    if ((*(result + 132) & 0x80) != 0)
    {
      operator new();
    }

    v121 = *(result + 112);
    if (!v121)
    {
      return 1;
    }

    v122 = *(result + 104);
    v123 = 8 * v121;
    v152 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v124 = *v122;
      *v153 = 0;
      *&v153[4] = 0;
      v153[6] = 127;
      *&v153[8] = 0;
      *&v153[16] = v152;
      *&v153[32] = 0x7FF8000000000000;
      v125 = *(v124 + 36);
      if (v125)
      {
        v126 = *(v124 + 8);
        if (!v126)
        {
          v126 = *(qword_102637D20 + 8);
        }

        v127 = sub_100285344(v126, v153);
        if (!v127)
        {
          break;
        }
      }

      if ((v125 & 2) != 0)
      {
        *v165 = *(v124 + 16);
        sub_10013E25C(v165, &v153[8]);
      }

      if ((v125 & 4) != 0)
      {
        v128 = *(v124 + 20);
        v153[9] = 0;
        v129 = v128 - 1;
        if (v129 <= 2)
        {
          v153[9] = v129 + 1;
        }
      }

      if ((v125 & 8) != 0)
      {
        v130 = *(v124 + 24);
        if (!v130)
        {
          v130 = *(qword_102637D20 + 24);
        }

        *&v153[16] = *(v130 + 8);
        *&v153[32] = *(v130 + 24);
      }

      v131 = *(a2 + 280);
      v132 = *(a2 + 288);
      if (v131 >= v132)
      {
        v134 = *(a2 + 272);
        v135 = 0xCCCCCCCCCCCCCCCDLL * ((v131 - v134) >> 3);
        v136 = v135 + 1;
        if (v135 + 1 > 0x666666666666666)
        {
          sub_10028C64C();
        }

        v137 = 0xCCCCCCCCCCCCCCCDLL * ((v132 - v134) >> 3);
        if (2 * v137 > v136)
        {
          v136 = 2 * v137;
        }

        if (v137 >= 0x333333333333333)
        {
          v138 = 0x666666666666666;
        }

        else
        {
          v138 = v136;
        }

        if (v138)
        {
          sub_1016B219C(a2 + 272, v138);
        }

        v139 = 40 * v135;
        *v139 = *v153;
        *(v139 + 16) = *&v153[16];
        *(v139 + 32) = *&v153[32];
        v133 = 40 * v135 + 40;
        v140 = *(a2 + 272);
        v141 = *(a2 + 280) - v140;
        v142 = 40 * v135 - v141;
        memcpy((v139 - v141), v140, v141);
        v143 = *(a2 + 272);
        *(a2 + 272) = v142;
        *(a2 + 280) = v133;
        *(a2 + 288) = 0;
        if (v143)
        {
          operator delete(v143);
        }
      }

      else
      {
        *v131 = *v153;
        *(v131 + 16) = *&v153[16];
        *(v131 + 32) = *&v153[32];
        v133 = v131 + 40;
      }

      *(a2 + 280) = v133;
      ++v122;
      v123 -= 8;
      if (!v123)
      {
        return 1;
      }
    }

    return v127;
  }

  v50 = *(result + 24);
  v147 = &v50[v49];
  v51 = 0uLL;
  v52 = vdupq_n_s64(0x7FF8000000000000uLL);
  v53 = vneg_f32(0x3F0000003FLL);
  v151 = v52;
  while (1)
  {
    v149 = v50;
    v54 = *v50;
    *v153 = 0;
    *&v153[4] = 0;
    v153[6] = 127;
    *&v153[8] = 0x7FF8000000000000;
    v153[16] = 0;
    *&v153[24] = v51;
    v154 = v51;
    *v155 = v52;
    *&v155[16] = v52;
    *&v155[32] = v53;
    *&v156 = 0;
    WORD4(v156) = 0;
    v158 = 0;
    v159 = 0;
    __p = 0;
    LOBYTE(v160) = 0;
    v55 = *(v54 + 172);
    if ((v55 & 1) == 0)
    {
      goto LABEL_214;
    }

    v56 = *(v54 + 8);
    if (!v56)
    {
      v56 = *(qword_102637CA8 + 8);
    }

    if (!sub_100285344(v56, v153))
    {
      break;
    }

    v55 = *(v54 + 172);
LABEL_214:
    if ((v55 & 4) != 0)
    {
      v57 = *(v54 + 56) - 1;
      if (v57 > 5)
      {
        break;
      }

      v153[16] = 0x30404020100uLL >> (8 * v57);
    }

    v58 = *(v54 + 32);
    if (v58)
    {
      v59 = *(v54 + 24);
      v60 = 8 * v58;
      do
      {
        v61 = *v59;
        if ((*(*v59 + 28) & 2) != 0)
        {
          v65 = *(v61 + 16);
          if (!v65)
          {
            v65 = *(qword_102637C98 + 16);
          }

          v62 = v65[1];
          v63 = v65[2];
          v64 = v65[3];
        }

        else
        {
          v62 = 0x7FF8000000000000;
          v63 = 0x7FF8000000000000;
          v64 = 0x7FF8000000000000;
        }

        v66 = *(v61 + 8);
        v67 = *&v153[32];
        if (*&v153[32] >= v154)
        {
          v69 = *&v153[24];
          v70 = *&v153[32] - *&v153[24];
          v71 = (*&v153[32] - *&v153[24]) >> 5;
          v72 = v71 + 1;
          if ((v71 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v73 = v154 - *&v153[24];
          if ((v154 - *&v153[24]) >> 4 > v72)
          {
            v72 = v73 >> 4;
          }

          if (v73 >= 0x7FFFFFFFFFFFFFE0)
          {
            v72 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v72)
          {
            sub_1003F6B14(&v153[24], v72);
          }

          v74 = (*&v153[32] - *&v153[24]) >> 5;
          v75 = (32 * v71);
          *v75 = v66;
          v75[1] = v62;
          v75[2] = v63;
          v75[3] = v64;
          v68 = 32 * v71 + 32;
          v76 = 32 * v71 - 32 * v74;
          memcpy(&v75[-4 * v74], v69, v70);
          v77 = *&v153[24];
          *&v153[24] = v76;
          *&v153[32] = v68;
          *&v154 = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          **&v153[32] = v66;
          v67[1] = v62;
          v68 = (v67 + 4);
          v67[2] = v63;
          v67[3] = v64;
        }

        *&v153[32] = v68;
        ++v59;
        v60 -= 8;
      }

      while (v60);
      v55 = *(v54 + 172);
    }

    *v155 = *(v54 + 48);
    *&v155[8] = *(v54 + 64);
    *&v155[32] = *(v54 + 60);
    *&v155[36] = *(v54 + 80);
    if ((v55 & 0x200) != 0)
    {
      v78 = *(v54 + 84) - 1;
      if (v78 > 3)
      {
        break;
      }

      LOBYTE(v156) = 0x2010000u >> (8 * v78);
    }

    if ((v55 & 0x400) != 0)
    {
      v79 = *(v54 + 88) - 1;
      if (v79 > 3)
      {
        break;
      }

      BYTE2(v156) = 0x2010000u >> (8 * v79);
    }

    if ((v55 & 0x800) != 0)
    {
      v80 = *(v54 + 92) - 1;
      if (v80 > 3)
      {
        break;
      }

      BYTE4(v156) = 0x2010000u >> (8 * v80);
    }

    if ((v55 & 0x1000) != 0)
    {
      v81 = *(v54 + 96) - 1;
      if (v81 > 3)
      {
        break;
      }

      BYTE6(v156) = 0x2010000u >> (8 * v81);
    }

    if ((v55 & 0x2000) != 0)
    {
      v82 = *(v54 + 100) - 1;
      if (v82 > 3)
      {
        break;
      }

      BYTE8(v156) = 0x2010000u >> (8 * v82);
    }

    if ((v55 & 0x10000) != 0)
    {
      v83 = *(v54 + 136) - 1;
      if (v83 > 3)
      {
        break;
      }

      BYTE1(v156) = 0x2010000u >> (8 * v83);
    }

    if ((v55 & 0x20000) != 0)
    {
      v84 = *(v54 + 140) - 1;
      if (v84 > 3)
      {
        break;
      }

      BYTE3(v156) = 0x2010000u >> (8 * v84);
    }

    if ((v55 & 0x40000) != 0)
    {
      v85 = *(v54 + 144) - 1;
      if (v85 > 3)
      {
        break;
      }

      BYTE5(v156) = 0x2010000u >> (8 * v85);
    }

    if ((v55 & 0x80000) != 0)
    {
      v86 = *(v54 + 148) - 1;
      if (v86 > 3)
      {
        break;
      }

      BYTE7(v156) = 0x2010000u >> (8 * v86);
    }

    if ((v55 & 0x100000) != 0)
    {
      v87 = *(v54 + 160) - 1;
      if (v87 > 3)
      {
        break;
      }

      BYTE9(v156) = 0x2010000u >> (8 * v87);
    }

    v88 = *(v54 + 112);
    if (v88)
    {
      v89 = *(v54 + 104);
      v90 = 8 * v88;
      do
      {
        v91 = *v89;
        v165[0] = 0;
        *&v165[4] = 0;
        *&v165[8] = v151;
        *&v165[24] = 0x7FF8000000000000;
        if (*(v91 + 44))
        {
          if (*(v91 + 28) > 2u)
          {
            goto LABEL_351;
          }

          *&v165[4] = *(v91 + 28);
          *&v165[8] = *(v91 + 8);
          *&v165[24] = *(v91 + 32);
          v166[0] = *(v91 + 24);
          sub_10013E25C(v166, v165);
        }

        v92 = v158;
        if (v158 >= v159)
        {
          v94 = (v158 - __p) >> 5;
          v95 = v94 + 1;
          if ((v94 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v96 = v159 - __p;
          if ((v159 - __p) >> 4 > v95)
          {
            v95 = v96 >> 4;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFE0)
          {
            v97 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v95;
          }

          if (v97)
          {
            sub_100285A14(&__p, v97);
          }

          v98 = (32 * v94);
          *v98 = *v165;
          v98[1] = *&v165[16];
          v93 = 32 * v94 + 32;
          v99 = (32 * v94 - (v158 - __p));
          memcpy(v98 - (v158 - __p), __p, v158 - __p);
          v100 = __p;
          __p = v99;
          v158 = v93;
          v159 = 0;
          if (v100)
          {
            operator delete(v100);
          }
        }

        else
        {
          *v158 = *v165;
          *(v92 + 16) = *&v165[16];
          v93 = v92 + 32;
        }

        v158 = v93;
        ++v89;
        v90 -= 8;
      }

      while (v90);
    }

    sub_100285480((a2 + 176), v153);
    if (__p)
    {
      v158 = __p;
      operator delete(__p);
    }

    v101 = *(&v154 + 1);
    *(&v154 + 1) = 0;
    if (v101)
    {
      operator delete();
    }

    if (*&v153[24])
    {
      *&v153[32] = *&v153[24];
      operator delete(*&v153[24]);
    }

    v50 = v149 + 1;
    v51 = 0uLL;
    v52 = v151;
    if (v149 + 1 == v147)
    {
      goto LABEL_292;
    }
  }

LABEL_351:
  if (__p)
  {
    v158 = __p;
    operator delete(__p);
  }

  v144 = *(&v154 + 1);
  *(&v154 + 1) = 0;
  if (v144)
  {
    operator delete();
  }

  if (*&v153[24])
  {
    *&v153[32] = *&v153[24];
    operator delete(*&v153[24]);
  }

  return 0;
}

void sub_10013E220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1016B2138(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_10013E25C(_DWORD *result, _BYTE *a2)
{
  *a2 = 0;
  v2 = *result - 2;
  if (v2 <= 0xA && ((0x6FFu >> v2) & 1) != 0)
  {
    *a2 = byte_101DB5C90[v2];
  }

  return result;
}

void sub_10013E290(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_10013E2E8(void *result, void *a2, uint64_t **a3)
{
  for (i = a2[2]; i; i = *i)
  {
    for (j = i[5]; j; j = *j)
    {
      j[3] = 0;
      *(j + 11) = 0;
    }
  }

  v7 = result[19];
  for (k = result[20]; v7 != k; v7 += 44)
  {
    if (*(v7 + 173) != 1)
    {
      continue;
    }

    v18 = 0;
    v19 = 0;
    sub_100285D0C(v7, &v19, &v18);
    v20 = &v19;
    v9 = sub_1002C83F4(a2, &v19, &unk_101C66300, &v20);
    v10 = v18;
    v17 = v18;
    v20 = &v17;
    v11 = sub_1002C8778(v9 + 3, &v17, &unk_101C66300, &v20);
    v20 = (*v7 | (v10 << 32));
    result = sub_1002C8668(a3, &v20, &v20);
    *(v11 + 5) = v10;
    if ((*(v7 + 12) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(v7 + 13) <= 0.0)
    {
      v13 = *(v7 + 15);
      if (v13 == -1)
      {
        goto LABEL_14;
      }

      v12 = 0;
      v14 = *(v7 + 16);
      if (v14 == -1 || v13 > v14)
      {
        goto LABEL_16;
      }

      if ((*(v7 + 17) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_14:
        v12 = 0;
      }

      else
      {
        v12 = *(v7 + 18) > 0.0;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_16:
    v15 = *(v7 + 8);
    if (v15 > 0xA || ((1 << v15) & 0x68D) == 0)
    {
      *(v11 + 6) = v7[42];
      if (!v12)
      {
        continue;
      }

      v16 = 1;
      goto LABEL_20;
    }

    *(v11 + 7) = v7[42];
    if (v12)
    {
      v16 = 2;
LABEL_20:
      *(v11 + 11) |= v16;
    }
  }

  return result;
}

uint64_t sub_10013E4CC(uint64_t a1, __int128 **a2)
{
  sub_10013E618(a1, a2);
  sub_10013874C(a2);
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 24);
      v10 = 134349056;
      v11 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,dumping svinfo cache,sz,%{public}zu", &v10, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017760F8();
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = a2[1];
      do
      {
        if (v8 >= a2[2])
        {
          v8 = sub_1002854C8(a2, (v7 + 3));
        }

        else
        {
          sub_100285AB8(v8, (v7 + 3));
          v8 += 144;
        }

        a2[1] = v8;
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v4;
}

void sub_10013E618(void *a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v12 = sub_10027F24C(v2);
      if (v12)
      {
        v13 = &v12;
        v5 = sub_100284B98(a1, &v12, &unk_101C66300, &v13);
        v6 = *v2;
        *(v5 + 40) = *(v2 + 16);
        *(v5 + 3) = v6;
        sub_10007057C((v5 + 6), (v2 + 24));
        v7 = *(v2 + 48);
        *(v2 + 48) = 0;
        v8 = v5[9];
        v5[9] = v7;
        if (v8)
        {
          operator delete();
        }

        v9 = *(v2 + 56);
        v10 = *(v2 + 72);
        v11 = *(v2 + 88);
        *(v5 + 64) = *(v2 + 104);
        *(v5 + 6) = v10;
        *(v5 + 7) = v11;
        *(v5 + 5) = v9;
        sub_10007057C((v5 + 17), (v2 + 112));
        *(v5 + 160) = *(v2 + 136);
      }

      v2 += 144;
    }

    while (v2 != v3);
  }
}

uint64_t sub_10013E724(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  if (v1 == v2)
  {
    v3 = 0;
    return v3 != 0;
  }

  v3 = 0;
  do
  {
    v3 += *(v1 + 173);
    v1 += 176;
  }

  while (v1 != v2);
  if (v3 > 4)
  {
    return 4;
  }

  if (v3 == 4)
  {
    return 3;
  }

  if (v3 <= 2)
  {
    return v3 != 0;
  }

  return 2;
}

void sub_10013E784(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 248);
  v6 = a1 + 240;
  sub_1003C93BC(a1 + 240, *(a1 + 248));
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  if ((sub_10001CF3C() & 1) == 0)
  {
    v49[0] = 0;
    v49[1] = 0;
    v48 = v49;
    v8 = *(a2 + 112);
    v9 = *(a2 + 120);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 173) == 1)
        {
          LODWORD(v7) = *(v8 + 168);
          if (*&v7 > 0.0)
          {
            v10 = *(v8 + 8);
            if (v10 != 4 && (sub_1002C8BB0(v10) & 1) != 0)
            {
              v11 = v49[0];
              if (!v49[0])
              {
                goto LABEL_15;
              }

              v12 = *(v8 + 8);
              v13 = v49;
              do
              {
                v14 = *(v11 + 32);
                v15 = v14 >= v12;
                v16 = v14 < v12;
                if (v15)
                {
                  v13 = v11;
                }

                v11 = v11[v16];
              }

              while (v11);
              if (v13 != v49 && v12 >= *(v13 + 32))
              {
                v20 = v13[6];
                v19 = v13[7];
                if (v20 >= v19)
                {
                  v22 = v13[5];
                  v23 = v20 - v22;
                  v24 = (v20 - v22) >> 2;
                  v25 = v24 + 1;
                  if ((v24 + 1) >> 62)
                  {
                    sub_10028C64C();
                  }

                  v26 = v19 - v22;
                  if (v26 >> 1 > v25)
                  {
                    v25 = v26 >> 1;
                  }

                  v15 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
                  v27 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v15)
                  {
                    v27 = v25;
                  }

                  if (v27)
                  {
                    sub_1000B85D0((v13 + 5), v27);
                  }

                  v28 = (v20 - v22) >> 2;
                  v29 = (4 * v24);
                  v30 = (4 * v24 - 4 * v28);
                  *v29 = *(v8 + 168);
                  v21 = v29 + 1;
                  memcpy(v30, v22, v23);
                  v31 = v13[5];
                  v13[5] = v30;
                  v13[6] = v21;
                  v13[7] = 0;
                  if (v31)
                  {
                    operator delete(v31);
                  }
                }

                else
                {
                  LODWORD(v7) = *(v8 + 168);
                  *v20 = LODWORD(v7);
                  v21 = v20 + 4;
                }

                v13[6] = v21;
              }

              else
              {
LABEL_15:
                v50 = (v8 + 8);
                v17 = sub_1002CCA8C(&v48, (v8 + 8), &unk_101C66300, &v50);
                sub_1002982C8(v17 + 5, 0x10uLL);
                __src = *(v8 + 168);
                v50 = (v8 + 8);
                v18 = sub_1002CCA8C(&v48, (v8 + 8), &unk_101C66300, &v50);
                sub_1002AF13C(v18 + 5, &__src, &v48, 1uLL);
              }
            }
          }
        }

        v8 += 176;
      }

      while (v8 != v9);
      v32 = v48;
      if (v48 != v49)
      {
        do
        {
          v34 = v32[5];
          v33 = v32[6];
          if (v34 == v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = 0;
            LODWORD(v7) = *(a1 + 292);
            v36 = v32[5];
            do
            {
              v37 = *v36++;
              if (v37 >= *&v7)
              {
                ++v35;
              }
            }

            while (v36 != v33);
          }

          v38 = v33 - v34;
          if (v38 >= *(a1 + 276))
          {
            if (v38 >= 7)
            {
              v40 = 126 - 2 * __clz(v38);
              v41 = v34 == v33 ? 0 : v40;
              sub_1002CCB64(v32[5], v32[6], &v50, v41, 1, v7);
              v42 = (v32[5] + 3);
              if (v42 != v32[6])
              {
                v32[6] = v42;
              }
            }

            v2 = sub_1002C8CAC(v32 + 5);
            v34 = v32[5];
            v33 = v32[6];
            v39 = dword_100000000;
          }

          else
          {
            v39 = 0;
            LODWORD(v2) &= 0xFFFFFF00;
          }

          v50 = v32 + 4;
          v43 = sub_1002C8BCC(v6, v32 + 32, &unk_101C66300, &v50);
          *(v43 + 40) = BYTE4(v39);
          *(v43 + 8) = (v33 - v34) >> 2;
          *(v43 + 9) = v39 | LODWORD(v2);
          *(v43 + 11) = v35;
          v44 = v32[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v32[2];
              v46 = *v45 == v32;
              v32 = v45;
            }

            while (!v46);
          }

          v32 = v45;
        }

        while (v45 != v49);
      }
    }

    sub_10013F494(&v48, v49[0]);
  }
}

void sub_10013EC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

double sub_10013ECA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 152) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a2 + 21) = 0;
  *(a2 + 152) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 176) = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a2 + 24) = 0;
  a2[11] = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a2 + 27) = 0;
  *(a2 + 200) = 0u;
  v10 = a2[14];
  a2[14] = 0u;
  *(a1 + 224) = v10;
  v11 = a2[15];
  a2[15] = 0u;
  *(a1 + 240) = v11;
  v12 = a2[16];
  a2[16] = 0u;
  *(a1 + 256) = v12;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 272) = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a2 + 36) = 0;
  a2[17] = 0u;
  return result;
}

void *sub_10013ED9C(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  a1[33] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = a1[32];
  a1[32] = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = a1[31];
  a1[31] = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = a1[30];
  a1[30] = 0;
  if (v6)
  {
    operator delete();
  }

  v7 = a1[29];
  a1[29] = 0;
  if (v7)
  {
    operator delete();
  }

  v8 = a1[28];
  a1[28] = 0;
  if (v8)
  {
    operator delete();
  }

  v9 = a1[25];
  if (v9)
  {
    a1[26] = v9;
    operator delete(v9);
  }

  v11 = (a1 + 22);
  sub_10013EEBC(&v11);
  v11 = (a1 + 19);
  sub_100140784(&v11);
  return a1;
}

void sub_10013EEBC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10013874C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10013EF14(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1001407D8(a1);

  operator delete();
}

void sub_10013EF4C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1001409A0(a1);

  operator delete();
}

void sub_10013EF84(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A89F0;
  sub_100140A38(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10013EFEC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8888;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10013F040(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([*(v1 + 120) isMonitoring])
  {
    sub_101159490(v1, 1, 0x64);
  }

  if (sub_100099160(*(v1 + 168) + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000E46CC(v1, 1);
    if (vabdd_f64(Current, *(v1 + 248)) > *(v1 + 264))
    {
      if (qword_1025D4350 != -1)
      {
        sub_101B47B2C();
      }

      v3 = qword_1025D4358;
      if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Aggregating gyro sensor recorder samples.", &__p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B480B0();
      }

      *&v7 = *(v1 + 272);
      *(&v7 + 1) = 0x7FEFFFFFFFFFFFFFLL;
      v8 = 0;
      v5 = 0;
      v6 = 0;
      __p = 0;
      sub_100485D9C(&__p, &v7, &v9, 1uLL);
      (*(**(v1 + 168) + 32))(*(v1 + 168), &__p);
      *(v1 + 248) = Current;
      if (__p)
      {
        v5 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_10013F1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_10013F1F8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 176);
  v4 = *(a2 + 184);
  if (v3 != v4)
  {
    v6 = result;
    v7 = (a3 + 8);
    do
    {
      v8 = *v3 & 0xFFFFFFFD;
      v14 = 0;
      result = sub_100285D0C(v3, &v14 + 1, &v14);
      if (!v8)
      {
        break;
      }

      v13 = *v3 | (v14 << 32);
      result = sub_100280E54(a3, &v13);
      if (v7 == result)
      {
        break;
      }

      v9 = *(v3 + 16);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          ++v6[307];
        }

        else if (v9 == 4)
        {
          ++v6[305];
        }
      }

      else if (v9 == 1)
      {
        ++v6[306];
      }

      else if (v9 == 2)
      {
        ++v6[304];
      }

      v10 = *(v3 + 14);
      v11 = *(v3 + 15);
      while (v10 != v11)
      {
        if (*v10 && (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v12 = *(v10 + 4);
          if (v12 >= 2)
          {
            if (v12 == 2)
            {
              ++v6[302];
            }
          }

          else
          {
            ++v6[303];
          }
        }

        v10 += 32;
      }

      v3 += 36;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_10013F360(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  v3 = *(a2 + 160);
  if (v2 != v3)
  {
    v4 = ((*(a2 + 16) - *(result + 80)) * 1000.0);
    do
    {
      v5 = v2[8];
      if (v5 <= 4)
      {
        if (v5 == 1)
        {
          if (!*result && v2[9] == 1)
          {
            *result = v4;
          }

          if (!*(result + 16) && v2[12] == 1)
          {
            *(result + 16) = v4;
          }
        }

        else if (v5 == 4)
        {
          if (!*(result + 4) && v2[9] == 1)
          {
            *(result + 4) = v4;
          }

          if (!*(result + 20) && v2[13] == 1)
          {
            *(result + 20) = v4;
          }
        }
      }

      else if (v5 - 5 >= 2)
      {
        if (v5 == 8)
        {
          if (!*(result + 8) && v2[9] == 1)
          {
            *(result + 8) = v4;
          }

          if (!*(result + 24) && v2[12] == 1)
          {
            *(result + 24) = v4;
          }
        }
      }

      else
      {
        if (!*(result + 12) && v2[9] == 1)
        {
          *(result + 12) = v4;
        }

        if (!*(result + 28) && v2[12] == 1)
        {
          *(result + 28) = v4;
        }
      }

      v2 += 176;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_10013F494(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10013F494(a1, *a2);
    sub_10013F494(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_10013F4F8(_DWORD *a1, uint64_t a2, double a3)
{
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v5 = *(a2 + 152);
  for (i = *(a2 + 160); v5 != i; v5 += 176)
  {
    if (*(v5 + 173) == 1)
    {
      v7 = sub_1002CD0DC(*(v5 + 8), *v5);
      v24 = v7;
      v25 = BYTE4(v7);
      if ((v7 & 0x100000000) != 0)
      {
        v28 = &v24;
        v8 = sub_1002C8DC0(&v26, &v24, &unk_101C66300, &v28);
        v9 = v8;
        v11 = v8[6];
        v10 = v8[7];
        if (v11 >= v10)
        {
          v13 = v8[5];
          v14 = v11 - v13;
          v15 = (v11 - v13) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v17 = v10 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
          v19 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            sub_1000B85D0((v8 + 5), v19);
          }

          v20 = (v11 - v13) >> 2;
          v21 = (4 * v15);
          v22 = (4 * v15 - 4 * v20);
          *v21 = *(v5 + 168);
          v12 = v21 + 1;
          memcpy(v22, v13, v14);
          v23 = v9[5];
          v9[5] = v22;
          v9[6] = v12;
          v9[7] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v11 = *(v5 + 168);
          v12 = v11 + 4;
        }

        v9[6] = v12;
        sub_1002C8E98(a1, v5, v24);
      }
    }
  }

  sub_10013F6E4(a1, &v26, a3);
  if (*(a2 + 81) == 1 && *(a2 + 80) == 1)
  {
    ++a1[627];
  }

  sub_10013F494(&v26, v27[0]);
}

void sub_10013F6E4(uint64_t a1, void *a2, double a3)
{
  v191[0] = 0;
  v191[1] = 0;
  v190 = v191;
  v5 = (a2 + 1);
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = *(v4 + 5);
      v7 = *(v4 + 6);
      v8 = 126 - 2 * __clz((v7 - v6) >> 2);
      if (v7 == v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      sub_1002CCB64(v6, v7, buf, v9, 1, a3);
      v10 = sub_10014066C(&v190, v4 + 8);
      v11 = *(v4 + 5);
      v12 = *(v4 + 6) == v11;
      v13 = (*(v4 + 6) - v11) >> 2;
      *v10 = v13;
      if (!v12)
      {
        if (v13 >= 5)
        {
          v14 = 5;
        }

        else
        {
          v14 = v13;
        }

        v15 = v10 + 1;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        do
        {
          v16 = *v11++;
          LODWORD(a3) = v16;
          *v15++ = v16;
          --v14;
        }

        while (v14);
      }

      v17 = *(v4 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v4 + 2);
          v12 = *v18 == v4;
          v4 = v18;
        }

        while (!v12);
      }

      v4 = v18;
    }

    while (v18 != v5);
  }

  *buf = 0;
  v19 = sub_10014066C(&v190, buf);
  *buf = 1;
  v187 = sub_10014066C(&v190, buf);
  *buf = 4;
  v186 = sub_10014066C(&v190, buf);
  *buf = 2;
  v185 = sub_10014066C(&v190, buf);
  *buf = 3;
  v20 = sub_10014066C(&v190, buf);
  *buf = 5;
  v21 = sub_10014066C(&v190, buf);
  *buf = 6;
  v22 = sub_10014066C(&v190, buf);
  *buf = 7;
  v23 = sub_10014066C(&v190, buf);
  *buf = 8;
  v24 = sub_10014066C(&v190, buf);
  *buf = 9;
  v25 = sub_10014066C(&v190, buf);
  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v26 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *v19;
    v28 = *(v19 + 3);
    v29 = *(v19 + 2);
    v30 = *(v19 + 4);
    v31 = *(v19 + 5);
    v32 = *v187;
    v33 = *(v187 + 2);
    v34 = *(v187 + 3);
    v35 = *(v187 + 4);
    v36 = *(v187 + 5);
    v37 = *v186;
    v39 = *(v186 + 2);
    v38 = *(v186 + 3);
    v41 = *(v186 + 4);
    v40 = *(v186 + 5);
    v42 = *v185;
    v44 = *(v185 + 2);
    v43 = *(v185 + 3);
    v46 = *(v185 + 4);
    v45 = *(v185 + 5);
    v47 = *v20;
    v49 = *(v20 + 2);
    v48 = *(v20 + 3);
    v151 = *(v20 + 4);
    v153 = *(v20 + 5);
    v50 = *v21;
    v155 = *(v21 + 2);
    v159 = *(v21 + 3);
    v163 = *(v21 + 4);
    v165 = *(v21 + 5);
    v51 = *v22;
    v167 = *(v22 + 2);
    v171 = *(v22 + 3);
    v173 = *(v22 + 4);
    v52 = *v23;
    v177 = *(v22 + 5);
    v179 = *(v23 + 2);
    v183 = *(v23 + 3);
    v53 = *v24;
    v54 = *v25;
    *buf = 134364160;
    v56 = *(v23 + 4);
    v55 = *(v23 + 5);
    v57 = *(v24 + 2);
    v58 = *(v24 + 3);
    v59 = *(v24 + 4);
    v150 = *(v24 + 5);
    v161 = *(v25 + 2);
    v169 = *(v25 + 3);
    v175 = *(v25 + 4);
    v181 = *(v25 + 5);
    *&buf[14] = v29;
    v60 = *(v19 + 6);
    v61 = *(v187 + 6);
    v62 = *(v186 + 6);
    v63 = *(v185 + 6);
    v64 = *(v20 + 6);
    v65 = *(v21 + 6);
    v66 = *(v22 + 6);
    LODWORD(v29) = *(v23 + 6);
    v67 = *(v24 + 6);
    v157 = *(v25 + 6);
    v314 = v28;
    v316 = v30;
    v318 = v31;
    v320 = v60;
    v324 = v33;
    v326 = v34;
    v328 = v35;
    v330 = v36;
    v332 = v61;
    v336 = v39;
    v338 = v38;
    v340 = v41;
    v342 = v40;
    v344 = v62;
    v348 = v44;
    v350 = v43;
    v352 = v46;
    v354 = v45;
    v356 = v63;
    v360 = v49;
    v362 = v48;
    v364 = v151;
    v366 = v153;
    v368 = v64;
    v372 = v155;
    v374 = v159;
    v376 = v163;
    v378 = v165;
    v380 = v65;
    v384 = v167;
    v386 = v171;
    v388 = v173;
    v390 = v177;
    v392 = v66;
    v396 = v179;
    v398 = v183;
    v400 = v56;
    v402 = v55;
    v404 = *&v29;
    v408 = v57;
    v410 = v58;
    v412 = v59;
    v414 = v150;
    v416 = v67;
    v420 = v161;
    v422 = v169;
    v424 = v175;
    v426 = v181;
    v428 = v157;
    *&buf[4] = v27;
    *&buf[12] = 2050;
    v313 = 2050;
    v315 = 2050;
    v317 = 2050;
    v319 = 2050;
    v321 = 2050;
    v322 = v32;
    v323 = 2050;
    v325 = 2050;
    v327 = 2050;
    v329 = 2050;
    v331 = 2050;
    v333 = 2050;
    v334 = v37;
    v335 = 2050;
    v337 = 2050;
    v339 = 2050;
    v341 = 2050;
    v343 = 2050;
    v345 = 2050;
    v346 = v42;
    v347 = 2050;
    v349 = 2050;
    v351 = 2050;
    v353 = 2050;
    v355 = 2050;
    v357 = 2050;
    v358 = v47;
    v359 = 2050;
    v361 = 2050;
    v363 = 2050;
    v365 = 2050;
    v367 = 2050;
    v369 = 2050;
    v370 = v50;
    v371 = 2050;
    v373 = 2050;
    v375 = 2050;
    v377 = 2050;
    v379 = 2050;
    v381 = 2050;
    v382 = v51;
    v383 = 2050;
    v385 = 2050;
    v387 = 2050;
    v389 = 2050;
    v391 = 2050;
    v393 = 2050;
    v394 = v52;
    v395 = 2050;
    v397 = 2050;
    v399 = 2050;
    v401 = 2050;
    v403 = 2050;
    v405 = 2050;
    v406 = v53;
    v407 = 2050;
    v409 = 2050;
    v411 = 2050;
    v413 = 2050;
    v415 = 2050;
    v417 = 2050;
    v418 = v54;
    v419 = 2050;
    v421 = 2050;
    v423 = 2050;
    v425 = 2050;
    v427 = 2050;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#track_status,L1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,Q1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,G1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,E1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,B1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,L5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,Q5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,E5a,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,B2a,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,NL5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f", buf, 0x25Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016C8DD8(buf);
    v107 = *v19;
    v108 = *(v19 + 3);
    v109 = *(v19 + 2);
    v110 = *(v19 + 4);
    v111 = *(v19 + 5);
    v112 = *v187;
    v113 = *(v187 + 2);
    v114 = *(v187 + 3);
    v115 = *(v187 + 4);
    v116 = *(v187 + 5);
    v117 = *v186;
    v119 = *(v186 + 2);
    v118 = *(v186 + 3);
    v121 = *(v186 + 4);
    v120 = *(v186 + 5);
    v122 = *v185;
    v124 = *(v185 + 2);
    v123 = *(v185 + 3);
    v126 = *(v185 + 4);
    v125 = *(v185 + 5);
    v127 = *v20;
    v129 = *(v20 + 2);
    v128 = *(v20 + 3);
    v154 = *(v20 + 4);
    v156 = *(v20 + 5);
    v130 = *v21;
    v158 = *(v21 + 2);
    v162 = *(v21 + 3);
    v164 = *(v21 + 4);
    v131 = *v22;
    v166 = *(v21 + 5);
    v168 = *(v22 + 2);
    v172 = *(v22 + 3);
    v176 = *(v22 + 4);
    v178 = *(v22 + 5);
    v132 = *v23;
    v180 = *(v23 + 2);
    v184 = *(v23 + 3);
    v133 = *v24;
    v134 = *v25;
    v192 = 134364160;
    v136 = *(v23 + 4);
    v135 = *(v23 + 5);
    v137 = *(v24 + 2);
    v138 = *(v24 + 3);
    v139 = *(v24 + 4);
    v152 = *(v24 + 5);
    v160 = *(v25 + 2);
    v170 = *(v25 + 3);
    v174 = *(v25 + 4);
    v182 = *(v25 + 5);
    v195 = v109;
    v140 = *(v19 + 6);
    v141 = *(v187 + 6);
    v142 = *(v186 + 6);
    v143 = *(v185 + 6);
    v144 = *(v20 + 6);
    v145 = *(v21 + 6);
    v146 = *(v22 + 6);
    LODWORD(v109) = *(v23 + 6);
    v147 = *(v24 + 6);
    v188 = *(v25 + 6);
    v197 = v108;
    v199 = v110;
    v201 = v111;
    v203 = v140;
    v207 = v113;
    v209 = v114;
    v211 = v115;
    v213 = v116;
    v215 = v141;
    v219 = v119;
    v221 = v118;
    v223 = v121;
    v225 = v120;
    v227 = v142;
    v231 = v124;
    v233 = v123;
    v235 = v126;
    v237 = v125;
    v239 = v143;
    v243 = v129;
    v245 = v128;
    v247 = v154;
    v249 = v156;
    v251 = v144;
    v255 = v158;
    v257 = v162;
    v259 = v164;
    v261 = v166;
    v263 = v145;
    v267 = v168;
    v269 = v172;
    v271 = v176;
    v273 = v178;
    v275 = v146;
    v279 = v180;
    v281 = v184;
    v283 = v136;
    v285 = v135;
    v287 = *&v109;
    v291 = v137;
    v293 = v138;
    v295 = v139;
    v297 = v152;
    v299 = v147;
    v303 = v160;
    v305 = v170;
    v307 = v174;
    v309 = v182;
    v311 = v188;
    v193 = v107;
    v194 = 2050;
    v196 = 2050;
    v198 = 2050;
    v200 = 2050;
    v202 = 2050;
    v204 = 2050;
    v205 = v112;
    v206 = 2050;
    v208 = 2050;
    v210 = 2050;
    v212 = 2050;
    v214 = 2050;
    v216 = 2050;
    v217 = v117;
    v218 = 2050;
    v220 = 2050;
    v222 = 2050;
    v224 = 2050;
    v226 = 2050;
    v228 = 2050;
    v229 = v122;
    v230 = 2050;
    v232 = 2050;
    v234 = 2050;
    v236 = 2050;
    v238 = 2050;
    v240 = 2050;
    v241 = v127;
    v242 = 2050;
    v244 = 2050;
    v246 = 2050;
    v248 = 2050;
    v250 = 2050;
    v252 = 2050;
    v253 = v130;
    v254 = 2050;
    v256 = 2050;
    v258 = 2050;
    v260 = 2050;
    v262 = 2050;
    v264 = 2050;
    v265 = v131;
    v266 = 2050;
    v268 = 2050;
    v270 = 2050;
    v272 = 2050;
    v274 = 2050;
    v276 = 2050;
    v277 = v132;
    v278 = 2050;
    v280 = 2050;
    v282 = 2050;
    v284 = 2050;
    v286 = 2050;
    v288 = 2050;
    v289 = v133;
    v290 = 2050;
    v292 = 2050;
    v294 = 2050;
    v296 = 2050;
    v298 = 2050;
    v300 = 2050;
    v301 = v134;
    v302 = 2050;
    v304 = 2050;
    v306 = 2050;
    v308 = 2050;
    v310 = 2050;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#track_status,L1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,Q1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,G1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,E1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,B1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,L5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,Q5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,E5a,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,B2a,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,NL5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f", &v192, 602);
    v149 = v148;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::updateCn0AndSignalCountSessionStats(MapSignalTypeToCn0Vector &)", "%s\n", v148);
    if (v149 != buf)
    {
      free(v149);
    }
  }

  if (*(a1 + 2472) == 1)
  {
    v68 = 40;
    v69 = &unk_101DB5DE8;
    do
    {
      *buf = v69;
      v70 = sub_1002CD1A0(a1 + 312, v69, &unk_101C66300, buf);
      *buf = v69;
      v71 = sub_1002C8DC0(a2, v69, &unk_101C66300, buf);
      v72 = v71[6] - v71[5];
      v73 = v72 >> 2;
      v74 = v72 >> 2;
      if (v73 < 0xD)
      {
        v75 = 6;
      }

      else
      {
        v75 = 7;
      }

      if (v73 < 9)
      {
        v75 = 5;
      }

      if (v73 >= 5)
      {
        LODWORD(v74) = v75;
      }

      v192 = v74;
      *buf = &v192;
      v76 = sub_1003E3DEC((v70 + 5), &v192, &unk_101C66300, buf);
      ++v76[5];
      ++v69;
      v68 -= 4;
    }

    while (v68);
    do
    {
      *buf = &unk_101DB5DE8 + v68;
      v77 = sub_1002CD1A0(a1 + 336, (&unk_101DB5DE8 + v68), &unk_101C66300, buf);
      v78 = sub_10014066C(&v190, (&unk_101DB5DE8 + v68));
      v79 = (v78 + 1);
      v80 = 20;
      do
      {
        if (*v79 > 0.0)
        {
          v192 = sub_1002C8FE0(v78, v79);
          *buf = &v192;
          v78 = sub_1003E3DEC((v77 + 5), &v192, &unk_101C66300, buf);
          ++v78[5];
        }

        ++v79;
        v80 -= 4;
      }

      while (v80);
      v68 += 4;
    }

    while (v68 != 40);
    v81 = *a2;
    if (*a2 != v5)
    {
      v82 = (a1 + 1272);
      do
      {
        v83 = v81[8];
        v84 = *v82;
        if (!*v82)
        {
          goto LABEL_47;
        }

        v85 = a1 + 1272;
        do
        {
          if (*(v84 + 32) >= v83)
          {
            v85 = v84;
          }

          v84 = *(v84 + 8 * (*(v84 + 32) < v83));
        }

        while (v84);
        if (v85 == v82 || v83 < *(v85 + 32))
        {
LABEL_47:
          *buf = v81[8];
          *&buf[8] = 0;
          sub_1002928BC(a1 + 1264, buf, buf);
          *buf = v81[8];
          *&buf[4] = 0;
          sub_101081A3C(a1 + 1312, buf, buf);
        }

        v86 = *sub_1003DD9F8(a1 + 1264, v81 + 8);
        v88 = *(v81 + 5);
        v87 = *(v81 + 6);
        v89 = *sub_1001FD038(a1 + 1312, v81 + 8);
        *sub_1003DD9F8(a1 + 1264, v81 + 8) = (((v87 - v88) >> 2) + v86 * v89) / (v89 + 1);
        v90 = sub_1001FD038(a1 + 1312, v81 + 8);
        ++*v90;
        v91 = *(v81 + 1);
        if (v91)
        {
          do
          {
            v92 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v92 = *(v81 + 2);
            v12 = *v92 == v81;
            v81 = v92;
          }

          while (!v12);
        }

        v81 = v92;
      }

      while (v92 != v5);
    }

    v93 = v190;
    if (v190 != v191)
    {
      v94 = (a1 + 1248);
      do
      {
        v95 = *(v93 + 8);
        v96 = *v94;
        if (!*v94)
        {
          goto LABEL_63;
        }

        v97 = a1 + 1248;
        do
        {
          if (*(v96 + 32) >= v95)
          {
            v97 = v96;
          }

          v96 = *(v96 + 8 * (*(v96 + 32) < v95));
        }

        while (v96);
        if (v97 == v94 || v95 < *(v97 + 32))
        {
LABEL_63:
          *buf = *(v93 + 8);
          *&buf[8] = 0;
          sub_1002928BC(a1 + 1240, buf, buf);
          *buf = *(v93 + 8);
          *&buf[4] = 0;
          sub_101081A3C(a1 + 1288, buf, buf);
        }

        v98 = v93[5];
        if (v98)
        {
          if (v98 >= 5)
          {
            v99 = 5;
          }

          else
          {
            v99 = v93[5];
          }

          v100 = (v93 + 6);
          do
          {
            v101 = *sub_1003DD9F8(a1 + 1240, v93 + 8);
            v102 = *v100;
            v103 = *sub_1001FD038(a1 + 1288, v93 + 8);
            *sub_1003DD9F8(a1 + 1240, v93 + 8) = (v102 + v101 * v103) / (v103 + 1);
            v104 = sub_1001FD038(a1 + 1288, v93 + 8);
            ++*v104;
            ++v100;
            --v99;
          }

          while (v99);
        }

        v105 = v93[1];
        if (v105)
        {
          do
          {
            v106 = v105;
            v105 = *v105;
          }

          while (v105);
        }

        else
        {
          do
          {
            v106 = v93[2];
            v12 = *v106 == v93;
            v93 = v106;
          }

          while (!v12);
        }

        v93 = v106;
      }

      while (v106 != v191);
    }
  }

  sub_100140738(v191[0]);
}

uint64_t *sub_10014066C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100140738(void *a1)
{
  if (a1)
  {
    sub_100140738(*a1);
    sub_100140738(a1[1]);

    operator delete(a1);
  }
}

void sub_100140784(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10030290C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001407D8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A94B8;
  v2 = a1 + 104;
  sub_100140854(a1);
  sub_100027438(v2);
  sub_100027438(a1 + 48);
  sub_100027438(a1 + 24);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_100140854(void *result)
{
  if (qword_102637D30 != result)
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

    v4 = v1[9];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[12];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_10014094C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9440;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001409A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8A68;
  if (qword_102637C80 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 16);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_100140A38(void *result)
{
  if (qword_102637C78 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_100140B04(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8900;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100140B58(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9260;
  sub_100140BC0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100140BC0(void *result)
{
  if (qword_102637D08 != result)
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

    result = v1[5];
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void sub_100140CE4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8D38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

id *sub_100140D38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1000137E0();

  return sub_100140D74(v1, 0, v2);
}

id *sub_100140D74(id *result, int a2, double a3)
{
  v5 = result;
  if (a2)
  {
    result = [result[81] setNextFireDelay:1.0];
  }

  if (*(v5 + 632) != a2)
  {
    *(v5 + 632) = a2;
    if (*(v5 + 528) == 1)
    {
      v11 = off_102491200;
      v14 = a2;
      Current = CFAbsoluteTimeGetCurrent();
      v13 = a3;
      v8 = sub_10015ADF4(v6, v7);
      sub_1010CF5BC(v8, &v11);
      sub_10152D354(v15);
      sub_1015556D4(v15);
      v17 |= 1u;
      *&v15[87] = Current;
      v9 = v16;
      *(v16 + 20) |= 1u;
      *(v9 + 8) = a3;
      v10 = v16;
      *(v16 + 20) |= 2u;
      *(v10 + 16) = a2;
      if (qword_102637F48 != -1)
      {
        sub_101B7BC8C();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, v15);
      }

      sub_101532FA8(v15);
    }

    HIDWORD(v15[0]) = 0;
    *(v15 + 1) = 0;
    LOBYTE(v15[0]) = a2;
    *&v15[1] = a3;
    LODWORD(v11) = 6;
    return (*(*v5 + 19))(v5, &v11, v15, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

void sub_100140F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_100140F48(uint64_t a1, _DWORD *a2, char *a3)
{
  if (*a2 == 5)
  {
    v4 = *a3;
    *(a1 + 1416) = *a3;
    goto LABEL_5;
  }

  if (*a2 == 6)
  {
    *(a1 + 1417) = *a3;
    v4 = *(a1 + 1416);
LABEL_5:
    v13 = 25;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(a1 + 1417);
    }

    HIBYTE(v13) = v5 & 1;
    if (qword_1025D4200 != -1)
    {
      sub_101AD9AD8();
    }

    v6 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 1417);
      v8 = *(a1 + 1416);
      *buf = 67109632;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = v5 & 1;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Sending induced motion: touch, %d, vibe, %d, sum, %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        sub_101AD9CD8();
      }

      v10 = *(a1 + 1416);
      v15 = 1024;
      v16 = v10;
      v17 = 1024;
      v18 = v5 & 1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Sending induced motion: touch, %d, vibe, %d, sum, %d", &v14, 20, 67109632);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::onInducedMotionNotification(const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    sub_1001411EC(a1 + 192, &v13, 0);
    return;
  }

  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v9 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Unhandled notification from CLMotionState in CLMotionCoprocessor.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101ADF884();
  }
}

void sub_1001411EC(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_100F669F0;
    v8[4] = nullsub_1747;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014133C;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_100141318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100141330(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_10014133C(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 25;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1001413C0(uint64_t a1, double a2, double a3)
{
  sub_1001414A8(a1, *&a2, a3);
  if (*(a1 + 48) == 1)
  {
    v5 = sub_10014179C(a1, 20.0);
    v6 = sub_10014179C(a1, 0.0);
    if (v5 != -9999.0)
    {
      v7 = v6 == -9999.0;
      v8 = vabds_f32(v5, v6);
      if (!v7 && v8 < 1.0)
      {
        sub_10014170C(a1, a3 + -4.0);
        *(a1 + 48) = 0;
        *(a1 + 56) = a3;
      }
    }
  }

  else if (*(a1 + 49) == 1)
  {
    v10 = sub_10014179C(a1, 0.0);
    v11 = sub_1001418C0(a1);
    if (v10 != -9999.0)
    {
      v7 = v11 == -9999.0;
      v12 = vabds_f32(v10, v11);
      if (!v7 && v12 >= 3.0)
      {
        *(a1 + 48) = 1;
      }
    }
  }
}

uint64_t sub_1001414A8(uint64_t a1, float a2, double a3)
{
  sub_100141534(a1, a3);
  v7.n128_f64[0] = a3;
  v7.n128_u32[2] = sub_1000A6C00(a2 * 1000.0, 101320.0);
  sub_100141680(a1, &v7);
  result = sub_10014170C(a1, a3 + -44.0);
  *(a1 + 49) = result != 0;
  return result;
}

void sub_100141534(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v5 = v2 + *(a1 + 32) - 1;
    v6 = *(a1 + 8);
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v5);
    if (vabdd_f64(a2, *v7) <= 44.0)
    {
      for (i = *v7 + 1.0; i < a2; i = *v7 + 1.0)
      {
        *v7 = i;
        v14.n128_u32[2] = -971228160;
        v14.n128_f64[0] = i;
        v13 = *(a1 + 40) + *(a1 + 32) - 1;
        v14.n128_u32[2] = *(*(*(a1 + 8) + ((v13 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v13 + 8);
        sub_100141680(a1, &v14);
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v8 = *(a1 + 16);
      *(a1 + 40) = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = *(a1 + 16);
          v6 = (*(a1 + 8) + 8);
          *(a1 + 8) = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 128;
      }

      else
      {
        if (v9 != 2)
        {
          return;
        }

        v11 = 256;
      }

      *(a1 + 32) = v11;
    }
  }
}

__n128 sub_100141680(unint64_t *a1, __n128 *a2)
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
    sub_1008DC7E4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t sub_10014170C(void *a1, double a2)
{
  v2 = a1[5];
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = a1[4];
    if (*(*(a1[1] + ((v6 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v6) >= a2)
    {
      break;
    }

    a1[4] = v6 + 1;
    a1[5] = v2 - 1;
    sub_100014444(a1, 1);
    v5 = (v5 + 1);
    v2 = a1[5];
  }

  while (v2);
  return v5;
}

float sub_10014179C(void *a1, double a2)
{
  v2 = a1[5];
  if (!v2)
  {
    return -9999.0;
  }

  v3 = a1[4];
  v4 = v3 + v2;
  v5 = v3 + v2 - 1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v5) - a2;
  v9 = (v6 + 8 * (v4 >> 8));
  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 16 * v4;
  }

  v12 = 0;
  v13 = v8 + -4.0;
  v14 = 0.0;
  while (1)
  {
    v15 = v7 == v6 ? 0 : *(v6 + 8 * (v3 >> 8)) + 16 * a1[4];
    if (v15 == v10)
    {
      break;
    }

    if (v10 == *v9)
    {
      v18 = *--v9;
      v17 = v18;
      v19 = *(v18 + 4080);
      if (v19 <= v8)
      {
        if (v19 < v13)
        {
          break;
        }

        v14 = v14 + ((*(v17 + 4088) - v14) / ++v12);
      }

      v10 = *v9 + 4096;
    }

    else
    {
      v16 = *(v10 - 16);
      if (v16 <= v8)
      {
        if (v16 < v13)
        {
          break;
        }

        v14 = v14 + ((*(v10 - 8) - v14) / ++v12);
      }
    }

    v10 -= 16;
  }

  result = -9999.0;
  if (v12)
  {
    return v14;
  }

  return result;
}

float sub_1001418C0(void *a1)
{
  v1 = a1[5];
  if (!v1)
  {
    return -9999.0;
  }

  v2 = 0;
  v3 = a1[4];
  v4 = a1[1];
  v5 = a1[2];
  v6 = (v4 + 8 * (v3 >> 8));
  v7 = *v6;
  v8 = *v6 + 16 * v3;
  v9 = *v8 + 20.0;
  if (v5 == v4)
  {
    v8 = 0;
  }

  v10 = v3 + v1;
  v11 = 0.0;
LABEL_5:
  v12 = v7 - v8 + 4096;
  while (1)
  {
    v13 = v5 == v4 ? 0 : *(v4 + 8 * (v10 >> 8)) + 16 * v10;
    if (v8 == v13 || *v8 > v9)
    {
      break;
    }

    v11 = v11 + ((*(v8 + 8) - v11) / ++v2);
    v8 += 16;
    v12 -= 16;
    if (!v12)
    {
      v14 = v6[1];
      ++v6;
      v7 = v14;
      v8 = v14;
      goto LABEL_5;
    }
  }

  result = -9999.0;
  if (v2)
  {
    return v11;
  }

  return result;
}

void sub_100141990(uint64_t a1, uint64_t *a2, CLConnectionMessage **a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageTrackRunInfoEnabled", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 1;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageTrackRunInfoEnabled, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  if (*(v3 + 72) != 1)
  {
    os_activity_scope_leave(&state);
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100141B88(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
LABEL_11:
    sub_100008080(v4);
    return;
  }

  os_activity_scope_leave(&state);
}

void sub_100141B88(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  sub_10000EC00(buf, "com.apple.locationd.private_info");
  v5 = (*(*a1 + 40))(a1, buf);
  v6 = v5;
  if (SBYTE3(v17) < 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    v7 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageEnabledKey"];
    if (!v7 || (sub_1000700DC(v7, (a1 + 280)) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019EED30();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kCLConnectionMessageEnabledKey";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019EEDB0(buf);
        v13 = 136446210;
        v14 = "kCLConnectionMessageEnabledKey";
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", &v13, 12);
        v10 = v9;
        sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::handleMessageTrackRunInfoEnabled(std::shared_ptr<CLConnectionMessage>)", "%s\n", v9);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }

    goto LABEL_17;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v11 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 48);
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v16 = 2114;
    v17 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Client does not have appropriate entitlement to enable track run info, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

LABEL_17:
}

void sub_100141E78(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (([*(a1 + 16) isAuthorizedForServiceType:12] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13524();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 24);
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%@ with CorrectiveCompensation enabled attempting allowsMapCorrection.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13430(buf);
      v9 = *(a1 + 24);
      v28 = 138412290;
      v29 = v9;
      LODWORD(v27) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "%@ with CorrectiveCompensation enabled attempting allowsMapCorrection.", &v28, v27);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::handleMessageAllowsMapCorrection(std::shared_ptr<CLConnectionMessage>)", "%s\n", v10);
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if ([*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"])
  {
    [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
    v6 = v5;
  }

  else
  {
    v6 = -1.0;
  }

  HIBYTE(v27) = 1;
  v12 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageAllowsMapCorrectionKey"];
  if (v12 && (sub_1000700DC(v12, &v27 + 7) & 1) != 0)
  {
    if (*(a1 + 193) == HIBYTE(v27))
    {
      goto LABEL_24;
    }

    *(a1 + 193) = HIBYTE(v27);
    sub_10000EC00(buf, "kCLConnectionMessageLocation");
    if (sub_10004B3BC(a1))
    {
      v13 = (v6 < 100.0) & (*(a1 + 194) | *(a1 + 193));
      if (SHIBYTE(v42) < 0)
      {
        operator delete(*buf);
      }

      if (v13)
      {
        v14 = sub_10004D8F4(a1);
        [*(*v14 + 16) register:*(*v14 + 8) forNotification:17 registrationInfo:0];
        v15 = 1;
        goto LABEL_28;
      }
    }

    else if (SHIBYTE(v42) < 0)
    {
      operator delete(*buf);
    }

    v17 = sub_10004D8F4(a1);
    [*(*v17 + 16) unregister:*(*v17 + 8) forNotification:17];
    v15 = 0;
LABEL_28:
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v18 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 24);
      v20 = *(a1 + 44);
      v21 = *(a1 + 193);
      *buf = 138413314;
      *&buf[4] = v19;
      v39 = 1024;
      v40 = v20;
      v41 = 1024;
      v42 = v21;
      v43 = 2048;
      v44 = v6;
      v45 = 1024;
      v46 = v15;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLMM,Client,'%@',pid,%u,allowsMapCorrection,%d,desiredAccuracy,%lf,kNotificationMapMatching,%d", buf, 0x28u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B134E0(buf);
      v22 = *(a1 + 24);
      v23 = *(a1 + 44);
      v24 = *(a1 + 193);
      v28 = 138413314;
      v29 = v22;
      v30 = 1024;
      v31 = v23;
      v32 = 1024;
      v33 = v24;
      v34 = 2048;
      v35 = v6;
      v36 = 1024;
      v37 = v15;
      LODWORD(v27) = 40;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 2, "CLMM,Client,'%@',pid,%u,allowsMapCorrection,%d,desiredAccuracy,%lf,kNotificationMapMatching,%d", &v28, v27);
      v11 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::handleMessageAllowsMapCorrection(std::shared_ptr<CLConnectionMessage>)", "%s\n", v25);
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B13408();
  }

  v16 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "kCLConnectionMessageAllowsMapCorrectionKey";
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B13430(buf);
    v28 = 136446210;
    v29 = "kCLConnectionMessageAllowsMapCorrectionKey";
    LODWORD(v27) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", &v28, v27);
    v11 = v26;
    sub_100152C7C("Generic", 1, 0, 0, "void CLLocationSubscription::handleMessageAllowsMapCorrection(std::shared_ptr<CLConnectionMessage>)", "%s\n", v26);
LABEL_35:
    if (v11 != buf)
    {
      free(v11);
    }
  }

LABEL_24:
}

void sub_100142420(uint64_t a1, unsigned int a2)
{
  if ([*(a1 + 16) isAuthorizedForServiceType:12])
  {
    v4 = *(a1 + 232);
    if (v4 == 5)
    {
      v5 = 29;
    }

    else
    {
      v5 = 28;
    }

    v6 = v4 < 3 || v4 == 4;
    v7 = v6;
    if (v6)
    {
      v8 = 50;
    }

    else
    {
      v8 = v5;
    }

    if (a2 < 3 || a2 == 4)
    {
      v10 = 50;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (a2 == 5)
      {
        v10 = 29;
      }

      else
      {
        v10 = 28;
      }
    }

    if (v10 != v8)
    {
      if ((v7 & 1) == 0)
      {
        v13 = sub_10004D8F4(a1);
        [*(*v13 + 16) unregister:*(*v13 + 8) forNotification:v8];
      }

      if ((v9 & 1) == 0)
      {
        v14 = sub_10004D8F4(a1);
        [*(*v14 + 16) register:*(*v14 + 8) forNotification:v10 registrationInfo:0];
      }
    }

    *(a1 + 232) = a2;
    if (*(a1 + 208) != 1.79769313e308)
    {
      v15 = (a2 == 4 || a2 == 2) && ([*(a1 + 16) inUseLevelIsAtLeast:5] & 1) != 0;

      sub_1000F3B0C(a1, v15);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13524();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 24);
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%@ with CorrectiveCompensation enabled attempting setActivityType", &v16, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13538();
    }
  }
}

void sub_100142820(uint64_t result, double a2)
{
  if (*(result + 64) < a2)
  {
    v4 = (result + 32);
    v36 = v38;
    v37 = v39;
    do
    {
      v5 = *(result + 48);
      v6 = *(result + 52);
      v7 = *(result + 56);
      if (qword_1025D4620 != -1)
      {
        sub_1019E3F70();
      }

      v8 = v6 + v5 + v7;
      v9 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(result + 16);
        v11 = *(result + 40);
        v12 = *(result + 48);
        v13 = *(result + 52);
        v14 = *(result + 56);
        *buf = 134350336;
        v64 = v10;
        v65 = 2050;
        v66 = v11;
        v67 = 1026;
        v68 = v12;
        v69 = 1026;
        v70 = v13;
        v71 = 1026;
        v72 = v14;
        v73 = 1026;
        v74 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "TaMetric, daily, unique, %{public}ld, detected, %{public}ld, suspicious, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x2Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_1019E3F70();
        }

        v28 = *(result + 16);
        v29 = *(result + 40);
        v30 = *(result + 48);
        v31 = *(result + 52);
        v32 = *(result + 56);
        *__dst = 134350336;
        *&__dst[4] = v28;
        *&__dst[12] = 2050;
        *&__dst[14] = v29;
        *&__dst[22] = 1026;
        v56 = v30;
        v57 = 1026;
        v58 = v31;
        v59 = 1026;
        v60 = v32;
        v61 = 1026;
        v62 = v8;
        LODWORD(v35) = 46;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "TaMetric, daily, unique, %{public}ld, detected, %{public}ld, suspicious, %{public}d, %{public}d, %{public}d, %{public}d", __dst, v35, v36, v37);
        v34 = v33;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTrackingAvoidanceMetrics::checkToSend(CFAbsoluteTime)", "%s\n", v33);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      if ((*(result + 76) & 1) == 0)
      {
        v43 = _NSConcreteStackBlock;
        v44 = 3221225472;
        v45 = sub_100ACC264;
        v46 = &unk_10247D368;
        v47 = result;
        v48 = v8;
        AnalyticsSendEventLazy();
      }

      if (*(result + 40))
      {
        v15 = *(result + 24);
        if (v15 != v4)
        {
          do
          {
            if (*(v15 + 55) < 0)
            {
              sub_100007244(__dst, v15[4], v15[5]);
            }

            else
            {
              *__dst = *(v15 + 2);
              *&__dst[16] = v15[6];
            }

            v56 = *(v15 + 14);
            if (qword_1025D4620 != -1)
            {
              sub_1019E3F70();
            }

            v16 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v17 = __dst;
              if (__dst[23] < 0)
              {
                v17 = *__dst;
              }

              *buf = 136380931;
              v64 = v17;
              v65 = 1026;
              LODWORD(v66) = v56;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "TaMetric, detecteddaily, id, %{private}s, detections, %{public}d", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019E4378(buf);
              v21 = __dst;
              if (__dst[23] < 0)
              {
                v21 = *__dst;
              }

              v51 = 136380931;
              v52 = v21;
              v53 = 1026;
              v54 = v56;
              LODWORD(v35) = 18;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "TaMetric, detecteddaily, id, %{private}s, detections, %{public}d", &v51, v35);
              v23 = v22;
              sub_100152C7C("Generic", 1, 0, 2, "void CLTrackingAvoidanceMetrics::checkToSend(CFAbsoluteTime)", "%s\n", v22);
              if (v23 != buf)
              {
                free(v23);
              }
            }

            if ((*(result + 76) & 1) == 0)
            {
              v39[3] = _NSConcreteStackBlock;
              v39[4] = 3321888768;
              v39[5] = sub_100ACC388;
              v39[6] = &unk_102493198;
              if ((__dst[23] & 0x80000000) != 0)
              {
                sub_100007244(&__p, *__dst, *&__dst[8]);
              }

              else
              {
                __p = *__dst;
                v41 = *&__dst[16];
              }

              v42 = v56;
              AnalyticsSendEventLazy();
              if (SHIBYTE(v41) < 0)
              {
                operator delete(__p);
              }
            }

            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            v18 = v15[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v15[2];
                v20 = *v19 == v15;
                v15 = v19;
              }

              while (!v20);
            }

            v15 = v19;
          }

          while (v19 != v4);
        }
      }

      if (*(result + 80) < a2)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019E3F70();
        }

        v24 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(result + 88);
          *buf = 67240192;
          LODWORD(v64) = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "TaMetric, weekly, numberOfAlertsPerWeek, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019E44BC(v50, (result + 88));
        }

        if ((*(result + 76) & 1) == 0)
        {
          v38[3] = _NSConcreteStackBlock;
          v38[4] = 3221225472;
          v39[0] = sub_100ACC474;
          v39[1] = &unk_102449CF8;
          v39[2] = result;
          AnalyticsSendEventLazy();
        }

        *(result + 80) = *(result + 80) + 604800.0;
        *(result + 88) = 0;
      }

      if (*(result + 96) < a2)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019E3F70();
        }

        v26 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(result + 104);
          *buf = 67240192;
          LODWORD(v64) = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "TaMetric, monthly, numberOfAlertsPerMonth, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019E45C4(v49, (result + 104));
        }

        if ((*(result + 76) & 1) == 0)
        {
          v38[0] = sub_100ACC4F8;
          v38[1] = &unk_102449CF8;
          v38[2] = result;
          AnalyticsSendEventLazy();
        }

        *(result + 96) = *(result + 96) + 2592000.0;
        *(result + 104) = 0;
      }

      sub_100AC7928(result, 1);
    }

    while (*(result + 64) < a2);
    sub_100AC7D78(result, "sent", a2);
  }
}

void sub_100142FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100143010(uint64_t a1, __int128 *a2, uint64_t a3, double a4)
{
  if (*(a1 + 262))
  {
    v9 = *a2;
    v7 = a4;
    v8 = 5;
    sub_10131A434(a1, &v7);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283777;
      v11 = *(&v9 + 1);
      v12 = 2048;
      v13 = a4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedCMAlsModelOutput,alsModelOutputEvidence,%{private}f,currentTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B539B0();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffCMAlsModelOutput", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B538DC();
    }
  }
}

double sub_100143194(double *a1, uint64_t a2)
{
  result = -1.0;
  if (*a1 > 0.0)
  {
    v8 = v2;
    v9 = v3;
    v6 = sub_10000B1F8(a1, a2);
    v7 = 0;
    return sub_10001A6B0(v6, &v7) - *a1;
  }

  return result;
}

void sub_1001431E8(uint64_t *a1, __objc2_class_ro **a2)
{
  v2 = a1[109];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a2;
  v4 = a1;
  p_info = a1 + 109;
  do
  {
    v6 = *(v2 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      p_info = v2;
    }

    v2 = *(v2 + 8 * v8);
  }

  while (v2);
  if (p_info == a1 + 109 || p_info[4] > a2)
  {
LABEL_9:
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "iter != fGenericClients.end()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "iter != fGenericClients.end()";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No client found for the connection", "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "iter != fGenericClients.end()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager_Unified.mm", 3636, "destroyGenericClient");
    __break(1u);
  }

  v11 = p_info[5];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    CLConnection::getName(v3);
    v13 = SBYTE3(v20) >= 0 ? buf : *buf;
    *v14 = 136446210;
    v15 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Client %{public}s disconnected", v14, 0xCu);
    if (SBYTE3(v20) < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F800(v3);
  }

  sub_10045E8A0(v4 + 108, p_info);
  operator delete(p_info);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

void sub_100143584(uint64_t a1)
{
  sub_10014393C(a1);

  operator delete();
}

id sub_1001435BC(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10031162C(a1);
}

void sub_100143684(uint64_t a1, int a2, uint64_t **a3, double a4)
{
  sub_100142820(a1, a4);
  if (a2)
  {
    sub_1000F2BC4(a1, a3, a3);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1019E43BC();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    v12 = "owned";
    v13 = *(a1 + 16);
    *buf = 136381443;
    v29 = v11;
    v14 = "add";
    if (a2)
    {
      v12 = "wild";
    }

    v30 = 2081;
    v31 = v12;
    if ((v9 & 1) == 0)
    {
      v14 = "skip";
    }

    v32 = 2080;
    v33 = v14;
    v34 = 2050;
    v35 = v13;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TaMetricEvent, onAvengerAdvertisement, id, %{private}s, %{private}s, %s, %{public}ld", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019E3F70();
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v15 = "owned";
    v16 = *(a1 + 16);
    v20 = 136381443;
    v21 = a3;
    if (a2)
    {
      v15 = "wild";
    }

    v22 = 2081;
    v23 = v15;
    if (v9)
    {
      v17 = "add";
    }

    else
    {
      v17 = "skip";
    }

    v24 = 2080;
    v25 = v17;
    v26 = 2050;
    v27 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "TaMetricEvent, onAvengerAdvertisement, id, %{private}s, %{private}s, %s, %{public}ld", &v20, 42);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTrackingAvoidanceMetrics::handleOnAdvertisement(BOOL, std::string, CFAbsoluteTime)", "%s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  if (v9)
  {
    sub_100AC7D78(a1, "unique", a4);
  }
}

void *sub_10014393C(uint64_t a1)
{
  *a1 = off_1024AF7D8;
  if (_os_feature_enabled_impl())
  {
    v2 = sub_1001435BC(*(a1 + 32));
    v3 = v2;
    if (v2)
    {
      if (sub_10014578C(v2))
      {
        if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(__p, v3->__r_.__value_.__l.__data_, v3->__r_.__value_.__l.__size_);
        }

        else
        {
          v4 = *&v3->__r_.__value_.__l.__data_;
          v9 = v3->__r_.__value_.__r.__words[2];
          *__p = v4;
        }

        if (v9 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        v6 = [NSString stringWithUTF8String:v5, __p[0], __p[1], v9];
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }

        [*(a1 + 56) inUseAssertionInvalidatedDueToWatchConnectivityForClientKey:v6];
      }
    }
  }

  [*(a1 + 32) invalidate];

  [*(a1 + 24) setValid:0];
  *(a1 + 24) = 0;

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;

  *(a1 + 64) = 0;
  return sub_100143A80(a1);
}

void *sub_100143A80(void *a1)
{
  *a1 = off_102455948;
  v2 = a1[1];
  if (v2)
  {
    CLConnection::deferredDelete(v2);
    a1[1] = 0;
  }

  return a1;
}

NSDictionary *sub_100143B54(uint64_t a1)
{
  v3[0] = @"logSequenceID";
  v4[0] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v3[1] = @"timestamp";
  v4[1] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 1)];
  v3[2] = @"temperature";
  v4[2] = [NSNumber numberWithDouble:*(*(a1 + 32) + 9)];
  v3[3] = @"biasX";
  v4[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 13)];
  v3[4] = @"biasY";
  v4[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 17)];
  v3[5] = @"biasZ";
  v4[5] = [NSNumber numberWithDouble:*(*(a1 + 32) + 21)];
  v3[6] = @"biasUncertaintyX";
  v4[6] = [NSNumber numberWithDouble:*(*(a1 + 32) + 25)];
  v3[7] = @"biasUncertaintyY";
  v4[7] = [NSNumber numberWithDouble:*(*(a1 + 32) + 29)];
  v3[8] = @"biasUncertaintyZ";
  v4[8] = [NSNumber numberWithDouble:*(*(a1 + 32) + 33)];
  v3[9] = @"dynamicBiasX";
  v4[9] = [NSNumber numberWithDouble:*(*(a1 + 32) + 37)];
  v3[10] = @"dynamicBiasY";
  v4[10] = [NSNumber numberWithDouble:*(*(a1 + 32) + 41)];
  v3[11] = @"dynamicBiasZ";
  v4[11] = [NSNumber numberWithDouble:*(*(a1 + 32) + 45)];
  v3[12] = @"temperatureFitUncertaintyX";
  v4[12] = [NSNumber numberWithDouble:*(*(a1 + 32) + 49)];
  v3[13] = @"temperatureFitUncertaintyY";
  v4[13] = [NSNumber numberWithDouble:*(*(a1 + 32) + 53)];
  v3[14] = @"temperatureFitUncertaintyZ";
  v4[14] = [NSNumber numberWithDouble:*(*(a1 + 32) + 57)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
}

uint64_t sub_100143DF0(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v22[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v23 = 256;
  v22[0] = *(a2 + 24);
  if (sub_10009CB48(v6, v22))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 288))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_1000AACB0(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_1019A9E88();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019A9EB0(buf);
          v21[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "Maximum number of entries exceeded, throwing out oldest entry.", v21, 2);
          v19 = v18;
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSignificantElevation>::addSuspectRecord(const T &) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_1019A9EF4();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019A9F1C(buf);
        v21[0] = 0;
        LODWORD(v20) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "Buffer was added to since db was inaccesible.", v21, v20);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSignificantElevation>::addSuspectRecord(const T &) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v7 = sub_1009E2980((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1019A9E88();
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
        sub_1019A9E88();
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