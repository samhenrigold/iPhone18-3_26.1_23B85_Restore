void *sub_10030E16C(void *a1, uint64_t *a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102467EF8;
  sub_10030D8B0((a1 + 3), *a2, *a3);
  return a1;
}

uint64_t sub_10030E1D0(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0x49)) + 56 * (v2 % 0x49);
  v4 = *(v3 + 8);
  if (v4)
  {
    *(v3 + 16) = v4;
    operator delete(v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return sub_10030E260(a1, 1);
}

uint64_t sub_10030E260(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x49)
  {
    a2 = 1;
  }

  if (v2 < 0x92)
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
    *(a1 + 32) -= 73;
  }

  return v4 ^ 1u;
}

__n128 sub_10030E2C0@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10030D9A0(a1, a2);
  if (*(a1 + 8))
  {
    v6 = *(a1 + 24) + 156 * a2;
    v7 = *(v6 + 112);
    *(a3 + 96) = *(v6 + 96);
    *(a3 + 112) = v7;
    *(a3 + 128) = *(v6 + 128);
    *(a3 + 140) = *(v6 + 140);
    v8 = *(v6 + 48);
    *(a3 + 32) = *(v6 + 32);
    *(a3 + 48) = v8;
    v9 = *(v6 + 80);
    *(a3 + 64) = *(v6 + 64);
    *(a3 + 80) = v9;
    result = *v6;
    v11 = *(v6 + 16);
    *a3 = *v6;
    *(a3 + 16) = v11;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AE2FEC();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v17 = 134349056;
      v18 = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#batchedlocations,requested location index %{public}zu but buffer is empty, return default value", &v17, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AE3000();
    }

    *a3 = 0xFFFF;
    *(a3 + 12) = 0;
    *(a3 + 4) = 0;
    *(a3 + 20) = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a3 + 36) = result;
    *(a3 + 52) = result;
    *(a3 + 68) = result;
    *(a3 + 84) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 88) = 0xBFF0000000000000;
    *(a3 + 112) = 0;
    *(a3 + 116) = 0xBFF0000000000000;
    *(a3 + 124) = 0x7FFFFFFF;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 128) = 0;
    *(a3 + 152) = 0;
  }

  return result;
}

uint64_t sub_10030E500(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1001F4208(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 += v6 + v7;
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v8 = *(a1 + 40);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_1001F4538(*(*(a1 + 32) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(a1 + 40));
  }

  *(a1 + 56) = v9;
  return v9;
}

uint64_t sub_10030E5D4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  return result;
}

void sub_10030E670(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10030E6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10030E704(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10030E704(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10030E0E8(v2);
    operator delete();
  }

  return a1;
}

void *sub_10030E74C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  else
  {
    v3 = a1[3];
    if (v3)
    {
      free(v3);
    }
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {
      free(v5);
    }
  }

  return a1;
}

uint64_t sub_10030E7AC(uint64_t a1, const void *a2, int a3)
{
  *a1 = a3;
  v6 = 156 * a3;
  *(a1 + 8) = v6;
  *(a1 + 16) = 560 * a3;
  *(a1 + 24) = malloc_type_malloc(v6, 0xDC604F64uLL);
  *(a1 + 32) = malloc_type_malloc(*(a1 + 16), 0x5EDFF285uLL);
  *(a1 + 40) = dispatch_data_create(*(a1 + 24), *(a1 + 8), 0, _dispatch_data_destructor_free);
  *(a1 + 48) = dispatch_data_create(*(a1 + 32), *(a1 + 16), 0, _dispatch_data_destructor_free);
  memcpy(*(a1 + 24), a2, *(a1 + 8));
  if (a3)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      memcpy((*(a1 + 32) + v7), &unk_101D12A20, 0x230uLL);
      v7 += 560;
      --v8;
    }

    while (v8);
  }

  return a1;
}

uint64_t sub_10030E89C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10030E0E8(result);

    operator delete();
  }

  return result;
}

void sub_10030FD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  if (v16)
  {
    sub_100008080(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030FDCC(uint64_t a1, void **a2, double *a3, double a4)
{
  if (*(a1 + 1512) >= 0x1FuLL)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 134349570;
      v43 = Current;
      v44 = 2082;
      v45 = v7;
      v46 = 1026;
      LODWORD(v47) = 30;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,more than allowed location apps open,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13274(a2);
    }

    return;
  }

  if (fmax(*(a1 + 3032), 0.0) <= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = *(a1 + 3032);
  }

  if (v11 > a4)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v12 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v13 = CFAbsoluteTimeGetCurrent();
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 134349826;
      v43 = v13;
      v44 = 2082;
      v45 = v14;
      v46 = 2050;
      v47 = v11;
      v48 = 2050;
      v49 = a4;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#Warning,CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,appStartTime,%{public}.1lf, greater than machContTime,%{public}.1lf", buf, 0x2Au);
    }

    if (!sub_10000A100(121, 2))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_101B12B9C();
    }

    v15 = qword_1025D45E8;
    v16 = CFAbsoluteTimeGetCurrent();
    v17 = *(a2 + 23) >= 0 ? a2 : *a2;
    v32 = 134349826;
    v33 = v16;
    v34 = 2082;
    v35 = v17;
    v36 = 2050;
    v37 = v11;
    v38 = 2050;
    v39 = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 2, "#Warning,CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,appStartTime,%{public}.1lf, greater than machContTime,%{public}.1lf", &v32, 42);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryAWD::updateNavigationAppStats(const CFTimeInterval, const std::string &, const CFTimeInterval &)", "%s\n", v18);
    if (v19 == buf)
    {
      return;
    }

LABEL_50:
    free(v19);
    return;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100007244(__p, *a2, a2[1]);
  }

  else
  {
    *__p = *a2;
    v31 = a2[2];
  }

  v20 = vabdd_f64(a4, v11);
  sub_1003102F0(__p, (a1 + 1496), v20);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_1025D45E0 != -1)
  {
    sub_101B12B9C();
  }

  v21 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v22 = CFAbsoluteTimeGetCurrent();
    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    v24 = *a3;
    *buf = 134350082;
    v43 = v22;
    v44 = 2082;
    v45 = v23;
    v46 = 2050;
    v47 = v24;
    v48 = 2050;
    v49 = v11;
    v50 = 1026;
    v51 = v20;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,appLaunchTime,%{public}.1lf,appStartTime,%{public}.1lf,appRunTime,%{public}d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_101B12B9C();
    }

    v25 = qword_1025D45E8;
    v26 = CFAbsoluteTimeGetCurrent();
    v27 = *(a2 + 23) >= 0 ? a2 : *a2;
    v28 = *a3;
    v32 = 134350082;
    v33 = v26;
    v34 = 2082;
    v35 = v27;
    v36 = 2050;
    v37 = v28;
    v38 = 2050;
    v39 = v11;
    v40 = 1026;
    v41 = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 2, "CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,appLaunchTime,%{public}.1lf,appStartTime,%{public}.1lf,appRunTime,%{public}d", &v32, 48);
    v19 = v29;
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryAWD::updateNavigationAppStats(const CFTimeInterval, const std::string &, const CFTimeInterval &)", "%s\n", v29);
    if (v19 != buf)
    {
      goto LABEL_50;
    }
  }
}

void sub_1003102B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003102F0(void **a1, uint64_t **a2, int a3)
{
  if (sub_100192868(a2, a1))
  {
    __p[0] = a1;
    v6 = sub_1002DDE28(a2, a1, &unk_101C66300, __p, &v10);
    *(v6 + 14) += a3;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      sub_100007244(__p, *a1, a1[1]);
    }

    else
    {
      *__p = *a1;
      v8 = a1[2];
    }

    v9 = a3;
    sub_1009A0C8C(a2, __p, __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003103B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1003103F0(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#cclp CompensationTimer fired at : %f", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019503E0(a1);
  }

  result = [*(a1 + 144) setNextFireDelay:1.79769313e308];
  v5 = qword_1026372D0;
  v6 = qword_1026372D8;
  while (v5 != v6)
  {
    v8 = *v5;
    if (sub_10000608C(a1, &v8, 1))
    {
      result = [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:*v5 registrationInfo:0];
      v7 = 1;
    }

    else
    {
      (*(*a1 + 120))(a1, v5);
      result = [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:*v5];
      v7 = 0;
    }

    *(a1 + 203) = v7;
    ++v5;
  }

  return result;
}

void sub_10031057C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019503A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCorrectiveCompensatedLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019503B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCorrectiveCompensatedLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100310748(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100310748(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100048D98(*a3);
    v8[0] = 68289794;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v7;
    v13 = 1040;
    v14 = LocationLogEncryptionDataSize();
    v15 = 2098;
    v16 = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp onLocationNotification, Notification:%{public, location:escape_only}s, location:%{public, location:Encrypted_CLClientLocation}.*P}", v8, 0x2Cu);
  }

  sub_100310884(a1);
}

void sub_100310884(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    v10 = sub_100048D98(*v6);
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#cclp try performLocationSnapping - Notification: %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019507D4(v6);
  }

  v11 = qword_1026372D0;
  if (qword_1026372D0 != qword_1026372D8)
  {
    while (*v11 != *v6)
    {
      if (++v11 == qword_1026372D8)
      {
        goto LABEL_19;
      }
    }
  }

  if (v11 == qword_1026372D8)
  {
LABEL_19:
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v16 = sub_100048D98(*v6);
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "#cclp received location notification for un-supported notification: %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101950CFC(v6);
    }
  }

  else
  {
    [v8[18] nextFireDelay];
    if (v12 == 1.79769313e308)
    {
      [v8[20] nextFireDelay];
      if (v17 == 1.79769313e308)
      {
        if (*v6 == 9)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1019500BC();
          }

          v27 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "#cclp skip performLocationSnapping location-unavailable", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101950A08();
          }

          LODWORD(buf[0]) = 9;
          (*(*v8 + 19))(v8, buf, v4, 1, 0xFFFFFFFFLL, 0);
        }

        else if (sub_100072814(v4))
        {
          sub_100021AFC(v49);
          LODWORD(buf[0]) = 0;
          v28 = (*(*v8 + 16))(v8, buf, v49);
          if (*(v8 + 200) == 1)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_1019500BC();
            }

            v29 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "#cclp skip performLocationSnapping already in-progres", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019509C4(buf);
              v48 = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 1, "#cclp skip performLocationSnapping already in-progres", &v48, 2);
              v31 = v30;
              sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))", "%s\n", v30);
              if (v31 != buf)
              {
                free(v31);
              }
            }
          }

          else
          {
            v33 = v28;
            v34 = *(v4 + 20);
            if (qword_1025D47A0 != -1)
            {
              sub_1019500BC();
            }

            v35 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "#cclp dispatching call to CitySnapper", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019509C4(buf);
              v48 = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 1, "#cclp dispatching call to CitySnapper", &v48, 2);
              v44 = v43;
              sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))", "%s\n", v43);
              if (v44 != buf)
              {
                free(v44);
              }
            }

            *(v8 + 200) = 1;
            v36 = v8[24];
            v37 = [CLLocation alloc];
            v38 = *(v4 + 112);
            buf[6] = *(v4 + 96);
            buf[7] = v38;
            v51[0] = *(v4 + 128);
            *(v51 + 12) = *(v4 + 140);
            v39 = *(v4 + 48);
            buf[2] = *(v4 + 32);
            buf[3] = v39;
            v40 = *(v4 + 80);
            buf[4] = *(v4 + 64);
            buf[5] = v40;
            v41 = *(v4 + 16);
            buf[0] = *v4;
            buf[1] = v41;
            v42 = [v37 initWithClientLocation:buf];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3321888768;
            v45[2] = sub_10083B3E8;
            v45[3] = &unk_102476148;
            v45[5] = v8;
            sub_100022008(v46, v49);
            v47 = v33;
            v46[195] = v34;
            v45[4] = v2;
            [v36 snapLocation:v42 withReply:v45];
            sub_100311054(v46);
          }

          sub_100311054(v49);
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1019500BC();
          }

          v32 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#cclp skip snapping #warning invalid location.", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019508D8();
          }
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1019500BC();
        }

        v18 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_100048D98(*v6);
          LODWORD(buf[0]) = 136315138;
          *(buf + 4) = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#cclp skip notification: %s. UpdateLastReceivedLocationTimer scheduled", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101950AF4(v6);
        }

        if (*v6 != 9)
        {
          v20 = *(v4 + 16);
          *(v8 + 15) = *v4;
          *(v8 + 16) = v20;
          v21 = *(v4 + 32);
          v22 = *(v4 + 48);
          v23 = *(v4 + 80);
          *(v8 + 19) = *(v4 + 64);
          *(v8 + 20) = v23;
          *(v8 + 17) = v21;
          *(v8 + 18) = v22;
          v24 = *(v4 + 96);
          v25 = *(v4 + 112);
          v26 = *(v4 + 128);
          *(v8 + 380) = *(v4 + 140);
          *(v8 + 22) = v25;
          *(v8 + 23) = v26;
          *(v8 + 21) = v24;
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100048D98(*v6);
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#cclp skip notification: %s. CompensationTimer scheduled", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101950BF8(v6);
      }
    }
  }
}

uint64_t sub_100311054(uint64_t a1)
{
  v2 = *(a1 + 1168);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  v3 = *(a1 + 816);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 688);
  if (v4)
  {
    sub_100008080(v4);
  }

  return a1;
}

void sub_1003110CC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
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

void sub_100311254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003112A0(unint64_t *a1, void *a2)
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

      sub_1003EE744(a1, v11);
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

void sub_1003113A8(unint64_t *a1)
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
    sub_1003EE744(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1003112A0(a1, &v9);
}

void sub_100311530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003115D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10014588C(result);

    operator delete();
  }

  return result;
}

id sub_10031162C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A82AFC();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101CFD8BDLL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A82AFC();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101CFD8BDLL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

id sub_1003117F4(uint64_t a1, int a2, void *a3)
{
  result = sub_100311844(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_100311844(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1007DA610(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1003118E0(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_1003118E0(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10193E4E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193E708();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10193E4E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193E810();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_100311AE4(uint64_t a1, int *a2, unsigned int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BD3BE0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLStepCountNotifier::onFitnessTrackingNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BD3BF4();
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
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStepCountNotifier::onFitnessTrackingNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_100311CB0(a4, v7, a2, a3, v8, v9);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100311CB0(uint64_t result, uint64_t a2, int *a3, unsigned int *a4, double a5, double a6)
{
  v6 = *a3;
  if (*a3 <= 8)
  {
    if (((1 << v6) & 0x1EE) != 0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101BD36D0();
      }

      v8 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        v9 = *a3;
        v14[0] = 67240192;
        v14[1] = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Fitness Tracking: Invalid notification type %{public}d", v14, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD5594(a3);
      }
    }

    else if (v6)
    {
      v12 = *a4;
      v13 = result + 3944;

      sub_100F7648C(v13, v12, a5, a6);
    }

    else
    {
      v11 = (result + 440);
      if (*(a4 + 3) == 1)
      {
        sub_100311E80(v11);

        sub_100633128((result + 296));
      }

      else
      {
        sub_10062FB60(v11);

        sub_10062F7A4((result + 296));
      }
    }
  }
}

uint64_t sub_100311E80(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECB10();
  }

  return (*(*a1 + 80))(a1);
}

id sub_100311F80(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_101B2BA00();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Start spectator for src %s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B31D7C();
  }

  return [*(*(a1 + 392) + 16) register:*(*(a1 + 392) + 8) forNotification:7 registrationInfo:0];
}

__n128 sub_10031206C(uint64_t a1, uint64_t a2)
{
  *(a1 + 1224) = *a2;
  if (a1 + 1224 != a2)
  {
    sub_100306558((a1 + 1232), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  result = *(a2 + 32);
  *(a1 + 1256) = result;
  return result;
}

double sub_1003121B8(uint64_t a1, double *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 2360);
  if (v5)
  {
    v6 = Current;
    v7 = Current + *a2;
    sub_100073BF8(v5, v7);
    if (*(a1 + 3032))
    {
      sub_10000AED0();
      sub_10022127C(*(a1 + 2360), &__p);
      sub_100220CA4(&__p, 2u, buf, v6, *a2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10021CB90(*(a1 + 3032), buf);
      sub_10000CE1C(buf);
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Fence: ignoring, setNextTrackingWake, shutdown?", buf, 2u);
    }

    v7 = 0.0;
    if (sub_10000A100(121, 2))
    {
      sub_101A430FC();
    }
  }

  return v7;
}

NSDictionary *sub_100312310(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = @"fixType";
  v3 = (v2 + 568);
  if (*(v2 + 591) < 0)
  {
    v3 = *v3;
  }

  v8[0] = [NSString stringWithUTF8String:v3];
  v7[1] = @"wifiFixDistanceBeforeAndAfterUseOfAssociatedAp";
  LODWORD(v4) = llround(*(a1 + 40));
  v8[1] = [NSNumber numberWithInt:v4];
  v7[2] = @"wifiFixLocationOfInterestTypeString";
  v5 = (v2 + 512);
  if (*(v2 + 535) < 0)
  {
    v5 = *v5;
  }

  v8[2] = [NSString stringWithUTF8String:v5];
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
}

void sub_100312454(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100312494(a1, a2);

  sub_100BCDED0(v2, v3, 0);
}

id sub_100312494(uint64_t a1, void *a2)
{
  v17 = +[NSMutableArray array];
  v2 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (MEMORY[0] != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(8 * i);
        v7 = sub_10031265C([v6 userType]);
        v8 = sub_100312700([v6 placeType]);
        v9 = objc_msgSend_location([v6 mapItem]);
        v10 = sub_100BD0A38(v9);
        v11 = sub_100BD0A38([v6 referenceLocation]);
        v12 = sub_100BD0B24([v6 mapItem], v10);
        v13 = [_CLPlaceInference alloc];
        [v6 confidence];
        [v17 addObject:{objc_msgSend(v13, "initWithUserType:placeType:placemark:referenceLocation:confidence:preferredName:loiIdentifier:", v7, v8, v12, v11, objc_msgSend(v6, "preferredName"), objc_msgSend(v6, "loiIdentifier"), v14)}];
      }

      v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    }

    while (v3);
  }

  return v17;
}

unint64_t sub_10031265C(unint64_t result)
{
  if (result >= 5)
  {
    v5 = v1;
    v6 = v2;
    if (qword_1025D4790 != -1)
    {
      sub_101A11D98();
    }

    v3 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "#dsa Please update userSpecificPlaceTypeFromRTUserType", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A14AF4();
    }

    return 0;
  }

  return result;
}

uint64_t sub_100312700(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_101CEFFE8[a1];
  }

  v6 = v1;
  v7 = v2;
  if (qword_1025D4790 != -1)
  {
    sub_101A11D98();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "#dsa Please update placeInferencePlaceTypeFromRTPlaceType", v5, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101A14BD8();
  }

  return 2;
}

NSDictionary *sub_1003127B4(uint64_t a1)
{
  v3[0] = @"sources";
  v4[0] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[1] = @"scanApsBin";
  v4[1] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[2] = @"als";
  v4[2] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[3] = @"tiles";
  v4[3] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[4] = @"invalid";
  v4[4] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[5] = @"unknown";
  v4[5] = [NSNumber numberWithInt:*(a1 + 56)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

void *sub_100312944(void *a1, char **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1003129A0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_1003129A0(uint64_t a1, char **a2, void *a3)
{
  sub_10000EC00(&__p, *a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1003129FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100312A90(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageKeyPayload"];
  v5 = [a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageKeyType"];
  if (v5)
  {
    v6 = v5;
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = [v6 UTF8String];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Rapport Got message, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLLocationStreamingMessageKeyVersion", "intValue"}];
    sub_100312E54();
    sub_10000EC00(buf, [v6 UTF8String]);
    v9 = sub_10045EF04(&qword_102656D88, buf);
    if (SBYTE3(v22) < 0)
    {
      operator delete(*buf);
    }

    if (v9 == &qword_102656D90)
    {
      v10 = -1;
      v11 = -1;
    }

    else
    {
      v11 = *(v9 + 56);
      v10 = *(v9 + 60);
      if (v8 >= v11 && v8 <= v10)
      {
        v16 = *(a1 + 32);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100312E98;
        v17[3] = &unk_10245D410;
        v17[4] = v6;
        v17[5] = v4;
        [v16 withClients:v17];
        return;
      }
    }

    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v12 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 UTF8String];
      *buf = 68290050;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = v13;
      v23 = 1026;
      v24 = v8;
      v25 = 1026;
      v26 = v11;
      v27 = 1026;
      v28 = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received message of unsupported version, type:%{public, location:escape_only}s, declared version:%{public}d, minimum version:%{public}d, maximum version:%{public}d}", buf, 0x2Eu);
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v14 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2113;
      v22 = a2;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Rapport Missing message type, message:%{private, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v15 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2113;
      v22 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Rapport Missing message type", "{msg%{public}.0s:#Rapport Missing message type, message:%{private, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

void sub_100312E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100312E54()
{
  if ((atomic_load_explicit(byte_102656D80, memory_order_acquire) & 1) == 0)
  {
    sub_1018BAD88();
  }

  if (qword_102656D78 != -1)
  {
    sub_1018BAE08();
  }
}

void sub_100313250(uint64_t a1)
{
  sub_10026F120(a1);

  operator delete();
}

void sub_100313288(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_102634C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1003134C0(v6, qword_102634C78);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(a1 + 16);

    *(v9 + 12) = 1024;
    *(v9 + 14) = a2 & 1;
    _os_log_impl(dword_100000000, v7, v8, "AONSense,onALFWiFiNotification,count,%ld,done,%{BOOL}d", v9, 0x12u);

    v10 = *(a1 + 16);
    if (!v10)
    {
      return;
    }
  }

  else
  {

    v10 = *(a1 + 16);
    if (!v10)
    {
      return;
    }
  }

  v11 = *((swift_isaMask & *v3) + 0xE8);
  v12 = *(type metadata accessor for ALWiFiNotification() - 8);
  v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  do
  {
    v11(v13);
    v13 += v14;
    --v10;
  }

  while (v10);
}

uint64_t sub_1003134C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1003134F8(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanResult();
  v121 = *(v2 - 8);
  v122 = v2;
  v3 = *(v121 + 64);
  __chkstk_darwin(v2);
  v119 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1003D6474(&qword_102634CA8, &qword_101DA1F10);
  __chkstk_darwin(v4 - 8);
  v6 = &v111 - v5;
  v129 = a1;
  ALWiFiNotification.scanResult.getter();
  v8 = v121;
  v7 = v122;
  if ((*(v121 + 48))(v6, 1, v122) == 1)
  {
    sub_1003D6658(v6, &qword_102634CA8, &qword_101DA1F10);
    if (qword_102634C20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1003134C0(v9, qword_102634C78);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(dword_100000000, v10, v11, "AONSense,onEachNotfication,ScanResult,nil,return", v12, 2u);
    }
  }

  else
  {
    (*(v8 + 32))(v119, v6, v7);
    v13 = type metadata accessor for ALTimeStamp();
    v116 = &v111;
    v117 = *(v13 - 8);
    v118 = v13;
    __chkstk_darwin(v13);
    v115 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = sub_1003D6474(&qword_102634CB0, &qword_101DA1F18);
    __chkstk_darwin(v15 - 8);
    v17 = &v111 - v16;
    ALWiFiNotification.timestamp.getter();
    v19 = v117;
    v18 = v118;
    if ((*(v117 + 48))(v17, 1, v118) == 1)
    {
      sub_1003D6658(v17, &qword_102634CB0, &qword_101DA1F18);
      if (qword_102634C20 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1003134C0(v20, qword_102634C78);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(dword_100000000, v21, v22, "AONSense,onEachNotfication,timestamp,nil,return", v23, 2u);
      }

      (*(v121 + 8))(v119, v122);
    }

    else
    {
      (*(v19 + 32))(v115, v17, v18);
      v24 = COERCE_DOUBLE(ALTimeStamp.cfAbsoluteTimeSec.getter());
      if (v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (qword_102634C20 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      v114 = sub_1003134C0(v28, qword_102634C78);
      sub_10001CF3C();
      sub_10001CF3C();
      sub_10001CF3C();
      v29 = sub_10001CF3C();
      v30 = __chkstk_darwin(v29);
      v31 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v121 + 16))(v31, v119, v122, v30);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 68158720;
        *(v34 + 4) = 2;
        *(v34 + 8) = 2048;
        *(v34 + 10) = v26;
        *(v34 + 18) = 1040;
        *(v34 + 20) = 3;
        *(v34 + 24) = 2048;
        *(v34 + 26) = Current - v26;
        *(v34 + 34) = 2048;
        v35 = *(ALWiFiScanResult.accessPoints.getter() + 16);

        v112 = *(v121 + 8);
        v112(v31, v122);
        *(v34 + 36) = v35;
        _os_log_impl(dword_100000000, v32, v33, "AONSense,onEachNotfication,ScanResult,time,%.*f,age,%.*f,aps,%ld", v34, 0x2Cu);
      }

      else
      {
        v112 = *(v121 + 8);
        v112(v31, v122);
      }

      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(v133, 0, sizeof(v133));
      sub_1003144F4(v133);
      BYTE8(v136) = ALWiFiNotification.simulated.getter() & 1;
      BYTE9(v136) = ALWiFiNotification.available.getter() & 1;
      v36 = ALWiFiNotification.associatedMac.getter();
      if (v37)
      {
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(dword_100000000, v38, v39, "AONSense,associatedState,nil", v40, 2u);
        }

        sub_100314518(v132, &byte_102637A70);
        v41 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v42 = v123;
        swift_beginAccess();
        sub_100314574(v42 + v41);
        sub_1013B1B44(v42 + v41, v132);
        sub_100314574(v132);
        swift_endAccess();
      }

      else
      {
        v43 = v36;
        v44 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v45 = v123;
        swift_beginAccess();
        sub_100314518(v132, v45 + v44);
        LOBYTE(v45) = sub_10031451C(v132, v43);
        sub_100314574(v132);
        if ((v45 & 1) == 0)
        {
          nullsub_34();
          sub_1013B2DF0(v132, v46);
          sub_100314600(v132, 1);
          v47 = v123;
          swift_beginAccess();
          sub_100314608(v47 + v44, v132);
          swift_endAccess();
          v48 = type metadata accessor for ALWiFiNotification();
          v49 = *(v48 - 8);
          v50 = __chkstk_darwin(v48);
          v52 = &v111 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v49 + 16))(v52, v129, v48, v50);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 134283521;
            v56 = ALWiFiNotification.associatedMac.getter();
            if (v57)
            {
              v58 = 0;
            }

            else
            {
              v58 = v56;
            }

            (*(v49 + 8))(v52, v48);
            *(v55 + 4) = v58;
            _os_log_impl(dword_100000000, v53, v54, "AONSense,associatedState,update,%{private}llx", v55, 0xCu);
          }

          else
          {
            (*(v49 + 8))(v52, v48);
          }

          sub_10031466C(v132);
        }
      }

      *(&v134 + 1) = v26;
      v113 = ALWiFiScanResult.accessPoints.getter();
      v59 = v113;
      v60 = *(v113 + 16);
      if (v60)
      {
        v120 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v61 = type metadata accessor for ALWiFiScanSingleAccessPoint();
        v62 = v61;
        v63 = *(v61 - 8);
        v64 = *(v63 + 16);
        v127 = v63 + 16;
        v128 = v64;
        v65 = v59 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v66 = *(v63 + 64);
        v125 = *(v63 + 72);
        v126 = v66;
        v124 = (v63 + 8);
        do
        {
          v130 = &v111;
          v67 = __chkstk_darwin(v61);
          v69 = &v111 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
          v70 = v62;
          v128(v69, v65, v62, v67);
          v71 = ALWiFiScanSingleAccessPoint.ageSec.getter();
          ALWiFiScanSingleAccessPoint.mac.getter();
          nullsub_34();
          v73 = v72;
          if ((v71 & dword_100000000) != 0)
          {
            v74 = 0.0;
          }

          else
          {
            v74 = *&v71;
          }

          memset(&v131, 0, sizeof(v131));
          sub_1003145B4(&v131);
          v75 = ALWiFiScanSingleAccessPoint.rssidB.getter();
          if ((v75 & dword_100000000) != 0)
          {
            v76 = 0;
          }

          else
          {
            v76 = v75;
          }

          v77 = ALWiFiScanSingleAccessPoint.channel.getter();
          if ((v77 & dword_100000000) != 0)
          {
            v78 = 0;
          }

          else
          {
            v78 = v77;
          }

          v79 = ALWiFiScanSingleAccessPoint.isAph.getter();
          v80 = ALWiFiScanSingleAccessPoint.isMoving.getter();
          sub_1003145C0(v132, v73, &v131, v76, 0, v78, v79 & 1, v80 & 1, v74, v26 - v74);
          std::string::~string(&v131);
          v131.__r_.__value_.__r.__words[0] = sub_10018D3FC(v132);
          v81 = sub_10018D3FC(&v131);
          v82 = ALWiFiNotification.associatedMac.getter();
          v62 = v70;
          if ((v83 & 1) == 0 && v81 == v82)
          {
            sub_100314600(v132, 1);
            v84 = v123;
            v85 = v120;
            swift_beginAccess();
            sub_100314608(v84 + v85, v132);
            swift_endAccess();
          }

          v86 = CFAbsoluteTimeGetCurrent();
          sub_10031460C(v132, v86);
          sub_100314614(&v135, v132);
          sub_10031466C(v132);
          v61 = (*v124)(v69, v70);
          v65 += v125;
          --v60;
        }

        while (v60);
      }

      ALWiFiNotification.associatedMac.getter();
      if ((v87 & 1) == 0)
      {
        v88 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v89 = v123;
        swift_beginAccess();
        sub_100314518(v132, v89 + v88);
        LOBYTE(v88) = sub_1003146A0(v132);
        sub_100314574(v132);
        if ((v88 & 1) == 0)
        {
          v90 = type metadata accessor for ALWiFiNotification();
          v91 = *(v90 - 8);
          v92 = __chkstk_darwin(v90);
          v94 = &v111 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v91 + 16))(v94, v129, v90, v92);
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = 134283521;
            v98 = ALWiFiNotification.associatedMac.getter();
            if (v99)
            {
              v100 = 0;
            }

            else
            {
              v100 = v98;
            }

            (*(v91 + 8))(v94, v90);
            *(v97 + 4) = v100;
            _os_log_impl(dword_100000000, v95, v96, "The associatedState NOT set though associatedMac is valid %{private}llx", v97, 0xCu);
          }

          else
          {
            (*(v91 + 8))(v94, v90);
          }
        }
      }

      v101 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
      v102 = v123;
      swift_beginAccess();
      sub_100314574(&v133[8]);
      sub_100314518(&v133[8], v102 + v101);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 134217984;
        swift_beginAccess();
        sub_1013B2D40(&v131, &v135);
        v106 = sub_1013B2D94(&v131);
        sub_1013B2DB8(&v131.__r_.__value_.__l.__data_);
        *(v105 + 4) = v106;
        _os_log_impl(dword_100000000, v103, v104, "AONSense,onEachNotfication,data.scan.size,%ld", v105, 0xCu);
      }

      v108 = (*((swift_isaMask & *v123) + 0xC0))();
      if (v108)
      {
        v109 = v107;
        v110 = [objc_allocWithZone(CLAONSenseWiFiNotification) init];
        swift_beginAccess();
        [v110 setData:v133];
        v108(v110);
        sub_100318B78(v108, v109);
      }

      (*(v117 + 8))(v115, v118);
      v112(v119, v122);
      sub_100318B88(v133);
    }
  }
}

void sub_100314458(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100314460);
  }

  _Unwind_Resume(a1);
}

double sub_1003144F4(uint64_t a1)
{
  *a1 = -256;
  *(a1 + 8) = 0;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

BOOL sub_10031451C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) != 1)
  {
    return 0;
  }

  v5[3] = v2;
  v5[4] = v3;
  v5[0] = *a1;
  return sub_10018D3FC(v5) == a2;
}

uint64_t sub_100314574(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1003145B4(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1003145C0(uint64_t result, uint64_t a2, __int128 *a3, int a4, int a5, int a6, char a7, char a8, double a9, double a10)
{
  *result = a2;
  v10 = *a3;
  *(result + 24) = *(a3 + 2);
  *(result + 8) = v10;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  *(result + 32) = a4;
  *(result + 36) = a5;
  *(result + 40) = a6;
  *(result + 48) = a9;
  *(result + 56) = a10;
  *(result + 64) = a7;
  *(result + 65) = a8;
  *(result + 68) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_100314614(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10014E208(a1, a2);
  }

  else
  {
    sub_100314668(a1[1], a2);
    result = v3 + 88;
    a1[1] = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10031466C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100314704()
{
  v1 = (v0 + OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService__callback);
  swift_beginAccess();
  v2 = *v1;
  sub_100314760(*v1, v1[1]);
  return v2;
}

uint64_t sub_100314760(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1003147B4(id **a1, void *a2)
{
  if (a2 && (v30 = a1[4], [a2 data]))
  {
    v29 = [a2 data];
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v4 = [a2 type];
      v6 = v29[14];
      v5 = v29[15];
      v7 = v29[13];
      sub_100C5CFB0((v29 + 1), &__p);
      v8 = (v39 & 0x80000000) == 0 ? &__p : __p;
      *buf = 67240963;
      *&buf[4] = v4;
      v43 = 2050;
      v44 = v7;
      v45 = 2050;
      v46 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v6) >> 3);
      v47 = 2081;
      v48 = v8;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "AONSense,wifiService,type,%{public}d,scanTime,%{public}.3f,count,%{public}zu,associated,%{private}s", buf, 0x26u);
      if (SBYTE3(v39) < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v20 = qword_1025D4628;
      v21 = [a2 type];
      v23 = v29[14];
      v22 = v29[15];
      v24 = v29[13];
      sub_100C5CFB0((v29 + 1), &v31);
      if (v34 >= 0)
      {
        v25 = &v31;
      }

      else
      {
        v25 = v31;
      }

      LODWORD(__p) = 67240963;
      HIDWORD(__p) = v21;
      v36 = 2050;
      v37 = v24;
      v38 = 2050;
      v39 = 0x2E8BA2E8BA2E8BA3 * ((v22 - v23) >> 3);
      v40 = 2081;
      v41 = v25;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 2, "AONSense,wifiService,type,%{public}d,scanTime,%{public}.3f,count,%{public}zu,associated,%{private}s", &__p, 38);
      v27 = v26;
      if (v34 < 0)
      {
        operator delete(v31);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startAONScanRequest()_block_invoke", "%s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    v9 = objc_alloc_init(NSMutableArray);
    v10 = v29[14];
    v11 = v29[15];
    if (v10 != v11)
    {
      v12 = 0;
      do
      {
        [v9 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", (*(v10 + 56) + 0.5))}];
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100C5CA98(v10, buf);
          v14 = buf;
          if ((v46 & 0x80000000) != 0)
          {
            v14 = *buf;
          }

          LODWORD(__p) = 67240451;
          HIDWORD(__p) = v12;
          v36 = 2081;
          v37 = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "AONSense,wifiService,ap,%{public}d,%{private}s", &__p, 0x12u);
          if (SBYTE3(v46) < 0)
          {
            operator delete(*buf);
          }

          ++v12;
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v15 = qword_1025D4628;
          sub_100C5CA98(v10, &__p);
          p_p = &__p;
          if ((v39 & 0x80000000) != 0)
          {
            p_p = __p;
          }

          LODWORD(v31) = 67240451;
          HIDWORD(v31) = v12;
          v32 = 2081;
          v33 = p_p;
          LODWORD(v28) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 2, "AONSense,wifiService,ap,%{public}d,%{private}s", &v31, v28);
          v18 = v17;
          if (SBYTE3(v39) < 0)
          {
            operator delete(__p);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startAONScanRequest()_block_invoke", "%s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }

          ++v12;
        }

        v10 += 88;
      }

      while (v10 != v11);
    }

    [v30[85] processEventTimes:v9];
    *(v29 + 35) = 2;
    *buf = 12;
    (*(*v30 + 19))(v30, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "AONSense,wifiService,data,null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D00C0();
    }
  }
}

void sub_100314D90(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_100314EDC(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWiFiNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_100314FE0(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003150E4(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003151E8(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_1003152EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  memset(v10, 0, sizeof(v10));
  sub_100288650(v10, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  v6[0] = 0;
  v9 = 0;
  sub_1003153D0(a1, v10, v3, v6);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  v11 = v10;
  sub_1000B96B4(&v11);
  return a1;
}

void sub_100315398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  *(v23 - 24) = v23 - 48;
  sub_1000B96B4((v23 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1003153D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = a3;
  sub_1000FB724((a1 + 32), a4);
  return a1;
}

void sub_10031542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

void sub_100315444(_BYTE *a1, uint64_t a2)
{
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4 == 1)
  {
    if (*a1 == 1)
    {
      sub_100315678(a2, a1 + 6);
    }

    sub_1008CB4E0((a1 + 96), -1171354717 * ((*(a2 + 8) - *a2) >> 3));
    memset(v9, 0, sizeof(v9));
    sub_100288650(v9, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
    v6 = v9;
    sub_100315A28(v9, @"bgScanCache");
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    if (*a1 == 1)
    {
      sub_100315678(a2, a1 + 1);
    }

    sub_100315A0C((a1 + 96), -1171354717 * ((*(a2 + 8) - *a2) >> 3));
    memset(v10, 0, sizeof(v10));
    sub_100288650(v10, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
    v6 = v10;
    sub_100315A28(v10, @"aonsensed");
LABEL_9:
    *buf = v6;
    sub_1000B96B4(buf);
    goto LABEL_16;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101969CA8();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_100C5D234(*v5);
    *buf = 136446210;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "@Wsb, warning, received WSB scan from unsupported source %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101969CBC(v5);
  }

LABEL_16:
  if (*a1 == 1)
  {
    sub_100316590(a1);
  }
}

void sub_100315654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_100315678(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v9 = *v2;
      if (!sub_1002DFD60(a2, &v9))
      {
        memset(v8, 0, sizeof(v8));
        sub_100315788(a2, &v9, &v9, v8);
        v10 = v8;
        sub_1000B96B4(&v10);
      }

      v5 = sub_1002DFD60(a2, &v9);
      if (!v5)
      {
        sub_1000432E8("unordered_map::at: key not found");
      }

      v6 = v5;
      v7 = v5[4];
      if (v7 >= v5[5])
      {
        result = sub_10014E208(v5 + 3, v2);
      }

      else
      {
        sub_1001005C4(v5[4], v2);
        result = (v7 + 88);
        v6[4] = v7 + 88;
      }

      v6[4] = result;
      v2 += 11;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_100315760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_1000B96B4(&a14);
  _Unwind_Resume(a1);
}

void *sub_100315788(void *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_10018D3FC(a2);
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
    v14 = v13[1];
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
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t sub_100315A0C(uint64_t result, int a2)
{
  *(result + 40) += a2;
  ++*(result + 52);
  return result;
}

void sub_100315A28(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = 0;
    v5 = *(v2 + 56);
    v48 = 0uLL;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    v49 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      if (vabdd_f64(v5, *(v2 + 56)) <= 4.0)
      {
        if (v4 >= v49)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v7 = v48;
        v8 = v46;
        if (v46 >= v47)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
          v11 = v10 + 1;
          if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v47 - v45) >> 3) > v11)
          {
            v11 = 0x5555555555555556 * ((v47 - v45) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v47 - v45) >> 3) >= 0x555555555555555)
          {
            v12 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v12 = v11;
          }

          v60[0] = &v45;
          if (v12)
          {
            sub_100288820(&v45, v12);
          }

          v13 = (8 * ((v46 - v45) >> 3));
          *v13 = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = v48;
          v13[2] = v49;
          v48 = 0uLL;
          v49 = 0;
          v9 = 24 * v10 + 24;
          v14 = (24 * v10 - (v46 - v45));
          memcpy(v13 - (v46 - v45), v45, v46 - v45);
          v15 = v45;
          v16 = v47;
          v45 = v14;
          v46 = v9;
          v47 = 0;
          *&buf[16] = v15;
          v59 = v16;
          *buf = v15;
          *&buf[8] = v15;
          sub_1003161FC(buf);
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        else
        {
          *v46 = 0;
          *(v8 + 1) = 0;
          *(v8 + 2) = 0;
          *v8 = v48;
          *(v8 + 2) = v49;
          v48 = 0uLL;
          v49 = 0;
          v9 = (v8 + 24);
        }

        v46 = v9;
        if (qword_1025D4630 != -1)
        {
          sub_101969B20();
        }

        v17 = 0x2E8BA2E8BA2E8BA3 * ((v4 - v7) >> 3);
        v18 = p_info[199];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [a2 UTF8String];
          *buf = 136446978;
          *&buf[4] = v19;
          *&buf[12] = 2050;
          *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
          *&buf[22] = 2050;
          v59 = v17;
          LOWORD(v60[0]) = 2050;
          *(v60 + 2) = v5;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "@WsbGroupCheck, %{public}s, %{public}lu, aps, %{public}lu, time, %{public}.1f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101969B48(buf);
          v21 = p_info[199];
          v22 = [a2 UTF8String];
          v50 = 136446978;
          v51 = v22;
          v52 = 2050;
          v53 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
          v54 = 2050;
          v55 = v17;
          v56 = 2050;
          v57 = v5;
          LODWORD(v43) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 0, "@WsbGroupCheck, %{public}s, %{public}lu, aps, %{public}lu, time, %{public}.1f", &v50, v43);
          v24 = v23;
          sub_100152C7C("Generic", 1, 0, 2, "void createWsbGroups(CLWifiService_Type::AccessPointVector, NSString *)", "%s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        v5 = *(v2 + 56);
        v20 = *(&v48 + 1);
        v4 = v48;
        while (v20 != v4)
        {
          if (*(v20 - 57) < 0)
          {
            operator delete(*(v20 - 80));
          }

          v20 -= 88;
        }

        *(&v48 + 1) = v4;
        if (v4 >= v49)
        {
LABEL_30:
          v4 = sub_10014E208(&v48, v2);
          goto LABEL_31;
        }
      }

      sub_1001005C4(v4, v2);
      v4 += 88;
LABEL_31:
      *(&v48 + 1) = v4;
      v2 += 88;
      if (v2 == v3)
      {
        v25 = v48;
        v26 = v46;
        if (v46 >= v47)
        {
          v29 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
          v30 = v29 + 1;
          if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v47 - v45) >> 3) > v30)
          {
            v30 = 0x5555555555555556 * ((v47 - v45) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v47 - v45) >> 3) >= 0x555555555555555)
          {
            v31 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v30;
          }

          v60[0] = &v45;
          if (v31)
          {
            sub_100288820(&v45, v31);
          }

          v32 = (8 * ((v46 - v45) >> 3));
          *v32 = 0;
          v32[1] = 0;
          v32[2] = 0;
          *v32 = v48;
          v32[2] = v49;
          v48 = 0uLL;
          v49 = 0;
          v27 = 24 * v29 + 24;
          v33 = (24 * v29 - (v46 - v45));
          memcpy(v32 - (v46 - v45), v45, v46 - v45);
          v34 = v45;
          v35 = v47;
          v45 = v33;
          v46 = v27;
          v47 = 0;
          *&buf[16] = v34;
          v59 = v35;
          *buf = v34;
          *&buf[8] = v34;
          sub_1003161FC(buf);
        }

        else
        {
          *v46 = 0;
          *(v26 + 1) = 0;
          *(v26 + 2) = 0;
          *v26 = v48;
          *(v26 + 2) = v49;
          v48 = 0uLL;
          v49 = 0;
          v27 = (v26 + 24);
        }

        v46 = v27;
        if (qword_1025D4630 != -1)
        {
          sub_101969B20();
        }

        v36 = 0x2E8BA2E8BA2E8BA3 * ((v4 - v25) >> 3);
        v37 = p_info[199];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [a2 UTF8String];
          *buf = 136446978;
          *&buf[4] = v38;
          *&buf[12] = 2050;
          *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
          *&buf[22] = 2050;
          v59 = v36;
          LOWORD(v60[0]) = 2050;
          *(v60 + 2) = v5;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "@WsbGroupCheck, %{public}s, %{public}lu, aps, %{public}lu, time, %{public}.1f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101969B48(buf);
          v39 = p_info[199];
          v40 = [a2 UTF8String];
          v50 = 136446978;
          v51 = v40;
          v52 = 2050;
          v53 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
          v54 = 2050;
          v55 = v36;
          v56 = 2050;
          v57 = v5;
          LODWORD(v43) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v39, 0, "@WsbGroupCheck, %{public}s, %{public}lu, aps, %{public}lu, time, %{public}.1f", &v50, v43);
          v42 = v41;
          sub_100152C7C("Generic", 1, 0, 2, "void createWsbGroups(CLWifiService_Type::AccessPointVector, NSString *)", "%s\n", v41);
          if (v42 != buf)
          {
            free(v42);
          }
        }

        *buf = &v45;
        sub_1000F8D88(buf);
        *buf = &v48;
        sub_1000B96B4(buf);
        return;
      }
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_101969B8C();
  }

  v28 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = [a2 UTF8String];
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "@WsbGroupCheck, %{public}s, empty", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101969BA0(a2);
  }
}

void sub_100316198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a14;
  sub_1000F8D88(&a21);
  a21 = &a17;
  sub_1000B96B4(&a21);
  _Unwind_Resume(a1);
}

void **sub_1003161FC(void **a1)
{
  sub_100316230(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100316230(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1000B96B4(&v5);
  }
}

void sub_100316284(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    do
    {
      if (sub_100316684(v2) <= *(a1 + 88))
      {
        v2 += 11;
        v8 = a2[1];
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101969A30();
        }

        v5 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100C5CA98(v2, __p);
          v6 = v20 >= 0 ? __p : __p[0];
          *buf = 136380675;
          *&buf[4] = v6;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@Wsb, WsbScanComparator, removing AP %{private}s as it is too old", buf, 0xCu);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101969A30();
          }

          v10 = qword_1025D4628;
          sub_100C5CA98(v2, buf);
          v11 = buf;
          if (v16 < 0)
          {
            v11 = *buf;
          }

          v17 = 136380675;
          v18 = v11;
          LODWORD(v14) = 12;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v10, 2, "@Wsb, WsbScanComparator, removing AP %{private}s as it is too old", &v17, v14);
          v13 = v12;
          if (v16 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWsbScanComparator::removeAccessPointsTooOld(CLWifiService_Type::AccessPointVector &)", "%s\n", v13);
          if (v13 != __p)
          {
            free(v13);
          }
        }

        sub_1003166B0(__p, (v2 + 11), a2[1], v2);
        v8 = v7;
        for (i = a2[1]; i != v8; i -= 88)
        {
          if (*(i - 57) < 0)
          {
            operator delete(*(i - 80));
          }
        }

        a2[1] = v8;
      }
    }

    while (v2 != v8);
  }
}

void sub_10031650C(uint64_t a1, void *a2)
{
  for (i = a2[2]; i; i = sub_10031674C(a2, i))
  {
    while (1)
    {
      sub_100316284(a1, (i + 24));
      if (*(i + 24) == *(i + 32))
      {
        break;
      }

      i = *i;
      if (!i)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:

  sub_1003167B0(a1, a2);
}

BOOL sub_100316590(uint64_t a1)
{
  for (i = *(a1 + 64); i; i = *i)
  {
    sub_1008DCF6C(a1, i + 2, i + 3);
  }

  sub_10031650C(a1, (a1 + 8));
  sub_10031650C(a1, (a1 + 48));
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 0;
    do
    {
      v4 -= 1171354717 * ((v3[4] - v3[3]) >> 3);
      v3 = *v3;
    }

    while (v3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  sub_100316DE8(a1 + 96, v5);
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = 0;
    do
    {
      v7 -= 1171354717 * ((v6[4] - v6[3]) >> 3);
      v6 = *v6;
    }

    while (v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_100316DE0(a1 + 96, v8);
  sub_100316BC4((a1 + 96));

  return sub_10019C558((a1 + 96));
}

uint64_t sub_1003166B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      *(a4 + 80) = *(v5 + 80);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      v5 += 88;
      a4 += 88;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10031674C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      v7 = v3 + 3;
      sub_1000B96B4(&v7);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_1003167B0(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if (i[3] == i[4])
    {
      if (qword_1025D4620 != -1)
      {
        sub_101969A30();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        sub_10018F0D0(__p);
        v5 = __p;
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = __p[0].__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
        *(buf.__r_.__value_.__r.__words + 4) = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "@Wsb, failed validity check, mac %{private}s has 0 AP", &buf, 0xCu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 0))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101969A30();
        }

        v14 = qword_1025D4628;
        sub_10018F0D0(&buf);
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v19 = 136380675;
        v20 = p_buf;
        LODWORD(v18) = 12;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v14, 17, "@Wsb, failed validity check, mac %{private}s has 0 AP", &v19, v18);
        v17 = v16;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLWsbScanComparator::validityCheck(const std::unordered_map<CLMacAddress, CLWifiService_Type::AccessPointVector> &)", "%s\n", v17);
        if (v17 != __p)
        {
          free(v17);
        }
      }
    }

    v7 = i[3];
    v6 = i[4];
    while (v7 != v6)
    {
      if (sub_100316684(v7) > *(a1 + 88) + 0.2)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101969A30();
        }

        v8 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100C5CA98(v7, __p);
          v9 = __p;
          if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v9 = __p[0].__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
          *(buf.__r_.__value_.__r.__words + 4) = v9;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = 0x3FC999999999999ALL;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "@Wsb, failed validity check, ap is too old, %{private}s, buffer, %{public}.1f", &buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101969A30();
          }

          v10 = qword_1025D4628;
          sub_100C5CA98(v7, &buf);
          v11 = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v11 = buf.__r_.__value_.__r.__words[0];
          }

          v19 = 136380931;
          v20 = v11;
          v21 = 2050;
          v22 = 0x3FC999999999999ALL;
          LODWORD(v18) = 22;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v10, 2, "@Wsb, failed validity check, ap is too old, %{private}s, buffer, %{public}.1f", &v19, v18);
          v13 = v12;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWsbScanComparator::validityCheck(const std::unordered_map<CLMacAddress, CLWifiService_Type::AccessPointVector> &)", "%s\n", v13);
          if (v13 != __p)
          {
            free(v13);
          }
        }
      }

      v7 += 11;
    }
  }
}

void sub_100316BC4(_DWORD *a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_101963BC0();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[16];
    v3 = a1[17];
    v14 = 67240448;
    v15 = v3;
    v16 = 1026;
    v17 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "@Wsb, WifiManager AP cache cnt, %{public}d, Aonsensed AP cache cnt, %{public}d", &v14, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101963BD4(a1);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101963CD8();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[11];
    v7 = a1[12];
    v9 = a1[9];
    v8 = a1[10];
    v14 = 67240960;
    v15 = v6;
    v16 = 1026;
    v17 = v8;
    v18 = 1026;
    v19 = v7;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@Wsb, WifiManager AP total cnt, %{public}d, Aonsensed AP total cnt, %{public}d, NotificationScan AP total cnt, %{public}d, matched WSB AP cnt, %{public}d", &v14, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101963D00(a1);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101963CD8();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[14];
    v11 = a1[15];
    v13 = a1[13];
    v14 = 67240704;
    v15 = v12;
    v16 = 1026;
    v17 = v11;
    v18 = 1026;
    v19 = v13;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@Wsb, WifiManager WSB notifications, %{public}d, scan notifications, %{public}d, Aonsensed notifications, %{public}d", &v14, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101963E18(a1);
  }
}

uint64_t sub_100316DF0(char *a1, uint64_t a2)
{
  v3 = sub_10001A3E8(a1, a2);
  v4 = sub_100316E74(v3);
  v5 = sub_100316E68();
  v6 = v5 + 4;
  v7 = v4 == 0;
  if (v4)
  {
    v8 = 7;
  }

  else
  {
    v8 = 5;
  }

  if (!v7)
  {
    v6 = v5 + 6;
  }

  v9 = *v6;
  v10 = sub_100316E68()[v8];

  return sub_100316EDC(a1, v9 & 1, v10);
}

uint64_t sub_100316E74(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 182) < 0x3B) & (0x7000000000000FFuLL >> (dword_1026592D0 + 74));
}

uint64_t sub_100316EDC(char *a1, char a2, char a3)
{
  if (a1 == 1)
  {
    sub_10001CAF4(&buf);
    v9 = 0;
    if (sub_10001CB4C(buf, "skipWifiManagerScans", &v9, 0xFFFFFFFFLL))
    {
      v5 = v9;
    }

    else
    {
      v5 = a3;
    }

LABEL_9:
    if (*(&buf + 1))
    {
      sub_100008080(*(&buf + 1));
    }

    return v5 & 1;
  }

  if (a1 == 2)
  {
    sub_10001CAF4(&buf);
    v9 = 0;
    if (sub_10001CB4C(buf, "skipAonsensedScans", &v9, 0xFFFFFFFFLL))
    {
      v5 = v9;
    }

    else
    {
      v5 = a2;
    }

    goto LABEL_9;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101AE99A0();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = sub_100C5D234(a1);
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "@Wsb, warning, unsupported WSB scan source %{public}s", &buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101AE99B4(a1);
  }

  v5 = 0;
  return v5 & 1;
}

void sub_100317054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100317078(int *a1, __int128 *a2)
{
  v5 = a2;
  if ((sub_100317194(a1, &v5) & 1) == 0)
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v9 = *(a2 + 6);
    LOBYTE(v10) = 0;
    v17 = 0;
    if (*(a2 + 120) == 1)
    {
      v11 = *(a2 + 40);
      v4 = a2[5];
      v13 = a2[4];
      v14 = v4;
      v10 = *(a2 + 4);
      v12 = *(a2 + 7);
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      v15 = a2[6];
      v16 = *(a2 + 14);
      v17 = 1;
    }

    v6 = 8;
    sub_100103D88(a1, &v6);
    sub_1001039FC(&v6);
  }
}

void sub_100317178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100317194(uint64_t a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 9) >= 0x15)
  {
    if (v4 > 7)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 8)
      {
        v5 = *a2;
        sub_1000BB5F0((a1 + 8));
        *(a1 + 8) = *v5;
        *(a1 + 24) = *(v5 + 16);
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(a1 + 32) = *(v5 + 24);
        sub_1000F8A78(a1 + 40, v5 + 32);
        return 1;
      }
    }

    else if (v4 < 8)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_100317298(uint64_t a1, uint64_t a2)
{
  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = *a2;
  *(v4 + 24) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v4 + 32) = *(a2 + 24);
  *(v4 + 40) = 0;
  *(v4 + 128) = 0;
  if (*(a2 + 120) == 1)
  {
    *(v4 + 40) = *(a2 + 32);
    v5 = *(a2 + 40);
    *(v4 + 64) = *(a2 + 56);
    *(v4 + 48) = v5;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    v6 = *(a2 + 64);
    v7 = *(a2 + 80);
    v8 = *(a2 + 96);
    *(v4 + 120) = *(a2 + 112);
    *(v4 + 104) = v8;
    *(v4 + 88) = v7;
    *(v4 + 72) = v6;
    *(v4 + 128) = 1;
  }

  **a1 = *(a1 + 8);
}

void sub_100317354(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1 && *(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v3 = a2;
  sub_1000B96B4(&v3);
}

__n128 sub_1003173A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 32) = 0;
  *(v2 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(v2 + 32) = *(a2 + 32);
    v4 = *(a2 + 40);
    *(v2 + 56) = *(a2 + 56);
    *(v2 + 40) = v4;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    result = *(a2 + 64);
    v5 = *(a2 + 80);
    v6 = *(a2 + 96);
    *(v2 + 112) = *(a2 + 112);
    *(v2 + 80) = v5;
    *(v2 + 96) = v6;
    *(v2 + 64) = result;
    *(v2 + 120) = 1;
  }

  return result;
}

void sub_100317428(uint64_t a1, uint64_t a2)
{
  v10 = 0uLL;
  v11 = 0;
  sub_100288650(&v10, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
  v12 = *(a2 + 24);
  sub_1000FB724(&v13, a2 + 32);
  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = v10;
  *(v4 + 24) = v11;
  v10 = 0uLL;
  v11 = 0;
  *(v4 + 32) = v12;
  *(v4 + 40) = 0;
  *(v4 + 128) = 0;
  v5 = v20;
  if (v20 == 1)
  {
    *(v4 + 40) = v13;
    v6 = v15;
    *(v4 + 48) = *__p;
    *(v4 + 64) = v6;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    v7 = v19;
    v8 = v16;
    v9 = v17;
    *(v4 + 104) = v18;
    *(v4 + 88) = v9;
    *(v4 + 72) = v8;
    *(v4 + 120) = v7;
    *(v4 + 128) = 1;
    v5 = v20;
  }

  **a1 = *(a1 + 8);
  if ((v5 & 1) != 0 && SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = &v10;
  sub_1000B96B4(&v21);
}

void sub_100317564(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_1000B96B4((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1003184A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  *(v61 - 240) = &a38;
  sub_1000F8D88((v61 - 240));
  *(v61 - 240) = &a41;
  sub_1000B96B4((v61 - 240));
  *(v61 - 240) = &a44;
  sub_1000B96B4((v61 - 240));
  sub_1007BE994(a17);
  _Unwind_Resume(a1);
}

NSDictionary *sub_100318598(uint64_t a1)
{
  v2 = @"aps";
  v3 = [NSNumber numberWithUnsignedLong:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

void *sub_10031861C(char **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100288820(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100288650((24 * v2), *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1003161FC(&v14);
  return v8;
}

void sub_10031874C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003161FC(va);
  _Unwind_Resume(a1);
}

void sub_100318760(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    sub_100288978(a3, *v4, *(v4 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(v4 + 8) - *v4) >> 3));
  }

  *(a3 + 24) = *(v4 + 24);

  sub_1000F8F80(a3 + 32, v4 + 32);
}

uint64_t **sub_100318AF8@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *result;
  v4 = result[1];
  while (v3 != v4)
  {
    v5 = *v3;
    result = sub_100188540(a2, &v5, &v5);
    v3 += 11;
  }

  return result;
}

uint64_t sub_100318B78(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100318B88(uint64_t a1)
{
  v3 = (a1 + 112);
  sub_1000B96B4(&v3);
  if (*(a1 + 96) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10031903C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1007BE994(v13);
  _Unwind_Resume(a1);
}

void sub_10031906C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      sub_1001A1980(a1, a2);
    }

    sub_10028C64C();
  }
}

uint64_t sub_10031912C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, double **a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v8 = *(a1 + 6440);
  sub_10031B59C(a6, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v9 = "reproc";
  if (!a5)
  {
    v9 = "live";
  }

  v150 = v9;
  if (qword_1025D4630 != -1)
  {
    sub_10196A1AC();
  }

  v10 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *buf = 134349314;
    *&buf[4] = v11;
    *&buf[12] = 2082;
    *&buf[14] = v150;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "@WsbCalc, groups, %{public}lu, %{public}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(buf);
    v132 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *v220 = 134349314;
    *&v220[4] = v132;
    *&v220[12] = 2082;
    *&v220[14] = v150;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@WsbCalc, groups, %{public}lu, %{public}s", v220, 22);
    v134 = v133;
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v133);
    if (v134 != buf)
    {
      free(v134);
    }
  }

  v12 = *a4;
  v13 = a4[1];
  if (*a4 != v13)
  {
    do
    {
      if (!sub_10019A2D4(v12))
      {
        sub_10196A1C0();
        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Wifi1/Logic/Policies/CLWifiPositionCalculation.mm", 215, "processScanGroups");
        __break(1u);
      }

      v12 += 12;
    }

    while (v12 != v13);
    v12 = *a4;
    v13 = a4[1];
  }

  memset(v195, 0, sizeof(v195));
  v196 = 1065353216;
  while (v12 != v13)
  {
    *buf = *v12;
    sub_10019E484(v195, buf, buf, v12);
    v12 += 12;
  }

  v178 = 0;
  v179 = 0;
  v180 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v181 = _Q0;
  v182 = _Q0;
  v183 = _Q0;
  v177 = 0xFFFF;
  v184 = 0;
  v185 = 0xBFF0000000000000;
  v187 = 0;
  v186 = 0;
  v189 = 0xBFF0000000000000;
  v188 = 0;
  v190 = 0x7FFFFFFF;
  v192 = 0;
  v193 = 0;
  v191 = 0;
  v194 = 0;
  v145 = a2[1];
  if (*a2 == v145)
  {
    v151 = 0;
    v149 = 0;
    v148 = 0;
  }

  else
  {
    v19 = *a2;
    v149 = 0;
    v160 = 0;
    v148 = 0;
    v151 = 0;
    v144 = a5 == 1;
    do
    {
      v175 = 0;
      __src = 0;
      v176 = 0;
      v161 = v19;
      *buf = *(*v19 + 56);
      v173 = sub_10031B734(a3, buf);
      v20 = sub_1001E2678(&v173);
      LOBYTE(v166) = 0;
      v172 = 0;
      v21 = *v161;
      v22 = v161[1];
      if (*v161 == v22)
      {
        v23 = 0;
        v24 = 1;
      }

      else
      {
        v23 = 0;
        v24 = 1;
        do
        {
          if (*(v21 + 72))
          {
            if (v20 && (*buf = *v21, sub_100195A00(&v173, buf)))
            {
              if (qword_1025D4630 != -1)
              {
                sub_10196A140();
              }

              v25 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
              {
                v219[0].__r_.__value_.__r.__words[0] = *v21;
                sub_10018F0D0(buf);
                v26 = buf;
                if (buf[23] < 0)
                {
                  v26 = *buf;
                }

                *v220 = 136380675;
                *&v220[4] = v26;
                _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "@Wsb, consistent associated AP %{private}s between associated AP history and aonsensed", v220, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_10196A168(buf);
                v62 = qword_1025D4638;
                *v197 = *v21;
                sub_10018F0D0(v220);
                v63 = v220;
                if (v220[23] < 0)
                {
                  v63 = *v220;
                }

                LODWORD(v219[0].__r_.__value_.__l.__data_) = 136380675;
                *(v219[0].__r_.__value_.__r.__words + 4) = v63;
                LODWORD(v142) = 12;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v62, 2, "@Wsb, consistent associated AP %{private}s between associated AP history and aonsensed", v219, v142);
                v65 = v64;
                if ((v220[23] & 0x80000000) != 0)
                {
                  operator delete(*v220);
                }

                sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v65);
                if (v65 != buf)
                {
                  free(v65);
                }
              }

              v24 = 1;
            }

            else
            {
              if (qword_1025D4630 != -1)
              {
                sub_10196A140();
              }

              v28 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
              {
                sub_10018F0D0(buf);
                v29 = buf[23];
                v30 = *buf;
                *v197 = *v21;
                sub_10018F0D0(v220);
                v31 = buf;
                if (v29 < 0)
                {
                  v31 = v30;
                }

                v32 = v220;
                if (v220[23] < 0)
                {
                  v32 = *v220;
                }

                LODWORD(v219[0].__r_.__value_.__l.__data_) = 136380931;
                *(v219[0].__r_.__value_.__r.__words + 4) = v31;
                WORD2(v219[0].__r_.__value_.__r.__words[1]) = 2081;
                *(&v219[0].__r_.__value_.__r.__words[1] + 6) = v32;
                _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "@Wsb, warning, inconsistent associated AP %{private}s vs %{private}s between associated AP history and aonsensed", v219, 0x16u);
                if ((v220[23] & 0x80000000) != 0)
                {
                  operator delete(*v220);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_10196A168(buf);
                v55 = qword_1025D4638;
                sub_10018F0D0(v220);
                v56 = v220[23];
                v57 = *v220;
                v162 = *v21;
                sub_10018F0D0(v219);
                v58 = v220;
                if (v56 < 0)
                {
                  v58 = v57;
                }

                v59 = v219;
                if ((v219[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v59 = v219[0].__r_.__value_.__r.__words[0];
                }

                *v197 = 136380931;
                *&v197[4] = v58;
                *&v197[12] = 2081;
                *&v197[14] = v59;
                LODWORD(v142) = 22;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v55, 2, "@Wsb, warning, inconsistent associated AP %{private}s vs %{private}s between associated AP history and aonsensed", v197, v142);
                v61 = v60;
                if (SHIBYTE(v219[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v219[0].__r_.__value_.__l.__data_);
                }

                if ((v220[23] & 0x80000000) != 0)
                {
                  operator delete(*v220);
                }

                sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v61);
                if (v61 != buf)
                {
                  free(v61);
                }
              }

              v24 = 0;
            }

            v27 = *v21;
            v173 = *v21;
            v23 = 1;
            v20 = 1;
          }

          else
          {
            v27 = *v21;
          }

          *buf = v27;
          v33 = sub_1002DFD60(v195, buf);
          if (v33)
          {
            v34 = *(v33 + 7);
            v35 = *(v33 + 9);
            v36 = *(v33 + 13);
            v211 = *(v33 + 11);
            v212 = v36;
            *&buf[32] = v34;
            v210 = v35;
            v37 = *(v33 + 5);
            *buf = *(v33 + 3);
            *&buf[16] = v37;
            sub_10019E848(buf, *(v21 + 32), *(v21 + 40), *(v21 + 56));
            v38 = v175;
            if (v175 >= v176)
            {
              v44 = __src;
              v45 = v175 - __src;
              v46 = 0xAAAAAAAAAAAAAAABLL * ((v175 - __src) >> 5);
              v47 = v46 + 1;
              if (v46 + 1 > 0x2AAAAAAAAAAAAAALL)
              {
                sub_10028C64C();
              }

              if (0x5555555555555556 * ((v176 - __src) >> 5) > v47)
              {
                v47 = 0x5555555555555556 * ((v176 - __src) >> 5);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v176 - __src) >> 5) >= 0x155555555555555)
              {
                v47 = 0x2AAAAAAAAAAAAAALL;
              }

              if (v47)
              {
                sub_1001A1980(&__src, v47);
              }

              v48 = (32 * ((v175 - __src) >> 5));
              v49 = *&buf[16];
              *v48 = *buf;
              v48[1] = v49;
              v50 = *&buf[32];
              v51 = v210;
              v52 = v212;
              v48[4] = v211;
              v48[5] = v52;
              v48[2] = v50;
              v48[3] = v51;
              v43 = 96 * v46 + 96;
              v53 = (96 * v46 - v45);
              memcpy(v48 - v45, v44, v45);
              v54 = __src;
              __src = v53;
              v175 = v43;
              v176 = 0;
              if (v54)
              {
                operator delete(v54);
              }
            }

            else
            {
              v39 = *&buf[16];
              *v175 = *buf;
              v38[1] = v39;
              v40 = *&buf[32];
              v41 = v210;
              v42 = v212;
              v38[4] = v211;
              v38[5] = v42;
              v38[2] = v40;
              v38[3] = v41;
              v43 = (v38 + 6);
            }

            v175 = v43;
            if (*(v21 + 72) == 1)
            {
              v168 = *&buf[32];
              v169 = v210;
              v170 = v211;
              v171 = v212;
              v166 = *buf;
              v167 = *&buf[16];
              if ((v172 & 1) == 0)
              {
                v172 = 1;
              }
            }
          }

          v21 += 88;
        }

        while (v21 != v22);
      }

      if (v20 && (v23 & 1) == 0)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v66 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          sub_10018F0D0(buf);
          v67 = buf;
          if (buf[23] < 0)
          {
            v67 = *buf;
          }

          *v220 = 136380675;
          *&v220[4] = v67;
          _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "@Wsb, warning, aonsensed does not have associated AP %{private}s from associated AP history", v220, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          v106 = qword_1025D4638;
          sub_10018F0D0(v220);
          v107 = v220;
          if (v220[23] < 0)
          {
            v107 = *v220;
          }

          LODWORD(v219[0].__r_.__value_.__l.__data_) = 136380675;
          *(v219[0].__r_.__value_.__r.__words + 4) = v107;
          LODWORD(v142) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v106, 2, "@Wsb, warning, aonsensed does not have associated AP %{private}s from associated AP history", v219, v142);
          v109 = v108;
          if ((v220[23] & 0x80000000) != 0)
          {
            operator delete(*v220);
          }

          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v109);
          if (v109 != buf)
          {
            free(v109);
          }
        }

        v68 = sub_1002DFD60(v195, &v173);
        if (v68 && (v69 = *(v68 + 3), v70 = *(v68 + 5), v71 = *(v68 + 7), v72 = *(v68 + 9), v73 = *(v68 + 13), v170 = *(v68 + 11), v171 = v73, v168 = v71, v169 = v72, v166 = v69, v167 = v70, (v172 & 1) == 0))
        {
          v24 = 0;
          v172 = 1;
        }

        else
        {
          v24 = 0;
        }
      }

      v223 = 0;
      v224 = 0;
      v228 = 0;
      v229 = 0;
      memset(v220, 0, sizeof(v220));
      v221 = 0u;
      v222 = 0;
      v225 = 0;
      v226 = 0;
      v227 = 0;
      v230 = 0u;
      *v231 = 0u;
      *&v231[14] = 0x100000000000000;
      v232 = 0xFFFFFFFFLL;
      __p = 0u;
      memset(v234, 0, 32);
      v163 = 0;
      v162 = 0;
      v165 = 0;
      v164 = 0;
      sub_10019D234(0, &__src, &__src, &v177, &v177, 0, 0, &v162, buf, *(*v161 + 56), v220, 0);
      v74 = *a6;
      v75 = *a6 + 184 * v160;
      *(v75 + 128) = v215;
      *(v75 + 144) = v216;
      *(v75 + 160) = v217;
      *(v75 + 176) = v218;
      *(v75 + 64) = v211;
      *(v75 + 80) = v212;
      *(v75 + 96) = v213;
      *(v75 + 112) = v214;
      *v75 = *buf;
      *(v75 + 16) = *&buf[16];
      *(v75 + 32) = *&buf[32];
      *(v75 + 48) = v210;
      if (0xD37A6F4DE9BD37A7 * ((a6[1] - v74) >> 3) <= v160)
      {
        sub_10046F324();
      }

      *(v75 + 76) = *(*v161 + 56);
      v76 = (v75 + 76);
      *(v75 + 96) = 4;
      sub_1001A9A10(a1, v75);
      sub_10031B7D8(*(a1 + 5048), (v75 + 76), v219);
      if (v20)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v77 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(buf);
          v78 = buf;
          if (buf[23] < 0)
          {
            v78 = *buf;
          }

          *v197 = 136380675;
          *&v197[4] = v78;
          _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEFAULT, "@WsbLoc, associated AP, %{private}s", v197, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          v112 = qword_1025D4638;
          sub_10018F0D0(v197);
          v113 = v197;
          if (v197[23] < 0)
          {
            v113 = *v197;
          }

          LODWORD(v205) = 136380675;
          *(&v205 + 4) = v113;
          LODWORD(v142) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v112, 0, "@WsbLoc, associated AP, %{private}s", &v205, v142);
          v115 = v114;
          if ((v197[23] & 0x80000000) != 0)
          {
            operator delete(*v197);
          }

          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v115);
          if (v115 != buf)
          {
            free(v115);
          }
        }

        sub_1001A7094(&v205);
        sub_10000EC00(v197, "WSB");
        sub_1001AE1C8(buf, &v173, &v166, &v205, (a1 + 6528), v197, v219);
        if ((v197[23] & 0x80000000) != 0)
        {
          operator delete(*v197);
        }

        if (*(&v205 + 1))
        {
          sub_100008080(*(&v205 + 1));
        }

        sub_1001ABDBC(buf, v75);
        sub_1001E4D1C(buf);
        ++v148;
        sub_1001E314C(buf);
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v79 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEFAULT, "@WsbLoc, associated AP, none", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          *v197 = 0;
          LODWORD(v142) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbLoc, associated AP, none", v197, v142);
          v111 = v110;
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v110);
          if (v111 != buf)
          {
            free(v111);
          }
        }

        LODWORD(v149) = v149 + 1;
      }

      v80 = v151;
      if (*(v75 + 180))
      {
        v80 = v151 + 1;
      }

      v151 = v80;
      *(v75 + 88) = *(a1 + 6288) * 1.5;
      v81 = (v163 - v162) >> 3;
      v82 = (-1431655765 * v81);
      v83 = v165;
      v159 = v82 - v165;
      v157 = sub_10031BA04(v82 - v165, -1431655765 * v81, 100);
      v156 = sub_10031BA04(v83, v82, 100);
      v84 = -1171354717 * ((v161[1] - *v161) >> 3);
      v85 = -1431655765 * ((v175 - __src) >> 5);
      v155 = sub_10031BA04(v85, -1171354717 * ((v161[1] - *v161) >> 3), 100);
      v154 = sub_10031BA04((v84 - v85), v84, 100);
      v153 = sub_10031BA04(v82, v84, 100);
      v152 = sub_10031BA04(v82, v85, 100);
      v86 = +[NSMutableDictionary dictionary];
      v207[0] = @"aps";
      v208[0] = [NSNumber numberWithUnsignedInt:v82];
      v207[1] = @"alsAps";
      v208[1] = [NSNumber numberWithUnsignedInt:v159];
      v207[2] = @"tileAps";
      v208[2] = [NSNumber numberWithUnsignedInt:v83];
      v207[3] = @"percentAlsAps";
      v208[3] = [NSNumber numberWithInt:v157];
      v207[4] = @"percentTileAps";
      v208[4] = [NSNumber numberWithInt:v156];
      v207[5] = @"pass";
      v208[5] = [NSString stringWithUTF8String:v150];
      v208[6] = &__kCFBooleanFalse;
      v207[6] = @"isWifiFixWithAssociatedAp";
      v207[7] = @"wifiFixType";
      sub_10000EC00(buf, "NormalWifi1");
      if (buf[23] >= 0)
      {
        v87 = buf;
      }

      else
      {
        v87 = *buf;
      }

      v208[7] = [NSString stringWithUTF8String:v87];
      v207[8] = @"isConsistentAssociatedApBetweenAssociatedApHistoryAndAonsensed";
      v208[8] = [NSNumber numberWithBool:v24 & 1];
      v207[9] = @"apsInScanGroup";
      v208[9] = [NSNumber numberWithUnsignedInt:v84];
      v207[10] = @"apsWithLocationInScanGroup";
      v208[10] = [NSNumber numberWithUnsignedInt:v85];
      v207[11] = @"apsWithoutLocationInScanGroup";
      v208[11] = [NSNumber numberWithUnsignedInt:(v84 - v85)];
      v207[12] = @"percentApsWithLocationInScanGroup";
      v208[12] = [NSNumber numberWithUnsignedInt:v155];
      v207[13] = @"percentApsWithoutLocationInScanGroup";
      v208[13] = [NSNumber numberWithUnsignedInt:v154];
      v207[14] = @"percentApsInScanGroupUsedInLocation";
      v208[14] = [NSNumber numberWithUnsignedInt:v153];
      v207[15] = @"percentApsWithLocationUsedInLocation";
      v208[15] = [NSNumber numberWithUnsignedInt:v152];
      [v86 setDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v208, v207, 16)}];
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (sub_100072814(v75))
      {
        v88 = *(v75 + 20);
        if (v88 < 20.0)
        {
          v88 = 20.0;
        }

        *(v75 + 20) = v88;
        *(v75 + 128) = sub_10031BBF8(*(v75 + 84));
        sub_100027CA8(v75);
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v89 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          sub_1001D78F4(v197);
          v90 = v197;
          if (v197[23] < 0)
          {
            v90 = *v197;
          }

          v91 = 0x2E8BA2E8BA2E8BA3 * ((v161[1] - *v161) >> 3);
          *buf = 136644099;
          *&buf[4] = v90;
          *&buf[12] = 1026;
          *&buf[14] = v82;
          *&buf[18] = 2050;
          *&buf[20] = v91;
          *&buf[28] = 1026;
          *&buf[30] = v159;
          *&buf[34] = 1026;
          *&buf[36] = v83;
          *&buf[40] = 1026;
          *&buf[42] = v144;
          _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEFAULT, "@WsbLoc, fix, %{sensitive}s, aps, %{public}d, scan group size, %{public}lu, alsAps, %{public}u, tileAps, %{public}u, reproc, %{public}d", buf, 0x2Eu);
          if ((v197[23] & 0x80000000) != 0)
          {
            operator delete(*v197);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          v120 = qword_1025D4638;
          sub_1001D78F4(&v205);
          v121 = &v205;
          if (v206 < 0)
          {
            v121 = v205;
          }

          v122 = 0x2E8BA2E8BA2E8BA3 * ((v161[1] - *v161) >> 3);
          *v197 = 136644099;
          *&v197[4] = v121;
          *&v197[12] = 1026;
          *&v197[14] = v82;
          *&v197[18] = 2050;
          *&v197[20] = v122;
          v198 = 1026;
          v199 = v159;
          v200 = 1026;
          v201 = v83;
          v202 = 1026;
          v203 = v144;
          LODWORD(v142) = 46;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v120, 0, "@WsbLoc, fix, %{sensitive}s, aps, %{public}d, scan group size, %{public}lu, alsAps, %{public}u, tileAps, %{public}u, reproc, %{public}d", v197, v142);
          v124 = v123;
          if (v206 < 0)
          {
            operator delete(v205);
          }

          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v124);
          if (v124 != buf)
          {
            free(v124);
          }
        }

        v92 = *v76;
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v93 = qword_1025D4638;
        v94 = (v8 - v92) / 60.0;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240706;
          *&buf[4] = v82;
          *&buf[8] = 2050;
          *&buf[10] = v94;
          *&buf[18] = 2082;
          *&buf[20] = v150;
          _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_DEBUG, "WsbMetric, fix, aps, %{public}d, age, %{public}0.1f, %{public}s", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          *v197 = 67240706;
          *&v197[4] = v82;
          *&v197[8] = 2050;
          *&v197[10] = v94;
          *&v197[18] = 2082;
          *&v197[20] = v150;
          LODWORD(v142) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, fix, aps, %{public}d, age, %{public}0.1f, %{public}s", v197, v142);
          v126 = v125;
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v125);
          if (v126 != buf)
          {
            free(v126);
          }
        }

        [v86 setObject:&__kCFBooleanTrue forKeyedSubscript:@"fix"];
        [v86 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v94), @"age"}];
        [v86 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(v75 + 180) != 0), @"isWifiFixWithAssociatedAp"}];
        sub_10000EC00(buf, (&off_10247D428)[*(v75 + 180)]);
        if (buf[23] >= 0)
        {
          v95 = buf;
        }

        else
        {
          v95 = *buf;
        }

        [v86 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v95), @"wifiFixType"}];
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (*(v75 + 180))
        {
          [v86 setObject:&off_10254F128 forKeyedSubscript:@"aps"];
          [v86 setObject:&off_10254F140 forKeyedSubscript:@"alsAps"];
          [v86 setObject:&off_10254F140 forKeyedSubscript:@"tileAps"];
          [v86 setObject:&off_10254F140 forKeyedSubscript:@"percentAlsAps"];
          [v86 setObject:&off_10254F140 forKeyedSubscript:@"percentTileAps"];
          [v86 setObject:&off_10254F140 forKeyedSubscript:@"percentApsInScanGroupUsedInLocation"];
          [v86 setObject:&off_10254F140 forKeyedSubscript:@"percentApsWithLocationUsedInLocation"];
        }

        sub_10031BC20(buf, v219);
        if (sub_10031BC54(buf, v75))
        {
          v96 = sub_1010CFFFC(buf, v75);
          v97 = *(v75 + 20);
          if (v97 > 0.0)
          {
            v98 = v96 / v97;
          }

          else
          {
            v98 = -1.0;
          }

          [v86 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"horizontalError"}];
          [v86 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v98), @"horizontalErrorRatio"}];
          *&v99 = sub_1010D0010(buf, v197).n128_u64[0];
          [v86 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v204, v99), @"referenceLocationType"}];
        }

        AnalyticsSendEventLazy();
        ++HIDWORD(v149);
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v100 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          v101 = 0x2E8BA2E8BA2E8BA3 * ((v161[1] - *v161) >> 3);
          v102 = *v76;
          *buf = 134349568;
          *&buf[4] = v101;
          *&buf[12] = 1026;
          *&buf[14] = v144;
          *&buf[18] = 2050;
          *&buf[20] = v102;
          _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_INFO, "@WsbLoc, none, aps, %{public}lu, reproc, %{public}d, time, %{public}.3f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          v116 = 0x2E8BA2E8BA2E8BA3 * ((v161[1] - *v161) >> 3);
          v117 = *v76;
          *v197 = 134349568;
          *&v197[4] = v116;
          *&v197[12] = 1026;
          *&v197[14] = v144;
          *&v197[18] = 2050;
          *&v197[20] = v117;
          LODWORD(v142) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@WsbLoc, none, aps, %{public}lu, reproc, %{public}d, time, %{public}.3f", v197, v142);
          v119 = v118;
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v118);
          if (v119 != buf)
          {
            free(v119);
          }
        }

        [v86 setObject:&__kCFBooleanFalse forKeyedSubscript:@"fix"];
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v103 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        *&buf[4] = v86;
        _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEBUG, "@WsbMetric, result, %{private}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196A168(buf);
        *v197 = 138477827;
        *&v197[4] = v86;
        LODWORD(v142) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WsbMetric, result, %{private}@", v197, v142);
        v105 = v104;
        sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v104);
        if (v105 != buf)
        {
          free(v105);
        }
      }

      AnalyticsSendEventLazy();
      *buf = &v162;
      sub_1001E56E8(buf);
      *buf = &v234[8];
      sub_1001E56E8(buf);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (__src)
      {
        v175 = __src;
        operator delete(__src);
      }

      ++v160;
      v19 = v161 + 3;
    }

    while (v161 + 3 != v145);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v127 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v128 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *buf = 67240706;
    *&buf[4] = HIDWORD(v149);
    *&buf[8] = 2050;
    *&buf[10] = v128;
    *&buf[18] = 2082;
    *&buf[20] = v150;
    _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_DEFAULT, "WsbCalc, computed, %{public}d, of, %{public}lu, %{public}s", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(buf);
    v135 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *v220 = 67240706;
    *&v220[4] = HIDWORD(v149);
    *&v220[8] = 2050;
    *&v220[10] = v135;
    *&v220[18] = 2082;
    *&v220[20] = v150;
    LODWORD(v142) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "WsbCalc, computed, %{public}d, of, %{public}lu, %{public}s", v220, v142);
    v137 = v136;
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v136);
    if (v137 != buf)
    {
      free(v137);
    }
  }

  if (HIDWORD(v149))
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A140();
    }

    v129 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = v150;
      *&buf[12] = 1026;
      *&buf[14] = HIDWORD(v149);
      _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, %{public}s, %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A168(buf);
      *v220 = 136446466;
      *&v220[4] = v150;
      *&v220[12] = 1026;
      *&v220[14] = HIDWORD(v149);
      LODWORD(v142) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, groupresult, %{public}s, %{public}d", v220, v142);
      v141 = v140;
      sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v140);
      if (v141 != buf)
      {
        free(v141);
      }
    }

    AnalyticsSendEventLazy();
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v130 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240962;
    *&buf[4] = v148;
    *&buf[8] = 1026;
    *&buf[10] = v149;
    *&buf[14] = 1026;
    *&buf[16] = v151;
    *&buf[20] = 2082;
    *&buf[22] = v150;
    _os_log_impl(dword_100000000, v130, OS_LOG_TYPE_DEBUG, "@WsbMetric, wsbWithAssociatedAp, numAssociated, %{public}d, numUnassociated, %{public}d, numWifiFixesWithAssociatedAp, %{public}d, passType, %{public}s", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(buf);
    *v220 = 67240962;
    *&v220[4] = v148;
    *&v220[8] = 1026;
    *&v220[10] = v149;
    *&v220[14] = 1026;
    *&v220[16] = v151;
    *&v220[20] = 2082;
    *&v220[22] = v150;
    LODWORD(v142) = 30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WsbMetric, wsbWithAssociatedAp, numAssociated, %{public}d, numUnassociated, %{public}d, numWifiFixesWithAssociatedAp, %{public}d, passType, %{public}s", v220, v142);
    v139 = v138;
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v138);
    if (v139 != buf)
    {
      free(v139);
    }
  }

  AnalyticsSendEventLazy();
  return sub_1004906DC(v195);
}

void sub_10031B3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1004906DC(&STACK[0x360]);
  v29 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10031B59C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10031B65C(a1, a2);
  }

  return a1;
}

void sub_10031B5E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031B600(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10031B65C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    sub_10031B600(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10031B6AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = v2 + 184 * a2;
    __asm { FMOV            V1.2D, #-1.0 }

    do
    {
      *v2 = 0xFFFF;
      *(v2 + 12) = 0;
      *(v2 + 4) = 0;
      *(v2 + 20) = xmmword_101C75BF0;
      *(v2 + 36) = _Q1;
      *(v2 + 52) = _Q1;
      *(v2 + 68) = _Q1;
      *(v2 + 84) = 0;
      *(v2 + 96) = 0;
      *(v2 + 104) = 0;
      *(v2 + 88) = 0xBFF0000000000000;
      *(v2 + 112) = 0;
      *(v2 + 116) = 0xBFF0000000000000;
      *(v2 + 124) = 0x7FFFFFFF;
      *(v2 + 136) = 0;
      *(v2 + 144) = 0;
      *(v2 + 128) = 0;
      *(v2 + 152) = 0;
      *(v2 + 156) = 0;
      *(v2 + 160) = 0;
      *(v2 + 168) = 0xBFF0000000000000;
      *(v2 + 176) = 0;
      v2 += 184;
    }

    while (v2 != v3);
    v2 = v3;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_10031B734(void *a1, double *a2)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = a1[4];
    v4 = (*(v2 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA));
    v5 = *(v2 + 8 * ((a1[5] + v3) / 0xAA)) + 24 * ((a1[5] + v3) % 0xAA);
    if (v4 != v5)
    {
      v6 = (v2 + 8 * (v3 / 0xAA));
      v7 = *a2;
      while (v7 >= v4[1])
      {
        if (v7 < v4[2])
        {
          return *v4;
        }

        v4 += 3;
        if ((v4 - *v6) == 4080)
        {
          v8 = v6[1];
          ++v6;
          v4 = v8;
        }

        if (v4 == v5)
        {
          return 0xFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFFFFFLL;
}

void sub_10031B7D8(void *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 6;
  v3 = result[6];
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  if (v3)
  {
    v10 = result[2];
    if (result[3] == v10 || (v11 = result[5], v12 = *(v10 + 8 * (v11 / 0x1A)) + 156 * (v11 % 0x1A), v13 = *(v10 + 8 * ((v3 + v11) / 0x1A)) + 156 * ((v3 + v11) % 0x1A), v12 == v13))
    {
      v16 = 1.79769313e308;
    }

    else
    {
      v14 = (v10 + 8 * (v11 / 0x1A));
      v15 = *a2;
      v16 = 1.79769313e308;
      do
      {
        v17 = vabdd_f64(v15, *(v12 + 76));
        if (v16 > v17)
        {
          v18 = *(v12 + 16);
          *a3 = *v12;
          *(a3 + 16) = v18;
          v19 = *(v12 + 32);
          v20 = *(v12 + 48);
          v21 = *(v12 + 80);
          *(a3 + 64) = *(v12 + 64);
          *(a3 + 80) = v21;
          *(a3 + 32) = v19;
          *(a3 + 48) = v20;
          v22 = *(v12 + 96);
          v23 = *(v12 + 112);
          v24 = *(v12 + 128);
          *(a3 + 140) = *(v12 + 140);
          *(a3 + 112) = v23;
          *(a3 + 128) = v24;
          *(a3 + 96) = v22;
          v16 = v17;
        }

        v12 += 156;
        if (v12 - *v14 == 4056)
        {
          v25 = v14[1];
          ++v14;
          v12 = v25;
        }
      }

      while (v12 != v13);
    }

    if (qword_1025D4600 != -1)
    {
      sub_101B44984();
    }

    v26 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v27 = *v4;
      v28 = 134349312;
      v29 = v27;
      v30 = 2050;
      v31 = v16;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "CLReferenceLocations, size %{public}zu, found closest reference location with timestamp delta %{public}.1f", &v28, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B449C0(v4, v16);
    }
  }
}

uint64_t sub_10031BA04(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = a3;
  if (a2)
  {
    v6 = 100 * a1 / a2;
  }

  if (v6 >= 0x65)
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A1AC();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240960;
      v19 = v6;
      v20 = 1026;
      v21 = v5;
      v22 = 1026;
      v23 = a2;
      v24 = 1026;
      v25 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Invalid percentage: %{public}u. count: %{public}u, total: %{public}u, defaultPercentage: %{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v11[0] = 67240960;
      v11[1] = v6;
      v12 = 1026;
      v13 = v5;
      v14 = 1026;
      v15 = a2;
      v16 = 1026;
      v17 = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 17, "Invalid percentage: %{public}u. count: %{public}u, total: %{public}u, defaultPercentage: %{public}u", v11, 26);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 0, "uint32_t CL::Wifi1::Policies::PositionCalculation::percentage(uint32_t, uint32_t, uint32_t)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return v6;
}

uint64_t sub_10031BBF8(unsigned int a1)
{
  if (a1 <= 0x40)
  {
    v1 = 0;
  }

  else
  {
    v1 = 25;
  }

  if (a1 <= 0x44)
  {
    v2 = v1;
  }

  else
  {
    v2 = 50;
  }

  if (a1 <= 0x4E)
  {
    return v2;
  }

  else
  {
    return 75;
  }
}

__n128 sub_10031BC20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

BOOL sub_10031BC54(uint64_t a1, uint64_t a2)
{
  result = sub_100072814(a1);
  if (result)
  {
    v5 = *(a1 + 96);
    v6 = v5 > 0xB;
    v7 = (1 << v5) & 0xC02;
    v8 = v6 || v7 == 0;
    if (v8 || *(a1 + 20) > 30.0)
    {
      return 0;
    }

    else
    {
      result = sub_100072814(a2);
      if (result)
      {
        return vabdd_f64(*(a1 + 76), *(a2 + 76)) <= 1.25;
      }
    }
  }

  return result;
}

NSDictionary *sub_10031BCDC(uint64_t a1)
{
  v7[0] = @"aps";
  v8[0] = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v7[1] = @"alsAps";
  v8[1] = [NSNumber numberWithUnsignedInt:*(a1 + 60)];
  v7[2] = @"tileAps";
  v8[2] = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
  v7[3] = @"percentAlsAps";
  v8[3] = [NSNumber numberWithInt:*(a1 + 68)];
  v7[4] = @"percentTileAps";
  v8[4] = [NSNumber numberWithInt:*(a1 + 72)];
  v7[5] = @"age";
  v8[5] = [NSNumber numberWithDouble:*(a1 + 32)];
  v7[6] = @"pass";
  v8[6] = [NSString stringWithUTF8String:*(a1 + 40)];
  v7[7] = @"isWifiFixWithAssociatedAp";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 48) + 180) != 0];
  v7[8] = @"wifiFixType";
  sub_10000EC00(__p, (&off_10247D428)[*(*(a1 + 48) + 180)]);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v8[8] = [NSString stringWithUTF8String:v2];
  v7[9] = @"apsInScanGroup";
  v8[9] = [NSNumber numberWithUnsignedInt:*(a1 + 76)];
  v7[10] = @"apsWithLocationInScanGroup";
  v8[10] = [NSNumber numberWithUnsignedInt:*(a1 + 80)];
  v7[11] = @"apsWithoutLocationInScanGroup";
  v8[11] = [NSNumber numberWithUnsignedInt:*(a1 + 84)];
  v7[12] = @"percentApsWithLocationInScanGroup";
  v8[12] = [NSNumber numberWithUnsignedInt:*(a1 + 88)];
  v7[13] = @"percentApsWithoutLocationInScanGroup";
  v8[13] = [NSNumber numberWithUnsignedInt:*(a1 + 92)];
  v7[14] = @"percentApsInScanGroupUsedInLocation";
  v8[14] = [NSNumber numberWithUnsignedInt:*(a1 + 96)];
  v7[15] = @"percentApsWithLocationUsedInLocation";
  v8[15] = [NSNumber numberWithUnsignedInt:*(a1 + 100)];
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:16];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

NSDictionary *sub_10031BFA0(uint64_t a1)
{
  v4[0] = @"groupResult";
  v2 = [NSString stringWithUTF8String:*(a1 + 32)];
  v4[1] = @"numInGroup";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

NSDictionary *sub_10031C048(uint64_t a1)
{
  v3[0] = @"numAssociated";
  v4[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[1] = @"numUnassociated";
  v4[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[2] = @"numWifiFixesWithAssociatedAp";
  v4[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[3] = @"wsbPassType";
  v4[3] = [NSString stringWithUTF8String:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_10031C460(void *a1, uint64_t *a2, int a3)
{
  v5 = a1[801];
  if (v5)
  {
    memset(v68, 0, 24);
    sub_1000FA008(v68, *v5, *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *v5) >> 3));
    sub_100103020(&v68[1] + 8, v5 + 24);
    v6 = *(v5 + 64);
    *&v71[1] = *(v5 + 80);
    v71[0] = v6;
  }

  else
  {
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    v70 = 1065353216;
    LODWORD(v71[0]) = -1;
    memset(v71 + 4, 0, 20);
  }

  if (a3)
  {
    sub_1006E6C7C(&v68[1] + 1);
    v8 = *(&v68[0] + 1);
    v7 = *&v68[0];
    while (v8 != v7)
    {
      v8 -= 24;
      *buf = v8;
      sub_1000B96B4(buf);
    }

    *(&v68[0] + 1) = v7;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  v9 = *a2;
  if (a2[1] == *a2)
  {
    goto LABEL_67;
  }

  v10 = 0;
  v62 = 0;
  v63 = 0;
  v11 = 0;
  while (1)
  {
    v12 = a1[205];
    v13 = a1[206] - v12;
    if (v13)
    {
      if (0xD37A6F4DE9BD37A7 * (v13 >> 3) <= v10)
      {
        sub_10046F324();
      }

      if (*(v12 + 184 * v10 + 20) >= 0.0)
      {
        goto LABEL_39;
      }
    }

    v14 = (v9 + 24 * v10);
    if ((a3 & 1) == 0)
    {
      break;
    }

    v15 = a1[801];
    v16 = *v14;
    if (*(v15 + 68) != 2 || *(v16 + 56) > *(v15 + 80))
    {
      goto LABEL_24;
    }

    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*v14 + 56);
      v19 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      *buf = 134349312;
      *&buf[4] = v18;
      *&buf[12] = 2050;
      *&buf[14] = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "@WsbDiscard, unknown, %{public}.1f, aps, %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0A608(buf);
      v44 = *(*v14 + 56);
      v45 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      v72 = 134349312;
      *v73 = v44;
      *&v73[8] = 2050;
      *&v73[10] = v45;
      LODWORD(v61) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbDiscard, unknown, %{public}.1f, aps, %{public}ld", &v72, v61);
      v47 = v46;
      sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v46);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    ++v62;
LABEL_39:
    v9 = *a2;
    v10 = ++v11;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v11)
    {
      if (v62 > 0)
      {
        if (qword_1025D4630 != -1)
        {
          sub_101B0A5E0();
        }

        v48 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *&buf[4] = v62;
          _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, unknownaps, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B0A608(buf);
          v72 = 67240192;
          *v73 = v62;
          LODWORD(v61) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, groupresult, unknownaps, %{public}d", &v72, v61);
          v58 = v57;
          sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v57);
          if (v58 != buf)
          {
            free(v58);
          }
        }

        AnalyticsSendEventLazy();
      }

      if (v63 < 1)
      {
        if (v62 >= 1)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_101B0A5E0();
        }

        v49 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *&buf[4] = v63;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, alsmax, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B0A608(buf);
          v72 = 67240192;
          *v73 = v63;
          LODWORD(v61) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, groupresult, alsmax, %{public}d", &v72, v61);
          v60 = v59;
          sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v59);
          if (v60 != buf)
          {
            free(v60);
          }
        }

        AnalyticsSendEventLazy();
LABEL_66:
        AnalyticsSendEventLazy();
      }

LABEL_67:
      sub_10031D21C(v68, 0xAAAAAAAAAAAAAAABLL * ((*(&v68[0] + 1) - *&v68[0]) >> 3) - 0x5555555555555555 * ((v66 - v65) >> 3));
      v51 = v65;
      v50 = v66;
      while (v51 != v50)
      {
        sub_101052820(v68, v51);
        v51 += 24;
      }

      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v52 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(a1[801] + 80);
        *buf = 134349568;
        *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((*(&v68[0] + 1) - *&v68[0]) >> 3);
        *&buf[12] = 2050;
        *&buf[14] = v69;
        *&buf[22] = 2050;
        *&buf[24] = v53;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "@WsbReproc, update, groups, %{public}lu, unknownAPs, %{public}lu, deleteTo, %{public}0.1f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        v54 = *(a1[801] + 80);
        v72 = 134349568;
        *v73 = 0xAAAAAAAAAAAAAAABLL * ((*(&v68[0] + 1) - *&v68[0]) >> 3);
        *&v73[8] = 2050;
        *&v73[10] = v69;
        *&v73[18] = 2050;
        *&v73[20] = v54;
        LODWORD(v61) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbReproc, update, groups, %{public}lu, unknownAPs, %{public}lu, deleteTo, %{public}0.1f", &v72, v61);
        v56 = v55;
        sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v55);
        if (v56 != buf)
        {
          free(v56);
        }
      }

      sub_101052960();
    }
  }

  v16 = *v14;
LABEL_24:
  if (v69 + 0x2E8BA2E8BA2E8BA3 * ((v14[1] - v16) >> 3) <= dword_1026630B0)
  {
    v23 = v68[0];
    v24 = v65;
    v25 = v66;
    if (0xAAAAAAAAAAAAAAABLL * ((*(&v23 + 1) - v23) >> 3) - 0x5555555555555555 * ((v25 - v24) >> 3) >= *(sub_100316E68() + 2))
    {
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v28 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(sub_100316E68() + 2);
        v30 = *(*v14 + 56);
        v31 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
        *buf = 67240704;
        *&buf[4] = v29;
        *&buf[8] = 2050;
        *&buf[10] = v30;
        *&buf[18] = 2050;
        *&buf[20] = v31;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "@WsbDiscard, max %{public}d WSB gropus reached, %{public}.1f, aps, %{public}ld", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        v38 = qword_1025D4638;
        v39 = *(sub_100316E68() + 2);
        v40 = *(*v14 + 56);
        v41 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
        v72 = 67240704;
        *v73 = v39;
        *&v73[4] = 2050;
        *&v73[6] = v40;
        *&v73[14] = 2050;
        *&v73[16] = v41;
        LODWORD(v61) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v38, 0, "@WsbDiscard, max %{public}d WSB gropus reached, %{public}.1f, aps, %{public}ld", &v72, v61);
        v43 = v42;
        sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }
    }

    else
    {
      v26 = v66;
      if (v66 >= v67)
      {
        v27 = sub_10031861C(&v65, v14);
      }

      else
      {
        *v66 = 0;
        v26[1] = 0;
        v26[2] = 0;
        sub_100288650(v26, *v14, v14[1], 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3));
        v27 = (v26 + 3);
      }

      v66 = v27;
      v33 = *v14;
      v32 = v14[1];
      while (v33 != v32)
      {
        *buf = *v33;
        sub_100188540(&v68[1] + 1, buf, buf);
        v33 += 11;
      }
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v20 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*v14 + 56);
      v22 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      *buf = 134349312;
      *&buf[4] = v21;
      *&buf[12] = 2050;
      *&buf[14] = v22;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@WsbDiscard, alsmax, %{public}.1f, aps, %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0A608(buf);
      v34 = *(*v14 + 56);
      v35 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      v72 = 134349312;
      *v73 = v34;
      *&v73[8] = 2050;
      *&v73[10] = v35;
      LODWORD(v61) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbDiscard, alsmax, %{public}.1f, aps, %{public}ld", &v72, v61);
      v37 = v36;
      sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v36);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    ++v63;
  }

  goto LABEL_39;
}

void sub_10031D19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  a53 = &a34;
  sub_1000F8D88(&a53);
  sub_1010523F0(&a37);
  _Unwind_Resume(a1);
}

void **sub_10031D21C(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_100288820(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_10031D368(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[72] = 0;
  v4 = *(a1 + 6408);
  if (!*(v4 + 48))
  {
    return;
  }

  v5 = *(v4 + 68);
  if (v5 == 2)
  {
    return;
  }

  if (a2)
  {
    v7 = "WSB_Reprocess";
  }

  else
  {
    v7 = "WSB_Live";
  }

  if (a2)
  {
    v8 = 0;
    if (a2 != 1 || v5 != 1)
    {
      goto LABEL_23;
    }

LABEL_12:
    sub_100103020(v16, *(a1 + 6408) + 24);
    sub_10000EC00(v14, v7);
    v25[0] = 1;
    if (SHIBYTE(v15) < 0)
    {
      sub_100007244(v26, v14[0], v14[1]);
    }

    else
    {
      *v26 = *v14;
      *&v26[16] = v15;
    }

    sub_100BE182C(buf, v16, v25);
    sub_100BE15D4(a3, buf);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    sub_1004906DC(buf);
    if ((v26[23] & 0x80000000) != 0)
    {
      operator delete(*v26);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    sub_1004906DC(v16);
    v8 = 1;
    goto LABEL_23;
  }

  if ((sub_100103C94(a1 + 3312) & 1) != 0 && *(a1 + 1104) == 1)
  {
    goto LABEL_12;
  }

  v8 = 0;
LABEL_23:
  if (qword_1025D4630 != -1)
  {
    sub_101A188EC();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 6408) + 48);
    *buf = 67240706;
    v18 = v8;
    v19 = 2082;
    v20 = v7;
    v21 = 2050;
    v22 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WsbAls, query, %{public}d, %{public}s, unknown, %{public}ld", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A188A8(buf);
    v11 = *(*(a1 + 6408) + 48);
    v25[0] = 67240706;
    v25[1] = v8;
    *v26 = 2082;
    *&v26[2] = v7;
    *&v26[10] = 2050;
    *&v26[12] = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "WsbAls, query, %{public}d, %{public}s, unknown, %{public}ld", v25, 28);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "static std::optional<Decisions::AlsRequestForWsb> CL::Wifi1::Policies::AlsQuery::HandleEvent::shouldQueryForWsb(const Input &, Types::WsbPassType)", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }
}

__n128 sub_10031D6C8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 72) == a2[4].n128_u8[8])
  {
    if (*(a1 + 72))
    {
      sub_100BE1788(a1, a2);
      *(a1 + 40) = a2[2].n128_u32[2];
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = a2[4].n128_u64[0];
      *(a1 + 48) = result;
      a2[4].n128_u8[7] = 0;
      a2[3].n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    sub_1004906DC(a1);
    *(a1 + 72) = 0;
  }

  else
  {
    sub_10067DFB8(a1, a2);
    *(a1 + 40) = a2[2].n128_u32[2];
    result = a2[3];
    *(a1 + 64) = a2[4].n128_u64[0];
    *(a1 + 48) = result;
    a2[3].n128_u64[1] = 0;
    a2[4].n128_u64[0] = 0;
    a2[3].n128_u64[0] = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

uint64_t *sub_10031D97C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10031EC64(result, a4);
  }

  return result;
}

void sub_10031D9DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031DA64(uint64_t a1, uint64_t *a2)
{
  sub_10031DB74(a1, -1762037865 * ((a2[1] - *a2) >> 2));
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0;
    do
    {
      v7 = (*(a1 + 24) + v6);
      v8 = *(v4 + v6 + 16);
      *v7 = *(v4 + v6);
      v7[1] = v8;
      v9 = *(v4 + v6 + 32);
      v10 = *(v4 + v6 + 48);
      v11 = *(v4 + v6 + 80);
      v7[4] = *(v4 + v6 + 64);
      v7[5] = v11;
      v7[2] = v9;
      v7[3] = v10;
      v12 = *(v4 + v6 + 96);
      v13 = *(v4 + v6 + 112);
      v14 = *(v4 + v6 + 128);
      *(v7 + 140) = *(v4 + v6 + 140);
      v7[7] = v13;
      v7[8] = v14;
      v7[6] = v12;
      v6 += 156;
    }

    while (v4 + v6 != v5);
    if (a2[1] != *a2)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        memcpy((*(a1 + 32) + v16), &unk_101D12A20, 0x230uLL);
        v16 += 560;
        ++v15;
      }

      while (v15 < 0x6F96F96F96F96F97 * ((a2[1] - *a2) >> 2));
    }
  }

  return a1;
}

uint64_t sub_10031DB74(uint64_t a1, int a2)
{
  *a1 = a2;
  v3 = 156 * a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 560 * a2;
  *(a1 + 24) = malloc_type_malloc(v3, 0x76EA0A95uLL);
  *(a1 + 32) = malloc_type_malloc(*(a1 + 16), 0x729E2850uLL);
  *(a1 + 40) = dispatch_data_create(*(a1 + 24), *(a1 + 8), 0, _dispatch_data_destructor_free);
  *(a1 + 48) = dispatch_data_create(*(a1 + 32), *(a1 + 16), 0, _dispatch_data_destructor_free);
  return a1;
}

void *sub_10031DC10(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102467EF8;
  sub_10031DA64((a1 + 3), a2);
  return a1;
}

void sub_10031DC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 808);
  if (v3)
  {
    v5 = sub_10030D934(v3);
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        sub_10030E2C0(*(a2 + 808), i, v8);
        if (sub_100072814(v8))
        {
          sub_1001D9E2C(*(a1 + 64), v8);
        }
      }
    }
  }
}

void sub_10031DCEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 808);
  if (v3)
  {
    v5 = sub_10030D934(v3);
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        sub_10030E2C0(*(a2 + 808), i, v8);
        if (sub_100072814(v8))
        {
          sub_10054A680(a1, v8, 0);
        }
      }
    }
  }
}

uint64_t sub_10031DD70(uint64_t a1, int *a2)
{
  if (*(a1 + 1672) && (v4 = sub_10030D934(a2)) != 0)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    do
    {
      v7 |= [*(a1 + 1672) feedLocation:{v9, sub_10030E2C0(a2, v6++, v9).n128_f64[0]}];
    }

    while (v5 != v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

void sub_10031DE04(std::__shared_weak_count *a1, uint64_t a2, int a3)
{
  HIDWORD(v144) = a3;
  if (a1[255].__vftable >= 0x33)
  {
    shared_weak_owners = a1[254].__shared_weak_owners_;
    v5 = *(a1[253].__shared_weak_owners_ + 8 * (shared_weak_owners / 0x49));
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v6 = (v5 + 56 * (shared_weak_owners % 0x49));
    v7 = qword_1025D4608;
    v8 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v11 = v6[1];
      v10 = v6[2];
      v12 = v10 - v11;
      if (v10 == v11)
      {
        v13 = 0xBFF0000000000000;
        v14 = 0xBFF0000000000000;
      }

      else
      {
        v13 = *(v11 + 76);
        v14 = *(v10 - 80);
      }

      v15 = *v6;
      v16 = sub_10000B1F8(v8, v9);
      *buf = 0;
      v19 = sub_10001A6B0(v16, buf);
      if (v6[1] == v6[2])
      {
        v21 = -1.0;
      }

      else
      {
        v20 = sub_10000B1F8(v17, v18);
        *buf = 0;
        v21 = sub_10001A6B0(v20, buf) - *(v6[2] - 80);
      }

      v22 = sub_10000B1F8(v17, v18);
      *buf = 1;
      v23 = sub_10001A6B0(v22, buf);
      *buf = 134350592;
      *&buf[4] = v15;
      *&buf[12] = 2050;
      *&buf[14] = 0x6F96F96F96F96F97 * (v12 >> 2);
      *&buf[22] = 2050;
      *&buf[24] = v13;
      *v166 = 2050;
      *&v166[2] = v14;
      *&v166[10] = 2050;
      *&v166[12] = v19;
      *&v166[20] = 2050;
      *&v166[22] = v21;
      *&v166[30] = 2050;
      *&v166[32] = v23;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#WSB #Warning notifying WSB notification batch with MCT %{public}.3f size %{public}zu locations,start_cfat,%{public}.3f,end_cfat,%{public}.3f,now_cfat,%{public}.3f,last_sample_age_sec,%{public}.3f,now_mct,%{public}.3f", buf, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v27 = qword_1025D4608;
      v29 = v6[1];
      v28 = v6[2];
      v30 = *v6;
      v31 = v28 - v29;
      if (v28 == v29)
      {
        v32 = 0xBFF0000000000000;
        v33 = 0xBFF0000000000000;
      }

      else
      {
        v32 = *(v29 + 76);
        v33 = *(v28 - 80);
      }

      v36 = sub_1000281DC(v25, v26);
      if (v6[1] == v6[2])
      {
        v37 = -1.0;
      }

      else
      {
        v37 = sub_1000281DC(v34, v35) - *(v6[2] - 80);
      }

      v38 = sub_10002F470(v34, v35);
      *v150 = 134350592;
      *&v150[4] = v30;
      *&v150[12] = 2050;
      *&v150[14] = 0x6F96F96F96F96F97 * (v31 >> 2);
      v151 = 2050;
      v152 = v32;
      v153 = 2050;
      *v154 = v33;
      *&v154[8] = 2050;
      *&v154[10] = v36;
      *&v154[18] = 2050;
      *&v154[20] = v37;
      *&v154[28] = 2050;
      *&v154[30] = v38;
      LODWORD(v144) = 72;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v27, 0, "#WSB #Warning notifying WSB notification batch with MCT %{public}.3f size %{public}zu locations,start_cfat,%{public}.3f,end_cfat,%{public}.3f,now_cfat,%{public}.3f,last_sample_age_sec,%{public}.3f,now_mct,%{public}.3f", v150, v144);
      v40 = v39;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v39);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    sub_100021AFC(buf);
    v24 = *(v6 + 2);
    v170 = v6[6];
    v169 = v24;
    v149 = 0x6F96F96F96F96F97 * ((v6[2] - v6[1]) >> 2);
    sub_10067A74C();
  }

  v41 = 0;
  __src = 0;
  v147 = 0;
  v148 = 0;
  while (v41 < sub_10030D934(*(a2 + 808)))
  {
    sub_10030E2C0(*(a2 + 808), v41, buf);
    if (sub_100027FB4(buf))
    {
      *&buf[20] = round(*&buf[20] * 10.0) / 10.0 + 0.095014;
    }

    v43 = v147;
    if (v147 >= v148)
    {
      v52 = __src;
      v53 = v147 - __src;
      v54 = 0x6F96F96F96F96F97 * ((v147 - __src) >> 2);
      v55 = v54 + 1;
      if ((v54 + 1) > 0x1A41A41A41A41A4)
      {
        sub_10028C64C();
      }

      if (0xDF2DF2DF2DF2DF2ELL * ((v148 - __src) >> 2) > v55)
      {
        v55 = 0xDF2DF2DF2DF2DF2ELL * ((v148 - __src) >> 2);
      }

      if ((0x6F96F96F96F96F97 * ((v148 - __src) >> 2)) >= 0xD20D20D20D20D2)
      {
        v55 = 0x1A41A41A41A41A4;
      }

      if (v55)
      {
        sub_100238948(&__src, v55);
      }

      v56 = (4 * ((v147 - __src) >> 2));
      v57 = *&buf[16];
      *v56 = *buf;
      v56[1] = v57;
      v58 = *v166;
      v59 = *&v166[16];
      v60 = *v167;
      v56[4] = *&v166[32];
      v56[5] = v60;
      v56[2] = v58;
      v56[3] = v59;
      v61 = *&v167[16];
      v62 = *&v167[32];
      v63 = v168[0];
      *(v56 + 140) = *(v168 + 12);
      v56[7] = v62;
      v56[8] = v63;
      v56[6] = v61;
      v51 = (156 * v54 + 156);
      v64 = v56 - v53;
      memcpy(v56 - v53, v52, v53);
      v65 = __src;
      __src = v64;
      v147 = v51;
      v148 = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    else
    {
      v44 = *&buf[16];
      *v147 = *buf;
      *(v43 + 1) = v44;
      v45 = *v166;
      v46 = *&v166[16];
      v47 = *v167;
      *(v43 + 4) = *&v166[32];
      *(v43 + 5) = v47;
      *(v43 + 2) = v45;
      *(v43 + 3) = v46;
      v48 = *&v167[16];
      v49 = *&v167[32];
      v50 = v168[0];
      *(v43 + 140) = *(v168 + 12);
      *(v43 + 7) = v49;
      *(v43 + 8) = v50;
      *(v43 + 6) = v48;
      v51 = (v43 + 156);
    }

    v147 = v51;
    ++v41;
  }

  v66 = 126 - 2 * __clz(0x6F96F96F96F96F97 * ((v147 - __src) >> 2));
  if (v147 == __src)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  sub_1005317F8(__src, v147, v67, 1, v42);
  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v68 = qword_1025D4608;
  v69 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT);
  if (v69)
  {
    if (v147 == __src)
    {
      v71 = 0xBFF0000000000000;
      v72 = 0xBFF0000000000000;
    }

    else
    {
      v71 = *(__src + 76);
      v72 = *(v147 - 10);
    }

    v73 = sub_10000B1F8(v69, v70);
    *v150 = 0;
    v74 = sub_10001A6B0(v73, v150);
    v77 = sub_10000B1F8(v75, v76);
    *v150 = 1;
    v80 = sub_10001A6B0(v77, v150);
    v81 = -1.0;
    v82 = -1.0;
    if (__src != v147)
    {
      v83 = sub_10000B1F8(v78, v79);
      *v150 = 0;
      v82 = sub_10001A6B0(v83, v150) - *(v147 - 10);
    }

    if ((a1[71].__shared_owners_ & 1) == 0 && *&a1[71].__shared_weak_owners_ > 0.0)
    {
      v84 = sub_10000B1F8(v78, v79);
      *v150 = 0;
      v81 = sub_10001A6B0(v84, v150) - *&a1[71].__shared_weak_owners_;
    }

    *buf = 134350848;
    *&buf[4] = 0x6F96F96F96F96F97 * ((v147 - __src) >> 2);
    *&buf[12] = 2050;
    *&buf[14] = v71;
    *&buf[22] = 2050;
    *&buf[24] = v72;
    *v166 = 1026;
    *&v166[2] = HIDWORD(v144);
    *&v166[6] = 2050;
    *&v166[8] = v74;
    *&v166[16] = 2050;
    *&v166[18] = v80;
    *&v166[26] = 2050;
    *&v166[28] = v82;
    *&v166[36] = 2050;
    *&v166[38] = v81;
    _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "#WSB,got batch of %{public}zu WSB locations,start_cfat,%{public}.3f,end_cfat,%{public}.3f,hasDerivedSpeed,%{public}d,receipt_cfat,%{public}.3f,receipt_mct,%{public}.3f,last_sample_age_sec,%{public}.3f,sec_since_wake,%{public}.3f", buf, 0x4Eu);
  }

  v85 = sub_10000A100(121, 2);
  if (v85)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    if (v147 == __src)
    {
      v131 = 0xBFF0000000000000;
      v132 = 0xBFF0000000000000;
    }

    else
    {
      v131 = *(__src + 76);
      v132 = *(v147 - 10);
    }

    v133 = qword_1025D4608;
    v134 = sub_1000281DC(v129, v130);
    v139 = sub_10002F470(v135, v136);
    v140 = -1.0;
    v141 = -1.0;
    if (__src != v147)
    {
      v141 = sub_1000281DC(v137, v138) - *(v147 - 10);
    }

    if ((a1[71].__shared_owners_ & 1) == 0 && *&a1[71].__shared_weak_owners_ > 0.0)
    {
      v140 = sub_1000281DC(v137, v138) - *&a1[71].__shared_weak_owners_;
    }

    *v150 = 134350848;
    *&v150[4] = 0x6F96F96F96F96F97 * ((v147 - __src) >> 2);
    *&v150[12] = 2050;
    *&v150[14] = v131;
    v151 = 2050;
    v152 = v132;
    v153 = 1026;
    *v154 = HIDWORD(v144);
    *&v154[4] = 2050;
    *&v154[6] = v134;
    *&v154[14] = 2050;
    *&v154[16] = v139;
    *&v154[24] = 2050;
    *&v154[26] = v141;
    *&v154[34] = 2050;
    *&v154[36] = v140;
    LODWORD(v144) = 78;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v133, 0, "#WSB,got batch of %{public}zu WSB locations,start_cfat,%{public}.3f,end_cfat,%{public}.3f,hasDerivedSpeed,%{public}d,receipt_cfat,%{public}.3f,receipt_mct,%{public}.3f,last_sample_age_sec,%{public}.3f,sec_since_wake,%{public}.3f", v150, v144);
    v143 = v142;
    v85 = sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v142);
    if (v143 != buf)
    {
      free(v143);
    }
  }

  v87 = __src;
  if (__src != v147)
  {
    do
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F97D0();
      }

      v88 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v89 = *(v87 + 4);
        v90 = *(v87 + 12);
        v91 = *(v87 + 20);
        v92 = *(v87 + 44);
        v93 = *(v87 + 60);
        v94 = *(v87 + 24);
        v95 = *(v87 + 28);
        v96 = *(v87 + 36);
        v97 = *(v87 + 18);
        v98 = *(v87 + 52);
        v99 = *(v87 + 68);
        v100 = *(v87 + 35);
        v101 = *(v87 + 76);
        *buf = 134548737;
        *&buf[4] = v89;
        *&buf[12] = 2053;
        *&buf[14] = v90;
        *&buf[22] = 2050;
        *&buf[24] = v91;
        *v166 = 2049;
        *&v166[2] = v92;
        *&v166[10] = 2049;
        *&v166[12] = v93;
        *&v166[20] = 1026;
        *&v166[22] = v94;
        *&v166[26] = 2049;
        *&v166[28] = v95;
        *&v166[36] = 2050;
        *&v166[38] = v96;
        *&v166[46] = 2049;
        *v167 = v97;
        *&v167[8] = 2050;
        *&v167[10] = v98;
        *&v167[18] = 2050;
        *&v167[20] = v99;
        *&v167[28] = 1025;
        *&v167[30] = v100;
        *&v167[34] = 2050;
        *&v167[36] = v101;
        _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_DEFAULT, "@ClxWsb, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, signalEnv, %{private}d, timestamp, %{public}.3f", buf, 0x7Cu);
      }

      v85 = sub_10000A100(121, 2);
      if (v85)
      {
        sub_1018F97F8(buf);
        v102 = *(v87 + 4);
        v103 = *(v87 + 12);
        v104 = *(v87 + 20);
        v105 = *(v87 + 44);
        v106 = *(v87 + 60);
        v107 = *(v87 + 24);
        v108 = *(v87 + 28);
        v109 = *(v87 + 36);
        v110 = *(v87 + 18);
        v111 = *(v87 + 52);
        v112 = *(v87 + 68);
        v113 = *(v87 + 35);
        v114 = *(v87 + 76);
        *v150 = 134548737;
        *&v150[4] = v102;
        *&v150[12] = 2053;
        *&v150[14] = v103;
        v151 = 2050;
        v152 = v104;
        v153 = 2049;
        *v154 = v105;
        *&v154[8] = 2049;
        *&v154[10] = v106;
        *&v154[18] = 1026;
        *&v154[20] = v107;
        *&v154[24] = 2049;
        *&v154[26] = v108;
        *&v154[34] = 2050;
        *&v154[36] = v109;
        v155 = 2049;
        v156 = v110;
        v157 = 2050;
        v158 = v111;
        v159 = 2050;
        v160 = v112;
        v161 = 1025;
        v162 = v113;
        v163 = 2050;
        v164 = v114;
        LODWORD(v144) = 124;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@ClxWsb, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, signalEnv, %{private}d, timestamp, %{public}.3f", v150, v144);
        v116 = v115;
        v85 = sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v115);
        if (v116 != buf)
        {
          free(v116);
        }
      }

      v87 = (v87 + 156);
    }

    while (v87 != v147);
  }

  if (HIBYTE(a1[28].__vftable))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v117 = qword_1025D4608;
    v118 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
    if (v118)
    {
      v120 = sub_10000B1F8(v118, v119);
      *v150 = 1;
      v121 = sub_10001A6B0(v120, v150);
      *buf = 134349056;
      *&buf[4] = v121;
      _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_INFO, "#WSB,location simulation is active,dropping WSB notification,receipt_mct,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v122 = qword_1025D4608;
      v125 = sub_10002F470(v123, v124);
      *v150 = 134349056;
      *&v150[4] = v125;
      LODWORD(v144) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v122, 1, "#WSB,location simulation is active,dropping WSB notification,receipt_mct,%{public}.3f", v150, v144);
      v127 = v126;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v126);
      if (v127 != buf)
      {
        free(v127);
      }
    }
  }

  else
  {
    v128 = sub_10000B1F8(v85, v86);
    *v150 = 1;
    *buf = sub_10001A6B0(v128, v150);
    memset(&buf[8], 0, 24);
    sub_10031D97C(&buf[8], __src, v147, 0x6F96F96F96F96F97 * ((v147 - __src) >> 2));
    *&v166[16] = *(a2 + 952);
    *v166 = *(a2 + 936);
    sub_10031ECB4(&a1[253].__shared_owners_, buf);
    if (*&buf[8])
    {
      *&buf[16] = *&buf[8];
      operator delete(*&buf[8]);
    }
  }

  if (__src)
  {
    v147 = __src;
    operator delete(__src);
  }
}

void sub_10031EBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031EC64(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1A41A41A41A41A5)
  {
    sub_100238948(a1, a2);
  }

  sub_10028C64C();
}

__n128 sub_10031ECB4(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 73 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10067A7C0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0x49)) + 56 * (v7 % 0x49));
  v8->n128_u64[0] = *a2;
  v8[1].n128_u64[0] = 0;
  v8[1].n128_u64[1] = 0;
  v8->n128_u64[1] = 0;
  sub_10031D97C(&v8->n128_i64[1], *(a2 + 8), *(a2 + 16), 0x6F96F96F96F96F97 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  result = *(a2 + 32);
  v8[3].n128_u64[0] = *(a2 + 48);
  v8[2] = result;
  ++a1[5];
  return result;
}

uint64_t sub_10031EDAC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 2884) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v9 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#Error,Feed setWiFiLocationBatched,LC Fusion is not configured.", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101A7B5F4(buf);
    LOWORD(v88) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,Feed setWiFiLocationBatched,LC Fusion is not configured.", &v88, 2);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
LABEL_44:
    if (v12 != buf)
    {
      free(v12);
    }

    return 0;
  }

  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1, a2);
  }

  v4 = *(a2 + 808);
  if (!v4)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,batch location data is nullptr,nothing to process.", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101A7B5F4(buf);
    LOWORD(v88) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,setWiFiLocationBatched,batch location data is nullptr,nothing to process.", &v88, 2);
    v12 = v14;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v14);
    goto LABEL_44;
  }

  *&v5 = COERCE_DOUBLE(sub_10030D934(v4));
  if (*&v5 != 0.0)
  {
    *(a1 + 2754) = 0;
    *(a1 + 2872) = 0;
    v6 = *(a1 + 2792);
    if (v6 && v6[1] == 1 && (*v6 & 1) != 0)
    {
      v7 = 0;
      v8 = -1.0;
    }

    else
    {
      v8 = -1.0;
      if ((*(a1 + 2904) & 1) != 0 || (v15 = *(a1 + 208), v18 = *v15, v16 = v15 + 1, v17 = v18, v18 == v16))
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          if ((*(v17 + 8) - 6) >= 3)
          {
            v19 = v17[5];
            if (v19)
            {
              v20 = *(v19 + 8);
              if (v20)
              {
                if (*(v20 + 16) > v8)
                {
                  v7 = *(v17 + 8);
                  v8 = *(v20 + 16);
                }
              }
            }
          }

          v21 = v17[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v17[2];
              v23 = *v22 == v17;
              v17 = v22;
            }

            while (!v23);
          }

          v17 = v22;
        }

        while (v22 != v16);
      }
    }

    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v26 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 2904);
      buf[0] = 134349824;
      *&buf[1] = v5;
      v99 = 1026;
      *v100 = v7;
      *&v100[4] = 2050;
      *&v100[6] = v8;
      *&v100[14] = 1026;
      *&v100[16] = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,received batch of wsb locations,size,%{public}zu,lastNonCellLocationType,%{public}d,lastNonCellLocationFixMCT,%{public}.3f,APwakeup buffer processing mode,%{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v64 = *(a1 + 2904);
      v88 = 134349824;
      v89 = *&v5;
      v90 = 1026;
      v91 = v7;
      v92 = 2050;
      v93 = v8;
      v94 = 1026;
      v95 = v64;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,setWiFiLocationBatched,received batch of wsb locations,size,%{public}zu,lastNonCellLocationType,%{public}d,lastNonCellLocationFixMCT,%{public}.3f,APwakeup buffer processing mode,%{public}d", &v88, 34);
      v66 = v65;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v65);
      if (v66 != buf)
      {
        free(v66);
      }
    }

    v28 = 0;
    while (1)
    {
      sub_10030E2C0(*(a2 + 808), v28, v70);
      if (sub_100208064(v29, v76))
      {
        if (v73 > 0.0 && !sub_10002807C(v71, v72))
        {
          break;
        }
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v30 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 134349056;
        *&buf[1] = v75;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,invalid wsb location is skipped,wsb_location_iosTime,%{public}.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v88 = 134349056;
        v89 = v75;
        LODWORD(v67) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,setWiFiLocationBatched,invalid wsb location is skipped,wsb_location_iosTime,%{public}.3f", &v88, v67);
        v63 = v62;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v62);
        if (v63 != buf)
        {
          free(v63);
        }
      }

LABEL_62:
      if (v5 == ++v28)
      {
        return 1;
      }
    }

    sub_10030D6E4(*(a2 + 808), v28, &v88);
    v33 = v96;
    v69 = v96;
    if (v96 > 0.000001)
    {
      v34 = sub_10000B1F8(v31, v32);
      buf[0] = 1;
      if (v33 <= sub_10001A6B0(v34, buf))
      {
        goto LABEL_69;
      }
    }

    if (v75 <= 0.000001)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v39 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,skipped wsb location with no valid timestamps", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_109;
      }

      sub_101A7B5F4(buf);
      *__p = 0;
      LODWORD(v67) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,setWiFiLocationBatched,skipped wsb location with no valid timestamps", __p, v67);
      v41 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v40);
    }

    else
    {
      v35 = sub_10000B1F8(v31, v32);
      sub_10000AED4(v35, __p);
      *v86 = 0;
      v31 = sub_100125300(__p, v86);
      if (v31)
      {
        v69 = v75 - *v86;
LABEL_69:
        v36 = sub_10000B1F8(v31, v32);
        buf[0] = 1;
        v37 = sub_10001A6B0(v36, buf);
        if (v69 > 0.0 && v69 <= v37)
        {
          if (*(&v74 + 1) > 0.0)
          {
            if (*(&v74 + 1) > 300.0 || *&v74 < -500.0 || *&v74 > 5100.0)
            {
              v74 = xmmword_101C76220;
            }

            else
            {
              v38 = &v74 + 1;
              if (*(&v74 + 1) < 1.0)
              {
                v38 = &unk_101CFC6E0;
              }

              *(&v74 + 1) = *v38;
            }
          }

          sub_1001FCD94();
        }

        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v42 = qword_1025D4778;
        v43 = os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG);
        if (v43)
        {
          v45 = sub_10000B1F8(v43, v44);
          buf[0] = 0;
          v46 = sub_10001A6B0(v45, buf);
          v47 = v69;
          v48 = v75;
          sub_1001D78F4(__p);
          v49 = __p;
          if (v80 < 0)
          {
            v49 = *__p;
          }

          buf[0] = 134350083;
          *&buf[1] = v37;
          v99 = 2050;
          *v100 = v46;
          *&v100[8] = 2050;
          *&v100[10] = v47;
          *&v100[18] = 2050;
          v101 = v48;
          v102 = 2085;
          v103 = v49;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,detected invalid WSB mach continuous time,likely user changed device time,ignoring wsb sample,timeNowMCT,%{public}.3f,timeNowCFAT,%{public}.3f,wsbMCT,%{public}.3f,wsbCFAT,%{public}.3f,wsbLoc,%{sensitive}s", buf, 0x34u);
          if (SHIBYTE(v80) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_109;
        }

        sub_101A7B5F4(buf);
        v50 = qword_1025D4778;
        v53 = sub_1000281DC(v51, v52);
        v54 = v69;
        v55 = v75;
        sub_1001D78F4(v86);
        v56 = v86;
        if (v87 < 0)
        {
          v56 = *v86;
        }

        *__p = 134350083;
        *&__p[4] = v37;
        v78 = 2050;
        v79 = v53;
        v80 = 2050;
        v81 = v54;
        v82 = 2050;
        v83 = v55;
        v84 = 2085;
        v85 = v56;
        LODWORD(v67) = 52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v50, 2, "#fusion,setWiFiLocationBatched,detected invalid WSB mach continuous time,likely user changed device time,ignoring wsb sample,timeNowMCT,%{public}.3f,timeNowCFAT,%{public}.3f,wsbMCT,%{public}.3f,wsbCFAT,%{public}.3f,wsbLoc,%{sensitive}s", __p, v67);
        v58 = v57;
        if (v87 < 0)
        {
          operator delete(*v86);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v58);
        if (v58 == buf)
        {
          goto LABEL_109;
        }

        v59 = v58;
        goto LABEL_106;
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v60 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,cannot compute fMachContinuousToCFAbsoluteOffset_s,ignoring wsb sample", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_109;
      }

      sub_101A7B5F4(buf);
      LOWORD(v68) = 0;
      LODWORD(v67) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,setWiFiLocationBatched,cannot compute fMachContinuousToCFAbsoluteOffset_s,ignoring wsb sample", &v68, v67);
      v41 = v61;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v61);
    }

    if (v41 == buf)
    {
      goto LABEL_109;
    }

    v59 = v41;
LABEL_106:
    free(v59);
LABEL_109:
    if (v97)
    {
      sub_100008080(v97);
    }

    goto LABEL_62;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v24 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,has no location data,nothing to process.", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    LOWORD(v88) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,setWiFiLocationBatched,has no location data,nothing to process.", &v88, 2);
    v12 = v25;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v25);
    goto LABEL_44;
  }

  return result;
}

void sub_100320654(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

double sub_10032066C(uint64_t a1)
{
  *a1 = &off_10246D800;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t sub_10032069C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_46;
      }

      if (v7 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
LABEL_54:
        if (v13 >= v9 || (v29 = *v13, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v29;
          v30 = v13 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 52) |= 8u;
        if (v30 < v9 && *v30 == 40)
        {
          v10 = v30 + 1;
          *(this + 1) = v10;
LABEL_62:
          if (v10 >= v9 || (v31 = *v10, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            v32 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 40) = v31;
            v32 = v10 + 1;
            *(this + 1) = v32;
          }

          *(a1 + 52) |= 0x10u;
          if (v32 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v7 == 5 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_62;
        }

LABEL_21:
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

    if (v7 != 1)
    {
      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_38;
    }

    if (v8 != 2)
    {
      goto LABEL_21;
    }

    *(a1 + 52) |= 1u;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v33 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33))
      {
        return 0;
      }
    }

    else
    {
      v33 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33);
    if (!sub_100320A44(v14, this, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
    }

    v23 = *(this + 1);
    v9 = *(this + 2);
    if (v23 < v9 && *v23 == 16)
    {
      v11 = v23 + 1;
      *(this + 1) = v11;
LABEL_38:
      if (v11 >= v9 || (v24 = *v11, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v25 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v24;
        v25 = v11 + 1;
        *(this + 1) = v25;
      }

      *(a1 + 52) |= 2u;
      if (v25 < v9 && *v25 == 24)
      {
        v12 = v25 + 1;
        *(this + 1) = v12;
LABEL_46:
        if (v12 >= v9 || (v27 = *v12, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v28 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v27;
          v28 = v12 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 52) |= 4u;
        if (v28 < v9 && *v28 == 32)
        {
          v13 = v28 + 1;
          *(this + 1) = v13;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t sub_100320A44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_67;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_75;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v40 = 0;
        v14 = *(this + 1);
        v13 = *(this + 2);
        if (v14 >= v13 || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
          if (!result)
          {
            return result;
          }

          v15 = v40;
          v16 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          v16 = v14 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 16) = v15 != 0;
        v18 = *(a1 + 48) | 1;
        *(a1 + 48) = v18;
        if (v16 < v13 && *v16 == 18)
        {
          *(this + 1) = v16 + 1;
          goto LABEL_35;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 == 3 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_49;
      }

LABEL_26:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_26;
    }

    v18 = *(a1 + 48);
LABEL_35:
    *(a1 + 48) = v18 | 2;
    v21 = *(a1 + 8);
    if (!v21)
    {
      operator new();
    }

    v41 = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v22;
      *(this + 1) = v22 + 1;
    }

    v23 = *(this + 14);
    v24 = *(this + 15);
    *(this + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
    if (!sub_10012C044(v21, this, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
    v27 = *(this + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(this + 14) = v29;
    }

    v30 = *(this + 1);
    v9 = *(this + 2);
    if (v30 < v9 && *v30 == 24)
    {
      v10 = v30 + 1;
      *(this + 1) = v10;
LABEL_49:
      v39 = 0;
      if (v10 >= v9 || (v31 = *v10, (v31 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
        if (!result)
        {
          return result;
        }

        v31 = v39;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v31 <= 6)
      {
        *(a1 + 48) |= 4u;
        *(a1 + 20) = v31;
      }

      v32 = *(this + 1);
      v11 = *(this + 2);
      if (v32 < v11 && *v32 == 32)
      {
        v17 = v32 + 1;
        *(this + 1) = v17;
LABEL_59:
        if (v17 >= v11 || (v33 = *v17, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v33;
          v34 = v17 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 48) |= 8u;
        if (v34 < v11 && *v34 == 40)
        {
          v19 = v34 + 1;
          *(this + 1) = v19;
LABEL_67:
          if (v19 >= v11 || (v35 = *v19, v35 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v36 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v35;
            v36 = v19 + 1;
            *(this + 1) = v36;
          }

          *(a1 + 48) |= 0x10u;
          if (v36 < v11 && *v36 == 48)
          {
            v12 = v36 + 1;
            *(this + 1) = v12;
LABEL_75:
            if (v12 >= v11 || (v37 = *v12, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v38 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v37;
              v38 = v12 + 1;
              *(this + 1) = v38;
            }

            *(a1 + 48) |= 0x20u;
            if (v38 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100320E88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    *a2 = *(result + 16);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(result + 8);
  if (!v5)
  {
    v5 = *(qword_102637240 + 8);
  }

  result = sub_100321150(v5, a2 + 8);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = sub_1003211AC(*(v3 + 20));
  *(a2 + 40) = result;
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 44) = *(v3 + 40);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(a2 + 48) = *(v3 + 24);
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(a2 + 56) = *(v3 + 32);
  return result;
}

uint64_t sub_100320F38(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  v5 = *(result + 52);
  if (v5)
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102637248 + 8);
    }

    result = sub_100320E88(v6, a2);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  *a3 = *(v4 + 16);
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_4:
  a3[1] = *(v4 + 24);
  return result;
}

void sub_100320FA8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*(*a2 + 216) & 0x80) != 0)
  {
    LOBYTE(buf) = 0;
    *(&buf + 1) = 0;
    LODWORD(v15) = -1082130432;
    BYTE4(v15) = 0;
    DWORD2(v15) = 0;
    v16 = 0xFFFFFFFFFFFFFFFFLL;
    v17 = 0uLL;
    v13 = 0uLL;
    v5 = *(v2 + 56);
    if (!v5)
    {
      v5 = *(qword_102637FA0 + 56);
    }

    sub_100320F38(v5, &buf, &v13);
    v6 = *(a1 + 2168);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v8 = buf;
    v9 = v15;
    v10 = v16;
    v11 = v17;
    block[2] = sub_100321A28;
    block[3] = &unk_1024FC618;
    block[4] = a1;
    v12 = v13;
    dispatch_async(v6, block);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleTimeTransferIndication";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#warning,#tt,no_data,%s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101771108();
    }
  }
}

uint64_t sub_100321150(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 12) = *(result + 20);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 24) = *(result + 24);
    return result;
  }

LABEL_10:
  *(a2 + 16) = *(result + 64);
  if ((*(result + 72) & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1003211AC(void *a1)
{
  result = (a1 - 1);
  if (result >= 6)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101621394();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::TimeQuality", v5, 8u);
    }

    v4 = sub_10000A100(121, 0);
    result = 0;
    if (v4)
    {
      sub_1016213A8(a1);
      return 0;
    }
  }

  return result;
}

void sub_100321298(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003212D0(a1);

  operator delete();
}

void sub_1003212D0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_10246D800;
  if (qword_102637248 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10032135C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100321394(a1);

  operator delete();
}

void sub_100321394(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_10246D788;
  if (qword_102637240 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100321420(uint64_t a1, uint64_t a2, void **a3)
{
  if (*a3 && a3[1] > *a3)
  {
    sub_1003218A4(a1, a2, a3, &v25);
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v6 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
LABEL_20:
      if (!sub_10000A100(121, 2))
      {
LABEL_21:
        sub_100321BE0(a1, a2);
        *v52 = v27;
        *&v52[16] = v28;
        *&v52[32] = v29;
        *buf = v25;
        *&buf[16] = v26;
        sub_1003220E0(a1, buf);
        if (*a2 == 1)
        {
          v15 = *(a1 + 2904);
          if (v15)
          {
            sub_100322B84(v15, *(a2 + 8), *a3, a3[1], *(a2 + 16));
          }
        }

        sub_100173FA0(a1, 0x1Cu);
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v16 = qword_1025D4658;
      v17 = sub_100322924(&v25);
      if (*(&v25 + 2) >= 1.0e11)
      {
        if (*(&v25 + 2) <= 0.0)
        {
          v18 = 0;
          goto LABEL_35;
        }
      }

      else
      {
        v18 = 0;
        if (*(&v25 + 2) <= 0.0 || !v25)
        {
LABEL_35:
          v19 = *(a2 + 16);
          v20 = *a3;
          v21 = a3[1];
          v30[0] = 67111680;
          v30[1] = v17;
          v31 = 1024;
          v32 = v18;
          v33 = 1024;
          v34 = BYTE12(v25);
          v35 = 2048;
          v36 = v25;
          v37 = 2048;
          v38 = 604800000000000 * dword_102655D48;
          v39 = 2048;
          v40 = *(&v25 + 2);
          v41 = 2048;
          v42 = v19;
          v43 = 2048;
          v44 = v27;
          v45 = 1024;
          v46 = v29;
          v47 = 2048;
          v48 = v20;
          v49 = 2048;
          v50 = v21;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v16, 2, "#tt,pulseTimeValid,%d,fTimeValid,%d,LeapValid,%d,GPSNs,%llu,%llu,uncNs,%.1f,uncNsTT,%.1f,fBias,%lld,fSource,%d,before,%llu,after,%llu", v30, 96, v24, v25, *(&v25 + 1), *&v26, *(&v26 + 1), v27, DWORD2(v27), v28, *(&v28 + 1));
          v23 = v22;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handleTimeTransferData(const gnss::TimeTransferData &, const GNSS::TimeMark &)", "%s\n", v22);
          if (v23 != buf)
          {
            free(v23);
          }

          goto LABEL_21;
        }
      }

      v18 = *(&v26 + 1) != -1;
      goto LABEL_35;
    }

    v7 = sub_100322924(&v25);
    if (*(&v25 + 2) >= 1.0e11)
    {
      if (*(&v25 + 2) <= 0.0)
      {
        v8 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
      if (*(&v25 + 2) <= 0.0 || !v25)
      {
        goto LABEL_19;
      }
    }

    v8 = *(&v26 + 1) != -1;
LABEL_19:
    v12 = *(a2 + 16);
    v13 = *a3;
    v14 = a3[1];
    *buf = 67111680;
    *&buf[4] = v7;
    *&buf[8] = 1024;
    *&buf[10] = v8;
    *&buf[14] = 1024;
    *&buf[16] = BYTE12(v25);
    *&buf[20] = 2048;
    *&buf[22] = v25;
    *&buf[30] = 2048;
    *v52 = 604800000000000 * dword_102655D48;
    *&v52[8] = 2048;
    *&v52[10] = *(&v25 + 2);
    *&v52[18] = 2048;
    *&v52[20] = v12;
    *&v52[28] = 2048;
    *&v52[30] = v27;
    *&v52[38] = 1024;
    v53 = v29;
    v54 = 2048;
    v55 = v13;
    v56 = 2048;
    v57 = v14;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#tt,pulseTimeValid,%d,fTimeValid,%d,LeapValid,%d,GPSNs,%llu,%llu,uncNs,%.1f,uncNsTT,%.1f,fBias,%lld,fSource,%d,before,%llu,after,%llu", buf, 0x60u);
    goto LABEL_20;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    v11 = a3[1];
    *buf = 134349312;
    *&buf[4] = v10;
    *&buf[12] = 2050;
    *&buf[14] = v11;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#tt,#Warning,invalid ttPulseMark,before,%{public}llu,after,%{public}llu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017768D8();
  }
}

void sub_1003218A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = -1082130432;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = xmmword_101DABC40;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 40) = 0;
  *(a4 + 64) = 0;
  if (*a2)
  {
    *a4 = *(a2 + 8);
    v8 = sub_1000080EC(a3[1] - *a3) * 1000000000.0 + 1000000.0 + *(a2 + 16);
    *(a4 + 8) = v8;
    *(a4 + 12) = *(a1 + 1720);
    *(a4 + 16) = sub_10029E3E8();
    *(a4 + 24) = *(a2 + 32);
    *(a4 + 32) = 0;
    *(a4 + 48) = *a3;
    *(a4 + 64) = sub_100321A3C((a1 + 1864), a4);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 68289026;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#tt,InvalidGpsWeek}", v10, 0x12u);
    }
  }
}

uint64_t sub_100321A3C(float *a1, float *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A3A9C4();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = *a2;
    v7 = *a1;
    v8 = (*a2 - *a1) * 0.000001;
    v9 = a2[2];
    v12[0] = 67110144;
    v12[1] = v5;
    v13 = 2050;
    v14 = v6;
    v15 = 2050;
    v16 = v7;
    v17 = 2050;
    v18 = v8;
    v19 = 2050;
    v20 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#tt,posvalid,%d,ttTimeNs,%{public}llu,epochTimeNs,%{public}llu,diffMs,%{public}.2f,ttUncNs,%{public}.2f", v12, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A3AB3C(a1, a2);
  }

  if (*(a1 + 48) != 1 || *a2 <= *a1 || (*a2 - *a1) > 2999999999)
  {
    return 0;
  }

  v10 = a2[2];
  if (v10 < 2000000.0 && (~*(a1 + 34) & 3) == 0)
  {
    return 2;
  }

  return v10 < 10000000.0;
}

void sub_100321BE0(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a1 + 2904) && *(a1 + 2928) == 1 && *(a1 + 1672) && *a2 == 1 && *(a2 + 6))
  {
    *(a1 + 2864) = *(a2 + 1);
    *(a1 + 2872) = *(a2 + 4);
    *(a1 + 2816) = sub_10012BF30();
    *(a1 + 2880) = sub_10029E3E8();
    v4 = *(a2 + 6);
    *(a1 + 2824) = v4 / 0xF4240;
    v5 = -((v4 / 0xF4240) - v4 * 0.000001);
    *(a1 + 2832) = v5;
    v6 = *(a2 + 7) * 0.000001;
    *(a1 + 2836) = v6;
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 2816);
      v9 = *(a2 + 6);
      v10 = *(a1 + 2824);
      v11 = *(a1 + 2832);
      v12 = *(a1 + 2836);
      *buf = 134219008;
      *v48 = v8;
      *&v48[8] = 2048;
      v49 = v9;
      *v50 = 2048;
      *&v50[2] = v10;
      v51 = 2048;
      v52 = v11;
      v53 = 2048;
      v54 = v12;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#tt,baseband TFT data,mct,%.1f,bbNs,%llu,bbIntegerMs,%llu,bbSubMs,%.3f,bbUncMs,%.6f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v32 = *(a1 + 2816);
      v33 = *(a2 + 6);
      v34 = *(a1 + 2824);
      v35 = *(a1 + 2832);
      v36 = *(a1 + 2836);
      v39 = 134219008;
      *v40 = v32;
      *&v40[8] = 2048;
      v41 = v33;
      *v42 = 2048;
      *&v42[2] = v34;
      v43 = 2048;
      v44 = v35;
      v45 = 2048;
      v46 = v36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gpsd,#tt,baseband TFT data,mct,%.1f,bbNs,%llu,bbIntegerMs,%llu,bbSubMs,%.3f,bbUncMs,%.6f", COERCE_DOUBLE(&v39), 52);
      v38 = v37;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::updateBasebandTimeFreqTransferData(const gnss::TimeTransferData &)", "%s\n", v37);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    v13 = *(a1 + 1672);
    if (!v13)
    {
      sub_1000CF05C();
    }

    (*(*v13 + 48))(v13, a1 + 2816);
    *(a1 + 2816) = 0;
    *(a1 + 2824) = 0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(a1 + 2832) = _D0;
    *(a1 + 2840) = 0x7FF8000000000000;
    *(a1 + 2848) = 3212836864;
    *(a1 + 2856) = 0x7FF8000000000000;
    *(a1 + 2864) = 0;
    *(a1 + 2872) = 3212836864;
    *(a1 + 2880) = 0x8000;
    *(a1 + 2882) = 0;
    *(a1 + 2888) = 0;
    *(a1 + 2896) = 0x8000;
    *(a1 + 2898) = 0;
    *(a1 + 2902) = 0;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 2904) != 0;
      v21 = *(a1 + 2928);
      v22 = *(a1 + 1672) != 0;
      v23 = *a2;
      v24 = *(a2 + 6) != 0;
      *buf = 67241216;
      *v48 = v20;
      *&v48[4] = 1026;
      *&v48[6] = v21;
      LOWORD(v49) = 1026;
      *(&v49 + 2) = v22;
      HIWORD(v49) = 1026;
      *v50 = v23;
      *&v50[4] = 1026;
      *&v50[6] = v24;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,updateBasebandTimeFreqTransferData,ttData,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v25 = *(a1 + 2904) != 0;
      v26 = *(a1 + 2928);
      v27 = *(a1 + 1672) != 0;
      v28 = *a2;
      v29 = *(a2 + 6) != 0;
      v39 = 67241216;
      *v40 = v25;
      *&v40[4] = 1026;
      *&v40[6] = v26;
      LOWORD(v41) = 1026;
      *(&v41 + 2) = v27;
      HIWORD(v41) = 1026;
      *v42 = v28;
      *&v42[4] = 1026;
      *&v42[6] = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,updateBasebandTimeFreqTransferData,ttData,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d", &v39, 32);
      v31 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::updateBasebandTimeFreqTransferData(const gnss::TimeTransferData &)", "%s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }
}

void sub_1003220E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1576);
  if (v2)
  {
    v3 = *(a2 + 16);
    v6[0] = *a2;
    v6[1] = v3;
    v7 = *(a2 + 64);
    v4 = *(a2 + 48);
    v6[2] = *(a2 + 32);
    v6[3] = v4;
    (*(*v2 + 48))(v2, v6);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10174F5D8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#tt, Time transfer callback is not set.", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10174F6D4();
    }
  }
}

BOOL sub_1003221C0(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 64);
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v5 = ((*v2)[6])(v2, v7);
  return sub_1001752AC(v2[1], v5);
}

_UNKNOWN **sub_10032223C(uint64_t a1, unint64_t *a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#tt, received data when not expecting.  Stopping", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168CD04();
    }

    sub_10168A93C(*(a1 + 8));
    v8 = **(a1 + 8);
    return *(*v8 - 8);
  }

  *(a1 + 16) = 0;
  if (!sub_100322924(a2))
  {
    goto LABEL_39;
  }

  v4 = *a2 / 0x2260FF9290000;
  v5 = *a2 % 0x2260FF9290000 / 0xF4240;
  if (sub_1003229E8(v4, v5))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240704;
      *&buf[4] = v4;
      *&buf[8] = 1026;
      *&buf[10] = v5;
      *&buf[14] = 2050;
      *&buf[16] = sub_100322A38();
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning,#tt,imag,1,NotSettingTime,Gpsweek,%{public}d,GpsTowMs,%{public}d,BuildDate,%{public}.0lf", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168CFE8(v4);
    }

    goto LABEL_39;
  }

  v10 = a2 + 5;
  v9 = a2[5];
  if (v9 && (*a2 < v9 || *a2 > v9 + 604800000000000))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v17 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *v10 / 0x2260FF9290000;
      *buf = 67240448;
      *&buf[4] = v4;
      *&buf[8] = 1026;
      *&buf[10] = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning,#tt,NotSettingTime,GpsWeek,%{public}d,ExtEphGpsWeek,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168CDF0(a2 + 5);
    }

    goto LABEL_39;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v12 = *v10 / 0x2260FF9290000;
    *buf = 67240448;
    *&buf[4] = v4;
    *&buf[8] = 1026;
    *&buf[10] = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#tt,GpsWeek,%{public}d,ExtEphGpsWeek,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10168CEEC(a2 + 5);
  }

  v13 = *(a1 + 8);
  if (*(v13 + 40) & 1) != 0 || (*(v13 + 84))
  {
LABEL_39:
    if (*(*(a1 + 8) + 40) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#tt,#warning,#imag,ignoring TT pulse", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168D1F0();
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#tt,#warning,not sending TT to TM.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168D10C();
      }
    }

    v14 = 0;
    goto LABEL_53;
  }

  sub_100322AC8(&v33, a2);
  v14 = 0;
  if (v33 != 0x8000000000000000 && *(&v33 + 1) != 0.0 && v34 > 0.0)
  {
    if ((atomic_load_explicit(&qword_102666AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102666AF8))
    {
      *&buf[32] = unk_1024F9570;
      *v36 = unk_1024F9580;
      *&v36[16] = unk_1024F9590;
      *buf = unk_1024F9550;
      *&buf[16] = unk_1024F9560;
      sub_10168B9A8(&unk_102666AE0, buf, 5);
      __cxa_atexit(sub_10168B574, &unk_102666AE0, dword_100000000);
      __cxa_guard_release(&qword_102666AF8);
    }

    v15 = *(a1 + 8);
    v16 = v34;
    *(v15 + 16) = v33;
    *(v15 + 32) = v16;
    [NSString stringWithUTF8String:*sub_1003DD9F8(&unk_102666AE0, a2 + 16)];
    TMProvideBBTime();
    v14 = 1;
  }

LABEL_53:
  if (qword_1025D4650 != -1)
  {
    sub_10168BCB8();
  }

  v21 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v22 = *a2;
    v23 = *(a2 + 2);
    v24 = *(a2 + 12);
    v25 = *(a2 + 4);
    v27 = a2[3];
    v26 = a2[4];
    v28 = a2[6];
    v29 = a2[7];
    v30 = *(*(a1 + 8) + 84);
    *buf = 68291586;
    *&buf[8] = 2082;
    *&buf[4] = 0;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = v22;
    *&buf[28] = 2050;
    *&buf[30] = v26;
    *&buf[38] = 2050;
    *&buf[40] = v23;
    *v36 = 1026;
    *&v36[2] = v24;
    *&v36[6] = 1026;
    *&v36[8] = v25;
    *&v36[12] = 2050;
    *&v36[14] = v27;
    *&v36[22] = 2050;
    *&v36[24] = v28;
    v37 = 2050;
    v38 = v29;
    v39 = 1026;
    v40 = v14;
    v41 = 1026;
    v42 = v30;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt,bbPulseTime, gps time ns:%{public}llu, bias ns:%{public}lld, uncertainty:%{public}f, leap seconds valid:%{public}hhd, leap seconds:%{public}d, receiver clock:%{public}llu, time before pulse:%{public}llu, time after pulse:%{public}llu, sent to timed:%{public}hhd, continuousMode:%{public}d}", buf, 0x66u);
  }

  v31 = *(a1 + 8);
  if ((*(v31 + 84) & 1) != 0 || *(a1 + 20) < *(v31 + 56))
  {
    v8 = *v31;
    return *(*v8 - 8);
  }

  sub_10168A93C(v31);
}

BOOL sub_100322924(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1.0e11)
  {
    if (v1 <= 0.0)
    {
      return 0;
    }
  }

  else if (v1 <= 0.0 || *a1 == 0)
  {
    return 0;
  }

  if (*(a1 + 24) == -1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return v3;
  }

  v4 = *(a1 + 56);
  v5 = v4 > v3;
  v6 = v4 - v3;
  if (!v5 || *(a1 + 32) == 0x8000000000000000 || 604800000000000 * dword_102637B68 >= *a1)
  {
    return 0;
  }

  v3 = 0;
  if (v6 <= 0xF4240 && (*(a1 + 12) & 1) != 0)
  {
    return *(a1 + 64) != 0;
  }

  return v3;
}

double sub_100322A38()
{
  v0 = qword_102656780;
  if (!qword_102656780)
  {
    memset(&v2, 0, sizeof(v2));
    if (!strptime("Oct 23 2025 06:57:10", "%b %d %Y %H:%M:%S", &v2))
    {
      return 0.0;
    }

    v0 = mktime(&v2);
    qword_102656780 = v0;
  }

  result = v0 - kCFAbsoluteTimeIntervalSince1970;
  if (v0 <= 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100322AC8(uint64_t a1, uint64_t a2)
{
  *a1 = 0x8000000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2143289344;
  if (sub_100322924(a2) && *(a2 + 12) == 1 && (*a2 & 0x8000000000000000) == 0)
  {
    *a1 = *a2 - *(a2 + 32) - 1000000000 * *(a2 + 16) - 662342400000000000;
    v4 = sub_1000080EC(*(a2 + 48));
    *(a1 + 8) = v4 + sub_1000080EC(*(a2 + 56) - *(a2 + 48)) * 0.5;
    *(a1 + 16) = *(a2 + 8);
  }

  return a1;
}

void sub_100322B84(uint64_t a1, void *a2, void *a3, uint64_t a4, float a5)
{
  if (qword_1025D4650 != -1)
  {
    sub_101689714();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v11 = 134349312;
    v12 = a2;
    v13 = 2050;
    v14 = a3;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#GnssTTPCIe,feedMachTimeToGPSTimeTransferNew,gpsTimeNs,%{public}llu,measBeginMach,%{public}llu", &v11, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101689CA4(a2, a3);
  }

  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = a2;
  *(a1 + 72) = a5;
  sub_100322CA4(a1);
}

void sub_100322CA4(uint64_t a1)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) && *(a1 + 32) && *(a1 + 12) == 1 && *(a1 + 40) == 1 && (v4 = *(a1 + 48)) != 0 && *(a1 + 56) > v4 && *(a1 + 64) && *(a1 + 72) > 0.0)
  {
    v5 = sub_1000080EC(v2);
    v6 = sub_1000080EC(*(a1 + 24));
    v7 = sub_1000080EC(*(a1 + 48));
    v8 = sub_1000080EC(*(a1 + 56));
    v9 = vabdd_f64(v5, v7);
    if (v9 > 2.0 || v6 > 0.0001 || v8 - v7 > 0.0001)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101689714();
      }

      v32 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349568;
        *v87 = v9;
        *&v87[8] = 2050;
        *&v87[10] = v6;
        *&v87[18] = 2050;
        *&v87[20] = v8 - v7;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "#GnssTTPCIe,diffModemGpsTimeTransferStartSec,%{public}f,modeTimeReadDurationSec,%{public}f,readDurationGpsTimeSec,%{public}f", buf, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v66 = 134349568;
        *v67 = v9;
        *&v67[8] = 2050;
        *&v67[10] = v6;
        *&v67[18] = 2050;
        *&v67[20] = v8 - v7;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "#GnssTTPCIe,diffModemGpsTimeTransferStartSec,%{public}f,modeTimeReadDurationSec,%{public}f,readDurationGpsTimeSec,%{public}f", &v66, 32);
        v34 = v33;
        sub_100152C7C("Generic", 1, 0, 0, "void CLDiscreteGPSToCellularModemTimeTransferViaMachTime::timeTransferNotification()", "%s\n", v33);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    else
    {
      v10 = *(a1 + 48) + ((*(a1 + 56) - *(a1 + 48)) >> 1);
      v11 = *(a1 + 16);
      v12 = *(a1 + 24);
      v13 = v11 + (v12 >> 1);
      if (v10 <= v13)
      {
        v14 = v11 + (v12 >> 1);
      }

      else
      {
        v14 = *(a1 + 48) + ((*(a1 + 56) - *(a1 + 48)) >> 1);
      }

      if (v13 >= v10)
      {
        v15 = *(a1 + 48) + ((*(a1 + 56) - *(a1 + 48)) >> 1);
      }

      else
      {
        v15 = v13;
      }

      v16 = v14 - v15;
      v17 = sub_1000080EC(v14 - v15);
      v18 = *(a1 + 32) / 19200000.0;
      if (qword_1025D4650 != -1)
      {
        v51 = v17;
        sub_101689714();
        v17 = v51;
      }

      v19 = v17 * 1000.0;
      v20 = v18 * 1000.0;
      v21 = qword_1025D4658;
      v22 = v8 - v7;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 8);
        v24 = *(a1 + 64);
        v25 = *(a1 + 72);
        v26 = *(a1 + 32);
        *buf = 67243264;
        *v87 = v23;
        *&v87[4] = 2050;
        *&v87[6] = v16;
        *&v87[14] = 2050;
        *&v87[16] = v19;
        *&v87[24] = 2050;
        *&v87[26] = v7;
        v88 = 2050;
        v89 = v8;
        v90 = 2050;
        v91 = v8 - v7;
        v92 = 2050;
        v93 = v24;
        v94 = 2050;
        v95 = v25;
        v96 = 2050;
        v97 = v5;
        v98 = 2050;
        v99 = v6;
        v100 = 2050;
        v101 = v9;
        v102 = 2050;
        v103 = v26;
        v104 = 2050;
        v105 = v20;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,AP-GPS-Modem timings,seq,%{public}d,machTickDiffGpsModem,%{public}llu,machDiffGpsModemMsec,%{public}f,machTimeGpsTTStart,%{public}f,machTimeGpsTTEnd,%{public}f,readDurationGPSTimeSec,%{public}f,gpsTime_Ns,%{public}llu,gpsUnc,%{public}.2lf,machTimeModemTTStart,%{public}f,readDurationModemTimeSec,%{public}f,diffModemGpsTimeTransferStartSec,%{public}f,modemClockTicks,%{public}llu,modemClockMsec,%{public}f", buf, 0x80u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v52 = *(a1 + 8);
        v53 = *(a1 + 64);
        v54 = *(a1 + 72);
        v55 = *(a1 + 32);
        v66 = 67243264;
        *v67 = v52;
        *&v67[4] = 2050;
        *&v67[6] = v16;
        *&v67[14] = 2050;
        *&v67[16] = v19;
        *&v67[24] = 2050;
        *&v67[26] = v7;
        v68 = 2050;
        v69 = v8;
        v70 = 2050;
        v71 = v8 - v7;
        v72 = 2050;
        v73 = v53;
        v74 = 2050;
        v75 = v54;
        v76 = 2050;
        v77 = v5;
        v78 = 2050;
        v79 = v6;
        v80 = 2050;
        v81 = v9;
        v82 = 2050;
        v83 = v55;
        v84 = 2050;
        v85 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#GnssTTPCIe,AP-GPS-Modem timings,seq,%{public}d,machTickDiffGpsModem,%{public}llu,machDiffGpsModemMsec,%{public}f,machTimeGpsTTStart,%{public}f,machTimeGpsTTEnd,%{public}f,readDurationGPSTimeSec,%{public}f,gpsTime_Ns,%{public}llu,gpsUnc,%{public}.2lf,machTimeModemTTStart,%{public}f,readDurationModemTimeSec,%{public}f,diffModemGpsTimeTransferStartSec,%{public}f,modemClockTicks,%{public}llu,modemClockMsec,%{public}f", &v66, 128);
        v57 = v56;
        sub_100152C7C("Generic", 1, 0, 2, "void CLDiscreteGPSToCellularModemTimeTransferViaMachTime::timeTransferNotification()", "%s\n", v56);
        if (v57 != buf)
        {
          free(v57);
        }

        v22 = v8 - v7;
      }

      v27 = -v19;
      if (v13 < v10)
      {
        v27 = v19;
      }

      if (v19 <= 5.0)
      {
        v35 = v20 + v27;
        __y = 0.0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        __asm { FMOV            V10.2S, #-1.0 }

        *(a1 + 96) = _D10;
        *(a1 + 104) = 0x7FF8000000000000;
        *(a1 + 112) = 3212836864;
        *(a1 + 120) = 0x7FF8000000000000;
        *(a1 + 128) = 0;
        *(a1 + 136) = 3212836864;
        *(a1 + 144) = 0x8000;
        *(a1 + 146) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0x8000;
        *(a1 + 162) = 0;
        *(a1 + 166) = 0;
        *(a1 + 80) = sub_1000081AC();
        *(a1 + 128) = *(a1 + 64);
        *(a1 + 136) = *(a1 + 72);
        *(a1 + 144) = sub_10029E3E8();
        v41 = (v6 + v22) * 500.0;
        *(a1 + 100) = v41;
        v42 = modf(v35, &__y);
        v43 = __y;
        *(a1 + 96) = v42;
        *(a1 + 88) = v43;
        if (v41 < 0.1)
        {
          *(a1 + 100) = 1036831949;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v44 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 8);
          v46 = *(a1 + 64);
          v47 = *(a1 + 88);
          v48 = *(a1 + 96);
          *buf = 67241216;
          *v87 = v45;
          *&v87[4] = 2050;
          *&v87[6] = v35;
          *&v87[14] = 2050;
          *&v87[16] = v46;
          *&v87[24] = 2050;
          *&v87[26] = v47;
          v88 = 2050;
          v89 = v48;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,timeTransferNotification,final,seq,%{public}d,rtcMsec,%{public}.3lf,gnssNsec,%{public}llu,rtcIntMsec,%{public}llu,rtcSubMsec,%{public}.3lf", buf, 0x30u);
        }

        v49 = v3 - 1;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_101689A0C();
          }

          v58 = *(a1 + 8);
          v59 = *(a1 + 64);
          v60 = *(a1 + 88);
          v61 = *(a1 + 96);
          v66 = 67241216;
          *v67 = v58;
          *&v67[4] = 2050;
          *&v67[6] = v35;
          *&v67[14] = 2050;
          *&v67[16] = v59;
          *&v67[24] = 2050;
          *&v67[26] = v60;
          v68 = 2050;
          v69 = v61;
          LODWORD(v64) = 48;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#GnssTTPCIe,timeTransferNotification,final,seq,%{public}d,rtcMsec,%{public}.3lf,gnssNsec,%{public}llu,rtcIntMsec,%{public}llu,rtcSubMsec,%{public}.3lf", &v66, v64);
          v63 = v62;
          sub_100152C7C("Generic", 1, 0, 2, "void CLDiscreteGPSToCellularModemTimeTransferViaMachTime::timeTransferNotification()", "%s\n", v62);
          if (v63 != buf)
          {
            free(v63);
          }
        }

        v50 = *(a1 + 192);
        if (v50)
        {
          (*(*v50 + 48))(v50, a1 + 80);
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          *(a1 + 96) = _D10;
          *(a1 + 104) = 0x7FF8000000000000;
          *(a1 + 112) = 3212836864;
          *(a1 + 120) = 0x7FF8000000000000;
          *(a1 + 128) = 0;
          *(a1 + 136) = 3212836864;
          *(a1 + 144) = 0x8000;
          *(a1 + 146) = 0;
          *(a1 + 152) = 0;
          *(a1 + 160) = 0x8000;
          *(a1 + 162) = 0;
          *(a1 + 166) = 0;
        }

        v49[8] = 0;
        *(v49 + 2) = 0u;
        *(v49 + 3) = 0u;
        *v49 = 0u;
        *(v49 + 1) = 0u;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v28 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,drop,absMachDiffBetweenGpsAndModemTimeMSec>5.0", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101689A34();
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101689714();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *v3;
      if (*v3)
      {
        LODWORD(v30) = *(a1 + 24);
        if (v30)
        {
          v30 = *(a1 + 32);
          if (v30)
          {
            if (*(a1 + 12) == 1)
            {
              LODWORD(v30) = *(a1 + 40);
            }

            else
            {
              LODWORD(v30) = 0;
            }
          }
        }
      }

      v31 = *(a1 + 48);
      if (v31)
      {
        if (*(a1 + 56) <= v31)
        {
          LODWORD(v31) = 0;
        }

        else
        {
          v31 = *(a1 + 64);
          if (v31)
          {
            LODWORD(v31) = *(a1 + 72) > 0.0;
          }
        }
      }

      *buf = 67240448;
      *v87 = v30;
      *&v87[4] = 1026;
      *&v87[6] = v31;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,timeTransferNotification,modemTimeToMachTimeValid,%{public}d,gpsTimeToMachTimeValid,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101689B38(v3, a1);
    }
  }
}

_DWORD *sub_100323610(int a1, int a2, _DWORD *a3)
{
  if (!a3[6])
  {
    sub_101A26AB0();
  }

  v4 = a3[7];
  if (!v4)
  {
    sub_101A26A84();
  }

  v6 = a1;
  v7 = a2 - a1;
  if (a2 == a1)
  {
    sub_1000AB298(a3, 1, 1);
    result = sub_10032377C(a3, 0);
    *result = v6;
  }

  else if (a2 - a1 < 0)
  {

    return sub_1000AB298(a3, 0, 0);
  }

  else
  {
    if (v4 <= v7)
    {
      sub_101A26A58();
    }

    sub_1000AB298(a3, 1, v7 + 1);
    v9 = 0;
    v10 = a2 + 1;
    do
    {
      result = sub_10032377C(a3, v9);
      *result = v6++;
      ++v9;
    }

    while (v10 != v6);
  }

  return result;
}

_DWORD *sub_1003236F8@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000001;
  *a3 = off_10249DC38;
  *(a3 + 8) = xmmword_101CF0680;
  *(a3 + 32) = a3 + 40;
  return sub_100323610(a1, a2, a3);
}

uint64_t sub_10032377C(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101A26B34();
  }

  if (a2 < 0)
  {
    sub_101A26B08();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101A26ADC();
  }

  return v2 + 4 * a2;
}