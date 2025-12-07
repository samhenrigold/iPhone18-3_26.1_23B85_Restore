id sub_1001C3CDC(uint64_t a1, void *a2)
{
  [*(a1 + 120) addObject:a2];
  if ([a2 type] == 1)
  {
    ++*(a1 + 196);
  }

  else if ([a2 type] == 4)
  {
    ++*(a1 + 200);
  }

  else if ([a2 type] == 6)
  {
    ++*(a1 + 204);
  }

  else
  {
    ++*(a1 + 208);
  }

  ++*(a1 + 192);
  v4 = *(a1 + 144);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_12;
  }

  [v4 horizontalAccuracy];
  v6 = v5;
  [a2 horizontalAccuracy];
  if (v6 > v7)
  {
    v8 = *(a1 + 144);
LABEL_12:

    *(a1 + 144) = a2;
  }

  result = [a2 horizontalAccuracy];
  if (v10 < 200.0)
  {
    if ([a2 type] == 1 || objc_msgSend(a2, "type") == 4 || objc_msgSend(a2, "type") == 11 || (result = objc_msgSend(a2, "type"), result == 13))
    {

      result = a2;
      *(a1 + 128) = result;
    }
  }

  return result;
}

void sub_1001C3E2C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1016ADBCC();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#imag,start", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016ADEB0();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  while (v3 != v4)
  {
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    v3 += 48;
  }

  *(a1 + 64) = 0;
  *(a1 + 82) = 0;
  *(a1 + 80) = 0;
  *(a1 + 73) = 1;
  *(a1 + 76) = 0;
}

_BYTE *sub_1001C3EF8(_BYTE *result)
{
  if ((result[624] & 1) == 0)
  {
    v1 = result;
    if (qword_1025D4650 != -1)
    {
      sub_10199A148();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registering motion activity", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10199A7F8();
    }

    [*(*(v1 + 13) + 16) register:*(*(v1 + 13) + 8) forNotification:1 registrationInfo:0];
    if ((v1[466] & 1) == 0)
    {
      [*(*(v1 + 14) + 16) register:*(*(v1 + 14) + 8) forNotification:0 registrationInfo:0];
    }

    [*(*(v1 + 15) + 16) register:*(*(v1 + 15) + 8) forNotification:2 registrationInfo:0];
    result = [*(*(v1 + 10) + 16) register:*(*(v1 + 10) + 8) forNotification:2 registrationInfo:0];
    v1[624] = 1;
  }

  return result;
}

uint64_t sub_1001C3FFC(uint64_t a1, uint64_t a2)
{
  if (qword_10265BAB8 != -1)
  {
    sub_10198BE14();
  }

  return qword_102637710;
}

double sub_1001C403C(uint64_t a1, int a2, double *a3)
{
  if (a2)
  {
    if (qword_1025D4300 != -1)
    {
      sub_100311618();
    }

    v3 = qword_1025D4308;
    if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", &v10, 2u);
    }

    v4 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_10198BE28();
    }
  }

  else
  {
    v4 = 0.0;
    if (sub_1001C4EAC(a1))
    {
      if (qword_1025D4300 != -1)
      {
        sub_100311618();
      }

      v7 = qword_1025D4308;
      if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_INFO))
      {
        v8 = *a3;
        v10 = 134349056;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Setting accelerometer update interval to %{public}f", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10198BF14(a3);
      }

      sub_10017A1F4(*(a1 + 40), *a3);
      return *a3;
    }
  }

  return v4;
}

void sub_1001C41E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1001C4280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C42D0(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981A0();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "DEM,start", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016FFA88();
  }

  if ((*(a1 + 153) & 1) == 0)
  {
    [*(*(a1 + 160) + 16) register:*(*(a1 + 160) + 8) forNotification:4 registrationInfo:0];
    if (qword_1025D4650 != -1)
    {
      sub_1016FF8FC();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "DEM,TBA,registered for TBA notifications", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016FFB6C();
    }

    *(a1 + 153) = 1;
  }

  *(a1 + 114) = 1;
}

BOOL sub_1001C4404(_BYTE *a1, char a2)
{
  a1[84] = a2;
  v2 = *a1;
  v3 = (*(**a1 + 24))(*a1);
  v4 = *(v2 + 8);

  return sub_1001752AC(v4, v3);
}

_UNKNOWN **sub_1001C4468(void *a1)
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
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, start event, state:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = a1[1];
  *(v4 + 88) = 0x7FF8000000000000;
  *(v4 + 80) = 0;
}

uint64_t sub_1001C457C(uint64_t a1, uint64_t a2)
{
  *a1 = off_1024F9498;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if ((*(a2 + 88) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v3 = *(a2 + 72);
    v4 = sub_1000081AC();
    v5 = *(a1 + 8);
    if (*(v5 + 84) == 1)
    {
      v6 = sub_1000081AC();
      v7 = *(*(a1 + 8) + 88);
      if (qword_1025D4650 != -1)
      {
        sub_10168BBC0();
      }

      v8 = v7 - v6 + 10.0;
      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#tt,fContinuousPulsingModeOn,1,timeUntilNextInterval,%f", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168C558();
      }
    }

    else
    {
      v8 = v3 - (v4 - *(v5 + 88));
    }

    if (v8 >= 1.0)
    {
      [*(*(a1 + 8) + 48) setNextFireDelay:v8];
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = v8;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#tt, timer setNextFireDelay, %f", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168C654();
      }
    }

    else
    {
      *(a1 + 16) = 1;
      sub_100175108(a1);
    }
  }

  else
  {
    *(a1 + 16) = 1;
    sub_100175108(a1);
  }

  return a1;
}

void sub_1001C4798(_BYTE *a1, uint64_t a2)
{
  if (sub_1001C4BF4(a1, a2))
  {
    if (a1[1680] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injection ignored in simulator mode", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017752AC();
      }
    }

    else if (a1[1696] & 1) != 0 || sub_100C3DAB0((a1 + 1700)) || (a1[1681])
    {
      v16 = 0xBFF0000000000000;
      sub_1016B0E50(a2, &v16, &__str);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (qword_1025D4650 != -1)
        {
          sub_100154094();
        }

        v8 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injectRavenOrbitFile", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1017700B0(buf);
          v14[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,#rof,injectRavenOrbitFile", v14, 2);
          v13 = v12;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectRavenOrbitFile(const std::string &)", "%s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        sub_1001324C4(buf);
        if (!sub_100132484(0x27u))
        {
          __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
        }

        v18 = 39;
        v20 |= 0x40000004u;
        v9 = v19;
        if (!v19)
        {
          operator new();
        }

        *(v19 + 20) |= 1u;
        v10 = *(v9 + 8);
        if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v10, &__str);
        sub_10013256C(a1, buf);
        sub_100133DCC(buf);
        v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v7 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injection ignored outside of session", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017751C8();
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injection ignored on unsupported devices", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017750E4();
    }
  }
}

void sub_1001C4B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C4BF4(uint64_t a1, uint64_t a2)
{
  if (qword_102659228 != -1)
  {
    sub_10191CC3C();
  }

  return byte_102659220;
}

_BYTE *sub_1001C4C2C(_BYTE *result)
{
  if (*(result + 12))
  {
    v1 = result;
    if ((result[625] & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10199A148();
      }

      v2 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registering,HighSpeedTransit", v3, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10199A478();
      }

      result = [*(*(v1 + 12) + 16) register:*(*(v1 + 12) + 8) forNotification:48 registrationInfo:0];
      v1[625] = 1;
    }
  }

  return result;
}

void sub_1001C4CF4(void *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  *a1 = off_1025019A0;
  *a1 = off_102474248;
  a1[1] = 0;
  v8 = a2;
  a1[5] = 0;
  a1[2] = v8;
  a1[3] = a3;
  a1[4] = a5;
  a1[6] = 0;
  operator new[]();
}

void sub_1001C4E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  sub_1017E7D44(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C4EAC(uint64_t a1)
{
  v2 = sub_100177B18(a1);
  v4 = v2;
  if ((v2 & 4) != 0)
  {
    if (!*(a1 + 40))
    {
      v5 = sub_1009B38EC(v2, v3);
      v8 = 0x30000FF00;
      v9 = 0;
      sub_101860780(v5);
    }
  }

  else
  {
    if (qword_1025D4300 != -1)
    {
      sub_100311618();
    }

    v6 = qword_1025D4308;
    if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Accel unavailable, unable to establish hid interface", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10198C00C();
    }
  }

  return (v4 >> 2) & 1;
}

uint64_t sub_1001C51D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 336) == 1)
  {
    *(v2 + 336) = 0;
  }

  v3 = *(v2 + 352);
  v4 = *(v2 + 360);
  *(v2 + 384) = 0;
  v5 = (v4 - v3) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v6 = *(v2 + 360);
      v3 = (*(v2 + 352) + 8);
      *(v2 + 352) = v3;
      v5 = (v6 - v3) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 11;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    v7 = 22;
  }

  *(v2 + 376) = v7;
LABEL_10:
  v8 = *(a1 + 8);
  v9 = v8[50];
  v10 = v8[51];
  if (v10 == v9)
  {
    v15 = v8 + 54;
    v10 = v8[50];
  }

  else
  {
    v11 = v8[53];
    v12 = &v9[v11 >> 4];
    v13 = *v12;
    v14 = *v12 + 808 * (v11 & 0xF);
    v15 = v8 + 54;
    v16 = *(v9 + (((v8[54] + v11) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 808 * ((*(v8 + 108) + v11) & 0xF);
    if (v14 != v16)
    {
      do
      {
        v17 = *(v14 + 688);
        if (v17)
        {
          sub_100008080(v17);
          v13 = *v12;
        }

        v14 += 808;
        if (v14 - v13 == 12928)
        {
          v18 = v12[1];
          ++v12;
          v13 = v18;
          v14 = v18;
        }
      }

      while (v14 != v16);
      v9 = v8[50];
      v10 = v8[51];
    }
  }

  *v15 = 0;
  v19 = v10 - v9;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v9);
      v20 = v8[51];
      v9 = (v8[50] + 8);
      v8[50] = v9;
      v19 = (v20 - v9) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 8;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_26;
    }

    v21 = 16;
  }

  v8[53] = v21;
LABEL_26:
  v22 = *(a1 + 8);
  if (*(v22 + 1248) == 1)
  {
    v23 = *(v22 + 1128);
    v24 = *(a1 + 8);
    if (v23)
    {
      sub_100008080(v23);
      v24 = *(a1 + 8);
    }

    *(v22 + 1248) = 0;
    v22 = v24;
  }

  if (*(v22 + 1264) == 1)
  {
    *(v22 + 1264) = 0;
  }

  return 1;
}

void *sub_1001C53A4(void *result)
{
  if (*(result + 56) == 1)
  {
    v8 = v1;
    v9 = v2;
    v3 = result;
    if (qword_1025D4650 != -1)
    {
      sub_1019E808C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLGnssAssistanceMapVector,start", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019E8308();
    }

    v5 = [*(*v3 + 16) register:*(*v3 + 8) forNotification:0 registrationInfo:0];
    if (sub_1001C5490(v5, v6))
    {
      [*(*v3 + 16) register:*(*v3 + 8) forNotification:1 registrationInfo:0];
    }

    return [*(v3[1] + 16) register:*(v3[1] + 8) forNotification:0 registrationInfo:0];
  }

  return result;
}

uint64_t sub_1001C5490(uint64_t a1, uint64_t a2)
{
  result = sub_10006FDD0(a1, a2);
  if (result)
  {
    return !sub_10006FEAC(result, v3);
  }

  return result;
}

id sub_1001C54B4(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101928290();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLSE,CLGnssAssistanceSignalEnv,start", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019284E4();
  }

  return [*(*a1 + 16) register:*(*a1 + 8) forNotification:0 registrationInfo:0];
}

uint64_t sub_1001C5560(uint64_t a1)
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

void sub_1001C55E4(uint64_t *a1)
{
  v2 = a1[388];
  if (v2)
  {
    sub_1007FF118(v2);
  }

  v3 = a1[383];
  if (v3)
  {
    sub_100C041AC(v3);
    v4 = a1[384];
    a1[383] = 0;
    a1[384] = 0;
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  if (*a1)
  {
    (*(**a1 + 240))(*a1);
  }

  a1[387] = 0xBFF0000000000000;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#raven,deconstructRavenController", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194238C();
  }
}

uint64_t sub_1001C5740(uint64_t a1)
{
  sub_1001C7A78(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001C577C(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *buf = 134284033;
    v33 = v5;
    v34 = 2049;
    v35 = v6;
    v36 = 2049;
    v37 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,gnss,notifyClientWithGnssStatusRequest,lastGnssStartTime_s,%{private}.3lf,lastGnssStopTime_s,%{private}.3lf,lastGnssYieldTime_s,%{private}.3lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A77EC8(a2);
  }

  *buf = 45;
  if (sub_10000608C(a1, buf, 1))
  {
    sub_100021AFC(v17);
    v24 = *a2;
    v25 = a2[2];
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[2];
      *buf = 134284033;
      v33 = v9;
      v34 = 2049;
      v35 = v10;
      v36 = 2049;
      v37 = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,gnss,notifyClientWithGnssStatusRequest,lastGnssStartTime_s,%{private}.3lf,lastGnssStopTime_s,%{private}.3lf,lastGnssYieldTime_s,%{private}.3lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A77C90(buf);
      v12 = *a2;
      v13 = a2[1];
      v14 = a2[2];
      v26 = 134284033;
      v27 = v12;
      v28 = 2049;
      v29 = v13;
      v30 = 2049;
      v31 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#CLGNSSStateQueryAssertion,gnss,notifyClientWithGnssStatusRequest,lastGnssStartTime_s,%{private}.3lf,lastGnssStopTime_s,%{private}.3lf,lastGnssYieldTime_s,%{private}.3lf", &v26, 32);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyClientWithGnssStatusRequest(const CLLocationProvider_Type::CLGNSSStateQueryAssertionReportData &)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    *buf = 45;
    (*(*a1 + 152))(a1, buf, v17, 1, 0xFFFFFFFFLL, 0);

    if (v22)
    {
      sub_100008080(v22);
    }

    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19)
    {
      sub_100008080(v19);
    }

    if (v18)
    {
      sub_100008080(v18);
    }
  }
}

void sub_1001C5A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001C5AB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = a2;
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a4;
    v10 = *(a1 + 3356);
    v11 = *(a1 + 3322);
    *buf = 67241216;
    v41 = v6;
    v42 = 1026;
    v43 = a3;
    v44 = 1026;
    v45 = v9;
    v46 = 1026;
    v47 = v10;
    v48 = 1026;
    v49 = v11;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLGnssProvider,updateGnssModeOfOperation,enable,%{public}d,numberOfClients,%{public}d,notification,%{public}d,prevNumberOfActiveGNSSClients,%{public}d,previousRhythmicGnssRunning,%{public}d", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v26 = *a4;
    v27 = *(a1 + 3356);
    v28 = *(a1 + 3322);
    v31[0] = 67241216;
    v31[1] = v6;
    v32 = 1026;
    v33 = a3;
    v34 = 1026;
    v35 = v26;
    v36 = 1026;
    v37 = v27;
    v38 = 1026;
    v39 = v28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "CLGnssProvider,updateGnssModeOfOperation,enable,%{public}d,numberOfClients,%{public}d,notification,%{public}d,prevNumberOfActiveGNSSClients,%{public}d,previousRhythmicGnssRunning,%{public}d", v31, 32);
    v30 = v29;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::updateGnssModeOfOperation(const BOOL, const uint32_t, const CLLocationProvider_Type::Notification &)", "%s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  if (*a4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLGnssProvider,invalid notification to update the state", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7837C();
    }

    return;
  }

  *(a1 + 3356) = a3;
  if (!v6)
  {
    if (a3 == 1)
    {
      if (!*(a1 + 3322))
      {
        goto LABEL_80;
      }

      if (sub_1001C6358(a1 + 3368))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v15 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz off", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A78618();
        }

        goto LABEL_64;
      }

      if (*(a1 + 3322) & 1) == 0 || (sub_1001C6358(a1 + 3368))
      {
LABEL_80:
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v21 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz active", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7853C();
        }

        return;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v25 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic Off", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A78460();
      }
    }

    else if (a3)
    {
      if (!*(a1 + 3322) || (sub_1001C6358(a1 + 3368) & 1) != 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,one of 1Hz de-registered", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A78988();
        }

        return;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v24 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic off,1hz On", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A788AC();
      }
    }

    else
    {
      if (!*(a1 + 3322) || (sub_1001C6358(a1 + 3368) & 1) != 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v14 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz only off", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A787D0();
        }

        goto LABEL_64;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Only Rhythmic Client off", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A786F4();
      }
    }

    *(a1 + 3322) = 0;
    return;
  }

  if (!a3)
  {
    goto LABEL_65;
  }

  if (a3 == 1)
  {
    if (sub_1001C6358(a1 + 3368))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Only Rhythmic Client", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A78B40();
      }

LABEL_94:
      *(a1 + 3322) = 1;
      return;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz Only", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78A64();
    }

    goto LABEL_64;
  }

  if (*(a1 + 3322) != 1)
  {
    goto LABEL_122;
  }

  if (sub_1001C6358(a1 + 3368))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic+1Hz", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78DD4();
    }

LABEL_64:
    a3 = 1;
LABEL_65:
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      v41 = a3;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,send1HzupdateNoti,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78EB0(a3);
      if (!a3)
      {
        return;
      }
    }

    else if (!a3)
    {
      return;
    }

    sub_1001C92EC(a1, 0, v6, -1);
    return;
  }

  if ((*(a1 + 3322) & 1) == 0)
  {
LABEL_122:
    if (sub_1001C6358(a1 + 3368))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v22 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic started,1Hz", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A78C1C();
      }

      goto LABEL_94;
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101A773B8();
  }

  v23 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,addition 1Hz", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A78CF8();
  }
}

uint64_t sub_1001C6358(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return sub_1001C6368(result);
  }

  return result;
}

void sub_1001C6380(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    if (*a2 == 1 && (v4 = *(a2 + 8), v4 < 3))
    {
      v5 = dword_101CAFC4C[v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 4);
    v9[0] = 67240448;
    v9[1] = v5;
    v10 = 1026;
    v11 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "feedRhythmicGnssStatus,eventType,%{public}d,eventStatus,%{public}d", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947BAC(a2, v5);
  }

  v8 = *(a1 + 1136);
  if (v8)
  {
    sub_1001BD68C(v8, v5, *(a2 + 4));
  }
}

void sub_1001C64C0(uint64_t a1)
{
  if (sub_1001C92A8())
  {
    sub_100021AFC(v11);
    v2 = sub_1000081AC() - *(a1 + 3264);
    v3 = *(a1 + 3344);
    v4 = sub_10001CF3C();
    v6 = (v2 >= 1200.0) & (v3 >> 1);
    if (v4 && !((v2 >= 1200.0) & (v3 >> 1) | !sub_10006FE30(v4, v5)))
    {
      v7 = *(a1 + 3320);
    }

    else
    {
      v7 = 1;
    }

    v18 = v7 & 1;
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240704;
      v25 = v18;
      v26 = 2050;
      v27 = v2;
      v28 = 1026;
      v29 = v6;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#ilsa,CLGnssProvider,notifyRhythmicStreamingControl,isStreamingAllowed,%{public}d,timeSinceLastGnssFix_s,%{public}.3lf,streamingForced,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A77C90(buf);
      v19[0] = 67240704;
      v19[1] = v18;
      v20 = 2050;
      v21 = v2;
      v22 = 1026;
      v23 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#ilsa,CLGnssProvider,notifyRhythmicStreamingControl,isStreamingAllowed,%{public}d,timeSinceLastGnssFix_s,%{public}.3lf,streamingForced,%{public}d", v19, 24);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyRhythmicGnssStreamingControlStateToClients()", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *buf = 42;
    (*(*a1 + 152))(a1, buf, v11, 1, 0xFFFFFFFFLL, 0);

    if (v16)
    {
      sub_100008080(v16);
    }

    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v13)
    {
      sub_100008080(v13);
    }

    if (v12)
    {
      sub_100008080(v12);
    }
  }
}

void sub_1001C6754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001C678C(uint64_t a1)
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  if (*(a1 + 943) < 0)
  {
    **(a1 + 920) = 0;
    *(a1 + 928) = 0;
  }

  else
  {
    *(a1 + 920) = 0;
    *(a1 + 943) = 0;
  }

  if (*(a1 + 967) < 0)
  {
    **(a1 + 944) = 0;
    *(a1 + 952) = 0;
  }

  else
  {
    *(a1 + 944) = 0;
    *(a1 + 967) = 0;
  }

  if (*(a1 + 991) < 0)
  {
    **(a1 + 968) = 0;
    *(a1 + 976) = 0;
  }

  else
  {
    *(a1 + 968) = 0;
    *(a1 + 991) = 0;
  }

  sub_1001C6988(a1, v2);
  v4 = sub_1000081AC();
  sub_1001C7214(a1 + 2664, v4);
  *(a1 + 2480) = 0;
  *(a1 + 2488) = 1;
  v5 = [qword_102658FB0 startLocation];

  if (v5)
  {
    if ((*(a1 + 2049) & 1) == 0)
    {
      sub_1006F5304(a1);
    }

    if ((*(a1 + 2050) & 1) == 0)
    {
      sub_1006F5478(a1);
    }

    sub_1006F2158(a1);
  }

  else
  {
    v8[0] = 9;
    (*(*a1 + 144))(a1, v8, 1, 0xFFFFFFFFLL);
  }

  sub_1001C7344(a1);
  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v6 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 2021);
    v8[0] = 67240192;
    v8[1] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Accessory,StartLocation,IgnoreAccessoryLocation,%{public}d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101913700(a1);
  }
}

void sub_1001C6988(_BYTE *a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 + 4096;
  if ((a1[6377] & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLAccessory,registered for unfiltered location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019139A4();
    }

    a1 = [*(*(v2 + 165) + 16) register:*(*(v2 + 165) + 8) forNotification:10 registrationInfo:0];
    v3[2281] = 1;
  }

  if ((v2[1984] & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessory,registered for propagated location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913A88();
    }

    a1 = [*(*(v2 + 165) + 16) register:*(*(v2 + 165) + 8) forNotification:27 registrationInfo:0];
    v2[1984] = 1;
  }

  if ((v3[2280] & 1) == 0)
  {
    v6 = sub_1001C9C28(a1, a2);
    if (byte_102658F9F < 0)
    {
      sub_100007244(__p, xmmword_102658F88, *(&xmmword_102658F88 + 1));
    }

    else
    {
      *__p = xmmword_102658F88;
      v9 = unk_102658F98;
    }

    v7 = [objc_msgSend(*(v2 + 4) silo];
    v11[0] = off_10246BFD0;
    v11[1] = v2;
    v11[3] = v11;
    sub_1001C6BF4(v6, __p, v7, v11);
    sub_1001C9C60(v11);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v3[2280] = 1;
  }
}

void sub_1001C6BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1001C9C60(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001C6BF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 8));
  if ((*(a1 + 96) & 1) == 0)
  {
    if (a2[23] < 0)
    {
      sub_100007244(&__dst, *a2, *(a2 + 1));
    }

    else
    {
      __dst = *a2;
      v23 = *(a2 + 2);
    }

    v24 = a3;
    sub_1001C7078(v25, a4);
    sub_1001C71AC((a1 + 72), &__dst);
    if (qword_1025D46B0 != -1)
    {
      sub_10195E914();
    }

    v8 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v9 = a2;
      if (a2[23] < 0)
      {
        v9 = *a2;
      }

      v10 = (*(a1 + 80) - *(a1 + 72)) >> 6;
      *buf = 136315394;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLMM,RouteHints,addObserver,%s,size,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10195E914();
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      v11 = (*(a1 + 80) - *(a1 + 72)) >> 6;
      v14 = 136315394;
      v15 = a2;
      v16 = 2048;
      v17 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,RouteHints,addObserver,%s,size,%lu", &v14, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMapRouteHintController::addObserver(std::string, dispatch_queue_t, std::function<void (const CLMapsRouteHintData &)>)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    sub_1001C9C60(v25);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__dst);
    }
  }

  std::mutex::unlock((a1 + 8));
}

void sub_1001C6E58(_Unwind_Exception *a1)
{
  sub_100866BA8(v2 - 144);
  std::mutex::unlock((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1001C6EA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([a2 count])
  {
    v4 = [objc_msgSend(a2 "allObjects")];
    if (v4)
    {
      v5 = [v4 UTF8String];
      v6 = strlen(v5);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v12) = v6;
      if (v6)
      {
        memmove(&v11, v5, v6);
      }

      *(&v11 + v7) = 0;
      v8 = (v3 + 2480);
      if (*(v3 + 2503) < 0)
      {
        operator delete(*v8);
      }

      *v8 = v11;
      *(v3 + 2496) = v12;
      if (qword_1025D4650 != -1)
      {
        sub_1016C8A14();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v10 = (v3 + 2480);
        if (*(v3 + 2503) < 0)
        {
          v10 = *v8;
        }

        LODWORD(v11) = 136446210;
        *(&v11 + 4) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#gnssawd Selected LocationClientKey ,%{public}s", &v11, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016CA85C((v3 + 2503), (v3 + 2480));
      }
    }
  }
}

uint64_t sub_1001C7078(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001C7110(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100007244(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  result = sub_1001C7078(v4 + 32, (a2 + 2));
  *(a1 + 8) = v4 + 64;
  return result;
}

uint64_t sub_1001C71AC(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1008668A4(a1, a2);
  }

  else
  {
    sub_1001C7110(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1001C71EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246BFD0;
  a2[1] = v2;
  return result;
}

void sub_1001C7214(uint64_t result, double a2)
{
  if (*(result + 3048) < 0.0)
  {
    v4 = (result + 236);
    v3 = *(result + 236);
    *(result + 3048) = a2;
    *(result + 236) = v3 + 1;
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = *(result + 3048);
      v8 = *v4;
      v9 = 134349568;
      v10 = Current;
      v11 = 2050;
      v12 = v7;
      v13 = 1026;
      v14 = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,locationSession,start,%{public}.1lf,sessions,%{public}d", &v9, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13138((result + 3048), v4);
    }

    *(result + 3104) = 0;
  }
}

void sub_1001C7344(uint64_t result)
{
  if (*(result + 2020) == 1 && (*(result + 2016) & 0x80000000) != 0)
  {
    v2 = (result + 2016);
    v3 = (result + 2024);
    if (*(result + 2047) < 0)
    {
      v3 = *v3;
    }

    v4 = open(v3, 526, 420);
    *v2 = v4;
    if (v4 < 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v5 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        v6 = *v2;
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 67109378;
        v10 = v6;
        v11 = 2080;
        v12 = v8;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Unable to open nmea fifo FD %d %s.", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101914BC8(v2);
      }
    }
  }
}

double sub_1001C747C(uint64_t a1, void *a2, double *a3)
{
  if (a2)
  {
    if (qword_1025D4300 != -1)
    {
      sub_100311618();
    }

    v4 = qword_1025D4308;
    if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unrecognized notification %{public}d", &v11, 8u);
    }

    v5 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_10198C16C(a2);
    }
  }

  else
  {
    v5 = 0.0;
    if (sub_1001C4EAC(a1))
    {
      if (qword_1025D4300 != -1)
      {
        sub_100311618();
      }

      v8 = qword_1025D4308;
      if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_INFO))
      {
        v9 = *a3;
        v11 = 134349056;
        v12 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Setting batch interval to %{public}f", &v11, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10198C26C(a3);
      }

      sub_100179350(*(a1 + 40), *a3);
      return *a3;
    }
  }

  return v5;
}

uint64_t sub_1001C7624(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_101BB629C();
  }

  v5 = a1 + 128;
  v4 = *(a1 + 128);
  if (v4 && ((*(*v4 + 72))(v4) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a2 + 56))(__p, a2);
      v12 = v22 >= 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: could not handle exiting %s", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB6048();
    }

LABEL_34:
    sub_10131EFC4(a1);
  }

  if (qword_1025D4650 != -1)
  {
    sub_101BB4D50();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    (*(*a2 + 56))(__p, a2);
    v7 = v22 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: entering %s", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101BB50D0();
    }

    v13 = qword_1025D4658;
    (*(*a2 + 56))(buf, a2);
    if (v18 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    v19 = 136315138;
    v20 = v14;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v13, 2, "Pedometer Assistance: entering %s", &v19);
    v16 = v15;
    if (v18 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLGNSSPedometerAssistanceController::ChangeState(PedometerAssistanceState *const)", "%s\n", v16);
    if (v16 != __p)
    {
      free(v16);
    }
  }

  *v5 = a2;
  result = (*(*a2 + 64))(a2);
  if ((result & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB50D0();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      (*(**v5 + 56))(__p);
      if (v22 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: could not handle entering %s", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB616C(v5);
    }

    goto LABEL_34;
  }

  return result;
}

void sub_1001C7A78(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1016679C4(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1001C7ABC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A650AC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssL5Context::onGnssModeOfOperationStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A650C0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssL5Context::onGnssModeOfOperationStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001C7C88(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001C7C88(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    v10[0] = 67240192;
    v10[1] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "L5Context,onGnssModeOfOperationStatusNotification,%{public}d", v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A65A98(a3);
  }

  if (*a3 == 41)
  {
    sub_1001C7D88(a1, v9, a4);
  }
}

void sub_1001C7D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 1448);
  v5 = *(a3 + 1452);
  v6 = *(a3 + 1456);
  v7 = *(a3 + 1464);
  v8 = *(a3 + 1472);
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67241472;
    v29 = v4;
    v30 = 1026;
    v31 = v6;
    v32 = 1026;
    v33 = v7 & 1;
    v34 = 1026;
    v35 = (v7 >> 1) & 1;
    v36 = 1026;
    v37 = v5;
    v38 = 1026;
    v39 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "L5Context,RhythmicModeNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v17[0] = 67241472;
    v17[1] = v4;
    v18 = 1026;
    v19 = v6;
    v20 = 1026;
    v21 = v7 & 1;
    v22 = 1026;
    v23 = (v7 >> 1) & 1;
    v24 = 1026;
    v25 = v5;
    v26 = 1026;
    v27 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "L5Context,RhythmicModeNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", v17, 38);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssL5Context::onRhythmicModeOfOperationNotification(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v11 = (a1 + 57);
  v10 = *(a1 + 57);
  v12 = (v7 & 3) == 2 && (v5 & 1) != 0;
  *v11 = v12;
  if (v10 != v12)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v11;
      *buf = 67240192;
      v29 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "L5Context,onlyRhythmicGnss,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A65B84((a1 + 57));
    }

    sub_10017DC7C(a1);
  }
}

void sub_1001C8054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1017E6C4C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLRhythmicGnssUtility::onRhythmicModeOfOperationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1017E6C60();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRhythmicGnssUtility::onRhythmicModeOfOperationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001C8218(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001C8218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 1448);
  v6 = *(a4 + 1452);
  v7 = *(a4 + 1456);
  v8 = *(a4 + 1464);
  if (qword_1025D4650 != -1)
  {
    sub_1017E6E7C();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241216;
    v23 = v5;
    v24 = 1026;
    v25 = v7;
    v26 = 1026;
    v27 = v8 & 1;
    v28 = 1026;
    v29 = (v8 >> 1) & 1;
    v30 = 1026;
    v31 = v6;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLRhythmicGnssUtility,onRhythmicModeOfOperationNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1017E6E90();
    }

    v13[0] = 67241216;
    v13[1] = v5;
    v14 = 1026;
    v15 = v7;
    v16 = 1026;
    v17 = v8 & 1;
    v18 = 1026;
    v19 = (v8 >> 1) & 1;
    v20 = 1026;
    v21 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "CLRhythmicGnssUtility,onRhythmicModeOfOperationNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d", v13, 32);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "void CLRhythmicGnssUtility::onRhythmicModeOfOperationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  if (v6)
  {
    if (v5 >= 2)
    {
      sub_1000432E8("bitset set argument out of range");
    }

    v10 = *(a1 + 32) | (1 << v5);
  }

  else
  {
    if (v5 >= 2)
    {
      sub_1000432E8("bitset reset argument out of range");
    }

    v10 = *(a1 + 32) & ~(1 << v5);
  }

  *(a1 + 32) = v10;
  *(a1 + 20) = v6;
}

uint64_t sub_1001C8478(uint64_t a1, uint64_t a2, int *a3)
{
  v14 = a2;
  if (!*a3)
  {
    *buf = &v14;
    v5 = [sub_1000488C8(a1 + 80 &v14];
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v14;
      v8 = [v5 UTF8String];
      *buf = 67240450;
      *&buf[4] = v7;
      v18 = 2082;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#wigo,on,GnssProviderBare,%{public}d,%{public}s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78F9C(&v14, v5);
    }

    v15[0] = @"ServiceName";
    v15[1] = @"Register";
    v16[0] = v5;
    v16[1] = &__kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    PLLogRegisteredEvent();
    a2 = v14;
  }

  v9 = sub_1000F50D8(a1, a2, a3);
  if (v9)
  {
    *buf = *a3;
    if (sub_10000608C(a1, buf, 1) >= 2)
    {
      sub_10017DE58(a1, a3);
    }

    if (!*a3)
    {
      *buf = 0;
      v10 = sub_10000608C(a1, buf, 1);
      sub_1001C5AB8(a1, 1, v10, a3);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v12 = *a3;
      *buf = 67240448;
      *&buf[4] = v14;
      v18 = 1026;
      LODWORD(v19) = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Registering for client,%{public}d,notification,%{public}d,failed", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A790B0();
    }
  }

  return v9;
}

uint64_t sub_1001C873C(id *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10199A148();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#gwo,CLGnssAssistanceMotion,start", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199A71C();
  }

  sub_1001C3EF8(a1);
  sub_1001C4C2C(a1);
  sub_1001C881C(a1, v3);
  return sub_1001C891C(a1 + 79, sub_100137C30, [*a1 silo], a1, 10.0, 1.0);
}

_BYTE *sub_1001C881C(_BYTE *result, uint64_t a2)
{
  if (result[657] == 1)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    result = sub_1001C88E8(result, a2);
    if (result)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10199A148();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "turning on", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10199A8D4();
      }

      result = [*(*(v4 + 81) + 16) register:*(*(v4 + 81) + 8) forNotification:0 registrationInfo:0];
      v4[656] = 1;
    }
  }

  return result;
}

unint64_t sub_1001C88E8(uint64_t a1, uint64_t a2)
{
  if (qword_102655CA8)
  {
    return 1;
  }

  else
  {
    return (sub_100023B30(a1, a2) >> 26) & 1;
  }
}

uint64_t sub_1001C891C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  if (*a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v38 = a5;
      v39 = 2050;
      v40 = a6;
      v41 = 2050;
      v42 = a2;
      v43 = 2050;
      v44 = a3;
      v45 = 2050;
      v46 = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,GNSS_SEN,StartingSensorWhenAlreadyRunning,StoppingExisting,SampleRate,%{public}lf,ReportRate,%{public}lf,Callback,%{public}p,silo,%{public}p,context,%{public}p", buf, 0x34u);
    }

    a1 = sub_10000A100(121, 2);
    if (a1)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v27 = 134350080;
      v28 = a5;
      v29 = 2050;
      v30 = a6;
      v31 = 2050;
      v32 = a2;
      v33 = 2050;
      v34 = a3;
      v35 = 2050;
      v36 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,GNSS_SEN,StartingSensorWhenAlreadyRunning,StoppingExisting,SampleRate,%{public}lf,ReportRate,%{public}lf,Callback,%{public}p,silo,%{public}p,context,%{public}p", &v27, 52);
      v26 = v25;
      a1 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssSensorAdapter<CLAccelerometer, 0>::start(double, double, DataHandler, CLSilo *, void *) [SensorType = CLAccelerometer, notification = 0]", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v21 = (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v22 = ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a5 >= 0.0)
  {
    v22 = 0;
    v21 = 0;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v21 = 1;
  }

  v23 = (*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v21;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v23 = 1;
  }

  if (a6 > a5 || ((v23 | v22) & 1) != 0 || a6 <= 0.0)
  {
LABEL_8:
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v38 = a5;
      v39 = 2050;
      v40 = a6;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "GNSS_SEN,InvalidParameters,sampleRate,%{public}lf,reportRate,%{public}lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945164(result, v14, v15, v16, v17, v18, v19, v20);
      return 0;
    }
  }

  else
  {
    if (sub_1001C3FFC(a1, a2))
    {
      operator new();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor controller", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945078();
      return 0;
    }
  }

  return result;
}

void sub_1001C8D18(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C8D48(uint64_t a1)
{
  (*(**(a1 + 128) + 56))(buf);
  sub_10000EC00(__p, "PedometerAssistanceDisabledState");
  v2 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = v13;
  }

  v4 = v11;
  v5 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v3 != v4)
  {
    v8 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v14 & 0x80u) == 0)
  {
    v6 = buf;
  }

  else
  {
    v6 = *buf;
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = memcmp(v6, v7, v3) == 0;
  if (v5 < 0)
  {
LABEL_16:
    operator delete(__p[0]);
    v2 = v14;
  }

LABEL_17:
  if ((v2 & 0x80) != 0)
  {
    operator delete(*buf);
    if (!v8)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101BB50D0();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: received external feature enable command", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB79FC();
  }

  sub_1001C7624(a1, a1 + 80);
}

void sub_1001C8EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C8EDC(_BYTE *result)
{
  if ((result[58] & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: registering for notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB5944();
    }

    v3 = *(result + 1);
    if (v3)
    {
      [*(v3 + 16) register:*(v3 + 8) forNotification:5 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: location notifications unavailable", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5A20();
      }
    }

    v5 = *(result + 2);
    if (v5)
    {
      [*(v5 + 16) register:*(v5 + 8) forNotification:1 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: motion state notifications unavailable", v19, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5AFC();
      }
    }

    v7 = *(result + 3);
    if (v7)
    {
      [*(v7 + 16) register:*(v7 + 8) forNotification:0 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: motion state observer notifications unavailable", v18, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5BD8();
      }
    }

    v9 = *(result + 4);
    if (v9)
    {
      [*(v9 + 16) register:*(v9 + 8) forNotification:2 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: natalimetry notifications unavailable", v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5CB4();
      }
    }

    v11 = *(result + 5);
    if (v11)
    {
      [*(v11 + 16) register:*(v11 + 8) forNotification:2 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: status notifications unavailable", v16, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5D90();
      }
    }

    v13 = *(result + 6);
    if (v13)
    {
      [*(v13 + 16) register:*(v13 + 8) forNotification:0 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: step count notifications unavailable", v15, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5E6C();
      }
    }

    result[58] = 1;
  }
}

uint64_t sub_1001C92A8()
{
  if (sub_1001C98B4())
  {
    return 1;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  return byte_102659168;
}

void sub_1001C92EC(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (!sub_1001C92A8())
  {
    return;
  }

  sub_100021AFC(v21);
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CLGnssProvider,#Warning,invalid mode of operation", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A77C90(buf);
        LOWORD(v33[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "CLGnssProvider,#Warning,invalid mode of operation", v33, 2);
        v10 = v9;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyGnssModeOfOperationToClients(const CLLocationProvider_Type::GnssModeOfOperation, const BOOL, const CLRhythmicGnssWakeMode)", "%s\n", v9);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    v28 = a2;
  }

  v29 = a3;
  v30 = a4;
  if (!a3)
  {
    if (v28 < 2)
    {
      v11 = *(a1 + 3344) & ~(1 << v28);
      goto LABEL_17;
    }

    v19 = "bitset reset argument out of range";
LABEL_47:
    sub_1000432E8(v19);
  }

  if (v28 > 1)
  {
    v19 = "bitset set argument out of range";
    goto LABEL_47;
  }

  v11 = *(a1 + 3344) | (1 << v28);
LABEL_17:
  *(a1 + 3344) = v11;
  v32 = sub_1001C6370(a1 + 3368);
  v12 = *(a1 + 3344);
  if (*(a1 + 3321) == 1)
  {
    if ((sub_1001C6358(a1 + 3368) | v12))
    {
      v12 = *(a1 + 3344);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLGnssProvider,notifyRhythmicStatus,overwrite 1Hz client state", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A77C90(buf);
        LOWORD(v33[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "CLGnssProvider,notifyRhythmicStatus,overwrite 1Hz client state", v33, 2);
        v18 = v17;
        sub_100152C7C("Generic", 1, 0, 0, "void CLGnssProvider::notifyGnssModeOfOperationToClients(const CLLocationProvider_Type::GnssModeOfOperation, const BOOL, const CLRhythmicGnssWakeMode)", "%s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v12 = *(a1 + 3344) | 1;
      *(a1 + 3344) = v12;
    }
  }

  v31 = v12;
  if (qword_1025D4650 != -1)
  {
    sub_101A773B8();
  }

  v14 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67241472;
    v45 = v28;
    v46 = 1026;
    v47 = v30;
    v48 = 1026;
    v49 = v31 & 1;
    v50 = 1026;
    v51 = (v31 >> 1) & 1;
    v52 = 1026;
    v53 = v29;
    v54 = 1026;
    v55 = v32;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLGnssProvider,notifyRhythmicStatus,modeOfOps,%{public}d,powerMode,%{public}d,currentModesOfOps,%{public}d,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A77C90(buf);
    v33[0] = 67241472;
    v33[1] = v28;
    v34 = 1026;
    v35 = v30;
    v36 = 1026;
    v37 = v31 & 1;
    v38 = 1026;
    v39 = (v31 >> 1) & 1;
    v40 = 1026;
    v41 = v29;
    v42 = 1026;
    v43 = v32;
    LODWORD(v20) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "CLGnssProvider,notifyRhythmicStatus,modeOfOps,%{public}d,powerMode,%{public}d,currentModesOfOps,%{public}d,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", v33, v20);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyGnssModeOfOperationToClients(const CLLocationProvider_Type::GnssModeOfOperation, const BOOL, const CLRhythmicGnssWakeMode)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *(a1 + 3328) = v28;
  *(a1 + 3336) = v30;
  *(a1 + 3332) = v29;
  *(a1 + 3352) = v32;
  sub_1001C6380(a1 + 120, a1 + 3328);
  *buf = 41;
  (*(*a1 + 152))(a1, buf, v21, 1, 0xFFFFFFFFLL, 0);
  sub_1001C64C0(a1);
LABEL_32:

  if (v26)
  {
    sub_100008080(v26);
  }

  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v22)
  {
    sub_100008080(v22);
  }
}

void sub_1001C9870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C98B4()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "EnableRhythmicWakingGnss", &v5, 0xFFFFFFFFLL);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_1001C9914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C992C(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = *a2;
  if (qword_1025D4650 != -1)
  {
    sub_1016C8A14();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = Current;
    v18 = 1026;
    v19 = v6;
    v20 = 1026;
    v21 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:gnssSessionEventPowerLog, eventCfTimeSec:%{public}f, eventType:%{public}d, eventStatus:%{public}d}", buf, 0x28u);
  }

  v11[0] = [NSNumber numberWithDouble:Current, @"eventCfTimeSec"];
  v10[1] = @"eventType";
  v11[1] = [NSNumber numberWithInt:v6];
  v10[2] = @"eventStatus";
  v11[2] = [NSNumber numberWithBool:*a3];
  return sub_10006FFF0([NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3], "GnssSession");
}

uint64_t sub_1001C9AB8(_BYTE *a1, int *a2)
{
  sub_1000F4588();
  v4 = *a2;
  if (*a2 == 40)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLAccessory,PauseExternalLocation,1", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913548();
    }

    v8 = sub_1000081AC();
    sub_1006F14E8(a1, 1, v8);
  }

  else if (v4 == 29)
  {
    if ((a1[1371] & 1) == 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v5 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLAccessory,EnableAccessoryNMEAScreening,0,airborne,1", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101913624();
      }

      v6 = sub_1000081AC();
      sub_10107C280((a1 + 2664), 0, v6);
      a1[2057] = 0;
      sub_1006F6794((a1 + 2056));
    }
  }

  else if (!v4)
  {
    sub_1001C678C(a1);
  }

  return 1;
}

uint64_t sub_1001C9C28(uint64_t a1, uint64_t a2)
{
  if (qword_10265AE28 != -1)
  {
    sub_10195E900();
  }

  return qword_102637300;
}

uint64_t sub_1001C9C60(uint64_t a1)
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

void sub_1001CA064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  sub_10063A344(&a9);
  sub_10063A344(va);
  _Unwind_Resume(a1);
}

void sub_1001CA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 16) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10197D0A8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssOdometer::onRhythmicModeOfOperationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10197D0BC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssOdometer::onRhythmicModeOfOperationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100182360(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001CA254(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_1001CA334(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1001CA354(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B198A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAutopauseProviderConcrete::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B198B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAutopauseProviderConcrete::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CA520(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001CA520(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 >= 2)
  {
    if (*a3 == 2)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_1001CA6BC(a1 + 144, &Current, a4, (a4 + 4));
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B1984C();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        LODWORD(Current) = 67109120;
        HIDWORD(Current) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning PAUSE: Unknown notification %d", &Current, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B19DD8(a3);
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101B1984C();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a3;
      LODWORD(Current) = 67109120;
      HIDWORD(Current) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning PAUSE: unexpected notification %d", &Current, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B19CE4(a3);
    }
  }
}

__n128 sub_1001CA6BC(uint64_t a1, unint64_t *a2, unsigned int *a3, int *a4)
{
  result.n128_u64[0] = *a2;
  *(a1 + 24) = *a2;
  v5 = (a1 + 24);
  v6 = *a3;
  v7 = *a4;
  *(a1 + 32) = *a3;
  *(a1 + 36) = v7;
  v8 = v6 > 0xB;
  v9 = (1 << v6) & 0xC06;
  if (v8 || v9 == 0)
  {
    result = *v5;
    *(a1 + 40) = *v5;
  }

  else if (*(a1 + 48) != 2)
  {
    *(a1 + 40) = result.n128_u64[0];
    *(a1 + 48) = 2;
    *(a1 + 52) = v7;
  }

  return result;
}

uint64_t sub_1001CA718(uint64_t a1, uint64_t a2, int a3, void *a4)
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

void sub_1001CA7F8(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B198A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAutopauseProviderConcrete::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B198B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAutopauseProviderConcrete::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CBB3C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double sub_1001CA9C4()
{
  v9 = 0;
  v8 = 4;
  if ((byte_1026567C8 & 1) == 0)
  {
    if (sysctlnametomib("kern.monotonicclock", dword_1026567CC, &dword_1025D6568))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A35E8();
      }

      v0 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "Error occurred, no mib to monotonic clock conversion", buf, 2u);
      }

      v1 = -1.0;
      if (sub_10000A100(121, 0))
      {
        sub_1018A4690();
      }

      return v1;
    }

    byte_1026567C8 = 1;
  }

  if (sysctl(dword_1026567CC, dword_1025D6568, &v9, &v8, 0, 0))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 67240450;
      v11 = v4;
      v12 = 2082;
      v13 = v6;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Error occurred %{public}d %{public}s", buf, 0x12u);
    }

    v1 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_1018A4774();
    }
  }

  else
  {
    LODWORD(v2) = v9;
    return v2 + 0.5;
  }

  return v1;
}

id sub_1001CABAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 202);
  v5 = *(a1 + 201);
  v6 = *(a1 + 200);
  v15 = 0;
  sub_1001CAE50(a1 + 144, a2, &v15);
  result = sub_1001CBA48(*(a2 + 96));
  if (result)
  {
    result = [*(a1 + 136) setNextFireDelay:900.0];
  }

  if (v15 == 1)
  {
    v8 = *(a1 + 202);
    v9 = *(a1 + 201);
    if (v4 == v8)
    {
      v10 = *(a1 + 200);
      if (v5 == v9 && v6 == v10)
      {
        return result;
      }
    }

    else
    {
      v10 = *(a1 + 200);
    }

    v14[0] = *(a1 + 202);
    v14[1] = v9;
    v14[2] = v10;
    if (qword_1025D48A0 != -1)
    {
      sub_101B19CBC();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v22 = v10;
      v23 = 1024;
      v24 = v9;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "PAUSE: Pause state changed, notifying - fitness: %d navigation: %d other: %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101B19CBC();
      }

      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "PAUSE: Pause state changed, notifying - fitness: %d navigation: %d other: %d", &v16, 20, 67109632);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAutopauseProviderConcrete::onLocationNotificationHelper(const CLDaemonLocation &)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    (*(*a1 + 200))(a1);
    *buf = 0;
    return (*(*a1 + 152))(a1, buf, v14, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

void sub_1001CAE50(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v5 = a2[7];
  v120 = a2[6];
  v121 = v5;
  v122[0] = a2[8];
  *(v122 + 12) = *(a2 + 140);
  v6 = a2[3];
  v118[2] = a2[2];
  v118[3] = v6;
  v7 = a2[5];
  v119[0] = a2[4];
  v119[1] = v7;
  v8 = a2[1];
  v118[0] = *a2;
  v118[1] = v8;
  *a3 = 0;
  v9 = v120;
  if (sub_1001CBA48(v120))
  {
    v10 = sub_1001CA9C4();
    *(v119 + 12) = v10;
    if (*(a1 + 92) > 0.0 && v10 - *(a1 + 148) > *(a1 + 64))
    {
      sub_1001EC8AC(a1);
      *a3 = 1;
    }

    v11 = v121;
    *(a1 + 168) = v120;
    *(a1 + 184) = v11;
    *(a1 + 200) = v122[0];
    *(a1 + 212) = *(v122 + 12);
    v12 = v118[3];
    *(a1 + 104) = v118[2];
    *(a1 + 120) = v12;
    v13 = v119[1];
    *(a1 + 136) = v119[0];
    *(a1 + 152) = v13;
    v14 = v118[1];
    *(a1 + 72) = v118[0];
    *(a1 + 88) = v14;
    if (v9 > 9 || ((1 << v9) & 0x20E) == 0 || *(&v118[2] + 12) < 0.0)
    {
      goto LABEL_23;
    }

    if (!*(a1 + 304))
    {
LABEL_22:
      sub_10023F928(a1 + 232, (&v118[2] + 12));
      *(a1 + 312) = *(v119 + 12);
      goto LABEL_23;
    }

    if (v10 - *(a1 + 312) < 3.0)
    {
      sub_10023F928(a1 + 232, (&v118[2] + 12));
      *(a1 + 312) = *(v119 + 12);
      v15 = *(a1 + 304);
      if (v15 && v15 >= *(a1 + 240) && *(a1 + 248) / v15 > 6.0)
      {
        sub_1001EC8AC(a1);
LABEL_64:
        *a3 = 1;
        return;
      }

LABEL_23:
      if (*(a1 + 8) < 0.0)
      {
        *(a1 + 8) = v10;
      }

      if (*(&v118[2] + 4) > 0.0)
      {
        *(a1 + 16) = *(&v118[1] + 12);
      }

      v21 = sub_1001CBA48(v120);
      if (v21)
      {
        v114 = *&v10;
        v115 = *(v118 + 4);
        v116 = *(&v118[1] + 4);
        v117 = *(a1 + 32);
        sub_1001CBCC8((a1 + 360), &v114);
        if (*(a1 + 400) >= 0x3CuLL)
        {
          v112 = 0.0;
          v113 = 0;
          v109 = 0u;
          v110 = 0u;
          memset(v111, 0, 28);
          sub_100F33D64(a1, &v109, (a1 + 360));
          *&v109 = v10;
          sub_100F342F8((a1 + 408), &v109);
          v22 = *(a1 + 368);
          v23 = *(a1 + 376);
          *(a1 + 400) = 0;
          v24 = (v23 - v22) >> 3;
          if (v24 >= 3)
          {
            do
            {
              operator delete(*v22);
              v25 = *(a1 + 376);
              v22 = (*(a1 + 368) + 8);
              *(a1 + 368) = v22;
              v24 = (v25 - v22) >> 3;
            }

            while (v24 > 2);
          }

          if (v24 == 1)
          {
            v26 = 51;
          }

          else
          {
            if (v24 != 2)
            {
              goto LABEL_36;
            }

            v26 = 102;
          }

          *(a1 + 392) = v26;
        }
      }

LABEL_36:
      v27 = *(a1 + 64);
      if (v10 - *(a1 + 8) <= v27)
      {
        return;
      }

      v28 = *(a1 + 448);
      if (v28)
      {
        v29 = 0;
        v30 = *(a1 + 440);
        v31 = *(a1 + 416);
        while (v10 - *(*(v31 + 8 * ((v30 + v29) / 0x33)) + 80 * ((v30 + v29) % 0x33)) <= v27)
        {
          if (v28 == ++v29)
          {
            v29 = *(a1 + 448);
            break;
          }
        }

        v32 = (v31 + 8 * (v30 / 0x33));
        if (*(a1 + 424) == v31)
        {
          v33 = 0;
        }

        else
        {
          v33 = *v32 + 80 * (v30 % 0x33);
        }

        *&v109 = v32;
        *(&v109 + 1) = v33;
        sub_1007D4424(&v109, v29);
        v34 = *(a1 + 440) + *(a1 + 448);
        v35 = *(a1 + 416);
        v36 = (v35 + 8 * (v34 / 0x33));
        if (*(a1 + 424) == v35)
        {
          v37 = 0;
        }

        else
        {
          v37 = (*v36 + 80 * (v34 % 0x33));
        }

        v21 = sub_100F343A8((a1 + 408), v109, *(&v109 + 1), v36, v37);
      }

      v38 = *(a1 + 400);
      if (v38)
      {
        v39 = 0;
        v40 = *(a1 + 392);
        v41 = *(a1 + 368);
        while (v10 - *(*(v41 + 8 * ((v40 + v39) / 0x66)) + 40 * ((v40 + v39) % 0x66)) <= *(a1 + 64))
        {
          if (v38 == ++v39)
          {
            v39 = *(a1 + 400);
            break;
          }
        }

        v42 = (v41 + 8 * (v40 / 0x66));
        if (*(a1 + 376) == v41)
        {
          v43 = 0;
        }

        else
        {
          v43 = *v42 + 40 * (v40 % 0x66);
        }

        *&v109 = v42;
        *(&v109 + 1) = v43;
        sub_1000C5804(&v109, v39);
        v44 = *(a1 + 392) + *(a1 + 400);
        v45 = *(a1 + 368);
        v46 = (v45 + 8 * (v44 / 0x66));
        if (*(a1 + 376) == v45)
        {
          v47 = 0;
        }

        else
        {
          v47 = (*v46 + 40 * (v44 % 0x66));
        }

        v21 = sub_100F3460C((a1 + 360), v109, *(&v109 + 1), v46, v47);
      }

      if (*(a1 + 48) == 2)
      {
        v48 = *(a1 + 64);
        if (v10 - *(a1 + 40) > v48)
        {
          *(a1 + 58) = 1;
          *(a1 + 56) = 257;
          *(a1 + 8) = v10 - v48 + 60.0;
          goto LABEL_64;
        }
      }

      v49 = 0.0;
      if (!*(a1 + 448))
      {
        v57 = 0;
        v54 = 1;
        v55 = 1;
        goto LABEL_83;
      }

      v50 = 0;
      LODWORD(v109) = 0;
      LODWORD(v114) = 0;
      v108 = 0;
      v107 = 0;
      do
      {
        sub_100F33BA0(v21, *(*(*(a1 + 416) + 8 * ((v50 + *(a1 + 440)) / 0x33)) + 80 * ((v50 + *(a1 + 440)) % 0x33) + 72), &v109, &v114, &v108 + 1, &v108, &v107);
        ++v50;
        v51 = *(a1 + 448);
      }

      while (v51 > v50);
      v52 = (HIDWORD(v108) + v114) / v51 * 100.0;
      v53 = v108 / v51 * 100.0;
      v54 = v53 <= 25.0;
      if (v53 > 25.0)
      {
        *(a1 + 57) = 0;
        *a3 = 1;
      }

      v55 = v52 <= 25.0;
      if (v52 > 25.0)
      {
        *(a1 + 56) = 0;
        *a3 = 1;
      }

      v56 = *(*(*(a1 + 416) + 8 * (*(a1 + 440) / 0x33uLL)) + 80 * (*(a1 + 440) % 0x33uLL) + 72);
      if (v56 != 8)
      {
        if (v56 == 5)
        {
          v54 = 0;
          *(a1 + 57) = 0;
          goto LABEL_78;
        }

        if (v56 != 4)
        {
          goto LABEL_79;
        }
      }

      v55 = 0;
      *(a1 + 56) = 0;
LABEL_78:
      *a3 = 1;
LABEL_79:
      v57 = 0;
      if (v51)
      {
        v58 = *(a1 + 440);
        v59 = 0.0;
        v49 = 0.0;
        do
        {
          v60 = *(*(a1 + 416) + 8 * (v58 / 0x33)) + 80 * (v58 % 0x33);
          v61 = *(v60 + 56);
          v59 = v59 + *(v60 + 8) * v61;
          v49 = v49 + *(v60 + 16) * v61;
          v57 += v61;
          ++v58;
          --v51;
        }

        while (v51);
        goto LABEL_84;
      }

LABEL_83:
      v59 = 0.0;
LABEL_84:
      v112 = 0.0;
      v113 = 0;
      v109 = 0u;
      v110 = 0u;
      memset(v111, 0, 28);
      if (*(a1 + 400))
      {
        sub_100F33D64(a1, &v109, (a1 + 360));
        v59 = v59 + *(&v109 + 1) * SDWORD2(v111[1]);
        v49 = v49 + *&v110 * SDWORD2(v111[1]);
        v57 += DWORD2(v111[1]);
        v62 = SDWORD2(v111[1]) > 0;
      }

      else
      {
        v62 = 0;
      }

      if (v57 <= 0)
      {
        *(a1 + 8) = *(v119 + 12) - *(a1 + 64) + 60.0;
        return;
      }

      v63 = v59 / v57;
      v64 = 2;
      if (!v62)
      {
        v64 = 0;
      }

      v65 = v49 / v57;
      sub_100E3C32C(&v114, v64 + 2 * *(a1 + 448));
      if (*(a1 + 448))
      {
        v66 = 0;
        v67 = 0;
        v68 = *(a1 + 440);
        v69 = *(a1 + 416);
        do
        {
          v70 = *(v69 + 8 * ((v68 + v67) / 0x33)) + 80 * ((v68 + v67) % 0x33);
          sub_100109D18((a1 + 320), v63, v65, *(v70 + 24), *(v70 + 40), *(a1 + 16));
          *&v71 = v71;
          v72 = (*(*(a1 + 416) + 8 * ((v67 + *(a1 + 440)) / 0x33)) + 80 * ((v67 + *(a1 + 440)) % 0x33));
          *&v71 = *&v71 - v72[8];
          v114[v66] = *&v71;
          sub_100109D18((a1 + 320), v63, v65, v72[4], v72[6], *(a1 + 16));
          v68 = *(a1 + 440);
          v69 = *(a1 + 416);
          *&v73 = v73 - *(*(v69 + 8 * ((v67 + v68) / 0x33)) + 80 * ((v67 + v68) % 0x33) + 64);
          v114[v66 + 1] = *&v73;
          v66 += 2;
          ++v67;
        }

        while (*(a1 + 448) > v67);
        if (!v62)
        {
LABEL_94:
          if (!v55)
          {
            goto LABEL_95;
          }

          goto LABEL_100;
        }
      }

      else
      {
        LODWORD(v66) = 0;
        if (!v62)
        {
          goto LABEL_94;
        }
      }

      sub_100109D18((a1 + 320), v63, v65, *(&v110 + 1), *(v111 + 1), *(a1 + 16));
      *&v74 = v74;
      v75 = v112;
      *&v74 = *&v74 - v112;
      v114[v66] = *&v74;
      sub_100109D18((a1 + 320), v63, v65, *v111, *&v111[1], *(a1 + 16));
      *&v76 = v76;
      *&v76 = *&v76 - v75;
      v114[v66 | 1] = *&v76;
      if (!v55)
      {
LABEL_95:
        if (!v54)
        {
          goto LABEL_126;
        }

LABEL_112:
        v83 = 300.0;
        if ((*(a1 + 32) & 0xFFFFFFFE) == 0xA)
        {
          v83 = 110.0;
        }

        if (v115 == v114)
        {
          v86 = 1;
        }

        else
        {
          v84 = (v115 - v114) >> 2;
          if (v84 <= 1)
          {
            v85 = 1;
          }

          else
          {
            v85 = (v115 - v114) >> 2;
          }

          if (*v114 <= v83)
          {
            v87 = 1;
            do
            {
              v88 = v87;
              if (v85 == v87)
              {
                break;
              }

              v89 = v114[v87++];
            }

            while (v89 <= v83);
            v86 = v84 <= v88;
          }

          else
          {
            v86 = 0;
          }
        }

        *(a1 + 57) = v86;
LABEL_126:
        v90 = sub_100F33C34(a1);
        if (v90 > 4)
        {
          if (v90 == 5)
          {
            v91 = v114;
            if (v115 != v114)
            {
              v92 = (v115 - v114) >> 2;
              if (v92 <= 1)
              {
                v103 = 1;
              }

              else
              {
                v103 = (v115 - v114) >> 2;
              }

              if (*v114 <= 300.0)
              {
                v105 = 1;
                do
                {
                  v95 = v105;
                  if (v103 == v105)
                  {
                    break;
                  }

                  v106 = v114[v105++];
                }

                while (v106 <= 300.0);
                goto LABEL_168;
              }

              goto LABEL_163;
            }

            goto LABEL_164;
          }

          if (v90 != 8)
          {
LABEL_129:
            v91 = v114;
            if (v115 != v114)
            {
              v92 = (v115 - v114) >> 2;
              if (v92 <= 1)
              {
                v93 = 1;
              }

              else
              {
                v93 = (v115 - v114) >> 2;
              }

              if (*v114 <= 200.0)
              {
                v94 = 1;
                do
                {
                  v95 = v94;
                  if (v93 == v94)
                  {
                    break;
                  }

                  v96 = v114[v94++];
                }

                while (v96 <= 200.0);
LABEL_168:
                v104 = v92 <= v95;
LABEL_169:
                *(a1 + 58) = v104;
                *a3 = 1;
                *(a1 + 8) = v10 - *(a1 + 64) + 60.0;
                if (v91)
                {
                  *&v115 = v91;
                  operator delete(v91);
                }

                return;
              }

              goto LABEL_163;
            }

            goto LABEL_164;
          }
        }

        else
        {
          if (v90 == 2)
          {
            v91 = v114;
            if (v115 != v114)
            {
              v92 = (v115 - v114) >> 2;
              if (v92 <= 1)
              {
                v100 = 1;
              }

              else
              {
                v100 = (v115 - v114) >> 2;
              }

              if (*v114 <= 250.0)
              {
                v101 = 1;
                do
                {
                  v95 = v101;
                  if (v100 == v101)
                  {
                    break;
                  }

                  v102 = v114[v101++];
                }

                while (v102 <= 250.0);
                goto LABEL_168;
              }

              goto LABEL_163;
            }

            goto LABEL_164;
          }

          if (v90 != 4)
          {
            goto LABEL_129;
          }
        }

        v91 = v114;
        if (v115 != v114)
        {
          v92 = (v115 - v114) >> 2;
          if (v92 <= 1)
          {
            v97 = 1;
          }

          else
          {
            v97 = (v115 - v114) >> 2;
          }

          if (*v114 <= 78.5)
          {
            v98 = 1;
            do
            {
              v95 = v98;
              if (v97 == v98)
              {
                break;
              }

              v99 = v114[v98++];
            }

            while (v99 <= 78.5);
            goto LABEL_168;
          }

LABEL_163:
          v104 = 0;
          goto LABEL_169;
        }

LABEL_164:
        v104 = 1;
        goto LABEL_169;
      }

LABEL_100:
      if (v115 == v114)
      {
        v79 = 1;
      }

      else
      {
        v77 = (v115 - v114) >> 2;
        if (v77 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = (v115 - v114) >> 2;
        }

        if (*v114 <= 78.5)
        {
          v80 = 1;
          do
          {
            v81 = v80;
            if (v78 == v80)
            {
              break;
            }

            v82 = v114[v80++];
          }

          while (v82 <= 78.5);
          v79 = v77 <= v81;
        }

        else
        {
          v79 = 0;
        }
      }

      *(a1 + 56) = v79;
      if (!v54)
      {
        goto LABEL_126;
      }

      goto LABEL_112;
    }

    v16 = *(a1 + 272);
    v17 = *(a1 + 280);
    *(a1 + 304) = 0;
    v18 = (v17 - v16) >> 3;
    if (v18 >= 3)
    {
      do
      {
        operator delete(*v16);
        v19 = *(a1 + 280);
        v16 = (*(a1 + 272) + 8);
        *(a1 + 272) = v16;
        v18 = (v19 - v16) >> 3;
      }

      while (v18 > 2);
    }

    if (v18 == 1)
    {
      v20 = 256;
    }

    else
    {
      if (v18 != 2)
      {
LABEL_21:
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        goto LABEL_22;
      }

      v20 = 512;
    }

    *(a1 + 296) = v20;
    goto LABEL_21;
  }
}

void sub_1001CBA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001CBA48(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 0xF)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101ACF858();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67240192;
      v6[1] = v1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Unknown whether or not provider %{public}d is a candidate for autopause", v6, 8u);
    }

    v4 = sub_10000A100(121, 0);
    LOBYTE(v2) = 0;
    if (v4)
    {
      sub_101ACF86C(v1);
      LOBYTE(v2) = 0;
    }
  }

  else
  {
    v2 = 0x2E1Eu >> a1;
  }

  return v2 & 1;
}

id sub_1001CBB3C(id result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    v5 = result;
    v6 = *(a4 + 808);
    if (v6 && sub_10030D934(v6))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B1984C();
      }

      v7 = (a4 + 808);
      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v9 = sub_10030D934(*v7);
        v11 = 134217984;
        v12 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "PAUSE: Batched notification response in auto-pause with %zu locations.", &v11, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B19BA4(v7);
      }

      result = sub_10030D934(*v7);
      if (result)
      {
        for (i = 0; i < result; ++i)
        {
          sub_10030E2C0(*v7, i, &v11);
          sub_1001CABAC(v5, &v11);
          result = sub_10030D934(*v7);
        }
      }
    }

    else
    {

      return sub_1001CABAC(v5, a4);
    }
  }

  return result;
}

int64x2_t sub_1001CBCC8(int64x2_t *a1, __int128 *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_100F3491C(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x66));
  v7 = *v6 + 40 * (v4 % 0x66);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4080;
  }

  v8 = *a2;
  v9 = a2[1];
  *(v7 - 8) = *(a2 + 4);
  *(v7 - 24) = v9;
  *(v7 - 40) = v8;
  result = vaddq_s64(a1[2], xmmword_101C79510);
  a1[2] = result;
  return result;
}

void sub_1001CBD74(void *a1@<X8>)
{
  if ((atomic_load_explicit(byte_10265A580, memory_order_acquire) & 1) == 0)
  {
    sub_10194CF04();
  }

  if (!xmmword_10265A590 || !sub_10018E854(xmmword_10265A590))
  {
    sub_10082C9DC();
  }

  v2 = *(&xmmword_10265A590 + 1);
  *a1 = xmmword_10265A590;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

id sub_1001CBE30(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "null";
  }

  sub_1001CBF58(a1 + 192);
  ++*(a1 + 3484);
  sub_1001CBF60(a1, "refresh");
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@CellFlow, refresh, %{public}s", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A6123C();
  }

  return [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
}

void sub_1001CBF60(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "null";
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CellFlow, clearcells, %{public}s", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A616B8();
  }

  *(a1 + 2552) = 0;
  v5 = *(a1 + 2488);
  v6 = *(a1 + 2480);
  while (v5 != v6)
  {
    v5 -= 696;
    sub_1000720CC(v5);
  }

  *(a1 + 2488) = v6;
  for (i = 2504; i != 2552; i += 24)
  {
    buf = 0uLL;
    v12 = 0;
    sub_100071F88(&buf, *(a1 + i), *(a1 + i + 8), 0x66FD0EB66FD0EB67 * ((*(a1 + i + 8) - *(a1 + i)) >> 3));
    v8 = *(&buf + 1);
    v9 = buf;
    while (v8 != v9)
    {
      v8 -= 696;
      sub_1000720CC(v8);
    }

    *(&buf + 1) = v9;
    p_buf = &buf;
    sub_100072124(&p_buf);
  }
}

uint64_t sub_1001CC0F4(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_1001CC1D4(char *a1, uint64_t a2, unsigned int *a3, char *a4)
{
  v37 = a2;
  if (a1[108])
  {
    return 0;
  }

  v5 = a2;
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
      v36 = v10;
      v13 = sub_10006E830(a3, a2);
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
        if (*(v15 + 7) >= v13)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v13)];
      }

      while (v15);
      if (v18 == v16 || v13 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = sub_10006E830(a3, v14);
      v21 = *(a1 + 8);
      if (!v21)
      {
        goto LABEL_33;
      }

      v22 = a1 + 64;
      do
      {
        if (*(v21 + 8) >= v19)
        {
          v22 = v21;
        }

        v21 = *&v21[8 * (*(v21 + 8) < v19)];
      }

      while (v21);
      if (v22 != a1 + 64 && v19 >= *(v22 + 8))
      {
        v35 = v22;
        v32 = *(v22 + 7);
        v33 = *a4;
        *buf = &v37;
        *(sub_100007FA0((v22 + 40), &v37, &unk_101C66300, buf) + 32) = v33;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10058B134(buf);
        }

        sub_10006E914(buf);
        if (v32)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v35 = a1 + 64;
        v23 = byte_1025D6F39;
        v34 = sub_10006E830(a3, v20);
        *buf = &v34;
        *(sub_100024014((a1 + 56), &v34, &unk_101C66300, buf) + 80) = v23;
        v34 = sub_10006E830(a3, v24);
        *buf = &v34;
        v26 = sub_100024014((a1 + 56), &v34, &unk_101C66300, buf);
        v27 = v26[9];
        v26[8] = 0;
        v26[9] = 0;
        if (v27)
        {
          sub_100008080(v27);
        }

        v28 = *a4;
        v34 = sub_10006E830(a3, v25);
        *buf = &v34;
        v29 = sub_100024014((a1 + 56), &v34, &unk_101C66300, buf);
        *buf = &v37;
        *(sub_100007FA0((v29 + 5), &v37, &unk_101C66300, buf) + 32) = v28;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        v31 = v36;
        *buf = sub_10006E830(a3, v30);
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018C9738();
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
    v39 = 1026;
    v40 = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018CC57C(a1);
    return 0;
  }

  return result;
}

void sub_1001CC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10006E914(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CC5D0(uint64_t a1, void *a2)
{
  v4 = a2 + 1;
  sub_1003C93BC(a2, a2[1]);
  *a2 = v4;
  a2[2] = 0;
  *v4 = 0;
  v5 = *(a1 + 232);
  if (v5 == (a1 + 240))
  {
    goto LABEL_30;
  }

  v6 = 0;
  do
  {
    if (*(v5 + 911) != 1)
    {
      goto LABEL_15;
    }

    v7 = *(v5 + 226);
    if (v7 == 10)
    {
      if (*(a1 + 713))
      {
        goto LABEL_14;
      }

      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Indoor provider active, but pipelined not activated", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F7E18(v23);
      }
    }

    else
    {
      if (v7 != 11 || (*(a1 + 714) & 1) != 0)
      {
LABEL_14:
        *buf = *(v5 + 226);
        sub_1003C9410(a2, buf, buf);
        v6 |= *(v5 + 226) == 1;
        goto LABEL_15;
      }

      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Wifi2 provider active, but pipelined not activated", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F7F10(v24);
      }
    }

LABEL_15:
    v9 = v5[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v5[2];
        v11 = *v10 == v5;
        v5 = v10;
      }

      while (!v11);
    }

    v5 = v10;
  }

  while (v10 != (a1 + 240));
  if (v6)
  {
    v13 = 1;
    goto LABEL_38;
  }

LABEL_30:
  if (*(a1 + 712) == 1)
  {
    *buf = 1;
    sub_1003C9410(a2, buf, buf);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "GPSController indicates hardware active while client is not active", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8008();
    }
  }

  v13 = 0;
LABEL_38:
  *buf = 13;
  sub_1003C9410(a2, buf, buf);
  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v15 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a2[2];
    v17 = *(a1 + 712);
    *buf = 134349568;
    v32 = v16;
    v33 = 1026;
    v34 = v13;
    v35 = 1026;
    v36 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#techstatus,enquired,sz,%{public}zu,gpsClientActive,%{public}d,gpsHwActive,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v19 = a2[2];
    v20 = *(a1 + 712);
    v25 = 134349568;
    v26 = v19;
    v27 = 1026;
    v28 = v13;
    v29 = 1026;
    v30 = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 0, "#techstatus,enquired,sz,%{public}zu,gpsClientActive,%{public}d,gpsHwActive,%{public}d", &v25, 24);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::getActiveTechs(std::set<int> &)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  return 1;
}

double sub_1001CCA3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 344) <= 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = *(a1 + 76);
  }

  else
  {
    Current = sub_1000081AC();
    v4 = *(a2 + 344);
  }

  return Current - v4;
}

NSDictionary *sub_1001CCA84(uint64_t a1)
{
  v4[0] = @"na";
  v3[0] = @"name";
  v3[1] = @"clients";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v3[2] = @"daily";
  v4[1] = v1;
  v4[2] = &off_10254FA58;
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

uint64_t sub_1001CCB30(CFDictionaryRef theDict, BOOL *a2)
{
  sub_100005548(v9, theDict);
  v3 = sub_10001CBC0(v9, @"kCellMonitorRefreshResultKey", a2);
  if ((v3 & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B4CB70();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "copyValuesFromCellMonitorRefreshResultDictionary, couldn't get dictionary values", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B4CB98(buf);
      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 16, "copyValuesFromCellMonitorRefreshResultDictionary, couldn't get dictionary values", v8, 2);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCoreTelephonyUtils::copyValuesFromCellMonitorRefreshResultDictionary(CFDictionaryRef, BOOL &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  sub_100005DA4();
  return v3;
}

uint64_t sub_1001CCD00(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018C726C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLTelephonyService, Refresh Cell Monitor", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C7280();
  }

  sub_1001CCDA8(a1 + 176, 255);
  return 1;
}

void sub_1001CCDA8(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101976024();
    }

    if (a2 == 1)
    {
      v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:2];
      if (qword_1025D4650 != -1)
      {
        sub_10196F27C();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh for SimTwo", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101976100();
      }
    }

    else if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];
      if (qword_1025D4650 != -1)
      {
        sub_10196F27C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh for SimOne", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019761DC();
      }
    }

    v9 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001CEE08;
    v10[3] = &unk_102449B88;
    v10[4] = a1;
    [v9 refreshCellMonitor:v5 completion:v10];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "triggerCellMonitorRefresh";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#ctcl %s fCTClient is null ", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019762B8();
    }
  }
}

void sub_1001CD078(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A26E74();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSignificantChangeManager::onAwarenessNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A26E88();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSignificantChangeManager::onAwarenessNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CD23C(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001CD23C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101A26EB0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 68289538;
    *&v11[8] = 2082;
    *&v11[10] = "";
    *&v11[18] = 1040;
    *&v11[20] = LocationLogEncryptionDataSize();
    *&v11[24] = 2098;
    *&v11[26] = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SLC Got location, location:%{public, location:Encrypted_CLClientLocation}.*P}", v11, 0x22u);
  }

  v7 = a4[7];
  v15 = a4[6];
  v16 = v7;
  v17[0] = a4[8];
  *(v17 + 12) = *(a4 + 140);
  v8 = a4[3];
  *&v11[32] = a4[2];
  v12 = v8;
  v9 = a4[5];
  v13 = a4[4];
  v14 = v9;
  v10 = a4[1];
  *v11 = *a4;
  *&v11[16] = v10;
  sub_1001CD380(a1, v11);
}

void sub_1001CD380(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 357) != 1)
  {
    v8 = (a2 + 20);
    v9 = *(a2 + 20);
    if (v9 < 0.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101A26EB0();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SLC Significant location change got invalid location!}", buf, 0x12u);
        if (qword_1025D47A0 != -1)
        {
          sub_101A26E08();
        }
      }

      v11 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SLC Significant location change got invalid location!", "{msg%{public}.0s:#SLC Significant location change got invalid location!}", buf, 0x12u);
      }

      return;
    }

    v12 = *(a2 + 96);
    if (v9 >= 20000.0 || (v12 - 9) >= 0xFFFFFFFE)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101A26EB0();
      }

      v14 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate location}";
      goto LABEL_26;
    }

    if (v12 > 8)
    {
      if (v12 == 13)
      {
        if (v9 < 250.0)
        {
          goto LABEL_46;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_101A26EB0();
        }

        v14 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate LoiOverride location}";
        goto LABEL_26;
      }

      if (v12 != 9)
      {
        goto LABEL_46;
      }
    }

    else if (v12 != 1)
    {
LABEL_35:
      if (v12 == 4 && v9 >= 250.0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101A26EB0();
        }

        v14 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate WIFI location}";
        goto LABEL_26;
      }

LABEL_46:
      if ((*(a1 + 356) & 1) == 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101A26EB0();
        }

        v20 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Warning #SLC Significant location change monitoring not active; not handling}", buf, 0x12u);
        }

        sub_100021AFC(buf);
        v21 = *(a2 + 112);
        *v187 = *(a2 + 96);
        *&v187[16] = v21;
        v188[0] = *(a2 + 128);
        *(v188 + 12) = *(a2 + 140);
        v22 = *(a2 + 48);
        *&buf[32] = *(a2 + 32);
        *&buf[48] = v22;
        v23 = *(a2 + 80);
        *v186 = *(a2 + 64);
        *&v186[16] = v23;
        v24 = *(a2 + 16);
        *buf = *a2;
        *&buf[16] = v24;
        v173 = 0;
        (*(*a1 + 136))(a1, &v173, buf);

        if (v193)
        {
          sub_100008080(v193);
        }

        if (v192 < 0)
        {
          operator delete(__p);
        }

        if (v190)
        {
          sub_100008080(v190);
        }

        if (v189)
        {
          sub_100008080(v189);
        }

        return;
      }

      v16 = v12 - 6;
      v17 = 1000.0;
      if (v9 >= 1000.0 || v16 >= 3)
      {
        v19 = (a2 + 88);
        if (*(a2 + 88) >= 0.0)
        {
          goto LABEL_74;
        }

        if (v9 <= 0.0)
        {
          *v19 = 0.0;
LABEL_74:
          v172 = 0.0;
          Current = CFAbsoluteTimeGetCurrent();
          v27 = *v8 >= 0.0 && Current - *(a2 + 76) < 10.0;
          v28 = Current - *(a1 + 408);
          v171 = v28;
          v29 = (a1 + 200);
          v30 = *(a1 + 220);
          v31 = v30 < 0.0;
          if (v30 < 0.0)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_101A26EB0();
            }

            v32 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#SLC got first location, sending SLC notification", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A277DC();
            }

            v33 = *(a2 + 16);
            *v29 = *a2;
            *(a1 + 216) = v33;
            v34 = *(a2 + 32);
            v35 = *(a2 + 48);
            v36 = *(a2 + 80);
            *(a1 + 264) = *(a2 + 64);
            *(a1 + 280) = v36;
            *(a1 + 232) = v34;
            *(a1 + 248) = v35;
            v37 = *(a2 + 96);
            v38 = *(a2 + 112);
            v39 = *(a2 + 128);
            *(a1 + 340) = *(a2 + 140);
            *(a1 + 312) = v38;
            *(a1 + 328) = v39;
            *(a1 + 296) = v37;
            *(a1 + 408) = 0;
            v40 = 0.0;
            if (v27)
            {
              goto LABEL_86;
            }

            v42 = 1;
          }

          else
          {
            sub_1001097CC((a1 + 120), a2, a1 + 200);
            v40 = v43;
            v172 = v43;
            v44 = (a1 + 276);
            v45 = *(a1 + 276);
            v46 = *(a2 + 76);
            if (qword_1025D47A0 != -1)
            {
              sub_101A26EB0();
            }

            v47 = vabdd_f64(v45, v46);
            v48 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              *&buf[4] = v40;
              *&buf[12] = 2048;
              *&buf[14] = v47;
              *&buf[22] = 2048;
              *&buf[24] = 0x3FD5555555555555;
              _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "#SLC handleSignificantLocationChange, distance, %.1lf, timeDelta, %.1lf, maxFactor, %.1lf", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A274A8(v40, v47);
            }

            if (v27)
            {
              if (v40 < 500.0 || (v49 = *v8, v40 < *v8))
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v50 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  v51 = *(a2 + 4);
                  v52 = *(a2 + 12);
                  v53 = *(a2 + 20);
                  v54 = *(a1 + 204);
                  v55 = *(a1 + 212);
                  v56 = *(a1 + 220);
                  *buf = 134547201;
                  *&buf[4] = v51;
                  *&buf[12] = 2053;
                  *&buf[14] = v52;
                  *&buf[22] = 2048;
                  *&buf[24] = v53;
                  *&buf[32] = 2048;
                  *&buf[34] = v40;
                  *&buf[42] = 2053;
                  *&buf[44] = v54;
                  *&buf[52] = 2053;
                  *&buf[54] = v55;
                  *&buf[62] = 2048;
                  *v186 = v56;
                  _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "#SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f moved only %.2fm from previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f, discarding", buf, 0x48u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v163 = *(a2 + 4);
                v164 = *(a2 + 12);
                v165 = *(a2 + 20);
                v166 = *(a1 + 204);
                v167 = *(a1 + 212);
                v168 = *(a1 + 220);
                v173 = 134547201;
                v174 = v163;
                v175 = 2053;
                *v176 = v164;
                *&v176[8] = 2048;
                *&v176[10] = v165;
                *&v176[18] = 2048;
                *&v176[20] = v40;
                *&v176[28] = 2053;
                *&v176[30] = v166;
                *&v176[38] = 2053;
                *&v176[40] = v167;
                *&v176[48] = 2048;
                *v177 = v168;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f moved only %.2fm from previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f, discarding", &v173, 72, *&v171);
                v97 = v169;
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v169);
LABEL_198:
                if (v97 != buf)
                {
                  free(v97);
                }

LABEL_107:
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v57 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "#SLC no location change", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A276F8();
                }

                v42 = 0;
                v31 = 0;
LABEL_127:
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v64 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
                {
                  *buf = 68289795;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  *&buf[18] = 1026;
                  *&buf[20] = v42;
                  *&buf[24] = 2049;
                  *&buf[26] = v40;
                  *&buf[34] = 2050;
                  *&buf[36] = v28;
                  _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#SLC Location inspection complete, isSignificantlocationchange:%{public}hhd, distance:%{private}f, secondsSinceLastSLC_s:%{public}.09f}", buf, 0x2Cu);
                }

                if (sub_100071CA0())
                {
                  sub_10004FD18();
                  v173 = v42;
                  sub_10004345C(buf, "slcUpdate", &v173);
                  sub_100116D68(buf, "distance", &v172);
                  sub_100116D68(buf, "hAcc", v8);
                  sub_100116D68(buf, "secondsSinceLastSLC", &v171);
                  sub_100071CAC(buf, "locationd");
                  sub_100005DA4();
                }

                if (v31)
                {
                  if (qword_1025D48C0 != -1)
                  {
                    sub_101A27A88();
                  }

                  v65 = qword_1025D48C8;
                  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
                  {
                    v66 = *(a2 + 4);
                    v67 = *(a2 + 12);
                    v68 = *(a2 + 20);
                    v69 = *(a2 + 88);
                    v70 = *(a2 + 96);
                    v71 = *(a1 + 204);
                    v72 = *(a1 + 212);
                    v73 = *(a1 + 220);
                    v74 = *(a2 + 76) - *(a1 + 276);
                    *buf = 136317955;
                    *&buf[4] = "SignificantChange";
                    *&buf[12] = 1024;
                    *&buf[14] = 1;
                    *&buf[18] = 2053;
                    *&buf[20] = v66;
                    *&buf[28] = 2053;
                    *&buf[30] = v67;
                    *&buf[38] = 2048;
                    *&buf[40] = v68;
                    *&buf[48] = 2048;
                    *&buf[50] = v69;
                    *&buf[58] = 1024;
                    *&buf[60] = v70;
                    *v186 = 2053;
                    *&v186[2] = v71;
                    *&v186[10] = 2053;
                    *&v186[12] = v72;
                    *&v186[20] = 2048;
                    *&v186[22] = v73;
                    *&v186[30] = 2048;
                    *v187 = v172;
                    *&v187[8] = 2048;
                    *&v187[10] = v74;
                    _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Lifespan,%.2f,LocationType,%d,PrevLocation,%{sensitive}+.8f,%{sensitive}+.8f,%.2f,Distance,%.2f,DeltaTime,%.3f,", buf, 0x72u);
                  }

                  if (sub_10000A100(123, 2))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1025D48C0 != -1)
                    {
                      sub_101A27A88();
                    }

                    v146 = *(a2 + 4);
                    v147 = *(a2 + 12);
                    v148 = *(a2 + 20);
                    v149 = *(a2 + 88);
                    v150 = *(a2 + 96);
                    v151 = *(a1 + 204);
                    v152 = *(a1 + 212);
                    v153 = *(a1 + 220);
                    v154 = *(a2 + 76) - *(a1 + 276);
                    v173 = 136317955;
                    v174 = "SignificantChange";
                    v175 = 1024;
                    *v176 = 1;
                    *&v176[4] = 2053;
                    *&v176[6] = v146;
                    *&v176[14] = 2053;
                    *&v176[16] = v147;
                    *&v176[24] = 2048;
                    *&v176[26] = v148;
                    *&v176[34] = 2048;
                    *&v176[36] = v149;
                    *&v176[44] = 1024;
                    *&v176[46] = v150;
                    *v177 = 2053;
                    *&v177[2] = v151;
                    *v178 = 2053;
                    *&v178[2] = v152;
                    v179 = 2048;
                    v180 = v153;
                    v181 = 2048;
                    v182 = v172;
                    v183 = 2048;
                    v184 = v154;
                    LODWORD(v170) = 114;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Lifespan,%.2f,LocationType,%d,PrevLocation,%{sensitive}+.8f,%{sensitive}+.8f,%.2f,Distance,%.2f,DeltaTime,%.3f,", &v173, v170);
                    v156 = v155;
                    sub_100152C7C("LOCATION", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v155);
                    if (v156 != buf)
                    {
                      free(v156);
                    }
                  }

                  *(a1 + 184) = v172;
                  *(a1 + 192) = *(a2 + 76) - *(a1 + 276);
                  v75 = *(a2 + 140);
                  v77 = *(a2 + 112);
                  v76 = *(a2 + 128);
                  *(a1 + 296) = *(a2 + 96);
                  *(a1 + 312) = v77;
                  *(a1 + 328) = v76;
                  *(a1 + 340) = v75;
                  v79 = *(a2 + 32);
                  v78 = *(a2 + 48);
                  v80 = *(a2 + 80);
                  *(a1 + 264) = *(a2 + 64);
                  *(a1 + 280) = v80;
                  *(a1 + 232) = v79;
                  *(a1 + 248) = v78;
                  v81 = *(a2 + 16);
                  *v29 = *a2;
                  *(a1 + 216) = v81;
                  *(a1 + 276) = Current;
                  *(a1 + 408) = Current;
                  sub_100C0E020(a1);
                }

                return;
              }

              if (*(a1 + 296) == *(a2 + 96))
              {
                v82 = *v44;
              }

              else
              {
                v98 = *(a1 + 288);
                v82 = *v44;
                if (v98 >= 0.0 && v98 + v82 > Current)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_101A26E08();
                  }

                  v99 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                  {
                    v100 = *(a1 + 204);
                    v101 = *(a1 + 212);
                    v102 = *(a1 + 220);
                    v103 = *v44;
                    v104 = *(a1 + 288);
                    v105 = *(a2 + 4);
                    v106 = *(a2 + 12);
                    v107 = *(a2 + 20);
                    *buf = 134547457;
                    *&buf[4] = v100;
                    *&buf[12] = 2053;
                    *&buf[14] = v101;
                    *&buf[22] = 2048;
                    *&buf[24] = v102;
                    *&buf[32] = 2048;
                    *&buf[34] = v103;
                    *&buf[42] = 2048;
                    *&buf[44] = v104;
                    *&buf[52] = 2053;
                    *&buf[54] = v105;
                    *&buf[62] = 2053;
                    *v186 = v106;
                    *&v186[8] = 2048;
                    *&v186[10] = v107;
                    _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_DEBUG, "#SLC Lifespan of previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f has not expired (timestamp %.2f, lifespan %.2f), discarding <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f", buf, 0x52u);
                  }

                  if (!sub_10000A100(121, 2))
                  {
                    goto LABEL_107;
                  }

                  bzero(buf, 0x65CuLL);
                  if (qword_1025D47A0 != -1)
                  {
                    sub_101A26E08();
                  }

                  v108 = *(a1 + 204);
                  v109 = *(a1 + 212);
                  v110 = *(a1 + 220);
                  v111 = *v44;
                  v112 = *(a1 + 288);
                  v113 = *(a2 + 4);
                  v114 = *(a2 + 12);
                  v115 = *(a2 + 20);
                  v173 = 134547457;
                  v174 = v108;
                  v175 = 2053;
                  *v176 = v109;
                  *&v176[8] = 2048;
                  *&v176[10] = v110;
                  *&v176[18] = 2048;
                  *&v176[20] = v111;
                  *&v176[28] = 2048;
                  *&v176[30] = v112;
                  *&v176[38] = 2053;
                  *&v176[40] = v113;
                  *&v176[48] = 2053;
                  *v177 = v114;
                  *&v177[8] = 2048;
                  *v178 = v115;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#SLC Lifespan of previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f has not expired (timestamp %.2f, lifespan %.2f), discarding <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f", &v173, 82, *&v171);
                  v97 = v116;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v116);
                  goto LABEL_198;
                }
              }

              if (vabdd_f64(Current, v82) < 10.0 && *(a1 + 220) <= v49)
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v132 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  v133 = *v44;
                  v134 = *(a1 + 204);
                  v135 = *(a1 + 212);
                  v136 = *(a2 + 4);
                  v137 = *(a2 + 12);
                  v138 = *(a2 + 20);
                  *buf = 134219521;
                  *&buf[4] = v133;
                  *&buf[12] = 2053;
                  *&buf[14] = v134;
                  *&buf[22] = 2053;
                  *&buf[24] = v135;
                  *&buf[32] = 2048;
                  *&buf[34] = 0x4024000000000000;
                  *&buf[42] = 2053;
                  *&buf[44] = v136;
                  *&buf[52] = 2053;
                  *&buf[54] = v137;
                  *&buf[62] = 2048;
                  *v186 = v138;
                  _os_log_impl(dword_100000000, v132, OS_LOG_TYPE_DEBUG, "#SLC Timestamp %.2f of previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> is less than %.2f seconds ago; discarding <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f", buf, 0x48u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v139 = *v44;
                v140 = *(a1 + 204);
                v141 = *(a1 + 212);
                v142 = *(a2 + 4);
                v143 = *(a2 + 12);
                v144 = *(a2 + 20);
                v173 = 134219521;
                v174 = *&v139;
                v175 = 2053;
                *v176 = v140;
                *&v176[8] = 2053;
                *&v176[10] = v141;
                *&v176[18] = 2048;
                *&v176[20] = 0x4024000000000000;
                *&v176[28] = 2053;
                *&v176[30] = v142;
                *&v176[38] = 2053;
                *&v176[40] = v143;
                *&v176[48] = 2048;
                *v177 = v144;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#SLC Timestamp %.2f of previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> is less than %.2f seconds ago; discarding <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f", &v173, 72, *&v171);
                v97 = v145;
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v145);
                goto LABEL_198;
              }

              if (v47 * 340.0 < v40 && v40 > v49 + *(a1 + 220))
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v83 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = *(a2 + 4);
                  v85 = *(a2 + 12);
                  v86 = *(a2 + 20);
                  v87 = *(a1 + 204);
                  v88 = *(a1 + 212);
                  v89 = *(a1 + 220);
                  *buf = 134547457;
                  *&buf[4] = v84;
                  *&buf[12] = 2053;
                  *&buf[14] = v85;
                  *&buf[22] = 2048;
                  *&buf[24] = v86;
                  *&buf[32] = 2048;
                  *&buf[34] = v40;
                  *&buf[42] = 2053;
                  *&buf[44] = v87;
                  *&buf[52] = 2053;
                  *&buf[54] = v88;
                  *&buf[62] = 2048;
                  *v186 = v89;
                  *&v186[8] = 2048;
                  *&v186[10] = v47;
                  _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEFAULT, "#Warning #SLC Location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f is too far (distance %.2f) from previous location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f from %.3fs ago, discarding", buf, 0x52u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v90 = *(a2 + 4);
                v91 = *(a2 + 12);
                v92 = *(a2 + 20);
                v93 = *(a1 + 204);
                v94 = *(a1 + 212);
                v95 = *(a1 + 220);
                v173 = 134547457;
                v174 = v90;
                v175 = 2053;
                *v176 = v91;
                *&v176[8] = 2048;
                *&v176[10] = v92;
                *&v176[18] = 2048;
                *&v176[20] = v40;
                *&v176[28] = 2053;
                *&v176[30] = v93;
                *&v176[38] = 2053;
                *&v176[40] = v94;
                *&v176[48] = 2048;
                *v177 = v95;
                *&v177[8] = 2048;
                *v178 = v47;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#Warning #SLC Location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f is too far (distance %.2f) from previous location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f from %.3fs ago, discarding", &v173, 82, *&v171);
                v97 = v96;
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v96);
                goto LABEL_198;
              }

              if (v28 <= 300.0)
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v118 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  v119 = *(a1 + 204);
                  v120 = *(a1 + 212);
                  v121 = *(a1 + 220);
                  v122 = *(a2 + 4);
                  v123 = *(a2 + 12);
                  v124 = *(a2 + 20);
                  *buf = 134219521;
                  *&buf[4] = v28;
                  *&buf[12] = 2053;
                  *&buf[14] = v119;
                  *&buf[22] = 2053;
                  *&buf[24] = v120;
                  *&buf[32] = 2048;
                  *&buf[34] = v121;
                  *&buf[42] = 2053;
                  *&buf[44] = v122;
                  *&buf[52] = 2053;
                  *&buf[54] = v123;
                  *&buf[62] = 2048;
                  *v186 = v124;
                  _os_log_impl(dword_100000000, v118, OS_LOG_TYPE_DEBUG, "#SLC avoiding too frequent SLC notifications, age, %.1f, prev location, <%{sensitive}+.8f,%{sensitive}+.8f>, acc, %.2lf, new location, <%{sensitive}+.8f,%{sensitive}+.8f>, acc, %.2f", buf, 0x48u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v125 = *(a1 + 204);
                v126 = *(a1 + 212);
                v127 = *(a1 + 220);
                v128 = *(a2 + 4);
                v129 = *(a2 + 12);
                v130 = *(a2 + 20);
                v173 = 134219521;
                v174 = *&v28;
                v175 = 2053;
                *v176 = v125;
                *&v176[8] = 2053;
                *&v176[10] = v126;
                *&v176[18] = 2048;
                *&v176[20] = v127;
                *&v176[28] = 2053;
                *&v176[30] = v128;
                *&v176[38] = 2053;
                *&v176[40] = v129;
                *&v176[48] = 2048;
                *v177 = v130;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#SLC avoiding too frequent SLC notifications, age, %.1f, prev location, <%{sensitive}+.8f,%{sensitive}+.8f>, acc, %.2lf, new location, <%{sensitive}+.8f,%{sensitive}+.8f>, acc, %.2f", &v173, 72, *&v171);
                v97 = v131;
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v131);
                goto LABEL_198;
              }

              if (qword_1025D47A0 != -1)
              {
                sub_101A26E08();
              }

              v117 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = v40;
                _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_DEBUG, "#SLC issue notification, distance, %.1lf", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A275E0(v40);
              }

LABEL_86:
              if (qword_1025D47A0 != -1)
              {
                sub_101A26E08();
              }

              v41 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#SLC reporting a location change", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A279A4();
              }

              *(a1 + 408) = 0;
              v42 = 1;
              v31 = 1;
              goto LABEL_127;
            }

            if (qword_1025D47A0 != -1)
            {
              sub_101A26E08();
            }

            v58 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              v59 = *(a2 + 4);
              v60 = *(a2 + 12);
              v61 = *(a2 + 20);
              v62 = *(a2 + 76);
              *buf = 134546433;
              *&buf[4] = v59;
              *&buf[12] = 2053;
              *&buf[14] = v60;
              *&buf[22] = 2048;
              *&buf[24] = v61;
              *&buf[32] = 2048;
              *&buf[34] = v62;
              _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "#SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f timestamp %.2f is stale, discarding", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47A0 != -1)
              {
                sub_101A26E08();
              }

              v157 = *(a2 + 4);
              v158 = *(a2 + 12);
              v159 = *(a2 + 20);
              v160 = *(a2 + 76);
              v173 = 134546433;
              v174 = v157;
              v175 = 2053;
              *v176 = v158;
              *&v176[8] = 2048;
              *&v176[10] = v159;
              *&v176[18] = 2048;
              *&v176[20] = v160;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f timestamp %.2f is stale, discarding", &v173, 42, *&v171);
              v162 = v161;
              sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v161);
              if (v162 != buf)
              {
                free(v162);
              }
            }

            v42 = 0;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_101A26E08();
          }

          v63 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "#SLC new location is not useful", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A278C0();
          }

          goto LABEL_127;
        }

        v17 = *(a2 + 20);
      }

      else
      {
        v19 = (a2 + 88);
        v25 = *(a2 + 88);
        *(a2 + 20) = 0x408F400000000000;
        if (v25 >= 0.0)
        {
          goto LABEL_74;
        }
      }

      *v19 = v17 / 250.0;
      goto LABEL_74;
    }

    if (v9 < 30.0)
    {
      goto LABEL_35;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101A26EB0();
    }

    v14 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate GPS location}";
LABEL_26:
    v5 = v14;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_27;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101A26EB0();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #SLC Currently sending significant location changes read from defaults.}", buf, 0x12u);
    if (qword_1025D47A0 != -1)
    {
      sub_101A26E08();
    }
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v4 = "{msg%{public}.0s:#Warning #SLC Delete 'SpoofSignificantLocationChange' from defaults to continue monitoring SLC updates.}";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_27:
    _os_log_impl(dword_100000000, v5, v6, v4, buf, 0x12u);
  }
}

uint64_t sub_1001CECB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

double sub_1001CECD8(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = 360.0;
  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  if (a8 < 0.0)
  {
    a8 = a8 + 360.0;
  }

  v15 = a8 - a5;
  if (v15 > 180.0)
  {
    v14 = -360.0;
LABEL_8:
    v15 = v15 + v14;
    goto LABEL_9;
  }

  if (v15 < -180.0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = (a7 - a4) * 0.0174532925;
  v17 = (a6 + a9) * 0.5;
  v18 = v15 * 0.0174532925;
  v19 = __sincos_stret((a4 + a7) * 0.0174532925 * 0.5);
  v20 = sqrt(v19.__sinval * -0.00669437999 * v19.__sinval + 1.0);
  *a1 = v16 * (v17 + 6335439.33 / (v20 * (v20 * v20)));
  *a2 = v19.__cosval * (v17 + 6378137.0 / v20) * v18;
  result = a9 - a6;
  *a3 = a9 - a6;
  return result;
}

id sub_1001CEE08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#Warning,#cterror,#ctcl,triggerCellMonitorRefresh,error,%@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019763B8();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh,success", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019764A0();
    }
  }

  return sub_1001CEF60(v3, (a2 == 0));
}

id sub_1001CEF60(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10196EBB8();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#ctcl,sendCellMonitorRefreshResult,%d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101975D38(a2);
  }

  v5 = sub_1001CF068(a2);
  v6 = v5;
  return [*(a1 + 112) sendNotificationToClients:@"kCellMonitorRefreshResultNotification" notificationData:v5];
}

CFDictionaryRef sub_1001CF068(char a1)
{
  v2 = a1;
  values = sub_1001CF0F0(&v2);
  keys = @"kCellMonitorRefreshResultKey";
  return CFDictionaryCreate(0, &keys, &values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

CFTypeRef sub_1001CF0F0(_BYTE *a1)
{
  v1 = &kCFBooleanTrue;
  if (!*a1)
  {
    v1 = &kCFBooleanFalse;
  }

  v2 = *v1;
  CFRetain(*v1);
  return v2;
}

double sub_1001CF138(double a1, double a2, double a3, double a4)
{
  if (sub_10010632C(a1, a2, a3, a4))
  {

    sub_1002AB240(a1, a2, a3, a4);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    sub_1001CECD8(&v11, &v10, &v9, a1, a2, 0.0, a3, a4, 0.0);
    return sqrt(v10 * v10 + v11 * v11);
  }

  return result;
}

uint64_t sub_1001CF1EC(uint64_t a1, _DWORD *a2, double *a3)
{
  v5 = a3[1] > 0.0 && *a3 > 0.0;
  if ((CLMotionActivity::isTypeInVehicle() & 1) != 0 || *a3 > 0.0 && a3[1] < 0.0)
  {
    return 2;
  }

  else
  {
    return ((*a2 != 0) | v5) & 1;
  }
}

void sub_1001CF26C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101951884();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCachedLocationController::onLocationUpdateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101951898();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCachedLocationController::onLocationUpdateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CF438(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001CF438(uint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 > 12)
  {
    if (v5 == 13 || v5 == 22)
    {
      return;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v5 == 4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_1001CFD3C((result + 568), a4, &Current);
      return;
    }
  }

  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a3;
    LODWORD(Current) = 67240192;
    HIDWORD(Current) = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLC: Received unknown notification, %{public}d", &Current, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951BCC(a3);
  }
}

void sub_1001CF560(void *result, int a2, uint64_t a3, double *a4)
{
  v7 = *a4;
  v8 = *(result + 6);
  v9 = vabdd_f64(*a4, *(result + 7));
  if ((a2 & 1) != 0 || v9 >= 2400.0)
  {
    memset(v28, 0, sizeof(v28));
    v10 = (*(**result + 16))();
    if (v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101ABD550();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v12 = result[7];
        v13 = *(result + 68);
        v14 = *(result + 76);
        *buf = 67110145;
        *&buf[4] = a2;
        v39 = 1024;
        *v40 = 1;
        *&v40[4] = 2048;
        *&v40[6] = v12;
        v41 = 2053;
        v42 = v13;
        v43 = 2053;
        *&v44 = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "isStart,%d,manifest,%d,LastTime,%lf,LastLat,%{sensitive}.05lf,LastLon,%{sensitive}.05lf", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ABD578(buf);
        v20 = result[7];
        v21 = *(result + 68);
        v22 = *(result + 76);
        *v29 = 67110145;
        *&v29[4] = a2;
        v30 = 1024;
        v31 = 1;
        v32 = 2048;
        v33 = v20;
        v34 = 2053;
        v35 = v21;
        v36 = 2053;
        v37 = v22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "isStart,%d,manifest,%d,LastTime,%lf,LastLat,%{sensitive}.05lf,LastLon,%{sensitive}.05lf", v29, 44);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTransitTilePreloader::makeRequestIfNeeded(BOOL, const CLDaemonLocation &, const CFAbsoluteTime &)", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      if (!a2)
      {
        if (*(a3 + 20) > 0.0)
        {
          sub_1001097CC((result + 1), a3, (result + 8));
          if ((v9 >= 259200.0 || v19 > 150000.0) && *(result + 7) == 0.0)
          {
            result[7] = *a4;
          }
        }

        goto LABEL_29;
      }

      if (vabdd_f64(v7, v8) >= 259200.0)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101ABD550();
        }

        v15 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Request region preload manifest, update", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_23;
        }

        sub_101ABD578(buf);
        *v29 = 0;
        LODWORD(v26) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Request region preload manifest, update", v29, v26);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTransitTilePreloader::makeRequestIfNeeded(BOOL, const CLDaemonLocation &, const CFAbsoluteTime &)", "%s\n", v16);
LABEL_34:
        if (v17 != buf)
        {
          free(v17);
        }

LABEL_23:
        sub_100ED3994(result, v10 ^ 1u, a4);
      }
    }

    else if (a2)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101ABD550();
      }

      v18 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "Request region preload manifest, no manifest", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_23;
      }

      sub_101ABD578(buf);
      *v29 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Request region preload manifest, no manifest", v29, 2);
      v17 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "void CLTransitTilePreloader::makeRequestIfNeeded(BOOL, const CLDaemonLocation &, const CFAbsoluteTime &)", "%s\n", v25);
      goto LABEL_34;
    }

LABEL_29:
    *buf = v28;
    sub_1001D22FC(buf);
  }
}

void sub_1001CFCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31)
{
  a31 = &a20;
  sub_1001D22FC(&a31);
  _Unwind_Resume(a1);
}

id sub_1001CFCF4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRegionPreloadManifest:a2];
}

uint64_t sub_1001CFFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 5992);
  v5[0] = *(a2 + 5984);
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001D0020(a1, v5);
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

void sub_1001D0008(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D0020(uint64_t a1, void *a2)
{
  *a1 = xmmword_101D220A0;
  *(a1 + 16) = 0x408F400000000000;
  *(a1 + 24) = 6;
  *(a1 + 32) = *a2;
  v3 = a2[1];
  *(a1 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_10018D404(a1 + 72);
  sub_10001CAF4(&v14);
  v4 = *(a1 + 8);
  v16 = 0.0;
  v5 = sub_1000B9370(v14, "CLLocationControllerTrajectorySamplerThresholdDistance_m", &v16);
  v6 = v16;
  if (!v5)
  {
    v6 = v4;
  }

  *(a1 + 8) = v6;
  if (v15)
  {
    sub_100008080(v15);
  }

  sub_10001CAF4(&v14);
  v7 = *(a1 + 8);
  v16 = 0.0;
  v8 = sub_1000B9370(v14, "CLLocationControllerTrajectorySamplerThresholdDistance_m", &v16);
  v9 = v16;
  if (!v8)
  {
    v9 = v7;
  }

  *(a1 + 8) = v9;
  if (v15)
  {
    sub_100008080(v15);
  }

  sub_10001CAF4(&v14);
  v10 = *(a1 + 16);
  v16 = 0.0;
  v11 = sub_1000B9370(v14, "CLLocationControllerTrajectorySamplerRequiredHorizontalAccuracy_m", &v16);
  v12 = v16;
  if (!v11)
  {
    v12 = v10;
  }

  *(a1 + 16) = v12;
  if (v15)
  {
    sub_100008080(v15);
  }

  return a1;
}

void sub_1001D017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  v14 = *v12;
  if (*v12)
  {
    *(v11 + 56) = v14;
    operator delete(v14);
  }

  v15 = *(v11 + 40);
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1001D01CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = (a1 + 48);
  *(a1 + 56) = *(a1 + 48);
  v9 = (*(**(a1 + 32) + 56))(*(a1 + 32));
  if (v9)
  {
    if (a4 - a3 <= *a1 || (v10 = v9, (v11 = (*(**(a1 + 32) + 56))(*(a1 + 32), a4 + -1.0)) == 0))
    {
LABEL_39:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return sub_10115F0F8(a2, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
    }

    v12 = v11;
    [objc_msgSend_location(v10) horizontalAccuracy];
    if (v13 < *(a1 + 16))
    {
      v15 = *(a1 + 56);
      v14 = *(a1 + 64);
      if (v15 >= v14)
      {
        v20 = (v15 - *v8) >> 3;
        if ((v20 + 1) >> 61)
        {
          goto LABEL_40;
        }

        v21 = v14 - *v8;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          sub_1003EE744(v8, v23);
        }

        *(8 * v20) = v10;
        v16 = 8 * v20 + 8;
        v24 = *(a1 + 48);
        v25 = *(a1 + 56) - v24;
        v26 = (8 * v20 - v25);
        memcpy(v26, v24, v25);
        v27 = *(a1 + 48);
        *(a1 + 48) = v26;
        *(a1 + 56) = v16;
        *(a1 + 64) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v15 = v10;
        v16 = (v15 + 1);
      }

      *(a1 + 56) = v16;
    }

    sub_1001B3DF8(a1, v10, v12, 0);
    [objc_msgSend_location(v12) horizontalAccuracy];
    v28 = *(a1 + 56);
    if (v29 >= *(a1 + 16))
    {
LABEL_35:
      v40 = *v8;
      v41 = 126 - 2 * __clz((v28->i64 - *v8) >> 3);
      v42 = v28 == *v8;
      v44 = sub_1001B4008;
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41;
      }

      sub_10115F1B0(v40, v28, &v44, v43, 1);
      goto LABEL_39;
    }

    v30 = *(a1 + 64);
    if (v28 < v30)
    {
      v28->i64[0] = v12;
      v28 = (v28 + 8);
LABEL_34:
      *(a1 + 56) = v28;
      goto LABEL_35;
    }

    v31 = (v28->i64 - *v8) >> 3;
    if (!((v31 + 1) >> 61))
    {
      v32 = v30 - *v8;
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
        sub_1003EE744(v8, v34);
      }

      v35 = (8 * v31);
      *v35 = v12;
      v28 = (8 * v31 + 8);
      v36 = *(a1 + 48);
      v37 = *(a1 + 56) - v36;
      v38 = v35 - v37;
      memcpy(v35 - v37, v36, v37);
      v39 = *(a1 + 48);
      *(a1 + 48) = v38;
      *(a1 + 56) = v28;
      *(a1 + 64) = 0;
      if (v39)
      {
        operator delete(v39);
      }

      goto LABEL_34;
    }

LABEL_40:
    sub_10028C64C();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);

  return sub_10115F0F8(a2, v17, v18, (v18 - v17) >> 3);
}

void sub_1001D04CC(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_u64[0];
  v5 = *(a1 + 40);
  if (*(v5 + 68) <= 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationAtMct,%{public}.3f,buffer is empty", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194EF04();
    }
  }

  else if (a3.n128_f64[0] >= 0.0)
  {
    v8 = sub_1006A9A14(v5, a3.n128_f64[0]);
    *buf = off_1024DE5F8;
    v9 = *(v8 + 24);
    v10 = *(v8 + 40);
    v11 = *(v8 + 56);
    *&buf[8] = *(v8 + 8);
    v26 = v11;
    v25 = v10;
    v24 = v9;
    v12 = *(v8 + 88);
    v13 = *(v8 + 104);
    v14 = *(v8 + 120);
    v27 = *(v8 + 72);
    v30 = v14;
    v29 = v13;
    v28 = v12;
    v31 = *(v8 + 128);
    if (sub_100028030(buf) && BYTE8(v31))
    {
      *a2 = off_1024DE5F8;
      *(a2 + 72) = v27;
      *(a2 + 88) = v28;
      *(a2 + 104) = v29;
      *(a2 + 120) = v30;
      *(a2 + 8) = *&buf[8];
      *(a2 + 24) = v24;
      *(a2 + 40) = v25;
      *(a2 + 56) = v26;
      *(a2 + 128) = v31;
      return;
    }

    if (qword_1025D4600 != -1)
    {
      sub_10194EB0C();
    }

    v15 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v21 = 134349056;
      v22 = v3;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,getLocationAtMct,%{public}.3f,invalid location", &v21, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194ED24();
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationAtMct,%{public}.3f,invalid timestamp", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194EE14();
    }
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 24) = 0u;
  *a2 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 8) = _Q0;
  *(a2 + 40) = 0xBFF0000000000000;
  *(a2 + 56) = 0xBFF0000000000000;
  *(a2 + 72) = _Q0;
  *(a2 + 88) = _Q0;
  *(a2 + 104) = 0xBFF0000000000000;
  *(a2 + 116) = 0;
  *(a2 + 124) = 0;
  *(a2 + 128) = 0xBFF0000000000000;
  *(a2 + 136) = 0;
  *(a2 + 140) = 7;
}

void sub_1001D0818()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_1001D084C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_1001D08DC((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void *sub_1001D08DC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001D0934(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1001D0934(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1006A6D20(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

id sub_1001D09BC(const void *a1, int a2, void *a3, uint64_t a4)
{
  CFRetain(a1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D0D20;
  v9[3] = &unk_102498FE0;
  v9[5] = a4;
  v9[6] = a1;
  v10 = a2;
  v9[4] = a3;
  return [objc_msgSend(a3 "silo")];
}

uint64_t sub_1001D0AA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, &unk_101C7C020, 0x230uLL);
  result = [a1 objectForKey:@"LocationsPrivate"];
  if (result)
  {
    v5 = result;
    result = [objc_msgSend(a1 objectForKey:{@"LocationCount", "integerValue"}];
    if (result >= 1)
    {
      v6 = result;
      result = [v5 bytes];
      if (result)
      {

        return memcpy(a2, (result + 560 * v6 - 560), 0x230uLL);
      }
    }
  }

  return result;
}

double sub_1001D0B64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v3;
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a2 + 120);
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a1 + 120) = v5;
  *(a1 + 104) = v4;
  v7 = *(a2 + 248);
  v8 = *(a2 + 264);
  v9 = *(a2 + 280);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 264) = v8;
  *(a1 + 280) = v9;
  *(a1 + 248) = v7;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 356) = 0;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 425) = *(a2 + 425);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = xmmword_101C76220;
  *(a1 + 560) = 0;
  *(a1 + 568) = -1;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0;
  *(a1 + 610) = 0;
  *(a1 + 612) = 0;
  *(a1 + 616) = *(a2 + 536);
  *(a1 + 624) = *(a2 + 544);
  result = 0.0;
  *(a1 + 632) = 0;
  *(a1 + 640) = *(a2 + 552);
  return result;
}

void sub_1001D0D20(uint64_t a1)
{
  if ([*(a1 + 32) isValid])
  {
    sub_1001D0D74([*(a1 + 32) provider], *(a1 + 48), *(a1 + 56), *(a1 + 40));
  }

  v2 = *(a1 + 48);

  CFRelease(v2);
}

void sub_1001D0D74(void *a1, uint64_t a2, int a3, void *a4)
{
  if (a3 <= 24)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        LODWORD(__src[0]) = 9;
        (*(*a1 + 144))(a1, __src, 0, 0xFFFFFFFFLL);
      }

      return;
    }

    if (a1[17] == a2)
    {
      [objc_msgSend(a4 objectForKey:{@"LocationCount", "integerValue"}];
      [objc_msgSend(a4 objectForKey:{@"Locations", "bytes"}];
      sub_100021AFC(__src);
      operator new();
    }

    if (a1[18] == a2)
    {
      sub_100021AFC(&v24);
      if (CLClientGetLocation())
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
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
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        sub_1001D0AA4(a4, &v38);
        sub_1001D0B5C();
        memcpy(v25, __src, sizeof(v25));
        v10 = v71;
        v71 = 0u;
        v11 = *(&v26 + 1);
        v26 = v10;
        if (v11)
        {
          sub_100008080(v11);
          v31 = v76;
          v32[0] = v77[0];
          *(v32 + 9) = *(v77 + 9);
          v27 = v72;
          v28 = v73;
          v29 = v74;
          v30 = v75;
          if (*(&v71 + 1))
          {
            sub_100008080(*(&v71 + 1));
          }
        }

        else
        {
          v31 = v76;
          v32[0] = v77[0];
          *(v32 + 9) = *(v77 + 9);
          v27 = v72;
          v28 = v73;
          v29 = v74;
          v30 = v75;
        }

        LODWORD(__src[0]) = 39;
        (*(*a1 + 152))(a1, __src, &v24, 0, 0xFFFFFFFFLL, 0);
        goto LABEL_49;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v18 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Could not get location from location event (%s)", __src, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_1019F9848(__src);
      v20 = qword_1025D48A8;
      v21 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
      LODWORD(v38) = 136315138;
      *(&v38 + 4) = v21;
      _os_log_send_and_compose_impl(2, 0, __src, 1628, dword_100000000, v20, 0, "#Warning Could not get location from location event (%s)", &v38);
      v17 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "void CLBundleLocationProvider::handleClientEvent(CLClientRef, CLClientEvent, id)", "%s\n", v22);
      if (v17 == __src)
      {
        goto LABEL_49;
      }
    }

    else
    {
      sub_100021AFC(&v24);
      if (CLClientGetLocation())
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
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
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        sub_1001D0AA4(a4, &v38);
        sub_1001D0B5C();
        memcpy(v25, __src, sizeof(v25));
        v6 = v71;
        v71 = 0u;
        v7 = *(&v26 + 1);
        v26 = v6;
        if (v7)
        {
          sub_100008080(v7);
          v31 = v76;
          v32[0] = v77[0];
          *(v32 + 9) = *(v77 + 9);
          v27 = v72;
          v28 = v73;
          v29 = v74;
          v30 = v75;
          if (*(&v71 + 1))
          {
            sub_100008080(*(&v71 + 1));
          }
        }

        else
        {
          v31 = v76;
          v32[0] = v77[0];
          *(v32 + 9) = *(v77 + 9);
          v27 = v72;
          v28 = v73;
          v29 = v74;
          v30 = v75;
        }

        LODWORD(__src[0]) = 0;
        (*(*a1 + 152))(a1, __src, &v24, 0, 0xFFFFFFFFLL, 0);
        goto LABEL_49;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Could not get location from location event (%s)", __src, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_1019F9848(__src);
      v14 = qword_1025D48A8;
      v15 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
      LODWORD(v38) = 136315138;
      *(&v38 + 4) = v15;
      _os_log_send_and_compose_impl(2, 0, __src, 1628, dword_100000000, v14, 0, "#Warning Could not get location from location event (%s)", &v38);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void CLBundleLocationProvider::handleClientEvent(CLClientRef, CLClientEvent, id)", "%s\n", v16);
      if (v17 == __src)
      {
        goto LABEL_49;
      }
    }

    free(v17);
LABEL_49:

    if (v36)
    {
      sub_100008080(v36);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v33)
    {
      sub_100008080(v33);
    }

    if (*(&v26 + 1))
    {
      sub_100008080(*(&v26 + 1));
    }

    return;
  }

  if (a3 == 25)
  {
    if (CLClientGetError() && v23 <= 1)
    {
      LODWORD(__src[0]) = 9;
      (*(*a1 + 144))(a1, __src, 1, 0xFFFFFFFFLL);
    }
  }

  else if (a3 == 27)
  {
    if (CLClientGetAuthorizationStatus())
    {
      *(a1 + 45) = 0;
      (*(*a1 + 304))(a1);
      LODWORD(__src[0]) = 9;
      (*(*a1 + 144))(a1, __src, 1, 0xFFFFFFFFLL);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning BLP: Could not get authorization status (%s)", __src, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F972C(a1);
      }
    }

    LODWORD(__src[0]) = 13;
    (*(*a1 + 144))(a1, __src, 0, 0xFFFFFFFFLL);
  }
}

void sub_1001D17B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1858(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLeechedNotification:v5 withData:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D18E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D18FC(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D19A0(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1A44(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

id sub_1001D1AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101A5C200();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Received an initial location (pinned), unregistering", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A5C214();
  }

  return [a4 unregisterFromLocationNotifications];
}

void sub_1001D1BA8(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1C4C(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1CF0(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

BOOL sub_1001D1DA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52) <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v4 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v5 = "{msg%{public}.0s:#GnssRefLocationCache,isNotRepeatedLocationAssistance,no cached location}";
    goto LABEL_14;
  }

  v2 = *(a2 + 76) - *(a1 + 108);
  if (v2 < 0.0 || v2 > 6.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v4 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v5 = "{msg%{public}.0s:#GnssRefLocationCache,isNotRepeatedLocationAssistance,new assistance not recent}";
LABEL_14:
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, v5, &v10, 0x12u);
    return 1;
  }

  if (*(a2 + 36) > 0.0)
  {
    v7 = *(a1 + 68);
    if (v7 < 0.0 || v7 > 0.0 && vabdd_f64(*(a2 + 28), *(a1 + 60)) > 1.0)
    {
      return 1;
    }
  }

  if (*(a2 + 84) > *(a1 + 116))
  {
    return 1;
  }

  sub_1001097CC((a1 + 1008), a2, a1 + 32);
  if (v8 > 1.0)
  {
    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v9 = qword_1025D4658;
  result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,isNotRepeatedLocationAssistance,same location}", &v10, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_1001D1FE0(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    sub_101AC0C84(a1);
  }

  v4 = sub_1001D252C(a1, 0xA);
  sub_1001D22AC(a2);
  if (*v4 != 1)
  {
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1003110B8();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = sub_100008880((v4 + 184));
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Get manifest tile, %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AC0A98(v4);
  }

  result = sub_100008880((v4 + 184));
  if (result)
  {
    if (sub_100008880((v4 + 184)) >= 2)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Why do we have more than one, we only want one", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AC0B98();
      }
    }

    v8 = *(sub_10018D3FC((v4 + 184)) + 80);
    *buf = *(v8 + 48);
    v17 = *(v8 + 64);
    if (*(v8 + 95) < 0)
    {
      sub_100007244(&__p, *(v8 + 72), *(v8 + 80));
    }

    else
    {
      __p = *(v8 + 72);
      v19 = *(v8 + 88);
    }

    if (sub_10008AC98(v8, *(a1 + 200)))
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (sub_100713434(v8, &v12))
      {
        v9 = v12;
        v10 = v13;
        if (v12 != v13)
        {
          v11 = a2[1];
          do
          {
            if (v11 >= a2[2])
            {
              v11 = sub_100714994(a2, v9);
            }

            else
            {
              sub_10071492C(a2, v9);
              v11 += 56;
            }

            a2[1] = v11;
            v9 += 56;
          }

          while (v9 != v10);
        }
      }

      v15 = &v12;
      sub_1001D22FC(&v15);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    return 1;
  }

  return result;
}

void sub_1001D226C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  a12 = &a9;
  sub_1001D22FC(&a12);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001D22AC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_1001D22FC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001D22AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1001D2350(unsigned __int8 *a1, uint64_t a2)
{
  result = sub_100072814(a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a2 + 96);
  if (v5 > 6)
  {
    if ((v5 - 10) >= 2)
    {
      if (v5 == 7)
      {
        v9 = a1 + 200;
        v8 = a1 + 356;
        v7 = a1[356];
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_21;
        }

        v9 = a1 + 360;
        v8 = a1 + 516;
        v7 = a1[516];
      }

      goto LABEL_15;
    }

LABEL_14:
    v9 = a1 + 520;
    v8 = a1 + 676;
    v7 = a1[676];
    goto LABEL_15;
  }

  if (v5 == 1 || v5 == 4)
  {
    goto LABEL_14;
  }

  if (v5 != 6)
  {
    goto LABEL_21;
  }

  v8 = a1 + 196;
  v7 = a1[196];
  v9 = a1 + 40;
LABEL_15:
  if (v7 != 1)
  {
    v18 = *(a2 + 16);
    *v9 = *a2;
    *(v9 + 1) = v18;
    v19 = *(a2 + 32);
    v20 = *(a2 + 48);
    v21 = *(a2 + 80);
    *(v9 + 4) = *(a2 + 64);
    *(v9 + 5) = v21;
    *(v9 + 2) = v19;
    *(v9 + 3) = v20;
    v22 = *(a2 + 96);
    v23 = *(a2 + 112);
    v24 = *(a2 + 128);
    *(v9 + 140) = *(a2 + 140);
    *(v9 + 7) = v23;
    *(v9 + 8) = v24;
    *(v9 + 6) = v22;
LABEL_20:
    *v8 = 1;
    goto LABEL_21;
  }

  if (!sub_100073270(v9, a2))
  {
    v10 = *v8;
    v11 = *(a2 + 16);
    *v9 = *a2;
    *(v9 + 1) = v11;
    v12 = *(a2 + 80);
    v14 = *(a2 + 32);
    v13 = *(a2 + 48);
    *(v9 + 4) = *(a2 + 64);
    *(v9 + 5) = v12;
    *(v9 + 2) = v14;
    *(v9 + 3) = v13;
    v16 = *(a2 + 112);
    v15 = *(a2 + 128);
    v17 = *(a2 + 96);
    *(v9 + 140) = *(a2 + 140);
    *(v9 + 7) = v16;
    *(v9 + 8) = v15;
    *(v9 + 6) = v17;
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_21:

  return sub_1001D3364(a1);
}

uint64_t sub_1001D252C(uint64_t a1, void *a2)
{
  if ((a2 & 0xFFFFFFF7) - 1 >= 2)
  {
    sub_101AC3C68(a1);
  }

  result = sub_10007253C((a1 + 504), a2);
  if (!result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABFB1C();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v9 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TileMgr, invalid tileType, %{public}d, #CloneMe", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AC3DCC(a2);
    }

    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }
    }

    v6 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLTilesManager.mm", 2635, "getTilesSet");
  }

  return result;
}

void sub_1001D2828(uint64_t *a1, __n128 a2)
{
  v2 = a1[2];
  v3 = a1 + 3;
  if (v2 != a1 + 3)
  {
    a2.n128_u64[0] = 68289282;
    v13 = a2;
    do
    {
      v5 = v2[4];
      v6 = v2[5];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (v5 + 72);
      if (*(v5 + 95) < 0)
      {
        v7 = *v7;
      }

      v8 = sub_1000184F4(a1[1], [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v7, *&v13]]);
      if (sub_1001D2A1C(a1, v8))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v9 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = v13.n128_u32[0];
          v15 = 0;
          v16 = 2082;
          v17 = "";
          v18 = 2114;
          v19 = v8;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:markReceivingLocationInformation, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        sub_1000F6390(a1[1], v8, 1, 0);
      }

      if (v6)
      {
        sub_100008080(v6);
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != v3);
  }
}

id sub_1001D2A1C(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_1001D2AE8(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 hasValueForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:{"stringWithUTF8String:", v5), v3}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1001D2ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D2AFC(__n128 *a1, __n128 *a2)
{
  v13 = *a2;
  v3 = a1[8].n128_u64[1];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v5];
    if (v7 > v13.n128_f64[0])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
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
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101A89534();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v15 = v13.n128_u64[0];
            v16 = 2048;
            v17 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A89754();
          }

          goto LABEL_18;
        }

        v11 = 256;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1001D2E28(a1[1].n128_u64, &v13);
  a1[6] = v13;
}

uint64_t sub_1001D2CDC(void *a1)
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

void sub_1001D2D04(uint64_t *a1, float *a2)
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
    v7 = a2[2];
    v8 = a2[3];
    v9 = 136315907;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2053;
    v14 = v7;
    v15 = 2053;
    v16 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "LocationCoordinate,context,%s,startTime,%f,latitude,%{sensitive}f,longitude,%{sensitive}f", &v9, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CAB68();
  }
}

__n128 sub_1001D2E28(unint64_t *a1, __n128 *a2)
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
    sub_10025C808(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t *sub_1001D2ED0(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10045E8A0(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

id sub_1001D2F14(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Scheduling pending app status event}", buf, 0x12u);
  }

  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E8BAC;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  [v3 afterInterval:v7 async:sub_1000F49A8(1)];
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100126378;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  return [v4 afterInterval:v6 async:sub_1000F49A8(2)];
}

void sub_1001D30B4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A60E38();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLUnifiedCellLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A60E4C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLUnifiedCellLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001D3280(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001D3280(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 33 && (*(a4 + 672) & 1) == 0)
  {
    sub_1001D2350((result + 2800), a4);

    sub_1001F20F4(result + 3512, a4);
  }
}

uint64_t sub_1001D32E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100072814(a2);
  if (result)
  {
    result = sub_100072814(a3);
    if (result)
    {
      if (vabdd_f64(*(a2 + 76), *(a3 + 76)) <= 45.0)
      {

        return sub_1002270B8(result, a2, a3);
      }
    }
  }

  return result;
}

_BYTE *sub_1001D3364(_BYTE *result)
{
  if (result[676] == 1)
  {
    v1 = result;
    if (result[196] == 1)
    {
      result = sub_1001D32E8(result, (result + 40), (result + 520));
      if (v1[196] == 1)
      {
        v1[196] = 0;
      }
    }

    if (v1[356] == 1)
    {
      result = sub_1001D32E8(result, (v1 + 200), (v1 + 520));
      if (v1[356] == 1)
      {
        v1[356] = 0;
      }
    }

    if (v1[516] == 1)
    {
      result = sub_1001D32E8(result, (v1 + 360), (v1 + 520));
      if (v1[516] == 1)
      {
        v1[516] = 0;
      }
    }
  }

  return result;
}

void sub_1001D340C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018FCDB0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onCellLocationProviderNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018FCDC4();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onCellLocationProviderNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001D35D0(a4, v6, v7, a3);
}

void sub_1001D35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    sub_1001D78F4(__p);
    v7 = (SBYTE7(v18) & 0x80u) == 0 ? __p : __p[0];
    *buf = 136642819;
    v47 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, Cell location notification received, %{sensitive}s", buf, 0xCu);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCDEC(a4);
  }

  v8 = *(a4 + 112);
  v23 = *(a4 + 96);
  v24 = v8;
  v25[0] = *(a4 + 128);
  *(v25 + 12) = *(a4 + 140);
  v9 = *(a4 + 48);
  v19 = *(a4 + 32);
  v20 = v9;
  v10 = *(a4 + 80);
  v21 = *(a4 + 64);
  v22 = v10;
  v11 = *(a4 + 16);
  *__p = *a4;
  v18 = v11;
  memcpy(v26, (a4 + 160), sizeof(v26));
  v12 = *(a4 + 680);
  v13 = *(a4 + 688);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(v45 + 9) = *(a4 + 785);
  v14 = *(a4 + 776);
  v44 = *(a4 + 760);
  v45[0] = v14;
  v15 = *(a4 + 712);
  v40 = *(a4 + 696);
  v41 = v15;
  v16 = *(a4 + 728);
  v43 = *(a4 + 744);
  v42 = v16;
  v29 = v18;
  v28 = *__p;
  v33 = v22;
  v32 = v21;
  v31 = v20;
  v30 = v19;
  *(v36 + 12) = *(v25 + 12);
  v36[0] = v25[0];
  v35 = v24;
  v34 = v23;
  memcpy(v37, v26, sizeof(v37));
  v38 = v12;
  v39 = v13;
  v27 = 16;
  sub_1000FFE90(a1);
}

uint64_t sub_1001D381C(float *a1, double a2, double a3)
{
  v3 = a3;
  *a1 = 0.0;
  if (fabs(a2) <= 90.0)
  {
    if (a3 < -180.0)
    {
      v8 = 0;
      do
      {
        v3 = v3 + 360.0;
      }

      while (v3 < -180.0 && v8++ < 3);
    }

    if (v3 >= 180.0)
    {
      v10 = 0;
      do
      {
        v3 = v3 + -360.0;
      }

      while (v3 >= 180.0 && v10++ < 3);
    }

    v12 = (v3 + 180.0) / 10.0;
    v13 = vcvtms_s32_f32(v12);
    if (v13 < 0x24)
    {
      v15 = (90.0 - a2) / 10.0;
      v16 = vcvtms_s32_f32(v15);
      if (v16 < 0x13)
      {
        if (v13 == 35)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 + 1;
        }

        v19 = v16 + 1;
        if (v16 == 18)
        {
          *a1 = -30.0;
        }

        else
        {
          v20 = 36 * v16;
          result = sub_1001F0848(v20 + v13);
          if (!result)
          {
            return result;
          }

          v21 = byte_101CB6C38[v20 + v13];
          v22 = 36 * v19;
          result = sub_1001F0848(v22 + v13);
          if (!result)
          {
            return result;
          }

          v24 = byte_101CB6C38[v22 + v13];
          result = sub_1001F0848(v18 + v20);
          if (!result)
          {
            return result;
          }

          v23 = byte_101CB6C38[v18 + v20];
          result = sub_1001F0848(v18 + v22);
          if (!result)
          {
            return result;
          }

          *a1 = (((((v19 - v15) * ((v12 - v13) * v23)) + (((v18 - v12) * v21) * (v19 - v15))) + (((v18 - v12) * v24) * (v15 - v16))) + (((v12 - v13) * byte_101CB6C38[v18 + v22]) * (v15 - v16))) / ((v19 - v16) * (v18 - v13));
        }

        return 1;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1019846C8();
      }

      v17 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v26 = a2;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "latitude %.9lf is not valid.", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1019847E0();
        return 0;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019846C8();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v26 = v3;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "longitude %.9lf is not valid.", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1019848D4();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019846C8();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Input latitude = %.9lf is out of possible range", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019849C8();
      return 0;
    }
  }

  return result;
}

void sub_1001D3BE4(uint64_t a1, _BYTE *a2)
{
  sub_10010B730(a1, a2);
  v4 = *a2;
  if (v4 != 2 && v4 < *(a1 + 161))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v16[0] = 68289282;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      v20 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stopping all location providers above threshold, threshold:%{public}d}", v16, 0x18u);
    }

    v7 = *(a1 + 232);
    if (v7 != (a1 + 240))
    {
      v8 = 0;
      do
      {
        v9 = *(v7 + 908);
        if (v9 <= *(a1 + 161) && v9 > *a2)
        {
          v8 = sub_1001EEB1C(a1, *(v7 + 10));
        }

        v11 = v7[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v7[2];
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != (a1 + 240));
      if (v8)
      {
        sub_100110094(a1);
      }
    }

    v14 = *a2;
    if (v14 == 255)
    {
      [*(a1 + 664) setNextFireDelay:1.79769313e308];
      sub_1001EFA0C(a1 + 800, v15);
      LOBYTE(v14) = *a2;
    }

    *(a1 + 161) = v14;
  }
}

uint64_t sub_1001D3D90(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 344));
  v4 = sub_1001D3DEC(a1, a2);
  std::mutex::unlock((a1 + 344));
  return v4;
}

uint64_t sub_1001D3DEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 264) = 0;
  *(a1 + 266) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 287) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 311) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  v5 = (a2 + 96);
  v4 = *(a2 + 96);
  if (v4 <= 3)
  {
    if (v4 != 1 && v4 != 3)
    {
      goto LABEL_62;
    }

LABEL_16:
    if (*(a1 + 208))
    {
      v10 = *(*(a1 + 176) + 8 * (*(a1 + 200) / 0x1AuLL)) + 156 * (*(a1 + 200) % 0x1AuLL);
      if (*(a2 + 76) - *(v10 + 76) < 900.0)
      {
        *(a1 + 289) = *(v10 + 84) > 0x49u;
      }
    }

    sub_1001D4750(v43, (a1 + 168));
    sub_1001D4820(a1, a2, v43, (a1 + 288));
    sub_100106180(v43);
    sub_1001D4750(v42, (a1 + 216));
    sub_1001D4820(a1, a2, v42, (a1 + 264));
    sub_100106180(v42);
    *(a1 + 336) = 1;
    sub_1001D77F4(a2, (a1 + 120));
    goto LABEL_20;
  }

  if (v4 == 9)
  {
    goto LABEL_16;
  }

  if (v4 != 6)
  {
    if (v4 == 4)
    {
      *(a1 + 289) = *(a2 + 84) > 0x49u;
      sub_1001D4750(v45, (a1 + 216));
      sub_1001D4820(a1, a2, v45, (a1 + 264));
      sub_100106180(v45);
      sub_1001D4750(v44, (a1 + 120));
      sub_1001D4820(a1, a2, v44, (a1 + 312));
      sub_100106180(v44);
      v6 = sub_1001D7858(a1 + 312, (a1 + 264));
      *(a1 + 336) = v6;
      if (v6 != 5)
      {
        sub_1001D77F4(a2, (a1 + 168));
        if ((*(a1 + 336) - 1) <= 1)
        {
          v7 = (a2 + 128);
          if (*(a2 + 128) <= 0x31u)
          {
            if (qword_1025D4870 != -1)
            {
              sub_101B70C38();
            }

            v8 = qword_1025D4878;
            if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
            {
              v9 = *v7;
              *buf = 67109376;
              *&buf[4] = v9;
              *&buf[8] = 1024;
              *&buf[10] = 50;
              _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, locationType,integrityPrior,%d,integrityNew,%d", buf, 0xEu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B70D58((a2 + 128));
            }

LABEL_61:
            *v7 = 50;
            goto LABEL_20;
          }
        }
      }

      goto LABEL_20;
    }

LABEL_62:
    if (qword_1025D4870 != -1)
    {
      sub_101B70AC4();
    }

    v24 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v25 = *v5;
      *buf = 67109120;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, location type,%d,not supported", buf, 8u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101B7148C(v5);
    return 0;
  }

  if (*(a1 + 208))
  {
    v20 = *(*(a1 + 176) + 8 * (*(a1 + 200) / 0x1AuLL)) + 156 * (*(a1 + 200) % 0x1AuLL);
    if (*(a2 + 76) - *(v20 + 76) < 900.0)
    {
      *(a1 + 289) = *(v20 + 84) > 0x49u;
    }
  }

  sub_1001D4750(v41, (a1 + 168));
  sub_1001D4820(a1, a2, v41, (a1 + 288));
  sub_100106180(v41);
  sub_1001D4750(v40, (a1 + 120));
  sub_1001D4820(a1, a2, v40, (a1 + 312));
  sub_100106180(v40);
  v21 = sub_1001D7858(a1 + 312, (a1 + 288));
  *(a1 + 336) = v21;
  if (v21 != 5)
  {
    sub_1001D77F4(a2, (a1 + 216));
    if ((*(a1 + 336) - 1) <= 1)
    {
      v7 = (a2 + 128);
      if (*(a2 + 128) <= 0x31u)
      {
        if (qword_1025D4870 != -1)
        {
          sub_101B70C38();
        }

        v22 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          v23 = *v7;
          *buf = 67109376;
          *&buf[4] = v23;
          *&buf[8] = 1024;
          *&buf[10] = 50;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, locationType,integrityPrior,%d,integrityNew,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B70C60((a2 + 128));
        }

        goto LABEL_61;
      }
    }
  }

LABEL_20:
  if ((*(a1 + 336) & 0xFFFFFFFE) != 4)
  {
    return 0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101B70C38();
  }

  v11 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    sub_1001D78F4(buf);
    v12 = v48 >= 0 ? buf : *buf;
    *v49 = 136642819;
    v50 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, not reliable or very low reliable, location %{sensitive}s", v49, 0xCu);
    if (v48 < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B70E50(a2);
  }

  if (*(a1 + 312) == 1)
  {
    v13 = *(a1 + 328);
    if (v13 > *(a1 + 320) + *(a1 + 320))
    {
      if (qword_1025D4870 != -1)
      {
        sub_101B70C38();
      }

      v14 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        v15 = *v5;
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, Location rejected by IM,Reason,disagrees with GPS,location type,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B71398(v5);
      }

      return 1;
    }

    v28 = fabs(v13) / 3.5;
    v30 = *(a2 + 20);
    v29 = (a2 + 20);
    *v29 = v28 + v30;
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v31 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v32 = *v29;
      v33 = *v29 - v28;
      *buf = 134218240;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      v47 = v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, huncBump,fromHunc,%.1lf,toHunc,%.1lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B71290(v29, v28);
      return 0;
    }
  }

  else
  {
    if (*(a1 + 288) != 1 || *(a1 + 289) != 1)
    {
      if (*v5 == 4 && *(a1 + 264) == 1 && (*(a1 + 289) & 1) == 0 && *(a1 + 280) > 5000.0)
      {
        if (qword_1025D4870 != -1)
        {
          sub_101B70C38();
        }

        v26 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          v27 = *v5;
          *buf = 67109120;
          *&buf[4] = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, Location rejected by IM,Reason,low confidence wifi strongly disagrees with cell,location type,%d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B70FA0(v5);
        }

        return 1;
      }

      return 0;
    }

    v17 = *(a1 + 304);
    if (v17 > *(a1 + 296) + *(a1 + 296))
    {
      if (qword_1025D4870 != -1)
      {
        sub_101B70C38();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        v19 = *v5;
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, Location rejected by IM,Reason,disagrees with high confidence wifi,location type,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7119C(v5);
      }

      return 1;
    }

    v34 = fabs(v17) / 3.5;
    v36 = *(a2 + 20);
    v35 = (a2 + 20);
    *v35 = v34 + v36;
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v37 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v38 = *v35;
      v39 = *v35 - v34;
      *buf = 134218240;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      v47 = v38;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, huncBump,fromHunc,%.1lf,toHunc,%.1lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B71094(v35, v34);
      return 0;
    }
  }

  return result;
}